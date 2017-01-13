; ModuleID = './MultiSource.Applications.JM/18.ldecod.vlc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], [6 x [16 x i32]], [2 x [64 x i32]], [6 x i32], [2 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.timeb = type { i64, i16, i16, i16 }

@NTAB1 = constant [4 x [8 x [2 x i8]]] [[8 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\02", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\01\04", [2 x i8] c"\01\05", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\02\02", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\01\08", [2 x i8] c"\01\09", [2 x i8] c"\04\00"]], align 16
@LEVRUN1 = constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@NTAB2 = constant [4 x [8 x [2 x i8]]] [[8 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\02", [2 x i8] c"\03\00", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [8 x [2 x i8]] [[2 x i8] c"\01\03", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\08\00", [2 x i8] c"\09\00"]], align 16
@LEVRUN3 = constant [4 x i8] c"\02\01\00\00", align 1
@NTAB3 = constant [2 x [2 x [2 x i8]]] [[2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\02\00", [2 x i8] c"\01\01"]], align 1
@UsedBits = common global i32 0, align 4
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@NCBP = external constant [2 x [48 x [2 x i8]]], align 16
@assignSE2partition = external global [0 x [20 x i32]], align 4
@readSyntaxElement_NumCoeffTrailingOnes.lentab = internal constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]], [4 x [17 x i32]] [[17 x i32] [i32 2, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 2, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 3, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 9, i32 11, i32 11, i32 12, i32 13, i32 13, i32 13, i32 14]], [4 x [17 x i32]] [[17 x i32] [i32 4, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 4, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 6, i32 7, i32 8, i32 8, i32 9, i32 10, i32 10, i32 10]]], align 16
@readSyntaxElement_NumCoeffTrailingOnes.codtab = internal constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]], [4 x [17 x i32]] [[17 x i32] [i32 3, i32 11, i32 7, i32 7, i32 7, i32 4, i32 7, i32 15, i32 11, i32 15, i32 11, i32 8, i32 15, i32 11, i32 7, i32 9, i32 7], [17 x i32] [i32 0, i32 2, i32 7, i32 10, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 11, i32 8, i32 6], [17 x i32] [i32 0, i32 0, i32 3, i32 9, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 6, i32 10, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 4, i32 6, i32 8, i32 4, i32 4, i32 4, i32 12, i32 8, i32 12, i32 12, i32 8, i32 1, i32 4]], [4 x [17 x i32]] [[17 x i32] [i32 15, i32 15, i32 11, i32 8, i32 15, i32 11, i32 9, i32 8, i32 15, i32 11, i32 15, i32 11, i32 8, i32 13, i32 9, i32 5, i32 1], [17 x i32] [i32 0, i32 14, i32 15, i32 12, i32 10, i32 8, i32 14, i32 10, i32 14, i32 14, i32 10, i32 14, i32 10, i32 7, i32 12, i32 8, i32 4], [17 x i32] [i32 0, i32 0, i32 13, i32 14, i32 11, i32 9, i32 13, i32 9, i32 13, i32 10, i32 13, i32 9, i32 13, i32 9, i32 11, i32 7, i32 3], [17 x i32] [i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 8, i32 13, i32 12, i32 12, i32 12, i32 8, i32 12, i32 10, i32 6, i32 2]]], align 16
@.str = private unnamed_addr constant [45 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes\0A\00", align 1
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 2, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 7, i32 7, i32 9, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 2, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 7, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]]], align 16
@readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 7, i32 4, i32 3, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 6, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 15, i32 14, i32 7, i32 6, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 13, i32 12, i32 5, i32 6, i32 6, i32 6, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 1, i32 11, i32 10, i32 4, i32 5, i32 5, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 9, i32 8, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]]], align 16
@.str.1 = private unnamed_addr constant [54 x i8] c"ERROR: failed to find NumCoeff/TrailingOnes ChromaDC\0A\00", align 1
@readSyntaxElement_TotalZeros.lentab = internal constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@readSyntaxElement_TotalZeros.codtab = internal constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@.str.2 = private unnamed_addr constant [35 x i8] c"ERROR: failed to find Total Zeros\0A\00", align 1
@readSyntaxElement_TotalZerosChromaDC.lentab = internal constant [3 x [15 x [16 x i32]]] [[15 x [16 x i32]] [[16 x i32] [i32 1, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 2, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]], align 16
@readSyntaxElement_TotalZerosChromaDC.codtab = internal constant [3 x [15 x [16 x i32]]] [[15 x [16 x i32]] [[16 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 2, i32 3, i32 2, i32 3, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 0, i32 1, i32 2, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]], align 16
@readSyntaxElement_Run.lentab = internal constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], align 16
@readSyntaxElement_Run.codtab = internal constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 0, i32 1, i32 3, i32 2, i32 5, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [27 x i8] c"ERROR: failed to find Run\0A\00", align 1
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
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

; Function Attrs: nounwind uwtable
define i32 @ue_v(i8* %tracestring, %struct.Bitstream* %bitstream) #0 {
entry:
  %tracestring.addr = alloca i8*, align 8
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %symbol = alloca %struct.syntaxelement, align 8
  store i8* %tracestring, i8** %tracestring.addr, align 8
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 8
  store void (i32, i32, i32*, i32*)* @linfo_ue, void (i32, i32, i32*, i32*)** %mapping, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @readSyntaxElement_VLC(%struct.syntaxelement* %symbol, %struct.Bitstream* %0)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 3
  %1 = load i32, i32* %len, align 4
  %2 = load i32, i32* @UsedBits, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @UsedBits, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 1
  %3 = load i32, i32* %value1, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @linfo_ue(i32 %len, i32 %info, i32* %value1, i32* %dummy) #0 {
entry:
  %len.addr = alloca i32, align 4
  %info.addr = alloca i32, align 4
  %value1.addr = alloca i32*, align 8
  %dummy.addr = alloca i32*, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %info, i32* %info.addr, align 4
  store i32* %value1, i32** %value1.addr, align 8
  store i32* %dummy, i32** %dummy.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %shr = ashr i32 %0, 1
  %shl = shl i32 1, %shr
  %1 = load i32, i32* %info.addr, align 4
  %add = add nsw i32 %shl, %1
  %sub = sub nsw i32 %add, 1
  %2 = load i32*, i32** %value1.addr, align 8
  store i32 %sub, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_VLC(%struct.syntaxelement* %sym, %struct.Bitstream* %currStream) #0 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %currStream.addr = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.Bitstream* %currStream, %struct.Bitstream** %currStream.addr, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 2
  %1 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %1, i32* %frame_bitoffset, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 4
  %3 = load i8*, i8** %streamBuffer, align 8
  store i8* %3, i8** %buf, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 3
  %5 = load i32, i32* %bitstream_length, align 4
  store i32 %5, i32* %BitstreamLengthInBytes, align 4
  %6 = load i8*, i8** %buf, align 8
  %7 = load i32, i32* %frame_bitoffset, align 4
  %8 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %8, i32 0, i32 4
  %9 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call = call i32 @GetVLCSymbol(i8* %6, i32 %7, i32* %inf, i32 %9)
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 3
  store i32 %call, i32* %len, align 4
  %11 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %11, i32 0, i32 3
  %12 = load i32, i32* %len2, align 4
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len3 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %13, i32 0, i32 3
  %14 = load i32, i32* %len3, align 4
  %15 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %frame_bitoffset4 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 2
  %16 = load i32, i32* %frame_bitoffset4, align 4
  %add = add nsw i32 %16, %14
  store i32 %add, i32* %frame_bitoffset4, align 4
  %17 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %17, i32 0, i32 8
  %18 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** %mapping, align 8
  %19 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len5 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %19, i32 0, i32 3
  %20 = load i32, i32* %len5, align 4
  %21 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf6 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %21, i32 0, i32 4
  %22 = load i32, i32* %inf6, align 4
  %23 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %23, i32 0, i32 1
  %24 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %24, i32 0, i32 2
  call void %18(i32 %20, i32 %22, i32* %value1, i32* %value2)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @se_v(i8* %tracestring, %struct.Bitstream* %bitstream) #0 {
entry:
  %tracestring.addr = alloca i8*, align 8
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %symbol = alloca %struct.syntaxelement, align 8
  store i8* %tracestring, i8** %tracestring.addr, align 8
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 8
  store void (i32, i32, i32*, i32*)* @linfo_se, void (i32, i32, i32*, i32*)** %mapping, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @readSyntaxElement_VLC(%struct.syntaxelement* %symbol, %struct.Bitstream* %0)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 3
  %1 = load i32, i32* %len, align 4
  %2 = load i32, i32* @UsedBits, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* @UsedBits, align 4
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 1
  %3 = load i32, i32* %value1, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define void @linfo_se(i32 %len, i32 %info, i32* %value1, i32* %dummy) #0 {
entry:
  %len.addr = alloca i32, align 4
  %info.addr = alloca i32, align 4
  %value1.addr = alloca i32*, align 8
  %dummy.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %info, i32* %info.addr, align 4
  store i32* %value1, i32** %value1.addr, align 8
  store i32* %dummy, i32** %dummy.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %shr = ashr i32 %0, 1
  %shl = shl i32 1, %shr
  %1 = load i32, i32* %info.addr, align 4
  %add = add nsw i32 %shl, %1
  %sub = sub nsw i32 %add, 1
  store i32 %sub, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %add1 = add nsw i32 %2, 1
  %shr2 = ashr i32 %add1, 1
  %3 = load i32*, i32** %value1.addr, align 8
  store i32 %shr2, i32* %3, align 4
  %4 = load i32, i32* %n, align 4
  %and = and i32 %4, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %value1.addr, align 8
  %6 = load i32, i32* %5, align 4
  %sub3 = sub nsw i32 0, %6
  %7 = load i32*, i32** %value1.addr, align 8
  store i32 %sub3, i32* %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @u_v(i32 %LenInBits, i8* %tracestring, %struct.Bitstream* %bitstream) #0 {
entry:
  %LenInBits.addr = alloca i32, align 4
  %tracestring.addr = alloca i8*, align 8
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  %symbol = alloca %struct.syntaxelement, align 8
  store i32 %LenInBits, i32* %LenInBits.addr, align 4
  store i8* %tracestring, i8** %tracestring.addr, align 8
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 4
  store i32 0, i32* %inf, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 0
  store i32 0, i32* %type, align 4
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 8
  store void (i32, i32, i32*, i32*)* @linfo_ue, void (i32, i32, i32*, i32*)** %mapping, align 8
  %0 = load i32, i32* %LenInBits.addr, align 4
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 3
  store i32 %0, i32* %len, align 4
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @readSyntaxElement_FLC(%struct.syntaxelement* %symbol, %struct.Bitstream* %1)
  %len1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 3
  %2 = load i32, i32* %len1, align 4
  %3 = load i32, i32* @UsedBits, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* @UsedBits, align 4
  %inf2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %symbol, i32 0, i32 4
  %4 = load i32, i32* %inf2, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_FLC(%struct.syntaxelement* %sym, %struct.Bitstream* %currStream) #0 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %currStream.addr = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.Bitstream* %currStream, %struct.Bitstream** %currStream.addr, align 8
  %0 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %0, i32 0, i32 2
  %1 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %1, i32* %frame_bitoffset, align 4
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 4
  %3 = load i8*, i8** %streamBuffer, align 8
  store i8* %3, i8** %buf, align 8
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 3
  %5 = load i32, i32* %bitstream_length, align 4
  store i32 %5, i32* %BitstreamLengthInBytes, align 4
  %6 = load i8*, i8** %buf, align 8
  %7 = load i32, i32* %frame_bitoffset, align 4
  %8 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %8, i32 0, i32 4
  %9 = load i32, i32* %BitstreamLengthInBytes, align 4
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 3
  %11 = load i32, i32* %len, align 4
  %call = call i32 @GetBits(i8* %6, i32 %7, i32* %inf, i32 %9, i32 %11)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %12, i32 0, i32 3
  %13 = load i32, i32* %len2, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %currStream.addr, align 8
  %frame_bitoffset3 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 2
  %15 = load i32, i32* %frame_bitoffset3, align 4
  %add = add nsw i32 %15, %13
  store i32 %add, i32* %frame_bitoffset3, align 4
  %16 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf4 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %16, i32 0, i32 4
  %17 = load i32, i32* %inf4, align 4
  %18 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %18, i32 0, i32 1
  store i32 %17, i32* %value1, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @u_1(i8* %tracestring, %struct.Bitstream* %bitstream) #0 {
entry:
  %tracestring.addr = alloca i8*, align 8
  %bitstream.addr = alloca %struct.Bitstream*, align 8
  store i8* %tracestring, i8** %tracestring.addr, align 8
  store %struct.Bitstream* %bitstream, %struct.Bitstream** %bitstream.addr, align 8
  %0 = load i8*, i8** %tracestring.addr, align 8
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream.addr, align 8
  %call = call i32 @u_v(i32 1, i8* %0, %struct.Bitstream* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @linfo_cbp_intra(i32 %len, i32 %info, i32* %cbp, i32* %dummy) #0 {
entry:
  %len.addr = alloca i32, align 4
  %info.addr = alloca i32, align 4
  %cbp.addr = alloca i32*, align 8
  %dummy.addr = alloca i32*, align 8
  %cbp_idx = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %info, i32* %info.addr, align 4
  store i32* %cbp, i32** %cbp.addr, align 8
  store i32* %dummy, i32** %dummy.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %1 = load i32, i32* %info.addr, align 4
  %2 = load i32*, i32** %dummy.addr, align 8
  call void @linfo_ue(i32 %0, i32 %1, i32* %cbp_idx, i32* %2)
  %3 = load i32, i32* %cbp_idx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 8
  %5 = load i32, i32* %chroma_format_idc, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %idxprom1 = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [2 x [48 x [2 x i8]]], [2 x [48 x [2 x i8]]]* @NCBP, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [48 x [2 x i8]], [48 x [2 x i8]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx2, i32 0, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32*, i32** %cbp.addr, align 8
  store i32 %conv, i32* %7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @linfo_cbp_inter(i32 %len, i32 %info, i32* %cbp, i32* %dummy) #0 {
entry:
  %len.addr = alloca i32, align 4
  %info.addr = alloca i32, align 4
  %cbp.addr = alloca i32*, align 8
  %dummy.addr = alloca i32*, align 8
  %cbp_idx = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %info, i32* %info.addr, align 4
  store i32* %cbp, i32** %cbp.addr, align 8
  store i32* %dummy, i32** %dummy.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %1 = load i32, i32* %info.addr, align 4
  %2 = load i32*, i32** %dummy.addr, align 8
  call void @linfo_ue(i32 %0, i32 %1, i32* %cbp_idx, i32* %2)
  %3 = load i32, i32* %cbp_idx, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %4, i32 0, i32 8
  %5 = load i32, i32* %chroma_format_idc, align 4
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %idxprom1 = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [2 x [48 x [2 x i8]]], [2 x [48 x [2 x i8]]]* @NCBP, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [48 x [2 x i8]], [48 x [2 x i8]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx2, i32 0, i64 1
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32*, i32** %cbp.addr, align 8
  store i32 %conv, i32* %7, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @linfo_levrun_inter(i32 %len, i32 %info, i32* %level, i32* %irun) #0 {
entry:
  %len.addr = alloca i32, align 4
  %info.addr = alloca i32, align 4
  %level.addr = alloca i32*, align 8
  %irun.addr = alloca i32*, align 8
  %l2 = alloca i32, align 4
  %inf = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %info, i32* %info.addr, align 4
  store i32* %level, i32** %level.addr, align 8
  store i32* %irun, i32** %irun.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp sle i32 %0, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %shr = ashr i32 %1, 1
  %sub = sub nsw i32 %shr, 1
  %call = call i32 @imax(i32 0, i32 %sub)
  store i32 %call, i32* %l2, align 4
  %2 = load i32, i32* %info.addr, align 4
  %shr1 = ashr i32 %2, 1
  store i32 %shr1, i32* %inf, align 4
  %3 = load i32, i32* %inf, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %l2, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x [8 x [2 x i8]]], [4 x [8 x [2 x i8]]]* @NTAB1, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx3, i32 0, i64 0
  %5 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32*, i32** %level.addr, align 8
  store i32 %conv, i32* %6, align 4
  %7 = load i32, i32* %inf, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32, i32* %l2, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [4 x [8 x [2 x i8]]], [4 x [8 x [2 x i8]]]* @NTAB1, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [8 x [2 x i8]], [8 x [2 x i8]]* %arrayidx7, i32 0, i64 %idxprom5
  %arrayidx9 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx8, i32 0, i64 1
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %10 = load i32*, i32** %irun.addr, align 8
  store i32 %conv10, i32* %10, align 4
  %11 = load i32, i32* %info.addr, align 4
  %and = and i32 %11, 1
  %cmp11 = icmp eq i32 %and, 1
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %12 = load i32*, i32** %level.addr, align 8
  %13 = load i32, i32* %12, align 4
  %sub14 = sub nsw i32 0, %13
  %14 = load i32*, i32** %level.addr, align 8
  store i32 %sub14, i32* %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.30

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %info.addr, align 4
  %and15 = and i32 %15, 30
  %shr16 = ashr i32 %and15, 1
  %16 = load i32*, i32** %irun.addr, align 8
  store i32 %shr16, i32* %16, align 4
  %17 = load i32*, i32** %irun.addr, align 8
  %18 = load i32, i32* %17, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [16 x i8], [16 x i8]* @LEVRUN1, i32 0, i64 %idxprom17
  %19 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %19 to i32
  %20 = load i32, i32* %info.addr, align 4
  %shr20 = ashr i32 %20, 5
  %add = add nsw i32 %conv19, %shr20
  %21 = load i32, i32* %len.addr, align 4
  %shr21 = ashr i32 %21, 1
  %sub22 = sub nsw i32 %shr21, 5
  %shl = shl i32 1, %sub22
  %add23 = add nsw i32 %add, %shl
  %22 = load i32*, i32** %level.addr, align 8
  store i32 %add23, i32* %22, align 4
  %23 = load i32, i32* %info.addr, align 4
  %and24 = and i32 %23, 1
  %cmp25 = icmp eq i32 %and24, 1
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.else
  %24 = load i32*, i32** %level.addr, align 8
  %25 = load i32, i32* %24, align 4
  %sub28 = sub nsw i32 0, %25
  %26 = load i32*, i32** %level.addr, align 8
  store i32 %sub28, i32* %26, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %27 = load i32, i32* %len.addr, align 4
  %cmp31 = icmp eq i32 %27, 1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %28 = load i32*, i32** %level.addr, align 8
  store i32 0, i32* %28, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #1 {
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

; Function Attrs: nounwind uwtable
define void @linfo_levrun_c2x2(i32 %len, i32 %info, i32* %level, i32* %irun) #0 {
entry:
  %len.addr = alloca i32, align 4
  %info.addr = alloca i32, align 4
  %level.addr = alloca i32*, align 8
  %irun.addr = alloca i32*, align 8
  %l2 = alloca i32, align 4
  %inf = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %info, i32* %info.addr, align 4
  store i32* %level, i32** %level.addr, align 8
  store i32* %irun, i32** %irun.addr, align 8
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp sle i32 %0, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %shr = ashr i32 %1, 1
  %sub = sub nsw i32 %shr, 1
  %call = call i32 @imax(i32 0, i32 %sub)
  store i32 %call, i32* %l2, align 4
  %2 = load i32, i32* %info.addr, align 4
  %shr1 = ashr i32 %2, 1
  store i32 %shr1, i32* %inf, align 4
  %3 = load i32, i32* %inf, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %l2, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x [2 x i8]]], [2 x [2 x [2 x i8]]]* @NTAB3, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx3, i32 0, i64 0
  %5 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32*, i32** %level.addr, align 8
  store i32 %conv, i32* %6, align 4
  %7 = load i32, i32* %inf, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i32, i32* %l2, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x [2 x [2 x i8]]], [2 x [2 x [2 x i8]]]* @NTAB3, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [2 x [2 x i8]], [2 x [2 x i8]]* %arrayidx7, i32 0, i64 %idxprom5
  %arrayidx9 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx8, i32 0, i64 1
  %9 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %10 = load i32*, i32** %irun.addr, align 8
  store i32 %conv10, i32* %10, align 4
  %11 = load i32, i32* %info.addr, align 4
  %and = and i32 %11, 1
  %cmp11 = icmp eq i32 %and, 1
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %12 = load i32*, i32** %level.addr, align 8
  %13 = load i32, i32* %12, align 4
  %sub14 = sub nsw i32 0, %13
  %14 = load i32*, i32** %level.addr, align 8
  store i32 %sub14, i32* %14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.30

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %info.addr, align 4
  %and15 = and i32 %15, 6
  %shr16 = ashr i32 %and15, 1
  %16 = load i32*, i32** %irun.addr, align 8
  store i32 %shr16, i32* %16, align 4
  %17 = load i32*, i32** %irun.addr, align 8
  %18 = load i32, i32* %17, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [4 x i8], [4 x i8]* @LEVRUN3, i32 0, i64 %idxprom17
  %19 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %19 to i32
  %20 = load i32, i32* %info.addr, align 4
  %shr20 = ashr i32 %20, 3
  %add = add nsw i32 %conv19, %shr20
  %21 = load i32, i32* %len.addr, align 4
  %shr21 = ashr i32 %21, 1
  %sub22 = sub nsw i32 %shr21, 3
  %shl = shl i32 1, %sub22
  %add23 = add nsw i32 %add, %shl
  %22 = load i32*, i32** %level.addr, align 8
  store i32 %add23, i32* %22, align 4
  %23 = load i32, i32* %info.addr, align 4
  %and24 = and i32 %23, 1
  %cmp25 = icmp eq i32 %and24, 1
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.else
  %24 = load i32*, i32** %level.addr, align 8
  %25 = load i32, i32* %24, align 4
  %sub28 = sub nsw i32 0, %25
  %26 = load i32*, i32** %level.addr, align 8
  store i32 %sub28, i32* %26, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %27 = load i32, i32* %len.addr, align 4
  %cmp31 = icmp eq i32 %27, 1
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  %28 = load i32*, i32** %level.addr, align 8
  store i32 0, i32* %28, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.30
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @GetVLCSymbol(i8* %buffer, i32 %totbitoffset, i32* %info, i32 %bytecount) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %totbitoffset.addr = alloca i32, align 4
  %info.addr = alloca i32*, align 8
  %bytecount.addr = alloca i32, align 4
  %inf = alloca i32, align 4
  %byteoffset = alloca i64, align 8
  %bitoffset = alloca i32, align 4
  %ctr_bit = alloca i32, align 4
  %bitcounter = alloca i32, align 4
  %len = alloca i32, align 4
  %info_bit = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %totbitoffset, i32* %totbitoffset.addr, align 4
  store i32* %info, i32** %info.addr, align 8
  store i32 %bytecount, i32* %bytecount.addr, align 4
  store i32 0, i32* %ctr_bit, align 4
  store i32 1, i32* %bitcounter, align 4
  %0 = load i32, i32* %totbitoffset.addr, align 4
  %shr = ashr i32 %0, 3
  %conv = sext i32 %shr to i64
  store i64 %conv, i64* %byteoffset, align 8
  %1 = load i32, i32* %totbitoffset.addr, align 4
  %and = and i32 %1, 7
  %sub = sub nsw i32 7, %and
  store i32 %sub, i32* %bitoffset, align 4
  %2 = load i64, i64* %byteoffset, align 8
  %3 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %4 to i32
  %5 = load i32, i32* %bitoffset, align 4
  %shl = shl i32 1, %5
  %and2 = and i32 %conv1, %shl
  store i32 %and2, i32* %ctr_bit, align 4
  store i32 1, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %ctr_bit, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %len, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %len, align 4
  %8 = load i32, i32* %bitoffset, align 4
  %sub4 = sub nsw i32 %8, 1
  store i32 %sub4, i32* %bitoffset, align 4
  %9 = load i32, i32* %bitcounter, align 4
  %inc5 = add nsw i32 %9, 1
  store i32 %inc5, i32* %bitcounter, align 4
  %10 = load i32, i32* %bitoffset, align 4
  %cmp6 = icmp slt i32 %10, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %bitoffset, align 4
  %add = add nsw i32 %11, 8
  store i32 %add, i32* %bitoffset, align 4
  %12 = load i64, i64* %byteoffset, align 8
  %inc8 = add nsw i64 %12, 1
  store i64 %inc8, i64* %byteoffset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load i64, i64* %byteoffset, align 8
  %14 = load i8*, i8** %buffer.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 %13
  %15 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %16 = load i32, i32* %bitoffset, align 4
  %shl11 = shl i32 1, %16
  %and12 = and i32 %conv10, %shl11
  store i32 %and12, i32* %ctr_bit, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %inf, align 4
  store i32 0, i32* %info_bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %info_bit, align 4
  %18 = load i32, i32* %len, align 4
  %sub13 = sub nsw i32 %18, 1
  %cmp14 = icmp slt i32 %17, %sub13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %bitcounter, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, i32* %bitcounter, align 4
  %20 = load i32, i32* %bitoffset, align 4
  %sub17 = sub nsw i32 %20, 1
  store i32 %sub17, i32* %bitoffset, align 4
  %21 = load i32, i32* %bitoffset, align 4
  %cmp18 = icmp slt i32 %21, 0
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %for.body
  %22 = load i32, i32* %bitoffset, align 4
  %add21 = add nsw i32 %22, 8
  store i32 %add21, i32* %bitoffset, align 4
  %23 = load i64, i64* %byteoffset, align 8
  %inc22 = add nsw i64 %23, 1
  store i64 %inc22, i64* %byteoffset, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %for.body
  %24 = load i64, i64* %byteoffset, align 8
  %25 = load i32, i32* %bytecount.addr, align 4
  %conv24 = sext i32 %25 to i64
  %cmp25 = icmp sgt i64 %24, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %26 = load i32, i32* %inf, align 4
  %shl29 = shl i32 %26, 1
  store i32 %shl29, i32* %inf, align 4
  %27 = load i64, i64* %byteoffset, align 8
  %28 = load i8*, i8** %buffer.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %28, i64 %27
  %29 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  %30 = load i32, i32* %bitoffset, align 4
  %shl32 = shl i32 1, %30
  %and33 = and i32 %conv31, %shl32
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  %31 = load i32, i32* %inf, align 4
  %or = or i32 %31, 1
  store i32 %or, i32* %inf, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %32 = load i32, i32* %info_bit, align 4
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %info_bit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %inf, align 4
  %34 = load i32*, i32** %info.addr, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %bitcounter, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.27
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_UVLC(%struct.syntaxelement* %sym, %struct.img_par* %img, %struct.datapartition* %dP) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %currStream, align 8
  %2 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %3 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %call = call i32 @readSyntaxElement_VLC(%struct.syntaxelement* %2, %struct.Bitstream* %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* %sym, %struct.img_par* %img, %struct.datapartition* %dP) #0 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %currStream, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 2
  %3 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %3, i32* %frame_bitoffset, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 3
  %7 = load i32, i32* %bitstream_length, align 4
  store i32 %7, i32* %BitstreamLengthInBytes, align 4
  %8 = load i8*, i8** %buf, align 8
  %9 = load i32, i32* %frame_bitoffset, align 4
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 4
  %11 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call = call i32 @GetVLCSymbol_IntraMode(i8* %8, i32 %9, i32* %inf, i32 %11)
  %12 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %12, i32 0, i32 3
  store i32 %call, i32* %len, align 4
  %13 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %13, i32 0, i32 3
  %14 = load i32, i32* %len2, align 4
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len3 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %15, i32 0, i32 3
  %16 = load i32, i32* %len3, align 4
  %17 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset4 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %17, i32 0, i32 2
  %18 = load i32, i32* %frame_bitoffset4, align 4
  %add = add nsw i32 %18, %16
  store i32 %add, i32* %frame_bitoffset4, align 4
  %19 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len5 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %19, i32 0, i32 3
  %20 = load i32, i32* %len5, align 4
  %cmp6 = icmp eq i32 %20, 1
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %21 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf7 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %21, i32 0, i32 4
  %22 = load i32, i32* %inf7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %22, %cond.false ]
  %23 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %23, i32 0, i32 1
  store i32 %cond, i32* %value1, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @GetVLCSymbol_IntraMode(i8* %buffer, i32 %totbitoffset, i32* %info, i32 %bytecount) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %totbitoffset.addr = alloca i32, align 4
  %info.addr = alloca i32*, align 8
  %bytecount.addr = alloca i32, align 4
  %inf = alloca i32, align 4
  %byteoffset = alloca i64, align 8
  %bitoffset = alloca i32, align 4
  %ctr_bit = alloca i32, align 4
  %bitcounter = alloca i32, align 4
  %len = alloca i32, align 4
  %info_bit = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %totbitoffset, i32* %totbitoffset.addr, align 4
  store i32* %info, i32** %info.addr, align 8
  store i32 %bytecount, i32* %bytecount.addr, align 4
  store i32 0, i32* %ctr_bit, align 4
  store i32 1, i32* %bitcounter, align 4
  %0 = load i32, i32* %totbitoffset.addr, align 4
  %shr = ashr i32 %0, 3
  %conv = sext i32 %shr to i64
  store i64 %conv, i64* %byteoffset, align 8
  %1 = load i32, i32* %totbitoffset.addr, align 4
  %and = and i32 %1, 7
  %sub = sub nsw i32 7, %and
  store i32 %sub, i32* %bitoffset, align 4
  %2 = load i64, i64* %byteoffset, align 8
  %3 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %4 to i32
  %5 = load i32, i32* %bitoffset, align 4
  %shl = shl i32 1, %5
  %and2 = and i32 %conv1, %shl
  store i32 %and2, i32* %ctr_bit, align 4
  store i32 1, i32* %len, align 4
  %6 = load i32, i32* %ctr_bit, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %info.addr, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %bitcounter, align 4
  store i32 %8, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 4, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, i32* %inf, align 4
  store i32 0, i32* %info_bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %info_bit, align 4
  %10 = load i32, i32* %len, align 4
  %sub3 = sub nsw i32 %10, 1
  %cmp = icmp slt i32 %9, %sub3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %bitcounter, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %bitcounter, align 4
  %12 = load i32, i32* %bitoffset, align 4
  %sub5 = sub nsw i32 %12, 1
  store i32 %sub5, i32* %bitoffset, align 4
  %13 = load i32, i32* %bitoffset, align 4
  %cmp6 = icmp slt i32 %13, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body
  %14 = load i32, i32* %bitoffset, align 4
  %add = add nsw i32 %14, 8
  store i32 %add, i32* %bitoffset, align 4
  %15 = load i64, i64* %byteoffset, align 8
  %inc9 = add nsw i64 %15, 1
  store i64 %inc9, i64* %byteoffset, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.body
  %16 = load i64, i64* %byteoffset, align 8
  %17 = load i32, i32* %bytecount.addr, align 4
  %conv11 = sext i32 %17 to i64
  %cmp12 = icmp sgt i64 %16, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %18 = load i32, i32* %inf, align 4
  %shl16 = shl i32 %18, 1
  store i32 %shl16, i32* %inf, align 4
  %19 = load i64, i64* %byteoffset, align 8
  %20 = load i8*, i8** %buffer.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %19
  %21 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %21 to i32
  %22 = load i32, i32* %bitoffset, align 4
  %shl19 = shl i32 1, %22
  %and20 = and i32 %conv18, %shl19
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  %23 = load i32, i32* %inf, align 4
  %or = or i32 %23, 1
  store i32 %or, i32* %inf, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %24 = load i32, i32* %info_bit, align 4
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, i32* %info_bit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %inf, align 4
  %26 = load i32*, i32** %info.addr, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %bitcounter, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @more_rbsp_data(i8* %buffer, i32 %totbitoffset, i32 %bytecount) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %totbitoffset.addr = alloca i32, align 4
  %bytecount.addr = alloca i32, align 4
  %byteoffset = alloca i64, align 8
  %bitoffset = alloca i32, align 4
  %ctr_bit = alloca i32, align 4
  %cnt = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %totbitoffset, i32* %totbitoffset.addr, align 4
  store i32 %bytecount, i32* %bytecount.addr, align 4
  store i32 0, i32* %ctr_bit, align 4
  store i32 0, i32* %cnt, align 4
  %0 = load i32, i32* %totbitoffset.addr, align 4
  %shr = ashr i32 %0, 3
  %conv = sext i32 %shr to i64
  store i64 %conv, i64* %byteoffset, align 8
  %1 = load i32, i32* %totbitoffset.addr, align 4
  %and = and i32 %1, 7
  %sub = sub nsw i32 7, %and
  store i32 %sub, i32* %bitoffset, align 4
  %2 = load i64, i64* %byteoffset, align 8
  %3 = load i32, i32* %bytecount.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %conv2 = sext i32 %sub1 to i64
  %cmp = icmp slt i64 %2, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %byteoffset, align 8
  %5 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %6 to i32
  %7 = load i32, i32* %bitoffset, align 4
  %shl = shl i32 1, %7
  %and5 = and i32 %conv4, %shl
  store i32 %and5, i32* %ctr_bit, align 4
  %8 = load i32, i32* %ctr_bit, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %9 = load i32, i32* %bitoffset, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %bitoffset, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end.9
  %10 = load i32, i32* %bitoffset, align 4
  %cmp10 = icmp sge i32 %10, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %byteoffset, align 8
  %12 = load i8*, i8** %buffer.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %11
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %14 = load i32, i32* %bitoffset, align 4
  %shl14 = shl i32 1, %14
  %and15 = and i32 %conv13, %shl14
  store i32 %and15, i32* %ctr_bit, align 4
  %15 = load i32, i32* %ctr_bit, align 4
  %cmp16 = icmp sgt i32 %15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.body
  %16 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %cnt, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %while.body
  %17 = load i32, i32* %bitoffset, align 4
  %dec20 = add nsw i32 %17, -1
  store i32 %dec20, i32* %bitoffset, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %cnt, align 4
  %cmp21 = icmp ne i32 0, %18
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.8, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @uvlc_startcode_follows(%struct.img_par* %img, i32 %dummy) #0 {
entry:
  %img.addr = alloca %struct.img_par*, align 8
  %dummy.addr = alloca i32, align 4
  %dp_Nr = alloca i32, align 4
  %dP = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %buf = alloca i8*, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store i32 %dummy, i32* %dummy.addr, align 4
  %0 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice = getelementptr inbounds %struct.img_par, %struct.img_par* %0, i32 0, i32 38
  %1 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  %dp_mode = getelementptr inbounds %struct.Slice, %struct.Slice* %1, i32 0, i32 7
  %2 = load i32, i32* %dp_mode, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x [20 x i32]], [0 x [20 x i32]]* @assignSE2partition, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i32 0, i64 2
  %3 = load i32, i32* %arrayidx1, align 4
  store i32 %3, i32* %dp_Nr, align 4
  %4 = load i32, i32* %dp_Nr, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.img_par*, %struct.img_par** %img.addr, align 8
  %currentSlice3 = getelementptr inbounds %struct.img_par, %struct.img_par* %5, i32 0, i32 38
  %6 = load %struct.Slice*, %struct.Slice** %currentSlice3, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %6, i32 0, i32 9
  %7 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx4 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %7, i64 %idxprom2
  store %struct.datapartition* %arrayidx4, %struct.datapartition** %dP, align 8
  %8 = load %struct.datapartition*, %struct.datapartition** %dP, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %8, i32 0, i32 0
  %9 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %9, %struct.Bitstream** %currStream, align 8
  %10 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %10, i32 0, i32 4
  %11 = load i8*, i8** %streamBuffer, align 8
  store i8* %11, i8** %buf, align 8
  %12 = load i8*, i8** %buf, align 8
  %13 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %13, i32 0, i32 2
  %14 = load i32, i32* %frame_bitoffset, align 4
  %15 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %15, i32 0, i32 3
  %16 = load i32, i32* %bitstream_length, align 4
  %call = call i32 @more_rbsp_data(i8* %12, i32 %14, i32 %16)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define i32 @code_from_bitstream_2d(%struct.syntaxelement* %sym, %struct.datapartition* %dP, i32* %lentab, i32* %codtab, i32 %tabwidth, i32 %tabheight, i32* %code) #0 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %lentab.addr = alloca i32*, align 8
  %codtab.addr = alloca i32*, align 8
  %tabwidth.addr = alloca i32, align 4
  %tabheight.addr = alloca i32, align 4
  %code.addr = alloca i32*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %cod = alloca i32, align 4
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  store i32* %lentab, i32** %lentab.addr, align 8
  store i32* %codtab, i32** %codtab.addr, align 8
  store i32 %tabwidth, i32* %tabwidth.addr, align 4
  store i32 %tabheight, i32* %tabheight.addr, align 4
  store i32* %code, i32** %code.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %currStream, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 2
  %3 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %3, i32* %frame_bitoffset, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 3
  %7 = load i32, i32* %bitstream_length, align 4
  store i32 %7, i32* %BitstreamLengthInBytes, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %tabheight.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %tabwidth.addr, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** %lentab.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  store i32 %14, i32* %len, align 4
  %15 = load i32, i32* %len, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.4
  br label %for.inc

