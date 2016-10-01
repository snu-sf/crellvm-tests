; ModuleID = './MultiSource.Applications.JM/61.lencod.me_epzs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i8**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, i32***, i32***, i32****, i32****, %struct.Picture*, %struct.Slice*, %struct.macroblock*, i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double**, double***, i32***, double**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.MEPatternNode = type { i32, %struct.SPoint*, i32, i32, %struct.MEPatternNode* }
%struct.SPoint = type { [2 x i32], i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.EPZSColocParams = type { i32, i32, i32, i16****, i16****, i16**** }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SubImageContainer = type { i16****, [2 x i16****] }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@c_EPZSPattern = constant [6 x [20 x i8]] [[20 x i8] c"Diamond\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Square\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Extended Diamond\00\00\00\00", [20 x i8] c"Large Diamond\00\00\00\00\00\00\00", [20 x i8] c"SBP Large Diamond\00\00\00", [20 x i8] c"PMVFAST\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@c_EPZSDualPattern = constant [7 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Diamond\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Square\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Extended Diamond\00\00\00\00", [20 x i8] c"Large Diamond\00\00\00\00\00\00\00", [20 x i8] c"SBP Large Diamond\00\00\00", [20 x i8] c"PMVFAST\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@c_EPZSFixed = constant [3 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"All P\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"All P + B\00\00\00\00\00\00\00\00\00\00\00"], align 16
@c_EPZSOther = constant [2 x [20 x i8]] [[20 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Enabled\00\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@.str = private unnamed_addr constant [23 x i8] c"alloc_EPZScolocated: s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc_EPZSpattern: s\00", align 1
@pattern_data = internal global [5 x [12 x [4 x i32]]] [[12 x [4 x i32]] [[4 x i32] [i32 0, i32 4, i32 3, i32 3], [4 x i32] [i32 4, i32 0, i32 0, i32 3], [4 x i32] [i32 0, i32 -4, i32 1, i32 3], [4 x i32] [i32 -4, i32 0, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [12 x [4 x i32]] [[4 x i32] [i32 0, i32 4, i32 7, i32 3], [4 x i32] [i32 4, i32 4, i32 7, i32 5], [4 x i32] [i32 4, i32 0, i32 1, i32 3], [4 x i32] [i32 4, i32 -4, i32 1, i32 5], [4 x i32] [i32 0, i32 -4, i32 3, i32 3], [4 x i32] [i32 -4, i32 -4, i32 3, i32 5], [4 x i32] [i32 -4, i32 0, i32 5, i32 3], [4 x i32] [i32 -4, i32 4, i32 5, i32 5], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [12 x [4 x i32]] [[4 x i32] [i32 -4, i32 4, i32 10, i32 5], [4 x i32] [i32 0, i32 8, i32 10, i32 8], [4 x i32] [i32 0, i32 4, i32 10, i32 7], [4 x i32] [i32 4, i32 4, i32 1, i32 5], [4 x i32] [i32 8, i32 0, i32 1, i32 8], [4 x i32] [i32 4, i32 0, i32 1, i32 7], [4 x i32] [i32 4, i32 -4, i32 4, i32 5], [4 x i32] [i32 0, i32 -8, i32 4, i32 8], [4 x i32] [i32 0, i32 -4, i32 4, i32 7], [4 x i32] [i32 -4, i32 -4, i32 7, i32 5], [4 x i32] [i32 -8, i32 0, i32 7, i32 8], [4 x i32] [i32 -4, i32 0, i32 7, i32 7]], [12 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 6, i32 5], [4 x i32] [i32 4, i32 4, i32 0, i32 3], [4 x i32] [i32 8, i32 0, i32 0, i32 5], [4 x i32] [i32 4, i32 -4, i32 2, i32 3], [4 x i32] [i32 0, i32 -8, i32 2, i32 5], [4 x i32] [i32 -4, i32 -4, i32 4, i32 3], [4 x i32] [i32 -8, i32 0, i32 4, i32 5], [4 x i32] [i32 -4, i32 4, i32 6, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [12 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 6, i32 12], [4 x i32] [i32 4, i32 4, i32 0, i32 12], [4 x i32] [i32 8, i32 0, i32 0, i32 12], [4 x i32] [i32 4, i32 -4, i32 2, i32 12], [4 x i32] [i32 0, i32 -8, i32 2, i32 12], [4 x i32] [i32 -4, i32 -4, i32 4, i32 12], [4 x i32] [i32 -8, i32 0, i32 4, i32 12], [4 x i32] [i32 -4, i32 4, i32 6, i32 12], [4 x i32] [i32 0, i32 2, i32 6, i32 12], [4 x i32] [i32 2, i32 0, i32 0, i32 12], [4 x i32] [i32 0, i32 -2, i32 2, i32 12], [4 x i32] [i32 -2, i32 0, i32 4, i32 12]]], align 16
@mv_rescale = internal global i32 0, align 4
@input = external global %struct.InputParameters*, align 8
@img = external global %struct.ImageParameters*, align 8
@searcharray = internal global i32 0, align 4
@medthres_base = internal constant [8 x i32] [i32 0, i32 256, i32 128, i32 128, i32 64, i32 32, i32 32, i32 16], align 16
@medthres = internal global [8 x i32] zeroinitializer, align 16
@maxthres_base = internal constant [8 x i32] [i32 0, i32 768, i32 384, i32 384, i32 192, i32 96, i32 96, i32 48], align 16
@maxthres = internal global [8 x i32] zeroinitializer, align 16
@minthres_base = internal constant [8 x i32] [i32 0, i32 64, i32 32, i32 32, i32 16, i32 8, i32 8, i32 4], align 16
@minthres = internal global [8 x i32] zeroinitializer, align 16
@subthres = internal global [8 x i32] zeroinitializer, align 16
@sdiamond = common global %struct.MEPatternNode* null, align 8
@square = common global %struct.MEPatternNode* null, align 8
@ediamond = common global %struct.MEPatternNode* null, align 8
@ldiamond = common global %struct.MEPatternNode* null, align 8
@sbdiamond = common global %struct.MEPatternNode* null, align 8
@pmvfast = common global %struct.MEPatternNode* null, align 8
@window_predictor = common global %struct.MEPatternNode* null, align 8
@window_predictor_extended = common global %struct.MEPatternNode* null, align 8
@predictor = common global %struct.MEPatternNode* null, align 8
@EPZSDistortion = common global i32*** null, align 8
@EPZSMap = internal global i16** null, align 8
@EPZSMotion = common global i16****** null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@EPZSCo_located = common global %struct.EPZSColocParams* null, align 8
@searchPattern = common global %struct.MEPatternNode* null, align 8
@searchPatternD = common global %struct.MEPatternNode* null, align 8
@listXsize = external global [6 x i32], align 16
@enc_picture = external global %struct.storable_picture*, align 8
@mv_scale = internal global [6 x [32 x [32 x i32]]] zeroinitializer, align 16
@listX = external global [6 x %struct.storable_picture**], align 16
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@EPZSBlkCount = internal global i16 0, align 2
@ref_pic_sub = external global %struct.SubImageContainer, align 8
@img_width = external global i16, align 2
@img_height = external global i16, align 2
@width_pad = common global i32 0, align 4
@height_pad = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@weight_luma = external global i32, align 4
@wp_offset = common global i32*** null, align 8
@offset_luma = external global i32, align 4
@ChromaMEEnable = external global i32, align 4
@width_pad_cr = common global i32 0, align 4
@height_pad_cr = common global i32 0, align 4
@weight_cr = external global [2 x i32], align 4
@offset_cr = external global [2 x i32], align 4
@ref_access_method = external global i32, align 4
@mvbits = external global i32*, align 8
@computeUniPred = external global [6 x i32 (i16*, i32, i32, i32, i32, i32)*], align 16
@ref_pic1_sub = external global %struct.SubImageContainer, align 8
@ref_pic2_sub = external global %struct.SubImageContainer, align 8
@wbp_weight = common global i32**** null, align 8
@weight1 = external global i16, align 2
@weight2 = external global i16, align 2
@offsetBi = external global i16, align 2
@computeBiPred2 = external global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], align 16
@computeBiPred = external global i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, align 8
@luma_log_weight_denom = common global i32 0, align 4
@computeBiPred1 = external global [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], align 16
@weight1_cr = external global [2 x i16], align 2
@weight2_cr = external global [2 x i16], align 2
@offsetBi_cr = external global [2 x i16], align 2
@chroma_log_weight_denom = common global i32 0, align 4
@bipred2_access_method = external global i32, align 4
@bipred1_access_method = external global i32, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c" EPZS Pattern                 : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c" EPZS Dual Pattern            : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c" EPZS Fixed Predictors        : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c" EPZS Temporal Predictors     : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c" EPZS Spatial Predictors      : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c" EPZS Thresholds (16x16)      : (%d %d %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c" EPZS Subpel ME               : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c" EPZS Subpel ME BiPred        : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c" EPZS Pattern                      : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c" EPZS Dual Pattern                 : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c" EPZS Fixed Predictors             : %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c" EPZS Temporal Predictors          : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c" EPZS Spatial Predictors           : %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c" EPZS Thresholds (16x16)           : (%d %d %d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c" EPZS Subpel ME                    : %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c" EPZS Subpel ME BiPred             : %s\0A\00", align 1
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@search_point_hp = internal constant [10 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 -2, i16 0], [2 x i16] [i16 0, i16 2], [2 x i16] [i16 2, i16 0], [2 x i16] [i16 0, i16 -2], [2 x i16] [i16 -2, i16 2], [2 x i16] [i16 2, i16 2], [2 x i16] [i16 2, i16 -2], [2 x i16] [i16 -2, i16 -2], [2 x i16] [i16 -2, i16 2]], align 16
@search_point_qp = internal constant [10 x [2 x i16]] [[2 x i16] zeroinitializer, [2 x i16] [i16 -1, i16 0], [2 x i16] [i16 0, i16 1], [2 x i16] [i16 1, i16 0], [2 x i16] [i16 0, i16 -1], [2 x i16] [i16 -1, i16 1], [2 x i16] [i16 1, i16 1], [2 x i16] [i16 1, i16 -1], [2 x i16] [i16 -1, i16 -1], [2 x i16] [i16 -1, i16 1]], align 16
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@imgUV_org_bot = common global i16*** null, align 8
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@direct_ref_idx = common global i8*** null, align 8
@direct_pdir = common global i8** null, align 8
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@intras = common global i32 0, align 4
@frame_ctr = common global [5 x i32] zeroinitializer, align 16
@frame_no = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@tot_time = common global i64 0, align 8
@errortext = common global [300 x i8] zeroinitializer, align 16
@b8_ipredmode8x8 = common global [4 x [4 x i8]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i8] zeroinitializer, align 16
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_trace = common global %struct._IO_FILE* null, align 8
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@mb16x16_cost_frame = common global double* null, align 8
@Bytes_After_Header = common global i32 0, align 4
@encode_one_macroblock = common global void ()* null, align 8
@lrec = common global i32** null, align 8
@lrec_uv = common global i32*** null, align 8
@si_frame_indicator = common global i32 0, align 4
@sp2_frame_indicator = common global i32 0, align 4
@number_sp2_frames = common global i32 0, align 4
@giRDOpt_B8OnlyFlag = common global i32 0, align 4
@imgY_tmp = common global i16** null, align 8
@imgUV_tmp = common global [2 x i16**] zeroinitializer, align 16
@frameNuminGOP = common global i32 0, align 4
@redundant_coding = common global i32 0, align 4
@key_frame = common global i32 0, align 4
@redundant_ref_idx = common global i32 0, align 4
@img_pad_size_uv_x = common global i32 0, align 4
@img_pad_size_uv_y = common global i32 0, align 4
@chroma_mask_mv_y = common global i8 0, align 1
@chroma_mask_mv_x = common global i8 0, align 1
@chroma_shift_y = common global i32 0, align 4
@chroma_shift_x = common global i32 0, align 4
@shift_cr_x = common global i32 0, align 4
@shift_cr_y = common global i32 0, align 4
@img_padded_size_x = common global i32 0, align 4
@img_cr_padded_size_x = common global i32 0, align 4
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@blk_parent = internal constant [8 x i16] [i16 1, i16 1, i16 1, i16 1, i16 2, i16 4, i16 4, i16 5], align 16

; Function Attrs: nounwind uwtable
define %struct.EPZSColocParams* @allocEPZScolocated(i32 %size_x, i32 %size_y, i32 %mb_adaptive_frame_field_flag) #0 {
entry:
  %size_x.addr = alloca i32, align 4
  %size_y.addr = alloca i32, align 4
  %mb_adaptive_frame_field_flag.addr = alloca i32, align 4
  %s = alloca %struct.EPZSColocParams*, align 8
  store i32 %size_x, i32* %size_x.addr, align 4
  store i32 %size_y, i32* %size_y.addr, align 4
  store i32 %mb_adaptive_frame_field_flag, i32* %mb_adaptive_frame_field_flag.addr, align 4
  %call = call noalias i8* @calloc(i64 1, i64 40) #4
  %0 = bitcast i8* %call to %struct.EPZSColocParams*
  store %struct.EPZSColocParams* %0, %struct.EPZSColocParams** %s, align 8
  %1 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  %cmp = icmp eq %struct.EPZSColocParams* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %size_x.addr, align 4
  %3 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  %size_x1 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %3, i32 0, i32 1
  store i32 %2, i32* %size_x1, align 4
  %4 = load i32, i32* %size_y.addr, align 4
  %5 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  %size_y2 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %5, i32 0, i32 2
  store i32 %4, i32* %size_y2, align 4
  %6 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  %mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %6, i32 0, i32 3
  %7 = load i32, i32* %size_y.addr, align 4
  %div = sdiv i32 %7, 4
  %8 = load i32, i32* %size_x.addr, align 4
  %div3 = sdiv i32 %8, 4
  %call4 = call i32 @get_mem4Dshort(i16***** %mv, i32 2, i32 %div, i32 %div3, i32 2)
  %9 = load i32, i32* %mb_adaptive_frame_field_flag.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  %top_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %10, i32 0, i32 4
  %11 = load i32, i32* %size_y.addr, align 4
  %div6 = sdiv i32 %11, 4
  %div7 = sdiv i32 %div6, 2
  %12 = load i32, i32* %size_x.addr, align 4
  %div8 = sdiv i32 %12, 4
  %call9 = call i32 @get_mem4Dshort(i16***** %top_mv, i32 2, i32 %div7, i32 %div8, i32 2)
  %13 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  %bottom_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %13, i32 0, i32 5
  %14 = load i32, i32* %size_y.addr, align 4
  %div10 = sdiv i32 %14, 4
  %div11 = sdiv i32 %div10, 2
  %15 = load i32, i32* %size_x.addr, align 4
  %div12 = sdiv i32 %15, 4
  %call13 = call i32 @get_mem4Dshort(i16***** %bottom_mv, i32 2, i32 %div11, i32 %div12, i32 2)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.5, %if.end
  %16 = load i32, i32* %mb_adaptive_frame_field_flag.addr, align 4
  %17 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  %mb_adaptive_frame_field_flag15 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %17, i32 0, i32 0
  store i32 %16, i32* %mb_adaptive_frame_field_flag15, align 4
  %18 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %s, align 8
  ret %struct.EPZSColocParams* %18
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @no_mem_exit(i8*) #2

declare i32 @get_mem4Dshort(i16*****, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @freeEPZScolocated(%struct.EPZSColocParams* %p) #0 {
entry:
  %p.addr = alloca %struct.EPZSColocParams*, align 8
  store %struct.EPZSColocParams* %p, %struct.EPZSColocParams** %p.addr, align 8
  %0 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %tobool = icmp ne %struct.EPZSColocParams* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1, i32 0, i32 3
  %2 = load i16****, i16***** %mv, align 8
  %3 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %size_y = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %3, i32 0, i32 2
  %4 = load i32, i32* %size_y, align 4
  %div = sdiv i32 %4, 4
  call void @free_mem4Dshort(i16**** %2, i32 2, i32 %div)
  %5 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %5, i32 0, i32 0
  %6 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %7, i32 0, i32 4
  %8 = load i16****, i16***** %top_mv, align 8
  %9 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %size_y3 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %9, i32 0, i32 2
  %10 = load i32, i32* %size_y3, align 4
  %div4 = sdiv i32 %10, 4
  %div5 = sdiv i32 %div4, 2
  call void @free_mem4Dshort(i16**** %8, i32 2, i32 %div5)
  %11 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %11, i32 0, i32 5
  %12 = load i16****, i16***** %bottom_mv, align 8
  %13 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %size_y6 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %13, i32 0, i32 2
  %14 = load i32, i32* %size_y6, align 4
  %div7 = sdiv i32 %14, 4
  %div8 = sdiv i32 %div7, 2
  call void @free_mem4Dshort(i16**** %12, i32 2, i32 %div8)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %15 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %16 = bitcast %struct.EPZSColocParams* %15 to i8*
  call void @free(i8* %16) #4
  store %struct.EPZSColocParams* null, %struct.EPZSColocParams** %p.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  ret void
}

declare void @free_mem4Dshort(i16****, i32, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.MEPatternNode* @allocEPZSpattern(i32 %searchpoints) #0 {
entry:
  %searchpoints.addr = alloca i32, align 4
  %s = alloca %struct.MEPatternNode*, align 8
  store i32 %searchpoints, i32* %searchpoints.addr, align 4
  %call = call noalias i8* @calloc(i64 1, i64 32) #4
  %0 = bitcast i8* %call to %struct.MEPatternNode*
  store %struct.MEPatternNode* %0, %struct.MEPatternNode** %s, align 8
  %1 = load %struct.MEPatternNode*, %struct.MEPatternNode** %s, align 8
  %cmp = icmp eq %struct.MEPatternNode* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @no_mem_exit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %searchpoints.addr, align 4
  %3 = load %struct.MEPatternNode*, %struct.MEPatternNode** %s, align 8
  %searchPoints = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %3, i32 0, i32 0
  store i32 %2, i32* %searchPoints, align 4
  %4 = load i32, i32* %searchpoints.addr, align 4
  %conv = sext i32 %4 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 16) #4
  %5 = bitcast i8* %call1 to %struct.SPoint*
  %6 = load %struct.MEPatternNode*, %struct.MEPatternNode** %s, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %6, i32 0, i32 1
  store %struct.SPoint* %5, %struct.SPoint** %point, align 8
  %7 = load %struct.MEPatternNode*, %struct.MEPatternNode** %s, align 8
  ret %struct.MEPatternNode* %7
}

; Function Attrs: nounwind uwtable
define void @freeEPZSpattern(%struct.MEPatternNode* %p) #0 {
entry:
  %p.addr = alloca %struct.MEPatternNode*, align 8
  store %struct.MEPatternNode* %p, %struct.MEPatternNode** %p.addr, align 8
  %0 = load %struct.MEPatternNode*, %struct.MEPatternNode** %p.addr, align 8
  %tobool = icmp ne %struct.MEPatternNode* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.MEPatternNode*, %struct.MEPatternNode** %p.addr, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %1, i32 0, i32 1
  %2 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %3 = bitcast %struct.SPoint* %2 to i8*
  call void @free(i8* %3) #4
  %4 = load %struct.MEPatternNode*, %struct.MEPatternNode** %p.addr, align 8
  %5 = bitcast %struct.MEPatternNode* %4 to i8*
  call void @free(i8* %5) #4
  store %struct.MEPatternNode* null, %struct.MEPatternNode** %p.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @assignEPZSpattern(%struct.MEPatternNode* %pattern, i32 %type, i32 %stopSearch, i32 %nextLast, %struct.MEPatternNode* %nextpattern) #0 {
entry:
  %pattern.addr = alloca %struct.MEPatternNode*, align 8
  %type.addr = alloca i32, align 4
  %stopSearch.addr = alloca i32, align 4
  %nextLast.addr = alloca i32, align 4
  %nextpattern.addr = alloca %struct.MEPatternNode*, align 8
  %i = alloca i32, align 4
  store %struct.MEPatternNode* %pattern, %struct.MEPatternNode** %pattern.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %stopSearch, i32* %stopSearch.addr, align 4
  store i32 %nextLast, i32* %nextLast.addr, align 4
  store %struct.MEPatternNode* %nextpattern, %struct.MEPatternNode** %nextpattern.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %searchPoints = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %1, i32 0, i32 0
  %2 = load i32, i32* %searchPoints, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %type.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [5 x [12 x [4 x i32]]], [5 x [12 x [4 x i32]]]* @pattern_data, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [12 x [4 x i32]], [12 x [4 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx2, i32 0, i64 0
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = load i32, i32* @mv_rescale, align 4
  %shr = ashr i32 %5, %6
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %8, i32 0, i32 1
  %9 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx5 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %9, i64 %idxprom4
  %mv = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx5, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %mv, i32 0, i64 0
  store i32 %shr, i32* %arrayidx6, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i32, i32* %type.addr, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [5 x [12 x [4 x i32]]], [5 x [12 x [4 x i32]]]* @pattern_data, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [12 x [4 x i32]], [12 x [4 x i32]]* %arrayidx9, i32 0, i64 %idxprom7
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx10, i32 0, i64 1
  %12 = load i32, i32* %arrayidx11, align 4
  %13 = load i32, i32* @mv_rescale, align 4
  %shr12 = ashr i32 %12, %13
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %point14 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %15, i32 0, i32 1
  %16 = load %struct.SPoint*, %struct.SPoint** %point14, align 8
  %arrayidx15 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %16, i64 %idxprom13
  %mv16 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %mv16, i32 0, i64 1
  store i32 %shr12, i32* %arrayidx17, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i32, i32* %type.addr, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [5 x [12 x [4 x i32]]], [5 x [12 x [4 x i32]]]* @pattern_data, i32 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [12 x [4 x i32]], [12 x [4 x i32]]* %arrayidx20, i32 0, i64 %idxprom18
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx21, i32 0, i64 2
  %19 = load i32, i32* %arrayidx22, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %point24 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %21, i32 0, i32 1
  %22 = load %struct.SPoint*, %struct.SPoint** %point24, align 8
  %arrayidx25 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %22, i64 %idxprom23
  %start_nmbr = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx25, i32 0, i32 1
  store i32 %19, i32* %start_nmbr, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load i32, i32* %type.addr, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [5 x [12 x [4 x i32]]], [5 x [12 x [4 x i32]]]* @pattern_data, i32 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [12 x [4 x i32]], [12 x [4 x i32]]* %arrayidx28, i32 0, i64 %idxprom26
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx29, i32 0, i64 3
  %25 = load i32, i32* %arrayidx30, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %point32 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %27, i32 0, i32 1
  %28 = load %struct.SPoint*, %struct.SPoint** %point32, align 8
  %arrayidx33 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %28, i64 %idxprom31
  %next_points = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx33, i32 0, i32 2
  store i32 %25, i32* %next_points, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %stopSearch.addr, align 4
  %31 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %stopSearch34 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %31, i32 0, i32 2
  store i32 %30, i32* %stopSearch34, align 4
  %32 = load i32, i32* %nextLast.addr, align 4
  %33 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %nextLast35 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %33, i32 0, i32 3
  store i32 %32, i32* %nextLast35, align 4
  %34 = load %struct.MEPatternNode*, %struct.MEPatternNode** %nextpattern.addr, align 8
  %35 = load %struct.MEPatternNode*, %struct.MEPatternNode** %pattern.addr, align 8
  %nextpattern36 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %35, i32 0, i32 4
  store %struct.MEPatternNode* %34, %struct.MEPatternNode** %nextpattern36, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @EPZSWindowPredictorInit(i16 signext %search_range, %struct.MEPatternNode* %predictor, i16 signext %mode) #0 {
entry:
  %search_range.addr = alloca i16, align 2
  %predictor.addr = alloca %struct.MEPatternNode*, align 8
  %mode.addr = alloca i16, align 2
  %pos = alloca i32, align 4
  %searchpos = alloca i32, align 4
  %fieldsearchpos = alloca i32, align 4
  %prednum = alloca i32, align 4
  %i = alloca i32, align 4
  %search_range_qpel = alloca i32, align 4
  store i16 %search_range, i16* %search_range.addr, align 2
  store %struct.MEPatternNode* %predictor, %struct.MEPatternNode** %predictor.addr, align 8
  store i16 %mode, i16* %mode.addr, align 2
  store i32 0, i32* %prednum, align 4
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 101
  %1 = load i32, i32* %EPZSSubPelGrid, align 4
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 2, i32 0
  store i32 %cond, i32* %search_range_qpel, align 4
  %2 = load i16, i16* %mode.addr, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i16, i16* %search_range.addr, align 2
  %conv2 = sext i16 %3 to i32
  %call = call i32 @RoundLog2(i32 %conv2)
  %sub = sub nsw i32 %call, 2
  store i32 %sub, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %if.then
  %4 = load i32, i32* %pos, align 4
  %cmp3 = icmp sgt i32 %4, -1
  br i1 %cmp3, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %5 = load i16, i16* %search_range.addr, align 2
  %conv5 = sext i16 %5 to i32
  %6 = load i32, i32* %search_range_qpel, align 4
  %shl = shl i32 %conv5, %6
  %7 = load i32, i32* %pos, align 4
  %shr = ashr i32 %shl, %7
  store i32 %shr, i32* %searchpos, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %8, -1
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %searchpos, align 4
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %prednum, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %12, i32 0, i32 1
  %13 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx = getelementptr inbounds %struct.SPoint, %struct.SPoint* %13, i64 %idxprom
  %mv = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %mv, i32 0, i64 0
  store i32 %mul, i32* %arrayidx10, align 4
  %14 = load i32, i32* %prednum, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %prednum, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point12 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %15, i32 0, i32 1
  %16 = load %struct.SPoint*, %struct.SPoint** %point12, align 8
  %arrayidx13 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %16, i64 %idxprom11
  %mv14 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %mv14, i32 0, i64 1
  store i32 0, i32* %arrayidx15, align 4
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %searchpos, align 4
  %mul16 = mul nsw i32 %17, %18
  %19 = load i32, i32* %prednum, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point18 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %20, i32 0, i32 1
  %21 = load %struct.SPoint*, %struct.SPoint** %point18, align 8
  %arrayidx19 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %21, i64 %idxprom17
  %mv20 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %mv20, i32 0, i64 0
  store i32 %mul16, i32* %arrayidx21, align 4
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %searchpos, align 4
  %mul22 = mul nsw i32 %22, %23
  %24 = load i32, i32* %prednum, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, i32* %prednum, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point25 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %25, i32 0, i32 1
  %26 = load %struct.SPoint*, %struct.SPoint** %point25, align 8
  %arrayidx26 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %26, i64 %idxprom24
  %mv27 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %mv27, i32 0, i64 1
  store i32 %mul22, i32* %arrayidx28, align 4
  %27 = load i32, i32* %prednum, align 4
  %idxprom29 = sext i32 %27 to i64
  %28 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point30 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %28, i32 0, i32 1
  %29 = load %struct.SPoint*, %struct.SPoint** %point30, align 8
  %arrayidx31 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %29, i64 %idxprom29
  %mv32 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %mv32, i32 0, i64 0
  store i32 0, i32* %arrayidx33, align 4
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %searchpos, align 4
  %mul34 = mul nsw i32 %30, %31
  %32 = load i32, i32* %prednum, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, i32* %prednum, align 4
  %idxprom36 = sext i32 %32 to i64
  %33 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point37 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %33, i32 0, i32 1
  %34 = load %struct.SPoint*, %struct.SPoint** %point37, align 8
  %arrayidx38 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %34, i64 %idxprom36
  %mv39 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %mv39, i32 0, i64 1
  store i32 %mul34, i32* %arrayidx40, align 4
  %35 = load i32, i32* %i, align 4
  %sub41 = sub nsw i32 0, %35
  %36 = load i32, i32* %searchpos, align 4
  %mul42 = mul nsw i32 %sub41, %36
  %37 = load i32, i32* %prednum, align 4
  %idxprom43 = sext i32 %37 to i64
  %38 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point44 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %38, i32 0, i32 1
  %39 = load %struct.SPoint*, %struct.SPoint** %point44, align 8
  %arrayidx45 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %39, i64 %idxprom43
  %mv46 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx45, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x i32], [2 x i32]* %mv46, i32 0, i64 0
  store i32 %mul42, i32* %arrayidx47, align 4
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %searchpos, align 4
  %mul48 = mul nsw i32 %40, %41
  %42 = load i32, i32* %prednum, align 4
  %inc49 = add nsw i32 %42, 1
  store i32 %inc49, i32* %prednum, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point51 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %43, i32 0, i32 1
  %44 = load %struct.SPoint*, %struct.SPoint** %point51, align 8
  %arrayidx52 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %44, i64 %idxprom50
  %mv53 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [2 x i32], [2 x i32]* %mv53, i32 0, i64 1
  store i32 %mul48, i32* %arrayidx54, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %45 = load i32, i32* %i, align 4
  %sub55 = sub nsw i32 %45, 2
  store i32 %sub55, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %46 = load i32, i32* %pos, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %pos, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %47 = load i16, i16* %search_range.addr, align 2
  %conv58 = sext i16 %47 to i32
  %call59 = call i32 @RoundLog2(i32 %conv58)
  %sub60 = sub nsw i32 %call59, 2
  store i32 %sub60, i32* %pos, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.214, %if.else
  %48 = load i32, i32* %pos, align 4
  %cmp62 = icmp sgt i32 %48, -1
  br i1 %cmp62, label %for.body.64, label %for.end.216

for.body.64:                                      ; preds = %for.cond.61
  %49 = load i16, i16* %search_range.addr, align 2
  %conv65 = sext i16 %49 to i32
  %50 = load i32, i32* %search_range_qpel, align 4
  %shl66 = shl i32 %conv65, %50
  %51 = load i32, i32* %pos, align 4
  %shr67 = ashr i32 %shl66, %51
  store i32 %shr67, i32* %searchpos, align 4
  %52 = load i32, i32* %searchpos, align 4
  %mul68 = mul nsw i32 3, %52
  %add = add nsw i32 %mul68, 1
  %53 = load i32, i32* %search_range_qpel, align 4
  %shl69 = shl i32 %add, %53
  %shr70 = ashr i32 %shl69, 1
  store i32 %shr70, i32* %fieldsearchpos, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.126, %for.body.64
  %54 = load i32, i32* %i, align 4
  %cmp72 = icmp sge i32 %54, -1
  br i1 %cmp72, label %for.body.74, label %for.end.128

for.body.74:                                      ; preds = %for.cond.71
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %searchpos, align 4
  %mul75 = mul nsw i32 %55, %56
  %57 = load i32, i32* %prednum, align 4
  %idxprom76 = sext i32 %57 to i64
  %58 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point77 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %58, i32 0, i32 1
  %59 = load %struct.SPoint*, %struct.SPoint** %point77, align 8
  %arrayidx78 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %59, i64 %idxprom76
  %mv79 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx78, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [2 x i32], [2 x i32]* %mv79, i32 0, i64 0
  store i32 %mul75, i32* %arrayidx80, align 4
  %60 = load i32, i32* %prednum, align 4
  %inc81 = add nsw i32 %60, 1
  store i32 %inc81, i32* %prednum, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point83 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %61, i32 0, i32 1
  %62 = load %struct.SPoint*, %struct.SPoint** %point83, align 8
  %arrayidx84 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %62, i64 %idxprom82
  %mv85 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x i32], [2 x i32]* %mv85, i32 0, i64 1
  store i32 0, i32* %arrayidx86, align 4
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %searchpos, align 4
  %mul87 = mul nsw i32 %63, %64
  %65 = load i32, i32* %prednum, align 4
  %idxprom88 = sext i32 %65 to i64
  %66 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point89 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %66, i32 0, i32 1
  %67 = load %struct.SPoint*, %struct.SPoint** %point89, align 8
  %arrayidx90 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %67, i64 %idxprom88
  %mv91 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx90, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %mv91, i32 0, i64 0
  store i32 %mul87, i32* %arrayidx92, align 4
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %searchpos, align 4
  %mul93 = mul nsw i32 %68, %69
  %70 = load i32, i32* %prednum, align 4
  %inc94 = add nsw i32 %70, 1
  store i32 %inc94, i32* %prednum, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point96 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %71, i32 0, i32 1
  %72 = load %struct.SPoint*, %struct.SPoint** %point96, align 8
  %arrayidx97 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %72, i64 %idxprom95
  %mv98 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx97, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [2 x i32], [2 x i32]* %mv98, i32 0, i64 1
  store i32 %mul93, i32* %arrayidx99, align 4
  %73 = load i32, i32* %prednum, align 4
  %idxprom100 = sext i32 %73 to i64
  %74 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point101 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %74, i32 0, i32 1
  %75 = load %struct.SPoint*, %struct.SPoint** %point101, align 8
  %arrayidx102 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %75, i64 %idxprom100
  %mv103 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [2 x i32], [2 x i32]* %mv103, i32 0, i64 0
  store i32 0, i32* %arrayidx104, align 4
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %searchpos, align 4
  %mul105 = mul nsw i32 %76, %77
  %78 = load i32, i32* %prednum, align 4
  %inc106 = add nsw i32 %78, 1
  store i32 %inc106, i32* %prednum, align 4
  %idxprom107 = sext i32 %78 to i64
  %79 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point108 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %79, i32 0, i32 1
  %80 = load %struct.SPoint*, %struct.SPoint** %point108, align 8
  %arrayidx109 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %80, i64 %idxprom107
  %mv110 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx109, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [2 x i32], [2 x i32]* %mv110, i32 0, i64 1
  store i32 %mul105, i32* %arrayidx111, align 4
  %81 = load i32, i32* %i, align 4
  %sub112 = sub nsw i32 0, %81
  %82 = load i32, i32* %searchpos, align 4
  %mul113 = mul nsw i32 %sub112, %82
  %83 = load i32, i32* %prednum, align 4
  %idxprom114 = sext i32 %83 to i64
  %84 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point115 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %84, i32 0, i32 1
  %85 = load %struct.SPoint*, %struct.SPoint** %point115, align 8
  %arrayidx116 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %85, i64 %idxprom114
  %mv117 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx116, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [2 x i32], [2 x i32]* %mv117, i32 0, i64 0
  store i32 %mul113, i32* %arrayidx118, align 4
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %searchpos, align 4
  %mul119 = mul nsw i32 %86, %87
  %88 = load i32, i32* %prednum, align 4
  %inc120 = add nsw i32 %88, 1
  store i32 %inc120, i32* %prednum, align 4
  %idxprom121 = sext i32 %88 to i64
  %89 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point122 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %89, i32 0, i32 1
  %90 = load %struct.SPoint*, %struct.SPoint** %point122, align 8
  %arrayidx123 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %90, i64 %idxprom121
  %mv124 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx123, i32 0, i32 0
  %arrayidx125 = getelementptr inbounds [2 x i32], [2 x i32]* %mv124, i32 0, i64 1
  store i32 %mul119, i32* %arrayidx125, align 4
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.74
  %91 = load i32, i32* %i, align 4
  %sub127 = sub nsw i32 %91, 2
  store i32 %sub127, i32* %i, align 4
  br label %for.cond.71

for.end.128:                                      ; preds = %for.cond.71
  store i32 1, i32* %i, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.211, %for.end.128
  %92 = load i32, i32* %i, align 4
  %cmp130 = icmp sge i32 %92, -1
  br i1 %cmp130, label %for.body.132, label %for.end.213

for.body.132:                                     ; preds = %for.cond.129
  %93 = load i32, i32* %i, align 4
  %94 = load i32, i32* %fieldsearchpos, align 4
  %mul133 = mul nsw i32 %93, %94
  %95 = load i32, i32* %prednum, align 4
  %idxprom134 = sext i32 %95 to i64
  %96 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point135 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %96, i32 0, i32 1
  %97 = load %struct.SPoint*, %struct.SPoint** %point135, align 8
  %arrayidx136 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %97, i64 %idxprom134
  %mv137 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %mv137, i32 0, i64 0
  store i32 %mul133, i32* %arrayidx138, align 4
  %98 = load i32, i32* %i, align 4
  %sub139 = sub nsw i32 0, %98
  %99 = load i32, i32* %searchpos, align 4
  %mul140 = mul nsw i32 %sub139, %99
  %100 = load i32, i32* %prednum, align 4
  %inc141 = add nsw i32 %100, 1
  store i32 %inc141, i32* %prednum, align 4
  %idxprom142 = sext i32 %100 to i64
  %101 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point143 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %101, i32 0, i32 1
  %102 = load %struct.SPoint*, %struct.SPoint** %point143, align 8
  %arrayidx144 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %102, i64 %idxprom142
  %mv145 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx144, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %mv145, i32 0, i64 1
  store i32 %mul140, i32* %arrayidx146, align 4
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %fieldsearchpos, align 4
  %mul147 = mul nsw i32 %103, %104
  %105 = load i32, i32* %prednum, align 4
  %idxprom148 = sext i32 %105 to i64
  %106 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point149 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %106, i32 0, i32 1
  %107 = load %struct.SPoint*, %struct.SPoint** %point149, align 8
  %arrayidx150 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %107, i64 %idxprom148
  %mv151 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [2 x i32], [2 x i32]* %mv151, i32 0, i64 0
  store i32 %mul147, i32* %arrayidx152, align 4
  %108 = load i32, i32* %prednum, align 4
  %inc153 = add nsw i32 %108, 1
  store i32 %inc153, i32* %prednum, align 4
  %idxprom154 = sext i32 %108 to i64
  %109 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point155 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %109, i32 0, i32 1
  %110 = load %struct.SPoint*, %struct.SPoint** %point155, align 8
  %arrayidx156 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %110, i64 %idxprom154
  %mv157 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [2 x i32], [2 x i32]* %mv157, i32 0, i64 1
  store i32 0, i32* %arrayidx158, align 4
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %fieldsearchpos, align 4
  %mul159 = mul nsw i32 %111, %112
  %113 = load i32, i32* %prednum, align 4
  %idxprom160 = sext i32 %113 to i64
  %114 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point161 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %114, i32 0, i32 1
  %115 = load %struct.SPoint*, %struct.SPoint** %point161, align 8
  %arrayidx162 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %115, i64 %idxprom160
  %mv163 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx162, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [2 x i32], [2 x i32]* %mv163, i32 0, i64 0
  store i32 %mul159, i32* %arrayidx164, align 4
  %116 = load i32, i32* %i, align 4
  %117 = load i32, i32* %searchpos, align 4
  %mul165 = mul nsw i32 %116, %117
  %118 = load i32, i32* %prednum, align 4
  %inc166 = add nsw i32 %118, 1
  store i32 %inc166, i32* %prednum, align 4
  %idxprom167 = sext i32 %118 to i64
  %119 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point168 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %119, i32 0, i32 1
  %120 = load %struct.SPoint*, %struct.SPoint** %point168, align 8
  %arrayidx169 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %120, i64 %idxprom167
  %mv170 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x i32], [2 x i32]* %mv170, i32 0, i64 1
  store i32 %mul165, i32* %arrayidx171, align 4
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* %searchpos, align 4
  %mul172 = mul nsw i32 %121, %122
  %123 = load i32, i32* %prednum, align 4
  %idxprom173 = sext i32 %123 to i64
  %124 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point174 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %124, i32 0, i32 1
  %125 = load %struct.SPoint*, %struct.SPoint** %point174, align 8
  %arrayidx175 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %125, i64 %idxprom173
  %mv176 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx175, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x i32], [2 x i32]* %mv176, i32 0, i64 0
  store i32 %mul172, i32* %arrayidx177, align 4
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %fieldsearchpos, align 4
  %mul178 = mul nsw i32 %126, %127
  %128 = load i32, i32* %prednum, align 4
  %inc179 = add nsw i32 %128, 1
  store i32 %inc179, i32* %prednum, align 4
  %idxprom180 = sext i32 %128 to i64
  %129 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point181 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %129, i32 0, i32 1
  %130 = load %struct.SPoint*, %struct.SPoint** %point181, align 8
  %arrayidx182 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %130, i64 %idxprom180
  %mv183 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx182, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [2 x i32], [2 x i32]* %mv183, i32 0, i64 1
  store i32 %mul178, i32* %arrayidx184, align 4
  %131 = load i32, i32* %prednum, align 4
  %idxprom185 = sext i32 %131 to i64
  %132 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point186 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %132, i32 0, i32 1
  %133 = load %struct.SPoint*, %struct.SPoint** %point186, align 8
  %arrayidx187 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %133, i64 %idxprom185
  %mv188 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx187, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [2 x i32], [2 x i32]* %mv188, i32 0, i64 0
  store i32 0, i32* %arrayidx189, align 4
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %fieldsearchpos, align 4
  %mul190 = mul nsw i32 %134, %135
  %136 = load i32, i32* %prednum, align 4
  %inc191 = add nsw i32 %136, 1
  store i32 %inc191, i32* %prednum, align 4
  %idxprom192 = sext i32 %136 to i64
  %137 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point193 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %137, i32 0, i32 1
  %138 = load %struct.SPoint*, %struct.SPoint** %point193, align 8
  %arrayidx194 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %138, i64 %idxprom192
  %mv195 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [2 x i32], [2 x i32]* %mv195, i32 0, i64 1
  store i32 %mul190, i32* %arrayidx196, align 4
  %139 = load i32, i32* %i, align 4
  %sub197 = sub nsw i32 0, %139
  %140 = load i32, i32* %searchpos, align 4
  %mul198 = mul nsw i32 %sub197, %140
  %141 = load i32, i32* %prednum, align 4
  %idxprom199 = sext i32 %141 to i64
  %142 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point200 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %142, i32 0, i32 1
  %143 = load %struct.SPoint*, %struct.SPoint** %point200, align 8
  %arrayidx201 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %143, i64 %idxprom199
  %mv202 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x i32], [2 x i32]* %mv202, i32 0, i64 0
  store i32 %mul198, i32* %arrayidx203, align 4
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* %fieldsearchpos, align 4
  %mul204 = mul nsw i32 %144, %145
  %146 = load i32, i32* %prednum, align 4
  %inc205 = add nsw i32 %146, 1
  store i32 %inc205, i32* %prednum, align 4
  %idxprom206 = sext i32 %146 to i64
  %147 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point207 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %147, i32 0, i32 1
  %148 = load %struct.SPoint*, %struct.SPoint** %point207, align 8
  %arrayidx208 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %148, i64 %idxprom206
  %mv209 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx208, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x i32], [2 x i32]* %mv209, i32 0, i64 1
  store i32 %mul204, i32* %arrayidx210, align 4
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.body.132
  %149 = load i32, i32* %i, align 4
  %sub212 = sub nsw i32 %149, 2
  store i32 %sub212, i32* %i, align 4
  br label %for.cond.129

for.end.213:                                      ; preds = %for.cond.129
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.end.213
  %150 = load i32, i32* %pos, align 4
  %dec215 = add nsw i32 %150, -1
  store i32 %dec215, i32* %pos, align 4
  br label %for.cond.61

for.end.216:                                      ; preds = %for.cond.61
  br label %if.end

if.end:                                           ; preds = %for.end.216, %for.end.57
  %151 = load i32, i32* %prednum, align 4
  %152 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %searchPoints = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %152, i32 0, i32 0
  store i32 %151, i32* %searchPoints, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @RoundLog2(i32 %iValue) #0 {
entry:
  %iValue.addr = alloca i32, align 4
  %iRet = alloca i32, align 4
  %iValue_square = alloca i32, align 4
  store i32 %iValue, i32* %iValue.addr, align 4
  store i32 0, i32* %iRet, align 4
  %0 = load i32, i32* %iValue.addr, align 4
  %1 = load i32, i32* %iValue.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, i32* %iValue_square, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %iRet, align 4
  %add = add nsw i32 %2, 1
  %shl = shl i32 1, %add
  %3 = load i32, i32* %iValue_square, align 4
  %cmp = icmp sle i32 %shl, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %iRet, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %iRet, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %iRet, align 4
  %add1 = add nsw i32 %5, 1
  %shr = ashr i32 %add1, 1
  store i32 %shr, i32* %iRet, align 4
  %6 = load i32, i32* %iRet, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @EPZSInit() #0 {
entry:
  %pel_error_me = alloca i32, align 4
  %i = alloca i32, align 4
  %memory_size = alloca i32, align 4
  %searchlevels = alloca i32, align 4
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 142
  %1 = load i32, i32* %bitdepth_luma, align 4
  %sub = sub nsw i32 %1, 8
  %shl = shl i32 1, %sub
  store i32 %shl, i32* %pel_error_me, align 4
  store i32 0, i32* %memory_size, align 4
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 7
  %3 = load i32, i32* %search_range, align 4
  %call = call i32 @RoundLog2(i32 %3)
  %sub1 = sub nsw i32 %call, 1
  store i32 %sub1, i32* %searchlevels, align 4
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMotionEstimation = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 46
  %5 = load i32, i32* %BiPredMotionEstimation, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range2 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 7
  %7 = load i32, i32* %search_range2, align 4
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %BiPredMESearchRange = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 48
  %9 = load i32, i32* %BiPredMESearchRange, align 4
  %call3 = call i32 @imax(i32 %7, i32 %9)
  %mul = mul nsw i32 2, %call3
  %add = add nsw i32 %mul, 1
  %10 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %10, i32 0, i32 101
  %11 = load i32, i32* %EPZSSubPelGrid, align 4
  %mul4 = mul nsw i32 2, %11
  %shl5 = shl i32 %add, %mul4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range6 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %12, i32 0, i32 7
  %13 = load i32, i32* %search_range6, align 4
  %mul7 = mul nsw i32 2, %13
  %add8 = add nsw i32 %mul7, 1
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid9 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 101
  %15 = load i32, i32* %EPZSSubPelGrid9, align 4
  %mul10 = mul nsw i32 2, %15
  %shl11 = shl i32 %add8, %mul10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl5, %cond.true ], [ %shl11, %cond.false ]
  store i32 %cond, i32* @searcharray, align 4
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid12 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 101
  %17 = load i32, i32* %EPZSSubPelGrid12, align 4
  %tobool13 = icmp ne i32 %17, 0
  %cond14 = select i1 %tobool13, i32 0, i32 2
  store i32 %cond14, i32* @mv_rescale, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %18, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSMedThresScale = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %19, i32 0, i32 100
  %20 = load i32, i32* %EPZSMedThresScale, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @medthres_base, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %mul15 = mul nsw i32 %20, %22
  %23 = load i32, i32* %pel_error_me, align 4
  %mul16 = mul nsw i32 %mul15, %23
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom17
  store i32 %mul16, i32* %arrayidx18, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSMaxThresScale = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 99
  %26 = load i32, i32* %EPZSMaxThresScale, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* @maxthres_base, i32 0, i64 %idxprom19
  %28 = load i32, i32* %arrayidx20, align 4
  %mul21 = mul nsw i32 %26, %28
  %29 = load i32, i32* %pel_error_me, align 4
  %mul22 = mul nsw i32 %mul21, %29
  %30 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* @maxthres, i32 0, i64 %idxprom23
  store i32 %mul22, i32* %arrayidx24, align 4
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSMinThresScale = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 98
  %32 = load i32, i32* %EPZSMinThresScale, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* @minthres_base, i32 0, i64 %idxprom25
  %34 = load i32, i32* %arrayidx26, align 4
  %mul27 = mul nsw i32 %32, %34
  %35 = load i32, i32* %pel_error_me, align 4
  %mul28 = mul nsw i32 %mul27, %35
  %36 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* @minthres, i32 0, i64 %idxprom29
  store i32 %mul28, i32* %arrayidx30, align 4
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelThresScale = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 104
  %38 = load i32, i32* %EPZSSubPelThresScale, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres_base, i32 0, i64 %idxprom31
  %40 = load i32, i32* %arrayidx32, align 4
  %mul33 = mul nsw i32 %38, %40
  %41 = load i32, i32* %pel_error_me, align 4
  %mul34 = mul nsw i32 %mul33, %41
  %42 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %42 to i64
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* @subthres, i32 0, i64 %idxprom35
  store i32 %mul34, i32* %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call37 = call %struct.MEPatternNode* @allocEPZSpattern(i32 4)
  store %struct.MEPatternNode* %call37, %struct.MEPatternNode** @sdiamond, align 8
  %44 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  %45 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  call void @assignEPZSpattern(%struct.MEPatternNode* %44, i32 0, i32 1, i32 1, %struct.MEPatternNode* %45)
  %call38 = call %struct.MEPatternNode* @allocEPZSpattern(i32 8)
  store %struct.MEPatternNode* %call38, %struct.MEPatternNode** @square, align 8
  %46 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  %47 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  call void @assignEPZSpattern(%struct.MEPatternNode* %46, i32 1, i32 1, i32 1, %struct.MEPatternNode* %47)
  %call39 = call %struct.MEPatternNode* @allocEPZSpattern(i32 12)
  store %struct.MEPatternNode* %call39, %struct.MEPatternNode** @ediamond, align 8
  %48 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ediamond, align 8
  %49 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ediamond, align 8
  call void @assignEPZSpattern(%struct.MEPatternNode* %48, i32 2, i32 1, i32 1, %struct.MEPatternNode* %49)
  %call40 = call %struct.MEPatternNode* @allocEPZSpattern(i32 8)
  store %struct.MEPatternNode* %call40, %struct.MEPatternNode** @ldiamond, align 8
  %50 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ldiamond, align 8
  %51 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ldiamond, align 8
  call void @assignEPZSpattern(%struct.MEPatternNode* %50, i32 3, i32 1, i32 1, %struct.MEPatternNode* %51)
  %call41 = call %struct.MEPatternNode* @allocEPZSpattern(i32 12)
  store %struct.MEPatternNode* %call41, %struct.MEPatternNode** @sbdiamond, align 8
  %52 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sbdiamond, align 8
  %53 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  call void @assignEPZSpattern(%struct.MEPatternNode* %52, i32 4, i32 0, i32 1, %struct.MEPatternNode* %53)
  %call42 = call %struct.MEPatternNode* @allocEPZSpattern(i32 8)
  store %struct.MEPatternNode* %call42, %struct.MEPatternNode** @pmvfast, align 8
  %54 = load %struct.MEPatternNode*, %struct.MEPatternNode** @pmvfast, align 8
  %55 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  call void @assignEPZSpattern(%struct.MEPatternNode* %54, i32 3, i32 0, i32 1, %struct.MEPatternNode* %55)
  %56 = load i32, i32* %searchlevels, align 4
  %mul43 = mul nsw i32 %56, 8
  %call44 = call %struct.MEPatternNode* @allocEPZSpattern(i32 %mul43)
  store %struct.MEPatternNode* %call44, %struct.MEPatternNode** @window_predictor, align 8
  %57 = load i32, i32* %searchlevels, align 4
  %mul45 = mul nsw i32 %57, 20
  %call46 = call %struct.MEPatternNode* @allocEPZSpattern(i32 %mul45)
  store %struct.MEPatternNode* %call46, %struct.MEPatternNode** @window_predictor_extended, align 8
  %58 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %58, i32 0, i32 7
  %59 = load i32, i32* %search_range47, align 4
  %conv = trunc i32 %59 to i16
  %60 = load %struct.MEPatternNode*, %struct.MEPatternNode** @window_predictor, align 8
  call void @EPZSWindowPredictorInit(i16 signext %conv, %struct.MEPatternNode* %60, i16 signext 0)
  %61 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %search_range48 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %61, i32 0, i32 7
  %62 = load i32, i32* %search_range48, align 4
  %conv49 = trunc i32 %62 to i16
  %63 = load %struct.MEPatternNode*, %struct.MEPatternNode** @window_predictor_extended, align 8
  call void @EPZSWindowPredictorInit(i16 signext %conv49, %struct.MEPatternNode* %63, i16 signext 1)
  %64 = load i32, i32* %searchlevels, align 4
  %mul50 = mul nsw i32 %64, 20
  %add51 = add nsw i32 %mul50, 5
  %add52 = add nsw i32 %add51, 5
  %65 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSTemporal = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %65, i32 0, i32 96
  %66 = load i32, i32* %EPZSTemporal, align 4
  %mul53 = mul nsw i32 9, %66
  %add54 = add nsw i32 %add52, %mul53
  %67 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %67, i32 0, i32 97
  %68 = load i32, i32* %EPZSSpatialMem, align 4
  %mul55 = mul nsw i32 3, %68
  %add56 = add nsw i32 %add54, %mul55
  %call57 = call %struct.MEPatternNode* @allocEPZSpattern(i32 %add56)
  store %struct.MEPatternNode* %call57, %struct.MEPatternNode** @predictor, align 8
  %69 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %69, i32 0, i32 13
  %70 = load i32, i32* %width, align 4
  %div = sdiv i32 %70, 4
  %call58 = call i32 @get_mem3Dint(i32**** @EPZSDistortion, i32 6, i32 7, i32 %div)
  %71 = load i32, i32* %memory_size, align 4
  %add59 = add nsw i32 %71, %call58
  store i32 %add59, i32* %memory_size, align 4
  %72 = load i32, i32* @searcharray, align 4
  %73 = load i32, i32* @searcharray, align 4
  %call60 = call i32 @get_mem2Dshort(i16*** @EPZSMap, i32 %72, i32 %73)
  %74 = load i32, i32* %memory_size, align 4
  %add61 = add nsw i32 %74, %call60
  store i32 %add61, i32* %memory_size, align 4
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem62 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 97
  %76 = load i32, i32* %EPZSSpatialMem62, align 4
  %tobool63 = icmp ne i32 %76, 0
  br i1 %tobool63, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %77 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %77, i32 0, i32 8
  %78 = load i32, i32* %max_num_references, align 4
  %79 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width64 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %79, i32 0, i32 13
  %80 = load i32, i32* %width64, align 4
  %div65 = sdiv i32 %80, 4
  %call66 = call i32 @get_mem6Dshort(i16******* @EPZSMotion, i32 6, i32 %78, i32 7, i32 4, i32 %div65, i32 2)
  %81 = load i32, i32* %memory_size, align 4
  %add67 = add nsw i32 %81, %call66
  store i32 %add67, i32* %memory_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %82 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSTemporal68 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %82, i32 0, i32 96
  %83 = load i32, i32* %EPZSTemporal68, align 4
  %tobool69 = icmp ne i32 %83, 0
  br i1 %tobool69, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.end
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %width71 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 13
  %85 = load i32, i32* %width71, align 4
  %86 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %height = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %86, i32 0, i32 17
  %87 = load i32, i32* %height, align 4
  %88 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %mb_adaptive_frame_field_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %88, i32 0, i32 26
  %89 = load i32, i32* %mb_adaptive_frame_field_flag, align 4
  %call72 = call %struct.EPZSColocParams* @allocEPZScolocated(i32 %85, i32 %87, i32 %89)
  store %struct.EPZSColocParams* %call72, %struct.EPZSColocParams** @EPZSCo_located, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.end
  %90 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSPattern = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %90, i32 0, i32 93
  %91 = load i32, i32* %EPZSPattern, align 4
  switch i32 %91, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb.74
    i32 3, label %sw.bb.75
    i32 2, label %sw.bb.76
    i32 1, label %sw.bb.77
    i32 0, label %sw.bb.78
  ]

sw.bb:                                            ; preds = %if.end.73
  %92 = load %struct.MEPatternNode*, %struct.MEPatternNode** @pmvfast, align 8
  store %struct.MEPatternNode* %92, %struct.MEPatternNode** @searchPattern, align 8
  br label %sw.epilog

sw.bb.74:                                         ; preds = %if.end.73
  %93 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sbdiamond, align 8
  store %struct.MEPatternNode* %93, %struct.MEPatternNode** @searchPattern, align 8
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.73
  %94 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ldiamond, align 8
  store %struct.MEPatternNode* %94, %struct.MEPatternNode** @searchPattern, align 8
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.end.73
  %95 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ediamond, align 8
  store %struct.MEPatternNode* %95, %struct.MEPatternNode** @searchPattern, align 8
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.73
  %96 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %96, %struct.MEPatternNode** @searchPattern, align 8
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.73
  br label %sw.default

sw.default:                                       ; preds = %if.end.73, %sw.bb.78
  %97 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  store %struct.MEPatternNode* %97, %struct.MEPatternNode** @searchPattern, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.77, %sw.bb.76, %sw.bb.75, %sw.bb.74, %sw.bb
  %98 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSDual = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %98, i32 0, i32 94
  %99 = load i32, i32* %EPZSDual, align 4
  switch i32 %99, label %sw.default.85 [
    i32 6, label %sw.bb.79
    i32 5, label %sw.bb.80
    i32 4, label %sw.bb.81
    i32 3, label %sw.bb.82
    i32 2, label %sw.bb.83
    i32 1, label %sw.bb.84
  ]

sw.bb.79:                                         ; preds = %sw.epilog
  %100 = load %struct.MEPatternNode*, %struct.MEPatternNode** @pmvfast, align 8
  store %struct.MEPatternNode* %100, %struct.MEPatternNode** @searchPatternD, align 8
  br label %sw.epilog.86

sw.bb.80:                                         ; preds = %sw.epilog
  %101 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sbdiamond, align 8
  store %struct.MEPatternNode* %101, %struct.MEPatternNode** @searchPatternD, align 8
  br label %sw.epilog.86

sw.bb.81:                                         ; preds = %sw.epilog
  %102 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ldiamond, align 8
  store %struct.MEPatternNode* %102, %struct.MEPatternNode** @searchPatternD, align 8
  br label %sw.epilog.86

sw.bb.82:                                         ; preds = %sw.epilog
  %103 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ediamond, align 8
  store %struct.MEPatternNode* %103, %struct.MEPatternNode** @searchPatternD, align 8
  br label %sw.epilog.86

sw.bb.83:                                         ; preds = %sw.epilog
  %104 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %104, %struct.MEPatternNode** @searchPatternD, align 8
  br label %sw.epilog.86

sw.bb.84:                                         ; preds = %sw.epilog
  br label %sw.default.85

sw.default.85:                                    ; preds = %sw.epilog, %sw.bb.84
  %105 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  store %struct.MEPatternNode* %105, %struct.MEPatternNode** @searchPatternD, align 8
  br label %sw.epilog.86

sw.epilog.86:                                     ; preds = %sw.default.85, %sw.bb.83, %sw.bb.82, %sw.bb.81, %sw.bb.80, %sw.bb.79
  %106 = load i32, i32* %memory_size, align 4
  ret i32 %106
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #3 {
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

declare i32 @get_mem3Dint(i32****, i32, i32, i32) #2

declare i32 @get_mem2Dshort(i16***, i32, i32) #2

declare i32 @get_mem6Dshort(i16*******, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @EPZSDelete() #0 {
entry:
  %0 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSTemporal = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %0, i32 0, i32 96
  %1 = load i32, i32* %EPZSTemporal, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** @EPZSCo_located, align 8
  call void @freeEPZScolocated(%struct.EPZSColocParams* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i16**, i16*** @EPZSMap, align 8
  call void @free_mem2Dshort(i16** %3)
  %4 = load i32***, i32**** @EPZSDistortion, align 8
  call void @free_mem3Dint(i32*** %4, i32 6)
  %5 = load %struct.MEPatternNode*, %struct.MEPatternNode** @window_predictor_extended, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %5)
  %6 = load %struct.MEPatternNode*, %struct.MEPatternNode** @window_predictor, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %6)
  %7 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %7)
  %8 = load %struct.MEPatternNode*, %struct.MEPatternNode** @pmvfast, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %8)
  %9 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sbdiamond, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %9)
  %10 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ldiamond, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %10)
  %11 = load %struct.MEPatternNode*, %struct.MEPatternNode** @ediamond, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %11)
  %12 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %12)
  %13 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  call void @freeEPZSpattern(%struct.MEPatternNode* %13)
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 97
  %15 = load i32, i32* %EPZSSpatialMem, align 4
  %tobool1 = icmp ne i32 %15, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %16 = load i16******, i16******* @EPZSMotion, align 8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_num_references = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 8
  %18 = load i32, i32* %max_num_references, align 4
  call void @free_mem6Dshort(i16****** %16, i32 6, i32 %18, i32 7, i32 4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare void @free_mem2Dshort(i16**) #2

declare void @free_mem3Dint(i32***, i32) #2

declare void @free_mem6Dshort(i16******, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @EPZSSliceInit(%struct.EPZSColocParams* %p, %struct.storable_picture*** %listX) #0 {
entry:
  %p.addr = alloca %struct.EPZSColocParams*, align 8
  %listX.addr = alloca %struct.storable_picture***, align 8
  %fs = alloca %struct.storable_picture*, align 8
  %fs_top = alloca %struct.storable_picture*, align 8
  %fs_bottom = alloca %struct.storable_picture*, align 8
  %fs1 = alloca %struct.storable_picture*, align 8
  %fs_top1 = alloca %struct.storable_picture*, align 8
  %fs_bottom1 = alloca %struct.storable_picture*, align 8
  %fsx = alloca %struct.storable_picture*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %jj = alloca i32, align 4
  %jdiv = alloca i32, align 4
  %loffset = alloca i32, align 4
  %prescale = alloca i32, align 4
  %iTRb = alloca i32, align 4
  %iTRp = alloca i32, align 4
  %list = alloca i32, align 4
  %tempmv_scale = alloca [2 x i32], align 4
  %epzs_scale = alloca [2 x [6 x [33 x i32]]], align 16
  %iref = alloca i32, align 4
  %invmv_precision = alloca i32, align 4
  store %struct.EPZSColocParams* %p, %struct.EPZSColocParams** %p.addr, align 8
  store %struct.storable_picture*** %listX, %struct.storable_picture**** %listX.addr, align 8
  %0 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %0, i32 0, i32 5
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i32 1, i32 0
  store i32 %cond, i32* %list, align 4
  store i32 8, i32* %invmv_precision, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.85, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 100
  %4 = load i32, i32* %MbaffFrameFlag, align 4
  %mul = mul nsw i32 %4, 4
  %add = add nsw i32 2, %mul
  %cmp1 = icmp slt i32 %2, %add
  br i1 %cmp1, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.82, %for.body
  %5 = load i32, i32* %k, align 4
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body.4, label %for.end.84

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %8, %10
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %11 = load i32, i32* %j, align 4
  %div = sdiv i32 %11, 2
  %cmp10 = icmp eq i32 %div, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  %12 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 1
  %13 = load i32, i32* %poc, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %16, i64 %idxprom12
  %17 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %17, i64 %idxprom11
  %18 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx14, align 8
  %poc15 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %18, i32 0, i32 1
  %19 = load i32, i32* %poc15, align 4
  %sub = sub nsw i32 %13, %19
  %call = call i32 @iClip3(i32 -128, i32 127, i32 %sub)
  store i32 %call, i32* %iTRb, align 4
  %20 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc16 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %20, i32 0, i32 1
  %21 = load i32, i32* %poc16, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %24, i64 %idxprom18
  %25 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %25, i64 %idxprom17
  %26 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx20, align 8
  %poc21 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %26, i32 0, i32 1
  %27 = load i32, i32* %poc21, align 4
  %sub22 = sub nsw i32 %21, %27
  %call23 = call i32 @iClip3(i32 -128, i32 127, i32 %sub22)
  store i32 %call23, i32* %iTRp, align 4
  br label %if.end.58

if.else:                                          ; preds = %for.body.9
  %28 = load i32, i32* %j, align 4
  %div24 = sdiv i32 %28, 2
  %cmp25 = icmp eq i32 %div24, 1
  br i1 %cmp25, label %if.then.26, label %if.else.42

if.then.26:                                       ; preds = %if.else
  %29 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %29, i32 0, i32 2
  %30 = load i32, i32* %top_poc, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %32 to i64
  %33 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %33, i64 %idxprom28
  %34 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %34, i64 %idxprom27
  %35 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx30, align 8
  %poc31 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 1
  %36 = load i32, i32* %poc31, align 4
  %sub32 = sub nsw i32 %30, %36
  %call33 = call i32 @iClip3(i32 -128, i32 127, i32 %sub32)
  store i32 %call33, i32* %iTRb, align 4
  %37 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_poc34 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %37, i32 0, i32 2
  %38 = load i32, i32* %top_poc34, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %40 to i64
  %41 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %41, i64 %idxprom36
  %42 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %42, i64 %idxprom35
  %43 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx38, align 8
  %poc39 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %43, i32 0, i32 1
  %44 = load i32, i32* %poc39, align 4
  %sub40 = sub nsw i32 %38, %44
  %call41 = call i32 @iClip3(i32 -128, i32 127, i32 %sub40)
  store i32 %call41, i32* %iTRp, align 4
  br label %if.end

if.else.42:                                       ; preds = %if.else
  %45 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_poc = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 3
  %46 = load i32, i32* %bottom_poc, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %47 to i64
  %48 = load i32, i32* %j, align 4
  %idxprom44 = sext i32 %48 to i64
  %49 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %49, i64 %idxprom44
  %50 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %50, i64 %idxprom43
  %51 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx46, align 8
  %poc47 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %51, i32 0, i32 1
  %52 = load i32, i32* %poc47, align 4
  %sub48 = sub nsw i32 %46, %52
  %call49 = call i32 @iClip3(i32 -128, i32 127, i32 %sub48)
  store i32 %call49, i32* %iTRb, align 4
  %53 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_poc50 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %53, i32 0, i32 3
  %54 = load i32, i32* %bottom_poc50, align 4
  %55 = load i32, i32* %k, align 4
  %idxprom51 = sext i32 %55 to i64
  %56 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %56 to i64
  %57 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %57, i64 %idxprom52
  %58 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %58, i64 %idxprom51
  %59 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx54, align 8
  %poc55 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %59, i32 0, i32 1
  %60 = load i32, i32* %poc55, align 4
  %sub56 = sub nsw i32 %54, %60
  %call57 = call i32 @iClip3(i32 -128, i32 127, i32 %sub56)
  store i32 %call57, i32* %iTRp, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.42, %if.then.26
  br label %if.end.58

if.end.58:                                        ; preds = %if.end, %if.then
  %61 = load i32, i32* %iTRp, align 4
  %cmp59 = icmp ne i32 %61, 0
  br i1 %cmp59, label %if.then.60, label %if.else.74

if.then.60:                                       ; preds = %if.end.58
  %62 = load i32, i32* %iTRp, align 4
  %div61 = sdiv i32 %62, 2
  %call62 = call i32 @iabs(i32 %div61)
  %add63 = add nsw i32 16384, %call62
  %63 = load i32, i32* %iTRp, align 4
  %div64 = sdiv i32 %add63, %63
  store i32 %div64, i32* %prescale, align 4
  %64 = load i32, i32* %iTRb, align 4
  %65 = load i32, i32* %prescale, align 4
  %mul65 = mul nsw i32 %64, %65
  %call66 = call i32 @rshift_rnd_sf(i32 %mul65, i32 6)
  %call67 = call i32 @iClip3(i32 -2048, i32 2047, i32 %call66)
  %66 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %67 to i64
  %68 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %68 to i64
  %arrayidx71 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx71, i32 0, i64 %idxprom69
  %arrayidx73 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx72, i32 0, i64 %idxprom68
  store i32 %call67, i32* %arrayidx73, align 4
  br label %if.end.81

if.else.74:                                       ; preds = %if.end.58
  %69 = load i32, i32* %k, align 4
  %idxprom75 = sext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %70 to i64
  %71 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %71 to i64
  %arrayidx78 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom77
  %arrayidx79 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx78, i32 0, i64 %idxprom76
  %arrayidx80 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx79, i32 0, i64 %idxprom75
  store i32 256, i32* %arrayidx80, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.74, %if.then.60
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %72 = load i32, i32* %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end
  %73 = load i32, i32* %k, align 4
  %inc83 = add nsw i32 %73, 1
  store i32 %inc83, i32* %k, align 4
  br label %for.cond.2

for.end.84:                                       ; preds = %for.cond.2
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.84
  %74 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %74, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond

for.end.87:                                       ; preds = %for.cond
  %75 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSTemporal = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %75, i32 0, i32 96
  %76 = load i32, i32* %EPZSTemporal, align 4
  %tobool = icmp ne i32 %76, 0
  br i1 %tobool, label %if.then.88, label %if.end.2143

if.then.88:                                       ; preds = %for.end.87
  %77 = load i32, i32* %list, align 4
  %idxprom89 = sext i32 %77 to i64
  %78 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx90 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %78, i64 %idxprom89
  %79 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %79, i64 0
  %80 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx91, align 8
  store %struct.storable_picture* %80, %struct.storable_picture** %fs, align 8
  store %struct.storable_picture* %80, %struct.storable_picture** %fs_bottom, align 8
  store %struct.storable_picture* %80, %struct.storable_picture** %fs_top, align 8
  %81 = load i32, i32* %list, align 4
  %idxprom92 = sext i32 %81 to i64
  %arrayidx93 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom92
  %82 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp sgt i32 %82, 1
  br i1 %cmp94, label %if.then.95, label %if.else.99

if.then.95:                                       ; preds = %if.then.88
  %83 = load i32, i32* %list, align 4
  %idxprom96 = sext i32 %83 to i64
  %84 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx97 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %84, i64 %idxprom96
  %85 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %85, i64 1
  %86 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx98, align 8
  store %struct.storable_picture* %86, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %86, %struct.storable_picture** %fs_bottom1, align 8
  store %struct.storable_picture* %86, %struct.storable_picture** %fs_top1, align 8
  br label %if.end.103

if.else.99:                                       ; preds = %if.then.88
  %87 = load i32, i32* %list, align 4
  %idxprom100 = sext i32 %87 to i64
  %88 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx101 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %88, i64 %idxprom100
  %89 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %89, i64 0
  %90 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx102, align 8
  store %struct.storable_picture* %90, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %90, %struct.storable_picture** %fs_bottom1, align 8
  store %struct.storable_picture* %90, %struct.storable_picture** %fs_top1, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.99, %if.then.95
  store i32 0, i32* %j, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.123, %if.end.103
  %91 = load i32, i32* %j, align 4
  %cmp105 = icmp slt i32 %91, 6
  br i1 %cmp105, label %for.body.106, label %for.end.125

for.body.106:                                     ; preds = %for.cond.104
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.120, %for.body.106
  %92 = load i32, i32* %i, align 4
  %cmp108 = icmp slt i32 %92, 6
  br i1 %cmp108, label %for.body.109, label %for.end.122

for.body.109:                                     ; preds = %for.cond.107
  %93 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %93 to i64
  %94 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %94 to i64
  %arrayidx112 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 0
  %arrayidx113 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx112, i32 0, i64 %idxprom111
  %arrayidx114 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx113, i32 0, i64 %idxprom110
  store i32 256, i32* %arrayidx114, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %95 to i64
  %96 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %96 to i64
  %arrayidx117 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 1
  %arrayidx118 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx117, i32 0, i64 %idxprom116
  %arrayidx119 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx118, i32 0, i64 %idxprom115
  store i32 256, i32* %arrayidx119, align 4
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.109
  %97 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %97, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.107

for.end.122:                                      ; preds = %for.cond.107
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %98 = load i32, i32* %j, align 4
  %inc124 = add nsw i32 %98, 1
  store i32 %inc124, i32* %j, align 4
  br label %for.cond.104

for.end.125:                                      ; preds = %for.cond.104
  store i32 0, i32* %j, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.290, %for.end.125
  %99 = load i32, i32* %j, align 4
  %100 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag127 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %100, i32 0, i32 100
  %101 = load i32, i32* %MbaffFrameFlag127, align 4
  %mul128 = mul nsw i32 %101, 4
  %add129 = add nsw i32 2, %mul128
  %cmp130 = icmp slt i32 %99, %add129
  br i1 %cmp130, label %for.body.131, label %for.end.292

for.body.131:                                     ; preds = %for.cond.126
  store i32 0, i32* %i, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.287, %for.body.131
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %103 to i64
  %arrayidx134 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom133
  %104 = load i32, i32* %arrayidx134, align 4
  %cmp135 = icmp slt i32 %102, %104
  br i1 %cmp135, label %for.body.136, label %for.end.289

for.body.136:                                     ; preds = %for.cond.132
  %105 = load i32, i32* %j, align 4
  %cmp137 = icmp eq i32 %105, 0
  br i1 %cmp137, label %if.then.138, label %if.else.148

if.then.138:                                      ; preds = %for.body.136
  %106 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc139 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 1
  %107 = load i32, i32* %poc139, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %108 to i64
  %109 = load i32, i32* %j, align 4
  %add141 = add nsw i32 0, %109
  %idxprom142 = sext i32 %add141 to i64
  %110 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx143 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %110, i64 %idxprom142
  %111 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %111, i64 %idxprom140
  %112 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx144, align 8
  %poc145 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %112, i32 0, i32 1
  %113 = load i32, i32* %poc145, align 4
  %sub146 = sub nsw i32 %107, %113
  %call147 = call i32 @iClip3(i32 -128, i32 127, i32 %sub146)
  store i32 %call147, i32* %iTRb, align 4
  br label %if.end.171

if.else.148:                                      ; preds = %for.body.136
  %114 = load i32, i32* %j, align 4
  %cmp149 = icmp eq i32 %114, 2
  br i1 %cmp149, label %if.then.150, label %if.else.160

if.then.150:                                      ; preds = %if.else.148
  %115 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %top_poc151 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %115, i32 0, i32 2
  %116 = load i32, i32* %top_poc151, align 4
  %117 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %117 to i64
  %118 = load i32, i32* %j, align 4
  %add153 = add nsw i32 0, %118
  %idxprom154 = sext i32 %add153 to i64
  %119 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %119, i64 %idxprom154
  %120 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %120, i64 %idxprom152
  %121 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx156, align 8
  %poc157 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %121, i32 0, i32 1
  %122 = load i32, i32* %poc157, align 4
  %sub158 = sub nsw i32 %116, %122
  %call159 = call i32 @iClip3(i32 -128, i32 127, i32 %sub158)
  store i32 %call159, i32* %iTRb, align 4
  br label %if.end.170

if.else.160:                                      ; preds = %if.else.148
  %123 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %bottom_poc161 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %123, i32 0, i32 3
  %124 = load i32, i32* %bottom_poc161, align 4
  %125 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %125 to i64
  %126 = load i32, i32* %j, align 4
  %add163 = add nsw i32 0, %126
  %idxprom164 = sext i32 %add163 to i64
  %127 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx165 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %127, i64 %idxprom164
  %128 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %128, i64 %idxprom162
  %129 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx166, align 8
  %poc167 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %129, i32 0, i32 1
  %130 = load i32, i32* %poc167, align 4
  %sub168 = sub nsw i32 %124, %130
  %call169 = call i32 @iClip3(i32 -128, i32 127, i32 %sub168)
  store i32 %call169, i32* %iTRb, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.160, %if.then.150
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.138
  %131 = load i32, i32* %list, align 4
  %132 = load i32, i32* %j, align 4
  %add172 = add nsw i32 %131, %132
  %idxprom173 = sext i32 %add172 to i64
  %133 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx174 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %133, i64 %idxprom173
  %134 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %134, i64 0
  %135 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx175, align 8
  %poc176 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %135, i32 0, i32 1
  %136 = load i32, i32* %poc176, align 4
  %137 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %137 to i64
  %138 = load i32, i32* %j, align 4
  %add178 = add nsw i32 0, %138
  %idxprom179 = sext i32 %add178 to i64
  %139 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx180 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %139, i64 %idxprom179
  %140 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %140, i64 %idxprom177
  %141 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx181, align 8
  %poc182 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %141, i32 0, i32 1
  %142 = load i32, i32* %poc182, align 4
  %sub183 = sub nsw i32 %136, %142
  %call184 = call i32 @iClip3(i32 -128, i32 127, i32 %sub183)
  store i32 %call184, i32* %iTRp, align 4
  %143 = load i32, i32* %iTRp, align 4
  %cmp185 = icmp ne i32 %143, 0
  br i1 %cmp185, label %if.then.186, label %if.else.194

if.then.186:                                      ; preds = %if.end.171
  %144 = load i32, i32* %iTRp, align 4
  %div187 = sdiv i32 %144, 2
  %call188 = call i32 @iabs(i32 %div187)
  %add189 = add nsw i32 16384, %call188
  %145 = load i32, i32* %iTRp, align 4
  %div190 = sdiv i32 %add189, %145
  store i32 %div190, i32* %prescale, align 4
  %146 = load i32, i32* %iTRb, align 4
  %147 = load i32, i32* %prescale, align 4
  %mul191 = mul nsw i32 %146, %147
  %call192 = call i32 @rshift_rnd_sf(i32 %mul191, i32 6)
  %call193 = call i32 @iClip3(i32 -2048, i32 2047, i32 %call192)
  store i32 %call193, i32* %prescale, align 4
  br label %if.end.195

if.else.194:                                      ; preds = %if.end.171
  store i32 256, i32* %prescale, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.194, %if.then.186
  %148 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %148 to i64
  %149 = load i32, i32* %j, align 4
  %idxprom197 = sext i32 %149 to i64
  %arrayidx198 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom197
  %arrayidx199 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx198, i32 0, i64 0
  %arrayidx200 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx199, i32 0, i64 %idxprom196
  %150 = load i32, i32* %arrayidx200, align 4
  %151 = load i32, i32* %prescale, align 4
  %mul201 = mul nsw i32 %150, %151
  %call202 = call i32 @rshift_rnd_sf(i32 %mul201, i32 8)
  %152 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %152 to i64
  %153 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %153 to i64
  %arrayidx205 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 0
  %arrayidx206 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx205, i32 0, i64 %idxprom204
  %arrayidx207 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx206, i32 0, i64 %idxprom203
  store i32 %call202, i32* %arrayidx207, align 4
  %154 = load i32, i32* %prescale, align 4
  %sub208 = sub nsw i32 %154, 256
  %155 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %155 to i64
  %156 = load i32, i32* %j, align 4
  %add210 = add nsw i32 %156, 1
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 0
  %arrayidx213 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx212, i32 0, i64 %idxprom211
  %arrayidx214 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx213, i32 0, i64 %idxprom209
  store i32 %sub208, i32* %arrayidx214, align 4
  %157 = load i32, i32* %list, align 4
  %158 = load i32, i32* %j, align 4
  %add215 = add nsw i32 %157, %158
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds [6 x i32], [6 x i32]* @listXsize, i32 0, i64 %idxprom216
  %159 = load i32, i32* %arrayidx217, align 4
  %cmp218 = icmp sgt i32 %159, 1
  br i1 %cmp218, label %if.then.219, label %if.else.263

if.then.219:                                      ; preds = %if.end.195
  %160 = load i32, i32* %list, align 4
  %161 = load i32, i32* %j, align 4
  %add220 = add nsw i32 %160, %161
  %idxprom221 = sext i32 %add220 to i64
  %162 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx222 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %162, i64 %idxprom221
  %163 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %163, i64 1
  %164 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx223, align 8
  %poc224 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %164, i32 0, i32 1
  %165 = load i32, i32* %poc224, align 4
  %166 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %166 to i64
  %167 = load i32, i32* %j, align 4
  %add226 = add nsw i32 0, %167
  %idxprom227 = sext i32 %add226 to i64
  %168 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx228 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %168, i64 %idxprom227
  %169 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %169, i64 %idxprom225
  %170 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx229, align 8
  %poc230 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %170, i32 0, i32 1
  %171 = load i32, i32* %poc230, align 4
  %sub231 = sub nsw i32 %165, %171
  %call232 = call i32 @iClip3(i32 -128, i32 127, i32 %sub231)
  store i32 %call232, i32* %iTRp, align 4
  %172 = load i32, i32* %iTRp, align 4
  %cmp233 = icmp ne i32 %172, 0
  br i1 %cmp233, label %if.then.234, label %if.else.242

if.then.234:                                      ; preds = %if.then.219
  %173 = load i32, i32* %iTRp, align 4
  %div235 = sdiv i32 %173, 2
  %call236 = call i32 @iabs(i32 %div235)
  %add237 = add nsw i32 16384, %call236
  %174 = load i32, i32* %iTRp, align 4
  %div238 = sdiv i32 %add237, %174
  store i32 %div238, i32* %prescale, align 4
  %175 = load i32, i32* %iTRb, align 4
  %176 = load i32, i32* %prescale, align 4
  %mul239 = mul nsw i32 %175, %176
  %call240 = call i32 @rshift_rnd_sf(i32 %mul239, i32 6)
  %call241 = call i32 @iClip3(i32 -2048, i32 2047, i32 %call240)
  store i32 %call241, i32* %prescale, align 4
  br label %if.end.243

if.else.242:                                      ; preds = %if.then.219
  store i32 256, i32* %prescale, align 4
  br label %if.end.243

if.end.243:                                       ; preds = %if.else.242, %if.then.234
  %177 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %177 to i64
  %178 = load i32, i32* %j, align 4
  %idxprom245 = sext i32 %178 to i64
  %arrayidx246 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom245
  %arrayidx247 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx246, i32 0, i64 1
  %arrayidx248 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx247, i32 0, i64 %idxprom244
  %179 = load i32, i32* %arrayidx248, align 4
  %180 = load i32, i32* %prescale, align 4
  %mul249 = mul nsw i32 %179, %180
  %call250 = call i32 @rshift_rnd_sf(i32 %mul249, i32 8)
  %181 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %181 to i64
  %182 = load i32, i32* %j, align 4
  %idxprom252 = sext i32 %182 to i64
  %arrayidx253 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 1
  %arrayidx254 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx253, i32 0, i64 %idxprom252
  %arrayidx255 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx254, i32 0, i64 %idxprom251
  store i32 %call250, i32* %arrayidx255, align 4
  %183 = load i32, i32* %prescale, align 4
  %sub256 = sub nsw i32 %183, 256
  %184 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %184 to i64
  %185 = load i32, i32* %j, align 4
  %add258 = add nsw i32 %185, 1
  %idxprom259 = sext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 1
  %arrayidx261 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx260, i32 0, i64 %idxprom259
  %arrayidx262 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx261, i32 0, i64 %idxprom257
  store i32 %sub256, i32* %arrayidx262, align 4
  br label %if.end.286

if.else.263:                                      ; preds = %if.end.195
  %186 = load i32, i32* %i, align 4
  %idxprom264 = sext i32 %186 to i64
  %187 = load i32, i32* %j, align 4
  %idxprom265 = sext i32 %187 to i64
  %arrayidx266 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 0
  %arrayidx267 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx266, i32 0, i64 %idxprom265
  %arrayidx268 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx267, i32 0, i64 %idxprom264
  %188 = load i32, i32* %arrayidx268, align 4
  %189 = load i32, i32* %i, align 4
  %idxprom269 = sext i32 %189 to i64
  %190 = load i32, i32* %j, align 4
  %idxprom270 = sext i32 %190 to i64
  %arrayidx271 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 1
  %arrayidx272 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx271, i32 0, i64 %idxprom270
  %arrayidx273 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx272, i32 0, i64 %idxprom269
  store i32 %188, i32* %arrayidx273, align 4
  %191 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %191 to i64
  %192 = load i32, i32* %j, align 4
  %add275 = add nsw i32 %192, 1
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 0
  %arrayidx278 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx277, i32 0, i64 %idxprom276
  %arrayidx279 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx278, i32 0, i64 %idxprom274
  %193 = load i32, i32* %arrayidx279, align 4
  %194 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %194 to i64
  %195 = load i32, i32* %j, align 4
  %add281 = add nsw i32 %195, 1
  %idxprom282 = sext i32 %add281 to i64
  %arrayidx283 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 1
  %arrayidx284 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx283, i32 0, i64 %idxprom282
  %arrayidx285 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx284, i32 0, i64 %idxprom280
  store i32 %193, i32* %arrayidx285, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.263, %if.end.243
  br label %for.inc.287

for.inc.287:                                      ; preds = %if.end.286
  %196 = load i32, i32* %i, align 4
  %inc288 = add nsw i32 %196, 1
  store i32 %inc288, i32* %i, align 4
  br label %for.cond.132

for.end.289:                                      ; preds = %for.cond.132
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.end.289
  %197 = load i32, i32* %j, align 4
  %add291 = add nsw i32 %197, 2
  store i32 %add291, i32* %j, align 4
  br label %for.cond.126

for.end.292:                                      ; preds = %for.cond.126
  %198 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag293 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %198, i32 0, i32 100
  %199 = load i32, i32* %MbaffFrameFlag293, align 4
  %tobool294 = icmp ne i32 %199, 0
  br i1 %tobool294, label %if.then.295, label %if.else.315

if.then.295:                                      ; preds = %for.end.292
  %200 = load i32, i32* %list, align 4
  %add296 = add nsw i32 %200, 2
  %idxprom297 = sext i32 %add296 to i64
  %201 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx298 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %201, i64 %idxprom297
  %202 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %202, i64 0
  %203 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx299, align 8
  store %struct.storable_picture* %203, %struct.storable_picture** %fs_top, align 8
  %204 = load i32, i32* %list, align 4
  %add300 = add nsw i32 %204, 4
  %idxprom301 = sext i32 %add300 to i64
  %205 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx302 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %205, i64 %idxprom301
  %206 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %206, i64 0
  %207 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx303, align 8
  store %struct.storable_picture* %207, %struct.storable_picture** %fs_bottom, align 8
  %208 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp304 = icmp sgt i32 %208, 1
  br i1 %cmp304, label %if.then.305, label %if.end.314

if.then.305:                                      ; preds = %if.then.295
  %209 = load i32, i32* %list, align 4
  %add306 = add nsw i32 %209, 2
  %idxprom307 = sext i32 %add306 to i64
  %210 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx308 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %210, i64 %idxprom307
  %211 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx308, align 8
  %arrayidx309 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %211, i64 1
  %212 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx309, align 8
  store %struct.storable_picture* %212, %struct.storable_picture** %fs_top1, align 8
  %213 = load i32, i32* %list, align 4
  %add310 = add nsw i32 %213, 4
  %idxprom311 = sext i32 %add310 to i64
  %214 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx312 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %214, i64 %idxprom311
  %215 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %215, i64 1
  %216 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx313, align 8
  store %struct.storable_picture* %216, %struct.storable_picture** %fs_bottom, align 8
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.305, %if.then.295
  br label %if.end.344

if.else.315:                                      ; preds = %for.end.292
  %217 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %217, i32 0, i32 6
  %218 = load i32, i32* %structure, align 4
  %cmp316 = icmp ne i32 %218, 0
  br i1 %cmp316, label %if.then.317, label %if.end.343

if.then.317:                                      ; preds = %if.else.315
  %219 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure318 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %219, i32 0, i32 6
  %220 = load i32, i32* %structure318, align 4
  %221 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %structure319 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %221, i32 0, i32 0
  %222 = load i32, i32* %structure319, align 4
  %cmp320 = icmp ne i32 %220, %222
  br i1 %cmp320, label %land.lhs.true, label %if.end.342

land.lhs.true:                                    ; preds = %if.then.317
  %223 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %coded_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %223, i32 0, i32 27
  %224 = load i32, i32* %coded_frame, align 4
  %tobool321 = icmp ne i32 %224, 0
  br i1 %tobool321, label %if.then.322, label %if.end.342

if.then.322:                                      ; preds = %land.lhs.true
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure323 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 6
  %226 = load i32, i32* %structure323, align 4
  %cmp324 = icmp eq i32 %226, 1
  br i1 %cmp324, label %if.then.325, label %if.else.332

if.then.325:                                      ; preds = %if.then.322
  %227 = load i32, i32* %list, align 4
  %idxprom326 = sext i32 %227 to i64
  %228 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx327 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %228, i64 %idxprom326
  %229 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %229, i64 0
  %230 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx328, align 8
  %top_field = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %230, i32 0, i32 41
  %231 = load %struct.storable_picture*, %struct.storable_picture** %top_field, align 8
  store %struct.storable_picture* %231, %struct.storable_picture** %fs, align 8
  store %struct.storable_picture* %231, %struct.storable_picture** %fs_bottom, align 8
  store %struct.storable_picture* %231, %struct.storable_picture** %fs_top, align 8
  %232 = load i32, i32* %list, align 4
  %idxprom329 = sext i32 %232 to i64
  %233 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx330 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %233, i64 %idxprom329
  %234 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx330, align 8
  %arrayidx331 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %234, i64 0
  %235 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx331, align 8
  %bottom_field = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %235, i32 0, i32 42
  %236 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field, align 8
  store %struct.storable_picture* %236, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %236, %struct.storable_picture** %fs_bottom1, align 8
  store %struct.storable_picture* %236, %struct.storable_picture** %fs_top1, align 8
  br label %if.end.341

if.else.332:                                      ; preds = %if.then.322
  %237 = load i32, i32* %list, align 4
  %idxprom333 = sext i32 %237 to i64
  %238 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx334 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %238, i64 %idxprom333
  %239 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %239, i64 0
  %240 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx335, align 8
  %bottom_field336 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %240, i32 0, i32 42
  %241 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field336, align 8
  store %struct.storable_picture* %241, %struct.storable_picture** %fs, align 8
  store %struct.storable_picture* %241, %struct.storable_picture** %fs_bottom, align 8
  store %struct.storable_picture* %241, %struct.storable_picture** %fs_top, align 8
  %242 = load i32, i32* %list, align 4
  %idxprom337 = sext i32 %242 to i64
  %243 = load %struct.storable_picture***, %struct.storable_picture**** %listX.addr, align 8
  %arrayidx338 = getelementptr inbounds %struct.storable_picture**, %struct.storable_picture*** %243, i64 %idxprom337
  %244 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %244, i64 0
  %245 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx339, align 8
  %top_field340 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %245, i32 0, i32 41
  %246 = load %struct.storable_picture*, %struct.storable_picture** %top_field340, align 8
  store %struct.storable_picture* %246, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %246, %struct.storable_picture** %fs_bottom1, align 8
  store %struct.storable_picture* %246, %struct.storable_picture** %fs_top1, align 8
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.332, %if.then.325
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %land.lhs.true, %if.then.317
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %if.else.315
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343, %if.end.314
  %247 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %247, i32 0, i32 25
  %248 = load i32, i32* %frame_mbs_only_flag, align 4
  %tobool345 = icmp ne i32 %248, 0
  br i1 %tobool345, label %if.end.898, label %if.then.346

if.then.346:                                      ; preds = %if.end.344
  store i32 0, i32* %j, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.895, %if.then.346
  %249 = load i32, i32* %j, align 4
  %250 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %250, i32 0, i32 19
  %251 = load i32, i32* %size_y, align 4
  %shr = ashr i32 %251, 2
  %cmp348 = icmp slt i32 %249, %shr
  br i1 %cmp348, label %for.body.349, label %for.end.897

for.body.349:                                     ; preds = %for.cond.347
  %252 = load i32, i32* %j, align 4
  %div350 = sdiv i32 %252, 2
  store i32 %div350, i32* %jj, align 4
  %253 = load i32, i32* %j, align 4
  %div351 = sdiv i32 %253, 2
  %254 = load i32, i32* %j, align 4
  %div352 = sdiv i32 %254, 8
  %mul353 = mul nsw i32 4, %div352
  %add354 = add nsw i32 %div351, %mul353
  store i32 %add354, i32* %jdiv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.892, %for.body.349
  %255 = load i32, i32* %i, align 4
  %256 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %256, i32 0, i32 18
  %257 = load i32, i32* %size_x, align 4
  %shr356 = ashr i32 %257, 2
  %cmp357 = icmp slt i32 %255, %shr356
  br i1 %cmp357, label %for.body.358, label %for.end.894

for.body.358:                                     ; preds = %for.cond.355
  %258 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag359 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %258, i32 0, i32 100
  %259 = load i32, i32* %MbaffFrameFlag359, align 4
  %tobool360 = icmp ne i32 %259, 0
  br i1 %tobool360, label %land.lhs.true.361, label %if.else.720

land.lhs.true.361:                                ; preds = %for.body.358
  %260 = load i32, i32* %i, align 4
  %idxprom362 = sext i32 %260 to i64
  %261 = load i32, i32* %j, align 4
  %idxprom363 = sext i32 %261 to i64
  %262 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %field_frame = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %262, i32 0, i32 40
  %263 = load i8**, i8*** %field_frame, align 8
  %arrayidx364 = getelementptr inbounds i8*, i8** %263, i64 %idxprom363
  %264 = load i8*, i8** %arrayidx364, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %264, i64 %idxprom362
  %265 = load i8, i8* %arrayidx365, align 1
  %conv = zext i8 %265 to i32
  %tobool366 = icmp ne i32 %conv, 0
  br i1 %tobool366, label %if.then.367, label %if.else.720

if.then.367:                                      ; preds = %land.lhs.true.361
  %266 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc368 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %266, i32 0, i32 1
  %267 = load i32, i32* %poc368, align 4
  %268 = load %struct.storable_picture*, %struct.storable_picture** %fs_bottom, align 8
  %poc369 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %268, i32 0, i32 1
  %269 = load i32, i32* %poc369, align 4
  %sub370 = sub nsw i32 %267, %269
  %call371 = call i32 @iabs(i32 %sub370)
  %270 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc372 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %270, i32 0, i32 1
  %271 = load i32, i32* %poc372, align 4
  %272 = load %struct.storable_picture*, %struct.storable_picture** %fs_top, align 8
  %poc373 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %272, i32 0, i32 1
  %273 = load i32, i32* %poc373, align 4
  %sub374 = sub nsw i32 %271, %273
  %call375 = call i32 @iabs(i32 %sub374)
  %cmp376 = icmp sgt i32 %call371, %call375
  br i1 %cmp376, label %if.then.378, label %if.else.545

if.then.378:                                      ; preds = %if.then.367
  %arrayidx379 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx379, align 4
  %arrayidx380 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx380, align 4
  %274 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %274 to i64
  %275 = load i32, i32* %jdiv, align 4
  %idxprom382 = sext i32 %275 to i64
  %276 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %276, i32 0, i32 37
  %277 = load i64***, i64**** %ref_id, align 8
  %arrayidx383 = getelementptr inbounds i64**, i64*** %277, i64 0
  %278 = load i64**, i64*** %arrayidx383, align 8
  %arrayidx384 = getelementptr inbounds i64*, i64** %278, i64 %idxprom382
  %279 = load i64*, i64** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i64, i64* %279, i64 %idxprom381
  %280 = load i64, i64* %arrayidx385, align 8
  %cmp386 = icmp slt i64 %280, 0
  br i1 %cmp386, label %land.lhs.true.388, label %if.else.392

land.lhs.true.388:                                ; preds = %if.then.378
  %281 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp389 = icmp sgt i32 %281, 1
  br i1 %cmp389, label %if.then.391, label %if.else.392

if.then.391:                                      ; preds = %land.lhs.true.388
  %282 = load %struct.storable_picture*, %struct.storable_picture** %fs_top1, align 8
  store %struct.storable_picture* %282, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.393

if.else.392:                                      ; preds = %land.lhs.true.388, %if.then.378
  %283 = load %struct.storable_picture*, %struct.storable_picture** %fs_top, align 8
  store %struct.storable_picture* %283, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.393

if.end.393:                                       ; preds = %if.else.392, %if.then.391
  %284 = load i32, i32* %i, align 4
  %idxprom394 = sext i32 %284 to i64
  %285 = load i32, i32* %jdiv, align 4
  %idxprom395 = sext i32 %285 to i64
  %286 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id396 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %286, i32 0, i32 37
  %287 = load i64***, i64**** %ref_id396, align 8
  %arrayidx397 = getelementptr inbounds i64**, i64*** %287, i64 0
  %288 = load i64**, i64*** %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds i64*, i64** %288, i64 %idxprom395
  %289 = load i64*, i64** %arrayidx398, align 8
  %arrayidx399 = getelementptr inbounds i64, i64* %289, i64 %idxprom394
  %290 = load i64, i64* %arrayidx399, align 8
  %cmp400 = icmp ne i64 %290, -1
  br i1 %cmp400, label %if.then.402, label %if.else.515

if.then.402:                                      ; preds = %if.end.393
  store i32 0, i32* %iref, align 4
  br label %for.cond.403

for.cond.403:                                     ; preds = %for.inc.433, %if.then.402
  %291 = load i32, i32* %iref, align 4
  %292 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %292, i32 0, i32 88
  %293 = load i32, i32* %num_ref_idx_l0_active, align 4
  %294 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %call404 = call i32 @imin(i32 %293, i32 %294)
  %cmp405 = icmp slt i32 %291, %call404
  br i1 %cmp405, label %for.body.407, label %for.end.435

for.body.407:                                     ; preds = %for.cond.403
  %295 = load i32, i32* %iref, align 4
  %idxprom408 = sext i32 %295 to i64
  %296 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %296, i32 0, i32 6
  %arrayidx409 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num, i32 0, i64 0
  %arrayidx410 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx409, i32 0, i64 %idxprom408
  %297 = load i64, i64* %arrayidx410, align 8
  %298 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %298 to i64
  %299 = load i32, i32* %jdiv, align 4
  %idxprom412 = sext i32 %299 to i64
  %300 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id413 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %300, i32 0, i32 37
  %301 = load i64***, i64**** %ref_id413, align 8
  %arrayidx414 = getelementptr inbounds i64**, i64*** %301, i64 0
  %302 = load i64**, i64*** %arrayidx414, align 8
  %arrayidx415 = getelementptr inbounds i64*, i64** %302, i64 %idxprom412
  %303 = load i64*, i64** %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds i64, i64* %303, i64 %idxprom411
  %304 = load i64, i64* %arrayidx416, align 8
  %cmp417 = icmp eq i64 %297, %304
  br i1 %cmp417, label %if.then.419, label %if.end.432

if.then.419:                                      ; preds = %for.body.407
  %305 = load i32, i32* %iref, align 4
  %idxprom420 = sext i32 %305 to i64
  %306 = load i32, i32* %loffset, align 4
  %idxprom421 = sext i32 %306 to i64
  %arrayidx422 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom421
  %arrayidx423 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx422, i32 0, i64 0
  %arrayidx424 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx423, i32 0, i64 %idxprom420
  %307 = load i32, i32* %arrayidx424, align 4
  %arrayidx425 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %307, i32* %arrayidx425, align 4
  %308 = load i32, i32* %iref, align 4
  %idxprom426 = sext i32 %308 to i64
  %309 = load i32, i32* %loffset, align 4
  %idxprom427 = sext i32 %309 to i64
  %arrayidx428 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom427
  %arrayidx429 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx428, i32 0, i64 1
  %arrayidx430 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx429, i32 0, i64 %idxprom426
  %310 = load i32, i32* %arrayidx430, align 4
  %arrayidx431 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %310, i32* %arrayidx431, align 4
  br label %for.end.435

if.end.432:                                       ; preds = %for.body.407
  br label %for.inc.433

for.inc.433:                                      ; preds = %if.end.432
  %311 = load i32, i32* %iref, align 4
  %inc434 = add nsw i32 %311, 1
  store i32 %inc434, i32* %iref, align 4
  br label %for.cond.403

for.end.435:                                      ; preds = %if.then.419, %for.cond.403
  %arrayidx436 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %312 = load i32, i32* %arrayidx436, align 4
  %313 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %313 to i64
  %314 = load i32, i32* %jj, align 4
  %idxprom438 = sext i32 %314 to i64
  %315 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %315, i32 0, i32 38
  %316 = load i16****, i16***** %mv, align 8
  %arrayidx439 = getelementptr inbounds i16***, i16**** %316, i64 0
  %317 = load i16***, i16**** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds i16**, i16*** %317, i64 %idxprom438
  %318 = load i16**, i16*** %arrayidx440, align 8
  %arrayidx441 = getelementptr inbounds i16*, i16** %318, i64 %idxprom437
  %319 = load i16*, i16** %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds i16, i16* %319, i64 0
  %320 = load i16, i16* %arrayidx442, align 2
  %conv443 = sext i16 %320 to i32
  %mul444 = mul nsw i32 %312, %conv443
  %321 = load i32, i32* %invmv_precision, align 4
  %call445 = call i32 @rshift_rnd_sf(i32 %mul444, i32 %321)
  %call446 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call445)
  %conv447 = trunc i32 %call446 to i16
  %322 = load i32, i32* %i, align 4
  %idxprom448 = sext i32 %322 to i64
  %323 = load i32, i32* %j, align 4
  %idxprom449 = sext i32 %323 to i64
  %324 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv450 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %324, i32 0, i32 3
  %325 = load i16****, i16***** %mv450, align 8
  %arrayidx451 = getelementptr inbounds i16***, i16**** %325, i64 0
  %326 = load i16***, i16**** %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds i16**, i16*** %326, i64 %idxprom449
  %327 = load i16**, i16*** %arrayidx452, align 8
  %arrayidx453 = getelementptr inbounds i16*, i16** %327, i64 %idxprom448
  %328 = load i16*, i16** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %328, i64 0
  store i16 %conv447, i16* %arrayidx454, align 2
  %arrayidx455 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %329 = load i32, i32* %arrayidx455, align 4
  %330 = load i32, i32* %i, align 4
  %idxprom456 = sext i32 %330 to i64
  %331 = load i32, i32* %jj, align 4
  %idxprom457 = sext i32 %331 to i64
  %332 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv458 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %332, i32 0, i32 38
  %333 = load i16****, i16***** %mv458, align 8
  %arrayidx459 = getelementptr inbounds i16***, i16**** %333, i64 0
  %334 = load i16***, i16**** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds i16**, i16*** %334, i64 %idxprom457
  %335 = load i16**, i16*** %arrayidx460, align 8
  %arrayidx461 = getelementptr inbounds i16*, i16** %335, i64 %idxprom456
  %336 = load i16*, i16** %arrayidx461, align 8
  %arrayidx462 = getelementptr inbounds i16, i16* %336, i64 1
  %337 = load i16, i16* %arrayidx462, align 2
  %conv463 = sext i16 %337 to i32
  %mul464 = mul nsw i32 %329, %conv463
  %338 = load i32, i32* %invmv_precision, align 4
  %call465 = call i32 @rshift_rnd_sf(i32 %mul464, i32 %338)
  %call466 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call465)
  %conv467 = trunc i32 %call466 to i16
  %339 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %339 to i64
  %340 = load i32, i32* %j, align 4
  %idxprom469 = sext i32 %340 to i64
  %341 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv470 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %341, i32 0, i32 3
  %342 = load i16****, i16***** %mv470, align 8
  %arrayidx471 = getelementptr inbounds i16***, i16**** %342, i64 0
  %343 = load i16***, i16**** %arrayidx471, align 8
  %arrayidx472 = getelementptr inbounds i16**, i16*** %343, i64 %idxprom469
  %344 = load i16**, i16*** %arrayidx472, align 8
  %arrayidx473 = getelementptr inbounds i16*, i16** %344, i64 %idxprom468
  %345 = load i16*, i16** %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds i16, i16* %345, i64 1
  store i16 %conv467, i16* %arrayidx474, align 2
  %arrayidx475 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %346 = load i32, i32* %arrayidx475, align 4
  %347 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %347 to i64
  %348 = load i32, i32* %jj, align 4
  %idxprom477 = sext i32 %348 to i64
  %349 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv478 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %349, i32 0, i32 38
  %350 = load i16****, i16***** %mv478, align 8
  %arrayidx479 = getelementptr inbounds i16***, i16**** %350, i64 0
  %351 = load i16***, i16**** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds i16**, i16*** %351, i64 %idxprom477
  %352 = load i16**, i16*** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds i16*, i16** %352, i64 %idxprom476
  %353 = load i16*, i16** %arrayidx481, align 8
  %arrayidx482 = getelementptr inbounds i16, i16* %353, i64 0
  %354 = load i16, i16* %arrayidx482, align 2
  %conv483 = sext i16 %354 to i32
  %mul484 = mul nsw i32 %346, %conv483
  %355 = load i32, i32* %invmv_precision, align 4
  %call485 = call i32 @rshift_rnd_sf(i32 %mul484, i32 %355)
  %call486 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call485)
  %conv487 = trunc i32 %call486 to i16
  %356 = load i32, i32* %i, align 4
  %idxprom488 = sext i32 %356 to i64
  %357 = load i32, i32* %j, align 4
  %idxprom489 = sext i32 %357 to i64
  %358 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv490 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %358, i32 0, i32 3
  %359 = load i16****, i16***** %mv490, align 8
  %arrayidx491 = getelementptr inbounds i16***, i16**** %359, i64 1
  %360 = load i16***, i16**** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i16**, i16*** %360, i64 %idxprom489
  %361 = load i16**, i16*** %arrayidx492, align 8
  %arrayidx493 = getelementptr inbounds i16*, i16** %361, i64 %idxprom488
  %362 = load i16*, i16** %arrayidx493, align 8
  %arrayidx494 = getelementptr inbounds i16, i16* %362, i64 0
  store i16 %conv487, i16* %arrayidx494, align 2
  %arrayidx495 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %363 = load i32, i32* %arrayidx495, align 4
  %364 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %364 to i64
  %365 = load i32, i32* %jj, align 4
  %idxprom497 = sext i32 %365 to i64
  %366 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv498 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %366, i32 0, i32 38
  %367 = load i16****, i16***** %mv498, align 8
  %arrayidx499 = getelementptr inbounds i16***, i16**** %367, i64 0
  %368 = load i16***, i16**** %arrayidx499, align 8
  %arrayidx500 = getelementptr inbounds i16**, i16*** %368, i64 %idxprom497
  %369 = load i16**, i16*** %arrayidx500, align 8
  %arrayidx501 = getelementptr inbounds i16*, i16** %369, i64 %idxprom496
  %370 = load i16*, i16** %arrayidx501, align 8
  %arrayidx502 = getelementptr inbounds i16, i16* %370, i64 1
  %371 = load i16, i16* %arrayidx502, align 2
  %conv503 = sext i16 %371 to i32
  %mul504 = mul nsw i32 %363, %conv503
  %372 = load i32, i32* %invmv_precision, align 4
  %call505 = call i32 @rshift_rnd_sf(i32 %mul504, i32 %372)
  %call506 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call505)
  %conv507 = trunc i32 %call506 to i16
  %373 = load i32, i32* %i, align 4
  %idxprom508 = sext i32 %373 to i64
  %374 = load i32, i32* %j, align 4
  %idxprom509 = sext i32 %374 to i64
  %375 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv510 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %375, i32 0, i32 3
  %376 = load i16****, i16***** %mv510, align 8
  %arrayidx511 = getelementptr inbounds i16***, i16**** %376, i64 1
  %377 = load i16***, i16**** %arrayidx511, align 8
  %arrayidx512 = getelementptr inbounds i16**, i16*** %377, i64 %idxprom509
  %378 = load i16**, i16*** %arrayidx512, align 8
  %arrayidx513 = getelementptr inbounds i16*, i16** %378, i64 %idxprom508
  %379 = load i16*, i16** %arrayidx513, align 8
  %arrayidx514 = getelementptr inbounds i16, i16* %379, i64 1
  store i16 %conv507, i16* %arrayidx514, align 2
  br label %if.end.544

if.else.515:                                      ; preds = %if.end.393
  %380 = load i32, i32* %i, align 4
  %idxprom516 = sext i32 %380 to i64
  %381 = load i32, i32* %j, align 4
  %idxprom517 = sext i32 %381 to i64
  %382 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv518 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %382, i32 0, i32 3
  %383 = load i16****, i16***** %mv518, align 8
  %arrayidx519 = getelementptr inbounds i16***, i16**** %383, i64 0
  %384 = load i16***, i16**** %arrayidx519, align 8
  %arrayidx520 = getelementptr inbounds i16**, i16*** %384, i64 %idxprom517
  %385 = load i16**, i16*** %arrayidx520, align 8
  %arrayidx521 = getelementptr inbounds i16*, i16** %385, i64 %idxprom516
  %386 = load i16*, i16** %arrayidx521, align 8
  %arrayidx522 = getelementptr inbounds i16, i16* %386, i64 0
  store i16 0, i16* %arrayidx522, align 2
  %387 = load i32, i32* %i, align 4
  %idxprom523 = sext i32 %387 to i64
  %388 = load i32, i32* %j, align 4
  %idxprom524 = sext i32 %388 to i64
  %389 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv525 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %389, i32 0, i32 3
  %390 = load i16****, i16***** %mv525, align 8
  %arrayidx526 = getelementptr inbounds i16***, i16**** %390, i64 0
  %391 = load i16***, i16**** %arrayidx526, align 8
  %arrayidx527 = getelementptr inbounds i16**, i16*** %391, i64 %idxprom524
  %392 = load i16**, i16*** %arrayidx527, align 8
  %arrayidx528 = getelementptr inbounds i16*, i16** %392, i64 %idxprom523
  %393 = load i16*, i16** %arrayidx528, align 8
  %arrayidx529 = getelementptr inbounds i16, i16* %393, i64 1
  store i16 0, i16* %arrayidx529, align 2
  %394 = load i32, i32* %i, align 4
  %idxprom530 = sext i32 %394 to i64
  %395 = load i32, i32* %j, align 4
  %idxprom531 = sext i32 %395 to i64
  %396 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv532 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %396, i32 0, i32 3
  %397 = load i16****, i16***** %mv532, align 8
  %arrayidx533 = getelementptr inbounds i16***, i16**** %397, i64 1
  %398 = load i16***, i16**** %arrayidx533, align 8
  %arrayidx534 = getelementptr inbounds i16**, i16*** %398, i64 %idxprom531
  %399 = load i16**, i16*** %arrayidx534, align 8
  %arrayidx535 = getelementptr inbounds i16*, i16** %399, i64 %idxprom530
  %400 = load i16*, i16** %arrayidx535, align 8
  %arrayidx536 = getelementptr inbounds i16, i16* %400, i64 0
  store i16 0, i16* %arrayidx536, align 2
  %401 = load i32, i32* %i, align 4
  %idxprom537 = sext i32 %401 to i64
  %402 = load i32, i32* %j, align 4
  %idxprom538 = sext i32 %402 to i64
  %403 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv539 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %403, i32 0, i32 3
  %404 = load i16****, i16***** %mv539, align 8
  %arrayidx540 = getelementptr inbounds i16***, i16**** %404, i64 1
  %405 = load i16***, i16**** %arrayidx540, align 8
  %arrayidx541 = getelementptr inbounds i16**, i16*** %405, i64 %idxprom538
  %406 = load i16**, i16*** %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds i16*, i16** %406, i64 %idxprom537
  %407 = load i16*, i16** %arrayidx542, align 8
  %arrayidx543 = getelementptr inbounds i16, i16* %407, i64 1
  store i16 0, i16* %arrayidx543, align 2
  br label %if.end.544

if.end.544:                                       ; preds = %if.else.515, %for.end.435
  br label %if.end.719

if.else.545:                                      ; preds = %if.then.367
  %arrayidx546 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx546, align 4
  %arrayidx547 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx547, align 4
  %408 = load i32, i32* %i, align 4
  %idxprom548 = sext i32 %408 to i64
  %409 = load i32, i32* %jdiv, align 4
  %add549 = add nsw i32 %409, 4
  %idxprom550 = sext i32 %add549 to i64
  %410 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id551 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %410, i32 0, i32 37
  %411 = load i64***, i64**** %ref_id551, align 8
  %arrayidx552 = getelementptr inbounds i64**, i64*** %411, i64 0
  %412 = load i64**, i64*** %arrayidx552, align 8
  %arrayidx553 = getelementptr inbounds i64*, i64** %412, i64 %idxprom550
  %413 = load i64*, i64** %arrayidx553, align 8
  %arrayidx554 = getelementptr inbounds i64, i64* %413, i64 %idxprom548
  %414 = load i64, i64* %arrayidx554, align 8
  %cmp555 = icmp slt i64 %414, 0
  br i1 %cmp555, label %land.lhs.true.557, label %if.else.561

land.lhs.true.557:                                ; preds = %if.else.545
  %415 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp558 = icmp sgt i32 %415, 1
  br i1 %cmp558, label %if.then.560, label %if.else.561

if.then.560:                                      ; preds = %land.lhs.true.557
  %416 = load %struct.storable_picture*, %struct.storable_picture** %fs_bottom1, align 8
  store %struct.storable_picture* %416, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.562

if.else.561:                                      ; preds = %land.lhs.true.557, %if.else.545
  %417 = load %struct.storable_picture*, %struct.storable_picture** %fs_bottom, align 8
  store %struct.storable_picture* %417, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.562

if.end.562:                                       ; preds = %if.else.561, %if.then.560
  %418 = load i32, i32* %i, align 4
  %idxprom563 = sext i32 %418 to i64
  %419 = load i32, i32* %jdiv, align 4
  %add564 = add nsw i32 %419, 4
  %idxprom565 = sext i32 %add564 to i64
  %420 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id566 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %420, i32 0, i32 37
  %421 = load i64***, i64**** %ref_id566, align 8
  %arrayidx567 = getelementptr inbounds i64**, i64*** %421, i64 0
  %422 = load i64**, i64*** %arrayidx567, align 8
  %arrayidx568 = getelementptr inbounds i64*, i64** %422, i64 %idxprom565
  %423 = load i64*, i64** %arrayidx568, align 8
  %arrayidx569 = getelementptr inbounds i64, i64* %423, i64 %idxprom563
  %424 = load i64, i64* %arrayidx569, align 8
  %cmp570 = icmp ne i64 %424, -1
  br i1 %cmp570, label %if.then.572, label %if.else.689

if.then.572:                                      ; preds = %if.end.562
  store i32 0, i32* %iref, align 4
  br label %for.cond.573

for.cond.573:                                     ; preds = %for.inc.606, %if.then.572
  %425 = load i32, i32* %iref, align 4
  %426 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active574 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %426, i32 0, i32 88
  %427 = load i32, i32* %num_ref_idx_l0_active574, align 4
  %428 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %call575 = call i32 @imin(i32 %427, i32 %428)
  %cmp576 = icmp slt i32 %425, %call575
  br i1 %cmp576, label %for.body.578, label %for.end.608

for.body.578:                                     ; preds = %for.cond.573
  %429 = load i32, i32* %iref, align 4
  %idxprom579 = sext i32 %429 to i64
  %430 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num580 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %430, i32 0, i32 6
  %arrayidx581 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num580, i32 0, i64 0
  %arrayidx582 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx581, i32 0, i64 %idxprom579
  %431 = load i64, i64* %arrayidx582, align 8
  %432 = load i32, i32* %i, align 4
  %idxprom583 = sext i32 %432 to i64
  %433 = load i32, i32* %jdiv, align 4
  %add584 = add nsw i32 %433, 4
  %idxprom585 = sext i32 %add584 to i64
  %434 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id586 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %434, i32 0, i32 37
  %435 = load i64***, i64**** %ref_id586, align 8
  %arrayidx587 = getelementptr inbounds i64**, i64*** %435, i64 0
  %436 = load i64**, i64*** %arrayidx587, align 8
  %arrayidx588 = getelementptr inbounds i64*, i64** %436, i64 %idxprom585
  %437 = load i64*, i64** %arrayidx588, align 8
  %arrayidx589 = getelementptr inbounds i64, i64* %437, i64 %idxprom583
  %438 = load i64, i64* %arrayidx589, align 8
  %cmp590 = icmp eq i64 %431, %438
  br i1 %cmp590, label %if.then.592, label %if.end.605

if.then.592:                                      ; preds = %for.body.578
  %439 = load i32, i32* %iref, align 4
  %idxprom593 = sext i32 %439 to i64
  %440 = load i32, i32* %loffset, align 4
  %idxprom594 = sext i32 %440 to i64
  %arrayidx595 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom594
  %arrayidx596 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx595, i32 0, i64 0
  %arrayidx597 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx596, i32 0, i64 %idxprom593
  %441 = load i32, i32* %arrayidx597, align 4
  %arrayidx598 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %441, i32* %arrayidx598, align 4
  %442 = load i32, i32* %iref, align 4
  %idxprom599 = sext i32 %442 to i64
  %443 = load i32, i32* %loffset, align 4
  %idxprom600 = sext i32 %443 to i64
  %arrayidx601 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom600
  %arrayidx602 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx601, i32 0, i64 1
  %arrayidx603 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx602, i32 0, i64 %idxprom599
  %444 = load i32, i32* %arrayidx603, align 4
  %arrayidx604 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %444, i32* %arrayidx604, align 4
  br label %for.end.608

if.end.605:                                       ; preds = %for.body.578
  br label %for.inc.606

for.inc.606:                                      ; preds = %if.end.605
  %445 = load i32, i32* %iref, align 4
  %inc607 = add nsw i32 %445, 1
  store i32 %inc607, i32* %iref, align 4
  br label %for.cond.573

for.end.608:                                      ; preds = %if.then.592, %for.cond.573
  %arrayidx609 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %446 = load i32, i32* %arrayidx609, align 4
  %447 = load i32, i32* %i, align 4
  %idxprom610 = sext i32 %447 to i64
  %448 = load i32, i32* %jj, align 4
  %idxprom611 = sext i32 %448 to i64
  %449 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv612 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %449, i32 0, i32 38
  %450 = load i16****, i16***** %mv612, align 8
  %arrayidx613 = getelementptr inbounds i16***, i16**** %450, i64 0
  %451 = load i16***, i16**** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i16**, i16*** %451, i64 %idxprom611
  %452 = load i16**, i16*** %arrayidx614, align 8
  %arrayidx615 = getelementptr inbounds i16*, i16** %452, i64 %idxprom610
  %453 = load i16*, i16** %arrayidx615, align 8
  %arrayidx616 = getelementptr inbounds i16, i16* %453, i64 0
  %454 = load i16, i16* %arrayidx616, align 2
  %conv617 = sext i16 %454 to i32
  %mul618 = mul nsw i32 %446, %conv617
  %455 = load i32, i32* %invmv_precision, align 4
  %call619 = call i32 @rshift_rnd_sf(i32 %mul618, i32 %455)
  %call620 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call619)
  %conv621 = trunc i32 %call620 to i16
  %456 = load i32, i32* %i, align 4
  %idxprom622 = sext i32 %456 to i64
  %457 = load i32, i32* %j, align 4
  %idxprom623 = sext i32 %457 to i64
  %458 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv624 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %458, i32 0, i32 3
  %459 = load i16****, i16***** %mv624, align 8
  %arrayidx625 = getelementptr inbounds i16***, i16**** %459, i64 0
  %460 = load i16***, i16**** %arrayidx625, align 8
  %arrayidx626 = getelementptr inbounds i16**, i16*** %460, i64 %idxprom623
  %461 = load i16**, i16*** %arrayidx626, align 8
  %arrayidx627 = getelementptr inbounds i16*, i16** %461, i64 %idxprom622
  %462 = load i16*, i16** %arrayidx627, align 8
  %arrayidx628 = getelementptr inbounds i16, i16* %462, i64 0
  store i16 %conv621, i16* %arrayidx628, align 2
  %arrayidx629 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %463 = load i32, i32* %arrayidx629, align 4
  %464 = load i32, i32* %i, align 4
  %idxprom630 = sext i32 %464 to i64
  %465 = load i32, i32* %jj, align 4
  %idxprom631 = sext i32 %465 to i64
  %466 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv632 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %466, i32 0, i32 38
  %467 = load i16****, i16***** %mv632, align 8
  %arrayidx633 = getelementptr inbounds i16***, i16**** %467, i64 0
  %468 = load i16***, i16**** %arrayidx633, align 8
  %arrayidx634 = getelementptr inbounds i16**, i16*** %468, i64 %idxprom631
  %469 = load i16**, i16*** %arrayidx634, align 8
  %arrayidx635 = getelementptr inbounds i16*, i16** %469, i64 %idxprom630
  %470 = load i16*, i16** %arrayidx635, align 8
  %arrayidx636 = getelementptr inbounds i16, i16* %470, i64 1
  %471 = load i16, i16* %arrayidx636, align 2
  %conv637 = sext i16 %471 to i32
  %mul638 = mul nsw i32 %463, %conv637
  %472 = load i32, i32* %invmv_precision, align 4
  %call639 = call i32 @rshift_rnd_sf(i32 %mul638, i32 %472)
  %call640 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call639)
  %conv641 = trunc i32 %call640 to i16
  %473 = load i32, i32* %i, align 4
  %idxprom642 = sext i32 %473 to i64
  %474 = load i32, i32* %j, align 4
  %idxprom643 = sext i32 %474 to i64
  %475 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv644 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %475, i32 0, i32 3
  %476 = load i16****, i16***** %mv644, align 8
  %arrayidx645 = getelementptr inbounds i16***, i16**** %476, i64 0
  %477 = load i16***, i16**** %arrayidx645, align 8
  %arrayidx646 = getelementptr inbounds i16**, i16*** %477, i64 %idxprom643
  %478 = load i16**, i16*** %arrayidx646, align 8
  %arrayidx647 = getelementptr inbounds i16*, i16** %478, i64 %idxprom642
  %479 = load i16*, i16** %arrayidx647, align 8
  %arrayidx648 = getelementptr inbounds i16, i16* %479, i64 1
  store i16 %conv641, i16* %arrayidx648, align 2
  %arrayidx649 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %480 = load i32, i32* %arrayidx649, align 4
  %481 = load i32, i32* %i, align 4
  %idxprom650 = sext i32 %481 to i64
  %482 = load i32, i32* %jj, align 4
  %idxprom651 = sext i32 %482 to i64
  %483 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv652 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %483, i32 0, i32 38
  %484 = load i16****, i16***** %mv652, align 8
  %arrayidx653 = getelementptr inbounds i16***, i16**** %484, i64 0
  %485 = load i16***, i16**** %arrayidx653, align 8
  %arrayidx654 = getelementptr inbounds i16**, i16*** %485, i64 %idxprom651
  %486 = load i16**, i16*** %arrayidx654, align 8
  %arrayidx655 = getelementptr inbounds i16*, i16** %486, i64 %idxprom650
  %487 = load i16*, i16** %arrayidx655, align 8
  %arrayidx656 = getelementptr inbounds i16, i16* %487, i64 0
  %488 = load i16, i16* %arrayidx656, align 2
  %conv657 = sext i16 %488 to i32
  %mul658 = mul nsw i32 %480, %conv657
  %489 = load i32, i32* %invmv_precision, align 4
  %call659 = call i32 @rshift_rnd_sf(i32 %mul658, i32 %489)
  %call660 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call659)
  %conv661 = trunc i32 %call660 to i16
  %490 = load i32, i32* %i, align 4
  %idxprom662 = sext i32 %490 to i64
  %491 = load i32, i32* %j, align 4
  %idxprom663 = sext i32 %491 to i64
  %492 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv664 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %492, i32 0, i32 3
  %493 = load i16****, i16***** %mv664, align 8
  %arrayidx665 = getelementptr inbounds i16***, i16**** %493, i64 1
  %494 = load i16***, i16**** %arrayidx665, align 8
  %arrayidx666 = getelementptr inbounds i16**, i16*** %494, i64 %idxprom663
  %495 = load i16**, i16*** %arrayidx666, align 8
  %arrayidx667 = getelementptr inbounds i16*, i16** %495, i64 %idxprom662
  %496 = load i16*, i16** %arrayidx667, align 8
  %arrayidx668 = getelementptr inbounds i16, i16* %496, i64 0
  store i16 %conv661, i16* %arrayidx668, align 2
  %arrayidx669 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %497 = load i32, i32* %arrayidx669, align 4
  %498 = load i32, i32* %i, align 4
  %idxprom670 = sext i32 %498 to i64
  %499 = load i32, i32* %jj, align 4
  %idxprom671 = sext i32 %499 to i64
  %500 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv672 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %500, i32 0, i32 38
  %501 = load i16****, i16***** %mv672, align 8
  %arrayidx673 = getelementptr inbounds i16***, i16**** %501, i64 0
  %502 = load i16***, i16**** %arrayidx673, align 8
  %arrayidx674 = getelementptr inbounds i16**, i16*** %502, i64 %idxprom671
  %503 = load i16**, i16*** %arrayidx674, align 8
  %arrayidx675 = getelementptr inbounds i16*, i16** %503, i64 %idxprom670
  %504 = load i16*, i16** %arrayidx675, align 8
  %arrayidx676 = getelementptr inbounds i16, i16* %504, i64 1
  %505 = load i16, i16* %arrayidx676, align 2
  %conv677 = sext i16 %505 to i32
  %mul678 = mul nsw i32 %497, %conv677
  %506 = load i32, i32* %invmv_precision, align 4
  %call679 = call i32 @rshift_rnd_sf(i32 %mul678, i32 %506)
  %call680 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call679)
  %conv681 = trunc i32 %call680 to i16
  %507 = load i32, i32* %i, align 4
  %idxprom682 = sext i32 %507 to i64
  %508 = load i32, i32* %j, align 4
  %idxprom683 = sext i32 %508 to i64
  %509 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv684 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %509, i32 0, i32 3
  %510 = load i16****, i16***** %mv684, align 8
  %arrayidx685 = getelementptr inbounds i16***, i16**** %510, i64 1
  %511 = load i16***, i16**** %arrayidx685, align 8
  %arrayidx686 = getelementptr inbounds i16**, i16*** %511, i64 %idxprom683
  %512 = load i16**, i16*** %arrayidx686, align 8
  %arrayidx687 = getelementptr inbounds i16*, i16** %512, i64 %idxprom682
  %513 = load i16*, i16** %arrayidx687, align 8
  %arrayidx688 = getelementptr inbounds i16, i16* %513, i64 1
  store i16 %conv681, i16* %arrayidx688, align 2
  br label %if.end.718

if.else.689:                                      ; preds = %if.end.562
  %514 = load i32, i32* %i, align 4
  %idxprom690 = sext i32 %514 to i64
  %515 = load i32, i32* %j, align 4
  %idxprom691 = sext i32 %515 to i64
  %516 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv692 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %516, i32 0, i32 3
  %517 = load i16****, i16***** %mv692, align 8
  %arrayidx693 = getelementptr inbounds i16***, i16**** %517, i64 0
  %518 = load i16***, i16**** %arrayidx693, align 8
  %arrayidx694 = getelementptr inbounds i16**, i16*** %518, i64 %idxprom691
  %519 = load i16**, i16*** %arrayidx694, align 8
  %arrayidx695 = getelementptr inbounds i16*, i16** %519, i64 %idxprom690
  %520 = load i16*, i16** %arrayidx695, align 8
  %arrayidx696 = getelementptr inbounds i16, i16* %520, i64 0
  store i16 0, i16* %arrayidx696, align 2
  %521 = load i32, i32* %i, align 4
  %idxprom697 = sext i32 %521 to i64
  %522 = load i32, i32* %j, align 4
  %idxprom698 = sext i32 %522 to i64
  %523 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv699 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %523, i32 0, i32 3
  %524 = load i16****, i16***** %mv699, align 8
  %arrayidx700 = getelementptr inbounds i16***, i16**** %524, i64 0
  %525 = load i16***, i16**** %arrayidx700, align 8
  %arrayidx701 = getelementptr inbounds i16**, i16*** %525, i64 %idxprom698
  %526 = load i16**, i16*** %arrayidx701, align 8
  %arrayidx702 = getelementptr inbounds i16*, i16** %526, i64 %idxprom697
  %527 = load i16*, i16** %arrayidx702, align 8
  %arrayidx703 = getelementptr inbounds i16, i16* %527, i64 1
  store i16 0, i16* %arrayidx703, align 2
  %528 = load i32, i32* %i, align 4
  %idxprom704 = sext i32 %528 to i64
  %529 = load i32, i32* %j, align 4
  %idxprom705 = sext i32 %529 to i64
  %530 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv706 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %530, i32 0, i32 3
  %531 = load i16****, i16***** %mv706, align 8
  %arrayidx707 = getelementptr inbounds i16***, i16**** %531, i64 1
  %532 = load i16***, i16**** %arrayidx707, align 8
  %arrayidx708 = getelementptr inbounds i16**, i16*** %532, i64 %idxprom705
  %533 = load i16**, i16*** %arrayidx708, align 8
  %arrayidx709 = getelementptr inbounds i16*, i16** %533, i64 %idxprom704
  %534 = load i16*, i16** %arrayidx709, align 8
  %arrayidx710 = getelementptr inbounds i16, i16* %534, i64 0
  store i16 0, i16* %arrayidx710, align 2
  %535 = load i32, i32* %i, align 4
  %idxprom711 = sext i32 %535 to i64
  %536 = load i32, i32* %j, align 4
  %idxprom712 = sext i32 %536 to i64
  %537 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv713 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %537, i32 0, i32 3
  %538 = load i16****, i16***** %mv713, align 8
  %arrayidx714 = getelementptr inbounds i16***, i16**** %538, i64 1
  %539 = load i16***, i16**** %arrayidx714, align 8
  %arrayidx715 = getelementptr inbounds i16**, i16*** %539, i64 %idxprom712
  %540 = load i16**, i16*** %arrayidx715, align 8
  %arrayidx716 = getelementptr inbounds i16*, i16** %540, i64 %idxprom711
  %541 = load i16*, i16** %arrayidx716, align 8
  %arrayidx717 = getelementptr inbounds i16, i16* %541, i64 1
  store i16 0, i16* %arrayidx717, align 2
  br label %if.end.718

if.end.718:                                       ; preds = %if.else.689, %for.end.608
  br label %if.end.719

if.end.719:                                       ; preds = %if.end.718, %if.end.544
  br label %if.end.891

if.else.720:                                      ; preds = %land.lhs.true.361, %for.body.358
  %arrayidx721 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx721, align 4
  %arrayidx722 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx722, align 4
  %542 = load i32, i32* %i, align 4
  %idxprom723 = sext i32 %542 to i64
  %543 = load i32, i32* %j, align 4
  %idxprom724 = sext i32 %543 to i64
  %544 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id725 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %544, i32 0, i32 37
  %545 = load i64***, i64**** %ref_id725, align 8
  %arrayidx726 = getelementptr inbounds i64**, i64*** %545, i64 0
  %546 = load i64**, i64*** %arrayidx726, align 8
  %arrayidx727 = getelementptr inbounds i64*, i64** %546, i64 %idxprom724
  %547 = load i64*, i64** %arrayidx727, align 8
  %arrayidx728 = getelementptr inbounds i64, i64* %547, i64 %idxprom723
  %548 = load i64, i64* %arrayidx728, align 8
  %cmp729 = icmp slt i64 %548, 0
  br i1 %cmp729, label %land.lhs.true.731, label %if.else.735

land.lhs.true.731:                                ; preds = %if.else.720
  %549 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp732 = icmp sgt i32 %549, 1
  br i1 %cmp732, label %if.then.734, label %if.else.735

if.then.734:                                      ; preds = %land.lhs.true.731
  %550 = load %struct.storable_picture*, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %550, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.736

if.else.735:                                      ; preds = %land.lhs.true.731, %if.else.720
  %551 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  store %struct.storable_picture* %551, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.736

if.end.736:                                       ; preds = %if.else.735, %if.then.734
  %552 = load i32, i32* %i, align 4
  %idxprom737 = sext i32 %552 to i64
  %553 = load i32, i32* %j, align 4
  %idxprom738 = sext i32 %553 to i64
  %554 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id739 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %554, i32 0, i32 37
  %555 = load i64***, i64**** %ref_id739, align 8
  %arrayidx740 = getelementptr inbounds i64**, i64*** %555, i64 0
  %556 = load i64**, i64*** %arrayidx740, align 8
  %arrayidx741 = getelementptr inbounds i64*, i64** %556, i64 %idxprom738
  %557 = load i64*, i64** %arrayidx741, align 8
  %arrayidx742 = getelementptr inbounds i64, i64* %557, i64 %idxprom737
  %558 = load i64, i64* %arrayidx742, align 8
  %cmp743 = icmp ne i64 %558, -1
  br i1 %cmp743, label %if.then.745, label %if.else.861

if.then.745:                                      ; preds = %if.end.736
  store i32 0, i32* %iref, align 4
  br label %for.cond.746

for.cond.746:                                     ; preds = %for.inc.778, %if.then.745
  %559 = load i32, i32* %iref, align 4
  %560 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active747 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %560, i32 0, i32 88
  %561 = load i32, i32* %num_ref_idx_l0_active747, align 4
  %562 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %call748 = call i32 @imin(i32 %561, i32 %562)
  %cmp749 = icmp slt i32 %559, %call748
  br i1 %cmp749, label %for.body.751, label %for.end.780

for.body.751:                                     ; preds = %for.cond.746
  %563 = load i32, i32* %iref, align 4
  %idxprom752 = sext i32 %563 to i64
  %564 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num753 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %564, i32 0, i32 6
  %arrayidx754 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num753, i32 0, i64 0
  %arrayidx755 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx754, i32 0, i64 %idxprom752
  %565 = load i64, i64* %arrayidx755, align 8
  %566 = load i32, i32* %i, align 4
  %idxprom756 = sext i32 %566 to i64
  %567 = load i32, i32* %j, align 4
  %idxprom757 = sext i32 %567 to i64
  %568 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id758 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %568, i32 0, i32 37
  %569 = load i64***, i64**** %ref_id758, align 8
  %arrayidx759 = getelementptr inbounds i64**, i64*** %569, i64 0
  %570 = load i64**, i64*** %arrayidx759, align 8
  %arrayidx760 = getelementptr inbounds i64*, i64** %570, i64 %idxprom757
  %571 = load i64*, i64** %arrayidx760, align 8
  %arrayidx761 = getelementptr inbounds i64, i64* %571, i64 %idxprom756
  %572 = load i64, i64* %arrayidx761, align 8
  %cmp762 = icmp eq i64 %565, %572
  br i1 %cmp762, label %if.then.764, label %if.end.777

if.then.764:                                      ; preds = %for.body.751
  %573 = load i32, i32* %iref, align 4
  %idxprom765 = sext i32 %573 to i64
  %574 = load i32, i32* %loffset, align 4
  %idxprom766 = sext i32 %574 to i64
  %arrayidx767 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom766
  %arrayidx768 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx767, i32 0, i64 0
  %arrayidx769 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx768, i32 0, i64 %idxprom765
  %575 = load i32, i32* %arrayidx769, align 4
  %arrayidx770 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %575, i32* %arrayidx770, align 4
  %576 = load i32, i32* %iref, align 4
  %idxprom771 = sext i32 %576 to i64
  %577 = load i32, i32* %loffset, align 4
  %idxprom772 = sext i32 %577 to i64
  %arrayidx773 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom772
  %arrayidx774 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx773, i32 0, i64 1
  %arrayidx775 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx774, i32 0, i64 %idxprom771
  %578 = load i32, i32* %arrayidx775, align 4
  %arrayidx776 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %578, i32* %arrayidx776, align 4
  br label %for.end.780

if.end.777:                                       ; preds = %for.body.751
  br label %for.inc.778

for.inc.778:                                      ; preds = %if.end.777
  %579 = load i32, i32* %iref, align 4
  %inc779 = add nsw i32 %579, 1
  store i32 %inc779, i32* %iref, align 4
  br label %for.cond.746

for.end.780:                                      ; preds = %if.then.764, %for.cond.746
  %arrayidx781 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %580 = load i32, i32* %arrayidx781, align 4
  %581 = load i32, i32* %i, align 4
  %idxprom782 = sext i32 %581 to i64
  %582 = load i32, i32* %j, align 4
  %idxprom783 = sext i32 %582 to i64
  %583 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv784 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %583, i32 0, i32 38
  %584 = load i16****, i16***** %mv784, align 8
  %arrayidx785 = getelementptr inbounds i16***, i16**** %584, i64 0
  %585 = load i16***, i16**** %arrayidx785, align 8
  %arrayidx786 = getelementptr inbounds i16**, i16*** %585, i64 %idxprom783
  %586 = load i16**, i16*** %arrayidx786, align 8
  %arrayidx787 = getelementptr inbounds i16*, i16** %586, i64 %idxprom782
  %587 = load i16*, i16** %arrayidx787, align 8
  %arrayidx788 = getelementptr inbounds i16, i16* %587, i64 0
  %588 = load i16, i16* %arrayidx788, align 2
  %conv789 = sext i16 %588 to i32
  %mul790 = mul nsw i32 %580, %conv789
  %589 = load i32, i32* %invmv_precision, align 4
  %call791 = call i32 @rshift_rnd_sf(i32 %mul790, i32 %589)
  %call792 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call791)
  %conv793 = trunc i32 %call792 to i16
  %590 = load i32, i32* %i, align 4
  %idxprom794 = sext i32 %590 to i64
  %591 = load i32, i32* %j, align 4
  %idxprom795 = sext i32 %591 to i64
  %592 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv796 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %592, i32 0, i32 3
  %593 = load i16****, i16***** %mv796, align 8
  %arrayidx797 = getelementptr inbounds i16***, i16**** %593, i64 0
  %594 = load i16***, i16**** %arrayidx797, align 8
  %arrayidx798 = getelementptr inbounds i16**, i16*** %594, i64 %idxprom795
  %595 = load i16**, i16*** %arrayidx798, align 8
  %arrayidx799 = getelementptr inbounds i16*, i16** %595, i64 %idxprom794
  %596 = load i16*, i16** %arrayidx799, align 8
  %arrayidx800 = getelementptr inbounds i16, i16* %596, i64 0
  store i16 %conv793, i16* %arrayidx800, align 2
  %arrayidx801 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %597 = load i32, i32* %arrayidx801, align 4
  %598 = load i32, i32* %i, align 4
  %idxprom802 = sext i32 %598 to i64
  %599 = load i32, i32* %j, align 4
  %idxprom803 = sext i32 %599 to i64
  %600 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv804 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %600, i32 0, i32 38
  %601 = load i16****, i16***** %mv804, align 8
  %arrayidx805 = getelementptr inbounds i16***, i16**** %601, i64 0
  %602 = load i16***, i16**** %arrayidx805, align 8
  %arrayidx806 = getelementptr inbounds i16**, i16*** %602, i64 %idxprom803
  %603 = load i16**, i16*** %arrayidx806, align 8
  %arrayidx807 = getelementptr inbounds i16*, i16** %603, i64 %idxprom802
  %604 = load i16*, i16** %arrayidx807, align 8
  %arrayidx808 = getelementptr inbounds i16, i16* %604, i64 1
  %605 = load i16, i16* %arrayidx808, align 2
  %conv809 = sext i16 %605 to i32
  %mul810 = mul nsw i32 %597, %conv809
  %606 = load i32, i32* %invmv_precision, align 4
  %call811 = call i32 @rshift_rnd_sf(i32 %mul810, i32 %606)
  %call812 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call811)
  %conv813 = trunc i32 %call812 to i16
  %607 = load i32, i32* %i, align 4
  %idxprom814 = sext i32 %607 to i64
  %608 = load i32, i32* %j, align 4
  %idxprom815 = sext i32 %608 to i64
  %609 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv816 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %609, i32 0, i32 3
  %610 = load i16****, i16***** %mv816, align 8
  %arrayidx817 = getelementptr inbounds i16***, i16**** %610, i64 0
  %611 = load i16***, i16**** %arrayidx817, align 8
  %arrayidx818 = getelementptr inbounds i16**, i16*** %611, i64 %idxprom815
  %612 = load i16**, i16*** %arrayidx818, align 8
  %arrayidx819 = getelementptr inbounds i16*, i16** %612, i64 %idxprom814
  %613 = load i16*, i16** %arrayidx819, align 8
  %arrayidx820 = getelementptr inbounds i16, i16* %613, i64 1
  store i16 %conv813, i16* %arrayidx820, align 2
  %arrayidx821 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %614 = load i32, i32* %arrayidx821, align 4
  %615 = load i32, i32* %i, align 4
  %idxprom822 = sext i32 %615 to i64
  %616 = load i32, i32* %j, align 4
  %idxprom823 = sext i32 %616 to i64
  %617 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv824 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %617, i32 0, i32 38
  %618 = load i16****, i16***** %mv824, align 8
  %arrayidx825 = getelementptr inbounds i16***, i16**** %618, i64 0
  %619 = load i16***, i16**** %arrayidx825, align 8
  %arrayidx826 = getelementptr inbounds i16**, i16*** %619, i64 %idxprom823
  %620 = load i16**, i16*** %arrayidx826, align 8
  %arrayidx827 = getelementptr inbounds i16*, i16** %620, i64 %idxprom822
  %621 = load i16*, i16** %arrayidx827, align 8
  %arrayidx828 = getelementptr inbounds i16, i16* %621, i64 0
  %622 = load i16, i16* %arrayidx828, align 2
  %conv829 = sext i16 %622 to i32
  %mul830 = mul nsw i32 %614, %conv829
  %623 = load i32, i32* %invmv_precision, align 4
  %call831 = call i32 @rshift_rnd_sf(i32 %mul830, i32 %623)
  %call832 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call831)
  %conv833 = trunc i32 %call832 to i16
  %624 = load i32, i32* %i, align 4
  %idxprom834 = sext i32 %624 to i64
  %625 = load i32, i32* %j, align 4
  %idxprom835 = sext i32 %625 to i64
  %626 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv836 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %626, i32 0, i32 3
  %627 = load i16****, i16***** %mv836, align 8
  %arrayidx837 = getelementptr inbounds i16***, i16**** %627, i64 1
  %628 = load i16***, i16**** %arrayidx837, align 8
  %arrayidx838 = getelementptr inbounds i16**, i16*** %628, i64 %idxprom835
  %629 = load i16**, i16*** %arrayidx838, align 8
  %arrayidx839 = getelementptr inbounds i16*, i16** %629, i64 %idxprom834
  %630 = load i16*, i16** %arrayidx839, align 8
  %arrayidx840 = getelementptr inbounds i16, i16* %630, i64 0
  store i16 %conv833, i16* %arrayidx840, align 2
  %arrayidx841 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %631 = load i32, i32* %arrayidx841, align 4
  %632 = load i32, i32* %i, align 4
  %idxprom842 = sext i32 %632 to i64
  %633 = load i32, i32* %j, align 4
  %idxprom843 = sext i32 %633 to i64
  %634 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv844 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %634, i32 0, i32 38
  %635 = load i16****, i16***** %mv844, align 8
  %arrayidx845 = getelementptr inbounds i16***, i16**** %635, i64 0
  %636 = load i16***, i16**** %arrayidx845, align 8
  %arrayidx846 = getelementptr inbounds i16**, i16*** %636, i64 %idxprom843
  %637 = load i16**, i16*** %arrayidx846, align 8
  %arrayidx847 = getelementptr inbounds i16*, i16** %637, i64 %idxprom842
  %638 = load i16*, i16** %arrayidx847, align 8
  %arrayidx848 = getelementptr inbounds i16, i16* %638, i64 1
  %639 = load i16, i16* %arrayidx848, align 2
  %conv849 = sext i16 %639 to i32
  %mul850 = mul nsw i32 %631, %conv849
  %640 = load i32, i32* %invmv_precision, align 4
  %call851 = call i32 @rshift_rnd_sf(i32 %mul850, i32 %640)
  %call852 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call851)
  %conv853 = trunc i32 %call852 to i16
  %641 = load i32, i32* %i, align 4
  %idxprom854 = sext i32 %641 to i64
  %642 = load i32, i32* %j, align 4
  %idxprom855 = sext i32 %642 to i64
  %643 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv856 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %643, i32 0, i32 3
  %644 = load i16****, i16***** %mv856, align 8
  %arrayidx857 = getelementptr inbounds i16***, i16**** %644, i64 1
  %645 = load i16***, i16**** %arrayidx857, align 8
  %arrayidx858 = getelementptr inbounds i16**, i16*** %645, i64 %idxprom855
  %646 = load i16**, i16*** %arrayidx858, align 8
  %arrayidx859 = getelementptr inbounds i16*, i16** %646, i64 %idxprom854
  %647 = load i16*, i16** %arrayidx859, align 8
  %arrayidx860 = getelementptr inbounds i16, i16* %647, i64 1
  store i16 %conv853, i16* %arrayidx860, align 2
  br label %if.end.890

if.else.861:                                      ; preds = %if.end.736
  %648 = load i32, i32* %i, align 4
  %idxprom862 = sext i32 %648 to i64
  %649 = load i32, i32* %j, align 4
  %idxprom863 = sext i32 %649 to i64
  %650 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv864 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %650, i32 0, i32 3
  %651 = load i16****, i16***** %mv864, align 8
  %arrayidx865 = getelementptr inbounds i16***, i16**** %651, i64 0
  %652 = load i16***, i16**** %arrayidx865, align 8
  %arrayidx866 = getelementptr inbounds i16**, i16*** %652, i64 %idxprom863
  %653 = load i16**, i16*** %arrayidx866, align 8
  %arrayidx867 = getelementptr inbounds i16*, i16** %653, i64 %idxprom862
  %654 = load i16*, i16** %arrayidx867, align 8
  %arrayidx868 = getelementptr inbounds i16, i16* %654, i64 0
  store i16 0, i16* %arrayidx868, align 2
  %655 = load i32, i32* %i, align 4
  %idxprom869 = sext i32 %655 to i64
  %656 = load i32, i32* %j, align 4
  %idxprom870 = sext i32 %656 to i64
  %657 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv871 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %657, i32 0, i32 3
  %658 = load i16****, i16***** %mv871, align 8
  %arrayidx872 = getelementptr inbounds i16***, i16**** %658, i64 0
  %659 = load i16***, i16**** %arrayidx872, align 8
  %arrayidx873 = getelementptr inbounds i16**, i16*** %659, i64 %idxprom870
  %660 = load i16**, i16*** %arrayidx873, align 8
  %arrayidx874 = getelementptr inbounds i16*, i16** %660, i64 %idxprom869
  %661 = load i16*, i16** %arrayidx874, align 8
  %arrayidx875 = getelementptr inbounds i16, i16* %661, i64 1
  store i16 0, i16* %arrayidx875, align 2
  %662 = load i32, i32* %i, align 4
  %idxprom876 = sext i32 %662 to i64
  %663 = load i32, i32* %j, align 4
  %idxprom877 = sext i32 %663 to i64
  %664 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv878 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %664, i32 0, i32 3
  %665 = load i16****, i16***** %mv878, align 8
  %arrayidx879 = getelementptr inbounds i16***, i16**** %665, i64 1
  %666 = load i16***, i16**** %arrayidx879, align 8
  %arrayidx880 = getelementptr inbounds i16**, i16*** %666, i64 %idxprom877
  %667 = load i16**, i16*** %arrayidx880, align 8
  %arrayidx881 = getelementptr inbounds i16*, i16** %667, i64 %idxprom876
  %668 = load i16*, i16** %arrayidx881, align 8
  %arrayidx882 = getelementptr inbounds i16, i16* %668, i64 0
  store i16 0, i16* %arrayidx882, align 2
  %669 = load i32, i32* %i, align 4
  %idxprom883 = sext i32 %669 to i64
  %670 = load i32, i32* %j, align 4
  %idxprom884 = sext i32 %670 to i64
  %671 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv885 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %671, i32 0, i32 3
  %672 = load i16****, i16***** %mv885, align 8
  %arrayidx886 = getelementptr inbounds i16***, i16**** %672, i64 1
  %673 = load i16***, i16**** %arrayidx886, align 8
  %arrayidx887 = getelementptr inbounds i16**, i16*** %673, i64 %idxprom884
  %674 = load i16**, i16*** %arrayidx887, align 8
  %arrayidx888 = getelementptr inbounds i16*, i16** %674, i64 %idxprom883
  %675 = load i16*, i16** %arrayidx888, align 8
  %arrayidx889 = getelementptr inbounds i16, i16* %675, i64 1
  store i16 0, i16* %arrayidx889, align 2
  br label %if.end.890

if.end.890:                                       ; preds = %if.else.861, %for.end.780
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %if.end.719
  br label %for.inc.892

for.inc.892:                                      ; preds = %if.end.891
  %676 = load i32, i32* %i, align 4
  %inc893 = add nsw i32 %676, 1
  store i32 %inc893, i32* %i, align 4
  br label %for.cond.355

for.end.894:                                      ; preds = %for.cond.355
  br label %for.inc.895

for.inc.895:                                      ; preds = %for.end.894
  %677 = load i32, i32* %j, align 4
  %inc896 = add nsw i32 %677, 1
  store i32 %inc896, i32* %j, align 4
  br label %for.cond.347

for.end.897:                                      ; preds = %for.cond.347
  br label %if.end.898

if.end.898:                                       ; preds = %for.end.897, %if.end.344
  %678 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure899 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %678, i32 0, i32 6
  %679 = load i32, i32* %structure899, align 4
  %tobool900 = icmp ne i32 %679, 0
  br i1 %tobool900, label %if.then.903, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.898
  %680 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag901 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %680, i32 0, i32 100
  %681 = load i32, i32* %MbaffFrameFlag901, align 4
  %tobool902 = icmp ne i32 %681, 0
  br i1 %tobool902, label %if.then.903, label %if.end.1525

if.then.903:                                      ; preds = %lor.lhs.false, %if.end.898
  store i32 0, i32* %j, align 4
  br label %for.cond.904

for.cond.904:                                     ; preds = %for.inc.1522, %if.then.903
  %682 = load i32, i32* %j, align 4
  %683 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_y905 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %683, i32 0, i32 19
  %684 = load i32, i32* %size_y905, align 4
  %div906 = sdiv i32 %684, 8
  %cmp907 = icmp slt i32 %682, %div906
  br i1 %cmp907, label %for.body.909, label %for.end.1524

for.body.909:                                     ; preds = %for.cond.904
  store i32 0, i32* %i, align 4
  br label %for.cond.910

for.cond.910:                                     ; preds = %for.inc.1519, %for.body.909
  %685 = load i32, i32* %i, align 4
  %686 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_x911 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %686, i32 0, i32 18
  %687 = load i32, i32* %size_x911, align 4
  %div912 = sdiv i32 %687, 4
  %cmp913 = icmp slt i32 %685, %div912
  br i1 %cmp913, label %for.body.915, label %for.end.1521

for.body.915:                                     ; preds = %for.cond.910
  %688 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag916 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %688, i32 0, i32 100
  %689 = load i32, i32* %MbaffFrameFlag916, align 4
  %tobool917 = icmp ne i32 %689, 0
  br i1 %tobool917, label %if.else.1089, label %if.then.918

if.then.918:                                      ; preds = %for.body.915
  %arrayidx919 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx919, align 4
  %arrayidx920 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx920, align 4
  %690 = load i32, i32* %i, align 4
  %idxprom921 = sext i32 %690 to i64
  %691 = load i32, i32* %j, align 4
  %idxprom922 = sext i32 %691 to i64
  %692 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id923 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %692, i32 0, i32 37
  %693 = load i64***, i64**** %ref_id923, align 8
  %arrayidx924 = getelementptr inbounds i64**, i64*** %693, i64 0
  %694 = load i64**, i64*** %arrayidx924, align 8
  %arrayidx925 = getelementptr inbounds i64*, i64** %694, i64 %idxprom922
  %695 = load i64*, i64** %arrayidx925, align 8
  %arrayidx926 = getelementptr inbounds i64, i64* %695, i64 %idxprom921
  %696 = load i64, i64* %arrayidx926, align 8
  %cmp927 = icmp slt i64 %696, 0
  br i1 %cmp927, label %land.lhs.true.929, label %if.else.933

land.lhs.true.929:                                ; preds = %if.then.918
  %697 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp930 = icmp sgt i32 %697, 1
  br i1 %cmp930, label %if.then.932, label %if.else.933

if.then.932:                                      ; preds = %land.lhs.true.929
  %698 = load %struct.storable_picture*, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %698, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.934

if.else.933:                                      ; preds = %land.lhs.true.929, %if.then.918
  %699 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  store %struct.storable_picture* %699, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.934

if.end.934:                                       ; preds = %if.else.933, %if.then.932
  %700 = load i32, i32* %i, align 4
  %idxprom935 = sext i32 %700 to i64
  %701 = load i32, i32* %j, align 4
  %idxprom936 = sext i32 %701 to i64
  %702 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id937 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %702, i32 0, i32 37
  %703 = load i64***, i64**** %ref_id937, align 8
  %arrayidx938 = getelementptr inbounds i64**, i64*** %703, i64 0
  %704 = load i64**, i64*** %arrayidx938, align 8
  %arrayidx939 = getelementptr inbounds i64*, i64** %704, i64 %idxprom936
  %705 = load i64*, i64** %arrayidx939, align 8
  %arrayidx940 = getelementptr inbounds i64, i64* %705, i64 %idxprom935
  %706 = load i64, i64* %arrayidx940, align 8
  %cmp941 = icmp ne i64 %706, -1
  br i1 %cmp941, label %if.then.943, label %if.else.1059

if.then.943:                                      ; preds = %if.end.934
  store i32 0, i32* %iref, align 4
  br label %for.cond.944

for.cond.944:                                     ; preds = %for.inc.976, %if.then.943
  %707 = load i32, i32* %iref, align 4
  %708 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active945 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %708, i32 0, i32 88
  %709 = load i32, i32* %num_ref_idx_l0_active945, align 4
  %710 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %call946 = call i32 @imin(i32 %709, i32 %710)
  %cmp947 = icmp slt i32 %707, %call946
  br i1 %cmp947, label %for.body.949, label %for.end.978

for.body.949:                                     ; preds = %for.cond.944
  %711 = load i32, i32* %iref, align 4
  %idxprom950 = sext i32 %711 to i64
  %712 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num951 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %712, i32 0, i32 6
  %arrayidx952 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num951, i32 0, i64 0
  %arrayidx953 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx952, i32 0, i64 %idxprom950
  %713 = load i64, i64* %arrayidx953, align 8
  %714 = load i32, i32* %i, align 4
  %idxprom954 = sext i32 %714 to i64
  %715 = load i32, i32* %j, align 4
  %idxprom955 = sext i32 %715 to i64
  %716 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id956 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %716, i32 0, i32 37
  %717 = load i64***, i64**** %ref_id956, align 8
  %arrayidx957 = getelementptr inbounds i64**, i64*** %717, i64 0
  %718 = load i64**, i64*** %arrayidx957, align 8
  %arrayidx958 = getelementptr inbounds i64*, i64** %718, i64 %idxprom955
  %719 = load i64*, i64** %arrayidx958, align 8
  %arrayidx959 = getelementptr inbounds i64, i64* %719, i64 %idxprom954
  %720 = load i64, i64* %arrayidx959, align 8
  %cmp960 = icmp eq i64 %713, %720
  br i1 %cmp960, label %if.then.962, label %if.end.975

if.then.962:                                      ; preds = %for.body.949
  %721 = load i32, i32* %iref, align 4
  %idxprom963 = sext i32 %721 to i64
  %722 = load i32, i32* %loffset, align 4
  %idxprom964 = sext i32 %722 to i64
  %arrayidx965 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom964
  %arrayidx966 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx965, i32 0, i64 0
  %arrayidx967 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx966, i32 0, i64 %idxprom963
  %723 = load i32, i32* %arrayidx967, align 4
  %arrayidx968 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %723, i32* %arrayidx968, align 4
  %724 = load i32, i32* %iref, align 4
  %idxprom969 = sext i32 %724 to i64
  %725 = load i32, i32* %loffset, align 4
  %idxprom970 = sext i32 %725 to i64
  %arrayidx971 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom970
  %arrayidx972 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx971, i32 0, i64 1
  %arrayidx973 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx972, i32 0, i64 %idxprom969
  %726 = load i32, i32* %arrayidx973, align 4
  %arrayidx974 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %726, i32* %arrayidx974, align 4
  br label %for.end.978

if.end.975:                                       ; preds = %for.body.949
  br label %for.inc.976

for.inc.976:                                      ; preds = %if.end.975
  %727 = load i32, i32* %iref, align 4
  %inc977 = add nsw i32 %727, 1
  store i32 %inc977, i32* %iref, align 4
  br label %for.cond.944

for.end.978:                                      ; preds = %if.then.962, %for.cond.944
  %arrayidx979 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %728 = load i32, i32* %arrayidx979, align 4
  %729 = load i32, i32* %i, align 4
  %idxprom980 = sext i32 %729 to i64
  %730 = load i32, i32* %j, align 4
  %idxprom981 = sext i32 %730 to i64
  %731 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv982 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %731, i32 0, i32 38
  %732 = load i16****, i16***** %mv982, align 8
  %arrayidx983 = getelementptr inbounds i16***, i16**** %732, i64 0
  %733 = load i16***, i16**** %arrayidx983, align 8
  %arrayidx984 = getelementptr inbounds i16**, i16*** %733, i64 %idxprom981
  %734 = load i16**, i16*** %arrayidx984, align 8
  %arrayidx985 = getelementptr inbounds i16*, i16** %734, i64 %idxprom980
  %735 = load i16*, i16** %arrayidx985, align 8
  %arrayidx986 = getelementptr inbounds i16, i16* %735, i64 0
  %736 = load i16, i16* %arrayidx986, align 2
  %conv987 = sext i16 %736 to i32
  %mul988 = mul nsw i32 %728, %conv987
  %737 = load i32, i32* %invmv_precision, align 4
  %call989 = call i32 @rshift_rnd_sf(i32 %mul988, i32 %737)
  %call990 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call989)
  %conv991 = trunc i32 %call990 to i16
  %738 = load i32, i32* %i, align 4
  %idxprom992 = sext i32 %738 to i64
  %739 = load i32, i32* %j, align 4
  %idxprom993 = sext i32 %739 to i64
  %740 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv994 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %740, i32 0, i32 3
  %741 = load i16****, i16***** %mv994, align 8
  %arrayidx995 = getelementptr inbounds i16***, i16**** %741, i64 0
  %742 = load i16***, i16**** %arrayidx995, align 8
  %arrayidx996 = getelementptr inbounds i16**, i16*** %742, i64 %idxprom993
  %743 = load i16**, i16*** %arrayidx996, align 8
  %arrayidx997 = getelementptr inbounds i16*, i16** %743, i64 %idxprom992
  %744 = load i16*, i16** %arrayidx997, align 8
  %arrayidx998 = getelementptr inbounds i16, i16* %744, i64 0
  store i16 %conv991, i16* %arrayidx998, align 2
  %arrayidx999 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %745 = load i32, i32* %arrayidx999, align 4
  %746 = load i32, i32* %i, align 4
  %idxprom1000 = sext i32 %746 to i64
  %747 = load i32, i32* %j, align 4
  %idxprom1001 = sext i32 %747 to i64
  %748 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1002 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %748, i32 0, i32 38
  %749 = load i16****, i16***** %mv1002, align 8
  %arrayidx1003 = getelementptr inbounds i16***, i16**** %749, i64 0
  %750 = load i16***, i16**** %arrayidx1003, align 8
  %arrayidx1004 = getelementptr inbounds i16**, i16*** %750, i64 %idxprom1001
  %751 = load i16**, i16*** %arrayidx1004, align 8
  %arrayidx1005 = getelementptr inbounds i16*, i16** %751, i64 %idxprom1000
  %752 = load i16*, i16** %arrayidx1005, align 8
  %arrayidx1006 = getelementptr inbounds i16, i16* %752, i64 1
  %753 = load i16, i16* %arrayidx1006, align 2
  %conv1007 = sext i16 %753 to i32
  %mul1008 = mul nsw i32 %745, %conv1007
  %754 = load i32, i32* %invmv_precision, align 4
  %call1009 = call i32 @rshift_rnd_sf(i32 %mul1008, i32 %754)
  %call1010 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1009)
  %conv1011 = trunc i32 %call1010 to i16
  %755 = load i32, i32* %i, align 4
  %idxprom1012 = sext i32 %755 to i64
  %756 = load i32, i32* %j, align 4
  %idxprom1013 = sext i32 %756 to i64
  %757 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1014 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %757, i32 0, i32 3
  %758 = load i16****, i16***** %mv1014, align 8
  %arrayidx1015 = getelementptr inbounds i16***, i16**** %758, i64 0
  %759 = load i16***, i16**** %arrayidx1015, align 8
  %arrayidx1016 = getelementptr inbounds i16**, i16*** %759, i64 %idxprom1013
  %760 = load i16**, i16*** %arrayidx1016, align 8
  %arrayidx1017 = getelementptr inbounds i16*, i16** %760, i64 %idxprom1012
  %761 = load i16*, i16** %arrayidx1017, align 8
  %arrayidx1018 = getelementptr inbounds i16, i16* %761, i64 1
  store i16 %conv1011, i16* %arrayidx1018, align 2
  %arrayidx1019 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %762 = load i32, i32* %arrayidx1019, align 4
  %763 = load i32, i32* %i, align 4
  %idxprom1020 = sext i32 %763 to i64
  %764 = load i32, i32* %j, align 4
  %idxprom1021 = sext i32 %764 to i64
  %765 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1022 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %765, i32 0, i32 38
  %766 = load i16****, i16***** %mv1022, align 8
  %arrayidx1023 = getelementptr inbounds i16***, i16**** %766, i64 0
  %767 = load i16***, i16**** %arrayidx1023, align 8
  %arrayidx1024 = getelementptr inbounds i16**, i16*** %767, i64 %idxprom1021
  %768 = load i16**, i16*** %arrayidx1024, align 8
  %arrayidx1025 = getelementptr inbounds i16*, i16** %768, i64 %idxprom1020
  %769 = load i16*, i16** %arrayidx1025, align 8
  %arrayidx1026 = getelementptr inbounds i16, i16* %769, i64 0
  %770 = load i16, i16* %arrayidx1026, align 2
  %conv1027 = sext i16 %770 to i32
  %mul1028 = mul nsw i32 %762, %conv1027
  %771 = load i32, i32* %invmv_precision, align 4
  %call1029 = call i32 @rshift_rnd_sf(i32 %mul1028, i32 %771)
  %call1030 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1029)
  %conv1031 = trunc i32 %call1030 to i16
  %772 = load i32, i32* %i, align 4
  %idxprom1032 = sext i32 %772 to i64
  %773 = load i32, i32* %j, align 4
  %idxprom1033 = sext i32 %773 to i64
  %774 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1034 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %774, i32 0, i32 3
  %775 = load i16****, i16***** %mv1034, align 8
  %arrayidx1035 = getelementptr inbounds i16***, i16**** %775, i64 1
  %776 = load i16***, i16**** %arrayidx1035, align 8
  %arrayidx1036 = getelementptr inbounds i16**, i16*** %776, i64 %idxprom1033
  %777 = load i16**, i16*** %arrayidx1036, align 8
  %arrayidx1037 = getelementptr inbounds i16*, i16** %777, i64 %idxprom1032
  %778 = load i16*, i16** %arrayidx1037, align 8
  %arrayidx1038 = getelementptr inbounds i16, i16* %778, i64 0
  store i16 %conv1031, i16* %arrayidx1038, align 2
  %arrayidx1039 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %779 = load i32, i32* %arrayidx1039, align 4
  %780 = load i32, i32* %i, align 4
  %idxprom1040 = sext i32 %780 to i64
  %781 = load i32, i32* %j, align 4
  %idxprom1041 = sext i32 %781 to i64
  %782 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1042 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %782, i32 0, i32 38
  %783 = load i16****, i16***** %mv1042, align 8
  %arrayidx1043 = getelementptr inbounds i16***, i16**** %783, i64 0
  %784 = load i16***, i16**** %arrayidx1043, align 8
  %arrayidx1044 = getelementptr inbounds i16**, i16*** %784, i64 %idxprom1041
  %785 = load i16**, i16*** %arrayidx1044, align 8
  %arrayidx1045 = getelementptr inbounds i16*, i16** %785, i64 %idxprom1040
  %786 = load i16*, i16** %arrayidx1045, align 8
  %arrayidx1046 = getelementptr inbounds i16, i16* %786, i64 1
  %787 = load i16, i16* %arrayidx1046, align 2
  %conv1047 = sext i16 %787 to i32
  %mul1048 = mul nsw i32 %779, %conv1047
  %788 = load i32, i32* %invmv_precision, align 4
  %call1049 = call i32 @rshift_rnd_sf(i32 %mul1048, i32 %788)
  %call1050 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1049)
  %conv1051 = trunc i32 %call1050 to i16
  %789 = load i32, i32* %i, align 4
  %idxprom1052 = sext i32 %789 to i64
  %790 = load i32, i32* %j, align 4
  %idxprom1053 = sext i32 %790 to i64
  %791 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1054 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %791, i32 0, i32 3
  %792 = load i16****, i16***** %mv1054, align 8
  %arrayidx1055 = getelementptr inbounds i16***, i16**** %792, i64 1
  %793 = load i16***, i16**** %arrayidx1055, align 8
  %arrayidx1056 = getelementptr inbounds i16**, i16*** %793, i64 %idxprom1053
  %794 = load i16**, i16*** %arrayidx1056, align 8
  %arrayidx1057 = getelementptr inbounds i16*, i16** %794, i64 %idxprom1052
  %795 = load i16*, i16** %arrayidx1057, align 8
  %arrayidx1058 = getelementptr inbounds i16, i16* %795, i64 1
  store i16 %conv1051, i16* %arrayidx1058, align 2
  br label %if.end.1088

if.else.1059:                                     ; preds = %if.end.934
  %796 = load i32, i32* %i, align 4
  %idxprom1060 = sext i32 %796 to i64
  %797 = load i32, i32* %j, align 4
  %idxprom1061 = sext i32 %797 to i64
  %798 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1062 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %798, i32 0, i32 3
  %799 = load i16****, i16***** %mv1062, align 8
  %arrayidx1063 = getelementptr inbounds i16***, i16**** %799, i64 0
  %800 = load i16***, i16**** %arrayidx1063, align 8
  %arrayidx1064 = getelementptr inbounds i16**, i16*** %800, i64 %idxprom1061
  %801 = load i16**, i16*** %arrayidx1064, align 8
  %arrayidx1065 = getelementptr inbounds i16*, i16** %801, i64 %idxprom1060
  %802 = load i16*, i16** %arrayidx1065, align 8
  %arrayidx1066 = getelementptr inbounds i16, i16* %802, i64 0
  store i16 0, i16* %arrayidx1066, align 2
  %803 = load i32, i32* %i, align 4
  %idxprom1067 = sext i32 %803 to i64
  %804 = load i32, i32* %j, align 4
  %idxprom1068 = sext i32 %804 to i64
  %805 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1069 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %805, i32 0, i32 3
  %806 = load i16****, i16***** %mv1069, align 8
  %arrayidx1070 = getelementptr inbounds i16***, i16**** %806, i64 0
  %807 = load i16***, i16**** %arrayidx1070, align 8
  %arrayidx1071 = getelementptr inbounds i16**, i16*** %807, i64 %idxprom1068
  %808 = load i16**, i16*** %arrayidx1071, align 8
  %arrayidx1072 = getelementptr inbounds i16*, i16** %808, i64 %idxprom1067
  %809 = load i16*, i16** %arrayidx1072, align 8
  %arrayidx1073 = getelementptr inbounds i16, i16* %809, i64 1
  store i16 0, i16* %arrayidx1073, align 2
  %810 = load i32, i32* %i, align 4
  %idxprom1074 = sext i32 %810 to i64
  %811 = load i32, i32* %j, align 4
  %idxprom1075 = sext i32 %811 to i64
  %812 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1076 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %812, i32 0, i32 3
  %813 = load i16****, i16***** %mv1076, align 8
  %arrayidx1077 = getelementptr inbounds i16***, i16**** %813, i64 1
  %814 = load i16***, i16**** %arrayidx1077, align 8
  %arrayidx1078 = getelementptr inbounds i16**, i16*** %814, i64 %idxprom1075
  %815 = load i16**, i16*** %arrayidx1078, align 8
  %arrayidx1079 = getelementptr inbounds i16*, i16** %815, i64 %idxprom1074
  %816 = load i16*, i16** %arrayidx1079, align 8
  %arrayidx1080 = getelementptr inbounds i16, i16* %816, i64 0
  store i16 0, i16* %arrayidx1080, align 2
  %817 = load i32, i32* %i, align 4
  %idxprom1081 = sext i32 %817 to i64
  %818 = load i32, i32* %j, align 4
  %idxprom1082 = sext i32 %818 to i64
  %819 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1083 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %819, i32 0, i32 3
  %820 = load i16****, i16***** %mv1083, align 8
  %arrayidx1084 = getelementptr inbounds i16***, i16**** %820, i64 1
  %821 = load i16***, i16**** %arrayidx1084, align 8
  %arrayidx1085 = getelementptr inbounds i16**, i16*** %821, i64 %idxprom1082
  %822 = load i16**, i16*** %arrayidx1085, align 8
  %arrayidx1086 = getelementptr inbounds i16*, i16** %822, i64 %idxprom1081
  %823 = load i16*, i16** %arrayidx1086, align 8
  %arrayidx1087 = getelementptr inbounds i16, i16* %823, i64 1
  store i16 0, i16* %arrayidx1087, align 2
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.else.1059, %for.end.978
  br label %if.end.1518

if.else.1089:                                     ; preds = %for.body.915
  %arrayidx1090 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx1090, align 4
  %arrayidx1091 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx1091, align 4
  %824 = load i32, i32* %i, align 4
  %idxprom1092 = sext i32 %824 to i64
  %825 = load i32, i32* %j, align 4
  %idxprom1093 = sext i32 %825 to i64
  %826 = load %struct.storable_picture*, %struct.storable_picture** %fs_bottom, align 8
  %ref_id1094 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %826, i32 0, i32 37
  %827 = load i64***, i64**** %ref_id1094, align 8
  %arrayidx1095 = getelementptr inbounds i64**, i64*** %827, i64 0
  %828 = load i64**, i64*** %arrayidx1095, align 8
  %arrayidx1096 = getelementptr inbounds i64*, i64** %828, i64 %idxprom1093
  %829 = load i64*, i64** %arrayidx1096, align 8
  %arrayidx1097 = getelementptr inbounds i64, i64* %829, i64 %idxprom1092
  %830 = load i64, i64* %arrayidx1097, align 8
  %cmp1098 = icmp slt i64 %830, 0
  br i1 %cmp1098, label %land.lhs.true.1100, label %if.else.1104

land.lhs.true.1100:                               ; preds = %if.else.1089
  %831 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp1101 = icmp sgt i32 %831, 1
  br i1 %cmp1101, label %if.then.1103, label %if.else.1104

if.then.1103:                                     ; preds = %land.lhs.true.1100
  %832 = load %struct.storable_picture*, %struct.storable_picture** %fs_bottom1, align 8
  store %struct.storable_picture* %832, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.1105

if.else.1104:                                     ; preds = %land.lhs.true.1100, %if.else.1089
  %833 = load %struct.storable_picture*, %struct.storable_picture** %fs_bottom, align 8
  store %struct.storable_picture* %833, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.else.1104, %if.then.1103
  %834 = load i32, i32* %i, align 4
  %idxprom1106 = sext i32 %834 to i64
  %835 = load i32, i32* %j, align 4
  %idxprom1107 = sext i32 %835 to i64
  %836 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1108 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %836, i32 0, i32 37
  %837 = load i64***, i64**** %ref_id1108, align 8
  %arrayidx1109 = getelementptr inbounds i64**, i64*** %837, i64 0
  %838 = load i64**, i64*** %arrayidx1109, align 8
  %arrayidx1110 = getelementptr inbounds i64*, i64** %838, i64 %idxprom1107
  %839 = load i64*, i64** %arrayidx1110, align 8
  %arrayidx1111 = getelementptr inbounds i64, i64* %839, i64 %idxprom1106
  %840 = load i64, i64* %arrayidx1111, align 8
  %cmp1112 = icmp ne i64 %840, -1
  br i1 %cmp1112, label %if.then.1114, label %if.else.1230

if.then.1114:                                     ; preds = %if.end.1105
  store i32 0, i32* %iref, align 4
  br label %for.cond.1115

for.cond.1115:                                    ; preds = %for.inc.1148, %if.then.1114
  %841 = load i32, i32* %iref, align 4
  %842 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active1116 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %842, i32 0, i32 88
  %843 = load i32, i32* %num_ref_idx_l0_active1116, align 4
  %mul1117 = mul nsw i32 2, %843
  %844 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 4), align 4
  %call1118 = call i32 @imin(i32 %mul1117, i32 %844)
  %cmp1119 = icmp slt i32 %841, %call1118
  br i1 %cmp1119, label %for.body.1121, label %for.end.1150

for.body.1121:                                    ; preds = %for.cond.1115
  %845 = load i32, i32* %iref, align 4
  %idxprom1122 = sext i32 %845 to i64
  %846 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num1123 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %846, i32 0, i32 6
  %arrayidx1124 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num1123, i32 0, i64 4
  %arrayidx1125 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx1124, i32 0, i64 %idxprom1122
  %847 = load i64, i64* %arrayidx1125, align 8
  %848 = load i32, i32* %i, align 4
  %idxprom1126 = sext i32 %848 to i64
  %849 = load i32, i32* %j, align 4
  %idxprom1127 = sext i32 %849 to i64
  %850 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1128 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %850, i32 0, i32 37
  %851 = load i64***, i64**** %ref_id1128, align 8
  %arrayidx1129 = getelementptr inbounds i64**, i64*** %851, i64 0
  %852 = load i64**, i64*** %arrayidx1129, align 8
  %arrayidx1130 = getelementptr inbounds i64*, i64** %852, i64 %idxprom1127
  %853 = load i64*, i64** %arrayidx1130, align 8
  %arrayidx1131 = getelementptr inbounds i64, i64* %853, i64 %idxprom1126
  %854 = load i64, i64* %arrayidx1131, align 8
  %cmp1132 = icmp eq i64 %847, %854
  br i1 %cmp1132, label %if.then.1134, label %if.end.1147

if.then.1134:                                     ; preds = %for.body.1121
  %855 = load i32, i32* %iref, align 4
  %idxprom1135 = sext i32 %855 to i64
  %856 = load i32, i32* %loffset, align 4
  %idxprom1136 = sext i32 %856 to i64
  %arrayidx1137 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1136
  %arrayidx1138 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1137, i32 0, i64 4
  %arrayidx1139 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1138, i32 0, i64 %idxprom1135
  %857 = load i32, i32* %arrayidx1139, align 4
  %arrayidx1140 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %857, i32* %arrayidx1140, align 4
  %858 = load i32, i32* %iref, align 4
  %idxprom1141 = sext i32 %858 to i64
  %859 = load i32, i32* %loffset, align 4
  %idxprom1142 = sext i32 %859 to i64
  %arrayidx1143 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1142
  %arrayidx1144 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1143, i32 0, i64 5
  %arrayidx1145 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1144, i32 0, i64 %idxprom1141
  %860 = load i32, i32* %arrayidx1145, align 4
  %arrayidx1146 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %860, i32* %arrayidx1146, align 4
  br label %for.end.1150

if.end.1147:                                      ; preds = %for.body.1121
  br label %for.inc.1148

for.inc.1148:                                     ; preds = %if.end.1147
  %861 = load i32, i32* %iref, align 4
  %inc1149 = add nsw i32 %861, 1
  store i32 %inc1149, i32* %iref, align 4
  br label %for.cond.1115

for.end.1150:                                     ; preds = %if.then.1134, %for.cond.1115
  %arrayidx1151 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %862 = load i32, i32* %arrayidx1151, align 4
  %863 = load i32, i32* %i, align 4
  %idxprom1152 = sext i32 %863 to i64
  %864 = load i32, i32* %j, align 4
  %idxprom1153 = sext i32 %864 to i64
  %865 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1154 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %865, i32 0, i32 38
  %866 = load i16****, i16***** %mv1154, align 8
  %arrayidx1155 = getelementptr inbounds i16***, i16**** %866, i64 0
  %867 = load i16***, i16**** %arrayidx1155, align 8
  %arrayidx1156 = getelementptr inbounds i16**, i16*** %867, i64 %idxprom1153
  %868 = load i16**, i16*** %arrayidx1156, align 8
  %arrayidx1157 = getelementptr inbounds i16*, i16** %868, i64 %idxprom1152
  %869 = load i16*, i16** %arrayidx1157, align 8
  %arrayidx1158 = getelementptr inbounds i16, i16* %869, i64 0
  %870 = load i16, i16* %arrayidx1158, align 2
  %conv1159 = sext i16 %870 to i32
  %mul1160 = mul nsw i32 %862, %conv1159
  %871 = load i32, i32* %invmv_precision, align 4
  %call1161 = call i32 @rshift_rnd_sf(i32 %mul1160, i32 %871)
  %call1162 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1161)
  %conv1163 = trunc i32 %call1162 to i16
  %872 = load i32, i32* %i, align 4
  %idxprom1164 = sext i32 %872 to i64
  %873 = load i32, i32* %j, align 4
  %idxprom1165 = sext i32 %873 to i64
  %874 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %874, i32 0, i32 5
  %875 = load i16****, i16***** %bottom_mv, align 8
  %arrayidx1166 = getelementptr inbounds i16***, i16**** %875, i64 0
  %876 = load i16***, i16**** %arrayidx1166, align 8
  %arrayidx1167 = getelementptr inbounds i16**, i16*** %876, i64 %idxprom1165
  %877 = load i16**, i16*** %arrayidx1167, align 8
  %arrayidx1168 = getelementptr inbounds i16*, i16** %877, i64 %idxprom1164
  %878 = load i16*, i16** %arrayidx1168, align 8
  %arrayidx1169 = getelementptr inbounds i16, i16* %878, i64 0
  store i16 %conv1163, i16* %arrayidx1169, align 2
  %arrayidx1170 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %879 = load i32, i32* %arrayidx1170, align 4
  %880 = load i32, i32* %i, align 4
  %idxprom1171 = sext i32 %880 to i64
  %881 = load i32, i32* %j, align 4
  %idxprom1172 = sext i32 %881 to i64
  %882 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1173 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %882, i32 0, i32 38
  %883 = load i16****, i16***** %mv1173, align 8
  %arrayidx1174 = getelementptr inbounds i16***, i16**** %883, i64 0
  %884 = load i16***, i16**** %arrayidx1174, align 8
  %arrayidx1175 = getelementptr inbounds i16**, i16*** %884, i64 %idxprom1172
  %885 = load i16**, i16*** %arrayidx1175, align 8
  %arrayidx1176 = getelementptr inbounds i16*, i16** %885, i64 %idxprom1171
  %886 = load i16*, i16** %arrayidx1176, align 8
  %arrayidx1177 = getelementptr inbounds i16, i16* %886, i64 1
  %887 = load i16, i16* %arrayidx1177, align 2
  %conv1178 = sext i16 %887 to i32
  %mul1179 = mul nsw i32 %879, %conv1178
  %888 = load i32, i32* %invmv_precision, align 4
  %call1180 = call i32 @rshift_rnd_sf(i32 %mul1179, i32 %888)
  %call1181 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1180)
  %conv1182 = trunc i32 %call1181 to i16
  %889 = load i32, i32* %i, align 4
  %idxprom1183 = sext i32 %889 to i64
  %890 = load i32, i32* %j, align 4
  %idxprom1184 = sext i32 %890 to i64
  %891 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1185 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %891, i32 0, i32 5
  %892 = load i16****, i16***** %bottom_mv1185, align 8
  %arrayidx1186 = getelementptr inbounds i16***, i16**** %892, i64 0
  %893 = load i16***, i16**** %arrayidx1186, align 8
  %arrayidx1187 = getelementptr inbounds i16**, i16*** %893, i64 %idxprom1184
  %894 = load i16**, i16*** %arrayidx1187, align 8
  %arrayidx1188 = getelementptr inbounds i16*, i16** %894, i64 %idxprom1183
  %895 = load i16*, i16** %arrayidx1188, align 8
  %arrayidx1189 = getelementptr inbounds i16, i16* %895, i64 1
  store i16 %conv1182, i16* %arrayidx1189, align 2
  %arrayidx1190 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %896 = load i32, i32* %arrayidx1190, align 4
  %897 = load i32, i32* %i, align 4
  %idxprom1191 = sext i32 %897 to i64
  %898 = load i32, i32* %j, align 4
  %idxprom1192 = sext i32 %898 to i64
  %899 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1193 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %899, i32 0, i32 38
  %900 = load i16****, i16***** %mv1193, align 8
  %arrayidx1194 = getelementptr inbounds i16***, i16**** %900, i64 0
  %901 = load i16***, i16**** %arrayidx1194, align 8
  %arrayidx1195 = getelementptr inbounds i16**, i16*** %901, i64 %idxprom1192
  %902 = load i16**, i16*** %arrayidx1195, align 8
  %arrayidx1196 = getelementptr inbounds i16*, i16** %902, i64 %idxprom1191
  %903 = load i16*, i16** %arrayidx1196, align 8
  %arrayidx1197 = getelementptr inbounds i16, i16* %903, i64 0
  %904 = load i16, i16* %arrayidx1197, align 2
  %conv1198 = sext i16 %904 to i32
  %mul1199 = mul nsw i32 %896, %conv1198
  %905 = load i32, i32* %invmv_precision, align 4
  %call1200 = call i32 @rshift_rnd_sf(i32 %mul1199, i32 %905)
  %call1201 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1200)
  %conv1202 = trunc i32 %call1201 to i16
  %906 = load i32, i32* %i, align 4
  %idxprom1203 = sext i32 %906 to i64
  %907 = load i32, i32* %j, align 4
  %idxprom1204 = sext i32 %907 to i64
  %908 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1205 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %908, i32 0, i32 5
  %909 = load i16****, i16***** %bottom_mv1205, align 8
  %arrayidx1206 = getelementptr inbounds i16***, i16**** %909, i64 1
  %910 = load i16***, i16**** %arrayidx1206, align 8
  %arrayidx1207 = getelementptr inbounds i16**, i16*** %910, i64 %idxprom1204
  %911 = load i16**, i16*** %arrayidx1207, align 8
  %arrayidx1208 = getelementptr inbounds i16*, i16** %911, i64 %idxprom1203
  %912 = load i16*, i16** %arrayidx1208, align 8
  %arrayidx1209 = getelementptr inbounds i16, i16* %912, i64 0
  store i16 %conv1202, i16* %arrayidx1209, align 2
  %arrayidx1210 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %913 = load i32, i32* %arrayidx1210, align 4
  %914 = load i32, i32* %i, align 4
  %idxprom1211 = sext i32 %914 to i64
  %915 = load i32, i32* %j, align 4
  %idxprom1212 = sext i32 %915 to i64
  %916 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1213 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %916, i32 0, i32 38
  %917 = load i16****, i16***** %mv1213, align 8
  %arrayidx1214 = getelementptr inbounds i16***, i16**** %917, i64 0
  %918 = load i16***, i16**** %arrayidx1214, align 8
  %arrayidx1215 = getelementptr inbounds i16**, i16*** %918, i64 %idxprom1212
  %919 = load i16**, i16*** %arrayidx1215, align 8
  %arrayidx1216 = getelementptr inbounds i16*, i16** %919, i64 %idxprom1211
  %920 = load i16*, i16** %arrayidx1216, align 8
  %arrayidx1217 = getelementptr inbounds i16, i16* %920, i64 1
  %921 = load i16, i16* %arrayidx1217, align 2
  %conv1218 = sext i16 %921 to i32
  %mul1219 = mul nsw i32 %913, %conv1218
  %922 = load i32, i32* %invmv_precision, align 4
  %call1220 = call i32 @rshift_rnd_sf(i32 %mul1219, i32 %922)
  %call1221 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1220)
  %conv1222 = trunc i32 %call1221 to i16
  %923 = load i32, i32* %i, align 4
  %idxprom1223 = sext i32 %923 to i64
  %924 = load i32, i32* %j, align 4
  %idxprom1224 = sext i32 %924 to i64
  %925 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1225 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %925, i32 0, i32 5
  %926 = load i16****, i16***** %bottom_mv1225, align 8
  %arrayidx1226 = getelementptr inbounds i16***, i16**** %926, i64 1
  %927 = load i16***, i16**** %arrayidx1226, align 8
  %arrayidx1227 = getelementptr inbounds i16**, i16*** %927, i64 %idxprom1224
  %928 = load i16**, i16*** %arrayidx1227, align 8
  %arrayidx1228 = getelementptr inbounds i16*, i16** %928, i64 %idxprom1223
  %929 = load i16*, i16** %arrayidx1228, align 8
  %arrayidx1229 = getelementptr inbounds i16, i16* %929, i64 1
  store i16 %conv1222, i16* %arrayidx1229, align 2
  br label %if.end.1259

if.else.1230:                                     ; preds = %if.end.1105
  %930 = load i32, i32* %i, align 4
  %idxprom1231 = sext i32 %930 to i64
  %931 = load i32, i32* %j, align 4
  %idxprom1232 = sext i32 %931 to i64
  %932 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1233 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %932, i32 0, i32 5
  %933 = load i16****, i16***** %bottom_mv1233, align 8
  %arrayidx1234 = getelementptr inbounds i16***, i16**** %933, i64 0
  %934 = load i16***, i16**** %arrayidx1234, align 8
  %arrayidx1235 = getelementptr inbounds i16**, i16*** %934, i64 %idxprom1232
  %935 = load i16**, i16*** %arrayidx1235, align 8
  %arrayidx1236 = getelementptr inbounds i16*, i16** %935, i64 %idxprom1231
  %936 = load i16*, i16** %arrayidx1236, align 8
  %arrayidx1237 = getelementptr inbounds i16, i16* %936, i64 0
  store i16 0, i16* %arrayidx1237, align 2
  %937 = load i32, i32* %i, align 4
  %idxprom1238 = sext i32 %937 to i64
  %938 = load i32, i32* %j, align 4
  %idxprom1239 = sext i32 %938 to i64
  %939 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1240 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %939, i32 0, i32 5
  %940 = load i16****, i16***** %bottom_mv1240, align 8
  %arrayidx1241 = getelementptr inbounds i16***, i16**** %940, i64 0
  %941 = load i16***, i16**** %arrayidx1241, align 8
  %arrayidx1242 = getelementptr inbounds i16**, i16*** %941, i64 %idxprom1239
  %942 = load i16**, i16*** %arrayidx1242, align 8
  %arrayidx1243 = getelementptr inbounds i16*, i16** %942, i64 %idxprom1238
  %943 = load i16*, i16** %arrayidx1243, align 8
  %arrayidx1244 = getelementptr inbounds i16, i16* %943, i64 1
  store i16 0, i16* %arrayidx1244, align 2
  %944 = load i32, i32* %i, align 4
  %idxprom1245 = sext i32 %944 to i64
  %945 = load i32, i32* %j, align 4
  %idxprom1246 = sext i32 %945 to i64
  %946 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1247 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %946, i32 0, i32 5
  %947 = load i16****, i16***** %bottom_mv1247, align 8
  %arrayidx1248 = getelementptr inbounds i16***, i16**** %947, i64 1
  %948 = load i16***, i16**** %arrayidx1248, align 8
  %arrayidx1249 = getelementptr inbounds i16**, i16*** %948, i64 %idxprom1246
  %949 = load i16**, i16*** %arrayidx1249, align 8
  %arrayidx1250 = getelementptr inbounds i16*, i16** %949, i64 %idxprom1245
  %950 = load i16*, i16** %arrayidx1250, align 8
  %arrayidx1251 = getelementptr inbounds i16, i16* %950, i64 0
  store i16 0, i16* %arrayidx1251, align 2
  %951 = load i32, i32* %i, align 4
  %idxprom1252 = sext i32 %951 to i64
  %952 = load i32, i32* %j, align 4
  %idxprom1253 = sext i32 %952 to i64
  %953 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1254 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %953, i32 0, i32 5
  %954 = load i16****, i16***** %bottom_mv1254, align 8
  %arrayidx1255 = getelementptr inbounds i16***, i16**** %954, i64 1
  %955 = load i16***, i16**** %arrayidx1255, align 8
  %arrayidx1256 = getelementptr inbounds i16**, i16*** %955, i64 %idxprom1253
  %956 = load i16**, i16*** %arrayidx1256, align 8
  %arrayidx1257 = getelementptr inbounds i16*, i16** %956, i64 %idxprom1252
  %957 = load i16*, i16** %arrayidx1257, align 8
  %arrayidx1258 = getelementptr inbounds i16, i16* %957, i64 1
  store i16 0, i16* %arrayidx1258, align 2
  br label %if.end.1259

if.end.1259:                                      ; preds = %if.else.1230, %for.end.1150
  %958 = load i32, i32* %i, align 4
  %idxprom1260 = sext i32 %958 to i64
  %959 = load i32, i32* %j, align 4
  %mul1261 = mul nsw i32 2, %959
  %idxprom1262 = sext i32 %mul1261 to i64
  %960 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %field_frame1263 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %960, i32 0, i32 40
  %961 = load i8**, i8*** %field_frame1263, align 8
  %arrayidx1264 = getelementptr inbounds i8*, i8** %961, i64 %idxprom1262
  %962 = load i8*, i8** %arrayidx1264, align 8
  %arrayidx1265 = getelementptr inbounds i8, i8* %962, i64 %idxprom1260
  %963 = load i8, i8* %arrayidx1265, align 1
  %tobool1266 = icmp ne i8 %963, 0
  br i1 %tobool1266, label %if.end.1304, label %if.then.1267

if.then.1267:                                     ; preds = %if.end.1259
  %964 = load i32, i32* %i, align 4
  %idxprom1268 = sext i32 %964 to i64
  %965 = load i32, i32* %j, align 4
  %idxprom1269 = sext i32 %965 to i64
  %966 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1270 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %966, i32 0, i32 5
  %967 = load i16****, i16***** %bottom_mv1270, align 8
  %arrayidx1271 = getelementptr inbounds i16***, i16**** %967, i64 0
  %968 = load i16***, i16**** %arrayidx1271, align 8
  %arrayidx1272 = getelementptr inbounds i16**, i16*** %968, i64 %idxprom1269
  %969 = load i16**, i16*** %arrayidx1272, align 8
  %arrayidx1273 = getelementptr inbounds i16*, i16** %969, i64 %idxprom1268
  %970 = load i16*, i16** %arrayidx1273, align 8
  %arrayidx1274 = getelementptr inbounds i16, i16* %970, i64 1
  %971 = load i16, i16* %arrayidx1274, align 2
  %conv1275 = sext i16 %971 to i32
  %add1276 = add nsw i32 %conv1275, 1
  %shr1277 = ashr i32 %add1276, 1
  %conv1278 = trunc i32 %shr1277 to i16
  %972 = load i32, i32* %i, align 4
  %idxprom1279 = sext i32 %972 to i64
  %973 = load i32, i32* %j, align 4
  %idxprom1280 = sext i32 %973 to i64
  %974 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1281 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %974, i32 0, i32 5
  %975 = load i16****, i16***** %bottom_mv1281, align 8
  %arrayidx1282 = getelementptr inbounds i16***, i16**** %975, i64 0
  %976 = load i16***, i16**** %arrayidx1282, align 8
  %arrayidx1283 = getelementptr inbounds i16**, i16*** %976, i64 %idxprom1280
  %977 = load i16**, i16*** %arrayidx1283, align 8
  %arrayidx1284 = getelementptr inbounds i16*, i16** %977, i64 %idxprom1279
  %978 = load i16*, i16** %arrayidx1284, align 8
  %arrayidx1285 = getelementptr inbounds i16, i16* %978, i64 1
  store i16 %conv1278, i16* %arrayidx1285, align 2
  %979 = load i32, i32* %i, align 4
  %idxprom1286 = sext i32 %979 to i64
  %980 = load i32, i32* %j, align 4
  %idxprom1287 = sext i32 %980 to i64
  %981 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1288 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %981, i32 0, i32 5
  %982 = load i16****, i16***** %bottom_mv1288, align 8
  %arrayidx1289 = getelementptr inbounds i16***, i16**** %982, i64 1
  %983 = load i16***, i16**** %arrayidx1289, align 8
  %arrayidx1290 = getelementptr inbounds i16**, i16*** %983, i64 %idxprom1287
  %984 = load i16**, i16*** %arrayidx1290, align 8
  %arrayidx1291 = getelementptr inbounds i16*, i16** %984, i64 %idxprom1286
  %985 = load i16*, i16** %arrayidx1291, align 8
  %arrayidx1292 = getelementptr inbounds i16, i16* %985, i64 1
  %986 = load i16, i16* %arrayidx1292, align 2
  %conv1293 = sext i16 %986 to i32
  %add1294 = add nsw i32 %conv1293, 1
  %shr1295 = ashr i32 %add1294, 1
  %conv1296 = trunc i32 %shr1295 to i16
  %987 = load i32, i32* %i, align 4
  %idxprom1297 = sext i32 %987 to i64
  %988 = load i32, i32* %j, align 4
  %idxprom1298 = sext i32 %988 to i64
  %989 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %bottom_mv1299 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %989, i32 0, i32 5
  %990 = load i16****, i16***** %bottom_mv1299, align 8
  %arrayidx1300 = getelementptr inbounds i16***, i16**** %990, i64 1
  %991 = load i16***, i16**** %arrayidx1300, align 8
  %arrayidx1301 = getelementptr inbounds i16**, i16*** %991, i64 %idxprom1298
  %992 = load i16**, i16*** %arrayidx1301, align 8
  %arrayidx1302 = getelementptr inbounds i16*, i16** %992, i64 %idxprom1297
  %993 = load i16*, i16** %arrayidx1302, align 8
  %arrayidx1303 = getelementptr inbounds i16, i16* %993, i64 1
  store i16 %conv1296, i16* %arrayidx1303, align 2
  br label %if.end.1304

if.end.1304:                                      ; preds = %if.then.1267, %if.end.1259
  %arrayidx1305 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx1305, align 4
  %arrayidx1306 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx1306, align 4
  %994 = load i32, i32* %i, align 4
  %idxprom1307 = sext i32 %994 to i64
  %995 = load i32, i32* %j, align 4
  %idxprom1308 = sext i32 %995 to i64
  %996 = load %struct.storable_picture*, %struct.storable_picture** %fs_top, align 8
  %ref_id1309 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %996, i32 0, i32 37
  %997 = load i64***, i64**** %ref_id1309, align 8
  %arrayidx1310 = getelementptr inbounds i64**, i64*** %997, i64 0
  %998 = load i64**, i64*** %arrayidx1310, align 8
  %arrayidx1311 = getelementptr inbounds i64*, i64** %998, i64 %idxprom1308
  %999 = load i64*, i64** %arrayidx1311, align 8
  %arrayidx1312 = getelementptr inbounds i64, i64* %999, i64 %idxprom1307
  %1000 = load i64, i64* %arrayidx1312, align 8
  %cmp1313 = icmp slt i64 %1000, 0
  br i1 %cmp1313, label %land.lhs.true.1315, label %if.else.1319

land.lhs.true.1315:                               ; preds = %if.end.1304
  %1001 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp1316 = icmp sgt i32 %1001, 1
  br i1 %cmp1316, label %if.then.1318, label %if.else.1319

if.then.1318:                                     ; preds = %land.lhs.true.1315
  %1002 = load %struct.storable_picture*, %struct.storable_picture** %fs_top1, align 8
  store %struct.storable_picture* %1002, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.1320

if.else.1319:                                     ; preds = %land.lhs.true.1315, %if.end.1304
  %1003 = load %struct.storable_picture*, %struct.storable_picture** %fs_top, align 8
  store %struct.storable_picture* %1003, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.1320

if.end.1320:                                      ; preds = %if.else.1319, %if.then.1318
  %1004 = load i32, i32* %i, align 4
  %idxprom1321 = sext i32 %1004 to i64
  %1005 = load i32, i32* %j, align 4
  %idxprom1322 = sext i32 %1005 to i64
  %1006 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1323 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1006, i32 0, i32 37
  %1007 = load i64***, i64**** %ref_id1323, align 8
  %arrayidx1324 = getelementptr inbounds i64**, i64*** %1007, i64 0
  %1008 = load i64**, i64*** %arrayidx1324, align 8
  %arrayidx1325 = getelementptr inbounds i64*, i64** %1008, i64 %idxprom1322
  %1009 = load i64*, i64** %arrayidx1325, align 8
  %arrayidx1326 = getelementptr inbounds i64, i64* %1009, i64 %idxprom1321
  %1010 = load i64, i64* %arrayidx1326, align 8
  %cmp1327 = icmp ne i64 %1010, -1
  br i1 %cmp1327, label %if.then.1329, label %if.else.1445

if.then.1329:                                     ; preds = %if.end.1320
  store i32 0, i32* %iref, align 4
  br label %for.cond.1330

for.cond.1330:                                    ; preds = %for.inc.1363, %if.then.1329
  %1011 = load i32, i32* %iref, align 4
  %1012 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active1331 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1012, i32 0, i32 88
  %1013 = load i32, i32* %num_ref_idx_l0_active1331, align 4
  %mul1332 = mul nsw i32 2, %1013
  %1014 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 2), align 4
  %call1333 = call i32 @imin(i32 %mul1332, i32 %1014)
  %cmp1334 = icmp slt i32 %1011, %call1333
  br i1 %cmp1334, label %for.body.1336, label %for.end.1365

for.body.1336:                                    ; preds = %for.cond.1330
  %1015 = load i32, i32* %iref, align 4
  %idxprom1337 = sext i32 %1015 to i64
  %1016 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num1338 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1016, i32 0, i32 6
  %arrayidx1339 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num1338, i32 0, i64 2
  %arrayidx1340 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx1339, i32 0, i64 %idxprom1337
  %1017 = load i64, i64* %arrayidx1340, align 8
  %1018 = load i32, i32* %i, align 4
  %idxprom1341 = sext i32 %1018 to i64
  %1019 = load i32, i32* %j, align 4
  %idxprom1342 = sext i32 %1019 to i64
  %1020 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1343 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1020, i32 0, i32 37
  %1021 = load i64***, i64**** %ref_id1343, align 8
  %arrayidx1344 = getelementptr inbounds i64**, i64*** %1021, i64 0
  %1022 = load i64**, i64*** %arrayidx1344, align 8
  %arrayidx1345 = getelementptr inbounds i64*, i64** %1022, i64 %idxprom1342
  %1023 = load i64*, i64** %arrayidx1345, align 8
  %arrayidx1346 = getelementptr inbounds i64, i64* %1023, i64 %idxprom1341
  %1024 = load i64, i64* %arrayidx1346, align 8
  %cmp1347 = icmp eq i64 %1017, %1024
  br i1 %cmp1347, label %if.then.1349, label %if.end.1362

if.then.1349:                                     ; preds = %for.body.1336
  %1025 = load i32, i32* %iref, align 4
  %idxprom1350 = sext i32 %1025 to i64
  %1026 = load i32, i32* %loffset, align 4
  %idxprom1351 = sext i32 %1026 to i64
  %arrayidx1352 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1351
  %arrayidx1353 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1352, i32 0, i64 2
  %arrayidx1354 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1353, i32 0, i64 %idxprom1350
  %1027 = load i32, i32* %arrayidx1354, align 4
  %arrayidx1355 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %1027, i32* %arrayidx1355, align 4
  %1028 = load i32, i32* %iref, align 4
  %idxprom1356 = sext i32 %1028 to i64
  %1029 = load i32, i32* %loffset, align 4
  %idxprom1357 = sext i32 %1029 to i64
  %arrayidx1358 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1357
  %arrayidx1359 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1358, i32 0, i64 3
  %arrayidx1360 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1359, i32 0, i64 %idxprom1356
  %1030 = load i32, i32* %arrayidx1360, align 4
  %arrayidx1361 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %1030, i32* %arrayidx1361, align 4
  br label %for.end.1365

if.end.1362:                                      ; preds = %for.body.1336
  br label %for.inc.1363

for.inc.1363:                                     ; preds = %if.end.1362
  %1031 = load i32, i32* %iref, align 4
  %inc1364 = add nsw i32 %1031, 1
  store i32 %inc1364, i32* %iref, align 4
  br label %for.cond.1330

for.end.1365:                                     ; preds = %if.then.1349, %for.cond.1330
  %arrayidx1366 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1032 = load i32, i32* %arrayidx1366, align 4
  %1033 = load i32, i32* %i, align 4
  %idxprom1367 = sext i32 %1033 to i64
  %1034 = load i32, i32* %j, align 4
  %idxprom1368 = sext i32 %1034 to i64
  %1035 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1369 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1035, i32 0, i32 38
  %1036 = load i16****, i16***** %mv1369, align 8
  %arrayidx1370 = getelementptr inbounds i16***, i16**** %1036, i64 0
  %1037 = load i16***, i16**** %arrayidx1370, align 8
  %arrayidx1371 = getelementptr inbounds i16**, i16*** %1037, i64 %idxprom1368
  %1038 = load i16**, i16*** %arrayidx1371, align 8
  %arrayidx1372 = getelementptr inbounds i16*, i16** %1038, i64 %idxprom1367
  %1039 = load i16*, i16** %arrayidx1372, align 8
  %arrayidx1373 = getelementptr inbounds i16, i16* %1039, i64 0
  %1040 = load i16, i16* %arrayidx1373, align 2
  %conv1374 = sext i16 %1040 to i32
  %mul1375 = mul nsw i32 %1032, %conv1374
  %1041 = load i32, i32* %invmv_precision, align 4
  %call1376 = call i32 @rshift_rnd_sf(i32 %mul1375, i32 %1041)
  %call1377 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1376)
  %conv1378 = trunc i32 %call1377 to i16
  %1042 = load i32, i32* %i, align 4
  %idxprom1379 = sext i32 %1042 to i64
  %1043 = load i32, i32* %j, align 4
  %idxprom1380 = sext i32 %1043 to i64
  %1044 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1044, i32 0, i32 4
  %1045 = load i16****, i16***** %top_mv, align 8
  %arrayidx1381 = getelementptr inbounds i16***, i16**** %1045, i64 0
  %1046 = load i16***, i16**** %arrayidx1381, align 8
  %arrayidx1382 = getelementptr inbounds i16**, i16*** %1046, i64 %idxprom1380
  %1047 = load i16**, i16*** %arrayidx1382, align 8
  %arrayidx1383 = getelementptr inbounds i16*, i16** %1047, i64 %idxprom1379
  %1048 = load i16*, i16** %arrayidx1383, align 8
  %arrayidx1384 = getelementptr inbounds i16, i16* %1048, i64 0
  store i16 %conv1378, i16* %arrayidx1384, align 2
  %arrayidx1385 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1049 = load i32, i32* %arrayidx1385, align 4
  %1050 = load i32, i32* %i, align 4
  %idxprom1386 = sext i32 %1050 to i64
  %1051 = load i32, i32* %j, align 4
  %idxprom1387 = sext i32 %1051 to i64
  %1052 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1388 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1052, i32 0, i32 38
  %1053 = load i16****, i16***** %mv1388, align 8
  %arrayidx1389 = getelementptr inbounds i16***, i16**** %1053, i64 0
  %1054 = load i16***, i16**** %arrayidx1389, align 8
  %arrayidx1390 = getelementptr inbounds i16**, i16*** %1054, i64 %idxprom1387
  %1055 = load i16**, i16*** %arrayidx1390, align 8
  %arrayidx1391 = getelementptr inbounds i16*, i16** %1055, i64 %idxprom1386
  %1056 = load i16*, i16** %arrayidx1391, align 8
  %arrayidx1392 = getelementptr inbounds i16, i16* %1056, i64 1
  %1057 = load i16, i16* %arrayidx1392, align 2
  %conv1393 = sext i16 %1057 to i32
  %mul1394 = mul nsw i32 %1049, %conv1393
  %1058 = load i32, i32* %invmv_precision, align 4
  %call1395 = call i32 @rshift_rnd_sf(i32 %mul1394, i32 %1058)
  %call1396 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1395)
  %conv1397 = trunc i32 %call1396 to i16
  %1059 = load i32, i32* %i, align 4
  %idxprom1398 = sext i32 %1059 to i64
  %1060 = load i32, i32* %j, align 4
  %idxprom1399 = sext i32 %1060 to i64
  %1061 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1400 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1061, i32 0, i32 4
  %1062 = load i16****, i16***** %top_mv1400, align 8
  %arrayidx1401 = getelementptr inbounds i16***, i16**** %1062, i64 0
  %1063 = load i16***, i16**** %arrayidx1401, align 8
  %arrayidx1402 = getelementptr inbounds i16**, i16*** %1063, i64 %idxprom1399
  %1064 = load i16**, i16*** %arrayidx1402, align 8
  %arrayidx1403 = getelementptr inbounds i16*, i16** %1064, i64 %idxprom1398
  %1065 = load i16*, i16** %arrayidx1403, align 8
  %arrayidx1404 = getelementptr inbounds i16, i16* %1065, i64 1
  store i16 %conv1397, i16* %arrayidx1404, align 2
  %arrayidx1405 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1066 = load i32, i32* %arrayidx1405, align 4
  %1067 = load i32, i32* %i, align 4
  %idxprom1406 = sext i32 %1067 to i64
  %1068 = load i32, i32* %j, align 4
  %idxprom1407 = sext i32 %1068 to i64
  %1069 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1408 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1069, i32 0, i32 38
  %1070 = load i16****, i16***** %mv1408, align 8
  %arrayidx1409 = getelementptr inbounds i16***, i16**** %1070, i64 0
  %1071 = load i16***, i16**** %arrayidx1409, align 8
  %arrayidx1410 = getelementptr inbounds i16**, i16*** %1071, i64 %idxprom1407
  %1072 = load i16**, i16*** %arrayidx1410, align 8
  %arrayidx1411 = getelementptr inbounds i16*, i16** %1072, i64 %idxprom1406
  %1073 = load i16*, i16** %arrayidx1411, align 8
  %arrayidx1412 = getelementptr inbounds i16, i16* %1073, i64 0
  %1074 = load i16, i16* %arrayidx1412, align 2
  %conv1413 = sext i16 %1074 to i32
  %mul1414 = mul nsw i32 %1066, %conv1413
  %1075 = load i32, i32* %invmv_precision, align 4
  %call1415 = call i32 @rshift_rnd_sf(i32 %mul1414, i32 %1075)
  %call1416 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1415)
  %conv1417 = trunc i32 %call1416 to i16
  %1076 = load i32, i32* %i, align 4
  %idxprom1418 = sext i32 %1076 to i64
  %1077 = load i32, i32* %j, align 4
  %idxprom1419 = sext i32 %1077 to i64
  %1078 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1420 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1078, i32 0, i32 4
  %1079 = load i16****, i16***** %top_mv1420, align 8
  %arrayidx1421 = getelementptr inbounds i16***, i16**** %1079, i64 1
  %1080 = load i16***, i16**** %arrayidx1421, align 8
  %arrayidx1422 = getelementptr inbounds i16**, i16*** %1080, i64 %idxprom1419
  %1081 = load i16**, i16*** %arrayidx1422, align 8
  %arrayidx1423 = getelementptr inbounds i16*, i16** %1081, i64 %idxprom1418
  %1082 = load i16*, i16** %arrayidx1423, align 8
  %arrayidx1424 = getelementptr inbounds i16, i16* %1082, i64 0
  store i16 %conv1417, i16* %arrayidx1424, align 2
  %arrayidx1425 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1083 = load i32, i32* %arrayidx1425, align 4
  %1084 = load i32, i32* %i, align 4
  %idxprom1426 = sext i32 %1084 to i64
  %1085 = load i32, i32* %j, align 4
  %idxprom1427 = sext i32 %1085 to i64
  %1086 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1428 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1086, i32 0, i32 38
  %1087 = load i16****, i16***** %mv1428, align 8
  %arrayidx1429 = getelementptr inbounds i16***, i16**** %1087, i64 0
  %1088 = load i16***, i16**** %arrayidx1429, align 8
  %arrayidx1430 = getelementptr inbounds i16**, i16*** %1088, i64 %idxprom1427
  %1089 = load i16**, i16*** %arrayidx1430, align 8
  %arrayidx1431 = getelementptr inbounds i16*, i16** %1089, i64 %idxprom1426
  %1090 = load i16*, i16** %arrayidx1431, align 8
  %arrayidx1432 = getelementptr inbounds i16, i16* %1090, i64 1
  %1091 = load i16, i16* %arrayidx1432, align 2
  %conv1433 = sext i16 %1091 to i32
  %mul1434 = mul nsw i32 %1083, %conv1433
  %1092 = load i32, i32* %invmv_precision, align 4
  %call1435 = call i32 @rshift_rnd_sf(i32 %mul1434, i32 %1092)
  %call1436 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1435)
  %conv1437 = trunc i32 %call1436 to i16
  %1093 = load i32, i32* %i, align 4
  %idxprom1438 = sext i32 %1093 to i64
  %1094 = load i32, i32* %j, align 4
  %idxprom1439 = sext i32 %1094 to i64
  %1095 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1440 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1095, i32 0, i32 4
  %1096 = load i16****, i16***** %top_mv1440, align 8
  %arrayidx1441 = getelementptr inbounds i16***, i16**** %1096, i64 1
  %1097 = load i16***, i16**** %arrayidx1441, align 8
  %arrayidx1442 = getelementptr inbounds i16**, i16*** %1097, i64 %idxprom1439
  %1098 = load i16**, i16*** %arrayidx1442, align 8
  %arrayidx1443 = getelementptr inbounds i16*, i16** %1098, i64 %idxprom1438
  %1099 = load i16*, i16** %arrayidx1443, align 8
  %arrayidx1444 = getelementptr inbounds i16, i16* %1099, i64 1
  store i16 %conv1437, i16* %arrayidx1444, align 2
  br label %if.end.1474

if.else.1445:                                     ; preds = %if.end.1320
  %1100 = load i32, i32* %i, align 4
  %idxprom1446 = sext i32 %1100 to i64
  %1101 = load i32, i32* %j, align 4
  %idxprom1447 = sext i32 %1101 to i64
  %1102 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1448 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1102, i32 0, i32 4
  %1103 = load i16****, i16***** %top_mv1448, align 8
  %arrayidx1449 = getelementptr inbounds i16***, i16**** %1103, i64 0
  %1104 = load i16***, i16**** %arrayidx1449, align 8
  %arrayidx1450 = getelementptr inbounds i16**, i16*** %1104, i64 %idxprom1447
  %1105 = load i16**, i16*** %arrayidx1450, align 8
  %arrayidx1451 = getelementptr inbounds i16*, i16** %1105, i64 %idxprom1446
  %1106 = load i16*, i16** %arrayidx1451, align 8
  %arrayidx1452 = getelementptr inbounds i16, i16* %1106, i64 0
  store i16 0, i16* %arrayidx1452, align 2
  %1107 = load i32, i32* %i, align 4
  %idxprom1453 = sext i32 %1107 to i64
  %1108 = load i32, i32* %j, align 4
  %idxprom1454 = sext i32 %1108 to i64
  %1109 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1455 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1109, i32 0, i32 4
  %1110 = load i16****, i16***** %top_mv1455, align 8
  %arrayidx1456 = getelementptr inbounds i16***, i16**** %1110, i64 0
  %1111 = load i16***, i16**** %arrayidx1456, align 8
  %arrayidx1457 = getelementptr inbounds i16**, i16*** %1111, i64 %idxprom1454
  %1112 = load i16**, i16*** %arrayidx1457, align 8
  %arrayidx1458 = getelementptr inbounds i16*, i16** %1112, i64 %idxprom1453
  %1113 = load i16*, i16** %arrayidx1458, align 8
  %arrayidx1459 = getelementptr inbounds i16, i16* %1113, i64 1
  store i16 0, i16* %arrayidx1459, align 2
  %1114 = load i32, i32* %i, align 4
  %idxprom1460 = sext i32 %1114 to i64
  %1115 = load i32, i32* %j, align 4
  %idxprom1461 = sext i32 %1115 to i64
  %1116 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1462 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1116, i32 0, i32 4
  %1117 = load i16****, i16***** %top_mv1462, align 8
  %arrayidx1463 = getelementptr inbounds i16***, i16**** %1117, i64 1
  %1118 = load i16***, i16**** %arrayidx1463, align 8
  %arrayidx1464 = getelementptr inbounds i16**, i16*** %1118, i64 %idxprom1461
  %1119 = load i16**, i16*** %arrayidx1464, align 8
  %arrayidx1465 = getelementptr inbounds i16*, i16** %1119, i64 %idxprom1460
  %1120 = load i16*, i16** %arrayidx1465, align 8
  %arrayidx1466 = getelementptr inbounds i16, i16* %1120, i64 0
  store i16 0, i16* %arrayidx1466, align 2
  %1121 = load i32, i32* %i, align 4
  %idxprom1467 = sext i32 %1121 to i64
  %1122 = load i32, i32* %j, align 4
  %idxprom1468 = sext i32 %1122 to i64
  %1123 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1469 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1123, i32 0, i32 4
  %1124 = load i16****, i16***** %top_mv1469, align 8
  %arrayidx1470 = getelementptr inbounds i16***, i16**** %1124, i64 1
  %1125 = load i16***, i16**** %arrayidx1470, align 8
  %arrayidx1471 = getelementptr inbounds i16**, i16*** %1125, i64 %idxprom1468
  %1126 = load i16**, i16*** %arrayidx1471, align 8
  %arrayidx1472 = getelementptr inbounds i16*, i16** %1126, i64 %idxprom1467
  %1127 = load i16*, i16** %arrayidx1472, align 8
  %arrayidx1473 = getelementptr inbounds i16, i16* %1127, i64 1
  store i16 0, i16* %arrayidx1473, align 2
  br label %if.end.1474

if.end.1474:                                      ; preds = %if.else.1445, %for.end.1365
  %1128 = load i32, i32* %i, align 4
  %idxprom1475 = sext i32 %1128 to i64
  %1129 = load i32, i32* %j, align 4
  %mul1476 = mul nsw i32 2, %1129
  %idxprom1477 = sext i32 %mul1476 to i64
  %1130 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %field_frame1478 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1130, i32 0, i32 40
  %1131 = load i8**, i8*** %field_frame1478, align 8
  %arrayidx1479 = getelementptr inbounds i8*, i8** %1131, i64 %idxprom1477
  %1132 = load i8*, i8** %arrayidx1479, align 8
  %arrayidx1480 = getelementptr inbounds i8, i8* %1132, i64 %idxprom1475
  %1133 = load i8, i8* %arrayidx1480, align 1
  %tobool1481 = icmp ne i8 %1133, 0
  br i1 %tobool1481, label %if.end.1517, label %if.then.1482

if.then.1482:                                     ; preds = %if.end.1474
  %1134 = load i32, i32* %i, align 4
  %idxprom1483 = sext i32 %1134 to i64
  %1135 = load i32, i32* %j, align 4
  %idxprom1484 = sext i32 %1135 to i64
  %1136 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1485 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1136, i32 0, i32 4
  %1137 = load i16****, i16***** %top_mv1485, align 8
  %arrayidx1486 = getelementptr inbounds i16***, i16**** %1137, i64 0
  %1138 = load i16***, i16**** %arrayidx1486, align 8
  %arrayidx1487 = getelementptr inbounds i16**, i16*** %1138, i64 %idxprom1484
  %1139 = load i16**, i16*** %arrayidx1487, align 8
  %arrayidx1488 = getelementptr inbounds i16*, i16** %1139, i64 %idxprom1483
  %1140 = load i16*, i16** %arrayidx1488, align 8
  %arrayidx1489 = getelementptr inbounds i16, i16* %1140, i64 1
  %1141 = load i16, i16* %arrayidx1489, align 2
  %conv1490 = sext i16 %1141 to i32
  %call1491 = call i32 @rshift_rnd_sf(i32 %conv1490, i32 1)
  %conv1492 = trunc i32 %call1491 to i16
  %1142 = load i32, i32* %i, align 4
  %idxprom1493 = sext i32 %1142 to i64
  %1143 = load i32, i32* %j, align 4
  %idxprom1494 = sext i32 %1143 to i64
  %1144 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1495 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1144, i32 0, i32 4
  %1145 = load i16****, i16***** %top_mv1495, align 8
  %arrayidx1496 = getelementptr inbounds i16***, i16**** %1145, i64 0
  %1146 = load i16***, i16**** %arrayidx1496, align 8
  %arrayidx1497 = getelementptr inbounds i16**, i16*** %1146, i64 %idxprom1494
  %1147 = load i16**, i16*** %arrayidx1497, align 8
  %arrayidx1498 = getelementptr inbounds i16*, i16** %1147, i64 %idxprom1493
  %1148 = load i16*, i16** %arrayidx1498, align 8
  %arrayidx1499 = getelementptr inbounds i16, i16* %1148, i64 1
  store i16 %conv1492, i16* %arrayidx1499, align 2
  %1149 = load i32, i32* %i, align 4
  %idxprom1500 = sext i32 %1149 to i64
  %1150 = load i32, i32* %j, align 4
  %idxprom1501 = sext i32 %1150 to i64
  %1151 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1502 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1151, i32 0, i32 4
  %1152 = load i16****, i16***** %top_mv1502, align 8
  %arrayidx1503 = getelementptr inbounds i16***, i16**** %1152, i64 1
  %1153 = load i16***, i16**** %arrayidx1503, align 8
  %arrayidx1504 = getelementptr inbounds i16**, i16*** %1153, i64 %idxprom1501
  %1154 = load i16**, i16*** %arrayidx1504, align 8
  %arrayidx1505 = getelementptr inbounds i16*, i16** %1154, i64 %idxprom1500
  %1155 = load i16*, i16** %arrayidx1505, align 8
  %arrayidx1506 = getelementptr inbounds i16, i16* %1155, i64 1
  %1156 = load i16, i16* %arrayidx1506, align 2
  %conv1507 = sext i16 %1156 to i32
  %call1508 = call i32 @rshift_rnd_sf(i32 %conv1507, i32 1)
  %conv1509 = trunc i32 %call1508 to i16
  %1157 = load i32, i32* %i, align 4
  %idxprom1510 = sext i32 %1157 to i64
  %1158 = load i32, i32* %j, align 4
  %idxprom1511 = sext i32 %1158 to i64
  %1159 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %top_mv1512 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1159, i32 0, i32 4
  %1160 = load i16****, i16***** %top_mv1512, align 8
  %arrayidx1513 = getelementptr inbounds i16***, i16**** %1160, i64 1
  %1161 = load i16***, i16**** %arrayidx1513, align 8
  %arrayidx1514 = getelementptr inbounds i16**, i16*** %1161, i64 %idxprom1511
  %1162 = load i16**, i16*** %arrayidx1514, align 8
  %arrayidx1515 = getelementptr inbounds i16*, i16** %1162, i64 %idxprom1510
  %1163 = load i16*, i16** %arrayidx1515, align 8
  %arrayidx1516 = getelementptr inbounds i16, i16* %1163, i64 1
  store i16 %conv1509, i16* %arrayidx1516, align 2
  br label %if.end.1517

if.end.1517:                                      ; preds = %if.then.1482, %if.end.1474
  br label %if.end.1518

if.end.1518:                                      ; preds = %if.end.1517, %if.end.1088
  br label %for.inc.1519

for.inc.1519:                                     ; preds = %if.end.1518
  %1164 = load i32, i32* %i, align 4
  %inc1520 = add nsw i32 %1164, 1
  store i32 %inc1520, i32* %i, align 4
  br label %for.cond.910

for.end.1521:                                     ; preds = %for.cond.910
  br label %for.inc.1522

for.inc.1522:                                     ; preds = %for.end.1521
  %1165 = load i32, i32* %j, align 4
  %inc1523 = add nsw i32 %1165, 1
  store i32 %inc1523, i32* %j, align 4
  br label %for.cond.904

for.end.1524:                                     ; preds = %for.cond.904
  br label %if.end.1525

if.end.1525:                                      ; preds = %for.end.1524, %lor.lhs.false
  %1166 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag1526 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1166, i32 0, i32 25
  %1167 = load i32, i32* %frame_mbs_only_flag1526, align 4
  %tobool1527 = icmp ne i32 %1167, 0
  br i1 %tobool1527, label %if.end.1836, label %if.then.1528

if.then.1528:                                     ; preds = %if.end.1525
  %1168 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure1529 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1168, i32 0, i32 6
  %1169 = load i32, i32* %structure1529, align 4
  %tobool1530 = icmp ne i32 %1169, 0
  br i1 %tobool1530, label %if.end.1835, label %if.then.1531

if.then.1531:                                     ; preds = %if.then.1528
  store i32 0, i32* %j, align 4
  br label %for.cond.1532

for.cond.1532:                                    ; preds = %for.inc.1832, %if.then.1531
  %1170 = load i32, i32* %j, align 4
  %1171 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_y1533 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1171, i32 0, i32 19
  %1172 = load i32, i32* %size_y1533, align 4
  %shr1534 = ashr i32 %1172, 2
  %cmp1535 = icmp slt i32 %1170, %shr1534
  br i1 %cmp1535, label %for.body.1537, label %for.end.1834

for.body.1537:                                    ; preds = %for.cond.1532
  %1173 = load i32, i32* %j, align 4
  %shr1538 = ashr i32 %1173, 1
  store i32 %shr1538, i32* %jj, align 4
  %1174 = load i32, i32* %j, align 4
  %shr1539 = ashr i32 %1174, 1
  %1175 = load i32, i32* %j, align 4
  %shr1540 = ashr i32 %1175, 3
  %shl = shl i32 %shr1540, 2
  %add1541 = add nsw i32 %shr1539, %shl
  store i32 %add1541, i32* %jdiv, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1542

for.cond.1542:                                    ; preds = %for.inc.1829, %for.body.1537
  %1176 = load i32, i32* %i, align 4
  %1177 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_x1543 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1177, i32 0, i32 18
  %1178 = load i32, i32* %size_x1543, align 4
  %shr1544 = ashr i32 %1178, 2
  %cmp1545 = icmp slt i32 %1176, %shr1544
  br i1 %cmp1545, label %for.body.1547, label %for.end.1831

for.body.1547:                                    ; preds = %for.cond.1542
  %1179 = load i32, i32* %i, align 4
  %idxprom1548 = sext i32 %1179 to i64
  %1180 = load i32, i32* %j, align 4
  %idxprom1549 = sext i32 %1180 to i64
  %1181 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %field_frame1550 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1181, i32 0, i32 40
  %1182 = load i8**, i8*** %field_frame1550, align 8
  %arrayidx1551 = getelementptr inbounds i8*, i8** %1182, i64 %idxprom1549
  %1183 = load i8*, i8** %arrayidx1551, align 8
  %arrayidx1552 = getelementptr inbounds i8, i8* %1183, i64 %idxprom1548
  %1184 = load i8, i8* %arrayidx1552, align 1
  %tobool1553 = icmp ne i8 %1184, 0
  br i1 %tobool1553, label %if.then.1554, label %if.end.1828

if.then.1554:                                     ; preds = %for.body.1547
  %arrayidx1555 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx1555, align 4
  %arrayidx1556 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx1556, align 4
  %1185 = load i32, i32* %i, align 4
  %idxprom1557 = sext i32 %1185 to i64
  %1186 = load i32, i32* %jdiv, align 4
  %idxprom1558 = sext i32 %1186 to i64
  %1187 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id1559 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1187, i32 0, i32 37
  %1188 = load i64***, i64**** %ref_id1559, align 8
  %arrayidx1560 = getelementptr inbounds i64**, i64*** %1188, i64 0
  %1189 = load i64**, i64*** %arrayidx1560, align 8
  %arrayidx1561 = getelementptr inbounds i64*, i64** %1189, i64 %idxprom1558
  %1190 = load i64*, i64** %arrayidx1561, align 8
  %arrayidx1562 = getelementptr inbounds i64, i64* %1190, i64 %idxprom1557
  %1191 = load i64, i64* %arrayidx1562, align 8
  %cmp1563 = icmp slt i64 %1191, 0
  br i1 %cmp1563, label %land.lhs.true.1565, label %if.else.1569

land.lhs.true.1565:                               ; preds = %if.then.1554
  %1192 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp1566 = icmp sgt i32 %1192, 1
  br i1 %cmp1566, label %if.then.1568, label %if.else.1569

if.then.1568:                                     ; preds = %land.lhs.true.1565
  %1193 = load %struct.storable_picture*, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %1193, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.1570

if.else.1569:                                     ; preds = %land.lhs.true.1565, %if.then.1554
  %1194 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  store %struct.storable_picture* %1194, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.1570

if.end.1570:                                      ; preds = %if.else.1569, %if.then.1568
  %1195 = load i32, i32* %i, align 4
  %idxprom1571 = sext i32 %1195 to i64
  %1196 = load i32, i32* %jdiv, align 4
  %idxprom1572 = sext i32 %1196 to i64
  %1197 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1573 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1197, i32 0, i32 37
  %1198 = load i64***, i64**** %ref_id1573, align 8
  %arrayidx1574 = getelementptr inbounds i64**, i64*** %1198, i64 0
  %1199 = load i64**, i64*** %arrayidx1574, align 8
  %arrayidx1575 = getelementptr inbounds i64*, i64** %1199, i64 %idxprom1572
  %1200 = load i64*, i64** %arrayidx1575, align 8
  %arrayidx1576 = getelementptr inbounds i64, i64* %1200, i64 %idxprom1571
  %1201 = load i64, i64* %arrayidx1576, align 8
  %cmp1577 = icmp ne i64 %1201, -1
  br i1 %cmp1577, label %if.then.1579, label %if.else.1798

if.then.1579:                                     ; preds = %if.end.1570
  store i32 0, i32* %iref, align 4
  br label %for.cond.1580

for.cond.1580:                                    ; preds = %for.inc.1612, %if.then.1579
  %1202 = load i32, i32* %iref, align 4
  %1203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active1581 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1203, i32 0, i32 88
  %1204 = load i32, i32* %num_ref_idx_l0_active1581, align 4
  %1205 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %call1582 = call i32 @imin(i32 %1204, i32 %1205)
  %cmp1583 = icmp slt i32 %1202, %call1582
  br i1 %cmp1583, label %for.body.1585, label %for.end.1614

for.body.1585:                                    ; preds = %for.cond.1580
  %1206 = load i32, i32* %iref, align 4
  %idxprom1586 = sext i32 %1206 to i64
  %1207 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num1587 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1207, i32 0, i32 6
  %arrayidx1588 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num1587, i32 0, i64 0
  %arrayidx1589 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx1588, i32 0, i64 %idxprom1586
  %1208 = load i64, i64* %arrayidx1589, align 8
  %1209 = load i32, i32* %i, align 4
  %idxprom1590 = sext i32 %1209 to i64
  %1210 = load i32, i32* %jdiv, align 4
  %idxprom1591 = sext i32 %1210 to i64
  %1211 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1592 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1211, i32 0, i32 37
  %1212 = load i64***, i64**** %ref_id1592, align 8
  %arrayidx1593 = getelementptr inbounds i64**, i64*** %1212, i64 0
  %1213 = load i64**, i64*** %arrayidx1593, align 8
  %arrayidx1594 = getelementptr inbounds i64*, i64** %1213, i64 %idxprom1591
  %1214 = load i64*, i64** %arrayidx1594, align 8
  %arrayidx1595 = getelementptr inbounds i64, i64* %1214, i64 %idxprom1590
  %1215 = load i64, i64* %arrayidx1595, align 8
  %cmp1596 = icmp eq i64 %1208, %1215
  br i1 %cmp1596, label %if.then.1598, label %if.end.1611

if.then.1598:                                     ; preds = %for.body.1585
  %1216 = load i32, i32* %iref, align 4
  %idxprom1599 = sext i32 %1216 to i64
  %1217 = load i32, i32* %loffset, align 4
  %idxprom1600 = sext i32 %1217 to i64
  %arrayidx1601 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1600
  %arrayidx1602 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1601, i32 0, i64 0
  %arrayidx1603 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1602, i32 0, i64 %idxprom1599
  %1218 = load i32, i32* %arrayidx1603, align 4
  %arrayidx1604 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %1218, i32* %arrayidx1604, align 4
  %1219 = load i32, i32* %iref, align 4
  %idxprom1605 = sext i32 %1219 to i64
  %1220 = load i32, i32* %loffset, align 4
  %idxprom1606 = sext i32 %1220 to i64
  %arrayidx1607 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1606
  %arrayidx1608 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1607, i32 0, i64 1
  %arrayidx1609 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1608, i32 0, i64 %idxprom1605
  %1221 = load i32, i32* %arrayidx1609, align 4
  %arrayidx1610 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %1221, i32* %arrayidx1610, align 4
  br label %for.end.1614

if.end.1611:                                      ; preds = %for.body.1585
  br label %for.inc.1612

for.inc.1612:                                     ; preds = %if.end.1611
  %1222 = load i32, i32* %iref, align 4
  %inc1613 = add nsw i32 %1222, 1
  store i32 %inc1613, i32* %iref, align 4
  br label %for.cond.1580

for.end.1614:                                     ; preds = %if.then.1598, %for.cond.1580
  %1223 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc1615 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1223, i32 0, i32 1
  %1224 = load i32, i32* %poc1615, align 4
  %1225 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %bottom_field1616 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1225, i32 0, i32 42
  %1226 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field1616, align 8
  %poc1617 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1226, i32 0, i32 1
  %1227 = load i32, i32* %poc1617, align 4
  %sub1618 = sub nsw i32 %1224, %1227
  %call1619 = call i32 @iabs(i32 %sub1618)
  %1228 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %poc1620 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1228, i32 0, i32 1
  %1229 = load i32, i32* %poc1620, align 4
  %1230 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %top_field1621 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1230, i32 0, i32 41
  %1231 = load %struct.storable_picture*, %struct.storable_picture** %top_field1621, align 8
  %poc1622 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1231, i32 0, i32 1
  %1232 = load i32, i32* %poc1622, align 4
  %sub1623 = sub nsw i32 %1229, %1232
  %call1624 = call i32 @iabs(i32 %sub1623)
  %cmp1625 = icmp sgt i32 %call1619, %call1624
  br i1 %cmp1625, label %if.then.1627, label %if.else.1712

if.then.1627:                                     ; preds = %for.end.1614
  %arrayidx1628 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1233 = load i32, i32* %arrayidx1628, align 4
  %1234 = load i32, i32* %i, align 4
  %idxprom1629 = sext i32 %1234 to i64
  %1235 = load i32, i32* %jj, align 4
  %idxprom1630 = sext i32 %1235 to i64
  %1236 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %top_field1631 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1236, i32 0, i32 41
  %1237 = load %struct.storable_picture*, %struct.storable_picture** %top_field1631, align 8
  %mv1632 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1237, i32 0, i32 38
  %1238 = load i16****, i16***** %mv1632, align 8
  %arrayidx1633 = getelementptr inbounds i16***, i16**** %1238, i64 0
  %1239 = load i16***, i16**** %arrayidx1633, align 8
  %arrayidx1634 = getelementptr inbounds i16**, i16*** %1239, i64 %idxprom1630
  %1240 = load i16**, i16*** %arrayidx1634, align 8
  %arrayidx1635 = getelementptr inbounds i16*, i16** %1240, i64 %idxprom1629
  %1241 = load i16*, i16** %arrayidx1635, align 8
  %arrayidx1636 = getelementptr inbounds i16, i16* %1241, i64 0
  %1242 = load i16, i16* %arrayidx1636, align 2
  %conv1637 = sext i16 %1242 to i32
  %mul1638 = mul nsw i32 %1233, %conv1637
  %1243 = load i32, i32* %invmv_precision, align 4
  %call1639 = call i32 @rshift_rnd_sf(i32 %mul1638, i32 %1243)
  %call1640 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1639)
  %conv1641 = trunc i32 %call1640 to i16
  %1244 = load i32, i32* %i, align 4
  %idxprom1642 = sext i32 %1244 to i64
  %1245 = load i32, i32* %j, align 4
  %idxprom1643 = sext i32 %1245 to i64
  %1246 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1644 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1246, i32 0, i32 3
  %1247 = load i16****, i16***** %mv1644, align 8
  %arrayidx1645 = getelementptr inbounds i16***, i16**** %1247, i64 0
  %1248 = load i16***, i16**** %arrayidx1645, align 8
  %arrayidx1646 = getelementptr inbounds i16**, i16*** %1248, i64 %idxprom1643
  %1249 = load i16**, i16*** %arrayidx1646, align 8
  %arrayidx1647 = getelementptr inbounds i16*, i16** %1249, i64 %idxprom1642
  %1250 = load i16*, i16** %arrayidx1647, align 8
  %arrayidx1648 = getelementptr inbounds i16, i16* %1250, i64 0
  store i16 %conv1641, i16* %arrayidx1648, align 2
  %arrayidx1649 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1251 = load i32, i32* %arrayidx1649, align 4
  %1252 = load i32, i32* %i, align 4
  %idxprom1650 = sext i32 %1252 to i64
  %1253 = load i32, i32* %jj, align 4
  %idxprom1651 = sext i32 %1253 to i64
  %1254 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %top_field1652 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1254, i32 0, i32 41
  %1255 = load %struct.storable_picture*, %struct.storable_picture** %top_field1652, align 8
  %mv1653 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1255, i32 0, i32 38
  %1256 = load i16****, i16***** %mv1653, align 8
  %arrayidx1654 = getelementptr inbounds i16***, i16**** %1256, i64 0
  %1257 = load i16***, i16**** %arrayidx1654, align 8
  %arrayidx1655 = getelementptr inbounds i16**, i16*** %1257, i64 %idxprom1651
  %1258 = load i16**, i16*** %arrayidx1655, align 8
  %arrayidx1656 = getelementptr inbounds i16*, i16** %1258, i64 %idxprom1650
  %1259 = load i16*, i16** %arrayidx1656, align 8
  %arrayidx1657 = getelementptr inbounds i16, i16* %1259, i64 1
  %1260 = load i16, i16* %arrayidx1657, align 2
  %conv1658 = sext i16 %1260 to i32
  %mul1659 = mul nsw i32 %1251, %conv1658
  %1261 = load i32, i32* %invmv_precision, align 4
  %call1660 = call i32 @rshift_rnd_sf(i32 %mul1659, i32 %1261)
  %call1661 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1660)
  %conv1662 = trunc i32 %call1661 to i16
  %1262 = load i32, i32* %i, align 4
  %idxprom1663 = sext i32 %1262 to i64
  %1263 = load i32, i32* %j, align 4
  %idxprom1664 = sext i32 %1263 to i64
  %1264 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1665 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1264, i32 0, i32 3
  %1265 = load i16****, i16***** %mv1665, align 8
  %arrayidx1666 = getelementptr inbounds i16***, i16**** %1265, i64 0
  %1266 = load i16***, i16**** %arrayidx1666, align 8
  %arrayidx1667 = getelementptr inbounds i16**, i16*** %1266, i64 %idxprom1664
  %1267 = load i16**, i16*** %arrayidx1667, align 8
  %arrayidx1668 = getelementptr inbounds i16*, i16** %1267, i64 %idxprom1663
  %1268 = load i16*, i16** %arrayidx1668, align 8
  %arrayidx1669 = getelementptr inbounds i16, i16* %1268, i64 1
  store i16 %conv1662, i16* %arrayidx1669, align 2
  %arrayidx1670 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1269 = load i32, i32* %arrayidx1670, align 4
  %1270 = load i32, i32* %i, align 4
  %idxprom1671 = sext i32 %1270 to i64
  %1271 = load i32, i32* %jj, align 4
  %idxprom1672 = sext i32 %1271 to i64
  %1272 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %top_field1673 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1272, i32 0, i32 41
  %1273 = load %struct.storable_picture*, %struct.storable_picture** %top_field1673, align 8
  %mv1674 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1273, i32 0, i32 38
  %1274 = load i16****, i16***** %mv1674, align 8
  %arrayidx1675 = getelementptr inbounds i16***, i16**** %1274, i64 0
  %1275 = load i16***, i16**** %arrayidx1675, align 8
  %arrayidx1676 = getelementptr inbounds i16**, i16*** %1275, i64 %idxprom1672
  %1276 = load i16**, i16*** %arrayidx1676, align 8
  %arrayidx1677 = getelementptr inbounds i16*, i16** %1276, i64 %idxprom1671
  %1277 = load i16*, i16** %arrayidx1677, align 8
  %arrayidx1678 = getelementptr inbounds i16, i16* %1277, i64 0
  %1278 = load i16, i16* %arrayidx1678, align 2
  %conv1679 = sext i16 %1278 to i32
  %mul1680 = mul nsw i32 %1269, %conv1679
  %1279 = load i32, i32* %invmv_precision, align 4
  %call1681 = call i32 @rshift_rnd_sf(i32 %mul1680, i32 %1279)
  %call1682 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1681)
  %conv1683 = trunc i32 %call1682 to i16
  %1280 = load i32, i32* %i, align 4
  %idxprom1684 = sext i32 %1280 to i64
  %1281 = load i32, i32* %j, align 4
  %idxprom1685 = sext i32 %1281 to i64
  %1282 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1686 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1282, i32 0, i32 3
  %1283 = load i16****, i16***** %mv1686, align 8
  %arrayidx1687 = getelementptr inbounds i16***, i16**** %1283, i64 1
  %1284 = load i16***, i16**** %arrayidx1687, align 8
  %arrayidx1688 = getelementptr inbounds i16**, i16*** %1284, i64 %idxprom1685
  %1285 = load i16**, i16*** %arrayidx1688, align 8
  %arrayidx1689 = getelementptr inbounds i16*, i16** %1285, i64 %idxprom1684
  %1286 = load i16*, i16** %arrayidx1689, align 8
  %arrayidx1690 = getelementptr inbounds i16, i16* %1286, i64 0
  store i16 %conv1683, i16* %arrayidx1690, align 2
  %arrayidx1691 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1287 = load i32, i32* %arrayidx1691, align 4
  %1288 = load i32, i32* %i, align 4
  %idxprom1692 = sext i32 %1288 to i64
  %1289 = load i32, i32* %jj, align 4
  %idxprom1693 = sext i32 %1289 to i64
  %1290 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %top_field1694 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1290, i32 0, i32 41
  %1291 = load %struct.storable_picture*, %struct.storable_picture** %top_field1694, align 8
  %mv1695 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1291, i32 0, i32 38
  %1292 = load i16****, i16***** %mv1695, align 8
  %arrayidx1696 = getelementptr inbounds i16***, i16**** %1292, i64 0
  %1293 = load i16***, i16**** %arrayidx1696, align 8
  %arrayidx1697 = getelementptr inbounds i16**, i16*** %1293, i64 %idxprom1693
  %1294 = load i16**, i16*** %arrayidx1697, align 8
  %arrayidx1698 = getelementptr inbounds i16*, i16** %1294, i64 %idxprom1692
  %1295 = load i16*, i16** %arrayidx1698, align 8
  %arrayidx1699 = getelementptr inbounds i16, i16* %1295, i64 1
  %1296 = load i16, i16* %arrayidx1699, align 2
  %conv1700 = sext i16 %1296 to i32
  %mul1701 = mul nsw i32 %1287, %conv1700
  %1297 = load i32, i32* %invmv_precision, align 4
  %call1702 = call i32 @rshift_rnd_sf(i32 %mul1701, i32 %1297)
  %call1703 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1702)
  %conv1704 = trunc i32 %call1703 to i16
  %1298 = load i32, i32* %i, align 4
  %idxprom1705 = sext i32 %1298 to i64
  %1299 = load i32, i32* %j, align 4
  %idxprom1706 = sext i32 %1299 to i64
  %1300 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1707 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1300, i32 0, i32 3
  %1301 = load i16****, i16***** %mv1707, align 8
  %arrayidx1708 = getelementptr inbounds i16***, i16**** %1301, i64 1
  %1302 = load i16***, i16**** %arrayidx1708, align 8
  %arrayidx1709 = getelementptr inbounds i16**, i16*** %1302, i64 %idxprom1706
  %1303 = load i16**, i16*** %arrayidx1709, align 8
  %arrayidx1710 = getelementptr inbounds i16*, i16** %1303, i64 %idxprom1705
  %1304 = load i16*, i16** %arrayidx1710, align 8
  %arrayidx1711 = getelementptr inbounds i16, i16* %1304, i64 1
  store i16 %conv1704, i16* %arrayidx1711, align 2
  br label %if.end.1797

if.else.1712:                                     ; preds = %for.end.1614
  %arrayidx1713 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1305 = load i32, i32* %arrayidx1713, align 4
  %1306 = load i32, i32* %i, align 4
  %idxprom1714 = sext i32 %1306 to i64
  %1307 = load i32, i32* %jj, align 4
  %idxprom1715 = sext i32 %1307 to i64
  %1308 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %bottom_field1716 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1308, i32 0, i32 42
  %1309 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field1716, align 8
  %mv1717 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1309, i32 0, i32 38
  %1310 = load i16****, i16***** %mv1717, align 8
  %arrayidx1718 = getelementptr inbounds i16***, i16**** %1310, i64 0
  %1311 = load i16***, i16**** %arrayidx1718, align 8
  %arrayidx1719 = getelementptr inbounds i16**, i16*** %1311, i64 %idxprom1715
  %1312 = load i16**, i16*** %arrayidx1719, align 8
  %arrayidx1720 = getelementptr inbounds i16*, i16** %1312, i64 %idxprom1714
  %1313 = load i16*, i16** %arrayidx1720, align 8
  %arrayidx1721 = getelementptr inbounds i16, i16* %1313, i64 0
  %1314 = load i16, i16* %arrayidx1721, align 2
  %conv1722 = sext i16 %1314 to i32
  %mul1723 = mul nsw i32 %1305, %conv1722
  %1315 = load i32, i32* %invmv_precision, align 4
  %call1724 = call i32 @rshift_rnd_sf(i32 %mul1723, i32 %1315)
  %call1725 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1724)
  %conv1726 = trunc i32 %call1725 to i16
  %1316 = load i32, i32* %i, align 4
  %idxprom1727 = sext i32 %1316 to i64
  %1317 = load i32, i32* %j, align 4
  %idxprom1728 = sext i32 %1317 to i64
  %1318 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1729 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1318, i32 0, i32 3
  %1319 = load i16****, i16***** %mv1729, align 8
  %arrayidx1730 = getelementptr inbounds i16***, i16**** %1319, i64 0
  %1320 = load i16***, i16**** %arrayidx1730, align 8
  %arrayidx1731 = getelementptr inbounds i16**, i16*** %1320, i64 %idxprom1728
  %1321 = load i16**, i16*** %arrayidx1731, align 8
  %arrayidx1732 = getelementptr inbounds i16*, i16** %1321, i64 %idxprom1727
  %1322 = load i16*, i16** %arrayidx1732, align 8
  %arrayidx1733 = getelementptr inbounds i16, i16* %1322, i64 0
  store i16 %conv1726, i16* %arrayidx1733, align 2
  %arrayidx1734 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1323 = load i32, i32* %arrayidx1734, align 4
  %1324 = load i32, i32* %i, align 4
  %idxprom1735 = sext i32 %1324 to i64
  %1325 = load i32, i32* %jj, align 4
  %idxprom1736 = sext i32 %1325 to i64
  %1326 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %bottom_field1737 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1326, i32 0, i32 42
  %1327 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field1737, align 8
  %mv1738 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1327, i32 0, i32 38
  %1328 = load i16****, i16***** %mv1738, align 8
  %arrayidx1739 = getelementptr inbounds i16***, i16**** %1328, i64 0
  %1329 = load i16***, i16**** %arrayidx1739, align 8
  %arrayidx1740 = getelementptr inbounds i16**, i16*** %1329, i64 %idxprom1736
  %1330 = load i16**, i16*** %arrayidx1740, align 8
  %arrayidx1741 = getelementptr inbounds i16*, i16** %1330, i64 %idxprom1735
  %1331 = load i16*, i16** %arrayidx1741, align 8
  %arrayidx1742 = getelementptr inbounds i16, i16* %1331, i64 1
  %1332 = load i16, i16* %arrayidx1742, align 2
  %conv1743 = sext i16 %1332 to i32
  %mul1744 = mul nsw i32 %1323, %conv1743
  %1333 = load i32, i32* %invmv_precision, align 4
  %call1745 = call i32 @rshift_rnd_sf(i32 %mul1744, i32 %1333)
  %call1746 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1745)
  %conv1747 = trunc i32 %call1746 to i16
  %1334 = load i32, i32* %i, align 4
  %idxprom1748 = sext i32 %1334 to i64
  %1335 = load i32, i32* %j, align 4
  %idxprom1749 = sext i32 %1335 to i64
  %1336 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1750 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1336, i32 0, i32 3
  %1337 = load i16****, i16***** %mv1750, align 8
  %arrayidx1751 = getelementptr inbounds i16***, i16**** %1337, i64 0
  %1338 = load i16***, i16**** %arrayidx1751, align 8
  %arrayidx1752 = getelementptr inbounds i16**, i16*** %1338, i64 %idxprom1749
  %1339 = load i16**, i16*** %arrayidx1752, align 8
  %arrayidx1753 = getelementptr inbounds i16*, i16** %1339, i64 %idxprom1748
  %1340 = load i16*, i16** %arrayidx1753, align 8
  %arrayidx1754 = getelementptr inbounds i16, i16* %1340, i64 1
  store i16 %conv1747, i16* %arrayidx1754, align 2
  %arrayidx1755 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1341 = load i32, i32* %arrayidx1755, align 4
  %1342 = load i32, i32* %i, align 4
  %idxprom1756 = sext i32 %1342 to i64
  %1343 = load i32, i32* %jj, align 4
  %idxprom1757 = sext i32 %1343 to i64
  %1344 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %bottom_field1758 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1344, i32 0, i32 42
  %1345 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field1758, align 8
  %mv1759 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1345, i32 0, i32 38
  %1346 = load i16****, i16***** %mv1759, align 8
  %arrayidx1760 = getelementptr inbounds i16***, i16**** %1346, i64 0
  %1347 = load i16***, i16**** %arrayidx1760, align 8
  %arrayidx1761 = getelementptr inbounds i16**, i16*** %1347, i64 %idxprom1757
  %1348 = load i16**, i16*** %arrayidx1761, align 8
  %arrayidx1762 = getelementptr inbounds i16*, i16** %1348, i64 %idxprom1756
  %1349 = load i16*, i16** %arrayidx1762, align 8
  %arrayidx1763 = getelementptr inbounds i16, i16* %1349, i64 0
  %1350 = load i16, i16* %arrayidx1763, align 2
  %conv1764 = sext i16 %1350 to i32
  %mul1765 = mul nsw i32 %1341, %conv1764
  %1351 = load i32, i32* %invmv_precision, align 4
  %call1766 = call i32 @rshift_rnd_sf(i32 %mul1765, i32 %1351)
  %call1767 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1766)
  %conv1768 = trunc i32 %call1767 to i16
  %1352 = load i32, i32* %i, align 4
  %idxprom1769 = sext i32 %1352 to i64
  %1353 = load i32, i32* %j, align 4
  %idxprom1770 = sext i32 %1353 to i64
  %1354 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1771 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1354, i32 0, i32 3
  %1355 = load i16****, i16***** %mv1771, align 8
  %arrayidx1772 = getelementptr inbounds i16***, i16**** %1355, i64 1
  %1356 = load i16***, i16**** %arrayidx1772, align 8
  %arrayidx1773 = getelementptr inbounds i16**, i16*** %1356, i64 %idxprom1770
  %1357 = load i16**, i16*** %arrayidx1773, align 8
  %arrayidx1774 = getelementptr inbounds i16*, i16** %1357, i64 %idxprom1769
  %1358 = load i16*, i16** %arrayidx1774, align 8
  %arrayidx1775 = getelementptr inbounds i16, i16* %1358, i64 0
  store i16 %conv1768, i16* %arrayidx1775, align 2
  %arrayidx1776 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1359 = load i32, i32* %arrayidx1776, align 4
  %1360 = load i32, i32* %i, align 4
  %idxprom1777 = sext i32 %1360 to i64
  %1361 = load i32, i32* %jj, align 4
  %idxprom1778 = sext i32 %1361 to i64
  %1362 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %bottom_field1779 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1362, i32 0, i32 42
  %1363 = load %struct.storable_picture*, %struct.storable_picture** %bottom_field1779, align 8
  %mv1780 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1363, i32 0, i32 38
  %1364 = load i16****, i16***** %mv1780, align 8
  %arrayidx1781 = getelementptr inbounds i16***, i16**** %1364, i64 0
  %1365 = load i16***, i16**** %arrayidx1781, align 8
  %arrayidx1782 = getelementptr inbounds i16**, i16*** %1365, i64 %idxprom1778
  %1366 = load i16**, i16*** %arrayidx1782, align 8
  %arrayidx1783 = getelementptr inbounds i16*, i16** %1366, i64 %idxprom1777
  %1367 = load i16*, i16** %arrayidx1783, align 8
  %arrayidx1784 = getelementptr inbounds i16, i16* %1367, i64 1
  %1368 = load i16, i16* %arrayidx1784, align 2
  %conv1785 = sext i16 %1368 to i32
  %mul1786 = mul nsw i32 %1359, %conv1785
  %1369 = load i32, i32* %invmv_precision, align 4
  %call1787 = call i32 @rshift_rnd_sf(i32 %mul1786, i32 %1369)
  %call1788 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1787)
  %conv1789 = trunc i32 %call1788 to i16
  %1370 = load i32, i32* %i, align 4
  %idxprom1790 = sext i32 %1370 to i64
  %1371 = load i32, i32* %j, align 4
  %idxprom1791 = sext i32 %1371 to i64
  %1372 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1792 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1372, i32 0, i32 3
  %1373 = load i16****, i16***** %mv1792, align 8
  %arrayidx1793 = getelementptr inbounds i16***, i16**** %1373, i64 1
  %1374 = load i16***, i16**** %arrayidx1793, align 8
  %arrayidx1794 = getelementptr inbounds i16**, i16*** %1374, i64 %idxprom1791
  %1375 = load i16**, i16*** %arrayidx1794, align 8
  %arrayidx1795 = getelementptr inbounds i16*, i16** %1375, i64 %idxprom1790
  %1376 = load i16*, i16** %arrayidx1795, align 8
  %arrayidx1796 = getelementptr inbounds i16, i16* %1376, i64 1
  store i16 %conv1789, i16* %arrayidx1796, align 2
  br label %if.end.1797

if.end.1797:                                      ; preds = %if.else.1712, %if.then.1627
  br label %if.end.1827

if.else.1798:                                     ; preds = %if.end.1570
  %1377 = load i32, i32* %i, align 4
  %idxprom1799 = sext i32 %1377 to i64
  %1378 = load i32, i32* %j, align 4
  %idxprom1800 = sext i32 %1378 to i64
  %1379 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1801 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1379, i32 0, i32 3
  %1380 = load i16****, i16***** %mv1801, align 8
  %arrayidx1802 = getelementptr inbounds i16***, i16**** %1380, i64 0
  %1381 = load i16***, i16**** %arrayidx1802, align 8
  %arrayidx1803 = getelementptr inbounds i16**, i16*** %1381, i64 %idxprom1800
  %1382 = load i16**, i16*** %arrayidx1803, align 8
  %arrayidx1804 = getelementptr inbounds i16*, i16** %1382, i64 %idxprom1799
  %1383 = load i16*, i16** %arrayidx1804, align 8
  %arrayidx1805 = getelementptr inbounds i16, i16* %1383, i64 0
  store i16 0, i16* %arrayidx1805, align 2
  %1384 = load i32, i32* %i, align 4
  %idxprom1806 = sext i32 %1384 to i64
  %1385 = load i32, i32* %j, align 4
  %idxprom1807 = sext i32 %1385 to i64
  %1386 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1808 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1386, i32 0, i32 3
  %1387 = load i16****, i16***** %mv1808, align 8
  %arrayidx1809 = getelementptr inbounds i16***, i16**** %1387, i64 0
  %1388 = load i16***, i16**** %arrayidx1809, align 8
  %arrayidx1810 = getelementptr inbounds i16**, i16*** %1388, i64 %idxprom1807
  %1389 = load i16**, i16*** %arrayidx1810, align 8
  %arrayidx1811 = getelementptr inbounds i16*, i16** %1389, i64 %idxprom1806
  %1390 = load i16*, i16** %arrayidx1811, align 8
  %arrayidx1812 = getelementptr inbounds i16, i16* %1390, i64 1
  store i16 0, i16* %arrayidx1812, align 2
  %1391 = load i32, i32* %i, align 4
  %idxprom1813 = sext i32 %1391 to i64
  %1392 = load i32, i32* %j, align 4
  %idxprom1814 = sext i32 %1392 to i64
  %1393 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1815 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1393, i32 0, i32 3
  %1394 = load i16****, i16***** %mv1815, align 8
  %arrayidx1816 = getelementptr inbounds i16***, i16**** %1394, i64 1
  %1395 = load i16***, i16**** %arrayidx1816, align 8
  %arrayidx1817 = getelementptr inbounds i16**, i16*** %1395, i64 %idxprom1814
  %1396 = load i16**, i16*** %arrayidx1817, align 8
  %arrayidx1818 = getelementptr inbounds i16*, i16** %1396, i64 %idxprom1813
  %1397 = load i16*, i16** %arrayidx1818, align 8
  %arrayidx1819 = getelementptr inbounds i16, i16* %1397, i64 0
  store i16 0, i16* %arrayidx1819, align 2
  %1398 = load i32, i32* %i, align 4
  %idxprom1820 = sext i32 %1398 to i64
  %1399 = load i32, i32* %j, align 4
  %idxprom1821 = sext i32 %1399 to i64
  %1400 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1822 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1400, i32 0, i32 3
  %1401 = load i16****, i16***** %mv1822, align 8
  %arrayidx1823 = getelementptr inbounds i16***, i16**** %1401, i64 1
  %1402 = load i16***, i16**** %arrayidx1823, align 8
  %arrayidx1824 = getelementptr inbounds i16**, i16*** %1402, i64 %idxprom1821
  %1403 = load i16**, i16*** %arrayidx1824, align 8
  %arrayidx1825 = getelementptr inbounds i16*, i16** %1403, i64 %idxprom1820
  %1404 = load i16*, i16** %arrayidx1825, align 8
  %arrayidx1826 = getelementptr inbounds i16, i16* %1404, i64 1
  store i16 0, i16* %arrayidx1826, align 2
  br label %if.end.1827

if.end.1827:                                      ; preds = %if.else.1798, %if.end.1797
  br label %if.end.1828

if.end.1828:                                      ; preds = %if.end.1827, %for.body.1547
  br label %for.inc.1829

for.inc.1829:                                     ; preds = %if.end.1828
  %1405 = load i32, i32* %i, align 4
  %inc1830 = add nsw i32 %1405, 1
  store i32 %inc1830, i32* %i, align 4
  br label %for.cond.1542

for.end.1831:                                     ; preds = %for.cond.1542
  br label %for.inc.1832

for.inc.1832:                                     ; preds = %for.end.1831
  %1406 = load i32, i32* %j, align 4
  %inc1833 = add nsw i32 %1406, 1
  store i32 %inc1833, i32* %j, align 4
  br label %for.cond.1532

for.end.1834:                                     ; preds = %for.cond.1532
  br label %if.end.1835

if.end.1835:                                      ; preds = %for.end.1834, %if.then.1528
  br label %if.end.1836

if.end.1836:                                      ; preds = %if.end.1835, %if.end.1525
  %1407 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag1837 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1407, i32 0, i32 25
  %1408 = load i32, i32* %frame_mbs_only_flag1837, align 4
  %tobool1838 = icmp ne i32 %1408, 0
  br i1 %tobool1838, label %if.then.1839, label %if.end.2028

if.then.1839:                                     ; preds = %if.end.1836
  store i32 0, i32* %j, align 4
  br label %for.cond.1840

for.cond.1840:                                    ; preds = %for.inc.2025, %if.then.1839
  %1409 = load i32, i32* %j, align 4
  %1410 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_y1841 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1410, i32 0, i32 19
  %1411 = load i32, i32* %size_y1841, align 4
  %shr1842 = ashr i32 %1411, 2
  %cmp1843 = icmp slt i32 %1409, %shr1842
  br i1 %cmp1843, label %for.body.1845, label %for.end.2027

for.body.1845:                                    ; preds = %for.cond.1840
  store i32 0, i32* %i, align 4
  br label %for.cond.1846

for.cond.1846:                                    ; preds = %for.inc.2022, %for.body.1845
  %1412 = load i32, i32* %i, align 4
  %1413 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_x1847 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1413, i32 0, i32 18
  %1414 = load i32, i32* %size_x1847, align 4
  %shr1848 = ashr i32 %1414, 2
  %cmp1849 = icmp slt i32 %1412, %shr1848
  br i1 %cmp1849, label %for.body.1851, label %for.end.2024

for.body.1851:                                    ; preds = %for.cond.1846
  %arrayidx1852 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 256, i32* %arrayidx1852, align 4
  %arrayidx1853 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 0, i32* %arrayidx1853, align 4
  %1415 = load i32, i32* %i, align 4
  %idxprom1854 = sext i32 %1415 to i64
  %1416 = load i32, i32* %j, align 4
  %idxprom1855 = sext i32 %1416 to i64
  %1417 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %ref_id1856 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1417, i32 0, i32 37
  %1418 = load i64***, i64**** %ref_id1856, align 8
  %arrayidx1857 = getelementptr inbounds i64**, i64*** %1418, i64 0
  %1419 = load i64**, i64*** %arrayidx1857, align 8
  %arrayidx1858 = getelementptr inbounds i64*, i64** %1419, i64 %idxprom1855
  %1420 = load i64*, i64** %arrayidx1858, align 8
  %arrayidx1859 = getelementptr inbounds i64, i64* %1420, i64 %idxprom1854
  %1421 = load i64, i64* %arrayidx1859, align 8
  %cmp1860 = icmp slt i64 %1421, 0
  br i1 %cmp1860, label %land.lhs.true.1862, label %if.else.1866

land.lhs.true.1862:                               ; preds = %for.body.1851
  %1422 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %cmp1863 = icmp sgt i32 %1422, 1
  br i1 %cmp1863, label %if.then.1865, label %if.else.1866

if.then.1865:                                     ; preds = %land.lhs.true.1862
  %1423 = load %struct.storable_picture*, %struct.storable_picture** %fs1, align 8
  store %struct.storable_picture* %1423, %struct.storable_picture** %fsx, align 8
  store i32 1, i32* %loffset, align 4
  br label %if.end.1867

if.else.1866:                                     ; preds = %land.lhs.true.1862, %for.body.1851
  %1424 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  store %struct.storable_picture* %1424, %struct.storable_picture** %fsx, align 8
  store i32 0, i32* %loffset, align 4
  br label %if.end.1867

if.end.1867:                                      ; preds = %if.else.1866, %if.then.1865
  %1425 = load i32, i32* %i, align 4
  %idxprom1868 = sext i32 %1425 to i64
  %1426 = load i32, i32* %j, align 4
  %idxprom1869 = sext i32 %1426 to i64
  %1427 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1870 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1427, i32 0, i32 37
  %1428 = load i64***, i64**** %ref_id1870, align 8
  %arrayidx1871 = getelementptr inbounds i64**, i64*** %1428, i64 0
  %1429 = load i64**, i64*** %arrayidx1871, align 8
  %arrayidx1872 = getelementptr inbounds i64*, i64** %1429, i64 %idxprom1869
  %1430 = load i64*, i64** %arrayidx1872, align 8
  %arrayidx1873 = getelementptr inbounds i64, i64* %1430, i64 %idxprom1868
  %1431 = load i64, i64* %arrayidx1873, align 8
  %cmp1874 = icmp ne i64 %1431, -1
  br i1 %cmp1874, label %if.then.1876, label %if.else.1992

if.then.1876:                                     ; preds = %if.end.1867
  store i32 0, i32* %iref, align 4
  br label %for.cond.1877

for.cond.1877:                                    ; preds = %for.inc.1909, %if.then.1876
  %1432 = load i32, i32* %iref, align 4
  %1433 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %num_ref_idx_l0_active1878 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1433, i32 0, i32 88
  %1434 = load i32, i32* %num_ref_idx_l0_active1878, align 4
  %1435 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @listXsize, i32 0, i64 0), align 4
  %call1879 = call i32 @imin(i32 %1434, i32 %1435)
  %cmp1880 = icmp slt i32 %1432, %call1879
  br i1 %cmp1880, label %for.body.1882, label %for.end.1911

for.body.1882:                                    ; preds = %for.cond.1877
  %1436 = load i32, i32* %iref, align 4
  %idxprom1883 = sext i32 %1436 to i64
  %1437 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %ref_pic_num1884 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1437, i32 0, i32 6
  %arrayidx1885 = getelementptr inbounds [6 x [33 x i64]], [6 x [33 x i64]]* %ref_pic_num1884, i32 0, i64 0
  %arrayidx1886 = getelementptr inbounds [33 x i64], [33 x i64]* %arrayidx1885, i32 0, i64 %idxprom1883
  %1438 = load i64, i64* %arrayidx1886, align 8
  %1439 = load i32, i32* %i, align 4
  %idxprom1887 = sext i32 %1439 to i64
  %1440 = load i32, i32* %j, align 4
  %idxprom1888 = sext i32 %1440 to i64
  %1441 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %ref_id1889 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1441, i32 0, i32 37
  %1442 = load i64***, i64**** %ref_id1889, align 8
  %arrayidx1890 = getelementptr inbounds i64**, i64*** %1442, i64 0
  %1443 = load i64**, i64*** %arrayidx1890, align 8
  %arrayidx1891 = getelementptr inbounds i64*, i64** %1443, i64 %idxprom1888
  %1444 = load i64*, i64** %arrayidx1891, align 8
  %arrayidx1892 = getelementptr inbounds i64, i64* %1444, i64 %idxprom1887
  %1445 = load i64, i64* %arrayidx1892, align 8
  %cmp1893 = icmp eq i64 %1438, %1445
  br i1 %cmp1893, label %if.then.1895, label %if.end.1908

if.then.1895:                                     ; preds = %for.body.1882
  %1446 = load i32, i32* %iref, align 4
  %idxprom1896 = sext i32 %1446 to i64
  %1447 = load i32, i32* %loffset, align 4
  %idxprom1897 = sext i32 %1447 to i64
  %arrayidx1898 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1897
  %arrayidx1899 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1898, i32 0, i64 0
  %arrayidx1900 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1899, i32 0, i64 %idxprom1896
  %1448 = load i32, i32* %arrayidx1900, align 4
  %arrayidx1901 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  store i32 %1448, i32* %arrayidx1901, align 4
  %1449 = load i32, i32* %iref, align 4
  %idxprom1902 = sext i32 %1449 to i64
  %1450 = load i32, i32* %loffset, align 4
  %idxprom1903 = sext i32 %1450 to i64
  %arrayidx1904 = getelementptr inbounds [2 x [6 x [33 x i32]]], [2 x [6 x [33 x i32]]]* %epzs_scale, i32 0, i64 %idxprom1903
  %arrayidx1905 = getelementptr inbounds [6 x [33 x i32]], [6 x [33 x i32]]* %arrayidx1904, i32 0, i64 1
  %arrayidx1906 = getelementptr inbounds [33 x i32], [33 x i32]* %arrayidx1905, i32 0, i64 %idxprom1902
  %1451 = load i32, i32* %arrayidx1906, align 4
  %arrayidx1907 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  store i32 %1451, i32* %arrayidx1907, align 4
  br label %for.end.1911

if.end.1908:                                      ; preds = %for.body.1882
  br label %for.inc.1909

for.inc.1909:                                     ; preds = %if.end.1908
  %1452 = load i32, i32* %iref, align 4
  %inc1910 = add nsw i32 %1452, 1
  store i32 %inc1910, i32* %iref, align 4
  br label %for.cond.1877

for.end.1911:                                     ; preds = %if.then.1895, %for.cond.1877
  %arrayidx1912 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1453 = load i32, i32* %arrayidx1912, align 4
  %1454 = load i32, i32* %i, align 4
  %idxprom1913 = sext i32 %1454 to i64
  %1455 = load i32, i32* %j, align 4
  %idxprom1914 = sext i32 %1455 to i64
  %1456 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1915 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1456, i32 0, i32 38
  %1457 = load i16****, i16***** %mv1915, align 8
  %arrayidx1916 = getelementptr inbounds i16***, i16**** %1457, i64 0
  %1458 = load i16***, i16**** %arrayidx1916, align 8
  %arrayidx1917 = getelementptr inbounds i16**, i16*** %1458, i64 %idxprom1914
  %1459 = load i16**, i16*** %arrayidx1917, align 8
  %arrayidx1918 = getelementptr inbounds i16*, i16** %1459, i64 %idxprom1913
  %1460 = load i16*, i16** %arrayidx1918, align 8
  %arrayidx1919 = getelementptr inbounds i16, i16* %1460, i64 0
  %1461 = load i16, i16* %arrayidx1919, align 2
  %conv1920 = sext i16 %1461 to i32
  %mul1921 = mul nsw i32 %1453, %conv1920
  %1462 = load i32, i32* %invmv_precision, align 4
  %call1922 = call i32 @rshift_rnd_sf(i32 %mul1921, i32 %1462)
  %call1923 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1922)
  %conv1924 = trunc i32 %call1923 to i16
  %1463 = load i32, i32* %i, align 4
  %idxprom1925 = sext i32 %1463 to i64
  %1464 = load i32, i32* %j, align 4
  %idxprom1926 = sext i32 %1464 to i64
  %1465 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1927 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1465, i32 0, i32 3
  %1466 = load i16****, i16***** %mv1927, align 8
  %arrayidx1928 = getelementptr inbounds i16***, i16**** %1466, i64 0
  %1467 = load i16***, i16**** %arrayidx1928, align 8
  %arrayidx1929 = getelementptr inbounds i16**, i16*** %1467, i64 %idxprom1926
  %1468 = load i16**, i16*** %arrayidx1929, align 8
  %arrayidx1930 = getelementptr inbounds i16*, i16** %1468, i64 %idxprom1925
  %1469 = load i16*, i16** %arrayidx1930, align 8
  %arrayidx1931 = getelementptr inbounds i16, i16* %1469, i64 0
  store i16 %conv1924, i16* %arrayidx1931, align 2
  %arrayidx1932 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 0
  %1470 = load i32, i32* %arrayidx1932, align 4
  %1471 = load i32, i32* %i, align 4
  %idxprom1933 = sext i32 %1471 to i64
  %1472 = load i32, i32* %j, align 4
  %idxprom1934 = sext i32 %1472 to i64
  %1473 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1935 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1473, i32 0, i32 38
  %1474 = load i16****, i16***** %mv1935, align 8
  %arrayidx1936 = getelementptr inbounds i16***, i16**** %1474, i64 0
  %1475 = load i16***, i16**** %arrayidx1936, align 8
  %arrayidx1937 = getelementptr inbounds i16**, i16*** %1475, i64 %idxprom1934
  %1476 = load i16**, i16*** %arrayidx1937, align 8
  %arrayidx1938 = getelementptr inbounds i16*, i16** %1476, i64 %idxprom1933
  %1477 = load i16*, i16** %arrayidx1938, align 8
  %arrayidx1939 = getelementptr inbounds i16, i16* %1477, i64 1
  %1478 = load i16, i16* %arrayidx1939, align 2
  %conv1940 = sext i16 %1478 to i32
  %mul1941 = mul nsw i32 %1470, %conv1940
  %1479 = load i32, i32* %invmv_precision, align 4
  %call1942 = call i32 @rshift_rnd_sf(i32 %mul1941, i32 %1479)
  %call1943 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1942)
  %conv1944 = trunc i32 %call1943 to i16
  %1480 = load i32, i32* %i, align 4
  %idxprom1945 = sext i32 %1480 to i64
  %1481 = load i32, i32* %j, align 4
  %idxprom1946 = sext i32 %1481 to i64
  %1482 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1947 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1482, i32 0, i32 3
  %1483 = load i16****, i16***** %mv1947, align 8
  %arrayidx1948 = getelementptr inbounds i16***, i16**** %1483, i64 0
  %1484 = load i16***, i16**** %arrayidx1948, align 8
  %arrayidx1949 = getelementptr inbounds i16**, i16*** %1484, i64 %idxprom1946
  %1485 = load i16**, i16*** %arrayidx1949, align 8
  %arrayidx1950 = getelementptr inbounds i16*, i16** %1485, i64 %idxprom1945
  %1486 = load i16*, i16** %arrayidx1950, align 8
  %arrayidx1951 = getelementptr inbounds i16, i16* %1486, i64 1
  store i16 %conv1944, i16* %arrayidx1951, align 2
  %arrayidx1952 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1487 = load i32, i32* %arrayidx1952, align 4
  %1488 = load i32, i32* %i, align 4
  %idxprom1953 = sext i32 %1488 to i64
  %1489 = load i32, i32* %j, align 4
  %idxprom1954 = sext i32 %1489 to i64
  %1490 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1955 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1490, i32 0, i32 38
  %1491 = load i16****, i16***** %mv1955, align 8
  %arrayidx1956 = getelementptr inbounds i16***, i16**** %1491, i64 0
  %1492 = load i16***, i16**** %arrayidx1956, align 8
  %arrayidx1957 = getelementptr inbounds i16**, i16*** %1492, i64 %idxprom1954
  %1493 = load i16**, i16*** %arrayidx1957, align 8
  %arrayidx1958 = getelementptr inbounds i16*, i16** %1493, i64 %idxprom1953
  %1494 = load i16*, i16** %arrayidx1958, align 8
  %arrayidx1959 = getelementptr inbounds i16, i16* %1494, i64 0
  %1495 = load i16, i16* %arrayidx1959, align 2
  %conv1960 = sext i16 %1495 to i32
  %mul1961 = mul nsw i32 %1487, %conv1960
  %1496 = load i32, i32* %invmv_precision, align 4
  %call1962 = call i32 @rshift_rnd_sf(i32 %mul1961, i32 %1496)
  %call1963 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1962)
  %conv1964 = trunc i32 %call1963 to i16
  %1497 = load i32, i32* %i, align 4
  %idxprom1965 = sext i32 %1497 to i64
  %1498 = load i32, i32* %j, align 4
  %idxprom1966 = sext i32 %1498 to i64
  %1499 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1967 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1499, i32 0, i32 3
  %1500 = load i16****, i16***** %mv1967, align 8
  %arrayidx1968 = getelementptr inbounds i16***, i16**** %1500, i64 1
  %1501 = load i16***, i16**** %arrayidx1968, align 8
  %arrayidx1969 = getelementptr inbounds i16**, i16*** %1501, i64 %idxprom1966
  %1502 = load i16**, i16*** %arrayidx1969, align 8
  %arrayidx1970 = getelementptr inbounds i16*, i16** %1502, i64 %idxprom1965
  %1503 = load i16*, i16** %arrayidx1970, align 8
  %arrayidx1971 = getelementptr inbounds i16, i16* %1503, i64 0
  store i16 %conv1964, i16* %arrayidx1971, align 2
  %arrayidx1972 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv_scale, i32 0, i64 1
  %1504 = load i32, i32* %arrayidx1972, align 4
  %1505 = load i32, i32* %i, align 4
  %idxprom1973 = sext i32 %1505 to i64
  %1506 = load i32, i32* %j, align 4
  %idxprom1974 = sext i32 %1506 to i64
  %1507 = load %struct.storable_picture*, %struct.storable_picture** %fsx, align 8
  %mv1975 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1507, i32 0, i32 38
  %1508 = load i16****, i16***** %mv1975, align 8
  %arrayidx1976 = getelementptr inbounds i16***, i16**** %1508, i64 0
  %1509 = load i16***, i16**** %arrayidx1976, align 8
  %arrayidx1977 = getelementptr inbounds i16**, i16*** %1509, i64 %idxprom1974
  %1510 = load i16**, i16*** %arrayidx1977, align 8
  %arrayidx1978 = getelementptr inbounds i16*, i16** %1510, i64 %idxprom1973
  %1511 = load i16*, i16** %arrayidx1978, align 8
  %arrayidx1979 = getelementptr inbounds i16, i16* %1511, i64 1
  %1512 = load i16, i16* %arrayidx1979, align 2
  %conv1980 = sext i16 %1512 to i32
  %mul1981 = mul nsw i32 %1504, %conv1980
  %1513 = load i32, i32* %invmv_precision, align 4
  %call1982 = call i32 @rshift_rnd_sf(i32 %mul1981, i32 %1513)
  %call1983 = call i32 @iClip3(i32 -32768, i32 32767, i32 %call1982)
  %conv1984 = trunc i32 %call1983 to i16
  %1514 = load i32, i32* %i, align 4
  %idxprom1985 = sext i32 %1514 to i64
  %1515 = load i32, i32* %j, align 4
  %idxprom1986 = sext i32 %1515 to i64
  %1516 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1987 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1516, i32 0, i32 3
  %1517 = load i16****, i16***** %mv1987, align 8
  %arrayidx1988 = getelementptr inbounds i16***, i16**** %1517, i64 1
  %1518 = load i16***, i16**** %arrayidx1988, align 8
  %arrayidx1989 = getelementptr inbounds i16**, i16*** %1518, i64 %idxprom1986
  %1519 = load i16**, i16*** %arrayidx1989, align 8
  %arrayidx1990 = getelementptr inbounds i16*, i16** %1519, i64 %idxprom1985
  %1520 = load i16*, i16** %arrayidx1990, align 8
  %arrayidx1991 = getelementptr inbounds i16, i16* %1520, i64 1
  store i16 %conv1984, i16* %arrayidx1991, align 2
  br label %if.end.2021

if.else.1992:                                     ; preds = %if.end.1867
  %1521 = load i32, i32* %i, align 4
  %idxprom1993 = sext i32 %1521 to i64
  %1522 = load i32, i32* %j, align 4
  %idxprom1994 = sext i32 %1522 to i64
  %1523 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv1995 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1523, i32 0, i32 3
  %1524 = load i16****, i16***** %mv1995, align 8
  %arrayidx1996 = getelementptr inbounds i16***, i16**** %1524, i64 0
  %1525 = load i16***, i16**** %arrayidx1996, align 8
  %arrayidx1997 = getelementptr inbounds i16**, i16*** %1525, i64 %idxprom1994
  %1526 = load i16**, i16*** %arrayidx1997, align 8
  %arrayidx1998 = getelementptr inbounds i16*, i16** %1526, i64 %idxprom1993
  %1527 = load i16*, i16** %arrayidx1998, align 8
  %arrayidx1999 = getelementptr inbounds i16, i16* %1527, i64 0
  store i16 0, i16* %arrayidx1999, align 2
  %1528 = load i32, i32* %i, align 4
  %idxprom2000 = sext i32 %1528 to i64
  %1529 = load i32, i32* %j, align 4
  %idxprom2001 = sext i32 %1529 to i64
  %1530 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2002 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1530, i32 0, i32 3
  %1531 = load i16****, i16***** %mv2002, align 8
  %arrayidx2003 = getelementptr inbounds i16***, i16**** %1531, i64 0
  %1532 = load i16***, i16**** %arrayidx2003, align 8
  %arrayidx2004 = getelementptr inbounds i16**, i16*** %1532, i64 %idxprom2001
  %1533 = load i16**, i16*** %arrayidx2004, align 8
  %arrayidx2005 = getelementptr inbounds i16*, i16** %1533, i64 %idxprom2000
  %1534 = load i16*, i16** %arrayidx2005, align 8
  %arrayidx2006 = getelementptr inbounds i16, i16* %1534, i64 1
  store i16 0, i16* %arrayidx2006, align 2
  %1535 = load i32, i32* %i, align 4
  %idxprom2007 = sext i32 %1535 to i64
  %1536 = load i32, i32* %j, align 4
  %idxprom2008 = sext i32 %1536 to i64
  %1537 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2009 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1537, i32 0, i32 3
  %1538 = load i16****, i16***** %mv2009, align 8
  %arrayidx2010 = getelementptr inbounds i16***, i16**** %1538, i64 1
  %1539 = load i16***, i16**** %arrayidx2010, align 8
  %arrayidx2011 = getelementptr inbounds i16**, i16*** %1539, i64 %idxprom2008
  %1540 = load i16**, i16*** %arrayidx2011, align 8
  %arrayidx2012 = getelementptr inbounds i16*, i16** %1540, i64 %idxprom2007
  %1541 = load i16*, i16** %arrayidx2012, align 8
  %arrayidx2013 = getelementptr inbounds i16, i16* %1541, i64 0
  store i16 0, i16* %arrayidx2013, align 2
  %1542 = load i32, i32* %i, align 4
  %idxprom2014 = sext i32 %1542 to i64
  %1543 = load i32, i32* %j, align 4
  %idxprom2015 = sext i32 %1543 to i64
  %1544 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2016 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1544, i32 0, i32 3
  %1545 = load i16****, i16***** %mv2016, align 8
  %arrayidx2017 = getelementptr inbounds i16***, i16**** %1545, i64 1
  %1546 = load i16***, i16**** %arrayidx2017, align 8
  %arrayidx2018 = getelementptr inbounds i16**, i16*** %1546, i64 %idxprom2015
  %1547 = load i16**, i16*** %arrayidx2018, align 8
  %arrayidx2019 = getelementptr inbounds i16*, i16** %1547, i64 %idxprom2014
  %1548 = load i16*, i16** %arrayidx2019, align 8
  %arrayidx2020 = getelementptr inbounds i16, i16* %1548, i64 1
  store i16 0, i16* %arrayidx2020, align 2
  br label %if.end.2021

if.end.2021:                                      ; preds = %if.else.1992, %for.end.1911
  br label %for.inc.2022

for.inc.2022:                                     ; preds = %if.end.2021
  %1549 = load i32, i32* %i, align 4
  %inc2023 = add nsw i32 %1549, 1
  store i32 %inc2023, i32* %i, align 4
  br label %for.cond.1846

for.end.2024:                                     ; preds = %for.cond.1846
  br label %for.inc.2025

for.inc.2025:                                     ; preds = %for.end.2024
  %1550 = load i32, i32* %j, align 4
  %inc2026 = add nsw i32 %1550, 1
  store i32 %inc2026, i32* %j, align 4
  br label %for.cond.1840

for.end.2027:                                     ; preds = %for.cond.1840
  br label %if.end.2028

if.end.2028:                                      ; preds = %for.end.2027, %if.end.1836
  %1551 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %frame_mbs_only_flag2029 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %1551, i32 0, i32 25
  %1552 = load i32, i32* %frame_mbs_only_flag2029, align 4
  %tobool2030 = icmp ne i32 %1552, 0
  br i1 %tobool2030, label %if.end.2142, label %if.then.2031

if.then.2031:                                     ; preds = %if.end.2028
  store i32 0, i32* %j, align 4
  br label %for.cond.2032

for.cond.2032:                                    ; preds = %for.inc.2139, %if.then.2031
  %1553 = load i32, i32* %j, align 4
  %1554 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_y2033 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1554, i32 0, i32 19
  %1555 = load i32, i32* %size_y2033, align 4
  %shr2034 = ashr i32 %1555, 2
  %cmp2035 = icmp slt i32 %1553, %shr2034
  br i1 %cmp2035, label %for.body.2037, label %for.end.2141

for.body.2037:                                    ; preds = %for.cond.2032
  store i32 0, i32* %i, align 4
  br label %for.cond.2038

for.cond.2038:                                    ; preds = %for.inc.2136, %for.body.2037
  %1556 = load i32, i32* %i, align 4
  %1557 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %size_x2039 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1557, i32 0, i32 18
  %1558 = load i32, i32* %size_x2039, align 4
  %shr2040 = ashr i32 %1558, 2
  %cmp2041 = icmp slt i32 %1556, %shr2040
  br i1 %cmp2041, label %for.body.2043, label %for.end.2138

for.body.2043:                                    ; preds = %for.cond.2038
  %1559 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag2044 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1559, i32 0, i32 100
  %1560 = load i32, i32* %MbaffFrameFlag2044, align 4
  %tobool2045 = icmp ne i32 %1560, 0
  br i1 %tobool2045, label %lor.lhs.false.2057, label %land.lhs.true.2046

land.lhs.true.2046:                               ; preds = %for.body.2043
  %1561 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure2047 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1561, i32 0, i32 6
  %1562 = load i32, i32* %structure2047, align 4
  %tobool2048 = icmp ne i32 %1562, 0
  br i1 %tobool2048, label %lor.lhs.false.2057, label %land.lhs.true.2049

land.lhs.true.2049:                               ; preds = %land.lhs.true.2046
  %1563 = load i32, i32* %i, align 4
  %idxprom2050 = sext i32 %1563 to i64
  %1564 = load i32, i32* %j, align 4
  %idxprom2051 = sext i32 %1564 to i64
  %1565 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %field_frame2052 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1565, i32 0, i32 40
  %1566 = load i8**, i8*** %field_frame2052, align 8
  %arrayidx2053 = getelementptr inbounds i8*, i8** %1566, i64 %idxprom2051
  %1567 = load i8*, i8** %arrayidx2053, align 8
  %arrayidx2054 = getelementptr inbounds i8, i8* %1567, i64 %idxprom2050
  %1568 = load i8, i8* %arrayidx2054, align 1
  %conv2055 = zext i8 %1568 to i32
  %tobool2056 = icmp ne i32 %conv2055, 0
  br i1 %tobool2056, label %if.then.2068, label %lor.lhs.false.2057

lor.lhs.false.2057:                               ; preds = %land.lhs.true.2049, %land.lhs.true.2046, %for.body.2043
  %1569 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag2058 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1569, i32 0, i32 100
  %1570 = load i32, i32* %MbaffFrameFlag2058, align 4
  %tobool2059 = icmp ne i32 %1570, 0
  br i1 %tobool2059, label %land.lhs.true.2060, label %if.else.2089

land.lhs.true.2060:                               ; preds = %lor.lhs.false.2057
  %1571 = load i32, i32* %i, align 4
  %idxprom2061 = sext i32 %1571 to i64
  %1572 = load i32, i32* %j, align 4
  %idxprom2062 = sext i32 %1572 to i64
  %1573 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %field_frame2063 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1573, i32 0, i32 40
  %1574 = load i8**, i8*** %field_frame2063, align 8
  %arrayidx2064 = getelementptr inbounds i8*, i8** %1574, i64 %idxprom2062
  %1575 = load i8*, i8** %arrayidx2064, align 8
  %arrayidx2065 = getelementptr inbounds i8, i8* %1575, i64 %idxprom2061
  %1576 = load i8, i8* %arrayidx2065, align 1
  %conv2066 = zext i8 %1576 to i32
  %tobool2067 = icmp ne i32 %conv2066, 0
  br i1 %tobool2067, label %if.then.2068, label %if.else.2089

if.then.2068:                                     ; preds = %land.lhs.true.2060, %land.lhs.true.2049
  %1577 = load i32, i32* %i, align 4
  %idxprom2069 = sext i32 %1577 to i64
  %1578 = load i32, i32* %j, align 4
  %idxprom2070 = sext i32 %1578 to i64
  %1579 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2071 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1579, i32 0, i32 3
  %1580 = load i16****, i16***** %mv2071, align 8
  %arrayidx2072 = getelementptr inbounds i16***, i16**** %1580, i64 0
  %1581 = load i16***, i16**** %arrayidx2072, align 8
  %arrayidx2073 = getelementptr inbounds i16**, i16*** %1581, i64 %idxprom2070
  %1582 = load i16**, i16*** %arrayidx2073, align 8
  %arrayidx2074 = getelementptr inbounds i16*, i16** %1582, i64 %idxprom2069
  %1583 = load i16*, i16** %arrayidx2074, align 8
  %arrayidx2075 = getelementptr inbounds i16, i16* %1583, i64 1
  %1584 = load i16, i16* %arrayidx2075, align 2
  %conv2076 = sext i16 %1584 to i32
  %mul2077 = mul nsw i32 %conv2076, 2
  %conv2078 = trunc i32 %mul2077 to i16
  store i16 %conv2078, i16* %arrayidx2075, align 2
  %1585 = load i32, i32* %i, align 4
  %idxprom2079 = sext i32 %1585 to i64
  %1586 = load i32, i32* %j, align 4
  %idxprom2080 = sext i32 %1586 to i64
  %1587 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2081 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1587, i32 0, i32 3
  %1588 = load i16****, i16***** %mv2081, align 8
  %arrayidx2082 = getelementptr inbounds i16***, i16**** %1588, i64 1
  %1589 = load i16***, i16**** %arrayidx2082, align 8
  %arrayidx2083 = getelementptr inbounds i16**, i16*** %1589, i64 %idxprom2080
  %1590 = load i16**, i16*** %arrayidx2083, align 8
  %arrayidx2084 = getelementptr inbounds i16*, i16** %1590, i64 %idxprom2079
  %1591 = load i16*, i16** %arrayidx2084, align 8
  %arrayidx2085 = getelementptr inbounds i16, i16* %1591, i64 1
  %1592 = load i16, i16* %arrayidx2085, align 2
  %conv2086 = sext i16 %1592 to i32
  %mul2087 = mul nsw i32 %conv2086, 2
  %conv2088 = trunc i32 %mul2087 to i16
  store i16 %conv2088, i16* %arrayidx2085, align 2
  br label %if.end.2135

if.else.2089:                                     ; preds = %land.lhs.true.2060, %lor.lhs.false.2057
  %1593 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure2090 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1593, i32 0, i32 6
  %1594 = load i32, i32* %structure2090, align 4
  %tobool2091 = icmp ne i32 %1594, 0
  br i1 %tobool2091, label %land.lhs.true.2092, label %if.end.2134

land.lhs.true.2092:                               ; preds = %if.else.2089
  %1595 = load i32, i32* %i, align 4
  %idxprom2093 = sext i32 %1595 to i64
  %1596 = load i32, i32* %j, align 4
  %idxprom2094 = sext i32 %1596 to i64
  %1597 = load %struct.storable_picture*, %struct.storable_picture** %fs, align 8
  %field_frame2095 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1597, i32 0, i32 40
  %1598 = load i8**, i8*** %field_frame2095, align 8
  %arrayidx2096 = getelementptr inbounds i8*, i8** %1598, i64 %idxprom2094
  %1599 = load i8*, i8** %arrayidx2096, align 8
  %arrayidx2097 = getelementptr inbounds i8, i8* %1599, i64 %idxprom2093
  %1600 = load i8, i8* %arrayidx2097, align 1
  %tobool2098 = icmp ne i8 %1600, 0
  br i1 %tobool2098, label %if.end.2134, label %if.then.2099

if.then.2099:                                     ; preds = %land.lhs.true.2092
  %1601 = load i32, i32* %i, align 4
  %idxprom2100 = sext i32 %1601 to i64
  %1602 = load i32, i32* %j, align 4
  %idxprom2101 = sext i32 %1602 to i64
  %1603 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2102 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1603, i32 0, i32 3
  %1604 = load i16****, i16***** %mv2102, align 8
  %arrayidx2103 = getelementptr inbounds i16***, i16**** %1604, i64 0
  %1605 = load i16***, i16**** %arrayidx2103, align 8
  %arrayidx2104 = getelementptr inbounds i16**, i16*** %1605, i64 %idxprom2101
  %1606 = load i16**, i16*** %arrayidx2104, align 8
  %arrayidx2105 = getelementptr inbounds i16*, i16** %1606, i64 %idxprom2100
  %1607 = load i16*, i16** %arrayidx2105, align 8
  %arrayidx2106 = getelementptr inbounds i16, i16* %1607, i64 1
  %1608 = load i16, i16* %arrayidx2106, align 2
  %conv2107 = sext i16 %1608 to i32
  %call2108 = call i32 @rshift_rnd_sf(i32 %conv2107, i32 1)
  %conv2109 = trunc i32 %call2108 to i16
  %1609 = load i32, i32* %i, align 4
  %idxprom2110 = sext i32 %1609 to i64
  %1610 = load i32, i32* %j, align 4
  %idxprom2111 = sext i32 %1610 to i64
  %1611 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2112 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1611, i32 0, i32 3
  %1612 = load i16****, i16***** %mv2112, align 8
  %arrayidx2113 = getelementptr inbounds i16***, i16**** %1612, i64 0
  %1613 = load i16***, i16**** %arrayidx2113, align 8
  %arrayidx2114 = getelementptr inbounds i16**, i16*** %1613, i64 %idxprom2111
  %1614 = load i16**, i16*** %arrayidx2114, align 8
  %arrayidx2115 = getelementptr inbounds i16*, i16** %1614, i64 %idxprom2110
  %1615 = load i16*, i16** %arrayidx2115, align 8
  %arrayidx2116 = getelementptr inbounds i16, i16* %1615, i64 1
  store i16 %conv2109, i16* %arrayidx2116, align 2
  %1616 = load i32, i32* %i, align 4
  %idxprom2117 = sext i32 %1616 to i64
  %1617 = load i32, i32* %j, align 4
  %idxprom2118 = sext i32 %1617 to i64
  %1618 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2119 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1618, i32 0, i32 3
  %1619 = load i16****, i16***** %mv2119, align 8
  %arrayidx2120 = getelementptr inbounds i16***, i16**** %1619, i64 1
  %1620 = load i16***, i16**** %arrayidx2120, align 8
  %arrayidx2121 = getelementptr inbounds i16**, i16*** %1620, i64 %idxprom2118
  %1621 = load i16**, i16*** %arrayidx2121, align 8
  %arrayidx2122 = getelementptr inbounds i16*, i16** %1621, i64 %idxprom2117
  %1622 = load i16*, i16** %arrayidx2122, align 8
  %arrayidx2123 = getelementptr inbounds i16, i16* %1622, i64 1
  %1623 = load i16, i16* %arrayidx2123, align 2
  %conv2124 = sext i16 %1623 to i32
  %call2125 = call i32 @rshift_rnd_sf(i32 %conv2124, i32 1)
  %conv2126 = trunc i32 %call2125 to i16
  %1624 = load i32, i32* %i, align 4
  %idxprom2127 = sext i32 %1624 to i64
  %1625 = load i32, i32* %j, align 4
  %idxprom2128 = sext i32 %1625 to i64
  %1626 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** %p.addr, align 8
  %mv2129 = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %1626, i32 0, i32 3
  %1627 = load i16****, i16***** %mv2129, align 8
  %arrayidx2130 = getelementptr inbounds i16***, i16**** %1627, i64 1
  %1628 = load i16***, i16**** %arrayidx2130, align 8
  %arrayidx2131 = getelementptr inbounds i16**, i16*** %1628, i64 %idxprom2128
  %1629 = load i16**, i16*** %arrayidx2131, align 8
  %arrayidx2132 = getelementptr inbounds i16*, i16** %1629, i64 %idxprom2127
  %1630 = load i16*, i16** %arrayidx2132, align 8
  %arrayidx2133 = getelementptr inbounds i16, i16* %1630, i64 1
  store i16 %conv2126, i16* %arrayidx2133, align 2
  br label %if.end.2134

if.end.2134:                                      ; preds = %if.then.2099, %land.lhs.true.2092, %if.else.2089
  br label %if.end.2135

if.end.2135:                                      ; preds = %if.end.2134, %if.then.2068
  br label %for.inc.2136

for.inc.2136:                                     ; preds = %if.end.2135
  %1631 = load i32, i32* %i, align 4
  %inc2137 = add nsw i32 %1631, 1
  store i32 %inc2137, i32* %i, align 4
  br label %for.cond.2038

for.end.2138:                                     ; preds = %for.cond.2038
  br label %for.inc.2139

for.inc.2139:                                     ; preds = %for.end.2138
  %1632 = load i32, i32* %j, align 4
  %inc2140 = add nsw i32 %1632, 1
  store i32 %inc2140, i32* %j, align 4
  br label %for.cond.2032

for.end.2141:                                     ; preds = %for.cond.2032
  br label %if.end.2142

if.end.2142:                                      ; preds = %for.end.2141, %if.end.2028
  br label %if.end.2143

if.end.2143:                                      ; preds = %if.end.2142, %for.end.87
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip3(i32 %low, i32 %high, i32 %x) #3 {
entry:
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %low.addr, align 4
  %call = call i32 @imax(i32 %0, i32 %1)
  store i32 %call, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %high.addr, align 4
  %call1 = call i32 @imin(i32 %2, i32 %3)
  store i32 %call1, i32* %x.addr, align 4
  %4 = load i32, i32* %x.addr, align 4
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iabs(i32 %x) #3 {
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
define internal i32 @rshift_rnd_sf(i32 %x, i32 %a) #3 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imin(i32 %a, i32 %b) #3 {
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
define i32 @EPZSPelBlockMotionSearch(i16* %cur_pic, i16 signext %ref, i32 %list, i32 %list_offset, i8*** %refPic, i16**** %tmp_mv, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16* %pred_mv, i16* %mv, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %retval = alloca i32, align 4
  %cur_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %list_offset.addr = alloca i32, align 4
  %refPic.addr = alloca i8***, align 8
  %tmp_mv.addr = alloca i16****, align 8
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv.addr = alloca i16*, align 8
  %mv.addr = alloca i16*, align 8
  %search_range.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %blocksize_y = alloca i16, align 2
  %blocksize_x = alloca i16, align 2
  %blockshape_x = alloca i16, align 2
  %blockshape_y = alloca i16, align 2
  %mb_x = alloca i16, align 2
  %mb_y = alloca i16, align 2
  %pic_pix_x2 = alloca i16, align 2
  %pic_pix_y2 = alloca i16, align 2
  %block_x = alloca i16, align 2
  %block_y = alloca i16, align 2
  %pred_x = alloca i32, align 4
  %pred_y = alloca i32, align 4
  %center_x = alloca i32, align 4
  %center_y = alloca i32, align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %tempmv = alloca [2 x i32], align 4
  %tempmv2 = alloca [2 x i32], align 4
  %stopCriterion = alloca i32, align 4
  %mapCenter_x = alloca i32, align 4
  %mapCenter_y = alloca i32, align 4
  %second_mcost = alloca i32, align 4
  %apply_weights = alloca i16, align 2
  %prevSad = alloca i32*, align 8
  %motion = alloca i16*, align 8
  %dist_method = alloca i32, align 4
  %invalid_refs = alloca i16, align 2
  %checkMedian = alloca i8, align 1
  %searchPatternF = alloca %struct.MEPatternNode*, align 8
  %mb_available_right = alloca i32, align 4
  %mb_available_below = alloca i32, align 4
  %sadA = alloca i32, align 4
  %sadB = alloca i32, align 4
  %sadC = alloca i32, align 4
  %block_available_right = alloca i32, align 4
  %block_available_below = alloca i32, align 4
  %prednum = alloca i32, align 4
  %patternStop = alloca i32, align 4
  %pointNumber = alloca i32, align 4
  %checkPts = alloca i32, align 4
  %nextLast = alloca i32, align 4
  %totalCheckPts = alloca i32, align 4
  %motionDirection = alloca i32, align 4
  %conditionEPZS = alloca i32, align 4
  %tmv = alloca [2 x i32], align 4
  %pos = alloca i32, align 4
  %mcost = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 8
  %block_b = alloca %struct.pix_pos, align 8
  %block_c = alloca %struct.pix_pos, align 8
  %block_d = alloca %struct.pix_pos, align 8
  store i16* %cur_pic, i16** %cur_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %list_offset, i32* %list_offset.addr, align 4
  store i8*** %refPic, i8**** %refPic.addr, align 8
  store i16**** %tmp_mv, i16***** %tmp_mv.addr, align 8
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16* %pred_mv, i16** %pred_mv.addr, align 8
  store i16* %mv, i16** %mv.addr, align 8
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
  %0 = load i16, i16* %ref.addr, align 2
  %idxprom = sext i16 %0 to i64
  %1 = load i32, i32* %list.addr, align 4
  %2 = load i32, i32* %list_offset.addr, align 4
  %add = add nsw i32 %1, %2
  %idxprom1 = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom1
  %3 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %3, i64 %idxprom
  %4 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx2, align 8
  store %struct.storable_picture* %4, %struct.storable_picture** %ref_picture, align 8
  %5 = load i32, i32* %blocktype.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %6, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  %7 = load i32, i32* %arrayidx5, align 4
  %conv = trunc i32 %7 to i16
  store i16 %conv, i16* %blocksize_y, align 2
  %8 = load i32, i32* %blocktype.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size7 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %9, i32 0, i32 18
  %arrayidx8 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size7, i32 0, i64 %idxprom6
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx8, i32 0, i64 0
  %10 = load i32, i32* %arrayidx9, align 4
  %conv10 = trunc i32 %10 to i16
  store i16 %conv10, i16* %blocksize_x, align 2
  %11 = load i16, i16* %blocksize_x, align 2
  %conv11 = sext i16 %11 to i32
  %shr = ashr i32 %conv11, 2
  %conv12 = trunc i32 %shr to i16
  store i16 %conv12, i16* %blockshape_x, align 2
  %12 = load i16, i16* %blocksize_y, align 2
  %conv13 = sext i16 %12 to i32
  %shr14 = ashr i32 %conv13, 2
  %conv15 = trunc i32 %shr14 to i16
  store i16 %conv15, i16* %blockshape_y, align 2
  %13 = load i32, i32* %pic_pix_x.addr, align 4
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 43
  %15 = load i32, i32* %opix_x, align 4
  %sub = sub nsw i32 %13, %15
  %conv16 = trunc i32 %sub to i16
  store i16 %conv16, i16* %mb_x, align 2
  %16 = load i32, i32* %pic_pix_y.addr, align 4
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 44
  %18 = load i32, i32* %opix_y, align 4
  %sub17 = sub nsw i32 %16, %18
  %conv18 = trunc i32 %sub17 to i16
  store i16 %conv18, i16* %mb_y, align 2
  %19 = load i32, i32* %pic_pix_x.addr, align 4
  %shr19 = ashr i32 %19, 2
  %conv20 = trunc i32 %shr19 to i16
  store i16 %conv20, i16* %pic_pix_x2, align 2
  %20 = load i32, i32* %pic_pix_y.addr, align 4
  %shr21 = ashr i32 %20, 2
  %conv22 = trunc i32 %shr21 to i16
  store i16 %conv22, i16* %pic_pix_y2, align 2
  %21 = load i16, i16* %mb_x, align 2
  %conv23 = sext i16 %21 to i32
  %shr24 = ashr i32 %conv23, 2
  %conv25 = trunc i32 %shr24 to i16
  store i16 %conv25, i16* %block_x, align 2
  %22 = load i16, i16* %mb_y, align 2
  %conv26 = sext i16 %22 to i32
  %shr27 = ashr i32 %conv26, 2
  %conv28 = trunc i32 %shr27 to i16
  store i16 %conv28, i16* %block_y, align 2
  %23 = load i32, i32* %pic_pix_x.addr, align 4
  %shl = shl i32 %23, 2
  %24 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %24, i64 0
  %25 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %25 to i32
  %add31 = add nsw i32 %shl, %conv30
  store i32 %add31, i32* %pred_x, align 4
  %26 = load i32, i32* %pic_pix_y.addr, align 4
  %shl32 = shl i32 %26, 2
  %27 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %27, i64 1
  %28 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %28 to i32
  %add35 = add nsw i32 %shl32, %conv34
  store i32 %add35, i32* %pred_y, align 4
  %29 = load i32, i32* %pic_pix_x.addr, align 4
  %30 = load i32, i32* @mv_rescale, align 4
  %sub36 = sub nsw i32 2, %30
  %shl37 = shl i32 %29, %sub36
  %31 = load i16*, i16** %mv.addr, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %31, i64 0
  %32 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %32 to i32
  %add40 = add nsw i32 %shl37, %conv39
  store i32 %add40, i32* %center_x, align 4
  %33 = load i32, i32* %pic_pix_y.addr, align 4
  %34 = load i32, i32* @mv_rescale, align 4
  %sub41 = sub nsw i32 2, %34
  %shl42 = shl i32 %33, %sub41
  %35 = load i16*, i16** %mv.addr, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %35, i64 1
  %36 = load i16, i16* %arrayidx43, align 2
  %conv44 = sext i16 %36 to i32
  %add45 = add nsw i32 %shl42, %conv44
  store i32 %add45, i32* %center_y, align 4
  %37 = load i32, i32* %center_x, align 4
  %38 = load i32, i32* @mv_rescale, align 4
  %shl46 = shl i32 %37, %38
  store i32 %shl46, i32* %cand_x, align 4
  %39 = load i32, i32* %center_y, align 4
  %40 = load i32, i32* @mv_rescale, align 4
  %shl47 = shl i32 %39, %40
  store i32 %shl47, i32* %cand_y, align 4
  %arrayinit.begin = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i64 0, i64 0
  %41 = load i16*, i16** %mv.addr, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %41, i64 0
  %42 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %42 to i32
  store i32 %conv49, i32* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i32, i32* %arrayinit.begin, i64 1
  %43 = load i16*, i16** %mv.addr, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %43, i64 1
  %44 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %44 to i32
  store i32 %conv51, i32* %arrayinit.element
  %45 = bitcast [2 x i32]* %tempmv2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 8, i32 4, i1 false)
  %46 = load i32, i32* %blocktype.addr, align 4
  %idxprom52 = sext i32 %46 to i64
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom52
  %47 = load i32, i32* %arrayidx53, align 4
  store i32 %47, i32* %stopCriterion, align 4
  %48 = load i32, i32* %search_range.addr, align 4
  %49 = load i16*, i16** %mv.addr, align 8
  %arrayidx54 = getelementptr inbounds i16, i16* %49, i64 0
  %50 = load i16, i16* %arrayidx54, align 2
  %conv55 = sext i16 %50 to i32
  %sub56 = sub nsw i32 %48, %conv55
  store i32 %sub56, i32* %mapCenter_x, align 4
  %51 = load i32, i32* %search_range.addr, align 4
  %52 = load i16*, i16** %mv.addr, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %52, i64 1
  %53 = load i16, i16* %arrayidx57, align 2
  %conv58 = sext i16 %53 to i32
  %sub59 = sub nsw i32 %51, %conv58
  store i32 %sub59, i32* %mapCenter_y, align 4
  store i32 2147483647, i32* %second_mcost, align 4
  %54 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %54, i32 0, i32 19
  %55 = load i32, i32* %weighted_pred_flag, align 4
  %cmp = icmp ugt i32 %55, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %56 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %56, i32 0, i32 20
  %57 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 5
  %59 = load i32, i32* %type, align 4
  %cmp61 = icmp eq i32 %59, 1
  br i1 %cmp61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true, %entry
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 61
  %61 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool63 = icmp ne i32 %61, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false
  %62 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ %tobool63, %land.rhs ]
  %land.ext = zext i1 %62 to i32
  %conv64 = trunc i32 %land.ext to i16
  store i16 %conv64, i16* %apply_weights, align 2
  %63 = load i32, i32* %blocktype.addr, align 4
  %sub65 = sub nsw i32 %63, 1
  %idxprom66 = sext i32 %sub65 to i64
  %64 = load i32, i32* %list.addr, align 4
  %65 = load i32, i32* %list_offset.addr, align 4
  %add67 = add nsw i32 %64, %65
  %idxprom68 = sext i32 %add67 to i64
  %66 = load i32***, i32**** @EPZSDistortion, align 8
  %arrayidx69 = getelementptr inbounds i32**, i32*** %66, i64 %idxprom68
  %67 = load i32**, i32*** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32*, i32** %67, i64 %idxprom66
  %68 = load i32*, i32** %arrayidx70, align 8
  store i32* %68, i32** %prevSad, align 8
  store i16* null, i16** %motion, align 8
  %69 = load i16, i16* %apply_weights, align 2
  %conv71 = sext i16 %69 to i32
  %mul = mul nsw i32 3, %conv71
  %add72 = add nsw i32 0, %mul
  store i32 %add72, i32* %dist_method, align 4
  store i16 0, i16* %invalid_refs, align 2
  store i8 0, i8* %checkMedian, align 1
  %70 = load %struct.MEPatternNode*, %struct.MEPatternNode** @searchPattern, align 8
  store %struct.MEPatternNode* %70, %struct.MEPatternNode** %searchPatternF, align 8
  %71 = load i16, i16* @EPZSBlkCount, align 2
  %inc = add i16 %71, 1
  store i16 %inc, i16* @EPZSBlkCount, align 2
  %72 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %72, i32 0, i32 30
  %73 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %73, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %74 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %74, i32 0, i32 18
  %75 = load i32, i32* %size_x, align 4
  %conv73 = trunc i32 %75 to i16
  store i16 %conv73, i16* @img_width, align 2
  %76 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %76, i32 0, i32 19
  %77 = load i32, i32* %size_y, align 4
  %conv74 = trunc i32 %77 to i16
  store i16 %conv74, i16* @img_height, align 2
  %78 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %78, i32 0, i32 22
  %79 = load i32, i32* %size_x_pad, align 4
  store i32 %79, i32* @width_pad, align 4
  %80 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %80, i32 0, i32 23
  %81 = load i32, i32* %size_y_pad, align 4
  store i32 %81, i32* @height_pad, align 4
  %82 = load i16, i16* %apply_weights, align 2
  %tobool75 = icmp ne i16 %82, 0
  br i1 %tobool75, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %83 = load i16, i16* %ref.addr, align 2
  %idxprom76 = sext i16 %83 to i64
  %84 = load i32, i32* %list.addr, align 4
  %85 = load i32, i32* %list_offset.addr, align 4
  %add77 = add nsw i32 %84, %85
  %idxprom78 = sext i32 %add77 to i64
  %86 = load i32***, i32**** @wp_weight, align 8
  %arrayidx79 = getelementptr inbounds i32**, i32*** %86, i64 %idxprom78
  %87 = load i32**, i32*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %87, i64 %idxprom76
  %88 = load i32*, i32** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %88, i64 0
  %89 = load i32, i32* %arrayidx81, align 4
  store i32 %89, i32* @weight_luma, align 4
  %90 = load i16, i16* %ref.addr, align 2
  %idxprom82 = sext i16 %90 to i64
  %91 = load i32, i32* %list.addr, align 4
  %92 = load i32, i32* %list_offset.addr, align 4
  %add83 = add nsw i32 %91, %92
  %idxprom84 = sext i32 %add83 to i64
  %93 = load i32***, i32**** @wp_offset, align 8
  %arrayidx85 = getelementptr inbounds i32**, i32*** %93, i64 %idxprom84
  %94 = load i32**, i32*** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32*, i32** %94, i64 %idxprom82
  %95 = load i32*, i32** %arrayidx86, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %95, i64 0
  %96 = load i32, i32* %arrayidx87, align 4
  store i32 %96, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %97 = load i32, i32* @ChromaMEEnable, align 4
  %tobool88 = icmp ne i32 %97, 0
  br i1 %tobool88, label %if.then.89, label %if.end.120

if.then.89:                                       ; preds = %if.end
  %98 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %98, i32 0, i32 32
  %99 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx90 = getelementptr inbounds i16****, i16***** %99, i64 0
  %100 = load i16****, i16***** %arrayidx90, align 8
  store i16**** %100, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %101 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub91 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %101, i32 0, i32 32
  %102 = load i16*****, i16****** %imgUV_sub91, align 8
  %arrayidx92 = getelementptr inbounds i16****, i16***** %102, i64 1
  %103 = load i16****, i16***** %arrayidx92, align 8
  store i16**** %103, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %104 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 24
  %105 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %105, i32* @width_pad_cr, align 4
  %106 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 25
  %107 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %107, i32* @height_pad_cr, align 4
  %108 = load i16, i16* %apply_weights, align 2
  %tobool93 = icmp ne i16 %108, 0
  br i1 %tobool93, label %if.then.94, label %if.end.119

if.then.94:                                       ; preds = %if.then.89
  %109 = load i16, i16* %ref.addr, align 2
  %idxprom95 = sext i16 %109 to i64
  %110 = load i32, i32* %list.addr, align 4
  %111 = load i32, i32* %list_offset.addr, align 4
  %add96 = add nsw i32 %110, %111
  %idxprom97 = sext i32 %add96 to i64
  %112 = load i32***, i32**** @wp_weight, align 8
  %arrayidx98 = getelementptr inbounds i32**, i32*** %112, i64 %idxprom97
  %113 = load i32**, i32*** %arrayidx98, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %113, i64 %idxprom95
  %114 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %114, i64 1
  %115 = load i32, i32* %arrayidx100, align 4
  store i32 %115, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %116 = load i16, i16* %ref.addr, align 2
  %idxprom101 = sext i16 %116 to i64
  %117 = load i32, i32* %list.addr, align 4
  %118 = load i32, i32* %list_offset.addr, align 4
  %add102 = add nsw i32 %117, %118
  %idxprom103 = sext i32 %add102 to i64
  %119 = load i32***, i32**** @wp_weight, align 8
  %arrayidx104 = getelementptr inbounds i32**, i32*** %119, i64 %idxprom103
  %120 = load i32**, i32*** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %120, i64 %idxprom101
  %121 = load i32*, i32** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %121, i64 2
  %122 = load i32, i32* %arrayidx106, align 4
  store i32 %122, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %123 = load i16, i16* %ref.addr, align 2
  %idxprom107 = sext i16 %123 to i64
  %124 = load i32, i32* %list.addr, align 4
  %125 = load i32, i32* %list_offset.addr, align 4
  %add108 = add nsw i32 %124, %125
  %idxprom109 = sext i32 %add108 to i64
  %126 = load i32***, i32**** @wp_offset, align 8
  %arrayidx110 = getelementptr inbounds i32**, i32*** %126, i64 %idxprom109
  %127 = load i32**, i32*** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %127, i64 %idxprom107
  %128 = load i32*, i32** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %128, i64 1
  %129 = load i32, i32* %arrayidx112, align 4
  store i32 %129, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %130 = load i16, i16* %ref.addr, align 2
  %idxprom113 = sext i16 %130 to i64
  %131 = load i32, i32* %list.addr, align 4
  %132 = load i32, i32* %list_offset.addr, align 4
  %add114 = add nsw i32 %131, %132
  %idxprom115 = sext i32 %add114 to i64
  %133 = load i32***, i32**** @wp_offset, align 8
  %arrayidx116 = getelementptr inbounds i32**, i32*** %133, i64 %idxprom115
  %134 = load i32**, i32*** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i32*, i32** %134, i64 %idxprom113
  %135 = load i32*, i32** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %135, i64 2
  %136 = load i32, i32* %arrayidx118, align 4
  store i32 %136, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.94, %if.then.89
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end
  %137 = load i32, i32* %pic_pix_x.addr, align 4
  %138 = load i32, i32* @mv_rescale, align 4
  %sub121 = sub nsw i32 2, %138
  %shl122 = shl i32 %137, %sub121
  store i32 %shl122, i32* %pic_pix_x.addr, align 4
  %139 = load i32, i32* %pic_pix_y.addr, align 4
  %140 = load i32, i32* @mv_rescale, align 4
  %sub123 = sub nsw i32 2, %140
  %shl124 = shl i32 %139, %sub123
  store i32 %shl124, i32* %pic_pix_y.addr, align 4
  %141 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %141, i32 0, i32 97
  %142 = load i32, i32* %EPZSSpatialMem, align 4
  %tobool125 = icmp ne i32 %142, 0
  br i1 %tobool125, label %if.then.126, label %if.end.139

if.then.126:                                      ; preds = %if.end.120
  %143 = load i16, i16* %pic_pix_x2, align 2
  %idxprom127 = sext i16 %143 to i64
  %144 = load i16, i16* %block_y, align 2
  %idxprom128 = sext i16 %144 to i64
  %145 = load i32, i32* %blocktype.addr, align 4
  %sub129 = sub nsw i32 %145, 1
  %idxprom130 = sext i32 %sub129 to i64
  %146 = load i16, i16* %ref.addr, align 2
  %idxprom131 = sext i16 %146 to i64
  %147 = load i32, i32* %list.addr, align 4
  %148 = load i32, i32* %list_offset.addr, align 4
  %add132 = add nsw i32 %147, %148
  %idxprom133 = sext i32 %add132 to i64
  %149 = load i16******, i16******* @EPZSMotion, align 8
  %arrayidx134 = getelementptr inbounds i16*****, i16****** %149, i64 %idxprom133
  %150 = load i16*****, i16****** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i16****, i16***** %150, i64 %idxprom131
  %151 = load i16****, i16***** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i16***, i16**** %151, i64 %idxprom130
  %152 = load i16***, i16**** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i16**, i16*** %152, i64 %idxprom128
  %153 = load i16**, i16*** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i16*, i16** %153, i64 %idxprom127
  %154 = load i16*, i16** %arrayidx138, align 8
  store i16* %154, i16** %motion, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.126, %if.end.120
  %155 = load i32, i32* %cand_x, align 4
  %cmp140 = icmp sge i32 %155, 0
  br i1 %cmp140, label %land.lhs.true.142, label %land.end.157

land.lhs.true.142:                                ; preds = %if.end.139
  %156 = load i32, i32* %cand_x, align 4
  %157 = load i16, i16* @img_width, align 2
  %conv143 = sext i16 %157 to i32
  %158 = load i16, i16* %blocksize_x, align 2
  %conv144 = sext i16 %158 to i32
  %sub145 = sub nsw i32 %conv143, %conv144
  %cmp146 = icmp slt i32 %156, %sub145
  br i1 %cmp146, label %land.lhs.true.148, label %land.end.157

land.lhs.true.148:                                ; preds = %land.lhs.true.142
  %159 = load i32, i32* %cand_y, align 4
  %cmp149 = icmp sge i32 %159, 0
  br i1 %cmp149, label %land.rhs.151, label %land.end.157

land.rhs.151:                                     ; preds = %land.lhs.true.148
  %160 = load i32, i32* %cand_y, align 4
  %161 = load i16, i16* @img_height, align 2
  %conv152 = sext i16 %161 to i32
  %162 = load i16, i16* %blocksize_y, align 2
  %conv153 = sext i16 %162 to i32
  %sub154 = sub nsw i32 %conv152, %conv153
  %cmp155 = icmp slt i32 %160, %sub154
  br label %land.end.157

land.end.157:                                     ; preds = %land.rhs.151, %land.lhs.true.148, %land.lhs.true.142, %if.end.139
  %163 = phi i1 [ false, %land.lhs.true.148 ], [ false, %land.lhs.true.142 ], [ false, %if.end.139 ], [ %cmp155, %land.rhs.151 ]
  %cond = select i1 %163, i32 0, i32 1
  store i32 %cond, i32* @ref_access_method, align 4
  %164 = load i16, i16* @EPZSBlkCount, align 2
  %165 = load i32, i32* %search_range.addr, align 4
  %idxprom159 = sext i32 %165 to i64
  %166 = load i32, i32* %search_range.addr, align 4
  %idxprom160 = sext i32 %166 to i64
  %167 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx161 = getelementptr inbounds i16*, i16** %167, i64 %idxprom160
  %168 = load i16*, i16** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i16, i16* %168, i64 %idxprom159
  store i16 %164, i16* %arrayidx162, align 2
  %169 = load i32, i32* %lambda_factor.addr, align 4
  %170 = load i32, i32* %cand_x, align 4
  %171 = load i32, i32* %pred_x, align 4
  %sub163 = sub nsw i32 %170, %171
  %idxprom164 = sext i32 %sub163 to i64
  %172 = load i32*, i32** @mvbits, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %172, i64 %idxprom164
  %173 = load i32, i32* %arrayidx165, align 4
  %174 = load i32, i32* %cand_y, align 4
  %175 = load i32, i32* %pred_y, align 4
  %sub166 = sub nsw i32 %174, %175
  %idxprom167 = sext i32 %sub166 to i64
  %176 = load i32*, i32** @mvbits, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %176, i64 %idxprom167
  %177 = load i32, i32* %arrayidx168, align 4
  %add169 = add nsw i32 %173, %177
  %mul170 = mul nsw i32 %169, %add169
  %shr171 = ashr i32 %mul170, 16
  store i32 %shr171, i32* %min_mcost.addr, align 4
  %178 = load i32, i32* %dist_method, align 4
  %idxprom172 = sext i32 %178 to i64
  %arrayidx173 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom172
  %179 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx173, align 8
  %180 = load i16*, i16** %cur_pic.addr, align 8
  %181 = load i16, i16* %blocksize_y, align 2
  %conv174 = sext i16 %181 to i32
  %182 = load i16, i16* %blocksize_x, align 2
  %conv175 = sext i16 %182 to i32
  %183 = load i32, i32* %cand_x, align 4
  %add176 = add nsw i32 %183, 80
  %184 = load i32, i32* %cand_y, align 4
  %add177 = add nsw i32 %184, 80
  %call = call i32 %179(i16* %180, i32 %conv174, i32 %conv175, i32 2147483647, i32 %add176, i32 %add177)
  %185 = load i32, i32* %min_mcost.addr, align 4
  %add178 = add nsw i32 %185, %call
  store i32 %add178, i32* %min_mcost.addr, align 4
  %186 = load i16, i16* %ref.addr, align 2
  %conv179 = sext i16 %186 to i32
  %cmp180 = icmp sgt i32 %conv179, 0
  br i1 %cmp180, label %land.lhs.true.182, label %if.end.208

land.lhs.true.182:                                ; preds = %land.end.157
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 6
  %188 = load i32, i32* %structure, align 4
  %cmp183 = icmp eq i32 %188, 0
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.208

land.lhs.true.185:                                ; preds = %land.lhs.true.182
  %189 = load i16, i16* %pic_pix_x2, align 2
  %idxprom186 = sext i16 %189 to i64
  %190 = load i32*, i32** %prevSad, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %190, i64 %idxprom186
  %191 = load i32, i32* %arrayidx187, align 4
  %192 = load i32, i32* %blocktype.addr, align 4
  %idxprom188 = sext i32 %192 to i64
  %arrayidx189 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom188
  %193 = load i32, i32* %arrayidx189, align 4
  %cmp190 = icmp slt i32 %191, %193
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.208

land.lhs.true.192:                                ; preds = %land.lhs.true.185
  %194 = load i16, i16* %pic_pix_x2, align 2
  %idxprom193 = sext i16 %194 to i64
  %195 = load i32*, i32** %prevSad, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %195, i64 %idxprom193
  %196 = load i32, i32* %arrayidx194, align 4
  %197 = load i32, i32* %min_mcost.addr, align 4
  %cmp195 = icmp slt i32 %196, %197
  br i1 %cmp195, label %if.then.197, label %if.end.208

if.then.197:                                      ; preds = %land.lhs.true.192
  %198 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem198 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %198, i32 0, i32 97
  %199 = load i32, i32* %EPZSSpatialMem198, align 4
  %tobool199 = icmp ne i32 %199, 0
  br i1 %tobool199, label %if.then.200, label %if.end.207

if.then.200:                                      ; preds = %if.then.197
  %arrayidx201 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %200 = load i32, i32* %arrayidx201, align 4
  %conv202 = trunc i32 %200 to i16
  %201 = load i16*, i16** %motion, align 8
  %arrayidx203 = getelementptr inbounds i16, i16* %201, i64 0
  store i16 %conv202, i16* %arrayidx203, align 2
  %arrayidx204 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %202 = load i32, i32* %arrayidx204, align 4
  %conv205 = trunc i32 %202 to i16
  %203 = load i16*, i16** %motion, align 8
  %arrayidx206 = getelementptr inbounds i16, i16* %203, i64 1
  store i16 %conv205, i16* %arrayidx206, align 2
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.200, %if.then.197
  %204 = load i32, i32* %min_mcost.addr, align 4
  store i32 %204, i32* %retval
  br label %return

if.end.208:                                       ; preds = %land.lhs.true.192, %land.lhs.true.185, %land.lhs.true.182, %land.end.157
  %205 = load i32, i32* %center_x, align 4
  %206 = load i32, i32* %search_range.addr, align 4
  %cmp209 = icmp sgt i32 %205, %206
  br i1 %cmp209, label %land.lhs.true.211, label %if.else

land.lhs.true.211:                                ; preds = %if.end.208
  %207 = load i32, i32* %center_x, align 4
  %208 = load i16, i16* @img_width, align 2
  %conv212 = sext i16 %208 to i32
  %209 = load i16, i16* %blocksize_x, align 2
  %conv213 = sext i16 %209 to i32
  %sub214 = sub nsw i32 %conv212, %conv213
  %210 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %210, i32 0, i32 101
  %211 = load i32, i32* %EPZSSubPelGrid, align 4
  %mul215 = mul nsw i32 %211, 2
  %shl216 = shl i32 %sub214, %mul215
  %212 = load i32, i32* %search_range.addr, align 4
  %sub217 = sub nsw i32 %shl216, %212
  %cmp218 = icmp slt i32 %207, %sub217
  br i1 %cmp218, label %land.lhs.true.220, label %if.else

land.lhs.true.220:                                ; preds = %land.lhs.true.211
  %213 = load i32, i32* %center_y, align 4
  %214 = load i32, i32* %search_range.addr, align 4
  %cmp221 = icmp sgt i32 %213, %214
  br i1 %cmp221, label %land.lhs.true.223, label %if.else

land.lhs.true.223:                                ; preds = %land.lhs.true.220
  %215 = load i32, i32* %center_y, align 4
  %216 = load i16, i16* @img_height, align 2
  %conv224 = sext i16 %216 to i32
  %217 = load i16, i16* %blocksize_y, align 2
  %conv225 = sext i16 %217 to i32
  %sub226 = sub nsw i32 %conv224, %conv225
  %218 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid227 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %218, i32 0, i32 101
  %219 = load i32, i32* %EPZSSubPelGrid227, align 4
  %mul228 = mul nsw i32 %219, 2
  %shl229 = shl i32 %sub226, %mul228
  %220 = load i32, i32* %search_range.addr, align 4
  %sub230 = sub nsw i32 %shl229, %220
  %cmp231 = icmp slt i32 %215, %sub230
  br i1 %cmp231, label %if.then.233, label %if.else

if.then.233:                                      ; preds = %land.lhs.true.223
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.234

if.else:                                          ; preds = %land.lhs.true.223, %land.lhs.true.220, %land.lhs.true.211, %if.end.208
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.else, %if.then.233
  %221 = load i32, i32* %min_mcost.addr, align 4
  %222 = load i32, i32* %stopCriterion, align 4
  %cmp235 = icmp sgt i32 %221, %222
  br i1 %cmp235, label %if.then.237, label %if.end.968

if.then.237:                                      ; preds = %if.end.234
  %223 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x238 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %223, i32 0, i32 35
  %224 = load i32, i32* %mb_x238, align 4
  %225 = load i16, i16* @img_width, align 2
  %conv239 = sext i16 %225 to i32
  %shr240 = ashr i32 %conv239, 4
  %sub241 = sub nsw i32 %shr240, 1
  %cmp242 = icmp slt i32 %224, %sub241
  %conv243 = zext i1 %cmp242 to i32
  store i32 %conv243, i32* %mb_available_right, align 4
  %226 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y244 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %226, i32 0, i32 36
  %227 = load i32, i32* %mb_y244, align 4
  %228 = load i16, i16* @img_height, align 2
  %conv245 = sext i16 %228 to i32
  %shr246 = ashr i32 %conv245, 4
  %sub247 = sub nsw i32 %shr246, 1
  %cmp248 = icmp slt i32 %227, %sub247
  %conv249 = zext i1 %cmp248 to i32
  store i32 %conv249, i32* %mb_available_below, align 4
  store i32 5, i32* %prednum, align 4
  store i32 0, i32* %patternStop, align 4
  store i32 0, i32* %pointNumber, align 4
  store i32 0, i32* %nextLast, align 4
  store i32 0, i32* %totalCheckPts, align 4
  store i32 0, i32* %motionDirection, align 4
  %229 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %229, i32 0, i32 3
  %230 = load i32, i32* %current_mb_nr, align 4
  %231 = load i16, i16* %mb_x, align 2
  %conv250 = sext i16 %231 to i32
  %sub251 = sub nsw i32 %conv250, 1
  %232 = load i16, i16* %mb_y, align 2
  %conv252 = sext i16 %232 to i32
  call void @getLuma4x4Neighbour(i32 %230, i32 %sub251, i32 %conv252, %struct.pix_pos* %block_a)
  %233 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %233, i32 0, i32 3
  %234 = load i32, i32* %current_mb_nr253, align 4
  %235 = load i16, i16* %mb_x, align 2
  %conv254 = sext i16 %235 to i32
  %236 = load i16, i16* %mb_y, align 2
  %conv255 = sext i16 %236 to i32
  %sub256 = sub nsw i32 %conv255, 1
  call void @getLuma4x4Neighbour(i32 %234, i32 %conv254, i32 %sub256, %struct.pix_pos* %block_b)
  %237 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr257 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %237, i32 0, i32 3
  %238 = load i32, i32* %current_mb_nr257, align 4
  %239 = load i16, i16* %mb_x, align 2
  %conv258 = sext i16 %239 to i32
  %240 = load i16, i16* %blocksize_x, align 2
  %conv259 = sext i16 %240 to i32
  %add260 = add nsw i32 %conv258, %conv259
  %241 = load i16, i16* %mb_y, align 2
  %conv261 = sext i16 %241 to i32
  %sub262 = sub nsw i32 %conv261, 1
  call void @getLuma4x4Neighbour(i32 %238, i32 %add260, i32 %sub262, %struct.pix_pos* %block_c)
  %242 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr263 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %242, i32 0, i32 3
  %243 = load i32, i32* %current_mb_nr263, align 4
  %244 = load i16, i16* %mb_x, align 2
  %conv264 = sext i16 %244 to i32
  %sub265 = sub nsw i32 %conv264, 1
  %245 = load i16, i16* %mb_y, align 2
  %conv266 = sext i16 %245 to i32
  %sub267 = sub nsw i32 %conv266, 1
  call void @getLuma4x4Neighbour(i32 %243, i32 %sub265, i32 %sub267, %struct.pix_pos* %block_d)
  %246 = load i16, i16* %mb_y, align 2
  %conv268 = sext i16 %246 to i32
  %cmp269 = icmp sgt i32 %conv268, 0
  br i1 %cmp269, label %if.then.271, label %if.else.327

if.then.271:                                      ; preds = %if.then.237
  %247 = load i16, i16* %mb_x, align 2
  %conv272 = sext i16 %247 to i32
  %cmp273 = icmp slt i32 %conv272, 8
  br i1 %cmp273, label %if.then.275, label %if.else.308

if.then.275:                                      ; preds = %if.then.271
  %248 = load i16, i16* %mb_y, align 2
  %conv276 = sext i16 %248 to i32
  %cmp277 = icmp eq i32 %conv276, 8
  br i1 %cmp277, label %if.then.279, label %if.else.289

if.then.279:                                      ; preds = %if.then.275
  %249 = load i16, i16* %blocksize_x, align 2
  %conv280 = sext i16 %249 to i32
  %cmp281 = icmp ne i32 %conv280, 16
  br i1 %cmp281, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.279
  %250 = load i32, i32* %mb_available_right, align 4
  %tobool283 = icmp ne i32 %250, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.279
  %251 = phi i1 [ true, %if.then.279 ], [ %tobool283, %lor.rhs ]
  %lor.ext = zext i1 %251 to i32
  store i32 %lor.ext, i32* %block_available_right, align 4
  %252 = load i16, i16* %blocksize_x, align 2
  %conv284 = sext i16 %252 to i32
  %cmp285 = icmp eq i32 %conv284, 16
  br i1 %cmp285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %lor.end
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.287, %lor.end
  br label %if.end.307

if.else.289:                                      ; preds = %if.then.275
  %253 = load i16, i16* %mb_x, align 2
  %conv290 = sext i16 %253 to i32
  %254 = load i16, i16* %blocksize_x, align 2
  %conv291 = sext i16 %254 to i32
  %add292 = add nsw i32 %conv290, %conv291
  %cmp293 = icmp ne i32 %add292, 8
  br i1 %cmp293, label %lor.end.297, label %lor.rhs.295

lor.rhs.295:                                      ; preds = %if.else.289
  %255 = load i32, i32* %mb_available_right, align 4
  %tobool296 = icmp ne i32 %255, 0
  br label %lor.end.297

lor.end.297:                                      ; preds = %lor.rhs.295, %if.else.289
  %256 = phi i1 [ true, %if.else.289 ], [ %tobool296, %lor.rhs.295 ]
  %lor.ext298 = zext i1 %256 to i32
  store i32 %lor.ext298, i32* %block_available_right, align 4
  %257 = load i16, i16* %mb_x, align 2
  %conv299 = sext i16 %257 to i32
  %258 = load i16, i16* %blocksize_x, align 2
  %conv300 = sext i16 %258 to i32
  %add301 = add nsw i32 %conv299, %conv300
  %cmp302 = icmp eq i32 %add301, 8
  br i1 %cmp302, label %if.then.304, label %if.end.306

if.then.304:                                      ; preds = %lor.end.297
  %available305 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available305, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.304, %lor.end.297
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %if.end.288
  br label %if.end.326

if.else.308:                                      ; preds = %if.then.271
  %259 = load i16, i16* %mb_x, align 2
  %conv309 = sext i16 %259 to i32
  %260 = load i16, i16* %blocksize_x, align 2
  %conv310 = sext i16 %260 to i32
  %add311 = add nsw i32 %conv309, %conv310
  %cmp312 = icmp ne i32 %add311, 16
  br i1 %cmp312, label %lor.end.316, label %lor.rhs.314

lor.rhs.314:                                      ; preds = %if.else.308
  %261 = load i32, i32* %mb_available_right, align 4
  %tobool315 = icmp ne i32 %261, 0
  br label %lor.end.316

lor.end.316:                                      ; preds = %lor.rhs.314, %if.else.308
  %262 = phi i1 [ true, %if.else.308 ], [ %tobool315, %lor.rhs.314 ]
  %lor.ext317 = zext i1 %262 to i32
  store i32 %lor.ext317, i32* %block_available_right, align 4
  %263 = load i16, i16* %mb_x, align 2
  %conv318 = sext i16 %263 to i32
  %264 = load i16, i16* %blocksize_x, align 2
  %conv319 = sext i16 %264 to i32
  %add320 = add nsw i32 %conv318, %conv319
  %cmp321 = icmp eq i32 %add320, 16
  br i1 %cmp321, label %if.then.323, label %if.end.325

if.then.323:                                      ; preds = %lor.end.316
  %available324 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available324, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.323, %lor.end.316
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.end.307
  br label %if.end.337

if.else.327:                                      ; preds = %if.then.237
  %265 = load i16, i16* %mb_x, align 2
  %conv328 = sext i16 %265 to i32
  %266 = load i16, i16* %blocksize_x, align 2
  %conv329 = sext i16 %266 to i32
  %add330 = add nsw i32 %conv328, %conv329
  %cmp331 = icmp ne i32 %add330, 16
  br i1 %cmp331, label %lor.end.335, label %lor.rhs.333

lor.rhs.333:                                      ; preds = %if.else.327
  %267 = load i32, i32* %mb_available_right, align 4
  %tobool334 = icmp ne i32 %267, 0
  br label %lor.end.335

lor.end.335:                                      ; preds = %lor.rhs.333, %if.else.327
  %268 = phi i1 [ true, %if.else.327 ], [ %tobool334, %lor.rhs.333 ]
  %lor.ext336 = zext i1 %268 to i32
  store i32 %lor.ext336, i32* %block_available_right, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %lor.end.335, %if.end.326
  %269 = load i16, i16* %mb_y, align 2
  %conv338 = sext i16 %269 to i32
  %270 = load i16, i16* %blocksize_y, align 2
  %conv339 = sext i16 %270 to i32
  %add340 = add nsw i32 %conv338, %conv339
  %cmp341 = icmp ne i32 %add340, 16
  br i1 %cmp341, label %lor.end.345, label %lor.rhs.343

lor.rhs.343:                                      ; preds = %if.end.337
  %271 = load i32, i32* %mb_available_below, align 4
  %tobool344 = icmp ne i32 %271, 0
  br label %lor.end.345

lor.end.345:                                      ; preds = %lor.rhs.343, %if.end.337
  %272 = phi i1 [ true, %if.end.337 ], [ %tobool344, %lor.rhs.343 ]
  %lor.ext346 = zext i1 %272 to i32
  store i32 %lor.ext346, i32* %block_available_below, align 4
  %available347 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %273 = load i32, i32* %available347, align 4
  %tobool348 = icmp ne i32 %273, 0
  br i1 %tobool348, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.end.345
  %274 = load i16, i16* %pic_pix_x2, align 2
  %conv349 = sext i16 %274 to i32
  %275 = load i16, i16* %blockshape_x, align 2
  %conv350 = sext i16 %275 to i32
  %sub351 = sub nsw i32 %conv349, %conv350
  %idxprom352 = sext i32 %sub351 to i64
  %276 = load i32*, i32** %prevSad, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %276, i64 %idxprom352
  %277 = load i32, i32* %arrayidx353, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.end.345
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond354 = phi i32 [ %277, %cond.true ], [ 2147483647, %cond.false ]
  store i32 %cond354, i32* %sadA, align 4
  %available355 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %278 = load i32, i32* %available355, align 4
  %tobool356 = icmp ne i32 %278, 0
  br i1 %tobool356, label %cond.true.357, label %cond.false.360

cond.true.357:                                    ; preds = %cond.end
  %279 = load i16, i16* %pic_pix_x2, align 2
  %idxprom358 = sext i16 %279 to i64
  %280 = load i32*, i32** %prevSad, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %280, i64 %idxprom358
  %281 = load i32, i32* %arrayidx359, align 4
  br label %cond.end.361

cond.false.360:                                   ; preds = %cond.end
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.360, %cond.true.357
  %cond362 = phi i32 [ %281, %cond.true.357 ], [ 2147483647, %cond.false.360 ]
  store i32 %cond362, i32* %sadB, align 4
  %available363 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %282 = load i32, i32* %available363, align 4
  %tobool364 = icmp ne i32 %282, 0
  br i1 %tobool364, label %cond.true.365, label %cond.false.371

cond.true.365:                                    ; preds = %cond.end.361
  %283 = load i16, i16* %pic_pix_x2, align 2
  %conv366 = sext i16 %283 to i32
  %284 = load i16, i16* %blockshape_x, align 2
  %conv367 = sext i16 %284 to i32
  %add368 = add nsw i32 %conv366, %conv367
  %idxprom369 = sext i32 %add368 to i64
  %285 = load i32*, i32** %prevSad, align 8
  %arrayidx370 = getelementptr inbounds i32, i32* %285, i64 %idxprom369
  %286 = load i32, i32* %arrayidx370, align 4
  br label %cond.end.372

cond.false.371:                                   ; preds = %cond.end.361
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.371, %cond.true.365
  %cond373 = phi i32 [ %286, %cond.true.365 ], [ 2147483647, %cond.false.371 ]
  store i32 %cond373, i32* %sadC, align 4
  %287 = load i32, i32* %sadA, align 4
  %288 = load i32, i32* %sadB, align 4
  %289 = load i32, i32* %sadC, align 4
  %call374 = call i32 @imin(i32 %288, i32 %289)
  %call375 = call i32 @imin(i32 %287, i32 %call374)
  store i32 %call375, i32* %stopCriterion, align 4
  %290 = load i32, i32* %stopCriterion, align 4
  %291 = load i32, i32* %blocktype.addr, align 4
  %idxprom376 = sext i32 %291 to i64
  %arrayidx377 = getelementptr inbounds [8 x i32], [8 x i32]* @minthres, i32 0, i64 %idxprom376
  %292 = load i32, i32* %arrayidx377, align 4
  %call378 = call i32 @imax(i32 %290, i32 %292)
  store i32 %call378, i32* %stopCriterion, align 4
  %293 = load i32, i32* %stopCriterion, align 4
  %294 = load i32, i32* %blocktype.addr, align 4
  %idxprom379 = sext i32 %294 to i64
  %arrayidx380 = getelementptr inbounds [8 x i32], [8 x i32]* @maxthres, i32 0, i64 %idxprom379
  %295 = load i32, i32* %arrayidx380, align 4
  %call381 = call i32 @imin(i32 %293, i32 %295)
  store i32 %call381, i32* %stopCriterion, align 4
  %296 = load i32, i32* %blocktype.addr, align 4
  %idxprom382 = sext i32 %296 to i64
  %arrayidx383 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom382
  %297 = load i32, i32* %arrayidx383, align 4
  %298 = load i32, i32* %stopCriterion, align 4
  %call384 = call i32 @imax(i32 %297, i32 %298)
  %mul385 = mul nsw i32 9, %call384
  %299 = load i32, i32* %blocktype.addr, align 4
  %idxprom386 = sext i32 %299 to i64
  %arrayidx387 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom386
  %300 = load i32, i32* %arrayidx387, align 4
  %mul388 = mul nsw i32 2, %300
  %add389 = add nsw i32 %mul385, %mul388
  %shr390 = ashr i32 %add389, 3
  store i32 %shr390, i32* %stopCriterion, align 4
  %301 = load i32, i32* %list.addr, align 4
  %302 = load i32, i32* %list_offset.addr, align 4
  %303 = load i16, i16* %ref.addr, align 2
  %304 = load i32, i32* %list.addr, align 4
  %idxprom391 = sext i32 %304 to i64
  %305 = load i8***, i8**** %refPic.addr, align 8
  %arrayidx392 = getelementptr inbounds i8**, i8*** %305, i64 %idxprom391
  %306 = load i8**, i8*** %arrayidx392, align 8
  %307 = load i32, i32* %list.addr, align 4
  %idxprom393 = sext i32 %307 to i64
  %308 = load i16****, i16***** %tmp_mv.addr, align 8
  %arrayidx394 = getelementptr inbounds i16***, i16**** %308, i64 %idxprom393
  %309 = load i16***, i16**** %arrayidx394, align 8
  %310 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %call395 = call signext i16 @EPZSSpatialPredictors(%struct.pix_pos* byval align 8 %block_a, %struct.pix_pos* byval align 8 %block_b, %struct.pix_pos* byval align 8 %block_c, %struct.pix_pos* byval align 8 %block_d, i32 %301, i32 %302, i16 signext %303, i8** %306, i16*** %309, %struct.MEPatternNode* %310)
  store i16 %call395, i16* %invalid_refs, align 2
  %311 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem396 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %311, i32 0, i32 97
  %312 = load i32, i32* %EPZSSpatialMem396, align 4
  %tobool397 = icmp ne i32 %312, 0
  br i1 %tobool397, label %if.then.398, label %if.end.407

if.then.398:                                      ; preds = %cond.end.372
  %313 = load i32, i32* %list.addr, align 4
  %314 = load i32, i32* %list_offset.addr, align 4
  %add399 = add nsw i32 %313, %314
  %315 = load i16, i16* %ref.addr, align 2
  %316 = load i32, i32* %blocktype.addr, align 4
  %sub400 = sub nsw i32 %316, 1
  %317 = load i16, i16* %pic_pix_x2, align 2
  %conv401 = sext i16 %317 to i32
  %318 = load i16, i16* %blockshape_x, align 2
  %conv402 = sext i16 %318 to i32
  %319 = load i16, i16* %blockshape_y, align 2
  %conv403 = sext i16 %319 to i32
  %320 = load i16, i16* %block_y, align 2
  %conv404 = sext i16 %320 to i32
  %321 = load i16, i16* @img_width, align 2
  %conv405 = sext i16 %321 to i32
  %shr406 = ashr i32 %conv405, 2
  %322 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  call void @EPZSSpatialMemPredictors(i32 %add399, i16 signext %315, i32 %sub400, i32 %conv401, i32 %conv402, i32 %conv403, i32 %conv404, i32* %prednum, i32 %shr406, %struct.MEPatternNode* %322)
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.398, %cond.end.372
  %323 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSTemporal = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %323, i32 0, i32 96
  %324 = load i32, i32* %EPZSTemporal, align 4
  %tobool408 = icmp ne i32 %324, 0
  br i1 %tobool408, label %if.then.409, label %if.end.416

if.then.409:                                      ; preds = %if.end.407
  %325 = load i32, i32* %list.addr, align 4
  %326 = load i32, i32* %list_offset.addr, align 4
  %327 = load i16, i16* %ref.addr, align 2
  %328 = load i16, i16* %pic_pix_x2, align 2
  %conv410 = sext i16 %328 to i32
  %329 = load i16, i16* %pic_pix_y2, align 2
  %conv411 = sext i16 %329 to i32
  %330 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %available412 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %331 = load i32, i32* %available412, align 4
  %available413 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %332 = load i32, i32* %available413, align 4
  %333 = load i32, i32* %block_available_right, align 4
  %334 = load i32, i32* %block_available_below, align 4
  %335 = load i16, i16* %blockshape_x, align 2
  %conv414 = sext i16 %335 to i32
  %336 = load i16, i16* %blockshape_y, align 2
  %conv415 = sext i16 %336 to i32
  %337 = load i32, i32* %stopCriterion, align 4
  %338 = load i32, i32* %min_mcost.addr, align 4
  call void @EPZSTemporalPredictors(i32 %325, i32 %326, i16 signext %327, i32 %conv410, i32 %conv411, %struct.MEPatternNode* %330, i32* %prednum, i32 %331, i32 %332, i32 %333, i32 %334, i32 %conv414, i32 %conv415, i32 %337, i32 %338)
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.409, %if.end.407
  %339 = load i32, i32* %min_mcost.addr, align 4
  %340 = load i32, i32* %stopCriterion, align 4
  %cmp417 = icmp sgt i32 %339, %340
  br i1 %cmp417, label %land.lhs.true.419, label %land.end.450

land.lhs.true.419:                                ; preds = %if.end.416
  %341 = load i16, i16* %ref.addr, align 2
  %conv420 = sext i16 %341 to i32
  %cmp421 = icmp slt i32 %conv420, 2
  br i1 %cmp421, label %land.lhs.true.423, label %lor.lhs.false.426

land.lhs.true.423:                                ; preds = %land.lhs.true.419
  %342 = load i32, i32* %blocktype.addr, align 4
  %cmp424 = icmp slt i32 %342, 5
  br i1 %cmp424, label %land.rhs.436, label %lor.lhs.false.426

lor.lhs.false.426:                                ; preds = %land.lhs.true.423, %land.lhs.true.419
  %343 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure427 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %343, i32 0, i32 6
  %344 = load i32, i32* %structure427, align 4
  %cmp428 = icmp ne i32 %344, 0
  br i1 %cmp428, label %land.lhs.true.432, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %lor.lhs.false.426
  %345 = load i32, i32* %list_offset.addr, align 4
  %tobool431 = icmp ne i32 %345, 0
  br i1 %tobool431, label %land.lhs.true.432, label %land.end.450

land.lhs.true.432:                                ; preds = %lor.lhs.false.430, %lor.lhs.false.426
  %346 = load i16, i16* %ref.addr, align 2
  %conv433 = sext i16 %346 to i32
  %cmp434 = icmp slt i32 %conv433, 3
  br i1 %cmp434, label %land.rhs.436, label %land.end.450

land.rhs.436:                                     ; preds = %land.lhs.true.432, %land.lhs.true.423
  %347 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSFixed = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %347, i32 0, i32 95
  %348 = load i32, i32* %EPZSFixed, align 4
  %cmp437 = icmp sgt i32 %348, 1
  br i1 %cmp437, label %lor.end.448, label %lor.rhs.439

lor.rhs.439:                                      ; preds = %land.rhs.436
  %349 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSFixed440 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %349, i32 0, i32 95
  %350 = load i32, i32* %EPZSFixed440, align 4
  %tobool441 = icmp ne i32 %350, 0
  br i1 %tobool441, label %land.rhs.442, label %land.end.446

land.rhs.442:                                     ; preds = %lor.rhs.439
  %351 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type443 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %351, i32 0, i32 5
  %352 = load i32, i32* %type443, align 4
  %cmp444 = icmp eq i32 %352, 0
  br label %land.end.446

land.end.446:                                     ; preds = %land.rhs.442, %lor.rhs.439
  %353 = phi i1 [ false, %lor.rhs.439 ], [ %cmp444, %land.rhs.442 ]
  br label %lor.end.448

lor.end.448:                                      ; preds = %land.end.446, %land.rhs.436
  %354 = phi i1 [ true, %land.rhs.436 ], [ %353, %land.end.446 ]
  br label %land.end.450

land.end.450:                                     ; preds = %lor.end.448, %land.lhs.true.432, %lor.lhs.false.430, %if.end.416
  %355 = phi i1 [ false, %land.lhs.true.432 ], [ false, %lor.lhs.false.430 ], [ false, %if.end.416 ], [ %354, %lor.end.448 ]
  %land.ext451 = zext i1 %355 to i32
  store i32 %land.ext451, i32* %conditionEPZS, align 4
  %356 = load i32, i32* %conditionEPZS, align 4
  %tobool452 = icmp ne i32 %356, 0
  br i1 %tobool452, label %if.then.453, label %if.end.474

if.then.453:                                      ; preds = %land.end.450
  %357 = load i16*, i16** %mv.addr, align 8
  %358 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %359 = load i32, i32* %blocktype.addr, align 4
  %cmp454 = icmp slt i32 %359, 5
  br i1 %cmp454, label %land.lhs.true.456, label %land.end.472

land.lhs.true.456:                                ; preds = %if.then.453
  %360 = load i16, i16* %invalid_refs, align 2
  %conv457 = sext i16 %360 to i32
  %cmp458 = icmp sgt i32 %conv457, 2
  br i1 %cmp458, label %land.rhs.460, label %land.end.472

land.rhs.460:                                     ; preds = %land.lhs.true.456
  %361 = load i16, i16* %ref.addr, align 2
  %conv461 = sext i16 %361 to i32
  %362 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure462 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %362, i32 0, i32 6
  %363 = load i32, i32* %structure462, align 4
  %cmp463 = icmp ne i32 %363, 0
  br i1 %cmp463, label %lor.end.467, label %lor.rhs.465

lor.rhs.465:                                      ; preds = %land.rhs.460
  %364 = load i32, i32* %list_offset.addr, align 4
  %tobool466 = icmp ne i32 %364, 0
  br label %lor.end.467

lor.end.467:                                      ; preds = %lor.rhs.465, %land.rhs.460
  %365 = phi i1 [ true, %land.rhs.460 ], [ %tobool466, %lor.rhs.465 ]
  %lor.ext468 = zext i1 %365 to i32
  %add469 = add nsw i32 1, %lor.ext468
  %cmp470 = icmp slt i32 %conv461, %add469
  br label %land.end.472

land.end.472:                                     ; preds = %lor.end.467, %land.lhs.true.456, %if.then.453
  %366 = phi i1 [ false, %land.lhs.true.456 ], [ false, %if.then.453 ], [ %cmp470, %lor.end.467 ]
  %land.ext473 = zext i1 %366 to i32
  call void @EPZSWindowPredictors(i16* %357, %struct.MEPatternNode* %358, i32* %prednum, i32 %land.ext473)
  br label %if.end.474

if.end.474:                                       ; preds = %land.end.472, %land.end.450
  %367 = load i16, i16* %ref.addr, align 2
  %conv475 = sext i16 %367 to i32
  %cmp476 = icmp eq i32 %conv475, 0
  br i1 %cmp476, label %lor.end.487, label %lor.rhs.478

lor.rhs.478:                                      ; preds = %if.end.474
  %368 = load i16, i16* %ref.addr, align 2
  %conv479 = sext i16 %368 to i32
  %cmp480 = icmp sgt i32 %conv479, 0
  br i1 %cmp480, label %land.rhs.482, label %land.end.485

land.rhs.482:                                     ; preds = %lor.rhs.478
  %369 = load i32, i32* %min_mcost.addr, align 4
  %370 = load i32, i32* %stopCriterion, align 4
  %cmp483 = icmp sgt i32 %369, %370
  br label %land.end.485

land.end.485:                                     ; preds = %land.rhs.482, %lor.rhs.478
  %371 = phi i1 [ false, %lor.rhs.478 ], [ %cmp483, %land.rhs.482 ]
  br label %lor.end.487

lor.end.487:                                      ; preds = %land.end.485, %if.end.474
  %372 = phi i1 [ true, %if.end.474 ], [ %371, %land.end.485 ]
  %lor.ext488 = zext i1 %372 to i32
  store i32 %lor.ext488, i32* %conditionEPZS, align 4
  %373 = load i32, i32* %conditionEPZS, align 4
  %tobool489 = icmp ne i32 %373, 0
  br i1 %tobool489, label %land.lhs.true.490, label %if.end.498

land.lhs.true.490:                                ; preds = %lor.end.487
  %374 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr491 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %374, i32 0, i32 3
  %375 = load i32, i32* %current_mb_nr491, align 4
  %cmp492 = icmp ne i32 %375, 0
  br i1 %cmp492, label %if.then.494, label %if.end.498

if.then.494:                                      ; preds = %land.lhs.true.490
  %376 = load i16, i16* %block_x, align 2
  %conv495 = sext i16 %376 to i32
  %377 = load i16, i16* %block_y, align 2
  %conv496 = sext i16 %377 to i32
  %378 = load i32, i32* %blocktype.addr, align 4
  %379 = load i16, i16* %ref.addr, align 2
  %conv497 = sext i16 %379 to i32
  %380 = load i32, i32* %list.addr, align 4
  %381 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  call void @EPZSBlockTypePredictors(i32 %conv495, i32 %conv496, i32 %378, i32 %conv497, i32 %380, %struct.MEPatternNode* %381, i32* %prednum)
  br label %if.end.498

if.end.498:                                       ; preds = %if.then.494, %land.lhs.true.490, %lor.end.487
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.498
  %382 = load i32, i32* %pos, align 4
  %383 = load i32, i32* %prednum, align 4
  %cmp499 = icmp slt i32 %382, %383
  br i1 %cmp499, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %384 = load i32, i32* %pos, align 4
  %idxprom501 = sext i32 %384 to i64
  %385 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %385, i32 0, i32 1
  %386 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx502 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %386, i64 %idxprom501
  %mv503 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx502, i32 0, i32 0
  %arrayidx504 = getelementptr inbounds [2 x i32], [2 x i32]* %mv503, i32 0, i64 0
  %387 = load i32, i32* %arrayidx504, align 4
  %arrayidx505 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  store i32 %387, i32* %arrayidx505, align 4
  %388 = load i32, i32* %pos, align 4
  %idxprom506 = sext i32 %388 to i64
  %389 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %point507 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %389, i32 0, i32 1
  %390 = load %struct.SPoint*, %struct.SPoint** %point507, align 8
  %arrayidx508 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %390, i64 %idxprom506
  %mv509 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx508, i32 0, i32 0
  %arrayidx510 = getelementptr inbounds [2 x i32], [2 x i32]* %mv509, i32 0, i64 1
  %391 = load i32, i32* %arrayidx510, align 4
  %arrayidx511 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  store i32 %391, i32* %arrayidx511, align 4
  %arrayidx512 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %392 = load i32, i32* %arrayidx512, align 4
  %393 = load i16*, i16** %mv.addr, align 8
  %arrayidx513 = getelementptr inbounds i16, i16* %393, i64 0
  %394 = load i16, i16* %arrayidx513, align 2
  %conv514 = sext i16 %394 to i32
  %sub515 = sub nsw i32 %392, %conv514
  %call516 = call i32 @iabs(i32 %sub515)
  %395 = load i32, i32* %search_range.addr, align 4
  %cmp517 = icmp sgt i32 %call516, %395
  br i1 %cmp517, label %if.then.527, label %lor.lhs.false.519

lor.lhs.false.519:                                ; preds = %for.body
  %arrayidx520 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %396 = load i32, i32* %arrayidx520, align 4
  %397 = load i16*, i16** %mv.addr, align 8
  %arrayidx521 = getelementptr inbounds i16, i16* %397, i64 1
  %398 = load i16, i16* %arrayidx521, align 2
  %conv522 = sext i16 %398 to i32
  %sub523 = sub nsw i32 %396, %conv522
  %call524 = call i32 @iabs(i32 %sub523)
  %399 = load i32, i32* %search_range.addr, align 4
  %cmp525 = icmp sgt i32 %call524, %399
  br i1 %cmp525, label %if.then.527, label %if.end.528

if.then.527:                                      ; preds = %lor.lhs.false.519, %for.body
  br label %for.inc

if.end.528:                                       ; preds = %lor.lhs.false.519
  %arrayidx529 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %400 = load i32, i32* %arrayidx529, align 4
  %401 = load i16*, i16** %mv.addr, align 8
  %arrayidx530 = getelementptr inbounds i16, i16* %401, i64 0
  %402 = load i16, i16* %arrayidx530, align 2
  %conv531 = sext i16 %402 to i32
  %sub532 = sub nsw i32 %400, %conv531
  %call533 = call i32 @iabs(i32 %sub532)
  %403 = load i32, i32* %search_range.addr, align 4
  %cmp534 = icmp sle i32 %call533, %403
  br i1 %cmp534, label %land.lhs.true.536, label %if.end.568

land.lhs.true.536:                                ; preds = %if.end.528
  %arrayidx537 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %404 = load i32, i32* %arrayidx537, align 4
  %405 = load i16*, i16** %mv.addr, align 8
  %arrayidx538 = getelementptr inbounds i16, i16* %405, i64 1
  %406 = load i16, i16* %arrayidx538, align 2
  %conv539 = sext i16 %406 to i32
  %sub540 = sub nsw i32 %404, %conv539
  %call541 = call i32 @iabs(i32 %sub540)
  %407 = load i32, i32* %search_range.addr, align 4
  %cmp542 = icmp sle i32 %call541, %407
  br i1 %cmp542, label %if.then.544, label %if.end.568

if.then.544:                                      ; preds = %land.lhs.true.536
  %408 = load i32, i32* %mapCenter_x, align 4
  %arrayidx545 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %409 = load i32, i32* %arrayidx545, align 4
  %add546 = add nsw i32 %408, %409
  %idxprom547 = sext i32 %add546 to i64
  %410 = load i32, i32* %mapCenter_y, align 4
  %arrayidx548 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %411 = load i32, i32* %arrayidx548, align 4
  %add549 = add nsw i32 %410, %411
  %idxprom550 = sext i32 %add549 to i64
  %412 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx551 = getelementptr inbounds i16*, i16** %412, i64 %idxprom550
  %413 = load i16*, i16** %arrayidx551, align 8
  %arrayidx552 = getelementptr inbounds i16, i16* %413, i64 %idxprom547
  %414 = load i16, i16* %arrayidx552, align 2
  %conv553 = sext i16 %414 to i32
  %415 = load i16, i16* @EPZSBlkCount, align 2
  %conv554 = sext i16 %415 to i32
  %cmp555 = icmp eq i32 %conv553, %conv554
  br i1 %cmp555, label %if.then.557, label %if.else.558

if.then.557:                                      ; preds = %if.then.544
  br label %for.inc

if.else.558:                                      ; preds = %if.then.544
  %416 = load i16, i16* @EPZSBlkCount, align 2
  %417 = load i32, i32* %mapCenter_x, align 4
  %arrayidx559 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %418 = load i32, i32* %arrayidx559, align 4
  %add560 = add nsw i32 %417, %418
  %idxprom561 = sext i32 %add560 to i64
  %419 = load i32, i32* %mapCenter_y, align 4
  %arrayidx562 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %420 = load i32, i32* %arrayidx562, align 4
  %add563 = add nsw i32 %419, %420
  %idxprom564 = sext i32 %add563 to i64
  %421 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx565 = getelementptr inbounds i16*, i16** %421, i64 %idxprom564
  %422 = load i16*, i16** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i16, i16* %422, i64 %idxprom561
  store i16 %416, i16* %arrayidx566, align 2
  br label %if.end.567

if.end.567:                                       ; preds = %if.else.558
  br label %if.end.568

if.end.568:                                       ; preds = %if.end.567, %land.lhs.true.536, %if.end.528
  %423 = load i32, i32* %pic_pix_x.addr, align 4
  %arrayidx569 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %424 = load i32, i32* %arrayidx569, align 4
  %add570 = add nsw i32 %423, %424
  %425 = load i32, i32* @mv_rescale, align 4
  %shl571 = shl i32 %add570, %425
  store i32 %shl571, i32* %cand_x, align 4
  %426 = load i32, i32* %pic_pix_y.addr, align 4
  %arrayidx572 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %427 = load i32, i32* %arrayidx572, align 4
  %add573 = add nsw i32 %426, %427
  %428 = load i32, i32* @mv_rescale, align 4
  %shl574 = shl i32 %add573, %428
  store i32 %shl574, i32* %cand_y, align 4
  %429 = load i32, i32* %lambda_factor.addr, align 4
  %430 = load i32, i32* %cand_x, align 4
  %431 = load i32, i32* %pred_x, align 4
  %sub575 = sub nsw i32 %430, %431
  %idxprom576 = sext i32 %sub575 to i64
  %432 = load i32*, i32** @mvbits, align 8
  %arrayidx577 = getelementptr inbounds i32, i32* %432, i64 %idxprom576
  %433 = load i32, i32* %arrayidx577, align 4
  %434 = load i32, i32* %cand_y, align 4
  %435 = load i32, i32* %pred_y, align 4
  %sub578 = sub nsw i32 %434, %435
  %idxprom579 = sext i32 %sub578 to i64
  %436 = load i32*, i32** @mvbits, align 8
  %arrayidx580 = getelementptr inbounds i32, i32* %436, i64 %idxprom579
  %437 = load i32, i32* %arrayidx580, align 4
  %add581 = add nsw i32 %433, %437
  %mul582 = mul nsw i32 %429, %add581
  %shr583 = ashr i32 %mul582, 16
  store i32 %shr583, i32* %mcost, align 4
  %438 = load i32, i32* %mcost, align 4
  %439 = load i32, i32* %second_mcost, align 4
  %cmp584 = icmp sge i32 %438, %439
  br i1 %cmp584, label %if.then.586, label %if.end.587

if.then.586:                                      ; preds = %if.end.568
  br label %for.inc

if.end.587:                                       ; preds = %if.end.568
  %440 = load i32, i32* %cand_x, align 4
  %cmp588 = icmp sge i32 %440, 0
  br i1 %cmp588, label %land.lhs.true.590, label %land.end.605

land.lhs.true.590:                                ; preds = %if.end.587
  %441 = load i32, i32* %cand_x, align 4
  %442 = load i16, i16* @img_width, align 2
  %conv591 = sext i16 %442 to i32
  %443 = load i16, i16* %blocksize_x, align 2
  %conv592 = sext i16 %443 to i32
  %sub593 = sub nsw i32 %conv591, %conv592
  %cmp594 = icmp slt i32 %441, %sub593
  br i1 %cmp594, label %land.lhs.true.596, label %land.end.605

land.lhs.true.596:                                ; preds = %land.lhs.true.590
  %444 = load i32, i32* %cand_y, align 4
  %cmp597 = icmp sge i32 %444, 0
  br i1 %cmp597, label %land.rhs.599, label %land.end.605

land.rhs.599:                                     ; preds = %land.lhs.true.596
  %445 = load i32, i32* %cand_y, align 4
  %446 = load i16, i16* @img_height, align 2
  %conv600 = sext i16 %446 to i32
  %447 = load i16, i16* %blocksize_y, align 2
  %conv601 = sext i16 %447 to i32
  %sub602 = sub nsw i32 %conv600, %conv601
  %cmp603 = icmp slt i32 %445, %sub602
  br label %land.end.605

land.end.605:                                     ; preds = %land.rhs.599, %land.lhs.true.596, %land.lhs.true.590, %if.end.587
  %448 = phi i1 [ false, %land.lhs.true.596 ], [ false, %land.lhs.true.590 ], [ false, %if.end.587 ], [ %cmp603, %land.rhs.599 ]
  %cond607 = select i1 %448, i32 0, i32 1
  store i32 %cond607, i32* @ref_access_method, align 4
  %449 = load i32, i32* %dist_method, align 4
  %idxprom608 = sext i32 %449 to i64
  %arrayidx609 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom608
  %450 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx609, align 8
  %451 = load i16*, i16** %cur_pic.addr, align 8
  %452 = load i16, i16* %blocksize_y, align 2
  %conv610 = sext i16 %452 to i32
  %453 = load i16, i16* %blocksize_x, align 2
  %conv611 = sext i16 %453 to i32
  %454 = load i32, i32* %second_mcost, align 4
  %455 = load i32, i32* %mcost, align 4
  %sub612 = sub nsw i32 %454, %455
  %456 = load i32, i32* %cand_x, align 4
  %add613 = add nsw i32 %456, 80
  %457 = load i32, i32* %cand_y, align 4
  %add614 = add nsw i32 %457, 80
  %call615 = call i32 %450(i16* %451, i32 %conv610, i32 %conv611, i32 %sub612, i32 %add613, i32 %add614)
  %458 = load i32, i32* %mcost, align 4
  %add616 = add nsw i32 %458, %call615
  store i32 %add616, i32* %mcost, align 4
  %459 = load i32, i32* %mcost, align 4
  %460 = load i32, i32* %min_mcost.addr, align 4
  %cmp617 = icmp slt i32 %459, %460
  br i1 %cmp617, label %if.then.619, label %if.else.628

if.then.619:                                      ; preds = %land.end.605
  %arrayidx620 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %461 = load i32, i32* %arrayidx620, align 4
  %arrayidx621 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 0
  store i32 %461, i32* %arrayidx621, align 4
  %arrayidx622 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %462 = load i32, i32* %arrayidx622, align 4
  %arrayidx623 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 1
  store i32 %462, i32* %arrayidx623, align 4
  %arrayidx624 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %463 = load i32, i32* %arrayidx624, align 4
  %arrayidx625 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  store i32 %463, i32* %arrayidx625, align 4
  %arrayidx626 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %464 = load i32, i32* %arrayidx626, align 4
  %arrayidx627 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  store i32 %464, i32* %arrayidx627, align 4
  %465 = load i32, i32* %min_mcost.addr, align 4
  store i32 %465, i32* %second_mcost, align 4
  %466 = load i32, i32* %mcost, align 4
  store i32 %466, i32* %min_mcost.addr, align 4
  store i8 1, i8* %checkMedian, align 1
  br label %if.end.637

if.else.628:                                      ; preds = %land.end.605
  %467 = load i32, i32* %mcost, align 4
  %468 = load i32, i32* %second_mcost, align 4
  %cmp629 = icmp slt i32 %467, %468
  br i1 %cmp629, label %if.then.631, label %if.end.636

if.then.631:                                      ; preds = %if.else.628
  %arrayidx632 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %469 = load i32, i32* %arrayidx632, align 4
  %arrayidx633 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 0
  store i32 %469, i32* %arrayidx633, align 4
  %arrayidx634 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %470 = load i32, i32* %arrayidx634, align 4
  %arrayidx635 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 1
  store i32 %470, i32* %arrayidx635, align 4
  %471 = load i32, i32* %mcost, align 4
  store i32 %471, i32* %second_mcost, align 4
  store i8 1, i8* %checkMedian, align 1
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.631, %if.else.628
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.619
  br label %for.inc

for.inc:                                          ; preds = %if.end.637, %if.then.586, %if.then.557, %if.then.527
  %472 = load i32, i32* %pos, align 4
  %inc638 = add nsw i32 %472, 1
  store i32 %inc638, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %473 = load i32, i32* %min_mcost.addr, align 4
  %474 = load i32, i32* %stopCriterion, align 4
  %cmp639 = icmp sgt i32 %473, %474
  br i1 %cmp639, label %if.then.641, label %if.end.967

if.then.641:                                      ; preds = %for.end
  %475 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSPattern = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %475, i32 0, i32 93
  %476 = load i32, i32* %EPZSPattern, align 4
  %cmp642 = icmp ne i32 %476, 0
  br i1 %cmp642, label %if.then.644, label %if.end.697

if.then.644:                                      ; preds = %if.then.641
  %477 = load i32, i32* %min_mcost.addr, align 4
  %478 = load i32, i32* %stopCriterion, align 4
  %479 = load i32, i32* %blocktype.addr, align 4
  %idxprom645 = sext i32 %479 to i64
  %arrayidx646 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom645
  %480 = load i32, i32* %arrayidx646, align 4
  %mul647 = mul nsw i32 3, %480
  %shr648 = ashr i32 %mul647, 1
  %add649 = add nsw i32 %478, %shr648
  %cmp650 = icmp slt i32 %477, %add649
  br i1 %cmp650, label %if.then.652, label %if.else.683

if.then.652:                                      ; preds = %if.then.644
  %arrayidx653 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %481 = load i32, i32* %arrayidx653, align 4
  %cmp654 = icmp eq i32 %481, 0
  br i1 %cmp654, label %land.lhs.true.656, label %lor.lhs.false.660

land.lhs.true.656:                                ; preds = %if.then.652
  %arrayidx657 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %482 = load i32, i32* %arrayidx657, align 4
  %cmp658 = icmp eq i32 %482, 0
  br i1 %cmp658, label %if.then.680, label %lor.lhs.false.660

lor.lhs.false.660:                                ; preds = %land.lhs.true.656, %if.then.652
  %arrayidx661 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %483 = load i32, i32* %arrayidx661, align 4
  %484 = load i16*, i16** %mv.addr, align 8
  %arrayidx662 = getelementptr inbounds i16, i16* %484, i64 0
  %485 = load i16, i16* %arrayidx662, align 2
  %conv663 = sext i16 %485 to i32
  %sub664 = sub nsw i32 %483, %conv663
  %call665 = call i32 @iabs(i32 %sub664)
  %486 = load i32, i32* @mv_rescale, align 4
  %sub666 = sub nsw i32 2, %486
  %shl667 = shl i32 2, %sub666
  %cmp668 = icmp slt i32 %call665, %shl667
  br i1 %cmp668, label %land.lhs.true.670, label %if.else.681

land.lhs.true.670:                                ; preds = %lor.lhs.false.660
  %arrayidx671 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %487 = load i32, i32* %arrayidx671, align 4
  %488 = load i16*, i16** %mv.addr, align 8
  %arrayidx672 = getelementptr inbounds i16, i16* %488, i64 1
  %489 = load i16, i16* %arrayidx672, align 2
  %conv673 = sext i16 %489 to i32
  %sub674 = sub nsw i32 %487, %conv673
  %call675 = call i32 @iabs(i32 %sub674)
  %490 = load i32, i32* @mv_rescale, align 4
  %sub676 = sub nsw i32 2, %490
  %shl677 = shl i32 2, %sub676
  %cmp678 = icmp slt i32 %call675, %shl677
  br i1 %cmp678, label %if.then.680, label %if.else.681

if.then.680:                                      ; preds = %land.lhs.true.670, %land.lhs.true.656
  %491 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  store %struct.MEPatternNode* %491, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.682

if.else.681:                                      ; preds = %land.lhs.true.670, %lor.lhs.false.660
  %492 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %492, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.682

if.end.682:                                       ; preds = %if.else.681, %if.then.680
  br label %if.end.696

if.else.683:                                      ; preds = %if.then.644
  %493 = load i32, i32* %blocktype.addr, align 4
  %cmp684 = icmp sgt i32 %493, 5
  br i1 %cmp684, label %if.then.693, label %lor.lhs.false.686

lor.lhs.false.686:                                ; preds = %if.else.683
  %494 = load i16, i16* %ref.addr, align 2
  %conv687 = sext i16 %494 to i32
  %cmp688 = icmp sgt i32 %conv687, 0
  br i1 %cmp688, label %land.lhs.true.690, label %if.else.694

land.lhs.true.690:                                ; preds = %lor.lhs.false.686
  %495 = load i32, i32* %blocktype.addr, align 4
  %cmp691 = icmp ne i32 %495, 1
  br i1 %cmp691, label %if.then.693, label %if.else.694

if.then.693:                                      ; preds = %land.lhs.true.690, %if.else.683
  %496 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %496, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.695

if.else.694:                                      ; preds = %land.lhs.true.690, %lor.lhs.false.686
  %497 = load %struct.MEPatternNode*, %struct.MEPatternNode** @searchPattern, align 8
  store %struct.MEPatternNode* %497, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.695

if.end.695:                                       ; preds = %if.else.694, %if.then.693
  br label %if.end.696

if.end.696:                                       ; preds = %if.end.695, %if.end.682
  br label %if.end.697

if.end.697:                                       ; preds = %if.end.696, %if.then.641
  %498 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %498, i32 0, i32 0
  %499 = load i32, i32* %searchPoints, align 4
  store i32 %499, i32* %totalCheckPts, align 4
  %arrayidx698 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %500 = load i32, i32* %arrayidx698, align 4
  store i32 %500, i32* %center_x, align 4
  %arrayidx699 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %501 = load i32, i32* %arrayidx699, align 4
  store i32 %501, i32* %center_y, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.697, %if.end.963
  br label %do.body

do.body:                                          ; preds = %do.cond.853, %while.body
  %502 = load i32, i32* %totalCheckPts, align 4
  store i32 %502, i32* %checkPts, align 4
  br label %do.body.700

do.body.700:                                      ; preds = %do.cond, %do.body
  %503 = load i32, i32* %center_x, align 4
  %504 = load i32, i32* %pointNumber, align 4
  %idxprom701 = sext i32 %504 to i64
  %505 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point702 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %505, i32 0, i32 1
  %506 = load %struct.SPoint*, %struct.SPoint** %point702, align 8
  %arrayidx703 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %506, i64 %idxprom701
  %mv704 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx703, i32 0, i32 0
  %arrayidx705 = getelementptr inbounds [2 x i32], [2 x i32]* %mv704, i32 0, i64 0
  %507 = load i32, i32* %arrayidx705, align 4
  %add706 = add nsw i32 %503, %507
  %arrayidx707 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  store i32 %add706, i32* %arrayidx707, align 4
  %508 = load i32, i32* %center_y, align 4
  %509 = load i32, i32* %pointNumber, align 4
  %idxprom708 = sext i32 %509 to i64
  %510 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point709 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %510, i32 0, i32 1
  %511 = load %struct.SPoint*, %struct.SPoint** %point709, align 8
  %arrayidx710 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %511, i64 %idxprom708
  %mv711 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx710, i32 0, i32 0
  %arrayidx712 = getelementptr inbounds [2 x i32], [2 x i32]* %mv711, i32 0, i64 1
  %512 = load i32, i32* %arrayidx712, align 4
  %add713 = add nsw i32 %508, %512
  %arrayidx714 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  store i32 %add713, i32* %arrayidx714, align 4
  %513 = load i32, i32* %pic_pix_x.addr, align 4
  %arrayidx715 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %514 = load i32, i32* %arrayidx715, align 4
  %add716 = add nsw i32 %513, %514
  %515 = load i32, i32* @mv_rescale, align 4
  %shl717 = shl i32 %add716, %515
  store i32 %shl717, i32* %cand_x, align 4
  %516 = load i32, i32* %pic_pix_y.addr, align 4
  %arrayidx718 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %517 = load i32, i32* %arrayidx718, align 4
  %add719 = add nsw i32 %516, %517
  %518 = load i32, i32* @mv_rescale, align 4
  %shl720 = shl i32 %add719, %518
  store i32 %shl720, i32* %cand_y, align 4
  %arrayidx721 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %519 = load i32, i32* %arrayidx721, align 4
  %520 = load i16*, i16** %mv.addr, align 8
  %arrayidx722 = getelementptr inbounds i16, i16* %520, i64 0
  %521 = load i16, i16* %arrayidx722, align 2
  %conv723 = sext i16 %521 to i32
  %sub724 = sub nsw i32 %519, %conv723
  %call725 = call i32 @iabs(i32 %sub724)
  %522 = load i32, i32* %search_range.addr, align 4
  %cmp726 = icmp sle i32 %call725, %522
  br i1 %cmp726, label %land.lhs.true.728, label %if.end.819

land.lhs.true.728:                                ; preds = %do.body.700
  %arrayidx729 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %523 = load i32, i32* %arrayidx729, align 4
  %524 = load i16*, i16** %mv.addr, align 8
  %arrayidx730 = getelementptr inbounds i16, i16* %524, i64 1
  %525 = load i16, i16* %arrayidx730, align 2
  %conv731 = sext i16 %525 to i32
  %sub732 = sub nsw i32 %523, %conv731
  %call733 = call i32 @iabs(i32 %sub732)
  %526 = load i32, i32* %search_range.addr, align 4
  %cmp734 = icmp sle i32 %call733, %526
  br i1 %cmp734, label %if.then.736, label %if.end.819

if.then.736:                                      ; preds = %land.lhs.true.728
  %527 = load i32, i32* %mapCenter_x, align 4
  %arrayidx737 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %528 = load i32, i32* %arrayidx737, align 4
  %add738 = add nsw i32 %527, %528
  %idxprom739 = sext i32 %add738 to i64
  %529 = load i32, i32* %mapCenter_y, align 4
  %arrayidx740 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %530 = load i32, i32* %arrayidx740, align 4
  %add741 = add nsw i32 %529, %530
  %idxprom742 = sext i32 %add741 to i64
  %531 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx743 = getelementptr inbounds i16*, i16** %531, i64 %idxprom742
  %532 = load i16*, i16** %arrayidx743, align 8
  %arrayidx744 = getelementptr inbounds i16, i16* %532, i64 %idxprom739
  %533 = load i16, i16* %arrayidx744, align 2
  %conv745 = sext i16 %533 to i32
  %534 = load i16, i16* @EPZSBlkCount, align 2
  %conv746 = sext i16 %534 to i32
  %cmp747 = icmp ne i32 %conv745, %conv746
  br i1 %cmp747, label %if.then.749, label %if.else.758

if.then.749:                                      ; preds = %if.then.736
  %535 = load i16, i16* @EPZSBlkCount, align 2
  %536 = load i32, i32* %mapCenter_x, align 4
  %arrayidx750 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %537 = load i32, i32* %arrayidx750, align 4
  %add751 = add nsw i32 %536, %537
  %idxprom752 = sext i32 %add751 to i64
  %538 = load i32, i32* %mapCenter_y, align 4
  %arrayidx753 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %539 = load i32, i32* %arrayidx753, align 4
  %add754 = add nsw i32 %538, %539
  %idxprom755 = sext i32 %add754 to i64
  %540 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx756 = getelementptr inbounds i16*, i16** %540, i64 %idxprom755
  %541 = load i16*, i16** %arrayidx756, align 8
  %arrayidx757 = getelementptr inbounds i16, i16* %541, i64 %idxprom752
  store i16 %535, i16* %arrayidx757, align 2
  br label %if.end.768

if.else.758:                                      ; preds = %if.then.736
  %542 = load i32, i32* %pointNumber, align 4
  %add759 = add nsw i32 %542, 1
  store i32 %add759, i32* %pointNumber, align 4
  %543 = load i32, i32* %pointNumber, align 4
  %544 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints760 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %544, i32 0, i32 0
  %545 = load i32, i32* %searchPoints760, align 4
  %cmp761 = icmp sge i32 %543, %545
  br i1 %cmp761, label %if.then.763, label %if.end.766

if.then.763:                                      ; preds = %if.else.758
  %546 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints764 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %546, i32 0, i32 0
  %547 = load i32, i32* %searchPoints764, align 4
  %548 = load i32, i32* %pointNumber, align 4
  %sub765 = sub nsw i32 %548, %547
  store i32 %sub765, i32* %pointNumber, align 4
  br label %if.end.766

if.end.766:                                       ; preds = %if.then.763, %if.else.758
  %549 = load i32, i32* %checkPts, align 4
  %sub767 = sub nsw i32 %549, 1
  store i32 %sub767, i32* %checkPts, align 4
  br label %do.cond

if.end.768:                                       ; preds = %if.then.749
  %550 = load i32, i32* %lambda_factor.addr, align 4
  %551 = load i32, i32* %cand_x, align 4
  %552 = load i32, i32* %pred_x, align 4
  %sub769 = sub nsw i32 %551, %552
  %idxprom770 = sext i32 %sub769 to i64
  %553 = load i32*, i32** @mvbits, align 8
  %arrayidx771 = getelementptr inbounds i32, i32* %553, i64 %idxprom770
  %554 = load i32, i32* %arrayidx771, align 4
  %555 = load i32, i32* %cand_y, align 4
  %556 = load i32, i32* %pred_y, align 4
  %sub772 = sub nsw i32 %555, %556
  %idxprom773 = sext i32 %sub772 to i64
  %557 = load i32*, i32** @mvbits, align 8
  %arrayidx774 = getelementptr inbounds i32, i32* %557, i64 %idxprom773
  %558 = load i32, i32* %arrayidx774, align 4
  %add775 = add nsw i32 %554, %558
  %mul776 = mul nsw i32 %550, %add775
  %shr777 = ashr i32 %mul776, 16
  store i32 %shr777, i32* %mcost, align 4
  %559 = load i32, i32* %mcost, align 4
  %560 = load i32, i32* %min_mcost.addr, align 4
  %cmp778 = icmp slt i32 %559, %560
  br i1 %cmp778, label %if.then.780, label %if.end.818

if.then.780:                                      ; preds = %if.end.768
  %561 = load i32, i32* %cand_x, align 4
  %cmp781 = icmp sge i32 %561, 0
  br i1 %cmp781, label %land.lhs.true.783, label %land.end.798

land.lhs.true.783:                                ; preds = %if.then.780
  %562 = load i32, i32* %cand_x, align 4
  %563 = load i16, i16* @img_width, align 2
  %conv784 = sext i16 %563 to i32
  %564 = load i16, i16* %blocksize_x, align 2
  %conv785 = sext i16 %564 to i32
  %sub786 = sub nsw i32 %conv784, %conv785
  %cmp787 = icmp slt i32 %562, %sub786
  br i1 %cmp787, label %land.lhs.true.789, label %land.end.798

land.lhs.true.789:                                ; preds = %land.lhs.true.783
  %565 = load i32, i32* %cand_y, align 4
  %cmp790 = icmp sge i32 %565, 0
  br i1 %cmp790, label %land.rhs.792, label %land.end.798

land.rhs.792:                                     ; preds = %land.lhs.true.789
  %566 = load i32, i32* %cand_y, align 4
  %567 = load i16, i16* @img_height, align 2
  %conv793 = sext i16 %567 to i32
  %568 = load i16, i16* %blocksize_y, align 2
  %conv794 = sext i16 %568 to i32
  %sub795 = sub nsw i32 %conv793, %conv794
  %cmp796 = icmp slt i32 %566, %sub795
  br label %land.end.798

land.end.798:                                     ; preds = %land.rhs.792, %land.lhs.true.789, %land.lhs.true.783, %if.then.780
  %569 = phi i1 [ false, %land.lhs.true.789 ], [ false, %land.lhs.true.783 ], [ false, %if.then.780 ], [ %cmp796, %land.rhs.792 ]
  %cond800 = select i1 %569, i32 0, i32 1
  store i32 %cond800, i32* @ref_access_method, align 4
  %570 = load i32, i32* %dist_method, align 4
  %idxprom801 = sext i32 %570 to i64
  %arrayidx802 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom801
  %571 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx802, align 8
  %572 = load i16*, i16** %cur_pic.addr, align 8
  %573 = load i16, i16* %blocksize_y, align 2
  %conv803 = sext i16 %573 to i32
  %574 = load i16, i16* %blocksize_x, align 2
  %conv804 = sext i16 %574 to i32
  %575 = load i32, i32* %min_mcost.addr, align 4
  %576 = load i32, i32* %mcost, align 4
  %sub805 = sub nsw i32 %575, %576
  %577 = load i32, i32* %cand_x, align 4
  %add806 = add nsw i32 %577, 80
  %578 = load i32, i32* %cand_y, align 4
  %add807 = add nsw i32 %578, 80
  %call808 = call i32 %571(i16* %572, i32 %conv803, i32 %conv804, i32 %sub805, i32 %add806, i32 %add807)
  %579 = load i32, i32* %mcost, align 4
  %add809 = add nsw i32 %579, %call808
  store i32 %add809, i32* %mcost, align 4
  %580 = load i32, i32* %mcost, align 4
  %581 = load i32, i32* %min_mcost.addr, align 4
  %cmp810 = icmp slt i32 %580, %581
  br i1 %cmp810, label %if.then.812, label %if.end.817

if.then.812:                                      ; preds = %land.end.798
  %582 = load i32, i32* %mcost, align 4
  store i32 %582, i32* %min_mcost.addr, align 4
  %arrayidx813 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %583 = load i32, i32* %arrayidx813, align 4
  %arrayidx814 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  store i32 %583, i32* %arrayidx814, align 4
  %arrayidx815 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %584 = load i32, i32* %arrayidx815, align 4
  %arrayidx816 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  store i32 %584, i32* %arrayidx816, align 4
  %585 = load i32, i32* %pointNumber, align 4
  store i32 %585, i32* %motionDirection, align 4
  br label %if.end.817

if.end.817:                                       ; preds = %if.then.812, %land.end.798
  br label %if.end.818

if.end.818:                                       ; preds = %if.end.817, %if.end.768
  br label %if.end.819

if.end.819:                                       ; preds = %if.end.818, %land.lhs.true.728, %do.body.700
  %586 = load i32, i32* %pointNumber, align 4
  %add820 = add nsw i32 %586, 1
  store i32 %add820, i32* %pointNumber, align 4
  %587 = load i32, i32* %pointNumber, align 4
  %588 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints821 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %588, i32 0, i32 0
  %589 = load i32, i32* %searchPoints821, align 4
  %cmp822 = icmp sge i32 %587, %589
  br i1 %cmp822, label %if.then.824, label %if.end.827

if.then.824:                                      ; preds = %if.end.819
  %590 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints825 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %590, i32 0, i32 0
  %591 = load i32, i32* %searchPoints825, align 4
  %592 = load i32, i32* %pointNumber, align 4
  %sub826 = sub nsw i32 %592, %591
  store i32 %sub826, i32* %pointNumber, align 4
  br label %if.end.827

if.end.827:                                       ; preds = %if.then.824, %if.end.819
  %593 = load i32, i32* %checkPts, align 4
  %sub828 = sub nsw i32 %593, 1
  store i32 %sub828, i32* %checkPts, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.827, %if.end.766
  %594 = load i32, i32* %checkPts, align 4
  %cmp829 = icmp sgt i32 %594, 0
  br i1 %cmp829, label %do.body.700, label %do.end

do.end:                                           ; preds = %do.cond
  %595 = load i32, i32* %nextLast, align 4
  %tobool831 = icmp ne i32 %595, 0
  br i1 %tobool831, label %if.then.840, label %lor.lhs.false.832

lor.lhs.false.832:                                ; preds = %do.end
  %arrayidx833 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %596 = load i32, i32* %arrayidx833, align 4
  %597 = load i32, i32* %center_x, align 4
  %cmp834 = icmp eq i32 %596, %597
  br i1 %cmp834, label %land.lhs.true.836, label %if.else.843

land.lhs.true.836:                                ; preds = %lor.lhs.false.832
  %arrayidx837 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %598 = load i32, i32* %arrayidx837, align 4
  %599 = load i32, i32* %center_y, align 4
  %cmp838 = icmp eq i32 %598, %599
  br i1 %cmp838, label %if.then.840, label %if.else.843

if.then.840:                                      ; preds = %land.lhs.true.836, %do.end
  %600 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %stopSearch = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %600, i32 0, i32 2
  %601 = load i32, i32* %stopSearch, align 4
  store i32 %601, i32* %patternStop, align 4
  %602 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %nextpattern = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %602, i32 0, i32 4
  %603 = load %struct.MEPatternNode*, %struct.MEPatternNode** %nextpattern, align 8
  store %struct.MEPatternNode* %603, %struct.MEPatternNode** %searchPatternF, align 8
  %604 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints841 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %604, i32 0, i32 0
  %605 = load i32, i32* %searchPoints841, align 4
  store i32 %605, i32* %totalCheckPts, align 4
  %606 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %nextLast842 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %606, i32 0, i32 3
  %607 = load i32, i32* %nextLast842, align 4
  store i32 %607, i32* %nextLast, align 4
  store i32 0, i32* %motionDirection, align 4
  store i32 0, i32* %pointNumber, align 4
  br label %if.end.852

if.else.843:                                      ; preds = %land.lhs.true.836, %lor.lhs.false.832
  %608 = load i32, i32* %motionDirection, align 4
  %idxprom844 = sext i32 %608 to i64
  %609 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point845 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %609, i32 0, i32 1
  %610 = load %struct.SPoint*, %struct.SPoint** %point845, align 8
  %arrayidx846 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %610, i64 %idxprom844
  %next_points = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx846, i32 0, i32 2
  %611 = load i32, i32* %next_points, align 4
  store i32 %611, i32* %totalCheckPts, align 4
  %612 = load i32, i32* %motionDirection, align 4
  %idxprom847 = sext i32 %612 to i64
  %613 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point848 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %613, i32 0, i32 1
  %614 = load %struct.SPoint*, %struct.SPoint** %point848, align 8
  %arrayidx849 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %614, i64 %idxprom847
  %start_nmbr = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx849, i32 0, i32 1
  %615 = load i32, i32* %start_nmbr, align 4
  store i32 %615, i32* %pointNumber, align 4
  %arrayidx850 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %616 = load i32, i32* %arrayidx850, align 4
  store i32 %616, i32* %center_x, align 4
  %arrayidx851 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %617 = load i32, i32* %arrayidx851, align 4
  store i32 %617, i32* %center_y, align 4
  br label %if.end.852

if.end.852:                                       ; preds = %if.else.843, %if.then.840
  br label %do.cond.853

do.cond.853:                                      ; preds = %if.end.852
  %618 = load i32, i32* %patternStop, align 4
  %cmp854 = icmp ne i32 %618, 1
  br i1 %cmp854, label %do.body, label %do.end.856

do.end.856:                                       ; preds = %do.cond.853
  %619 = load i16, i16* %ref.addr, align 2
  %conv857 = sext i16 %619 to i32
  %cmp858 = icmp sgt i32 %conv857, 0
  br i1 %cmp858, label %land.lhs.true.860, label %if.end.898

land.lhs.true.860:                                ; preds = %do.end.856
  %620 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure861 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %620, i32 0, i32 6
  %621 = load i32, i32* %structure861, align 4
  %cmp862 = icmp eq i32 %621, 0
  br i1 %cmp862, label %land.lhs.true.864, label %if.end.898

land.lhs.true.864:                                ; preds = %land.lhs.true.860
  %622 = load i16, i16* %pic_pix_x2, align 2
  %idxprom865 = sext i16 %622 to i64
  %623 = load i32*, i32** %prevSad, align 8
  %arrayidx866 = getelementptr inbounds i32, i32* %623, i64 %idxprom865
  %624 = load i32, i32* %arrayidx866, align 4
  %mul867 = mul nsw i32 4, %624
  %625 = load i32, i32* %min_mcost.addr, align 4
  %cmp868 = icmp slt i32 %mul867, %625
  br i1 %cmp868, label %if.then.881, label %lor.lhs.false.870

lor.lhs.false.870:                                ; preds = %land.lhs.true.864
  %626 = load i16, i16* %pic_pix_x2, align 2
  %idxprom871 = sext i16 %626 to i64
  %627 = load i32*, i32** %prevSad, align 8
  %arrayidx872 = getelementptr inbounds i32, i32* %627, i64 %idxprom871
  %628 = load i32, i32* %arrayidx872, align 4
  %mul873 = mul nsw i32 3, %628
  %629 = load i32, i32* %min_mcost.addr, align 4
  %cmp874 = icmp slt i32 %mul873, %629
  br i1 %cmp874, label %land.lhs.true.876, label %if.end.898

land.lhs.true.876:                                ; preds = %lor.lhs.false.870
  %630 = load i16, i16* %pic_pix_x2, align 2
  %idxprom877 = sext i16 %630 to i64
  %631 = load i32*, i32** %prevSad, align 8
  %arrayidx878 = getelementptr inbounds i32, i32* %631, i64 %idxprom877
  %632 = load i32, i32* %arrayidx878, align 4
  %633 = load i32, i32* %stopCriterion, align 4
  %cmp879 = icmp sle i32 %632, %633
  br i1 %cmp879, label %if.then.881, label %if.end.898

if.then.881:                                      ; preds = %land.lhs.true.876, %land.lhs.true.864
  %arrayidx882 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %634 = load i32, i32* %arrayidx882, align 4
  %conv883 = trunc i32 %634 to i16
  %635 = load i16*, i16** %mv.addr, align 8
  %arrayidx884 = getelementptr inbounds i16, i16* %635, i64 0
  store i16 %conv883, i16* %arrayidx884, align 2
  %arrayidx885 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %636 = load i32, i32* %arrayidx885, align 4
  %conv886 = trunc i32 %636 to i16
  %637 = load i16*, i16** %mv.addr, align 8
  %arrayidx887 = getelementptr inbounds i16, i16* %637, i64 1
  store i16 %conv886, i16* %arrayidx887, align 2
  %638 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem888 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %638, i32 0, i32 97
  %639 = load i32, i32* %EPZSSpatialMem888, align 4
  %tobool889 = icmp ne i32 %639, 0
  br i1 %tobool889, label %if.then.890, label %if.end.897

if.then.890:                                      ; preds = %if.then.881
  %arrayidx891 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %640 = load i32, i32* %arrayidx891, align 4
  %conv892 = trunc i32 %640 to i16
  %641 = load i16*, i16** %motion, align 8
  %arrayidx893 = getelementptr inbounds i16, i16* %641, i64 0
  store i16 %conv892, i16* %arrayidx893, align 2
  %arrayidx894 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %642 = load i32, i32* %arrayidx894, align 4
  %conv895 = trunc i32 %642 to i16
  %643 = load i16*, i16** %motion, align 8
  %arrayidx896 = getelementptr inbounds i16, i16* %643, i64 1
  store i16 %conv895, i16* %arrayidx896, align 2
  br label %if.end.897

if.end.897:                                       ; preds = %if.then.890, %if.then.881
  %644 = load i32, i32* %min_mcost.addr, align 4
  store i32 %644, i32* %retval
  br label %return

if.end.898:                                       ; preds = %land.lhs.true.876, %lor.lhs.false.870, %land.lhs.true.860, %do.end.856
  %645 = load i8, i8* %checkMedian, align 1
  %conv899 = zext i8 %645 to i32
  %cmp900 = icmp eq i32 %conv899, 1
  br i1 %cmp900, label %land.lhs.true.902, label %land.end.915

land.lhs.true.902:                                ; preds = %if.end.898
  %646 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type903 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %646, i32 0, i32 5
  %647 = load i32, i32* %type903, align 4
  %cmp904 = icmp eq i32 %647, 0
  br i1 %cmp904, label %land.lhs.true.909, label %lor.lhs.false.906

lor.lhs.false.906:                                ; preds = %land.lhs.true.902
  %648 = load i32, i32* %blocktype.addr, align 4
  %cmp907 = icmp slt i32 %648, 5
  br i1 %cmp907, label %land.lhs.true.909, label %land.end.915

land.lhs.true.909:                                ; preds = %lor.lhs.false.906, %land.lhs.true.902
  %649 = load i32, i32* %min_mcost.addr, align 4
  %650 = load i32, i32* %stopCriterion, align 4
  %cmp910 = icmp sgt i32 %649, %650
  br i1 %cmp910, label %land.rhs.912, label %land.end.915

land.rhs.912:                                     ; preds = %land.lhs.true.909
  %651 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSDual = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %651, i32 0, i32 94
  %652 = load i32, i32* %EPZSDual, align 4
  %cmp913 = icmp sgt i32 %652, 0
  br label %land.end.915

land.end.915:                                     ; preds = %land.rhs.912, %land.lhs.true.909, %lor.lhs.false.906, %if.end.898
  %653 = phi i1 [ false, %land.lhs.true.909 ], [ false, %lor.lhs.false.906 ], [ false, %if.end.898 ], [ %cmp913, %land.rhs.912 ]
  %land.ext916 = zext i1 %653 to i32
  store i32 %land.ext916, i32* %conditionEPZS, align 4
  %654 = load i32, i32* %conditionEPZS, align 4
  %tobool917 = icmp ne i32 %654, 0
  br i1 %tobool917, label %if.end.919, label %if.then.918

if.then.918:                                      ; preds = %land.end.915
  br label %while.end

if.end.919:                                       ; preds = %land.end.915
  store i32 0, i32* %pointNumber, align 4
  store i32 0, i32* %patternStop, align 4
  store i32 0, i32* %motionDirection, align 4
  store i32 0, i32* %nextLast, align 4
  %arrayidx920 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %655 = load i32, i32* %arrayidx920, align 4
  %cmp921 = icmp eq i32 %655, 0
  br i1 %cmp921, label %land.lhs.true.923, label %lor.lhs.false.927

land.lhs.true.923:                                ; preds = %if.end.919
  %arrayidx924 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %656 = load i32, i32* %arrayidx924, align 4
  %cmp925 = icmp eq i32 %656, 0
  br i1 %cmp925, label %if.then.939, label %lor.lhs.false.927

lor.lhs.false.927:                                ; preds = %land.lhs.true.923, %if.end.919
  %arrayidx928 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %657 = load i32, i32* %arrayidx928, align 4
  %658 = load i16*, i16** %mv.addr, align 8
  %arrayidx929 = getelementptr inbounds i16, i16* %658, i64 0
  %659 = load i16, i16* %arrayidx929, align 2
  %conv930 = sext i16 %659 to i32
  %cmp931 = icmp eq i32 %657, %conv930
  br i1 %cmp931, label %land.lhs.true.933, label %if.else.962

land.lhs.true.933:                                ; preds = %lor.lhs.false.927
  %arrayidx934 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %660 = load i32, i32* %arrayidx934, align 4
  %661 = load i16*, i16** %mv.addr, align 8
  %arrayidx935 = getelementptr inbounds i16, i16* %661, i64 1
  %662 = load i16, i16* %arrayidx935, align 2
  %conv936 = sext i16 %662 to i32
  %cmp937 = icmp eq i32 %660, %conv936
  br i1 %cmp937, label %if.then.939, label %if.else.962

if.then.939:                                      ; preds = %land.lhs.true.933, %land.lhs.true.923
  %arrayidx940 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %663 = load i32, i32* %arrayidx940, align 4
  %664 = load i16*, i16** %mv.addr, align 8
  %arrayidx941 = getelementptr inbounds i16, i16* %664, i64 0
  %665 = load i16, i16* %arrayidx941, align 2
  %conv942 = sext i16 %665 to i32
  %sub943 = sub nsw i32 %663, %conv942
  %call944 = call i32 @iabs(i32 %sub943)
  %666 = load i32, i32* @mv_rescale, align 4
  %sub945 = sub nsw i32 2, %666
  %shl946 = shl i32 2, %sub945
  %cmp947 = icmp slt i32 %call944, %shl946
  br i1 %cmp947, label %land.lhs.true.949, label %if.else.960

land.lhs.true.949:                                ; preds = %if.then.939
  %arrayidx950 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %667 = load i32, i32* %arrayidx950, align 4
  %668 = load i16*, i16** %mv.addr, align 8
  %arrayidx951 = getelementptr inbounds i16, i16* %668, i64 1
  %669 = load i16, i16* %arrayidx951, align 2
  %conv952 = sext i16 %669 to i32
  %sub953 = sub nsw i32 %667, %conv952
  %call954 = call i32 @iabs(i32 %sub953)
  %670 = load i32, i32* @mv_rescale, align 4
  %sub955 = sub nsw i32 2, %670
  %shl956 = shl i32 2, %sub955
  %cmp957 = icmp slt i32 %call954, %shl956
  br i1 %cmp957, label %if.then.959, label %if.else.960

if.then.959:                                      ; preds = %land.lhs.true.949
  %671 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  store %struct.MEPatternNode* %671, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.961

if.else.960:                                      ; preds = %land.lhs.true.949, %if.then.939
  %672 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %672, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.961

if.end.961:                                       ; preds = %if.else.960, %if.then.959
  br label %if.end.963

if.else.962:                                      ; preds = %land.lhs.true.933, %lor.lhs.false.927
  %673 = load %struct.MEPatternNode*, %struct.MEPatternNode** @searchPatternD, align 8
  store %struct.MEPatternNode* %673, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.963

if.end.963:                                       ; preds = %if.else.962, %if.end.961
  %674 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints964 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %674, i32 0, i32 0
  %675 = load i32, i32* %searchPoints964, align 4
  store i32 %675, i32* %totalCheckPts, align 4
  %arrayidx965 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 0
  %676 = load i32, i32* %arrayidx965, align 4
  store i32 %676, i32* %center_x, align 4
  %arrayidx966 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 1
  %677 = load i32, i32* %arrayidx966, align 4
  store i32 %677, i32* %center_y, align 4
  store i8 0, i8* %checkMedian, align 1
  br label %while.body

while.end:                                        ; preds = %if.then.918
  br label %if.end.967

if.end.967:                                       ; preds = %while.end, %for.end
  br label %if.end.968

if.end.968:                                       ; preds = %if.end.967, %if.end.234
  %678 = load i16, i16* %ref.addr, align 2
  %conv969 = sext i16 %678 to i32
  %cmp970 = icmp eq i32 %conv969, 0
  br i1 %cmp970, label %if.then.977, label %lor.lhs.false.972

lor.lhs.false.972:                                ; preds = %if.end.968
  %679 = load i16, i16* %pic_pix_x2, align 2
  %idxprom973 = sext i16 %679 to i64
  %680 = load i32*, i32** %prevSad, align 8
  %arrayidx974 = getelementptr inbounds i32, i32* %680, i64 %idxprom973
  %681 = load i32, i32* %arrayidx974, align 4
  %682 = load i32, i32* %min_mcost.addr, align 4
  %cmp975 = icmp sgt i32 %681, %682
  br i1 %cmp975, label %if.then.977, label %if.end.980

if.then.977:                                      ; preds = %lor.lhs.false.972, %if.end.968
  %683 = load i32, i32* %min_mcost.addr, align 4
  %684 = load i16, i16* %pic_pix_x2, align 2
  %idxprom978 = sext i16 %684 to i64
  %685 = load i32*, i32** %prevSad, align 8
  %arrayidx979 = getelementptr inbounds i32, i32* %685, i64 %idxprom978
  store i32 %683, i32* %arrayidx979, align 4
  br label %if.end.980

if.end.980:                                       ; preds = %if.then.977, %lor.lhs.false.972
  %686 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem981 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %686, i32 0, i32 97
  %687 = load i32, i32* %EPZSSpatialMem981, align 4
  %tobool982 = icmp ne i32 %687, 0
  br i1 %tobool982, label %if.then.983, label %if.end.990

if.then.983:                                      ; preds = %if.end.980
  %arrayidx984 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %688 = load i32, i32* %arrayidx984, align 4
  %conv985 = trunc i32 %688 to i16
  %689 = load i16*, i16** %motion, align 8
  %arrayidx986 = getelementptr inbounds i16, i16* %689, i64 0
  store i16 %conv985, i16* %arrayidx986, align 2
  %arrayidx987 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %690 = load i32, i32* %arrayidx987, align 4
  %conv988 = trunc i32 %690 to i16
  %691 = load i16*, i16** %motion, align 8
  %arrayidx989 = getelementptr inbounds i16, i16* %691, i64 1
  store i16 %conv988, i16* %arrayidx989, align 2
  br label %if.end.990

if.end.990:                                       ; preds = %if.then.983, %if.end.980
  %arrayidx991 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %692 = load i32, i32* %arrayidx991, align 4
  %conv992 = trunc i32 %692 to i16
  %693 = load i16*, i16** %mv.addr, align 8
  %arrayidx993 = getelementptr inbounds i16, i16* %693, i64 0
  store i16 %conv992, i16* %arrayidx993, align 2
  %arrayidx994 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %694 = load i32, i32* %arrayidx994, align 4
  %conv995 = trunc i32 %694 to i16
  %695 = load i16*, i16** %mv.addr, align 8
  %arrayidx996 = getelementptr inbounds i16, i16* %695, i64 1
  store i16 %conv995, i16* %arrayidx996, align 2
  %696 = load i32, i32* %min_mcost.addr, align 4
  store i32 %696, i32* %retval
  br label %return

return:                                           ; preds = %if.end.990, %if.end.897, %if.end.207
  %697 = load i32, i32* %retval
  ret i32 %697
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @getLuma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind uwtable
define internal signext i16 @EPZSSpatialPredictors(%struct.pix_pos* byval align 8 %block_a, %struct.pix_pos* byval align 8 %block_b, %struct.pix_pos* byval align 8 %block_c, %struct.pix_pos* byval align 8 %block_d, i32 %list, i32 %list_offset, i16 signext %ref, i8** %refPic, i16*** %tmp_mv, %struct.MEPatternNode* %predictor) #0 {
entry:
  %list.addr = alloca i32, align 4
  %list_offset.addr = alloca i32, align 4
  %ref.addr = alloca i16, align 2
  %refPic.addr = alloca i8**, align 8
  %tmp_mv.addr = alloca i16***, align 8
  %predictor.addr = alloca %struct.MEPatternNode*, align 8
  %refA = alloca i32, align 4
  %refB = alloca i32, align 4
  %refC = alloca i32, align 4
  %refD = alloca i32, align 4
  %mot_scale = alloca i32*, align 8
  %sp_shift_mv = alloca i16, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %list_offset, i32* %list_offset.addr, align 4
  store i16 %ref, i16* %ref.addr, align 2
  store i8** %refPic, i8*** %refPic.addr, align 8
  store i16*** %tmp_mv, i16**** %tmp_mv.addr, align 8
  store %struct.MEPatternNode* %predictor, %struct.MEPatternNode** %predictor.addr, align 8
  %0 = load i16, i16* %ref.addr, align 2
  %idxprom = sext i16 %0 to i64
  %1 = load i32, i32* %list.addr, align 4
  %2 = load i32, i32* %list_offset.addr, align 4
  %add = add nsw i32 %1, %2
  %idxprom1 = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx2, i32 0, i32 0
  store i32* %arraydecay, i32** %mot_scale, align 8
  %3 = load i32, i32* @mv_rescale, align 4
  %add3 = add nsw i32 8, %3
  %conv = trunc i32 %add3 to i16
  store i16 %conv, i16* %sp_shift_mv, align 2
  %4 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %4, i32 0, i32 1
  %5 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx4 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %5, i64 0
  %mv = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %mv, i32 0, i64 0
  store i32 0, i32* %arrayidx5, align 4
  %6 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point6 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %6, i32 0, i32 1
  %7 = load %struct.SPoint*, %struct.SPoint** %point6, align 8
  %arrayidx7 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %7, i64 0
  %mv8 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %mv8, i32 0, i64 1
  store i32 0, i32* %arrayidx9, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 100
  %9 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else.243, label %if.then

if.then:                                          ; preds = %entry
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %10 = load i32, i32* %available, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %11 = load i32, i32* %pos_x, align 4
  %idxprom11 = sext i32 %11 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %12 = load i32, i32* %pos_y, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %13, i64 %idxprom12
  %14 = load i8*, i8** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom11
  %15 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, i32* %refA, align 4
  %available16 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %16 = load i32, i32* %available16, align 4
  %tobool17 = icmp ne i32 %16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.26

cond.true.18:                                     ; preds = %cond.end
  %pos_x19 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %17 = load i32, i32* %pos_x19, align 4
  %idxprom20 = sext i32 %17 to i64
  %pos_y21 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %18 = load i32, i32* %pos_y21, align 4
  %idxprom22 = sext i32 %18 to i64
  %19 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %19, i64 %idxprom22
  %20 = load i8*, i8** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %20, i64 %idxprom20
  %21 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %21 to i32
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.18
  %cond28 = phi i32 [ %conv25, %cond.true.18 ], [ -1, %cond.false.26 ]
  store i32 %cond28, i32* %refB, align 4
  %available29 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %22 = load i32, i32* %available29, align 4
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.39

cond.true.31:                                     ; preds = %cond.end.27
  %pos_x32 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %23 = load i32, i32* %pos_x32, align 4
  %idxprom33 = sext i32 %23 to i64
  %pos_y34 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %24 = load i32, i32* %pos_y34, align 4
  %idxprom35 = sext i32 %24 to i64
  %25 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %25, i64 %idxprom35
  %26 = load i8*, i8** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %26, i64 %idxprom33
  %27 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %27 to i32
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end.27
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.31
  %cond41 = phi i32 [ %conv38, %cond.true.31 ], [ -1, %cond.false.39 ]
  store i32 %cond41, i32* %refC, align 4
  %available42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %28 = load i32, i32* %available42, align 4
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %cond.true.44, label %cond.false.52

cond.true.44:                                     ; preds = %cond.end.40
  %pos_x45 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %29 = load i32, i32* %pos_x45, align 4
  %idxprom46 = sext i32 %29 to i64
  %pos_y47 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %30 = load i32, i32* %pos_y47, align 4
  %idxprom48 = sext i32 %30 to i64
  %31 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %31, i64 %idxprom48
  %32 = load i8*, i8** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %32, i64 %idxprom46
  %33 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %33 to i32
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.40
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.44
  %cond54 = phi i32 [ %conv51, %cond.true.44 ], [ -1, %cond.false.52 ]
  store i32 %cond54, i32* %refD, align 4
  %available55 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %34 = load i32, i32* %available55, align 4
  %tobool56 = icmp ne i32 %34, 0
  br i1 %tobool56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %cond.end.53
  %35 = load i32, i32* %refA, align 4
  %idxprom58 = sext i32 %35 to i64
  %36 = load i32*, i32** %mot_scale, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %36, i64 %idxprom58
  %37 = load i32, i32* %arrayidx59, align 4
  %pos_x60 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %38 = load i32, i32* %pos_x60, align 4
  %idxprom61 = sext i32 %38 to i64
  %pos_y62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %39 = load i32, i32* %pos_y62, align 4
  %idxprom63 = sext i32 %39 to i64
  %40 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx64 = getelementptr inbounds i16**, i16*** %40, i64 %idxprom63
  %41 = load i16**, i16*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %41, i64 %idxprom61
  %42 = load i16*, i16** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %42, i64 0
  %43 = load i16, i16* %arrayidx66, align 2
  %conv67 = sext i16 %43 to i32
  %mul = mul nsw i32 %37, %conv67
  %44 = load i16, i16* %sp_shift_mv, align 2
  %conv68 = sext i16 %44 to i32
  %call = call i32 @rshift_rnd_sf(i32 %mul, i32 %conv68)
  %45 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point69 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %45, i32 0, i32 1
  %46 = load %struct.SPoint*, %struct.SPoint** %point69, align 8
  %arrayidx70 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %46, i64 1
  %mv71 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x i32], [2 x i32]* %mv71, i32 0, i64 0
  store i32 %call, i32* %arrayidx72, align 4
  %47 = load i32, i32* %refA, align 4
  %idxprom73 = sext i32 %47 to i64
  %48 = load i32*, i32** %mot_scale, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %48, i64 %idxprom73
  %49 = load i32, i32* %arrayidx74, align 4
  %pos_x75 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %50 = load i32, i32* %pos_x75, align 4
  %idxprom76 = sext i32 %50 to i64
  %pos_y77 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %51 = load i32, i32* %pos_y77, align 4
  %idxprom78 = sext i32 %51 to i64
  %52 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx79 = getelementptr inbounds i16**, i16*** %52, i64 %idxprom78
  %53 = load i16**, i16*** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16*, i16** %53, i64 %idxprom76
  %54 = load i16*, i16** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i16, i16* %54, i64 1
  %55 = load i16, i16* %arrayidx81, align 2
  %conv82 = sext i16 %55 to i32
  %mul83 = mul nsw i32 %49, %conv82
  %56 = load i16, i16* %sp_shift_mv, align 2
  %conv84 = sext i16 %56 to i32
  %call85 = call i32 @rshift_rnd_sf(i32 %mul83, i32 %conv84)
  %57 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point86 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %57, i32 0, i32 1
  %58 = load %struct.SPoint*, %struct.SPoint** %point86, align 8
  %arrayidx87 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %58, i64 1
  %mv88 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx87, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %mv88, i32 0, i64 1
  store i32 %call85, i32* %arrayidx89, align 4
  br label %if.end

if.else:                                          ; preds = %cond.end.53
  %59 = load i32, i32* @mv_rescale, align 4
  %shr = ashr i32 12, %59
  %60 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point90 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %60, i32 0, i32 1
  %61 = load %struct.SPoint*, %struct.SPoint** %point90, align 8
  %arrayidx91 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %61, i64 1
  %mv92 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx91, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [2 x i32], [2 x i32]* %mv92, i32 0, i64 0
  store i32 %shr, i32* %arrayidx93, align 4
  %62 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point94 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %62, i32 0, i32 1
  %63 = load %struct.SPoint*, %struct.SPoint** %point94, align 8
  %arrayidx95 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %63, i64 1
  %mv96 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [2 x i32], [2 x i32]* %mv96, i32 0, i64 1
  store i32 0, i32* %arrayidx97, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.57
  %available98 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %64 = load i32, i32* %available98, align 4
  %tobool99 = icmp ne i32 %64, 0
  br i1 %tobool99, label %if.then.100, label %if.else.135

if.then.100:                                      ; preds = %if.end
  %65 = load i32, i32* %refB, align 4
  %idxprom101 = sext i32 %65 to i64
  %66 = load i32*, i32** %mot_scale, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %66, i64 %idxprom101
  %67 = load i32, i32* %arrayidx102, align 4
  %pos_x103 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %68 = load i32, i32* %pos_x103, align 4
  %idxprom104 = sext i32 %68 to i64
  %pos_y105 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %69 = load i32, i32* %pos_y105, align 4
  %idxprom106 = sext i32 %69 to i64
  %70 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx107 = getelementptr inbounds i16**, i16*** %70, i64 %idxprom106
  %71 = load i16**, i16*** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16*, i16** %71, i64 %idxprom104
  %72 = load i16*, i16** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %72, i64 0
  %73 = load i16, i16* %arrayidx109, align 2
  %conv110 = sext i16 %73 to i32
  %mul111 = mul nsw i32 %67, %conv110
  %74 = load i16, i16* %sp_shift_mv, align 2
  %conv112 = sext i16 %74 to i32
  %call113 = call i32 @rshift_rnd_sf(i32 %mul111, i32 %conv112)
  %75 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point114 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %75, i32 0, i32 1
  %76 = load %struct.SPoint*, %struct.SPoint** %point114, align 8
  %arrayidx115 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %76, i64 2
  %mv116 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [2 x i32], [2 x i32]* %mv116, i32 0, i64 0
  store i32 %call113, i32* %arrayidx117, align 4
  %77 = load i32, i32* %refB, align 4
  %idxprom118 = sext i32 %77 to i64
  %78 = load i32*, i32** %mot_scale, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %78, i64 %idxprom118
  %79 = load i32, i32* %arrayidx119, align 4
  %pos_x120 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %80 = load i32, i32* %pos_x120, align 4
  %idxprom121 = sext i32 %80 to i64
  %pos_y122 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %81 = load i32, i32* %pos_y122, align 4
  %idxprom123 = sext i32 %81 to i64
  %82 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx124 = getelementptr inbounds i16**, i16*** %82, i64 %idxprom123
  %83 = load i16**, i16*** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i16*, i16** %83, i64 %idxprom121
  %84 = load i16*, i16** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16, i16* %84, i64 1
  %85 = load i16, i16* %arrayidx126, align 2
  %conv127 = sext i16 %85 to i32
  %mul128 = mul nsw i32 %79, %conv127
  %86 = load i16, i16* %sp_shift_mv, align 2
  %conv129 = sext i16 %86 to i32
  %call130 = call i32 @rshift_rnd_sf(i32 %mul128, i32 %conv129)
  %87 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point131 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %87, i32 0, i32 1
  %88 = load %struct.SPoint*, %struct.SPoint** %point131, align 8
  %arrayidx132 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %88, i64 2
  %mv133 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [2 x i32], [2 x i32]* %mv133, i32 0, i64 1
  store i32 %call130, i32* %arrayidx134, align 4
  br label %if.end.145

if.else.135:                                      ; preds = %if.end
  %89 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point136 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %89, i32 0, i32 1
  %90 = load %struct.SPoint*, %struct.SPoint** %point136, align 8
  %arrayidx137 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %90, i64 2
  %mv138 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [2 x i32], [2 x i32]* %mv138, i32 0, i64 0
  store i32 0, i32* %arrayidx139, align 4
  %91 = load i32, i32* @mv_rescale, align 4
  %shr140 = ashr i32 12, %91
  %92 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point141 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %92, i32 0, i32 1
  %93 = load %struct.SPoint*, %struct.SPoint** %point141, align 8
  %arrayidx142 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %93, i64 2
  %mv143 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [2 x i32], [2 x i32]* %mv143, i32 0, i64 1
  store i32 %shr140, i32* %arrayidx144, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.135, %if.then.100
  %available146 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %94 = load i32, i32* %available146, align 4
  %tobool147 = icmp ne i32 %94, 0
  br i1 %tobool147, label %if.then.148, label %if.else.183

if.then.148:                                      ; preds = %if.end.145
  %95 = load i32, i32* %refC, align 4
  %idxprom149 = sext i32 %95 to i64
  %96 = load i32*, i32** %mot_scale, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %96, i64 %idxprom149
  %97 = load i32, i32* %arrayidx150, align 4
  %pos_x151 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %98 = load i32, i32* %pos_x151, align 4
  %idxprom152 = sext i32 %98 to i64
  %pos_y153 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %99 = load i32, i32* %pos_y153, align 4
  %idxprom154 = sext i32 %99 to i64
  %100 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx155 = getelementptr inbounds i16**, i16*** %100, i64 %idxprom154
  %101 = load i16**, i16*** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i16*, i16** %101, i64 %idxprom152
  %102 = load i16*, i16** %arrayidx156, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %102, i64 0
  %103 = load i16, i16* %arrayidx157, align 2
  %conv158 = sext i16 %103 to i32
  %mul159 = mul nsw i32 %97, %conv158
  %104 = load i16, i16* %sp_shift_mv, align 2
  %conv160 = sext i16 %104 to i32
  %call161 = call i32 @rshift_rnd_sf(i32 %mul159, i32 %conv160)
  %105 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point162 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %105, i32 0, i32 1
  %106 = load %struct.SPoint*, %struct.SPoint** %point162, align 8
  %arrayidx163 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %106, i64 3
  %mv164 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %mv164, i32 0, i64 0
  store i32 %call161, i32* %arrayidx165, align 4
  %107 = load i32, i32* %refC, align 4
  %idxprom166 = sext i32 %107 to i64
  %108 = load i32*, i32** %mot_scale, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %108, i64 %idxprom166
  %109 = load i32, i32* %arrayidx167, align 4
  %pos_x168 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %110 = load i32, i32* %pos_x168, align 4
  %idxprom169 = sext i32 %110 to i64
  %pos_y170 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %111 = load i32, i32* %pos_y170, align 4
  %idxprom171 = sext i32 %111 to i64
  %112 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx172 = getelementptr inbounds i16**, i16*** %112, i64 %idxprom171
  %113 = load i16**, i16*** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i16*, i16** %113, i64 %idxprom169
  %114 = load i16*, i16** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %114, i64 1
  %115 = load i16, i16* %arrayidx174, align 2
  %conv175 = sext i16 %115 to i32
  %mul176 = mul nsw i32 %109, %conv175
  %116 = load i16, i16* %sp_shift_mv, align 2
  %conv177 = sext i16 %116 to i32
  %call178 = call i32 @rshift_rnd_sf(i32 %mul176, i32 %conv177)
  %117 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point179 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %117, i32 0, i32 1
  %118 = load %struct.SPoint*, %struct.SPoint** %point179, align 8
  %arrayidx180 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %118, i64 3
  %mv181 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx180, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [2 x i32], [2 x i32]* %mv181, i32 0, i64 1
  store i32 %call178, i32* %arrayidx182, align 4
  br label %if.end.193

if.else.183:                                      ; preds = %if.end.145
  %119 = load i32, i32* @mv_rescale, align 4
  %shr184 = ashr i32 12, %119
  %sub = sub nsw i32 0, %shr184
  %120 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point185 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %120, i32 0, i32 1
  %121 = load %struct.SPoint*, %struct.SPoint** %point185, align 8
  %arrayidx186 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %121, i64 3
  %mv187 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [2 x i32], [2 x i32]* %mv187, i32 0, i64 0
  store i32 %sub, i32* %arrayidx188, align 4
  %122 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point189 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %122, i32 0, i32 1
  %123 = load %struct.SPoint*, %struct.SPoint** %point189, align 8
  %arrayidx190 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %123, i64 3
  %mv191 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [2 x i32], [2 x i32]* %mv191, i32 0, i64 1
  store i32 0, i32* %arrayidx192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.183, %if.then.148
  %available194 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %124 = load i32, i32* %available194, align 4
  %tobool195 = icmp ne i32 %124, 0
  br i1 %tobool195, label %if.then.196, label %if.else.231

if.then.196:                                      ; preds = %if.end.193
  %125 = load i32, i32* %refD, align 4
  %idxprom197 = sext i32 %125 to i64
  %126 = load i32*, i32** %mot_scale, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %126, i64 %idxprom197
  %127 = load i32, i32* %arrayidx198, align 4
  %pos_x199 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %128 = load i32, i32* %pos_x199, align 4
  %idxprom200 = sext i32 %128 to i64
  %pos_y201 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %129 = load i32, i32* %pos_y201, align 4
  %idxprom202 = sext i32 %129 to i64
  %130 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx203 = getelementptr inbounds i16**, i16*** %130, i64 %idxprom202
  %131 = load i16**, i16*** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i16*, i16** %131, i64 %idxprom200
  %132 = load i16*, i16** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i16, i16* %132, i64 0
  %133 = load i16, i16* %arrayidx205, align 2
  %conv206 = sext i16 %133 to i32
  %mul207 = mul nsw i32 %127, %conv206
  %134 = load i16, i16* %sp_shift_mv, align 2
  %conv208 = sext i16 %134 to i32
  %call209 = call i32 @rshift_rnd_sf(i32 %mul207, i32 %conv208)
  %135 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point210 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %135, i32 0, i32 1
  %136 = load %struct.SPoint*, %struct.SPoint** %point210, align 8
  %arrayidx211 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %136, i64 4
  %mv212 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx211, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x i32], [2 x i32]* %mv212, i32 0, i64 0
  store i32 %call209, i32* %arrayidx213, align 4
  %137 = load i32, i32* %refD, align 4
  %idxprom214 = sext i32 %137 to i64
  %138 = load i32*, i32** %mot_scale, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %138, i64 %idxprom214
  %139 = load i32, i32* %arrayidx215, align 4
  %pos_x216 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %140 = load i32, i32* %pos_x216, align 4
  %idxprom217 = sext i32 %140 to i64
  %pos_y218 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %141 = load i32, i32* %pos_y218, align 4
  %idxprom219 = sext i32 %141 to i64
  %142 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx220 = getelementptr inbounds i16**, i16*** %142, i64 %idxprom219
  %143 = load i16**, i16*** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i16*, i16** %143, i64 %idxprom217
  %144 = load i16*, i16** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i16, i16* %144, i64 1
  %145 = load i16, i16* %arrayidx222, align 2
  %conv223 = sext i16 %145 to i32
  %mul224 = mul nsw i32 %139, %conv223
  %146 = load i16, i16* %sp_shift_mv, align 2
  %conv225 = sext i16 %146 to i32
  %call226 = call i32 @rshift_rnd_sf(i32 %mul224, i32 %conv225)
  %147 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point227 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %147, i32 0, i32 1
  %148 = load %struct.SPoint*, %struct.SPoint** %point227, align 8
  %arrayidx228 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %148, i64 4
  %mv229 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x i32], [2 x i32]* %mv229, i32 0, i64 1
  store i32 %call226, i32* %arrayidx230, align 4
  br label %if.end.242

if.else.231:                                      ; preds = %if.end.193
  %149 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point232 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %149, i32 0, i32 1
  %150 = load %struct.SPoint*, %struct.SPoint** %point232, align 8
  %arrayidx233 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %150, i64 4
  %mv234 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx233, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [2 x i32], [2 x i32]* %mv234, i32 0, i64 0
  store i32 0, i32* %arrayidx235, align 4
  %151 = load i32, i32* @mv_rescale, align 4
  %shr236 = ashr i32 12, %151
  %sub237 = sub nsw i32 0, %shr236
  %152 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point238 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %152, i32 0, i32 1
  %153 = load %struct.SPoint*, %struct.SPoint** %point238, align 8
  %arrayidx239 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %153, i64 4
  %mv240 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx239, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [2 x i32], [2 x i32]* %mv240, i32 0, i64 1
  store i32 %sub237, i32* %arrayidx241, align 4
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.231, %if.then.196
  br label %if.end.1065

if.else.243:                                      ; preds = %entry
  %154 = load i32, i32* %list_offset.addr, align 4
  %tobool244 = icmp ne i32 %154, 0
  br i1 %tobool244, label %if.then.245, label %if.else.653

if.then.245:                                      ; preds = %if.else.243
  %available246 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %155 = load i32, i32* %available246, align 4
  %tobool247 = icmp ne i32 %155, 0
  br i1 %tobool247, label %cond.true.248, label %cond.false.271

cond.true.248:                                    ; preds = %if.then.245
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %156 = load i32, i32* %mb_addr, align 4
  %idxprom249 = sext i32 %156 to i64
  %157 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %157, i32 0, i32 61
  %158 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx250 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %158, i64 %idxprom249
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx250, i32 0, i32 19
  %159 = load i32, i32* %mb_field, align 4
  %tobool251 = icmp ne i32 %159, 0
  br i1 %tobool251, label %cond.true.252, label %cond.false.260

cond.true.252:                                    ; preds = %cond.true.248
  %pos_x253 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %160 = load i32, i32* %pos_x253, align 4
  %idxprom254 = sext i32 %160 to i64
  %pos_y255 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %161 = load i32, i32* %pos_y255, align 4
  %idxprom256 = sext i32 %161 to i64
  %162 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx257 = getelementptr inbounds i8*, i8** %162, i64 %idxprom256
  %163 = load i8*, i8** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i8, i8* %163, i64 %idxprom254
  %164 = load i8, i8* %arrayidx258, align 1
  %conv259 = sext i8 %164 to i32
  br label %cond.end.269

cond.false.260:                                   ; preds = %cond.true.248
  %pos_x261 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %165 = load i32, i32* %pos_x261, align 4
  %idxprom262 = sext i32 %165 to i64
  %pos_y263 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %166 = load i32, i32* %pos_y263, align 4
  %idxprom264 = sext i32 %166 to i64
  %167 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx265 = getelementptr inbounds i8*, i8** %167, i64 %idxprom264
  %168 = load i8*, i8** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %168, i64 %idxprom262
  %169 = load i8, i8* %arrayidx266, align 1
  %conv267 = sext i8 %169 to i32
  %mul268 = mul nsw i32 %conv267, 2
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.false.260, %cond.true.252
  %cond270 = phi i32 [ %conv259, %cond.true.252 ], [ %mul268, %cond.false.260 ]
  br label %cond.end.272

cond.false.271:                                   ; preds = %if.then.245
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.271, %cond.end.269
  %cond273 = phi i32 [ %cond270, %cond.end.269 ], [ -1, %cond.false.271 ]
  store i32 %cond273, i32* %refA, align 4
  %available274 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %170 = load i32, i32* %available274, align 4
  %tobool275 = icmp ne i32 %170, 0
  br i1 %tobool275, label %cond.true.276, label %cond.false.302

cond.true.276:                                    ; preds = %cond.end.272
  %mb_addr277 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %171 = load i32, i32* %mb_addr277, align 4
  %idxprom278 = sext i32 %171 to i64
  %172 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data279 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %172, i32 0, i32 61
  %173 = load %struct.macroblock*, %struct.macroblock** %mb_data279, align 8
  %arrayidx280 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %173, i64 %idxprom278
  %mb_field281 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx280, i32 0, i32 19
  %174 = load i32, i32* %mb_field281, align 4
  %tobool282 = icmp ne i32 %174, 0
  br i1 %tobool282, label %cond.true.283, label %cond.false.291

cond.true.283:                                    ; preds = %cond.true.276
  %pos_x284 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %175 = load i32, i32* %pos_x284, align 4
  %idxprom285 = sext i32 %175 to i64
  %pos_y286 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %176 = load i32, i32* %pos_y286, align 4
  %idxprom287 = sext i32 %176 to i64
  %177 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx288 = getelementptr inbounds i8*, i8** %177, i64 %idxprom287
  %178 = load i8*, i8** %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds i8, i8* %178, i64 %idxprom285
  %179 = load i8, i8* %arrayidx289, align 1
  %conv290 = sext i8 %179 to i32
  br label %cond.end.300

cond.false.291:                                   ; preds = %cond.true.276
  %pos_x292 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %180 = load i32, i32* %pos_x292, align 4
  %idxprom293 = sext i32 %180 to i64
  %pos_y294 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %181 = load i32, i32* %pos_y294, align 4
  %idxprom295 = sext i32 %181 to i64
  %182 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx296 = getelementptr inbounds i8*, i8** %182, i64 %idxprom295
  %183 = load i8*, i8** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i8, i8* %183, i64 %idxprom293
  %184 = load i8, i8* %arrayidx297, align 1
  %conv298 = sext i8 %184 to i32
  %mul299 = mul nsw i32 %conv298, 2
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.false.291, %cond.true.283
  %cond301 = phi i32 [ %conv290, %cond.true.283 ], [ %mul299, %cond.false.291 ]
  br label %cond.end.303

cond.false.302:                                   ; preds = %cond.end.272
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.302, %cond.end.300
  %cond304 = phi i32 [ %cond301, %cond.end.300 ], [ -1, %cond.false.302 ]
  store i32 %cond304, i32* %refB, align 4
  %available305 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %185 = load i32, i32* %available305, align 4
  %tobool306 = icmp ne i32 %185, 0
  br i1 %tobool306, label %cond.true.307, label %cond.false.333

cond.true.307:                                    ; preds = %cond.end.303
  %mb_addr308 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %186 = load i32, i32* %mb_addr308, align 4
  %idxprom309 = sext i32 %186 to i64
  %187 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data310 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %187, i32 0, i32 61
  %188 = load %struct.macroblock*, %struct.macroblock** %mb_data310, align 8
  %arrayidx311 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %188, i64 %idxprom309
  %mb_field312 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx311, i32 0, i32 19
  %189 = load i32, i32* %mb_field312, align 4
  %tobool313 = icmp ne i32 %189, 0
  br i1 %tobool313, label %cond.true.314, label %cond.false.322

cond.true.314:                                    ; preds = %cond.true.307
  %pos_x315 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %190 = load i32, i32* %pos_x315, align 4
  %idxprom316 = sext i32 %190 to i64
  %pos_y317 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %191 = load i32, i32* %pos_y317, align 4
  %idxprom318 = sext i32 %191 to i64
  %192 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx319 = getelementptr inbounds i8*, i8** %192, i64 %idxprom318
  %193 = load i8*, i8** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %193, i64 %idxprom316
  %194 = load i8, i8* %arrayidx320, align 1
  %conv321 = sext i8 %194 to i32
  br label %cond.end.331

cond.false.322:                                   ; preds = %cond.true.307
  %pos_x323 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %195 = load i32, i32* %pos_x323, align 4
  %idxprom324 = sext i32 %195 to i64
  %pos_y325 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %196 = load i32, i32* %pos_y325, align 4
  %idxprom326 = sext i32 %196 to i64
  %197 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx327 = getelementptr inbounds i8*, i8** %197, i64 %idxprom326
  %198 = load i8*, i8** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i8, i8* %198, i64 %idxprom324
  %199 = load i8, i8* %arrayidx328, align 1
  %conv329 = sext i8 %199 to i32
  %mul330 = mul nsw i32 %conv329, 2
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.322, %cond.true.314
  %cond332 = phi i32 [ %conv321, %cond.true.314 ], [ %mul330, %cond.false.322 ]
  br label %cond.end.334

cond.false.333:                                   ; preds = %cond.end.303
  br label %cond.end.334

cond.end.334:                                     ; preds = %cond.false.333, %cond.end.331
  %cond335 = phi i32 [ %cond332, %cond.end.331 ], [ -1, %cond.false.333 ]
  store i32 %cond335, i32* %refC, align 4
  %available336 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %200 = load i32, i32* %available336, align 4
  %tobool337 = icmp ne i32 %200, 0
  br i1 %tobool337, label %cond.true.338, label %cond.false.364

cond.true.338:                                    ; preds = %cond.end.334
  %mb_addr339 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 1
  %201 = load i32, i32* %mb_addr339, align 4
  %idxprom340 = sext i32 %201 to i64
  %202 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data341 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %202, i32 0, i32 61
  %203 = load %struct.macroblock*, %struct.macroblock** %mb_data341, align 8
  %arrayidx342 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %203, i64 %idxprom340
  %mb_field343 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx342, i32 0, i32 19
  %204 = load i32, i32* %mb_field343, align 4
  %tobool344 = icmp ne i32 %204, 0
  br i1 %tobool344, label %cond.true.345, label %cond.false.353

cond.true.345:                                    ; preds = %cond.true.338
  %pos_x346 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %205 = load i32, i32* %pos_x346, align 4
  %idxprom347 = sext i32 %205 to i64
  %pos_y348 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %206 = load i32, i32* %pos_y348, align 4
  %idxprom349 = sext i32 %206 to i64
  %207 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx350 = getelementptr inbounds i8*, i8** %207, i64 %idxprom349
  %208 = load i8*, i8** %arrayidx350, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %208, i64 %idxprom347
  %209 = load i8, i8* %arrayidx351, align 1
  %conv352 = sext i8 %209 to i32
  br label %cond.end.362

cond.false.353:                                   ; preds = %cond.true.338
  %pos_x354 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %210 = load i32, i32* %pos_x354, align 4
  %idxprom355 = sext i32 %210 to i64
  %pos_y356 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %211 = load i32, i32* %pos_y356, align 4
  %idxprom357 = sext i32 %211 to i64
  %212 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx358 = getelementptr inbounds i8*, i8** %212, i64 %idxprom357
  %213 = load i8*, i8** %arrayidx358, align 8
  %arrayidx359 = getelementptr inbounds i8, i8* %213, i64 %idxprom355
  %214 = load i8, i8* %arrayidx359, align 1
  %conv360 = sext i8 %214 to i32
  %mul361 = mul nsw i32 %conv360, 2
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.353, %cond.true.345
  %cond363 = phi i32 [ %conv352, %cond.true.345 ], [ %mul361, %cond.false.353 ]
  br label %cond.end.365

cond.false.364:                                   ; preds = %cond.end.334
  br label %cond.end.365

cond.end.365:                                     ; preds = %cond.false.364, %cond.end.362
  %cond366 = phi i32 [ %cond363, %cond.end.362 ], [ -1, %cond.false.364 ]
  store i32 %cond366, i32* %refD, align 4
  %available367 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %215 = load i32, i32* %available367, align 4
  %tobool368 = icmp ne i32 %215, 0
  br i1 %tobool368, label %cond.true.369, label %cond.false.383

cond.true.369:                                    ; preds = %cond.end.365
  %216 = load i32, i32* %refA, align 4
  %idxprom370 = sext i32 %216 to i64
  %217 = load i32*, i32** %mot_scale, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %217, i64 %idxprom370
  %218 = load i32, i32* %arrayidx371, align 4
  %pos_x372 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %219 = load i32, i32* %pos_x372, align 4
  %idxprom373 = sext i32 %219 to i64
  %pos_y374 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %220 = load i32, i32* %pos_y374, align 4
  %idxprom375 = sext i32 %220 to i64
  %221 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx376 = getelementptr inbounds i16**, i16*** %221, i64 %idxprom375
  %222 = load i16**, i16*** %arrayidx376, align 8
  %arrayidx377 = getelementptr inbounds i16*, i16** %222, i64 %idxprom373
  %223 = load i16*, i16** %arrayidx377, align 8
  %arrayidx378 = getelementptr inbounds i16, i16* %223, i64 0
  %224 = load i16, i16* %arrayidx378, align 2
  %conv379 = sext i16 %224 to i32
  %mul380 = mul nsw i32 %218, %conv379
  %225 = load i16, i16* %sp_shift_mv, align 2
  %conv381 = sext i16 %225 to i32
  %call382 = call i32 @rshift_rnd_sf(i32 %mul380, i32 %conv381)
  br label %cond.end.385

cond.false.383:                                   ; preds = %cond.end.365
  %226 = load i32, i32* @mv_rescale, align 4
  %shr384 = ashr i32 12, %226
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.false.383, %cond.true.369
  %cond386 = phi i32 [ %call382, %cond.true.369 ], [ %shr384, %cond.false.383 ]
  %227 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point387 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %227, i32 0, i32 1
  %228 = load %struct.SPoint*, %struct.SPoint** %point387, align 8
  %arrayidx388 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %228, i64 1
  %mv389 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx388, i32 0, i32 0
  %arrayidx390 = getelementptr inbounds [2 x i32], [2 x i32]* %mv389, i32 0, i64 0
  store i32 %cond386, i32* %arrayidx390, align 4
  %available391 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %229 = load i32, i32* %available391, align 4
  %tobool392 = icmp ne i32 %229, 0
  br i1 %tobool392, label %cond.true.393, label %cond.false.431

cond.true.393:                                    ; preds = %cond.end.385
  %mb_addr394 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %230 = load i32, i32* %mb_addr394, align 4
  %idxprom395 = sext i32 %230 to i64
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data396 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 61
  %232 = load %struct.macroblock*, %struct.macroblock** %mb_data396, align 8
  %arrayidx397 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %232, i64 %idxprom395
  %mb_field398 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx397, i32 0, i32 19
  %233 = load i32, i32* %mb_field398, align 4
  %tobool399 = icmp ne i32 %233, 0
  br i1 %tobool399, label %cond.true.400, label %cond.false.414

cond.true.400:                                    ; preds = %cond.true.393
  %234 = load i32, i32* %refA, align 4
  %idxprom401 = sext i32 %234 to i64
  %235 = load i32*, i32** %mot_scale, align 8
  %arrayidx402 = getelementptr inbounds i32, i32* %235, i64 %idxprom401
  %236 = load i32, i32* %arrayidx402, align 4
  %pos_x403 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %237 = load i32, i32* %pos_x403, align 4
  %idxprom404 = sext i32 %237 to i64
  %pos_y405 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %238 = load i32, i32* %pos_y405, align 4
  %idxprom406 = sext i32 %238 to i64
  %239 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx407 = getelementptr inbounds i16**, i16*** %239, i64 %idxprom406
  %240 = load i16**, i16*** %arrayidx407, align 8
  %arrayidx408 = getelementptr inbounds i16*, i16** %240, i64 %idxprom404
  %241 = load i16*, i16** %arrayidx408, align 8
  %arrayidx409 = getelementptr inbounds i16, i16* %241, i64 1
  %242 = load i16, i16* %arrayidx409, align 2
  %conv410 = sext i16 %242 to i32
  %mul411 = mul nsw i32 %236, %conv410
  %243 = load i16, i16* %sp_shift_mv, align 2
  %conv412 = sext i16 %243 to i32
  %call413 = call i32 @rshift_rnd_sf(i32 %mul411, i32 %conv412)
  br label %cond.end.429

cond.false.414:                                   ; preds = %cond.true.393
  %244 = load i32, i32* %refA, align 4
  %idxprom415 = sext i32 %244 to i64
  %245 = load i32*, i32** %mot_scale, align 8
  %arrayidx416 = getelementptr inbounds i32, i32* %245, i64 %idxprom415
  %246 = load i32, i32* %arrayidx416, align 4
  %pos_x417 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %247 = load i32, i32* %pos_x417, align 4
  %idxprom418 = sext i32 %247 to i64
  %pos_y419 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %248 = load i32, i32* %pos_y419, align 4
  %idxprom420 = sext i32 %248 to i64
  %249 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx421 = getelementptr inbounds i16**, i16*** %249, i64 %idxprom420
  %250 = load i16**, i16*** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds i16*, i16** %250, i64 %idxprom418
  %251 = load i16*, i16** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i16, i16* %251, i64 1
  %252 = load i16, i16* %arrayidx423, align 2
  %conv424 = sext i16 %252 to i32
  %mul425 = mul nsw i32 %246, %conv424
  %253 = load i16, i16* %sp_shift_mv, align 2
  %conv426 = sext i16 %253 to i32
  %add427 = add nsw i32 %conv426, 1
  %call428 = call i32 @rshift_rnd_sf(i32 %mul425, i32 %add427)
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.false.414, %cond.true.400
  %cond430 = phi i32 [ %call413, %cond.true.400 ], [ %call428, %cond.false.414 ]
  br label %cond.end.432

cond.false.431:                                   ; preds = %cond.end.385
  br label %cond.end.432

cond.end.432:                                     ; preds = %cond.false.431, %cond.end.429
  %cond433 = phi i32 [ %cond430, %cond.end.429 ], [ 0, %cond.false.431 ]
  %254 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point434 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %254, i32 0, i32 1
  %255 = load %struct.SPoint*, %struct.SPoint** %point434, align 8
  %arrayidx435 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %255, i64 1
  %mv436 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx435, i32 0, i32 0
  %arrayidx437 = getelementptr inbounds [2 x i32], [2 x i32]* %mv436, i32 0, i64 1
  store i32 %cond433, i32* %arrayidx437, align 4
  %available438 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %256 = load i32, i32* %available438, align 4
  %tobool439 = icmp ne i32 %256, 0
  br i1 %tobool439, label %cond.true.440, label %cond.false.454

cond.true.440:                                    ; preds = %cond.end.432
  %257 = load i32, i32* %refB, align 4
  %idxprom441 = sext i32 %257 to i64
  %258 = load i32*, i32** %mot_scale, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %258, i64 %idxprom441
  %259 = load i32, i32* %arrayidx442, align 4
  %pos_x443 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %260 = load i32, i32* %pos_x443, align 4
  %idxprom444 = sext i32 %260 to i64
  %pos_y445 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %261 = load i32, i32* %pos_y445, align 4
  %idxprom446 = sext i32 %261 to i64
  %262 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx447 = getelementptr inbounds i16**, i16*** %262, i64 %idxprom446
  %263 = load i16**, i16*** %arrayidx447, align 8
  %arrayidx448 = getelementptr inbounds i16*, i16** %263, i64 %idxprom444
  %264 = load i16*, i16** %arrayidx448, align 8
  %arrayidx449 = getelementptr inbounds i16, i16* %264, i64 0
  %265 = load i16, i16* %arrayidx449, align 2
  %conv450 = sext i16 %265 to i32
  %mul451 = mul nsw i32 %259, %conv450
  %266 = load i16, i16* %sp_shift_mv, align 2
  %conv452 = sext i16 %266 to i32
  %call453 = call i32 @rshift_rnd_sf(i32 %mul451, i32 %conv452)
  br label %cond.end.455

cond.false.454:                                   ; preds = %cond.end.432
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.454, %cond.true.440
  %cond456 = phi i32 [ %call453, %cond.true.440 ], [ 0, %cond.false.454 ]
  %267 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point457 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %267, i32 0, i32 1
  %268 = load %struct.SPoint*, %struct.SPoint** %point457, align 8
  %arrayidx458 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %268, i64 2
  %mv459 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx458, i32 0, i32 0
  %arrayidx460 = getelementptr inbounds [2 x i32], [2 x i32]* %mv459, i32 0, i64 0
  store i32 %cond456, i32* %arrayidx460, align 4
  %available461 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %269 = load i32, i32* %available461, align 4
  %tobool462 = icmp ne i32 %269, 0
  br i1 %tobool462, label %cond.true.463, label %cond.false.501

cond.true.463:                                    ; preds = %cond.end.455
  %mb_addr464 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %270 = load i32, i32* %mb_addr464, align 4
  %idxprom465 = sext i32 %270 to i64
  %271 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data466 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %271, i32 0, i32 61
  %272 = load %struct.macroblock*, %struct.macroblock** %mb_data466, align 8
  %arrayidx467 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %272, i64 %idxprom465
  %mb_field468 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx467, i32 0, i32 19
  %273 = load i32, i32* %mb_field468, align 4
  %tobool469 = icmp ne i32 %273, 0
  br i1 %tobool469, label %cond.true.470, label %cond.false.484

cond.true.470:                                    ; preds = %cond.true.463
  %274 = load i32, i32* %refB, align 4
  %idxprom471 = sext i32 %274 to i64
  %275 = load i32*, i32** %mot_scale, align 8
  %arrayidx472 = getelementptr inbounds i32, i32* %275, i64 %idxprom471
  %276 = load i32, i32* %arrayidx472, align 4
  %pos_x473 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %277 = load i32, i32* %pos_x473, align 4
  %idxprom474 = sext i32 %277 to i64
  %pos_y475 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %278 = load i32, i32* %pos_y475, align 4
  %idxprom476 = sext i32 %278 to i64
  %279 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx477 = getelementptr inbounds i16**, i16*** %279, i64 %idxprom476
  %280 = load i16**, i16*** %arrayidx477, align 8
  %arrayidx478 = getelementptr inbounds i16*, i16** %280, i64 %idxprom474
  %281 = load i16*, i16** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds i16, i16* %281, i64 1
  %282 = load i16, i16* %arrayidx479, align 2
  %conv480 = sext i16 %282 to i32
  %mul481 = mul nsw i32 %276, %conv480
  %283 = load i16, i16* %sp_shift_mv, align 2
  %conv482 = sext i16 %283 to i32
  %call483 = call i32 @rshift_rnd_sf(i32 %mul481, i32 %conv482)
  br label %cond.end.499

cond.false.484:                                   ; preds = %cond.true.463
  %284 = load i32, i32* %refB, align 4
  %idxprom485 = sext i32 %284 to i64
  %285 = load i32*, i32** %mot_scale, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %285, i64 %idxprom485
  %286 = load i32, i32* %arrayidx486, align 4
  %pos_x487 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %287 = load i32, i32* %pos_x487, align 4
  %idxprom488 = sext i32 %287 to i64
  %pos_y489 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %288 = load i32, i32* %pos_y489, align 4
  %idxprom490 = sext i32 %288 to i64
  %289 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx491 = getelementptr inbounds i16**, i16*** %289, i64 %idxprom490
  %290 = load i16**, i16*** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i16*, i16** %290, i64 %idxprom488
  %291 = load i16*, i16** %arrayidx492, align 8
  %arrayidx493 = getelementptr inbounds i16, i16* %291, i64 1
  %292 = load i16, i16* %arrayidx493, align 2
  %conv494 = sext i16 %292 to i32
  %mul495 = mul nsw i32 %286, %conv494
  %293 = load i16, i16* %sp_shift_mv, align 2
  %conv496 = sext i16 %293 to i32
  %add497 = add nsw i32 %conv496, 1
  %call498 = call i32 @rshift_rnd_sf(i32 %mul495, i32 %add497)
  br label %cond.end.499

cond.end.499:                                     ; preds = %cond.false.484, %cond.true.470
  %cond500 = phi i32 [ %call483, %cond.true.470 ], [ %call498, %cond.false.484 ]
  br label %cond.end.503

cond.false.501:                                   ; preds = %cond.end.455
  %294 = load i32, i32* @mv_rescale, align 4
  %shr502 = ashr i32 12, %294
  br label %cond.end.503

cond.end.503:                                     ; preds = %cond.false.501, %cond.end.499
  %cond504 = phi i32 [ %cond500, %cond.end.499 ], [ %shr502, %cond.false.501 ]
  %295 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point505 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %295, i32 0, i32 1
  %296 = load %struct.SPoint*, %struct.SPoint** %point505, align 8
  %arrayidx506 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %296, i64 2
  %mv507 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx506, i32 0, i32 0
  %arrayidx508 = getelementptr inbounds [2 x i32], [2 x i32]* %mv507, i32 0, i64 1
  store i32 %cond504, i32* %arrayidx508, align 4
  %available509 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %297 = load i32, i32* %available509, align 4
  %tobool510 = icmp ne i32 %297, 0
  br i1 %tobool510, label %cond.true.511, label %cond.false.525

cond.true.511:                                    ; preds = %cond.end.503
  %298 = load i32, i32* %refC, align 4
  %idxprom512 = sext i32 %298 to i64
  %299 = load i32*, i32** %mot_scale, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %299, i64 %idxprom512
  %300 = load i32, i32* %arrayidx513, align 4
  %pos_x514 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %301 = load i32, i32* %pos_x514, align 4
  %idxprom515 = sext i32 %301 to i64
  %pos_y516 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %302 = load i32, i32* %pos_y516, align 4
  %idxprom517 = sext i32 %302 to i64
  %303 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx518 = getelementptr inbounds i16**, i16*** %303, i64 %idxprom517
  %304 = load i16**, i16*** %arrayidx518, align 8
  %arrayidx519 = getelementptr inbounds i16*, i16** %304, i64 %idxprom515
  %305 = load i16*, i16** %arrayidx519, align 8
  %arrayidx520 = getelementptr inbounds i16, i16* %305, i64 0
  %306 = load i16, i16* %arrayidx520, align 2
  %conv521 = sext i16 %306 to i32
  %mul522 = mul nsw i32 %300, %conv521
  %307 = load i16, i16* %sp_shift_mv, align 2
  %conv523 = sext i16 %307 to i32
  %call524 = call i32 @rshift_rnd_sf(i32 %mul522, i32 %conv523)
  br label %cond.end.528

cond.false.525:                                   ; preds = %cond.end.503
  %308 = load i32, i32* @mv_rescale, align 4
  %shr526 = ashr i32 12, %308
  %sub527 = sub nsw i32 0, %shr526
  br label %cond.end.528

cond.end.528:                                     ; preds = %cond.false.525, %cond.true.511
  %cond529 = phi i32 [ %call524, %cond.true.511 ], [ %sub527, %cond.false.525 ]
  %309 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point530 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %309, i32 0, i32 1
  %310 = load %struct.SPoint*, %struct.SPoint** %point530, align 8
  %arrayidx531 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %310, i64 3
  %mv532 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx531, i32 0, i32 0
  %arrayidx533 = getelementptr inbounds [2 x i32], [2 x i32]* %mv532, i32 0, i64 0
  store i32 %cond529, i32* %arrayidx533, align 4
  %available534 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %311 = load i32, i32* %available534, align 4
  %tobool535 = icmp ne i32 %311, 0
  br i1 %tobool535, label %cond.true.536, label %cond.false.574

cond.true.536:                                    ; preds = %cond.end.528
  %mb_addr537 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %312 = load i32, i32* %mb_addr537, align 4
  %idxprom538 = sext i32 %312 to i64
  %313 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data539 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %313, i32 0, i32 61
  %314 = load %struct.macroblock*, %struct.macroblock** %mb_data539, align 8
  %arrayidx540 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %314, i64 %idxprom538
  %mb_field541 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx540, i32 0, i32 19
  %315 = load i32, i32* %mb_field541, align 4
  %tobool542 = icmp ne i32 %315, 0
  br i1 %tobool542, label %cond.true.543, label %cond.false.557

cond.true.543:                                    ; preds = %cond.true.536
  %316 = load i32, i32* %refC, align 4
  %idxprom544 = sext i32 %316 to i64
  %317 = load i32*, i32** %mot_scale, align 8
  %arrayidx545 = getelementptr inbounds i32, i32* %317, i64 %idxprom544
  %318 = load i32, i32* %arrayidx545, align 4
  %pos_x546 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %319 = load i32, i32* %pos_x546, align 4
  %idxprom547 = sext i32 %319 to i64
  %pos_y548 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %320 = load i32, i32* %pos_y548, align 4
  %idxprom549 = sext i32 %320 to i64
  %321 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx550 = getelementptr inbounds i16**, i16*** %321, i64 %idxprom549
  %322 = load i16**, i16*** %arrayidx550, align 8
  %arrayidx551 = getelementptr inbounds i16*, i16** %322, i64 %idxprom547
  %323 = load i16*, i16** %arrayidx551, align 8
  %arrayidx552 = getelementptr inbounds i16, i16* %323, i64 1
  %324 = load i16, i16* %arrayidx552, align 2
  %conv553 = sext i16 %324 to i32
  %mul554 = mul nsw i32 %318, %conv553
  %325 = load i16, i16* %sp_shift_mv, align 2
  %conv555 = sext i16 %325 to i32
  %call556 = call i32 @rshift_rnd_sf(i32 %mul554, i32 %conv555)
  br label %cond.end.572

cond.false.557:                                   ; preds = %cond.true.536
  %326 = load i32, i32* %refC, align 4
  %idxprom558 = sext i32 %326 to i64
  %327 = load i32*, i32** %mot_scale, align 8
  %arrayidx559 = getelementptr inbounds i32, i32* %327, i64 %idxprom558
  %328 = load i32, i32* %arrayidx559, align 4
  %pos_x560 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %329 = load i32, i32* %pos_x560, align 4
  %idxprom561 = sext i32 %329 to i64
  %pos_y562 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %330 = load i32, i32* %pos_y562, align 4
  %idxprom563 = sext i32 %330 to i64
  %331 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx564 = getelementptr inbounds i16**, i16*** %331, i64 %idxprom563
  %332 = load i16**, i16*** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds i16*, i16** %332, i64 %idxprom561
  %333 = load i16*, i16** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i16, i16* %333, i64 1
  %334 = load i16, i16* %arrayidx566, align 2
  %conv567 = sext i16 %334 to i32
  %mul568 = mul nsw i32 %328, %conv567
  %335 = load i16, i16* %sp_shift_mv, align 2
  %conv569 = sext i16 %335 to i32
  %add570 = add nsw i32 %conv569, 1
  %call571 = call i32 @rshift_rnd_sf(i32 %mul568, i32 %add570)
  br label %cond.end.572

cond.end.572:                                     ; preds = %cond.false.557, %cond.true.543
  %cond573 = phi i32 [ %call556, %cond.true.543 ], [ %call571, %cond.false.557 ]
  br label %cond.end.575

cond.false.574:                                   ; preds = %cond.end.528
  br label %cond.end.575

cond.end.575:                                     ; preds = %cond.false.574, %cond.end.572
  %cond576 = phi i32 [ %cond573, %cond.end.572 ], [ 0, %cond.false.574 ]
  %336 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point577 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %336, i32 0, i32 1
  %337 = load %struct.SPoint*, %struct.SPoint** %point577, align 8
  %arrayidx578 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %337, i64 3
  %mv579 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx578, i32 0, i32 0
  %arrayidx580 = getelementptr inbounds [2 x i32], [2 x i32]* %mv579, i32 0, i64 1
  store i32 %cond576, i32* %arrayidx580, align 4
  %available581 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %338 = load i32, i32* %available581, align 4
  %tobool582 = icmp ne i32 %338, 0
  br i1 %tobool582, label %cond.true.583, label %cond.false.597

cond.true.583:                                    ; preds = %cond.end.575
  %339 = load i32, i32* %refD, align 4
  %idxprom584 = sext i32 %339 to i64
  %340 = load i32*, i32** %mot_scale, align 8
  %arrayidx585 = getelementptr inbounds i32, i32* %340, i64 %idxprom584
  %341 = load i32, i32* %arrayidx585, align 4
  %pos_x586 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %342 = load i32, i32* %pos_x586, align 4
  %idxprom587 = sext i32 %342 to i64
  %pos_y588 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %343 = load i32, i32* %pos_y588, align 4
  %idxprom589 = sext i32 %343 to i64
  %344 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx590 = getelementptr inbounds i16**, i16*** %344, i64 %idxprom589
  %345 = load i16**, i16*** %arrayidx590, align 8
  %arrayidx591 = getelementptr inbounds i16*, i16** %345, i64 %idxprom587
  %346 = load i16*, i16** %arrayidx591, align 8
  %arrayidx592 = getelementptr inbounds i16, i16* %346, i64 0
  %347 = load i16, i16* %arrayidx592, align 2
  %conv593 = sext i16 %347 to i32
  %mul594 = mul nsw i32 %341, %conv593
  %348 = load i16, i16* %sp_shift_mv, align 2
  %conv595 = sext i16 %348 to i32
  %call596 = call i32 @rshift_rnd_sf(i32 %mul594, i32 %conv595)
  br label %cond.end.598

cond.false.597:                                   ; preds = %cond.end.575
  br label %cond.end.598

cond.end.598:                                     ; preds = %cond.false.597, %cond.true.583
  %cond599 = phi i32 [ %call596, %cond.true.583 ], [ 0, %cond.false.597 ]
  %349 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point600 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %349, i32 0, i32 1
  %350 = load %struct.SPoint*, %struct.SPoint** %point600, align 8
  %arrayidx601 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %350, i64 4
  %mv602 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx601, i32 0, i32 0
  %arrayidx603 = getelementptr inbounds [2 x i32], [2 x i32]* %mv602, i32 0, i64 0
  store i32 %cond599, i32* %arrayidx603, align 4
  %available604 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %351 = load i32, i32* %available604, align 4
  %tobool605 = icmp ne i32 %351, 0
  br i1 %tobool605, label %cond.true.606, label %cond.false.644

cond.true.606:                                    ; preds = %cond.end.598
  %mb_addr607 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 1
  %352 = load i32, i32* %mb_addr607, align 4
  %idxprom608 = sext i32 %352 to i64
  %353 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data609 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %353, i32 0, i32 61
  %354 = load %struct.macroblock*, %struct.macroblock** %mb_data609, align 8
  %arrayidx610 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %354, i64 %idxprom608
  %mb_field611 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx610, i32 0, i32 19
  %355 = load i32, i32* %mb_field611, align 4
  %tobool612 = icmp ne i32 %355, 0
  br i1 %tobool612, label %cond.true.613, label %cond.false.627

cond.true.613:                                    ; preds = %cond.true.606
  %356 = load i32, i32* %refD, align 4
  %idxprom614 = sext i32 %356 to i64
  %357 = load i32*, i32** %mot_scale, align 8
  %arrayidx615 = getelementptr inbounds i32, i32* %357, i64 %idxprom614
  %358 = load i32, i32* %arrayidx615, align 4
  %pos_x616 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %359 = load i32, i32* %pos_x616, align 4
  %idxprom617 = sext i32 %359 to i64
  %pos_y618 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %360 = load i32, i32* %pos_y618, align 4
  %idxprom619 = sext i32 %360 to i64
  %361 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx620 = getelementptr inbounds i16**, i16*** %361, i64 %idxprom619
  %362 = load i16**, i16*** %arrayidx620, align 8
  %arrayidx621 = getelementptr inbounds i16*, i16** %362, i64 %idxprom617
  %363 = load i16*, i16** %arrayidx621, align 8
  %arrayidx622 = getelementptr inbounds i16, i16* %363, i64 1
  %364 = load i16, i16* %arrayidx622, align 2
  %conv623 = sext i16 %364 to i32
  %mul624 = mul nsw i32 %358, %conv623
  %365 = load i16, i16* %sp_shift_mv, align 2
  %conv625 = sext i16 %365 to i32
  %call626 = call i32 @rshift_rnd_sf(i32 %mul624, i32 %conv625)
  br label %cond.end.642

cond.false.627:                                   ; preds = %cond.true.606
  %366 = load i32, i32* %refD, align 4
  %idxprom628 = sext i32 %366 to i64
  %367 = load i32*, i32** %mot_scale, align 8
  %arrayidx629 = getelementptr inbounds i32, i32* %367, i64 %idxprom628
  %368 = load i32, i32* %arrayidx629, align 4
  %pos_x630 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %369 = load i32, i32* %pos_x630, align 4
  %idxprom631 = sext i32 %369 to i64
  %pos_y632 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %370 = load i32, i32* %pos_y632, align 4
  %idxprom633 = sext i32 %370 to i64
  %371 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx634 = getelementptr inbounds i16**, i16*** %371, i64 %idxprom633
  %372 = load i16**, i16*** %arrayidx634, align 8
  %arrayidx635 = getelementptr inbounds i16*, i16** %372, i64 %idxprom631
  %373 = load i16*, i16** %arrayidx635, align 8
  %arrayidx636 = getelementptr inbounds i16, i16* %373, i64 1
  %374 = load i16, i16* %arrayidx636, align 2
  %conv637 = sext i16 %374 to i32
  %mul638 = mul nsw i32 %368, %conv637
  %375 = load i16, i16* %sp_shift_mv, align 2
  %conv639 = sext i16 %375 to i32
  %add640 = add nsw i32 %conv639, 1
  %call641 = call i32 @rshift_rnd_sf(i32 %mul638, i32 %add640)
  br label %cond.end.642

cond.end.642:                                     ; preds = %cond.false.627, %cond.true.613
  %cond643 = phi i32 [ %call626, %cond.true.613 ], [ %call641, %cond.false.627 ]
  br label %cond.end.647

cond.false.644:                                   ; preds = %cond.end.598
  %376 = load i32, i32* @mv_rescale, align 4
  %shr645 = ashr i32 12, %376
  %sub646 = sub nsw i32 0, %shr645
  br label %cond.end.647

cond.end.647:                                     ; preds = %cond.false.644, %cond.end.642
  %cond648 = phi i32 [ %cond643, %cond.end.642 ], [ %sub646, %cond.false.644 ]
  %377 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point649 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %377, i32 0, i32 1
  %378 = load %struct.SPoint*, %struct.SPoint** %point649, align 8
  %arrayidx650 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %378, i64 4
  %mv651 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [2 x i32], [2 x i32]* %mv651, i32 0, i64 1
  store i32 %cond648, i32* %arrayidx652, align 4
  br label %if.end.1064

if.else.653:                                      ; preds = %if.else.243
  %available654 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %379 = load i32, i32* %available654, align 4
  %tobool655 = icmp ne i32 %379, 0
  br i1 %tobool655, label %cond.true.656, label %cond.false.682

cond.true.656:                                    ; preds = %if.else.653
  %mb_addr657 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %380 = load i32, i32* %mb_addr657, align 4
  %idxprom658 = sext i32 %380 to i64
  %381 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data659 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %381, i32 0, i32 61
  %382 = load %struct.macroblock*, %struct.macroblock** %mb_data659, align 8
  %arrayidx660 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %382, i64 %idxprom658
  %mb_field661 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx660, i32 0, i32 19
  %383 = load i32, i32* %mb_field661, align 4
  %tobool662 = icmp ne i32 %383, 0
  br i1 %tobool662, label %cond.true.663, label %cond.false.672

cond.true.663:                                    ; preds = %cond.true.656
  %pos_x664 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %384 = load i32, i32* %pos_x664, align 4
  %idxprom665 = sext i32 %384 to i64
  %pos_y666 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %385 = load i32, i32* %pos_y666, align 4
  %idxprom667 = sext i32 %385 to i64
  %386 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx668 = getelementptr inbounds i8*, i8** %386, i64 %idxprom667
  %387 = load i8*, i8** %arrayidx668, align 8
  %arrayidx669 = getelementptr inbounds i8, i8* %387, i64 %idxprom665
  %388 = load i8, i8* %arrayidx669, align 1
  %conv670 = sext i8 %388 to i32
  %shr671 = ashr i32 %conv670, 1
  br label %cond.end.680

cond.false.672:                                   ; preds = %cond.true.656
  %pos_x673 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %389 = load i32, i32* %pos_x673, align 4
  %idxprom674 = sext i32 %389 to i64
  %pos_y675 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %390 = load i32, i32* %pos_y675, align 4
  %idxprom676 = sext i32 %390 to i64
  %391 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx677 = getelementptr inbounds i8*, i8** %391, i64 %idxprom676
  %392 = load i8*, i8** %arrayidx677, align 8
  %arrayidx678 = getelementptr inbounds i8, i8* %392, i64 %idxprom674
  %393 = load i8, i8* %arrayidx678, align 1
  %conv679 = sext i8 %393 to i32
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.672, %cond.true.663
  %cond681 = phi i32 [ %shr671, %cond.true.663 ], [ %conv679, %cond.false.672 ]
  br label %cond.end.683

cond.false.682:                                   ; preds = %if.else.653
  br label %cond.end.683

cond.end.683:                                     ; preds = %cond.false.682, %cond.end.680
  %cond684 = phi i32 [ %cond681, %cond.end.680 ], [ -1, %cond.false.682 ]
  store i32 %cond684, i32* %refA, align 4
  %available685 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %394 = load i32, i32* %available685, align 4
  %tobool686 = icmp ne i32 %394, 0
  br i1 %tobool686, label %cond.true.687, label %cond.false.713

cond.true.687:                                    ; preds = %cond.end.683
  %mb_addr688 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %395 = load i32, i32* %mb_addr688, align 4
  %idxprom689 = sext i32 %395 to i64
  %396 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data690 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %396, i32 0, i32 61
  %397 = load %struct.macroblock*, %struct.macroblock** %mb_data690, align 8
  %arrayidx691 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %397, i64 %idxprom689
  %mb_field692 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx691, i32 0, i32 19
  %398 = load i32, i32* %mb_field692, align 4
  %tobool693 = icmp ne i32 %398, 0
  br i1 %tobool693, label %cond.true.694, label %cond.false.703

cond.true.694:                                    ; preds = %cond.true.687
  %pos_x695 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %399 = load i32, i32* %pos_x695, align 4
  %idxprom696 = sext i32 %399 to i64
  %pos_y697 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %400 = load i32, i32* %pos_y697, align 4
  %idxprom698 = sext i32 %400 to i64
  %401 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx699 = getelementptr inbounds i8*, i8** %401, i64 %idxprom698
  %402 = load i8*, i8** %arrayidx699, align 8
  %arrayidx700 = getelementptr inbounds i8, i8* %402, i64 %idxprom696
  %403 = load i8, i8* %arrayidx700, align 1
  %conv701 = sext i8 %403 to i32
  %shr702 = ashr i32 %conv701, 1
  br label %cond.end.711

cond.false.703:                                   ; preds = %cond.true.687
  %pos_x704 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %404 = load i32, i32* %pos_x704, align 4
  %idxprom705 = sext i32 %404 to i64
  %pos_y706 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %405 = load i32, i32* %pos_y706, align 4
  %idxprom707 = sext i32 %405 to i64
  %406 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx708 = getelementptr inbounds i8*, i8** %406, i64 %idxprom707
  %407 = load i8*, i8** %arrayidx708, align 8
  %arrayidx709 = getelementptr inbounds i8, i8* %407, i64 %idxprom705
  %408 = load i8, i8* %arrayidx709, align 1
  %conv710 = sext i8 %408 to i32
  br label %cond.end.711

cond.end.711:                                     ; preds = %cond.false.703, %cond.true.694
  %cond712 = phi i32 [ %shr702, %cond.true.694 ], [ %conv710, %cond.false.703 ]
  br label %cond.end.714

cond.false.713:                                   ; preds = %cond.end.683
  br label %cond.end.714

cond.end.714:                                     ; preds = %cond.false.713, %cond.end.711
  %cond715 = phi i32 [ %cond712, %cond.end.711 ], [ -1, %cond.false.713 ]
  store i32 %cond715, i32* %refB, align 4
  %available716 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %409 = load i32, i32* %available716, align 4
  %tobool717 = icmp ne i32 %409, 0
  br i1 %tobool717, label %cond.true.718, label %cond.false.744

cond.true.718:                                    ; preds = %cond.end.714
  %mb_addr719 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %410 = load i32, i32* %mb_addr719, align 4
  %idxprom720 = sext i32 %410 to i64
  %411 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data721 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %411, i32 0, i32 61
  %412 = load %struct.macroblock*, %struct.macroblock** %mb_data721, align 8
  %arrayidx722 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %412, i64 %idxprom720
  %mb_field723 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx722, i32 0, i32 19
  %413 = load i32, i32* %mb_field723, align 4
  %tobool724 = icmp ne i32 %413, 0
  br i1 %tobool724, label %cond.true.725, label %cond.false.734

cond.true.725:                                    ; preds = %cond.true.718
  %pos_x726 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %414 = load i32, i32* %pos_x726, align 4
  %idxprom727 = sext i32 %414 to i64
  %pos_y728 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %415 = load i32, i32* %pos_y728, align 4
  %idxprom729 = sext i32 %415 to i64
  %416 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx730 = getelementptr inbounds i8*, i8** %416, i64 %idxprom729
  %417 = load i8*, i8** %arrayidx730, align 8
  %arrayidx731 = getelementptr inbounds i8, i8* %417, i64 %idxprom727
  %418 = load i8, i8* %arrayidx731, align 1
  %conv732 = sext i8 %418 to i32
  %shr733 = ashr i32 %conv732, 1
  br label %cond.end.742

cond.false.734:                                   ; preds = %cond.true.718
  %pos_x735 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %419 = load i32, i32* %pos_x735, align 4
  %idxprom736 = sext i32 %419 to i64
  %pos_y737 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %420 = load i32, i32* %pos_y737, align 4
  %idxprom738 = sext i32 %420 to i64
  %421 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx739 = getelementptr inbounds i8*, i8** %421, i64 %idxprom738
  %422 = load i8*, i8** %arrayidx739, align 8
  %arrayidx740 = getelementptr inbounds i8, i8* %422, i64 %idxprom736
  %423 = load i8, i8* %arrayidx740, align 1
  %conv741 = sext i8 %423 to i32
  br label %cond.end.742

cond.end.742:                                     ; preds = %cond.false.734, %cond.true.725
  %cond743 = phi i32 [ %shr733, %cond.true.725 ], [ %conv741, %cond.false.734 ]
  br label %cond.end.745

cond.false.744:                                   ; preds = %cond.end.714
  br label %cond.end.745

cond.end.745:                                     ; preds = %cond.false.744, %cond.end.742
  %cond746 = phi i32 [ %cond743, %cond.end.742 ], [ -1, %cond.false.744 ]
  store i32 %cond746, i32* %refC, align 4
  %available747 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %424 = load i32, i32* %available747, align 4
  %tobool748 = icmp ne i32 %424, 0
  br i1 %tobool748, label %cond.true.749, label %cond.false.775

cond.true.749:                                    ; preds = %cond.end.745
  %mb_addr750 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 1
  %425 = load i32, i32* %mb_addr750, align 4
  %idxprom751 = sext i32 %425 to i64
  %426 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data752 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %426, i32 0, i32 61
  %427 = load %struct.macroblock*, %struct.macroblock** %mb_data752, align 8
  %arrayidx753 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %427, i64 %idxprom751
  %mb_field754 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx753, i32 0, i32 19
  %428 = load i32, i32* %mb_field754, align 4
  %tobool755 = icmp ne i32 %428, 0
  br i1 %tobool755, label %cond.true.756, label %cond.false.765

cond.true.756:                                    ; preds = %cond.true.749
  %pos_x757 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %429 = load i32, i32* %pos_x757, align 4
  %idxprom758 = sext i32 %429 to i64
  %pos_y759 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %430 = load i32, i32* %pos_y759, align 4
  %idxprom760 = sext i32 %430 to i64
  %431 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx761 = getelementptr inbounds i8*, i8** %431, i64 %idxprom760
  %432 = load i8*, i8** %arrayidx761, align 8
  %arrayidx762 = getelementptr inbounds i8, i8* %432, i64 %idxprom758
  %433 = load i8, i8* %arrayidx762, align 1
  %conv763 = sext i8 %433 to i32
  %shr764 = ashr i32 %conv763, 1
  br label %cond.end.773

cond.false.765:                                   ; preds = %cond.true.749
  %pos_x766 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %434 = load i32, i32* %pos_x766, align 4
  %idxprom767 = sext i32 %434 to i64
  %pos_y768 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %435 = load i32, i32* %pos_y768, align 4
  %idxprom769 = sext i32 %435 to i64
  %436 = load i8**, i8*** %refPic.addr, align 8
  %arrayidx770 = getelementptr inbounds i8*, i8** %436, i64 %idxprom769
  %437 = load i8*, i8** %arrayidx770, align 8
  %arrayidx771 = getelementptr inbounds i8, i8* %437, i64 %idxprom767
  %438 = load i8, i8* %arrayidx771, align 1
  %conv772 = sext i8 %438 to i32
  br label %cond.end.773

cond.end.773:                                     ; preds = %cond.false.765, %cond.true.756
  %cond774 = phi i32 [ %shr764, %cond.true.756 ], [ %conv772, %cond.false.765 ]
  br label %cond.end.776

cond.false.775:                                   ; preds = %cond.end.745
  br label %cond.end.776

cond.end.776:                                     ; preds = %cond.false.775, %cond.end.773
  %cond777 = phi i32 [ %cond774, %cond.end.773 ], [ -1, %cond.false.775 ]
  store i32 %cond777, i32* %refD, align 4
  %available778 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %439 = load i32, i32* %available778, align 4
  %tobool779 = icmp ne i32 %439, 0
  br i1 %tobool779, label %cond.true.780, label %cond.false.794

cond.true.780:                                    ; preds = %cond.end.776
  %440 = load i32, i32* %refA, align 4
  %idxprom781 = sext i32 %440 to i64
  %441 = load i32*, i32** %mot_scale, align 8
  %arrayidx782 = getelementptr inbounds i32, i32* %441, i64 %idxprom781
  %442 = load i32, i32* %arrayidx782, align 4
  %pos_x783 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %443 = load i32, i32* %pos_x783, align 4
  %idxprom784 = sext i32 %443 to i64
  %pos_y785 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %444 = load i32, i32* %pos_y785, align 4
  %idxprom786 = sext i32 %444 to i64
  %445 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx787 = getelementptr inbounds i16**, i16*** %445, i64 %idxprom786
  %446 = load i16**, i16*** %arrayidx787, align 8
  %arrayidx788 = getelementptr inbounds i16*, i16** %446, i64 %idxprom784
  %447 = load i16*, i16** %arrayidx788, align 8
  %arrayidx789 = getelementptr inbounds i16, i16* %447, i64 0
  %448 = load i16, i16* %arrayidx789, align 2
  %conv790 = sext i16 %448 to i32
  %mul791 = mul nsw i32 %442, %conv790
  %449 = load i16, i16* %sp_shift_mv, align 2
  %conv792 = sext i16 %449 to i32
  %call793 = call i32 @rshift_rnd_sf(i32 %mul791, i32 %conv792)
  br label %cond.end.796

cond.false.794:                                   ; preds = %cond.end.776
  %450 = load i32, i32* @mv_rescale, align 4
  %shr795 = ashr i32 12, %450
  br label %cond.end.796

cond.end.796:                                     ; preds = %cond.false.794, %cond.true.780
  %cond797 = phi i32 [ %call793, %cond.true.780 ], [ %shr795, %cond.false.794 ]
  %451 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point798 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %451, i32 0, i32 1
  %452 = load %struct.SPoint*, %struct.SPoint** %point798, align 8
  %arrayidx799 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %452, i64 1
  %mv800 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx799, i32 0, i32 0
  %arrayidx801 = getelementptr inbounds [2 x i32], [2 x i32]* %mv800, i32 0, i64 0
  store i32 %cond797, i32* %arrayidx801, align 4
  %available802 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 0
  %453 = load i32, i32* %available802, align 4
  %tobool803 = icmp ne i32 %453, 0
  br i1 %tobool803, label %cond.true.804, label %cond.false.842

cond.true.804:                                    ; preds = %cond.end.796
  %mb_addr805 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 1
  %454 = load i32, i32* %mb_addr805, align 4
  %idxprom806 = sext i32 %454 to i64
  %455 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data807 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %455, i32 0, i32 61
  %456 = load %struct.macroblock*, %struct.macroblock** %mb_data807, align 8
  %arrayidx808 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %456, i64 %idxprom806
  %mb_field809 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx808, i32 0, i32 19
  %457 = load i32, i32* %mb_field809, align 4
  %tobool810 = icmp ne i32 %457, 0
  br i1 %tobool810, label %cond.true.811, label %cond.false.826

cond.true.811:                                    ; preds = %cond.true.804
  %458 = load i32, i32* %refA, align 4
  %idxprom812 = sext i32 %458 to i64
  %459 = load i32*, i32** %mot_scale, align 8
  %arrayidx813 = getelementptr inbounds i32, i32* %459, i64 %idxprom812
  %460 = load i32, i32* %arrayidx813, align 4
  %pos_x814 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %461 = load i32, i32* %pos_x814, align 4
  %idxprom815 = sext i32 %461 to i64
  %pos_y816 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %462 = load i32, i32* %pos_y816, align 4
  %idxprom817 = sext i32 %462 to i64
  %463 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx818 = getelementptr inbounds i16**, i16*** %463, i64 %idxprom817
  %464 = load i16**, i16*** %arrayidx818, align 8
  %arrayidx819 = getelementptr inbounds i16*, i16** %464, i64 %idxprom815
  %465 = load i16*, i16** %arrayidx819, align 8
  %arrayidx820 = getelementptr inbounds i16, i16* %465, i64 1
  %466 = load i16, i16* %arrayidx820, align 2
  %conv821 = sext i16 %466 to i32
  %mul822 = mul nsw i32 %460, %conv821
  %467 = load i16, i16* %sp_shift_mv, align 2
  %conv823 = sext i16 %467 to i32
  %sub824 = sub nsw i32 %conv823, 1
  %call825 = call i32 @rshift_rnd_sf(i32 %mul822, i32 %sub824)
  br label %cond.end.840

cond.false.826:                                   ; preds = %cond.true.804
  %468 = load i32, i32* %refA, align 4
  %idxprom827 = sext i32 %468 to i64
  %469 = load i32*, i32** %mot_scale, align 8
  %arrayidx828 = getelementptr inbounds i32, i32* %469, i64 %idxprom827
  %470 = load i32, i32* %arrayidx828, align 4
  %pos_x829 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 4
  %471 = load i32, i32* %pos_x829, align 4
  %idxprom830 = sext i32 %471 to i64
  %pos_y831 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_a, i32 0, i32 5
  %472 = load i32, i32* %pos_y831, align 4
  %idxprom832 = sext i32 %472 to i64
  %473 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx833 = getelementptr inbounds i16**, i16*** %473, i64 %idxprom832
  %474 = load i16**, i16*** %arrayidx833, align 8
  %arrayidx834 = getelementptr inbounds i16*, i16** %474, i64 %idxprom830
  %475 = load i16*, i16** %arrayidx834, align 8
  %arrayidx835 = getelementptr inbounds i16, i16* %475, i64 1
  %476 = load i16, i16* %arrayidx835, align 2
  %conv836 = sext i16 %476 to i32
  %mul837 = mul nsw i32 %470, %conv836
  %477 = load i16, i16* %sp_shift_mv, align 2
  %conv838 = sext i16 %477 to i32
  %call839 = call i32 @rshift_rnd_sf(i32 %mul837, i32 %conv838)
  br label %cond.end.840

cond.end.840:                                     ; preds = %cond.false.826, %cond.true.811
  %cond841 = phi i32 [ %call825, %cond.true.811 ], [ %call839, %cond.false.826 ]
  br label %cond.end.843

cond.false.842:                                   ; preds = %cond.end.796
  br label %cond.end.843

cond.end.843:                                     ; preds = %cond.false.842, %cond.end.840
  %cond844 = phi i32 [ %cond841, %cond.end.840 ], [ 0, %cond.false.842 ]
  %478 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point845 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %478, i32 0, i32 1
  %479 = load %struct.SPoint*, %struct.SPoint** %point845, align 8
  %arrayidx846 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %479, i64 1
  %mv847 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx846, i32 0, i32 0
  %arrayidx848 = getelementptr inbounds [2 x i32], [2 x i32]* %mv847, i32 0, i64 1
  store i32 %cond844, i32* %arrayidx848, align 4
  %available849 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %480 = load i32, i32* %available849, align 4
  %tobool850 = icmp ne i32 %480, 0
  br i1 %tobool850, label %cond.true.851, label %cond.false.865

cond.true.851:                                    ; preds = %cond.end.843
  %481 = load i32, i32* %refB, align 4
  %idxprom852 = sext i32 %481 to i64
  %482 = load i32*, i32** %mot_scale, align 8
  %arrayidx853 = getelementptr inbounds i32, i32* %482, i64 %idxprom852
  %483 = load i32, i32* %arrayidx853, align 4
  %pos_x854 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %484 = load i32, i32* %pos_x854, align 4
  %idxprom855 = sext i32 %484 to i64
  %pos_y856 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %485 = load i32, i32* %pos_y856, align 4
  %idxprom857 = sext i32 %485 to i64
  %486 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx858 = getelementptr inbounds i16**, i16*** %486, i64 %idxprom857
  %487 = load i16**, i16*** %arrayidx858, align 8
  %arrayidx859 = getelementptr inbounds i16*, i16** %487, i64 %idxprom855
  %488 = load i16*, i16** %arrayidx859, align 8
  %arrayidx860 = getelementptr inbounds i16, i16* %488, i64 0
  %489 = load i16, i16* %arrayidx860, align 2
  %conv861 = sext i16 %489 to i32
  %mul862 = mul nsw i32 %483, %conv861
  %490 = load i16, i16* %sp_shift_mv, align 2
  %conv863 = sext i16 %490 to i32
  %call864 = call i32 @rshift_rnd_sf(i32 %mul862, i32 %conv863)
  br label %cond.end.866

cond.false.865:                                   ; preds = %cond.end.843
  br label %cond.end.866

cond.end.866:                                     ; preds = %cond.false.865, %cond.true.851
  %cond867 = phi i32 [ %call864, %cond.true.851 ], [ 0, %cond.false.865 ]
  %491 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point868 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %491, i32 0, i32 1
  %492 = load %struct.SPoint*, %struct.SPoint** %point868, align 8
  %arrayidx869 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %492, i64 2
  %mv870 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx869, i32 0, i32 0
  %arrayidx871 = getelementptr inbounds [2 x i32], [2 x i32]* %mv870, i32 0, i64 0
  store i32 %cond867, i32* %arrayidx871, align 4
  %available872 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 0
  %493 = load i32, i32* %available872, align 4
  %tobool873 = icmp ne i32 %493, 0
  br i1 %tobool873, label %cond.true.874, label %cond.false.912

cond.true.874:                                    ; preds = %cond.end.866
  %mb_addr875 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 1
  %494 = load i32, i32* %mb_addr875, align 4
  %idxprom876 = sext i32 %494 to i64
  %495 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data877 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %495, i32 0, i32 61
  %496 = load %struct.macroblock*, %struct.macroblock** %mb_data877, align 8
  %arrayidx878 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %496, i64 %idxprom876
  %mb_field879 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx878, i32 0, i32 19
  %497 = load i32, i32* %mb_field879, align 4
  %tobool880 = icmp ne i32 %497, 0
  br i1 %tobool880, label %cond.true.881, label %cond.false.896

cond.true.881:                                    ; preds = %cond.true.874
  %498 = load i32, i32* %refB, align 4
  %idxprom882 = sext i32 %498 to i64
  %499 = load i32*, i32** %mot_scale, align 8
  %arrayidx883 = getelementptr inbounds i32, i32* %499, i64 %idxprom882
  %500 = load i32, i32* %arrayidx883, align 4
  %pos_x884 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %501 = load i32, i32* %pos_x884, align 4
  %idxprom885 = sext i32 %501 to i64
  %pos_y886 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %502 = load i32, i32* %pos_y886, align 4
  %idxprom887 = sext i32 %502 to i64
  %503 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx888 = getelementptr inbounds i16**, i16*** %503, i64 %idxprom887
  %504 = load i16**, i16*** %arrayidx888, align 8
  %arrayidx889 = getelementptr inbounds i16*, i16** %504, i64 %idxprom885
  %505 = load i16*, i16** %arrayidx889, align 8
  %arrayidx890 = getelementptr inbounds i16, i16* %505, i64 1
  %506 = load i16, i16* %arrayidx890, align 2
  %conv891 = sext i16 %506 to i32
  %mul892 = mul nsw i32 %500, %conv891
  %507 = load i16, i16* %sp_shift_mv, align 2
  %conv893 = sext i16 %507 to i32
  %sub894 = sub nsw i32 %conv893, 1
  %call895 = call i32 @rshift_rnd_sf(i32 %mul892, i32 %sub894)
  br label %cond.end.910

cond.false.896:                                   ; preds = %cond.true.874
  %508 = load i32, i32* %refB, align 4
  %idxprom897 = sext i32 %508 to i64
  %509 = load i32*, i32** %mot_scale, align 8
  %arrayidx898 = getelementptr inbounds i32, i32* %509, i64 %idxprom897
  %510 = load i32, i32* %arrayidx898, align 4
  %pos_x899 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 4
  %511 = load i32, i32* %pos_x899, align 4
  %idxprom900 = sext i32 %511 to i64
  %pos_y901 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_b, i32 0, i32 5
  %512 = load i32, i32* %pos_y901, align 4
  %idxprom902 = sext i32 %512 to i64
  %513 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx903 = getelementptr inbounds i16**, i16*** %513, i64 %idxprom902
  %514 = load i16**, i16*** %arrayidx903, align 8
  %arrayidx904 = getelementptr inbounds i16*, i16** %514, i64 %idxprom900
  %515 = load i16*, i16** %arrayidx904, align 8
  %arrayidx905 = getelementptr inbounds i16, i16* %515, i64 1
  %516 = load i16, i16* %arrayidx905, align 2
  %conv906 = sext i16 %516 to i32
  %mul907 = mul nsw i32 %510, %conv906
  %517 = load i16, i16* %sp_shift_mv, align 2
  %conv908 = sext i16 %517 to i32
  %call909 = call i32 @rshift_rnd_sf(i32 %mul907, i32 %conv908)
  br label %cond.end.910

cond.end.910:                                     ; preds = %cond.false.896, %cond.true.881
  %cond911 = phi i32 [ %call895, %cond.true.881 ], [ %call909, %cond.false.896 ]
  br label %cond.end.914

cond.false.912:                                   ; preds = %cond.end.866
  %518 = load i32, i32* @mv_rescale, align 4
  %shr913 = ashr i32 12, %518
  br label %cond.end.914

cond.end.914:                                     ; preds = %cond.false.912, %cond.end.910
  %cond915 = phi i32 [ %cond911, %cond.end.910 ], [ %shr913, %cond.false.912 ]
  %519 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point916 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %519, i32 0, i32 1
  %520 = load %struct.SPoint*, %struct.SPoint** %point916, align 8
  %arrayidx917 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %520, i64 2
  %mv918 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx917, i32 0, i32 0
  %arrayidx919 = getelementptr inbounds [2 x i32], [2 x i32]* %mv918, i32 0, i64 1
  store i32 %cond915, i32* %arrayidx919, align 4
  %available920 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %521 = load i32, i32* %available920, align 4
  %tobool921 = icmp ne i32 %521, 0
  br i1 %tobool921, label %cond.true.922, label %cond.false.936

cond.true.922:                                    ; preds = %cond.end.914
  %522 = load i32, i32* %refC, align 4
  %idxprom923 = sext i32 %522 to i64
  %523 = load i32*, i32** %mot_scale, align 8
  %arrayidx924 = getelementptr inbounds i32, i32* %523, i64 %idxprom923
  %524 = load i32, i32* %arrayidx924, align 4
  %pos_x925 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %525 = load i32, i32* %pos_x925, align 4
  %idxprom926 = sext i32 %525 to i64
  %pos_y927 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %526 = load i32, i32* %pos_y927, align 4
  %idxprom928 = sext i32 %526 to i64
  %527 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx929 = getelementptr inbounds i16**, i16*** %527, i64 %idxprom928
  %528 = load i16**, i16*** %arrayidx929, align 8
  %arrayidx930 = getelementptr inbounds i16*, i16** %528, i64 %idxprom926
  %529 = load i16*, i16** %arrayidx930, align 8
  %arrayidx931 = getelementptr inbounds i16, i16* %529, i64 0
  %530 = load i16, i16* %arrayidx931, align 2
  %conv932 = sext i16 %530 to i32
  %mul933 = mul nsw i32 %524, %conv932
  %531 = load i16, i16* %sp_shift_mv, align 2
  %conv934 = sext i16 %531 to i32
  %call935 = call i32 @rshift_rnd_sf(i32 %mul933, i32 %conv934)
  br label %cond.end.939

cond.false.936:                                   ; preds = %cond.end.914
  %532 = load i32, i32* @mv_rescale, align 4
  %shr937 = ashr i32 12, %532
  %sub938 = sub nsw i32 0, %shr937
  br label %cond.end.939

cond.end.939:                                     ; preds = %cond.false.936, %cond.true.922
  %cond940 = phi i32 [ %call935, %cond.true.922 ], [ %sub938, %cond.false.936 ]
  %533 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point941 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %533, i32 0, i32 1
  %534 = load %struct.SPoint*, %struct.SPoint** %point941, align 8
  %arrayidx942 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %534, i64 3
  %mv943 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx942, i32 0, i32 0
  %arrayidx944 = getelementptr inbounds [2 x i32], [2 x i32]* %mv943, i32 0, i64 0
  store i32 %cond940, i32* %arrayidx944, align 4
  %available945 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  %535 = load i32, i32* %available945, align 4
  %tobool946 = icmp ne i32 %535, 0
  br i1 %tobool946, label %cond.true.947, label %cond.false.985

cond.true.947:                                    ; preds = %cond.end.939
  %mb_addr948 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 1
  %536 = load i32, i32* %mb_addr948, align 4
  %idxprom949 = sext i32 %536 to i64
  %537 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data950 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %537, i32 0, i32 61
  %538 = load %struct.macroblock*, %struct.macroblock** %mb_data950, align 8
  %arrayidx951 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %538, i64 %idxprom949
  %mb_field952 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx951, i32 0, i32 19
  %539 = load i32, i32* %mb_field952, align 4
  %tobool953 = icmp ne i32 %539, 0
  br i1 %tobool953, label %cond.true.954, label %cond.false.969

cond.true.954:                                    ; preds = %cond.true.947
  %540 = load i32, i32* %refC, align 4
  %idxprom955 = sext i32 %540 to i64
  %541 = load i32*, i32** %mot_scale, align 8
  %arrayidx956 = getelementptr inbounds i32, i32* %541, i64 %idxprom955
  %542 = load i32, i32* %arrayidx956, align 4
  %pos_x957 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %543 = load i32, i32* %pos_x957, align 4
  %idxprom958 = sext i32 %543 to i64
  %pos_y959 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %544 = load i32, i32* %pos_y959, align 4
  %idxprom960 = sext i32 %544 to i64
  %545 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx961 = getelementptr inbounds i16**, i16*** %545, i64 %idxprom960
  %546 = load i16**, i16*** %arrayidx961, align 8
  %arrayidx962 = getelementptr inbounds i16*, i16** %546, i64 %idxprom958
  %547 = load i16*, i16** %arrayidx962, align 8
  %arrayidx963 = getelementptr inbounds i16, i16* %547, i64 1
  %548 = load i16, i16* %arrayidx963, align 2
  %conv964 = sext i16 %548 to i32
  %mul965 = mul nsw i32 %542, %conv964
  %549 = load i16, i16* %sp_shift_mv, align 2
  %conv966 = sext i16 %549 to i32
  %sub967 = sub nsw i32 %conv966, 1
  %call968 = call i32 @rshift_rnd_sf(i32 %mul965, i32 %sub967)
  br label %cond.end.983

cond.false.969:                                   ; preds = %cond.true.947
  %550 = load i32, i32* %refC, align 4
  %idxprom970 = sext i32 %550 to i64
  %551 = load i32*, i32** %mot_scale, align 8
  %arrayidx971 = getelementptr inbounds i32, i32* %551, i64 %idxprom970
  %552 = load i32, i32* %arrayidx971, align 4
  %pos_x972 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 4
  %553 = load i32, i32* %pos_x972, align 4
  %idxprom973 = sext i32 %553 to i64
  %pos_y974 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 5
  %554 = load i32, i32* %pos_y974, align 4
  %idxprom975 = sext i32 %554 to i64
  %555 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx976 = getelementptr inbounds i16**, i16*** %555, i64 %idxprom975
  %556 = load i16**, i16*** %arrayidx976, align 8
  %arrayidx977 = getelementptr inbounds i16*, i16** %556, i64 %idxprom973
  %557 = load i16*, i16** %arrayidx977, align 8
  %arrayidx978 = getelementptr inbounds i16, i16* %557, i64 1
  %558 = load i16, i16* %arrayidx978, align 2
  %conv979 = sext i16 %558 to i32
  %mul980 = mul nsw i32 %552, %conv979
  %559 = load i16, i16* %sp_shift_mv, align 2
  %conv981 = sext i16 %559 to i32
  %call982 = call i32 @rshift_rnd_sf(i32 %mul980, i32 %conv981)
  br label %cond.end.983

cond.end.983:                                     ; preds = %cond.false.969, %cond.true.954
  %cond984 = phi i32 [ %call968, %cond.true.954 ], [ %call982, %cond.false.969 ]
  br label %cond.end.986

cond.false.985:                                   ; preds = %cond.end.939
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.false.985, %cond.end.983
  %cond987 = phi i32 [ %cond984, %cond.end.983 ], [ 0, %cond.false.985 ]
  %560 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point988 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %560, i32 0, i32 1
  %561 = load %struct.SPoint*, %struct.SPoint** %point988, align 8
  %arrayidx989 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %561, i64 3
  %mv990 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx989, i32 0, i32 0
  %arrayidx991 = getelementptr inbounds [2 x i32], [2 x i32]* %mv990, i32 0, i64 1
  store i32 %cond987, i32* %arrayidx991, align 4
  %available992 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %562 = load i32, i32* %available992, align 4
  %tobool993 = icmp ne i32 %562, 0
  br i1 %tobool993, label %cond.true.994, label %cond.false.1008

cond.true.994:                                    ; preds = %cond.end.986
  %563 = load i32, i32* %refD, align 4
  %idxprom995 = sext i32 %563 to i64
  %564 = load i32*, i32** %mot_scale, align 8
  %arrayidx996 = getelementptr inbounds i32, i32* %564, i64 %idxprom995
  %565 = load i32, i32* %arrayidx996, align 4
  %pos_x997 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %566 = load i32, i32* %pos_x997, align 4
  %idxprom998 = sext i32 %566 to i64
  %pos_y999 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %567 = load i32, i32* %pos_y999, align 4
  %idxprom1000 = sext i32 %567 to i64
  %568 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx1001 = getelementptr inbounds i16**, i16*** %568, i64 %idxprom1000
  %569 = load i16**, i16*** %arrayidx1001, align 8
  %arrayidx1002 = getelementptr inbounds i16*, i16** %569, i64 %idxprom998
  %570 = load i16*, i16** %arrayidx1002, align 8
  %arrayidx1003 = getelementptr inbounds i16, i16* %570, i64 0
  %571 = load i16, i16* %arrayidx1003, align 2
  %conv1004 = sext i16 %571 to i32
  %mul1005 = mul nsw i32 %565, %conv1004
  %572 = load i16, i16* %sp_shift_mv, align 2
  %conv1006 = sext i16 %572 to i32
  %call1007 = call i32 @rshift_rnd_sf(i32 %mul1005, i32 %conv1006)
  br label %cond.end.1009

cond.false.1008:                                  ; preds = %cond.end.986
  br label %cond.end.1009

cond.end.1009:                                    ; preds = %cond.false.1008, %cond.true.994
  %cond1010 = phi i32 [ %call1007, %cond.true.994 ], [ 0, %cond.false.1008 ]
  %573 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point1011 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %573, i32 0, i32 1
  %574 = load %struct.SPoint*, %struct.SPoint** %point1011, align 8
  %arrayidx1012 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %574, i64 4
  %mv1013 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx1012, i32 0, i32 0
  %arrayidx1014 = getelementptr inbounds [2 x i32], [2 x i32]* %mv1013, i32 0, i64 0
  store i32 %cond1010, i32* %arrayidx1014, align 4
  %available1015 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 0
  %575 = load i32, i32* %available1015, align 4
  %tobool1016 = icmp ne i32 %575, 0
  br i1 %tobool1016, label %cond.true.1017, label %cond.false.1055

cond.true.1017:                                   ; preds = %cond.end.1009
  %mb_addr1018 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 1
  %576 = load i32, i32* %mb_addr1018, align 4
  %idxprom1019 = sext i32 %576 to i64
  %577 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data1020 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %577, i32 0, i32 61
  %578 = load %struct.macroblock*, %struct.macroblock** %mb_data1020, align 8
  %arrayidx1021 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %578, i64 %idxprom1019
  %mb_field1022 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx1021, i32 0, i32 19
  %579 = load i32, i32* %mb_field1022, align 4
  %tobool1023 = icmp ne i32 %579, 0
  br i1 %tobool1023, label %cond.true.1024, label %cond.false.1039

cond.true.1024:                                   ; preds = %cond.true.1017
  %580 = load i32, i32* %refD, align 4
  %idxprom1025 = sext i32 %580 to i64
  %581 = load i32*, i32** %mot_scale, align 8
  %arrayidx1026 = getelementptr inbounds i32, i32* %581, i64 %idxprom1025
  %582 = load i32, i32* %arrayidx1026, align 4
  %pos_x1027 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %583 = load i32, i32* %pos_x1027, align 4
  %idxprom1028 = sext i32 %583 to i64
  %pos_y1029 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %584 = load i32, i32* %pos_y1029, align 4
  %idxprom1030 = sext i32 %584 to i64
  %585 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx1031 = getelementptr inbounds i16**, i16*** %585, i64 %idxprom1030
  %586 = load i16**, i16*** %arrayidx1031, align 8
  %arrayidx1032 = getelementptr inbounds i16*, i16** %586, i64 %idxprom1028
  %587 = load i16*, i16** %arrayidx1032, align 8
  %arrayidx1033 = getelementptr inbounds i16, i16* %587, i64 1
  %588 = load i16, i16* %arrayidx1033, align 2
  %conv1034 = sext i16 %588 to i32
  %mul1035 = mul nsw i32 %582, %conv1034
  %589 = load i16, i16* %sp_shift_mv, align 2
  %conv1036 = sext i16 %589 to i32
  %sub1037 = sub nsw i32 %conv1036, 1
  %call1038 = call i32 @rshift_rnd_sf(i32 %mul1035, i32 %sub1037)
  br label %cond.end.1053

cond.false.1039:                                  ; preds = %cond.true.1017
  %590 = load i32, i32* %refD, align 4
  %idxprom1040 = sext i32 %590 to i64
  %591 = load i32*, i32** %mot_scale, align 8
  %arrayidx1041 = getelementptr inbounds i32, i32* %591, i64 %idxprom1040
  %592 = load i32, i32* %arrayidx1041, align 4
  %pos_x1042 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 4
  %593 = load i32, i32* %pos_x1042, align 4
  %idxprom1043 = sext i32 %593 to i64
  %pos_y1044 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_d, i32 0, i32 5
  %594 = load i32, i32* %pos_y1044, align 4
  %idxprom1045 = sext i32 %594 to i64
  %595 = load i16***, i16**** %tmp_mv.addr, align 8
  %arrayidx1046 = getelementptr inbounds i16**, i16*** %595, i64 %idxprom1045
  %596 = load i16**, i16*** %arrayidx1046, align 8
  %arrayidx1047 = getelementptr inbounds i16*, i16** %596, i64 %idxprom1043
  %597 = load i16*, i16** %arrayidx1047, align 8
  %arrayidx1048 = getelementptr inbounds i16, i16* %597, i64 1
  %598 = load i16, i16* %arrayidx1048, align 2
  %conv1049 = sext i16 %598 to i32
  %mul1050 = mul nsw i32 %592, %conv1049
  %599 = load i16, i16* %sp_shift_mv, align 2
  %conv1051 = sext i16 %599 to i32
  %call1052 = call i32 @rshift_rnd_sf(i32 %mul1050, i32 %conv1051)
  br label %cond.end.1053

cond.end.1053:                                    ; preds = %cond.false.1039, %cond.true.1024
  %cond1054 = phi i32 [ %call1038, %cond.true.1024 ], [ %call1052, %cond.false.1039 ]
  br label %cond.end.1058

cond.false.1055:                                  ; preds = %cond.end.1009
  %600 = load i32, i32* @mv_rescale, align 4
  %shr1056 = ashr i32 12, %600
  %sub1057 = sub nsw i32 0, %shr1056
  br label %cond.end.1058

cond.end.1058:                                    ; preds = %cond.false.1055, %cond.end.1053
  %cond1059 = phi i32 [ %cond1054, %cond.end.1053 ], [ %sub1057, %cond.false.1055 ]
  %601 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point1060 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %601, i32 0, i32 1
  %602 = load %struct.SPoint*, %struct.SPoint** %point1060, align 8
  %arrayidx1061 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %602, i64 4
  %mv1062 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx1061, i32 0, i32 0
  %arrayidx1063 = getelementptr inbounds [2 x i32], [2 x i32]* %mv1062, i32 0, i64 1
  store i32 %cond1059, i32* %arrayidx1063, align 4
  br label %if.end.1064

if.end.1064:                                      ; preds = %cond.end.1058, %cond.end.647
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.end.1064, %if.end.242
  %603 = load i32, i32* %refA, align 4
  %cmp = icmp eq i32 %603, -1
  %conv1066 = zext i1 %cmp to i32
  %604 = load i32, i32* %refB, align 4
  %cmp1067 = icmp eq i32 %604, -1
  %conv1068 = zext i1 %cmp1067 to i32
  %add1069 = add nsw i32 %conv1066, %conv1068
  %605 = load i32, i32* %refC, align 4
  %cmp1070 = icmp eq i32 %605, -1
  br i1 %cmp1070, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.1065
  %606 = load i32, i32* %refD, align 4
  %cmp1072 = icmp eq i32 %606, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.1065
  %607 = phi i1 [ false, %if.end.1065 ], [ %cmp1072, %land.rhs ]
  %land.ext = zext i1 %607 to i32
  %add1074 = add nsw i32 %add1069, %land.ext
  %conv1075 = trunc i32 %add1074 to i16
  ret i16 %conv1075
}

; Function Attrs: nounwind uwtable
define internal void @EPZSSpatialMemPredictors(i32 %list, i16 signext %ref, i32 %blocktype, i32 %pic_x, i32 %bs_x, i32 %bs_y, i32 %by, i32* %prednum, i32 %img_width, %struct.MEPatternNode* %predictor) #0 {
entry:
  %list.addr = alloca i32, align 4
  %ref.addr = alloca i16, align 2
  %blocktype.addr = alloca i32, align 4
  %pic_x.addr = alloca i32, align 4
  %bs_x.addr = alloca i32, align 4
  %bs_y.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %prednum.addr = alloca i32*, align 8
  %img_width.addr = alloca i32, align 4
  %predictor.addr = alloca %struct.MEPatternNode*, align 8
  %mv = alloca i16***, align 8
  %cur_mv = alloca i32*, align 8
  store i32 %list, i32* %list.addr, align 4
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %pic_x, i32* %pic_x.addr, align 4
  store i32 %bs_x, i32* %bs_x.addr, align 4
  store i32 %bs_y, i32* %bs_y.addr, align 4
  store i32 %by, i32* %by.addr, align 4
  store i32* %prednum, i32** %prednum.addr, align 8
  store i32 %img_width, i32* %img_width.addr, align 4
  store %struct.MEPatternNode* %predictor, %struct.MEPatternNode** %predictor.addr, align 8
  %0 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16, i16* %ref.addr, align 2
  %idxprom1 = sext i16 %1 to i64
  %2 = load i32, i32* %list.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %3 = load i16******, i16******* @EPZSMotion, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %3, i64 %idxprom2
  %4 = load i16*****, i16****** %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds i16****, i16***** %4, i64 %idxprom1
  %5 = load i16****, i16***** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i16***, i16**** %5, i64 %idxprom
  %6 = load i16***, i16**** %arrayidx4, align 8
  store i16*** %6, i16**** %mv, align 8
  %7 = load i32*, i32** %prednum.addr, align 8
  %8 = load i32, i32* %7, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %9, i32 0, i32 1
  %10 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx6 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %10, i64 %idxprom5
  %mv7 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %mv7, i32 0, i32 0
  store i32* %arraydecay, i32** %cur_mv, align 8
  %11 = load i32, i32* %pic_x.addr, align 4
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %pic_x.addr, align 4
  %13 = load i32, i32* %bs_x.addr, align 4
  %sub = sub nsw i32 %12, %13
  %idxprom8 = sext i32 %sub to i64
  %14 = load i32, i32* %by.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i16***, i16**** %mv, align 8
  %arrayidx10 = getelementptr inbounds i16**, i16*** %15, i64 %idxprom9
  %16 = load i16**, i16*** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i16*, i16** %16, i64 %idxprom8
  %17 = load i16*, i16** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %17, i64 0
  %18 = load i16, i16* %arrayidx12, align 2
  %conv = sext i16 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ]
  %19 = load i32*, i32** %cur_mv, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %cond, i32* %arrayidx13, align 4
  %20 = load i32, i32* %pic_x.addr, align 4
  %cmp14 = icmp sgt i32 %20, 0
  br i1 %cmp14, label %cond.true.16, label %cond.false.24

cond.true.16:                                     ; preds = %cond.end
  %21 = load i32, i32* %pic_x.addr, align 4
  %22 = load i32, i32* %bs_x.addr, align 4
  %sub17 = sub nsw i32 %21, %22
  %idxprom18 = sext i32 %sub17 to i64
  %23 = load i32, i32* %by.addr, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load i16***, i16**** %mv, align 8
  %arrayidx20 = getelementptr inbounds i16**, i16*** %24, i64 %idxprom19
  %25 = load i16**, i16*** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %25, i64 %idxprom18
  %26 = load i16*, i16** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %26, i64 1
  %27 = load i16, i16* %arrayidx22, align 2
  %conv23 = sext i16 %27 to i32
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.16
  %cond26 = phi i32 [ %conv23, %cond.true.16 ], [ 0, %cond.false.24 ]
  %28 = load i32*, i32** %cur_mv, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %cond26, i32* %arrayidx27, align 4
  %29 = load i32*, i32** %cur_mv, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx28, align 4
  %31 = load i32*, i32** %cur_mv, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx29, align 4
  %or = or i32 %30, %32
  %cmp30 = icmp ne i32 %or, 0
  %conv31 = zext i1 %cmp30 to i32
  %33 = load i32*, i32** %prednum.addr, align 8
  %34 = load i32, i32* %33, align 4
  %add = add nsw i32 %34, %conv31
  store i32 %add, i32* %33, align 4
  %35 = load i32*, i32** %prednum.addr, align 8
  %36 = load i32, i32* %35, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point33 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %37, i32 0, i32 1
  %38 = load %struct.SPoint*, %struct.SPoint** %point33, align 8
  %arrayidx34 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %38, i64 %idxprom32
  %mv35 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx34, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [2 x i32], [2 x i32]* %mv35, i32 0, i32 0
  store i32* %arraydecay36, i32** %cur_mv, align 8
  %39 = load i32, i32* %by.addr, align 4
  %cmp37 = icmp sgt i32 %39, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.47

cond.true.39:                                     ; preds = %cond.end.25
  %40 = load i32, i32* %pic_x.addr, align 4
  %idxprom40 = sext i32 %40 to i64
  %41 = load i32, i32* %by.addr, align 4
  %42 = load i32, i32* %bs_y.addr, align 4
  %sub41 = sub nsw i32 %41, %42
  %idxprom42 = sext i32 %sub41 to i64
  %43 = load i16***, i16**** %mv, align 8
  %arrayidx43 = getelementptr inbounds i16**, i16*** %43, i64 %idxprom42
  %44 = load i16**, i16*** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i16*, i16** %44, i64 %idxprom40
  %45 = load i16*, i16** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %45, i64 0
  %46 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %46 to i32
  br label %cond.end.55

cond.false.47:                                    ; preds = %cond.end.25
  %47 = load i32, i32* %pic_x.addr, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load i32, i32* %bs_y.addr, align 4
  %sub49 = sub nsw i32 4, %48
  %idxprom50 = sext i32 %sub49 to i64
  %49 = load i16***, i16**** %mv, align 8
  %arrayidx51 = getelementptr inbounds i16**, i16*** %49, i64 %idxprom50
  %50 = load i16**, i16*** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %50, i64 %idxprom48
  %51 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %51, i64 0
  %52 = load i16, i16* %arrayidx53, align 2
  %conv54 = sext i16 %52 to i32
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.47, %cond.true.39
  %cond56 = phi i32 [ %conv46, %cond.true.39 ], [ %conv54, %cond.false.47 ]
  %53 = load i32*, i32** %cur_mv, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %cond56, i32* %arrayidx57, align 4
  %54 = load i32, i32* %by.addr, align 4
  %cmp58 = icmp sgt i32 %54, 0
  br i1 %cmp58, label %cond.true.60, label %cond.false.68

cond.true.60:                                     ; preds = %cond.end.55
  %55 = load i32, i32* %pic_x.addr, align 4
  %idxprom61 = sext i32 %55 to i64
  %56 = load i32, i32* %by.addr, align 4
  %57 = load i32, i32* %bs_y.addr, align 4
  %sub62 = sub nsw i32 %56, %57
  %idxprom63 = sext i32 %sub62 to i64
  %58 = load i16***, i16**** %mv, align 8
  %arrayidx64 = getelementptr inbounds i16**, i16*** %58, i64 %idxprom63
  %59 = load i16**, i16*** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i16*, i16** %59, i64 %idxprom61
  %60 = load i16*, i16** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i16, i16* %60, i64 1
  %61 = load i16, i16* %arrayidx66, align 2
  %conv67 = sext i16 %61 to i32
  br label %cond.end.76

cond.false.68:                                    ; preds = %cond.end.55
  %62 = load i32, i32* %pic_x.addr, align 4
  %idxprom69 = sext i32 %62 to i64
  %63 = load i32, i32* %bs_y.addr, align 4
  %sub70 = sub nsw i32 4, %63
  %idxprom71 = sext i32 %sub70 to i64
  %64 = load i16***, i16**** %mv, align 8
  %arrayidx72 = getelementptr inbounds i16**, i16*** %64, i64 %idxprom71
  %65 = load i16**, i16*** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds i16*, i16** %65, i64 %idxprom69
  %66 = load i16*, i16** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %66, i64 1
  %67 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %67 to i32
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.68, %cond.true.60
  %cond77 = phi i32 [ %conv67, %cond.true.60 ], [ %conv75, %cond.false.68 ]
  %68 = load i32*, i32** %cur_mv, align 8
  %arrayidx78 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %cond77, i32* %arrayidx78, align 4
  %69 = load i32*, i32** %cur_mv, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx79, align 4
  %71 = load i32*, i32** %cur_mv, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %71, i64 1
  %72 = load i32, i32* %arrayidx80, align 4
  %or81 = or i32 %70, %72
  %cmp82 = icmp ne i32 %or81, 0
  %conv83 = zext i1 %cmp82 to i32
  %73 = load i32*, i32** %prednum.addr, align 8
  %74 = load i32, i32* %73, align 4
  %add84 = add nsw i32 %74, %conv83
  store i32 %add84, i32* %73, align 4
  %75 = load i32*, i32** %prednum.addr, align 8
  %76 = load i32, i32* %75, align 4
  %idxprom85 = sext i32 %76 to i64
  %77 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point86 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %77, i32 0, i32 1
  %78 = load %struct.SPoint*, %struct.SPoint** %point86, align 8
  %arrayidx87 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %78, i64 %idxprom85
  %mv88 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx87, i32 0, i32 0
  %arraydecay89 = getelementptr inbounds [2 x i32], [2 x i32]* %mv88, i32 0, i32 0
  store i32* %arraydecay89, i32** %cur_mv, align 8
  %79 = load i32, i32* %pic_x.addr, align 4
  %80 = load i32, i32* %bs_x.addr, align 4
  %add90 = add nsw i32 %79, %80
  %81 = load i32, i32* %img_width.addr, align 4
  %cmp91 = icmp slt i32 %add90, %81
  br i1 %cmp91, label %cond.true.93, label %cond.false.116

cond.true.93:                                     ; preds = %cond.end.76
  %82 = load i32, i32* %by.addr, align 4
  %cmp94 = icmp sgt i32 %82, 0
  br i1 %cmp94, label %cond.true.96, label %cond.false.105

cond.true.96:                                     ; preds = %cond.true.93
  %83 = load i32, i32* %pic_x.addr, align 4
  %84 = load i32, i32* %bs_x.addr, align 4
  %add97 = add nsw i32 %83, %84
  %idxprom98 = sext i32 %add97 to i64
  %85 = load i32, i32* %by.addr, align 4
  %86 = load i32, i32* %bs_y.addr, align 4
  %sub99 = sub nsw i32 %85, %86
  %idxprom100 = sext i32 %sub99 to i64
  %87 = load i16***, i16**** %mv, align 8
  %arrayidx101 = getelementptr inbounds i16**, i16*** %87, i64 %idxprom100
  %88 = load i16**, i16*** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i16*, i16** %88, i64 %idxprom98
  %89 = load i16*, i16** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %89, i64 0
  %90 = load i16, i16* %arrayidx103, align 2
  %conv104 = sext i16 %90 to i32
  br label %cond.end.114

cond.false.105:                                   ; preds = %cond.true.93
  %91 = load i32, i32* %pic_x.addr, align 4
  %92 = load i32, i32* %bs_x.addr, align 4
  %add106 = add nsw i32 %91, %92
  %idxprom107 = sext i32 %add106 to i64
  %93 = load i32, i32* %bs_y.addr, align 4
  %sub108 = sub nsw i32 4, %93
  %idxprom109 = sext i32 %sub108 to i64
  %94 = load i16***, i16**** %mv, align 8
  %arrayidx110 = getelementptr inbounds i16**, i16*** %94, i64 %idxprom109
  %95 = load i16**, i16*** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i16*, i16** %95, i64 %idxprom107
  %96 = load i16*, i16** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %96, i64 0
  %97 = load i16, i16* %arrayidx112, align 2
  %conv113 = sext i16 %97 to i32
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.105, %cond.true.96
  %cond115 = phi i32 [ %conv104, %cond.true.96 ], [ %conv113, %cond.false.105 ]
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.76
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.end.114
  %cond118 = phi i32 [ %cond115, %cond.end.114 ], [ 0, %cond.false.116 ]
  %98 = load i32*, i32** %cur_mv, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %cond118, i32* %arrayidx119, align 4
  %99 = load i32, i32* %pic_x.addr, align 4
  %100 = load i32, i32* %bs_x.addr, align 4
  %add120 = add nsw i32 %99, %100
  %101 = load i32, i32* %img_width.addr, align 4
  %cmp121 = icmp slt i32 %add120, %101
  br i1 %cmp121, label %cond.true.123, label %cond.false.146

cond.true.123:                                    ; preds = %cond.end.117
  %102 = load i32, i32* %by.addr, align 4
  %cmp124 = icmp sgt i32 %102, 0
  br i1 %cmp124, label %cond.true.126, label %cond.false.135

cond.true.126:                                    ; preds = %cond.true.123
  %103 = load i32, i32* %pic_x.addr, align 4
  %104 = load i32, i32* %bs_x.addr, align 4
  %add127 = add nsw i32 %103, %104
  %idxprom128 = sext i32 %add127 to i64
  %105 = load i32, i32* %by.addr, align 4
  %106 = load i32, i32* %bs_y.addr, align 4
  %sub129 = sub nsw i32 %105, %106
  %idxprom130 = sext i32 %sub129 to i64
  %107 = load i16***, i16**** %mv, align 8
  %arrayidx131 = getelementptr inbounds i16**, i16*** %107, i64 %idxprom130
  %108 = load i16**, i16*** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i16*, i16** %108, i64 %idxprom128
  %109 = load i16*, i16** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i16, i16* %109, i64 1
  %110 = load i16, i16* %arrayidx133, align 2
  %conv134 = sext i16 %110 to i32
  br label %cond.end.144

cond.false.135:                                   ; preds = %cond.true.123
  %111 = load i32, i32* %pic_x.addr, align 4
  %112 = load i32, i32* %bs_x.addr, align 4
  %add136 = add nsw i32 %111, %112
  %idxprom137 = sext i32 %add136 to i64
  %113 = load i32, i32* %bs_y.addr, align 4
  %sub138 = sub nsw i32 4, %113
  %idxprom139 = sext i32 %sub138 to i64
  %114 = load i16***, i16**** %mv, align 8
  %arrayidx140 = getelementptr inbounds i16**, i16*** %114, i64 %idxprom139
  %115 = load i16**, i16*** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i16*, i16** %115, i64 %idxprom137
  %116 = load i16*, i16** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i16, i16* %116, i64 1
  %117 = load i16, i16* %arrayidx142, align 2
  %conv143 = sext i16 %117 to i32
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.135, %cond.true.126
  %cond145 = phi i32 [ %conv134, %cond.true.126 ], [ %conv143, %cond.false.135 ]
  br label %cond.end.147

cond.false.146:                                   ; preds = %cond.end.117
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.146, %cond.end.144
  %cond148 = phi i32 [ %cond145, %cond.end.144 ], [ 0, %cond.false.146 ]
  %118 = load i32*, i32** %cur_mv, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %cond148, i32* %arrayidx149, align 4
  %119 = load i32*, i32** %cur_mv, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %119, i64 0
  %120 = load i32, i32* %arrayidx150, align 4
  %121 = load i32*, i32** %cur_mv, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %121, i64 1
  %122 = load i32, i32* %arrayidx151, align 4
  %or152 = or i32 %120, %122
  %cmp153 = icmp ne i32 %or152, 0
  %conv154 = zext i1 %cmp153 to i32
  %123 = load i32*, i32** %prednum.addr, align 8
  %124 = load i32, i32* %123, align 4
  %add155 = add nsw i32 %124, %conv154
  store i32 %add155, i32* %123, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EPZSTemporalPredictors(i32 %list, i32 %list_offset, i16 signext %ref, i32 %o_block_x, i32 %o_block_y, %struct.MEPatternNode* %predictor, i32* %prednum, i32 %block_available_left, i32 %block_available_up, i32 %block_available_right, i32 %block_available_below, i32 %blockshape_x, i32 %blockshape_y, i32 %stopCriterion, i32 %min_mcost) #0 {
entry:
  %list.addr = alloca i32, align 4
  %list_offset.addr = alloca i32, align 4
  %ref.addr = alloca i16, align 2
  %o_block_x.addr = alloca i32, align 4
  %o_block_y.addr = alloca i32, align 4
  %predictor.addr = alloca %struct.MEPatternNode*, align 8
  %prednum.addr = alloca i32*, align 8
  %block_available_left.addr = alloca i32, align 4
  %block_available_up.addr = alloca i32, align 4
  %block_available_right.addr = alloca i32, align 4
  %block_available_below.addr = alloca i32, align 4
  %blockshape_x.addr = alloca i32, align 4
  %blockshape_y.addr = alloca i32, align 4
  %stopCriterion.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %mvScale = alloca i32, align 4
  %col_mv = alloca i16***, align 8
  %temp_shift_mv = alloca i16, align 2
  %cur_mv = alloca i32*, align 8
  store i32 %list, i32* %list.addr, align 4
  store i32 %list_offset, i32* %list_offset.addr, align 4
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %o_block_x, i32* %o_block_x.addr, align 4
  store i32 %o_block_y, i32* %o_block_y.addr, align 4
  store %struct.MEPatternNode* %predictor, %struct.MEPatternNode** %predictor.addr, align 8
  store i32* %prednum, i32** %prednum.addr, align 8
  store i32 %block_available_left, i32* %block_available_left.addr, align 4
  store i32 %block_available_up, i32* %block_available_up.addr, align 4
  store i32 %block_available_right, i32* %block_available_right.addr, align 4
  store i32 %block_available_below, i32* %block_available_below.addr, align 4
  store i32 %blockshape_x, i32* %blockshape_x.addr, align 4
  store i32 %blockshape_y, i32* %blockshape_y.addr, align 4
  store i32 %stopCriterion, i32* %stopCriterion.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  %0 = load i16, i16* %ref.addr, align 2
  %idxprom = sext i16 %0 to i64
  %1 = load i32, i32* %list.addr, align 4
  %2 = load i32, i32* %list_offset.addr, align 4
  %add = add nsw i32 %1, %2
  %idxprom1 = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx2, i32 0, i64 0
  %3 = load i32, i32* %arrayidx3, align 4
  store i32 %3, i32* %mvScale, align 4
  %4 = load i32, i32* %list_offset.addr, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %list.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** @EPZSCo_located, align 8
  %mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %6, i32 0, i32 3
  %7 = load i16****, i16***** %mv, align 8
  %arrayidx5 = getelementptr inbounds i16***, i16**** %7, i64 %idxprom4
  %8 = load i16***, i16**** %arrayidx5, align 8
  br label %cond.end.13

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %list_offset.addr, align 4
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.false
  %10 = load i32, i32* %list.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %11 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** @EPZSCo_located, align 8
  %top_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %11, i32 0, i32 4
  %12 = load i16****, i16***** %top_mv, align 8
  %arrayidx9 = getelementptr inbounds i16***, i16**** %12, i64 %idxprom8
  %13 = load i16***, i16**** %arrayidx9, align 8
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %14 = load i32, i32* %list.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.EPZSColocParams*, %struct.EPZSColocParams** @EPZSCo_located, align 8
  %bottom_mv = getelementptr inbounds %struct.EPZSColocParams, %struct.EPZSColocParams* %15, i32 0, i32 5
  %16 = load i16****, i16***** %bottom_mv, align 8
  %arrayidx12 = getelementptr inbounds i16***, i16**** %16, i64 %idxprom11
  %17 = load i16***, i16**** %arrayidx12, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.7
  %cond = phi i16*** [ %13, %cond.true.7 ], [ %17, %cond.false.10 ]
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.end, %cond.true
  %cond14 = phi i16*** [ %8, %cond.true ], [ %cond, %cond.end ]
  store i16*** %cond14, i16**** %col_mv, align 8
  %18 = load i32, i32* @mv_rescale, align 4
  %add15 = add nsw i32 8, %18
  %conv = trunc i32 %add15 to i16
  store i16 %conv, i16* %temp_shift_mv, align 2
  %19 = load i32*, i32** %prednum.addr, align 8
  %20 = load i32, i32* %19, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %21, i32 0, i32 1
  %22 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx17 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %22, i64 %idxprom16
  %mv18 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx17, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %mv18, i32 0, i32 0
  store i32* %arraydecay, i32** %cur_mv, align 8
  %23 = load i32, i32* %mvScale, align 4
  %24 = load i32, i32* %o_block_x.addr, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load i32, i32* %o_block_y.addr, align 4
  %idxprom20 = sext i32 %25 to i64
  %26 = load i16***, i16**** %col_mv, align 8
  %arrayidx21 = getelementptr inbounds i16**, i16*** %26, i64 %idxprom20
  %27 = load i16**, i16*** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16*, i16** %27, i64 %idxprom19
  %28 = load i16*, i16** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %28, i64 0
  %29 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %29 to i32
  %mul = mul nsw i32 %23, %conv24
  %30 = load i16, i16* %temp_shift_mv, align 2
  %conv25 = sext i16 %30 to i32
  %call = call i32 @rshift_rnd_sf(i32 %mul, i32 %conv25)
  %31 = load i32*, i32** %cur_mv, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %call, i32* %arrayidx26, align 4
  %32 = load i32, i32* %mvScale, align 4
  %33 = load i32, i32* %o_block_x.addr, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load i32, i32* %o_block_y.addr, align 4
  %idxprom28 = sext i32 %34 to i64
  %35 = load i16***, i16**** %col_mv, align 8
  %arrayidx29 = getelementptr inbounds i16**, i16*** %35, i64 %idxprom28
  %36 = load i16**, i16*** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i16*, i16** %36, i64 %idxprom27
  %37 = load i16*, i16** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %37, i64 1
  %38 = load i16, i16* %arrayidx31, align 2
  %conv32 = sext i16 %38 to i32
  %mul33 = mul nsw i32 %32, %conv32
  %39 = load i16, i16* %temp_shift_mv, align 2
  %conv34 = sext i16 %39 to i32
  %call35 = call i32 @rshift_rnd_sf(i32 %mul33, i32 %conv34)
  %40 = load i32*, i32** %cur_mv, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %call35, i32* %arrayidx36, align 4
  %41 = load i32*, i32** %cur_mv, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx37, align 4
  %43 = load i32*, i32** %cur_mv, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %43, i64 1
  %44 = load i32, i32* %arrayidx38, align 4
  %or = or i32 %42, %44
  %cmp39 = icmp ne i32 %or, 0
  %conv40 = zext i1 %cmp39 to i32
  %45 = load i32*, i32** %prednum.addr, align 8
  %46 = load i32, i32* %45, align 4
  %add41 = add nsw i32 %46, %conv40
  store i32 %add41, i32* %45, align 4
  %47 = load i32, i32* %min_mcost.addr, align 4
  %48 = load i32, i32* %stopCriterion.addr, align 4
  %cmp42 = icmp sgt i32 %47, %48
  br i1 %cmp42, label %land.lhs.true, label %if.end.340

land.lhs.true:                                    ; preds = %cond.end.13
  %49 = load i16, i16* %ref.addr, align 2
  %conv44 = sext i16 %49 to i32
  %cmp45 = icmp slt i32 %conv44, 2
  br i1 %cmp45, label %if.then, label %if.end.340

if.then:                                          ; preds = %land.lhs.true
  %50 = load i32, i32* %block_available_left.addr, align 4
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.then.47, label %if.end.155

if.then.47:                                       ; preds = %if.then
  %51 = load i32*, i32** %prednum.addr, align 8
  %52 = load i32, i32* %51, align 4
  %idxprom48 = sext i32 %52 to i64
  %53 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point49 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %53, i32 0, i32 1
  %54 = load %struct.SPoint*, %struct.SPoint** %point49, align 8
  %arrayidx50 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %54, i64 %idxprom48
  %mv51 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx50, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [2 x i32], [2 x i32]* %mv51, i32 0, i32 0
  store i32* %arraydecay52, i32** %cur_mv, align 8
  %55 = load i32, i32* %mvScale, align 4
  %56 = load i32, i32* %o_block_x.addr, align 4
  %sub = sub nsw i32 %56, 1
  %idxprom53 = sext i32 %sub to i64
  %57 = load i32, i32* %o_block_y.addr, align 4
  %idxprom54 = sext i32 %57 to i64
  %58 = load i16***, i16**** %col_mv, align 8
  %arrayidx55 = getelementptr inbounds i16**, i16*** %58, i64 %idxprom54
  %59 = load i16**, i16*** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16*, i16** %59, i64 %idxprom53
  %60 = load i16*, i16** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %60, i64 0
  %61 = load i16, i16* %arrayidx57, align 2
  %conv58 = sext i16 %61 to i32
  %mul59 = mul nsw i32 %55, %conv58
  %62 = load i16, i16* %temp_shift_mv, align 2
  %conv60 = sext i16 %62 to i32
  %call61 = call i32 @rshift_rnd_sf(i32 %mul59, i32 %conv60)
  %63 = load i32*, i32** %cur_mv, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %call61, i32* %arrayidx62, align 4
  %64 = load i32, i32* %mvScale, align 4
  %65 = load i32, i32* %o_block_x.addr, align 4
  %sub63 = sub nsw i32 %65, 1
  %idxprom64 = sext i32 %sub63 to i64
  %66 = load i32, i32* %o_block_y.addr, align 4
  %idxprom65 = sext i32 %66 to i64
  %67 = load i16***, i16**** %col_mv, align 8
  %arrayidx66 = getelementptr inbounds i16**, i16*** %67, i64 %idxprom65
  %68 = load i16**, i16*** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i16*, i16** %68, i64 %idxprom64
  %69 = load i16*, i16** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %69, i64 1
  %70 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %70 to i32
  %mul70 = mul nsw i32 %64, %conv69
  %71 = load i16, i16* %temp_shift_mv, align 2
  %conv71 = sext i16 %71 to i32
  %call72 = call i32 @rshift_rnd_sf(i32 %mul70, i32 %conv71)
  %72 = load i32*, i32** %cur_mv, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %call72, i32* %arrayidx73, align 4
  %73 = load i32*, i32** %cur_mv, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %73, i64 0
  %74 = load i32, i32* %arrayidx74, align 4
  %75 = load i32*, i32** %cur_mv, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %75, i64 1
  %76 = load i32, i32* %arrayidx75, align 4
  %or76 = or i32 %74, %76
  %cmp77 = icmp ne i32 %or76, 0
  %conv78 = zext i1 %cmp77 to i32
  %77 = load i32*, i32** %prednum.addr, align 8
  %78 = load i32, i32* %77, align 4
  %add79 = add nsw i32 %78, %conv78
  store i32 %add79, i32* %77, align 4
  %79 = load i32, i32* %block_available_up.addr, align 4
  %tobool80 = icmp ne i32 %79, 0
  br i1 %tobool80, label %if.then.81, label %if.end

if.then.81:                                       ; preds = %if.then.47
  %80 = load i32*, i32** %prednum.addr, align 8
  %81 = load i32, i32* %80, align 4
  %idxprom82 = sext i32 %81 to i64
  %82 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point83 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %82, i32 0, i32 1
  %83 = load %struct.SPoint*, %struct.SPoint** %point83, align 8
  %arrayidx84 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %83, i64 %idxprom82
  %mv85 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx84, i32 0, i32 0
  %arraydecay86 = getelementptr inbounds [2 x i32], [2 x i32]* %mv85, i32 0, i32 0
  store i32* %arraydecay86, i32** %cur_mv, align 8
  %84 = load i32, i32* %mvScale, align 4
  %85 = load i32, i32* %o_block_x.addr, align 4
  %sub87 = sub nsw i32 %85, 1
  %idxprom88 = sext i32 %sub87 to i64
  %86 = load i32, i32* %o_block_y.addr, align 4
  %sub89 = sub nsw i32 %86, 1
  %idxprom90 = sext i32 %sub89 to i64
  %87 = load i16***, i16**** %col_mv, align 8
  %arrayidx91 = getelementptr inbounds i16**, i16*** %87, i64 %idxprom90
  %88 = load i16**, i16*** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %88, i64 %idxprom88
  %89 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %89, i64 0
  %90 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %90 to i32
  %mul95 = mul nsw i32 %84, %conv94
  %91 = load i16, i16* %temp_shift_mv, align 2
  %conv96 = sext i16 %91 to i32
  %call97 = call i32 @rshift_rnd_sf(i32 %mul95, i32 %conv96)
  %92 = load i32*, i32** %cur_mv, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %call97, i32* %arrayidx98, align 4
  %93 = load i32, i32* %mvScale, align 4
  %94 = load i32, i32* %o_block_x.addr, align 4
  %sub99 = sub nsw i32 %94, 1
  %idxprom100 = sext i32 %sub99 to i64
  %95 = load i32, i32* %o_block_y.addr, align 4
  %sub101 = sub nsw i32 %95, 1
  %idxprom102 = sext i32 %sub101 to i64
  %96 = load i16***, i16**** %col_mv, align 8
  %arrayidx103 = getelementptr inbounds i16**, i16*** %96, i64 %idxprom102
  %97 = load i16**, i16*** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16*, i16** %97, i64 %idxprom100
  %98 = load i16*, i16** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %98, i64 1
  %99 = load i16, i16* %arrayidx105, align 2
  %conv106 = sext i16 %99 to i32
  %mul107 = mul nsw i32 %93, %conv106
  %100 = load i16, i16* %temp_shift_mv, align 2
  %conv108 = sext i16 %100 to i32
  %call109 = call i32 @rshift_rnd_sf(i32 %mul107, i32 %conv108)
  %101 = load i32*, i32** %cur_mv, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %call109, i32* %arrayidx110, align 4
  %102 = load i32*, i32** %cur_mv, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %102, i64 0
  %103 = load i32, i32* %arrayidx111, align 4
  %104 = load i32*, i32** %cur_mv, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %104, i64 1
  %105 = load i32, i32* %arrayidx112, align 4
  %or113 = or i32 %103, %105
  %cmp114 = icmp ne i32 %or113, 0
  %conv115 = zext i1 %cmp114 to i32
  %106 = load i32*, i32** %prednum.addr, align 8
  %107 = load i32, i32* %106, align 4
  %add116 = add nsw i32 %107, %conv115
  store i32 %add116, i32* %106, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.81, %if.then.47
  %108 = load i32, i32* %block_available_below.addr, align 4
  %tobool117 = icmp ne i32 %108, 0
  br i1 %tobool117, label %if.then.118, label %if.end.154

if.then.118:                                      ; preds = %if.end
  %109 = load i32*, i32** %prednum.addr, align 8
  %110 = load i32, i32* %109, align 4
  %idxprom119 = sext i32 %110 to i64
  %111 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point120 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %111, i32 0, i32 1
  %112 = load %struct.SPoint*, %struct.SPoint** %point120, align 8
  %arrayidx121 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %112, i64 %idxprom119
  %mv122 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx121, i32 0, i32 0
  %arraydecay123 = getelementptr inbounds [2 x i32], [2 x i32]* %mv122, i32 0, i32 0
  store i32* %arraydecay123, i32** %cur_mv, align 8
  %113 = load i32, i32* %mvScale, align 4
  %114 = load i32, i32* %o_block_x.addr, align 4
  %sub124 = sub nsw i32 %114, 1
  %idxprom125 = sext i32 %sub124 to i64
  %115 = load i32, i32* %o_block_y.addr, align 4
  %116 = load i32, i32* %blockshape_y.addr, align 4
  %add126 = add nsw i32 %115, %116
  %idxprom127 = sext i32 %add126 to i64
  %117 = load i16***, i16**** %col_mv, align 8
  %arrayidx128 = getelementptr inbounds i16**, i16*** %117, i64 %idxprom127
  %118 = load i16**, i16*** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i16*, i16** %118, i64 %idxprom125
  %119 = load i16*, i16** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i16, i16* %119, i64 0
  %120 = load i16, i16* %arrayidx130, align 2
  %conv131 = sext i16 %120 to i32
  %mul132 = mul nsw i32 %113, %conv131
  %121 = load i16, i16* %temp_shift_mv, align 2
  %conv133 = sext i16 %121 to i32
  %call134 = call i32 @rshift_rnd_sf(i32 %mul132, i32 %conv133)
  %122 = load i32*, i32** %cur_mv, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %call134, i32* %arrayidx135, align 4
  %123 = load i32, i32* %mvScale, align 4
  %124 = load i32, i32* %o_block_x.addr, align 4
  %sub136 = sub nsw i32 %124, 1
  %idxprom137 = sext i32 %sub136 to i64
  %125 = load i32, i32* %o_block_y.addr, align 4
  %126 = load i32, i32* %blockshape_y.addr, align 4
  %add138 = add nsw i32 %125, %126
  %idxprom139 = sext i32 %add138 to i64
  %127 = load i16***, i16**** %col_mv, align 8
  %arrayidx140 = getelementptr inbounds i16**, i16*** %127, i64 %idxprom139
  %128 = load i16**, i16*** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i16*, i16** %128, i64 %idxprom137
  %129 = load i16*, i16** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i16, i16* %129, i64 1
  %130 = load i16, i16* %arrayidx142, align 2
  %conv143 = sext i16 %130 to i32
  %mul144 = mul nsw i32 %123, %conv143
  %131 = load i16, i16* %temp_shift_mv, align 2
  %conv145 = sext i16 %131 to i32
  %call146 = call i32 @rshift_rnd_sf(i32 %mul144, i32 %conv145)
  %132 = load i32*, i32** %cur_mv, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %call146, i32* %arrayidx147, align 4
  %133 = load i32*, i32** %cur_mv, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %133, i64 0
  %134 = load i32, i32* %arrayidx148, align 4
  %135 = load i32*, i32** %cur_mv, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %135, i64 1
  %136 = load i32, i32* %arrayidx149, align 4
  %or150 = or i32 %134, %136
  %cmp151 = icmp ne i32 %or150, 0
  %conv152 = zext i1 %cmp151 to i32
  %137 = load i32*, i32** %prednum.addr, align 8
  %138 = load i32, i32* %137, align 4
  %add153 = add nsw i32 %138, %conv152
  store i32 %add153, i32* %137, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.118, %if.end
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.then
  %139 = load i32, i32* %block_available_up.addr, align 4
  %tobool156 = icmp ne i32 %139, 0
  br i1 %tobool156, label %if.then.157, label %if.end.191

if.then.157:                                      ; preds = %if.end.155
  %140 = load i32*, i32** %prednum.addr, align 8
  %141 = load i32, i32* %140, align 4
  %idxprom158 = sext i32 %141 to i64
  %142 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point159 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %142, i32 0, i32 1
  %143 = load %struct.SPoint*, %struct.SPoint** %point159, align 8
  %arrayidx160 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %143, i64 %idxprom158
  %mv161 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx160, i32 0, i32 0
  %arraydecay162 = getelementptr inbounds [2 x i32], [2 x i32]* %mv161, i32 0, i32 0
  store i32* %arraydecay162, i32** %cur_mv, align 8
  %144 = load i32, i32* %mvScale, align 4
  %145 = load i32, i32* %o_block_x.addr, align 4
  %idxprom163 = sext i32 %145 to i64
  %146 = load i32, i32* %o_block_y.addr, align 4
  %sub164 = sub nsw i32 %146, 1
  %idxprom165 = sext i32 %sub164 to i64
  %147 = load i16***, i16**** %col_mv, align 8
  %arrayidx166 = getelementptr inbounds i16**, i16*** %147, i64 %idxprom165
  %148 = load i16**, i16*** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i16*, i16** %148, i64 %idxprom163
  %149 = load i16*, i16** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %149, i64 0
  %150 = load i16, i16* %arrayidx168, align 2
  %conv169 = sext i16 %150 to i32
  %mul170 = mul nsw i32 %144, %conv169
  %151 = load i16, i16* %temp_shift_mv, align 2
  %conv171 = sext i16 %151 to i32
  %call172 = call i32 @rshift_rnd_sf(i32 %mul170, i32 %conv171)
  %152 = load i32*, i32** %cur_mv, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %call172, i32* %arrayidx173, align 4
  %153 = load i32, i32* %mvScale, align 4
  %154 = load i32, i32* %o_block_x.addr, align 4
  %idxprom174 = sext i32 %154 to i64
  %155 = load i32, i32* %o_block_y.addr, align 4
  %sub175 = sub nsw i32 %155, 1
  %idxprom176 = sext i32 %sub175 to i64
  %156 = load i16***, i16**** %col_mv, align 8
  %arrayidx177 = getelementptr inbounds i16**, i16*** %156, i64 %idxprom176
  %157 = load i16**, i16*** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i16*, i16** %157, i64 %idxprom174
  %158 = load i16*, i16** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i16, i16* %158, i64 1
  %159 = load i16, i16* %arrayidx179, align 2
  %conv180 = sext i16 %159 to i32
  %mul181 = mul nsw i32 %153, %conv180
  %160 = load i16, i16* %temp_shift_mv, align 2
  %conv182 = sext i16 %160 to i32
  %call183 = call i32 @rshift_rnd_sf(i32 %mul181, i32 %conv182)
  %161 = load i32*, i32** %cur_mv, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %call183, i32* %arrayidx184, align 4
  %162 = load i32*, i32** %cur_mv, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %162, i64 0
  %163 = load i32, i32* %arrayidx185, align 4
  %164 = load i32*, i32** %cur_mv, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %164, i64 1
  %165 = load i32, i32* %arrayidx186, align 4
  %or187 = or i32 %163, %165
  %cmp188 = icmp ne i32 %or187, 0
  %conv189 = zext i1 %cmp188 to i32
  %166 = load i32*, i32** %prednum.addr, align 8
  %167 = load i32, i32* %166, align 4
  %add190 = add nsw i32 %167, %conv189
  store i32 %add190, i32* %166, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.157, %if.end.155
  %168 = load i32, i32* %block_available_right.addr, align 4
  %tobool192 = icmp ne i32 %168, 0
  br i1 %tobool192, label %if.then.193, label %if.end.303

if.then.193:                                      ; preds = %if.end.191
  %169 = load i32*, i32** %prednum.addr, align 8
  %170 = load i32, i32* %169, align 4
  %idxprom194 = sext i32 %170 to i64
  %171 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point195 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %171, i32 0, i32 1
  %172 = load %struct.SPoint*, %struct.SPoint** %point195, align 8
  %arrayidx196 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %172, i64 %idxprom194
  %mv197 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx196, i32 0, i32 0
  %arraydecay198 = getelementptr inbounds [2 x i32], [2 x i32]* %mv197, i32 0, i32 0
  store i32* %arraydecay198, i32** %cur_mv, align 8
  %173 = load i32, i32* %mvScale, align 4
  %174 = load i32, i32* %o_block_x.addr, align 4
  %175 = load i32, i32* %blockshape_x.addr, align 4
  %add199 = add nsw i32 %174, %175
  %idxprom200 = sext i32 %add199 to i64
  %176 = load i32, i32* %o_block_y.addr, align 4
  %idxprom201 = sext i32 %176 to i64
  %177 = load i16***, i16**** %col_mv, align 8
  %arrayidx202 = getelementptr inbounds i16**, i16*** %177, i64 %idxprom201
  %178 = load i16**, i16*** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds i16*, i16** %178, i64 %idxprom200
  %179 = load i16*, i16** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i16, i16* %179, i64 0
  %180 = load i16, i16* %arrayidx204, align 2
  %conv205 = sext i16 %180 to i32
  %mul206 = mul nsw i32 %173, %conv205
  %181 = load i16, i16* %temp_shift_mv, align 2
  %conv207 = sext i16 %181 to i32
  %call208 = call i32 @rshift_rnd_sf(i32 %mul206, i32 %conv207)
  %182 = load i32*, i32** %cur_mv, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 %call208, i32* %arrayidx209, align 4
  %183 = load i32, i32* %mvScale, align 4
  %184 = load i32, i32* %o_block_x.addr, align 4
  %185 = load i32, i32* %blockshape_x.addr, align 4
  %add210 = add nsw i32 %184, %185
  %idxprom211 = sext i32 %add210 to i64
  %186 = load i32, i32* %o_block_y.addr, align 4
  %idxprom212 = sext i32 %186 to i64
  %187 = load i16***, i16**** %col_mv, align 8
  %arrayidx213 = getelementptr inbounds i16**, i16*** %187, i64 %idxprom212
  %188 = load i16**, i16*** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i16*, i16** %188, i64 %idxprom211
  %189 = load i16*, i16** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i16, i16* %189, i64 1
  %190 = load i16, i16* %arrayidx215, align 2
  %conv216 = sext i16 %190 to i32
  %mul217 = mul nsw i32 %183, %conv216
  %191 = load i16, i16* %temp_shift_mv, align 2
  %conv218 = sext i16 %191 to i32
  %call219 = call i32 @rshift_rnd_sf(i32 %mul217, i32 %conv218)
  %192 = load i32*, i32** %cur_mv, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %192, i64 1
  store i32 %call219, i32* %arrayidx220, align 4
  %193 = load i32*, i32** %cur_mv, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %193, i64 0
  %194 = load i32, i32* %arrayidx221, align 4
  %195 = load i32*, i32** %cur_mv, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %195, i64 1
  %196 = load i32, i32* %arrayidx222, align 4
  %or223 = or i32 %194, %196
  %cmp224 = icmp ne i32 %or223, 0
  %conv225 = zext i1 %cmp224 to i32
  %197 = load i32*, i32** %prednum.addr, align 8
  %198 = load i32, i32* %197, align 4
  %add226 = add nsw i32 %198, %conv225
  store i32 %add226, i32* %197, align 4
  %199 = load i32, i32* %block_available_up.addr, align 4
  %tobool227 = icmp ne i32 %199, 0
  br i1 %tobool227, label %if.then.228, label %if.end.264

if.then.228:                                      ; preds = %if.then.193
  %200 = load i32*, i32** %prednum.addr, align 8
  %201 = load i32, i32* %200, align 4
  %idxprom229 = sext i32 %201 to i64
  %202 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point230 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %202, i32 0, i32 1
  %203 = load %struct.SPoint*, %struct.SPoint** %point230, align 8
  %arrayidx231 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %203, i64 %idxprom229
  %mv232 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx231, i32 0, i32 0
  %arraydecay233 = getelementptr inbounds [2 x i32], [2 x i32]* %mv232, i32 0, i32 0
  store i32* %arraydecay233, i32** %cur_mv, align 8
  %204 = load i32, i32* %mvScale, align 4
  %205 = load i32, i32* %o_block_x.addr, align 4
  %206 = load i32, i32* %blockshape_x.addr, align 4
  %add234 = add nsw i32 %205, %206
  %idxprom235 = sext i32 %add234 to i64
  %207 = load i32, i32* %o_block_y.addr, align 4
  %sub236 = sub nsw i32 %207, 1
  %idxprom237 = sext i32 %sub236 to i64
  %208 = load i16***, i16**** %col_mv, align 8
  %arrayidx238 = getelementptr inbounds i16**, i16*** %208, i64 %idxprom237
  %209 = load i16**, i16*** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i16*, i16** %209, i64 %idxprom235
  %210 = load i16*, i16** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i16, i16* %210, i64 0
  %211 = load i16, i16* %arrayidx240, align 2
  %conv241 = sext i16 %211 to i32
  %mul242 = mul nsw i32 %204, %conv241
  %212 = load i16, i16* %temp_shift_mv, align 2
  %conv243 = sext i16 %212 to i32
  %call244 = call i32 @rshift_rnd_sf(i32 %mul242, i32 %conv243)
  %213 = load i32*, i32** %cur_mv, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %call244, i32* %arrayidx245, align 4
  %214 = load i32, i32* %mvScale, align 4
  %215 = load i32, i32* %o_block_x.addr, align 4
  %216 = load i32, i32* %blockshape_x.addr, align 4
  %add246 = add nsw i32 %215, %216
  %idxprom247 = sext i32 %add246 to i64
  %217 = load i32, i32* %o_block_y.addr, align 4
  %sub248 = sub nsw i32 %217, 1
  %idxprom249 = sext i32 %sub248 to i64
  %218 = load i16***, i16**** %col_mv, align 8
  %arrayidx250 = getelementptr inbounds i16**, i16*** %218, i64 %idxprom249
  %219 = load i16**, i16*** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i16*, i16** %219, i64 %idxprom247
  %220 = load i16*, i16** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i16, i16* %220, i64 1
  %221 = load i16, i16* %arrayidx252, align 2
  %conv253 = sext i16 %221 to i32
  %mul254 = mul nsw i32 %214, %conv253
  %222 = load i16, i16* %temp_shift_mv, align 2
  %conv255 = sext i16 %222 to i32
  %call256 = call i32 @rshift_rnd_sf(i32 %mul254, i32 %conv255)
  %223 = load i32*, i32** %cur_mv, align 8
  %arrayidx257 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 %call256, i32* %arrayidx257, align 4
  %224 = load i32*, i32** %cur_mv, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %224, i64 0
  %225 = load i32, i32* %arrayidx258, align 4
  %226 = load i32*, i32** %cur_mv, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %226, i64 1
  %227 = load i32, i32* %arrayidx259, align 4
  %or260 = or i32 %225, %227
  %cmp261 = icmp ne i32 %or260, 0
  %conv262 = zext i1 %cmp261 to i32
  %228 = load i32*, i32** %prednum.addr, align 8
  %229 = load i32, i32* %228, align 4
  %add263 = add nsw i32 %229, %conv262
  store i32 %add263, i32* %228, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.228, %if.then.193
  %230 = load i32, i32* %block_available_below.addr, align 4
  %tobool265 = icmp ne i32 %230, 0
  br i1 %tobool265, label %if.then.266, label %if.end.302

if.then.266:                                      ; preds = %if.end.264
  %231 = load i32*, i32** %prednum.addr, align 8
  %232 = load i32, i32* %231, align 4
  %idxprom267 = sext i32 %232 to i64
  %233 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point268 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %233, i32 0, i32 1
  %234 = load %struct.SPoint*, %struct.SPoint** %point268, align 8
  %arrayidx269 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %234, i64 %idxprom267
  %mv270 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx269, i32 0, i32 0
  %arraydecay271 = getelementptr inbounds [2 x i32], [2 x i32]* %mv270, i32 0, i32 0
  store i32* %arraydecay271, i32** %cur_mv, align 8
  %235 = load i32, i32* %mvScale, align 4
  %236 = load i32, i32* %o_block_x.addr, align 4
  %237 = load i32, i32* %blockshape_x.addr, align 4
  %add272 = add nsw i32 %236, %237
  %idxprom273 = sext i32 %add272 to i64
  %238 = load i32, i32* %o_block_y.addr, align 4
  %239 = load i32, i32* %blockshape_y.addr, align 4
  %add274 = add nsw i32 %238, %239
  %idxprom275 = sext i32 %add274 to i64
  %240 = load i16***, i16**** %col_mv, align 8
  %arrayidx276 = getelementptr inbounds i16**, i16*** %240, i64 %idxprom275
  %241 = load i16**, i16*** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i16*, i16** %241, i64 %idxprom273
  %242 = load i16*, i16** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds i16, i16* %242, i64 0
  %243 = load i16, i16* %arrayidx278, align 2
  %conv279 = sext i16 %243 to i32
  %mul280 = mul nsw i32 %235, %conv279
  %244 = load i16, i16* %temp_shift_mv, align 2
  %conv281 = sext i16 %244 to i32
  %call282 = call i32 @rshift_rnd_sf(i32 %mul280, i32 %conv281)
  %245 = load i32*, i32** %cur_mv, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 %call282, i32* %arrayidx283, align 4
  %246 = load i32, i32* %mvScale, align 4
  %247 = load i32, i32* %o_block_x.addr, align 4
  %248 = load i32, i32* %blockshape_x.addr, align 4
  %add284 = add nsw i32 %247, %248
  %idxprom285 = sext i32 %add284 to i64
  %249 = load i32, i32* %o_block_y.addr, align 4
  %250 = load i32, i32* %blockshape_y.addr, align 4
  %add286 = add nsw i32 %249, %250
  %idxprom287 = sext i32 %add286 to i64
  %251 = load i16***, i16**** %col_mv, align 8
  %arrayidx288 = getelementptr inbounds i16**, i16*** %251, i64 %idxprom287
  %252 = load i16**, i16*** %arrayidx288, align 8
  %arrayidx289 = getelementptr inbounds i16*, i16** %252, i64 %idxprom285
  %253 = load i16*, i16** %arrayidx289, align 8
  %arrayidx290 = getelementptr inbounds i16, i16* %253, i64 1
  %254 = load i16, i16* %arrayidx290, align 2
  %conv291 = sext i16 %254 to i32
  %mul292 = mul nsw i32 %246, %conv291
  %255 = load i16, i16* %temp_shift_mv, align 2
  %conv293 = sext i16 %255 to i32
  %call294 = call i32 @rshift_rnd_sf(i32 %mul292, i32 %conv293)
  %256 = load i32*, i32** %cur_mv, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %call294, i32* %arrayidx295, align 4
  %257 = load i32*, i32** %cur_mv, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %257, i64 0
  %258 = load i32, i32* %arrayidx296, align 4
  %259 = load i32*, i32** %cur_mv, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %259, i64 1
  %260 = load i32, i32* %arrayidx297, align 4
  %or298 = or i32 %258, %260
  %cmp299 = icmp ne i32 %or298, 0
  %conv300 = zext i1 %cmp299 to i32
  %261 = load i32*, i32** %prednum.addr, align 8
  %262 = load i32, i32* %261, align 4
  %add301 = add nsw i32 %262, %conv300
  store i32 %add301, i32* %261, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.266, %if.end.264
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.end.191
  %263 = load i32, i32* %block_available_below.addr, align 4
  %tobool304 = icmp ne i32 %263, 0
  br i1 %tobool304, label %if.then.305, label %if.end.339

if.then.305:                                      ; preds = %if.end.303
  %264 = load i32*, i32** %prednum.addr, align 8
  %265 = load i32, i32* %264, align 4
  %idxprom306 = sext i32 %265 to i64
  %266 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point307 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %266, i32 0, i32 1
  %267 = load %struct.SPoint*, %struct.SPoint** %point307, align 8
  %arrayidx308 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %267, i64 %idxprom306
  %mv309 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx308, i32 0, i32 0
  %arraydecay310 = getelementptr inbounds [2 x i32], [2 x i32]* %mv309, i32 0, i32 0
  store i32* %arraydecay310, i32** %cur_mv, align 8
  %268 = load i32, i32* %mvScale, align 4
  %269 = load i32, i32* %o_block_x.addr, align 4
  %idxprom311 = sext i32 %269 to i64
  %270 = load i32, i32* %o_block_y.addr, align 4
  %271 = load i32, i32* %blockshape_y.addr, align 4
  %add312 = add nsw i32 %270, %271
  %idxprom313 = sext i32 %add312 to i64
  %272 = load i16***, i16**** %col_mv, align 8
  %arrayidx314 = getelementptr inbounds i16**, i16*** %272, i64 %idxprom313
  %273 = load i16**, i16*** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i16*, i16** %273, i64 %idxprom311
  %274 = load i16*, i16** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i16, i16* %274, i64 0
  %275 = load i16, i16* %arrayidx316, align 2
  %conv317 = sext i16 %275 to i32
  %mul318 = mul nsw i32 %268, %conv317
  %276 = load i16, i16* %temp_shift_mv, align 2
  %conv319 = sext i16 %276 to i32
  %call320 = call i32 @rshift_rnd_sf(i32 %mul318, i32 %conv319)
  %277 = load i32*, i32** %cur_mv, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %277, i64 0
  store i32 %call320, i32* %arrayidx321, align 4
  %278 = load i32, i32* %mvScale, align 4
  %279 = load i32, i32* %o_block_x.addr, align 4
  %idxprom322 = sext i32 %279 to i64
  %280 = load i32, i32* %o_block_y.addr, align 4
  %281 = load i32, i32* %blockshape_y.addr, align 4
  %add323 = add nsw i32 %280, %281
  %idxprom324 = sext i32 %add323 to i64
  %282 = load i16***, i16**** %col_mv, align 8
  %arrayidx325 = getelementptr inbounds i16**, i16*** %282, i64 %idxprom324
  %283 = load i16**, i16*** %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds i16*, i16** %283, i64 %idxprom322
  %284 = load i16*, i16** %arrayidx326, align 8
  %arrayidx327 = getelementptr inbounds i16, i16* %284, i64 1
  %285 = load i16, i16* %arrayidx327, align 2
  %conv328 = sext i16 %285 to i32
  %mul329 = mul nsw i32 %278, %conv328
  %286 = load i16, i16* %temp_shift_mv, align 2
  %conv330 = sext i16 %286 to i32
  %call331 = call i32 @rshift_rnd_sf(i32 %mul329, i32 %conv330)
  %287 = load i32*, i32** %cur_mv, align 8
  %arrayidx332 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 %call331, i32* %arrayidx332, align 4
  %288 = load i32*, i32** %cur_mv, align 8
  %arrayidx333 = getelementptr inbounds i32, i32* %288, i64 0
  %289 = load i32, i32* %arrayidx333, align 4
  %290 = load i32*, i32** %cur_mv, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %290, i64 1
  %291 = load i32, i32* %arrayidx334, align 4
  %or335 = or i32 %289, %291
  %cmp336 = icmp ne i32 %or335, 0
  %conv337 = zext i1 %cmp336 to i32
  %292 = load i32*, i32** %prednum.addr, align 8
  %293 = load i32, i32* %292, align 4
  %add338 = add nsw i32 %293, %conv337
  store i32 %add338, i32* %292, align 4
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.305, %if.end.303
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %land.lhs.true, %cond.end.13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EPZSWindowPredictors(i16* %mv, %struct.MEPatternNode* %predictor, i32* %prednum, i32 %extended) #0 {
entry:
  %mv.addr = alloca i16*, align 8
  %predictor.addr = alloca %struct.MEPatternNode*, align 8
  %prednum.addr = alloca i32*, align 8
  %extended.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %windowPred = alloca %struct.MEPatternNode*, align 8
  store i16* %mv, i16** %mv.addr, align 8
  store %struct.MEPatternNode* %predictor, %struct.MEPatternNode** %predictor.addr, align 8
  store i32* %prednum, i32** %prednum.addr, align 8
  store i32 %extended, i32* %extended.addr, align 4
  %0 = load i32, i32* %extended.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.MEPatternNode*, %struct.MEPatternNode** @window_predictor_extended, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.MEPatternNode*, %struct.MEPatternNode** @window_predictor, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.MEPatternNode* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct.MEPatternNode* %cond, %struct.MEPatternNode** %windowPred, align 8
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %pos, align 4
  %4 = load %struct.MEPatternNode*, %struct.MEPatternNode** %windowPred, align 8
  %searchPoints = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %4, i32 0, i32 0
  %5 = load i32, i32* %searchPoints, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i16*, i16** %mv.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %7 to i32
  %8 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.MEPatternNode*, %struct.MEPatternNode** %windowPred, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %9, i32 0, i32 1
  %10 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx1 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %10, i64 %idxprom
  %mv2 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx1, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %mv2, i32 0, i64 0
  %11 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %conv, %11
  %12 = load i32*, i32** %prednum.addr, align 8
  %13 = load i32, i32* %12, align 4
  %idxprom4 = sext i32 %13 to i64
  %14 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point5 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %14, i32 0, i32 1
  %15 = load %struct.SPoint*, %struct.SPoint** %point5, align 8
  %arrayidx6 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %15, i64 %idxprom4
  %mv7 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %mv7, i32 0, i64 0
  store i32 %add, i32* %arrayidx8, align 4
  %16 = load i16*, i16** %mv.addr, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %16, i64 1
  %17 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %17 to i32
  %18 = load i32, i32* %pos, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.MEPatternNode*, %struct.MEPatternNode** %windowPred, align 8
  %point12 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %19, i32 0, i32 1
  %20 = load %struct.SPoint*, %struct.SPoint** %point12, align 8
  %arrayidx13 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %20, i64 %idxprom11
  %mv14 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %mv14, i32 0, i64 1
  %21 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %conv10, %21
  %22 = load i32*, i32** %prednum.addr, align 8
  %23 = load i32, i32* %22, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %22, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point18 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %24, i32 0, i32 1
  %25 = load %struct.SPoint*, %struct.SPoint** %point18, align 8
  %arrayidx19 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %25, i64 %idxprom17
  %mv20 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx19, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %mv20, i32 0, i64 1
  store i32 %add16, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %pos, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @EPZSBlockTypePredictors(i32 %block_x, i32 %block_y, i32 %blocktype, i32 %ref, i32 %list, %struct.MEPatternNode* %predictor, i32* %prednum) #0 {
entry:
  %block_x.addr = alloca i32, align 4
  %block_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %ref.addr = alloca i32, align 4
  %list.addr = alloca i32, align 4
  %predictor.addr = alloca %struct.MEPatternNode*, align 8
  %prednum.addr = alloca i32*, align 8
  %all_mv = alloca i16***, align 8
  %block_shift_mv = alloca i16, align 2
  %cur_mv = alloca i32*, align 8
  store i32 %block_x, i32* %block_x.addr, align 4
  store i32 %block_y, i32* %block_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i32 %ref, i32* %ref.addr, align 4
  store i32 %list, i32* %list.addr, align 4
  store %struct.MEPatternNode* %predictor, %struct.MEPatternNode** %predictor.addr, align 8
  store i32* %prednum, i32** %prednum.addr, align 8
  %0 = load i32, i32* %list.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %block_x.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load i32, i32* %block_y.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %all_mv3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 80
  %4 = load i16******, i16******* %all_mv3, align 8
  %arrayidx = getelementptr inbounds i16*****, i16****** %4, i64 %idxprom2
  %5 = load i16*****, i16****** %arrayidx, align 8
  %arrayidx4 = getelementptr inbounds i16****, i16***** %5, i64 %idxprom1
  %6 = load i16****, i16***** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i16***, i16**** %6, i64 %idxprom
  %7 = load i16***, i16**** %arrayidx5, align 8
  store i16*** %7, i16**** %all_mv, align 8
  %8 = load i32, i32* @mv_rescale, align 4
  %add = add nsw i32 8, %8
  %conv = trunc i32 %add to i16
  store i16 %conv, i16* %block_shift_mv, align 2
  %9 = load i32*, i32** %prednum.addr, align 8
  %10 = load i32, i32* %9, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %11, i32 0, i32 1
  %12 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx7 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %12, i64 %idxprom6
  %mv = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx7, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %mv, i32 0, i32 0
  store i32* %arraydecay, i32** %cur_mv, align 8
  %13 = load i32, i32* %blocktype.addr, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [8 x i16], [8 x i16]* @blk_parent, i32 0, i64 %idxprom8
  %14 = load i16, i16* %arrayidx9, align 2
  %idxprom10 = sext i16 %14 to i64
  %15 = load i32, i32* %ref.addr, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load i16***, i16**** %all_mv, align 8
  %arrayidx12 = getelementptr inbounds i16**, i16*** %16, i64 %idxprom11
  %17 = load i16**, i16*** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16*, i16** %17, i64 %idxprom10
  %18 = load i16*, i16** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %18, i64 0
  %19 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %19 to i32
  %20 = load i32, i32* @mv_rescale, align 4
  %call = call i32 @rshift_rnd(i32 %conv15, i32 %20)
  %21 = load i32*, i32** %cur_mv, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %call, i32* %arrayidx16, align 4
  %22 = load i32, i32* %blocktype.addr, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [8 x i16], [8 x i16]* @blk_parent, i32 0, i64 %idxprom17
  %23 = load i16, i16* %arrayidx18, align 2
  %idxprom19 = sext i16 %23 to i64
  %24 = load i32, i32* %ref.addr, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i16***, i16**** %all_mv, align 8
  %arrayidx21 = getelementptr inbounds i16**, i16*** %25, i64 %idxprom20
  %26 = load i16**, i16*** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16*, i16** %26, i64 %idxprom19
  %27 = load i16*, i16** %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %27, i64 1
  %28 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %28 to i32
  %29 = load i32, i32* @mv_rescale, align 4
  %call25 = call i32 @rshift_rnd(i32 %conv24, i32 %29)
  %30 = load i32*, i32** %cur_mv, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %call25, i32* %arrayidx26, align 4
  %31 = load i32*, i32** %cur_mv, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx27, align 4
  %33 = load i32*, i32** %cur_mv, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %33, i64 1
  %34 = load i32, i32* %arrayidx28, align 4
  %or = or i32 %32, %34
  %cmp = icmp ne i32 %or, 0
  %conv29 = zext i1 %cmp to i32
  %35 = load i32*, i32** %prednum.addr, align 8
  %36 = load i32, i32* %35, align 4
  %add30 = add nsw i32 %36, %conv29
  store i32 %add30, i32* %35, align 4
  %37 = load i32, i32* %ref.addr, align 4
  %cmp31 = icmp sgt i32 %37, 0
  br i1 %cmp31, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %38 = load i32, i32* %blocktype.addr, align 4
  %cmp33 = icmp slt i32 %38, 5
  br i1 %cmp33, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %structure = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 6
  %40 = load i32, i32* %structure, align 4
  %cmp35 = icmp ne i32 %40, 0
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %41 = load i32*, i32** %prednum.addr, align 8
  %42 = load i32, i32* %41, align 4
  %idxprom37 = sext i32 %42 to i64
  %43 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point38 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %43, i32 0, i32 1
  %44 = load %struct.SPoint*, %struct.SPoint** %point38, align 8
  %arrayidx39 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %44, i64 %idxprom37
  %mv40 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx39, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [2 x i32], [2 x i32]* %mv40, i32 0, i32 0
  store i32* %arraydecay41, i32** %cur_mv, align 8
  %45 = load i32, i32* %ref.addr, align 4
  %sub = sub nsw i32 %45, 1
  %idxprom42 = sext i32 %sub to i64
  %46 = load i32, i32* %ref.addr, align 4
  %idxprom43 = sext i32 %46 to i64
  %47 = load i32, i32* %list.addr, align 4
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx45, i32 0, i64 %idxprom43
  %arrayidx47 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx46, i32 0, i64 %idxprom42
  %48 = load i32, i32* %arrayidx47, align 4
  %49 = load i32, i32* %blocktype.addr, align 4
  %idxprom48 = sext i32 %49 to i64
  %50 = load i32, i32* %ref.addr, align 4
  %sub49 = sub nsw i32 %50, 1
  %idxprom50 = sext i32 %sub49 to i64
  %51 = load i16***, i16**** %all_mv, align 8
  %arrayidx51 = getelementptr inbounds i16**, i16*** %51, i64 %idxprom50
  %52 = load i16**, i16*** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %52, i64 %idxprom48
  %53 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %53, i64 0
  %54 = load i16, i16* %arrayidx53, align 2
  %conv54 = sext i16 %54 to i32
  %mul = mul nsw i32 %48, %conv54
  %55 = load i16, i16* %block_shift_mv, align 2
  %conv55 = sext i16 %55 to i32
  %call56 = call i32 @rshift_rnd_sf(i32 %mul, i32 %conv55)
  %56 = load i32*, i32** %cur_mv, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %call56, i32* %arrayidx57, align 4
  %57 = load i32, i32* %ref.addr, align 4
  %sub58 = sub nsw i32 %57, 1
  %idxprom59 = sext i32 %sub58 to i64
  %58 = load i32, i32* %ref.addr, align 4
  %idxprom60 = sext i32 %58 to i64
  %59 = load i32, i32* %list.addr, align 4
  %idxprom61 = sext i32 %59 to i64
  %arrayidx62 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx62, i32 0, i64 %idxprom60
  %arrayidx64 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx63, i32 0, i64 %idxprom59
  %60 = load i32, i32* %arrayidx64, align 4
  %61 = load i32, i32* %blocktype.addr, align 4
  %idxprom65 = sext i32 %61 to i64
  %62 = load i32, i32* %ref.addr, align 4
  %sub66 = sub nsw i32 %62, 1
  %idxprom67 = sext i32 %sub66 to i64
  %63 = load i16***, i16**** %all_mv, align 8
  %arrayidx68 = getelementptr inbounds i16**, i16*** %63, i64 %idxprom67
  %64 = load i16**, i16*** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds i16*, i16** %64, i64 %idxprom65
  %65 = load i16*, i16** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %65, i64 1
  %66 = load i16, i16* %arrayidx70, align 2
  %conv71 = sext i16 %66 to i32
  %mul72 = mul nsw i32 %60, %conv71
  %67 = load i16, i16* %block_shift_mv, align 2
  %conv73 = sext i16 %67 to i32
  %call74 = call i32 @rshift_rnd_sf(i32 %mul72, i32 %conv73)
  %68 = load i32*, i32** %cur_mv, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %call74, i32* %arrayidx75, align 4
  %69 = load i32*, i32** %cur_mv, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %69, i64 0
  %70 = load i32, i32* %arrayidx76, align 4
  %71 = load i32*, i32** %cur_mv, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %71, i64 1
  %72 = load i32, i32* %arrayidx77, align 4
  %or78 = or i32 %70, %72
  %cmp79 = icmp ne i32 %or78, 0
  %conv80 = zext i1 %cmp79 to i32
  %73 = load i32*, i32** %prednum.addr, align 8
  %74 = load i32, i32* %73, align 4
  %add81 = add nsw i32 %74, %conv80
  store i32 %add81, i32* %73, align 4
  %75 = load i32*, i32** %prednum.addr, align 8
  %76 = load i32, i32* %75, align 4
  %idxprom82 = sext i32 %76 to i64
  %77 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point83 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %77, i32 0, i32 1
  %78 = load %struct.SPoint*, %struct.SPoint** %point83, align 8
  %arrayidx84 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %78, i64 %idxprom82
  %mv85 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx84, i32 0, i32 0
  %arraydecay86 = getelementptr inbounds [2 x i32], [2 x i32]* %mv85, i32 0, i32 0
  store i32* %arraydecay86, i32** %cur_mv, align 8
  %79 = load i32, i32* %ref.addr, align 4
  %idxprom87 = sext i32 %79 to i64
  %80 = load i32, i32* %list.addr, align 4
  %idxprom88 = sext i32 %80 to i64
  %arrayidx89 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx89, i32 0, i64 %idxprom87
  %arrayidx91 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx90, i32 0, i64 0
  %81 = load i32, i32* %arrayidx91, align 4
  %82 = load i32, i32* %blocktype.addr, align 4
  %idxprom92 = sext i32 %82 to i64
  %83 = load i16***, i16**** %all_mv, align 8
  %arrayidx93 = getelementptr inbounds i16**, i16*** %83, i64 0
  %84 = load i16**, i16*** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16*, i16** %84, i64 %idxprom92
  %85 = load i16*, i16** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %85, i64 0
  %86 = load i16, i16* %arrayidx95, align 2
  %conv96 = sext i16 %86 to i32
  %mul97 = mul nsw i32 %81, %conv96
  %87 = load i16, i16* %block_shift_mv, align 2
  %conv98 = sext i16 %87 to i32
  %call99 = call i32 @rshift_rnd_sf(i32 %mul97, i32 %conv98)
  %88 = load i32*, i32** %cur_mv, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %call99, i32* %arrayidx100, align 4
  %89 = load i32, i32* %ref.addr, align 4
  %idxprom101 = sext i32 %89 to i64
  %90 = load i32, i32* %list.addr, align 4
  %idxprom102 = sext i32 %90 to i64
  %arrayidx103 = getelementptr inbounds [6 x [32 x [32 x i32]]], [6 x [32 x [32 x i32]]]* @mv_scale, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* %arrayidx103, i32 0, i64 %idxprom101
  %arrayidx105 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx104, i32 0, i64 0
  %91 = load i32, i32* %arrayidx105, align 4
  %92 = load i32, i32* %blocktype.addr, align 4
  %idxprom106 = sext i32 %92 to i64
  %93 = load i16***, i16**** %all_mv, align 8
  %arrayidx107 = getelementptr inbounds i16**, i16*** %93, i64 0
  %94 = load i16**, i16*** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16*, i16** %94, i64 %idxprom106
  %95 = load i16*, i16** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %95, i64 1
  %96 = load i16, i16* %arrayidx109, align 2
  %conv110 = sext i16 %96 to i32
  %mul111 = mul nsw i32 %91, %conv110
  %97 = load i16, i16* %block_shift_mv, align 2
  %conv112 = sext i16 %97 to i32
  %call113 = call i32 @rshift_rnd_sf(i32 %mul111, i32 %conv112)
  %98 = load i32*, i32** %cur_mv, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %call113, i32* %arrayidx114, align 4
  %99 = load i32*, i32** %cur_mv, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %99, i64 0
  %100 = load i32, i32* %arrayidx115, align 4
  %101 = load i32*, i32** %cur_mv, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %101, i64 1
  %102 = load i32, i32* %arrayidx116, align 4
  %or117 = or i32 %100, %102
  %cmp118 = icmp ne i32 %or117, 0
  %conv119 = zext i1 %cmp118 to i32
  %103 = load i32*, i32** %prednum.addr, align 8
  %104 = load i32, i32* %103, align 4
  %add120 = add nsw i32 %104, %conv119
  store i32 %add120, i32* %103, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %105 = load i32, i32* %blocktype.addr, align 4
  %cmp121 = icmp ne i32 %105, 1
  br i1 %cmp121, label %if.then.123, label %if.end.149

if.then.123:                                      ; preds = %if.end
  %106 = load i32*, i32** %prednum.addr, align 8
  %107 = load i32, i32* %106, align 4
  %idxprom124 = sext i32 %107 to i64
  %108 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point125 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %108, i32 0, i32 1
  %109 = load %struct.SPoint*, %struct.SPoint** %point125, align 8
  %arrayidx126 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %109, i64 %idxprom124
  %mv127 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx126, i32 0, i32 0
  %arraydecay128 = getelementptr inbounds [2 x i32], [2 x i32]* %mv127, i32 0, i32 0
  store i32* %arraydecay128, i32** %cur_mv, align 8
  %110 = load i32, i32* %ref.addr, align 4
  %idxprom129 = sext i32 %110 to i64
  %111 = load i16***, i16**** %all_mv, align 8
  %arrayidx130 = getelementptr inbounds i16**, i16*** %111, i64 %idxprom129
  %112 = load i16**, i16*** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i16*, i16** %112, i64 1
  %113 = load i16*, i16** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %113, i64 0
  %114 = load i16, i16* %arrayidx132, align 2
  %conv133 = sext i16 %114 to i32
  %115 = load i32, i32* @mv_rescale, align 4
  %call134 = call i32 @rshift_rnd(i32 %conv133, i32 %115)
  %116 = load i32*, i32** %cur_mv, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %call134, i32* %arrayidx135, align 4
  %117 = load i32, i32* %ref.addr, align 4
  %idxprom136 = sext i32 %117 to i64
  %118 = load i16***, i16**** %all_mv, align 8
  %arrayidx137 = getelementptr inbounds i16**, i16*** %118, i64 %idxprom136
  %119 = load i16**, i16*** %arrayidx137, align 8
  %arrayidx138 = getelementptr inbounds i16*, i16** %119, i64 1
  %120 = load i16*, i16** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i16, i16* %120, i64 1
  %121 = load i16, i16* %arrayidx139, align 2
  %conv140 = sext i16 %121 to i32
  %122 = load i32, i32* @mv_rescale, align 4
  %call141 = call i32 @rshift_rnd(i32 %conv140, i32 %122)
  %123 = load i32*, i32** %cur_mv, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %call141, i32* %arrayidx142, align 4
  %124 = load i32*, i32** %cur_mv, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %124, i64 0
  %125 = load i32, i32* %arrayidx143, align 4
  %126 = load i32*, i32** %cur_mv, align 8
  %arrayidx144 = getelementptr inbounds i32, i32* %126, i64 1
  %127 = load i32, i32* %arrayidx144, align 4
  %or145 = or i32 %125, %127
  %cmp146 = icmp ne i32 %or145, 0
  %conv147 = zext i1 %cmp146 to i32
  %128 = load i32*, i32** %prednum.addr, align 8
  %129 = load i32, i32* %128, align 4
  %add148 = add nsw i32 %129, %conv147
  store i32 %add148, i32* %128, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.123, %if.end
  %130 = load i32, i32* %blocktype.addr, align 4
  %cmp150 = icmp ne i32 %130, 4
  br i1 %cmp150, label %if.then.152, label %if.end.178

if.then.152:                                      ; preds = %if.end.149
  %131 = load i32*, i32** %prednum.addr, align 8
  %132 = load i32, i32* %131, align 4
  %idxprom153 = sext i32 %132 to i64
  %133 = load %struct.MEPatternNode*, %struct.MEPatternNode** %predictor.addr, align 8
  %point154 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %133, i32 0, i32 1
  %134 = load %struct.SPoint*, %struct.SPoint** %point154, align 8
  %arrayidx155 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %134, i64 %idxprom153
  %mv156 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx155, i32 0, i32 0
  %arraydecay157 = getelementptr inbounds [2 x i32], [2 x i32]* %mv156, i32 0, i32 0
  store i32* %arraydecay157, i32** %cur_mv, align 8
  %135 = load i32, i32* %ref.addr, align 4
  %idxprom158 = sext i32 %135 to i64
  %136 = load i16***, i16**** %all_mv, align 8
  %arrayidx159 = getelementptr inbounds i16**, i16*** %136, i64 %idxprom158
  %137 = load i16**, i16*** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i16*, i16** %137, i64 4
  %138 = load i16*, i16** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %138, i64 0
  %139 = load i16, i16* %arrayidx161, align 2
  %conv162 = sext i16 %139 to i32
  %140 = load i32, i32* @mv_rescale, align 4
  %call163 = call i32 @rshift_rnd(i32 %conv162, i32 %140)
  %141 = load i32*, i32** %cur_mv, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %call163, i32* %arrayidx164, align 4
  %142 = load i32, i32* %ref.addr, align 4
  %idxprom165 = sext i32 %142 to i64
  %143 = load i16***, i16**** %all_mv, align 8
  %arrayidx166 = getelementptr inbounds i16**, i16*** %143, i64 %idxprom165
  %144 = load i16**, i16*** %arrayidx166, align 8
  %arrayidx167 = getelementptr inbounds i16*, i16** %144, i64 4
  %145 = load i16*, i16** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %145, i64 1
  %146 = load i16, i16* %arrayidx168, align 2
  %conv169 = sext i16 %146 to i32
  %147 = load i32, i32* @mv_rescale, align 4
  %call170 = call i32 @rshift_rnd(i32 %conv169, i32 %147)
  %148 = load i32*, i32** %cur_mv, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %call170, i32* %arrayidx171, align 4
  %149 = load i32*, i32** %cur_mv, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %149, i64 0
  %150 = load i32, i32* %arrayidx172, align 4
  %151 = load i32*, i32** %cur_mv, align 8
  %arrayidx173 = getelementptr inbounds i32, i32* %151, i64 1
  %152 = load i32, i32* %arrayidx173, align 4
  %or174 = or i32 %150, %152
  %cmp175 = icmp ne i32 %or174, 0
  %conv176 = zext i1 %cmp175 to i32
  %153 = load i32*, i32** %prednum.addr, align 8
  %154 = load i32, i32* %153, align 4
  %add177 = add nsw i32 %154, %conv176
  store i32 %add177, i32* %153, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.152, %if.end.149
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @EPZSBiPredBlockMotionSearch(i16* %cur_pic, i16 signext %ref, i32 %list, i32 %list_offset, i8*** %refPic, i16**** %tmp_mv, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16* %pred_mv1, i16* %pred_mv2, i16* %mv, i16* %s_mv, i32 %search_range, i32 %min_mcost, i32 %lambda_factor) #0 {
entry:
  %cur_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %list_offset.addr = alloca i32, align 4
  %refPic.addr = alloca i8***, align 8
  %tmp_mv.addr = alloca i16****, align 8
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv1.addr = alloca i16*, align 8
  %pred_mv2.addr = alloca i16*, align 8
  %mv.addr = alloca i16*, align 8
  %s_mv.addr = alloca i16*, align 8
  %search_range.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda_factor.addr = alloca i32, align 4
  %blocksize_y = alloca i16, align 2
  %blocksize_x = alloca i16, align 2
  %mb_x = alloca i16, align 2
  %mb_y = alloca i16, align 2
  %pred_x1 = alloca i32, align 4
  %pred_y1 = alloca i32, align 4
  %pred_x2 = alloca i32, align 4
  %pred_y2 = alloca i32, align 4
  %center2_x = alloca i32, align 4
  %center2_y = alloca i32, align 4
  %center1_x = alloca i32, align 4
  %center1_y = alloca i32, align 4
  %tempmv = alloca [2 x i32], align 4
  %tempmv2 = alloca [2 x i32], align 4
  %stopCriterion = alloca i32, align 4
  %mapCenter_x = alloca i32, align 4
  %mapCenter_y = alloca i32, align 4
  %second_mcost = alloca i32, align 4
  %ref_picture1 = alloca %struct.storable_picture*, align 8
  %ref_picture2 = alloca %struct.storable_picture*, align 8
  %apply_weights = alloca i16, align 2
  %offset1 = alloca i16, align 2
  %offset2 = alloca i16, align 2
  %invalid_refs = alloca i16, align 2
  %checkMedian = alloca i8, align 1
  %searchPatternF = alloca %struct.MEPatternNode*, align 8
  %prednum = alloca i32, align 4
  %patternStop = alloca i32, align 4
  %pointNumber = alloca i32, align 4
  %checkPts = alloca i32, align 4
  %nextLast = alloca i32, align 4
  %totalCheckPts = alloca i32, align 4
  %motionDirection = alloca i32, align 4
  %conditionEPZS = alloca i32, align 4
  %tmv = alloca [2 x i32], align 4
  %cand_x = alloca i32, align 4
  %cand_y = alloca i32, align 4
  %pos = alloca i32, align 4
  %mcost = alloca i32, align 4
  %block_a = alloca %struct.pix_pos, align 8
  %block_b = alloca %struct.pix_pos, align 8
  %block_c = alloca %struct.pix_pos, align 8
  %block_d = alloca %struct.pix_pos, align 8
  store i16* %cur_pic, i16** %cur_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %list_offset, i32* %list_offset.addr, align 4
  store i8*** %refPic, i8**** %refPic.addr, align 8
  store i16**** %tmp_mv, i16***** %tmp_mv.addr, align 8
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16* %pred_mv1, i16** %pred_mv1.addr, align 8
  store i16* %pred_mv2, i16** %pred_mv2.addr, align 8
  store i16* %mv, i16** %mv.addr, align 8
  store i16* %s_mv, i16** %s_mv.addr, align 8
  store i32 %search_range, i32* %search_range.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32 %lambda_factor, i32* %lambda_factor.addr, align 4
  %0 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 18
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 1
  %2 = load i32, i32* %arrayidx1, align 4
  %conv = trunc i32 %2 to i16
  store i16 %conv, i16* %blocksize_y, align 2
  %3 = load i32, i32* %blocktype.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 0
  %5 = load i32, i32* %arrayidx5, align 4
  %conv6 = trunc i32 %5 to i16
  store i16 %conv6, i16* %blocksize_x, align 2
  %6 = load i32, i32* %pic_pix_x.addr, align 4
  %7 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %7, i32 0, i32 43
  %8 = load i32, i32* %opix_x, align 4
  %sub = sub nsw i32 %6, %8
  %conv7 = trunc i32 %sub to i16
  store i16 %conv7, i16* %mb_x, align 2
  %9 = load i32, i32* %pic_pix_y.addr, align 4
  %10 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %10, i32 0, i32 44
  %11 = load i32, i32* %opix_y, align 4
  %sub8 = sub nsw i32 %9, %11
  %conv9 = trunc i32 %sub8 to i16
  store i16 %conv9, i16* %mb_y, align 2
  %12 = load i32, i32* %pic_pix_x.addr, align 4
  %shl = shl i32 %12, 2
  %13 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 0
  %14 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %14 to i32
  %add = add nsw i32 %shl, %conv11
  store i32 %add, i32* %pred_x1, align 4
  %15 = load i32, i32* %pic_pix_y.addr, align 4
  %shl12 = shl i32 %15, 2
  %16 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %16, i64 1
  %17 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %17 to i32
  %add15 = add nsw i32 %shl12, %conv14
  store i32 %add15, i32* %pred_y1, align 4
  %18 = load i32, i32* %pic_pix_x.addr, align 4
  %shl16 = shl i32 %18, 2
  %19 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %19, i64 0
  %20 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %20 to i32
  %add19 = add nsw i32 %shl16, %conv18
  store i32 %add19, i32* %pred_x2, align 4
  %21 = load i32, i32* %pic_pix_y.addr, align 4
  %shl20 = shl i32 %21, 2
  %22 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %22, i64 1
  %23 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %23 to i32
  %add23 = add nsw i32 %shl20, %conv22
  store i32 %add23, i32* %pred_y2, align 4
  %24 = load i32, i32* %pic_pix_x.addr, align 4
  %25 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %25, i32 0, i32 101
  %26 = load i32, i32* %EPZSSubPelGrid, align 4
  %mul = mul nsw i32 %26, 2
  %shl24 = shl i32 %24, %mul
  %27 = load i16*, i16** %mv.addr, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %27, i64 0
  %28 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %28 to i32
  %add27 = add nsw i32 %shl24, %conv26
  store i32 %add27, i32* %center2_x, align 4
  %29 = load i32, i32* %pic_pix_y.addr, align 4
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid28 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 101
  %31 = load i32, i32* %EPZSSubPelGrid28, align 4
  %mul29 = mul nsw i32 %31, 2
  %shl30 = shl i32 %29, %mul29
  %32 = load i16*, i16** %mv.addr, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %32, i64 1
  %33 = load i16, i16* %arrayidx31, align 2
  %conv32 = sext i16 %33 to i32
  %add33 = add nsw i32 %shl30, %conv32
  store i32 %add33, i32* %center2_y, align 4
  %34 = load i32, i32* %pic_pix_x.addr, align 4
  %35 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid34 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %35, i32 0, i32 101
  %36 = load i32, i32* %EPZSSubPelGrid34, align 4
  %mul35 = mul nsw i32 %36, 2
  %shl36 = shl i32 %34, %mul35
  %37 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %37, i64 0
  %38 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %38 to i32
  %add39 = add nsw i32 %shl36, %conv38
  store i32 %add39, i32* %center1_x, align 4
  %39 = load i32, i32* %pic_pix_y.addr, align 4
  %40 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid40 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %40, i32 0, i32 101
  %41 = load i32, i32* %EPZSSubPelGrid40, align 4
  %mul41 = mul nsw i32 %41, 2
  %shl42 = shl i32 %39, %mul41
  %42 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %42, i64 1
  %43 = load i16, i16* %arrayidx43, align 2
  %conv44 = sext i16 %43 to i32
  %add45 = add nsw i32 %shl42, %conv44
  store i32 %add45, i32* %center1_y, align 4
  %arrayinit.begin = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i64 0, i64 0
  %44 = load i16*, i16** %mv.addr, align 8
  %arrayidx46 = getelementptr inbounds i16, i16* %44, i64 0
  %45 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %45 to i32
  store i32 %conv47, i32* %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i32, i32* %arrayinit.begin, i64 1
  %46 = load i16*, i16** %mv.addr, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %46, i64 1
  %47 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %47 to i32
  store i32 %conv49, i32* %arrayinit.element
  %48 = bitcast [2 x i32]* %tempmv2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 8, i32 4, i1 false)
  %49 = load i32, i32* %blocktype.addr, align 4
  %idxprom50 = sext i32 %49 to i64
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom50
  %50 = load i32, i32* %arrayidx51, align 4
  store i32 %50, i32* %stopCriterion, align 4
  %51 = load i32, i32* %search_range.addr, align 4
  %52 = load i16*, i16** %mv.addr, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %52, i64 0
  %53 = load i16, i16* %arrayidx52, align 2
  %conv53 = sext i16 %53 to i32
  %sub54 = sub nsw i32 %51, %conv53
  store i32 %sub54, i32* %mapCenter_x, align 4
  %54 = load i32, i32* %search_range.addr, align 4
  %55 = load i16*, i16** %mv.addr, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %55, i64 1
  %56 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %56 to i32
  %sub57 = sub nsw i32 %54, %conv56
  store i32 %sub57, i32* %mapCenter_y, align 4
  store i32 2147483647, i32* %second_mcost, align 4
  %57 = load i16, i16* %ref.addr, align 2
  %idxprom58 = sext i16 %57 to i64
  %58 = load i32, i32* %list.addr, align 4
  %59 = load i32, i32* %list_offset.addr, align 4
  %add59 = add nsw i32 %58, %59
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom60
  %60 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx61, align 8
  %arrayidx62 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %60, i64 %idxprom58
  %61 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx62, align 8
  store %struct.storable_picture* %61, %struct.storable_picture** %ref_picture1, align 8
  %62 = load i32, i32* %list.addr, align 4
  %xor = xor i32 %62, 1
  %63 = load i32, i32* %list_offset.addr, align 4
  %add63 = add nsw i32 %xor, %63
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom64
  %64 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %64, i64 0
  %65 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx66, align 8
  store %struct.storable_picture* %65, %struct.storable_picture** %ref_picture2, align 8
  %66 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %66, i32 0, i32 20
  %67 = load i32, i32* %weighted_bipred_idc, align 4
  %cmp = icmp ne i32 %67, 0
  %conv67 = zext i1 %cmp to i32
  %conv68 = trunc i32 %conv67 to i16
  store i16 %conv68, i16* %apply_weights, align 2
  %68 = load i16, i16* %apply_weights, align 2
  %conv69 = sext i16 %68 to i32
  %tobool = icmp ne i32 %conv69, 0
  br i1 %tobool, label %cond.true, label %cond.false.83

cond.true:                                        ; preds = %entry
  %69 = load i32, i32* %list.addr, align 4
  %cmp70 = icmp eq i32 %69, 0
  br i1 %cmp70, label %cond.true.72, label %cond.false

cond.true.72:                                     ; preds = %cond.true
  %70 = load i16, i16* %ref.addr, align 2
  %idxprom73 = sext i16 %70 to i64
  %71 = load i32, i32* %list_offset.addr, align 4
  %idxprom74 = sext i32 %71 to i64
  %72 = load i32***, i32**** @wp_offset, align 8
  %arrayidx75 = getelementptr inbounds i32**, i32*** %72, i64 %idxprom74
  %73 = load i32**, i32*** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %73, i64 %idxprom73
  %74 = load i32*, i32** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %74, i64 0
  %75 = load i32, i32* %arrayidx77, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %76 = load i32, i32* %list_offset.addr, align 4
  %add78 = add nsw i32 %76, 1
  %idxprom79 = sext i32 %add78 to i64
  %77 = load i32***, i32**** @wp_offset, align 8
  %arrayidx80 = getelementptr inbounds i32**, i32*** %77, i64 %idxprom79
  %78 = load i32**, i32*** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32*, i32** %78, i64 0
  %79 = load i32*, i32** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %79, i64 0
  %80 = load i32, i32* %arrayidx82, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.72
  %cond = phi i32 [ %75, %cond.true.72 ], [ %80, %cond.false ]
  br label %cond.end.84

cond.false.83:                                    ; preds = %entry
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.end
  %cond85 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false.83 ]
  %conv86 = trunc i32 %cond85 to i16
  store i16 %conv86, i16* %offset1, align 2
  %81 = load i16, i16* %apply_weights, align 2
  %conv87 = sext i16 %81 to i32
  %tobool88 = icmp ne i32 %conv87, 0
  br i1 %tobool88, label %cond.true.89, label %cond.false.106

cond.true.89:                                     ; preds = %cond.end.84
  %82 = load i32, i32* %list.addr, align 4
  %cmp90 = icmp eq i32 %82, 0
  br i1 %cmp90, label %cond.true.92, label %cond.false.99

cond.true.92:                                     ; preds = %cond.true.89
  %83 = load i16, i16* %ref.addr, align 2
  %idxprom93 = sext i16 %83 to i64
  %84 = load i32, i32* %list_offset.addr, align 4
  %add94 = add nsw i32 %84, 1
  %idxprom95 = sext i32 %add94 to i64
  %85 = load i32***, i32**** @wp_offset, align 8
  %arrayidx96 = getelementptr inbounds i32**, i32*** %85, i64 %idxprom95
  %86 = load i32**, i32*** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i32*, i32** %86, i64 %idxprom93
  %87 = load i32*, i32** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %87, i64 0
  %88 = load i32, i32* %arrayidx98, align 4
  br label %cond.end.104

cond.false.99:                                    ; preds = %cond.true.89
  %89 = load i32, i32* %list_offset.addr, align 4
  %idxprom100 = sext i32 %89 to i64
  %90 = load i32***, i32**** @wp_offset, align 8
  %arrayidx101 = getelementptr inbounds i32**, i32*** %90, i64 %idxprom100
  %91 = load i32**, i32*** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %91, i64 0
  %92 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %92, i64 0
  %93 = load i32, i32* %arrayidx103, align 4
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.99, %cond.true.92
  %cond105 = phi i32 [ %88, %cond.true.92 ], [ %93, %cond.false.99 ]
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end.84
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.end.104
  %cond108 = phi i32 [ %cond105, %cond.end.104 ], [ 0, %cond.false.106 ]
  %conv109 = trunc i32 %cond108 to i16
  store i16 %conv109, i16* %offset2, align 2
  store i16 0, i16* %invalid_refs, align 2
  store i8 0, i8* %checkMedian, align 1
  %94 = load %struct.MEPatternNode*, %struct.MEPatternNode** @searchPattern, align 8
  store %struct.MEPatternNode* %94, %struct.MEPatternNode** %searchPatternF, align 8
  %95 = load i16, i16* @EPZSBlkCount, align 2
  %inc = add i16 %95, 1
  store i16 %inc, i16* @EPZSBlkCount, align 2
  %96 = load i32, i32* %pic_pix_x.addr, align 4
  %97 = load i32, i32* @mv_rescale, align 4
  %sub110 = sub nsw i32 2, %97
  %shl111 = shl i32 %96, %sub110
  store i32 %shl111, i32* %pic_pix_x.addr, align 4
  %98 = load i32, i32* %pic_pix_y.addr, align 4
  %99 = load i32, i32* @mv_rescale, align 4
  %sub112 = sub nsw i32 2, %99
  %shl113 = shl i32 %98, %sub112
  store i32 %shl113, i32* %pic_pix_y.addr, align 4
  %100 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %100, i32 0, i32 30
  %101 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %101, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %102 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgY_sub114 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %102, i32 0, i32 30
  %103 = load i16****, i16***** %imgY_sub114, align 8
  store i16**** %103, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %104 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %104, i32 0, i32 18
  %105 = load i32, i32* %size_x, align 4
  %conv115 = trunc i32 %105 to i16
  store i16 %conv115, i16* @img_width, align 2
  %106 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %106, i32 0, i32 19
  %107 = load i32, i32* %size_y, align 4
  %conv116 = trunc i32 %107 to i16
  store i16 %conv116, i16* @img_height, align 2
  %108 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %108, i32 0, i32 22
  %109 = load i32, i32* %size_x_pad, align 4
  store i32 %109, i32* @width_pad, align 4
  %110 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %110, i32 0, i32 23
  %111 = load i32, i32* %size_y_pad, align 4
  store i32 %111, i32* @height_pad, align 4
  %112 = load i16, i16* %apply_weights, align 2
  %tobool117 = icmp ne i16 %112, 0
  br i1 %tobool117, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.107
  %113 = load i32, i32* %list.addr, align 4
  %cmp118 = icmp eq i32 %113, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.127

cond.true.120:                                    ; preds = %if.then
  %114 = load i16, i16* %ref.addr, align 2
  %idxprom121 = sext i16 %114 to i64
  %115 = load i32, i32* %list_offset.addr, align 4
  %idxprom122 = sext i32 %115 to i64
  %116 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx123 = getelementptr inbounds i32***, i32**** %116, i64 %idxprom122
  %117 = load i32***, i32**** %arrayidx123, align 8
  %arrayidx124 = getelementptr inbounds i32**, i32*** %117, i64 %idxprom121
  %118 = load i32**, i32*** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i32*, i32** %118, i64 0
  %119 = load i32*, i32** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %119, i64 0
  %120 = load i32, i32* %arrayidx126, align 4
  br label %cond.end.135

cond.false.127:                                   ; preds = %if.then
  %121 = load i16, i16* %ref.addr, align 2
  %idxprom128 = sext i16 %121 to i64
  %122 = load i32, i32* %list_offset.addr, align 4
  %add129 = add nsw i32 %122, 1
  %idxprom130 = sext i32 %add129 to i64
  %123 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx131 = getelementptr inbounds i32***, i32**** %123, i64 %idxprom130
  %124 = load i32***, i32**** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i32**, i32*** %124, i64 0
  %125 = load i32**, i32*** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i32*, i32** %125, i64 %idxprom128
  %126 = load i32*, i32** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %126, i64 0
  %127 = load i32, i32* %arrayidx134, align 4
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.127, %cond.true.120
  %cond136 = phi i32 [ %120, %cond.true.120 ], [ %127, %cond.false.127 ]
  %conv137 = trunc i32 %cond136 to i16
  store i16 %conv137, i16* @weight1, align 2
  %128 = load i32, i32* %list.addr, align 4
  %cmp138 = icmp eq i32 %128, 0
  br i1 %cmp138, label %cond.true.140, label %cond.false.148

cond.true.140:                                    ; preds = %cond.end.135
  %129 = load i16, i16* %ref.addr, align 2
  %idxprom141 = sext i16 %129 to i64
  %130 = load i32, i32* %list_offset.addr, align 4
  %add142 = add nsw i32 %130, 1
  %idxprom143 = sext i32 %add142 to i64
  %131 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx144 = getelementptr inbounds i32***, i32**** %131, i64 %idxprom143
  %132 = load i32***, i32**** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i32**, i32*** %132, i64 %idxprom141
  %133 = load i32**, i32*** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i32*, i32** %133, i64 0
  %134 = load i32*, i32** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %134, i64 0
  %135 = load i32, i32* %arrayidx147, align 4
  br label %cond.end.155

cond.false.148:                                   ; preds = %cond.end.135
  %136 = load i16, i16* %ref.addr, align 2
  %idxprom149 = sext i16 %136 to i64
  %137 = load i32, i32* %list_offset.addr, align 4
  %idxprom150 = sext i32 %137 to i64
  %138 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx151 = getelementptr inbounds i32***, i32**** %138, i64 %idxprom150
  %139 = load i32***, i32**** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32**, i32*** %139, i64 0
  %140 = load i32**, i32*** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32*, i32** %140, i64 %idxprom149
  %141 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %141, i64 0
  %142 = load i32, i32* %arrayidx154, align 4
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.148, %cond.true.140
  %cond156 = phi i32 [ %135, %cond.true.140 ], [ %142, %cond.false.148 ]
  %conv157 = trunc i32 %cond156 to i16
  store i16 %conv157, i16* @weight2, align 2
  %143 = load i16, i16* %offset1, align 2
  %conv158 = sext i16 %143 to i32
  %144 = load i16, i16* %offset2, align 2
  %conv159 = sext i16 %144 to i32
  %add160 = add nsw i32 %conv158, %conv159
  %add161 = add nsw i32 %add160, 1
  %shr = ashr i32 %add161, 1
  %conv162 = trunc i32 %shr to i16
  store i16 %conv162, i16* @offsetBi, align 2
  %145 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 0), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %145, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.107
  %146 = load i32, i32* @luma_log_weight_denom, align 4
  %shl163 = shl i32 1, %146
  %conv164 = trunc i32 %shl163 to i16
  store i16 %conv164, i16* @weight1, align 2
  %147 = load i32, i32* @luma_log_weight_denom, align 4
  %shl165 = shl i32 1, %147
  %conv166 = trunc i32 %shl165 to i16
  store i16 %conv166, i16* @weight2, align 2
  store i16 0, i16* @offsetBi, align 2
  %148 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 0), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %148, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.155
  %149 = load i32, i32* @ChromaMEEnable, align 4
  %tobool167 = icmp ne i32 %149, 0
  br i1 %tobool167, label %if.then.168, label %if.end.334

if.then.168:                                      ; preds = %if.end
  %150 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %150, i32 0, i32 32
  %151 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx169 = getelementptr inbounds i16****, i16***** %151, i64 0
  %152 = load i16****, i16***** %arrayidx169, align 8
  store i16**** %152, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 0), align 8
  %153 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub170 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %153, i32 0, i32 32
  %154 = load i16*****, i16****** %imgUV_sub170, align 8
  %arrayidx171 = getelementptr inbounds i16****, i16***** %154, i64 1
  %155 = load i16****, i16***** %arrayidx171, align 8
  store i16**** %155, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 1), align 8
  %156 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub172 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %156, i32 0, i32 32
  %157 = load i16*****, i16****** %imgUV_sub172, align 8
  %arrayidx173 = getelementptr inbounds i16****, i16***** %157, i64 0
  %158 = load i16****, i16***** %arrayidx173, align 8
  store i16**** %158, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 0), align 8
  %159 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub174 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %159, i32 0, i32 32
  %160 = load i16*****, i16****** %imgUV_sub174, align 8
  %arrayidx175 = getelementptr inbounds i16****, i16***** %160, i64 1
  %161 = load i16****, i16***** %arrayidx175, align 8
  store i16**** %161, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 1), align 8
  %162 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %162, i32 0, i32 24
  %163 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %163, i32* @width_pad_cr, align 4
  %164 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %164, i32 0, i32 25
  %165 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %165, i32* @height_pad_cr, align 4
  %166 = load i16, i16* %apply_weights, align 2
  %tobool176 = icmp ne i16 %166, 0
  br i1 %tobool176, label %if.then.177, label %if.else.324

if.then.177:                                      ; preds = %if.then.168
  %167 = load i32, i32* %list.addr, align 4
  %cmp178 = icmp eq i32 %167, 0
  br i1 %cmp178, label %cond.true.180, label %cond.false.187

cond.true.180:                                    ; preds = %if.then.177
  %168 = load i16, i16* %ref.addr, align 2
  %idxprom181 = sext i16 %168 to i64
  %169 = load i32, i32* %list_offset.addr, align 4
  %idxprom182 = sext i32 %169 to i64
  %170 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx183 = getelementptr inbounds i32***, i32**** %170, i64 %idxprom182
  %171 = load i32***, i32**** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds i32**, i32*** %171, i64 %idxprom181
  %172 = load i32**, i32*** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32*, i32** %172, i64 0
  %173 = load i32*, i32** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %173, i64 1
  %174 = load i32, i32* %arrayidx186, align 4
  br label %cond.end.195

cond.false.187:                                   ; preds = %if.then.177
  %175 = load i16, i16* %ref.addr, align 2
  %idxprom188 = sext i16 %175 to i64
  %176 = load i32, i32* %list_offset.addr, align 4
  %add189 = add nsw i32 %176, 1
  %idxprom190 = sext i32 %add189 to i64
  %177 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx191 = getelementptr inbounds i32***, i32**** %177, i64 %idxprom190
  %178 = load i32***, i32**** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i32**, i32*** %178, i64 0
  %179 = load i32**, i32*** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i32*, i32** %179, i64 %idxprom188
  %180 = load i32*, i32** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %180, i64 1
  %181 = load i32, i32* %arrayidx194, align 4
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.187, %cond.true.180
  %cond196 = phi i32 [ %174, %cond.true.180 ], [ %181, %cond.false.187 ]
  %conv197 = trunc i32 %cond196 to i16
  store i16 %conv197, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %182 = load i32, i32* %list.addr, align 4
  %cmp198 = icmp eq i32 %182, 0
  br i1 %cmp198, label %cond.true.200, label %cond.false.207

cond.true.200:                                    ; preds = %cond.end.195
  %183 = load i16, i16* %ref.addr, align 2
  %idxprom201 = sext i16 %183 to i64
  %184 = load i32, i32* %list_offset.addr, align 4
  %idxprom202 = sext i32 %184 to i64
  %185 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx203 = getelementptr inbounds i32***, i32**** %185, i64 %idxprom202
  %186 = load i32***, i32**** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i32**, i32*** %186, i64 %idxprom201
  %187 = load i32**, i32*** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i32*, i32** %187, i64 0
  %188 = load i32*, i32** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %188, i64 2
  %189 = load i32, i32* %arrayidx206, align 4
  br label %cond.end.215

cond.false.207:                                   ; preds = %cond.end.195
  %190 = load i16, i16* %ref.addr, align 2
  %idxprom208 = sext i16 %190 to i64
  %191 = load i32, i32* %list_offset.addr, align 4
  %add209 = add nsw i32 %191, 1
  %idxprom210 = sext i32 %add209 to i64
  %192 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx211 = getelementptr inbounds i32***, i32**** %192, i64 %idxprom210
  %193 = load i32***, i32**** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i32**, i32*** %193, i64 0
  %194 = load i32**, i32*** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i32*, i32** %194, i64 %idxprom208
  %195 = load i32*, i32** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %195, i64 2
  %196 = load i32, i32* %arrayidx214, align 4
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.207, %cond.true.200
  %cond216 = phi i32 [ %189, %cond.true.200 ], [ %196, %cond.false.207 ]
  %conv217 = trunc i32 %cond216 to i16
  store i16 %conv217, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %197 = load i32, i32* %list.addr, align 4
  %cmp218 = icmp eq i32 %197, 0
  br i1 %cmp218, label %cond.true.220, label %cond.false.228

cond.true.220:                                    ; preds = %cond.end.215
  %198 = load i16, i16* %ref.addr, align 2
  %idxprom221 = sext i16 %198 to i64
  %199 = load i32, i32* %list_offset.addr, align 4
  %add222 = add nsw i32 %199, 1
  %idxprom223 = sext i32 %add222 to i64
  %200 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx224 = getelementptr inbounds i32***, i32**** %200, i64 %idxprom223
  %201 = load i32***, i32**** %arrayidx224, align 8
  %arrayidx225 = getelementptr inbounds i32**, i32*** %201, i64 %idxprom221
  %202 = load i32**, i32*** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32*, i32** %202, i64 0
  %203 = load i32*, i32** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %203, i64 1
  %204 = load i32, i32* %arrayidx227, align 4
  br label %cond.end.235

cond.false.228:                                   ; preds = %cond.end.215
  %205 = load i16, i16* %ref.addr, align 2
  %idxprom229 = sext i16 %205 to i64
  %206 = load i32, i32* %list_offset.addr, align 4
  %idxprom230 = sext i32 %206 to i64
  %207 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx231 = getelementptr inbounds i32***, i32**** %207, i64 %idxprom230
  %208 = load i32***, i32**** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds i32**, i32*** %208, i64 0
  %209 = load i32**, i32*** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32*, i32** %209, i64 %idxprom229
  %210 = load i32*, i32** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %210, i64 1
  %211 = load i32, i32* %arrayidx234, align 4
  br label %cond.end.235

cond.end.235:                                     ; preds = %cond.false.228, %cond.true.220
  %cond236 = phi i32 [ %204, %cond.true.220 ], [ %211, %cond.false.228 ]
  %conv237 = trunc i32 %cond236 to i16
  store i16 %conv237, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %212 = load i32, i32* %list.addr, align 4
  %cmp238 = icmp eq i32 %212, 0
  br i1 %cmp238, label %cond.true.240, label %cond.false.248

cond.true.240:                                    ; preds = %cond.end.235
  %213 = load i16, i16* %ref.addr, align 2
  %idxprom241 = sext i16 %213 to i64
  %214 = load i32, i32* %list_offset.addr, align 4
  %add242 = add nsw i32 %214, 1
  %idxprom243 = sext i32 %add242 to i64
  %215 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx244 = getelementptr inbounds i32***, i32**** %215, i64 %idxprom243
  %216 = load i32***, i32**** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i32**, i32*** %216, i64 %idxprom241
  %217 = load i32**, i32*** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i32*, i32** %217, i64 0
  %218 = load i32*, i32** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %218, i64 2
  %219 = load i32, i32* %arrayidx247, align 4
  br label %cond.end.255

cond.false.248:                                   ; preds = %cond.end.235
  %220 = load i16, i16* %ref.addr, align 2
  %idxprom249 = sext i16 %220 to i64
  %221 = load i32, i32* %list_offset.addr, align 4
  %idxprom250 = sext i32 %221 to i64
  %222 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx251 = getelementptr inbounds i32***, i32**** %222, i64 %idxprom250
  %223 = load i32***, i32**** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32**, i32*** %223, i64 0
  %224 = load i32**, i32*** %arrayidx252, align 8
  %arrayidx253 = getelementptr inbounds i32*, i32** %224, i64 %idxprom249
  %225 = load i32*, i32** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %225, i64 2
  %226 = load i32, i32* %arrayidx254, align 4
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.248, %cond.true.240
  %cond256 = phi i32 [ %219, %cond.true.240 ], [ %226, %cond.false.248 ]
  %conv257 = trunc i32 %cond256 to i16
  store i16 %conv257, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  %227 = load i32, i32* %list.addr, align 4
  %cmp258 = icmp eq i32 %227, 0
  br i1 %cmp258, label %cond.true.260, label %cond.false.275

cond.true.260:                                    ; preds = %cond.end.255
  %228 = load i16, i16* %ref.addr, align 2
  %idxprom261 = sext i16 %228 to i64
  %229 = load i32, i32* %list_offset.addr, align 4
  %idxprom262 = sext i32 %229 to i64
  %230 = load i32***, i32**** @wp_offset, align 8
  %arrayidx263 = getelementptr inbounds i32**, i32*** %230, i64 %idxprom262
  %231 = load i32**, i32*** %arrayidx263, align 8
  %arrayidx264 = getelementptr inbounds i32*, i32** %231, i64 %idxprom261
  %232 = load i32*, i32** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %232, i64 1
  %233 = load i32, i32* %arrayidx265, align 4
  %234 = load i16, i16* %ref.addr, align 2
  %idxprom266 = sext i16 %234 to i64
  %235 = load i32, i32* %list_offset.addr, align 4
  %add267 = add nsw i32 %235, 1
  %idxprom268 = sext i32 %add267 to i64
  %236 = load i32***, i32**** @wp_offset, align 8
  %arrayidx269 = getelementptr inbounds i32**, i32*** %236, i64 %idxprom268
  %237 = load i32**, i32*** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i32*, i32** %237, i64 %idxprom266
  %238 = load i32*, i32** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %238, i64 1
  %239 = load i32, i32* %arrayidx271, align 4
  %add272 = add nsw i32 %233, %239
  %add273 = add nsw i32 %add272, 1
  %shr274 = ashr i32 %add273, 1
  br label %cond.end.288

cond.false.275:                                   ; preds = %cond.end.255
  %240 = load i32, i32* %list_offset.addr, align 4
  %add276 = add nsw i32 %240, 1
  %idxprom277 = sext i32 %add276 to i64
  %241 = load i32***, i32**** @wp_offset, align 8
  %arrayidx278 = getelementptr inbounds i32**, i32*** %241, i64 %idxprom277
  %242 = load i32**, i32*** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i32*, i32** %242, i64 0
  %243 = load i32*, i32** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %243, i64 1
  %244 = load i32, i32* %arrayidx280, align 4
  %245 = load i32, i32* %list_offset.addr, align 4
  %idxprom281 = sext i32 %245 to i64
  %246 = load i32***, i32**** @wp_offset, align 8
  %arrayidx282 = getelementptr inbounds i32**, i32*** %246, i64 %idxprom281
  %247 = load i32**, i32*** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32*, i32** %247, i64 0
  %248 = load i32*, i32** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %248, i64 1
  %249 = load i32, i32* %arrayidx284, align 4
  %add285 = add nsw i32 %244, %249
  %add286 = add nsw i32 %add285, 1
  %shr287 = ashr i32 %add286, 1
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.275, %cond.true.260
  %cond289 = phi i32 [ %shr274, %cond.true.260 ], [ %shr287, %cond.false.275 ]
  %conv290 = trunc i32 %cond289 to i16
  store i16 %conv290, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  %250 = load i32, i32* %list.addr, align 4
  %cmp291 = icmp eq i32 %250, 0
  br i1 %cmp291, label %cond.true.293, label %cond.false.308

cond.true.293:                                    ; preds = %cond.end.288
  %251 = load i16, i16* %ref.addr, align 2
  %idxprom294 = sext i16 %251 to i64
  %252 = load i32, i32* %list_offset.addr, align 4
  %idxprom295 = sext i32 %252 to i64
  %253 = load i32***, i32**** @wp_offset, align 8
  %arrayidx296 = getelementptr inbounds i32**, i32*** %253, i64 %idxprom295
  %254 = load i32**, i32*** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i32*, i32** %254, i64 %idxprom294
  %255 = load i32*, i32** %arrayidx297, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %255, i64 2
  %256 = load i32, i32* %arrayidx298, align 4
  %257 = load i16, i16* %ref.addr, align 2
  %idxprom299 = sext i16 %257 to i64
  %258 = load i32, i32* %list_offset.addr, align 4
  %add300 = add nsw i32 %258, 1
  %idxprom301 = sext i32 %add300 to i64
  %259 = load i32***, i32**** @wp_offset, align 8
  %arrayidx302 = getelementptr inbounds i32**, i32*** %259, i64 %idxprom301
  %260 = load i32**, i32*** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i32*, i32** %260, i64 %idxprom299
  %261 = load i32*, i32** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds i32, i32* %261, i64 2
  %262 = load i32, i32* %arrayidx304, align 4
  %add305 = add nsw i32 %256, %262
  %add306 = add nsw i32 %add305, 1
  %shr307 = ashr i32 %add306, 1
  br label %cond.end.321

cond.false.308:                                   ; preds = %cond.end.288
  %263 = load i32, i32* %list_offset.addr, align 4
  %add309 = add nsw i32 %263, 1
  %idxprom310 = sext i32 %add309 to i64
  %264 = load i32***, i32**** @wp_offset, align 8
  %arrayidx311 = getelementptr inbounds i32**, i32*** %264, i64 %idxprom310
  %265 = load i32**, i32*** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i32*, i32** %265, i64 0
  %266 = load i32*, i32** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %266, i64 2
  %267 = load i32, i32* %arrayidx313, align 4
  %268 = load i32, i32* %list_offset.addr, align 4
  %idxprom314 = sext i32 %268 to i64
  %269 = load i32***, i32**** @wp_offset, align 8
  %arrayidx315 = getelementptr inbounds i32**, i32*** %269, i64 %idxprom314
  %270 = load i32**, i32*** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32*, i32** %270, i64 0
  %271 = load i32*, i32** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %271, i64 2
  %272 = load i32, i32* %arrayidx317, align 4
  %add318 = add nsw i32 %267, %272
  %add319 = add nsw i32 %add318, 1
  %shr320 = ashr i32 %add319, 1
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.308, %cond.true.293
  %cond322 = phi i32 [ %shr307, %cond.true.293 ], [ %shr320, %cond.false.308 ]
  %conv323 = trunc i32 %cond322 to i16
  store i16 %conv323, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.333

if.else.324:                                      ; preds = %if.then.168
  %273 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl325 = shl i32 1, %273
  %conv326 = trunc i32 %shl325 to i16
  store i16 %conv326, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %274 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl327 = shl i32 1, %274
  %conv328 = trunc i32 %shl327 to i16
  store i16 %conv328, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %275 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl329 = shl i32 1, %275
  %conv330 = trunc i32 %shl329 to i16
  store i16 %conv330, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %276 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl331 = shl i32 1, %276
  %conv332 = trunc i32 %shl331 to i16
  store i16 %conv332, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.324, %cond.end.321
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %if.end
  %277 = load i32, i32* %center2_x, align 4
  %278 = load i32, i32* %search_range.addr, align 4
  %cmp335 = icmp sgt i32 %277, %278
  br i1 %cmp335, label %land.lhs.true, label %if.else.360

land.lhs.true:                                    ; preds = %if.end.334
  %279 = load i32, i32* %center2_x, align 4
  %280 = load i16, i16* @img_width, align 2
  %conv337 = sext i16 %280 to i32
  %281 = load i16, i16* %blocksize_x, align 2
  %conv338 = sext i16 %281 to i32
  %sub339 = sub nsw i32 %conv337, %conv338
  %282 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid340 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %282, i32 0, i32 101
  %283 = load i32, i32* %EPZSSubPelGrid340, align 4
  %mul341 = mul nsw i32 %283, 2
  %shl342 = shl i32 %sub339, %mul341
  %284 = load i32, i32* %search_range.addr, align 4
  %sub343 = sub nsw i32 %shl342, %284
  %cmp344 = icmp slt i32 %279, %sub343
  br i1 %cmp344, label %land.lhs.true.346, label %if.else.360

land.lhs.true.346:                                ; preds = %land.lhs.true
  %285 = load i32, i32* %center2_y, align 4
  %286 = load i32, i32* %search_range.addr, align 4
  %cmp347 = icmp sgt i32 %285, %286
  br i1 %cmp347, label %land.lhs.true.349, label %if.else.360

land.lhs.true.349:                                ; preds = %land.lhs.true.346
  %287 = load i32, i32* %center2_y, align 4
  %288 = load i16, i16* @img_height, align 2
  %conv350 = sext i16 %288 to i32
  %289 = load i16, i16* %blocksize_y, align 2
  %conv351 = sext i16 %289 to i32
  %sub352 = sub nsw i32 %conv350, %conv351
  %290 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid353 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %290, i32 0, i32 101
  %291 = load i32, i32* %EPZSSubPelGrid353, align 4
  %mul354 = mul nsw i32 %291, 2
  %shl355 = shl i32 %sub352, %mul354
  %292 = load i32, i32* %search_range.addr, align 4
  %sub356 = sub nsw i32 %shl355, %292
  %cmp357 = icmp slt i32 %287, %sub356
  br i1 %cmp357, label %if.then.359, label %if.else.360

if.then.359:                                      ; preds = %land.lhs.true.349
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.361

if.else.360:                                      ; preds = %land.lhs.true.349, %land.lhs.true.346, %land.lhs.true, %if.end.334
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.360, %if.then.359
  %293 = load i32, i32* %center1_x, align 4
  %294 = load i32, i32* %search_range.addr, align 4
  %cmp362 = icmp sgt i32 %293, %294
  br i1 %cmp362, label %land.lhs.true.364, label %if.else.388

land.lhs.true.364:                                ; preds = %if.end.361
  %295 = load i32, i32* %center1_x, align 4
  %296 = load i16, i16* @img_width, align 2
  %conv365 = sext i16 %296 to i32
  %297 = load i16, i16* %blocksize_x, align 2
  %conv366 = sext i16 %297 to i32
  %sub367 = sub nsw i32 %conv365, %conv366
  %298 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid368 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %298, i32 0, i32 101
  %299 = load i32, i32* %EPZSSubPelGrid368, align 4
  %mul369 = mul nsw i32 %299, 2
  %shl370 = shl i32 %sub367, %mul369
  %300 = load i32, i32* %search_range.addr, align 4
  %sub371 = sub nsw i32 %shl370, %300
  %cmp372 = icmp slt i32 %295, %sub371
  br i1 %cmp372, label %land.lhs.true.374, label %if.else.388

land.lhs.true.374:                                ; preds = %land.lhs.true.364
  %301 = load i32, i32* %center1_y, align 4
  %302 = load i32, i32* %search_range.addr, align 4
  %cmp375 = icmp sgt i32 %301, %302
  br i1 %cmp375, label %land.lhs.true.377, label %if.else.388

land.lhs.true.377:                                ; preds = %land.lhs.true.374
  %303 = load i32, i32* %center1_y, align 4
  %304 = load i16, i16* @img_height, align 2
  %conv378 = sext i16 %304 to i32
  %305 = load i16, i16* %blocksize_y, align 2
  %conv379 = sext i16 %305 to i32
  %sub380 = sub nsw i32 %conv378, %conv379
  %306 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelGrid381 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %306, i32 0, i32 101
  %307 = load i32, i32* %EPZSSubPelGrid381, align 4
  %mul382 = mul nsw i32 %307, 2
  %shl383 = shl i32 %sub380, %mul382
  %308 = load i32, i32* %search_range.addr, align 4
  %sub384 = sub nsw i32 %shl383, %308
  %cmp385 = icmp slt i32 %303, %sub384
  br i1 %cmp385, label %if.then.387, label %if.else.388

if.then.387:                                      ; preds = %land.lhs.true.377
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.389

if.else.388:                                      ; preds = %land.lhs.true.377, %land.lhs.true.374, %land.lhs.true.364, %if.end.361
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.389

if.end.389:                                       ; preds = %if.else.388, %if.then.387
  %309 = load i16, i16* @EPZSBlkCount, align 2
  %310 = load i32, i32* %search_range.addr, align 4
  %idxprom390 = sext i32 %310 to i64
  %311 = load i32, i32* %search_range.addr, align 4
  %idxprom391 = sext i32 %311 to i64
  %312 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx392 = getelementptr inbounds i16*, i16** %312, i64 %idxprom391
  %313 = load i16*, i16** %arrayidx392, align 8
  %arrayidx393 = getelementptr inbounds i16, i16* %313, i64 %idxprom390
  store i16 %309, i16* %arrayidx393, align 2
  %314 = load i32, i32* %lambda_factor.addr, align 4
  %315 = load i32, i32* %center1_x, align 4
  %316 = load i32, i32* @mv_rescale, align 4
  %shl394 = shl i32 %315, %316
  %317 = load i32, i32* %pred_x1, align 4
  %sub395 = sub nsw i32 %shl394, %317
  %idxprom396 = sext i32 %sub395 to i64
  %318 = load i32*, i32** @mvbits, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %318, i64 %idxprom396
  %319 = load i32, i32* %arrayidx397, align 4
  %320 = load i32, i32* %center1_y, align 4
  %321 = load i32, i32* @mv_rescale, align 4
  %shl398 = shl i32 %320, %321
  %322 = load i32, i32* %pred_y1, align 4
  %sub399 = sub nsw i32 %shl398, %322
  %idxprom400 = sext i32 %sub399 to i64
  %323 = load i32*, i32** @mvbits, align 8
  %arrayidx401 = getelementptr inbounds i32, i32* %323, i64 %idxprom400
  %324 = load i32, i32* %arrayidx401, align 4
  %add402 = add nsw i32 %319, %324
  %mul403 = mul nsw i32 %314, %add402
  %shr404 = ashr i32 %mul403, 16
  store i32 %shr404, i32* %min_mcost.addr, align 4
  %325 = load i32, i32* %lambda_factor.addr, align 4
  %326 = load i32, i32* %center2_x, align 4
  %327 = load i32, i32* @mv_rescale, align 4
  %shl405 = shl i32 %326, %327
  %328 = load i32, i32* %pred_x2, align 4
  %sub406 = sub nsw i32 %shl405, %328
  %idxprom407 = sext i32 %sub406 to i64
  %329 = load i32*, i32** @mvbits, align 8
  %arrayidx408 = getelementptr inbounds i32, i32* %329, i64 %idxprom407
  %330 = load i32, i32* %arrayidx408, align 4
  %331 = load i32, i32* %center2_y, align 4
  %332 = load i32, i32* @mv_rescale, align 4
  %shl409 = shl i32 %331, %332
  %333 = load i32, i32* %pred_y2, align 4
  %sub410 = sub nsw i32 %shl409, %333
  %idxprom411 = sext i32 %sub410 to i64
  %334 = load i32*, i32** @mvbits, align 8
  %arrayidx412 = getelementptr inbounds i32, i32* %334, i64 %idxprom411
  %335 = load i32, i32* %arrayidx412, align 4
  %add413 = add nsw i32 %330, %335
  %mul414 = mul nsw i32 %325, %add413
  %shr415 = ashr i32 %mul414, 16
  %336 = load i32, i32* %min_mcost.addr, align 4
  %add416 = add nsw i32 %336, %shr415
  store i32 %add416, i32* %min_mcost.addr, align 4
  %337 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %338 = load i16*, i16** %cur_pic.addr, align 8
  %339 = load i16, i16* %blocksize_y, align 2
  %conv417 = sext i16 %339 to i32
  %340 = load i16, i16* %blocksize_x, align 2
  %conv418 = sext i16 %340 to i32
  %341 = load i32, i32* %center1_x, align 4
  %342 = load i32, i32* @mv_rescale, align 4
  %shl419 = shl i32 %341, %342
  %add420 = add nsw i32 %shl419, 80
  %343 = load i32, i32* %center1_y, align 4
  %344 = load i32, i32* @mv_rescale, align 4
  %shl421 = shl i32 %343, %344
  %add422 = add nsw i32 %shl421, 80
  %345 = load i32, i32* %center2_x, align 4
  %346 = load i32, i32* @mv_rescale, align 4
  %shl423 = shl i32 %345, %346
  %add424 = add nsw i32 %shl423, 80
  %347 = load i32, i32* %center2_y, align 4
  %348 = load i32, i32* @mv_rescale, align 4
  %shl425 = shl i32 %347, %348
  %add426 = add nsw i32 %shl425, 80
  %call = call i32 %337(i16* %338, i32 %conv417, i32 %conv418, i32 2147483647, i32 %add420, i32 %add422, i32 %add424, i32 %add426)
  %349 = load i32, i32* %min_mcost.addr, align 4
  %add427 = add nsw i32 %349, %call
  store i32 %add427, i32* %min_mcost.addr, align 4
  %350 = load i32, i32* %min_mcost.addr, align 4
  %351 = load i32, i32* %stopCriterion, align 4
  %cmp428 = icmp sgt i32 %350, %351
  br i1 %cmp428, label %if.then.430, label %if.end.909

if.then.430:                                      ; preds = %if.end.389
  store i32 5, i32* %prednum, align 4
  store i32 0, i32* %patternStop, align 4
  store i32 0, i32* %pointNumber, align 4
  store i32 0, i32* %nextLast, align 4
  store i32 0, i32* %totalCheckPts, align 4
  store i32 0, i32* %motionDirection, align 4
  %352 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %352, i32 0, i32 3
  %353 = load i32, i32* %current_mb_nr, align 4
  %354 = load i16, i16* %mb_x, align 2
  %conv431 = sext i16 %354 to i32
  %sub432 = sub nsw i32 %conv431, 1
  %355 = load i16, i16* %mb_y, align 2
  %conv433 = sext i16 %355 to i32
  call void @getLuma4x4Neighbour(i32 %353, i32 %sub432, i32 %conv433, %struct.pix_pos* %block_a)
  %356 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr434 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %356, i32 0, i32 3
  %357 = load i32, i32* %current_mb_nr434, align 4
  %358 = load i16, i16* %mb_x, align 2
  %conv435 = sext i16 %358 to i32
  %359 = load i16, i16* %mb_y, align 2
  %conv436 = sext i16 %359 to i32
  %sub437 = sub nsw i32 %conv436, 1
  call void @getLuma4x4Neighbour(i32 %357, i32 %conv435, i32 %sub437, %struct.pix_pos* %block_b)
  %360 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr438 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %360, i32 0, i32 3
  %361 = load i32, i32* %current_mb_nr438, align 4
  %362 = load i16, i16* %mb_x, align 2
  %conv439 = sext i16 %362 to i32
  %363 = load i16, i16* %blocksize_x, align 2
  %conv440 = sext i16 %363 to i32
  %add441 = add nsw i32 %conv439, %conv440
  %364 = load i16, i16* %mb_y, align 2
  %conv442 = sext i16 %364 to i32
  %sub443 = sub nsw i32 %conv442, 1
  call void @getLuma4x4Neighbour(i32 %361, i32 %add441, i32 %sub443, %struct.pix_pos* %block_c)
  %365 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr444 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %365, i32 0, i32 3
  %366 = load i32, i32* %current_mb_nr444, align 4
  %367 = load i16, i16* %mb_x, align 2
  %conv445 = sext i16 %367 to i32
  %sub446 = sub nsw i32 %conv445, 1
  %368 = load i16, i16* %mb_y, align 2
  %conv447 = sext i16 %368 to i32
  %sub448 = sub nsw i32 %conv447, 1
  call void @getLuma4x4Neighbour(i32 %366, i32 %sub446, i32 %sub448, %struct.pix_pos* %block_d)
  %369 = load i16, i16* %mb_y, align 2
  %conv449 = sext i16 %369 to i32
  %cmp450 = icmp sgt i32 %conv449, 0
  br i1 %cmp450, label %if.then.452, label %if.end.486

if.then.452:                                      ; preds = %if.then.430
  %370 = load i16, i16* %mb_x, align 2
  %conv453 = sext i16 %370 to i32
  %cmp454 = icmp slt i32 %conv453, 8
  br i1 %cmp454, label %if.then.456, label %if.else.476

if.then.456:                                      ; preds = %if.then.452
  %371 = load i16, i16* %mb_y, align 2
  %conv457 = sext i16 %371 to i32
  %cmp458 = icmp eq i32 %conv457, 8
  br i1 %cmp458, label %if.then.460, label %if.else.466

if.then.460:                                      ; preds = %if.then.456
  %372 = load i16, i16* %blocksize_x, align 2
  %conv461 = sext i16 %372 to i32
  %cmp462 = icmp eq i32 %conv461, 16
  br i1 %cmp462, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %if.then.460
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available, align 4
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.464, %if.then.460
  br label %if.end.475

if.else.466:                                      ; preds = %if.then.456
  %373 = load i16, i16* %mb_x, align 2
  %conv467 = sext i16 %373 to i32
  %374 = load i16, i16* %blocksize_x, align 2
  %conv468 = sext i16 %374 to i32
  %add469 = add nsw i32 %conv467, %conv468
  %cmp470 = icmp eq i32 %add469, 8
  br i1 %cmp470, label %if.then.472, label %if.end.474

if.then.472:                                      ; preds = %if.else.466
  %available473 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available473, align 4
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.472, %if.else.466
  br label %if.end.475

if.end.475:                                       ; preds = %if.end.474, %if.end.465
  br label %if.end.485

if.else.476:                                      ; preds = %if.then.452
  %375 = load i16, i16* %mb_x, align 2
  %conv477 = sext i16 %375 to i32
  %376 = load i16, i16* %blocksize_x, align 2
  %conv478 = sext i16 %376 to i32
  %add479 = add nsw i32 %conv477, %conv478
  %cmp480 = icmp eq i32 %add479, 16
  br i1 %cmp480, label %if.then.482, label %if.end.484

if.then.482:                                      ; preds = %if.else.476
  %available483 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %block_c, i32 0, i32 0
  store i32 0, i32* %available483, align 4
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.482, %if.else.476
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.end.475
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.then.430
  %377 = load i32, i32* %blocktype.addr, align 4
  %idxprom487 = sext i32 %377 to i64
  %arrayidx488 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom487
  %378 = load i32, i32* %arrayidx488, align 4
  %mul489 = mul nsw i32 11, %378
  %shr490 = ashr i32 %mul489, 3
  store i32 %shr490, i32* %stopCriterion, align 4
  %379 = load i32, i32* %list.addr, align 4
  %380 = load i32, i32* %list_offset.addr, align 4
  %381 = load i16, i16* %ref.addr, align 2
  %382 = load i32, i32* %list.addr, align 4
  %idxprom491 = sext i32 %382 to i64
  %383 = load i8***, i8**** %refPic.addr, align 8
  %arrayidx492 = getelementptr inbounds i8**, i8*** %383, i64 %idxprom491
  %384 = load i8**, i8*** %arrayidx492, align 8
  %385 = load i32, i32* %list.addr, align 4
  %idxprom493 = sext i32 %385 to i64
  %386 = load i16****, i16***** %tmp_mv.addr, align 8
  %arrayidx494 = getelementptr inbounds i16***, i16**** %386, i64 %idxprom493
  %387 = load i16***, i16**** %arrayidx494, align 8
  %388 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %call495 = call signext i16 @EPZSSpatialPredictors(%struct.pix_pos* byval align 8 %block_a, %struct.pix_pos* byval align 8 %block_b, %struct.pix_pos* byval align 8 %block_c, %struct.pix_pos* byval align 8 %block_d, i32 %379, i32 %380, i16 signext %381, i8** %384, i16*** %387, %struct.MEPatternNode* %388)
  store i16 %call495, i16* %invalid_refs, align 2
  store i32 0, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.486
  %389 = load i32, i32* %pos, align 4
  %390 = load i32, i32* %prednum, align 4
  %cmp496 = icmp slt i32 %389, %390
  br i1 %cmp496, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %391 = load i32, i32* %pos, align 4
  %idxprom498 = sext i32 %391 to i64
  %392 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %point = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %392, i32 0, i32 1
  %393 = load %struct.SPoint*, %struct.SPoint** %point, align 8
  %arrayidx499 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %393, i64 %idxprom498
  %mv500 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx499, i32 0, i32 0
  %arrayidx501 = getelementptr inbounds [2 x i32], [2 x i32]* %mv500, i32 0, i64 0
  %394 = load i32, i32* %arrayidx501, align 4
  %arrayidx502 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  store i32 %394, i32* %arrayidx502, align 4
  %395 = load i32, i32* %pos, align 4
  %idxprom503 = sext i32 %395 to i64
  %396 = load %struct.MEPatternNode*, %struct.MEPatternNode** @predictor, align 8
  %point504 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %396, i32 0, i32 1
  %397 = load %struct.SPoint*, %struct.SPoint** %point504, align 8
  %arrayidx505 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %397, i64 %idxprom503
  %mv506 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx505, i32 0, i32 0
  %arrayidx507 = getelementptr inbounds [2 x i32], [2 x i32]* %mv506, i32 0, i64 1
  %398 = load i32, i32* %arrayidx507, align 4
  %arrayidx508 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  store i32 %398, i32* %arrayidx508, align 4
  %arrayidx509 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %399 = load i32, i32* %arrayidx509, align 4
  %400 = load i16*, i16** %mv.addr, align 8
  %arrayidx510 = getelementptr inbounds i16, i16* %400, i64 0
  %401 = load i16, i16* %arrayidx510, align 2
  %conv511 = sext i16 %401 to i32
  %sub512 = sub nsw i32 %399, %conv511
  %call513 = call i32 @iabs(i32 %sub512)
  %402 = load i32, i32* %search_range.addr, align 4
  %cmp514 = icmp sgt i32 %call513, %402
  br i1 %cmp514, label %land.lhs.true.523, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx516 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %403 = load i32, i32* %arrayidx516, align 4
  %404 = load i16*, i16** %mv.addr, align 8
  %arrayidx517 = getelementptr inbounds i16, i16* %404, i64 1
  %405 = load i16, i16* %arrayidx517, align 2
  %conv518 = sext i16 %405 to i32
  %sub519 = sub nsw i32 %403, %conv518
  %call520 = call i32 @iabs(i32 %sub519)
  %406 = load i32, i32* %search_range.addr, align 4
  %cmp521 = icmp sgt i32 %call520, %406
  br i1 %cmp521, label %land.lhs.true.523, label %if.end.530

land.lhs.true.523:                                ; preds = %lor.lhs.false, %for.body
  %arrayidx524 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %407 = load i32, i32* %arrayidx524, align 4
  %tobool525 = icmp ne i32 %407, 0
  br i1 %tobool525, label %if.then.529, label %lor.lhs.false.526

lor.lhs.false.526:                                ; preds = %land.lhs.true.523
  %arrayidx527 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %408 = load i32, i32* %arrayidx527, align 4
  %tobool528 = icmp ne i32 %408, 0
  br i1 %tobool528, label %if.then.529, label %if.end.530

if.then.529:                                      ; preds = %lor.lhs.false.526, %land.lhs.true.523
  br label %for.inc

if.end.530:                                       ; preds = %lor.lhs.false.526, %lor.lhs.false
  %arrayidx531 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %409 = load i32, i32* %arrayidx531, align 4
  %410 = load i16*, i16** %mv.addr, align 8
  %arrayidx532 = getelementptr inbounds i16, i16* %410, i64 0
  %411 = load i16, i16* %arrayidx532, align 2
  %conv533 = sext i16 %411 to i32
  %sub534 = sub nsw i32 %409, %conv533
  %call535 = call i32 @iabs(i32 %sub534)
  %412 = load i32, i32* %search_range.addr, align 4
  %cmp536 = icmp sle i32 %call535, %412
  br i1 %cmp536, label %land.lhs.true.538, label %if.end.570

land.lhs.true.538:                                ; preds = %if.end.530
  %arrayidx539 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %413 = load i32, i32* %arrayidx539, align 4
  %414 = load i16*, i16** %mv.addr, align 8
  %arrayidx540 = getelementptr inbounds i16, i16* %414, i64 1
  %415 = load i16, i16* %arrayidx540, align 2
  %conv541 = sext i16 %415 to i32
  %sub542 = sub nsw i32 %413, %conv541
  %call543 = call i32 @iabs(i32 %sub542)
  %416 = load i32, i32* %search_range.addr, align 4
  %cmp544 = icmp sle i32 %call543, %416
  br i1 %cmp544, label %if.then.546, label %if.end.570

if.then.546:                                      ; preds = %land.lhs.true.538
  %417 = load i32, i32* %mapCenter_x, align 4
  %arrayidx547 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %418 = load i32, i32* %arrayidx547, align 4
  %add548 = add nsw i32 %417, %418
  %idxprom549 = sext i32 %add548 to i64
  %419 = load i32, i32* %mapCenter_y, align 4
  %arrayidx550 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %420 = load i32, i32* %arrayidx550, align 4
  %add551 = add nsw i32 %419, %420
  %idxprom552 = sext i32 %add551 to i64
  %421 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx553 = getelementptr inbounds i16*, i16** %421, i64 %idxprom552
  %422 = load i16*, i16** %arrayidx553, align 8
  %arrayidx554 = getelementptr inbounds i16, i16* %422, i64 %idxprom549
  %423 = load i16, i16* %arrayidx554, align 2
  %conv555 = sext i16 %423 to i32
  %424 = load i16, i16* @EPZSBlkCount, align 2
  %conv556 = sext i16 %424 to i32
  %cmp557 = icmp eq i32 %conv555, %conv556
  br i1 %cmp557, label %if.then.559, label %if.else.560

if.then.559:                                      ; preds = %if.then.546
  br label %for.inc

if.else.560:                                      ; preds = %if.then.546
  %425 = load i16, i16* @EPZSBlkCount, align 2
  %426 = load i32, i32* %mapCenter_x, align 4
  %arrayidx561 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %427 = load i32, i32* %arrayidx561, align 4
  %add562 = add nsw i32 %426, %427
  %idxprom563 = sext i32 %add562 to i64
  %428 = load i32, i32* %mapCenter_y, align 4
  %arrayidx564 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %429 = load i32, i32* %arrayidx564, align 4
  %add565 = add nsw i32 %428, %429
  %idxprom566 = sext i32 %add565 to i64
  %430 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx567 = getelementptr inbounds i16*, i16** %430, i64 %idxprom566
  %431 = load i16*, i16** %arrayidx567, align 8
  %arrayidx568 = getelementptr inbounds i16, i16* %431, i64 %idxprom563
  store i16 %425, i16* %arrayidx568, align 2
  br label %if.end.569

if.end.569:                                       ; preds = %if.else.560
  br label %if.end.570

if.end.570:                                       ; preds = %if.end.569, %land.lhs.true.538, %if.end.530
  %432 = load i32, i32* %pic_pix_x.addr, align 4
  %arrayidx571 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %433 = load i32, i32* %arrayidx571, align 4
  %add572 = add nsw i32 %432, %433
  %434 = load i32, i32* @mv_rescale, align 4
  %shl573 = shl i32 %add572, %434
  store i32 %shl573, i32* %cand_x, align 4
  %435 = load i32, i32* %pic_pix_y.addr, align 4
  %arrayidx574 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %436 = load i32, i32* %arrayidx574, align 4
  %add575 = add nsw i32 %435, %436
  %437 = load i32, i32* @mv_rescale, align 4
  %shl576 = shl i32 %add575, %437
  store i32 %shl576, i32* %cand_y, align 4
  %438 = load i32, i32* %lambda_factor.addr, align 4
  %439 = load i32, i32* %center1_x, align 4
  %440 = load i32, i32* @mv_rescale, align 4
  %shl577 = shl i32 %439, %440
  %441 = load i32, i32* %pred_x1, align 4
  %sub578 = sub nsw i32 %shl577, %441
  %idxprom579 = sext i32 %sub578 to i64
  %442 = load i32*, i32** @mvbits, align 8
  %arrayidx580 = getelementptr inbounds i32, i32* %442, i64 %idxprom579
  %443 = load i32, i32* %arrayidx580, align 4
  %444 = load i32, i32* %center1_y, align 4
  %445 = load i32, i32* @mv_rescale, align 4
  %shl581 = shl i32 %444, %445
  %446 = load i32, i32* %pred_y1, align 4
  %sub582 = sub nsw i32 %shl581, %446
  %idxprom583 = sext i32 %sub582 to i64
  %447 = load i32*, i32** @mvbits, align 8
  %arrayidx584 = getelementptr inbounds i32, i32* %447, i64 %idxprom583
  %448 = load i32, i32* %arrayidx584, align 4
  %add585 = add nsw i32 %443, %448
  %mul586 = mul nsw i32 %438, %add585
  %shr587 = ashr i32 %mul586, 16
  store i32 %shr587, i32* %mcost, align 4
  %449 = load i32, i32* %lambda_factor.addr, align 4
  %450 = load i32, i32* %cand_x, align 4
  %451 = load i32, i32* %pred_x2, align 4
  %sub588 = sub nsw i32 %450, %451
  %idxprom589 = sext i32 %sub588 to i64
  %452 = load i32*, i32** @mvbits, align 8
  %arrayidx590 = getelementptr inbounds i32, i32* %452, i64 %idxprom589
  %453 = load i32, i32* %arrayidx590, align 4
  %454 = load i32, i32* %cand_y, align 4
  %455 = load i32, i32* %pred_y2, align 4
  %sub591 = sub nsw i32 %454, %455
  %idxprom592 = sext i32 %sub591 to i64
  %456 = load i32*, i32** @mvbits, align 8
  %arrayidx593 = getelementptr inbounds i32, i32* %456, i64 %idxprom592
  %457 = load i32, i32* %arrayidx593, align 4
  %add594 = add nsw i32 %453, %457
  %mul595 = mul nsw i32 %449, %add594
  %shr596 = ashr i32 %mul595, 16
  %458 = load i32, i32* %mcost, align 4
  %add597 = add nsw i32 %458, %shr596
  store i32 %add597, i32* %mcost, align 4
  %459 = load i32, i32* %mcost, align 4
  %460 = load i32, i32* %second_mcost, align 4
  %cmp598 = icmp sge i32 %459, %460
  br i1 %cmp598, label %if.then.600, label %if.end.601

if.then.600:                                      ; preds = %if.end.570
  br label %for.inc

if.end.601:                                       ; preds = %if.end.570
  %461 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %462 = load i16*, i16** %cur_pic.addr, align 8
  %463 = load i16, i16* %blocksize_y, align 2
  %conv602 = sext i16 %463 to i32
  %464 = load i16, i16* %blocksize_x, align 2
  %conv603 = sext i16 %464 to i32
  %465 = load i32, i32* %second_mcost, align 4
  %466 = load i32, i32* %mcost, align 4
  %sub604 = sub nsw i32 %465, %466
  %467 = load i32, i32* %center1_x, align 4
  %468 = load i32, i32* @mv_rescale, align 4
  %shl605 = shl i32 %467, %468
  %add606 = add nsw i32 %shl605, 80
  %469 = load i32, i32* %center1_y, align 4
  %470 = load i32, i32* @mv_rescale, align 4
  %shl607 = shl i32 %469, %470
  %add608 = add nsw i32 %shl607, 80
  %471 = load i32, i32* %cand_x, align 4
  %add609 = add nsw i32 %471, 80
  %472 = load i32, i32* %cand_y, align 4
  %add610 = add nsw i32 %472, 80
  %call611 = call i32 %461(i16* %462, i32 %conv602, i32 %conv603, i32 %sub604, i32 %add606, i32 %add608, i32 %add609, i32 %add610)
  %473 = load i32, i32* %mcost, align 4
  %add612 = add nsw i32 %473, %call611
  store i32 %add612, i32* %mcost, align 4
  %474 = load i32, i32* %mcost, align 4
  %475 = load i32, i32* %min_mcost.addr, align 4
  %cmp613 = icmp slt i32 %474, %475
  br i1 %cmp613, label %if.then.615, label %if.else.624

if.then.615:                                      ; preds = %if.end.601
  %arrayidx616 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %476 = load i32, i32* %arrayidx616, align 4
  %arrayidx617 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 0
  store i32 %476, i32* %arrayidx617, align 4
  %arrayidx618 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %477 = load i32, i32* %arrayidx618, align 4
  %arrayidx619 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 1
  store i32 %477, i32* %arrayidx619, align 4
  %478 = load i32, i32* %min_mcost.addr, align 4
  store i32 %478, i32* %second_mcost, align 4
  %arrayidx620 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %479 = load i32, i32* %arrayidx620, align 4
  %arrayidx621 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  store i32 %479, i32* %arrayidx621, align 4
  %arrayidx622 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %480 = load i32, i32* %arrayidx622, align 4
  %arrayidx623 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  store i32 %480, i32* %arrayidx623, align 4
  %481 = load i32, i32* %mcost, align 4
  store i32 %481, i32* %min_mcost.addr, align 4
  store i8 1, i8* %checkMedian, align 1
  br label %if.end.633

if.else.624:                                      ; preds = %if.end.601
  %482 = load i32, i32* %mcost, align 4
  %483 = load i32, i32* %second_mcost, align 4
  %cmp625 = icmp slt i32 %482, %483
  br i1 %cmp625, label %if.then.627, label %if.end.632

if.then.627:                                      ; preds = %if.else.624
  %arrayidx628 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %484 = load i32, i32* %arrayidx628, align 4
  %arrayidx629 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 0
  store i32 %484, i32* %arrayidx629, align 4
  %arrayidx630 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %485 = load i32, i32* %arrayidx630, align 4
  %arrayidx631 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 1
  store i32 %485, i32* %arrayidx631, align 4
  %486 = load i32, i32* %mcost, align 4
  store i32 %486, i32* %second_mcost, align 4
  store i8 1, i8* %checkMedian, align 1
  br label %if.end.632

if.end.632:                                       ; preds = %if.then.627, %if.else.624
  br label %if.end.633

if.end.633:                                       ; preds = %if.end.632, %if.then.615
  br label %for.inc

for.inc:                                          ; preds = %if.end.633, %if.then.600, %if.then.559, %if.then.529
  %487 = load i32, i32* %pos, align 4
  %inc634 = add nsw i32 %487, 1
  store i32 %inc634, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %488 = load i32, i32* %min_mcost.addr, align 4
  %489 = load i32, i32* %stopCriterion, align 4
  %cmp635 = icmp sgt i32 %488, %489
  br i1 %cmp635, label %if.then.637, label %if.end.908

if.then.637:                                      ; preds = %for.end
  %490 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSPattern = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %490, i32 0, i32 93
  %491 = load i32, i32* %EPZSPattern, align 4
  %cmp638 = icmp ne i32 %491, 0
  br i1 %cmp638, label %if.then.640, label %if.end.693

if.then.640:                                      ; preds = %if.then.637
  %492 = load i32, i32* %min_mcost.addr, align 4
  %493 = load i32, i32* %stopCriterion, align 4
  %494 = load i32, i32* %blocktype.addr, align 4
  %idxprom641 = sext i32 %494 to i64
  %arrayidx642 = getelementptr inbounds [8 x i32], [8 x i32]* @medthres, i32 0, i64 %idxprom641
  %495 = load i32, i32* %arrayidx642, align 4
  %mul643 = mul nsw i32 3, %495
  %shr644 = ashr i32 %mul643, 1
  %add645 = add nsw i32 %493, %shr644
  %cmp646 = icmp slt i32 %492, %add645
  br i1 %cmp646, label %if.then.648, label %if.else.679

if.then.648:                                      ; preds = %if.then.640
  %arrayidx649 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %496 = load i32, i32* %arrayidx649, align 4
  %cmp650 = icmp eq i32 %496, 0
  br i1 %cmp650, label %land.lhs.true.652, label %lor.lhs.false.656

land.lhs.true.652:                                ; preds = %if.then.648
  %arrayidx653 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %497 = load i32, i32* %arrayidx653, align 4
  %cmp654 = icmp eq i32 %497, 0
  br i1 %cmp654, label %if.then.676, label %lor.lhs.false.656

lor.lhs.false.656:                                ; preds = %land.lhs.true.652, %if.then.648
  %arrayidx657 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %498 = load i32, i32* %arrayidx657, align 4
  %499 = load i16*, i16** %mv.addr, align 8
  %arrayidx658 = getelementptr inbounds i16, i16* %499, i64 0
  %500 = load i16, i16* %arrayidx658, align 2
  %conv659 = sext i16 %500 to i32
  %sub660 = sub nsw i32 %498, %conv659
  %call661 = call i32 @iabs(i32 %sub660)
  %501 = load i32, i32* @mv_rescale, align 4
  %sub662 = sub nsw i32 2, %501
  %shl663 = shl i32 2, %sub662
  %cmp664 = icmp slt i32 %call661, %shl663
  br i1 %cmp664, label %land.lhs.true.666, label %if.else.677

land.lhs.true.666:                                ; preds = %lor.lhs.false.656
  %arrayidx667 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %502 = load i32, i32* %arrayidx667, align 4
  %503 = load i16*, i16** %mv.addr, align 8
  %arrayidx668 = getelementptr inbounds i16, i16* %503, i64 1
  %504 = load i16, i16* %arrayidx668, align 2
  %conv669 = sext i16 %504 to i32
  %sub670 = sub nsw i32 %502, %conv669
  %call671 = call i32 @iabs(i32 %sub670)
  %505 = load i32, i32* @mv_rescale, align 4
  %sub672 = sub nsw i32 2, %505
  %shl673 = shl i32 2, %sub672
  %cmp674 = icmp slt i32 %call671, %shl673
  br i1 %cmp674, label %if.then.676, label %if.else.677

if.then.676:                                      ; preds = %land.lhs.true.666, %land.lhs.true.652
  %506 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  store %struct.MEPatternNode* %506, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.678

if.else.677:                                      ; preds = %land.lhs.true.666, %lor.lhs.false.656
  %507 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %507, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.678

if.end.678:                                       ; preds = %if.else.677, %if.then.676
  br label %if.end.692

if.else.679:                                      ; preds = %if.then.640
  %508 = load i32, i32* %blocktype.addr, align 4
  %cmp680 = icmp sgt i32 %508, 5
  br i1 %cmp680, label %if.then.689, label %lor.lhs.false.682

lor.lhs.false.682:                                ; preds = %if.else.679
  %509 = load i16, i16* %ref.addr, align 2
  %conv683 = sext i16 %509 to i32
  %cmp684 = icmp sgt i32 %conv683, 0
  br i1 %cmp684, label %land.lhs.true.686, label %if.else.690

land.lhs.true.686:                                ; preds = %lor.lhs.false.682
  %510 = load i32, i32* %blocktype.addr, align 4
  %cmp687 = icmp ne i32 %510, 1
  br i1 %cmp687, label %if.then.689, label %if.else.690

if.then.689:                                      ; preds = %land.lhs.true.686, %if.else.679
  %511 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %511, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.691

if.else.690:                                      ; preds = %land.lhs.true.686, %lor.lhs.false.682
  %512 = load %struct.MEPatternNode*, %struct.MEPatternNode** @searchPattern, align 8
  store %struct.MEPatternNode* %512, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.691

if.end.691:                                       ; preds = %if.else.690, %if.then.689
  br label %if.end.692

if.end.692:                                       ; preds = %if.end.691, %if.end.678
  br label %if.end.693

if.end.693:                                       ; preds = %if.end.692, %if.then.637
  %513 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %513, i32 0, i32 0
  %514 = load i32, i32* %searchPoints, align 4
  store i32 %514, i32* %totalCheckPts, align 4
  %arrayidx694 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %515 = load i32, i32* %arrayidx694, align 4
  store i32 %515, i32* %center2_x, align 4
  %arrayidx695 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %516 = load i32, i32* %arrayidx695, align 4
  store i32 %516, i32* %center2_y, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.693, %if.end.904
  br label %do.body

do.body:                                          ; preds = %do.cond.843, %while.body
  %517 = load i32, i32* %totalCheckPts, align 4
  store i32 %517, i32* %checkPts, align 4
  br label %do.body.696

do.body.696:                                      ; preds = %do.cond, %do.body
  %518 = load i32, i32* %center2_x, align 4
  %519 = load i32, i32* %pointNumber, align 4
  %idxprom697 = sext i32 %519 to i64
  %520 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point698 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %520, i32 0, i32 1
  %521 = load %struct.SPoint*, %struct.SPoint** %point698, align 8
  %arrayidx699 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %521, i64 %idxprom697
  %mv700 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx699, i32 0, i32 0
  %arrayidx701 = getelementptr inbounds [2 x i32], [2 x i32]* %mv700, i32 0, i64 0
  %522 = load i32, i32* %arrayidx701, align 4
  %add702 = add nsw i32 %518, %522
  %arrayidx703 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  store i32 %add702, i32* %arrayidx703, align 4
  %523 = load i32, i32* %center2_y, align 4
  %524 = load i32, i32* %pointNumber, align 4
  %idxprom704 = sext i32 %524 to i64
  %525 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point705 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %525, i32 0, i32 1
  %526 = load %struct.SPoint*, %struct.SPoint** %point705, align 8
  %arrayidx706 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %526, i64 %idxprom704
  %mv707 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx706, i32 0, i32 0
  %arrayidx708 = getelementptr inbounds [2 x i32], [2 x i32]* %mv707, i32 0, i64 1
  %527 = load i32, i32* %arrayidx708, align 4
  %add709 = add nsw i32 %523, %527
  %arrayidx710 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  store i32 %add709, i32* %arrayidx710, align 4
  %528 = load i32, i32* %pic_pix_x.addr, align 4
  %arrayidx711 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %529 = load i32, i32* %arrayidx711, align 4
  %add712 = add nsw i32 %528, %529
  %530 = load i32, i32* @mv_rescale, align 4
  %shl713 = shl i32 %add712, %530
  store i32 %shl713, i32* %cand_x, align 4
  %531 = load i32, i32* %pic_pix_y.addr, align 4
  %arrayidx714 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %532 = load i32, i32* %arrayidx714, align 4
  %add715 = add nsw i32 %531, %532
  %533 = load i32, i32* @mv_rescale, align 4
  %shl716 = shl i32 %add715, %533
  store i32 %shl716, i32* %cand_y, align 4
  %arrayidx717 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %534 = load i32, i32* %arrayidx717, align 4
  %535 = load i16*, i16** %mv.addr, align 8
  %arrayidx718 = getelementptr inbounds i16, i16* %535, i64 0
  %536 = load i16, i16* %arrayidx718, align 2
  %conv719 = sext i16 %536 to i32
  %sub720 = sub nsw i32 %534, %conv719
  %call721 = call i32 @iabs(i32 %sub720)
  %537 = load i32, i32* %search_range.addr, align 4
  %cmp722 = icmp sle i32 %call721, %537
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.809

land.lhs.true.724:                                ; preds = %do.body.696
  %arrayidx725 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %538 = load i32, i32* %arrayidx725, align 4
  %539 = load i16*, i16** %mv.addr, align 8
  %arrayidx726 = getelementptr inbounds i16, i16* %539, i64 1
  %540 = load i16, i16* %arrayidx726, align 2
  %conv727 = sext i16 %540 to i32
  %sub728 = sub nsw i32 %538, %conv727
  %call729 = call i32 @iabs(i32 %sub728)
  %541 = load i32, i32* %search_range.addr, align 4
  %cmp730 = icmp sle i32 %call729, %541
  br i1 %cmp730, label %if.then.732, label %if.end.809

if.then.732:                                      ; preds = %land.lhs.true.724
  %542 = load i32, i32* %mapCenter_x, align 4
  %arrayidx733 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %543 = load i32, i32* %arrayidx733, align 4
  %add734 = add nsw i32 %542, %543
  %idxprom735 = sext i32 %add734 to i64
  %544 = load i32, i32* %mapCenter_y, align 4
  %arrayidx736 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %545 = load i32, i32* %arrayidx736, align 4
  %add737 = add nsw i32 %544, %545
  %idxprom738 = sext i32 %add737 to i64
  %546 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx739 = getelementptr inbounds i16*, i16** %546, i64 %idxprom738
  %547 = load i16*, i16** %arrayidx739, align 8
  %arrayidx740 = getelementptr inbounds i16, i16* %547, i64 %idxprom735
  %548 = load i16, i16* %arrayidx740, align 2
  %conv741 = sext i16 %548 to i32
  %549 = load i16, i16* @EPZSBlkCount, align 2
  %conv742 = sext i16 %549 to i32
  %cmp743 = icmp ne i32 %conv741, %conv742
  br i1 %cmp743, label %if.then.745, label %if.else.754

if.then.745:                                      ; preds = %if.then.732
  %550 = load i16, i16* @EPZSBlkCount, align 2
  %551 = load i32, i32* %mapCenter_x, align 4
  %arrayidx746 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %552 = load i32, i32* %arrayidx746, align 4
  %add747 = add nsw i32 %551, %552
  %idxprom748 = sext i32 %add747 to i64
  %553 = load i32, i32* %mapCenter_y, align 4
  %arrayidx749 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %554 = load i32, i32* %arrayidx749, align 4
  %add750 = add nsw i32 %553, %554
  %idxprom751 = sext i32 %add750 to i64
  %555 = load i16**, i16*** @EPZSMap, align 8
  %arrayidx752 = getelementptr inbounds i16*, i16** %555, i64 %idxprom751
  %556 = load i16*, i16** %arrayidx752, align 8
  %arrayidx753 = getelementptr inbounds i16, i16* %556, i64 %idxprom748
  store i16 %550, i16* %arrayidx753, align 2
  br label %if.end.764

if.else.754:                                      ; preds = %if.then.732
  %557 = load i32, i32* %pointNumber, align 4
  %add755 = add nsw i32 %557, 1
  store i32 %add755, i32* %pointNumber, align 4
  %558 = load i32, i32* %pointNumber, align 4
  %559 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints756 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %559, i32 0, i32 0
  %560 = load i32, i32* %searchPoints756, align 4
  %cmp757 = icmp sge i32 %558, %560
  br i1 %cmp757, label %if.then.759, label %if.end.762

if.then.759:                                      ; preds = %if.else.754
  %561 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints760 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %561, i32 0, i32 0
  %562 = load i32, i32* %searchPoints760, align 4
  %563 = load i32, i32* %pointNumber, align 4
  %sub761 = sub nsw i32 %563, %562
  store i32 %sub761, i32* %pointNumber, align 4
  br label %if.end.762

if.end.762:                                       ; preds = %if.then.759, %if.else.754
  %564 = load i32, i32* %checkPts, align 4
  %sub763 = sub nsw i32 %564, 1
  store i32 %sub763, i32* %checkPts, align 4
  br label %do.cond

if.end.764:                                       ; preds = %if.then.745
  %565 = load i32, i32* %lambda_factor.addr, align 4
  %566 = load i32, i32* %center1_x, align 4
  %567 = load i32, i32* @mv_rescale, align 4
  %shl765 = shl i32 %566, %567
  %568 = load i32, i32* %pred_x1, align 4
  %sub766 = sub nsw i32 %shl765, %568
  %idxprom767 = sext i32 %sub766 to i64
  %569 = load i32*, i32** @mvbits, align 8
  %arrayidx768 = getelementptr inbounds i32, i32* %569, i64 %idxprom767
  %570 = load i32, i32* %arrayidx768, align 4
  %571 = load i32, i32* %center1_y, align 4
  %572 = load i32, i32* @mv_rescale, align 4
  %shl769 = shl i32 %571, %572
  %573 = load i32, i32* %pred_y1, align 4
  %sub770 = sub nsw i32 %shl769, %573
  %idxprom771 = sext i32 %sub770 to i64
  %574 = load i32*, i32** @mvbits, align 8
  %arrayidx772 = getelementptr inbounds i32, i32* %574, i64 %idxprom771
  %575 = load i32, i32* %arrayidx772, align 4
  %add773 = add nsw i32 %570, %575
  %mul774 = mul nsw i32 %565, %add773
  %shr775 = ashr i32 %mul774, 16
  store i32 %shr775, i32* %mcost, align 4
  %576 = load i32, i32* %lambda_factor.addr, align 4
  %577 = load i32, i32* %cand_x, align 4
  %578 = load i32, i32* %pred_x2, align 4
  %sub776 = sub nsw i32 %577, %578
  %idxprom777 = sext i32 %sub776 to i64
  %579 = load i32*, i32** @mvbits, align 8
  %arrayidx778 = getelementptr inbounds i32, i32* %579, i64 %idxprom777
  %580 = load i32, i32* %arrayidx778, align 4
  %581 = load i32, i32* %cand_y, align 4
  %582 = load i32, i32* %pred_y2, align 4
  %sub779 = sub nsw i32 %581, %582
  %idxprom780 = sext i32 %sub779 to i64
  %583 = load i32*, i32** @mvbits, align 8
  %arrayidx781 = getelementptr inbounds i32, i32* %583, i64 %idxprom780
  %584 = load i32, i32* %arrayidx781, align 4
  %add782 = add nsw i32 %580, %584
  %mul783 = mul nsw i32 %576, %add782
  %shr784 = ashr i32 %mul783, 16
  %585 = load i32, i32* %mcost, align 4
  %add785 = add nsw i32 %585, %shr784
  store i32 %add785, i32* %mcost, align 4
  %586 = load i32, i32* %mcost, align 4
  %587 = load i32, i32* %min_mcost.addr, align 4
  %cmp786 = icmp slt i32 %586, %587
  br i1 %cmp786, label %if.then.788, label %if.end.808

if.then.788:                                      ; preds = %if.end.764
  %588 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %589 = load i16*, i16** %cur_pic.addr, align 8
  %590 = load i16, i16* %blocksize_y, align 2
  %conv789 = sext i16 %590 to i32
  %591 = load i16, i16* %blocksize_x, align 2
  %conv790 = sext i16 %591 to i32
  %592 = load i32, i32* %min_mcost.addr, align 4
  %593 = load i32, i32* %mcost, align 4
  %sub791 = sub nsw i32 %592, %593
  %594 = load i32, i32* %center1_x, align 4
  %595 = load i32, i32* @mv_rescale, align 4
  %shl792 = shl i32 %594, %595
  %add793 = add nsw i32 %shl792, 80
  %596 = load i32, i32* %center1_y, align 4
  %597 = load i32, i32* @mv_rescale, align 4
  %shl794 = shl i32 %596, %597
  %add795 = add nsw i32 %shl794, 80
  %598 = load i32, i32* %cand_x, align 4
  %add796 = add nsw i32 %598, 80
  %599 = load i32, i32* %cand_y, align 4
  %add797 = add nsw i32 %599, 80
  %call798 = call i32 %588(i16* %589, i32 %conv789, i32 %conv790, i32 %sub791, i32 %add793, i32 %add795, i32 %add796, i32 %add797)
  %600 = load i32, i32* %mcost, align 4
  %add799 = add nsw i32 %600, %call798
  store i32 %add799, i32* %mcost, align 4
  %601 = load i32, i32* %mcost, align 4
  %602 = load i32, i32* %min_mcost.addr, align 4
  %cmp800 = icmp slt i32 %601, %602
  br i1 %cmp800, label %if.then.802, label %if.end.807

if.then.802:                                      ; preds = %if.then.788
  %603 = load i32, i32* %mcost, align 4
  store i32 %603, i32* %min_mcost.addr, align 4
  %arrayidx803 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 0
  %604 = load i32, i32* %arrayidx803, align 4
  %arrayidx804 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  store i32 %604, i32* %arrayidx804, align 4
  %arrayidx805 = getelementptr inbounds [2 x i32], [2 x i32]* %tmv, i32 0, i64 1
  %605 = load i32, i32* %arrayidx805, align 4
  %arrayidx806 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  store i32 %605, i32* %arrayidx806, align 4
  %606 = load i32, i32* %pointNumber, align 4
  store i32 %606, i32* %motionDirection, align 4
  br label %if.end.807

if.end.807:                                       ; preds = %if.then.802, %if.then.788
  br label %if.end.808

if.end.808:                                       ; preds = %if.end.807, %if.end.764
  br label %if.end.809

if.end.809:                                       ; preds = %if.end.808, %land.lhs.true.724, %do.body.696
  %607 = load i32, i32* %pointNumber, align 4
  %add810 = add nsw i32 %607, 1
  store i32 %add810, i32* %pointNumber, align 4
  %608 = load i32, i32* %pointNumber, align 4
  %609 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints811 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %609, i32 0, i32 0
  %610 = load i32, i32* %searchPoints811, align 4
  %cmp812 = icmp sge i32 %608, %610
  br i1 %cmp812, label %if.then.814, label %if.end.817

if.then.814:                                      ; preds = %if.end.809
  %611 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints815 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %611, i32 0, i32 0
  %612 = load i32, i32* %searchPoints815, align 4
  %613 = load i32, i32* %pointNumber, align 4
  %sub816 = sub nsw i32 %613, %612
  store i32 %sub816, i32* %pointNumber, align 4
  br label %if.end.817

if.end.817:                                       ; preds = %if.then.814, %if.end.809
  %614 = load i32, i32* %checkPts, align 4
  %sub818 = sub nsw i32 %614, 1
  store i32 %sub818, i32* %checkPts, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.817, %if.end.762
  %615 = load i32, i32* %checkPts, align 4
  %cmp819 = icmp sgt i32 %615, 0
  br i1 %cmp819, label %do.body.696, label %do.end

do.end:                                           ; preds = %do.cond
  %616 = load i32, i32* %nextLast, align 4
  %tobool821 = icmp ne i32 %616, 0
  br i1 %tobool821, label %if.then.830, label %lor.lhs.false.822

lor.lhs.false.822:                                ; preds = %do.end
  %arrayidx823 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %617 = load i32, i32* %arrayidx823, align 4
  %618 = load i32, i32* %center2_x, align 4
  %cmp824 = icmp eq i32 %617, %618
  br i1 %cmp824, label %land.lhs.true.826, label %if.else.833

land.lhs.true.826:                                ; preds = %lor.lhs.false.822
  %arrayidx827 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %619 = load i32, i32* %arrayidx827, align 4
  %620 = load i32, i32* %center2_y, align 4
  %cmp828 = icmp eq i32 %619, %620
  br i1 %cmp828, label %if.then.830, label %if.else.833

if.then.830:                                      ; preds = %land.lhs.true.826, %do.end
  %621 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %stopSearch = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %621, i32 0, i32 2
  %622 = load i32, i32* %stopSearch, align 4
  store i32 %622, i32* %patternStop, align 4
  %623 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %nextpattern = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %623, i32 0, i32 4
  %624 = load %struct.MEPatternNode*, %struct.MEPatternNode** %nextpattern, align 8
  store %struct.MEPatternNode* %624, %struct.MEPatternNode** %searchPatternF, align 8
  %625 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints831 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %625, i32 0, i32 0
  %626 = load i32, i32* %searchPoints831, align 4
  store i32 %626, i32* %totalCheckPts, align 4
  %627 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %nextLast832 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %627, i32 0, i32 3
  %628 = load i32, i32* %nextLast832, align 4
  store i32 %628, i32* %nextLast, align 4
  store i32 0, i32* %motionDirection, align 4
  store i32 0, i32* %pointNumber, align 4
  br label %if.end.842

if.else.833:                                      ; preds = %land.lhs.true.826, %lor.lhs.false.822
  %629 = load i32, i32* %motionDirection, align 4
  %idxprom834 = sext i32 %629 to i64
  %630 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point835 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %630, i32 0, i32 1
  %631 = load %struct.SPoint*, %struct.SPoint** %point835, align 8
  %arrayidx836 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %631, i64 %idxprom834
  %next_points = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx836, i32 0, i32 2
  %632 = load i32, i32* %next_points, align 4
  store i32 %632, i32* %totalCheckPts, align 4
  %633 = load i32, i32* %motionDirection, align 4
  %idxprom837 = sext i32 %633 to i64
  %634 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %point838 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %634, i32 0, i32 1
  %635 = load %struct.SPoint*, %struct.SPoint** %point838, align 8
  %arrayidx839 = getelementptr inbounds %struct.SPoint, %struct.SPoint* %635, i64 %idxprom837
  %start_nmbr = getelementptr inbounds %struct.SPoint, %struct.SPoint* %arrayidx839, i32 0, i32 1
  %636 = load i32, i32* %start_nmbr, align 4
  store i32 %636, i32* %pointNumber, align 4
  %arrayidx840 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %637 = load i32, i32* %arrayidx840, align 4
  store i32 %637, i32* %center2_x, align 4
  %arrayidx841 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %638 = load i32, i32* %arrayidx841, align 4
  store i32 %638, i32* %center2_y, align 4
  br label %if.end.842

if.end.842:                                       ; preds = %if.else.833, %if.then.830
  br label %do.cond.843

do.cond.843:                                      ; preds = %if.end.842
  %639 = load i32, i32* %patternStop, align 4
  %cmp844 = icmp ne i32 %639, 1
  br i1 %cmp844, label %do.body, label %do.end.846

do.end.846:                                       ; preds = %do.cond.843
  %640 = load i8, i8* %checkMedian, align 1
  %conv847 = zext i8 %640 to i32
  %cmp848 = icmp eq i32 %conv847, 1
  br i1 %cmp848, label %land.lhs.true.850, label %land.end

land.lhs.true.850:                                ; preds = %do.end.846
  %641 = load i32, i32* %blocktype.addr, align 4
  %cmp851 = icmp slt i32 %641, 5
  br i1 %cmp851, label %land.lhs.true.853, label %land.end

land.lhs.true.853:                                ; preds = %land.lhs.true.850
  %642 = load i32, i32* %min_mcost.addr, align 4
  %643 = load i32, i32* %stopCriterion, align 4
  %cmp854 = icmp sgt i32 %642, %643
  br i1 %cmp854, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.853
  %644 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSDual = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %644, i32 0, i32 94
  %645 = load i32, i32* %EPZSDual, align 4
  %cmp856 = icmp sgt i32 %645, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.853, %land.lhs.true.850, %do.end.846
  %646 = phi i1 [ false, %land.lhs.true.853 ], [ false, %land.lhs.true.850 ], [ false, %do.end.846 ], [ %cmp856, %land.rhs ]
  %land.ext = zext i1 %646 to i32
  store i32 %land.ext, i32* %conditionEPZS, align 4
  %647 = load i32, i32* %conditionEPZS, align 4
  %tobool858 = icmp ne i32 %647, 0
  br i1 %tobool858, label %if.end.860, label %if.then.859

if.then.859:                                      ; preds = %land.end
  br label %while.end

if.end.860:                                       ; preds = %land.end
  store i32 0, i32* %pointNumber, align 4
  store i32 0, i32* %patternStop, align 4
  store i32 0, i32* %motionDirection, align 4
  store i32 0, i32* %nextLast, align 4
  %arrayidx861 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %648 = load i32, i32* %arrayidx861, align 4
  %cmp862 = icmp eq i32 %648, 0
  br i1 %cmp862, label %land.lhs.true.864, label %lor.lhs.false.868

land.lhs.true.864:                                ; preds = %if.end.860
  %arrayidx865 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %649 = load i32, i32* %arrayidx865, align 4
  %cmp866 = icmp eq i32 %649, 0
  br i1 %cmp866, label %if.then.880, label %lor.lhs.false.868

lor.lhs.false.868:                                ; preds = %land.lhs.true.864, %if.end.860
  %arrayidx869 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %650 = load i32, i32* %arrayidx869, align 4
  %651 = load i16*, i16** %mv.addr, align 8
  %arrayidx870 = getelementptr inbounds i16, i16* %651, i64 0
  %652 = load i16, i16* %arrayidx870, align 2
  %conv871 = sext i16 %652 to i32
  %cmp872 = icmp eq i32 %650, %conv871
  br i1 %cmp872, label %land.lhs.true.874, label %if.else.903

land.lhs.true.874:                                ; preds = %lor.lhs.false.868
  %arrayidx875 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %653 = load i32, i32* %arrayidx875, align 4
  %654 = load i16*, i16** %mv.addr, align 8
  %arrayidx876 = getelementptr inbounds i16, i16* %654, i64 1
  %655 = load i16, i16* %arrayidx876, align 2
  %conv877 = sext i16 %655 to i32
  %cmp878 = icmp eq i32 %653, %conv877
  br i1 %cmp878, label %if.then.880, label %if.else.903

if.then.880:                                      ; preds = %land.lhs.true.874, %land.lhs.true.864
  %arrayidx881 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %656 = load i32, i32* %arrayidx881, align 4
  %657 = load i16*, i16** %mv.addr, align 8
  %arrayidx882 = getelementptr inbounds i16, i16* %657, i64 0
  %658 = load i16, i16* %arrayidx882, align 2
  %conv883 = sext i16 %658 to i32
  %sub884 = sub nsw i32 %656, %conv883
  %call885 = call i32 @iabs(i32 %sub884)
  %659 = load i32, i32* @mv_rescale, align 4
  %sub886 = sub nsw i32 2, %659
  %shl887 = shl i32 2, %sub886
  %cmp888 = icmp slt i32 %call885, %shl887
  br i1 %cmp888, label %land.lhs.true.890, label %if.else.901

land.lhs.true.890:                                ; preds = %if.then.880
  %arrayidx891 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %660 = load i32, i32* %arrayidx891, align 4
  %661 = load i16*, i16** %mv.addr, align 8
  %arrayidx892 = getelementptr inbounds i16, i16* %661, i64 1
  %662 = load i16, i16* %arrayidx892, align 2
  %conv893 = sext i16 %662 to i32
  %sub894 = sub nsw i32 %660, %conv893
  %call895 = call i32 @iabs(i32 %sub894)
  %663 = load i32, i32* @mv_rescale, align 4
  %sub896 = sub nsw i32 2, %663
  %shl897 = shl i32 2, %sub896
  %cmp898 = icmp slt i32 %call895, %shl897
  br i1 %cmp898, label %if.then.900, label %if.else.901

if.then.900:                                      ; preds = %land.lhs.true.890
  %664 = load %struct.MEPatternNode*, %struct.MEPatternNode** @sdiamond, align 8
  store %struct.MEPatternNode* %664, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.902

if.else.901:                                      ; preds = %land.lhs.true.890, %if.then.880
  %665 = load %struct.MEPatternNode*, %struct.MEPatternNode** @square, align 8
  store %struct.MEPatternNode* %665, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.902

if.end.902:                                       ; preds = %if.else.901, %if.then.900
  br label %if.end.904

if.else.903:                                      ; preds = %land.lhs.true.874, %lor.lhs.false.868
  %666 = load %struct.MEPatternNode*, %struct.MEPatternNode** @searchPatternD, align 8
  store %struct.MEPatternNode* %666, %struct.MEPatternNode** %searchPatternF, align 8
  br label %if.end.904

if.end.904:                                       ; preds = %if.else.903, %if.end.902
  %667 = load %struct.MEPatternNode*, %struct.MEPatternNode** %searchPatternF, align 8
  %searchPoints905 = getelementptr inbounds %struct.MEPatternNode, %struct.MEPatternNode* %667, i32 0, i32 0
  %668 = load i32, i32* %searchPoints905, align 4
  store i32 %668, i32* %totalCheckPts, align 4
  %arrayidx906 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 0
  %669 = load i32, i32* %arrayidx906, align 4
  store i32 %669, i32* %center2_x, align 4
  %arrayidx907 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv2, i32 0, i64 1
  %670 = load i32, i32* %arrayidx907, align 4
  store i32 %670, i32* %center2_y, align 4
  store i8 0, i8* %checkMedian, align 1
  br label %while.body

while.end:                                        ; preds = %if.then.859
  br label %if.end.908

if.end.908:                                       ; preds = %while.end, %for.end
  br label %if.end.909

if.end.909:                                       ; preds = %if.end.908, %if.end.389
  %arrayidx910 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 0
  %671 = load i32, i32* %arrayidx910, align 4
  %conv911 = trunc i32 %671 to i16
  %672 = load i16*, i16** %mv.addr, align 8
  %arrayidx912 = getelementptr inbounds i16, i16* %672, i64 0
  store i16 %conv911, i16* %arrayidx912, align 2
  %arrayidx913 = getelementptr inbounds [2 x i32], [2 x i32]* %tempmv, i32 0, i64 1
  %673 = load i32, i32* %arrayidx913, align 4
  %conv914 = trunc i32 %673 to i16
  %674 = load i16*, i16** %mv.addr, align 8
  %arrayidx915 = getelementptr inbounds i16, i16* %674, i64 1
  store i16 %conv914, i16* %arrayidx915, align 2
  %675 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %675
}

; Function Attrs: nounwind uwtable
define void @EPZSOutputStats(%struct._IO_FILE* %stat, i16 signext %stats_file) #0 {
entry:
  %stat.addr = alloca %struct._IO_FILE*, align 8
  %stats_file.addr = alloca i16, align 2
  store %struct._IO_FILE* %stat, %struct._IO_FILE** %stat.addr, align 8
  store i16 %stats_file, i16* %stats_file.addr, align 2
  %0 = load i16, i16* %stats_file.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %2 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSPattern = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %2, i32 0, i32 93
  %3 = load i32, i32* %EPZSPattern, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @c_EPZSPattern, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* %arraydecay)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %5 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSDual = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %5, i32 0, i32 94
  %6 = load i32, i32* %EPZSDual, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [7 x [20 x i8]], [7 x [20 x i8]]* @c_EPZSDualPattern, i32 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx3, i32 0, i32 0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* %arraydecay4)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %8 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSFixed = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %8, i32 0, i32 95
  %9 = load i32, i32* %EPZSFixed, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [3 x [20 x i8]], [3 x [20 x i8]]* @c_EPZSFixed, i32 0, i64 %idxprom6
  %arraydecay8 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx7, i32 0, i32 0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* %arraydecay8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %11 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSTemporal = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %11, i32 0, i32 96
  %12 = load i32, i32* %EPZSTemporal, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom10
  %arraydecay12 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx11, i32 0, i32 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %14 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %14, i32 0, i32 97
  %15 = load i32, i32* %EPZSSpatialMem, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx15, i32 0, i32 0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay16)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %17 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @medthres, i32 0, i64 1), align 4
  %18 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @minthres, i32 0, i64 1), align 4
  %19 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @maxthres, i32 0, i64 1), align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i32 %17, i32 %18, i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %21 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %21, i32 0, i32 102
  %22 = load i32, i32* %EPZSSubPelME, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom19
  %arraydecay21 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx20, i32 0, i32 0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i8* %arraydecay21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %24 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelMEBiPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %24, i32 0, i32 103
  %25 = load i32, i32* %EPZSSubPelMEBiPred, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom23
  %arraydecay25 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx24, i32 0, i32 0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay25)
  br label %if.end

if.else:                                          ; preds = %entry
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSPattern27 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 93
  %28 = load i32, i32* %EPZSPattern27, align 4
  %idxprom28 = sext i32 %28 to i64
  %arrayidx29 = getelementptr inbounds [6 x [20 x i8]], [6 x [20 x i8]]* @c_EPZSPattern, i32 0, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx29, i32 0, i32 0
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* %arraydecay30)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSDual32 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 94
  %31 = load i32, i32* %EPZSDual32, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [7 x [20 x i8]], [7 x [20 x i8]]* @c_EPZSDualPattern, i32 0, i64 %idxprom33
  %arraydecay35 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx34, i32 0, i32 0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i8* %arraydecay35)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %33 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSFixed37 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %33, i32 0, i32 95
  %34 = load i32, i32* %EPZSFixed37, align 4
  %idxprom38 = sext i32 %34 to i64
  %arrayidx39 = getelementptr inbounds [3 x [20 x i8]], [3 x [20 x i8]]* @c_EPZSFixed, i32 0, i64 %idxprom38
  %arraydecay40 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx39, i32 0, i32 0
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay40)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %36 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSTemporal42 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %36, i32 0, i32 96
  %37 = load i32, i32* %EPZSTemporal42, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom43
  %arraydecay45 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx44, i32 0, i32 0
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay45)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %39 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSpatialMem47 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %39, i32 0, i32 97
  %40 = load i32, i32* %EPZSSpatialMem47, align 4
  %idxprom48 = sext i32 %40 to i64
  %arrayidx49 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom48
  %arraydecay50 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx49, i32 0, i32 0
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i8* %arraydecay50)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %42 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @medthres, i32 0, i64 1), align 4
  %43 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @minthres, i32 0, i64 1), align 4
  %44 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @maxthres, i32 0, i64 1), align 4
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i32 0, i32 0), i32 %42, i32 %43, i32 %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %46 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelME53 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %46, i32 0, i32 102
  %47 = load i32, i32* %EPZSSubPelME53, align 4
  %idxprom54 = sext i32 %47 to i64
  %arrayidx55 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom54
  %arraydecay56 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx55, i32 0, i32 0
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i8* %arraydecay56)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %stat.addr, align 8
  %49 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %EPZSSubPelMEBiPred58 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %49, i32 0, i32 103
  %50 = load i32, i32* %EPZSSubPelMEBiPred58, align 4
  %idxprom59 = sext i32 %50 to i64
  %arrayidx60 = getelementptr inbounds [2 x [20 x i8]], [2 x [20 x i8]]* @c_EPZSOther, i32 0, i64 %idxprom59
  %arraydecay61 = getelementptr inbounds [20 x i8], [20 x i8]* %arrayidx60, i32 0, i32 0
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* %arraydecay61)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @EPZSSubPelBlockMotionSearch(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16* %pred_mv, i16* %mv, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, i32* %lambda) #0 {
entry:
  %retval = alloca i32, align 4
  %orig_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv.addr = alloca i16*, align 8
  %mv.addr = alloca i16*, align 8
  %search_pos2.addr = alloca i32, align 4
  %search_pos4.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda.addr = alloca i32*, align 8
  %pos = alloca i32, align 4
  %best_pos = alloca i32, align 4
  %second_pos = alloca i32, align 4
  %mcost = alloca i32, align 4
  %second_mcost = alloca i32, align 4
  %cand_mv_x = alloca i32, align 4
  %cand_mv_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %pic4_pix_x = alloca i32, align 4
  %pic4_pix_y = alloca i32, align 4
  %max_pos2 = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %apply_weights = alloca i32, align 4
  %ref_picture = alloca %struct.storable_picture*, align 8
  %max_pos_x4 = alloca i32, align 4
  %max_pos_y4 = alloca i32, align 4
  %start_pos = alloca i32, align 4
  %end_pos = alloca i32, align 4
  %dist_method = alloca i32, align 4
  %lambda_factor = alloca i32, align 4
  store i16* %orig_pic, i16** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16* %pred_mv, i16** %pred_mv.addr, align 8
  store i16* %mv, i16** %mv.addr, align 8
  store i32 %search_pos2, i32* %search_pos2.addr, align 4
  store i32 %search_pos4, i32* %search_pos4.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32* %lambda, i32** %lambda.addr, align 8
  store i32 0, i32* %best_pos, align 4
  store i32 0, i32* %second_pos, align 4
  store i32 2147483647, i32* %second_mcost, align 4
  %0 = load i32, i32* %blocktype.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %1, i32 0, i32 18
  %arrayidx = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 0
  %2 = load i32, i32* %arrayidx1, align 4
  store i32 %2, i32* %blocksize_x, align 4
  %3 = load i32, i32* %blocktype.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %4 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size3 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %4, i32 0, i32 18
  %arrayidx4 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size3, i32 0, i64 %idxprom2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 1
  %5 = load i32, i32* %arrayidx5, align 4
  store i32 %5, i32* %blocksize_y, align 4
  %6 = load i32, i32* %pic_pix_x.addr, align 4
  %add = add nsw i32 %6, 20
  %shl = shl i32 %add, 2
  store i32 %shl, i32* %pic4_pix_x, align 4
  %7 = load i32, i32* %pic_pix_y.addr, align 4
  %add6 = add nsw i32 %7, 20
  %shl7 = shl i32 %add6, 2
  store i32 %shl7, i32* %pic4_pix_y, align 4
  %8 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %search_pos2.addr, align 4
  %call = call i32 @imax(i32 1, i32 %10)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load i32, i32* %search_pos2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %11, %cond.false ]
  store i32 %cond, i32* %max_pos2, align 4
  %12 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %12, i32 0, i32 3
  %13 = load i32, i32* %current_mb_nr, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 61
  %15 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %15, i64 %idxprom9
  %list_offset11 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx10, i32 0, i32 21
  %16 = load i32, i32* %list_offset11, align 4
  store i32 %16, i32* %list_offset, align 4
  %17 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_pred_flag = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %17, i32 0, i32 19
  %18 = load i32, i32* %weighted_pred_flag, align 4
  %tobool12 = icmp ne i32 %18, 0
  br i1 %tobool12, label %land.lhs.true, label %lor.lhs.false.16

land.lhs.true:                                    ; preds = %cond.end
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 5
  %20 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type14 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 5
  %22 = load i32, i32* %type14, align 4
  %cmp15 = icmp eq i32 %22, 3
  br i1 %cmp15, label %land.rhs, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13, %cond.end
  %23 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %23, i32 0, i32 20
  %24 = load i32, i32* %weighted_bipred_idc, align 4
  %tobool17 = icmp ne i32 %24, 0
  br i1 %tobool17, label %land.lhs.true.18, label %land.end

land.lhs.true.18:                                 ; preds = %lor.lhs.false.16
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type19 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 5
  %26 = load i32, i32* %type19, align 4
  %cmp20 = icmp eq i32 %26, 1
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.18, %lor.lhs.false.13, %land.lhs.true
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseWeightedReferenceME = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 61
  %28 = load i32, i32* %UseWeightedReferenceME, align 4
  %tobool21 = icmp ne i32 %28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.18, %lor.lhs.false.16
  %29 = phi i1 [ false, %land.lhs.true.18 ], [ false, %lor.lhs.false.16 ], [ %tobool21, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  store i32 %land.ext, i32* %apply_weights, align 4
  %30 = load i16, i16* %ref.addr, align 2
  %idxprom22 = sext i16 %30 to i64
  %31 = load i32, i32* %list.addr, align 4
  %32 = load i32, i32* %list_offset, align 4
  %add23 = add nsw i32 %31, %32
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom24
  %33 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %33, i64 %idxprom22
  %34 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx26, align 8
  store %struct.storable_picture* %34, %struct.storable_picture** %ref_picture, align 8
  %35 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %35, i32 0, i32 18
  %36 = load i32, i32* %size_x, align 4
  %37 = load i32, i32* %blocksize_x, align 4
  %sub = sub nsw i32 %36, %37
  %add27 = add nsw i32 %sub, 40
  %shl28 = shl i32 %add27, 2
  store i32 %shl28, i32* %max_pos_x4, align 4
  %38 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %38, i32 0, i32 19
  %39 = load i32, i32* %size_y, align 4
  %40 = load i32, i32* %blocksize_y, align 4
  %sub29 = sub nsw i32 %39, %40
  %add30 = add nsw i32 %sub29, 40
  %shl31 = shl i32 %add30, 2
  store i32 %shl31, i32* %max_pos_y4, align 4
  store i32 5, i32* %start_pos, align 4
  %41 = load i32, i32* %max_pos2, align 4
  store i32 %41, i32* %end_pos, align 4
  %42 = load i32, i32* %apply_weights, align 4
  %mul = mul nsw i32 3, %42
  %add32 = add nsw i32 1, %mul
  store i32 %add32, i32* %dist_method, align 4
  %43 = load i32*, i32** %lambda.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %43, i64 1
  %44 = load i32, i32* %arrayidx33, align 4
  store i32 %44, i32* %lambda_factor, align 4
  %45 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %45, i32 0, i32 30
  %46 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %46, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 0), align 8
  %47 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %47, i32 0, i32 22
  %48 = load i32, i32* %size_x_pad, align 4
  store i32 %48, i32* @width_pad, align 4
  %49 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %49, i32 0, i32 23
  %50 = load i32, i32* %size_y_pad, align 4
  store i32 %50, i32* @height_pad, align 4
  %51 = load i32, i32* %apply_weights, align 4
  %tobool34 = icmp ne i32 %51, 0
  br i1 %tobool34, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %52 = load i16, i16* %ref.addr, align 2
  %idxprom35 = sext i16 %52 to i64
  %53 = load i32, i32* %list.addr, align 4
  %54 = load i32, i32* %list_offset, align 4
  %add36 = add nsw i32 %53, %54
  %idxprom37 = sext i32 %add36 to i64
  %55 = load i32***, i32**** @wp_weight, align 8
  %arrayidx38 = getelementptr inbounds i32**, i32*** %55, i64 %idxprom37
  %56 = load i32**, i32*** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %56, i64 %idxprom35
  %57 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx40, align 4
  store i32 %58, i32* @weight_luma, align 4
  %59 = load i16, i16* %ref.addr, align 2
  %idxprom41 = sext i16 %59 to i64
  %60 = load i32, i32* %list.addr, align 4
  %61 = load i32, i32* %list_offset, align 4
  %add42 = add nsw i32 %60, %61
  %idxprom43 = sext i32 %add42 to i64
  %62 = load i32***, i32**** @wp_offset, align 8
  %arrayidx44 = getelementptr inbounds i32**, i32*** %62, i64 %idxprom43
  %63 = load i32**, i32*** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32*, i32** %63, i64 %idxprom41
  %64 = load i32*, i32** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %64, i64 0
  %65 = load i32, i32* %arrayidx46, align 4
  store i32 %65, i32* @offset_luma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %66 = load i32, i32* @ChromaMEEnable, align 4
  %tobool47 = icmp ne i32 %66, 0
  br i1 %tobool47, label %if.then.48, label %if.end.79

if.then.48:                                       ; preds = %if.end
  %67 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %67, i32 0, i32 32
  %68 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx49 = getelementptr inbounds i16****, i16***** %68, i64 0
  %69 = load i16****, i16***** %arrayidx49, align 8
  store i16**** %69, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 0), align 8
  %70 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %imgUV_sub50 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %70, i32 0, i32 32
  %71 = load i16*****, i16****** %imgUV_sub50, align 8
  %arrayidx51 = getelementptr inbounds i16****, i16***** %71, i64 1
  %72 = load i16****, i16***** %arrayidx51, align 8
  store i16**** %72, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic_sub, i32 0, i32 1, i64 1), align 8
  %73 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 24
  %74 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %74, i32* @width_pad_cr, align 4
  %75 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 25
  %76 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %76, i32* @height_pad_cr, align 4
  %77 = load i32, i32* %apply_weights, align 4
  %tobool52 = icmp ne i32 %77, 0
  br i1 %tobool52, label %if.then.53, label %if.end.78

if.then.53:                                       ; preds = %if.then.48
  %78 = load i16, i16* %ref.addr, align 2
  %idxprom54 = sext i16 %78 to i64
  %79 = load i32, i32* %list.addr, align 4
  %80 = load i32, i32* %list_offset, align 4
  %add55 = add nsw i32 %79, %80
  %idxprom56 = sext i32 %add55 to i64
  %81 = load i32***, i32**** @wp_weight, align 8
  %arrayidx57 = getelementptr inbounds i32**, i32*** %81, i64 %idxprom56
  %82 = load i32**, i32*** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i32*, i32** %82, i64 %idxprom54
  %83 = load i32*, i32** %arrayidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %83, i64 1
  %84 = load i32, i32* %arrayidx59, align 4
  store i32 %84, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 0), align 4
  %85 = load i16, i16* %ref.addr, align 2
  %idxprom60 = sext i16 %85 to i64
  %86 = load i32, i32* %list.addr, align 4
  %87 = load i32, i32* %list_offset, align 4
  %add61 = add nsw i32 %86, %87
  %idxprom62 = sext i32 %add61 to i64
  %88 = load i32***, i32**** @wp_weight, align 8
  %arrayidx63 = getelementptr inbounds i32**, i32*** %88, i64 %idxprom62
  %89 = load i32**, i32*** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32*, i32** %89, i64 %idxprom60
  %90 = load i32*, i32** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %90, i64 2
  %91 = load i32, i32* %arrayidx65, align 4
  store i32 %91, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @weight_cr, i32 0, i64 1), align 4
  %92 = load i16, i16* %ref.addr, align 2
  %idxprom66 = sext i16 %92 to i64
  %93 = load i32, i32* %list.addr, align 4
  %94 = load i32, i32* %list_offset, align 4
  %add67 = add nsw i32 %93, %94
  %idxprom68 = sext i32 %add67 to i64
  %95 = load i32***, i32**** @wp_offset, align 8
  %arrayidx69 = getelementptr inbounds i32**, i32*** %95, i64 %idxprom68
  %96 = load i32**, i32*** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32*, i32** %96, i64 %idxprom66
  %97 = load i32*, i32** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %97, i64 1
  %98 = load i32, i32* %arrayidx71, align 4
  store i32 %98, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 0), align 4
  %99 = load i16, i16* %ref.addr, align 2
  %idxprom72 = sext i16 %99 to i64
  %100 = load i32, i32* %list.addr, align 4
  %101 = load i32, i32* %list_offset, align 4
  %add73 = add nsw i32 %100, %101
  %idxprom74 = sext i32 %add73 to i64
  %102 = load i32***, i32**** @wp_offset, align 8
  %arrayidx75 = getelementptr inbounds i32**, i32*** %102, i64 %idxprom74
  %103 = load i32**, i32*** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %103, i64 %idxprom72
  %104 = load i32*, i32** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %104, i64 2
  %105 = load i32, i32* %arrayidx77, align 4
  store i32 %105, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @offset_cr, i32 0, i64 1), align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.53, %if.then.48
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end
  %106 = load i32, i32* %pic4_pix_x, align 4
  %107 = load i16*, i16** %mv.addr, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %107, i64 0
  %108 = load i16, i16* %arrayidx80, align 2
  %conv = sext i16 %108 to i32
  %add81 = add nsw i32 %106, %conv
  %cmp82 = icmp sgt i32 %add81, 1
  br i1 %cmp82, label %land.lhs.true.84, label %if.else

land.lhs.true.84:                                 ; preds = %if.end.79
  %109 = load i32, i32* %pic4_pix_x, align 4
  %110 = load i16*, i16** %mv.addr, align 8
  %arrayidx85 = getelementptr inbounds i16, i16* %110, i64 0
  %111 = load i16, i16* %arrayidx85, align 2
  %conv86 = sext i16 %111 to i32
  %add87 = add nsw i32 %109, %conv86
  %112 = load i32, i32* %max_pos_x4, align 4
  %sub88 = sub nsw i32 %112, 1
  %cmp89 = icmp slt i32 %add87, %sub88
  br i1 %cmp89, label %land.lhs.true.91, label %if.else

land.lhs.true.91:                                 ; preds = %land.lhs.true.84
  %113 = load i32, i32* %pic4_pix_y, align 4
  %114 = load i16*, i16** %mv.addr, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %114, i64 1
  %115 = load i16, i16* %arrayidx92, align 2
  %conv93 = sext i16 %115 to i32
  %add94 = add nsw i32 %113, %conv93
  %cmp95 = icmp sgt i32 %add94, 1
  br i1 %cmp95, label %land.lhs.true.97, label %if.else

land.lhs.true.97:                                 ; preds = %land.lhs.true.91
  %116 = load i32, i32* %pic4_pix_y, align 4
  %117 = load i16*, i16** %mv.addr, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %117, i64 1
  %118 = load i16, i16* %arrayidx98, align 2
  %conv99 = sext i16 %118 to i32
  %add100 = add nsw i32 %116, %conv99
  %119 = load i32, i32* %max_pos_y4, align 4
  %sub101 = sub nsw i32 %119, 1
  %cmp102 = icmp slt i32 %add100, %sub101
  br i1 %cmp102, label %if.then.104, label %if.else

if.then.104:                                      ; preds = %land.lhs.true.97
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.105

if.else:                                          ; preds = %land.lhs.true.97, %land.lhs.true.91, %land.lhs.true.84, %if.end.79
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else, %if.then.104
  store i32 0, i32* %best_pos, align 4
  %120 = load i32, i32* @start_me_refinement_hp, align 4
  store i32 %120, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.105
  %121 = load i32, i32* %pos, align 4
  %cmp106 = icmp slt i32 %121, 5
  br i1 %cmp106, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %122 = load i16*, i16** %mv.addr, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %122, i64 0
  %123 = load i16, i16* %arrayidx108, align 2
  %conv109 = sext i16 %123 to i32
  %124 = load i32, i32* %pos, align 4
  %idxprom110 = sext i32 %124 to i64
  %arrayidx111 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx111, i32 0, i64 0
  %125 = load i16, i16* %arrayidx112, align 2
  %conv113 = sext i16 %125 to i32
  %add114 = add nsw i32 %conv109, %conv113
  store i32 %add114, i32* %cand_mv_x, align 4
  %126 = load i16*, i16** %mv.addr, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %126, i64 1
  %127 = load i16, i16* %arrayidx115, align 2
  %conv116 = sext i16 %127 to i32
  %128 = load i32, i32* %pos, align 4
  %idxprom117 = sext i32 %128 to i64
  %arrayidx118 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx118, i32 0, i64 1
  %129 = load i16, i16* %arrayidx119, align 2
  %conv120 = sext i16 %129 to i32
  %add121 = add nsw i32 %conv116, %conv120
  store i32 %add121, i32* %cand_mv_y, align 4
  %130 = load i32, i32* %lambda_factor, align 4
  %131 = load i32, i32* %cand_mv_x, align 4
  %132 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx122 = getelementptr inbounds i16, i16* %132, i64 0
  %133 = load i16, i16* %arrayidx122, align 2
  %conv123 = sext i16 %133 to i32
  %sub124 = sub nsw i32 %131, %conv123
  %idxprom125 = sext i32 %sub124 to i64
  %134 = load i32*, i32** @mvbits, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %134, i64 %idxprom125
  %135 = load i32, i32* %arrayidx126, align 4
  %136 = load i32, i32* %cand_mv_y, align 4
  %137 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %137, i64 1
  %138 = load i16, i16* %arrayidx127, align 2
  %conv128 = sext i16 %138 to i32
  %sub129 = sub nsw i32 %136, %conv128
  %idxprom130 = sext i32 %sub129 to i64
  %139 = load i32*, i32** @mvbits, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %139, i64 %idxprom130
  %140 = load i32, i32* %arrayidx131, align 4
  %add132 = add nsw i32 %135, %140
  %mul133 = mul nsw i32 %130, %add132
  %shr = ashr i32 %mul133, 16
  store i32 %shr, i32* %mcost, align 4
  %141 = load i32, i32* %dist_method, align 4
  %idxprom134 = sext i32 %141 to i64
  %arrayidx135 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom134
  %142 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx135, align 8
  %143 = load i16*, i16** %orig_pic.addr, align 8
  %144 = load i32, i32* %blocksize_y, align 4
  %145 = load i32, i32* %blocksize_x, align 4
  %146 = load i32, i32* %cand_mv_x, align 4
  %147 = load i32, i32* %pic4_pix_x, align 4
  %add136 = add nsw i32 %146, %147
  %148 = load i32, i32* %cand_mv_y, align 4
  %149 = load i32, i32* %pic4_pix_y, align 4
  %add137 = add nsw i32 %148, %149
  %call138 = call i32 %142(i16* %143, i32 %144, i32 %145, i32 2147483647, i32 %add136, i32 %add137)
  %150 = load i32, i32* %mcost, align 4
  %add139 = add nsw i32 %150, %call138
  store i32 %add139, i32* %mcost, align 4
  %151 = load i32, i32* %mcost, align 4
  %152 = load i32, i32* %min_mcost.addr, align 4
  %cmp140 = icmp slt i32 %151, %152
  br i1 %cmp140, label %if.then.142, label %if.else.143

if.then.142:                                      ; preds = %for.body
  %153 = load i32, i32* %min_mcost.addr, align 4
  store i32 %153, i32* %second_mcost, align 4
  %154 = load i32, i32* %best_pos, align 4
  store i32 %154, i32* %second_pos, align 4
  %155 = load i32, i32* %mcost, align 4
  store i32 %155, i32* %min_mcost.addr, align 4
  %156 = load i32, i32* %pos, align 4
  store i32 %156, i32* %best_pos, align 4
  br label %if.end.148

if.else.143:                                      ; preds = %for.body
  %157 = load i32, i32* %mcost, align 4
  %158 = load i32, i32* %second_mcost, align 4
  %cmp144 = icmp slt i32 %157, %158
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.else.143
  %159 = load i32, i32* %mcost, align 4
  store i32 %159, i32* %second_mcost, align 4
  %160 = load i32, i32* %pos, align 4
  store i32 %160, i32* %second_pos, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.else.143
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.then.142
  br label %for.inc

for.inc:                                          ; preds = %if.end.148
  %161 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %162 = load i32, i32* %best_pos, align 4
  %cmp149 = icmp eq i32 %162, 0
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.172

land.lhs.true.151:                                ; preds = %for.end
  %163 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %163, i64 0
  %164 = load i16, i16* %arrayidx152, align 2
  %conv153 = sext i16 %164 to i32
  %165 = load i16*, i16** %mv.addr, align 8
  %arrayidx154 = getelementptr inbounds i16, i16* %165, i64 0
  %166 = load i16, i16* %arrayidx154, align 2
  %conv155 = sext i16 %166 to i32
  %cmp156 = icmp eq i32 %conv153, %conv155
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.172

land.lhs.true.158:                                ; preds = %land.lhs.true.151
  %167 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx159 = getelementptr inbounds i16, i16* %167, i64 1
  %168 = load i16, i16* %arrayidx159, align 2
  %conv160 = sext i16 %168 to i32
  %169 = load i16*, i16** %mv.addr, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %169, i64 1
  %170 = load i16, i16* %arrayidx161, align 2
  %conv162 = sext i16 %170 to i32
  %sub163 = sub nsw i32 %conv160, %conv162
  %cmp164 = icmp eq i32 %sub163, 0
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.172

land.lhs.true.166:                                ; preds = %land.lhs.true.158
  %171 = load i32, i32* %min_mcost.addr, align 4
  %172 = load i32, i32* %blocktype.addr, align 4
  %idxprom167 = sext i32 %172 to i64
  %arrayidx168 = getelementptr inbounds [8 x i32], [8 x i32]* @subthres, i32 0, i64 %idxprom167
  %173 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp slt i32 %171, %173
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %land.lhs.true.166
  %174 = load i32, i32* %min_mcost.addr, align 4
  store i32 %174, i32* %retval
  br label %return

if.end.172:                                       ; preds = %land.lhs.true.166, %land.lhs.true.158, %land.lhs.true.151, %for.end
  %175 = load i32, i32* %best_pos, align 4
  %cmp173 = icmp ne i32 %175, 0
  br i1 %cmp173, label %land.lhs.true.175, label %if.else.182

land.lhs.true.175:                                ; preds = %if.end.172
  %176 = load i32, i32* %second_pos, align 4
  %cmp176 = icmp ne i32 %176, 0
  br i1 %cmp176, label %if.then.178, label %if.else.182

if.then.178:                                      ; preds = %land.lhs.true.175
  %177 = load i32, i32* %best_pos, align 4
  %178 = load i32, i32* %second_pos, align 4
  %xor = xor i32 %177, %178
  switch i32 %xor, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.179
    i32 5, label %sw.bb.180
    i32 7, label %sw.bb.181
  ]

sw.bb:                                            ; preds = %if.then.178
  store i32 6, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog

sw.bb.179:                                        ; preds = %if.then.178
  store i32 5, i32* %start_pos, align 4
  store i32 6, i32* %end_pos, align 4
  br label %sw.epilog

sw.bb.180:                                        ; preds = %if.then.178
  store i32 8, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog

sw.bb.181:                                        ; preds = %if.then.178
  store i32 7, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.178
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.181, %sw.bb.180, %sw.bb.179, %sw.bb
  br label %if.end.191

if.else.182:                                      ; preds = %land.lhs.true.175, %if.end.172
  %179 = load i32, i32* %best_pos, align 4
  %180 = load i32, i32* %second_pos, align 4
  %add183 = add nsw i32 %179, %180
  switch i32 %add183, label %sw.default.189 [
    i32 0, label %sw.bb.184
    i32 1, label %sw.bb.185
    i32 2, label %sw.bb.186
    i32 5, label %sw.bb.187
    i32 7, label %sw.bb.188
  ]

sw.bb.184:                                        ; preds = %if.else.182
  store i32 5, i32* %start_pos, align 4
  store i32 5, i32* %end_pos, align 4
  br label %sw.epilog.190

sw.bb.185:                                        ; preds = %if.else.182
  store i32 8, i32* %start_pos, align 4
  store i32 10, i32* %end_pos, align 4
  br label %sw.epilog.190

sw.bb.186:                                        ; preds = %if.else.182
  store i32 5, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog.190

sw.bb.187:                                        ; preds = %if.else.182
  store i32 6, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog.190

sw.bb.188:                                        ; preds = %if.else.182
  store i32 7, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog.190

sw.default.189:                                   ; preds = %if.else.182
  br label %sw.epilog.190

sw.epilog.190:                                    ; preds = %sw.default.189, %sw.bb.188, %sw.bb.187, %sw.bb.186, %sw.bb.185, %sw.bb.184
  br label %if.end.191

if.end.191:                                       ; preds = %sw.epilog.190, %sw.epilog
  %181 = load i32, i32* %best_pos, align 4
  %cmp192 = icmp ne i32 %181, 0
  br i1 %cmp192, label %if.then.209, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %if.end.191
  %182 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx195 = getelementptr inbounds i16, i16* %182, i64 0
  %183 = load i16, i16* %arrayidx195, align 2
  %conv196 = sext i16 %183 to i32
  %184 = load i16*, i16** %mv.addr, align 8
  %arrayidx197 = getelementptr inbounds i16, i16* %184, i64 0
  %185 = load i16, i16* %arrayidx197, align 2
  %conv198 = sext i16 %185 to i32
  %sub199 = sub nsw i32 %conv196, %conv198
  %call200 = call i32 @iabs(i32 %sub199)
  %186 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx201 = getelementptr inbounds i16, i16* %186, i64 1
  %187 = load i16, i16* %arrayidx201, align 2
  %conv202 = sext i16 %187 to i32
  %188 = load i16*, i16** %mv.addr, align 8
  %arrayidx203 = getelementptr inbounds i16, i16* %188, i64 1
  %189 = load i16, i16* %arrayidx203, align 2
  %conv204 = sext i16 %189 to i32
  %sub205 = sub nsw i32 %conv202, %conv204
  %call206 = call i32 @iabs(i32 %sub205)
  %add207 = add nsw i32 %call200, %call206
  %tobool208 = icmp ne i32 %add207, 0
  br i1 %tobool208, label %if.then.209, label %if.end.259

if.then.209:                                      ; preds = %lor.lhs.false.194, %if.end.191
  %190 = load i32, i32* %start_pos, align 4
  store i32 %190, i32* %pos, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.256, %if.then.209
  %191 = load i32, i32* %pos, align 4
  %192 = load i32, i32* %end_pos, align 4
  %cmp211 = icmp slt i32 %191, %192
  br i1 %cmp211, label %for.body.213, label %for.end.258

for.body.213:                                     ; preds = %for.cond.210
  %193 = load i16*, i16** %mv.addr, align 8
  %arrayidx214 = getelementptr inbounds i16, i16* %193, i64 0
  %194 = load i16, i16* %arrayidx214, align 2
  %conv215 = sext i16 %194 to i32
  %195 = load i32, i32* %pos, align 4
  %idxprom216 = sext i32 %195 to i64
  %arrayidx217 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx217, i32 0, i64 0
  %196 = load i16, i16* %arrayidx218, align 2
  %conv219 = sext i16 %196 to i32
  %add220 = add nsw i32 %conv215, %conv219
  store i32 %add220, i32* %cand_mv_x, align 4
  %197 = load i16*, i16** %mv.addr, align 8
  %arrayidx221 = getelementptr inbounds i16, i16* %197, i64 1
  %198 = load i16, i16* %arrayidx221, align 2
  %conv222 = sext i16 %198 to i32
  %199 = load i32, i32* %pos, align 4
  %idxprom223 = sext i32 %199 to i64
  %arrayidx224 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom223
  %arrayidx225 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx224, i32 0, i64 1
  %200 = load i16, i16* %arrayidx225, align 2
  %conv226 = sext i16 %200 to i32
  %add227 = add nsw i32 %conv222, %conv226
  store i32 %add227, i32* %cand_mv_y, align 4
  %201 = load i32, i32* %lambda_factor, align 4
  %202 = load i32, i32* %cand_mv_x, align 4
  %203 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx228 = getelementptr inbounds i16, i16* %203, i64 0
  %204 = load i16, i16* %arrayidx228, align 2
  %conv229 = sext i16 %204 to i32
  %sub230 = sub nsw i32 %202, %conv229
  %idxprom231 = sext i32 %sub230 to i64
  %205 = load i32*, i32** @mvbits, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %205, i64 %idxprom231
  %206 = load i32, i32* %arrayidx232, align 4
  %207 = load i32, i32* %cand_mv_y, align 4
  %208 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx233 = getelementptr inbounds i16, i16* %208, i64 1
  %209 = load i16, i16* %arrayidx233, align 2
  %conv234 = sext i16 %209 to i32
  %sub235 = sub nsw i32 %207, %conv234
  %idxprom236 = sext i32 %sub235 to i64
  %210 = load i32*, i32** @mvbits, align 8
  %arrayidx237 = getelementptr inbounds i32, i32* %210, i64 %idxprom236
  %211 = load i32, i32* %arrayidx237, align 4
  %add238 = add nsw i32 %206, %211
  %mul239 = mul nsw i32 %201, %add238
  %shr240 = ashr i32 %mul239, 16
  store i32 %shr240, i32* %mcost, align 4
  %212 = load i32, i32* %mcost, align 4
  %213 = load i32, i32* %min_mcost.addr, align 4
  %cmp241 = icmp sge i32 %212, %213
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %for.body.213
  br label %for.inc.256

if.end.244:                                       ; preds = %for.body.213
  %214 = load i32, i32* %dist_method, align 4
  %idxprom245 = sext i32 %214 to i64
  %arrayidx246 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom245
  %215 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx246, align 8
  %216 = load i16*, i16** %orig_pic.addr, align 8
  %217 = load i32, i32* %blocksize_y, align 4
  %218 = load i32, i32* %blocksize_x, align 4
  %219 = load i32, i32* %min_mcost.addr, align 4
  %220 = load i32, i32* %mcost, align 4
  %sub247 = sub nsw i32 %219, %220
  %221 = load i32, i32* %cand_mv_x, align 4
  %222 = load i32, i32* %pic4_pix_x, align 4
  %add248 = add nsw i32 %221, %222
  %223 = load i32, i32* %cand_mv_y, align 4
  %224 = load i32, i32* %pic4_pix_y, align 4
  %add249 = add nsw i32 %223, %224
  %call250 = call i32 %215(i16* %216, i32 %217, i32 %218, i32 %sub247, i32 %add248, i32 %add249)
  %225 = load i32, i32* %mcost, align 4
  %add251 = add nsw i32 %225, %call250
  store i32 %add251, i32* %mcost, align 4
  %226 = load i32, i32* %mcost, align 4
  %227 = load i32, i32* %min_mcost.addr, align 4
  %cmp252 = icmp slt i32 %226, %227
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %if.end.244
  %228 = load i32, i32* %mcost, align 4
  store i32 %228, i32* %min_mcost.addr, align 4
  %229 = load i32, i32* %pos, align 4
  store i32 %229, i32* %best_pos, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.254, %if.end.244
  br label %for.inc.256

for.inc.256:                                      ; preds = %if.end.255, %if.then.243
  %230 = load i32, i32* %pos, align 4
  %inc257 = add nsw i32 %230, 1
  store i32 %inc257, i32* %pos, align 4
  br label %for.cond.210

for.end.258:                                      ; preds = %for.cond.210
  br label %if.end.259

if.end.259:                                       ; preds = %for.end.258, %lor.lhs.false.194
  %231 = load i32, i32* %best_pos, align 4
  %tobool260 = icmp ne i32 %231, 0
  br i1 %tobool260, label %if.then.261, label %if.end.278

if.then.261:                                      ; preds = %if.end.259
  %232 = load i32, i32* %best_pos, align 4
  %idxprom262 = sext i32 %232 to i64
  %arrayidx263 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom262
  %arrayidx264 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx263, i32 0, i64 0
  %233 = load i16, i16* %arrayidx264, align 2
  %conv265 = sext i16 %233 to i32
  %234 = load i16*, i16** %mv.addr, align 8
  %arrayidx266 = getelementptr inbounds i16, i16* %234, i64 0
  %235 = load i16, i16* %arrayidx266, align 2
  %conv267 = sext i16 %235 to i32
  %add268 = add nsw i32 %conv267, %conv265
  %conv269 = trunc i32 %add268 to i16
  store i16 %conv269, i16* %arrayidx266, align 2
  %236 = load i32, i32* %best_pos, align 4
  %idxprom270 = sext i32 %236 to i64
  %arrayidx271 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom270
  %arrayidx272 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx271, i32 0, i64 1
  %237 = load i16, i16* %arrayidx272, align 2
  %conv273 = sext i16 %237 to i32
  %238 = load i16*, i16** %mv.addr, align 8
  %arrayidx274 = getelementptr inbounds i16, i16* %238, i64 1
  %239 = load i16, i16* %arrayidx274, align 2
  %conv275 = sext i16 %239 to i32
  %add276 = add nsw i32 %conv275, %conv273
  %conv277 = trunc i32 %add276 to i16
  store i16 %conv277, i16* %arrayidx274, align 2
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.261, %if.end.259
  %240 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool279 = icmp ne i32 %240, 0
  br i1 %tobool279, label %if.end.281, label %if.then.280

if.then.280:                                      ; preds = %if.end.278
  store i32 2147483647, i32* %min_mcost.addr, align 4
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.280, %if.end.278
  %241 = load i32, i32* %pic4_pix_x, align 4
  %242 = load i16*, i16** %mv.addr, align 8
  %arrayidx282 = getelementptr inbounds i16, i16* %242, i64 0
  %243 = load i16, i16* %arrayidx282, align 2
  %conv283 = sext i16 %243 to i32
  %add284 = add nsw i32 %241, %conv283
  %cmp285 = icmp sgt i32 %add284, 0
  br i1 %cmp285, label %land.lhs.true.287, label %if.else.306

land.lhs.true.287:                                ; preds = %if.end.281
  %244 = load i32, i32* %pic4_pix_x, align 4
  %245 = load i16*, i16** %mv.addr, align 8
  %arrayidx288 = getelementptr inbounds i16, i16* %245, i64 0
  %246 = load i16, i16* %arrayidx288, align 2
  %conv289 = sext i16 %246 to i32
  %add290 = add nsw i32 %244, %conv289
  %247 = load i32, i32* %max_pos_x4, align 4
  %cmp291 = icmp slt i32 %add290, %247
  br i1 %cmp291, label %land.lhs.true.293, label %if.else.306

land.lhs.true.293:                                ; preds = %land.lhs.true.287
  %248 = load i32, i32* %pic4_pix_y, align 4
  %249 = load i16*, i16** %mv.addr, align 8
  %arrayidx294 = getelementptr inbounds i16, i16* %249, i64 1
  %250 = load i16, i16* %arrayidx294, align 2
  %conv295 = sext i16 %250 to i32
  %add296 = add nsw i32 %248, %conv295
  %cmp297 = icmp sgt i32 %add296, 0
  br i1 %cmp297, label %land.lhs.true.299, label %if.else.306

land.lhs.true.299:                                ; preds = %land.lhs.true.293
  %251 = load i32, i32* %pic4_pix_y, align 4
  %252 = load i16*, i16** %mv.addr, align 8
  %arrayidx300 = getelementptr inbounds i16, i16* %252, i64 1
  %253 = load i16, i16* %arrayidx300, align 2
  %conv301 = sext i16 %253 to i32
  %add302 = add nsw i32 %251, %conv301
  %254 = load i32, i32* %max_pos_y4, align 4
  %cmp303 = icmp slt i32 %add302, %254
  br i1 %cmp303, label %if.then.305, label %if.else.306

if.then.305:                                      ; preds = %land.lhs.true.299
  store i32 0, i32* @ref_access_method, align 4
  br label %if.end.307

if.else.306:                                      ; preds = %land.lhs.true.299, %land.lhs.true.293, %land.lhs.true.287, %if.end.281
  store i32 1, i32* @ref_access_method, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.306, %if.then.305
  %255 = load i32, i32* %apply_weights, align 4
  %mul308 = mul nsw i32 3, %255
  %add309 = add nsw i32 2, %mul308
  store i32 %add309, i32* %dist_method, align 4
  %256 = load i32*, i32** %lambda.addr, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %256, i64 2
  %257 = load i32, i32* %arrayidx310, align 4
  store i32 %257, i32* %lambda_factor, align 4
  store i32 0, i32* %second_pos, align 4
  store i32 2147483647, i32* %second_mcost, align 4
  store i32 0, i32* %best_pos, align 4
  %258 = load i32, i32* @start_me_refinement_qp, align 4
  store i32 %258, i32* %pos, align 4
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.357, %if.end.307
  %259 = load i32, i32* %pos, align 4
  %cmp312 = icmp slt i32 %259, 5
  br i1 %cmp312, label %for.body.314, label %for.end.359

for.body.314:                                     ; preds = %for.cond.311
  %260 = load i16*, i16** %mv.addr, align 8
  %arrayidx315 = getelementptr inbounds i16, i16* %260, i64 0
  %261 = load i16, i16* %arrayidx315, align 2
  %conv316 = sext i16 %261 to i32
  %262 = load i32, i32* %pos, align 4
  %idxprom317 = sext i32 %262 to i64
  %arrayidx318 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom317
  %arrayidx319 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx318, i32 0, i64 0
  %263 = load i16, i16* %arrayidx319, align 2
  %conv320 = sext i16 %263 to i32
  %add321 = add nsw i32 %conv316, %conv320
  store i32 %add321, i32* %cand_mv_x, align 4
  %264 = load i16*, i16** %mv.addr, align 8
  %arrayidx322 = getelementptr inbounds i16, i16* %264, i64 1
  %265 = load i16, i16* %arrayidx322, align 2
  %conv323 = sext i16 %265 to i32
  %266 = load i32, i32* %pos, align 4
  %idxprom324 = sext i32 %266 to i64
  %arrayidx325 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom324
  %arrayidx326 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx325, i32 0, i64 1
  %267 = load i16, i16* %arrayidx326, align 2
  %conv327 = sext i16 %267 to i32
  %add328 = add nsw i32 %conv323, %conv327
  store i32 %add328, i32* %cand_mv_y, align 4
  %268 = load i32, i32* %lambda_factor, align 4
  %269 = load i32, i32* %cand_mv_x, align 4
  %270 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx329 = getelementptr inbounds i16, i16* %270, i64 0
  %271 = load i16, i16* %arrayidx329, align 2
  %conv330 = sext i16 %271 to i32
  %sub331 = sub nsw i32 %269, %conv330
  %idxprom332 = sext i32 %sub331 to i64
  %272 = load i32*, i32** @mvbits, align 8
  %arrayidx333 = getelementptr inbounds i32, i32* %272, i64 %idxprom332
  %273 = load i32, i32* %arrayidx333, align 4
  %274 = load i32, i32* %cand_mv_y, align 4
  %275 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx334 = getelementptr inbounds i16, i16* %275, i64 1
  %276 = load i16, i16* %arrayidx334, align 2
  %conv335 = sext i16 %276 to i32
  %sub336 = sub nsw i32 %274, %conv335
  %idxprom337 = sext i32 %sub336 to i64
  %277 = load i32*, i32** @mvbits, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %277, i64 %idxprom337
  %278 = load i32, i32* %arrayidx338, align 4
  %add339 = add nsw i32 %273, %278
  %mul340 = mul nsw i32 %268, %add339
  %shr341 = ashr i32 %mul340, 16
  store i32 %shr341, i32* %mcost, align 4
  %279 = load i32, i32* %dist_method, align 4
  %idxprom342 = sext i32 %279 to i64
  %arrayidx343 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom342
  %280 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx343, align 8
  %281 = load i16*, i16** %orig_pic.addr, align 8
  %282 = load i32, i32* %blocksize_y, align 4
  %283 = load i32, i32* %blocksize_x, align 4
  %284 = load i32, i32* %cand_mv_x, align 4
  %285 = load i32, i32* %pic4_pix_x, align 4
  %add344 = add nsw i32 %284, %285
  %286 = load i32, i32* %cand_mv_y, align 4
  %287 = load i32, i32* %pic4_pix_y, align 4
  %add345 = add nsw i32 %286, %287
  %call346 = call i32 %280(i16* %281, i32 %282, i32 %283, i32 2147483647, i32 %add344, i32 %add345)
  %288 = load i32, i32* %mcost, align 4
  %add347 = add nsw i32 %288, %call346
  store i32 %add347, i32* %mcost, align 4
  %289 = load i32, i32* %mcost, align 4
  %290 = load i32, i32* %min_mcost.addr, align 4
  %cmp348 = icmp slt i32 %289, %290
  br i1 %cmp348, label %if.then.350, label %if.else.351

if.then.350:                                      ; preds = %for.body.314
  %291 = load i32, i32* %min_mcost.addr, align 4
  store i32 %291, i32* %second_mcost, align 4
  %292 = load i32, i32* %best_pos, align 4
  store i32 %292, i32* %second_pos, align 4
  %293 = load i32, i32* %mcost, align 4
  store i32 %293, i32* %min_mcost.addr, align 4
  %294 = load i32, i32* %pos, align 4
  store i32 %294, i32* %best_pos, align 4
  br label %if.end.356

if.else.351:                                      ; preds = %for.body.314
  %295 = load i32, i32* %mcost, align 4
  %296 = load i32, i32* %second_mcost, align 4
  %cmp352 = icmp slt i32 %295, %296
  br i1 %cmp352, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %if.else.351
  %297 = load i32, i32* %mcost, align 4
  store i32 %297, i32* %second_mcost, align 4
  %298 = load i32, i32* %pos, align 4
  store i32 %298, i32* %second_pos, align 4
  br label %if.end.355

if.end.355:                                       ; preds = %if.then.354, %if.else.351
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.then.350
  br label %for.inc.357

for.inc.357:                                      ; preds = %if.end.356
  %299 = load i32, i32* %pos, align 4
  %inc358 = add nsw i32 %299, 1
  store i32 %inc358, i32* %pos, align 4
  br label %for.cond.311

for.end.359:                                      ; preds = %for.cond.311
  %300 = load i32, i32* %best_pos, align 4
  %cmp360 = icmp eq i32 %300, 0
  br i1 %cmp360, label %land.lhs.true.362, label %if.end.383

land.lhs.true.362:                                ; preds = %for.end.359
  %301 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx363 = getelementptr inbounds i16, i16* %301, i64 0
  %302 = load i16, i16* %arrayidx363, align 2
  %conv364 = sext i16 %302 to i32
  %303 = load i16*, i16** %mv.addr, align 8
  %arrayidx365 = getelementptr inbounds i16, i16* %303, i64 0
  %304 = load i16, i16* %arrayidx365, align 2
  %conv366 = sext i16 %304 to i32
  %cmp367 = icmp eq i32 %conv364, %conv366
  br i1 %cmp367, label %land.lhs.true.369, label %if.end.383

land.lhs.true.369:                                ; preds = %land.lhs.true.362
  %305 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx370 = getelementptr inbounds i16, i16* %305, i64 1
  %306 = load i16, i16* %arrayidx370, align 2
  %conv371 = sext i16 %306 to i32
  %307 = load i16*, i16** %mv.addr, align 8
  %arrayidx372 = getelementptr inbounds i16, i16* %307, i64 1
  %308 = load i16, i16* %arrayidx372, align 2
  %conv373 = sext i16 %308 to i32
  %sub374 = sub nsw i32 %conv371, %conv373
  %cmp375 = icmp eq i32 %sub374, 0
  br i1 %cmp375, label %land.lhs.true.377, label %if.end.383

land.lhs.true.377:                                ; preds = %land.lhs.true.369
  %309 = load i32, i32* %min_mcost.addr, align 4
  %310 = load i32, i32* %blocktype.addr, align 4
  %idxprom378 = sext i32 %310 to i64
  %arrayidx379 = getelementptr inbounds [8 x i32], [8 x i32]* @subthres, i32 0, i64 %idxprom378
  %311 = load i32, i32* %arrayidx379, align 4
  %cmp380 = icmp slt i32 %309, %311
  br i1 %cmp380, label %if.then.382, label %if.end.383

if.then.382:                                      ; preds = %land.lhs.true.377
  %312 = load i32, i32* %min_mcost.addr, align 4
  store i32 %312, i32* %retval
  br label %return

if.end.383:                                       ; preds = %land.lhs.true.377, %land.lhs.true.369, %land.lhs.true.362, %for.end.359
  store i32 5, i32* %start_pos, align 4
  %313 = load i32, i32* %search_pos4.addr, align 4
  store i32 %313, i32* %end_pos, align 4
  %314 = load i32, i32* %best_pos, align 4
  %cmp384 = icmp ne i32 %314, 0
  br i1 %cmp384, label %land.lhs.true.386, label %if.else.397

land.lhs.true.386:                                ; preds = %if.end.383
  %315 = load i32, i32* %second_pos, align 4
  %cmp387 = icmp ne i32 %315, 0
  br i1 %cmp387, label %if.then.389, label %if.else.397

if.then.389:                                      ; preds = %land.lhs.true.386
  %316 = load i32, i32* %best_pos, align 4
  %317 = load i32, i32* %second_pos, align 4
  %xor390 = xor i32 %316, %317
  switch i32 %xor390, label %sw.default.395 [
    i32 1, label %sw.bb.391
    i32 3, label %sw.bb.392
    i32 5, label %sw.bb.393
    i32 7, label %sw.bb.394
  ]

sw.bb.391:                                        ; preds = %if.then.389
  store i32 6, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog.396

sw.bb.392:                                        ; preds = %if.then.389
  store i32 5, i32* %start_pos, align 4
  store i32 6, i32* %end_pos, align 4
  br label %sw.epilog.396

sw.bb.393:                                        ; preds = %if.then.389
  store i32 8, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog.396

sw.bb.394:                                        ; preds = %if.then.389
  store i32 7, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog.396

sw.default.395:                                   ; preds = %if.then.389
  br label %sw.epilog.396

sw.epilog.396:                                    ; preds = %sw.default.395, %sw.bb.394, %sw.bb.393, %sw.bb.392, %sw.bb.391
  br label %if.end.405

if.else.397:                                      ; preds = %land.lhs.true.386, %if.end.383
  %318 = load i32, i32* %best_pos, align 4
  %319 = load i32, i32* %second_pos, align 4
  %add398 = add nsw i32 %318, %319
  switch i32 %add398, label %sw.default.403 [
    i32 1, label %sw.bb.399
    i32 2, label %sw.bb.400
    i32 5, label %sw.bb.401
    i32 7, label %sw.bb.402
  ]

sw.bb.399:                                        ; preds = %if.else.397
  store i32 8, i32* %start_pos, align 4
  store i32 10, i32* %end_pos, align 4
  br label %sw.epilog.404

sw.bb.400:                                        ; preds = %if.else.397
  store i32 5, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog.404

sw.bb.401:                                        ; preds = %if.else.397
  store i32 6, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog.404

sw.bb.402:                                        ; preds = %if.else.397
  store i32 7, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog.404

sw.default.403:                                   ; preds = %if.else.397
  br label %sw.epilog.404

sw.epilog.404:                                    ; preds = %sw.default.403, %sw.bb.402, %sw.bb.401, %sw.bb.400, %sw.bb.399
  br label %if.end.405

if.end.405:                                       ; preds = %sw.epilog.404, %sw.epilog.396
  %320 = load i32, i32* %best_pos, align 4
  %cmp406 = icmp ne i32 %320, 0
  br i1 %cmp406, label %if.then.423, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %if.end.405
  %321 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx409 = getelementptr inbounds i16, i16* %321, i64 0
  %322 = load i16, i16* %arrayidx409, align 2
  %conv410 = sext i16 %322 to i32
  %323 = load i16*, i16** %mv.addr, align 8
  %arrayidx411 = getelementptr inbounds i16, i16* %323, i64 0
  %324 = load i16, i16* %arrayidx411, align 2
  %conv412 = sext i16 %324 to i32
  %sub413 = sub nsw i32 %conv410, %conv412
  %call414 = call i32 @iabs(i32 %sub413)
  %325 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx415 = getelementptr inbounds i16, i16* %325, i64 1
  %326 = load i16, i16* %arrayidx415, align 2
  %conv416 = sext i16 %326 to i32
  %327 = load i16*, i16** %mv.addr, align 8
  %arrayidx417 = getelementptr inbounds i16, i16* %327, i64 1
  %328 = load i16, i16* %arrayidx417, align 2
  %conv418 = sext i16 %328 to i32
  %sub419 = sub nsw i32 %conv416, %conv418
  %call420 = call i32 @iabs(i32 %sub419)
  %add421 = add nsw i32 %call414, %call420
  %tobool422 = icmp ne i32 %add421, 0
  br i1 %tobool422, label %if.then.423, label %if.end.473

if.then.423:                                      ; preds = %lor.lhs.false.408, %if.end.405
  %329 = load i32, i32* %start_pos, align 4
  store i32 %329, i32* %pos, align 4
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.470, %if.then.423
  %330 = load i32, i32* %pos, align 4
  %331 = load i32, i32* %end_pos, align 4
  %cmp425 = icmp slt i32 %330, %331
  br i1 %cmp425, label %for.body.427, label %for.end.472

for.body.427:                                     ; preds = %for.cond.424
  %332 = load i16*, i16** %mv.addr, align 8
  %arrayidx428 = getelementptr inbounds i16, i16* %332, i64 0
  %333 = load i16, i16* %arrayidx428, align 2
  %conv429 = sext i16 %333 to i32
  %334 = load i32, i32* %pos, align 4
  %idxprom430 = sext i32 %334 to i64
  %arrayidx431 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom430
  %arrayidx432 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx431, i32 0, i64 0
  %335 = load i16, i16* %arrayidx432, align 2
  %conv433 = sext i16 %335 to i32
  %add434 = add nsw i32 %conv429, %conv433
  store i32 %add434, i32* %cand_mv_x, align 4
  %336 = load i16*, i16** %mv.addr, align 8
  %arrayidx435 = getelementptr inbounds i16, i16* %336, i64 1
  %337 = load i16, i16* %arrayidx435, align 2
  %conv436 = sext i16 %337 to i32
  %338 = load i32, i32* %pos, align 4
  %idxprom437 = sext i32 %338 to i64
  %arrayidx438 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom437
  %arrayidx439 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx438, i32 0, i64 1
  %339 = load i16, i16* %arrayidx439, align 2
  %conv440 = sext i16 %339 to i32
  %add441 = add nsw i32 %conv436, %conv440
  store i32 %add441, i32* %cand_mv_y, align 4
  %340 = load i32, i32* %lambda_factor, align 4
  %341 = load i32, i32* %cand_mv_x, align 4
  %342 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx442 = getelementptr inbounds i16, i16* %342, i64 0
  %343 = load i16, i16* %arrayidx442, align 2
  %conv443 = sext i16 %343 to i32
  %sub444 = sub nsw i32 %341, %conv443
  %idxprom445 = sext i32 %sub444 to i64
  %344 = load i32*, i32** @mvbits, align 8
  %arrayidx446 = getelementptr inbounds i32, i32* %344, i64 %idxprom445
  %345 = load i32, i32* %arrayidx446, align 4
  %346 = load i32, i32* %cand_mv_y, align 4
  %347 = load i16*, i16** %pred_mv.addr, align 8
  %arrayidx447 = getelementptr inbounds i16, i16* %347, i64 1
  %348 = load i16, i16* %arrayidx447, align 2
  %conv448 = sext i16 %348 to i32
  %sub449 = sub nsw i32 %346, %conv448
  %idxprom450 = sext i32 %sub449 to i64
  %349 = load i32*, i32** @mvbits, align 8
  %arrayidx451 = getelementptr inbounds i32, i32* %349, i64 %idxprom450
  %350 = load i32, i32* %arrayidx451, align 4
  %add452 = add nsw i32 %345, %350
  %mul453 = mul nsw i32 %340, %add452
  %shr454 = ashr i32 %mul453, 16
  store i32 %shr454, i32* %mcost, align 4
  %351 = load i32, i32* %mcost, align 4
  %352 = load i32, i32* %min_mcost.addr, align 4
  %cmp455 = icmp sge i32 %351, %352
  br i1 %cmp455, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %for.body.427
  br label %for.inc.470

if.end.458:                                       ; preds = %for.body.427
  %353 = load i32, i32* %dist_method, align 4
  %idxprom459 = sext i32 %353 to i64
  %arrayidx460 = getelementptr inbounds [6 x i32 (i16*, i32, i32, i32, i32, i32)*], [6 x i32 (i16*, i32, i32, i32, i32, i32)*]* @computeUniPred, i32 0, i64 %idxprom459
  %354 = load i32 (i16*, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32)** %arrayidx460, align 8
  %355 = load i16*, i16** %orig_pic.addr, align 8
  %356 = load i32, i32* %blocksize_y, align 4
  %357 = load i32, i32* %blocksize_x, align 4
  %358 = load i32, i32* %min_mcost.addr, align 4
  %359 = load i32, i32* %mcost, align 4
  %sub461 = sub nsw i32 %358, %359
  %360 = load i32, i32* %cand_mv_x, align 4
  %361 = load i32, i32* %pic4_pix_x, align 4
  %add462 = add nsw i32 %360, %361
  %362 = load i32, i32* %cand_mv_y, align 4
  %363 = load i32, i32* %pic4_pix_y, align 4
  %add463 = add nsw i32 %362, %363
  %call464 = call i32 %354(i16* %355, i32 %356, i32 %357, i32 %sub461, i32 %add462, i32 %add463)
  %364 = load i32, i32* %mcost, align 4
  %add465 = add nsw i32 %364, %call464
  store i32 %add465, i32* %mcost, align 4
  %365 = load i32, i32* %mcost, align 4
  %366 = load i32, i32* %min_mcost.addr, align 4
  %cmp466 = icmp slt i32 %365, %366
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %if.end.458
  %367 = load i32, i32* %mcost, align 4
  store i32 %367, i32* %min_mcost.addr, align 4
  %368 = load i32, i32* %pos, align 4
  store i32 %368, i32* %best_pos, align 4
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.468, %if.end.458
  br label %for.inc.470

for.inc.470:                                      ; preds = %if.end.469, %if.then.457
  %369 = load i32, i32* %pos, align 4
  %inc471 = add nsw i32 %369, 1
  store i32 %inc471, i32* %pos, align 4
  br label %for.cond.424

for.end.472:                                      ; preds = %for.cond.424
  br label %if.end.473

if.end.473:                                       ; preds = %for.end.472, %lor.lhs.false.408
  %370 = load i32, i32* %best_pos, align 4
  %tobool474 = icmp ne i32 %370, 0
  br i1 %tobool474, label %if.then.475, label %if.end.492

if.then.475:                                      ; preds = %if.end.473
  %371 = load i32, i32* %best_pos, align 4
  %idxprom476 = sext i32 %371 to i64
  %arrayidx477 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom476
  %arrayidx478 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx477, i32 0, i64 0
  %372 = load i16, i16* %arrayidx478, align 2
  %conv479 = sext i16 %372 to i32
  %373 = load i16*, i16** %mv.addr, align 8
  %arrayidx480 = getelementptr inbounds i16, i16* %373, i64 0
  %374 = load i16, i16* %arrayidx480, align 2
  %conv481 = sext i16 %374 to i32
  %add482 = add nsw i32 %conv481, %conv479
  %conv483 = trunc i32 %add482 to i16
  store i16 %conv483, i16* %arrayidx480, align 2
  %375 = load i32, i32* %best_pos, align 4
  %idxprom484 = sext i32 %375 to i64
  %arrayidx485 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom484
  %arrayidx486 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx485, i32 0, i64 1
  %376 = load i16, i16* %arrayidx486, align 2
  %conv487 = sext i16 %376 to i32
  %377 = load i16*, i16** %mv.addr, align 8
  %arrayidx488 = getelementptr inbounds i16, i16* %377, i64 1
  %378 = load i16, i16* %arrayidx488, align 2
  %conv489 = sext i16 %378 to i32
  %add490 = add nsw i32 %conv489, %conv487
  %conv491 = trunc i32 %add490 to i16
  store i16 %conv491, i16* %arrayidx488, align 2
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.475, %if.end.473
  %379 = load i32, i32* %min_mcost.addr, align 4
  store i32 %379, i32* %retval
  br label %return

return:                                           ; preds = %if.end.492, %if.then.382, %if.then.171
  %380 = load i32, i32* %retval
  ret i32 %380
}

; Function Attrs: nounwind uwtable
define i32 @EPZSSubPelBlockSearchBiPred(i16* %orig_pic, i16 signext %ref, i32 %list, i32 %pic_pix_x, i32 %pic_pix_y, i32 %blocktype, i16* %pred_mv1, i16* %pred_mv2, i16* %mv, i16* %s_mv, i32 %search_pos2, i32 %search_pos4, i32 %min_mcost, i32* %lambda) #0 {
entry:
  %orig_pic.addr = alloca i16*, align 8
  %ref.addr = alloca i16, align 2
  %list.addr = alloca i32, align 4
  %pic_pix_x.addr = alloca i32, align 4
  %pic_pix_y.addr = alloca i32, align 4
  %blocktype.addr = alloca i32, align 4
  %pred_mv1.addr = alloca i16*, align 8
  %pred_mv2.addr = alloca i16*, align 8
  %mv.addr = alloca i16*, align 8
  %s_mv.addr = alloca i16*, align 8
  %search_pos2.addr = alloca i32, align 4
  %search_pos4.addr = alloca i32, align 4
  %min_mcost.addr = alloca i32, align 4
  %lambda.addr = alloca i32*, align 8
  %apply_weights = alloca i32, align 4
  %list_offset = alloca i32, align 4
  %offset1 = alloca i16, align 2
  %offset2 = alloca i16, align 2
  %pos = alloca i32, align 4
  %best_pos = alloca i32, align 4
  %second_pos = alloca i32, align 4
  %mcost = alloca i32, align 4
  %second_mcost = alloca i32, align 4
  %cand_mv_x = alloca i32, align 4
  %cand_mv_y = alloca i32, align 4
  %blocksize_x = alloca i32, align 4
  %blocksize_y = alloca i32, align 4
  %pic4_pix_x = alloca i32, align 4
  %pic4_pix_y = alloca i32, align 4
  %start_hp = alloca i32, align 4
  %max_pos2 = alloca i32, align 4
  %smv_x = alloca i32, align 4
  %smv_y = alloca i32, align 4
  %ref_picture1 = alloca %struct.storable_picture*, align 8
  %ref_picture2 = alloca %struct.storable_picture*, align 8
  %max_pos_x4 = alloca i32, align 4
  %max_pos_y4 = alloca i32, align 4
  %start_pos = alloca i32, align 4
  %end_pos = alloca i32, align 4
  %lambda_factor = alloca i32, align 4
  store i16* %orig_pic, i16** %orig_pic.addr, align 8
  store i16 %ref, i16* %ref.addr, align 2
  store i32 %list, i32* %list.addr, align 4
  store i32 %pic_pix_x, i32* %pic_pix_x.addr, align 4
  store i32 %pic_pix_y, i32* %pic_pix_y.addr, align 4
  store i32 %blocktype, i32* %blocktype.addr, align 4
  store i16* %pred_mv1, i16** %pred_mv1.addr, align 8
  store i16* %pred_mv2, i16** %pred_mv2.addr, align 8
  store i16* %mv, i16** %mv.addr, align 8
  store i16* %s_mv, i16** %s_mv.addr, align 8
  store i32 %search_pos2, i32* %search_pos2.addr, align 4
  store i32 %search_pos4, i32* %search_pos4.addr, align 4
  store i32 %min_mcost, i32* %min_mcost.addr, align 4
  store i32* %lambda, i32** %lambda.addr, align 8
  %0 = load %struct.pic_parameter_set_rbsp_t*, %struct.pic_parameter_set_rbsp_t** @active_pps, align 8
  %weighted_bipred_idc = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, %struct.pic_parameter_set_rbsp_t* %0, i32 0, i32 20
  %1 = load i32, i32* %weighted_bipred_idc, align 4
  store i32 %1, i32* %apply_weights, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 3
  %3 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 61
  %5 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %5, i64 %idxprom
  %list_offset1 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 21
  %6 = load i32, i32* %list_offset1, align 4
  store i32 %6, i32* %list_offset, align 4
  %7 = load i32, i32* %apply_weights, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false.12

cond.true:                                        ; preds = %entry
  %8 = load i32, i32* %list.addr, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %cond.true.2, label %cond.false

cond.true.2:                                      ; preds = %cond.true
  %9 = load i16, i16* %ref.addr, align 2
  %idxprom3 = sext i16 %9 to i64
  %10 = load i32, i32* %list_offset, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i32***, i32**** @wp_offset, align 8
  %arrayidx5 = getelementptr inbounds i32**, i32*** %11, i64 %idxprom4
  %12 = load i32**, i32*** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %12, i64 %idxprom3
  %13 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %15 = load i32, i32* %list_offset, align 4
  %add = add nsw i32 %15, 1
  %idxprom8 = sext i32 %add to i64
  %16 = load i32***, i32**** @wp_offset, align 8
  %arrayidx9 = getelementptr inbounds i32**, i32*** %16, i64 %idxprom8
  %17 = load i32**, i32*** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %17, i64 0
  %18 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.2
  %cond = phi i32 [ %14, %cond.true.2 ], [ %19, %cond.false ]
  br label %cond.end.13

cond.false.12:                                    ; preds = %entry
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.end
  %cond14 = phi i32 [ %cond, %cond.end ], [ 0, %cond.false.12 ]
  %conv = trunc i32 %cond14 to i16
  store i16 %conv, i16* %offset1, align 2
  %20 = load i32, i32* %apply_weights, align 4
  %tobool15 = icmp ne i32 %20, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.33

cond.true.16:                                     ; preds = %cond.end.13
  %21 = load i32, i32* %list.addr, align 4
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %cond.true.19, label %cond.false.26

cond.true.19:                                     ; preds = %cond.true.16
  %22 = load i16, i16* %ref.addr, align 2
  %idxprom20 = sext i16 %22 to i64
  %23 = load i32, i32* %list_offset, align 4
  %add21 = add nsw i32 %23, 1
  %idxprom22 = sext i32 %add21 to i64
  %24 = load i32***, i32**** @wp_offset, align 8
  %arrayidx23 = getelementptr inbounds i32**, i32*** %24, i64 %idxprom22
  %25 = load i32**, i32*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %25, i64 %idxprom20
  %26 = load i32*, i32** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx25, align 4
  br label %cond.end.31

cond.false.26:                                    ; preds = %cond.true.16
  %28 = load i32, i32* %list_offset, align 4
  %idxprom27 = sext i32 %28 to i64
  %29 = load i32***, i32**** @wp_offset, align 8
  %arrayidx28 = getelementptr inbounds i32**, i32*** %29, i64 %idxprom27
  %30 = load i32**, i32*** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %30, i64 0
  %31 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx30, align 4
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.26, %cond.true.19
  %cond32 = phi i32 [ %27, %cond.true.19 ], [ %32, %cond.false.26 ]
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end.13
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.end.31
  %cond35 = phi i32 [ %cond32, %cond.end.31 ], [ 0, %cond.false.33 ]
  %conv36 = trunc i32 %cond35 to i16
  store i16 %conv36, i16* %offset2, align 2
  store i32 0, i32* %best_pos, align 4
  store i32 0, i32* %second_pos, align 4
  store i32 2147483647, i32* %second_mcost, align 4
  %33 = load i32, i32* %blocktype.addr, align 4
  %idxprom37 = sext i32 %33 to i64
  %34 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %34, i32 0, i32 18
  %arrayidx38 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx38, i32 0, i64 0
  %35 = load i32, i32* %arrayidx39, align 4
  store i32 %35, i32* %blocksize_x, align 4
  %36 = load i32, i32* %blocktype.addr, align 4
  %idxprom40 = sext i32 %36 to i64
  %37 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %blc_size41 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %37, i32 0, i32 18
  %arrayidx42 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %blc_size41, i32 0, i64 %idxprom40
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx42, i32 0, i64 1
  %38 = load i32, i32* %arrayidx43, align 4
  store i32 %38, i32* %blocksize_y, align 4
  %39 = load i32, i32* %pic_pix_x.addr, align 4
  %add44 = add nsw i32 %39, 20
  %shl = shl i32 %add44, 2
  store i32 %shl, i32* %pic4_pix_x, align 4
  %40 = load i32, i32* %pic_pix_y.addr, align 4
  %add45 = add nsw i32 %40, 20
  %shl46 = shl i32 %add45, 2
  store i32 %shl46, i32* %pic4_pix_y, align 4
  %41 = load i32, i32* %min_mcost.addr, align 4
  %cmp47 = icmp eq i32 %41, 2147483647
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.end.34
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.end.34
  %42 = load i32, i32* @start_me_refinement_hp, align 4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.49
  %cond52 = phi i32 [ 0, %cond.true.49 ], [ %42, %cond.false.50 ]
  store i32 %cond52, i32* %start_hp, align 4
  %43 = load i32, i32* @start_me_refinement_hp, align 4
  %tobool53 = icmp ne i32 %43, 0
  br i1 %tobool53, label %lor.lhs.false, label %cond.true.55

lor.lhs.false:                                    ; preds = %cond.end.51
  %44 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool54 = icmp ne i32 %44, 0
  br i1 %tobool54, label %cond.false.56, label %cond.true.55

cond.true.55:                                     ; preds = %lor.lhs.false, %cond.end.51
  %45 = load i32, i32* %search_pos2.addr, align 4
  %call = call i32 @imax(i32 1, i32 %45)
  br label %cond.end.57

cond.false.56:                                    ; preds = %lor.lhs.false
  %46 = load i32, i32* %search_pos2.addr, align 4
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.55
  %cond58 = phi i32 [ %call, %cond.true.55 ], [ %46, %cond.false.56 ]
  store i32 %cond58, i32* %max_pos2, align 4
  %47 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %47, i64 0
  %48 = load i16, i16* %arrayidx59, align 2
  %conv60 = sext i16 %48 to i32
  %49 = load i32, i32* %pic4_pix_x, align 4
  %add61 = add nsw i32 %conv60, %49
  store i32 %add61, i32* %smv_x, align 4
  %50 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx62 = getelementptr inbounds i16, i16* %50, i64 1
  %51 = load i16, i16* %arrayidx62, align 2
  %conv63 = sext i16 %51 to i32
  %52 = load i32, i32* %pic4_pix_y, align 4
  %add64 = add nsw i32 %conv63, %52
  store i32 %add64, i32* %smv_y, align 4
  %53 = load i16, i16* %ref.addr, align 2
  %idxprom65 = sext i16 %53 to i64
  %54 = load i32, i32* %list.addr, align 4
  %55 = load i32, i32* %list_offset, align 4
  %add66 = add nsw i32 %54, %55
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom67
  %56 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx68, align 8
  %arrayidx69 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %56, i64 %idxprom65
  %57 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx69, align 8
  store %struct.storable_picture* %57, %struct.storable_picture** %ref_picture1, align 8
  %58 = load i32, i32* %list.addr, align 4
  %xor = xor i32 %58, 1
  %59 = load i32, i32* %list_offset, align 4
  %add70 = add nsw i32 %xor, %59
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds [6 x %struct.storable_picture**], [6 x %struct.storable_picture**]* @listX, i32 0, i64 %idxprom71
  %60 = load %struct.storable_picture**, %struct.storable_picture*** %arrayidx72, align 8
  %arrayidx73 = getelementptr inbounds %struct.storable_picture*, %struct.storable_picture** %60, i64 0
  %61 = load %struct.storable_picture*, %struct.storable_picture** %arrayidx73, align 8
  store %struct.storable_picture* %61, %struct.storable_picture** %ref_picture2, align 8
  %62 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %62, i32 0, i32 18
  %63 = load i32, i32* %size_x, align 4
  %64 = load i32, i32* %blocksize_x, align 4
  %sub = sub nsw i32 %63, %64
  %add74 = add nsw i32 %sub, 40
  %shl75 = shl i32 %add74, 2
  store i32 %shl75, i32* %max_pos_x4, align 4
  %65 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %65, i32 0, i32 19
  %66 = load i32, i32* %size_y, align 4
  %67 = load i32, i32* %blocksize_y, align 4
  %sub76 = sub nsw i32 %66, %67
  %add77 = add nsw i32 %sub76, 40
  %shl78 = shl i32 %add77, 2
  store i32 %shl78, i32* %max_pos_y4, align 4
  store i32 5, i32* %start_pos, align 4
  %68 = load i32, i32* %max_pos2, align 4
  store i32 %68, i32* %end_pos, align 4
  %69 = load i32*, i32** %lambda.addr, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %69, i64 1
  %70 = load i32, i32* %arrayidx79, align 4
  store i32 %70, i32* %lambda_factor, align 4
  %71 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgY_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %71, i32 0, i32 30
  %72 = load i16****, i16***** %imgY_sub, align 8
  store i16**** %72, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 0), align 8
  %73 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgY_sub80 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %73, i32 0, i32 30
  %74 = load i16****, i16***** %imgY_sub80, align 8
  store i16**** %74, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 0), align 8
  %75 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x81 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %75, i32 0, i32 18
  %76 = load i32, i32* %size_x81, align 4
  %conv82 = trunc i32 %76 to i16
  store i16 %conv82, i16* @img_width, align 2
  %77 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y83 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %77, i32 0, i32 19
  %78 = load i32, i32* %size_y83, align 4
  %conv84 = trunc i32 %78 to i16
  store i16 %conv84, i16* @img_height, align 2
  %79 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %79, i32 0, i32 22
  %80 = load i32, i32* %size_x_pad, align 4
  store i32 %80, i32* @width_pad, align 4
  %81 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %81, i32 0, i32 23
  %82 = load i32, i32* %size_y_pad, align 4
  store i32 %82, i32* @height_pad, align 4
  %83 = load i32, i32* %apply_weights, align 4
  %tobool85 = icmp ne i32 %83, 0
  br i1 %tobool85, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.57
  %84 = load i32, i32* %list.addr, align 4
  %cmp86 = icmp eq i32 %84, 0
  br i1 %cmp86, label %cond.true.88, label %cond.false.95

cond.true.88:                                     ; preds = %if.then
  %85 = load i16, i16* %ref.addr, align 2
  %idxprom89 = sext i16 %85 to i64
  %86 = load i32, i32* %list_offset, align 4
  %idxprom90 = sext i32 %86 to i64
  %87 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx91 = getelementptr inbounds i32***, i32**** %87, i64 %idxprom90
  %88 = load i32***, i32**** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32**, i32*** %88, i64 %idxprom89
  %89 = load i32**, i32*** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %89, i64 0
  %90 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %90, i64 0
  %91 = load i32, i32* %arrayidx94, align 4
  br label %cond.end.103

cond.false.95:                                    ; preds = %if.then
  %92 = load i16, i16* %ref.addr, align 2
  %idxprom96 = sext i16 %92 to i64
  %93 = load i32, i32* %list_offset, align 4
  %add97 = add nsw i32 %93, 1
  %idxprom98 = sext i32 %add97 to i64
  %94 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx99 = getelementptr inbounds i32***, i32**** %94, i64 %idxprom98
  %95 = load i32***, i32**** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32**, i32*** %95, i64 0
  %96 = load i32**, i32*** %arrayidx100, align 8
  %arrayidx101 = getelementptr inbounds i32*, i32** %96, i64 %idxprom96
  %97 = load i32*, i32** %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %97, i64 0
  %98 = load i32, i32* %arrayidx102, align 4
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.95, %cond.true.88
  %cond104 = phi i32 [ %91, %cond.true.88 ], [ %98, %cond.false.95 ]
  %conv105 = trunc i32 %cond104 to i16
  store i16 %conv105, i16* @weight1, align 2
  %99 = load i32, i32* %list.addr, align 4
  %cmp106 = icmp eq i32 %99, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.116

cond.true.108:                                    ; preds = %cond.end.103
  %100 = load i16, i16* %ref.addr, align 2
  %idxprom109 = sext i16 %100 to i64
  %101 = load i32, i32* %list_offset, align 4
  %add110 = add nsw i32 %101, 1
  %idxprom111 = sext i32 %add110 to i64
  %102 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx112 = getelementptr inbounds i32***, i32**** %102, i64 %idxprom111
  %103 = load i32***, i32**** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i32**, i32*** %103, i64 %idxprom109
  %104 = load i32**, i32*** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i32*, i32** %104, i64 0
  %105 = load i32*, i32** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %105, i64 0
  %106 = load i32, i32* %arrayidx115, align 4
  br label %cond.end.123

cond.false.116:                                   ; preds = %cond.end.103
  %107 = load i16, i16* %ref.addr, align 2
  %idxprom117 = sext i16 %107 to i64
  %108 = load i32, i32* %list_offset, align 4
  %idxprom118 = sext i32 %108 to i64
  %109 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx119 = getelementptr inbounds i32***, i32**** %109, i64 %idxprom118
  %110 = load i32***, i32**** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i32**, i32*** %110, i64 0
  %111 = load i32**, i32*** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32*, i32** %111, i64 %idxprom117
  %112 = load i32*, i32** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %112, i64 0
  %113 = load i32, i32* %arrayidx122, align 4
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.116, %cond.true.108
  %cond124 = phi i32 [ %106, %cond.true.108 ], [ %113, %cond.false.116 ]
  %conv125 = trunc i32 %cond124 to i16
  store i16 %conv125, i16* @weight2, align 2
  %114 = load i16, i16* %offset1, align 2
  %conv126 = sext i16 %114 to i32
  %115 = load i16, i16* %offset2, align 2
  %conv127 = sext i16 %115 to i32
  %add128 = add nsw i32 %conv126, %conv127
  %add129 = add nsw i32 %add128, 1
  %shr = ashr i32 %add129, 1
  %conv130 = trunc i32 %shr to i16
  store i16 %conv130, i16* @offsetBi, align 2
  %116 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 1), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %116, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.57
  %117 = load i32, i32* @luma_log_weight_denom, align 4
  %shl131 = shl i32 1, %117
  %conv132 = trunc i32 %shl131 to i16
  store i16 %conv132, i16* @weight1, align 2
  %118 = load i32, i32* @luma_log_weight_denom, align 4
  %shl133 = shl i32 1, %118
  %conv134 = trunc i32 %shl133 to i16
  store i16 %conv134, i16* @weight2, align 2
  store i16 0, i16* @offsetBi, align 2
  %119 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 1), align 8
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %119, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.123
  %120 = load i32, i32* @ChromaMEEnable, align 4
  %tobool135 = icmp ne i32 %120, 0
  br i1 %tobool135, label %if.then.136, label %if.end.302

if.then.136:                                      ; preds = %if.end
  %121 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %121, i32 0, i32 32
  %122 = load i16*****, i16****** %imgUV_sub, align 8
  %arrayidx137 = getelementptr inbounds i16****, i16***** %122, i64 0
  %123 = load i16****, i16***** %arrayidx137, align 8
  store i16**** %123, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 0), align 8
  %124 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %imgUV_sub138 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %124, i32 0, i32 32
  %125 = load i16*****, i16****** %imgUV_sub138, align 8
  %arrayidx139 = getelementptr inbounds i16****, i16***** %125, i64 1
  %126 = load i16****, i16***** %arrayidx139, align 8
  store i16**** %126, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic1_sub, i32 0, i32 1, i64 1), align 8
  %127 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub140 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %127, i32 0, i32 32
  %128 = load i16*****, i16****** %imgUV_sub140, align 8
  %arrayidx141 = getelementptr inbounds i16****, i16***** %128, i64 0
  %129 = load i16****, i16***** %arrayidx141, align 8
  store i16**** %129, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 0), align 8
  %130 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture2, align 8
  %imgUV_sub142 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %130, i32 0, i32 32
  %131 = load i16*****, i16****** %imgUV_sub142, align 8
  %arrayidx143 = getelementptr inbounds i16****, i16***** %131, i64 1
  %132 = load i16****, i16***** %arrayidx143, align 8
  store i16**** %132, i16***** getelementptr inbounds (%struct.SubImageContainer, %struct.SubImageContainer* @ref_pic2_sub, i32 0, i32 1, i64 1), align 8
  %133 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_x_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %133, i32 0, i32 24
  %134 = load i32, i32* %size_x_cr_pad, align 4
  store i32 %134, i32* @width_pad_cr, align 4
  %135 = load %struct.storable_picture*, %struct.storable_picture** %ref_picture1, align 8
  %size_y_cr_pad = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %135, i32 0, i32 25
  %136 = load i32, i32* %size_y_cr_pad, align 4
  store i32 %136, i32* @height_pad_cr, align 4
  %137 = load i32, i32* %apply_weights, align 4
  %tobool144 = icmp ne i32 %137, 0
  br i1 %tobool144, label %if.then.145, label %if.else.292

if.then.145:                                      ; preds = %if.then.136
  %138 = load i32, i32* %list.addr, align 4
  %cmp146 = icmp eq i32 %138, 0
  br i1 %cmp146, label %cond.true.148, label %cond.false.155

cond.true.148:                                    ; preds = %if.then.145
  %139 = load i16, i16* %ref.addr, align 2
  %idxprom149 = sext i16 %139 to i64
  %140 = load i32, i32* %list_offset, align 4
  %idxprom150 = sext i32 %140 to i64
  %141 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx151 = getelementptr inbounds i32***, i32**** %141, i64 %idxprom150
  %142 = load i32***, i32**** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32**, i32*** %142, i64 %idxprom149
  %143 = load i32**, i32*** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32*, i32** %143, i64 0
  %144 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %144, i64 1
  %145 = load i32, i32* %arrayidx154, align 4
  br label %cond.end.163

cond.false.155:                                   ; preds = %if.then.145
  %146 = load i16, i16* %ref.addr, align 2
  %idxprom156 = sext i16 %146 to i64
  %147 = load i32, i32* %list_offset, align 4
  %add157 = add nsw i32 %147, 1
  %idxprom158 = sext i32 %add157 to i64
  %148 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx159 = getelementptr inbounds i32***, i32**** %148, i64 %idxprom158
  %149 = load i32***, i32**** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i32**, i32*** %149, i64 0
  %150 = load i32**, i32*** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %150, i64 %idxprom156
  %151 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %151, i64 1
  %152 = load i32, i32* %arrayidx162, align 4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.155, %cond.true.148
  %cond164 = phi i32 [ %145, %cond.true.148 ], [ %152, %cond.false.155 ]
  %conv165 = trunc i32 %cond164 to i16
  store i16 %conv165, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %153 = load i32, i32* %list.addr, align 4
  %cmp166 = icmp eq i32 %153, 0
  br i1 %cmp166, label %cond.true.168, label %cond.false.175

cond.true.168:                                    ; preds = %cond.end.163
  %154 = load i16, i16* %ref.addr, align 2
  %idxprom169 = sext i16 %154 to i64
  %155 = load i32, i32* %list_offset, align 4
  %idxprom170 = sext i32 %155 to i64
  %156 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx171 = getelementptr inbounds i32***, i32**** %156, i64 %idxprom170
  %157 = load i32***, i32**** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i32**, i32*** %157, i64 %idxprom169
  %158 = load i32**, i32*** %arrayidx172, align 8
  %arrayidx173 = getelementptr inbounds i32*, i32** %158, i64 0
  %159 = load i32*, i32** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %159, i64 2
  %160 = load i32, i32* %arrayidx174, align 4
  br label %cond.end.183

cond.false.175:                                   ; preds = %cond.end.163
  %161 = load i16, i16* %ref.addr, align 2
  %idxprom176 = sext i16 %161 to i64
  %162 = load i32, i32* %list_offset, align 4
  %add177 = add nsw i32 %162, 1
  %idxprom178 = sext i32 %add177 to i64
  %163 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx179 = getelementptr inbounds i32***, i32**** %163, i64 %idxprom178
  %164 = load i32***, i32**** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32**, i32*** %164, i64 0
  %165 = load i32**, i32*** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %165, i64 %idxprom176
  %166 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %166, i64 2
  %167 = load i32, i32* %arrayidx182, align 4
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.175, %cond.true.168
  %cond184 = phi i32 [ %160, %cond.true.168 ], [ %167, %cond.false.175 ]
  %conv185 = trunc i32 %cond184 to i16
  store i16 %conv185, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %168 = load i32, i32* %list.addr, align 4
  %cmp186 = icmp eq i32 %168, 0
  br i1 %cmp186, label %cond.true.188, label %cond.false.196

cond.true.188:                                    ; preds = %cond.end.183
  %169 = load i16, i16* %ref.addr, align 2
  %idxprom189 = sext i16 %169 to i64
  %170 = load i32, i32* %list_offset, align 4
  %add190 = add nsw i32 %170, 1
  %idxprom191 = sext i32 %add190 to i64
  %171 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx192 = getelementptr inbounds i32***, i32**** %171, i64 %idxprom191
  %172 = load i32***, i32**** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i32**, i32*** %172, i64 %idxprom189
  %173 = load i32**, i32*** %arrayidx193, align 8
  %arrayidx194 = getelementptr inbounds i32*, i32** %173, i64 0
  %174 = load i32*, i32** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %174, i64 1
  %175 = load i32, i32* %arrayidx195, align 4
  br label %cond.end.203

cond.false.196:                                   ; preds = %cond.end.183
  %176 = load i16, i16* %ref.addr, align 2
  %idxprom197 = sext i16 %176 to i64
  %177 = load i32, i32* %list_offset, align 4
  %idxprom198 = sext i32 %177 to i64
  %178 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx199 = getelementptr inbounds i32***, i32**** %178, i64 %idxprom198
  %179 = load i32***, i32**** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i32**, i32*** %179, i64 0
  %180 = load i32**, i32*** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i32*, i32** %180, i64 %idxprom197
  %181 = load i32*, i32** %arrayidx201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %181, i64 1
  %182 = load i32, i32* %arrayidx202, align 4
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.196, %cond.true.188
  %cond204 = phi i32 [ %175, %cond.true.188 ], [ %182, %cond.false.196 ]
  %conv205 = trunc i32 %cond204 to i16
  store i16 %conv205, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %183 = load i32, i32* %list.addr, align 4
  %cmp206 = icmp eq i32 %183, 0
  br i1 %cmp206, label %cond.true.208, label %cond.false.216

cond.true.208:                                    ; preds = %cond.end.203
  %184 = load i16, i16* %ref.addr, align 2
  %idxprom209 = sext i16 %184 to i64
  %185 = load i32, i32* %list_offset, align 4
  %add210 = add nsw i32 %185, 1
  %idxprom211 = sext i32 %add210 to i64
  %186 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx212 = getelementptr inbounds i32***, i32**** %186, i64 %idxprom211
  %187 = load i32***, i32**** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i32**, i32*** %187, i64 %idxprom209
  %188 = load i32**, i32*** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32*, i32** %188, i64 0
  %189 = load i32*, i32** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %189, i64 2
  %190 = load i32, i32* %arrayidx215, align 4
  br label %cond.end.223

cond.false.216:                                   ; preds = %cond.end.203
  %191 = load i16, i16* %ref.addr, align 2
  %idxprom217 = sext i16 %191 to i64
  %192 = load i32, i32* %list_offset, align 4
  %idxprom218 = sext i32 %192 to i64
  %193 = load i32****, i32***** @wbp_weight, align 8
  %arrayidx219 = getelementptr inbounds i32***, i32**** %193, i64 %idxprom218
  %194 = load i32***, i32**** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i32**, i32*** %194, i64 0
  %195 = load i32**, i32*** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32*, i32** %195, i64 %idxprom217
  %196 = load i32*, i32** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %196, i64 2
  %197 = load i32, i32* %arrayidx222, align 4
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.216, %cond.true.208
  %cond224 = phi i32 [ %190, %cond.true.208 ], [ %197, %cond.false.216 ]
  %conv225 = trunc i32 %cond224 to i16
  store i16 %conv225, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  %198 = load i32, i32* %list.addr, align 4
  %cmp226 = icmp eq i32 %198, 0
  br i1 %cmp226, label %cond.true.228, label %cond.false.243

cond.true.228:                                    ; preds = %cond.end.223
  %199 = load i16, i16* %ref.addr, align 2
  %idxprom229 = sext i16 %199 to i64
  %200 = load i32, i32* %list_offset, align 4
  %idxprom230 = sext i32 %200 to i64
  %201 = load i32***, i32**** @wp_offset, align 8
  %arrayidx231 = getelementptr inbounds i32**, i32*** %201, i64 %idxprom230
  %202 = load i32**, i32*** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %202, i64 %idxprom229
  %203 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %203, i64 1
  %204 = load i32, i32* %arrayidx233, align 4
  %205 = load i16, i16* %ref.addr, align 2
  %idxprom234 = sext i16 %205 to i64
  %206 = load i32, i32* %list_offset, align 4
  %add235 = add nsw i32 %206, 1
  %idxprom236 = sext i32 %add235 to i64
  %207 = load i32***, i32**** @wp_offset, align 8
  %arrayidx237 = getelementptr inbounds i32**, i32*** %207, i64 %idxprom236
  %208 = load i32**, i32*** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32*, i32** %208, i64 %idxprom234
  %209 = load i32*, i32** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %209, i64 1
  %210 = load i32, i32* %arrayidx239, align 4
  %add240 = add nsw i32 %204, %210
  %add241 = add nsw i32 %add240, 1
  %shr242 = ashr i32 %add241, 1
  br label %cond.end.256

cond.false.243:                                   ; preds = %cond.end.223
  %211 = load i32, i32* %list_offset, align 4
  %add244 = add nsw i32 %211, 1
  %idxprom245 = sext i32 %add244 to i64
  %212 = load i32***, i32**** @wp_offset, align 8
  %arrayidx246 = getelementptr inbounds i32**, i32*** %212, i64 %idxprom245
  %213 = load i32**, i32*** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i32*, i32** %213, i64 0
  %214 = load i32*, i32** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %214, i64 1
  %215 = load i32, i32* %arrayidx248, align 4
  %216 = load i32, i32* %list_offset, align 4
  %idxprom249 = sext i32 %216 to i64
  %217 = load i32***, i32**** @wp_offset, align 8
  %arrayidx250 = getelementptr inbounds i32**, i32*** %217, i64 %idxprom249
  %218 = load i32**, i32*** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32*, i32** %218, i64 0
  %219 = load i32*, i32** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %219, i64 1
  %220 = load i32, i32* %arrayidx252, align 4
  %add253 = add nsw i32 %215, %220
  %add254 = add nsw i32 %add253, 1
  %shr255 = ashr i32 %add254, 1
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.243, %cond.true.228
  %cond257 = phi i32 [ %shr242, %cond.true.228 ], [ %shr255, %cond.false.243 ]
  %conv258 = trunc i32 %cond257 to i16
  store i16 %conv258, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  %221 = load i32, i32* %list.addr, align 4
  %cmp259 = icmp eq i32 %221, 0
  br i1 %cmp259, label %cond.true.261, label %cond.false.276

cond.true.261:                                    ; preds = %cond.end.256
  %222 = load i16, i16* %ref.addr, align 2
  %idxprom262 = sext i16 %222 to i64
  %223 = load i32, i32* %list_offset, align 4
  %idxprom263 = sext i32 %223 to i64
  %224 = load i32***, i32**** @wp_offset, align 8
  %arrayidx264 = getelementptr inbounds i32**, i32*** %224, i64 %idxprom263
  %225 = load i32**, i32*** %arrayidx264, align 8
  %arrayidx265 = getelementptr inbounds i32*, i32** %225, i64 %idxprom262
  %226 = load i32*, i32** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %226, i64 2
  %227 = load i32, i32* %arrayidx266, align 4
  %228 = load i16, i16* %ref.addr, align 2
  %idxprom267 = sext i16 %228 to i64
  %229 = load i32, i32* %list_offset, align 4
  %add268 = add nsw i32 %229, 1
  %idxprom269 = sext i32 %add268 to i64
  %230 = load i32***, i32**** @wp_offset, align 8
  %arrayidx270 = getelementptr inbounds i32**, i32*** %230, i64 %idxprom269
  %231 = load i32**, i32*** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32*, i32** %231, i64 %idxprom267
  %232 = load i32*, i32** %arrayidx271, align 8
  %arrayidx272 = getelementptr inbounds i32, i32* %232, i64 2
  %233 = load i32, i32* %arrayidx272, align 4
  %add273 = add nsw i32 %227, %233
  %add274 = add nsw i32 %add273, 1
  %shr275 = ashr i32 %add274, 1
  br label %cond.end.289

cond.false.276:                                   ; preds = %cond.end.256
  %234 = load i32, i32* %list_offset, align 4
  %add277 = add nsw i32 %234, 1
  %idxprom278 = sext i32 %add277 to i64
  %235 = load i32***, i32**** @wp_offset, align 8
  %arrayidx279 = getelementptr inbounds i32**, i32*** %235, i64 %idxprom278
  %236 = load i32**, i32*** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i32*, i32** %236, i64 0
  %237 = load i32*, i32** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %237, i64 2
  %238 = load i32, i32* %arrayidx281, align 4
  %239 = load i32, i32* %list_offset, align 4
  %idxprom282 = sext i32 %239 to i64
  %240 = load i32***, i32**** @wp_offset, align 8
  %arrayidx283 = getelementptr inbounds i32**, i32*** %240, i64 %idxprom282
  %241 = load i32**, i32*** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i32*, i32** %241, i64 0
  %242 = load i32*, i32** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i32, i32* %242, i64 2
  %243 = load i32, i32* %arrayidx285, align 4
  %add286 = add nsw i32 %238, %243
  %add287 = add nsw i32 %add286, 1
  %shr288 = ashr i32 %add287, 1
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.276, %cond.true.261
  %cond290 = phi i32 [ %shr275, %cond.true.261 ], [ %shr288, %cond.false.276 ]
  %conv291 = trunc i32 %cond290 to i16
  store i16 %conv291, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.301

if.else.292:                                      ; preds = %if.then.136
  %244 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl293 = shl i32 1, %244
  %conv294 = trunc i32 %shl293 to i16
  store i16 %conv294, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 0), align 2
  %245 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl295 = shl i32 1, %245
  %conv296 = trunc i32 %shl295 to i16
  store i16 %conv296, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight1_cr, i32 0, i64 1), align 2
  %246 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl297 = shl i32 1, %246
  %conv298 = trunc i32 %shl297 to i16
  store i16 %conv298, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 0), align 2
  %247 = load i32, i32* @chroma_log_weight_denom, align 4
  %shl299 = shl i32 1, %247
  %conv300 = trunc i32 %shl299 to i16
  store i16 %conv300, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @weight2_cr, i32 0, i64 1), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 0), align 2
  store i16 0, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @offsetBi_cr, i32 0, i64 1), align 2
  br label %if.end.301

if.end.301:                                       ; preds = %if.else.292, %cond.end.289
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.end
  %248 = load i32, i32* %pic4_pix_x, align 4
  %249 = load i16*, i16** %mv.addr, align 8
  %arrayidx303 = getelementptr inbounds i16, i16* %249, i64 0
  %250 = load i16, i16* %arrayidx303, align 2
  %conv304 = sext i16 %250 to i32
  %add305 = add nsw i32 %248, %conv304
  %cmp306 = icmp sgt i32 %add305, 1
  br i1 %cmp306, label %land.lhs.true, label %if.else.328

land.lhs.true:                                    ; preds = %if.end.302
  %251 = load i32, i32* %pic4_pix_x, align 4
  %252 = load i16*, i16** %mv.addr, align 8
  %arrayidx308 = getelementptr inbounds i16, i16* %252, i64 0
  %253 = load i16, i16* %arrayidx308, align 2
  %conv309 = sext i16 %253 to i32
  %add310 = add nsw i32 %251, %conv309
  %254 = load i32, i32* %max_pos_x4, align 4
  %sub311 = sub nsw i32 %254, 1
  %cmp312 = icmp slt i32 %add310, %sub311
  br i1 %cmp312, label %land.lhs.true.314, label %if.else.328

land.lhs.true.314:                                ; preds = %land.lhs.true
  %255 = load i32, i32* %pic4_pix_y, align 4
  %256 = load i16*, i16** %mv.addr, align 8
  %arrayidx315 = getelementptr inbounds i16, i16* %256, i64 1
  %257 = load i16, i16* %arrayidx315, align 2
  %conv316 = sext i16 %257 to i32
  %add317 = add nsw i32 %255, %conv316
  %cmp318 = icmp sgt i32 %add317, 1
  br i1 %cmp318, label %land.lhs.true.320, label %if.else.328

land.lhs.true.320:                                ; preds = %land.lhs.true.314
  %258 = load i32, i32* %pic4_pix_y, align 4
  %259 = load i16*, i16** %mv.addr, align 8
  %arrayidx321 = getelementptr inbounds i16, i16* %259, i64 1
  %260 = load i16, i16* %arrayidx321, align 2
  %conv322 = sext i16 %260 to i32
  %add323 = add nsw i32 %258, %conv322
  %261 = load i32, i32* %max_pos_y4, align 4
  %sub324 = sub nsw i32 %261, 1
  %cmp325 = icmp slt i32 %add323, %sub324
  br i1 %cmp325, label %if.then.327, label %if.else.328

if.then.327:                                      ; preds = %land.lhs.true.320
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.329

if.else.328:                                      ; preds = %land.lhs.true.320, %land.lhs.true.314, %land.lhs.true, %if.end.302
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.328, %if.then.327
  %262 = load i32, i32* %pic4_pix_x, align 4
  %263 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx330 = getelementptr inbounds i16, i16* %263, i64 0
  %264 = load i16, i16* %arrayidx330, align 2
  %conv331 = sext i16 %264 to i32
  %add332 = add nsw i32 %262, %conv331
  %cmp333 = icmp sgt i32 %add332, 1
  br i1 %cmp333, label %land.lhs.true.335, label %if.else.356

land.lhs.true.335:                                ; preds = %if.end.329
  %265 = load i32, i32* %pic4_pix_x, align 4
  %266 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx336 = getelementptr inbounds i16, i16* %266, i64 0
  %267 = load i16, i16* %arrayidx336, align 2
  %conv337 = sext i16 %267 to i32
  %add338 = add nsw i32 %265, %conv337
  %268 = load i32, i32* %max_pos_x4, align 4
  %sub339 = sub nsw i32 %268, 1
  %cmp340 = icmp slt i32 %add338, %sub339
  br i1 %cmp340, label %land.lhs.true.342, label %if.else.356

land.lhs.true.342:                                ; preds = %land.lhs.true.335
  %269 = load i32, i32* %pic4_pix_y, align 4
  %270 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx343 = getelementptr inbounds i16, i16* %270, i64 1
  %271 = load i16, i16* %arrayidx343, align 2
  %conv344 = sext i16 %271 to i32
  %add345 = add nsw i32 %269, %conv344
  %cmp346 = icmp sgt i32 %add345, 1
  br i1 %cmp346, label %land.lhs.true.348, label %if.else.356

land.lhs.true.348:                                ; preds = %land.lhs.true.342
  %272 = load i32, i32* %pic4_pix_y, align 4
  %273 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx349 = getelementptr inbounds i16, i16* %273, i64 1
  %274 = load i16, i16* %arrayidx349, align 2
  %conv350 = sext i16 %274 to i32
  %add351 = add nsw i32 %272, %conv350
  %275 = load i32, i32* %max_pos_y4, align 4
  %sub352 = sub nsw i32 %275, 1
  %cmp353 = icmp slt i32 %add351, %sub352
  br i1 %cmp353, label %if.then.355, label %if.else.356

if.then.355:                                      ; preds = %land.lhs.true.348
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.357

if.else.356:                                      ; preds = %land.lhs.true.348, %land.lhs.true.342, %land.lhs.true.335, %if.end.329
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.else.356, %if.then.355
  store i32 0, i32* %best_pos, align 4
  %276 = load i32, i32* %start_hp, align 4
  store i32 %276, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.357
  %277 = load i32, i32* %pos, align 4
  %cmp358 = icmp slt i32 %277, 5
  br i1 %cmp358, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %278 = load i16*, i16** %mv.addr, align 8
  %arrayidx360 = getelementptr inbounds i16, i16* %278, i64 0
  %279 = load i16, i16* %arrayidx360, align 2
  %conv361 = sext i16 %279 to i32
  %280 = load i32, i32* %pos, align 4
  %idxprom362 = sext i32 %280 to i64
  %arrayidx363 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom362
  %arrayidx364 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx363, i32 0, i64 0
  %281 = load i16, i16* %arrayidx364, align 2
  %conv365 = sext i16 %281 to i32
  %add366 = add nsw i32 %conv361, %conv365
  store i32 %add366, i32* %cand_mv_x, align 4
  %282 = load i16*, i16** %mv.addr, align 8
  %arrayidx367 = getelementptr inbounds i16, i16* %282, i64 1
  %283 = load i16, i16* %arrayidx367, align 2
  %conv368 = sext i16 %283 to i32
  %284 = load i32, i32* %pos, align 4
  %idxprom369 = sext i32 %284 to i64
  %arrayidx370 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom369
  %arrayidx371 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx370, i32 0, i64 1
  %285 = load i16, i16* %arrayidx371, align 2
  %conv372 = sext i16 %285 to i32
  %add373 = add nsw i32 %conv368, %conv372
  store i32 %add373, i32* %cand_mv_y, align 4
  %286 = load i32, i32* %lambda_factor, align 4
  %287 = load i32, i32* %cand_mv_x, align 4
  %288 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx374 = getelementptr inbounds i16, i16* %288, i64 0
  %289 = load i16, i16* %arrayidx374, align 2
  %conv375 = sext i16 %289 to i32
  %sub376 = sub nsw i32 %287, %conv375
  %idxprom377 = sext i32 %sub376 to i64
  %290 = load i32*, i32** @mvbits, align 8
  %arrayidx378 = getelementptr inbounds i32, i32* %290, i64 %idxprom377
  %291 = load i32, i32* %arrayidx378, align 4
  %292 = load i32, i32* %cand_mv_y, align 4
  %293 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx379 = getelementptr inbounds i16, i16* %293, i64 1
  %294 = load i16, i16* %arrayidx379, align 2
  %conv380 = sext i16 %294 to i32
  %sub381 = sub nsw i32 %292, %conv380
  %idxprom382 = sext i32 %sub381 to i64
  %295 = load i32*, i32** @mvbits, align 8
  %arrayidx383 = getelementptr inbounds i32, i32* %295, i64 %idxprom382
  %296 = load i32, i32* %arrayidx383, align 4
  %add384 = add nsw i32 %291, %296
  %mul = mul nsw i32 %286, %add384
  %shr385 = ashr i32 %mul, 16
  store i32 %shr385, i32* %mcost, align 4
  %297 = load i32, i32* %lambda_factor, align 4
  %298 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx386 = getelementptr inbounds i16, i16* %298, i64 0
  %299 = load i16, i16* %arrayidx386, align 2
  %conv387 = sext i16 %299 to i32
  %300 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx388 = getelementptr inbounds i16, i16* %300, i64 0
  %301 = load i16, i16* %arrayidx388, align 2
  %conv389 = sext i16 %301 to i32
  %sub390 = sub nsw i32 %conv387, %conv389
  %idxprom391 = sext i32 %sub390 to i64
  %302 = load i32*, i32** @mvbits, align 8
  %arrayidx392 = getelementptr inbounds i32, i32* %302, i64 %idxprom391
  %303 = load i32, i32* %arrayidx392, align 4
  %304 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx393 = getelementptr inbounds i16, i16* %304, i64 1
  %305 = load i16, i16* %arrayidx393, align 2
  %conv394 = sext i16 %305 to i32
  %306 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx395 = getelementptr inbounds i16, i16* %306, i64 1
  %307 = load i16, i16* %arrayidx395, align 2
  %conv396 = sext i16 %307 to i32
  %sub397 = sub nsw i32 %conv394, %conv396
  %idxprom398 = sext i32 %sub397 to i64
  %308 = load i32*, i32** @mvbits, align 8
  %arrayidx399 = getelementptr inbounds i32, i32* %308, i64 %idxprom398
  %309 = load i32, i32* %arrayidx399, align 4
  %add400 = add nsw i32 %303, %309
  %mul401 = mul nsw i32 %297, %add400
  %shr402 = ashr i32 %mul401, 16
  %310 = load i32, i32* %mcost, align 4
  %add403 = add nsw i32 %310, %shr402
  store i32 %add403, i32* %mcost, align 4
  %311 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %312 = load i16*, i16** %orig_pic.addr, align 8
  %313 = load i32, i32* %blocksize_y, align 4
  %314 = load i32, i32* %blocksize_x, align 4
  %315 = load i32, i32* %smv_x, align 4
  %316 = load i32, i32* %smv_y, align 4
  %317 = load i32, i32* %cand_mv_x, align 4
  %318 = load i32, i32* %pic4_pix_x, align 4
  %add404 = add nsw i32 %317, %318
  %319 = load i32, i32* %cand_mv_y, align 4
  %320 = load i32, i32* %pic4_pix_y, align 4
  %add405 = add nsw i32 %319, %320
  %call406 = call i32 %311(i16* %312, i32 %313, i32 %314, i32 2147483647, i32 %315, i32 %316, i32 %add404, i32 %add405)
  %321 = load i32, i32* %mcost, align 4
  %add407 = add nsw i32 %321, %call406
  store i32 %add407, i32* %mcost, align 4
  %322 = load i32, i32* %mcost, align 4
  %323 = load i32, i32* %min_mcost.addr, align 4
  %cmp408 = icmp slt i32 %322, %323
  br i1 %cmp408, label %if.then.410, label %if.else.411

if.then.410:                                      ; preds = %for.body
  %324 = load i32, i32* %min_mcost.addr, align 4
  store i32 %324, i32* %second_mcost, align 4
  %325 = load i32, i32* %best_pos, align 4
  store i32 %325, i32* %second_pos, align 4
  %326 = load i32, i32* %mcost, align 4
  store i32 %326, i32* %min_mcost.addr, align 4
  %327 = load i32, i32* %pos, align 4
  store i32 %327, i32* %best_pos, align 4
  br label %if.end.416

if.else.411:                                      ; preds = %for.body
  %328 = load i32, i32* %mcost, align 4
  %329 = load i32, i32* %second_mcost, align 4
  %cmp412 = icmp slt i32 %328, %329
  br i1 %cmp412, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %if.else.411
  %330 = load i32, i32* %mcost, align 4
  store i32 %330, i32* %second_mcost, align 4
  %331 = load i32, i32* %pos, align 4
  store i32 %331, i32* %second_pos, align 4
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.414, %if.else.411
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.then.410
  br label %for.inc

for.inc:                                          ; preds = %if.end.416
  %332 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %332, 1
  store i32 %inc, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %333 = load i32, i32* %best_pos, align 4
  %cmp417 = icmp ne i32 %333, 0
  br i1 %cmp417, label %land.lhs.true.419, label %if.else.427

land.lhs.true.419:                                ; preds = %for.end
  %334 = load i32, i32* %second_pos, align 4
  %cmp420 = icmp ne i32 %334, 0
  br i1 %cmp420, label %if.then.422, label %if.else.427

if.then.422:                                      ; preds = %land.lhs.true.419
  %335 = load i32, i32* %best_pos, align 4
  %336 = load i32, i32* %second_pos, align 4
  %xor423 = xor i32 %335, %336
  switch i32 %xor423, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.424
    i32 5, label %sw.bb.425
    i32 7, label %sw.bb.426
  ]

sw.bb:                                            ; preds = %if.then.422
  store i32 6, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog

sw.bb.424:                                        ; preds = %if.then.422
  store i32 5, i32* %start_pos, align 4
  store i32 6, i32* %end_pos, align 4
  br label %sw.epilog

sw.bb.425:                                        ; preds = %if.then.422
  store i32 8, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog

sw.bb.426:                                        ; preds = %if.then.422
  store i32 7, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.422
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.426, %sw.bb.425, %sw.bb.424, %sw.bb
  br label %if.end.436

if.else.427:                                      ; preds = %land.lhs.true.419, %for.end
  %337 = load i32, i32* %best_pos, align 4
  %338 = load i32, i32* %second_pos, align 4
  %add428 = add nsw i32 %337, %338
  switch i32 %add428, label %sw.default.434 [
    i32 0, label %sw.bb.429
    i32 1, label %sw.bb.430
    i32 2, label %sw.bb.431
    i32 5, label %sw.bb.432
    i32 7, label %sw.bb.433
  ]

sw.bb.429:                                        ; preds = %if.else.427
  store i32 5, i32* %start_pos, align 4
  store i32 5, i32* %end_pos, align 4
  br label %sw.epilog.435

sw.bb.430:                                        ; preds = %if.else.427
  store i32 8, i32* %start_pos, align 4
  store i32 10, i32* %end_pos, align 4
  br label %sw.epilog.435

sw.bb.431:                                        ; preds = %if.else.427
  store i32 5, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog.435

sw.bb.432:                                        ; preds = %if.else.427
  store i32 6, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog.435

sw.bb.433:                                        ; preds = %if.else.427
  store i32 7, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog.435

sw.default.434:                                   ; preds = %if.else.427
  br label %sw.epilog.435

sw.epilog.435:                                    ; preds = %sw.default.434, %sw.bb.433, %sw.bb.432, %sw.bb.431, %sw.bb.430, %sw.bb.429
  br label %if.end.436

if.end.436:                                       ; preds = %sw.epilog.435, %sw.epilog
  %339 = load i32, i32* %best_pos, align 4
  %cmp437 = icmp ne i32 %339, 0
  br i1 %cmp437, label %if.then.454, label %lor.lhs.false.439

lor.lhs.false.439:                                ; preds = %if.end.436
  %340 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx440 = getelementptr inbounds i16, i16* %340, i64 0
  %341 = load i16, i16* %arrayidx440, align 2
  %conv441 = sext i16 %341 to i32
  %342 = load i16*, i16** %mv.addr, align 8
  %arrayidx442 = getelementptr inbounds i16, i16* %342, i64 0
  %343 = load i16, i16* %arrayidx442, align 2
  %conv443 = sext i16 %343 to i32
  %sub444 = sub nsw i32 %conv441, %conv443
  %call445 = call i32 @iabs(i32 %sub444)
  %344 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx446 = getelementptr inbounds i16, i16* %344, i64 1
  %345 = load i16, i16* %arrayidx446, align 2
  %conv447 = sext i16 %345 to i32
  %346 = load i16*, i16** %mv.addr, align 8
  %arrayidx448 = getelementptr inbounds i16, i16* %346, i64 1
  %347 = load i16, i16* %arrayidx448, align 2
  %conv449 = sext i16 %347 to i32
  %sub450 = sub nsw i32 %conv447, %conv449
  %call451 = call i32 @iabs(i32 %sub450)
  %add452 = add nsw i32 %call445, %call451
  %tobool453 = icmp ne i32 %add452, 0
  br i1 %tobool453, label %if.then.454, label %if.end.520

if.then.454:                                      ; preds = %lor.lhs.false.439, %if.end.436
  %348 = load i32, i32* %start_pos, align 4
  store i32 %348, i32* %pos, align 4
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.517, %if.then.454
  %349 = load i32, i32* %pos, align 4
  %350 = load i32, i32* %end_pos, align 4
  %cmp456 = icmp slt i32 %349, %350
  br i1 %cmp456, label %for.body.458, label %for.end.519

for.body.458:                                     ; preds = %for.cond.455
  %351 = load i16*, i16** %mv.addr, align 8
  %arrayidx459 = getelementptr inbounds i16, i16* %351, i64 0
  %352 = load i16, i16* %arrayidx459, align 2
  %conv460 = sext i16 %352 to i32
  %353 = load i32, i32* %pos, align 4
  %idxprom461 = sext i32 %353 to i64
  %arrayidx462 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom461
  %arrayidx463 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx462, i32 0, i64 0
  %354 = load i16, i16* %arrayidx463, align 2
  %conv464 = sext i16 %354 to i32
  %add465 = add nsw i32 %conv460, %conv464
  store i32 %add465, i32* %cand_mv_x, align 4
  %355 = load i16*, i16** %mv.addr, align 8
  %arrayidx466 = getelementptr inbounds i16, i16* %355, i64 1
  %356 = load i16, i16* %arrayidx466, align 2
  %conv467 = sext i16 %356 to i32
  %357 = load i32, i32* %pos, align 4
  %idxprom468 = sext i32 %357 to i64
  %arrayidx469 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom468
  %arrayidx470 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx469, i32 0, i64 1
  %358 = load i16, i16* %arrayidx470, align 2
  %conv471 = sext i16 %358 to i32
  %add472 = add nsw i32 %conv467, %conv471
  store i32 %add472, i32* %cand_mv_y, align 4
  %359 = load i32, i32* %lambda_factor, align 4
  %360 = load i32, i32* %cand_mv_x, align 4
  %361 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx473 = getelementptr inbounds i16, i16* %361, i64 0
  %362 = load i16, i16* %arrayidx473, align 2
  %conv474 = sext i16 %362 to i32
  %sub475 = sub nsw i32 %360, %conv474
  %idxprom476 = sext i32 %sub475 to i64
  %363 = load i32*, i32** @mvbits, align 8
  %arrayidx477 = getelementptr inbounds i32, i32* %363, i64 %idxprom476
  %364 = load i32, i32* %arrayidx477, align 4
  %365 = load i32, i32* %cand_mv_y, align 4
  %366 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx478 = getelementptr inbounds i16, i16* %366, i64 1
  %367 = load i16, i16* %arrayidx478, align 2
  %conv479 = sext i16 %367 to i32
  %sub480 = sub nsw i32 %365, %conv479
  %idxprom481 = sext i32 %sub480 to i64
  %368 = load i32*, i32** @mvbits, align 8
  %arrayidx482 = getelementptr inbounds i32, i32* %368, i64 %idxprom481
  %369 = load i32, i32* %arrayidx482, align 4
  %add483 = add nsw i32 %364, %369
  %mul484 = mul nsw i32 %359, %add483
  %shr485 = ashr i32 %mul484, 16
  store i32 %shr485, i32* %mcost, align 4
  %370 = load i32, i32* %lambda_factor, align 4
  %371 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx486 = getelementptr inbounds i16, i16* %371, i64 0
  %372 = load i16, i16* %arrayidx486, align 2
  %conv487 = sext i16 %372 to i32
  %373 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx488 = getelementptr inbounds i16, i16* %373, i64 0
  %374 = load i16, i16* %arrayidx488, align 2
  %conv489 = sext i16 %374 to i32
  %sub490 = sub nsw i32 %conv487, %conv489
  %idxprom491 = sext i32 %sub490 to i64
  %375 = load i32*, i32** @mvbits, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %375, i64 %idxprom491
  %376 = load i32, i32* %arrayidx492, align 4
  %377 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx493 = getelementptr inbounds i16, i16* %377, i64 1
  %378 = load i16, i16* %arrayidx493, align 2
  %conv494 = sext i16 %378 to i32
  %379 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx495 = getelementptr inbounds i16, i16* %379, i64 1
  %380 = load i16, i16* %arrayidx495, align 2
  %conv496 = sext i16 %380 to i32
  %sub497 = sub nsw i32 %conv494, %conv496
  %idxprom498 = sext i32 %sub497 to i64
  %381 = load i32*, i32** @mvbits, align 8
  %arrayidx499 = getelementptr inbounds i32, i32* %381, i64 %idxprom498
  %382 = load i32, i32* %arrayidx499, align 4
  %add500 = add nsw i32 %376, %382
  %mul501 = mul nsw i32 %370, %add500
  %shr502 = ashr i32 %mul501, 16
  %383 = load i32, i32* %mcost, align 4
  %add503 = add nsw i32 %383, %shr502
  store i32 %add503, i32* %mcost, align 4
  %384 = load i32, i32* %mcost, align 4
  %385 = load i32, i32* %min_mcost.addr, align 4
  %cmp504 = icmp sge i32 %384, %385
  br i1 %cmp504, label %if.then.506, label %if.end.507

if.then.506:                                      ; preds = %for.body.458
  br label %for.inc.517

if.end.507:                                       ; preds = %for.body.458
  %386 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %387 = load i16*, i16** %orig_pic.addr, align 8
  %388 = load i32, i32* %blocksize_y, align 4
  %389 = load i32, i32* %blocksize_x, align 4
  %390 = load i32, i32* %min_mcost.addr, align 4
  %391 = load i32, i32* %mcost, align 4
  %sub508 = sub nsw i32 %390, %391
  %392 = load i32, i32* %smv_x, align 4
  %393 = load i32, i32* %smv_y, align 4
  %394 = load i32, i32* %cand_mv_x, align 4
  %395 = load i32, i32* %pic4_pix_x, align 4
  %add509 = add nsw i32 %394, %395
  %396 = load i32, i32* %cand_mv_y, align 4
  %397 = load i32, i32* %pic4_pix_y, align 4
  %add510 = add nsw i32 %396, %397
  %call511 = call i32 %386(i16* %387, i32 %388, i32 %389, i32 %sub508, i32 %392, i32 %393, i32 %add509, i32 %add510)
  %398 = load i32, i32* %mcost, align 4
  %add512 = add nsw i32 %398, %call511
  store i32 %add512, i32* %mcost, align 4
  %399 = load i32, i32* %mcost, align 4
  %400 = load i32, i32* %min_mcost.addr, align 4
  %cmp513 = icmp slt i32 %399, %400
  br i1 %cmp513, label %if.then.515, label %if.end.516

if.then.515:                                      ; preds = %if.end.507
  %401 = load i32, i32* %mcost, align 4
  store i32 %401, i32* %min_mcost.addr, align 4
  %402 = load i32, i32* %pos, align 4
  store i32 %402, i32* %best_pos, align 4
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.515, %if.end.507
  br label %for.inc.517

for.inc.517:                                      ; preds = %if.end.516, %if.then.506
  %403 = load i32, i32* %pos, align 4
  %inc518 = add nsw i32 %403, 1
  store i32 %inc518, i32* %pos, align 4
  br label %for.cond.455

for.end.519:                                      ; preds = %for.cond.455
  br label %if.end.520

if.end.520:                                       ; preds = %for.end.519, %lor.lhs.false.439
  %404 = load i32, i32* %best_pos, align 4
  %tobool521 = icmp ne i32 %404, 0
  br i1 %tobool521, label %if.then.522, label %if.end.539

if.then.522:                                      ; preds = %if.end.520
  %405 = load i32, i32* %best_pos, align 4
  %idxprom523 = sext i32 %405 to i64
  %arrayidx524 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom523
  %arrayidx525 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx524, i32 0, i64 0
  %406 = load i16, i16* %arrayidx525, align 2
  %conv526 = sext i16 %406 to i32
  %407 = load i16*, i16** %mv.addr, align 8
  %arrayidx527 = getelementptr inbounds i16, i16* %407, i64 0
  %408 = load i16, i16* %arrayidx527, align 2
  %conv528 = sext i16 %408 to i32
  %add529 = add nsw i32 %conv528, %conv526
  %conv530 = trunc i32 %add529 to i16
  store i16 %conv530, i16* %arrayidx527, align 2
  %409 = load i32, i32* %best_pos, align 4
  %idxprom531 = sext i32 %409 to i64
  %arrayidx532 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_hp, i32 0, i64 %idxprom531
  %arrayidx533 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx532, i32 0, i64 1
  %410 = load i16, i16* %arrayidx533, align 2
  %conv534 = sext i16 %410 to i32
  %411 = load i16*, i16** %mv.addr, align 8
  %arrayidx535 = getelementptr inbounds i16, i16* %411, i64 1
  %412 = load i16, i16* %arrayidx535, align 2
  %conv536 = sext i16 %412 to i32
  %add537 = add nsw i32 %conv536, %conv534
  %conv538 = trunc i32 %add537 to i16
  store i16 %conv538, i16* %arrayidx535, align 2
  br label %if.end.539

if.end.539:                                       ; preds = %if.then.522, %if.end.520
  %413 = load i32, i32* %apply_weights, align 4
  %tobool540 = icmp ne i32 %413, 0
  br i1 %tobool540, label %cond.true.541, label %cond.false.542

cond.true.541:                                    ; preds = %if.end.539
  %414 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred2, i32 0, i64 2), align 8
  br label %cond.end.543

cond.false.542:                                   ; preds = %if.end.539
  %415 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** getelementptr inbounds ([3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*], [3 x i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*]* @computeBiPred1, i32 0, i64 2), align 8
  br label %cond.end.543

cond.end.543:                                     ; preds = %cond.false.542, %cond.true.541
  %cond544 = phi i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* [ %414, %cond.true.541 ], [ %415, %cond.false.542 ]
  store i32 (i16*, i32, i32, i32, i32, i32, i32, i32)* %cond544, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %416 = load i32, i32* %pic4_pix_x, align 4
  %417 = load i16*, i16** %mv.addr, align 8
  %arrayidx545 = getelementptr inbounds i16, i16* %417, i64 0
  %418 = load i16, i16* %arrayidx545, align 2
  %conv546 = sext i16 %418 to i32
  %add547 = add nsw i32 %416, %conv546
  %cmp548 = icmp sgt i32 %add547, 0
  br i1 %cmp548, label %land.lhs.true.550, label %if.else.569

land.lhs.true.550:                                ; preds = %cond.end.543
  %419 = load i32, i32* %pic4_pix_x, align 4
  %420 = load i16*, i16** %mv.addr, align 8
  %arrayidx551 = getelementptr inbounds i16, i16* %420, i64 0
  %421 = load i16, i16* %arrayidx551, align 2
  %conv552 = sext i16 %421 to i32
  %add553 = add nsw i32 %419, %conv552
  %422 = load i32, i32* %max_pos_x4, align 4
  %cmp554 = icmp slt i32 %add553, %422
  br i1 %cmp554, label %land.lhs.true.556, label %if.else.569

land.lhs.true.556:                                ; preds = %land.lhs.true.550
  %423 = load i32, i32* %pic4_pix_y, align 4
  %424 = load i16*, i16** %mv.addr, align 8
  %arrayidx557 = getelementptr inbounds i16, i16* %424, i64 1
  %425 = load i16, i16* %arrayidx557, align 2
  %conv558 = sext i16 %425 to i32
  %add559 = add nsw i32 %423, %conv558
  %cmp560 = icmp sgt i32 %add559, 0
  br i1 %cmp560, label %land.lhs.true.562, label %if.else.569

land.lhs.true.562:                                ; preds = %land.lhs.true.556
  %426 = load i32, i32* %pic4_pix_y, align 4
  %427 = load i16*, i16** %mv.addr, align 8
  %arrayidx563 = getelementptr inbounds i16, i16* %427, i64 1
  %428 = load i16, i16* %arrayidx563, align 2
  %conv564 = sext i16 %428 to i32
  %add565 = add nsw i32 %426, %conv564
  %429 = load i32, i32* %max_pos_y4, align 4
  %cmp566 = icmp slt i32 %add565, %429
  br i1 %cmp566, label %if.then.568, label %if.else.569

if.then.568:                                      ; preds = %land.lhs.true.562
  store i32 0, i32* @bipred2_access_method, align 4
  br label %if.end.570

if.else.569:                                      ; preds = %land.lhs.true.562, %land.lhs.true.556, %land.lhs.true.550, %cond.end.543
  store i32 1, i32* @bipred2_access_method, align 4
  br label %if.end.570

if.end.570:                                       ; preds = %if.else.569, %if.then.568
  %430 = load i32, i32* %pic4_pix_x, align 4
  %431 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx571 = getelementptr inbounds i16, i16* %431, i64 0
  %432 = load i16, i16* %arrayidx571, align 2
  %conv572 = sext i16 %432 to i32
  %add573 = add nsw i32 %430, %conv572
  %cmp574 = icmp sgt i32 %add573, 0
  br i1 %cmp574, label %land.lhs.true.576, label %if.else.595

land.lhs.true.576:                                ; preds = %if.end.570
  %433 = load i32, i32* %pic4_pix_x, align 4
  %434 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx577 = getelementptr inbounds i16, i16* %434, i64 0
  %435 = load i16, i16* %arrayidx577, align 2
  %conv578 = sext i16 %435 to i32
  %add579 = add nsw i32 %433, %conv578
  %436 = load i32, i32* %max_pos_x4, align 4
  %cmp580 = icmp slt i32 %add579, %436
  br i1 %cmp580, label %land.lhs.true.582, label %if.else.595

land.lhs.true.582:                                ; preds = %land.lhs.true.576
  %437 = load i32, i32* %pic4_pix_y, align 4
  %438 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx583 = getelementptr inbounds i16, i16* %438, i64 1
  %439 = load i16, i16* %arrayidx583, align 2
  %conv584 = sext i16 %439 to i32
  %add585 = add nsw i32 %437, %conv584
  %cmp586 = icmp sgt i32 %add585, 0
  br i1 %cmp586, label %land.lhs.true.588, label %if.else.595

land.lhs.true.588:                                ; preds = %land.lhs.true.582
  %440 = load i32, i32* %pic4_pix_y, align 4
  %441 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx589 = getelementptr inbounds i16, i16* %441, i64 1
  %442 = load i16, i16* %arrayidx589, align 2
  %conv590 = sext i16 %442 to i32
  %add591 = add nsw i32 %440, %conv590
  %443 = load i32, i32* %max_pos_y4, align 4
  %cmp592 = icmp slt i32 %add591, %443
  br i1 %cmp592, label %if.then.594, label %if.else.595

if.then.594:                                      ; preds = %land.lhs.true.588
  store i32 0, i32* @bipred1_access_method, align 4
  br label %if.end.596

if.else.595:                                      ; preds = %land.lhs.true.588, %land.lhs.true.582, %land.lhs.true.576, %if.end.570
  store i32 1, i32* @bipred1_access_method, align 4
  br label %if.end.596

if.end.596:                                       ; preds = %if.else.595, %if.then.594
  %444 = load i32, i32* @start_me_refinement_qp, align 4
  %tobool597 = icmp ne i32 %444, 0
  br i1 %tobool597, label %if.end.599, label %if.then.598

if.then.598:                                      ; preds = %if.end.596
  store i32 2147483647, i32* %min_mcost.addr, align 4
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.598, %if.end.596
  %445 = load i32*, i32** %lambda.addr, align 8
  %arrayidx600 = getelementptr inbounds i32, i32* %445, i64 2
  %446 = load i32, i32* %arrayidx600, align 4
  store i32 %446, i32* %lambda_factor, align 4
  store i32 0, i32* %second_pos, align 4
  store i32 2147483647, i32* %second_mcost, align 4
  store i32 0, i32* %best_pos, align 4
  %447 = load i32, i32* @start_me_refinement_qp, align 4
  store i32 %447, i32* %pos, align 4
  br label %for.cond.601

for.cond.601:                                     ; preds = %for.inc.663, %if.end.599
  %448 = load i32, i32* %pos, align 4
  %cmp602 = icmp slt i32 %448, 5
  br i1 %cmp602, label %for.body.604, label %for.end.665

for.body.604:                                     ; preds = %for.cond.601
  %449 = load i16*, i16** %mv.addr, align 8
  %arrayidx605 = getelementptr inbounds i16, i16* %449, i64 0
  %450 = load i16, i16* %arrayidx605, align 2
  %conv606 = sext i16 %450 to i32
  %451 = load i32, i32* %pos, align 4
  %idxprom607 = sext i32 %451 to i64
  %arrayidx608 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom607
  %arrayidx609 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx608, i32 0, i64 0
  %452 = load i16, i16* %arrayidx609, align 2
  %conv610 = sext i16 %452 to i32
  %add611 = add nsw i32 %conv606, %conv610
  store i32 %add611, i32* %cand_mv_x, align 4
  %453 = load i16*, i16** %mv.addr, align 8
  %arrayidx612 = getelementptr inbounds i16, i16* %453, i64 1
  %454 = load i16, i16* %arrayidx612, align 2
  %conv613 = sext i16 %454 to i32
  %455 = load i32, i32* %pos, align 4
  %idxprom614 = sext i32 %455 to i64
  %arrayidx615 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom614
  %arrayidx616 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx615, i32 0, i64 1
  %456 = load i16, i16* %arrayidx616, align 2
  %conv617 = sext i16 %456 to i32
  %add618 = add nsw i32 %conv613, %conv617
  store i32 %add618, i32* %cand_mv_y, align 4
  %457 = load i32, i32* %lambda_factor, align 4
  %458 = load i32, i32* %cand_mv_x, align 4
  %459 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx619 = getelementptr inbounds i16, i16* %459, i64 0
  %460 = load i16, i16* %arrayidx619, align 2
  %conv620 = sext i16 %460 to i32
  %sub621 = sub nsw i32 %458, %conv620
  %idxprom622 = sext i32 %sub621 to i64
  %461 = load i32*, i32** @mvbits, align 8
  %arrayidx623 = getelementptr inbounds i32, i32* %461, i64 %idxprom622
  %462 = load i32, i32* %arrayidx623, align 4
  %463 = load i32, i32* %cand_mv_y, align 4
  %464 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx624 = getelementptr inbounds i16, i16* %464, i64 1
  %465 = load i16, i16* %arrayidx624, align 2
  %conv625 = sext i16 %465 to i32
  %sub626 = sub nsw i32 %463, %conv625
  %idxprom627 = sext i32 %sub626 to i64
  %466 = load i32*, i32** @mvbits, align 8
  %arrayidx628 = getelementptr inbounds i32, i32* %466, i64 %idxprom627
  %467 = load i32, i32* %arrayidx628, align 4
  %add629 = add nsw i32 %462, %467
  %mul630 = mul nsw i32 %457, %add629
  %shr631 = ashr i32 %mul630, 16
  store i32 %shr631, i32* %mcost, align 4
  %468 = load i32, i32* %lambda_factor, align 4
  %469 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx632 = getelementptr inbounds i16, i16* %469, i64 0
  %470 = load i16, i16* %arrayidx632, align 2
  %conv633 = sext i16 %470 to i32
  %471 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx634 = getelementptr inbounds i16, i16* %471, i64 0
  %472 = load i16, i16* %arrayidx634, align 2
  %conv635 = sext i16 %472 to i32
  %sub636 = sub nsw i32 %conv633, %conv635
  %idxprom637 = sext i32 %sub636 to i64
  %473 = load i32*, i32** @mvbits, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %473, i64 %idxprom637
  %474 = load i32, i32* %arrayidx638, align 4
  %475 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx639 = getelementptr inbounds i16, i16* %475, i64 1
  %476 = load i16, i16* %arrayidx639, align 2
  %conv640 = sext i16 %476 to i32
  %477 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx641 = getelementptr inbounds i16, i16* %477, i64 1
  %478 = load i16, i16* %arrayidx641, align 2
  %conv642 = sext i16 %478 to i32
  %sub643 = sub nsw i32 %conv640, %conv642
  %idxprom644 = sext i32 %sub643 to i64
  %479 = load i32*, i32** @mvbits, align 8
  %arrayidx645 = getelementptr inbounds i32, i32* %479, i64 %idxprom644
  %480 = load i32, i32* %arrayidx645, align 4
  %add646 = add nsw i32 %474, %480
  %mul647 = mul nsw i32 %468, %add646
  %shr648 = ashr i32 %mul647, 16
  %481 = load i32, i32* %mcost, align 4
  %add649 = add nsw i32 %481, %shr648
  store i32 %add649, i32* %mcost, align 4
  %482 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %483 = load i16*, i16** %orig_pic.addr, align 8
  %484 = load i32, i32* %blocksize_y, align 4
  %485 = load i32, i32* %blocksize_x, align 4
  %486 = load i32, i32* %smv_x, align 4
  %487 = load i32, i32* %smv_y, align 4
  %488 = load i32, i32* %cand_mv_x, align 4
  %489 = load i32, i32* %pic4_pix_x, align 4
  %add650 = add nsw i32 %488, %489
  %490 = load i32, i32* %cand_mv_y, align 4
  %491 = load i32, i32* %pic4_pix_y, align 4
  %add651 = add nsw i32 %490, %491
  %call652 = call i32 %482(i16* %483, i32 %484, i32 %485, i32 2147483647, i32 %486, i32 %487, i32 %add650, i32 %add651)
  %492 = load i32, i32* %mcost, align 4
  %add653 = add nsw i32 %492, %call652
  store i32 %add653, i32* %mcost, align 4
  %493 = load i32, i32* %mcost, align 4
  %494 = load i32, i32* %min_mcost.addr, align 4
  %cmp654 = icmp slt i32 %493, %494
  br i1 %cmp654, label %if.then.656, label %if.else.657

if.then.656:                                      ; preds = %for.body.604
  %495 = load i32, i32* %min_mcost.addr, align 4
  store i32 %495, i32* %second_mcost, align 4
  %496 = load i32, i32* %best_pos, align 4
  store i32 %496, i32* %second_pos, align 4
  %497 = load i32, i32* %mcost, align 4
  store i32 %497, i32* %min_mcost.addr, align 4
  %498 = load i32, i32* %pos, align 4
  store i32 %498, i32* %best_pos, align 4
  br label %if.end.662

if.else.657:                                      ; preds = %for.body.604
  %499 = load i32, i32* %mcost, align 4
  %500 = load i32, i32* %second_mcost, align 4
  %cmp658 = icmp slt i32 %499, %500
  br i1 %cmp658, label %if.then.660, label %if.end.661

if.then.660:                                      ; preds = %if.else.657
  %501 = load i32, i32* %mcost, align 4
  store i32 %501, i32* %second_mcost, align 4
  %502 = load i32, i32* %pos, align 4
  store i32 %502, i32* %second_pos, align 4
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.660, %if.else.657
  br label %if.end.662

if.end.662:                                       ; preds = %if.end.661, %if.then.656
  br label %for.inc.663

for.inc.663:                                      ; preds = %if.end.662
  %503 = load i32, i32* %pos, align 4
  %inc664 = add nsw i32 %503, 1
  store i32 %inc664, i32* %pos, align 4
  br label %for.cond.601

for.end.665:                                      ; preds = %for.cond.601
  store i32 5, i32* %start_pos, align 4
  %504 = load i32, i32* %search_pos4.addr, align 4
  store i32 %504, i32* %end_pos, align 4
  %505 = load i32, i32* %best_pos, align 4
  %cmp666 = icmp ne i32 %505, 0
  br i1 %cmp666, label %land.lhs.true.668, label %if.else.679

land.lhs.true.668:                                ; preds = %for.end.665
  %506 = load i32, i32* %second_pos, align 4
  %cmp669 = icmp ne i32 %506, 0
  br i1 %cmp669, label %if.then.671, label %if.else.679

if.then.671:                                      ; preds = %land.lhs.true.668
  %507 = load i32, i32* %best_pos, align 4
  %508 = load i32, i32* %second_pos, align 4
  %xor672 = xor i32 %507, %508
  switch i32 %xor672, label %sw.default.677 [
    i32 1, label %sw.bb.673
    i32 3, label %sw.bb.674
    i32 5, label %sw.bb.675
    i32 7, label %sw.bb.676
  ]

sw.bb.673:                                        ; preds = %if.then.671
  store i32 6, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog.678

sw.bb.674:                                        ; preds = %if.then.671
  store i32 5, i32* %start_pos, align 4
  store i32 6, i32* %end_pos, align 4
  br label %sw.epilog.678

sw.bb.675:                                        ; preds = %if.then.671
  store i32 8, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog.678

sw.bb.676:                                        ; preds = %if.then.671
  store i32 7, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog.678

sw.default.677:                                   ; preds = %if.then.671
  br label %sw.epilog.678

sw.epilog.678:                                    ; preds = %sw.default.677, %sw.bb.676, %sw.bb.675, %sw.bb.674, %sw.bb.673
  br label %if.end.687

if.else.679:                                      ; preds = %land.lhs.true.668, %for.end.665
  %509 = load i32, i32* %best_pos, align 4
  %510 = load i32, i32* %second_pos, align 4
  %add680 = add nsw i32 %509, %510
  switch i32 %add680, label %sw.default.685 [
    i32 1, label %sw.bb.681
    i32 2, label %sw.bb.682
    i32 5, label %sw.bb.683
    i32 7, label %sw.bb.684
  ]

sw.bb.681:                                        ; preds = %if.else.679
  store i32 8, i32* %start_pos, align 4
  store i32 10, i32* %end_pos, align 4
  br label %sw.epilog.686

sw.bb.682:                                        ; preds = %if.else.679
  store i32 5, i32* %start_pos, align 4
  store i32 7, i32* %end_pos, align 4
  br label %sw.epilog.686

sw.bb.683:                                        ; preds = %if.else.679
  store i32 6, i32* %start_pos, align 4
  store i32 8, i32* %end_pos, align 4
  br label %sw.epilog.686

sw.bb.684:                                        ; preds = %if.else.679
  store i32 7, i32* %start_pos, align 4
  store i32 9, i32* %end_pos, align 4
  br label %sw.epilog.686

sw.default.685:                                   ; preds = %if.else.679
  br label %sw.epilog.686

sw.epilog.686:                                    ; preds = %sw.default.685, %sw.bb.684, %sw.bb.683, %sw.bb.682, %sw.bb.681
  br label %if.end.687

if.end.687:                                       ; preds = %sw.epilog.686, %sw.epilog.678
  %511 = load i32, i32* %best_pos, align 4
  %cmp688 = icmp ne i32 %511, 0
  br i1 %cmp688, label %if.then.705, label %lor.lhs.false.690

lor.lhs.false.690:                                ; preds = %if.end.687
  %512 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx691 = getelementptr inbounds i16, i16* %512, i64 0
  %513 = load i16, i16* %arrayidx691, align 2
  %conv692 = sext i16 %513 to i32
  %514 = load i16*, i16** %mv.addr, align 8
  %arrayidx693 = getelementptr inbounds i16, i16* %514, i64 0
  %515 = load i16, i16* %arrayidx693, align 2
  %conv694 = sext i16 %515 to i32
  %sub695 = sub nsw i32 %conv692, %conv694
  %call696 = call i32 @iabs(i32 %sub695)
  %516 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx697 = getelementptr inbounds i16, i16* %516, i64 1
  %517 = load i16, i16* %arrayidx697, align 2
  %conv698 = sext i16 %517 to i32
  %518 = load i16*, i16** %mv.addr, align 8
  %arrayidx699 = getelementptr inbounds i16, i16* %518, i64 1
  %519 = load i16, i16* %arrayidx699, align 2
  %conv700 = sext i16 %519 to i32
  %sub701 = sub nsw i32 %conv698, %conv700
  %call702 = call i32 @iabs(i32 %sub701)
  %add703 = add nsw i32 %call696, %call702
  %tobool704 = icmp ne i32 %add703, 0
  br i1 %tobool704, label %if.then.705, label %if.end.771

if.then.705:                                      ; preds = %lor.lhs.false.690, %if.end.687
  %520 = load i32, i32* %start_pos, align 4
  store i32 %520, i32* %pos, align 4
  br label %for.cond.706

for.cond.706:                                     ; preds = %for.inc.768, %if.then.705
  %521 = load i32, i32* %pos, align 4
  %522 = load i32, i32* %end_pos, align 4
  %cmp707 = icmp slt i32 %521, %522
  br i1 %cmp707, label %for.body.709, label %for.end.770

for.body.709:                                     ; preds = %for.cond.706
  %523 = load i16*, i16** %mv.addr, align 8
  %arrayidx710 = getelementptr inbounds i16, i16* %523, i64 0
  %524 = load i16, i16* %arrayidx710, align 2
  %conv711 = sext i16 %524 to i32
  %525 = load i32, i32* %pos, align 4
  %idxprom712 = sext i32 %525 to i64
  %arrayidx713 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom712
  %arrayidx714 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx713, i32 0, i64 0
  %526 = load i16, i16* %arrayidx714, align 2
  %conv715 = sext i16 %526 to i32
  %add716 = add nsw i32 %conv711, %conv715
  store i32 %add716, i32* %cand_mv_x, align 4
  %527 = load i16*, i16** %mv.addr, align 8
  %arrayidx717 = getelementptr inbounds i16, i16* %527, i64 1
  %528 = load i16, i16* %arrayidx717, align 2
  %conv718 = sext i16 %528 to i32
  %529 = load i32, i32* %pos, align 4
  %idxprom719 = sext i32 %529 to i64
  %arrayidx720 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom719
  %arrayidx721 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx720, i32 0, i64 1
  %530 = load i16, i16* %arrayidx721, align 2
  %conv722 = sext i16 %530 to i32
  %add723 = add nsw i32 %conv718, %conv722
  store i32 %add723, i32* %cand_mv_y, align 4
  %531 = load i32, i32* %lambda_factor, align 4
  %532 = load i32, i32* %cand_mv_x, align 4
  %533 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx724 = getelementptr inbounds i16, i16* %533, i64 0
  %534 = load i16, i16* %arrayidx724, align 2
  %conv725 = sext i16 %534 to i32
  %sub726 = sub nsw i32 %532, %conv725
  %idxprom727 = sext i32 %sub726 to i64
  %535 = load i32*, i32** @mvbits, align 8
  %arrayidx728 = getelementptr inbounds i32, i32* %535, i64 %idxprom727
  %536 = load i32, i32* %arrayidx728, align 4
  %537 = load i32, i32* %cand_mv_y, align 4
  %538 = load i16*, i16** %pred_mv1.addr, align 8
  %arrayidx729 = getelementptr inbounds i16, i16* %538, i64 1
  %539 = load i16, i16* %arrayidx729, align 2
  %conv730 = sext i16 %539 to i32
  %sub731 = sub nsw i32 %537, %conv730
  %idxprom732 = sext i32 %sub731 to i64
  %540 = load i32*, i32** @mvbits, align 8
  %arrayidx733 = getelementptr inbounds i32, i32* %540, i64 %idxprom732
  %541 = load i32, i32* %arrayidx733, align 4
  %add734 = add nsw i32 %536, %541
  %mul735 = mul nsw i32 %531, %add734
  %shr736 = ashr i32 %mul735, 16
  store i32 %shr736, i32* %mcost, align 4
  %542 = load i32, i32* %lambda_factor, align 4
  %543 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx737 = getelementptr inbounds i16, i16* %543, i64 0
  %544 = load i16, i16* %arrayidx737, align 2
  %conv738 = sext i16 %544 to i32
  %545 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx739 = getelementptr inbounds i16, i16* %545, i64 0
  %546 = load i16, i16* %arrayidx739, align 2
  %conv740 = sext i16 %546 to i32
  %sub741 = sub nsw i32 %conv738, %conv740
  %idxprom742 = sext i32 %sub741 to i64
  %547 = load i32*, i32** @mvbits, align 8
  %arrayidx743 = getelementptr inbounds i32, i32* %547, i64 %idxprom742
  %548 = load i32, i32* %arrayidx743, align 4
  %549 = load i16*, i16** %s_mv.addr, align 8
  %arrayidx744 = getelementptr inbounds i16, i16* %549, i64 1
  %550 = load i16, i16* %arrayidx744, align 2
  %conv745 = sext i16 %550 to i32
  %551 = load i16*, i16** %pred_mv2.addr, align 8
  %arrayidx746 = getelementptr inbounds i16, i16* %551, i64 1
  %552 = load i16, i16* %arrayidx746, align 2
  %conv747 = sext i16 %552 to i32
  %sub748 = sub nsw i32 %conv745, %conv747
  %idxprom749 = sext i32 %sub748 to i64
  %553 = load i32*, i32** @mvbits, align 8
  %arrayidx750 = getelementptr inbounds i32, i32* %553, i64 %idxprom749
  %554 = load i32, i32* %arrayidx750, align 4
  %add751 = add nsw i32 %548, %554
  %mul752 = mul nsw i32 %542, %add751
  %shr753 = ashr i32 %mul752, 16
  %555 = load i32, i32* %mcost, align 4
  %add754 = add nsw i32 %555, %shr753
  store i32 %add754, i32* %mcost, align 4
  %556 = load i32, i32* %mcost, align 4
  %557 = load i32, i32* %min_mcost.addr, align 4
  %cmp755 = icmp sge i32 %556, %557
  br i1 %cmp755, label %if.then.757, label %if.end.758

if.then.757:                                      ; preds = %for.body.709
  br label %for.inc.768

if.end.758:                                       ; preds = %for.body.709
  %558 = load i32 (i16*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i16*, i32, i32, i32, i32, i32, i32, i32)** @computeBiPred, align 8
  %559 = load i16*, i16** %orig_pic.addr, align 8
  %560 = load i32, i32* %blocksize_y, align 4
  %561 = load i32, i32* %blocksize_x, align 4
  %562 = load i32, i32* %min_mcost.addr, align 4
  %563 = load i32, i32* %mcost, align 4
  %sub759 = sub nsw i32 %562, %563
  %564 = load i32, i32* %smv_x, align 4
  %565 = load i32, i32* %smv_y, align 4
  %566 = load i32, i32* %cand_mv_x, align 4
  %567 = load i32, i32* %pic4_pix_x, align 4
  %add760 = add nsw i32 %566, %567
  %568 = load i32, i32* %cand_mv_y, align 4
  %569 = load i32, i32* %pic4_pix_y, align 4
  %add761 = add nsw i32 %568, %569
  %call762 = call i32 %558(i16* %559, i32 %560, i32 %561, i32 %sub759, i32 %564, i32 %565, i32 %add760, i32 %add761)
  %570 = load i32, i32* %mcost, align 4
  %add763 = add nsw i32 %570, %call762
  store i32 %add763, i32* %mcost, align 4
  %571 = load i32, i32* %mcost, align 4
  %572 = load i32, i32* %min_mcost.addr, align 4
  %cmp764 = icmp slt i32 %571, %572
  br i1 %cmp764, label %if.then.766, label %if.end.767

if.then.766:                                      ; preds = %if.end.758
  %573 = load i32, i32* %mcost, align 4
  store i32 %573, i32* %min_mcost.addr, align 4
  %574 = load i32, i32* %pos, align 4
  store i32 %574, i32* %best_pos, align 4
  br label %if.end.767

if.end.767:                                       ; preds = %if.then.766, %if.end.758
  br label %for.inc.768

for.inc.768:                                      ; preds = %if.end.767, %if.then.757
  %575 = load i32, i32* %pos, align 4
  %inc769 = add nsw i32 %575, 1
  store i32 %inc769, i32* %pos, align 4
  br label %for.cond.706

for.end.770:                                      ; preds = %for.cond.706
  br label %if.end.771

if.end.771:                                       ; preds = %for.end.770, %lor.lhs.false.690
  %576 = load i32, i32* %best_pos, align 4
  %tobool772 = icmp ne i32 %576, 0
  br i1 %tobool772, label %if.then.773, label %if.end.790

if.then.773:                                      ; preds = %if.end.771
  %577 = load i32, i32* %best_pos, align 4
  %idxprom774 = sext i32 %577 to i64
  %arrayidx775 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom774
  %arrayidx776 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx775, i32 0, i64 0
  %578 = load i16, i16* %arrayidx776, align 2
  %conv777 = sext i16 %578 to i32
  %579 = load i16*, i16** %mv.addr, align 8
  %arrayidx778 = getelementptr inbounds i16, i16* %579, i64 0
  %580 = load i16, i16* %arrayidx778, align 2
  %conv779 = sext i16 %580 to i32
  %add780 = add nsw i32 %conv779, %conv777
  %conv781 = trunc i32 %add780 to i16
  store i16 %conv781, i16* %arrayidx778, align 2
  %581 = load i32, i32* %best_pos, align 4
  %idxprom782 = sext i32 %581 to i64
  %arrayidx783 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @search_point_qp, i32 0, i64 %idxprom782
  %arrayidx784 = getelementptr inbounds [2 x i16], [2 x i16]* %arrayidx783, i32 0, i64 1
  %582 = load i16, i16* %arrayidx784, align 2
  %conv785 = sext i16 %582 to i32
  %583 = load i16*, i16** %mv.addr, align 8
  %arrayidx786 = getelementptr inbounds i16, i16* %583, i64 1
  %584 = load i16, i16* %arrayidx786, align 2
  %conv787 = sext i16 %584 to i32
  %add788 = add nsw i32 %conv787, %conv785
  %conv789 = trunc i32 %add788 to i16
  store i16 %conv789, i16* %arrayidx786, align 2
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.773, %if.end.771
  %585 = load i32, i32* %min_mcost.addr, align 4
  ret i32 %585
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rshift_rnd(i32 %x, i32 %a) #3 {
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
