; ModuleID = './MultiSource.Applications.JM/26.ldecod.block.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], [50 x [6 x [33 x i64]]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16***, i8*, i16**, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.DecRefPicMarking_s*, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
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
%struct.timeb = type { i64, i16, i16, i16 }

@quant_intra_default = global [16 x i32] [i32 6, i32 13, i32 20, i32 28, i32 13, i32 20, i32 28, i32 32, i32 20, i32 28, i32 32, i32 37, i32 28, i32 32, i32 37, i32 42], align 16
@quant_inter_default = global [16 x i32] [i32 10, i32 14, i32 20, i32 24, i32 14, i32 20, i32 24, i32 27, i32 20, i32 24, i32 27, i32 30, i32 24, i32 27, i32 30, i32 34], align 16
@quant8_intra_default = global [64 x i32] [i32 6, i32 10, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 10, i32 11, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 13, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 16, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 18, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 25, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 27, i32 29, i32 31, i32 33, i32 36, i32 38, i32 40, i32 42], align 16
@quant8_inter_default = global [64 x i32] [i32 9, i32 13, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 13, i32 13, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 15, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 17, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 19, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 21, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 24, i32 25, i32 27, i32 28, i32 30, i32 32, i32 33, i32 35], align 16
@quant_org = global [16 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@quant8_org = global [64 x i32] [i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@dec_picture = external global %struct.storable_picture*, align 8
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@.str = private unnamed_addr constant [66 x i8] c"warning: Intra_4x4_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"warning: Intra_4x4_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"warning: Intra_4x4_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"warning: Intra_4x4_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"warning: Intra_4x4_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"warning: Intra_4x4_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Error: illegal intra_4x4 prediction mode: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"invalid 16x16 intra pred Mode VERT_PRED_16\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"invalid 16x16 intra pred Mode HOR_PRED_16\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"invalid 16x16 intra pred Mode PLANE_16\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"illegal 16x16 intra prediction mode input: %d\0A\00", align 1
@intrapred_chroma.block_pos = private unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 1, i32 3, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] [i32 3, i32 3, i32 3, i32 3]]], align 16
@subblk_offset_y = external constant [3 x [8 x [4 x i8]]], align 16
@subblk_offset_x = external constant [3 x [8 x [4 x i8]]], align 16
@.str.13 = private unnamed_addr constant [48 x i8] c"unexpected PLANE_8 chroma intra prediction mode\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"unexpected HOR_PRED_8 chroma intra prediction mode\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"unexpected VERT_PRED_8 chroma intra prediction mode\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"illegal chroma intra prediction mode\00", align 1
@qmatrix = common global [8 x i32*] zeroinitializer, align 16
@dequant_coef = external constant [6 x [4 x [4 x i32]]], align 16
@InvLevelScale4x4Luma_Intra = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Intra = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@InvLevelScale4x4Luma_Inter = common global [6 x [4 x [4 x i32]]] zeroinitializer, align 16
@InvLevelScale4x4Chroma_Inter = common global [2 x [6 x [4 x [4 x i32]]]] zeroinitializer, align 16
@quant_coef = internal constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@A = internal constant [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], align 16
@QP_SCALE_CR = external constant [52 x i8], align 16
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
@InvLevelScale8x8Luma_Intra = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
@InvLevelScale8x8Luma_Inter = common global [6 x [8 x [8 x i32]]] zeroinitializer, align 16
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

; Function Attrs: nounwind uwtable
define i32 @intrapred(%struct.img_par* %img, i32 %ioff, i32 %joff, i32 %img_block_x, i32 %img_block_y) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %ioff.addr = alloca i32, align 4
  %joff.addr = alloca i32, align 4
  %img_block_x.addr = alloca i32, align 4
  %img_block_y.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s0 = alloca i32, align 4
  %img_y = alloca i32, align 4
  %img_x = alloca i32, align 4
  %PredPel = alloca [13 x i16], align 16
  %imgY = alloca i16**, align 8
  %pix_a = alloca [4 x %struct.pix_pos], align 16
  %pix_b = alloca %struct.pix_pos, align 4
  %pix_c = alloca %struct.pix_pos, align 4
  %pix_d = alloca %struct.pix_pos, align 4
  %block_available_up = alloca i32, align 4
  %block_available_left = alloca i32, align 4
  %block_available_up_left = alloca i32, align 4
  %block_available_up_right = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %predmode = alloca i8, align 1
  %jpos0 = alloca i32, align 4
  %jpos1 = alloca i32, align 4
  %jpos2 = alloca i32, align 4
  %jpos3 = alloca i32, align 4
  %ipos0 = alloca i32, align 4
  %ipos1 = alloca i32, align 4
  %ipos2 = alloca i32, align 4
  %ipos3 = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %ioff, i32* %ioff.addr, align 4
  store i32 %joff, i32* %joff.addr, align 4
  store i32 %img_block_x, i32* %img_block_x.addr, align 4
  store i32 %img_block_y, i32* %img_block_y.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 32
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 1
  %3 = load i32, i32* %current_mb_nr, align 4
  store i32 %3, i32* %mb_nr, align 4
  %4 = load i32, i32* %img_block_x.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %img_block_y.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %ipredmode = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 30
  %7 = load i8**, i8*** %ipredmode, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom2
  %8 = load i8*, i8** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx3, align 1
  store i8 %9, i8* %predmode, align 1
  %10 = load i32, i32* %joff.addr, align 4
  store i32 %10, i32* %jpos0, align 4
  %11 = load i32, i32* %joff.addr, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %jpos1, align 4
  %12 = load i32, i32* %joff.addr, align 4
  %add4 = add nsw i32 %12, 2
  store i32 %add4, i32* %jpos2, align 4
  %13 = load i32, i32* %joff.addr, align 4
  %add5 = add nsw i32 %13, 3
  store i32 %add5, i32* %jpos3, align 4
  %14 = load i32, i32* %ioff.addr, align 4
  store i32 %14, i32* %ipos0, align 4
  %15 = load i32, i32* %ioff.addr, align 4
  %add6 = add nsw i32 %15, 1
  store i32 %add6, i32* %ipos1, align 4
  %16 = load i32, i32* %ioff.addr, align 4
  %add7 = add nsw i32 %16, 2
  store i32 %add7, i32* %ipos2, align 4
  %17 = load i32, i32* %ioff.addr, align 4
  %add8 = add nsw i32 %17, 3
  store i32 %add8, i32* %ipos3, align 4
  %18 = load i32, i32* %img_block_x.addr, align 4
  %mul = mul nsw i32 %18, 4
  store i32 %mul, i32* %img_x, align 4
  %19 = load i32, i32* %img_block_y.addr, align 4
  %mul9 = mul nsw i32 %19, 4
  store i32 %mul9, i32* %img_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %20, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %22 = load i32, i32* %mb_nr, align 4
  %23 = load i32, i32* %ioff.addr, align 4
  %sub = sub nsw i32 %23, 1
  %24 = load i32, i32* %joff.addr, align 4
  %25 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %24, %25
  %26 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom11
  call void %21(i32 %22, i32 %sub, i32 %add10, i32 0, %struct.pix_pos* %arrayidx12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %29 = load i32, i32* %mb_nr, align 4
  %30 = load i32, i32* %ioff.addr, align 4
  %31 = load i32, i32* %joff.addr, align 4
  %sub13 = sub nsw i32 %31, 1
  call void %28(i32 %29, i32 %30, i32 %sub13, i32 0, %struct.pix_pos* %pix_b)
  %32 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %33 = load i32, i32* %mb_nr, align 4
  %34 = load i32, i32* %ioff.addr, align 4
  %add14 = add nsw i32 %34, 4
  %35 = load i32, i32* %joff.addr, align 4
  %sub15 = sub nsw i32 %35, 1
  call void %32(i32 %33, i32 %add14, i32 %sub15, i32 0, %struct.pix_pos* %pix_c)
  %36 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %37 = load i32, i32* %mb_nr, align 4
  %38 = load i32, i32* %ioff.addr, align 4
  %sub16 = sub nsw i32 %38, 1
  %39 = load i32, i32* %joff.addr, align 4
  %sub17 = sub nsw i32 %39, 1
  call void %36(i32 %37, i32 %sub16, i32 %sub17, i32 0, %struct.pix_pos* %pix_d)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %40 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %land.rhs, label %land.end.22

land.rhs:                                         ; preds = %for.end
  %41 = load i32, i32* %ioff.addr, align 4
  %cmp18 = icmp eq i32 %41, 4
  br i1 %cmp18, label %land.rhs.19, label %land.end

land.rhs.19:                                      ; preds = %land.rhs
  %42 = load i32, i32* %joff.addr, align 4
  %cmp20 = icmp eq i32 %42, 4
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.19
  %43 = load i32, i32* %joff.addr, align 4
  %cmp21 = icmp eq i32 %43, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.19
  %44 = phi i1 [ true, %land.rhs.19 ], [ %cmp21, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.rhs
  %45 = phi i1 [ false, %land.rhs ], [ %44, %lor.end ]
  %lnot = xor i1 %45, true
  br label %land.end.22

land.end.22:                                      ; preds = %land.end, %for.end
  %46 = phi i1 [ false, %for.end ], [ %lnot, %land.end ]
  %land.ext = zext i1 %46 to i32
  %available23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  store i32 %land.ext, i32* %available23, align 4
  %47 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %47, i32 0, i32 30
  %48 = load i32, i32* %constrained_intra_pred_flag, align 4
  %tobool24 = icmp ne i32 %48, 0
  br i1 %tobool24, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.22
  store i32 0, i32* %i, align 4
  store i32 1, i32* %block_available_left, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.36, %if.then
  %49 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %49, 4
  br i1 %cmp26, label %for.body.27, label %for.end.38

for.body.27:                                      ; preds = %for.cond.25
  %50 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %50 to i64
  %arrayidx29 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom28
  %available30 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx29, i32 0, i32 0
  %51 = load i32, i32* %available30, align 4
  %tobool31 = icmp ne i32 %51, 0
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.27
  %52 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %52 to i64
  %arrayidx33 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom32
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx33, i32 0, i32 1
  %53 = load i32, i32* %mb_addr, align 4
  %idxprom34 = sext i32 %53 to i64
  %54 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block = getelementptr inbounds %struct.img_par, %struct.img_par* %54, i32 0, i32 4
  %55 = load i32*, i32** %intra_block, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %55, i64 %idxprom34
  %56 = load i32, i32* %arrayidx35, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %56, %cond.true ], [ 0, %cond.false ]
  %57 = load i32, i32* %block_available_left, align 4
  %and = and i32 %57, %cond
  store i32 %and, i32* %block_available_left, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %cond.end
  %58 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %58, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.25

for.end.38:                                       ; preds = %for.cond.25
  %available39 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 0
  %59 = load i32, i32* %available39, align 4
  %tobool40 = icmp ne i32 %59, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.46

cond.true.41:                                     ; preds = %for.end.38
  %mb_addr42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 1
  %60 = load i32, i32* %mb_addr42, align 4
  %idxprom43 = sext i32 %60 to i64
  %61 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block44 = getelementptr inbounds %struct.img_par, %struct.img_par* %61, i32 0, i32 4
  %62 = load i32*, i32** %intra_block44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %62, i64 %idxprom43
  %63 = load i32, i32* %arrayidx45, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %for.end.38
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.41
  %cond48 = phi i32 [ %63, %cond.true.41 ], [ 0, %cond.false.46 ]
  store i32 %cond48, i32* %block_available_up, align 4
  %available49 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %64 = load i32, i32* %available49, align 4
  %tobool50 = icmp ne i32 %64, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.56

cond.true.51:                                     ; preds = %cond.end.47
  %mb_addr52 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 1
  %65 = load i32, i32* %mb_addr52, align 4
  %idxprom53 = sext i32 %65 to i64
  %66 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block54 = getelementptr inbounds %struct.img_par, %struct.img_par* %66, i32 0, i32 4
  %67 = load i32*, i32** %intra_block54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %67, i64 %idxprom53
  %68 = load i32, i32* %arrayidx55, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.47
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.51
  %cond58 = phi i32 [ %68, %cond.true.51 ], [ 0, %cond.false.56 ]
  store i32 %cond58, i32* %block_available_up_right, align 4
  %available59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 0
  %69 = load i32, i32* %available59, align 4
  %tobool60 = icmp ne i32 %69, 0
  br i1 %tobool60, label %cond.true.61, label %cond.false.66

cond.true.61:                                     ; preds = %cond.end.57
  %mb_addr62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 1
  %70 = load i32, i32* %mb_addr62, align 4
  %idxprom63 = sext i32 %70 to i64
  %71 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block64 = getelementptr inbounds %struct.img_par, %struct.img_par* %71, i32 0, i32 4
  %72 = load i32*, i32** %intra_block64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %72, i64 %idxprom63
  %73 = load i32, i32* %arrayidx65, align 4
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.57
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.61
  %cond68 = phi i32 [ %73, %cond.true.61 ], [ 0, %cond.false.66 ]
  store i32 %cond68, i32* %block_available_up_left, align 4
  br label %if.end

if.else:                                          ; preds = %land.end.22
  %arrayidx69 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %available70 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx69, i32 0, i32 0
  %74 = load i32, i32* %available70, align 4
  store i32 %74, i32* %block_available_left, align 4
  %available71 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 0
  %75 = load i32, i32* %available71, align 4
  store i32 %75, i32* %block_available_up, align 4
  %available72 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %76 = load i32, i32* %available72, align 4
  store i32 %76, i32* %block_available_up_right, align 4
  %available73 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 0
  %77 = load i32, i32* %available73, align 4
  store i32 %77, i32* %block_available_up_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.67
  %78 = load i32, i32* %block_available_up, align 4
  %tobool74 = icmp ne i32 %78, 0
  br i1 %tobool74, label %if.then.75, label %if.else.106

if.then.75:                                       ; preds = %if.end
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %79 = load i32, i32* %pos_x, align 4
  %add76 = add nsw i32 %79, 0
  %idxprom77 = sext i32 %add76 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %80 = load i32, i32* %pos_y, align 4
  %idxprom78 = sext i32 %80 to i64
  %81 = load i16**, i16*** %imgY, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %81, i64 %idxprom78
  %82 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %82, i64 %idxprom77
  %83 = load i16, i16* %arrayidx80, align 2
  %arrayidx81 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  store i16 %83, i16* %arrayidx81, align 2
  %pos_x82 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %84 = load i32, i32* %pos_x82, align 4
  %add83 = add nsw i32 %84, 1
  %idxprom84 = sext i32 %add83 to i64
  %pos_y85 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %85 = load i32, i32* %pos_y85, align 4
  %idxprom86 = sext i32 %85 to i64
  %86 = load i16**, i16*** %imgY, align 8
  %arrayidx87 = getelementptr inbounds i16*, i16** %86, i64 %idxprom86
  %87 = load i16*, i16** %arrayidx87, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %87, i64 %idxprom84
  %88 = load i16, i16* %arrayidx88, align 2
  %arrayidx89 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  store i16 %88, i16* %arrayidx89, align 2
  %pos_x90 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %89 = load i32, i32* %pos_x90, align 4
  %add91 = add nsw i32 %89, 2
  %idxprom92 = sext i32 %add91 to i64
  %pos_y93 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %90 = load i32, i32* %pos_y93, align 4
  %idxprom94 = sext i32 %90 to i64
  %91 = load i16**, i16*** %imgY, align 8
  %arrayidx95 = getelementptr inbounds i16*, i16** %91, i64 %idxprom94
  %92 = load i16*, i16** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i16, i16* %92, i64 %idxprom92
  %93 = load i16, i16* %arrayidx96, align 2
  %arrayidx97 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  store i16 %93, i16* %arrayidx97, align 2
  %pos_x98 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %94 = load i32, i32* %pos_x98, align 4
  %add99 = add nsw i32 %94, 3
  %idxprom100 = sext i32 %add99 to i64
  %pos_y101 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %95 = load i32, i32* %pos_y101, align 4
  %idxprom102 = sext i32 %95 to i64
  %96 = load i16**, i16*** %imgY, align 8
  %arrayidx103 = getelementptr inbounds i16*, i16** %96, i64 %idxprom102
  %97 = load i16*, i16** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %97, i64 %idxprom100
  %98 = load i16, i16* %arrayidx104, align 2
  %arrayidx105 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  store i16 %98, i16* %arrayidx105, align 2
  br label %if.end.111

if.else.106:                                      ; preds = %if.end
  %99 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %99, i32 0, i32 105
  %100 = load i32, i32* %dc_pred_value_luma, align 4
  %conv = trunc i32 %100 to i16
  %arrayidx107 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  store i16 %conv, i16* %arrayidx107, align 2
  %arrayidx108 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  store i16 %conv, i16* %arrayidx108, align 2
  %arrayidx109 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  store i16 %conv, i16* %arrayidx109, align 2
  %arrayidx110 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  store i16 %conv, i16* %arrayidx110, align 2
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.106, %if.then.75
  %101 = load i32, i32* %block_available_up_right, align 4
  %tobool112 = icmp ne i32 %101, 0
  br i1 %tobool112, label %if.then.113, label %if.else.146

if.then.113:                                      ; preds = %if.end.111
  %pos_x114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %102 = load i32, i32* %pos_x114, align 4
  %add115 = add nsw i32 %102, 0
  %idxprom116 = sext i32 %add115 to i64
  %pos_y117 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %103 = load i32, i32* %pos_y117, align 4
  %idxprom118 = sext i32 %103 to i64
  %104 = load i16**, i16*** %imgY, align 8
  %arrayidx119 = getelementptr inbounds i16*, i16** %104, i64 %idxprom118
  %105 = load i16*, i16** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i16, i16* %105, i64 %idxprom116
  %106 = load i16, i16* %arrayidx120, align 2
  %arrayidx121 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  store i16 %106, i16* %arrayidx121, align 2
  %pos_x122 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %107 = load i32, i32* %pos_x122, align 4
  %add123 = add nsw i32 %107, 1
  %idxprom124 = sext i32 %add123 to i64
  %pos_y125 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %108 = load i32, i32* %pos_y125, align 4
  %idxprom126 = sext i32 %108 to i64
  %109 = load i16**, i16*** %imgY, align 8
  %arrayidx127 = getelementptr inbounds i16*, i16** %109, i64 %idxprom126
  %110 = load i16*, i16** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %110, i64 %idxprom124
  %111 = load i16, i16* %arrayidx128, align 2
  %arrayidx129 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  store i16 %111, i16* %arrayidx129, align 2
  %pos_x130 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %112 = load i32, i32* %pos_x130, align 4
  %add131 = add nsw i32 %112, 2
  %idxprom132 = sext i32 %add131 to i64
  %pos_y133 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %113 = load i32, i32* %pos_y133, align 4
  %idxprom134 = sext i32 %113 to i64
  %114 = load i16**, i16*** %imgY, align 8
  %arrayidx135 = getelementptr inbounds i16*, i16** %114, i64 %idxprom134
  %115 = load i16*, i16** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %115, i64 %idxprom132
  %116 = load i16, i16* %arrayidx136, align 2
  %arrayidx137 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 7
  store i16 %116, i16* %arrayidx137, align 2
  %pos_x138 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %117 = load i32, i32* %pos_x138, align 4
  %add139 = add nsw i32 %117, 3
  %idxprom140 = sext i32 %add139 to i64
  %pos_y141 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %118 = load i32, i32* %pos_y141, align 4
  %idxprom142 = sext i32 %118 to i64
  %119 = load i16**, i16*** %imgY, align 8
  %arrayidx143 = getelementptr inbounds i16*, i16** %119, i64 %idxprom142
  %120 = load i16*, i16** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %120, i64 %idxprom140
  %121 = load i16, i16* %arrayidx144, align 2
  %arrayidx145 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 8
  store i16 %121, i16* %arrayidx145, align 2
  br label %if.end.152

if.else.146:                                      ; preds = %if.end.111
  %arrayidx147 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %122 = load i16, i16* %arrayidx147, align 2
  %arrayidx148 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 8
  store i16 %122, i16* %arrayidx148, align 2
  %arrayidx149 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 7
  store i16 %122, i16* %arrayidx149, align 2
  %arrayidx150 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  store i16 %122, i16* %arrayidx150, align 2
  %arrayidx151 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  store i16 %122, i16* %arrayidx151, align 2
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.146, %if.then.113
  %123 = load i32, i32* %block_available_left, align 4
  %tobool153 = icmp ne i32 %123, 0
  br i1 %tobool153, label %if.then.154, label %if.else.191

if.then.154:                                      ; preds = %if.end.152
  %arrayidx155 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %pos_x156 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx155, i32 0, i32 4
  %124 = load i32, i32* %pos_x156, align 4
  %idxprom157 = sext i32 %124 to i64
  %arrayidx158 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %pos_y159 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx158, i32 0, i32 5
  %125 = load i32, i32* %pos_y159, align 4
  %idxprom160 = sext i32 %125 to i64
  %126 = load i16**, i16*** %imgY, align 8
  %arrayidx161 = getelementptr inbounds i16*, i16** %126, i64 %idxprom160
  %127 = load i16*, i16** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i16, i16* %127, i64 %idxprom157
  %128 = load i16, i16* %arrayidx162, align 2
  %arrayidx163 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  store i16 %128, i16* %arrayidx163, align 2
  %arrayidx164 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 1
  %pos_x165 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx164, i32 0, i32 4
  %129 = load i32, i32* %pos_x165, align 4
  %idxprom166 = sext i32 %129 to i64
  %arrayidx167 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 1
  %pos_y168 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx167, i32 0, i32 5
  %130 = load i32, i32* %pos_y168, align 4
  %idxprom169 = sext i32 %130 to i64
  %131 = load i16**, i16*** %imgY, align 8
  %arrayidx170 = getelementptr inbounds i16*, i16** %131, i64 %idxprom169
  %132 = load i16*, i16** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i16, i16* %132, i64 %idxprom166
  %133 = load i16, i16* %arrayidx171, align 2
  %arrayidx172 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  store i16 %133, i16* %arrayidx172, align 2
  %arrayidx173 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 2
  %pos_x174 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx173, i32 0, i32 4
  %134 = load i32, i32* %pos_x174, align 4
  %idxprom175 = sext i32 %134 to i64
  %arrayidx176 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 2
  %pos_y177 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx176, i32 0, i32 5
  %135 = load i32, i32* %pos_y177, align 4
  %idxprom178 = sext i32 %135 to i64
  %136 = load i16**, i16*** %imgY, align 8
  %arrayidx179 = getelementptr inbounds i16*, i16** %136, i64 %idxprom178
  %137 = load i16*, i16** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i16, i16* %137, i64 %idxprom175
  %138 = load i16, i16* %arrayidx180, align 2
  %arrayidx181 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  store i16 %138, i16* %arrayidx181, align 2
  %arrayidx182 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 3
  %pos_x183 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx182, i32 0, i32 4
  %139 = load i32, i32* %pos_x183, align 4
  %idxprom184 = sext i32 %139 to i64
  %arrayidx185 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 3
  %pos_y186 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx185, i32 0, i32 5
  %140 = load i32, i32* %pos_y186, align 4
  %idxprom187 = sext i32 %140 to i64
  %141 = load i16**, i16*** %imgY, align 8
  %arrayidx188 = getelementptr inbounds i16*, i16** %141, i64 %idxprom187
  %142 = load i16*, i16** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i16, i16* %142, i64 %idxprom184
  %143 = load i16, i16* %arrayidx189, align 2
  %arrayidx190 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  store i16 %143, i16* %arrayidx190, align 2
  br label %if.end.198

if.else.191:                                      ; preds = %if.end.152
  %144 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_luma192 = getelementptr inbounds %struct.img_par, %struct.img_par* %144, i32 0, i32 105
  %145 = load i32, i32* %dc_pred_value_luma192, align 4
  %conv193 = trunc i32 %145 to i16
  %arrayidx194 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  store i16 %conv193, i16* %arrayidx194, align 2
  %arrayidx195 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  store i16 %conv193, i16* %arrayidx195, align 2
  %arrayidx196 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  store i16 %conv193, i16* %arrayidx196, align 2
  %arrayidx197 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  store i16 %conv193, i16* %arrayidx197, align 2
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.191, %if.then.154
  %146 = load i32, i32* %block_available_up_left, align 4
  %tobool199 = icmp ne i32 %146, 0
  br i1 %tobool199, label %if.then.200, label %if.else.208

if.then.200:                                      ; preds = %if.end.198
  %pos_x201 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 4
  %147 = load i32, i32* %pos_x201, align 4
  %idxprom202 = sext i32 %147 to i64
  %pos_y203 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 5
  %148 = load i32, i32* %pos_y203, align 4
  %idxprom204 = sext i32 %148 to i64
  %149 = load i16**, i16*** %imgY, align 8
  %arrayidx205 = getelementptr inbounds i16*, i16** %149, i64 %idxprom204
  %150 = load i16*, i16** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds i16, i16* %150, i64 %idxprom202
  %151 = load i16, i16* %arrayidx206, align 2
  %arrayidx207 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  store i16 %151, i16* %arrayidx207, align 2
  br label %if.end.212

if.else.208:                                      ; preds = %if.end.198
  %152 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_luma209 = getelementptr inbounds %struct.img_par, %struct.img_par* %152, i32 0, i32 105
  %153 = load i32, i32* %dc_pred_value_luma209, align 4
  %conv210 = trunc i32 %153 to i16
  %arrayidx211 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  store i16 %conv210, i16* %arrayidx211, align 2
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.208, %if.then.200
  %154 = load i8, i8* %predmode, align 1
  %conv213 = zext i8 %154 to i32
  switch i32 %conv213, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.303
    i32 1, label %sw.bb.336
    i32 4, label %sw.bb.373
    i32 3, label %sw.bb.545
    i32 5, label %sw.bb.712
    i32 7, label %sw.bb.906
    i32 8, label %sw.bb.1092
    i32 6, label %sw.bb.1239
  ]

sw.bb:                                            ; preds = %if.end.212
  store i32 0, i32* %s0, align 4
  %155 = load i32, i32* %block_available_up, align 4
  %tobool214 = icmp ne i32 %155, 0
  br i1 %tobool214, label %land.lhs.true, label %if.else.241

land.lhs.true:                                    ; preds = %sw.bb
  %156 = load i32, i32* %block_available_left, align 4
  %tobool215 = icmp ne i32 %156, 0
  br i1 %tobool215, label %if.then.216, label %if.else.241

if.then.216:                                      ; preds = %land.lhs.true
  %arrayidx217 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %157 = load i16, i16* %arrayidx217, align 2
  %conv218 = zext i16 %157 to i32
  %arrayidx219 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %158 = load i16, i16* %arrayidx219, align 2
  %conv220 = zext i16 %158 to i32
  %add221 = add nsw i32 %conv218, %conv220
  %arrayidx222 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %159 = load i16, i16* %arrayidx222, align 2
  %conv223 = zext i16 %159 to i32
  %add224 = add nsw i32 %add221, %conv223
  %arrayidx225 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %160 = load i16, i16* %arrayidx225, align 2
  %conv226 = zext i16 %160 to i32
  %add227 = add nsw i32 %add224, %conv226
  %arrayidx228 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %161 = load i16, i16* %arrayidx228, align 2
  %conv229 = zext i16 %161 to i32
  %add230 = add nsw i32 %add227, %conv229
  %arrayidx231 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %162 = load i16, i16* %arrayidx231, align 2
  %conv232 = zext i16 %162 to i32
  %add233 = add nsw i32 %add230, %conv232
  %arrayidx234 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %163 = load i16, i16* %arrayidx234, align 2
  %conv235 = zext i16 %163 to i32
  %add236 = add nsw i32 %add233, %conv235
  %arrayidx237 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %164 = load i16, i16* %arrayidx237, align 2
  %conv238 = zext i16 %164 to i32
  %add239 = add nsw i32 %add236, %conv238
  %add240 = add nsw i32 %add239, 4
  %div = sdiv i32 %add240, 8
  store i32 %div, i32* %s0, align 4
  br label %if.end.281

if.else.241:                                      ; preds = %land.lhs.true, %sw.bb
  %165 = load i32, i32* %block_available_up, align 4
  %tobool242 = icmp ne i32 %165, 0
  br i1 %tobool242, label %if.else.259, label %land.lhs.true.243

land.lhs.true.243:                                ; preds = %if.else.241
  %166 = load i32, i32* %block_available_left, align 4
  %tobool244 = icmp ne i32 %166, 0
  br i1 %tobool244, label %if.then.245, label %if.else.259

if.then.245:                                      ; preds = %land.lhs.true.243
  %arrayidx246 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %167 = load i16, i16* %arrayidx246, align 2
  %conv247 = zext i16 %167 to i32
  %arrayidx248 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %168 = load i16, i16* %arrayidx248, align 2
  %conv249 = zext i16 %168 to i32
  %add250 = add nsw i32 %conv247, %conv249
  %arrayidx251 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %169 = load i16, i16* %arrayidx251, align 2
  %conv252 = zext i16 %169 to i32
  %add253 = add nsw i32 %add250, %conv252
  %arrayidx254 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %170 = load i16, i16* %arrayidx254, align 2
  %conv255 = zext i16 %170 to i32
  %add256 = add nsw i32 %add253, %conv255
  %add257 = add nsw i32 %add256, 2
  %div258 = sdiv i32 %add257, 4
  store i32 %div258, i32* %s0, align 4
  br label %if.end.280

if.else.259:                                      ; preds = %land.lhs.true.243, %if.else.241
  %171 = load i32, i32* %block_available_up, align 4
  %tobool260 = icmp ne i32 %171, 0
  br i1 %tobool260, label %land.lhs.true.261, label %if.else.277

land.lhs.true.261:                                ; preds = %if.else.259
  %172 = load i32, i32* %block_available_left, align 4
  %tobool262 = icmp ne i32 %172, 0
  br i1 %tobool262, label %if.else.277, label %if.then.263

if.then.263:                                      ; preds = %land.lhs.true.261
  %arrayidx264 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %173 = load i16, i16* %arrayidx264, align 2
  %conv265 = zext i16 %173 to i32
  %arrayidx266 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %174 = load i16, i16* %arrayidx266, align 2
  %conv267 = zext i16 %174 to i32
  %add268 = add nsw i32 %conv265, %conv267
  %arrayidx269 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %175 = load i16, i16* %arrayidx269, align 2
  %conv270 = zext i16 %175 to i32
  %add271 = add nsw i32 %add268, %conv270
  %arrayidx272 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %176 = load i16, i16* %arrayidx272, align 2
  %conv273 = zext i16 %176 to i32
  %add274 = add nsw i32 %add271, %conv273
  %add275 = add nsw i32 %add274, 2
  %div276 = sdiv i32 %add275, 4
  store i32 %div276, i32* %s0, align 4
  br label %if.end.279

if.else.277:                                      ; preds = %land.lhs.true.261, %if.else.259
  %177 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_luma278 = getelementptr inbounds %struct.img_par, %struct.img_par* %177, i32 0, i32 105
  %178 = load i32, i32* %dc_pred_value_luma278, align 4
  store i32 %178, i32* %s0, align 4
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.277, %if.then.263
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.245
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.then.216
  store i32 0, i32* %j, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.300, %if.end.281
  %179 = load i32, i32* %j, align 4
  %cmp283 = icmp slt i32 %179, 4
  br i1 %cmp283, label %for.body.285, label %for.end.302

for.body.285:                                     ; preds = %for.cond.282
  store i32 0, i32* %i, align 4
  br label %for.cond.286

for.cond.286:                                     ; preds = %for.inc.297, %for.body.285
  %180 = load i32, i32* %i, align 4
  %cmp287 = icmp slt i32 %180, 4
  br i1 %cmp287, label %for.body.289, label %for.end.299

for.body.289:                                     ; preds = %for.cond.286
  %181 = load i32, i32* %s0, align 4
  %conv290 = trunc i32 %181 to i16
  %182 = load i32, i32* %i, align 4
  %183 = load i32, i32* %ioff.addr, align 4
  %add291 = add nsw i32 %182, %183
  %idxprom292 = sext i32 %add291 to i64
  %184 = load i32, i32* %j, align 4
  %185 = load i32, i32* %joff.addr, align 4
  %add293 = add nsw i32 %184, %185
  %idxprom294 = sext i32 %add293 to i64
  %186 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %186, i32 0, i32 25
  %arrayidx295 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom294
  %arrayidx296 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx295, i32 0, i64 %idxprom292
  store i16 %conv290, i16* %arrayidx296, align 2
  br label %for.inc.297

for.inc.297:                                      ; preds = %for.body.289
  %187 = load i32, i32* %i, align 4
  %inc298 = add nsw i32 %187, 1
  store i32 %inc298, i32* %i, align 4
  br label %for.cond.286

for.end.299:                                      ; preds = %for.cond.286
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.end.299
  %188 = load i32, i32* %j, align 4
  %inc301 = add nsw i32 %188, 1
  store i32 %inc301, i32* %j, align 4
  br label %for.cond.282

for.end.302:                                      ; preds = %for.cond.282
  br label %sw.epilog

sw.bb.303:                                        ; preds = %if.end.212
  %189 = load i32, i32* %block_available_up, align 4
  %tobool304 = icmp ne i32 %189, 0
  br i1 %tobool304, label %if.end.307, label %if.then.305

if.then.305:                                      ; preds = %sw.bb.303
  %190 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr306 = getelementptr inbounds %struct.img_par, %struct.img_par* %190, i32 0, i32 1
  %191 = load i32, i32* %current_mb_nr306, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i32 0, i32 0), i32 %191)
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.305, %sw.bb.303
  store i32 0, i32* %j, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.333, %if.end.307
  %192 = load i32, i32* %j, align 4
  %cmp309 = icmp slt i32 %192, 4
  br i1 %cmp309, label %for.body.311, label %for.end.335

for.body.311:                                     ; preds = %for.cond.308
  store i32 0, i32* %i, align 4
  br label %for.cond.312

for.cond.312:                                     ; preds = %for.inc.330, %for.body.311
  %193 = load i32, i32* %i, align 4
  %cmp313 = icmp slt i32 %193, 4
  br i1 %cmp313, label %for.body.315, label %for.end.332

for.body.315:                                     ; preds = %for.cond.312
  %pos_x316 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %194 = load i32, i32* %pos_x316, align 4
  %195 = load i32, i32* %i, align 4
  %add317 = add nsw i32 %194, %195
  %idxprom318 = sext i32 %add317 to i64
  %pos_y319 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %196 = load i32, i32* %pos_y319, align 4
  %idxprom320 = sext i32 %196 to i64
  %197 = load i16**, i16*** %imgY, align 8
  %arrayidx321 = getelementptr inbounds i16*, i16** %197, i64 %idxprom320
  %198 = load i16*, i16** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i16, i16* %198, i64 %idxprom318
  %199 = load i16, i16* %arrayidx322, align 2
  %200 = load i32, i32* %i, align 4
  %201 = load i32, i32* %ioff.addr, align 4
  %add323 = add nsw i32 %200, %201
  %idxprom324 = sext i32 %add323 to i64
  %202 = load i32, i32* %j, align 4
  %203 = load i32, i32* %joff.addr, align 4
  %add325 = add nsw i32 %202, %203
  %idxprom326 = sext i32 %add325 to i64
  %204 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr327 = getelementptr inbounds %struct.img_par, %struct.img_par* %204, i32 0, i32 25
  %arrayidx328 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr327, i32 0, i64 %idxprom326
  %arrayidx329 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx328, i32 0, i64 %idxprom324
  store i16 %199, i16* %arrayidx329, align 2
  br label %for.inc.330

for.inc.330:                                      ; preds = %for.body.315
  %205 = load i32, i32* %i, align 4
  %inc331 = add nsw i32 %205, 1
  store i32 %inc331, i32* %i, align 4
  br label %for.cond.312

for.end.332:                                      ; preds = %for.cond.312
  br label %for.inc.333

for.inc.333:                                      ; preds = %for.end.332
  %206 = load i32, i32* %j, align 4
  %inc334 = add nsw i32 %206, 1
  store i32 %inc334, i32* %j, align 4
  br label %for.cond.308

for.end.335:                                      ; preds = %for.cond.308
  br label %sw.epilog

sw.bb.336:                                        ; preds = %if.end.212
  %207 = load i32, i32* %block_available_left, align 4
  %tobool337 = icmp ne i32 %207, 0
  br i1 %tobool337, label %if.end.341, label %if.then.338

if.then.338:                                      ; preds = %sw.bb.336
  %208 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr339 = getelementptr inbounds %struct.img_par, %struct.img_par* %208, i32 0, i32 1
  %209 = load i32, i32* %current_mb_nr339, align 4
  %call340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i32 0, i32 0), i32 %209)
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.338, %sw.bb.336
  store i32 0, i32* %j, align 4
  br label %for.cond.342

for.cond.342:                                     ; preds = %for.inc.370, %if.end.341
  %210 = load i32, i32* %j, align 4
  %cmp343 = icmp slt i32 %210, 4
  br i1 %cmp343, label %for.body.345, label %for.end.372

for.body.345:                                     ; preds = %for.cond.342
  store i32 0, i32* %i, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.367, %for.body.345
  %211 = load i32, i32* %i, align 4
  %cmp347 = icmp slt i32 %211, 4
  br i1 %cmp347, label %for.body.349, label %for.end.369

for.body.349:                                     ; preds = %for.cond.346
  %212 = load i32, i32* %j, align 4
  %idxprom350 = sext i32 %212 to i64
  %arrayidx351 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom350
  %pos_x352 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx351, i32 0, i32 4
  %213 = load i32, i32* %pos_x352, align 4
  %idxprom353 = sext i32 %213 to i64
  %214 = load i32, i32* %j, align 4
  %idxprom354 = sext i32 %214 to i64
  %arrayidx355 = getelementptr inbounds [4 x %struct.pix_pos], [4 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom354
  %pos_y356 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx355, i32 0, i32 5
  %215 = load i32, i32* %pos_y356, align 4
  %idxprom357 = sext i32 %215 to i64
  %216 = load i16**, i16*** %imgY, align 8
  %arrayidx358 = getelementptr inbounds i16*, i16** %216, i64 %idxprom357
  %217 = load i16*, i16** %arrayidx358, align 8
  %arrayidx359 = getelementptr inbounds i16, i16* %217, i64 %idxprom353
  %218 = load i16, i16* %arrayidx359, align 2
  %219 = load i32, i32* %i, align 4
  %220 = load i32, i32* %ioff.addr, align 4
  %add360 = add nsw i32 %219, %220
  %idxprom361 = sext i32 %add360 to i64
  %221 = load i32, i32* %j, align 4
  %222 = load i32, i32* %joff.addr, align 4
  %add362 = add nsw i32 %221, %222
  %idxprom363 = sext i32 %add362 to i64
  %223 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr364 = getelementptr inbounds %struct.img_par, %struct.img_par* %223, i32 0, i32 25
  %arrayidx365 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr364, i32 0, i64 %idxprom363
  %arrayidx366 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx365, i32 0, i64 %idxprom361
  store i16 %218, i16* %arrayidx366, align 2
  br label %for.inc.367

for.inc.367:                                      ; preds = %for.body.349
  %224 = load i32, i32* %i, align 4
  %inc368 = add nsw i32 %224, 1
  store i32 %inc368, i32* %i, align 4
  br label %for.cond.346

for.end.369:                                      ; preds = %for.cond.346
  br label %for.inc.370

for.inc.370:                                      ; preds = %for.end.369
  %225 = load i32, i32* %j, align 4
  %inc371 = add nsw i32 %225, 1
  store i32 %inc371, i32* %j, align 4
  br label %for.cond.342

for.end.372:                                      ; preds = %for.cond.342
  br label %sw.epilog

sw.bb.373:                                        ; preds = %if.end.212
  %226 = load i32, i32* %block_available_up, align 4
  %tobool374 = icmp ne i32 %226, 0
  br i1 %tobool374, label %lor.lhs.false, label %if.then.378

lor.lhs.false:                                    ; preds = %sw.bb.373
  %227 = load i32, i32* %block_available_left, align 4
  %tobool375 = icmp ne i32 %227, 0
  br i1 %tobool375, label %lor.lhs.false.376, label %if.then.378

lor.lhs.false.376:                                ; preds = %lor.lhs.false
  %228 = load i32, i32* %block_available_up_left, align 4
  %tobool377 = icmp ne i32 %228, 0
  br i1 %tobool377, label %if.end.381, label %if.then.378

if.then.378:                                      ; preds = %lor.lhs.false.376, %lor.lhs.false, %sw.bb.373
  %229 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr379 = getelementptr inbounds %struct.img_par, %struct.img_par* %229, i32 0, i32 1
  %230 = load i32, i32* %current_mb_nr379, align 4
  %call380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i32 0, i32 0), i32 %230)
  br label %if.end.381

if.end.381:                                       ; preds = %if.then.378, %lor.lhs.false.376
  %arrayidx382 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %231 = load i16, i16* %arrayidx382, align 2
  %conv383 = zext i16 %231 to i32
  %arrayidx384 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %232 = load i16, i16* %arrayidx384, align 2
  %conv385 = zext i16 %232 to i32
  %mul386 = mul nsw i32 2, %conv385
  %add387 = add nsw i32 %conv383, %mul386
  %arrayidx388 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %233 = load i16, i16* %arrayidx388, align 2
  %conv389 = zext i16 %233 to i32
  %add390 = add nsw i32 %add387, %conv389
  %add391 = add nsw i32 %add390, 2
  %shr = ashr i32 %add391, 2
  %conv392 = trunc i32 %shr to i16
  %234 = load i32, i32* %ipos0, align 4
  %idxprom393 = sext i32 %234 to i64
  %235 = load i32, i32* %jpos3, align 4
  %idxprom394 = sext i32 %235 to i64
  %236 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr395 = getelementptr inbounds %struct.img_par, %struct.img_par* %236, i32 0, i32 25
  %arrayidx396 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr395, i32 0, i64 %idxprom394
  %arrayidx397 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx396, i32 0, i64 %idxprom393
  store i16 %conv392, i16* %arrayidx397, align 2
  %arrayidx398 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %237 = load i16, i16* %arrayidx398, align 2
  %conv399 = zext i16 %237 to i32
  %arrayidx400 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %238 = load i16, i16* %arrayidx400, align 2
  %conv401 = zext i16 %238 to i32
  %mul402 = mul nsw i32 2, %conv401
  %add403 = add nsw i32 %conv399, %mul402
  %arrayidx404 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %239 = load i16, i16* %arrayidx404, align 2
  %conv405 = zext i16 %239 to i32
  %add406 = add nsw i32 %add403, %conv405
  %add407 = add nsw i32 %add406, 2
  %shr408 = ashr i32 %add407, 2
  %conv409 = trunc i32 %shr408 to i16
  %240 = load i32, i32* %ipos1, align 4
  %idxprom410 = sext i32 %240 to i64
  %241 = load i32, i32* %jpos3, align 4
  %idxprom411 = sext i32 %241 to i64
  %242 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr412 = getelementptr inbounds %struct.img_par, %struct.img_par* %242, i32 0, i32 25
  %arrayidx413 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr412, i32 0, i64 %idxprom411
  %arrayidx414 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx413, i32 0, i64 %idxprom410
  store i16 %conv409, i16* %arrayidx414, align 2
  %243 = load i32, i32* %ipos0, align 4
  %idxprom415 = sext i32 %243 to i64
  %244 = load i32, i32* %jpos2, align 4
  %idxprom416 = sext i32 %244 to i64
  %245 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr417 = getelementptr inbounds %struct.img_par, %struct.img_par* %245, i32 0, i32 25
  %arrayidx418 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr417, i32 0, i64 %idxprom416
  %arrayidx419 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx418, i32 0, i64 %idxprom415
  store i16 %conv409, i16* %arrayidx419, align 2
  %arrayidx420 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %246 = load i16, i16* %arrayidx420, align 2
  %conv421 = zext i16 %246 to i32
  %arrayidx422 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %247 = load i16, i16* %arrayidx422, align 2
  %conv423 = zext i16 %247 to i32
  %mul424 = mul nsw i32 2, %conv423
  %add425 = add nsw i32 %conv421, %mul424
  %arrayidx426 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %248 = load i16, i16* %arrayidx426, align 2
  %conv427 = zext i16 %248 to i32
  %add428 = add nsw i32 %add425, %conv427
  %add429 = add nsw i32 %add428, 2
  %shr430 = ashr i32 %add429, 2
  %conv431 = trunc i32 %shr430 to i16
  %249 = load i32, i32* %ipos2, align 4
  %idxprom432 = sext i32 %249 to i64
  %250 = load i32, i32* %jpos3, align 4
  %idxprom433 = sext i32 %250 to i64
  %251 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr434 = getelementptr inbounds %struct.img_par, %struct.img_par* %251, i32 0, i32 25
  %arrayidx435 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr434, i32 0, i64 %idxprom433
  %arrayidx436 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx435, i32 0, i64 %idxprom432
  store i16 %conv431, i16* %arrayidx436, align 2
  %252 = load i32, i32* %ipos1, align 4
  %idxprom437 = sext i32 %252 to i64
  %253 = load i32, i32* %jpos2, align 4
  %idxprom438 = sext i32 %253 to i64
  %254 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr439 = getelementptr inbounds %struct.img_par, %struct.img_par* %254, i32 0, i32 25
  %arrayidx440 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr439, i32 0, i64 %idxprom438
  %arrayidx441 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx440, i32 0, i64 %idxprom437
  store i16 %conv431, i16* %arrayidx441, align 2
  %255 = load i32, i32* %ipos0, align 4
  %idxprom442 = sext i32 %255 to i64
  %256 = load i32, i32* %jpos1, align 4
  %idxprom443 = sext i32 %256 to i64
  %257 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr444 = getelementptr inbounds %struct.img_par, %struct.img_par* %257, i32 0, i32 25
  %arrayidx445 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr444, i32 0, i64 %idxprom443
  %arrayidx446 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx445, i32 0, i64 %idxprom442
  store i16 %conv431, i16* %arrayidx446, align 2
  %arrayidx447 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %258 = load i16, i16* %arrayidx447, align 2
  %conv448 = zext i16 %258 to i32
  %arrayidx449 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %259 = load i16, i16* %arrayidx449, align 2
  %conv450 = zext i16 %259 to i32
  %mul451 = mul nsw i32 2, %conv450
  %add452 = add nsw i32 %conv448, %mul451
  %arrayidx453 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %260 = load i16, i16* %arrayidx453, align 2
  %conv454 = zext i16 %260 to i32
  %add455 = add nsw i32 %add452, %conv454
  %add456 = add nsw i32 %add455, 2
  %shr457 = ashr i32 %add456, 2
  %conv458 = trunc i32 %shr457 to i16
  %261 = load i32, i32* %ipos3, align 4
  %idxprom459 = sext i32 %261 to i64
  %262 = load i32, i32* %jpos3, align 4
  %idxprom460 = sext i32 %262 to i64
  %263 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr461 = getelementptr inbounds %struct.img_par, %struct.img_par* %263, i32 0, i32 25
  %arrayidx462 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr461, i32 0, i64 %idxprom460
  %arrayidx463 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx462, i32 0, i64 %idxprom459
  store i16 %conv458, i16* %arrayidx463, align 2
  %264 = load i32, i32* %ipos2, align 4
  %idxprom464 = sext i32 %264 to i64
  %265 = load i32, i32* %jpos2, align 4
  %idxprom465 = sext i32 %265 to i64
  %266 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr466 = getelementptr inbounds %struct.img_par, %struct.img_par* %266, i32 0, i32 25
  %arrayidx467 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr466, i32 0, i64 %idxprom465
  %arrayidx468 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx467, i32 0, i64 %idxprom464
  store i16 %conv458, i16* %arrayidx468, align 2
  %267 = load i32, i32* %ipos1, align 4
  %idxprom469 = sext i32 %267 to i64
  %268 = load i32, i32* %jpos1, align 4
  %idxprom470 = sext i32 %268 to i64
  %269 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr471 = getelementptr inbounds %struct.img_par, %struct.img_par* %269, i32 0, i32 25
  %arrayidx472 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr471, i32 0, i64 %idxprom470
  %arrayidx473 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx472, i32 0, i64 %idxprom469
  store i16 %conv458, i16* %arrayidx473, align 2
  %270 = load i32, i32* %ipos0, align 4
  %idxprom474 = sext i32 %270 to i64
  %271 = load i32, i32* %jpos0, align 4
  %idxprom475 = sext i32 %271 to i64
  %272 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr476 = getelementptr inbounds %struct.img_par, %struct.img_par* %272, i32 0, i32 25
  %arrayidx477 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr476, i32 0, i64 %idxprom475
  %arrayidx478 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx477, i32 0, i64 %idxprom474
  store i16 %conv458, i16* %arrayidx478, align 2
  %arrayidx479 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %273 = load i16, i16* %arrayidx479, align 2
  %conv480 = zext i16 %273 to i32
  %arrayidx481 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %274 = load i16, i16* %arrayidx481, align 2
  %conv482 = zext i16 %274 to i32
  %mul483 = mul nsw i32 2, %conv482
  %add484 = add nsw i32 %conv480, %mul483
  %arrayidx485 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %275 = load i16, i16* %arrayidx485, align 2
  %conv486 = zext i16 %275 to i32
  %add487 = add nsw i32 %add484, %conv486
  %add488 = add nsw i32 %add487, 2
  %shr489 = ashr i32 %add488, 2
  %conv490 = trunc i32 %shr489 to i16
  %276 = load i32, i32* %ipos3, align 4
  %idxprom491 = sext i32 %276 to i64
  %277 = load i32, i32* %jpos2, align 4
  %idxprom492 = sext i32 %277 to i64
  %278 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr493 = getelementptr inbounds %struct.img_par, %struct.img_par* %278, i32 0, i32 25
  %arrayidx494 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr493, i32 0, i64 %idxprom492
  %arrayidx495 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx494, i32 0, i64 %idxprom491
  store i16 %conv490, i16* %arrayidx495, align 2
  %279 = load i32, i32* %ipos2, align 4
  %idxprom496 = sext i32 %279 to i64
  %280 = load i32, i32* %jpos1, align 4
  %idxprom497 = sext i32 %280 to i64
  %281 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr498 = getelementptr inbounds %struct.img_par, %struct.img_par* %281, i32 0, i32 25
  %arrayidx499 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr498, i32 0, i64 %idxprom497
  %arrayidx500 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx499, i32 0, i64 %idxprom496
  store i16 %conv490, i16* %arrayidx500, align 2
  %282 = load i32, i32* %ipos1, align 4
  %idxprom501 = sext i32 %282 to i64
  %283 = load i32, i32* %jpos0, align 4
  %idxprom502 = sext i32 %283 to i64
  %284 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr503 = getelementptr inbounds %struct.img_par, %struct.img_par* %284, i32 0, i32 25
  %arrayidx504 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr503, i32 0, i64 %idxprom502
  %arrayidx505 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx504, i32 0, i64 %idxprom501
  store i16 %conv490, i16* %arrayidx505, align 2
  %arrayidx506 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %285 = load i16, i16* %arrayidx506, align 2
  %conv507 = zext i16 %285 to i32
  %arrayidx508 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %286 = load i16, i16* %arrayidx508, align 2
  %conv509 = zext i16 %286 to i32
  %mul510 = mul nsw i32 2, %conv509
  %add511 = add nsw i32 %conv507, %mul510
  %arrayidx512 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %287 = load i16, i16* %arrayidx512, align 2
  %conv513 = zext i16 %287 to i32
  %add514 = add nsw i32 %add511, %conv513
  %add515 = add nsw i32 %add514, 2
  %shr516 = ashr i32 %add515, 2
  %conv517 = trunc i32 %shr516 to i16
  %288 = load i32, i32* %ipos3, align 4
  %idxprom518 = sext i32 %288 to i64
  %289 = load i32, i32* %jpos1, align 4
  %idxprom519 = sext i32 %289 to i64
  %290 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr520 = getelementptr inbounds %struct.img_par, %struct.img_par* %290, i32 0, i32 25
  %arrayidx521 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr520, i32 0, i64 %idxprom519
  %arrayidx522 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx521, i32 0, i64 %idxprom518
  store i16 %conv517, i16* %arrayidx522, align 2
  %291 = load i32, i32* %ipos2, align 4
  %idxprom523 = sext i32 %291 to i64
  %292 = load i32, i32* %jpos0, align 4
  %idxprom524 = sext i32 %292 to i64
  %293 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr525 = getelementptr inbounds %struct.img_par, %struct.img_par* %293, i32 0, i32 25
  %arrayidx526 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr525, i32 0, i64 %idxprom524
  %arrayidx527 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx526, i32 0, i64 %idxprom523
  store i16 %conv517, i16* %arrayidx527, align 2
  %arrayidx528 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %294 = load i16, i16* %arrayidx528, align 2
  %conv529 = zext i16 %294 to i32
  %arrayidx530 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %295 = load i16, i16* %arrayidx530, align 2
  %conv531 = zext i16 %295 to i32
  %mul532 = mul nsw i32 2, %conv531
  %add533 = add nsw i32 %conv529, %mul532
  %arrayidx534 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %296 = load i16, i16* %arrayidx534, align 2
  %conv535 = zext i16 %296 to i32
  %add536 = add nsw i32 %add533, %conv535
  %add537 = add nsw i32 %add536, 2
  %shr538 = ashr i32 %add537, 2
  %conv539 = trunc i32 %shr538 to i16
  %297 = load i32, i32* %ipos3, align 4
  %idxprom540 = sext i32 %297 to i64
  %298 = load i32, i32* %jpos0, align 4
  %idxprom541 = sext i32 %298 to i64
  %299 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr542 = getelementptr inbounds %struct.img_par, %struct.img_par* %299, i32 0, i32 25
  %arrayidx543 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr542, i32 0, i64 %idxprom541
  %arrayidx544 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx543, i32 0, i64 %idxprom540
  store i16 %conv539, i16* %arrayidx544, align 2
  br label %sw.epilog

sw.bb.545:                                        ; preds = %if.end.212
  %300 = load i32, i32* %block_available_up, align 4
  %tobool546 = icmp ne i32 %300, 0
  br i1 %tobool546, label %if.end.550, label %if.then.547

if.then.547:                                      ; preds = %sw.bb.545
  %301 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr548 = getelementptr inbounds %struct.img_par, %struct.img_par* %301, i32 0, i32 1
  %302 = load i32, i32* %current_mb_nr548, align 4
  %call549 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i32 0, i32 0), i32 %302)
  br label %if.end.550

if.end.550:                                       ; preds = %if.then.547, %sw.bb.545
  %arrayidx551 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %303 = load i16, i16* %arrayidx551, align 2
  %conv552 = zext i16 %303 to i32
  %arrayidx553 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %304 = load i16, i16* %arrayidx553, align 2
  %conv554 = zext i16 %304 to i32
  %add555 = add nsw i32 %conv552, %conv554
  %arrayidx556 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %305 = load i16, i16* %arrayidx556, align 2
  %conv557 = zext i16 %305 to i32
  %mul558 = mul nsw i32 2, %conv557
  %add559 = add nsw i32 %add555, %mul558
  %add560 = add nsw i32 %add559, 2
  %shr561 = ashr i32 %add560, 2
  %conv562 = trunc i32 %shr561 to i16
  %306 = load i32, i32* %ipos0, align 4
  %idxprom563 = sext i32 %306 to i64
  %307 = load i32, i32* %jpos0, align 4
  %idxprom564 = sext i32 %307 to i64
  %308 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr565 = getelementptr inbounds %struct.img_par, %struct.img_par* %308, i32 0, i32 25
  %arrayidx566 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr565, i32 0, i64 %idxprom564
  %arrayidx567 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx566, i32 0, i64 %idxprom563
  store i16 %conv562, i16* %arrayidx567, align 2
  %arrayidx568 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %309 = load i16, i16* %arrayidx568, align 2
  %conv569 = zext i16 %309 to i32
  %arrayidx570 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %310 = load i16, i16* %arrayidx570, align 2
  %conv571 = zext i16 %310 to i32
  %add572 = add nsw i32 %conv569, %conv571
  %arrayidx573 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %311 = load i16, i16* %arrayidx573, align 2
  %conv574 = zext i16 %311 to i32
  %mul575 = mul nsw i32 2, %conv574
  %add576 = add nsw i32 %add572, %mul575
  %add577 = add nsw i32 %add576, 2
  %shr578 = ashr i32 %add577, 2
  %conv579 = trunc i32 %shr578 to i16
  %312 = load i32, i32* %ipos0, align 4
  %idxprom580 = sext i32 %312 to i64
  %313 = load i32, i32* %jpos1, align 4
  %idxprom581 = sext i32 %313 to i64
  %314 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr582 = getelementptr inbounds %struct.img_par, %struct.img_par* %314, i32 0, i32 25
  %arrayidx583 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr582, i32 0, i64 %idxprom581
  %arrayidx584 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx583, i32 0, i64 %idxprom580
  store i16 %conv579, i16* %arrayidx584, align 2
  %315 = load i32, i32* %ipos1, align 4
  %idxprom585 = sext i32 %315 to i64
  %316 = load i32, i32* %jpos0, align 4
  %idxprom586 = sext i32 %316 to i64
  %317 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr587 = getelementptr inbounds %struct.img_par, %struct.img_par* %317, i32 0, i32 25
  %arrayidx588 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr587, i32 0, i64 %idxprom586
  %arrayidx589 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx588, i32 0, i64 %idxprom585
  store i16 %conv579, i16* %arrayidx589, align 2
  %arrayidx590 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %318 = load i16, i16* %arrayidx590, align 2
  %conv591 = zext i16 %318 to i32
  %arrayidx592 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %319 = load i16, i16* %arrayidx592, align 2
  %conv593 = zext i16 %319 to i32
  %add594 = add nsw i32 %conv591, %conv593
  %arrayidx595 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %320 = load i16, i16* %arrayidx595, align 2
  %conv596 = zext i16 %320 to i32
  %mul597 = mul nsw i32 2, %conv596
  %add598 = add nsw i32 %add594, %mul597
  %add599 = add nsw i32 %add598, 2
  %shr600 = ashr i32 %add599, 2
  %conv601 = trunc i32 %shr600 to i16
  %321 = load i32, i32* %ipos0, align 4
  %idxprom602 = sext i32 %321 to i64
  %322 = load i32, i32* %jpos2, align 4
  %idxprom603 = sext i32 %322 to i64
  %323 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr604 = getelementptr inbounds %struct.img_par, %struct.img_par* %323, i32 0, i32 25
  %arrayidx605 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr604, i32 0, i64 %idxprom603
  %arrayidx606 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx605, i32 0, i64 %idxprom602
  store i16 %conv601, i16* %arrayidx606, align 2
  %324 = load i32, i32* %ipos1, align 4
  %idxprom607 = sext i32 %324 to i64
  %325 = load i32, i32* %jpos1, align 4
  %idxprom608 = sext i32 %325 to i64
  %326 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr609 = getelementptr inbounds %struct.img_par, %struct.img_par* %326, i32 0, i32 25
  %arrayidx610 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr609, i32 0, i64 %idxprom608
  %arrayidx611 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx610, i32 0, i64 %idxprom607
  store i16 %conv601, i16* %arrayidx611, align 2
  %327 = load i32, i32* %ipos2, align 4
  %idxprom612 = sext i32 %327 to i64
  %328 = load i32, i32* %jpos0, align 4
  %idxprom613 = sext i32 %328 to i64
  %329 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr614 = getelementptr inbounds %struct.img_par, %struct.img_par* %329, i32 0, i32 25
  %arrayidx615 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr614, i32 0, i64 %idxprom613
  %arrayidx616 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx615, i32 0, i64 %idxprom612
  store i16 %conv601, i16* %arrayidx616, align 2
  %arrayidx617 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %330 = load i16, i16* %arrayidx617, align 2
  %conv618 = zext i16 %330 to i32
  %arrayidx619 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  %331 = load i16, i16* %arrayidx619, align 2
  %conv620 = zext i16 %331 to i32
  %add621 = add nsw i32 %conv618, %conv620
  %arrayidx622 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %332 = load i16, i16* %arrayidx622, align 2
  %conv623 = zext i16 %332 to i32
  %mul624 = mul nsw i32 2, %conv623
  %add625 = add nsw i32 %add621, %mul624
  %add626 = add nsw i32 %add625, 2
  %shr627 = ashr i32 %add626, 2
  %conv628 = trunc i32 %shr627 to i16
  %333 = load i32, i32* %ipos0, align 4
  %idxprom629 = sext i32 %333 to i64
  %334 = load i32, i32* %jpos3, align 4
  %idxprom630 = sext i32 %334 to i64
  %335 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr631 = getelementptr inbounds %struct.img_par, %struct.img_par* %335, i32 0, i32 25
  %arrayidx632 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr631, i32 0, i64 %idxprom630
  %arrayidx633 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx632, i32 0, i64 %idxprom629
  store i16 %conv628, i16* %arrayidx633, align 2
  %336 = load i32, i32* %ipos1, align 4
  %idxprom634 = sext i32 %336 to i64
  %337 = load i32, i32* %jpos2, align 4
  %idxprom635 = sext i32 %337 to i64
  %338 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr636 = getelementptr inbounds %struct.img_par, %struct.img_par* %338, i32 0, i32 25
  %arrayidx637 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr636, i32 0, i64 %idxprom635
  %arrayidx638 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx637, i32 0, i64 %idxprom634
  store i16 %conv628, i16* %arrayidx638, align 2
  %339 = load i32, i32* %ipos2, align 4
  %idxprom639 = sext i32 %339 to i64
  %340 = load i32, i32* %jpos1, align 4
  %idxprom640 = sext i32 %340 to i64
  %341 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr641 = getelementptr inbounds %struct.img_par, %struct.img_par* %341, i32 0, i32 25
  %arrayidx642 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr641, i32 0, i64 %idxprom640
  %arrayidx643 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx642, i32 0, i64 %idxprom639
  store i16 %conv628, i16* %arrayidx643, align 2
  %342 = load i32, i32* %ipos3, align 4
  %idxprom644 = sext i32 %342 to i64
  %343 = load i32, i32* %jpos0, align 4
  %idxprom645 = sext i32 %343 to i64
  %344 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr646 = getelementptr inbounds %struct.img_par, %struct.img_par* %344, i32 0, i32 25
  %arrayidx647 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr646, i32 0, i64 %idxprom645
  %arrayidx648 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx647, i32 0, i64 %idxprom644
  store i16 %conv628, i16* %arrayidx648, align 2
  %arrayidx649 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %345 = load i16, i16* %arrayidx649, align 2
  %conv650 = zext i16 %345 to i32
  %arrayidx651 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 7
  %346 = load i16, i16* %arrayidx651, align 2
  %conv652 = zext i16 %346 to i32
  %add653 = add nsw i32 %conv650, %conv652
  %arrayidx654 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  %347 = load i16, i16* %arrayidx654, align 2
  %conv655 = zext i16 %347 to i32
  %mul656 = mul nsw i32 2, %conv655
  %add657 = add nsw i32 %add653, %mul656
  %add658 = add nsw i32 %add657, 2
  %shr659 = ashr i32 %add658, 2
  %conv660 = trunc i32 %shr659 to i16
  %348 = load i32, i32* %ipos1, align 4
  %idxprom661 = sext i32 %348 to i64
  %349 = load i32, i32* %jpos3, align 4
  %idxprom662 = sext i32 %349 to i64
  %350 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr663 = getelementptr inbounds %struct.img_par, %struct.img_par* %350, i32 0, i32 25
  %arrayidx664 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr663, i32 0, i64 %idxprom662
  %arrayidx665 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx664, i32 0, i64 %idxprom661
  store i16 %conv660, i16* %arrayidx665, align 2
  %351 = load i32, i32* %ipos2, align 4
  %idxprom666 = sext i32 %351 to i64
  %352 = load i32, i32* %jpos2, align 4
  %idxprom667 = sext i32 %352 to i64
  %353 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr668 = getelementptr inbounds %struct.img_par, %struct.img_par* %353, i32 0, i32 25
  %arrayidx669 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr668, i32 0, i64 %idxprom667
  %arrayidx670 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx669, i32 0, i64 %idxprom666
  store i16 %conv660, i16* %arrayidx670, align 2
  %354 = load i32, i32* %ipos3, align 4
  %idxprom671 = sext i32 %354 to i64
  %355 = load i32, i32* %jpos1, align 4
  %idxprom672 = sext i32 %355 to i64
  %356 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr673 = getelementptr inbounds %struct.img_par, %struct.img_par* %356, i32 0, i32 25
  %arrayidx674 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr673, i32 0, i64 %idxprom672
  %arrayidx675 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx674, i32 0, i64 %idxprom671
  store i16 %conv660, i16* %arrayidx675, align 2
  %arrayidx676 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  %357 = load i16, i16* %arrayidx676, align 2
  %conv677 = zext i16 %357 to i32
  %arrayidx678 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 8
  %358 = load i16, i16* %arrayidx678, align 2
  %conv679 = zext i16 %358 to i32
  %add680 = add nsw i32 %conv677, %conv679
  %arrayidx681 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 7
  %359 = load i16, i16* %arrayidx681, align 2
  %conv682 = zext i16 %359 to i32
  %mul683 = mul nsw i32 2, %conv682
  %add684 = add nsw i32 %add680, %mul683
  %add685 = add nsw i32 %add684, 2
  %shr686 = ashr i32 %add685, 2
  %conv687 = trunc i32 %shr686 to i16
  %360 = load i32, i32* %ipos2, align 4
  %idxprom688 = sext i32 %360 to i64
  %361 = load i32, i32* %jpos3, align 4
  %idxprom689 = sext i32 %361 to i64
  %362 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr690 = getelementptr inbounds %struct.img_par, %struct.img_par* %362, i32 0, i32 25
  %arrayidx691 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr690, i32 0, i64 %idxprom689
  %arrayidx692 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx691, i32 0, i64 %idxprom688
  store i16 %conv687, i16* %arrayidx692, align 2
  %363 = load i32, i32* %ipos3, align 4
  %idxprom693 = sext i32 %363 to i64
  %364 = load i32, i32* %jpos2, align 4
  %idxprom694 = sext i32 %364 to i64
  %365 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr695 = getelementptr inbounds %struct.img_par, %struct.img_par* %365, i32 0, i32 25
  %arrayidx696 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr695, i32 0, i64 %idxprom694
  %arrayidx697 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx696, i32 0, i64 %idxprom693
  store i16 %conv687, i16* %arrayidx697, align 2
  %arrayidx698 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 7
  %366 = load i16, i16* %arrayidx698, align 2
  %conv699 = zext i16 %366 to i32
  %arrayidx700 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 8
  %367 = load i16, i16* %arrayidx700, align 2
  %conv701 = zext i16 %367 to i32
  %mul702 = mul nsw i32 3, %conv701
  %add703 = add nsw i32 %conv699, %mul702
  %add704 = add nsw i32 %add703, 2
  %shr705 = ashr i32 %add704, 2
  %conv706 = trunc i32 %shr705 to i16
  %368 = load i32, i32* %ipos3, align 4
  %idxprom707 = sext i32 %368 to i64
  %369 = load i32, i32* %jpos3, align 4
  %idxprom708 = sext i32 %369 to i64
  %370 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr709 = getelementptr inbounds %struct.img_par, %struct.img_par* %370, i32 0, i32 25
  %arrayidx710 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr709, i32 0, i64 %idxprom708
  %arrayidx711 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx710, i32 0, i64 %idxprom707
  store i16 %conv706, i16* %arrayidx711, align 2
  br label %sw.epilog

sw.bb.712:                                        ; preds = %if.end.212
  %371 = load i32, i32* %block_available_up, align 4
  %tobool713 = icmp ne i32 %371, 0
  br i1 %tobool713, label %lor.lhs.false.714, label %if.then.718

lor.lhs.false.714:                                ; preds = %sw.bb.712
  %372 = load i32, i32* %block_available_left, align 4
  %tobool715 = icmp ne i32 %372, 0
  br i1 %tobool715, label %lor.lhs.false.716, label %if.then.718

lor.lhs.false.716:                                ; preds = %lor.lhs.false.714
  %373 = load i32, i32* %block_available_up_left, align 4
  %tobool717 = icmp ne i32 %373, 0
  br i1 %tobool717, label %if.end.721, label %if.then.718

if.then.718:                                      ; preds = %lor.lhs.false.716, %lor.lhs.false.714, %sw.bb.712
  %374 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr719 = getelementptr inbounds %struct.img_par, %struct.img_par* %374, i32 0, i32 1
  %375 = load i32, i32* %current_mb_nr719, align 4
  %call720 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i32 0, i32 0), i32 %375)
  br label %if.end.721

if.end.721:                                       ; preds = %if.then.718, %lor.lhs.false.716
  %arrayidx722 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %376 = load i16, i16* %arrayidx722, align 2
  %conv723 = zext i16 %376 to i32
  %arrayidx724 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %377 = load i16, i16* %arrayidx724, align 2
  %conv725 = zext i16 %377 to i32
  %add726 = add nsw i32 %conv723, %conv725
  %add727 = add nsw i32 %add726, 1
  %shr728 = ashr i32 %add727, 1
  %conv729 = trunc i32 %shr728 to i16
  %378 = load i32, i32* %ipos1, align 4
  %idxprom730 = sext i32 %378 to i64
  %379 = load i32, i32* %jpos2, align 4
  %idxprom731 = sext i32 %379 to i64
  %380 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr732 = getelementptr inbounds %struct.img_par, %struct.img_par* %380, i32 0, i32 25
  %arrayidx733 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr732, i32 0, i64 %idxprom731
  %arrayidx734 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx733, i32 0, i64 %idxprom730
  store i16 %conv729, i16* %arrayidx734, align 2
  %381 = load i32, i32* %ipos0, align 4
  %idxprom735 = sext i32 %381 to i64
  %382 = load i32, i32* %jpos0, align 4
  %idxprom736 = sext i32 %382 to i64
  %383 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr737 = getelementptr inbounds %struct.img_par, %struct.img_par* %383, i32 0, i32 25
  %arrayidx738 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr737, i32 0, i64 %idxprom736
  %arrayidx739 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx738, i32 0, i64 %idxprom735
  store i16 %conv729, i16* %arrayidx739, align 2
  %arrayidx740 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %384 = load i16, i16* %arrayidx740, align 2
  %conv741 = zext i16 %384 to i32
  %arrayidx742 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %385 = load i16, i16* %arrayidx742, align 2
  %conv743 = zext i16 %385 to i32
  %add744 = add nsw i32 %conv741, %conv743
  %add745 = add nsw i32 %add744, 1
  %shr746 = ashr i32 %add745, 1
  %conv747 = trunc i32 %shr746 to i16
  %386 = load i32, i32* %ipos2, align 4
  %idxprom748 = sext i32 %386 to i64
  %387 = load i32, i32* %jpos2, align 4
  %idxprom749 = sext i32 %387 to i64
  %388 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr750 = getelementptr inbounds %struct.img_par, %struct.img_par* %388, i32 0, i32 25
  %arrayidx751 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr750, i32 0, i64 %idxprom749
  %arrayidx752 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx751, i32 0, i64 %idxprom748
  store i16 %conv747, i16* %arrayidx752, align 2
  %389 = load i32, i32* %ipos1, align 4
  %idxprom753 = sext i32 %389 to i64
  %390 = load i32, i32* %jpos0, align 4
  %idxprom754 = sext i32 %390 to i64
  %391 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr755 = getelementptr inbounds %struct.img_par, %struct.img_par* %391, i32 0, i32 25
  %arrayidx756 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr755, i32 0, i64 %idxprom754
  %arrayidx757 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx756, i32 0, i64 %idxprom753
  store i16 %conv747, i16* %arrayidx757, align 2
  %arrayidx758 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %392 = load i16, i16* %arrayidx758, align 2
  %conv759 = zext i16 %392 to i32
  %arrayidx760 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %393 = load i16, i16* %arrayidx760, align 2
  %conv761 = zext i16 %393 to i32
  %add762 = add nsw i32 %conv759, %conv761
  %add763 = add nsw i32 %add762, 1
  %shr764 = ashr i32 %add763, 1
  %conv765 = trunc i32 %shr764 to i16
  %394 = load i32, i32* %ipos3, align 4
  %idxprom766 = sext i32 %394 to i64
  %395 = load i32, i32* %jpos2, align 4
  %idxprom767 = sext i32 %395 to i64
  %396 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr768 = getelementptr inbounds %struct.img_par, %struct.img_par* %396, i32 0, i32 25
  %arrayidx769 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr768, i32 0, i64 %idxprom767
  %arrayidx770 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx769, i32 0, i64 %idxprom766
  store i16 %conv765, i16* %arrayidx770, align 2
  %397 = load i32, i32* %ipos2, align 4
  %idxprom771 = sext i32 %397 to i64
  %398 = load i32, i32* %jpos0, align 4
  %idxprom772 = sext i32 %398 to i64
  %399 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr773 = getelementptr inbounds %struct.img_par, %struct.img_par* %399, i32 0, i32 25
  %arrayidx774 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr773, i32 0, i64 %idxprom772
  %arrayidx775 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx774, i32 0, i64 %idxprom771
  store i16 %conv765, i16* %arrayidx775, align 2
  %arrayidx776 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %400 = load i16, i16* %arrayidx776, align 2
  %conv777 = zext i16 %400 to i32
  %arrayidx778 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %401 = load i16, i16* %arrayidx778, align 2
  %conv779 = zext i16 %401 to i32
  %add780 = add nsw i32 %conv777, %conv779
  %add781 = add nsw i32 %add780, 1
  %shr782 = ashr i32 %add781, 1
  %conv783 = trunc i32 %shr782 to i16
  %402 = load i32, i32* %ipos3, align 4
  %idxprom784 = sext i32 %402 to i64
  %403 = load i32, i32* %jpos0, align 4
  %idxprom785 = sext i32 %403 to i64
  %404 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr786 = getelementptr inbounds %struct.img_par, %struct.img_par* %404, i32 0, i32 25
  %arrayidx787 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr786, i32 0, i64 %idxprom785
  %arrayidx788 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx787, i32 0, i64 %idxprom784
  store i16 %conv783, i16* %arrayidx788, align 2
  %arrayidx789 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %405 = load i16, i16* %arrayidx789, align 2
  %conv790 = zext i16 %405 to i32
  %arrayidx791 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %406 = load i16, i16* %arrayidx791, align 2
  %conv792 = zext i16 %406 to i32
  %mul793 = mul nsw i32 2, %conv792
  %add794 = add nsw i32 %conv790, %mul793
  %arrayidx795 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %407 = load i16, i16* %arrayidx795, align 2
  %conv796 = zext i16 %407 to i32
  %add797 = add nsw i32 %add794, %conv796
  %add798 = add nsw i32 %add797, 2
  %shr799 = ashr i32 %add798, 2
  %conv800 = trunc i32 %shr799 to i16
  %408 = load i32, i32* %ipos1, align 4
  %idxprom801 = sext i32 %408 to i64
  %409 = load i32, i32* %jpos3, align 4
  %idxprom802 = sext i32 %409 to i64
  %410 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr803 = getelementptr inbounds %struct.img_par, %struct.img_par* %410, i32 0, i32 25
  %arrayidx804 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr803, i32 0, i64 %idxprom802
  %arrayidx805 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx804, i32 0, i64 %idxprom801
  store i16 %conv800, i16* %arrayidx805, align 2
  %411 = load i32, i32* %ipos0, align 4
  %idxprom806 = sext i32 %411 to i64
  %412 = load i32, i32* %jpos1, align 4
  %idxprom807 = sext i32 %412 to i64
  %413 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr808 = getelementptr inbounds %struct.img_par, %struct.img_par* %413, i32 0, i32 25
  %arrayidx809 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr808, i32 0, i64 %idxprom807
  %arrayidx810 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx809, i32 0, i64 %idxprom806
  store i16 %conv800, i16* %arrayidx810, align 2
  %arrayidx811 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %414 = load i16, i16* %arrayidx811, align 2
  %conv812 = zext i16 %414 to i32
  %arrayidx813 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %415 = load i16, i16* %arrayidx813, align 2
  %conv814 = zext i16 %415 to i32
  %mul815 = mul nsw i32 2, %conv814
  %add816 = add nsw i32 %conv812, %mul815
  %arrayidx817 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %416 = load i16, i16* %arrayidx817, align 2
  %conv818 = zext i16 %416 to i32
  %add819 = add nsw i32 %add816, %conv818
  %add820 = add nsw i32 %add819, 2
  %shr821 = ashr i32 %add820, 2
  %conv822 = trunc i32 %shr821 to i16
  %417 = load i32, i32* %ipos2, align 4
  %idxprom823 = sext i32 %417 to i64
  %418 = load i32, i32* %jpos3, align 4
  %idxprom824 = sext i32 %418 to i64
  %419 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr825 = getelementptr inbounds %struct.img_par, %struct.img_par* %419, i32 0, i32 25
  %arrayidx826 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr825, i32 0, i64 %idxprom824
  %arrayidx827 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx826, i32 0, i64 %idxprom823
  store i16 %conv822, i16* %arrayidx827, align 2
  %420 = load i32, i32* %ipos1, align 4
  %idxprom828 = sext i32 %420 to i64
  %421 = load i32, i32* %jpos1, align 4
  %idxprom829 = sext i32 %421 to i64
  %422 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr830 = getelementptr inbounds %struct.img_par, %struct.img_par* %422, i32 0, i32 25
  %arrayidx831 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr830, i32 0, i64 %idxprom829
  %arrayidx832 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx831, i32 0, i64 %idxprom828
  store i16 %conv822, i16* %arrayidx832, align 2
  %arrayidx833 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %423 = load i16, i16* %arrayidx833, align 2
  %conv834 = zext i16 %423 to i32
  %arrayidx835 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %424 = load i16, i16* %arrayidx835, align 2
  %conv836 = zext i16 %424 to i32
  %mul837 = mul nsw i32 2, %conv836
  %add838 = add nsw i32 %conv834, %mul837
  %arrayidx839 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %425 = load i16, i16* %arrayidx839, align 2
  %conv840 = zext i16 %425 to i32
  %add841 = add nsw i32 %add838, %conv840
  %add842 = add nsw i32 %add841, 2
  %shr843 = ashr i32 %add842, 2
  %conv844 = trunc i32 %shr843 to i16
  %426 = load i32, i32* %ipos3, align 4
  %idxprom845 = sext i32 %426 to i64
  %427 = load i32, i32* %jpos3, align 4
  %idxprom846 = sext i32 %427 to i64
  %428 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr847 = getelementptr inbounds %struct.img_par, %struct.img_par* %428, i32 0, i32 25
  %arrayidx848 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr847, i32 0, i64 %idxprom846
  %arrayidx849 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx848, i32 0, i64 %idxprom845
  store i16 %conv844, i16* %arrayidx849, align 2
  %429 = load i32, i32* %ipos2, align 4
  %idxprom850 = sext i32 %429 to i64
  %430 = load i32, i32* %jpos1, align 4
  %idxprom851 = sext i32 %430 to i64
  %431 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr852 = getelementptr inbounds %struct.img_par, %struct.img_par* %431, i32 0, i32 25
  %arrayidx853 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr852, i32 0, i64 %idxprom851
  %arrayidx854 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx853, i32 0, i64 %idxprom850
  store i16 %conv844, i16* %arrayidx854, align 2
  %arrayidx855 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %432 = load i16, i16* %arrayidx855, align 2
  %conv856 = zext i16 %432 to i32
  %arrayidx857 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %433 = load i16, i16* %arrayidx857, align 2
  %conv858 = zext i16 %433 to i32
  %mul859 = mul nsw i32 2, %conv858
  %add860 = add nsw i32 %conv856, %mul859
  %arrayidx861 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %434 = load i16, i16* %arrayidx861, align 2
  %conv862 = zext i16 %434 to i32
  %add863 = add nsw i32 %add860, %conv862
  %add864 = add nsw i32 %add863, 2
  %shr865 = ashr i32 %add864, 2
  %conv866 = trunc i32 %shr865 to i16
  %435 = load i32, i32* %ipos3, align 4
  %idxprom867 = sext i32 %435 to i64
  %436 = load i32, i32* %jpos1, align 4
  %idxprom868 = sext i32 %436 to i64
  %437 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr869 = getelementptr inbounds %struct.img_par, %struct.img_par* %437, i32 0, i32 25
  %arrayidx870 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr869, i32 0, i64 %idxprom868
  %arrayidx871 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx870, i32 0, i64 %idxprom867
  store i16 %conv866, i16* %arrayidx871, align 2
  %arrayidx872 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %438 = load i16, i16* %arrayidx872, align 2
  %conv873 = zext i16 %438 to i32
  %arrayidx874 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %439 = load i16, i16* %arrayidx874, align 2
  %conv875 = zext i16 %439 to i32
  %mul876 = mul nsw i32 2, %conv875
  %add877 = add nsw i32 %conv873, %mul876
  %arrayidx878 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %440 = load i16, i16* %arrayidx878, align 2
  %conv879 = zext i16 %440 to i32
  %add880 = add nsw i32 %add877, %conv879
  %add881 = add nsw i32 %add880, 2
  %shr882 = ashr i32 %add881, 2
  %conv883 = trunc i32 %shr882 to i16
  %441 = load i32, i32* %ipos0, align 4
  %idxprom884 = sext i32 %441 to i64
  %442 = load i32, i32* %jpos2, align 4
  %idxprom885 = sext i32 %442 to i64
  %443 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr886 = getelementptr inbounds %struct.img_par, %struct.img_par* %443, i32 0, i32 25
  %arrayidx887 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr886, i32 0, i64 %idxprom885
  %arrayidx888 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx887, i32 0, i64 %idxprom884
  store i16 %conv883, i16* %arrayidx888, align 2
  %arrayidx889 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %444 = load i16, i16* %arrayidx889, align 2
  %conv890 = zext i16 %444 to i32
  %arrayidx891 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %445 = load i16, i16* %arrayidx891, align 2
  %conv892 = zext i16 %445 to i32
  %mul893 = mul nsw i32 2, %conv892
  %add894 = add nsw i32 %conv890, %mul893
  %arrayidx895 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %446 = load i16, i16* %arrayidx895, align 2
  %conv896 = zext i16 %446 to i32
  %add897 = add nsw i32 %add894, %conv896
  %add898 = add nsw i32 %add897, 2
  %shr899 = ashr i32 %add898, 2
  %conv900 = trunc i32 %shr899 to i16
  %447 = load i32, i32* %ipos0, align 4
  %idxprom901 = sext i32 %447 to i64
  %448 = load i32, i32* %jpos3, align 4
  %idxprom902 = sext i32 %448 to i64
  %449 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr903 = getelementptr inbounds %struct.img_par, %struct.img_par* %449, i32 0, i32 25
  %arrayidx904 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr903, i32 0, i64 %idxprom902
  %arrayidx905 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx904, i32 0, i64 %idxprom901
  store i16 %conv900, i16* %arrayidx905, align 2
  br label %sw.epilog

sw.bb.906:                                        ; preds = %if.end.212
  %450 = load i32, i32* %block_available_up, align 4
  %tobool907 = icmp ne i32 %450, 0
  br i1 %tobool907, label %if.end.911, label %if.then.908

if.then.908:                                      ; preds = %sw.bb.906
  %451 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr909 = getelementptr inbounds %struct.img_par, %struct.img_par* %451, i32 0, i32 1
  %452 = load i32, i32* %current_mb_nr909, align 4
  %call910 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i32 0, i32 0), i32 %452)
  br label %if.end.911

if.end.911:                                       ; preds = %if.then.908, %sw.bb.906
  %arrayidx912 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %453 = load i16, i16* %arrayidx912, align 2
  %conv913 = zext i16 %453 to i32
  %arrayidx914 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %454 = load i16, i16* %arrayidx914, align 2
  %conv915 = zext i16 %454 to i32
  %add916 = add nsw i32 %conv913, %conv915
  %add917 = add nsw i32 %add916, 1
  %shr918 = ashr i32 %add917, 1
  %conv919 = trunc i32 %shr918 to i16
  %455 = load i32, i32* %ipos0, align 4
  %idxprom920 = sext i32 %455 to i64
  %456 = load i32, i32* %jpos0, align 4
  %idxprom921 = sext i32 %456 to i64
  %457 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr922 = getelementptr inbounds %struct.img_par, %struct.img_par* %457, i32 0, i32 25
  %arrayidx923 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr922, i32 0, i64 %idxprom921
  %arrayidx924 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx923, i32 0, i64 %idxprom920
  store i16 %conv919, i16* %arrayidx924, align 2
  %arrayidx925 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %458 = load i16, i16* %arrayidx925, align 2
  %conv926 = zext i16 %458 to i32
  %arrayidx927 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %459 = load i16, i16* %arrayidx927, align 2
  %conv928 = zext i16 %459 to i32
  %add929 = add nsw i32 %conv926, %conv928
  %add930 = add nsw i32 %add929, 1
  %shr931 = ashr i32 %add930, 1
  %conv932 = trunc i32 %shr931 to i16
  %460 = load i32, i32* %ipos0, align 4
  %idxprom933 = sext i32 %460 to i64
  %461 = load i32, i32* %jpos2, align 4
  %idxprom934 = sext i32 %461 to i64
  %462 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr935 = getelementptr inbounds %struct.img_par, %struct.img_par* %462, i32 0, i32 25
  %arrayidx936 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr935, i32 0, i64 %idxprom934
  %arrayidx937 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx936, i32 0, i64 %idxprom933
  store i16 %conv932, i16* %arrayidx937, align 2
  %463 = load i32, i32* %ipos1, align 4
  %idxprom938 = sext i32 %463 to i64
  %464 = load i32, i32* %jpos0, align 4
  %idxprom939 = sext i32 %464 to i64
  %465 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr940 = getelementptr inbounds %struct.img_par, %struct.img_par* %465, i32 0, i32 25
  %arrayidx941 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr940, i32 0, i64 %idxprom939
  %arrayidx942 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx941, i32 0, i64 %idxprom938
  store i16 %conv932, i16* %arrayidx942, align 2
  %arrayidx943 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %466 = load i16, i16* %arrayidx943, align 2
  %conv944 = zext i16 %466 to i32
  %arrayidx945 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %467 = load i16, i16* %arrayidx945, align 2
  %conv946 = zext i16 %467 to i32
  %add947 = add nsw i32 %conv944, %conv946
  %add948 = add nsw i32 %add947, 1
  %shr949 = ashr i32 %add948, 1
  %conv950 = trunc i32 %shr949 to i16
  %468 = load i32, i32* %ipos1, align 4
  %idxprom951 = sext i32 %468 to i64
  %469 = load i32, i32* %jpos2, align 4
  %idxprom952 = sext i32 %469 to i64
  %470 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr953 = getelementptr inbounds %struct.img_par, %struct.img_par* %470, i32 0, i32 25
  %arrayidx954 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr953, i32 0, i64 %idxprom952
  %arrayidx955 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx954, i32 0, i64 %idxprom951
  store i16 %conv950, i16* %arrayidx955, align 2
  %471 = load i32, i32* %ipos2, align 4
  %idxprom956 = sext i32 %471 to i64
  %472 = load i32, i32* %jpos0, align 4
  %idxprom957 = sext i32 %472 to i64
  %473 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr958 = getelementptr inbounds %struct.img_par, %struct.img_par* %473, i32 0, i32 25
  %arrayidx959 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr958, i32 0, i64 %idxprom957
  %arrayidx960 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx959, i32 0, i64 %idxprom956
  store i16 %conv950, i16* %arrayidx960, align 2
  %arrayidx961 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %474 = load i16, i16* %arrayidx961, align 2
  %conv962 = zext i16 %474 to i32
  %arrayidx963 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %475 = load i16, i16* %arrayidx963, align 2
  %conv964 = zext i16 %475 to i32
  %add965 = add nsw i32 %conv962, %conv964
  %add966 = add nsw i32 %add965, 1
  %shr967 = ashr i32 %add966, 1
  %conv968 = trunc i32 %shr967 to i16
  %476 = load i32, i32* %ipos2, align 4
  %idxprom969 = sext i32 %476 to i64
  %477 = load i32, i32* %jpos2, align 4
  %idxprom970 = sext i32 %477 to i64
  %478 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr971 = getelementptr inbounds %struct.img_par, %struct.img_par* %478, i32 0, i32 25
  %arrayidx972 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr971, i32 0, i64 %idxprom970
  %arrayidx973 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx972, i32 0, i64 %idxprom969
  store i16 %conv968, i16* %arrayidx973, align 2
  %479 = load i32, i32* %ipos3, align 4
  %idxprom974 = sext i32 %479 to i64
  %480 = load i32, i32* %jpos0, align 4
  %idxprom975 = sext i32 %480 to i64
  %481 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr976 = getelementptr inbounds %struct.img_par, %struct.img_par* %481, i32 0, i32 25
  %arrayidx977 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr976, i32 0, i64 %idxprom975
  %arrayidx978 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx977, i32 0, i64 %idxprom974
  store i16 %conv968, i16* %arrayidx978, align 2
  %arrayidx979 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %482 = load i16, i16* %arrayidx979, align 2
  %conv980 = zext i16 %482 to i32
  %arrayidx981 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  %483 = load i16, i16* %arrayidx981, align 2
  %conv982 = zext i16 %483 to i32
  %add983 = add nsw i32 %conv980, %conv982
  %add984 = add nsw i32 %add983, 1
  %shr985 = ashr i32 %add984, 1
  %conv986 = trunc i32 %shr985 to i16
  %484 = load i32, i32* %ipos3, align 4
  %idxprom987 = sext i32 %484 to i64
  %485 = load i32, i32* %jpos2, align 4
  %idxprom988 = sext i32 %485 to i64
  %486 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr989 = getelementptr inbounds %struct.img_par, %struct.img_par* %486, i32 0, i32 25
  %arrayidx990 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr989, i32 0, i64 %idxprom988
  %arrayidx991 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx990, i32 0, i64 %idxprom987
  store i16 %conv986, i16* %arrayidx991, align 2
  %arrayidx992 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %487 = load i16, i16* %arrayidx992, align 2
  %conv993 = zext i16 %487 to i32
  %arrayidx994 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %488 = load i16, i16* %arrayidx994, align 2
  %conv995 = zext i16 %488 to i32
  %mul996 = mul nsw i32 2, %conv995
  %add997 = add nsw i32 %conv993, %mul996
  %arrayidx998 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %489 = load i16, i16* %arrayidx998, align 2
  %conv999 = zext i16 %489 to i32
  %add1000 = add nsw i32 %add997, %conv999
  %add1001 = add nsw i32 %add1000, 2
  %shr1002 = ashr i32 %add1001, 2
  %conv1003 = trunc i32 %shr1002 to i16
  %490 = load i32, i32* %ipos0, align 4
  %idxprom1004 = sext i32 %490 to i64
  %491 = load i32, i32* %jpos1, align 4
  %idxprom1005 = sext i32 %491 to i64
  %492 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1006 = getelementptr inbounds %struct.img_par, %struct.img_par* %492, i32 0, i32 25
  %arrayidx1007 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1006, i32 0, i64 %idxprom1005
  %arrayidx1008 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1007, i32 0, i64 %idxprom1004
  store i16 %conv1003, i16* %arrayidx1008, align 2
  %arrayidx1009 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %493 = load i16, i16* %arrayidx1009, align 2
  %conv1010 = zext i16 %493 to i32
  %arrayidx1011 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %494 = load i16, i16* %arrayidx1011, align 2
  %conv1012 = zext i16 %494 to i32
  %mul1013 = mul nsw i32 2, %conv1012
  %add1014 = add nsw i32 %conv1010, %mul1013
  %arrayidx1015 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %495 = load i16, i16* %arrayidx1015, align 2
  %conv1016 = zext i16 %495 to i32
  %add1017 = add nsw i32 %add1014, %conv1016
  %add1018 = add nsw i32 %add1017, 2
  %shr1019 = ashr i32 %add1018, 2
  %conv1020 = trunc i32 %shr1019 to i16
  %496 = load i32, i32* %ipos0, align 4
  %idxprom1021 = sext i32 %496 to i64
  %497 = load i32, i32* %jpos3, align 4
  %idxprom1022 = sext i32 %497 to i64
  %498 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1023 = getelementptr inbounds %struct.img_par, %struct.img_par* %498, i32 0, i32 25
  %arrayidx1024 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1023, i32 0, i64 %idxprom1022
  %arrayidx1025 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1024, i32 0, i64 %idxprom1021
  store i16 %conv1020, i16* %arrayidx1025, align 2
  %499 = load i32, i32* %ipos1, align 4
  %idxprom1026 = sext i32 %499 to i64
  %500 = load i32, i32* %jpos1, align 4
  %idxprom1027 = sext i32 %500 to i64
  %501 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1028 = getelementptr inbounds %struct.img_par, %struct.img_par* %501, i32 0, i32 25
  %arrayidx1029 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1028, i32 0, i64 %idxprom1027
  %arrayidx1030 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1029, i32 0, i64 %idxprom1026
  store i16 %conv1020, i16* %arrayidx1030, align 2
  %arrayidx1031 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %502 = load i16, i16* %arrayidx1031, align 2
  %conv1032 = zext i16 %502 to i32
  %arrayidx1033 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %503 = load i16, i16* %arrayidx1033, align 2
  %conv1034 = zext i16 %503 to i32
  %mul1035 = mul nsw i32 2, %conv1034
  %add1036 = add nsw i32 %conv1032, %mul1035
  %arrayidx1037 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %504 = load i16, i16* %arrayidx1037, align 2
  %conv1038 = zext i16 %504 to i32
  %add1039 = add nsw i32 %add1036, %conv1038
  %add1040 = add nsw i32 %add1039, 2
  %shr1041 = ashr i32 %add1040, 2
  %conv1042 = trunc i32 %shr1041 to i16
  %505 = load i32, i32* %ipos1, align 4
  %idxprom1043 = sext i32 %505 to i64
  %506 = load i32, i32* %jpos3, align 4
  %idxprom1044 = sext i32 %506 to i64
  %507 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1045 = getelementptr inbounds %struct.img_par, %struct.img_par* %507, i32 0, i32 25
  %arrayidx1046 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1045, i32 0, i64 %idxprom1044
  %arrayidx1047 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1046, i32 0, i64 %idxprom1043
  store i16 %conv1042, i16* %arrayidx1047, align 2
  %508 = load i32, i32* %ipos2, align 4
  %idxprom1048 = sext i32 %508 to i64
  %509 = load i32, i32* %jpos1, align 4
  %idxprom1049 = sext i32 %509 to i64
  %510 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1050 = getelementptr inbounds %struct.img_par, %struct.img_par* %510, i32 0, i32 25
  %arrayidx1051 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1050, i32 0, i64 %idxprom1049
  %arrayidx1052 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1051, i32 0, i64 %idxprom1048
  store i16 %conv1042, i16* %arrayidx1052, align 2
  %arrayidx1053 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 4
  %511 = load i16, i16* %arrayidx1053, align 2
  %conv1054 = zext i16 %511 to i32
  %arrayidx1055 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %512 = load i16, i16* %arrayidx1055, align 2
  %conv1056 = zext i16 %512 to i32
  %mul1057 = mul nsw i32 2, %conv1056
  %add1058 = add nsw i32 %conv1054, %mul1057
  %arrayidx1059 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  %513 = load i16, i16* %arrayidx1059, align 2
  %conv1060 = zext i16 %513 to i32
  %add1061 = add nsw i32 %add1058, %conv1060
  %add1062 = add nsw i32 %add1061, 2
  %shr1063 = ashr i32 %add1062, 2
  %conv1064 = trunc i32 %shr1063 to i16
  %514 = load i32, i32* %ipos2, align 4
  %idxprom1065 = sext i32 %514 to i64
  %515 = load i32, i32* %jpos3, align 4
  %idxprom1066 = sext i32 %515 to i64
  %516 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1067 = getelementptr inbounds %struct.img_par, %struct.img_par* %516, i32 0, i32 25
  %arrayidx1068 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1067, i32 0, i64 %idxprom1066
  %arrayidx1069 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1068, i32 0, i64 %idxprom1065
  store i16 %conv1064, i16* %arrayidx1069, align 2
  %517 = load i32, i32* %ipos3, align 4
  %idxprom1070 = sext i32 %517 to i64
  %518 = load i32, i32* %jpos1, align 4
  %idxprom1071 = sext i32 %518 to i64
  %519 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1072 = getelementptr inbounds %struct.img_par, %struct.img_par* %519, i32 0, i32 25
  %arrayidx1073 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1072, i32 0, i64 %idxprom1071
  %arrayidx1074 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1073, i32 0, i64 %idxprom1070
  store i16 %conv1064, i16* %arrayidx1074, align 2
  %arrayidx1075 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 5
  %520 = load i16, i16* %arrayidx1075, align 2
  %conv1076 = zext i16 %520 to i32
  %arrayidx1077 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 6
  %521 = load i16, i16* %arrayidx1077, align 2
  %conv1078 = zext i16 %521 to i32
  %mul1079 = mul nsw i32 2, %conv1078
  %add1080 = add nsw i32 %conv1076, %mul1079
  %arrayidx1081 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 7
  %522 = load i16, i16* %arrayidx1081, align 2
  %conv1082 = zext i16 %522 to i32
  %add1083 = add nsw i32 %add1080, %conv1082
  %add1084 = add nsw i32 %add1083, 2
  %shr1085 = ashr i32 %add1084, 2
  %conv1086 = trunc i32 %shr1085 to i16
  %523 = load i32, i32* %ipos3, align 4
  %idxprom1087 = sext i32 %523 to i64
  %524 = load i32, i32* %jpos3, align 4
  %idxprom1088 = sext i32 %524 to i64
  %525 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1089 = getelementptr inbounds %struct.img_par, %struct.img_par* %525, i32 0, i32 25
  %arrayidx1090 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1089, i32 0, i64 %idxprom1088
  %arrayidx1091 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1090, i32 0, i64 %idxprom1087
  store i16 %conv1086, i16* %arrayidx1091, align 2
  br label %sw.epilog

sw.bb.1092:                                       ; preds = %if.end.212
  %526 = load i32, i32* %block_available_left, align 4
  %tobool1093 = icmp ne i32 %526, 0
  br i1 %tobool1093, label %if.end.1097, label %if.then.1094

if.then.1094:                                     ; preds = %sw.bb.1092
  %527 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr1095 = getelementptr inbounds %struct.img_par, %struct.img_par* %527, i32 0, i32 1
  %528 = load i32, i32* %current_mb_nr1095, align 4
  %call1096 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i32 0, i32 0), i32 %528)
  br label %if.end.1097

if.end.1097:                                      ; preds = %if.then.1094, %sw.bb.1092
  %arrayidx1098 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %529 = load i16, i16* %arrayidx1098, align 2
  %conv1099 = zext i16 %529 to i32
  %arrayidx1100 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %530 = load i16, i16* %arrayidx1100, align 2
  %conv1101 = zext i16 %530 to i32
  %add1102 = add nsw i32 %conv1099, %conv1101
  %add1103 = add nsw i32 %add1102, 1
  %shr1104 = ashr i32 %add1103, 1
  %conv1105 = trunc i32 %shr1104 to i16
  %531 = load i32, i32* %ipos0, align 4
  %idxprom1106 = sext i32 %531 to i64
  %532 = load i32, i32* %jpos0, align 4
  %idxprom1107 = sext i32 %532 to i64
  %533 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1108 = getelementptr inbounds %struct.img_par, %struct.img_par* %533, i32 0, i32 25
  %arrayidx1109 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1108, i32 0, i64 %idxprom1107
  %arrayidx1110 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1109, i32 0, i64 %idxprom1106
  store i16 %conv1105, i16* %arrayidx1110, align 2
  %arrayidx1111 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %534 = load i16, i16* %arrayidx1111, align 2
  %conv1112 = zext i16 %534 to i32
  %arrayidx1113 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %535 = load i16, i16* %arrayidx1113, align 2
  %conv1114 = zext i16 %535 to i32
  %mul1115 = mul nsw i32 2, %conv1114
  %add1116 = add nsw i32 %conv1112, %mul1115
  %arrayidx1117 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %536 = load i16, i16* %arrayidx1117, align 2
  %conv1118 = zext i16 %536 to i32
  %add1119 = add nsw i32 %add1116, %conv1118
  %add1120 = add nsw i32 %add1119, 2
  %shr1121 = ashr i32 %add1120, 2
  %conv1122 = trunc i32 %shr1121 to i16
  %537 = load i32, i32* %ipos1, align 4
  %idxprom1123 = sext i32 %537 to i64
  %538 = load i32, i32* %jpos0, align 4
  %idxprom1124 = sext i32 %538 to i64
  %539 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1125 = getelementptr inbounds %struct.img_par, %struct.img_par* %539, i32 0, i32 25
  %arrayidx1126 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1125, i32 0, i64 %idxprom1124
  %arrayidx1127 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1126, i32 0, i64 %idxprom1123
  store i16 %conv1122, i16* %arrayidx1127, align 2
  %arrayidx1128 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %540 = load i16, i16* %arrayidx1128, align 2
  %conv1129 = zext i16 %540 to i32
  %arrayidx1130 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %541 = load i16, i16* %arrayidx1130, align 2
  %conv1131 = zext i16 %541 to i32
  %add1132 = add nsw i32 %conv1129, %conv1131
  %add1133 = add nsw i32 %add1132, 1
  %shr1134 = ashr i32 %add1133, 1
  %conv1135 = trunc i32 %shr1134 to i16
  %542 = load i32, i32* %ipos0, align 4
  %idxprom1136 = sext i32 %542 to i64
  %543 = load i32, i32* %jpos1, align 4
  %idxprom1137 = sext i32 %543 to i64
  %544 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1138 = getelementptr inbounds %struct.img_par, %struct.img_par* %544, i32 0, i32 25
  %arrayidx1139 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1138, i32 0, i64 %idxprom1137
  %arrayidx1140 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1139, i32 0, i64 %idxprom1136
  store i16 %conv1135, i16* %arrayidx1140, align 2
  %545 = load i32, i32* %ipos2, align 4
  %idxprom1141 = sext i32 %545 to i64
  %546 = load i32, i32* %jpos0, align 4
  %idxprom1142 = sext i32 %546 to i64
  %547 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1143 = getelementptr inbounds %struct.img_par, %struct.img_par* %547, i32 0, i32 25
  %arrayidx1144 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1143, i32 0, i64 %idxprom1142
  %arrayidx1145 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1144, i32 0, i64 %idxprom1141
  store i16 %conv1135, i16* %arrayidx1145, align 2
  %arrayidx1146 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %548 = load i16, i16* %arrayidx1146, align 2
  %conv1147 = zext i16 %548 to i32
  %arrayidx1148 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %549 = load i16, i16* %arrayidx1148, align 2
  %conv1149 = zext i16 %549 to i32
  %mul1150 = mul nsw i32 2, %conv1149
  %add1151 = add nsw i32 %conv1147, %mul1150
  %arrayidx1152 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %550 = load i16, i16* %arrayidx1152, align 2
  %conv1153 = zext i16 %550 to i32
  %add1154 = add nsw i32 %add1151, %conv1153
  %add1155 = add nsw i32 %add1154, 2
  %shr1156 = ashr i32 %add1155, 2
  %conv1157 = trunc i32 %shr1156 to i16
  %551 = load i32, i32* %ipos1, align 4
  %idxprom1158 = sext i32 %551 to i64
  %552 = load i32, i32* %jpos1, align 4
  %idxprom1159 = sext i32 %552 to i64
  %553 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1160 = getelementptr inbounds %struct.img_par, %struct.img_par* %553, i32 0, i32 25
  %arrayidx1161 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1160, i32 0, i64 %idxprom1159
  %arrayidx1162 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1161, i32 0, i64 %idxprom1158
  store i16 %conv1157, i16* %arrayidx1162, align 2
  %554 = load i32, i32* %ipos3, align 4
  %idxprom1163 = sext i32 %554 to i64
  %555 = load i32, i32* %jpos0, align 4
  %idxprom1164 = sext i32 %555 to i64
  %556 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1165 = getelementptr inbounds %struct.img_par, %struct.img_par* %556, i32 0, i32 25
  %arrayidx1166 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1165, i32 0, i64 %idxprom1164
  %arrayidx1167 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1166, i32 0, i64 %idxprom1163
  store i16 %conv1157, i16* %arrayidx1167, align 2
  %arrayidx1168 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %557 = load i16, i16* %arrayidx1168, align 2
  %conv1169 = zext i16 %557 to i32
  %arrayidx1170 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %558 = load i16, i16* %arrayidx1170, align 2
  %conv1171 = zext i16 %558 to i32
  %add1172 = add nsw i32 %conv1169, %conv1171
  %add1173 = add nsw i32 %add1172, 1
  %shr1174 = ashr i32 %add1173, 1
  %conv1175 = trunc i32 %shr1174 to i16
  %559 = load i32, i32* %ipos0, align 4
  %idxprom1176 = sext i32 %559 to i64
  %560 = load i32, i32* %jpos2, align 4
  %idxprom1177 = sext i32 %560 to i64
  %561 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1178 = getelementptr inbounds %struct.img_par, %struct.img_par* %561, i32 0, i32 25
  %arrayidx1179 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1178, i32 0, i64 %idxprom1177
  %arrayidx1180 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1179, i32 0, i64 %idxprom1176
  store i16 %conv1175, i16* %arrayidx1180, align 2
  %562 = load i32, i32* %ipos2, align 4
  %idxprom1181 = sext i32 %562 to i64
  %563 = load i32, i32* %jpos1, align 4
  %idxprom1182 = sext i32 %563 to i64
  %564 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1183 = getelementptr inbounds %struct.img_par, %struct.img_par* %564, i32 0, i32 25
  %arrayidx1184 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1183, i32 0, i64 %idxprom1182
  %arrayidx1185 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1184, i32 0, i64 %idxprom1181
  store i16 %conv1175, i16* %arrayidx1185, align 2
  %arrayidx1186 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %565 = load i16, i16* %arrayidx1186, align 2
  %conv1187 = zext i16 %565 to i32
  %arrayidx1188 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %566 = load i16, i16* %arrayidx1188, align 2
  %conv1189 = zext i16 %566 to i32
  %mul1190 = mul nsw i32 2, %conv1189
  %add1191 = add nsw i32 %conv1187, %mul1190
  %arrayidx1192 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %567 = load i16, i16* %arrayidx1192, align 2
  %conv1193 = zext i16 %567 to i32
  %add1194 = add nsw i32 %add1191, %conv1193
  %add1195 = add nsw i32 %add1194, 2
  %shr1196 = ashr i32 %add1195, 2
  %conv1197 = trunc i32 %shr1196 to i16
  %568 = load i32, i32* %ipos1, align 4
  %idxprom1198 = sext i32 %568 to i64
  %569 = load i32, i32* %jpos2, align 4
  %idxprom1199 = sext i32 %569 to i64
  %570 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1200 = getelementptr inbounds %struct.img_par, %struct.img_par* %570, i32 0, i32 25
  %arrayidx1201 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1200, i32 0, i64 %idxprom1199
  %arrayidx1202 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1201, i32 0, i64 %idxprom1198
  store i16 %conv1197, i16* %arrayidx1202, align 2
  %571 = load i32, i32* %ipos3, align 4
  %idxprom1203 = sext i32 %571 to i64
  %572 = load i32, i32* %jpos1, align 4
  %idxprom1204 = sext i32 %572 to i64
  %573 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1205 = getelementptr inbounds %struct.img_par, %struct.img_par* %573, i32 0, i32 25
  %arrayidx1206 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1205, i32 0, i64 %idxprom1204
  %arrayidx1207 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1206, i32 0, i64 %idxprom1203
  store i16 %conv1197, i16* %arrayidx1207, align 2
  %arrayidx1208 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %574 = load i16, i16* %arrayidx1208, align 2
  %575 = load i32, i32* %ipos3, align 4
  %idxprom1209 = sext i32 %575 to i64
  %576 = load i32, i32* %jpos3, align 4
  %idxprom1210 = sext i32 %576 to i64
  %577 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1211 = getelementptr inbounds %struct.img_par, %struct.img_par* %577, i32 0, i32 25
  %arrayidx1212 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1211, i32 0, i64 %idxprom1210
  %arrayidx1213 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1212, i32 0, i64 %idxprom1209
  store i16 %574, i16* %arrayidx1213, align 2
  %578 = load i32, i32* %ipos2, align 4
  %idxprom1214 = sext i32 %578 to i64
  %579 = load i32, i32* %jpos3, align 4
  %idxprom1215 = sext i32 %579 to i64
  %580 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1216 = getelementptr inbounds %struct.img_par, %struct.img_par* %580, i32 0, i32 25
  %arrayidx1217 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1216, i32 0, i64 %idxprom1215
  %arrayidx1218 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1217, i32 0, i64 %idxprom1214
  store i16 %574, i16* %arrayidx1218, align 2
  %581 = load i32, i32* %ipos2, align 4
  %idxprom1219 = sext i32 %581 to i64
  %582 = load i32, i32* %jpos2, align 4
  %idxprom1220 = sext i32 %582 to i64
  %583 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1221 = getelementptr inbounds %struct.img_par, %struct.img_par* %583, i32 0, i32 25
  %arrayidx1222 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1221, i32 0, i64 %idxprom1220
  %arrayidx1223 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1222, i32 0, i64 %idxprom1219
  store i16 %574, i16* %arrayidx1223, align 2
  %584 = load i32, i32* %ipos0, align 4
  %idxprom1224 = sext i32 %584 to i64
  %585 = load i32, i32* %jpos3, align 4
  %idxprom1225 = sext i32 %585 to i64
  %586 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1226 = getelementptr inbounds %struct.img_par, %struct.img_par* %586, i32 0, i32 25
  %arrayidx1227 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1226, i32 0, i64 %idxprom1225
  %arrayidx1228 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1227, i32 0, i64 %idxprom1224
  store i16 %574, i16* %arrayidx1228, align 2
  %587 = load i32, i32* %ipos1, align 4
  %idxprom1229 = sext i32 %587 to i64
  %588 = load i32, i32* %jpos3, align 4
  %idxprom1230 = sext i32 %588 to i64
  %589 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1231 = getelementptr inbounds %struct.img_par, %struct.img_par* %589, i32 0, i32 25
  %arrayidx1232 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1231, i32 0, i64 %idxprom1230
  %arrayidx1233 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1232, i32 0, i64 %idxprom1229
  store i16 %574, i16* %arrayidx1233, align 2
  %590 = load i32, i32* %ipos3, align 4
  %idxprom1234 = sext i32 %590 to i64
  %591 = load i32, i32* %jpos2, align 4
  %idxprom1235 = sext i32 %591 to i64
  %592 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1236 = getelementptr inbounds %struct.img_par, %struct.img_par* %592, i32 0, i32 25
  %arrayidx1237 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1236, i32 0, i64 %idxprom1235
  %arrayidx1238 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1237, i32 0, i64 %idxprom1234
  store i16 %574, i16* %arrayidx1238, align 2
  br label %sw.epilog

sw.bb.1239:                                       ; preds = %if.end.212
  %593 = load i32, i32* %block_available_up, align 4
  %tobool1240 = icmp ne i32 %593, 0
  br i1 %tobool1240, label %lor.lhs.false.1241, label %if.then.1245

lor.lhs.false.1241:                               ; preds = %sw.bb.1239
  %594 = load i32, i32* %block_available_left, align 4
  %tobool1242 = icmp ne i32 %594, 0
  br i1 %tobool1242, label %lor.lhs.false.1243, label %if.then.1245

lor.lhs.false.1243:                               ; preds = %lor.lhs.false.1241
  %595 = load i32, i32* %block_available_up_left, align 4
  %tobool1244 = icmp ne i32 %595, 0
  br i1 %tobool1244, label %if.end.1248, label %if.then.1245

if.then.1245:                                     ; preds = %lor.lhs.false.1243, %lor.lhs.false.1241, %sw.bb.1239
  %596 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr1246 = getelementptr inbounds %struct.img_par, %struct.img_par* %596, i32 0, i32 1
  %597 = load i32, i32* %current_mb_nr1246, align 4
  %call1247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i32 0, i32 0), i32 %597)
  br label %if.end.1248

if.end.1248:                                      ; preds = %if.then.1245, %lor.lhs.false.1243
  %arrayidx1249 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %598 = load i16, i16* %arrayidx1249, align 2
  %conv1250 = zext i16 %598 to i32
  %arrayidx1251 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %599 = load i16, i16* %arrayidx1251, align 2
  %conv1252 = zext i16 %599 to i32
  %add1253 = add nsw i32 %conv1250, %conv1252
  %add1254 = add nsw i32 %add1253, 1
  %shr1255 = ashr i32 %add1254, 1
  %conv1256 = trunc i32 %shr1255 to i16
  %600 = load i32, i32* %ipos2, align 4
  %idxprom1257 = sext i32 %600 to i64
  %601 = load i32, i32* %jpos1, align 4
  %idxprom1258 = sext i32 %601 to i64
  %602 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1259 = getelementptr inbounds %struct.img_par, %struct.img_par* %602, i32 0, i32 25
  %arrayidx1260 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1259, i32 0, i64 %idxprom1258
  %arrayidx1261 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1260, i32 0, i64 %idxprom1257
  store i16 %conv1256, i16* %arrayidx1261, align 2
  %603 = load i32, i32* %ipos0, align 4
  %idxprom1262 = sext i32 %603 to i64
  %604 = load i32, i32* %jpos0, align 4
  %idxprom1263 = sext i32 %604 to i64
  %605 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1264 = getelementptr inbounds %struct.img_par, %struct.img_par* %605, i32 0, i32 25
  %arrayidx1265 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1264, i32 0, i64 %idxprom1263
  %arrayidx1266 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1265, i32 0, i64 %idxprom1262
  store i16 %conv1256, i16* %arrayidx1266, align 2
  %arrayidx1267 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %606 = load i16, i16* %arrayidx1267, align 2
  %conv1268 = zext i16 %606 to i32
  %arrayidx1269 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %607 = load i16, i16* %arrayidx1269, align 2
  %conv1270 = zext i16 %607 to i32
  %mul1271 = mul nsw i32 2, %conv1270
  %add1272 = add nsw i32 %conv1268, %mul1271
  %arrayidx1273 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %608 = load i16, i16* %arrayidx1273, align 2
  %conv1274 = zext i16 %608 to i32
  %add1275 = add nsw i32 %add1272, %conv1274
  %add1276 = add nsw i32 %add1275, 2
  %shr1277 = ashr i32 %add1276, 2
  %conv1278 = trunc i32 %shr1277 to i16
  %609 = load i32, i32* %ipos3, align 4
  %idxprom1279 = sext i32 %609 to i64
  %610 = load i32, i32* %jpos1, align 4
  %idxprom1280 = sext i32 %610 to i64
  %611 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1281 = getelementptr inbounds %struct.img_par, %struct.img_par* %611, i32 0, i32 25
  %arrayidx1282 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1281, i32 0, i64 %idxprom1280
  %arrayidx1283 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1282, i32 0, i64 %idxprom1279
  store i16 %conv1278, i16* %arrayidx1283, align 2
  %612 = load i32, i32* %ipos1, align 4
  %idxprom1284 = sext i32 %612 to i64
  %613 = load i32, i32* %jpos0, align 4
  %idxprom1285 = sext i32 %613 to i64
  %614 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1286 = getelementptr inbounds %struct.img_par, %struct.img_par* %614, i32 0, i32 25
  %arrayidx1287 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1286, i32 0, i64 %idxprom1285
  %arrayidx1288 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1287, i32 0, i64 %idxprom1284
  store i16 %conv1278, i16* %arrayidx1288, align 2
  %arrayidx1289 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %615 = load i16, i16* %arrayidx1289, align 2
  %conv1290 = zext i16 %615 to i32
  %arrayidx1291 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %616 = load i16, i16* %arrayidx1291, align 2
  %conv1292 = zext i16 %616 to i32
  %mul1293 = mul nsw i32 2, %conv1292
  %add1294 = add nsw i32 %conv1290, %mul1293
  %arrayidx1295 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %617 = load i16, i16* %arrayidx1295, align 2
  %conv1296 = zext i16 %617 to i32
  %add1297 = add nsw i32 %add1294, %conv1296
  %add1298 = add nsw i32 %add1297, 2
  %shr1299 = ashr i32 %add1298, 2
  %conv1300 = trunc i32 %shr1299 to i16
  %618 = load i32, i32* %ipos2, align 4
  %idxprom1301 = sext i32 %618 to i64
  %619 = load i32, i32* %jpos0, align 4
  %idxprom1302 = sext i32 %619 to i64
  %620 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1303 = getelementptr inbounds %struct.img_par, %struct.img_par* %620, i32 0, i32 25
  %arrayidx1304 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1303, i32 0, i64 %idxprom1302
  %arrayidx1305 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1304, i32 0, i64 %idxprom1301
  store i16 %conv1300, i16* %arrayidx1305, align 2
  %arrayidx1306 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 1
  %621 = load i16, i16* %arrayidx1306, align 2
  %conv1307 = zext i16 %621 to i32
  %arrayidx1308 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 2
  %622 = load i16, i16* %arrayidx1308, align 2
  %conv1309 = zext i16 %622 to i32
  %mul1310 = mul nsw i32 2, %conv1309
  %add1311 = add nsw i32 %conv1307, %mul1310
  %arrayidx1312 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 3
  %623 = load i16, i16* %arrayidx1312, align 2
  %conv1313 = zext i16 %623 to i32
  %add1314 = add nsw i32 %add1311, %conv1313
  %add1315 = add nsw i32 %add1314, 2
  %shr1316 = ashr i32 %add1315, 2
  %conv1317 = trunc i32 %shr1316 to i16
  %624 = load i32, i32* %ipos3, align 4
  %idxprom1318 = sext i32 %624 to i64
  %625 = load i32, i32* %jpos0, align 4
  %idxprom1319 = sext i32 %625 to i64
  %626 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1320 = getelementptr inbounds %struct.img_par, %struct.img_par* %626, i32 0, i32 25
  %arrayidx1321 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1320, i32 0, i64 %idxprom1319
  %arrayidx1322 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1321, i32 0, i64 %idxprom1318
  store i16 %conv1317, i16* %arrayidx1322, align 2
  %arrayidx1323 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %627 = load i16, i16* %arrayidx1323, align 2
  %conv1324 = zext i16 %627 to i32
  %arrayidx1325 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %628 = load i16, i16* %arrayidx1325, align 2
  %conv1326 = zext i16 %628 to i32
  %add1327 = add nsw i32 %conv1324, %conv1326
  %add1328 = add nsw i32 %add1327, 1
  %shr1329 = ashr i32 %add1328, 1
  %conv1330 = trunc i32 %shr1329 to i16
  %629 = load i32, i32* %ipos2, align 4
  %idxprom1331 = sext i32 %629 to i64
  %630 = load i32, i32* %jpos2, align 4
  %idxprom1332 = sext i32 %630 to i64
  %631 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1333 = getelementptr inbounds %struct.img_par, %struct.img_par* %631, i32 0, i32 25
  %arrayidx1334 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1333, i32 0, i64 %idxprom1332
  %arrayidx1335 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1334, i32 0, i64 %idxprom1331
  store i16 %conv1330, i16* %arrayidx1335, align 2
  %632 = load i32, i32* %ipos0, align 4
  %idxprom1336 = sext i32 %632 to i64
  %633 = load i32, i32* %jpos1, align 4
  %idxprom1337 = sext i32 %633 to i64
  %634 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1338 = getelementptr inbounds %struct.img_par, %struct.img_par* %634, i32 0, i32 25
  %arrayidx1339 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1338, i32 0, i64 %idxprom1337
  %arrayidx1340 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1339, i32 0, i64 %idxprom1336
  store i16 %conv1330, i16* %arrayidx1340, align 2
  %arrayidx1341 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 0
  %635 = load i16, i16* %arrayidx1341, align 2
  %conv1342 = zext i16 %635 to i32
  %arrayidx1343 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %636 = load i16, i16* %arrayidx1343, align 2
  %conv1344 = zext i16 %636 to i32
  %mul1345 = mul nsw i32 2, %conv1344
  %add1346 = add nsw i32 %conv1342, %mul1345
  %arrayidx1347 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %637 = load i16, i16* %arrayidx1347, align 2
  %conv1348 = zext i16 %637 to i32
  %add1349 = add nsw i32 %add1346, %conv1348
  %add1350 = add nsw i32 %add1349, 2
  %shr1351 = ashr i32 %add1350, 2
  %conv1352 = trunc i32 %shr1351 to i16
  %638 = load i32, i32* %ipos3, align 4
  %idxprom1353 = sext i32 %638 to i64
  %639 = load i32, i32* %jpos2, align 4
  %idxprom1354 = sext i32 %639 to i64
  %640 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1355 = getelementptr inbounds %struct.img_par, %struct.img_par* %640, i32 0, i32 25
  %arrayidx1356 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1355, i32 0, i64 %idxprom1354
  %arrayidx1357 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1356, i32 0, i64 %idxprom1353
  store i16 %conv1352, i16* %arrayidx1357, align 2
  %641 = load i32, i32* %ipos1, align 4
  %idxprom1358 = sext i32 %641 to i64
  %642 = load i32, i32* %jpos1, align 4
  %idxprom1359 = sext i32 %642 to i64
  %643 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1360 = getelementptr inbounds %struct.img_par, %struct.img_par* %643, i32 0, i32 25
  %arrayidx1361 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1360, i32 0, i64 %idxprom1359
  %arrayidx1362 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1361, i32 0, i64 %idxprom1358
  store i16 %conv1352, i16* %arrayidx1362, align 2
  %arrayidx1363 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %644 = load i16, i16* %arrayidx1363, align 2
  %conv1364 = zext i16 %644 to i32
  %arrayidx1365 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %645 = load i16, i16* %arrayidx1365, align 2
  %conv1366 = zext i16 %645 to i32
  %add1367 = add nsw i32 %conv1364, %conv1366
  %add1368 = add nsw i32 %add1367, 1
  %shr1369 = ashr i32 %add1368, 1
  %conv1370 = trunc i32 %shr1369 to i16
  %646 = load i32, i32* %ipos2, align 4
  %idxprom1371 = sext i32 %646 to i64
  %647 = load i32, i32* %jpos3, align 4
  %idxprom1372 = sext i32 %647 to i64
  %648 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1373 = getelementptr inbounds %struct.img_par, %struct.img_par* %648, i32 0, i32 25
  %arrayidx1374 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1373, i32 0, i64 %idxprom1372
  %arrayidx1375 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1374, i32 0, i64 %idxprom1371
  store i16 %conv1370, i16* %arrayidx1375, align 2
  %649 = load i32, i32* %ipos0, align 4
  %idxprom1376 = sext i32 %649 to i64
  %650 = load i32, i32* %jpos2, align 4
  %idxprom1377 = sext i32 %650 to i64
  %651 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1378 = getelementptr inbounds %struct.img_par, %struct.img_par* %651, i32 0, i32 25
  %arrayidx1379 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1378, i32 0, i64 %idxprom1377
  %arrayidx1380 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1379, i32 0, i64 %idxprom1376
  store i16 %conv1370, i16* %arrayidx1380, align 2
  %arrayidx1381 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 9
  %652 = load i16, i16* %arrayidx1381, align 2
  %conv1382 = zext i16 %652 to i32
  %arrayidx1383 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %653 = load i16, i16* %arrayidx1383, align 2
  %conv1384 = zext i16 %653 to i32
  %mul1385 = mul nsw i32 2, %conv1384
  %add1386 = add nsw i32 %conv1382, %mul1385
  %arrayidx1387 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %654 = load i16, i16* %arrayidx1387, align 2
  %conv1388 = zext i16 %654 to i32
  %add1389 = add nsw i32 %add1386, %conv1388
  %add1390 = add nsw i32 %add1389, 2
  %shr1391 = ashr i32 %add1390, 2
  %conv1392 = trunc i32 %shr1391 to i16
  %655 = load i32, i32* %ipos3, align 4
  %idxprom1393 = sext i32 %655 to i64
  %656 = load i32, i32* %jpos3, align 4
  %idxprom1394 = sext i32 %656 to i64
  %657 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1395 = getelementptr inbounds %struct.img_par, %struct.img_par* %657, i32 0, i32 25
  %arrayidx1396 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1395, i32 0, i64 %idxprom1394
  %arrayidx1397 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1396, i32 0, i64 %idxprom1393
  store i16 %conv1392, i16* %arrayidx1397, align 2
  %658 = load i32, i32* %ipos1, align 4
  %idxprom1398 = sext i32 %658 to i64
  %659 = load i32, i32* %jpos2, align 4
  %idxprom1399 = sext i32 %659 to i64
  %660 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1400 = getelementptr inbounds %struct.img_par, %struct.img_par* %660, i32 0, i32 25
  %arrayidx1401 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1400, i32 0, i64 %idxprom1399
  %arrayidx1402 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1401, i32 0, i64 %idxprom1398
  store i16 %conv1392, i16* %arrayidx1402, align 2
  %arrayidx1403 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %661 = load i16, i16* %arrayidx1403, align 2
  %conv1404 = zext i16 %661 to i32
  %arrayidx1405 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %662 = load i16, i16* %arrayidx1405, align 2
  %conv1406 = zext i16 %662 to i32
  %add1407 = add nsw i32 %conv1404, %conv1406
  %add1408 = add nsw i32 %add1407, 1
  %shr1409 = ashr i32 %add1408, 1
  %conv1410 = trunc i32 %shr1409 to i16
  %663 = load i32, i32* %ipos0, align 4
  %idxprom1411 = sext i32 %663 to i64
  %664 = load i32, i32* %jpos3, align 4
  %idxprom1412 = sext i32 %664 to i64
  %665 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1413 = getelementptr inbounds %struct.img_par, %struct.img_par* %665, i32 0, i32 25
  %arrayidx1414 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1413, i32 0, i64 %idxprom1412
  %arrayidx1415 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1414, i32 0, i64 %idxprom1411
  store i16 %conv1410, i16* %arrayidx1415, align 2
  %arrayidx1416 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 10
  %666 = load i16, i16* %arrayidx1416, align 2
  %conv1417 = zext i16 %666 to i32
  %arrayidx1418 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 11
  %667 = load i16, i16* %arrayidx1418, align 2
  %conv1419 = zext i16 %667 to i32
  %mul1420 = mul nsw i32 2, %conv1419
  %add1421 = add nsw i32 %conv1417, %mul1420
  %arrayidx1422 = getelementptr inbounds [13 x i16], [13 x i16]* %PredPel, i32 0, i64 12
  %668 = load i16, i16* %arrayidx1422, align 2
  %conv1423 = zext i16 %668 to i32
  %add1424 = add nsw i32 %add1421, %conv1423
  %add1425 = add nsw i32 %add1424, 2
  %shr1426 = ashr i32 %add1425, 2
  %conv1427 = trunc i32 %shr1426 to i16
  %669 = load i32, i32* %ipos1, align 4
  %idxprom1428 = sext i32 %669 to i64
  %670 = load i32, i32* %jpos3, align 4
  %idxprom1429 = sext i32 %670 to i64
  %671 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr1430 = getelementptr inbounds %struct.img_par, %struct.img_par* %671, i32 0, i32 25
  %arrayidx1431 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1430, i32 0, i64 %idxprom1429
  %arrayidx1432 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1431, i32 0, i64 %idxprom1428
  store i16 %conv1427, i16* %arrayidx1432, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.212
  %672 = load i8, i8* %predmode, align 1
  %conv1433 = zext i8 %672 to i32
  %call1434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0), i32 %conv1433)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.1248, %if.end.1097, %if.end.911, %if.end.721, %if.end.550, %if.end.381, %for.end.372, %for.end.335, %for.end.302
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %673 = load i32, i32* %retval
  ret i32 %673
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @intrapred_luma_16x16(%struct.img_par* %img, i32 %predmode) #0 {
entry:
  %retval = alloca i32, align 4
  %img.addr = alloca %struct.img_par*, align 8
  %predmode.addr = alloca i32, align 4
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ih = alloca i32, align 4
  %iv = alloca i32, align 4
  %ib = alloca i32, align 4
  %ic = alloca i32, align 4
  %iaa = alloca i32, align 4
  %imgY = alloca i16**, align 8
  %mb_nr = alloca i32, align 4
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %up_avail = alloca i32, align 4
  %left_avail = alloca i32, align 4
  %left_up_avail = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %predmode, i32* %predmode.addr, align 4
  store i32 0, i32* %s0, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 32
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 1
  %3 = load i32, i32* %current_mb_nr, align 4
  store i32 %3, i32* %mb_nr, align 4
  store i32 0, i32* %s2, align 4
  store i32 0, i32* %s1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %6 = load i32, i32* %mb_nr, align 4
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom
  call void %5(i32 %6, i32 -1, i32 %sub, i32 0, %struct.pix_pos* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %11 = load i32, i32* %mb_nr, align 4
  call void %10(i32 %11, i32 0, i32 -1, i32 0, %struct.pix_pos* %up)
  %12 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %12, i32 0, i32 30
  %13 = load i32, i32* %constrained_intra_pred_flag, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %14 = load i32, i32* %available, align 4
  store i32 %14, i32* %up_avail, align 4
  %arrayidx2 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 1
  %available3 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx2, i32 0, i32 0
  %15 = load i32, i32* %available3, align 4
  store i32 %15, i32* %left_avail, align 4
  %arrayidx4 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available5 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx4, i32 0, i32 0
  %16 = load i32, i32* %available5, align 4
  store i32 %16, i32* %left_up_avail, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %available6 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %17 = load i32, i32* %available6, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %18 = load i32, i32* %mb_addr, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 4
  %20 = load i32*, i32** %intra_block, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %up_avail, align 4
  store i32 1, i32* %i, align 4
  store i32 1, i32* %left_avail, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.27, %cond.end
  %22 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %22, 17
  br i1 %cmp11, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.10
  %23 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom13
  %available15 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx14, i32 0, i32 0
  %24 = load i32, i32* %available15, align 4
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.24

cond.true.17:                                     ; preds = %for.body.12
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom18
  %mb_addr20 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx19, i32 0, i32 1
  %26 = load i32, i32* %mb_addr20, align 4
  %idxprom21 = sext i32 %26 to i64
  %27 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block22 = getelementptr inbounds %struct.img_par, %struct.img_par* %27, i32 0, i32 4
  %28 = load i32*, i32** %intra_block22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  %29 = load i32, i32* %arrayidx23, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %for.body.12
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.17
  %cond26 = phi i32 [ %29, %cond.true.17 ], [ 0, %cond.false.24 ]
  %30 = load i32, i32* %left_avail, align 4
  %and = and i32 %30, %cond26
  store i32 %and, i32* %left_avail, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %cond.end.25
  %31 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %31, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.10

for.end.29:                                       ; preds = %for.cond.10
  %arrayidx30 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available31 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx30, i32 0, i32 0
  %32 = load i32, i32* %available31, align 4
  %tobool32 = icmp ne i32 %32, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.39

cond.true.33:                                     ; preds = %for.end.29
  %arrayidx34 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %mb_addr35 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx34, i32 0, i32 1
  %33 = load i32, i32* %mb_addr35, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block37 = getelementptr inbounds %struct.img_par, %struct.img_par* %34, i32 0, i32 4
  %35 = load i32*, i32** %intra_block37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %35, i64 %idxprom36
  %36 = load i32, i32* %arrayidx38, align 4
  br label %cond.end.40

cond.false.39:                                    ; preds = %for.end.29
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.33
  %cond41 = phi i32 [ %36, %cond.true.33 ], [ 0, %cond.false.39 ]
  store i32 %cond41, i32* %left_up_avail, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.40, %if.then
  %37 = load i32, i32* %predmode.addr, align 4
  switch i32 %37, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.65
    i32 2, label %sw.bb.98
    i32 3, label %sw.bb.178
  ]

sw.bb:                                            ; preds = %if.end
  %38 = load i32, i32* %up_avail, align 4
  %tobool42 = icmp ne i32 %38, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %sw.bb
  call void @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i32 0, i32 0), i32 500)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %sw.bb
  store i32 0, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.62, %if.end.44
  %39 = load i32, i32* %j, align 4
  %cmp46 = icmp slt i32 %39, 16
  br i1 %cmp46, label %for.body.47, label %for.end.64

for.body.47:                                      ; preds = %for.cond.45
  store i32 0, i32* %i, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.59, %for.body.47
  %40 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %40, 16
  br i1 %cmp49, label %for.body.50, label %for.end.61

for.body.50:                                      ; preds = %for.cond.48
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %41 = load i32, i32* %pos_x, align 4
  %42 = load i32, i32* %i, align 4
  %add = add nsw i32 %41, %42
  %idxprom51 = sext i32 %add to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %43 = load i32, i32* %pos_y, align 4
  %idxprom52 = sext i32 %43 to i64
  %44 = load i16**, i16*** %imgY, align 8
  %arrayidx53 = getelementptr inbounds i16*, i16** %44, i64 %idxprom52
  %45 = load i16*, i16** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %45, i64 %idxprom51
  %46 = load i16, i16* %arrayidx54, align 2
  %47 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %47 to i64
  %48 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %48 to i64
  %49 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %49, i32 0, i32 25
  %arrayidx57 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx57, i32 0, i64 %idxprom55
  store i16 %46, i16* %arrayidx58, align 2
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.50
  %50 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %50, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond.48

for.end.61:                                       ; preds = %for.cond.48
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %51 = load i32, i32* %j, align 4
  %inc63 = add nsw i32 %51, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.45

for.end.64:                                       ; preds = %for.cond.45
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end
  %52 = load i32, i32* %left_avail, align 4
  %tobool66 = icmp ne i32 %52, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %sw.bb.65
  call void @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0), i32 500)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %sw.bb.65
  store i32 0, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.95, %if.end.68
  %53 = load i32, i32* %j, align 4
  %cmp70 = icmp slt i32 %53, 16
  br i1 %cmp70, label %for.body.71, label %for.end.97

for.body.71:                                      ; preds = %for.cond.69
  store i32 0, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.92, %for.body.71
  %54 = load i32, i32* %i, align 4
  %cmp73 = icmp slt i32 %54, 16
  br i1 %cmp73, label %for.body.74, label %for.end.94

for.body.74:                                      ; preds = %for.cond.72
  %55 = load i32, i32* %j, align 4
  %add75 = add nsw i32 %55, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom76
  %pos_x78 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx77, i32 0, i32 4
  %56 = load i32, i32* %pos_x78, align 4
  %idxprom79 = sext i32 %56 to i64
  %57 = load i32, i32* %j, align 4
  %add80 = add nsw i32 %57, 1
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom81
  %pos_y83 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx82, i32 0, i32 5
  %58 = load i32, i32* %pos_y83, align 4
  %idxprom84 = sext i32 %58 to i64
  %59 = load i16**, i16*** %imgY, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %59, i64 %idxprom84
  %60 = load i16*, i16** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %60, i64 %idxprom79
  %61 = load i16, i16* %arrayidx86, align 2
  %62 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %62 to i64
  %63 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %63 to i64
  %64 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr89 = getelementptr inbounds %struct.img_par, %struct.img_par* %64, i32 0, i32 25
  %arrayidx90 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr89, i32 0, i64 %idxprom88
  %arrayidx91 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx90, i32 0, i64 %idxprom87
  store i16 %61, i16* %arrayidx91, align 2
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.body.74
  %65 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %65, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond.72

for.end.94:                                       ; preds = %for.cond.72
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94
  %66 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %66, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond.69

for.end.97:                                       ; preds = %for.cond.69
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.end
  store i32 0, i32* %s2, align 4
  store i32 0, i32* %s1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.130, %sw.bb.98
  %67 = load i32, i32* %i, align 4
  %cmp100 = icmp slt i32 %67, 16
  br i1 %cmp100, label %for.body.101, label %for.end.132

for.body.101:                                     ; preds = %for.cond.99
  %68 = load i32, i32* %up_avail, align 4
  %tobool102 = icmp ne i32 %68, 0
  br i1 %tobool102, label %if.then.103, label %if.end.112

if.then.103:                                      ; preds = %for.body.101
  %pos_x104 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %69 = load i32, i32* %pos_x104, align 4
  %70 = load i32, i32* %i, align 4
  %add105 = add nsw i32 %69, %70
  %idxprom106 = sext i32 %add105 to i64
  %pos_y107 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %71 = load i32, i32* %pos_y107, align 4
  %idxprom108 = sext i32 %71 to i64
  %72 = load i16**, i16*** %imgY, align 8
  %arrayidx109 = getelementptr inbounds i16*, i16** %72, i64 %idxprom108
  %73 = load i16*, i16** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds i16, i16* %73, i64 %idxprom106
  %74 = load i16, i16* %arrayidx110, align 2
  %conv = zext i16 %74 to i32
  %75 = load i32, i32* %s1, align 4
  %add111 = add nsw i32 %75, %conv
  store i32 %add111, i32* %s1, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.103, %for.body.101
  %76 = load i32, i32* %left_avail, align 4
  %tobool113 = icmp ne i32 %76, 0
  br i1 %tobool113, label %if.then.114, label %if.end.129

if.then.114:                                      ; preds = %if.end.112
  %77 = load i32, i32* %i, align 4
  %add115 = add nsw i32 %77, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom116
  %pos_x118 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx117, i32 0, i32 4
  %78 = load i32, i32* %pos_x118, align 4
  %idxprom119 = sext i32 %78 to i64
  %79 = load i32, i32* %i, align 4
  %add120 = add nsw i32 %79, 1
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom121
  %pos_y123 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx122, i32 0, i32 5
  %80 = load i32, i32* %pos_y123, align 4
  %idxprom124 = sext i32 %80 to i64
  %81 = load i16**, i16*** %imgY, align 8
  %arrayidx125 = getelementptr inbounds i16*, i16** %81, i64 %idxprom124
  %82 = load i16*, i16** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16, i16* %82, i64 %idxprom119
  %83 = load i16, i16* %arrayidx126, align 2
  %conv127 = zext i16 %83 to i32
  %84 = load i32, i32* %s2, align 4
  %add128 = add nsw i32 %84, %conv127
  store i32 %add128, i32* %s2, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.114, %if.end.112
  br label %for.inc.130

for.inc.130:                                      ; preds = %if.end.129
  %85 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %85, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.99

for.end.132:                                      ; preds = %for.cond.99
  %86 = load i32, i32* %up_avail, align 4
  %tobool133 = icmp ne i32 %86, 0
  br i1 %tobool133, label %land.lhs.true, label %if.end.138

land.lhs.true:                                    ; preds = %for.end.132
  %87 = load i32, i32* %left_avail, align 4
  %tobool134 = icmp ne i32 %87, 0
  br i1 %tobool134, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %land.lhs.true
  %88 = load i32, i32* %s1, align 4
  %89 = load i32, i32* %s2, align 4
  %add136 = add nsw i32 %88, %89
  %add137 = add nsw i32 %add136, 16
  %shr = ashr i32 %add137, 5
  store i32 %shr, i32* %s0, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %land.lhs.true, %for.end.132
  %90 = load i32, i32* %up_avail, align 4
  %tobool139 = icmp ne i32 %90, 0
  br i1 %tobool139, label %if.end.145, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %if.end.138
  %91 = load i32, i32* %left_avail, align 4
  %tobool141 = icmp ne i32 %91, 0
  br i1 %tobool141, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %land.lhs.true.140
  %92 = load i32, i32* %s2, align 4
  %add143 = add nsw i32 %92, 8
  %shr144 = ashr i32 %add143, 4
  store i32 %shr144, i32* %s0, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %land.lhs.true.140, %if.end.138
  %93 = load i32, i32* %up_avail, align 4
  %tobool146 = icmp ne i32 %93, 0
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.152

land.lhs.true.147:                                ; preds = %if.end.145
  %94 = load i32, i32* %left_avail, align 4
  %tobool148 = icmp ne i32 %94, 0
  br i1 %tobool148, label %if.end.152, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.147
  %95 = load i32, i32* %s1, align 4
  %add150 = add nsw i32 %95, 8
  %shr151 = ashr i32 %add150, 4
  store i32 %shr151, i32* %s0, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %land.lhs.true.147, %if.end.145
  %96 = load i32, i32* %up_avail, align 4
  %tobool153 = icmp ne i32 %96, 0
  br i1 %tobool153, label %if.end.157, label %land.lhs.true.154

land.lhs.true.154:                                ; preds = %if.end.152
  %97 = load i32, i32* %left_avail, align 4
  %tobool155 = icmp ne i32 %97, 0
  br i1 %tobool155, label %if.end.157, label %if.then.156

if.then.156:                                      ; preds = %land.lhs.true.154
  %98 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.img_par, %struct.img_par* %98, i32 0, i32 105
  %99 = load i32, i32* %dc_pred_value_luma, align 4
  store i32 %99, i32* %s0, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.156, %land.lhs.true.154, %if.end.152
  store i32 0, i32* %i, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.175, %if.end.157
  %100 = load i32, i32* %i, align 4
  %cmp159 = icmp slt i32 %100, 16
  br i1 %cmp159, label %for.body.161, label %for.end.177

for.body.161:                                     ; preds = %for.cond.158
  store i32 0, i32* %j, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.172, %for.body.161
  %101 = load i32, i32* %j, align 4
  %cmp163 = icmp slt i32 %101, 16
  br i1 %cmp163, label %for.body.165, label %for.end.174

for.body.165:                                     ; preds = %for.cond.162
  %102 = load i32, i32* %s0, align 4
  %conv166 = trunc i32 %102 to i16
  %103 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %103 to i64
  %104 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %104 to i64
  %105 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr169 = getelementptr inbounds %struct.img_par, %struct.img_par* %105, i32 0, i32 25
  %arrayidx170 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr169, i32 0, i64 %idxprom168
  %arrayidx171 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx170, i32 0, i64 %idxprom167
  store i16 %conv166, i16* %arrayidx171, align 2
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.body.165
  %106 = load i32, i32* %j, align 4
  %inc173 = add nsw i32 %106, 1
  store i32 %inc173, i32* %j, align 4
  br label %for.cond.162

for.end.174:                                      ; preds = %for.cond.162
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.end.174
  %107 = load i32, i32* %i, align 4
  %inc176 = add nsw i32 %107, 1
  store i32 %inc176, i32* %i, align 4
  br label %for.cond.158

for.end.177:                                      ; preds = %for.cond.158
  br label %sw.epilog

sw.bb.178:                                        ; preds = %if.end
  %108 = load i32, i32* %up_avail, align 4
  %tobool179 = icmp ne i32 %108, 0
  br i1 %tobool179, label %lor.lhs.false, label %if.then.183

lor.lhs.false:                                    ; preds = %sw.bb.178
  %109 = load i32, i32* %left_up_avail, align 4
  %tobool180 = icmp ne i32 %109, 0
  br i1 %tobool180, label %lor.lhs.false.181, label %if.then.183

lor.lhs.false.181:                                ; preds = %lor.lhs.false
  %110 = load i32, i32* %left_avail, align 4
  %tobool182 = icmp ne i32 %110, 0
  br i1 %tobool182, label %if.end.184, label %if.then.183

if.then.183:                                      ; preds = %lor.lhs.false.181, %lor.lhs.false, %sw.bb.178
  call void @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0), i32 500)
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.183, %lor.lhs.false.181
  store i32 0, i32* %ih, align 4
  store i32 0, i32* %iv, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.264, %if.end.184
  %111 = load i32, i32* %i, align 4
  %cmp186 = icmp slt i32 %111, 9
  br i1 %cmp186, label %for.body.188, label %for.end.266

for.body.188:                                     ; preds = %for.cond.185
  %112 = load i32, i32* %i, align 4
  %cmp189 = icmp slt i32 %112, 8
  br i1 %cmp189, label %if.then.191, label %if.else.212

if.then.191:                                      ; preds = %for.body.188
  %113 = load i32, i32* %i, align 4
  %pos_x192 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %114 = load i32, i32* %pos_x192, align 4
  %add193 = add nsw i32 %114, 7
  %115 = load i32, i32* %i, align 4
  %add194 = add nsw i32 %add193, %115
  %idxprom195 = sext i32 %add194 to i64
  %pos_y196 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %116 = load i32, i32* %pos_y196, align 4
  %idxprom197 = sext i32 %116 to i64
  %117 = load i16**, i16*** %imgY, align 8
  %arrayidx198 = getelementptr inbounds i16*, i16** %117, i64 %idxprom197
  %118 = load i16*, i16** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i16, i16* %118, i64 %idxprom195
  %119 = load i16, i16* %arrayidx199, align 2
  %conv200 = zext i16 %119 to i32
  %pos_x201 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %120 = load i32, i32* %pos_x201, align 4
  %add202 = add nsw i32 %120, 7
  %121 = load i32, i32* %i, align 4
  %sub203 = sub nsw i32 %add202, %121
  %idxprom204 = sext i32 %sub203 to i64
  %pos_y205 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %122 = load i32, i32* %pos_y205, align 4
  %idxprom206 = sext i32 %122 to i64
  %123 = load i16**, i16*** %imgY, align 8
  %arrayidx207 = getelementptr inbounds i16*, i16** %123, i64 %idxprom206
  %124 = load i16*, i16** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i16, i16* %124, i64 %idxprom204
  %125 = load i16, i16* %arrayidx208, align 2
  %conv209 = zext i16 %125 to i32
  %sub210 = sub nsw i32 %conv200, %conv209
  %mul = mul nsw i32 %113, %sub210
  %126 = load i32, i32* %ih, align 4
  %add211 = add nsw i32 %126, %mul
  store i32 %add211, i32* %ih, align 4
  br label %if.end.234

if.else.212:                                      ; preds = %for.body.188
  %127 = load i32, i32* %i, align 4
  %pos_x213 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %128 = load i32, i32* %pos_x213, align 4
  %add214 = add nsw i32 %128, 7
  %129 = load i32, i32* %i, align 4
  %add215 = add nsw i32 %add214, %129
  %idxprom216 = sext i32 %add215 to i64
  %pos_y217 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %130 = load i32, i32* %pos_y217, align 4
  %idxprom218 = sext i32 %130 to i64
  %131 = load i16**, i16*** %imgY, align 8
  %arrayidx219 = getelementptr inbounds i16*, i16** %131, i64 %idxprom218
  %132 = load i16*, i16** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i16, i16* %132, i64 %idxprom216
  %133 = load i16, i16* %arrayidx220, align 2
  %conv221 = zext i16 %133 to i32
  %arrayidx222 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_x223 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx222, i32 0, i32 4
  %134 = load i32, i32* %pos_x223, align 4
  %idxprom224 = sext i32 %134 to i64
  %arrayidx225 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_y226 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx225, i32 0, i32 5
  %135 = load i32, i32* %pos_y226, align 4
  %idxprom227 = sext i32 %135 to i64
  %136 = load i16**, i16*** %imgY, align 8
  %arrayidx228 = getelementptr inbounds i16*, i16** %136, i64 %idxprom227
  %137 = load i16*, i16** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds i16, i16* %137, i64 %idxprom224
  %138 = load i16, i16* %arrayidx229, align 2
  %conv230 = zext i16 %138 to i32
  %sub231 = sub nsw i32 %conv221, %conv230
  %mul232 = mul nsw i32 %127, %sub231
  %139 = load i32, i32* %ih, align 4
  %add233 = add nsw i32 %139, %mul232
  store i32 %add233, i32* %ih, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.212, %if.then.191
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %i, align 4
  %add235 = add nsw i32 8, %141
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom236
  %pos_x238 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx237, i32 0, i32 4
  %142 = load i32, i32* %pos_x238, align 4
  %idxprom239 = sext i32 %142 to i64
  %143 = load i32, i32* %i, align 4
  %add240 = add nsw i32 8, %143
  %idxprom241 = sext i32 %add240 to i64
  %arrayidx242 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom241
  %pos_y243 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx242, i32 0, i32 5
  %144 = load i32, i32* %pos_y243, align 4
  %idxprom244 = sext i32 %144 to i64
  %145 = load i16**, i16*** %imgY, align 8
  %arrayidx245 = getelementptr inbounds i16*, i16** %145, i64 %idxprom244
  %146 = load i16*, i16** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i16, i16* %146, i64 %idxprom239
  %147 = load i16, i16* %arrayidx246, align 2
  %conv247 = zext i16 %147 to i32
  %148 = load i32, i32* %i, align 4
  %sub248 = sub nsw i32 8, %148
  %idxprom249 = sext i32 %sub248 to i64
  %arrayidx250 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom249
  %pos_x251 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx250, i32 0, i32 4
  %149 = load i32, i32* %pos_x251, align 4
  %idxprom252 = sext i32 %149 to i64
  %150 = load i32, i32* %i, align 4
  %sub253 = sub nsw i32 8, %150
  %idxprom254 = sext i32 %sub253 to i64
  %arrayidx255 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom254
  %pos_y256 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx255, i32 0, i32 5
  %151 = load i32, i32* %pos_y256, align 4
  %idxprom257 = sext i32 %151 to i64
  %152 = load i16**, i16*** %imgY, align 8
  %arrayidx258 = getelementptr inbounds i16*, i16** %152, i64 %idxprom257
  %153 = load i16*, i16** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i16, i16* %153, i64 %idxprom252
  %154 = load i16, i16* %arrayidx259, align 2
  %conv260 = zext i16 %154 to i32
  %sub261 = sub nsw i32 %conv247, %conv260
  %mul262 = mul nsw i32 %140, %sub261
  %155 = load i32, i32* %iv, align 4
  %add263 = add nsw i32 %155, %mul262
  store i32 %add263, i32* %iv, align 4
  br label %for.inc.264

for.inc.264:                                      ; preds = %if.end.234
  %156 = load i32, i32* %i, align 4
  %inc265 = add nsw i32 %156, 1
  store i32 %inc265, i32* %i, align 4
  br label %for.cond.185

for.end.266:                                      ; preds = %for.cond.185
  %157 = load i32, i32* %ih, align 4
  %mul267 = mul nsw i32 5, %157
  %add268 = add nsw i32 %mul267, 32
  %shr269 = ashr i32 %add268, 6
  store i32 %shr269, i32* %ib, align 4
  %158 = load i32, i32* %iv, align 4
  %mul270 = mul nsw i32 5, %158
  %add271 = add nsw i32 %mul270, 32
  %shr272 = ashr i32 %add271, 6
  store i32 %shr272, i32* %ic, align 4
  %pos_x273 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %159 = load i32, i32* %pos_x273, align 4
  %add274 = add nsw i32 %159, 15
  %idxprom275 = sext i32 %add274 to i64
  %pos_y276 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %160 = load i32, i32* %pos_y276, align 4
  %idxprom277 = sext i32 %160 to i64
  %161 = load i16**, i16*** %imgY, align 8
  %arrayidx278 = getelementptr inbounds i16*, i16** %161, i64 %idxprom277
  %162 = load i16*, i16** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i16, i16* %162, i64 %idxprom275
  %163 = load i16, i16* %arrayidx279, align 2
  %conv280 = zext i16 %163 to i32
  %arrayidx281 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 16
  %pos_x282 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx281, i32 0, i32 4
  %164 = load i32, i32* %pos_x282, align 4
  %idxprom283 = sext i32 %164 to i64
  %arrayidx284 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 16
  %pos_y285 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx284, i32 0, i32 5
  %165 = load i32, i32* %pos_y285, align 4
  %idxprom286 = sext i32 %165 to i64
  %166 = load i16**, i16*** %imgY, align 8
  %arrayidx287 = getelementptr inbounds i16*, i16** %166, i64 %idxprom286
  %167 = load i16*, i16** %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds i16, i16* %167, i64 %idxprom283
  %168 = load i16, i16* %arrayidx288, align 2
  %conv289 = zext i16 %168 to i32
  %add290 = add nsw i32 %conv280, %conv289
  %mul291 = mul nsw i32 16, %add290
  store i32 %mul291, i32* %iaa, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.292

for.cond.292:                                     ; preds = %for.inc.317, %for.end.266
  %169 = load i32, i32* %j, align 4
  %cmp293 = icmp slt i32 %169, 16
  br i1 %cmp293, label %for.body.295, label %for.end.319

for.body.295:                                     ; preds = %for.cond.292
  store i32 0, i32* %i, align 4
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc.314, %for.body.295
  %170 = load i32, i32* %i, align 4
  %cmp297 = icmp slt i32 %170, 16
  br i1 %cmp297, label %for.body.299, label %for.end.316

for.body.299:                                     ; preds = %for.cond.296
  %171 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %171, i32 0, i32 107
  %172 = load i32, i32* %max_imgpel_value, align 4
  %173 = load i32, i32* %iaa, align 4
  %174 = load i32, i32* %i, align 4
  %sub300 = sub nsw i32 %174, 7
  %175 = load i32, i32* %ib, align 4
  %mul301 = mul nsw i32 %sub300, %175
  %add302 = add nsw i32 %173, %mul301
  %176 = load i32, i32* %j, align 4
  %sub303 = sub nsw i32 %176, 7
  %177 = load i32, i32* %ic, align 4
  %mul304 = mul nsw i32 %sub303, %177
  %add305 = add nsw i32 %add302, %mul304
  %add306 = add nsw i32 %add305, 16
  %shr307 = ashr i32 %add306, 5
  %call = call i32 @iClip1(i32 %172, i32 %shr307)
  %conv308 = trunc i32 %call to i16
  %178 = load i32, i32* %i, align 4
  %idxprom309 = sext i32 %178 to i64
  %179 = load i32, i32* %j, align 4
  %idxprom310 = sext i32 %179 to i64
  %180 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr311 = getelementptr inbounds %struct.img_par, %struct.img_par* %180, i32 0, i32 25
  %arrayidx312 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr311, i32 0, i64 %idxprom310
  %arrayidx313 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx312, i32 0, i64 %idxprom309
  store i16 %conv308, i16* %arrayidx313, align 2
  br label %for.inc.314

for.inc.314:                                      ; preds = %for.body.299
  %181 = load i32, i32* %i, align 4
  %inc315 = add nsw i32 %181, 1
  store i32 %inc315, i32* %i, align 4
  br label %for.cond.296

for.end.316:                                      ; preds = %for.cond.296
  br label %for.inc.317

for.inc.317:                                      ; preds = %for.end.316
  %182 = load i32, i32* %j, align 4
  %inc318 = add nsw i32 %182, 1
  store i32 %inc318, i32* %j, align 4
  br label %for.cond.292

for.end.319:                                      ; preds = %for.cond.292
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %183 = load i32, i32* %predmode.addr, align 4
  %call320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i32 %183)
  store i32 1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %for.end.319, %for.end.177, %for.end.97, %for.end.64
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %184 = load i32, i32* %retval
  ret i32 %184
}

declare void @error(i8*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip1(i32 %high, i32 %x) #2 {
entry:
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %call = call i32 @imax(i32 %0, i32 0)
  store i32 %call, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %1, i32 %2)
  store i32 %call1, i32* %x.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @intrapred_chroma(%struct.img_par* %img, i32 %uv) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %uv.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %ioff = alloca i32, align 4
  %joff = alloca i32, align 4
  %imgUV = alloca i16***, align 8
  %js = alloca [4 x [4 x i32]], align 16
  %pred = alloca i32, align 4
  %ih = alloca i32, align 4
  %iv = alloca i32, align 4
  %ib = alloca i32, align 4
  %ic = alloca i32, align 4
  %iaa = alloca i32, align 4
  %b8 = alloca i32, align 4
  %b4 = alloca i32, align 4
  %yuv = alloca i32, align 4
  %blk_x = alloca i32, align 4
  %blk_y = alloca i32, align 4
  %block_pos = alloca [3 x [4 x [4 x i32]]], align 16
  %s0 = alloca i32, align 4
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %up = alloca %struct.pix_pos, align 4
  %left = alloca [17 x %struct.pix_pos], align 16
  %up_avail = alloca i32, align 4
  %left_avail = alloca [2 x i32], align 4
  %left_up_avail = alloca i32, align 4
  %cr_MB_x = alloca i32, align 4
  %cr_MB_y = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %uv, i32* %uv.addr, align 4
  %0 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgUV1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 33
  %1 = load i16***, i16**** %imgUV1, align 8
  store i16*** %1, i16**** %imgUV, align 8
  %2 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %chroma_format_idc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %2, i32 0, i32 50
  %3 = load i32, i32* %chroma_format_idc, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %yuv, align 4
  %4 = bitcast [3 x [4 x [4 x i32]]]* %block_pos to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([3 x [4 x [4 x i32]]]* @intrapred_chroma.block_pos to i8*), i64 192, i32 16, i1 false)
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 1
  %6 = load i32, i32* %current_mb_nr, align 4
  store i32 %6, i32* %mb_nr, align 4
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %current_mb_nr2 = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 1
  %8 = load i32, i32* %current_mb_nr2, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_data = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 39
  %10 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %10, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_x = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 115
  %12 = load i32, i32* %mb_cr_size_x, align 4
  store i32 %12, i32* %cr_MB_x, align 4
  %13 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mb_cr_size_y = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 116
  %14 = load i32, i32* %mb_cr_size_y, align 4
  store i32 %14, i32* %cr_MB_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %cr_MB_y, align 4
  %add = add nsw i32 %16, 1
  %cmp = icmp slt i32 %15, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %18 = load i32, i32* %mb_nr, align 4
  %19 = load i32, i32* %i, align 4
  %sub3 = sub nsw i32 %19, 1
  %20 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %20 to i64
  %arrayidx5 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom4
  call void %17(i32 %18, i32 -1, i32 %sub3, i32 1, %struct.pix_pos* %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %23 = load i32, i32* %mb_nr, align 4
  call void %22(i32 %23, i32 0, i32 -1, i32 1, %struct.pix_pos* %up)
  %24 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %constrained_intra_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %24, i32 0, i32 30
  %25 = load i32, i32* %constrained_intra_pred_flag, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %26 = load i32, i32* %available, align 4
  store i32 %26, i32* %up_avail, align 4
  %arrayidx6 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 1
  %available7 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx6, i32 0, i32 0
  %27 = load i32, i32* %available7, align 4
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  store i32 %27, i32* %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  store i32 %27, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available11 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx10, i32 0, i32 0
  %28 = load i32, i32* %available11, align 4
  store i32 %28, i32* %left_up_avail, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %available12 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 0
  %29 = load i32, i32* %available12, align 4
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 1
  %30 = load i32, i32* %mb_addr, align 4
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 4
  %32 = load i32*, i32** %intra_block, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %32, i64 %idxprom14
  %33 = load i32, i32* %arrayidx15, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %up_avail, align 4
  store i32 0, i32* %i, align 4
  %arrayidx16 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  store i32 1, i32* %arrayidx16, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.37, %cond.end
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %cr_MB_y, align 4
  %div = sdiv i32 %35, 2
  %cmp18 = icmp slt i32 %34, %div
  br i1 %cmp18, label %for.body.19, label %for.end.39

for.body.19:                                      ; preds = %for.cond.17
  %36 = load i32, i32* %i, align 4
  %add20 = add nsw i32 %36, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom21
  %available23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx22, i32 0, i32 0
  %37 = load i32, i32* %available23, align 4
  %tobool24 = icmp ne i32 %37, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.33

cond.true.25:                                     ; preds = %for.body.19
  %38 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %38, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom27
  %mb_addr29 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx28, i32 0, i32 1
  %39 = load i32, i32* %mb_addr29, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block31 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 4
  %41 = load i32*, i32** %intra_block31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 %idxprom30
  %42 = load i32, i32* %arrayidx32, align 4
  br label %cond.end.34

cond.false.33:                                    ; preds = %for.body.19
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.25
  %cond35 = phi i32 [ %42, %cond.true.25 ], [ 0, %cond.false.33 ]
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %43 = load i32, i32* %arrayidx36, align 4
  %and = and i32 %43, %cond35
  store i32 %and, i32* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %cond.end.34
  %44 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %44, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.17

for.end.39:                                       ; preds = %for.cond.17
  %45 = load i32, i32* %cr_MB_y, align 4
  %div40 = sdiv i32 %45, 2
  store i32 %div40, i32* %i, align 4
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  store i32 1, i32* %arrayidx41, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.63, %for.end.39
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %cr_MB_y, align 4
  %cmp43 = icmp slt i32 %46, %47
  br i1 %cmp43, label %for.body.44, label %for.end.65

for.body.44:                                      ; preds = %for.cond.42
  %48 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %48, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom46
  %available48 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx47, i32 0, i32 0
  %49 = load i32, i32* %available48, align 4
  %tobool49 = icmp ne i32 %49, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.58

cond.true.50:                                     ; preds = %for.body.44
  %50 = load i32, i32* %i, align 4
  %add51 = add nsw i32 %50, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom52
  %mb_addr54 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx53, i32 0, i32 1
  %51 = load i32, i32* %mb_addr54, align 4
  %idxprom55 = sext i32 %51 to i64
  %52 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block56 = getelementptr inbounds %struct.img_par, %struct.img_par* %52, i32 0, i32 4
  %53 = load i32*, i32** %intra_block56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %53, i64 %idxprom55
  %54 = load i32, i32* %arrayidx57, align 4
  br label %cond.end.59

cond.false.58:                                    ; preds = %for.body.44
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.58, %cond.true.50
  %cond60 = phi i32 [ %54, %cond.true.50 ], [ 0, %cond.false.58 ]
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %55 = load i32, i32* %arrayidx61, align 4
  %and62 = and i32 %55, %cond60
  store i32 %and62, i32* %arrayidx61, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %cond.end.59
  %56 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %56, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.42

for.end.65:                                       ; preds = %for.cond.42
  %arrayidx66 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %available67 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx66, i32 0, i32 0
  %57 = load i32, i32* %available67, align 4
  %tobool68 = icmp ne i32 %57, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.75

cond.true.69:                                     ; preds = %for.end.65
  %arrayidx70 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %mb_addr71 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx70, i32 0, i32 1
  %58 = load i32, i32* %mb_addr71, align 4
  %idxprom72 = sext i32 %58 to i64
  %59 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %intra_block73 = getelementptr inbounds %struct.img_par, %struct.img_par* %59, i32 0, i32 4
  %60 = load i32*, i32** %intra_block73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %60, i64 %idxprom72
  %61 = load i32, i32* %arrayidx74, align 4
  br label %cond.end.76

cond.false.75:                                    ; preds = %for.end.65
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.69
  %cond77 = phi i32 [ %61, %cond.true.69 ], [ 0, %cond.false.75 ]
  store i32 %cond77, i32* %left_up_avail, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.76, %if.then
  %62 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %62, i32 0, i32 19
  %63 = load i32, i32* %c_ipred_mode, align 4
  %cmp78 = icmp eq i32 %63, 0
  br i1 %cmp78, label %if.then.79, label %if.end.418

if.then.79:                                       ; preds = %if.end
  store i32 0, i32* %b8, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.415, %if.then.79
  %64 = load i32, i32* %b8, align 4
  %65 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_blk8x8_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %65, i32 0, i32 113
  %66 = load i32, i32* %num_blk8x8_uv, align 4
  %div81 = sdiv i32 %66, 2
  %cmp82 = icmp slt i32 %64, %div81
  br i1 %cmp82, label %for.body.83, label %for.end.417

for.body.83:                                      ; preds = %for.cond.80
  store i32 0, i32* %b4, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.412, %for.body.83
  %67 = load i32, i32* %b4, align 4
  %cmp85 = icmp slt i32 %67, 4
  br i1 %cmp85, label %for.body.86, label %for.end.414

for.body.86:                                      ; preds = %for.cond.84
  %68 = load i32, i32* %b4, align 4
  %idxprom87 = sext i32 %68 to i64
  %69 = load i32, i32* %b8, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load i32, i32* %yuv, align 4
  %idxprom89 = sext i32 %70 to i64
  %arrayidx90 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_y, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx90, i32 0, i64 %idxprom88
  %arrayidx92 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx91, i32 0, i64 %idxprom87
  %71 = load i8, i8* %arrayidx92, align 1
  %conv = zext i8 %71 to i32
  %add93 = add nsw i32 %conv, 1
  store i32 %add93, i32* %blk_y, align 4
  %72 = load i32, i32* %b4, align 4
  %idxprom94 = sext i32 %72 to i64
  %73 = load i32, i32* %b8, align 4
  %idxprom95 = sext i32 %73 to i64
  %74 = load i32, i32* %yuv, align 4
  %idxprom96 = sext i32 %74 to i64
  %arrayidx97 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_x, i32 0, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx97, i32 0, i64 %idxprom95
  %arrayidx99 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx98, i32 0, i64 %idxprom94
  %75 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %75 to i32
  store i32 %conv100, i32* %blk_x, align 4
  store i32 0, i32* %s3, align 4
  store i32 0, i32* %s2, align 4
  store i32 0, i32* %s1, align 4
  store i32 0, i32* %s0, align 4
  %76 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %dc_pred_value_chroma = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 106
  %77 = load i32, i32* %dc_pred_value_chroma, align 4
  %78 = load i32, i32* %b4, align 4
  %idxprom101 = sext i32 %78 to i64
  %79 = load i32, i32* %b8, align 4
  %idxprom102 = sext i32 %79 to i64
  %arrayidx103 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx103, i32 0, i64 %idxprom101
  store i32 %77, i32* %arrayidx104, align 4
  %80 = load i32, i32* %b4, align 4
  %idxprom105 = sext i32 %80 to i64
  %81 = load i32, i32* %b8, align 4
  %idxprom106 = sext i32 %81 to i64
  %82 = load i32, i32* %yuv, align 4
  %idxprom107 = sext i32 %82 to i64
  %arrayidx108 = getelementptr inbounds [3 x [4 x [4 x i32]]], [3 x [4 x [4 x i32]]]* %block_pos, i32 0, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx108, i32 0, i64 %idxprom106
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx109, i32 0, i64 %idxprom105
  %83 = load i32, i32* %arrayidx110, align 4
  switch i32 %83, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.189
    i32 2, label %sw.bb.259
    i32 3, label %sw.bb.329
  ]

sw.bb:                                            ; preds = %for.body.86
  %84 = load i32, i32* %up_avail, align 4
  %tobool111 = icmp ne i32 %84, 0
  br i1 %tobool111, label %if.then.112, label %if.end.130

if.then.112:                                      ; preds = %sw.bb
  %85 = load i32, i32* %blk_x, align 4
  store i32 %85, i32* %i, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.127, %if.then.112
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %blk_x, align 4
  %add114 = add nsw i32 %87, 4
  %cmp115 = icmp slt i32 %86, %add114
  br i1 %cmp115, label %for.body.117, label %for.end.129

for.body.117:                                     ; preds = %for.cond.113
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %88 = load i32, i32* %pos_x, align 4
  %89 = load i32, i32* %i, align 4
  %add118 = add nsw i32 %88, %89
  %idxprom119 = sext i32 %add118 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %90 = load i32, i32* %pos_y, align 4
  %idxprom120 = sext i32 %90 to i64
  %91 = load i32, i32* %uv.addr, align 4
  %idxprom121 = sext i32 %91 to i64
  %92 = load i16***, i16**** %imgUV, align 8
  %arrayidx122 = getelementptr inbounds i16**, i16*** %92, i64 %idxprom121
  %93 = load i16**, i16*** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i16*, i16** %93, i64 %idxprom120
  %94 = load i16*, i16** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i16, i16* %94, i64 %idxprom119
  %95 = load i16, i16* %arrayidx124, align 2
  %conv125 = zext i16 %95 to i32
  %96 = load i32, i32* %s0, align 4
  %add126 = add nsw i32 %96, %conv125
  store i32 %add126, i32* %s0, align 4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.117
  %97 = load i32, i32* %i, align 4
  %inc128 = add nsw i32 %97, 1
  store i32 %inc128, i32* %i, align 4
  br label %for.cond.113

for.end.129:                                      ; preds = %for.cond.113
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.129, %sw.bb
  %arrayidx131 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %98 = load i32, i32* %arrayidx131, align 4
  %tobool132 = icmp ne i32 %98, 0
  br i1 %tobool132, label %if.then.133, label %if.end.156

if.then.133:                                      ; preds = %if.end.130
  %99 = load i32, i32* %blk_y, align 4
  store i32 %99, i32* %i, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.153, %if.then.133
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %blk_y, align 4
  %add135 = add nsw i32 %101, 4
  %cmp136 = icmp slt i32 %100, %add135
  br i1 %cmp136, label %for.body.138, label %for.end.155

for.body.138:                                     ; preds = %for.cond.134
  %102 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %102 to i64
  %arrayidx140 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom139
  %pos_x141 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx140, i32 0, i32 4
  %103 = load i32, i32* %pos_x141, align 4
  %idxprom142 = sext i32 %103 to i64
  %104 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %104 to i64
  %arrayidx144 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom143
  %pos_y145 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx144, i32 0, i32 5
  %105 = load i32, i32* %pos_y145, align 4
  %idxprom146 = sext i32 %105 to i64
  %106 = load i32, i32* %uv.addr, align 4
  %idxprom147 = sext i32 %106 to i64
  %107 = load i16***, i16**** %imgUV, align 8
  %arrayidx148 = getelementptr inbounds i16**, i16*** %107, i64 %idxprom147
  %108 = load i16**, i16*** %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds i16*, i16** %108, i64 %idxprom146
  %109 = load i16*, i16** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds i16, i16* %109, i64 %idxprom142
  %110 = load i16, i16* %arrayidx150, align 2
  %conv151 = zext i16 %110 to i32
  %111 = load i32, i32* %s2, align 4
  %add152 = add nsw i32 %111, %conv151
  store i32 %add152, i32* %s2, align 4
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.body.138
  %112 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %112, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.134

for.end.155:                                      ; preds = %for.cond.134
  br label %if.end.156

if.end.156:                                       ; preds = %for.end.155, %if.end.130
  %113 = load i32, i32* %up_avail, align 4
  %tobool157 = icmp ne i32 %113, 0
  br i1 %tobool157, label %land.lhs.true, label %if.else.167

land.lhs.true:                                    ; preds = %if.end.156
  %arrayidx158 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %114 = load i32, i32* %arrayidx158, align 4
  %tobool159 = icmp ne i32 %114, 0
  br i1 %tobool159, label %if.then.160, label %if.else.167

if.then.160:                                      ; preds = %land.lhs.true
  %115 = load i32, i32* %s0, align 4
  %116 = load i32, i32* %s2, align 4
  %add161 = add nsw i32 %115, %116
  %add162 = add nsw i32 %add161, 4
  %shr = ashr i32 %add162, 3
  %117 = load i32, i32* %b4, align 4
  %idxprom163 = sext i32 %117 to i64
  %118 = load i32, i32* %b8, align 4
  %idxprom164 = sext i32 %118 to i64
  %arrayidx165 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom164
  %arrayidx166 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx165, i32 0, i64 %idxprom163
  store i32 %shr, i32* %arrayidx166, align 4
  br label %if.end.188

if.else.167:                                      ; preds = %land.lhs.true, %if.end.156
  %119 = load i32, i32* %up_avail, align 4
  %tobool168 = icmp ne i32 %119, 0
  br i1 %tobool168, label %if.then.169, label %if.else.176

if.then.169:                                      ; preds = %if.else.167
  %120 = load i32, i32* %s0, align 4
  %add170 = add nsw i32 %120, 2
  %shr171 = ashr i32 %add170, 2
  %121 = load i32, i32* %b4, align 4
  %idxprom172 = sext i32 %121 to i64
  %122 = load i32, i32* %b8, align 4
  %idxprom173 = sext i32 %122 to i64
  %arrayidx174 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom173
  %arrayidx175 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx174, i32 0, i64 %idxprom172
  store i32 %shr171, i32* %arrayidx175, align 4
  br label %if.end.187

if.else.176:                                      ; preds = %if.else.167
  %arrayidx177 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %123 = load i32, i32* %arrayidx177, align 4
  %tobool178 = icmp ne i32 %123, 0
  br i1 %tobool178, label %if.then.179, label %if.end.186

if.then.179:                                      ; preds = %if.else.176
  %124 = load i32, i32* %s2, align 4
  %add180 = add nsw i32 %124, 2
  %shr181 = ashr i32 %add180, 2
  %125 = load i32, i32* %b4, align 4
  %idxprom182 = sext i32 %125 to i64
  %126 = load i32, i32* %b8, align 4
  %idxprom183 = sext i32 %126 to i64
  %arrayidx184 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom183
  %arrayidx185 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx184, i32 0, i64 %idxprom182
  store i32 %shr181, i32* %arrayidx185, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.179, %if.else.176
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.169
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.160
  br label %sw.epilog

sw.bb.189:                                        ; preds = %for.body.86
  %127 = load i32, i32* %up_avail, align 4
  %tobool190 = icmp ne i32 %127, 0
  br i1 %tobool190, label %if.then.191, label %if.else.211

if.then.191:                                      ; preds = %sw.bb.189
  %128 = load i32, i32* %blk_x, align 4
  store i32 %128, i32* %i, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.208, %if.then.191
  %129 = load i32, i32* %i, align 4
  %130 = load i32, i32* %blk_x, align 4
  %add193 = add nsw i32 %130, 4
  %cmp194 = icmp slt i32 %129, %add193
  br i1 %cmp194, label %for.body.196, label %for.end.210

for.body.196:                                     ; preds = %for.cond.192
  %pos_x197 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %131 = load i32, i32* %pos_x197, align 4
  %132 = load i32, i32* %i, align 4
  %add198 = add nsw i32 %131, %132
  %idxprom199 = sext i32 %add198 to i64
  %pos_y200 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %133 = load i32, i32* %pos_y200, align 4
  %idxprom201 = sext i32 %133 to i64
  %134 = load i32, i32* %uv.addr, align 4
  %idxprom202 = sext i32 %134 to i64
  %135 = load i16***, i16**** %imgUV, align 8
  %arrayidx203 = getelementptr inbounds i16**, i16*** %135, i64 %idxprom202
  %136 = load i16**, i16*** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i16*, i16** %136, i64 %idxprom201
  %137 = load i16*, i16** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i16, i16* %137, i64 %idxprom199
  %138 = load i16, i16* %arrayidx205, align 2
  %conv206 = zext i16 %138 to i32
  %139 = load i32, i32* %s1, align 4
  %add207 = add nsw i32 %139, %conv206
  store i32 %add207, i32* %s1, align 4
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.body.196
  %140 = load i32, i32* %i, align 4
  %inc209 = add nsw i32 %140, 1
  store i32 %inc209, i32* %i, align 4
  br label %for.cond.192

for.end.210:                                      ; preds = %for.cond.192
  br label %if.end.238

if.else.211:                                      ; preds = %sw.bb.189
  %arrayidx212 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %141 = load i32, i32* %arrayidx212, align 4
  %tobool213 = icmp ne i32 %141, 0
  br i1 %tobool213, label %if.then.214, label %if.end.237

if.then.214:                                      ; preds = %if.else.211
  %142 = load i32, i32* %blk_y, align 4
  store i32 %142, i32* %i, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.234, %if.then.214
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %blk_y, align 4
  %add216 = add nsw i32 %144, 4
  %cmp217 = icmp slt i32 %143, %add216
  br i1 %cmp217, label %for.body.219, label %for.end.236

for.body.219:                                     ; preds = %for.cond.215
  %145 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %145 to i64
  %arrayidx221 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom220
  %pos_x222 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx221, i32 0, i32 4
  %146 = load i32, i32* %pos_x222, align 4
  %idxprom223 = sext i32 %146 to i64
  %147 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %147 to i64
  %arrayidx225 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom224
  %pos_y226 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx225, i32 0, i32 5
  %148 = load i32, i32* %pos_y226, align 4
  %idxprom227 = sext i32 %148 to i64
  %149 = load i32, i32* %uv.addr, align 4
  %idxprom228 = sext i32 %149 to i64
  %150 = load i16***, i16**** %imgUV, align 8
  %arrayidx229 = getelementptr inbounds i16**, i16*** %150, i64 %idxprom228
  %151 = load i16**, i16*** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i16*, i16** %151, i64 %idxprom227
  %152 = load i16*, i16** %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds i16, i16* %152, i64 %idxprom223
  %153 = load i16, i16* %arrayidx231, align 2
  %conv232 = zext i16 %153 to i32
  %154 = load i32, i32* %s2, align 4
  %add233 = add nsw i32 %154, %conv232
  store i32 %add233, i32* %s2, align 4
  br label %for.inc.234

for.inc.234:                                      ; preds = %for.body.219
  %155 = load i32, i32* %i, align 4
  %inc235 = add nsw i32 %155, 1
  store i32 %inc235, i32* %i, align 4
  br label %for.cond.215

for.end.236:                                      ; preds = %for.cond.215
  br label %if.end.237

if.end.237:                                       ; preds = %for.end.236, %if.else.211
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %for.end.210
  %156 = load i32, i32* %up_avail, align 4
  %tobool239 = icmp ne i32 %156, 0
  br i1 %tobool239, label %if.then.240, label %if.else.247

if.then.240:                                      ; preds = %if.end.238
  %157 = load i32, i32* %s1, align 4
  %add241 = add nsw i32 %157, 2
  %shr242 = ashr i32 %add241, 2
  %158 = load i32, i32* %b4, align 4
  %idxprom243 = sext i32 %158 to i64
  %159 = load i32, i32* %b8, align 4
  %idxprom244 = sext i32 %159 to i64
  %arrayidx245 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx245, i32 0, i64 %idxprom243
  store i32 %shr242, i32* %arrayidx246, align 4
  br label %if.end.258

if.else.247:                                      ; preds = %if.end.238
  %arrayidx248 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %160 = load i32, i32* %arrayidx248, align 4
  %tobool249 = icmp ne i32 %160, 0
  br i1 %tobool249, label %if.then.250, label %if.end.257

if.then.250:                                      ; preds = %if.else.247
  %161 = load i32, i32* %s2, align 4
  %add251 = add nsw i32 %161, 2
  %shr252 = ashr i32 %add251, 2
  %162 = load i32, i32* %b4, align 4
  %idxprom253 = sext i32 %162 to i64
  %163 = load i32, i32* %b8, align 4
  %idxprom254 = sext i32 %163 to i64
  %arrayidx255 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom254
  %arrayidx256 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx255, i32 0, i64 %idxprom253
  store i32 %shr252, i32* %arrayidx256, align 4
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.250, %if.else.247
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.240
  br label %sw.epilog

sw.bb.259:                                        ; preds = %for.body.86
  %arrayidx260 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %164 = load i32, i32* %arrayidx260, align 4
  %tobool261 = icmp ne i32 %164, 0
  br i1 %tobool261, label %if.then.262, label %if.else.285

if.then.262:                                      ; preds = %sw.bb.259
  %165 = load i32, i32* %blk_y, align 4
  store i32 %165, i32* %i, align 4
  br label %for.cond.263

for.cond.263:                                     ; preds = %for.inc.282, %if.then.262
  %166 = load i32, i32* %i, align 4
  %167 = load i32, i32* %blk_y, align 4
  %add264 = add nsw i32 %167, 4
  %cmp265 = icmp slt i32 %166, %add264
  br i1 %cmp265, label %for.body.267, label %for.end.284

for.body.267:                                     ; preds = %for.cond.263
  %168 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %168 to i64
  %arrayidx269 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom268
  %pos_x270 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx269, i32 0, i32 4
  %169 = load i32, i32* %pos_x270, align 4
  %idxprom271 = sext i32 %169 to i64
  %170 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %170 to i64
  %arrayidx273 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom272
  %pos_y274 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx273, i32 0, i32 5
  %171 = load i32, i32* %pos_y274, align 4
  %idxprom275 = sext i32 %171 to i64
  %172 = load i32, i32* %uv.addr, align 4
  %idxprom276 = sext i32 %172 to i64
  %173 = load i16***, i16**** %imgUV, align 8
  %arrayidx277 = getelementptr inbounds i16**, i16*** %173, i64 %idxprom276
  %174 = load i16**, i16*** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i16*, i16** %174, i64 %idxprom275
  %175 = load i16*, i16** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i16, i16* %175, i64 %idxprom271
  %176 = load i16, i16* %arrayidx279, align 2
  %conv280 = zext i16 %176 to i32
  %177 = load i32, i32* %s3, align 4
  %add281 = add nsw i32 %177, %conv280
  store i32 %add281, i32* %s3, align 4
  br label %for.inc.282

for.inc.282:                                      ; preds = %for.body.267
  %178 = load i32, i32* %i, align 4
  %inc283 = add nsw i32 %178, 1
  store i32 %inc283, i32* %i, align 4
  br label %for.cond.263

for.end.284:                                      ; preds = %for.cond.263
  br label %if.end.308

if.else.285:                                      ; preds = %sw.bb.259
  %179 = load i32, i32* %up_avail, align 4
  %tobool286 = icmp ne i32 %179, 0
  br i1 %tobool286, label %if.then.287, label %if.end.307

if.then.287:                                      ; preds = %if.else.285
  %180 = load i32, i32* %blk_x, align 4
  store i32 %180, i32* %i, align 4
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.304, %if.then.287
  %181 = load i32, i32* %i, align 4
  %182 = load i32, i32* %blk_x, align 4
  %add289 = add nsw i32 %182, 4
  %cmp290 = icmp slt i32 %181, %add289
  br i1 %cmp290, label %for.body.292, label %for.end.306

for.body.292:                                     ; preds = %for.cond.288
  %pos_x293 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %183 = load i32, i32* %pos_x293, align 4
  %184 = load i32, i32* %i, align 4
  %add294 = add nsw i32 %183, %184
  %idxprom295 = sext i32 %add294 to i64
  %pos_y296 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %185 = load i32, i32* %pos_y296, align 4
  %idxprom297 = sext i32 %185 to i64
  %186 = load i32, i32* %uv.addr, align 4
  %idxprom298 = sext i32 %186 to i64
  %187 = load i16***, i16**** %imgUV, align 8
  %arrayidx299 = getelementptr inbounds i16**, i16*** %187, i64 %idxprom298
  %188 = load i16**, i16*** %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds i16*, i16** %188, i64 %idxprom297
  %189 = load i16*, i16** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds i16, i16* %189, i64 %idxprom295
  %190 = load i16, i16* %arrayidx301, align 2
  %conv302 = zext i16 %190 to i32
  %191 = load i32, i32* %s0, align 4
  %add303 = add nsw i32 %191, %conv302
  store i32 %add303, i32* %s0, align 4
  br label %for.inc.304

for.inc.304:                                      ; preds = %for.body.292
  %192 = load i32, i32* %i, align 4
  %inc305 = add nsw i32 %192, 1
  store i32 %inc305, i32* %i, align 4
  br label %for.cond.288

for.end.306:                                      ; preds = %for.cond.288
  br label %if.end.307

if.end.307:                                       ; preds = %for.end.306, %if.else.285
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %for.end.284
  %arrayidx309 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %193 = load i32, i32* %arrayidx309, align 4
  %tobool310 = icmp ne i32 %193, 0
  br i1 %tobool310, label %if.then.311, label %if.else.318

if.then.311:                                      ; preds = %if.end.308
  %194 = load i32, i32* %s3, align 4
  %add312 = add nsw i32 %194, 2
  %shr313 = ashr i32 %add312, 2
  %195 = load i32, i32* %b4, align 4
  %idxprom314 = sext i32 %195 to i64
  %196 = load i32, i32* %b8, align 4
  %idxprom315 = sext i32 %196 to i64
  %arrayidx316 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom315
  %arrayidx317 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx316, i32 0, i64 %idxprom314
  store i32 %shr313, i32* %arrayidx317, align 4
  br label %if.end.328

if.else.318:                                      ; preds = %if.end.308
  %197 = load i32, i32* %up_avail, align 4
  %tobool319 = icmp ne i32 %197, 0
  br i1 %tobool319, label %if.then.320, label %if.end.327

if.then.320:                                      ; preds = %if.else.318
  %198 = load i32, i32* %s0, align 4
  %add321 = add nsw i32 %198, 2
  %shr322 = ashr i32 %add321, 2
  %199 = load i32, i32* %b4, align 4
  %idxprom323 = sext i32 %199 to i64
  %200 = load i32, i32* %b8, align 4
  %idxprom324 = sext i32 %200 to i64
  %arrayidx325 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom324
  %arrayidx326 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx325, i32 0, i64 %idxprom323
  store i32 %shr322, i32* %arrayidx326, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.320, %if.else.318
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.then.311
  br label %sw.epilog

sw.bb.329:                                        ; preds = %for.body.86
  %201 = load i32, i32* %up_avail, align 4
  %tobool330 = icmp ne i32 %201, 0
  br i1 %tobool330, label %if.then.331, label %if.end.351

if.then.331:                                      ; preds = %sw.bb.329
  %202 = load i32, i32* %blk_x, align 4
  store i32 %202, i32* %i, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.348, %if.then.331
  %203 = load i32, i32* %i, align 4
  %204 = load i32, i32* %blk_x, align 4
  %add333 = add nsw i32 %204, 4
  %cmp334 = icmp slt i32 %203, %add333
  br i1 %cmp334, label %for.body.336, label %for.end.350

for.body.336:                                     ; preds = %for.cond.332
  %pos_x337 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %205 = load i32, i32* %pos_x337, align 4
  %206 = load i32, i32* %i, align 4
  %add338 = add nsw i32 %205, %206
  %idxprom339 = sext i32 %add338 to i64
  %pos_y340 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %207 = load i32, i32* %pos_y340, align 4
  %idxprom341 = sext i32 %207 to i64
  %208 = load i32, i32* %uv.addr, align 4
  %idxprom342 = sext i32 %208 to i64
  %209 = load i16***, i16**** %imgUV, align 8
  %arrayidx343 = getelementptr inbounds i16**, i16*** %209, i64 %idxprom342
  %210 = load i16**, i16*** %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds i16*, i16** %210, i64 %idxprom341
  %211 = load i16*, i16** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds i16, i16* %211, i64 %idxprom339
  %212 = load i16, i16* %arrayidx345, align 2
  %conv346 = zext i16 %212 to i32
  %213 = load i32, i32* %s1, align 4
  %add347 = add nsw i32 %213, %conv346
  store i32 %add347, i32* %s1, align 4
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.336
  %214 = load i32, i32* %i, align 4
  %inc349 = add nsw i32 %214, 1
  store i32 %inc349, i32* %i, align 4
  br label %for.cond.332

for.end.350:                                      ; preds = %for.cond.332
  br label %if.end.351

if.end.351:                                       ; preds = %for.end.350, %sw.bb.329
  %arrayidx352 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %215 = load i32, i32* %arrayidx352, align 4
  %tobool353 = icmp ne i32 %215, 0
  br i1 %tobool353, label %if.then.354, label %if.end.377

if.then.354:                                      ; preds = %if.end.351
  %216 = load i32, i32* %blk_y, align 4
  store i32 %216, i32* %i, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.374, %if.then.354
  %217 = load i32, i32* %i, align 4
  %218 = load i32, i32* %blk_y, align 4
  %add356 = add nsw i32 %218, 4
  %cmp357 = icmp slt i32 %217, %add356
  br i1 %cmp357, label %for.body.359, label %for.end.376

for.body.359:                                     ; preds = %for.cond.355
  %219 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %219 to i64
  %arrayidx361 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom360
  %pos_x362 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx361, i32 0, i32 4
  %220 = load i32, i32* %pos_x362, align 4
  %idxprom363 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %221 to i64
  %arrayidx365 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom364
  %pos_y366 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx365, i32 0, i32 5
  %222 = load i32, i32* %pos_y366, align 4
  %idxprom367 = sext i32 %222 to i64
  %223 = load i32, i32* %uv.addr, align 4
  %idxprom368 = sext i32 %223 to i64
  %224 = load i16***, i16**** %imgUV, align 8
  %arrayidx369 = getelementptr inbounds i16**, i16*** %224, i64 %idxprom368
  %225 = load i16**, i16*** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i16*, i16** %225, i64 %idxprom367
  %226 = load i16*, i16** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i16, i16* %226, i64 %idxprom363
  %227 = load i16, i16* %arrayidx371, align 2
  %conv372 = zext i16 %227 to i32
  %228 = load i32, i32* %s3, align 4
  %add373 = add nsw i32 %228, %conv372
  store i32 %add373, i32* %s3, align 4
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.body.359
  %229 = load i32, i32* %i, align 4
  %inc375 = add nsw i32 %229, 1
  store i32 %inc375, i32* %i, align 4
  br label %for.cond.355

for.end.376:                                      ; preds = %for.cond.355
  br label %if.end.377

if.end.377:                                       ; preds = %for.end.376, %if.end.351
  %230 = load i32, i32* %up_avail, align 4
  %tobool378 = icmp ne i32 %230, 0
  br i1 %tobool378, label %land.lhs.true.379, label %if.else.390

land.lhs.true.379:                                ; preds = %if.end.377
  %arrayidx380 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %231 = load i32, i32* %arrayidx380, align 4
  %tobool381 = icmp ne i32 %231, 0
  br i1 %tobool381, label %if.then.382, label %if.else.390

if.then.382:                                      ; preds = %land.lhs.true.379
  %232 = load i32, i32* %s1, align 4
  %233 = load i32, i32* %s3, align 4
  %add383 = add nsw i32 %232, %233
  %add384 = add nsw i32 %add383, 4
  %shr385 = ashr i32 %add384, 3
  %234 = load i32, i32* %b4, align 4
  %idxprom386 = sext i32 %234 to i64
  %235 = load i32, i32* %b8, align 4
  %idxprom387 = sext i32 %235 to i64
  %arrayidx388 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom387
  %arrayidx389 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx388, i32 0, i64 %idxprom386
  store i32 %shr385, i32* %arrayidx389, align 4
  br label %if.end.411

if.else.390:                                      ; preds = %land.lhs.true.379, %if.end.377
  %236 = load i32, i32* %up_avail, align 4
  %tobool391 = icmp ne i32 %236, 0
  br i1 %tobool391, label %if.then.392, label %if.else.399

if.then.392:                                      ; preds = %if.else.390
  %237 = load i32, i32* %s1, align 4
  %add393 = add nsw i32 %237, 2
  %shr394 = ashr i32 %add393, 2
  %238 = load i32, i32* %b4, align 4
  %idxprom395 = sext i32 %238 to i64
  %239 = load i32, i32* %b8, align 4
  %idxprom396 = sext i32 %239 to i64
  %arrayidx397 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom396
  %arrayidx398 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx397, i32 0, i64 %idxprom395
  store i32 %shr394, i32* %arrayidx398, align 4
  br label %if.end.410

if.else.399:                                      ; preds = %if.else.390
  %arrayidx400 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %240 = load i32, i32* %arrayidx400, align 4
  %tobool401 = icmp ne i32 %240, 0
  br i1 %tobool401, label %if.then.402, label %if.end.409

if.then.402:                                      ; preds = %if.else.399
  %241 = load i32, i32* %s3, align 4
  %add403 = add nsw i32 %241, 2
  %shr404 = ashr i32 %add403, 2
  %242 = load i32, i32* %b4, align 4
  %idxprom405 = sext i32 %242 to i64
  %243 = load i32, i32* %b8, align 4
  %idxprom406 = sext i32 %243 to i64
  %arrayidx407 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom406
  %arrayidx408 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx407, i32 0, i64 %idxprom405
  store i32 %shr404, i32* %arrayidx408, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.402, %if.else.399
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.392
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.then.382
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.86, %if.end.411, %if.end.328, %if.end.258, %if.end.188
  br label %for.inc.412

for.inc.412:                                      ; preds = %sw.epilog
  %244 = load i32, i32* %b4, align 4
  %inc413 = add nsw i32 %244, 1
  store i32 %inc413, i32* %b4, align 4
  br label %for.cond.84

for.end.414:                                      ; preds = %for.cond.84
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.end.414
  %245 = load i32, i32* %b8, align 4
  %inc416 = add nsw i32 %245, 1
  store i32 %inc416, i32* %b8, align 4
  br label %for.cond.80

for.end.417:                                      ; preds = %for.cond.80
  br label %if.end.418

if.end.418:                                       ; preds = %for.end.417, %if.end
  %246 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode419 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %246, i32 0, i32 19
  %247 = load i32, i32* %c_ipred_mode419, align 4
  %cmp420 = icmp eq i32 3, %247
  br i1 %cmp420, label %if.then.422, label %if.else.650

if.then.422:                                      ; preds = %if.end.418
  %248 = load i32, i32* %left_up_avail, align 4
  %tobool423 = icmp ne i32 %248, 0
  br i1 %tobool423, label %lor.lhs.false, label %if.then.431

lor.lhs.false:                                    ; preds = %if.then.422
  %arrayidx424 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %249 = load i32, i32* %arrayidx424, align 4
  %tobool425 = icmp ne i32 %249, 0
  br i1 %tobool425, label %lor.lhs.false.426, label %if.then.431

lor.lhs.false.426:                                ; preds = %lor.lhs.false
  %arrayidx427 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %250 = load i32, i32* %arrayidx427, align 4
  %tobool428 = icmp ne i32 %250, 0
  br i1 %tobool428, label %lor.lhs.false.429, label %if.then.431

lor.lhs.false.429:                                ; preds = %lor.lhs.false.426
  %251 = load i32, i32* %up_avail, align 4
  %tobool430 = icmp ne i32 %251, 0
  br i1 %tobool430, label %if.end.432, label %if.then.431

if.then.431:                                      ; preds = %lor.lhs.false.429, %lor.lhs.false.426, %lor.lhs.false, %if.then.422
  call void @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i32 -1)
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.431, %lor.lhs.false.429
  %252 = load i32, i32* %cr_MB_x, align 4
  %div433 = sdiv i32 %252, 2
  %pos_x434 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %253 = load i32, i32* %pos_x434, align 4
  %254 = load i32, i32* %cr_MB_x, align 4
  %add435 = add nsw i32 %253, %254
  %sub436 = sub nsw i32 %add435, 1
  %idxprom437 = sext i32 %sub436 to i64
  %pos_y438 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %255 = load i32, i32* %pos_y438, align 4
  %idxprom439 = sext i32 %255 to i64
  %256 = load i32, i32* %uv.addr, align 4
  %idxprom440 = sext i32 %256 to i64
  %257 = load i16***, i16**** %imgUV, align 8
  %arrayidx441 = getelementptr inbounds i16**, i16*** %257, i64 %idxprom440
  %258 = load i16**, i16*** %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds i16*, i16** %258, i64 %idxprom439
  %259 = load i16*, i16** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds i16, i16* %259, i64 %idxprom437
  %260 = load i16, i16* %arrayidx443, align 2
  %conv444 = zext i16 %260 to i32
  %arrayidx445 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_x446 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx445, i32 0, i32 4
  %261 = load i32, i32* %pos_x446, align 4
  %idxprom447 = sext i32 %261 to i64
  %arrayidx448 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_y449 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx448, i32 0, i32 5
  %262 = load i32, i32* %pos_y449, align 4
  %idxprom450 = sext i32 %262 to i64
  %263 = load i32, i32* %uv.addr, align 4
  %idxprom451 = sext i32 %263 to i64
  %264 = load i16***, i16**** %imgUV, align 8
  %arrayidx452 = getelementptr inbounds i16**, i16*** %264, i64 %idxprom451
  %265 = load i16**, i16*** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds i16*, i16** %265, i64 %idxprom450
  %266 = load i16*, i16** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %266, i64 %idxprom447
  %267 = load i16, i16* %arrayidx454, align 2
  %conv455 = zext i16 %267 to i32
  %sub456 = sub nsw i32 %conv444, %conv455
  %mul = mul nsw i32 %div433, %sub456
  store i32 %mul, i32* %ih, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.492, %if.end.432
  %268 = load i32, i32* %i, align 4
  %269 = load i32, i32* %cr_MB_x, align 4
  %div458 = sdiv i32 %269, 2
  %sub459 = sub nsw i32 %div458, 1
  %cmp460 = icmp slt i32 %268, %sub459
  br i1 %cmp460, label %for.body.462, label %for.end.494

for.body.462:                                     ; preds = %for.cond.457
  %270 = load i32, i32* %i, align 4
  %add463 = add nsw i32 %270, 1
  %pos_x464 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %271 = load i32, i32* %pos_x464, align 4
  %272 = load i32, i32* %cr_MB_x, align 4
  %div465 = sdiv i32 %272, 2
  %add466 = add nsw i32 %271, %div465
  %273 = load i32, i32* %i, align 4
  %add467 = add nsw i32 %add466, %273
  %idxprom468 = sext i32 %add467 to i64
  %pos_y469 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %274 = load i32, i32* %pos_y469, align 4
  %idxprom470 = sext i32 %274 to i64
  %275 = load i32, i32* %uv.addr, align 4
  %idxprom471 = sext i32 %275 to i64
  %276 = load i16***, i16**** %imgUV, align 8
  %arrayidx472 = getelementptr inbounds i16**, i16*** %276, i64 %idxprom471
  %277 = load i16**, i16*** %arrayidx472, align 8
  %arrayidx473 = getelementptr inbounds i16*, i16** %277, i64 %idxprom470
  %278 = load i16*, i16** %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds i16, i16* %278, i64 %idxprom468
  %279 = load i16, i16* %arrayidx474, align 2
  %conv475 = zext i16 %279 to i32
  %pos_x476 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %280 = load i32, i32* %pos_x476, align 4
  %281 = load i32, i32* %cr_MB_x, align 4
  %div477 = sdiv i32 %281, 2
  %add478 = add nsw i32 %280, %div477
  %sub479 = sub nsw i32 %add478, 2
  %282 = load i32, i32* %i, align 4
  %sub480 = sub nsw i32 %sub479, %282
  %idxprom481 = sext i32 %sub480 to i64
  %pos_y482 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %283 = load i32, i32* %pos_y482, align 4
  %idxprom483 = sext i32 %283 to i64
  %284 = load i32, i32* %uv.addr, align 4
  %idxprom484 = sext i32 %284 to i64
  %285 = load i16***, i16**** %imgUV, align 8
  %arrayidx485 = getelementptr inbounds i16**, i16*** %285, i64 %idxprom484
  %286 = load i16**, i16*** %arrayidx485, align 8
  %arrayidx486 = getelementptr inbounds i16*, i16** %286, i64 %idxprom483
  %287 = load i16*, i16** %arrayidx486, align 8
  %arrayidx487 = getelementptr inbounds i16, i16* %287, i64 %idxprom481
  %288 = load i16, i16* %arrayidx487, align 2
  %conv488 = zext i16 %288 to i32
  %sub489 = sub nsw i32 %conv475, %conv488
  %mul490 = mul nsw i32 %add463, %sub489
  %289 = load i32, i32* %ih, align 4
  %add491 = add nsw i32 %289, %mul490
  store i32 %add491, i32* %ih, align 4
  br label %for.inc.492

for.inc.492:                                      ; preds = %for.body.462
  %290 = load i32, i32* %i, align 4
  %inc493 = add nsw i32 %290, 1
  store i32 %inc493, i32* %i, align 4
  br label %for.cond.457

for.end.494:                                      ; preds = %for.cond.457
  %291 = load i32, i32* %cr_MB_y, align 4
  %div495 = sdiv i32 %291, 2
  %292 = load i32, i32* %cr_MB_y, align 4
  %idxprom496 = sext i32 %292 to i64
  %arrayidx497 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom496
  %pos_x498 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx497, i32 0, i32 4
  %293 = load i32, i32* %pos_x498, align 4
  %idxprom499 = sext i32 %293 to i64
  %294 = load i32, i32* %cr_MB_y, align 4
  %idxprom500 = sext i32 %294 to i64
  %arrayidx501 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom500
  %pos_y502 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx501, i32 0, i32 5
  %295 = load i32, i32* %pos_y502, align 4
  %idxprom503 = sext i32 %295 to i64
  %296 = load i32, i32* %uv.addr, align 4
  %idxprom504 = sext i32 %296 to i64
  %297 = load i16***, i16**** %imgUV, align 8
  %arrayidx505 = getelementptr inbounds i16**, i16*** %297, i64 %idxprom504
  %298 = load i16**, i16*** %arrayidx505, align 8
  %arrayidx506 = getelementptr inbounds i16*, i16** %298, i64 %idxprom503
  %299 = load i16*, i16** %arrayidx506, align 8
  %arrayidx507 = getelementptr inbounds i16, i16* %299, i64 %idxprom499
  %300 = load i16, i16* %arrayidx507, align 2
  %conv508 = zext i16 %300 to i32
  %arrayidx509 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_x510 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx509, i32 0, i32 4
  %301 = load i32, i32* %pos_x510, align 4
  %idxprom511 = sext i32 %301 to i64
  %arrayidx512 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 0
  %pos_y513 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx512, i32 0, i32 5
  %302 = load i32, i32* %pos_y513, align 4
  %idxprom514 = sext i32 %302 to i64
  %303 = load i32, i32* %uv.addr, align 4
  %idxprom515 = sext i32 %303 to i64
  %304 = load i16***, i16**** %imgUV, align 8
  %arrayidx516 = getelementptr inbounds i16**, i16*** %304, i64 %idxprom515
  %305 = load i16**, i16*** %arrayidx516, align 8
  %arrayidx517 = getelementptr inbounds i16*, i16** %305, i64 %idxprom514
  %306 = load i16*, i16** %arrayidx517, align 8
  %arrayidx518 = getelementptr inbounds i16, i16* %306, i64 %idxprom511
  %307 = load i16, i16* %arrayidx518, align 2
  %conv519 = zext i16 %307 to i32
  %sub520 = sub nsw i32 %conv508, %conv519
  %mul521 = mul nsw i32 %div495, %sub520
  store i32 %mul521, i32* %iv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.522

for.cond.522:                                     ; preds = %for.inc.570, %for.end.494
  %308 = load i32, i32* %i, align 4
  %309 = load i32, i32* %cr_MB_y, align 4
  %div523 = sdiv i32 %309, 2
  %sub524 = sub nsw i32 %div523, 1
  %cmp525 = icmp slt i32 %308, %sub524
  br i1 %cmp525, label %for.body.527, label %for.end.572

for.body.527:                                     ; preds = %for.cond.522
  %310 = load i32, i32* %i, align 4
  %add528 = add nsw i32 %310, 1
  %311 = load i32, i32* %cr_MB_y, align 4
  %div529 = sdiv i32 %311, 2
  %add530 = add nsw i32 %div529, 1
  %312 = load i32, i32* %i, align 4
  %add531 = add nsw i32 %add530, %312
  %idxprom532 = sext i32 %add531 to i64
  %arrayidx533 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom532
  %pos_x534 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx533, i32 0, i32 4
  %313 = load i32, i32* %pos_x534, align 4
  %idxprom535 = sext i32 %313 to i64
  %314 = load i32, i32* %cr_MB_y, align 4
  %div536 = sdiv i32 %314, 2
  %add537 = add nsw i32 %div536, 1
  %315 = load i32, i32* %i, align 4
  %add538 = add nsw i32 %add537, %315
  %idxprom539 = sext i32 %add538 to i64
  %arrayidx540 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom539
  %pos_y541 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx540, i32 0, i32 5
  %316 = load i32, i32* %pos_y541, align 4
  %idxprom542 = sext i32 %316 to i64
  %317 = load i32, i32* %uv.addr, align 4
  %idxprom543 = sext i32 %317 to i64
  %318 = load i16***, i16**** %imgUV, align 8
  %arrayidx544 = getelementptr inbounds i16**, i16*** %318, i64 %idxprom543
  %319 = load i16**, i16*** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds i16*, i16** %319, i64 %idxprom542
  %320 = load i16*, i16** %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds i16, i16* %320, i64 %idxprom535
  %321 = load i16, i16* %arrayidx546, align 2
  %conv547 = zext i16 %321 to i32
  %322 = load i32, i32* %cr_MB_y, align 4
  %div548 = sdiv i32 %322, 2
  %sub549 = sub nsw i32 %div548, 1
  %323 = load i32, i32* %i, align 4
  %sub550 = sub nsw i32 %sub549, %323
  %idxprom551 = sext i32 %sub550 to i64
  %arrayidx552 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom551
  %pos_x553 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx552, i32 0, i32 4
  %324 = load i32, i32* %pos_x553, align 4
  %idxprom554 = sext i32 %324 to i64
  %325 = load i32, i32* %cr_MB_y, align 4
  %div555 = sdiv i32 %325, 2
  %sub556 = sub nsw i32 %div555, 1
  %326 = load i32, i32* %i, align 4
  %sub557 = sub nsw i32 %sub556, %326
  %idxprom558 = sext i32 %sub557 to i64
  %arrayidx559 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom558
  %pos_y560 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx559, i32 0, i32 5
  %327 = load i32, i32* %pos_y560, align 4
  %idxprom561 = sext i32 %327 to i64
  %328 = load i32, i32* %uv.addr, align 4
  %idxprom562 = sext i32 %328 to i64
  %329 = load i16***, i16**** %imgUV, align 8
  %arrayidx563 = getelementptr inbounds i16**, i16*** %329, i64 %idxprom562
  %330 = load i16**, i16*** %arrayidx563, align 8
  %arrayidx564 = getelementptr inbounds i16*, i16** %330, i64 %idxprom561
  %331 = load i16*, i16** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds i16, i16* %331, i64 %idxprom554
  %332 = load i16, i16* %arrayidx565, align 2
  %conv566 = zext i16 %332 to i32
  %sub567 = sub nsw i32 %conv547, %conv566
  %mul568 = mul nsw i32 %add528, %sub567
  %333 = load i32, i32* %iv, align 4
  %add569 = add nsw i32 %333, %mul568
  store i32 %add569, i32* %iv, align 4
  br label %for.inc.570

for.inc.570:                                      ; preds = %for.body.527
  %334 = load i32, i32* %i, align 4
  %inc571 = add nsw i32 %334, 1
  store i32 %inc571, i32* %i, align 4
  br label %for.cond.522

for.end.572:                                      ; preds = %for.cond.522
  %335 = load i32, i32* %cr_MB_x, align 4
  %cmp573 = icmp eq i32 %335, 8
  %cond575 = select i1 %cmp573, i32 17, i32 5
  %336 = load i32, i32* %ih, align 4
  %mul576 = mul nsw i32 %cond575, %336
  %337 = load i32, i32* %cr_MB_x, align 4
  %mul577 = mul nsw i32 2, %337
  %add578 = add nsw i32 %mul576, %mul577
  %338 = load i32, i32* %cr_MB_x, align 4
  %cmp579 = icmp eq i32 %338, 8
  %cond581 = select i1 %cmp579, i32 5, i32 6
  %shr582 = ashr i32 %add578, %cond581
  store i32 %shr582, i32* %ib, align 4
  %339 = load i32, i32* %cr_MB_y, align 4
  %cmp583 = icmp eq i32 %339, 8
  %cond585 = select i1 %cmp583, i32 17, i32 5
  %340 = load i32, i32* %iv, align 4
  %mul586 = mul nsw i32 %cond585, %340
  %341 = load i32, i32* %cr_MB_y, align 4
  %mul587 = mul nsw i32 2, %341
  %add588 = add nsw i32 %mul586, %mul587
  %342 = load i32, i32* %cr_MB_y, align 4
  %cmp589 = icmp eq i32 %342, 8
  %cond591 = select i1 %cmp589, i32 5, i32 6
  %shr592 = ashr i32 %add588, %cond591
  store i32 %shr592, i32* %ic, align 4
  %343 = load i32, i32* %cr_MB_y, align 4
  %idxprom593 = sext i32 %343 to i64
  %arrayidx594 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom593
  %pos_x595 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx594, i32 0, i32 4
  %344 = load i32, i32* %pos_x595, align 4
  %idxprom596 = sext i32 %344 to i64
  %345 = load i32, i32* %cr_MB_y, align 4
  %idxprom597 = sext i32 %345 to i64
  %arrayidx598 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom597
  %pos_y599 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx598, i32 0, i32 5
  %346 = load i32, i32* %pos_y599, align 4
  %idxprom600 = sext i32 %346 to i64
  %347 = load i32, i32* %uv.addr, align 4
  %idxprom601 = sext i32 %347 to i64
  %348 = load i16***, i16**** %imgUV, align 8
  %arrayidx602 = getelementptr inbounds i16**, i16*** %348, i64 %idxprom601
  %349 = load i16**, i16*** %arrayidx602, align 8
  %arrayidx603 = getelementptr inbounds i16*, i16** %349, i64 %idxprom600
  %350 = load i16*, i16** %arrayidx603, align 8
  %arrayidx604 = getelementptr inbounds i16, i16* %350, i64 %idxprom596
  %351 = load i16, i16* %arrayidx604, align 2
  %conv605 = zext i16 %351 to i32
  %pos_x606 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %352 = load i32, i32* %pos_x606, align 4
  %353 = load i32, i32* %cr_MB_x, align 4
  %add607 = add nsw i32 %352, %353
  %sub608 = sub nsw i32 %add607, 1
  %idxprom609 = sext i32 %sub608 to i64
  %pos_y610 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %354 = load i32, i32* %pos_y610, align 4
  %idxprom611 = sext i32 %354 to i64
  %355 = load i32, i32* %uv.addr, align 4
  %idxprom612 = sext i32 %355 to i64
  %356 = load i16***, i16**** %imgUV, align 8
  %arrayidx613 = getelementptr inbounds i16**, i16*** %356, i64 %idxprom612
  %357 = load i16**, i16*** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i16*, i16** %357, i64 %idxprom611
  %358 = load i16*, i16** %arrayidx614, align 8
  %arrayidx615 = getelementptr inbounds i16, i16* %358, i64 %idxprom609
  %359 = load i16, i16* %arrayidx615, align 2
  %conv616 = zext i16 %359 to i32
  %add617 = add nsw i32 %conv605, %conv616
  %mul618 = mul nsw i32 16, %add617
  store i32 %mul618, i32* %iaa, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.619

for.cond.619:                                     ; preds = %for.inc.647, %for.end.572
  %360 = load i32, i32* %j, align 4
  %361 = load i32, i32* %cr_MB_y, align 4
  %cmp620 = icmp slt i32 %360, %361
  br i1 %cmp620, label %for.body.622, label %for.end.649

for.body.622:                                     ; preds = %for.cond.619
  store i32 0, i32* %i, align 4
  br label %for.cond.623

for.cond.623:                                     ; preds = %for.inc.644, %for.body.622
  %362 = load i32, i32* %i, align 4
  %363 = load i32, i32* %cr_MB_x, align 4
  %cmp624 = icmp slt i32 %362, %363
  br i1 %cmp624, label %for.body.626, label %for.end.646

for.body.626:                                     ; preds = %for.cond.623
  %364 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %364, i32 0, i32 108
  %365 = load i32, i32* %max_imgpel_value_uv, align 4
  %366 = load i32, i32* %iaa, align 4
  %367 = load i32, i32* %i, align 4
  %368 = load i32, i32* %cr_MB_x, align 4
  %div627 = sdiv i32 %368, 2
  %sub628 = sub nsw i32 %367, %div627
  %add629 = add nsw i32 %sub628, 1
  %369 = load i32, i32* %ib, align 4
  %mul630 = mul nsw i32 %add629, %369
  %add631 = add nsw i32 %366, %mul630
  %370 = load i32, i32* %j, align 4
  %371 = load i32, i32* %cr_MB_y, align 4
  %div632 = sdiv i32 %371, 2
  %sub633 = sub nsw i32 %370, %div632
  %add634 = add nsw i32 %sub633, 1
  %372 = load i32, i32* %ic, align 4
  %mul635 = mul nsw i32 %add634, %372
  %add636 = add nsw i32 %add631, %mul635
  %add637 = add nsw i32 %add636, 16
  %shr638 = ashr i32 %add637, 5
  %call = call i32 @iClip1(i32 %365, i32 %shr638)
  %conv639 = trunc i32 %call to i16
  %373 = load i32, i32* %i, align 4
  %idxprom640 = sext i32 %373 to i64
  %374 = load i32, i32* %j, align 4
  %idxprom641 = sext i32 %374 to i64
  %375 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %375, i32 0, i32 25
  %arrayidx642 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom641
  %arrayidx643 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx642, i32 0, i64 %idxprom640
  store i16 %conv639, i16* %arrayidx643, align 2
  br label %for.inc.644

for.inc.644:                                      ; preds = %for.body.626
  %376 = load i32, i32* %i, align 4
  %inc645 = add nsw i32 %376, 1
  store i32 %inc645, i32* %i, align 4
  br label %for.cond.623

for.end.646:                                      ; preds = %for.cond.623
  br label %for.inc.647

for.inc.647:                                      ; preds = %for.end.646
  %377 = load i32, i32* %j, align 4
  %inc648 = add nsw i32 %377, 1
  store i32 %inc648, i32* %j, align 4
  br label %for.cond.619

for.end.649:                                      ; preds = %for.cond.619
  br label %if.end.831

if.else.650:                                      ; preds = %if.end.418
  %378 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %c_ipred_mode651 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %378, i32 0, i32 19
  %379 = load i32, i32* %c_ipred_mode651, align 4
  switch i32 %379, label %sw.default [
    i32 0, label %sw.bb.652
    i32 1, label %sw.bb.709
    i32 2, label %sw.bb.774
  ]

sw.bb.652:                                        ; preds = %if.else.650
  store i32 0, i32* %b8, align 4
  br label %for.cond.653

for.cond.653:                                     ; preds = %for.inc.706, %sw.bb.652
  %380 = load i32, i32* %b8, align 4
  %381 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %num_blk8x8_uv654 = getelementptr inbounds %struct.img_par, %struct.img_par* %381, i32 0, i32 113
  %382 = load i32, i32* %num_blk8x8_uv654, align 4
  %div655 = sdiv i32 %382, 2
  %cmp656 = icmp slt i32 %380, %div655
  br i1 %cmp656, label %for.body.658, label %for.end.708

for.body.658:                                     ; preds = %for.cond.653
  store i32 0, i32* %b4, align 4
  br label %for.cond.659

for.cond.659:                                     ; preds = %for.inc.703, %for.body.658
  %383 = load i32, i32* %b4, align 4
  %cmp660 = icmp slt i32 %383, 4
  br i1 %cmp660, label %for.body.662, label %for.end.705

for.body.662:                                     ; preds = %for.cond.659
  %384 = load i32, i32* %b4, align 4
  %idxprom663 = sext i32 %384 to i64
  %385 = load i32, i32* %b8, align 4
  %idxprom664 = sext i32 %385 to i64
  %386 = load i32, i32* %yuv, align 4
  %idxprom665 = sext i32 %386 to i64
  %arrayidx666 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_y, i32 0, i64 %idxprom665
  %arrayidx667 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx666, i32 0, i64 %idxprom664
  %arrayidx668 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx667, i32 0, i64 %idxprom663
  %387 = load i8, i8* %arrayidx668, align 1
  %conv669 = zext i8 %387 to i32
  store i32 %conv669, i32* %joff, align 4
  %388 = load i32, i32* %b4, align 4
  %idxprom670 = sext i32 %388 to i64
  %389 = load i32, i32* %b8, align 4
  %idxprom671 = sext i32 %389 to i64
  %390 = load i32, i32* %yuv, align 4
  %idxprom672 = sext i32 %390 to i64
  %arrayidx673 = getelementptr inbounds [3 x [8 x [4 x i8]]], [3 x [8 x [4 x i8]]]* @subblk_offset_x, i32 0, i64 %idxprom672
  %arrayidx674 = getelementptr inbounds [8 x [4 x i8]], [8 x [4 x i8]]* %arrayidx673, i32 0, i64 %idxprom671
  %arrayidx675 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx674, i32 0, i64 %idxprom670
  %391 = load i8, i8* %arrayidx675, align 1
  %conv676 = zext i8 %391 to i32
  store i32 %conv676, i32* %ioff, align 4
  %392 = load i32, i32* %joff, align 4
  store i32 %392, i32* %jj, align 4
  br label %for.cond.677

for.cond.677:                                     ; preds = %for.inc.700, %for.body.662
  %393 = load i32, i32* %jj, align 4
  %394 = load i32, i32* %joff, align 4
  %add678 = add nsw i32 %394, 4
  %cmp679 = icmp slt i32 %393, %add678
  br i1 %cmp679, label %for.body.681, label %for.end.702

for.body.681:                                     ; preds = %for.cond.677
  %395 = load i32, i32* %ioff, align 4
  store i32 %395, i32* %ii, align 4
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.697, %for.body.681
  %396 = load i32, i32* %ii, align 4
  %397 = load i32, i32* %ioff, align 4
  %add683 = add nsw i32 %397, 4
  %cmp684 = icmp slt i32 %396, %add683
  br i1 %cmp684, label %for.body.686, label %for.end.699

for.body.686:                                     ; preds = %for.cond.682
  %398 = load i32, i32* %b4, align 4
  %idxprom687 = sext i32 %398 to i64
  %399 = load i32, i32* %b8, align 4
  %idxprom688 = sext i32 %399 to i64
  %arrayidx689 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %js, i32 0, i64 %idxprom688
  %arrayidx690 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx689, i32 0, i64 %idxprom687
  %400 = load i32, i32* %arrayidx690, align 4
  %conv691 = trunc i32 %400 to i16
  %401 = load i32, i32* %ii, align 4
  %idxprom692 = sext i32 %401 to i64
  %402 = load i32, i32* %jj, align 4
  %idxprom693 = sext i32 %402 to i64
  %403 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr694 = getelementptr inbounds %struct.img_par, %struct.img_par* %403, i32 0, i32 25
  %arrayidx695 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr694, i32 0, i64 %idxprom693
  %arrayidx696 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx695, i32 0, i64 %idxprom692
  store i16 %conv691, i16* %arrayidx696, align 2
  br label %for.inc.697

for.inc.697:                                      ; preds = %for.body.686
  %404 = load i32, i32* %ii, align 4
  %inc698 = add nsw i32 %404, 1
  store i32 %inc698, i32* %ii, align 4
  br label %for.cond.682

for.end.699:                                      ; preds = %for.cond.682
  br label %for.inc.700

for.inc.700:                                      ; preds = %for.end.699
  %405 = load i32, i32* %jj, align 4
  %inc701 = add nsw i32 %405, 1
  store i32 %inc701, i32* %jj, align 4
  br label %for.cond.677

for.end.702:                                      ; preds = %for.cond.677
  br label %for.inc.703

for.inc.703:                                      ; preds = %for.end.702
  %406 = load i32, i32* %b4, align 4
  %inc704 = add nsw i32 %406, 1
  store i32 %inc704, i32* %b4, align 4
  br label %for.cond.659

for.end.705:                                      ; preds = %for.cond.659
  br label %for.inc.706

for.inc.706:                                      ; preds = %for.end.705
  %407 = load i32, i32* %b8, align 4
  %inc707 = add nsw i32 %407, 1
  store i32 %inc707, i32* %b8, align 4
  br label %for.cond.653

for.end.708:                                      ; preds = %for.cond.653
  br label %sw.epilog.830

sw.bb.709:                                        ; preds = %if.else.650
  %arrayidx710 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 0
  %408 = load i32, i32* %arrayidx710, align 4
  %tobool711 = icmp ne i32 %408, 0
  br i1 %tobool711, label %lor.lhs.false.712, label %if.then.715

lor.lhs.false.712:                                ; preds = %sw.bb.709
  %arrayidx713 = getelementptr inbounds [2 x i32], [2 x i32]* %left_avail, i32 0, i64 1
  %409 = load i32, i32* %arrayidx713, align 4
  %tobool714 = icmp ne i32 %409, 0
  br i1 %tobool714, label %if.end.716, label %if.then.715

if.then.715:                                      ; preds = %lor.lhs.false.712, %sw.bb.709
  call void @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i32 0, i32 0), i32 -1)
  br label %if.end.716

if.end.716:                                       ; preds = %if.then.715, %lor.lhs.false.712
  store i32 0, i32* %j, align 4
  br label %for.cond.717

for.cond.717:                                     ; preds = %for.inc.771, %if.end.716
  %410 = load i32, i32* %j, align 4
  %cmp718 = icmp slt i32 %410, 2
  br i1 %cmp718, label %for.body.720, label %for.end.773

for.body.720:                                     ; preds = %for.cond.717
  %411 = load i32, i32* %j, align 4
  %412 = load i32, i32* %cr_MB_y, align 4
  %mul721 = mul nsw i32 %411, %412
  %div722 = sdiv i32 %mul721, 2
  store i32 %div722, i32* %joff, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.723

for.cond.723:                                     ; preds = %for.inc.768, %for.body.720
  %413 = load i32, i32* %i, align 4
  %cmp724 = icmp slt i32 %413, 2
  br i1 %cmp724, label %for.body.726, label %for.end.770

for.body.726:                                     ; preds = %for.cond.723
  %414 = load i32, i32* %i, align 4
  %415 = load i32, i32* %cr_MB_x, align 4
  %mul727 = mul nsw i32 %414, %415
  %div728 = sdiv i32 %mul727, 2
  store i32 %div728, i32* %ioff, align 4
  %416 = load i32, i32* %joff, align 4
  store i32 %416, i32* %jj, align 4
  br label %for.cond.729

for.cond.729:                                     ; preds = %for.inc.765, %for.body.726
  %417 = load i32, i32* %jj, align 4
  %418 = load i32, i32* %joff, align 4
  %419 = load i32, i32* %cr_MB_y, align 4
  %div730 = sdiv i32 %419, 2
  %add731 = add nsw i32 %418, %div730
  %cmp732 = icmp slt i32 %417, %add731
  br i1 %cmp732, label %for.body.734, label %for.end.767

for.body.734:                                     ; preds = %for.cond.729
  %420 = load i32, i32* %jj, align 4
  %add735 = add nsw i32 1, %420
  %idxprom736 = sext i32 %add735 to i64
  %arrayidx737 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom736
  %pos_x738 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx737, i32 0, i32 4
  %421 = load i32, i32* %pos_x738, align 4
  %idxprom739 = sext i32 %421 to i64
  %422 = load i32, i32* %jj, align 4
  %add740 = add nsw i32 1, %422
  %idxprom741 = sext i32 %add740 to i64
  %arrayidx742 = getelementptr inbounds [17 x %struct.pix_pos], [17 x %struct.pix_pos]* %left, i32 0, i64 %idxprom741
  %pos_y743 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx742, i32 0, i32 5
  %423 = load i32, i32* %pos_y743, align 4
  %idxprom744 = sext i32 %423 to i64
  %424 = load i32, i32* %uv.addr, align 4
  %idxprom745 = sext i32 %424 to i64
  %425 = load i16***, i16**** %imgUV, align 8
  %arrayidx746 = getelementptr inbounds i16**, i16*** %425, i64 %idxprom745
  %426 = load i16**, i16*** %arrayidx746, align 8
  %arrayidx747 = getelementptr inbounds i16*, i16** %426, i64 %idxprom744
  %427 = load i16*, i16** %arrayidx747, align 8
  %arrayidx748 = getelementptr inbounds i16, i16* %427, i64 %idxprom739
  %428 = load i16, i16* %arrayidx748, align 2
  %conv749 = zext i16 %428 to i32
  store i32 %conv749, i32* %pred, align 4
  %429 = load i32, i32* %ioff, align 4
  store i32 %429, i32* %ii, align 4
  br label %for.cond.750

for.cond.750:                                     ; preds = %for.inc.762, %for.body.734
  %430 = load i32, i32* %ii, align 4
  %431 = load i32, i32* %ioff, align 4
  %432 = load i32, i32* %cr_MB_x, align 4
  %div751 = sdiv i32 %432, 2
  %add752 = add nsw i32 %431, %div751
  %cmp753 = icmp slt i32 %430, %add752
  br i1 %cmp753, label %for.body.755, label %for.end.764

for.body.755:                                     ; preds = %for.cond.750
  %433 = load i32, i32* %pred, align 4
  %conv756 = trunc i32 %433 to i16
  %434 = load i32, i32* %ii, align 4
  %idxprom757 = sext i32 %434 to i64
  %435 = load i32, i32* %jj, align 4
  %idxprom758 = sext i32 %435 to i64
  %436 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr759 = getelementptr inbounds %struct.img_par, %struct.img_par* %436, i32 0, i32 25
  %arrayidx760 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr759, i32 0, i64 %idxprom758
  %arrayidx761 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx760, i32 0, i64 %idxprom757
  store i16 %conv756, i16* %arrayidx761, align 2
  br label %for.inc.762

for.inc.762:                                      ; preds = %for.body.755
  %437 = load i32, i32* %ii, align 4
  %inc763 = add nsw i32 %437, 1
  store i32 %inc763, i32* %ii, align 4
  br label %for.cond.750

for.end.764:                                      ; preds = %for.cond.750
  br label %for.inc.765

for.inc.765:                                      ; preds = %for.end.764
  %438 = load i32, i32* %jj, align 4
  %inc766 = add nsw i32 %438, 1
  store i32 %inc766, i32* %jj, align 4
  br label %for.cond.729

for.end.767:                                      ; preds = %for.cond.729
  br label %for.inc.768

for.inc.768:                                      ; preds = %for.end.767
  %439 = load i32, i32* %i, align 4
  %inc769 = add nsw i32 %439, 1
  store i32 %inc769, i32* %i, align 4
  br label %for.cond.723

for.end.770:                                      ; preds = %for.cond.723
  br label %for.inc.771

for.inc.771:                                      ; preds = %for.end.770
  %440 = load i32, i32* %j, align 4
  %inc772 = add nsw i32 %440, 1
  store i32 %inc772, i32* %j, align 4
  br label %for.cond.717

for.end.773:                                      ; preds = %for.cond.717
  br label %sw.epilog.830

sw.bb.774:                                        ; preds = %if.else.650
  %441 = load i32, i32* %up_avail, align 4
  %tobool775 = icmp ne i32 %441, 0
  br i1 %tobool775, label %if.end.777, label %if.then.776

if.then.776:                                      ; preds = %sw.bb.774
  call void @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i32 -1)
  br label %if.end.777

if.end.777:                                       ; preds = %if.then.776, %sw.bb.774
  store i32 0, i32* %j, align 4
  br label %for.cond.778

for.cond.778:                                     ; preds = %for.inc.827, %if.end.777
  %442 = load i32, i32* %j, align 4
  %cmp779 = icmp slt i32 %442, 2
  br i1 %cmp779, label %for.body.781, label %for.end.829

for.body.781:                                     ; preds = %for.cond.778
  %443 = load i32, i32* %j, align 4
  %444 = load i32, i32* %cr_MB_y, align 4
  %mul782 = mul nsw i32 %443, %444
  %div783 = sdiv i32 %mul782, 2
  store i32 %div783, i32* %joff, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.784

for.cond.784:                                     ; preds = %for.inc.824, %for.body.781
  %445 = load i32, i32* %i, align 4
  %cmp785 = icmp slt i32 %445, 2
  br i1 %cmp785, label %for.body.787, label %for.end.826

for.body.787:                                     ; preds = %for.cond.784
  %446 = load i32, i32* %i, align 4
  %447 = load i32, i32* %cr_MB_x, align 4
  %mul788 = mul nsw i32 %446, %447
  %div789 = sdiv i32 %mul788, 2
  store i32 %div789, i32* %ioff, align 4
  %448 = load i32, i32* %ioff, align 4
  store i32 %448, i32* %ii, align 4
  br label %for.cond.790

for.cond.790:                                     ; preds = %for.inc.821, %for.body.787
  %449 = load i32, i32* %ii, align 4
  %450 = load i32, i32* %ioff, align 4
  %451 = load i32, i32* %cr_MB_x, align 4
  %div791 = sdiv i32 %451, 2
  %add792 = add nsw i32 %450, %div791
  %cmp793 = icmp slt i32 %449, %add792
  br i1 %cmp793, label %for.body.795, label %for.end.823

for.body.795:                                     ; preds = %for.cond.790
  %pos_x796 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 4
  %452 = load i32, i32* %pos_x796, align 4
  %453 = load i32, i32* %ii, align 4
  %add797 = add nsw i32 %452, %453
  %idxprom798 = sext i32 %add797 to i64
  %pos_y799 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %up, i32 0, i32 5
  %454 = load i32, i32* %pos_y799, align 4
  %idxprom800 = sext i32 %454 to i64
  %455 = load i32, i32* %uv.addr, align 4
  %idxprom801 = sext i32 %455 to i64
  %456 = load i16***, i16**** %imgUV, align 8
  %arrayidx802 = getelementptr inbounds i16**, i16*** %456, i64 %idxprom801
  %457 = load i16**, i16*** %arrayidx802, align 8
  %arrayidx803 = getelementptr inbounds i16*, i16** %457, i64 %idxprom800
  %458 = load i16*, i16** %arrayidx803, align 8
  %arrayidx804 = getelementptr inbounds i16, i16* %458, i64 %idxprom798
  %459 = load i16, i16* %arrayidx804, align 2
  %conv805 = zext i16 %459 to i32
  store i32 %conv805, i32* %pred, align 4
  %460 = load i32, i32* %joff, align 4
  store i32 %460, i32* %jj, align 4
  br label %for.cond.806

for.cond.806:                                     ; preds = %for.inc.818, %for.body.795
  %461 = load i32, i32* %jj, align 4
  %462 = load i32, i32* %joff, align 4
  %463 = load i32, i32* %cr_MB_y, align 4
  %div807 = sdiv i32 %463, 2
  %add808 = add nsw i32 %462, %div807
  %cmp809 = icmp slt i32 %461, %add808
  br i1 %cmp809, label %for.body.811, label %for.end.820

for.body.811:                                     ; preds = %for.cond.806
  %464 = load i32, i32* %pred, align 4
  %conv812 = trunc i32 %464 to i16
  %465 = load i32, i32* %ii, align 4
  %idxprom813 = sext i32 %465 to i64
  %466 = load i32, i32* %jj, align 4
  %idxprom814 = sext i32 %466 to i64
  %467 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr815 = getelementptr inbounds %struct.img_par, %struct.img_par* %467, i32 0, i32 25
  %arrayidx816 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr815, i32 0, i64 %idxprom814
  %arrayidx817 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx816, i32 0, i64 %idxprom813
  store i16 %conv812, i16* %arrayidx817, align 2
  br label %for.inc.818

for.inc.818:                                      ; preds = %for.body.811
  %468 = load i32, i32* %jj, align 4
  %inc819 = add nsw i32 %468, 1
  store i32 %inc819, i32* %jj, align 4
  br label %for.cond.806

for.end.820:                                      ; preds = %for.cond.806
  br label %for.inc.821

for.inc.821:                                      ; preds = %for.end.820
  %469 = load i32, i32* %ii, align 4
  %inc822 = add nsw i32 %469, 1
  store i32 %inc822, i32* %ii, align 4
  br label %for.cond.790

for.end.823:                                      ; preds = %for.cond.790
  br label %for.inc.824

for.inc.824:                                      ; preds = %for.end.823
  %470 = load i32, i32* %i, align 4
  %inc825 = add nsw i32 %470, 1
  store i32 %inc825, i32* %i, align 4
  br label %for.cond.784

for.end.826:                                      ; preds = %for.cond.784
  br label %for.inc.827

for.inc.827:                                      ; preds = %for.end.826
  %471 = load i32, i32* %j, align 4
  %inc828 = add nsw i32 %471, 1
  store i32 %inc828, i32* %j, align 4
  br label %for.cond.778

for.end.829:                                      ; preds = %for.cond.778
  br label %sw.epilog.830

sw.default:                                       ; preds = %if.else.650
  call void @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), i32 600)
  br label %sw.epilog.830

sw.epilog.830:                                    ; preds = %sw.default, %for.end.829, %for.end.773, %for.end.708
  br label %if.end.831

if.end.831:                                       ; preds = %sw.epilog.830, %for.end.649
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @itrans(%struct.img_par* %img, i32 %ioff, i32 %joff, i32 %i0, i32 %j0, i32 %chroma) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %ioff.addr = alloca i32, align 4
  %joff.addr = alloca i32, align 4
  %i0.addr = alloca i32, align 4
  %j0.addr = alloca i32, align 4
  %chroma.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %lossless_qpprime = alloca i32, align 4
  %max_imgpel_value = alloca i32, align 4
  %ipos = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %ioff, i32* %ioff.addr, align 4
  store i32 %joff, i32* %joff.addr, align 4
  store i32 %i0, i32* %i0.addr, align 4
  store i32 %j0, i32* %j0.addr, align 4
  store i32 %chroma, i32* %chroma.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 6
  %1 = load i32, i32* %qp, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 103
  %3 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %add = add nsw i32 %1, %3
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 112
  %5 = load i32, i32* %lossless_qpprime_flag, align 4
  %cmp1 = icmp eq i32 %5, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  store i32 %land.ext, i32* %lossless_qpprime, align 4
  %7 = load i32, i32* %chroma.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %8 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.img_par, %struct.img_par* %8, i32 0, i32 108
  %9 = load i32, i32* %max_imgpel_value_uv, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.end
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value2 = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 107
  %11 = load i32, i32* %max_imgpel_value2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %max_imgpel_value, align 4
  %12 = load i32, i32* %lossless_qpprime, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %13, 4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %14 = bitcast i32* %arrayidx to i8*
  %15 = load i32, i32* %j, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load i32, i32* %j0.addr, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load i32, i32* %i0.addr, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof = getelementptr inbounds %struct.img_par, %struct.img_par* %18, i32 0, i32 28
  %arrayidx7 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx7, i32 0, i64 %idxprom5
  %arrayidx9 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx8, i32 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx9, i32 0, i64 0
  %19 = bitcast i32* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %19, i64 16, i32 4, i1 false)
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %20 = load i32, i32* %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %21 = load i32, i32* %arrayidx12, align 4
  %add13 = add nsw i32 %20, %21
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  store i32 %add13, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %22 = load i32, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %23 = load i32, i32* %arrayidx16, align 4
  %sub = sub nsw i32 %22, %23
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  store i32 %sub, i32* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %24 = load i32, i32* %arrayidx18, align 4
  %shr = ashr i32 %24, 1
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %25 = load i32, i32* %arrayidx19, align 4
  %sub20 = sub nsw i32 %shr, %25
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  store i32 %sub20, i32* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %26 = load i32, i32* %arrayidx22, align 4
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %27 = load i32, i32* %arrayidx23, align 4
  %shr24 = ashr i32 %27, 1
  %add25 = add nsw i32 %26, %shr24
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  store i32 %add25, i32* %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  %28 = load i32, i32* %arrayidx27, align 4
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  %29 = load i32, i32* %arrayidx28, align 4
  %add29 = add nsw i32 %28, %29
  %30 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7 = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 27
  %arrayidx31 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx31, i32 0, i64 0
  store i32 %add29, i32* %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  %32 = load i32, i32* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  %33 = load i32, i32* %arrayidx34, align 4
  %sub35 = sub nsw i32 %32, %33
  %34 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %34 to i64
  %35 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m737 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 27
  %arrayidx38 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m737, i32 0, i64 %idxprom36
  %arrayidx39 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx38, i32 0, i64 3
  store i32 %sub35, i32* %arrayidx39, align 4
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  %36 = load i32, i32* %arrayidx40, align 4
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  %37 = load i32, i32* %arrayidx41, align 4
  %add42 = add nsw i32 %36, %37
  %38 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %38 to i64
  %39 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m744 = getelementptr inbounds %struct.img_par, %struct.img_par* %39, i32 0, i32 27
  %arrayidx45 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m744, i32 0, i64 %idxprom43
  %arrayidx46 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx45, i32 0, i64 1
  store i32 %add42, i32* %arrayidx46, align 4
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  %40 = load i32, i32* %arrayidx47, align 4
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  %41 = load i32, i32* %arrayidx48, align 4
  %sub49 = sub nsw i32 %40, %41
  %42 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m751 = getelementptr inbounds %struct.img_par, %struct.img_par* %43, i32 0, i32 27
  %arrayidx52 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m751, i32 0, i64 %idxprom50
  %arrayidx53 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx52, i32 0, i64 2
  store i32 %sub49, i32* %arrayidx53, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %j, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.171, %for.end
  %45 = load i32, i32* %i, align 4
  %cmp55 = icmp slt i32 %45, 4
  br i1 %cmp55, label %for.body.56, label %for.end.173

for.body.56:                                      ; preds = %for.cond.54
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %ioff.addr, align 4
  %add57 = add nsw i32 %46, %47
  store i32 %add57, i32* %ipos, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %48 to i64
  %49 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m759 = getelementptr inbounds %struct.img_par, %struct.img_par* %49, i32 0, i32 27
  %arrayidx60 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m759, i32 0, i64 0
  %arrayidx61 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx60, i32 0, i64 %idxprom58
  %50 = load i32, i32* %arrayidx61, align 4
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  store i32 %50, i32* %arrayidx62, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %51 to i64
  %52 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m764 = getelementptr inbounds %struct.img_par, %struct.img_par* %52, i32 0, i32 27
  %arrayidx65 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m764, i32 0, i64 1
  %arrayidx66 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx65, i32 0, i64 %idxprom63
  %53 = load i32, i32* %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  store i32 %53, i32* %arrayidx67, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %54 to i64
  %55 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m769 = getelementptr inbounds %struct.img_par, %struct.img_par* %55, i32 0, i32 27
  %arrayidx70 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m769, i32 0, i64 2
  %arrayidx71 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx70, i32 0, i64 %idxprom68
  %56 = load i32, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  store i32 %56, i32* %arrayidx72, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %57 to i64
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m774 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 27
  %arrayidx75 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m774, i32 0, i64 3
  %arrayidx76 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx75, i32 0, i64 %idxprom73
  %59 = load i32, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  store i32 %59, i32* %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %60 = load i32, i32* %arrayidx78, align 4
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %61 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %60, %61
  %arrayidx81 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  store i32 %add80, i32* %arrayidx81, align 4
  %arrayidx82 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %62 = load i32, i32* %arrayidx82, align 4
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %63 = load i32, i32* %arrayidx83, align 4
  %sub84 = sub nsw i32 %62, %63
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  store i32 %sub84, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %64 = load i32, i32* %arrayidx86, align 4
  %shr87 = ashr i32 %64, 1
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %65 = load i32, i32* %arrayidx88, align 4
  %sub89 = sub nsw i32 %shr87, %65
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  store i32 %sub89, i32* %arrayidx90, align 4
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %66 = load i32, i32* %arrayidx91, align 4
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %67 = load i32, i32* %arrayidx92, align 4
  %shr93 = ashr i32 %67, 1
  %add94 = add nsw i32 %66, %shr93
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  store i32 %add94, i32* %arrayidx95, align 4
  %68 = load i32, i32* %max_imgpel_value, align 4
  %arrayidx96 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  %69 = load i32, i32* %arrayidx96, align 4
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  %70 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %69, %70
  %conv = sext i32 %add98 to i64
  %71 = load i32, i32* %ipos, align 4
  %idxprom99 = sext i32 %71 to i64
  %72 = load i32, i32* %joff.addr, align 4
  %idxprom100 = sext i32 %72 to i64
  %73 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %73, i32 0, i32 25
  %arrayidx101 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx101, i32 0, i64 %idxprom99
  %74 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %74 to i64
  %shl = shl i64 %conv103, 6
  %add104 = add nsw i64 %conv, %shl
  %conv105 = trunc i64 %add104 to i32
  %call = call i32 @rshift_rnd_sf(i32 %conv105, i32 6)
  %call106 = call i32 @iClip1(i32 %68, i32 %call)
  %75 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %75 to i64
  %76 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7108 = getelementptr inbounds %struct.img_par, %struct.img_par* %76, i32 0, i32 27
  %arrayidx109 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7108, i32 0, i64 0
  %arrayidx110 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx109, i32 0, i64 %idxprom107
  store i32 %call106, i32* %arrayidx110, align 4
  %77 = load i32, i32* %max_imgpel_value, align 4
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  %78 = load i32, i32* %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  %79 = load i32, i32* %arrayidx112, align 4
  %add113 = add nsw i32 %78, %79
  %conv114 = sext i32 %add113 to i64
  %80 = load i32, i32* %ipos, align 4
  %idxprom115 = sext i32 %80 to i64
  %81 = load i32, i32* %joff.addr, align 4
  %add116 = add nsw i32 1, %81
  %idxprom117 = sext i32 %add116 to i64
  %82 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr118 = getelementptr inbounds %struct.img_par, %struct.img_par* %82, i32 0, i32 25
  %arrayidx119 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr118, i32 0, i64 %idxprom117
  %arrayidx120 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx119, i32 0, i64 %idxprom115
  %83 = load i16, i16* %arrayidx120, align 2
  %conv121 = zext i16 %83 to i64
  %shl122 = shl i64 %conv121, 6
  %add123 = add nsw i64 %conv114, %shl122
  %conv124 = trunc i64 %add123 to i32
  %call125 = call i32 @rshift_rnd_sf(i32 %conv124, i32 6)
  %call126 = call i32 @iClip1(i32 %77, i32 %call125)
  %84 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %84 to i64
  %85 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7128 = getelementptr inbounds %struct.img_par, %struct.img_par* %85, i32 0, i32 27
  %arrayidx129 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7128, i32 0, i64 1
  %arrayidx130 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx129, i32 0, i64 %idxprom127
  store i32 %call126, i32* %arrayidx130, align 4
  %86 = load i32, i32* %max_imgpel_value, align 4
  %arrayidx131 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  %87 = load i32, i32* %arrayidx131, align 4
  %arrayidx132 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  %88 = load i32, i32* %arrayidx132, align 4
  %sub133 = sub nsw i32 %87, %88
  %conv134 = sext i32 %sub133 to i64
  %89 = load i32, i32* %ipos, align 4
  %idxprom135 = sext i32 %89 to i64
  %90 = load i32, i32* %joff.addr, align 4
  %add136 = add nsw i32 2, %90
  %idxprom137 = sext i32 %add136 to i64
  %91 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr138 = getelementptr inbounds %struct.img_par, %struct.img_par* %91, i32 0, i32 25
  %arrayidx139 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr138, i32 0, i64 %idxprom137
  %arrayidx140 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx139, i32 0, i64 %idxprom135
  %92 = load i16, i16* %arrayidx140, align 2
  %conv141 = zext i16 %92 to i64
  %shl142 = shl i64 %conv141, 6
  %add143 = add nsw i64 %conv134, %shl142
  %conv144 = trunc i64 %add143 to i32
  %call145 = call i32 @rshift_rnd_sf(i32 %conv144, i32 6)
  %call146 = call i32 @iClip1(i32 %86, i32 %call145)
  %93 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %93 to i64
  %94 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7148 = getelementptr inbounds %struct.img_par, %struct.img_par* %94, i32 0, i32 27
  %arrayidx149 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7148, i32 0, i64 2
  %arrayidx150 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx149, i32 0, i64 %idxprom147
  store i32 %call146, i32* %arrayidx150, align 4
  %95 = load i32, i32* %max_imgpel_value, align 4
  %arrayidx151 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  %96 = load i32, i32* %arrayidx151, align 4
  %arrayidx152 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  %97 = load i32, i32* %arrayidx152, align 4
  %sub153 = sub nsw i32 %96, %97
  %conv154 = sext i32 %sub153 to i64
  %98 = load i32, i32* %ipos, align 4
  %idxprom155 = sext i32 %98 to i64
  %99 = load i32, i32* %joff.addr, align 4
  %add156 = add nsw i32 3, %99
  %idxprom157 = sext i32 %add156 to i64
  %100 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr158 = getelementptr inbounds %struct.img_par, %struct.img_par* %100, i32 0, i32 25
  %arrayidx159 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr158, i32 0, i64 %idxprom157
  %arrayidx160 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx159, i32 0, i64 %idxprom155
  %101 = load i16, i16* %arrayidx160, align 2
  %conv161 = zext i16 %101 to i64
  %shl162 = shl i64 %conv161, 6
  %add163 = add nsw i64 %conv154, %shl162
  %conv164 = trunc i64 %add163 to i32
  %call165 = call i32 @rshift_rnd_sf(i32 %conv164, i32 6)
  %call166 = call i32 @iClip1(i32 %95, i32 %call165)
  %102 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %102 to i64
  %103 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7168 = getelementptr inbounds %struct.img_par, %struct.img_par* %103, i32 0, i32 27
  %arrayidx169 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7168, i32 0, i64 3
  %arrayidx170 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx169, i32 0, i64 %idxprom167
  store i32 %call166, i32* %arrayidx170, align 4
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.56
  %104 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %104, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.54

for.end.173:                                      ; preds = %for.cond.54
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %j, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.211, %if.else
  %105 = load i32, i32* %j, align 4
  %cmp175 = icmp slt i32 %105, 4
  br i1 %cmp175, label %for.body.177, label %for.end.213

for.body.177:                                     ; preds = %for.cond.174
  store i32 0, i32* %i, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.208, %for.body.177
  %106 = load i32, i32* %i, align 4
  %cmp179 = icmp slt i32 %106, 4
  br i1 %cmp179, label %for.body.181, label %for.end.210

for.body.181:                                     ; preds = %for.cond.178
  %107 = load i32, i32* %max_imgpel_value, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %109 to i64
  %110 = load i32, i32* %j0.addr, align 4
  %idxprom184 = sext i32 %110 to i64
  %111 = load i32, i32* %i0.addr, align 4
  %idxprom185 = sext i32 %111 to i64
  %112 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof186 = getelementptr inbounds %struct.img_par, %struct.img_par* %112, i32 0, i32 28
  %arrayidx187 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof186, i32 0, i64 %idxprom185
  %arrayidx188 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx187, i32 0, i64 %idxprom184
  %arrayidx189 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx188, i32 0, i64 %idxprom183
  %arrayidx190 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx189, i32 0, i64 %idxprom182
  %113 = load i32, i32* %arrayidx190, align 4
  %conv191 = sext i32 %113 to i64
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %ioff.addr, align 4
  %add192 = add nsw i32 %114, %115
  %idxprom193 = sext i32 %add192 to i64
  %116 = load i32, i32* %j, align 4
  %117 = load i32, i32* %joff.addr, align 4
  %add194 = add nsw i32 %116, %117
  %idxprom195 = sext i32 %add194 to i64
  %118 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr196 = getelementptr inbounds %struct.img_par, %struct.img_par* %118, i32 0, i32 25
  %arrayidx197 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr196, i32 0, i64 %idxprom195
  %arrayidx198 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx197, i32 0, i64 %idxprom193
  %119 = load i16, i16* %arrayidx198, align 2
  %conv199 = zext i16 %119 to i64
  %add200 = add nsw i64 %conv191, %conv199
  %conv201 = trunc i64 %add200 to i32
  %call202 = call i32 @iClip1(i32 %107, i32 %conv201)
  %120 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %120 to i64
  %121 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %121 to i64
  %122 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7205 = getelementptr inbounds %struct.img_par, %struct.img_par* %122, i32 0, i32 27
  %arrayidx206 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7205, i32 0, i64 %idxprom204
  %arrayidx207 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx206, i32 0, i64 %idxprom203
  store i32 %call202, i32* %arrayidx207, align 4
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.body.181
  %123 = load i32, i32* %i, align 4
  %inc209 = add nsw i32 %123, 1
  store i32 %inc209, i32* %i, align 4
  br label %for.cond.178

for.end.210:                                      ; preds = %for.cond.178
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.end.210
  %124 = load i32, i32* %j, align 4
  %inc212 = add nsw i32 %124, 1
  store i32 %inc212, i32* %j, align 4
  br label %for.cond.174

for.end.213:                                      ; preds = %for.cond.174
  br label %if.end

if.end:                                           ; preds = %for.end.213, %for.end.173
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rshift_rnd_sf(i32 %x, i32 %a) #2 {
entry:
  %x.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %1, 1
  %shl = shl i32 1, %sub
  %add = add nsw i32 %0, %shl
  %2 = load i32, i32* %a.addr, align 4
  %shr = ashr i32 %add, %2
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define void @AssignQuantParam(%struct.pic_parameter_set_rbsp_t* %pps, %struct.seq_parameter_set_rbsp_t* %sps) #0 {
entry:
  %pps.addr = alloca %struct.pic_parameter_set_rbsp_t*, align 8
  %sps.addr = alloca %struct.seq_parameter_set_rbsp_t*, align 8
  %i = alloca i32, align 4
  store %struct.pic_parameter_set_rbsp_t* %pps, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  store %struct.seq_parameter_set_rbsp_t* %sps, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 5
  %1 = load i32, i32* %pic_scaling_matrix_present_flag, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %2, i32 0, i32 9
  %3 = load i32, i32* %seq_scaling_matrix_present_flag, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 6
  %cond = select i1 %cmp2, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_org, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @quant8_org, i32 0, i32 0)
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom
  store i32* %cond, i32** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.161

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag3 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %8, i32 0, i32 9
  %9 = load i32, i32* %seq_scaling_matrix_present_flag3, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.70

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.67, %if.then.5
  %10 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %10, 8
  br i1 %cmp7, label %for.body.8, label %for.end.69

for.body.8:                                       ; preds = %for.cond.6
  %11 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %11, 6
  br i1 %cmp9, label %if.then.10, label %if.else.43

if.then.10:                                       ; preds = %for.body.8
  %12 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %13, i32 0, i32 10
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag, i32 0, i64 %idxprom11
  %14 = load i32, i32* %arrayidx12, align 4
  %tobool13 = icmp ne i32 %14, 0
  br i1 %tobool13, label %if.else.27, label %if.then.14

if.then.14:                                       ; preds = %if.then.10
  %15 = load i32, i32* %i, align 4
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.14
  %16 = load i32, i32* %i, align 4
  %cmp16 = icmp eq i32 %16, 3
  br i1 %cmp16, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %lor.lhs.false, %if.then.14
  %17 = load i32, i32* %i, align 4
  %cmp18 = icmp eq i32 %17, 0
  %cond19 = select i1 %cmp18, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_intra_default, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_inter_default, i32 0, i32 0)
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom20
  store i32* %cond19, i32** %arrayidx21, align 8
  br label %if.end

if.else.22:                                       ; preds = %lor.lhs.false
  %19 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom23
  %20 = load i32*, i32** %arrayidx24, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom25
  store i32* %20, i32** %arrayidx26, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.17
  br label %if.end.42

if.else.27:                                       ; preds = %if.then.10
  %22 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %UseDefaultScalingMatrix4x4Flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %23, i32 0, i32 13
  %arrayidx29 = getelementptr inbounds [6 x i32], [6 x i32]* %UseDefaultScalingMatrix4x4Flag, i32 0, i64 %idxprom28
  %24 = load i32, i32* %arrayidx29, align 4
  %tobool30 = icmp ne i32 %24, 0
  br i1 %tobool30, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %if.else.27
  %25 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %25, 3
  %cond33 = select i1 %cmp32, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_intra_default, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_inter_default, i32 0, i32 0)
  %26 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom34
  store i32* %cond33, i32** %arrayidx35, align 8
  br label %if.end.41

if.else.36:                                       ; preds = %if.else.27
  %27 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %27 to i64
  %28 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %ScalingList4x4 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %28, i32 0, i32 11
  %arrayidx38 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %ScalingList4x4, i32 0, i64 %idxprom37
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx38, i32 0, i32 0
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom39
  store i32* %arraydecay, i32** %arrayidx40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.36, %if.then.31
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end
  br label %if.end.66

if.else.43:                                       ; preds = %for.body.8
  %30 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %30 to i64
  %31 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_list_present_flag45 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %31, i32 0, i32 10
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %seq_scaling_list_present_flag45, i32 0, i64 %idxprom44
  %32 = load i32, i32* %arrayidx46, align 4
  %tobool47 = icmp ne i32 %32, 0
  br i1 %tobool47, label %lor.lhs.false.48, label %if.then.53

lor.lhs.false.48:                                 ; preds = %if.else.43
  %33 = load i32, i32* %i, align 4
  %sub49 = sub nsw i32 %33, 6
  %idxprom50 = sext i32 %sub49 to i64
  %34 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %UseDefaultScalingMatrix8x8Flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %34, i32 0, i32 14
  %arrayidx51 = getelementptr inbounds [2 x i32], [2 x i32]* %UseDefaultScalingMatrix8x8Flag, i32 0, i64 %idxprom50
  %35 = load i32, i32* %arrayidx51, align 4
  %tobool52 = icmp ne i32 %35, 0
  br i1 %tobool52, label %if.then.53, label %if.else.58

if.then.53:                                       ; preds = %lor.lhs.false.48, %if.else.43
  %36 = load i32, i32* %i, align 4
  %cmp54 = icmp eq i32 %36, 6
  %cond55 = select i1 %cmp54, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @quant8_intra_default, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @quant8_inter_default, i32 0, i32 0)
  %37 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %37 to i64
  %arrayidx57 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom56
  store i32* %cond55, i32** %arrayidx57, align 8
  br label %if.end.65

if.else.58:                                       ; preds = %lor.lhs.false.48
  %38 = load i32, i32* %i, align 4
  %sub59 = sub nsw i32 %38, 6
  %idxprom60 = sext i32 %sub59 to i64
  %39 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %ScalingList8x8 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %39, i32 0, i32 12
  %arrayidx61 = getelementptr inbounds [2 x [64 x i32]], [2 x [64 x i32]]* %ScalingList8x8, i32 0, i64 %idxprom60
  %arraydecay62 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx61, i32 0, i32 0
  %40 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %40 to i64
  %arrayidx64 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom63
  store i32* %arraydecay62, i32** %arrayidx64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.58, %if.then.53
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.42
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %41 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %41, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.6

for.end.69:                                       ; preds = %for.cond.6
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %if.else
  %42 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_matrix_present_flag71 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %42, i32 0, i32 5
  %43 = load i32, i32* %pic_scaling_matrix_present_flag71, align 4
  %tobool72 = icmp ne i32 %43, 0
  br i1 %tobool72, label %if.then.73, label %if.end.160

if.then.73:                                       ; preds = %if.end.70
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.157, %if.then.73
  %44 = load i32, i32* %i, align 4
  %cmp75 = icmp slt i32 %44, 8
  br i1 %cmp75, label %for.body.76, label %for.end.159

for.body.76:                                      ; preds = %for.cond.74
  %45 = load i32, i32* %i, align 4
  %cmp77 = icmp slt i32 %45, 6
  br i1 %cmp77, label %if.then.78, label %if.else.121

if.then.78:                                       ; preds = %for.body.76
  %46 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %46 to i64
  %47 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %47, i32 0, i32 6
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag, i32 0, i64 %idxprom79
  %48 = load i32, i32* %arrayidx80, align 4
  %tobool81 = icmp ne i32 %48, 0
  br i1 %tobool81, label %if.else.102, label %if.then.82

if.then.82:                                       ; preds = %if.then.78
  %49 = load i32, i32* %i, align 4
  %cmp83 = icmp eq i32 %49, 0
  br i1 %cmp83, label %if.then.86, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.then.82
  %50 = load i32, i32* %i, align 4
  %cmp85 = icmp eq i32 %50, 3
  br i1 %cmp85, label %if.then.86, label %if.else.95

if.then.86:                                       ; preds = %lor.lhs.false.84, %if.then.82
  %51 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag87 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %51, i32 0, i32 9
  %52 = load i32, i32* %seq_scaling_matrix_present_flag87, align 4
  %tobool88 = icmp ne i32 %52, 0
  br i1 %tobool88, label %if.end.94, label %if.then.89

if.then.89:                                       ; preds = %if.then.86
  %53 = load i32, i32* %i, align 4
  %cmp90 = icmp eq i32 %53, 0
  %cond91 = select i1 %cmp90, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_intra_default, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_inter_default, i32 0, i32 0)
  %54 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %54 to i64
  %arrayidx93 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom92
  store i32* %cond91, i32** %arrayidx93, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.89, %if.then.86
  br label %if.end.101

if.else.95:                                       ; preds = %lor.lhs.false.84
  %55 = load i32, i32* %i, align 4
  %sub96 = sub nsw i32 %55, 1
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom97
  %56 = load i32*, i32** %arrayidx98, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %57 to i64
  %arrayidx100 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom99
  store i32* %56, i32** %arrayidx100, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.95, %if.end.94
  br label %if.end.120

if.else.102:                                      ; preds = %if.then.78
  %58 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %58 to i64
  %59 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %UseDefaultScalingMatrix4x4Flag104 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %59, i32 0, i32 9
  %arrayidx105 = getelementptr inbounds [6 x i32], [6 x i32]* %UseDefaultScalingMatrix4x4Flag104, i32 0, i64 %idxprom103
  %60 = load i32, i32* %arrayidx105, align 4
  %tobool106 = icmp ne i32 %60, 0
  br i1 %tobool106, label %if.then.107, label %if.else.112

if.then.107:                                      ; preds = %if.else.102
  %61 = load i32, i32* %i, align 4
  %cmp108 = icmp slt i32 %61, 3
  %cond109 = select i1 %cmp108, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_intra_default, i32 0, i32 0), i32* getelementptr inbounds ([16 x i32], [16 x i32]* @quant_inter_default, i32 0, i32 0)
  %62 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %62 to i64
  %arrayidx111 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom110
  store i32* %cond109, i32** %arrayidx111, align 8
  br label %if.end.119

if.else.112:                                      ; preds = %if.else.102
  %63 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %63 to i64
  %64 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %ScalingList4x4114 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %64, i32 0, i32 7
  %arrayidx115 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %ScalingList4x4114, i32 0, i64 %idxprom113
  %arraydecay116 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx115, i32 0, i32 0
  %65 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %65 to i64
  %arrayidx118 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom117
  store i32* %arraydecay116, i32** %arrayidx118, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.112, %if.then.107
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.101
  br label %if.end.156

if.else.121:                                      ; preds = %for.body.76
  %66 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %66 to i64
  %67 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %pic_scaling_list_present_flag123 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %67, i32 0, i32 6
  %arrayidx124 = getelementptr inbounds [8 x i32], [8 x i32]* %pic_scaling_list_present_flag123, i32 0, i64 %idxprom122
  %68 = load i32, i32* %arrayidx124, align 4
  %tobool125 = icmp ne i32 %68, 0
  br i1 %tobool125, label %if.else.135, label %if.then.126

if.then.126:                                      ; preds = %if.else.121
  %69 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** %sps.addr, align 8
  %seq_scaling_matrix_present_flag127 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %69, i32 0, i32 9
  %70 = load i32, i32* %seq_scaling_matrix_present_flag127, align 4
  %tobool128 = icmp ne i32 %70, 0
  br i1 %tobool128, label %if.end.134, label %if.then.129

if.then.129:                                      ; preds = %if.then.126
  %71 = load i32, i32* %i, align 4
  %cmp130 = icmp eq i32 %71, 6
  %cond131 = select i1 %cmp130, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @quant8_intra_default, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @quant8_inter_default, i32 0, i32 0)
  %72 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %72 to i64
  %arrayidx133 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom132
  store i32* %cond131, i32** %arrayidx133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.129, %if.then.126
  br label %if.end.155

if.else.135:                                      ; preds = %if.else.121
  %73 = load i32, i32* %i, align 4
  %sub136 = sub nsw i32 %73, 6
  %idxprom137 = sext i32 %sub136 to i64
  %74 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %UseDefaultScalingMatrix8x8Flag138 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %74, i32 0, i32 10
  %arrayidx139 = getelementptr inbounds [2 x i32], [2 x i32]* %UseDefaultScalingMatrix8x8Flag138, i32 0, i64 %idxprom137
  %75 = load i32, i32* %arrayidx139, align 4
  %tobool140 = icmp ne i32 %75, 0
  br i1 %tobool140, label %if.then.141, label %if.else.146

if.then.141:                                      ; preds = %if.else.135
  %76 = load i32, i32* %i, align 4
  %cmp142 = icmp eq i32 %76, 6
  %cond143 = select i1 %cmp142, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @quant8_intra_default, i32 0, i32 0), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @quant8_inter_default, i32 0, i32 0)
  %77 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %77 to i64
  %arrayidx145 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom144
  store i32* %cond143, i32** %arrayidx145, align 8
  br label %if.end.154

if.else.146:                                      ; preds = %if.else.135
  %78 = load i32, i32* %i, align 4
  %sub147 = sub nsw i32 %78, 6
  %idxprom148 = sext i32 %sub147 to i64
  %79 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %ScalingList8x8149 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %79, i32 0, i32 8
  %arrayidx150 = getelementptr inbounds [2 x [64 x i32]], [2 x [64 x i32]]* %ScalingList8x8149, i32 0, i64 %idxprom148
  %arraydecay151 = getelementptr inbounds [64 x i32], [64 x i32]* %arrayidx150, i32 0, i32 0
  %80 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %80 to i64
  %arrayidx153 = getelementptr inbounds [8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 %idxprom152
  store i32* %arraydecay151, i32** %arrayidx153, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.146, %if.then.141
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.134
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.120
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %81 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %81, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.74

for.end.159:                                      ; preds = %for.cond.74
  br label %if.end.160

if.end.160:                                       ; preds = %for.end.159, %if.end.70
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %for.end
  call void @CalculateQuantParam()
  %82 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** %pps.addr, align 8
  %transform_8x8_mode_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %82, i32 0, i32 4
  %83 = load i32, i32* %transform_8x8_mode_flag, align 4
  %tobool162 = icmp ne i32 %83, 0
  br i1 %tobool162, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.end.161
  call void @CalculateQuant8Param()
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %if.end.161
  ret void
}

; Function Attrs: nounwind uwtable
define void @CalculateQuantParam() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.97, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end.99

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.94, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end.96

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %3 = load i32, i32* %i, align 4
  %shl = shl i32 %3, 2
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %shl, %4
  store i32 %add, i32* %temp, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %6 to i64
  %7 = load i32, i32* %k, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx, i32 0, i64 %idxprom7
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx9, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx10, align 4
  %9 = load i32, i32* %temp, align 4
  %idxprom11 = sext i32 %9 to i64
  %10 = load i32*, i32** getelementptr inbounds ([8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 0), align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %10, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %mul = mul nsw i32 %8, %11
  %12 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx16, i32 0, i64 %idxprom14
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx17, i32 0, i64 %idxprom13
  store i32 %mul, i32* %arrayidx18, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %16 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx22, i32 0, i64 %idxprom20
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx23, i32 0, i64 %idxprom19
  %18 = load i32, i32* %arrayidx24, align 4
  %19 = load i32, i32* %temp, align 4
  %idxprom25 = sext i32 %19 to i64
  %20 = load i32*, i32** getelementptr inbounds ([8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 1), align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %20, i64 %idxprom25
  %21 = load i32, i32* %arrayidx26, align 4
  %mul27 = mul nsw i32 %18, %21
  %22 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 0), i32 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx31, i32 0, i64 %idxprom29
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx32, i32 0, i64 %idxprom28
  store i32 %mul27, i32* %arrayidx33, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %25 to i64
  %26 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %26 to i64
  %27 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx37, i32 0, i64 %idxprom35
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx38, i32 0, i64 %idxprom34
  %28 = load i32, i32* %arrayidx39, align 4
  %29 = load i32, i32* %temp, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load i32*, i32** getelementptr inbounds ([8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 2), align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %30, i64 %idxprom40
  %31 = load i32, i32* %arrayidx41, align 4
  %mul42 = mul nsw i32 %28, %31
  %32 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %33 to i64
  %34 = load i32, i32* %k, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Intra, i32 0, i64 1), i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx46, i32 0, i64 %idxprom44
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx47, i32 0, i64 %idxprom43
  store i32 %mul42, i32* %arrayidx48, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %35 to i64
  %36 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %36 to i64
  %37 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx52, i32 0, i64 %idxprom50
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx53, i32 0, i64 %idxprom49
  %38 = load i32, i32* %arrayidx54, align 4
  %39 = load i32, i32* %temp, align 4
  %idxprom55 = sext i32 %39 to i64
  %40 = load i32*, i32** getelementptr inbounds ([8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 3), align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %40, i64 %idxprom55
  %41 = load i32, i32* %arrayidx56, align 4
  %mul57 = mul nsw i32 %38, %41
  %42 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %42 to i64
  %43 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %43 to i64
  %44 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %44 to i64
  %arrayidx61 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Inter, i32 0, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx61, i32 0, i64 %idxprom59
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx62, i32 0, i64 %idxprom58
  store i32 %mul57, i32* %arrayidx63, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %45 to i64
  %46 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %46 to i64
  %47 = load i32, i32* %k, align 4
  %idxprom66 = sext i32 %47 to i64
  %arrayidx67 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx67, i32 0, i64 %idxprom65
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx68, i32 0, i64 %idxprom64
  %48 = load i32, i32* %arrayidx69, align 4
  %49 = load i32, i32* %temp, align 4
  %idxprom70 = sext i32 %49 to i64
  %50 = load i32*, i32** getelementptr inbounds ([8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 4), align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %50, i64 %idxprom70
  %51 = load i32, i32* %arrayidx71, align 4
  %mul72 = mul nsw i32 %48, %51
  %52 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %53 to i64
  %54 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %54 to i64
  %arrayidx76 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 0), i32 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx76, i32 0, i64 %idxprom74
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx77, i32 0, i64 %idxprom73
  store i32 %mul72, i32* %arrayidx78, align 4
  %55 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %55 to i64
  %56 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %56 to i64
  %57 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %57 to i64
  %arrayidx82 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx82, i32 0, i64 %idxprom80
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx83, i32 0, i64 %idxprom79
  %58 = load i32, i32* %arrayidx84, align 4
  %59 = load i32, i32* %temp, align 4
  %idxprom85 = sext i32 %59 to i64
  %60 = load i32*, i32** getelementptr inbounds ([8 x i32*], [8 x i32*]* @qmatrix, i32 0, i64 5), align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %60, i64 %idxprom85
  %61 = load i32, i32* %arrayidx86, align 4
  %mul87 = mul nsw i32 %58, %61
  %62 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %62 to i64
  %63 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %63 to i64
  %64 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %64 to i64
  %arrayidx91 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* getelementptr inbounds ([2 x [6 x [4 x [4 x i32]]]], [2 x [6 x [4 x [4 x i32]]]]* @InvLevelScale4x4Chroma_Inter, i32 0, i64 1), i32 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx91, i32 0, i64 %idxprom89
  %arrayidx93 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx92, i32 0, i64 %idxprom88
  store i32 %mul87, i32* %arrayidx93, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %65 = load i32, i32* %i, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end
  %66 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %66, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond.1

for.end.96:                                       ; preds = %for.cond.1
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %67 = load i32, i32* %k, align 4
  %inc98 = add nsw i32 %67, 1
  store i32 %inc98, i32* %k, align 4
  br label %for.cond

for.end.99:                                       ; preds = %for.cond
  ret void
}

declare void @CalculateQuant8Param() #1

; Function Attrs: nounwind uwtable
define void @itrans_2(%struct.img_par* %img) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %M5 = alloca [4 x i32], align 16
  %M6 = alloca [4 x i32], align 16
  %qp_per = alloca i32, align 4
  %qp_rem = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 6
  %1 = load i32, i32* %qp, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 103
  %3 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %add = add nsw i32 %1, %3
  %sub = sub nsw i32 %add, 0
  %div = sdiv i32 %sub, 6
  store i32 %div, i32* %qp_per, align 4
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp1 = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 6
  %5 = load i32, i32* %qp1, align 4
  %6 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %bitdepth_luma_qp_scale2 = getelementptr inbounds %struct.img_par, %struct.img_par* %6, i32 0, i32 103
  %7 = load i32, i32* %bitdepth_luma_qp_scale2, align 4
  %add3 = add nsw i32 %5, %7
  %sub4 = sub nsw i32 %add3, 0
  %rem = srem i32 %sub4, 6
  store i32 %rem, i32* %qp_rem, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof = getelementptr inbounds %struct.img_par, %struct.img_par* %10, i32 0, i32 28
  %arrayidx = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx6, i32 0, i64 0
  %11 = load i32, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 0
  store i32 %11, i32* %arrayidx8, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof10 = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 28
  %arrayidx11 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx11, i32 0, i64 %idxprom9
  %arrayidx13 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx13, i32 0, i64 0
  %14 = load i32, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 1
  store i32 %14, i32* %arrayidx15, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof17 = getelementptr inbounds %struct.img_par, %struct.img_par* %16, i32 0, i32 28
  %arrayidx18 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx18, i32 0, i64 %idxprom16
  %arrayidx20 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx19, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx20, i32 0, i64 0
  %17 = load i32, i32* %arrayidx21, align 4
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 2
  store i32 %17, i32* %arrayidx22, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %18 to i64
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof24 = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 28
  %arrayidx25 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof24, i32 0, i64 3
  %arrayidx26 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx26, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx27, i32 0, i64 0
  %20 = load i32, i32* %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 3
  store i32 %20, i32* %arrayidx29, align 4
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 0
  %21 = load i32, i32* %arrayidx30, align 4
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 2
  %22 = load i32, i32* %arrayidx31, align 4
  %add32 = add nsw i32 %21, %22
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 0
  store i32 %add32, i32* %arrayidx33, align 4
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 0
  %23 = load i32, i32* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 2
  %24 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %23, %24
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 1
  store i32 %sub36, i32* %arrayidx37, align 4
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 1
  %25 = load i32, i32* %arrayidx38, align 4
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 3
  %26 = load i32, i32* %arrayidx39, align 4
  %sub40 = sub nsw i32 %25, %26
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 2
  store i32 %sub40, i32* %arrayidx41, align 4
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 1
  %27 = load i32, i32* %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 3
  %28 = load i32, i32* %arrayidx43, align 4
  %add44 = add nsw i32 %27, %28
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 3
  store i32 %add44, i32* %arrayidx45, align 4
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 0
  %29 = load i32, i32* %arrayidx46, align 4
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 3
  %30 = load i32, i32* %arrayidx47, align 4
  %add48 = add nsw i32 %29, %30
  %31 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %31 to i64
  %32 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof50 = getelementptr inbounds %struct.img_par, %struct.img_par* %32, i32 0, i32 28
  %arrayidx51 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof50, i32 0, i64 0
  %arrayidx52 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx51, i32 0, i64 %idxprom49
  %arrayidx53 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx52, i32 0, i64 0
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx53, i32 0, i64 0
  store i32 %add48, i32* %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 1
  %33 = load i32, i32* %arrayidx55, align 4
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 2
  %34 = load i32, i32* %arrayidx56, align 4
  %add57 = add nsw i32 %33, %34
  %35 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %35 to i64
  %36 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof59 = getelementptr inbounds %struct.img_par, %struct.img_par* %36, i32 0, i32 28
  %arrayidx60 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof59, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx60, i32 0, i64 %idxprom58
  %arrayidx62 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx61, i32 0, i64 0
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx62, i32 0, i64 0
  store i32 %add57, i32* %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 1
  %37 = load i32, i32* %arrayidx64, align 4
  %arrayidx65 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 2
  %38 = load i32, i32* %arrayidx65, align 4
  %sub66 = sub nsw i32 %37, %38
  %39 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %39 to i64
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof68 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 28
  %arrayidx69 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof68, i32 0, i64 2
  %arrayidx70 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx69, i32 0, i64 %idxprom67
  %arrayidx71 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx70, i32 0, i64 0
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx71, i32 0, i64 0
  store i32 %sub66, i32* %arrayidx72, align 4
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 0
  %41 = load i32, i32* %arrayidx73, align 4
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 3
  %42 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %41, %42
  %43 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %43 to i64
  %44 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof77 = getelementptr inbounds %struct.img_par, %struct.img_par* %44, i32 0, i32 28
  %arrayidx78 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof77, i32 0, i64 3
  %arrayidx79 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx78, i32 0, i64 %idxprom76
  %arrayidx80 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx79, i32 0, i64 0
  %arrayidx81 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx80, i32 0, i64 0
  store i32 %sub75, i32* %arrayidx81, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %j, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.190, %for.end
  %46 = load i32, i32* %i, align 4
  %cmp83 = icmp slt i32 %46, 4
  br i1 %cmp83, label %for.body.84, label %for.end.192

for.body.84:                                      ; preds = %for.cond.82
  %47 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %47 to i64
  %48 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof86 = getelementptr inbounds %struct.img_par, %struct.img_par* %48, i32 0, i32 28
  %arrayidx87 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof86, i32 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx87, i32 0, i64 0
  %arrayidx89 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx88, i32 0, i64 0
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx89, i32 0, i64 0
  %49 = load i32, i32* %arrayidx90, align 4
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 0
  store i32 %49, i32* %arrayidx91, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %50 to i64
  %51 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof93 = getelementptr inbounds %struct.img_par, %struct.img_par* %51, i32 0, i32 28
  %arrayidx94 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof93, i32 0, i64 %idxprom92
  %arrayidx95 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx94, i32 0, i64 1
  %arrayidx96 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx95, i32 0, i64 0
  %arrayidx97 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx96, i32 0, i64 0
  %52 = load i32, i32* %arrayidx97, align 4
  %arrayidx98 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 1
  store i32 %52, i32* %arrayidx98, align 4
  %53 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %53 to i64
  %54 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof100 = getelementptr inbounds %struct.img_par, %struct.img_par* %54, i32 0, i32 28
  %arrayidx101 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof100, i32 0, i64 %idxprom99
  %arrayidx102 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx101, i32 0, i64 2
  %arrayidx103 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx102, i32 0, i64 0
  %arrayidx104 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx103, i32 0, i64 0
  %55 = load i32, i32* %arrayidx104, align 4
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 2
  store i32 %55, i32* %arrayidx105, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %56 to i64
  %57 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof107 = getelementptr inbounds %struct.img_par, %struct.img_par* %57, i32 0, i32 28
  %arrayidx108 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof107, i32 0, i64 %idxprom106
  %arrayidx109 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx108, i32 0, i64 3
  %arrayidx110 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx109, i32 0, i64 0
  %arrayidx111 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx110, i32 0, i64 0
  %58 = load i32, i32* %arrayidx111, align 4
  %arrayidx112 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 3
  store i32 %58, i32* %arrayidx112, align 4
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 0
  %59 = load i32, i32* %arrayidx113, align 4
  %arrayidx114 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 2
  %60 = load i32, i32* %arrayidx114, align 4
  %add115 = add nsw i32 %59, %60
  %arrayidx116 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 0
  store i32 %add115, i32* %arrayidx116, align 4
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 0
  %61 = load i32, i32* %arrayidx117, align 4
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 2
  %62 = load i32, i32* %arrayidx118, align 4
  %sub119 = sub nsw i32 %61, %62
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 1
  store i32 %sub119, i32* %arrayidx120, align 4
  %arrayidx121 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 1
  %63 = load i32, i32* %arrayidx121, align 4
  %arrayidx122 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 3
  %64 = load i32, i32* %arrayidx122, align 4
  %sub123 = sub nsw i32 %63, %64
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 2
  store i32 %sub123, i32* %arrayidx124, align 4
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 1
  %65 = load i32, i32* %arrayidx125, align 4
  %arrayidx126 = getelementptr inbounds [4 x i32], [4 x i32]* %M5, i32 0, i64 3
  %66 = load i32, i32* %arrayidx126, align 4
  %add127 = add nsw i32 %65, %66
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 3
  store i32 %add127, i32* %arrayidx128, align 4
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 0
  %67 = load i32, i32* %arrayidx129, align 4
  %arrayidx130 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 3
  %68 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %67, %68
  %69 = load i32, i32* %qp_rem, align 4
  %idxprom132 = sext i32 %69 to i64
  %arrayidx133 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx133, i32 0, i64 0
  %arrayidx135 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx134, i32 0, i64 0
  %70 = load i32, i32* %arrayidx135, align 4
  %mul = mul nsw i32 %add131, %70
  %71 = load i32, i32* %qp_per, align 4
  %shl = shl i32 %mul, %71
  %call = call i32 @rshift_rnd(i32 %shl, i32 6)
  %72 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %72 to i64
  %73 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof137 = getelementptr inbounds %struct.img_par, %struct.img_par* %73, i32 0, i32 28
  %arrayidx138 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof137, i32 0, i64 %idxprom136
  %arrayidx139 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx138, i32 0, i64 0
  %arrayidx140 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx139, i32 0, i64 0
  %arrayidx141 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx140, i32 0, i64 0
  store i32 %call, i32* %arrayidx141, align 4
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 1
  %74 = load i32, i32* %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 2
  %75 = load i32, i32* %arrayidx143, align 4
  %add144 = add nsw i32 %74, %75
  %76 = load i32, i32* %qp_rem, align 4
  %idxprom145 = sext i32 %76 to i64
  %arrayidx146 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom145
  %arrayidx147 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx146, i32 0, i64 0
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx147, i32 0, i64 0
  %77 = load i32, i32* %arrayidx148, align 4
  %mul149 = mul nsw i32 %add144, %77
  %78 = load i32, i32* %qp_per, align 4
  %shl150 = shl i32 %mul149, %78
  %call151 = call i32 @rshift_rnd(i32 %shl150, i32 6)
  %79 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %79 to i64
  %80 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof153 = getelementptr inbounds %struct.img_par, %struct.img_par* %80, i32 0, i32 28
  %arrayidx154 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof153, i32 0, i64 %idxprom152
  %arrayidx155 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx154, i32 0, i64 1
  %arrayidx156 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx155, i32 0, i64 0
  %arrayidx157 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx156, i32 0, i64 0
  store i32 %call151, i32* %arrayidx157, align 4
  %arrayidx158 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 1
  %81 = load i32, i32* %arrayidx158, align 4
  %arrayidx159 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 2
  %82 = load i32, i32* %arrayidx159, align 4
  %sub160 = sub nsw i32 %81, %82
  %83 = load i32, i32* %qp_rem, align 4
  %idxprom161 = sext i32 %83 to i64
  %arrayidx162 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx162, i32 0, i64 0
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx163, i32 0, i64 0
  %84 = load i32, i32* %arrayidx164, align 4
  %mul165 = mul nsw i32 %sub160, %84
  %85 = load i32, i32* %qp_per, align 4
  %shl166 = shl i32 %mul165, %85
  %call167 = call i32 @rshift_rnd(i32 %shl166, i32 6)
  %86 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %86 to i64
  %87 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof169 = getelementptr inbounds %struct.img_par, %struct.img_par* %87, i32 0, i32 28
  %arrayidx170 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof169, i32 0, i64 %idxprom168
  %arrayidx171 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx170, i32 0, i64 2
  %arrayidx172 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx171, i32 0, i64 0
  %arrayidx173 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx172, i32 0, i64 0
  store i32 %call167, i32* %arrayidx173, align 4
  %arrayidx174 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 0
  %88 = load i32, i32* %arrayidx174, align 4
  %arrayidx175 = getelementptr inbounds [4 x i32], [4 x i32]* %M6, i32 0, i64 3
  %89 = load i32, i32* %arrayidx175, align 4
  %sub176 = sub nsw i32 %88, %89
  %90 = load i32, i32* %qp_rem, align 4
  %idxprom177 = sext i32 %90 to i64
  %arrayidx178 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @InvLevelScale4x4Luma_Intra, i32 0, i64 %idxprom177
  %arrayidx179 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx178, i32 0, i64 0
  %arrayidx180 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx179, i32 0, i64 0
  %91 = load i32, i32* %arrayidx180, align 4
  %mul181 = mul nsw i32 %sub176, %91
  %92 = load i32, i32* %qp_per, align 4
  %shl182 = shl i32 %mul181, %92
  %call183 = call i32 @rshift_rnd(i32 %shl182, i32 6)
  %93 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %93 to i64
  %94 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof185 = getelementptr inbounds %struct.img_par, %struct.img_par* %94, i32 0, i32 28
  %arrayidx186 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof185, i32 0, i64 %idxprom184
  %arrayidx187 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx186, i32 0, i64 3
  %arrayidx188 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx187, i32 0, i64 0
  %arrayidx189 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx188, i32 0, i64 0
  store i32 %call183, i32* %arrayidx189, align 4
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.84
  %95 = load i32, i32* %i, align 4
  %inc191 = add nsw i32 %95, 1
  store i32 %inc191, i32* %i, align 4
  br label %for.cond.82

for.end.192:                                      ; preds = %for.cond.82
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rshift_rnd(i32 %x, i32 %a) #2 {
entry:
  %x.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 %2, 1
  %shl = shl i32 1, %sub
  %add = add nsw i32 %1, %shl
  %3 = load i32, i32* %a.addr, align 4
  %shr = ashr i32 %add, %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %a.addr, align 4
  %sub1 = sub nsw i32 0, %5
  %shl2 = shl i32 %4, %sub1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %shl2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @itrans_sp(%struct.img_par* %img, i32 %ioff, i32 %joff, i32 %i0, i32 %j0) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %ioff.addr = alloca i32, align 4
  %joff.addr = alloca i32, align 4
  %i0.addr = alloca i32, align 4
  %j0.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %predicted_block = alloca [4 x [4 x i32]], align 16
  %ilev = alloca i32, align 4
  %qp_per = alloca i32, align 4
  %qp_rem = alloca i32, align 4
  %q_bits = alloca i32, align 4
  %qp_per_sp = alloca i32, align 4
  %qp_rem_sp = alloca i32, align 4
  %q_bits_sp = alloca i32, align 4
  %qp_const2 = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %ioff, i32* %ioff.addr, align 4
  store i32 %joff, i32* %joff.addr, align 4
  store i32 %i0, i32* %i0.addr, align 4
  store i32 %j0, i32* %j0.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 6
  %1 = load i32, i32* %qp, align 4
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 6
  store i32 %div, i32* %qp_per, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp1 = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 6
  %3 = load i32, i32* %qp1, align 4
  %sub2 = sub nsw i32 %3, 0
  %rem = srem i32 %sub2, 6
  store i32 %rem, i32* %qp_rem, align 4
  %4 = load i32, i32* %qp_per, align 4
  %add = add nsw i32 15, %4
  store i32 %add, i32* %q_bits, align 4
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 7
  %6 = load i32, i32* %qpsp, align 4
  %sub3 = sub nsw i32 %6, 0
  %div4 = sdiv i32 %sub3, 6
  store i32 %div4, i32* %qp_per_sp, align 4
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp5 = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 7
  %8 = load i32, i32* %qpsp5, align 4
  %sub6 = sub nsw i32 %8, 0
  %rem7 = srem i32 %sub6, 6
  store i32 %rem7, i32* %qp_rem_sp, align 4
  %9 = load i32, i32* %qp_per_sp, align 4
  %add8 = add nsw i32 15, %9
  store i32 %add8, i32* %q_bits_sp, align 4
  %10 = load i32, i32* %q_bits_sp, align 4
  %shl = shl i32 1, %10
  %div9 = sdiv i32 %shl, 2
  store i32 %div9, i32* %qp_const2, align 4
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 10
  %12 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %12, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp10 = getelementptr inbounds %struct.img_par, %struct.img_par* %13, i32 0, i32 7
  %14 = load i32, i32* %qpsp10, align 4
  %sub11 = sub nsw i32 %14, 0
  %div12 = sdiv i32 %sub11, 6
  store i32 %div12, i32* %qp_per, align 4
  %15 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp13 = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 7
  %16 = load i32, i32* %qpsp13, align 4
  %sub14 = sub nsw i32 %16, 0
  %rem15 = srem i32 %sub14, 6
  store i32 %rem15, i32* %qp_rem, align 4
  %17 = load i32, i32* %qp_per, align 4
  %add16 = add nsw i32 15, %17
  store i32 %add16, i32* %q_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %if.end
  %18 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %18, 4
  br i1 %cmp17, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %19, 4
  br i1 %cmp19, label %for.body.20, label %for.end

for.body.20:                                      ; preds = %for.cond.18
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %ioff.addr, align 4
  %add21 = add nsw i32 %20, %21
  %idxprom = sext i32 %add21 to i64
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %joff.addr, align 4
  %add22 = add nsw i32 %22, %23
  %idxprom23 = sext i32 %add22 to i64
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 25
  %arrayidx = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom23
  %arrayidx24 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx, i32 0, i64 %idxprom
  %25 = load i16, i16* %arrayidx24, align 2
  %conv = zext i16 %25 to i32
  %26 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %26 to i64
  %27 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx27, i32 0, i64 %idxprom25
  store i32 %conv, i32* %arrayidx28, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.20
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %29 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.91, %for.end.31
  %30 = load i32, i32* %j, align 4
  %cmp33 = icmp slt i32 %30, 4
  br i1 %cmp33, label %for.body.35, label %for.end.93

for.body.35:                                      ; preds = %for.cond.32
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.63, %for.body.35
  %31 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %31, 2
  br i1 %cmp37, label %for.body.39, label %for.end.65

for.body.39:                                      ; preds = %for.cond.36
  %32 = load i32, i32* %i, align 4
  %sub40 = sub nsw i32 3, %32
  store i32 %sub40, i32* %i1, align 4
  %33 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx43, i32 0, i64 %idxprom41
  %35 = load i32, i32* %arrayidx44, align 4
  %36 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load i32, i32* %i1, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx47, i32 0, i64 %idxprom45
  %38 = load i32, i32* %arrayidx48, align 4
  %add49 = add nsw i32 %35, %38
  %39 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom50
  store i32 %add49, i32* %arrayidx51, align 4
  %40 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %40 to i64
  %41 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %arrayidx54 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx54, i32 0, i64 %idxprom52
  %42 = load i32, i32* %arrayidx55, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %43 to i64
  %44 = load i32, i32* %i1, align 4
  %idxprom57 = sext i32 %44 to i64
  %arrayidx58 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx58, i32 0, i64 %idxprom56
  %45 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %42, %45
  %46 = load i32, i32* %i1, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom61
  store i32 %sub60, i32* %arrayidx62, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.39
  %47 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %47, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond.36

for.end.65:                                       ; preds = %for.cond.36
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %48 = load i32, i32* %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %49 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %48, %49
  %50 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %50 to i64
  %arrayidx70 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 0
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx70, i32 0, i64 %idxprom69
  store i32 %add68, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %51 = load i32, i32* %arrayidx72, align 4
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %52 = load i32, i32* %arrayidx73, align 4
  %sub74 = sub nsw i32 %51, %52
  %53 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 2
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx76, i32 0, i64 %idxprom75
  store i32 %sub74, i32* %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %54 = load i32, i32* %arrayidx78, align 4
  %mul = mul nsw i32 %54, 2
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %55 = load i32, i32* %arrayidx79, align 4
  %add80 = add nsw i32 %mul, %55
  %56 = load i32, i32* %j, align 4
  %idxprom81 = sext i32 %56 to i64
  %arrayidx82 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 1
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx82, i32 0, i64 %idxprom81
  store i32 %add80, i32* %arrayidx83, align 4
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %57 = load i32, i32* %arrayidx84, align 4
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %58 = load i32, i32* %arrayidx85, align 4
  %mul86 = mul nsw i32 %58, 2
  %sub87 = sub nsw i32 %57, %mul86
  %59 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %59 to i64
  %arrayidx89 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 3
  %arrayidx90 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx89, i32 0, i64 %idxprom88
  store i32 %sub87, i32* %arrayidx90, align 4
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.65
  %60 = load i32, i32* %j, align 4
  %inc92 = add nsw i32 %60, 1
  store i32 %inc92, i32* %j, align 4
  br label %for.cond.32

for.end.93:                                       ; preds = %for.cond.32
  store i32 0, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.154, %for.end.93
  %61 = load i32, i32* %i, align 4
  %cmp95 = icmp slt i32 %61, 4
  br i1 %cmp95, label %for.body.97, label %for.end.156

for.body.97:                                      ; preds = %for.cond.94
  store i32 0, i32* %j, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.125, %for.body.97
  %62 = load i32, i32* %j, align 4
  %cmp99 = icmp slt i32 %62, 2
  br i1 %cmp99, label %for.body.101, label %for.end.127

for.body.101:                                     ; preds = %for.cond.98
  %63 = load i32, i32* %j, align 4
  %sub102 = sub nsw i32 3, %63
  store i32 %sub102, i32* %j1, align 4
  %64 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %65 to i64
  %arrayidx105 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx105, i32 0, i64 %idxprom103
  %66 = load i32, i32* %arrayidx106, align 4
  %67 = load i32, i32* %j1, align 4
  %idxprom107 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %68 to i64
  %arrayidx109 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx109, i32 0, i64 %idxprom107
  %69 = load i32, i32* %arrayidx110, align 4
  %add111 = add nsw i32 %66, %69
  %70 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %70 to i64
  %arrayidx113 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom112
  store i32 %add111, i32* %arrayidx113, align 4
  %71 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %72 to i64
  %arrayidx116 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx116, i32 0, i64 %idxprom114
  %73 = load i32, i32* %arrayidx117, align 4
  %74 = load i32, i32* %j1, align 4
  %idxprom118 = sext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %75 to i64
  %arrayidx120 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx120, i32 0, i64 %idxprom118
  %76 = load i32, i32* %arrayidx121, align 4
  %sub122 = sub nsw i32 %73, %76
  %77 = load i32, i32* %j1, align 4
  %idxprom123 = sext i32 %77 to i64
  %arrayidx124 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom123
  store i32 %sub122, i32* %arrayidx124, align 4
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.101
  %78 = load i32, i32* %j, align 4
  %inc126 = add nsw i32 %78, 1
  store i32 %inc126, i32* %j, align 4
  br label %for.cond.98

for.end.127:                                      ; preds = %for.cond.98
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %79 = load i32, i32* %arrayidx128, align 4
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %80 = load i32, i32* %arrayidx129, align 4
  %add130 = add nsw i32 %79, %80
  %81 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %81 to i64
  %arrayidx132 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx132, i32 0, i64 0
  store i32 %add130, i32* %arrayidx133, align 4
  %arrayidx134 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %82 = load i32, i32* %arrayidx134, align 4
  %arrayidx135 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %83 = load i32, i32* %arrayidx135, align 4
  %sub136 = sub nsw i32 %82, %83
  %84 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %84 to i64
  %arrayidx138 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx138, i32 0, i64 2
  store i32 %sub136, i32* %arrayidx139, align 4
  %arrayidx140 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %85 = load i32, i32* %arrayidx140, align 4
  %mul141 = mul nsw i32 %85, 2
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %86 = load i32, i32* %arrayidx142, align 4
  %add143 = add nsw i32 %mul141, %86
  %87 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %87 to i64
  %arrayidx145 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom144
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx145, i32 0, i64 1
  store i32 %add143, i32* %arrayidx146, align 4
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %88 = load i32, i32* %arrayidx147, align 4
  %arrayidx148 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %89 = load i32, i32* %arrayidx148, align 4
  %mul149 = mul nsw i32 %89, 2
  %sub150 = sub nsw i32 %88, %mul149
  %90 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %90 to i64
  %arrayidx152 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx152, i32 0, i64 3
  store i32 %sub150, i32* %arrayidx153, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.end.127
  %91 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %91, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.94

for.end.156:                                      ; preds = %for.cond.94
  store i32 0, i32* %j, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.300, %for.end.156
  %92 = load i32, i32* %j, align 4
  %cmp158 = icmp slt i32 %92, 4
  br i1 %cmp158, label %for.body.160, label %for.end.302

for.body.160:                                     ; preds = %for.cond.157
  store i32 0, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.297, %for.body.160
  %93 = load i32, i32* %i, align 4
  %cmp162 = icmp slt i32 %93, 4
  br i1 %cmp162, label %for.body.164, label %for.end.299

for.body.164:                                     ; preds = %for.cond.161
  %94 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %94 to i64
  %95 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %95 to i64
  %96 = load i32, i32* %j0.addr, align 4
  %idxprom167 = sext i32 %96 to i64
  %97 = load i32, i32* %i0.addr, align 4
  %idxprom168 = sext i32 %97 to i64
  %98 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof = getelementptr inbounds %struct.img_par, %struct.img_par* %98, i32 0, i32 28
  %arrayidx169 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof, i32 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx169, i32 0, i64 %idxprom167
  %arrayidx171 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx170, i32 0, i64 %idxprom166
  %arrayidx172 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx171, i32 0, i64 %idxprom165
  %99 = load i32, i32* %arrayidx172, align 4
  %100 = load i32, i32* %qp_per, align 4
  %shr = ashr i32 %99, %100
  %101 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %102 to i64
  %103 = load i32, i32* %qp_rem, align 4
  %idxprom175 = sext i32 %103 to i64
  %arrayidx176 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx176, i32 0, i64 %idxprom174
  %arrayidx178 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx177, i32 0, i64 %idxprom173
  %104 = load i32, i32* %arrayidx178, align 4
  %div179 = sdiv i32 %shr, %104
  %105 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %105 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom181 = sext i32 %106 to i64
  %107 = load i32, i32* %j0.addr, align 4
  %idxprom182 = sext i32 %107 to i64
  %108 = load i32, i32* %i0.addr, align 4
  %idxprom183 = sext i32 %108 to i64
  %109 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof184 = getelementptr inbounds %struct.img_par, %struct.img_par* %109, i32 0, i32 28
  %arrayidx185 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof184, i32 0, i64 %idxprom183
  %arrayidx186 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx185, i32 0, i64 %idxprom182
  %arrayidx187 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx186, i32 0, i64 %idxprom181
  %arrayidx188 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx187, i32 0, i64 %idxprom180
  store i32 %div179, i32* %arrayidx188, align 4
  %110 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %sp_switch = getelementptr inbounds %struct.img_par, %struct.img_par* %110, i32 0, i32 8
  %111 = load i32, i32* %sp_switch, align 4
  %tobool = icmp ne i32 %111, 0
  br i1 %tobool, label %if.then.192, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.164
  %112 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type189 = getelementptr inbounds %struct.img_par, %struct.img_par* %112, i32 0, i32 10
  %113 = load i32, i32* %type189, align 4
  %cmp190 = icmp eq i32 %113, 4
  br i1 %cmp190, label %if.then.192, label %if.else

if.then.192:                                      ; preds = %lor.lhs.false, %for.body.164
  %114 = load i32, i32* %j, align 4
  %idxprom193 = sext i32 %114 to i64
  %115 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %115 to i64
  %arrayidx195 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx195, i32 0, i64 %idxprom193
  %116 = load i32, i32* %arrayidx196, align 4
  %call = call i32 @iabs(i32 %116)
  %117 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %118 to i64
  %119 = load i32, i32* %qp_rem_sp, align 4
  %idxprom199 = sext i32 %119 to i64
  %arrayidx200 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx200, i32 0, i64 %idxprom198
  %arrayidx202 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx201, i32 0, i64 %idxprom197
  %120 = load i32, i32* %arrayidx202, align 4
  %mul203 = mul nsw i32 %call, %120
  %121 = load i32, i32* %qp_const2, align 4
  %add204 = add nsw i32 %mul203, %121
  %122 = load i32, i32* %q_bits_sp, align 4
  %shr205 = ashr i32 %add204, %122
  store i32 %shr205, i32* %ilev, align 4
  %123 = load i32, i32* %ilev, align 4
  %124 = load i32, i32* %j, align 4
  %idxprom206 = sext i32 %124 to i64
  %125 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %125 to i64
  %arrayidx208 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom207
  %arrayidx209 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx208, i32 0, i64 %idxprom206
  %126 = load i32, i32* %arrayidx209, align 4
  %call210 = call i32 @isignab(i32 %123, i32 %126)
  %127 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %127 to i64
  %128 = load i32, i32* %j, align 4
  %idxprom212 = sext i32 %128 to i64
  %129 = load i32, i32* %j0.addr, align 4
  %idxprom213 = sext i32 %129 to i64
  %130 = load i32, i32* %i0.addr, align 4
  %idxprom214 = sext i32 %130 to i64
  %131 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof215 = getelementptr inbounds %struct.img_par, %struct.img_par* %131, i32 0, i32 28
  %arrayidx216 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof215, i32 0, i64 %idxprom214
  %arrayidx217 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx216, i32 0, i64 %idxprom213
  %arrayidx218 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx217, i32 0, i64 %idxprom212
  %arrayidx219 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx218, i32 0, i64 %idxprom211
  %132 = load i32, i32* %arrayidx219, align 4
  %add220 = add nsw i32 %call210, %132
  store i32 %add220, i32* %ilev, align 4
  %133 = load i32, i32* %ilev, align 4
  %call221 = call i32 @iabs(i32 %133)
  %134 = load i32, i32* %j, align 4
  %idxprom222 = sext i32 %134 to i64
  %135 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %135 to i64
  %136 = load i32, i32* %qp_rem_sp, align 4
  %idxprom224 = sext i32 %136 to i64
  %arrayidx225 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom224
  %arrayidx226 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx225, i32 0, i64 %idxprom223
  %arrayidx227 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx226, i32 0, i64 %idxprom222
  %137 = load i32, i32* %arrayidx227, align 4
  %mul228 = mul nsw i32 %call221, %137
  %138 = load i32, i32* %qp_per_sp, align 4
  %shl229 = shl i32 %mul228, %138
  %139 = load i32, i32* %ilev, align 4
  %call230 = call i32 @isignab(i32 %shl229, i32 %139)
  %140 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %140 to i64
  %141 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %141 to i64
  %142 = load i32, i32* %j0.addr, align 4
  %idxprom233 = sext i32 %142 to i64
  %143 = load i32, i32* %i0.addr, align 4
  %idxprom234 = sext i32 %143 to i64
  %144 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof235 = getelementptr inbounds %struct.img_par, %struct.img_par* %144, i32 0, i32 28
  %arrayidx236 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof235, i32 0, i64 %idxprom234
  %arrayidx237 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx236, i32 0, i64 %idxprom233
  %arrayidx238 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx237, i32 0, i64 %idxprom232
  %arrayidx239 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx238, i32 0, i64 %idxprom231
  store i32 %call230, i32* %arrayidx239, align 4
  br label %if.end.296

if.else:                                          ; preds = %lor.lhs.false
  %145 = load i32, i32* %i, align 4
  %idxprom240 = sext i32 %145 to i64
  %146 = load i32, i32* %j, align 4
  %idxprom241 = sext i32 %146 to i64
  %147 = load i32, i32* %j0.addr, align 4
  %idxprom242 = sext i32 %147 to i64
  %148 = load i32, i32* %i0.addr, align 4
  %idxprom243 = sext i32 %148 to i64
  %149 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof244 = getelementptr inbounds %struct.img_par, %struct.img_par* %149, i32 0, i32 28
  %arrayidx245 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof244, i32 0, i64 %idxprom243
  %arrayidx246 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx245, i32 0, i64 %idxprom242
  %arrayidx247 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx246, i32 0, i64 %idxprom241
  %arrayidx248 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx247, i32 0, i64 %idxprom240
  %150 = load i32, i32* %arrayidx248, align 4
  %151 = load i32, i32* %j, align 4
  %idxprom249 = sext i32 %151 to i64
  %152 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %152 to i64
  %153 = load i32, i32* %qp_rem, align 4
  %idxprom251 = sext i32 %153 to i64
  %arrayidx252 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom251
  %arrayidx253 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx252, i32 0, i64 %idxprom250
  %arrayidx254 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx253, i32 0, i64 %idxprom249
  %154 = load i32, i32* %arrayidx254, align 4
  %mul255 = mul nsw i32 %150, %154
  %155 = load i32, i32* %j, align 4
  %idxprom256 = sext i32 %155 to i64
  %156 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %156 to i64
  %arrayidx258 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @A, i32 0, i64 %idxprom257
  %arrayidx259 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx258, i32 0, i64 %idxprom256
  %157 = load i32, i32* %arrayidx259, align 4
  %mul260 = mul nsw i32 %mul255, %157
  %158 = load i32, i32* %qp_per, align 4
  %shl261 = shl i32 %mul260, %158
  %shr262 = ashr i32 %shl261, 6
  %159 = load i32, i32* %j, align 4
  %idxprom263 = sext i32 %159 to i64
  %160 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %160 to i64
  %arrayidx265 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom264
  %arrayidx266 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx265, i32 0, i64 %idxprom263
  %161 = load i32, i32* %arrayidx266, align 4
  %add267 = add nsw i32 %shr262, %161
  store i32 %add267, i32* %ilev, align 4
  %162 = load i32, i32* %ilev, align 4
  %call268 = call i32 @iabs(i32 %162)
  %163 = load i32, i32* %j, align 4
  %idxprom269 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %164 to i64
  %165 = load i32, i32* %qp_rem_sp, align 4
  %idxprom271 = sext i32 %165 to i64
  %arrayidx272 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom271
  %arrayidx273 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx272, i32 0, i64 %idxprom270
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx273, i32 0, i64 %idxprom269
  %166 = load i32, i32* %arrayidx274, align 4
  %mul275 = mul nsw i32 %call268, %166
  %167 = load i32, i32* %qp_const2, align 4
  %add276 = add nsw i32 %mul275, %167
  %168 = load i32, i32* %q_bits_sp, align 4
  %shr277 = ashr i32 %add276, %168
  %169 = load i32, i32* %ilev, align 4
  %call278 = call i32 @isignab(i32 %shr277, i32 %169)
  %170 = load i32, i32* %j, align 4
  %idxprom279 = sext i32 %170 to i64
  %171 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %171 to i64
  %172 = load i32, i32* %qp_rem_sp, align 4
  %idxprom281 = sext i32 %172 to i64
  %arrayidx282 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom281
  %arrayidx283 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx282, i32 0, i64 %idxprom280
  %arrayidx284 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx283, i32 0, i64 %idxprom279
  %173 = load i32, i32* %arrayidx284, align 4
  %mul285 = mul nsw i32 %call278, %173
  %174 = load i32, i32* %qp_per_sp, align 4
  %shl286 = shl i32 %mul285, %174
  %175 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %175 to i64
  %176 = load i32, i32* %j, align 4
  %idxprom288 = sext i32 %176 to i64
  %177 = load i32, i32* %j0.addr, align 4
  %idxprom289 = sext i32 %177 to i64
  %178 = load i32, i32* %i0.addr, align 4
  %idxprom290 = sext i32 %178 to i64
  %179 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof291 = getelementptr inbounds %struct.img_par, %struct.img_par* %179, i32 0, i32 28
  %arrayidx292 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof291, i32 0, i64 %idxprom290
  %arrayidx293 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx292, i32 0, i64 %idxprom289
  %arrayidx294 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx293, i32 0, i64 %idxprom288
  %arrayidx295 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx294, i32 0, i64 %idxprom287
  store i32 %shl286, i32* %arrayidx295, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.else, %if.then.192
  br label %for.inc.297

for.inc.297:                                      ; preds = %if.end.296
  %180 = load i32, i32* %i, align 4
  %inc298 = add nsw i32 %180, 1
  store i32 %inc298, i32* %i, align 4
  br label %for.cond.161

for.end.299:                                      ; preds = %for.cond.161
  br label %for.inc.300

for.inc.300:                                      ; preds = %for.end.299
  %181 = load i32, i32* %j, align 4
  %inc301 = add nsw i32 %181, 1
  store i32 %inc301, i32* %j, align 4
  br label %for.cond.157

for.end.302:                                      ; preds = %for.cond.157
  store i32 0, i32* %j, align 4
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.370, %for.end.302
  %182 = load i32, i32* %j, align 4
  %cmp304 = icmp slt i32 %182, 4
  br i1 %cmp304, label %for.body.306, label %for.end.372

for.body.306:                                     ; preds = %for.cond.303
  store i32 0, i32* %i, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.322, %for.body.306
  %183 = load i32, i32* %i, align 4
  %cmp308 = icmp slt i32 %183, 4
  br i1 %cmp308, label %for.body.310, label %for.end.324

for.body.310:                                     ; preds = %for.cond.307
  %184 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %184 to i64
  %185 = load i32, i32* %j, align 4
  %idxprom312 = sext i32 %185 to i64
  %186 = load i32, i32* %j0.addr, align 4
  %idxprom313 = sext i32 %186 to i64
  %187 = load i32, i32* %i0.addr, align 4
  %idxprom314 = sext i32 %187 to i64
  %188 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof315 = getelementptr inbounds %struct.img_par, %struct.img_par* %188, i32 0, i32 28
  %arrayidx316 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof315, i32 0, i64 %idxprom314
  %arrayidx317 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx316, i32 0, i64 %idxprom313
  %arrayidx318 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx317, i32 0, i64 %idxprom312
  %arrayidx319 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx318, i32 0, i64 %idxprom311
  %189 = load i32, i32* %arrayidx319, align 4
  %190 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %190 to i64
  %arrayidx321 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom320
  store i32 %189, i32* %arrayidx321, align 4
  br label %for.inc.322

for.inc.322:                                      ; preds = %for.body.310
  %191 = load i32, i32* %i, align 4
  %inc323 = add nsw i32 %191, 1
  store i32 %inc323, i32* %i, align 4
  br label %for.cond.307

for.end.324:                                      ; preds = %for.cond.307
  %arrayidx325 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %192 = load i32, i32* %arrayidx325, align 4
  %arrayidx326 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %193 = load i32, i32* %arrayidx326, align 4
  %add327 = add nsw i32 %192, %193
  %arrayidx328 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  store i32 %add327, i32* %arrayidx328, align 4
  %arrayidx329 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %194 = load i32, i32* %arrayidx329, align 4
  %arrayidx330 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %195 = load i32, i32* %arrayidx330, align 4
  %sub331 = sub nsw i32 %194, %195
  %arrayidx332 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  store i32 %sub331, i32* %arrayidx332, align 4
  %arrayidx333 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %196 = load i32, i32* %arrayidx333, align 4
  %shr334 = ashr i32 %196, 1
  %arrayidx335 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %197 = load i32, i32* %arrayidx335, align 4
  %sub336 = sub nsw i32 %shr334, %197
  %arrayidx337 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  store i32 %sub336, i32* %arrayidx337, align 4
  %arrayidx338 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %198 = load i32, i32* %arrayidx338, align 4
  %arrayidx339 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %199 = load i32, i32* %arrayidx339, align 4
  %shr340 = ashr i32 %199, 1
  %add341 = add nsw i32 %198, %shr340
  %arrayidx342 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  store i32 %add341, i32* %arrayidx342, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc.367, %for.end.324
  %200 = load i32, i32* %i, align 4
  %cmp344 = icmp slt i32 %200, 2
  br i1 %cmp344, label %for.body.346, label %for.end.369

for.body.346:                                     ; preds = %for.cond.343
  %201 = load i32, i32* %i, align 4
  %sub347 = sub nsw i32 3, %201
  store i32 %sub347, i32* %i1, align 4
  %202 = load i32, i32* %i, align 4
  %idxprom348 = sext i32 %202 to i64
  %arrayidx349 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom348
  %203 = load i32, i32* %arrayidx349, align 4
  %204 = load i32, i32* %i1, align 4
  %idxprom350 = sext i32 %204 to i64
  %arrayidx351 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom350
  %205 = load i32, i32* %arrayidx351, align 4
  %add352 = add nsw i32 %203, %205
  %206 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %206 to i64
  %207 = load i32, i32* %j, align 4
  %idxprom354 = sext i32 %207 to i64
  %208 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7 = getelementptr inbounds %struct.img_par, %struct.img_par* %208, i32 0, i32 27
  %arrayidx355 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom354
  %arrayidx356 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx355, i32 0, i64 %idxprom353
  store i32 %add352, i32* %arrayidx356, align 4
  %209 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %209 to i64
  %arrayidx358 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom357
  %210 = load i32, i32* %arrayidx358, align 4
  %211 = load i32, i32* %i1, align 4
  %idxprom359 = sext i32 %211 to i64
  %arrayidx360 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom359
  %212 = load i32, i32* %arrayidx360, align 4
  %sub361 = sub nsw i32 %210, %212
  %213 = load i32, i32* %i1, align 4
  %idxprom362 = sext i32 %213 to i64
  %214 = load i32, i32* %j, align 4
  %idxprom363 = sext i32 %214 to i64
  %215 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7364 = getelementptr inbounds %struct.img_par, %struct.img_par* %215, i32 0, i32 27
  %arrayidx365 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7364, i32 0, i64 %idxprom363
  %arrayidx366 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx365, i32 0, i64 %idxprom362
  store i32 %sub361, i32* %arrayidx366, align 4
  br label %for.inc.367

for.inc.367:                                      ; preds = %for.body.346
  %216 = load i32, i32* %i, align 4
  %inc368 = add nsw i32 %216, 1
  store i32 %inc368, i32* %i, align 4
  br label %for.cond.343

for.end.369:                                      ; preds = %for.cond.343
  br label %for.inc.370

for.inc.370:                                      ; preds = %for.end.369
  %217 = load i32, i32* %j, align 4
  %inc371 = add nsw i32 %217, 1
  store i32 %inc371, i32* %j, align 4
  br label %for.cond.303

for.end.372:                                      ; preds = %for.cond.303
  store i32 0, i32* %i, align 4
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.inc.442, %for.end.372
  %218 = load i32, i32* %i, align 4
  %cmp374 = icmp slt i32 %218, 4
  br i1 %cmp374, label %for.body.376, label %for.end.444

for.body.376:                                     ; preds = %for.cond.373
  store i32 0, i32* %j, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.388, %for.body.376
  %219 = load i32, i32* %j, align 4
  %cmp378 = icmp slt i32 %219, 4
  br i1 %cmp378, label %for.body.380, label %for.end.390

for.body.380:                                     ; preds = %for.cond.377
  %220 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %220 to i64
  %221 = load i32, i32* %j, align 4
  %idxprom382 = sext i32 %221 to i64
  %222 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7383 = getelementptr inbounds %struct.img_par, %struct.img_par* %222, i32 0, i32 27
  %arrayidx384 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7383, i32 0, i64 %idxprom382
  %arrayidx385 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx384, i32 0, i64 %idxprom381
  %223 = load i32, i32* %arrayidx385, align 4
  %224 = load i32, i32* %j, align 4
  %idxprom386 = sext i32 %224 to i64
  %arrayidx387 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom386
  store i32 %223, i32* %arrayidx387, align 4
  br label %for.inc.388

for.inc.388:                                      ; preds = %for.body.380
  %225 = load i32, i32* %j, align 4
  %inc389 = add nsw i32 %225, 1
  store i32 %inc389, i32* %j, align 4
  br label %for.cond.377

for.end.390:                                      ; preds = %for.cond.377
  %arrayidx391 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %226 = load i32, i32* %arrayidx391, align 4
  %arrayidx392 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %227 = load i32, i32* %arrayidx392, align 4
  %add393 = add nsw i32 %226, %227
  %arrayidx394 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  store i32 %add393, i32* %arrayidx394, align 4
  %arrayidx395 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %228 = load i32, i32* %arrayidx395, align 4
  %arrayidx396 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %229 = load i32, i32* %arrayidx396, align 4
  %sub397 = sub nsw i32 %228, %229
  %arrayidx398 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  store i32 %sub397, i32* %arrayidx398, align 4
  %arrayidx399 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %230 = load i32, i32* %arrayidx399, align 4
  %shr400 = ashr i32 %230, 1
  %arrayidx401 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %231 = load i32, i32* %arrayidx401, align 4
  %sub402 = sub nsw i32 %shr400, %231
  %arrayidx403 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  store i32 %sub402, i32* %arrayidx403, align 4
  %arrayidx404 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %232 = load i32, i32* %arrayidx404, align 4
  %arrayidx405 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %233 = load i32, i32* %arrayidx405, align 4
  %shr406 = ashr i32 %233, 1
  %add407 = add nsw i32 %232, %shr406
  %arrayidx408 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  store i32 %add407, i32* %arrayidx408, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.439, %for.end.390
  %234 = load i32, i32* %j, align 4
  %cmp410 = icmp slt i32 %234, 2
  br i1 %cmp410, label %for.body.412, label %for.end.441

for.body.412:                                     ; preds = %for.cond.409
  %235 = load i32, i32* %j, align 4
  %sub413 = sub nsw i32 3, %235
  store i32 %sub413, i32* %j1, align 4
  %236 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %236, i32 0, i32 107
  %237 = load i32, i32* %max_imgpel_value, align 4
  %238 = load i32, i32* %j, align 4
  %idxprom414 = sext i32 %238 to i64
  %arrayidx415 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom414
  %239 = load i32, i32* %arrayidx415, align 4
  %240 = load i32, i32* %j1, align 4
  %idxprom416 = sext i32 %240 to i64
  %arrayidx417 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom416
  %241 = load i32, i32* %arrayidx417, align 4
  %add418 = add nsw i32 %239, %241
  %call419 = call i32 @rshift_rnd_sf(i32 %add418, i32 6)
  %call420 = call i32 @iClip1(i32 %237, i32 %call419)
  %242 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %242 to i64
  %243 = load i32, i32* %j, align 4
  %idxprom422 = sext i32 %243 to i64
  %244 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7423 = getelementptr inbounds %struct.img_par, %struct.img_par* %244, i32 0, i32 27
  %arrayidx424 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7423, i32 0, i64 %idxprom422
  %arrayidx425 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx424, i32 0, i64 %idxprom421
  store i32 %call420, i32* %arrayidx425, align 4
  %245 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value426 = getelementptr inbounds %struct.img_par, %struct.img_par* %245, i32 0, i32 107
  %246 = load i32, i32* %max_imgpel_value426, align 4
  %247 = load i32, i32* %j, align 4
  %idxprom427 = sext i32 %247 to i64
  %arrayidx428 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom427
  %248 = load i32, i32* %arrayidx428, align 4
  %249 = load i32, i32* %j1, align 4
  %idxprom429 = sext i32 %249 to i64
  %arrayidx430 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom429
  %250 = load i32, i32* %arrayidx430, align 4
  %sub431 = sub nsw i32 %248, %250
  %call432 = call i32 @rshift_rnd_sf(i32 %sub431, i32 6)
  %call433 = call i32 @iClip1(i32 %246, i32 %call432)
  %251 = load i32, i32* %i, align 4
  %idxprom434 = sext i32 %251 to i64
  %252 = load i32, i32* %j1, align 4
  %idxprom435 = sext i32 %252 to i64
  %253 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7436 = getelementptr inbounds %struct.img_par, %struct.img_par* %253, i32 0, i32 27
  %arrayidx437 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7436, i32 0, i64 %idxprom435
  %arrayidx438 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx437, i32 0, i64 %idxprom434
  store i32 %call433, i32* %arrayidx438, align 4
  br label %for.inc.439

for.inc.439:                                      ; preds = %for.body.412
  %254 = load i32, i32* %j, align 4
  %inc440 = add nsw i32 %254, 1
  store i32 %inc440, i32* %j, align 4
  br label %for.cond.409

for.end.441:                                      ; preds = %for.cond.409
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.end.441
  %255 = load i32, i32* %i, align 4
  %inc443 = add nsw i32 %255, 1
  store i32 %inc443, i32* %i, align 4
  br label %for.cond.373

for.end.444:                                      ; preds = %for.cond.373
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #2 {
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
define internal i32 @isignab(i32 %a, i32 %b) #2 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %call = call i32 @iabs(i32 %1)
  %sub = sub nsw i32 0, %call
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %call1 = call i32 @iabs(i32 %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @copyblock_sp(%struct.img_par* %img, i32 %block_x, i32 %block_y) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %m5 = alloca [4 x i32], align 16
  %m6 = alloca [4 x i32], align 16
  %predicted_block = alloca [4 x [4 x i32]], align 16
  %qp_per = alloca i32, align 4
  %qp_rem = alloca i32, align 4
  %q_bits = alloca i32, align 4
  %qp_const2 = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 7
  %1 = load i32, i32* %qpsp, align 4
  %sub = sub nsw i32 %1, 0
  %div = sdiv i32 %sub, 6
  store i32 %div, i32* %qp_per, align 4
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp1 = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 7
  %3 = load i32, i32* %qpsp1, align 4
  %sub2 = sub nsw i32 %3, 0
  %rem = srem i32 %sub2, 6
  store i32 %rem, i32* %qp_rem, align 4
  %4 = load i32, i32* %qp_per, align 4
  %add = add nsw i32 15, %4
  store i32 %add, i32* %q_bits, align 4
  %5 = load i32, i32* %q_bits, align 4
  %shl = shl i32 1, %5
  %div3 = sdiv i32 %shl, 2
  store i32 %div3, i32* %qp_const2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %6 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %7, 4
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %block_x.addr, align 4
  %add7 = add nsw i32 %8, %9
  %idxprom = sext i32 %add7 to i64
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %block_y.addr, align 4
  %add8 = add nsw i32 %10, %11
  %idxprom9 = sext i32 %add8 to i64
  %12 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %12, i32 0, i32 25
  %arrayidx = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom9
  %arrayidx10 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx, i32 0, i64 %idxprom
  %13 = load i16, i16* %arrayidx10, align 2
  %conv = zext i16 %13 to i32
  %14 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx13, i32 0, i64 %idxprom11
  store i32 %conv, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %17 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.77, %for.end.17
  %18 = load i32, i32* %j, align 4
  %cmp19 = icmp slt i32 %18, 4
  br i1 %cmp19, label %for.body.21, label %for.end.79

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.49, %for.body.21
  %19 = load i32, i32* %i, align 4
  %cmp23 = icmp slt i32 %19, 2
  br i1 %cmp23, label %for.body.25, label %for.end.51

for.body.25:                                      ; preds = %for.cond.22
  %20 = load i32, i32* %i, align 4
  %sub26 = sub nsw i32 3, %20
  store i32 %sub26, i32* %i1, align 4
  %21 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx29, i32 0, i64 %idxprom27
  %23 = load i32, i32* %arrayidx30, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load i32, i32* %i1, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx33, i32 0, i64 %idxprom31
  %26 = load i32, i32* %arrayidx34, align 4
  %add35 = add nsw i32 %23, %26
  %27 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom36
  store i32 %add35, i32* %arrayidx37, align 4
  %28 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx40, i32 0, i64 %idxprom38
  %30 = load i32, i32* %arrayidx41, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %31 to i64
  %32 = load i32, i32* %i1, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx44, i32 0, i64 %idxprom42
  %33 = load i32, i32* %arrayidx45, align 4
  %sub46 = sub nsw i32 %30, %33
  %34 = load i32, i32* %i1, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom47
  store i32 %sub46, i32* %arrayidx48, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.25
  %35 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %35, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.22

for.end.51:                                       ; preds = %for.cond.22
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %36 = load i32, i32* %arrayidx52, align 4
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %37 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %36, %37
  %38 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %38 to i64
  %arrayidx56 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 0
  %arrayidx57 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx56, i32 0, i64 %idxprom55
  store i32 %add54, i32* %arrayidx57, align 4
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %39 = load i32, i32* %arrayidx58, align 4
  %arrayidx59 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %40 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %39, %40
  %41 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 2
  %arrayidx63 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx62, i32 0, i64 %idxprom61
  store i32 %sub60, i32* %arrayidx63, align 4
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %42 = load i32, i32* %arrayidx64, align 4
  %mul = mul nsw i32 %42, 2
  %arrayidx65 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %43 = load i32, i32* %arrayidx65, align 4
  %add66 = add nsw i32 %mul, %43
  %44 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %44 to i64
  %arrayidx68 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 1
  %arrayidx69 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx68, i32 0, i64 %idxprom67
  store i32 %add66, i32* %arrayidx69, align 4
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %45 = load i32, i32* %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %46 = load i32, i32* %arrayidx71, align 4
  %mul72 = mul nsw i32 %46, 2
  %sub73 = sub nsw i32 %45, %mul72
  %47 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %47 to i64
  %arrayidx75 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 3
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx75, i32 0, i64 %idxprom74
  store i32 %sub73, i32* %arrayidx76, align 4
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end.51
  %48 = load i32, i32* %j, align 4
  %inc78 = add nsw i32 %48, 1
  store i32 %inc78, i32* %j, align 4
  br label %for.cond.18

for.end.79:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.140, %for.end.79
  %49 = load i32, i32* %i, align 4
  %cmp81 = icmp slt i32 %49, 4
  br i1 %cmp81, label %for.body.83, label %for.end.142

for.body.83:                                      ; preds = %for.cond.80
  store i32 0, i32* %j, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.111, %for.body.83
  %50 = load i32, i32* %j, align 4
  %cmp85 = icmp slt i32 %50, 2
  br i1 %cmp85, label %for.body.87, label %for.end.113

for.body.87:                                      ; preds = %for.cond.84
  %51 = load i32, i32* %j, align 4
  %sub88 = sub nsw i32 3, %51
  store i32 %sub88, i32* %j1, align 4
  %52 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %52 to i64
  %53 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %53 to i64
  %arrayidx91 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom90
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx91, i32 0, i64 %idxprom89
  %54 = load i32, i32* %arrayidx92, align 4
  %55 = load i32, i32* %j1, align 4
  %idxprom93 = sext i32 %55 to i64
  %56 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %56 to i64
  %arrayidx95 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx95, i32 0, i64 %idxprom93
  %57 = load i32, i32* %arrayidx96, align 4
  %add97 = add nsw i32 %54, %57
  %58 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %58 to i64
  %arrayidx99 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom98
  store i32 %add97, i32* %arrayidx99, align 4
  %59 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %60 to i64
  %arrayidx102 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx102, i32 0, i64 %idxprom100
  %61 = load i32, i32* %arrayidx103, align 4
  %62 = load i32, i32* %j1, align 4
  %idxprom104 = sext i32 %62 to i64
  %63 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %63 to i64
  %arrayidx106 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx106, i32 0, i64 %idxprom104
  %64 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 %61, %64
  %65 = load i32, i32* %j1, align 4
  %idxprom109 = sext i32 %65 to i64
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom109
  store i32 %sub108, i32* %arrayidx110, align 4
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.87
  %66 = load i32, i32* %j, align 4
  %inc112 = add nsw i32 %66, 1
  store i32 %inc112, i32* %j, align 4
  br label %for.cond.84

for.end.113:                                      ; preds = %for.cond.84
  %arrayidx114 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %67 = load i32, i32* %arrayidx114, align 4
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %68 = load i32, i32* %arrayidx115, align 4
  %add116 = add nsw i32 %67, %68
  %69 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %69 to i64
  %arrayidx118 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx118, i32 0, i64 0
  store i32 %add116, i32* %arrayidx119, align 4
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %70 = load i32, i32* %arrayidx120, align 4
  %arrayidx121 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %71 = load i32, i32* %arrayidx121, align 4
  %sub122 = sub nsw i32 %70, %71
  %72 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %72 to i64
  %arrayidx124 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom123
  %arrayidx125 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx124, i32 0, i64 2
  store i32 %sub122, i32* %arrayidx125, align 4
  %arrayidx126 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %73 = load i32, i32* %arrayidx126, align 4
  %mul127 = mul nsw i32 %73, 2
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %74 = load i32, i32* %arrayidx128, align 4
  %add129 = add nsw i32 %mul127, %74
  %75 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %75 to i64
  %arrayidx131 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx131, i32 0, i64 1
  store i32 %add129, i32* %arrayidx132, align 4
  %arrayidx133 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %76 = load i32, i32* %arrayidx133, align 4
  %arrayidx134 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %77 = load i32, i32* %arrayidx134, align 4
  %mul135 = mul nsw i32 %77, 2
  %sub136 = sub nsw i32 %76, %mul135
  %78 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %78 to i64
  %arrayidx138 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx138, i32 0, i64 3
  store i32 %sub136, i32* %arrayidx139, align 4
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.113
  %79 = load i32, i32* %i, align 4
  %inc141 = add nsw i32 %79, 1
  store i32 %inc141, i32* %i, align 4
  br label %for.cond.80

for.end.142:                                      ; preds = %for.cond.80
  store i32 0, i32* %j, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.183, %for.end.142
  %80 = load i32, i32* %j, align 4
  %cmp144 = icmp slt i32 %80, 4
  br i1 %cmp144, label %for.body.146, label %for.end.185

for.body.146:                                     ; preds = %for.cond.143
  store i32 0, i32* %i, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.180, %for.body.146
  %81 = load i32, i32* %i, align 4
  %cmp148 = icmp slt i32 %81, 4
  br i1 %cmp148, label %for.body.150, label %for.end.182

for.body.150:                                     ; preds = %for.cond.147
  %82 = load i32, i32* %j, align 4
  %idxprom151 = sext i32 %82 to i64
  %83 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %83 to i64
  %arrayidx153 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom152
  %arrayidx154 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx153, i32 0, i64 %idxprom151
  %84 = load i32, i32* %arrayidx154, align 4
  %call = call i32 @iabs(i32 %84)
  %85 = load i32, i32* %j, align 4
  %idxprom155 = sext i32 %85 to i64
  %86 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %86 to i64
  %87 = load i32, i32* %qp_rem, align 4
  %idxprom157 = sext i32 %87 to i64
  %arrayidx158 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom157
  %arrayidx159 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx158, i32 0, i64 %idxprom156
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx159, i32 0, i64 %idxprom155
  %88 = load i32, i32* %arrayidx160, align 4
  %mul161 = mul nsw i32 %call, %88
  %89 = load i32, i32* %qp_const2, align 4
  %add162 = add nsw i32 %mul161, %89
  %90 = load i32, i32* %q_bits, align 4
  %shr = ashr i32 %add162, %90
  %91 = load i32, i32* %j, align 4
  %idxprom163 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %92 to i64
  %arrayidx165 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %predicted_block, i32 0, i64 %idxprom164
  %arrayidx166 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx165, i32 0, i64 %idxprom163
  %93 = load i32, i32* %arrayidx166, align 4
  %call167 = call i32 @isignab(i32 %shr, i32 %93)
  %94 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %94 to i64
  %95 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %95 to i64
  %96 = load i32, i32* %qp_rem, align 4
  %idxprom170 = sext i32 %96 to i64
  %arrayidx171 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx171, i32 0, i64 %idxprom169
  %arrayidx173 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx172, i32 0, i64 %idxprom168
  %97 = load i32, i32* %arrayidx173, align 4
  %mul174 = mul nsw i32 %call167, %97
  %98 = load i32, i32* %qp_per, align 4
  %shl175 = shl i32 %mul174, %98
  %99 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom177 = sext i32 %100 to i64
  %101 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7 = getelementptr inbounds %struct.img_par, %struct.img_par* %101, i32 0, i32 27
  %arrayidx178 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom177
  %arrayidx179 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx178, i32 0, i64 %idxprom176
  store i32 %shl175, i32* %arrayidx179, align 4
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.body.150
  %102 = load i32, i32* %i, align 4
  %inc181 = add nsw i32 %102, 1
  store i32 %inc181, i32* %i, align 4
  br label %for.cond.147

for.end.182:                                      ; preds = %for.cond.147
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.end.182
  %103 = load i32, i32* %j, align 4
  %inc184 = add nsw i32 %103, 1
  store i32 %inc184, i32* %j, align 4
  br label %for.cond.143

for.end.185:                                      ; preds = %for.cond.143
  store i32 0, i32* %j, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.250, %for.end.185
  %104 = load i32, i32* %j, align 4
  %cmp187 = icmp slt i32 %104, 4
  br i1 %cmp187, label %for.body.189, label %for.end.252

for.body.189:                                     ; preds = %for.cond.186
  store i32 0, i32* %i, align 4
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.201, %for.body.189
  %105 = load i32, i32* %i, align 4
  %cmp191 = icmp slt i32 %105, 4
  br i1 %cmp191, label %for.body.193, label %for.end.203

for.body.193:                                     ; preds = %for.cond.190
  %106 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %106 to i64
  %107 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %107 to i64
  %108 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7196 = getelementptr inbounds %struct.img_par, %struct.img_par* %108, i32 0, i32 27
  %arrayidx197 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7196, i32 0, i64 %idxprom195
  %arrayidx198 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx197, i32 0, i64 %idxprom194
  %109 = load i32, i32* %arrayidx198, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %110 to i64
  %arrayidx200 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom199
  store i32 %109, i32* %arrayidx200, align 4
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.body.193
  %111 = load i32, i32* %i, align 4
  %inc202 = add nsw i32 %111, 1
  store i32 %inc202, i32* %i, align 4
  br label %for.cond.190

for.end.203:                                      ; preds = %for.cond.190
  %arrayidx204 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %112 = load i32, i32* %arrayidx204, align 4
  %arrayidx205 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %113 = load i32, i32* %arrayidx205, align 4
  %add206 = add nsw i32 %112, %113
  %arrayidx207 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  store i32 %add206, i32* %arrayidx207, align 4
  %arrayidx208 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %114 = load i32, i32* %arrayidx208, align 4
  %arrayidx209 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %115 = load i32, i32* %arrayidx209, align 4
  %sub210 = sub nsw i32 %114, %115
  %arrayidx211 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  store i32 %sub210, i32* %arrayidx211, align 4
  %arrayidx212 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %116 = load i32, i32* %arrayidx212, align 4
  %shr213 = ashr i32 %116, 1
  %arrayidx214 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %117 = load i32, i32* %arrayidx214, align 4
  %sub215 = sub nsw i32 %shr213, %117
  %arrayidx216 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  store i32 %sub215, i32* %arrayidx216, align 4
  %arrayidx217 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %118 = load i32, i32* %arrayidx217, align 4
  %arrayidx218 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %119 = load i32, i32* %arrayidx218, align 4
  %shr219 = ashr i32 %119, 1
  %add220 = add nsw i32 %118, %shr219
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  store i32 %add220, i32* %arrayidx221, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.247, %for.end.203
  %120 = load i32, i32* %i, align 4
  %cmp223 = icmp slt i32 %120, 2
  br i1 %cmp223, label %for.body.225, label %for.end.249

for.body.225:                                     ; preds = %for.cond.222
  %121 = load i32, i32* %i, align 4
  %sub226 = sub nsw i32 3, %121
  store i32 %sub226, i32* %i1, align 4
  %122 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %122 to i64
  %arrayidx228 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom227
  %123 = load i32, i32* %arrayidx228, align 4
  %124 = load i32, i32* %i1, align 4
  %idxprom229 = sext i32 %124 to i64
  %arrayidx230 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom229
  %125 = load i32, i32* %arrayidx230, align 4
  %add231 = add nsw i32 %123, %125
  %126 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %126 to i64
  %127 = load i32, i32* %j, align 4
  %idxprom233 = sext i32 %127 to i64
  %128 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7234 = getelementptr inbounds %struct.img_par, %struct.img_par* %128, i32 0, i32 27
  %arrayidx235 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7234, i32 0, i64 %idxprom233
  %arrayidx236 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx235, i32 0, i64 %idxprom232
  store i32 %add231, i32* %arrayidx236, align 4
  %129 = load i32, i32* %i, align 4
  %idxprom237 = sext i32 %129 to i64
  %arrayidx238 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom237
  %130 = load i32, i32* %arrayidx238, align 4
  %131 = load i32, i32* %i1, align 4
  %idxprom239 = sext i32 %131 to i64
  %arrayidx240 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom239
  %132 = load i32, i32* %arrayidx240, align 4
  %sub241 = sub nsw i32 %130, %132
  %133 = load i32, i32* %i1, align 4
  %idxprom242 = sext i32 %133 to i64
  %134 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %134 to i64
  %135 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7244 = getelementptr inbounds %struct.img_par, %struct.img_par* %135, i32 0, i32 27
  %arrayidx245 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7244, i32 0, i64 %idxprom243
  %arrayidx246 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx245, i32 0, i64 %idxprom242
  store i32 %sub241, i32* %arrayidx246, align 4
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.body.225
  %136 = load i32, i32* %i, align 4
  %inc248 = add nsw i32 %136, 1
  store i32 %inc248, i32* %i, align 4
  br label %for.cond.222

for.end.249:                                      ; preds = %for.cond.222
  br label %for.inc.250

for.inc.250:                                      ; preds = %for.end.249
  %137 = load i32, i32* %j, align 4
  %inc251 = add nsw i32 %137, 1
  store i32 %inc251, i32* %j, align 4
  br label %for.cond.186

for.end.252:                                      ; preds = %for.cond.186
  store i32 0, i32* %i, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.322, %for.end.252
  %138 = load i32, i32* %i, align 4
  %cmp254 = icmp slt i32 %138, 4
  br i1 %cmp254, label %for.body.256, label %for.end.324

for.body.256:                                     ; preds = %for.cond.253
  store i32 0, i32* %j, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.268, %for.body.256
  %139 = load i32, i32* %j, align 4
  %cmp258 = icmp slt i32 %139, 4
  br i1 %cmp258, label %for.body.260, label %for.end.270

for.body.260:                                     ; preds = %for.cond.257
  %140 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %140 to i64
  %141 = load i32, i32* %j, align 4
  %idxprom262 = sext i32 %141 to i64
  %142 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7263 = getelementptr inbounds %struct.img_par, %struct.img_par* %142, i32 0, i32 27
  %arrayidx264 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7263, i32 0, i64 %idxprom262
  %arrayidx265 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx264, i32 0, i64 %idxprom261
  %143 = load i32, i32* %arrayidx265, align 4
  %144 = load i32, i32* %j, align 4
  %idxprom266 = sext i32 %144 to i64
  %arrayidx267 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom266
  store i32 %143, i32* %arrayidx267, align 4
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.body.260
  %145 = load i32, i32* %j, align 4
  %inc269 = add nsw i32 %145, 1
  store i32 %inc269, i32* %j, align 4
  br label %for.cond.257

for.end.270:                                      ; preds = %for.cond.257
  %arrayidx271 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %146 = load i32, i32* %arrayidx271, align 4
  %arrayidx272 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %147 = load i32, i32* %arrayidx272, align 4
  %add273 = add nsw i32 %146, %147
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 0
  store i32 %add273, i32* %arrayidx274, align 4
  %arrayidx275 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %148 = load i32, i32* %arrayidx275, align 4
  %arrayidx276 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %149 = load i32, i32* %arrayidx276, align 4
  %sub277 = sub nsw i32 %148, %149
  %arrayidx278 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 1
  store i32 %sub277, i32* %arrayidx278, align 4
  %arrayidx279 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %150 = load i32, i32* %arrayidx279, align 4
  %shr280 = ashr i32 %150, 1
  %arrayidx281 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %151 = load i32, i32* %arrayidx281, align 4
  %sub282 = sub nsw i32 %shr280, %151
  %arrayidx283 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 2
  store i32 %sub282, i32* %arrayidx283, align 4
  %arrayidx284 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %152 = load i32, i32* %arrayidx284, align 4
  %arrayidx285 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %153 = load i32, i32* %arrayidx285, align 4
  %shr286 = ashr i32 %153, 1
  %add287 = add nsw i32 %152, %shr286
  %arrayidx288 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 3
  store i32 %add287, i32* %arrayidx288, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.319, %for.end.270
  %154 = load i32, i32* %j, align 4
  %cmp290 = icmp slt i32 %154, 2
  br i1 %cmp290, label %for.body.292, label %for.end.321

for.body.292:                                     ; preds = %for.cond.289
  %155 = load i32, i32* %j, align 4
  %sub293 = sub nsw i32 3, %155
  store i32 %sub293, i32* %j1, align 4
  %156 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value = getelementptr inbounds %struct.img_par, %struct.img_par* %156, i32 0, i32 107
  %157 = load i32, i32* %max_imgpel_value, align 4
  %158 = load i32, i32* %j, align 4
  %idxprom294 = sext i32 %158 to i64
  %arrayidx295 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom294
  %159 = load i32, i32* %arrayidx295, align 4
  %160 = load i32, i32* %j1, align 4
  %idxprom296 = sext i32 %160 to i64
  %arrayidx297 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom296
  %161 = load i32, i32* %arrayidx297, align 4
  %add298 = add nsw i32 %159, %161
  %call299 = call i32 @rshift_rnd_sf(i32 %add298, i32 6)
  %call300 = call i32 @iClip1(i32 %157, i32 %call299)
  %162 = load i32, i32* %i, align 4
  %idxprom301 = sext i32 %162 to i64
  %163 = load i32, i32* %j, align 4
  %idxprom302 = sext i32 %163 to i64
  %164 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7303 = getelementptr inbounds %struct.img_par, %struct.img_par* %164, i32 0, i32 27
  %arrayidx304 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7303, i32 0, i64 %idxprom302
  %arrayidx305 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx304, i32 0, i64 %idxprom301
  store i32 %call300, i32* %arrayidx305, align 4
  %165 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %max_imgpel_value306 = getelementptr inbounds %struct.img_par, %struct.img_par* %165, i32 0, i32 107
  %166 = load i32, i32* %max_imgpel_value306, align 4
  %167 = load i32, i32* %j, align 4
  %idxprom307 = sext i32 %167 to i64
  %arrayidx308 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom307
  %168 = load i32, i32* %arrayidx308, align 4
  %169 = load i32, i32* %j1, align 4
  %idxprom309 = sext i32 %169 to i64
  %arrayidx310 = getelementptr inbounds [4 x i32], [4 x i32]* %m6, i32 0, i64 %idxprom309
  %170 = load i32, i32* %arrayidx310, align 4
  %sub311 = sub nsw i32 %168, %170
  %call312 = call i32 @rshift_rnd_sf(i32 %sub311, i32 6)
  %call313 = call i32 @iClip1(i32 %166, i32 %call312)
  %171 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %171 to i64
  %172 = load i32, i32* %j1, align 4
  %idxprom315 = sext i32 %172 to i64
  %173 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7316 = getelementptr inbounds %struct.img_par, %struct.img_par* %173, i32 0, i32 27
  %arrayidx317 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7316, i32 0, i64 %idxprom315
  %arrayidx318 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx317, i32 0, i64 %idxprom314
  store i32 %call313, i32* %arrayidx318, align 4
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.body.292
  %174 = load i32, i32* %j, align 4
  %inc320 = add nsw i32 %174, 1
  store i32 %inc320, i32* %j, align 4
  br label %for.cond.289

for.end.321:                                      ; preds = %for.cond.289
  br label %for.inc.322

for.inc.322:                                      ; preds = %for.end.321
  %175 = load i32, i32* %i, align 4
  %inc323 = add nsw i32 %175, 1
  store i32 %inc323, i32* %i, align 4
  br label %for.cond.253

for.end.324:                                      ; preds = %for.cond.253
  store i32 0, i32* %j, align 4
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc.350, %for.end.324
  %176 = load i32, i32* %j, align 4
  %cmp326 = icmp slt i32 %176, 4
  br i1 %cmp326, label %for.body.328, label %for.end.352

for.body.328:                                     ; preds = %for.cond.325
  store i32 0, i32* %i, align 4
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.347, %for.body.328
  %177 = load i32, i32* %i, align 4
  %cmp330 = icmp slt i32 %177, 4
  br i1 %cmp330, label %for.body.332, label %for.end.349

for.body.332:                                     ; preds = %for.cond.329
  %178 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %178 to i64
  %179 = load i32, i32* %j, align 4
  %idxprom334 = sext i32 %179 to i64
  %180 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %m7335 = getelementptr inbounds %struct.img_par, %struct.img_par* %180, i32 0, i32 27
  %arrayidx336 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7335, i32 0, i64 %idxprom334
  %arrayidx337 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx336, i32 0, i64 %idxprom333
  %181 = load i32, i32* %arrayidx337, align 4
  %conv338 = trunc i32 %181 to i16
  %182 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_x = getelementptr inbounds %struct.img_par, %struct.img_par* %182, i32 0, i32 20
  %183 = load i32, i32* %pix_x, align 4
  %184 = load i32, i32* %block_x.addr, align 4
  %add339 = add nsw i32 %183, %184
  %185 = load i32, i32* %i, align 4
  %add340 = add nsw i32 %add339, %185
  %idxprom341 = sext i32 %add340 to i64
  %186 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %pix_y = getelementptr inbounds %struct.img_par, %struct.img_par* %186, i32 0, i32 19
  %187 = load i32, i32* %pix_y, align 4
  %188 = load i32, i32* %block_y.addr, align 4
  %add342 = add nsw i32 %187, %188
  %189 = load i32, i32* %j, align 4
  %add343 = add nsw i32 %add342, %189
  %idxprom344 = sext i32 %add343 to i64
  %190 = load %struct.storable_picture*, %struct.storable_picture** @dec_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %190, i32 0, i32 32
  %191 = load i16**, i16*** %imgY, align 8
  %arrayidx345 = getelementptr inbounds i16*, i16** %191, i64 %idxprom344
  %192 = load i16*, i16** %arrayidx345, align 8
  %arrayidx346 = getelementptr inbounds i16, i16* %192, i64 %idxprom341
  store i16 %conv338, i16* %arrayidx346, align 2
  br label %for.inc.347

for.inc.347:                                      ; preds = %for.body.332
  %193 = load i32, i32* %i, align 4
  %inc348 = add nsw i32 %193, 1
  store i32 %inc348, i32* %i, align 4
  br label %for.cond.329

for.end.349:                                      ; preds = %for.cond.329
  br label %for.inc.350

for.inc.350:                                      ; preds = %for.end.349
  %194 = load i32, i32* %j, align 4
  %inc351 = add nsw i32 %194, 1
  store i32 %inc351, i32* %j, align 4
  br label %for.cond.325

for.end.352:                                      ; preds = %for.cond.325
  ret void
}

; Function Attrs: nounwind uwtable
define void @itrans_sp_chroma(%struct.img_par* %img, i32 %ll) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %ll.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %ilev = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %mb_y = alloca i32, align 4
  %m5 = alloca [4 x i32], align 16
  %predicted_chroma_block = alloca [8 x [8 x i32]], align 16
  %mp1 = alloca [4 x i32], align 16
  %qp_per = alloca i32, align 4
  %qp_rem = alloca i32, align 4
  %q_bits = alloca i32, align 4
  %qp_per_sp = alloca i32, align 4
  %qp_rem_sp = alloca i32, align 4
  %q_bits_sp = alloca i32, align 4
  %qp_const2 = alloca i32, align 4
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %ll, i32* %ll.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 6
  %1 = load i32, i32* %qp, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp1 = getelementptr inbounds %struct.img_par, %struct.img_par* %2, i32 0, i32 6
  %3 = load i32, i32* %qp1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp2 = getelementptr inbounds %struct.img_par, %struct.img_par* %4, i32 0, i32 6
  %5 = load i32, i32* %qp2, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %conv, %cond.false ]
  %sub = sub nsw i32 %cond, 0
  %div = sdiv i32 %sub, 6
  store i32 %div, i32* %qp_per, align 4
  %7 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp3 = getelementptr inbounds %struct.img_par, %struct.img_par* %7, i32 0, i32 6
  %8 = load i32, i32* %qp3, align 4
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %9 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp7 = getelementptr inbounds %struct.img_par, %struct.img_par* %9, i32 0, i32 6
  %10 = load i32, i32* %qp7, align 4
  br label %cond.end.13

cond.false.8:                                     ; preds = %cond.end
  %11 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qp9 = getelementptr inbounds %struct.img_par, %struct.img_par* %11, i32 0, i32 6
  %12 = load i32, i32* %qp9, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom10
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.8, %cond.true.6
  %cond14 = phi i32 [ %10, %cond.true.6 ], [ %conv12, %cond.false.8 ]
  %sub15 = sub nsw i32 %cond14, 0
  %rem = srem i32 %sub15, 6
  store i32 %rem, i32* %qp_rem, align 4
  %14 = load i32, i32* %qp_per, align 4
  %add = add nsw i32 15, %14
  store i32 %add, i32* %q_bits, align 4
  %15 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp = getelementptr inbounds %struct.img_par, %struct.img_par* %15, i32 0, i32 7
  %16 = load i32, i32* %qpsp, align 4
  %cmp16 = icmp slt i32 %16, 0
  br i1 %cmp16, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.end.13
  %17 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp19 = getelementptr inbounds %struct.img_par, %struct.img_par* %17, i32 0, i32 7
  %18 = load i32, i32* %qpsp19, align 4
  br label %cond.end.25

cond.false.20:                                    ; preds = %cond.end.13
  %19 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp21 = getelementptr inbounds %struct.img_par, %struct.img_par* %19, i32 0, i32 7
  %20 = load i32, i32* %qpsp21, align 4
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom22
  %21 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %21 to i32
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.20, %cond.true.18
  %cond26 = phi i32 [ %18, %cond.true.18 ], [ %conv24, %cond.false.20 ]
  %sub27 = sub nsw i32 %cond26, 0
  %div28 = sdiv i32 %sub27, 6
  store i32 %div28, i32* %qp_per_sp, align 4
  %22 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp29 = getelementptr inbounds %struct.img_par, %struct.img_par* %22, i32 0, i32 7
  %23 = load i32, i32* %qpsp29, align 4
  %cmp30 = icmp slt i32 %23, 0
  br i1 %cmp30, label %cond.true.32, label %cond.false.34

cond.true.32:                                     ; preds = %cond.end.25
  %24 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp33 = getelementptr inbounds %struct.img_par, %struct.img_par* %24, i32 0, i32 7
  %25 = load i32, i32* %qpsp33, align 4
  br label %cond.end.39

cond.false.34:                                    ; preds = %cond.end.25
  %26 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp35 = getelementptr inbounds %struct.img_par, %struct.img_par* %26, i32 0, i32 7
  %27 = load i32, i32* %qpsp35, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom36
  %28 = load i8, i8* %arrayidx37, align 1
  %conv38 = zext i8 %28 to i32
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.34, %cond.true.32
  %cond40 = phi i32 [ %25, %cond.true.32 ], [ %conv38, %cond.false.34 ]
  %sub41 = sub nsw i32 %cond40, 0
  %rem42 = srem i32 %sub41, 6
  store i32 %rem42, i32* %qp_rem_sp, align 4
  %29 = load i32, i32* %qp_per_sp, align 4
  %add43 = add nsw i32 15, %29
  store i32 %add43, i32* %q_bits_sp, align 4
  %30 = load i32, i32* %q_bits_sp, align 4
  %shl = shl i32 1, %30
  %div44 = sdiv i32 %shl, 2
  store i32 %div44, i32* %qp_const2, align 4
  %31 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type = getelementptr inbounds %struct.img_par, %struct.img_par* %31, i32 0, i32 10
  %32 = load i32, i32* %type, align 4
  %cmp45 = icmp eq i32 %32, 4
  br i1 %cmp45, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.39
  %33 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp47 = getelementptr inbounds %struct.img_par, %struct.img_par* %33, i32 0, i32 7
  %34 = load i32, i32* %qpsp47, align 4
  %cmp48 = icmp slt i32 %34, 0
  br i1 %cmp48, label %cond.true.50, label %cond.false.52

cond.true.50:                                     ; preds = %if.then
  %35 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp51 = getelementptr inbounds %struct.img_par, %struct.img_par* %35, i32 0, i32 7
  %36 = load i32, i32* %qpsp51, align 4
  br label %cond.end.57

cond.false.52:                                    ; preds = %if.then
  %37 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp53 = getelementptr inbounds %struct.img_par, %struct.img_par* %37, i32 0, i32 7
  %38 = load i32, i32* %qpsp53, align 4
  %idxprom54 = sext i32 %38 to i64
  %arrayidx55 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom54
  %39 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %39 to i32
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.52, %cond.true.50
  %cond58 = phi i32 [ %36, %cond.true.50 ], [ %conv56, %cond.false.52 ]
  %sub59 = sub nsw i32 %cond58, 0
  %div60 = sdiv i32 %sub59, 6
  store i32 %div60, i32* %qp_per, align 4
  %40 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp61 = getelementptr inbounds %struct.img_par, %struct.img_par* %40, i32 0, i32 7
  %41 = load i32, i32* %qpsp61, align 4
  %cmp62 = icmp slt i32 %41, 0
  br i1 %cmp62, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %cond.end.57
  %42 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp65 = getelementptr inbounds %struct.img_par, %struct.img_par* %42, i32 0, i32 7
  %43 = load i32, i32* %qpsp65, align 4
  br label %cond.end.71

cond.false.66:                                    ; preds = %cond.end.57
  %44 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %qpsp67 = getelementptr inbounds %struct.img_par, %struct.img_par* %44, i32 0, i32 7
  %45 = load i32, i32* %qpsp67, align 4
  %idxprom68 = sext i32 %45 to i64
  %arrayidx69 = getelementptr inbounds [52 x i8], [52 x i8]* @QP_SCALE_CR, i32 0, i64 %idxprom68
  %46 = load i8, i8* %arrayidx69, align 1
  %conv70 = zext i8 %46 to i32
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.66, %cond.true.64
  %cond72 = phi i32 [ %43, %cond.true.64 ], [ %conv70, %cond.false.66 ]
  %sub73 = sub nsw i32 %cond72, 0
  %rem74 = srem i32 %sub73, 6
  store i32 %rem74, i32* %qp_rem, align 4
  %47 = load i32, i32* %qp_per, align 4
  %add75 = add nsw i32 15, %47
  store i32 %add75, i32* %q_bits, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.71, %cond.end.39
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.96, %if.end
  %48 = load i32, i32* %j, align 4
  %cmp76 = icmp slt i32 %48, 8
  br i1 %cmp76, label %for.body, label %for.end.98

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc, %for.body
  %49 = load i32, i32* %i, align 4
  %cmp79 = icmp slt i32 %49, 8
  br i1 %cmp79, label %for.body.81, label %for.end

for.body.81:                                      ; preds = %for.cond.78
  %50 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %50 to i64
  %51 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %51 to i64
  %52 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr = getelementptr inbounds %struct.img_par, %struct.img_par* %52, i32 0, i32 25
  %arrayidx84 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx84, i32 0, i64 %idxprom82
  %53 = load i16, i16* %arrayidx85, align 2
  %conv86 = zext i16 %53 to i32
  %54 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %54 to i64
  %55 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %55 to i64
  %arrayidx89 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx89, i32 0, i64 %idxprom87
  store i32 %conv86, i32* %arrayidx90, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %56 to i64
  %57 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %57 to i64
  %58 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %mpr93 = getelementptr inbounds %struct.img_par, %struct.img_par* %58, i32 0, i32 25
  %arrayidx94 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr93, i32 0, i64 %idxprom92
  %arrayidx95 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx94, i32 0, i64 %idxprom91
  store i16 0, i16* %arrayidx95, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.81
  %59 = load i32, i32* %i, align 4
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.78

for.end:                                          ; preds = %for.cond.78
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end
  %60 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %60, 1
  store i32 %inc97, i32* %j, align 4
  br label %for.cond

for.end.98:                                       ; preds = %for.cond
  store i32 0, i32* %n2, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.260, %for.end.98
  %61 = load i32, i32* %n2, align 4
  %cmp100 = icmp sle i32 %61, 4
  br i1 %cmp100, label %for.body.102, label %for.end.262

for.body.102:                                     ; preds = %for.cond.99
  store i32 0, i32* %n1, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.257, %for.body.102
  %62 = load i32, i32* %n1, align 4
  %cmp104 = icmp sle i32 %62, 4
  br i1 %cmp104, label %for.body.106, label %for.end.259

for.body.106:                                     ; preds = %for.cond.103
  store i32 0, i32* %j, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.178, %for.body.106
  %63 = load i32, i32* %j, align 4
  %cmp108 = icmp slt i32 %63, 4
  br i1 %cmp108, label %for.body.110, label %for.end.180

for.body.110:                                     ; preds = %for.cond.107
  %64 = load i32, i32* %n2, align 4
  %65 = load i32, i32* %j, align 4
  %add111 = add nsw i32 %64, %65
  store i32 %add111, i32* %mb_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.143, %for.body.110
  %66 = load i32, i32* %i, align 4
  %cmp113 = icmp slt i32 %66, 2
  br i1 %cmp113, label %for.body.115, label %for.end.145

for.body.115:                                     ; preds = %for.cond.112
  %67 = load i32, i32* %i, align 4
  %sub116 = sub nsw i32 3, %67
  store i32 %sub116, i32* %i1, align 4
  %68 = load i32, i32* %mb_y, align 4
  %idxprom117 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %n1, align 4
  %add118 = add nsw i32 %69, %70
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom119
  %arrayidx121 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx120, i32 0, i64 %idxprom117
  %71 = load i32, i32* %arrayidx121, align 4
  %72 = load i32, i32* %mb_y, align 4
  %idxprom122 = sext i32 %72 to i64
  %73 = load i32, i32* %i1, align 4
  %74 = load i32, i32* %n1, align 4
  %add123 = add nsw i32 %73, %74
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx125, i32 0, i64 %idxprom122
  %75 = load i32, i32* %arrayidx126, align 4
  %add127 = add nsw i32 %71, %75
  %76 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %76 to i64
  %arrayidx129 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom128
  store i32 %add127, i32* %arrayidx129, align 4
  %77 = load i32, i32* %mb_y, align 4
  %idxprom130 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %n1, align 4
  %add131 = add nsw i32 %78, %79
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx133, i32 0, i64 %idxprom130
  %80 = load i32, i32* %arrayidx134, align 4
  %81 = load i32, i32* %mb_y, align 4
  %idxprom135 = sext i32 %81 to i64
  %82 = load i32, i32* %i1, align 4
  %83 = load i32, i32* %n1, align 4
  %add136 = add nsw i32 %82, %83
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx138, i32 0, i64 %idxprom135
  %84 = load i32, i32* %arrayidx139, align 4
  %sub140 = sub nsw i32 %80, %84
  %85 = load i32, i32* %i1, align 4
  %idxprom141 = sext i32 %85 to i64
  %arrayidx142 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom141
  store i32 %sub140, i32* %arrayidx142, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.115
  %86 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %86, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.112

for.end.145:                                      ; preds = %for.cond.112
  %arrayidx146 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %87 = load i32, i32* %arrayidx146, align 4
  %arrayidx147 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %88 = load i32, i32* %arrayidx147, align 4
  %add148 = add nsw i32 %87, %88
  %89 = load i32, i32* %mb_y, align 4
  %idxprom149 = sext i32 %89 to i64
  %90 = load i32, i32* %n1, align 4
  %idxprom150 = sext i32 %90 to i64
  %arrayidx151 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom150
  %arrayidx152 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx151, i32 0, i64 %idxprom149
  store i32 %add148, i32* %arrayidx152, align 4
  %arrayidx153 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %91 = load i32, i32* %arrayidx153, align 4
  %arrayidx154 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %92 = load i32, i32* %arrayidx154, align 4
  %sub155 = sub nsw i32 %91, %92
  %93 = load i32, i32* %mb_y, align 4
  %idxprom156 = sext i32 %93 to i64
  %94 = load i32, i32* %n1, align 4
  %add157 = add nsw i32 %94, 2
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx159, i32 0, i64 %idxprom156
  store i32 %sub155, i32* %arrayidx160, align 4
  %arrayidx161 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %95 = load i32, i32* %arrayidx161, align 4
  %mul = mul nsw i32 %95, 2
  %arrayidx162 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %96 = load i32, i32* %arrayidx162, align 4
  %add163 = add nsw i32 %mul, %96
  %97 = load i32, i32* %mb_y, align 4
  %idxprom164 = sext i32 %97 to i64
  %98 = load i32, i32* %n1, align 4
  %add165 = add nsw i32 %98, 1
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx167, i32 0, i64 %idxprom164
  store i32 %add163, i32* %arrayidx168, align 4
  %arrayidx169 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %99 = load i32, i32* %arrayidx169, align 4
  %arrayidx170 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %100 = load i32, i32* %arrayidx170, align 4
  %mul171 = mul nsw i32 %100, 2
  %sub172 = sub nsw i32 %99, %mul171
  %101 = load i32, i32* %mb_y, align 4
  %idxprom173 = sext i32 %101 to i64
  %102 = load i32, i32* %n1, align 4
  %add174 = add nsw i32 %102, 3
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx176, i32 0, i64 %idxprom173
  store i32 %sub172, i32* %arrayidx177, align 4
  br label %for.inc.178

for.inc.178:                                      ; preds = %for.end.145
  %103 = load i32, i32* %j, align 4
  %inc179 = add nsw i32 %103, 1
  store i32 %inc179, i32* %j, align 4
  br label %for.cond.107

for.end.180:                                      ; preds = %for.cond.107
  store i32 0, i32* %i, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.254, %for.end.180
  %104 = load i32, i32* %i, align 4
  %cmp182 = icmp slt i32 %104, 4
  br i1 %cmp182, label %for.body.184, label %for.end.256

for.body.184:                                     ; preds = %for.cond.181
  %105 = load i32, i32* %n1, align 4
  %106 = load i32, i32* %i, align 4
  %add185 = add nsw i32 %105, %106
  store i32 %add185, i32* %j1, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.217, %for.body.184
  %107 = load i32, i32* %j, align 4
  %cmp187 = icmp slt i32 %107, 2
  br i1 %cmp187, label %for.body.189, label %for.end.219

for.body.189:                                     ; preds = %for.cond.186
  %108 = load i32, i32* %j, align 4
  %sub190 = sub nsw i32 3, %108
  store i32 %sub190, i32* %j2, align 4
  %109 = load i32, i32* %n2, align 4
  %110 = load i32, i32* %j, align 4
  %add191 = add nsw i32 %109, %110
  %idxprom192 = sext i32 %add191 to i64
  %111 = load i32, i32* %j1, align 4
  %idxprom193 = sext i32 %111 to i64
  %arrayidx194 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom193
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx194, i32 0, i64 %idxprom192
  %112 = load i32, i32* %arrayidx195, align 4
  %113 = load i32, i32* %n2, align 4
  %114 = load i32, i32* %j2, align 4
  %add196 = add nsw i32 %113, %114
  %idxprom197 = sext i32 %add196 to i64
  %115 = load i32, i32* %j1, align 4
  %idxprom198 = sext i32 %115 to i64
  %arrayidx199 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx199, i32 0, i64 %idxprom197
  %116 = load i32, i32* %arrayidx200, align 4
  %add201 = add nsw i32 %112, %116
  %117 = load i32, i32* %j, align 4
  %idxprom202 = sext i32 %117 to i64
  %arrayidx203 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom202
  store i32 %add201, i32* %arrayidx203, align 4
  %118 = load i32, i32* %n2, align 4
  %119 = load i32, i32* %j, align 4
  %add204 = add nsw i32 %118, %119
  %idxprom205 = sext i32 %add204 to i64
  %120 = load i32, i32* %j1, align 4
  %idxprom206 = sext i32 %120 to i64
  %arrayidx207 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom206
  %arrayidx208 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx207, i32 0, i64 %idxprom205
  %121 = load i32, i32* %arrayidx208, align 4
  %122 = load i32, i32* %n2, align 4
  %123 = load i32, i32* %j2, align 4
  %add209 = add nsw i32 %122, %123
  %idxprom210 = sext i32 %add209 to i64
  %124 = load i32, i32* %j1, align 4
  %idxprom211 = sext i32 %124 to i64
  %arrayidx212 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom211
  %arrayidx213 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx212, i32 0, i64 %idxprom210
  %125 = load i32, i32* %arrayidx213, align 4
  %sub214 = sub nsw i32 %121, %125
  %126 = load i32, i32* %j2, align 4
  %idxprom215 = sext i32 %126 to i64
  %arrayidx216 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 %idxprom215
  store i32 %sub214, i32* %arrayidx216, align 4
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.189
  %127 = load i32, i32* %j, align 4
  %inc218 = add nsw i32 %127, 1
  store i32 %inc218, i32* %j, align 4
  br label %for.cond.186

for.end.219:                                      ; preds = %for.cond.186
  %arrayidx220 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %128 = load i32, i32* %arrayidx220, align 4
  %arrayidx221 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %129 = load i32, i32* %arrayidx221, align 4
  %add222 = add nsw i32 %128, %129
  %130 = load i32, i32* %n2, align 4
  %add223 = add nsw i32 %130, 0
  %idxprom224 = sext i32 %add223 to i64
  %131 = load i32, i32* %j1, align 4
  %idxprom225 = sext i32 %131 to i64
  %arrayidx226 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom225
  %arrayidx227 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx226, i32 0, i64 %idxprom224
  store i32 %add222, i32* %arrayidx227, align 4
  %arrayidx228 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 0
  %132 = load i32, i32* %arrayidx228, align 4
  %arrayidx229 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 1
  %133 = load i32, i32* %arrayidx229, align 4
  %sub230 = sub nsw i32 %132, %133
  %134 = load i32, i32* %n2, align 4
  %add231 = add nsw i32 %134, 2
  %idxprom232 = sext i32 %add231 to i64
  %135 = load i32, i32* %j1, align 4
  %idxprom233 = sext i32 %135 to i64
  %arrayidx234 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx234, i32 0, i64 %idxprom232
  store i32 %sub230, i32* %arrayidx235, align 4
  %arrayidx236 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %136 = load i32, i32* %arrayidx236, align 4
  %mul237 = mul nsw i32 %136, 2
  %arrayidx238 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %137 = load i32, i32* %arrayidx238, align 4
  %add239 = add nsw i32 %mul237, %137
  %138 = load i32, i32* %n2, align 4
  %add240 = add nsw i32 %138, 1
  %idxprom241 = sext i32 %add240 to i64
  %139 = load i32, i32* %j1, align 4
  %idxprom242 = sext i32 %139 to i64
  %arrayidx243 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx243, i32 0, i64 %idxprom241
  store i32 %add239, i32* %arrayidx244, align 4
  %arrayidx245 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 3
  %140 = load i32, i32* %arrayidx245, align 4
  %arrayidx246 = getelementptr inbounds [4 x i32], [4 x i32]* %m5, i32 0, i64 2
  %141 = load i32, i32* %arrayidx246, align 4
  %mul247 = mul nsw i32 %141, 2
  %sub248 = sub nsw i32 %140, %mul247
  %142 = load i32, i32* %n2, align 4
  %add249 = add nsw i32 %142, 3
  %idxprom250 = sext i32 %add249 to i64
  %143 = load i32, i32* %j1, align 4
  %idxprom251 = sext i32 %143 to i64
  %arrayidx252 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom251
  %arrayidx253 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx252, i32 0, i64 %idxprom250
  store i32 %sub248, i32* %arrayidx253, align 4
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.end.219
  %144 = load i32, i32* %i, align 4
  %inc255 = add nsw i32 %144, 1
  store i32 %inc255, i32* %i, align 4
  br label %for.cond.181

for.end.256:                                      ; preds = %for.cond.181
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.end.256
  %145 = load i32, i32* %n1, align 4
  %add258 = add nsw i32 %145, 4
  store i32 %add258, i32* %n1, align 4
  br label %for.cond.103

for.end.259:                                      ; preds = %for.cond.103
  br label %for.inc.260

for.inc.260:                                      ; preds = %for.end.259
  %146 = load i32, i32* %n2, align 4
  %add261 = add nsw i32 %146, 4
  store i32 %add261, i32* %n2, align 4
  br label %for.cond.99

for.end.262:                                      ; preds = %for.cond.99
  %arrayidx263 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx264 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx263, i32 0, i64 0
  %147 = load i32, i32* %arrayidx264, align 4
  %arrayidx265 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx266 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx265, i32 0, i64 0
  %148 = load i32, i32* %arrayidx266, align 4
  %add267 = add nsw i32 %147, %148
  %arrayidx268 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx269 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx268, i32 0, i64 4
  %149 = load i32, i32* %arrayidx269, align 4
  %add270 = add nsw i32 %add267, %149
  %arrayidx271 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx272 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx271, i32 0, i64 4
  %150 = load i32, i32* %arrayidx272, align 4
  %add273 = add nsw i32 %add270, %150
  %arrayidx274 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 0
  store i32 %add273, i32* %arrayidx274, align 4
  %arrayidx275 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx276 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx275, i32 0, i64 0
  %151 = load i32, i32* %arrayidx276, align 4
  %arrayidx277 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx278 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx277, i32 0, i64 0
  %152 = load i32, i32* %arrayidx278, align 4
  %sub279 = sub nsw i32 %151, %152
  %arrayidx280 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx281 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx280, i32 0, i64 4
  %153 = load i32, i32* %arrayidx281, align 4
  %add282 = add nsw i32 %sub279, %153
  %arrayidx283 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx284 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx283, i32 0, i64 4
  %154 = load i32, i32* %arrayidx284, align 4
  %sub285 = sub nsw i32 %add282, %154
  %arrayidx286 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 1
  store i32 %sub285, i32* %arrayidx286, align 4
  %arrayidx287 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx288 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx287, i32 0, i64 0
  %155 = load i32, i32* %arrayidx288, align 4
  %arrayidx289 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx290 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx289, i32 0, i64 0
  %156 = load i32, i32* %arrayidx290, align 4
  %add291 = add nsw i32 %155, %156
  %arrayidx292 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx293 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx292, i32 0, i64 4
  %157 = load i32, i32* %arrayidx293, align 4
  %sub294 = sub nsw i32 %add291, %157
  %arrayidx295 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx296 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx295, i32 0, i64 4
  %158 = load i32, i32* %arrayidx296, align 4
  %sub297 = sub nsw i32 %sub294, %158
  %arrayidx298 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 2
  store i32 %sub297, i32* %arrayidx298, align 4
  %arrayidx299 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx300 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx299, i32 0, i64 0
  %159 = load i32, i32* %arrayidx300, align 4
  %arrayidx301 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx302 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx301, i32 0, i64 0
  %160 = load i32, i32* %arrayidx302, align 4
  %sub303 = sub nsw i32 %159, %160
  %arrayidx304 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 0
  %arrayidx305 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx304, i32 0, i64 4
  %161 = load i32, i32* %arrayidx305, align 4
  %sub306 = sub nsw i32 %sub303, %161
  %arrayidx307 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 4
  %arrayidx308 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx307, i32 0, i64 4
  %162 = load i32, i32* %arrayidx308, align 4
  %add309 = add nsw i32 %sub306, %162
  %arrayidx310 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 3
  store i32 %add309, i32* %arrayidx310, align 4
  store i32 0, i32* %n1, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.406, %for.end.262
  %163 = load i32, i32* %n1, align 4
  %cmp312 = icmp slt i32 %163, 2
  br i1 %cmp312, label %for.body.314, label %for.end.408

for.body.314:                                     ; preds = %for.cond.311
  store i32 0, i32* %n2, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.403, %for.body.314
  %164 = load i32, i32* %n2, align 4
  %cmp316 = icmp slt i32 %164, 2
  br i1 %cmp316, label %for.body.318, label %for.end.405

for.body.318:                                     ; preds = %for.cond.315
  %165 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %sp_switch = getelementptr inbounds %struct.img_par, %struct.img_par* %165, i32 0, i32 8
  %166 = load i32, i32* %sp_switch, align 4
  %tobool = icmp ne i32 %166, 0
  br i1 %tobool, label %if.then.322, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.318
  %167 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type319 = getelementptr inbounds %struct.img_par, %struct.img_par* %167, i32 0, i32 10
  %168 = load i32, i32* %type319, align 4
  %cmp320 = icmp eq i32 %168, 4
  br i1 %cmp320, label %if.then.322, label %if.else

if.then.322:                                      ; preds = %lor.lhs.false, %for.body.318
  %169 = load i32, i32* %n1, align 4
  %170 = load i32, i32* %n2, align 4
  %mul323 = mul nsw i32 %170, 2
  %add324 = add nsw i32 %169, %mul323
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 %idxprom325
  %171 = load i32, i32* %arrayidx326, align 4
  %call = call i32 @iabs(i32 %171)
  %172 = load i32, i32* %qp_rem_sp, align 4
  %idxprom327 = sext i32 %172 to i64
  %arrayidx328 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom327
  %arrayidx329 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx328, i32 0, i64 0
  %arrayidx330 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx329, i32 0, i64 0
  %173 = load i32, i32* %arrayidx330, align 4
  %mul331 = mul nsw i32 %call, %173
  %174 = load i32, i32* %qp_const2, align 4
  %mul332 = mul nsw i32 2, %174
  %add333 = add nsw i32 %mul331, %mul332
  %175 = load i32, i32* %q_bits_sp, align 4
  %add334 = add nsw i32 %175, 1
  %shr = ashr i32 %add333, %add334
  store i32 %shr, i32* %ilev, align 4
  %176 = load i32, i32* %n2, align 4
  %add335 = add nsw i32 4, %176
  %idxprom336 = sext i32 %add335 to i64
  %177 = load i32, i32* %n1, align 4
  %178 = load i32, i32* %ll.addr, align 4
  %add337 = add nsw i32 %177, %178
  %idxprom338 = sext i32 %add337 to i64
  %179 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof = getelementptr inbounds %struct.img_par, %struct.img_par* %179, i32 0, i32 28
  %arrayidx339 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof, i32 0, i64 %idxprom338
  %arrayidx340 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx339, i32 0, i64 %idxprom336
  %arrayidx341 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx340, i32 0, i64 0
  %arrayidx342 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx341, i32 0, i64 0
  %180 = load i32, i32* %arrayidx342, align 4
  %181 = load i32, i32* %ilev, align 4
  %182 = load i32, i32* %n1, align 4
  %183 = load i32, i32* %n2, align 4
  %mul343 = mul nsw i32 %183, 2
  %add344 = add nsw i32 %182, %mul343
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 %idxprom345
  %184 = load i32, i32* %arrayidx346, align 4
  %call347 = call i32 @isignab(i32 %181, i32 %184)
  %add348 = add nsw i32 %180, %call347
  store i32 %add348, i32* %ilev, align 4
  %185 = load i32, i32* %ilev, align 4
  %186 = load i32, i32* %qp_rem_sp, align 4
  %idxprom349 = sext i32 %186 to i64
  %arrayidx350 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom349
  %arrayidx351 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx350, i32 0, i64 0
  %arrayidx352 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx351, i32 0, i64 0
  %187 = load i32, i32* %arrayidx352, align 4
  %mul353 = mul nsw i32 %185, %187
  %188 = load i32, i32* %qp_per_sp, align 4
  %shl354 = shl i32 %mul353, %188
  %189 = load i32, i32* %n1, align 4
  %190 = load i32, i32* %n2, align 4
  %mul355 = mul nsw i32 %190, 2
  %add356 = add nsw i32 %189, %mul355
  %idxprom357 = sext i32 %add356 to i64
  %arrayidx358 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 %idxprom357
  store i32 %shl354, i32* %arrayidx358, align 4
  br label %if.end.402

if.else:                                          ; preds = %lor.lhs.false
  %191 = load i32, i32* %n2, align 4
  %add359 = add nsw i32 4, %191
  %idxprom360 = sext i32 %add359 to i64
  %192 = load i32, i32* %n1, align 4
  %193 = load i32, i32* %ll.addr, align 4
  %add361 = add nsw i32 %192, %193
  %idxprom362 = sext i32 %add361 to i64
  %194 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof363 = getelementptr inbounds %struct.img_par, %struct.img_par* %194, i32 0, i32 28
  %arrayidx364 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof363, i32 0, i64 %idxprom362
  %arrayidx365 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx364, i32 0, i64 %idxprom360
  %arrayidx366 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx365, i32 0, i64 0
  %arrayidx367 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx366, i32 0, i64 0
  %195 = load i32, i32* %arrayidx367, align 4
  %196 = load i32, i32* %qp_rem, align 4
  %idxprom368 = sext i32 %196 to i64
  %arrayidx369 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom368
  %arrayidx370 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx369, i32 0, i64 0
  %arrayidx371 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx370, i32 0, i64 0
  %197 = load i32, i32* %arrayidx371, align 4
  %mul372 = mul nsw i32 %195, %197
  %198 = load i32, i32* getelementptr inbounds ([4 x [4 x i32]], [4 x [4 x i32]]* @A, i32 0, i64 0, i64 0), align 4
  %mul373 = mul nsw i32 %mul372, %198
  %199 = load i32, i32* %qp_per, align 4
  %shl374 = shl i32 %mul373, %199
  %shr375 = ashr i32 %shl374, 5
  %200 = load i32, i32* %n1, align 4
  %201 = load i32, i32* %n2, align 4
  %mul376 = mul nsw i32 %201, 2
  %add377 = add nsw i32 %200, %mul376
  %idxprom378 = sext i32 %add377 to i64
  %arrayidx379 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 %idxprom378
  %202 = load i32, i32* %arrayidx379, align 4
  %add380 = add nsw i32 %shr375, %202
  store i32 %add380, i32* %ilev, align 4
  %203 = load i32, i32* %ilev, align 4
  %call381 = call i32 @iabs(i32 %203)
  %204 = load i32, i32* %qp_rem_sp, align 4
  %idxprom382 = sext i32 %204 to i64
  %arrayidx383 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom382
  %arrayidx384 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx383, i32 0, i64 0
  %arrayidx385 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx384, i32 0, i64 0
  %205 = load i32, i32* %arrayidx385, align 4
  %mul386 = mul nsw i32 %call381, %205
  %206 = load i32, i32* %qp_const2, align 4
  %mul387 = mul nsw i32 2, %206
  %add388 = add nsw i32 %mul386, %mul387
  %207 = load i32, i32* %q_bits_sp, align 4
  %add389 = add nsw i32 %207, 1
  %shr390 = ashr i32 %add388, %add389
  %208 = load i32, i32* %ilev, align 4
  %call391 = call i32 @isignab(i32 %shr390, i32 %208)
  %209 = load i32, i32* %qp_rem_sp, align 4
  %idxprom392 = sext i32 %209 to i64
  %arrayidx393 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom392
  %arrayidx394 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx393, i32 0, i64 0
  %arrayidx395 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx394, i32 0, i64 0
  %210 = load i32, i32* %arrayidx395, align 4
  %mul396 = mul nsw i32 %call391, %210
  %211 = load i32, i32* %qp_per_sp, align 4
  %shl397 = shl i32 %mul396, %211
  %212 = load i32, i32* %n1, align 4
  %213 = load i32, i32* %n2, align 4
  %mul398 = mul nsw i32 %213, 2
  %add399 = add nsw i32 %212, %mul398
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 %idxprom400
  store i32 %shl397, i32* %arrayidx401, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.else, %if.then.322
  br label %for.inc.403

for.inc.403:                                      ; preds = %if.end.402
  %214 = load i32, i32* %n2, align 4
  %inc404 = add nsw i32 %214, 1
  store i32 %inc404, i32* %n2, align 4
  br label %for.cond.315

for.end.405:                                      ; preds = %for.cond.315
  br label %for.inc.406

for.inc.406:                                      ; preds = %for.end.405
  %215 = load i32, i32* %n1, align 4
  %inc407 = add nsw i32 %215, 1
  store i32 %inc407, i32* %n1, align 4
  br label %for.cond.311

for.end.408:                                      ; preds = %for.cond.311
  store i32 0, i32* %n2, align 4
  br label %for.cond.409

for.cond.409:                                     ; preds = %for.inc.595, %for.end.408
  %216 = load i32, i32* %n2, align 4
  %cmp410 = icmp slt i32 %216, 2
  br i1 %cmp410, label %for.body.412, label %for.end.597

for.body.412:                                     ; preds = %for.cond.409
  store i32 0, i32* %n1, align 4
  br label %for.cond.413

for.cond.413:                                     ; preds = %for.inc.592, %for.body.412
  %217 = load i32, i32* %n1, align 4
  %cmp414 = icmp slt i32 %217, 2
  br i1 %cmp414, label %for.body.416, label %for.end.594

for.body.416:                                     ; preds = %for.cond.413
  store i32 0, i32* %i, align 4
  br label %for.cond.417

for.cond.417:                                     ; preds = %for.inc.589, %for.body.416
  %218 = load i32, i32* %i, align 4
  %cmp418 = icmp slt i32 %218, 4
  br i1 %cmp418, label %for.body.420, label %for.end.591

for.body.420:                                     ; preds = %for.cond.417
  store i32 0, i32* %j, align 4
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.586, %for.body.420
  %219 = load i32, i32* %j, align 4
  %cmp422 = icmp slt i32 %219, 4
  br i1 %cmp422, label %for.body.424, label %for.end.588

for.body.424:                                     ; preds = %for.cond.421
  %220 = load i32, i32* %i, align 4
  %idxprom425 = sext i32 %220 to i64
  %221 = load i32, i32* %j, align 4
  %idxprom426 = sext i32 %221 to i64
  %222 = load i32, i32* %n2, align 4
  %add427 = add nsw i32 4, %222
  %idxprom428 = sext i32 %add427 to i64
  %223 = load i32, i32* %n1, align 4
  %224 = load i32, i32* %ll.addr, align 4
  %add429 = add nsw i32 %223, %224
  %idxprom430 = sext i32 %add429 to i64
  %225 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof431 = getelementptr inbounds %struct.img_par, %struct.img_par* %225, i32 0, i32 28
  %arrayidx432 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof431, i32 0, i64 %idxprom430
  %arrayidx433 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx432, i32 0, i64 %idxprom428
  %arrayidx434 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx433, i32 0, i64 %idxprom426
  %arrayidx435 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx434, i32 0, i64 %idxprom425
  %226 = load i32, i32* %arrayidx435, align 4
  %227 = load i32, i32* %qp_per, align 4
  %shr436 = ashr i32 %226, %227
  %228 = load i32, i32* %j, align 4
  %idxprom437 = sext i32 %228 to i64
  %229 = load i32, i32* %i, align 4
  %idxprom438 = sext i32 %229 to i64
  %230 = load i32, i32* %qp_rem, align 4
  %idxprom439 = sext i32 %230 to i64
  %arrayidx440 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom439
  %arrayidx441 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx440, i32 0, i64 %idxprom438
  %arrayidx442 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx441, i32 0, i64 %idxprom437
  %231 = load i32, i32* %arrayidx442, align 4
  %div443 = sdiv i32 %shr436, %231
  %232 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %232 to i64
  %233 = load i32, i32* %j, align 4
  %idxprom445 = sext i32 %233 to i64
  %234 = load i32, i32* %n2, align 4
  %add446 = add nsw i32 4, %234
  %idxprom447 = sext i32 %add446 to i64
  %235 = load i32, i32* %n1, align 4
  %236 = load i32, i32* %ll.addr, align 4
  %add448 = add nsw i32 %235, %236
  %idxprom449 = sext i32 %add448 to i64
  %237 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof450 = getelementptr inbounds %struct.img_par, %struct.img_par* %237, i32 0, i32 28
  %arrayidx451 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof450, i32 0, i64 %idxprom449
  %arrayidx452 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx451, i32 0, i64 %idxprom447
  %arrayidx453 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx452, i32 0, i64 %idxprom445
  %arrayidx454 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx453, i32 0, i64 %idxprom444
  store i32 %div443, i32* %arrayidx454, align 4
  %238 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %sp_switch455 = getelementptr inbounds %struct.img_par, %struct.img_par* %238, i32 0, i32 8
  %239 = load i32, i32* %sp_switch455, align 4
  %tobool456 = icmp ne i32 %239, 0
  br i1 %tobool456, label %if.then.461, label %lor.lhs.false.457

lor.lhs.false.457:                                ; preds = %for.body.424
  %240 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %type458 = getelementptr inbounds %struct.img_par, %struct.img_par* %240, i32 0, i32 10
  %241 = load i32, i32* %type458, align 4
  %cmp459 = icmp eq i32 %241, 4
  br i1 %cmp459, label %if.then.461, label %if.else.520

if.then.461:                                      ; preds = %lor.lhs.false.457, %for.body.424
  %242 = load i32, i32* %n2, align 4
  %mul462 = mul nsw i32 %242, 4
  %243 = load i32, i32* %j, align 4
  %add463 = add nsw i32 %mul462, %243
  %idxprom464 = sext i32 %add463 to i64
  %244 = load i32, i32* %n1, align 4
  %mul465 = mul nsw i32 %244, 4
  %245 = load i32, i32* %i, align 4
  %add466 = add nsw i32 %mul465, %245
  %idxprom467 = sext i32 %add466 to i64
  %arrayidx468 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom467
  %arrayidx469 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx468, i32 0, i64 %idxprom464
  %246 = load i32, i32* %arrayidx469, align 4
  %call470 = call i32 @iabs(i32 %246)
  %247 = load i32, i32* %j, align 4
  %idxprom471 = sext i32 %247 to i64
  %248 = load i32, i32* %i, align 4
  %idxprom472 = sext i32 %248 to i64
  %249 = load i32, i32* %qp_rem_sp, align 4
  %idxprom473 = sext i32 %249 to i64
  %arrayidx474 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom473
  %arrayidx475 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx474, i32 0, i64 %idxprom472
  %arrayidx476 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx475, i32 0, i64 %idxprom471
  %250 = load i32, i32* %arrayidx476, align 4
  %mul477 = mul nsw i32 %call470, %250
  %251 = load i32, i32* %qp_const2, align 4
  %add478 = add nsw i32 %mul477, %251
  %252 = load i32, i32* %q_bits_sp, align 4
  %shr479 = ashr i32 %add478, %252
  store i32 %shr479, i32* %ilev, align 4
  %253 = load i32, i32* %ilev, align 4
  %254 = load i32, i32* %n2, align 4
  %mul480 = mul nsw i32 %254, 4
  %255 = load i32, i32* %j, align 4
  %add481 = add nsw i32 %mul480, %255
  %idxprom482 = sext i32 %add481 to i64
  %256 = load i32, i32* %n1, align 4
  %mul483 = mul nsw i32 %256, 4
  %257 = load i32, i32* %i, align 4
  %add484 = add nsw i32 %mul483, %257
  %idxprom485 = sext i32 %add484 to i64
  %arrayidx486 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom485
  %arrayidx487 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx486, i32 0, i64 %idxprom482
  %258 = load i32, i32* %arrayidx487, align 4
  %call488 = call i32 @isignab(i32 %253, i32 %258)
  %259 = load i32, i32* %i, align 4
  %idxprom489 = sext i32 %259 to i64
  %260 = load i32, i32* %j, align 4
  %idxprom490 = sext i32 %260 to i64
  %261 = load i32, i32* %n2, align 4
  %add491 = add nsw i32 4, %261
  %idxprom492 = sext i32 %add491 to i64
  %262 = load i32, i32* %n1, align 4
  %263 = load i32, i32* %ll.addr, align 4
  %add493 = add nsw i32 %262, %263
  %idxprom494 = sext i32 %add493 to i64
  %264 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof495 = getelementptr inbounds %struct.img_par, %struct.img_par* %264, i32 0, i32 28
  %arrayidx496 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof495, i32 0, i64 %idxprom494
  %arrayidx497 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx496, i32 0, i64 %idxprom492
  %arrayidx498 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx497, i32 0, i64 %idxprom490
  %arrayidx499 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx498, i32 0, i64 %idxprom489
  %265 = load i32, i32* %arrayidx499, align 4
  %add500 = add nsw i32 %call488, %265
  store i32 %add500, i32* %ilev, align 4
  %266 = load i32, i32* %ilev, align 4
  %267 = load i32, i32* %j, align 4
  %idxprom501 = sext i32 %267 to i64
  %268 = load i32, i32* %i, align 4
  %idxprom502 = sext i32 %268 to i64
  %269 = load i32, i32* %qp_rem_sp, align 4
  %idxprom503 = sext i32 %269 to i64
  %arrayidx504 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom503
  %arrayidx505 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx504, i32 0, i64 %idxprom502
  %arrayidx506 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx505, i32 0, i64 %idxprom501
  %270 = load i32, i32* %arrayidx506, align 4
  %mul507 = mul nsw i32 %266, %270
  %271 = load i32, i32* %qp_per_sp, align 4
  %shl508 = shl i32 %mul507, %271
  %272 = load i32, i32* %i, align 4
  %idxprom509 = sext i32 %272 to i64
  %273 = load i32, i32* %j, align 4
  %idxprom510 = sext i32 %273 to i64
  %274 = load i32, i32* %n2, align 4
  %add511 = add nsw i32 4, %274
  %idxprom512 = sext i32 %add511 to i64
  %275 = load i32, i32* %n1, align 4
  %276 = load i32, i32* %ll.addr, align 4
  %add513 = add nsw i32 %275, %276
  %idxprom514 = sext i32 %add513 to i64
  %277 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof515 = getelementptr inbounds %struct.img_par, %struct.img_par* %277, i32 0, i32 28
  %arrayidx516 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof515, i32 0, i64 %idxprom514
  %arrayidx517 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx516, i32 0, i64 %idxprom512
  %arrayidx518 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx517, i32 0, i64 %idxprom510
  %arrayidx519 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx518, i32 0, i64 %idxprom509
  store i32 %shl508, i32* %arrayidx519, align 4
  br label %if.end.585

if.else.520:                                      ; preds = %lor.lhs.false.457
  %278 = load i32, i32* %i, align 4
  %idxprom521 = sext i32 %278 to i64
  %279 = load i32, i32* %j, align 4
  %idxprom522 = sext i32 %279 to i64
  %280 = load i32, i32* %n2, align 4
  %add523 = add nsw i32 4, %280
  %idxprom524 = sext i32 %add523 to i64
  %281 = load i32, i32* %n1, align 4
  %282 = load i32, i32* %ll.addr, align 4
  %add525 = add nsw i32 %281, %282
  %idxprom526 = sext i32 %add525 to i64
  %283 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof527 = getelementptr inbounds %struct.img_par, %struct.img_par* %283, i32 0, i32 28
  %arrayidx528 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof527, i32 0, i64 %idxprom526
  %arrayidx529 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx528, i32 0, i64 %idxprom524
  %arrayidx530 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx529, i32 0, i64 %idxprom522
  %arrayidx531 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx530, i32 0, i64 %idxprom521
  %284 = load i32, i32* %arrayidx531, align 4
  %285 = load i32, i32* %j, align 4
  %idxprom532 = sext i32 %285 to i64
  %286 = load i32, i32* %i, align 4
  %idxprom533 = sext i32 %286 to i64
  %287 = load i32, i32* %qp_rem, align 4
  %idxprom534 = sext i32 %287 to i64
  %arrayidx535 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom534
  %arrayidx536 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx535, i32 0, i64 %idxprom533
  %arrayidx537 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx536, i32 0, i64 %idxprom532
  %288 = load i32, i32* %arrayidx537, align 4
  %mul538 = mul nsw i32 %284, %288
  %289 = load i32, i32* %j, align 4
  %idxprom539 = sext i32 %289 to i64
  %290 = load i32, i32* %i, align 4
  %idxprom540 = sext i32 %290 to i64
  %arrayidx541 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @A, i32 0, i64 %idxprom540
  %arrayidx542 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx541, i32 0, i64 %idxprom539
  %291 = load i32, i32* %arrayidx542, align 4
  %mul543 = mul nsw i32 %mul538, %291
  %292 = load i32, i32* %qp_per, align 4
  %shl544 = shl i32 %mul543, %292
  %shr545 = ashr i32 %shl544, 6
  %293 = load i32, i32* %n2, align 4
  %mul546 = mul nsw i32 %293, 4
  %294 = load i32, i32* %j, align 4
  %add547 = add nsw i32 %mul546, %294
  %idxprom548 = sext i32 %add547 to i64
  %295 = load i32, i32* %n1, align 4
  %mul549 = mul nsw i32 %295, 4
  %296 = load i32, i32* %i, align 4
  %add550 = add nsw i32 %mul549, %296
  %idxprom551 = sext i32 %add550 to i64
  %arrayidx552 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %predicted_chroma_block, i32 0, i64 %idxprom551
  %arrayidx553 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx552, i32 0, i64 %idxprom548
  %297 = load i32, i32* %arrayidx553, align 4
  %add554 = add nsw i32 %shr545, %297
  store i32 %add554, i32* %ilev, align 4
  %298 = load i32, i32* %ilev, align 4
  %call555 = call i32 @iabs(i32 %298)
  %299 = load i32, i32* %j, align 4
  %idxprom556 = sext i32 %299 to i64
  %300 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %300 to i64
  %301 = load i32, i32* %qp_rem_sp, align 4
  %idxprom558 = sext i32 %301 to i64
  %arrayidx559 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @quant_coef, i32 0, i64 %idxprom558
  %arrayidx560 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx559, i32 0, i64 %idxprom557
  %arrayidx561 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx560, i32 0, i64 %idxprom556
  %302 = load i32, i32* %arrayidx561, align 4
  %mul562 = mul nsw i32 %call555, %302
  %303 = load i32, i32* %qp_const2, align 4
  %add563 = add nsw i32 %mul562, %303
  %304 = load i32, i32* %q_bits_sp, align 4
  %shr564 = ashr i32 %add563, %304
  %305 = load i32, i32* %ilev, align 4
  %call565 = call i32 @isignab(i32 %shr564, i32 %305)
  %306 = load i32, i32* %j, align 4
  %idxprom566 = sext i32 %306 to i64
  %307 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %307 to i64
  %308 = load i32, i32* %qp_rem_sp, align 4
  %idxprom568 = sext i32 %308 to i64
  %arrayidx569 = getelementptr inbounds [6 x [4 x [4 x i32]]], [6 x [4 x [4 x i32]]]* @dequant_coef, i32 0, i64 %idxprom568
  %arrayidx570 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx569, i32 0, i64 %idxprom567
  %arrayidx571 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx570, i32 0, i64 %idxprom566
  %309 = load i32, i32* %arrayidx571, align 4
  %mul572 = mul nsw i32 %call565, %309
  %310 = load i32, i32* %qp_per_sp, align 4
  %shl573 = shl i32 %mul572, %310
  %311 = load i32, i32* %i, align 4
  %idxprom574 = sext i32 %311 to i64
  %312 = load i32, i32* %j, align 4
  %idxprom575 = sext i32 %312 to i64
  %313 = load i32, i32* %n2, align 4
  %add576 = add nsw i32 4, %313
  %idxprom577 = sext i32 %add576 to i64
  %314 = load i32, i32* %n1, align 4
  %315 = load i32, i32* %ll.addr, align 4
  %add578 = add nsw i32 %314, %315
  %idxprom579 = sext i32 %add578 to i64
  %316 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof580 = getelementptr inbounds %struct.img_par, %struct.img_par* %316, i32 0, i32 28
  %arrayidx581 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof580, i32 0, i64 %idxprom579
  %arrayidx582 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx581, i32 0, i64 %idxprom577
  %arrayidx583 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx582, i32 0, i64 %idxprom575
  %arrayidx584 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx583, i32 0, i64 %idxprom574
  store i32 %shl573, i32* %arrayidx584, align 4
  br label %if.end.585

if.end.585:                                       ; preds = %if.else.520, %if.then.461
  br label %for.inc.586

for.inc.586:                                      ; preds = %if.end.585
  %317 = load i32, i32* %j, align 4
  %inc587 = add nsw i32 %317, 1
  store i32 %inc587, i32* %j, align 4
  br label %for.cond.421

for.end.588:                                      ; preds = %for.cond.421
  br label %for.inc.589

for.inc.589:                                      ; preds = %for.end.588
  %318 = load i32, i32* %i, align 4
  %inc590 = add nsw i32 %318, 1
  store i32 %inc590, i32* %i, align 4
  br label %for.cond.417

for.end.591:                                      ; preds = %for.cond.417
  br label %for.inc.592

for.inc.592:                                      ; preds = %for.end.591
  %319 = load i32, i32* %n1, align 4
  %inc593 = add nsw i32 %319, 1
  store i32 %inc593, i32* %n1, align 4
  br label %for.cond.413

for.end.594:                                      ; preds = %for.cond.413
  br label %for.inc.595

for.inc.595:                                      ; preds = %for.end.594
  %320 = load i32, i32* %n2, align 4
  %inc596 = add nsw i32 %320, 1
  store i32 %inc596, i32* %n2, align 4
  br label %for.cond.409

for.end.597:                                      ; preds = %for.cond.409
  %arrayidx598 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 0
  %321 = load i32, i32* %arrayidx598, align 4
  %arrayidx599 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 1
  %322 = load i32, i32* %arrayidx599, align 4
  %add600 = add nsw i32 %321, %322
  %arrayidx601 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 2
  %323 = load i32, i32* %arrayidx601, align 4
  %add602 = add nsw i32 %add600, %323
  %arrayidx603 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 3
  %324 = load i32, i32* %arrayidx603, align 4
  %add604 = add nsw i32 %add602, %324
  %shr605 = ashr i32 %add604, 1
  %325 = load i32, i32* %ll.addr, align 4
  %add606 = add nsw i32 0, %325
  %idxprom607 = sext i32 %add606 to i64
  %326 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof608 = getelementptr inbounds %struct.img_par, %struct.img_par* %326, i32 0, i32 28
  %arrayidx609 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof608, i32 0, i64 %idxprom607
  %arrayidx610 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx609, i32 0, i64 4
  %arrayidx611 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx610, i32 0, i64 0
  %arrayidx612 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx611, i32 0, i64 0
  store i32 %shr605, i32* %arrayidx612, align 4
  %arrayidx613 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 0
  %327 = load i32, i32* %arrayidx613, align 4
  %arrayidx614 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 1
  %328 = load i32, i32* %arrayidx614, align 4
  %sub615 = sub nsw i32 %327, %328
  %arrayidx616 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 2
  %329 = load i32, i32* %arrayidx616, align 4
  %add617 = add nsw i32 %sub615, %329
  %arrayidx618 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 3
  %330 = load i32, i32* %arrayidx618, align 4
  %sub619 = sub nsw i32 %add617, %330
  %shr620 = ashr i32 %sub619, 1
  %331 = load i32, i32* %ll.addr, align 4
  %add621 = add nsw i32 1, %331
  %idxprom622 = sext i32 %add621 to i64
  %332 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof623 = getelementptr inbounds %struct.img_par, %struct.img_par* %332, i32 0, i32 28
  %arrayidx624 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof623, i32 0, i64 %idxprom622
  %arrayidx625 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx624, i32 0, i64 4
  %arrayidx626 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx625, i32 0, i64 0
  %arrayidx627 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx626, i32 0, i64 0
  store i32 %shr620, i32* %arrayidx627, align 4
  %arrayidx628 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 0
  %333 = load i32, i32* %arrayidx628, align 4
  %arrayidx629 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 1
  %334 = load i32, i32* %arrayidx629, align 4
  %add630 = add nsw i32 %333, %334
  %arrayidx631 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 2
  %335 = load i32, i32* %arrayidx631, align 4
  %sub632 = sub nsw i32 %add630, %335
  %arrayidx633 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 3
  %336 = load i32, i32* %arrayidx633, align 4
  %sub634 = sub nsw i32 %sub632, %336
  %shr635 = ashr i32 %sub634, 1
  %337 = load i32, i32* %ll.addr, align 4
  %add636 = add nsw i32 0, %337
  %idxprom637 = sext i32 %add636 to i64
  %338 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof638 = getelementptr inbounds %struct.img_par, %struct.img_par* %338, i32 0, i32 28
  %arrayidx639 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof638, i32 0, i64 %idxprom637
  %arrayidx640 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx639, i32 0, i64 5
  %arrayidx641 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx640, i32 0, i64 0
  %arrayidx642 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx641, i32 0, i64 0
  store i32 %shr635, i32* %arrayidx642, align 4
  %arrayidx643 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 0
  %339 = load i32, i32* %arrayidx643, align 4
  %arrayidx644 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 1
  %340 = load i32, i32* %arrayidx644, align 4
  %sub645 = sub nsw i32 %339, %340
  %arrayidx646 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 2
  %341 = load i32, i32* %arrayidx646, align 4
  %sub647 = sub nsw i32 %sub645, %341
  %arrayidx648 = getelementptr inbounds [4 x i32], [4 x i32]* %mp1, i32 0, i64 3
  %342 = load i32, i32* %arrayidx648, align 4
  %add649 = add nsw i32 %sub647, %342
  %shr650 = ashr i32 %add649, 1
  %343 = load i32, i32* %ll.addr, align 4
  %add651 = add nsw i32 1, %343
  %idxprom652 = sext i32 %add651 to i64
  %344 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %cof653 = getelementptr inbounds %struct.img_par, %struct.img_par* %344, i32 0, i32 28
  %arrayidx654 = getelementptr inbounds [4 x [12 x [4 x [4 x i32]]]], [4 x [12 x [4 x [4 x i32]]]]* %cof653, i32 0, i64 %idxprom652
  %arrayidx655 = getelementptr inbounds [12 x [4 x [4 x i32]]], [12 x [4 x [4 x i32]]]* %arrayidx654, i32 0, i64 5
  %arrayidx656 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx655, i32 0, i64 0
  %arrayidx657 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx656, i32 0, i64 0
  store i32 %shr650, i32* %arrayidx657, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #2 {
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
define internal i32 @imin(i32 %a, i32 %b) #2 {
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
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