if.end:                                           ; preds = %for.body.4
  %16 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %16 to i64
  %17 = load i32*, i32** %codtab.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %idxprom5
  %18 = load i32, i32* %arrayidx6, align 4
  store i32 %18, i32* %cod, align 4
  %19 = load i8*, i8** %buf, align 8
  %20 = load i32, i32* %frame_bitoffset, align 4
  %21 = load i32, i32* %BitstreamLengthInBytes, align 4
  %22 = load i32, i32* %len, align 4
  %call = call i32 @ShowBits(i8* %19, i32 %20, i32 %21, i32 %22)
  %23 = load i32, i32* %cod, align 4
  %cmp7 = icmp eq i32 %call, %23
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %25, i32 0, i32 1
  store i32 %24, i32* %value1, align 4
  %26 = load i32, i32* %j, align 4
  %27 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %27, i32 0, i32 2
  store i32 %26, i32* %value2, align 4
  %28 = load i32, i32* %len, align 4
  %29 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset9 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %29, i32 0, i32 2
  %30 = load i32, i32* %frame_bitoffset9, align 4
  %add = add nsw i32 %30, %28
  store i32 %add, i32* %frame_bitoffset9, align 4
  %31 = load i32, i32* %len, align 4
  %32 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len10 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %32, i32 0, i32 3
  store i32 %31, i32* %len10, align 4
  br label %found_code

if.end.11:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11, %if.then
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %34 = load i32, i32* %tabwidth.addr, align 4
  %35 = load i32*, i32** %lentab.addr, align 8
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i32, i32* %35, i64 %idx.ext
  store i32* %add.ptr, i32** %lentab.addr, align 8
  %36 = load i32, i32* %tabwidth.addr, align 4
  %37 = load i32*, i32** %codtab.addr, align 8
  %idx.ext12 = sext i32 %36 to i64
  %add.ptr13 = getelementptr inbounds i32, i32* %37, i64 %idx.ext12
  store i32* %add.ptr13, i32** %codtab.addr, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %38 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %38, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

found_code:                                       ; preds = %if.then.8
  %39 = load i32, i32* %cod, align 4
  %40 = load i32*, i32** %code.addr, align 8
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %found_code, %for.end.16
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @ShowBits(i8* %buffer, i32 %totbitoffset, i32 %bytecount, i32 %numbits) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %totbitoffset.addr = alloca i32, align 4
  %bytecount.addr = alloca i32, align 4
  %numbits.addr = alloca i32, align 4
  %inf = alloca i32, align 4
  %byteoffset = alloca i64, align 8
  %bitoffset = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %totbitoffset, i32* %totbitoffset.addr, align 4
  store i32 %bytecount, i32* %bytecount.addr, align 4
  store i32 %numbits, i32* %numbits.addr, align 4
  %0 = load i32, i32* %totbitoffset.addr, align 4
  %shr = ashr i32 %0, 3
  %conv = sext i32 %shr to i64
  store i64 %conv, i64* %byteoffset, align 8
  %1 = load i32, i32* %totbitoffset.addr, align 4
  %and = and i32 %1, 7
  %sub = sub nsw i32 7, %and
  store i32 %sub, i32* %bitoffset, align 4
  store i32 0, i32* %inf, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %2 = load i32, i32* %numbits.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %inf, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %inf, align 4
  %4 = load i64, i64* %byteoffset, align 8
  %5 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %4
  %6 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %6 to i32
  %7 = load i32, i32* %bitoffset, align 4
  %shl2 = shl i32 1, %7
  %and3 = and i32 %conv1, %shl2
  %8 = load i32, i32* %bitoffset, align 4
  %shr4 = ashr i32 %and3, %8
  %9 = load i32, i32* %inf, align 4
  %or = or i32 %9, %shr4
  store i32 %or, i32* %inf, align 4
  %10 = load i32, i32* %numbits.addr, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %numbits.addr, align 4
  %11 = load i32, i32* %bitoffset, align 4
  %dec5 = add nsw i32 %11, -1
  store i32 %dec5, i32* %bitoffset, align 4
  %12 = load i32, i32* %bitoffset, align 4
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %13 = load i64, i64* %byteoffset, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, i64* %byteoffset, align 8
  %14 = load i32, i32* %bitoffset, align 4
  %add = add nsw i32 %14, 8
  store i32 %add, i32* %bitoffset, align 4
  %15 = load i64, i64* %byteoffset, align 8
  %16 = load i32, i32* %bytecount.addr, align 4
  %conv7 = sext i32 %16 to i64
  %cmp8 = icmp sgt i64 %15, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i32, i32* %inf, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @GetBits(i8* %buffer, i32 %totbitoffset, i32* %info, i32 %bytecount, i32 %numbits) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %totbitoffset.addr = alloca i32, align 4
  %info.addr = alloca i32*, align 8
  %bytecount.addr = alloca i32, align 4
  %numbits.addr = alloca i32, align 4
  %inf = alloca i32, align 4
  %byteoffset = alloca i64, align 8
  %bitoffset = alloca i32, align 4
  %bitcounter = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %totbitoffset, i32* %totbitoffset.addr, align 4
  store i32* %info, i32** %info.addr, align 8
  store i32 %bytecount, i32* %bytecount.addr, align 4
  store i32 %numbits, i32* %numbits.addr, align 4
  %0 = load i32, i32* %numbits.addr, align 4
  store i32 %0, i32* %bitcounter, align 4
  %1 = load i32, i32* %totbitoffset.addr, align 4
  %shr = ashr i32 %1, 3
  %conv = sext i32 %shr to i64
  store i64 %conv, i64* %byteoffset, align 8
  %2 = load i32, i32* %totbitoffset.addr, align 4
  %and = and i32 %2, 7
  %sub = sub nsw i32 7, %and
  store i32 %sub, i32* %bitoffset, align 4
  store i32 0, i32* %inf, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %3 = load i32, i32* %numbits.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %inf, align 4
  %shl = shl i32 %4, 1
  store i32 %shl, i32* %inf, align 4
  %5 = load i64, i64* %byteoffset, align 8
  %6 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %7 to i32
  %8 = load i32, i32* %bitoffset, align 4
  %shl2 = shl i32 1, %8
  %and3 = and i32 %conv1, %shl2
  %9 = load i32, i32* %bitoffset, align 4
  %shr4 = ashr i32 %and3, %9
  %10 = load i32, i32* %inf, align 4
  %or = or i32 %10, %shr4
  store i32 %or, i32* %inf, align 4
  %11 = load i32, i32* %numbits.addr, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %numbits.addr, align 4
  %12 = load i32, i32* %bitoffset, align 4
  %dec5 = add nsw i32 %12, -1
  store i32 %dec5, i32* %bitoffset, align 4
  %13 = load i32, i32* %bitoffset, align 4
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %14 = load i64, i64* %byteoffset, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %byteoffset, align 8
  %15 = load i32, i32* %bitoffset, align 4
  %add = add nsw i32 %15, 8
  store i32 %add, i32* %bitoffset, align 4
  %16 = load i64, i64* %byteoffset, align 8
  %17 = load i32, i32* %bytecount.addr, align 4
  %conv7 = sext i32 %17 to i64
  %cmp8 = icmp sgt i64 %16, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %inf, align 4
  %19 = load i32*, i32** %info.addr, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %bitcounter, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement* %sym, %struct.datapartition* %dP, i8* %type) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %type.addr = alloca i8*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  %vlcnum = alloca i32, align 4
  %retval2 = alloca i32, align 4
  %code = alloca i32, align 4
  %lt = alloca i32*, align 8
  %ct = alloca i32*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %currStream, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 2
  %3 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %3, i32* %frame_bitoffset, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 3
  %7 = load i32, i32* %bitstream_length, align 4
  store i32 %7, i32* %BitstreamLengthInBytes, align 4
  %8 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %8, i32 0, i32 1
  %9 = load i32, i32* %value1, align 4
  store i32 %9, i32* %vlcnum, align 4
  %10 = load i32, i32* %vlcnum, align 4
  %cmp = icmp eq i32 %10, 3
  br i1 %cmp, label %if.then, label %if.else.11

if.then:                                          ; preds = %entry
  %11 = load i8*, i8** %buf, align 8
  %12 = load i32, i32* %frame_bitoffset, align 4
  %13 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call = call i32 @ShowBits(i8* %11, i32 %12, i32 %13, i32 6)
  store i32 %call, i32* %code, align 4
  %14 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset3 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %14, i32 0, i32 2
  %15 = load i32, i32* %frame_bitoffset3, align 4
  %add = add nsw i32 %15, 6
  store i32 %add, i32* %frame_bitoffset3, align 4
  %16 = load i32, i32* %code, align 4
  %and = and i32 %16, 3
  %17 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %17, i32 0, i32 2
  store i32 %and, i32* %value2, align 4
  %18 = load i32, i32* %code, align 4
  %shr = ashr i32 %18, 2
  %19 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value14 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %19, i32 0, i32 1
  store i32 %shr, i32* %value14, align 4
  %20 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value15 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %20, i32 0, i32 1
  %21 = load i32, i32* %value15, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %22 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value26 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %22, i32 0, i32 2
  %23 = load i32, i32* %value26, align 4
  %cmp7 = icmp eq i32 %23, 3
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %24 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value29 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %24, i32 0, i32 2
  store i32 0, i32* %value29, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %25 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value110 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %25, i32 0, i32 1
  %26 = load i32, i32* %value110, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %value110, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  %27 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %27, i32 0, i32 3
  store i32 6, i32* %len, align 4
  store i32 0, i32* %retval2, align 4
  br label %if.end.19

if.else.11:                                       ; preds = %entry
  %28 = load i32, i32* %vlcnum, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [3 x [4 x [17 x i32]]], [3 x [4 x [17 x i32]]]* @readSyntaxElement_NumCoeffTrailingOnes.lentab, i32 0, i64 %idxprom
  %arrayidx12 = getelementptr inbounds [4 x [17 x i32]], [4 x [17 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx12, i32 0, i64 0
  store i32* %arrayidx13, i32** %lt, align 8
  %29 = load i32, i32* %vlcnum, align 4
  %idxprom14 = sext i32 %29 to i64
  %arrayidx15 = getelementptr inbounds [3 x [4 x [17 x i32]]], [3 x [4 x [17 x i32]]]* @readSyntaxElement_NumCoeffTrailingOnes.codtab, i32 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [4 x [17 x i32]], [4 x [17 x i32]]* %arrayidx15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx16, i32 0, i64 0
  store i32* %arrayidx17, i32** %ct, align 8
  %30 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %31 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %32 = load i32*, i32** %lt, align 8
  %33 = load i32*, i32** %ct, align 8
  %call18 = call i32 @code_from_bitstream_2d(%struct.syntaxelement* %30, %struct.datapartition* %31, i32* %32, i32* %33, i32 17, i32 4, i32* %code)
  store i32 %call18, i32* %retval2, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.11, %if.end
  %34 = load i32, i32* %retval2, align 4
  %tobool20 = icmp ne i32 %34, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 -1) #4
  unreachable

if.end.23:                                        ; preds = %if.end.19
  %35 = load i32, i32* %retval2, align 4
  ret i32 %35
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement* %sym, %struct.datapartition* %dP) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %retval1 = alloca i32, align 4
  %code = alloca i32, align 4
  %yuv = alloca i32, align 4
  %lt = alloca i32*, align 8
  %ct = alloca i32*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 8
  %1 = load i32, i32* %chroma_format_idc, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %yuv, align 4
  %2 = load i32, i32* %yuv, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x [4 x [17 x i32]]], [3 x [4 x [17 x i32]]]* @readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i32 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [4 x [17 x i32]], [4 x [17 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx2, i32 0, i64 0
  store i32* %arrayidx3, i32** %lt, align 8
  %3 = load i32, i32* %yuv, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [3 x [4 x [17 x i32]]], [3 x [4 x [17 x i32]]]* @readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [4 x [17 x i32]], [4 x [17 x i32]]* %arrayidx5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [17 x i32], [17 x i32]* %arrayidx6, i32 0, i64 0
  store i32* %arrayidx7, i32** %ct, align 8
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %5 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %6 = load i32*, i32** %lt, align 8
  %7 = load i32*, i32** %ct, align 8
  %call = call i32 @code_from_bitstream_2d(%struct.syntaxelement* %4, %struct.datapartition* %5, i32* %6, i32* %7, i32 17, i32 4, i32* %code)
  store i32 %call, i32* %retval1, align 4
  %8 = load i32, i32* %retval1, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %retval1, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_Level_VLC0(%struct.syntaxelement* %sym, %struct.datapartition* %dP) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  %len = alloca i32, align 4
  %sign = alloca i32, align 4
  %level = alloca i32, align 4
  %code = alloca i32, align 4
  %offset = alloca i32, align 4
  %addbit = alloca i32, align 4
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %currStream, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 2
  %3 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %3, i32* %frame_bitoffset, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 3
  %7 = load i32, i32* %bitstream_length, align 4
  store i32 %7, i32* %BitstreamLengthInBytes, align 4
  store i32 0, i32* %sign, align 4
  store i32 0, i32* %level, align 4
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i8*, i8** %buf, align 8
  %9 = load i32, i32* %frame_bitoffset, align 4
  %10 = load i32, i32* %len, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call = call i32 @ShowBits(i8* %8, i32 %add, i32 %11, i32 1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %len, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load i32, i32* %len, align 4
  %inc2 = add nsw i32 %13, 1
  store i32 %inc2, i32* %len, align 4
  store i32 1, i32* %code, align 4
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* %frame_bitoffset, align 4
  %add3 = add nsw i32 %15, %14
  store i32 %add3, i32* %frame_bitoffset, align 4
  %16 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %16, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %17 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %17, 1
  %and = and i32 %sub, 1
  store i32 %and, i32* %sign, align 4
  %18 = load i32, i32* %len, align 4
  %sub4 = sub nsw i32 %18, 1
  %div = sdiv i32 %sub4, 2
  %add5 = add nsw i32 %div, 1
  store i32 %add5, i32* %level, align 4
  br label %if.end.33

if.else:                                          ; preds = %while.end
  %19 = load i32, i32* %len, align 4
  %cmp6 = icmp eq i32 %19, 15
  br i1 %cmp6, label %if.then.7, label %if.else.14

if.then.7:                                        ; preds = %if.else
  %20 = load i32, i32* %code, align 4
  %shl = shl i32 %20, 4
  %21 = load i8*, i8** %buf, align 8
  %22 = load i32, i32* %frame_bitoffset, align 4
  %23 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call8 = call i32 @ShowBits(i8* %21, i32 %22, i32 %23, i32 4)
  %or = or i32 %shl, %call8
  store i32 %or, i32* %code, align 4
  %24 = load i32, i32* %len, align 4
  %add9 = add nsw i32 %24, 4
  store i32 %add9, i32* %len, align 4
  %25 = load i32, i32* %frame_bitoffset, align 4
  %add10 = add nsw i32 %25, 4
  store i32 %add10, i32* %frame_bitoffset, align 4
  %26 = load i32, i32* %code, align 4
  %and11 = and i32 %26, 1
  store i32 %and11, i32* %sign, align 4
  %27 = load i32, i32* %code, align 4
  %shr = ashr i32 %27, 1
  %and12 = and i32 %shr, 7
  %add13 = add nsw i32 %and12, 8
  store i32 %add13, i32* %level, align 4
  br label %if.end.32

if.else.14:                                       ; preds = %if.else
  %28 = load i32, i32* %len, align 4
  %cmp15 = icmp sge i32 %28, 16
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else.14
  %29 = load i32, i32* %len, align 4
  %sub17 = sub nsw i32 %29, 16
  store i32 %sub17, i32* %addbit, align 4
  %30 = load i8*, i8** %buf, align 8
  %31 = load i32, i32* %frame_bitoffset, align 4
  %32 = load i32, i32* %BitstreamLengthInBytes, align 4
  %33 = load i32, i32* %len, align 4
  %sub18 = sub nsw i32 %33, 4
  %call19 = call i32 @ShowBits(i8* %30, i32 %31, i32 %32, i32 %sub18)
  store i32 %call19, i32* %code, align 4
  %34 = load i32, i32* %len, align 4
  %sub20 = sub nsw i32 %34, 4
  store i32 %sub20, i32* %len, align 4
  %35 = load i32, i32* %len, align 4
  %36 = load i32, i32* %frame_bitoffset, align 4
  %add21 = add nsw i32 %36, %35
  store i32 %add21, i32* %frame_bitoffset, align 4
  %37 = load i32, i32* %code, align 4
  %and22 = and i32 %37, 1
  store i32 %and22, i32* %sign, align 4
  %38 = load i32, i32* %addbit, align 4
  %shl23 = shl i32 2048, %38
  %add24 = add nsw i32 %shl23, 16
  %sub25 = sub nsw i32 %add24, 2048
  store i32 %sub25, i32* %offset, align 4
  %39 = load i32, i32* %code, align 4
  %shr26 = ashr i32 %39, 1
  %40 = load i32, i32* %offset, align 4
  %add27 = add nsw i32 %shr26, %40
  store i32 %add27, i32* %level, align 4
  %41 = load i32, i32* %len, align 4
  %shl28 = shl i32 1, %41
  %42 = load i32, i32* %code, align 4
  %or29 = or i32 %42, %shl28
  store i32 %or29, i32* %code, align 4
  %43 = load i32, i32* %addbit, align 4
  %add30 = add nsw i32 %43, 16
  %44 = load i32, i32* %len, align 4
  %add31 = add nsw i32 %44, %add30
  store i32 %add31, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else.14
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then.7
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then
  %45 = load i32, i32* %sign, align 4
  %tobool34 = icmp ne i32 %45, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.33
  %46 = load i32, i32* %level, align 4
  %sub36 = sub nsw i32 0, %46
  store i32 %sub36, i32* %level, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.33
  %47 = load i32, i32* %level, align 4
  %48 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %48, i32 0, i32 4
  store i32 %47, i32* %inf, align 4
  %49 = load i32, i32* %len, align 4
  %50 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len38 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %50, i32 0, i32 3
  store i32 %49, i32* %len38, align 4
  %51 = load i32, i32* %frame_bitoffset, align 4
  %52 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset39 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %52, i32 0, i32 2
  store i32 %51, i32* %frame_bitoffset39, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_Level_VLCN(%struct.syntaxelement* %sym, i32 %vlc, %struct.datapartition* %dP) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %vlc.addr = alloca i32, align 4
  %dP.addr = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  %levabs = alloca i32, align 4
  %sign = alloca i32, align 4
  %len = alloca i32, align 4
  %code = alloca i32, align 4
  %sb = alloca i32, align 4
  %numPrefix = alloca i32, align 4
  %shift = alloca i32, align 4
  %escape = alloca i32, align 4
  %addbit = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store i32 %vlc, i32* %vlc.addr, align 4
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %currStream, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 2
  %3 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %3, i32* %frame_bitoffset, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 3
  %7 = load i32, i32* %bitstream_length, align 4
  store i32 %7, i32* %BitstreamLengthInBytes, align 4
  store i32 0, i32* %len, align 4
  %8 = load i32, i32* %vlc.addr, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %shift, align 4
  %9 = load i32, i32* %shift, align 4
  %shl = shl i32 15, %9
  %add = add nsw i32 %shl, 1
  store i32 %add, i32* %escape, align 4
  store i32 0, i32* %numPrefix, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load i8*, i8** %buf, align 8
  %11 = load i32, i32* %frame_bitoffset, align 4
  %12 = load i32, i32* %numPrefix, align 4
  %add2 = add nsw i32 %11, %12
  %13 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call = call i32 @ShowBits(i8* %10, i32 %add2, i32 %13, i32 1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, i32* %numPrefix, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %numPrefix, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %numPrefix, align 4
  %add3 = add nsw i32 %15, 1
  store i32 %add3, i32* %len, align 4
  store i32 1, i32* %code, align 4
  %16 = load i32, i32* %numPrefix, align 4
  %cmp = icmp slt i32 %16, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %17 = load i32, i32* %numPrefix, align 4
  %18 = load i32, i32* %shift, align 4
  %shl4 = shl i32 %17, %18
  %add5 = add nsw i32 %shl4, 1
  store i32 %add5, i32* %levabs, align 4
  %19 = load i32, i32* %vlc.addr, align 4
  %sub6 = sub nsw i32 %19, 1
  %tobool7 = icmp ne i32 %sub6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %20 = load i8*, i8** %buf, align 8
  %21 = load i32, i32* %frame_bitoffset, align 4
  %22 = load i32, i32* %len, align 4
  %add9 = add nsw i32 %21, %22
  %23 = load i32, i32* %BitstreamLengthInBytes, align 4
  %24 = load i32, i32* %vlc.addr, align 4
  %sub10 = sub nsw i32 %24, 1
  %call11 = call i32 @ShowBits(i8* %20, i32 %add9, i32 %23, i32 %sub10)
  store i32 %call11, i32* %sb, align 4
  %25 = load i32, i32* %code, align 4
  %26 = load i32, i32* %vlc.addr, align 4
  %sub12 = sub nsw i32 %26, 1
  %shl13 = shl i32 %25, %sub12
  %27 = load i32, i32* %sb, align 4
  %or = or i32 %shl13, %27
  store i32 %or, i32* %code, align 4
  %28 = load i32, i32* %sb, align 4
  %29 = load i32, i32* %levabs, align 4
  %add14 = add nsw i32 %29, %28
  store i32 %add14, i32* %levabs, align 4
  %30 = load i32, i32* %vlc.addr, align 4
  %sub15 = sub nsw i32 %30, 1
  %31 = load i32, i32* %len, align 4
  %add16 = add nsw i32 %31, %sub15
  store i32 %add16, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %32 = load i8*, i8** %buf, align 8
  %33 = load i32, i32* %frame_bitoffset, align 4
  %34 = load i32, i32* %len, align 4
  %add17 = add nsw i32 %33, %34
  %35 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call18 = call i32 @ShowBits(i8* %32, i32 %add17, i32 %35, i32 1)
  store i32 %call18, i32* %sign, align 4
  %36 = load i32, i32* %code, align 4
  %shl19 = shl i32 %36, 1
  %37 = load i32, i32* %sign, align 4
  %or20 = or i32 %shl19, %37
  store i32 %or20, i32* %code, align 4
  %38 = load i32, i32* %len, align 4
  %inc21 = add nsw i32 %38, 1
  store i32 %inc21, i32* %len, align 4
  br label %if.end.40

if.else:                                          ; preds = %while.end
  %39 = load i32, i32* %numPrefix, align 4
  %sub22 = sub nsw i32 %39, 15
  store i32 %sub22, i32* %addbit, align 4
  %40 = load i8*, i8** %buf, align 8
  %41 = load i32, i32* %frame_bitoffset, align 4
  %42 = load i32, i32* %len, align 4
  %add23 = add nsw i32 %41, %42
  %43 = load i32, i32* %BitstreamLengthInBytes, align 4
  %44 = load i32, i32* %addbit, align 4
  %add24 = add nsw i32 11, %44
  %call25 = call i32 @ShowBits(i8* %40, i32 %add23, i32 %43, i32 %add24)
  store i32 %call25, i32* %sb, align 4
  %45 = load i32, i32* %code, align 4
  %46 = load i32, i32* %addbit, align 4
  %add26 = add nsw i32 11, %46
  %shl27 = shl i32 %45, %add26
  %47 = load i32, i32* %sb, align 4
  %or28 = or i32 %shl27, %47
  store i32 %or28, i32* %code, align 4
  %48 = load i32, i32* %addbit, align 4
  %add29 = add nsw i32 11, %48
  %49 = load i32, i32* %len, align 4
  %add30 = add nsw i32 %49, %add29
  store i32 %add30, i32* %len, align 4
  %50 = load i32, i32* %addbit, align 4
  %shl31 = shl i32 2048, %50
  %51 = load i32, i32* %escape, align 4
  %add32 = add nsw i32 %shl31, %51
  %sub33 = sub nsw i32 %add32, 2048
  store i32 %sub33, i32* %offset, align 4
  %52 = load i32, i32* %sb, align 4
  %53 = load i32, i32* %offset, align 4
  %add34 = add nsw i32 %52, %53
  store i32 %add34, i32* %levabs, align 4
  %54 = load i8*, i8** %buf, align 8
  %55 = load i32, i32* %frame_bitoffset, align 4
  %56 = load i32, i32* %len, align 4
  %add35 = add nsw i32 %55, %56
  %57 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call36 = call i32 @ShowBits(i8* %54, i32 %add35, i32 %57, i32 1)
  store i32 %call36, i32* %sign, align 4
  %58 = load i32, i32* %code, align 4
  %shl37 = shl i32 %58, 1
  %59 = load i32, i32* %sign, align 4
  %or38 = or i32 %shl37, %59
  store i32 %or38, i32* %code, align 4
  %60 = load i32, i32* %len, align 4
  %inc39 = add nsw i32 %60, 1
  store i32 %inc39, i32* %len, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.end
  %61 = load i32, i32* %sign, align 4
  %tobool41 = icmp ne i32 %61, 0
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %62 = load i32, i32* %levabs, align 4
  %sub42 = sub nsw i32 0, %62
  br label %cond.end

cond.false:                                       ; preds = %if.end.40
  %63 = load i32, i32* %levabs, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub42, %cond.true ], [ %63, %cond.false ]
  %64 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %64, i32 0, i32 4
  store i32 %cond, i32* %inf, align 4
  %65 = load i32, i32* %len, align 4
  %66 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len43 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %66, i32 0, i32 3
  store i32 %65, i32* %len43, align 4
  %67 = load i32, i32* %frame_bitoffset, align 4
  %68 = load i32, i32* %len, align 4
  %add44 = add nsw i32 %67, %68
  %69 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset45 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %69, i32 0, i32 2
  store i32 %add44, i32* %frame_bitoffset45, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_TotalZeros(%struct.syntaxelement* %sym, %struct.datapartition* %dP) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %retval1 = alloca i32, align 4
  %code = alloca i32, align 4
  %vlcnum = alloca i32, align 4
  %lt = alloca i32*, align 8
  %ct = alloca i32*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i32 0, i32 1
  %1 = load i32, i32* %value1, align 4
  store i32 %1, i32* %vlcnum, align 4
  %2 = load i32, i32* %vlcnum, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [15 x [16 x i32]], [15 x [16 x i32]]* @readSyntaxElement_TotalZeros.lentab, i32 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 0
  store i32* %arrayidx2, i32** %lt, align 8
  %3 = load i32, i32* %vlcnum, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [15 x [16 x i32]], [15 x [16 x i32]]* @readSyntaxElement_TotalZeros.codtab, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx4, i32 0, i64 0
  store i32* %arrayidx5, i32** %ct, align 8
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %5 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %6 = load i32*, i32** %lt, align 8
  %7 = load i32*, i32** %ct, align 8
  %call = call i32 @code_from_bitstream_2d(%struct.syntaxelement* %4, %struct.datapartition* %5, i32* %6, i32* %7, i32 16, i32 1, i32* %code)
  store i32 %call, i32* %retval1, align 4
  %8 = load i32, i32* %retval1, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %retval1, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement* %sym, %struct.datapartition* %dP) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %retval1 = alloca i32, align 4
  %code = alloca i32, align 4
  %yuv = alloca i32, align 4
  %vlcnum = alloca i32, align 4
  %lt = alloca i32*, align 8
  %ct = alloca i32*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.seq_parameter_set_rbsp_t*, %struct.seq_parameter_set_rbsp_t** @active_sps, align 8
  %chroma_format_idc = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, %struct.seq_parameter_set_rbsp_t* %0, i32 0, i32 8
  %1 = load i32, i32* %chroma_format_idc, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %yuv, align 4
  %2 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %2, i32 0, i32 1
  %3 = load i32, i32* %value1, align 4
  store i32 %3, i32* %vlcnum, align 4
  %4 = load i32, i32* %vlcnum, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %yuv, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x [15 x [16 x i32]]], [3 x [15 x [16 x i32]]]* @readSyntaxElement_TotalZerosChromaDC.lentab, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [15 x [16 x i32]], [15 x [16 x i32]]* %arrayidx, i32 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx3, i32 0, i64 0
  store i32* %arrayidx4, i32** %lt, align 8
  %6 = load i32, i32* %vlcnum, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load i32, i32* %yuv, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [3 x [15 x [16 x i32]]], [3 x [15 x [16 x i32]]]* @readSyntaxElement_TotalZerosChromaDC.codtab, i32 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [15 x [16 x i32]], [15 x [16 x i32]]* %arrayidx7, i32 0, i64 %idxprom5
  %arrayidx9 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx8, i32 0, i64 0
  store i32* %arrayidx9, i32** %ct, align 8
  %8 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %9 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %10 = load i32*, i32** %lt, align 8
  %11 = load i32*, i32** %ct, align 8
  %call = call i32 @code_from_bitstream_2d(%struct.syntaxelement* %8, %struct.datapartition* %9, i32* %10, i32* %11, i32 16, i32 1, i32* %code)
  store i32 %call, i32* %retval1, align 4
  %12 = load i32, i32* %retval1, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %retval1, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @readSyntaxElement_Run(%struct.syntaxelement* %sym, %struct.datapartition* %dP) #0 {
entry:
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %retval1 = alloca i32, align 4
  %code = alloca i32, align 4
  %vlcnum = alloca i32, align 4
  %lt = alloca i32*, align 8
  %ct = alloca i32*, align 8
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %0, i32 0, i32 1
  %1 = load i32, i32* %value1, align 4
  store i32 %1, i32* %vlcnum, align 4
  %2 = load i32, i32* %vlcnum, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [15 x [16 x i32]], [15 x [16 x i32]]* @readSyntaxElement_Run.lentab, i32 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx, i32 0, i64 0
  store i32* %arrayidx2, i32** %lt, align 8
  %3 = load i32, i32* %vlcnum, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [15 x [16 x i32]], [15 x [16 x i32]]* @readSyntaxElement_Run.codtab, i32 0, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx4, i32 0, i64 0
  store i32* %arrayidx5, i32** %ct, align 8
  %4 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %5 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %6 = load i32*, i32** %lt, align 8
  %7 = load i32*, i32** %ct, align 8
  %call = call i32 @code_from_bitstream_2d(%struct.syntaxelement* %4, %struct.datapartition* %5, i32* %6, i32* %7, i32 16, i32 1, i32* %code)
  store i32 %call, i32* %retval1, align 4
  %8 = load i32, i32* %retval1, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %retval1, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @peekSyntaxElement_UVLC(%struct.syntaxelement* %sym, %struct.img_par* %img, %struct.datapartition* %dP) #0 {
entry:
  %retval = alloca i32, align 4
  %sym.addr = alloca %struct.syntaxelement*, align 8
  %img.addr = alloca %struct.img_par*, align 8
  %dP.addr = alloca %struct.datapartition*, align 8
  %currStream = alloca %struct.Bitstream*, align 8
  %frame_bitoffset = alloca i32, align 4
  %buf = alloca i8*, align 8
  %BitstreamLengthInBytes = alloca i32, align 4
  store %struct.syntaxelement* %sym, %struct.syntaxelement** %sym.addr, align 8
  store %struct.img_par* %img, %struct.img_par** %img.addr, align 8
  store %struct.datapartition* %dP, %struct.datapartition** %dP.addr, align 8
  %0 = load %struct.datapartition*, %struct.datapartition** %dP.addr, align 8
  %bitstream = getelementptr inbounds %struct.datapartition, %struct.datapartition* %0, i32 0, i32 0
  %1 = load %struct.Bitstream*, %struct.Bitstream** %bitstream, align 8
  store %struct.Bitstream* %1, %struct.Bitstream** %currStream, align 8
  %2 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %frame_bitoffset1 = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %2, i32 0, i32 2
  %3 = load i32, i32* %frame_bitoffset1, align 4
  store i32 %3, i32* %frame_bitoffset, align 4
  %4 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %streamBuffer = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %4, i32 0, i32 4
  %5 = load i8*, i8** %streamBuffer, align 8
  store i8* %5, i8** %buf, align 8
  %6 = load %struct.Bitstream*, %struct.Bitstream** %currStream, align 8
  %bitstream_length = getelementptr inbounds %struct.Bitstream, %struct.Bitstream* %6, i32 0, i32 3
  %7 = load i32, i32* %bitstream_length, align 4
  store i32 %7, i32* %BitstreamLengthInBytes, align 4
  %8 = load i8*, i8** %buf, align 8
  %9 = load i32, i32* %frame_bitoffset, align 4
  %10 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %10, i32 0, i32 4
  %11 = load i32, i32* %BitstreamLengthInBytes, align 4
  %call = call i32 @GetVLCSymbol(i8* %8, i32 %9, i32* %inf, i32 %11)
  %12 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %12, i32 0, i32 3
  store i32 %call, i32* %len, align 4
  %13 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %13, i32 0, i32 3
  %14 = load i32, i32* %len2, align 4
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len3 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %15, i32 0, i32 3
  %16 = load i32, i32* %len3, align 4
  %17 = load i32, i32* %frame_bitoffset, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %frame_bitoffset, align 4
  %18 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %mapping = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %18, i32 0, i32 8
  %19 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** %mapping, align 8
  %20 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %len4 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %20, i32 0, i32 3
  %21 = load i32, i32* %len4, align 4
  %22 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %inf5 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %22, i32 0, i32 4
  %23 = load i32, i32* %inf5, align 4
  %24 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %24, i32 0, i32 1
  %25 = load %struct.syntaxelement*, %struct.syntaxelement** %sym.addr, align 8
  %value2 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %25, i32 0, i32 2
  call void %19(i32 %21, i32 %23, i32* %value1, i32* %value2)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
