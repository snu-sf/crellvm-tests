; ModuleID = 'transform8x8.c'
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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16*, i16*, i16**, i16**, i16***, i8*, i16***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }

@quant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428]], [8 x [8 x i32]] [[8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826]], [8 x [8 x i32]] [[8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943]], [8 x [8 x i32]] [[8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228]], [8 x [8 x i32]] [[8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346]], [8 x [8 x i32]] [[8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428]]], align 16
@dequant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16
@SNGL_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 16
@FIELD_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 16
@COEFF_COST8x8 = constant [2 x [64 x i8]] [[64 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09"], align 16
@img = external global %struct.ImageParameters*, align 8
@imgY_org = external global i16**, align 8
@input = external global %struct.InputParameters*, align 8
@cofAC8x8 = external global i32****, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@imgUV_org = external global i16***, align 8
@resTrans_R = external global [16 x [16 x i32]], align 16
@resTrans_B = external global [16 x [16 x i32]], align 16
@resTrans_G = external global [16 x [16 x i32]], align 16
@rec_resG = external global [16 x [16 x i32]], align 16
@rec_resR = external global [16 x [16 x i32]], align 16
@rec_resB = external global [16 x [16 x i32]], align 16
@cofAC8x8_chroma = common global [2 x [4 x [2 x [18 x i32]]]] zeroinitializer, align 16
@dc_level_temp = external global [2 x [4 x [4 x i32]]], align 16
@dc_level = external global [2 x [4 x [4 x i32]]], align 16
@cbp_chroma_block_temp = external global [2 x [4 x [4 x i32]]], align 16
@cbp_chroma_block = external global [2 x [4 x [4 x i32]]], align 16
@assignSE2partition = external global [2 x i32*], align 16
@LevelScale8x8Luma_Intra = external global [6 x [8 x [8 x i32]]], align 16
@LevelOffset8x8Luma_Intra = external global [13 x [8 x [8 x i32]]], align 16
@LevelScale8x8Luma_Inter = external global [6 x [8 x [8 x i32]]], align 16
@LevelOffset8x8Luma_Inter = external global [13 x [8 x [8 x i32]]], align 16
@InvLevelScale8x8Luma_Intra = external global [6 x [8 x [8 x i32]]], align 16
@InvLevelScale8x8Luma_Inter = external global [6 x [8 x [8 x i32]]], align 16

; Function Attrs: nounwind uwtable
define i32 @Mode_Decision_for_new_Intra8x8Macroblock(double %lambda, i32* %min_cost) #0 {
entry:
  %lambda.addr = alloca double, align 8
  %min_cost.addr = alloca i32*, align 8
  %cbp = alloca i32, align 4
  %b8 = alloca i32, align 4
  %cost8x8 = alloca i32, align 4
  store double %lambda, double* %lambda.addr, align 8
  store i32* %min_cost, i32** %min_cost.addr, align 8
  store i32 0, i32* %cbp, align 4
  %0 = load double, double* %lambda.addr, align 8
  %mul = fmul double 6.000000e+00, %0
  %add = fadd double %mul, 4.999000e-01
  %call = call double @floor(double %add) #3
  %conv = fptosi double %call to i32
  %1 = load i32*, i32** %min_cost.addr, align 8
  store i32 %conv, i32* %1, align 4
  store i32 0, i32* %b8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b8, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %b8, align 4
  %4 = load double, double* %lambda.addr, align 8
  %call2 = call i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 %3, double %4, i32* %cost8x8)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %b8, align 4
  %shl = shl i32 1, %5
  %6 = load i32, i32* %cbp, align 4
  %or = or i32 %6, %shl
  store i32 %or, i32* %cbp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %cost8x8, align 4
  %8 = load i32*, i32** %min_cost.addr, align 8
  %9 = load i32, i32* %8, align 4
  %add3 = add nsw i32 %9, %7
  store i32 %add3, i32* %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %b8, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %b8, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %cbp, align 4
  ret i32 %11
}

; Function Attrs: nounwind readnone
declare double @floor(double) #1

; Function Attrs: nounwind uwtable
define i32 @Mode_Decision_for_new_8x8IntraBlocks(i32 %b8, double %lambda, i32* %min_cost) #0 {
entry:
  %b8.addr = alloca i32, align 4
  %lambda.addr = alloca double, align 8
  %min_cost.addr = alloca i32*, align 8
  %ipmode = alloca i32, align 4
  %best_ipmode = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cost = alloca i32, align 4
  %dummy = alloca i32, align 4
  %c_nz = alloca i32, align 4
  %nonzero = alloca i32, align 4
  %diff = alloca [64 x i32], align 16
  %rec8x8 = alloca [8 x [8 x i16]], align 16
  %rdcost = alloca double, align 8
  %block4x4_x = alloca i32, align 4
  %block4x4_y = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %pic_opix_x = alloca i32, align 4
  %pic_opix_y = alloca i32, align 4
  %pic_block_x = alloca i32, align 4
  %pic_block_y = alloca i32, align 4
  %min_rdcost = alloca double, align 8
  %imgY_orig = alloca i16**, align 8
  %left_available = alloca i32, align 4
  %up_available = alloca i32, align 4
  %all_available = alloca i32, align 4
  %upMode = alloca i32, align 4
  %leftMode = alloca i32, align 4
  %mostProbableMode = alloca i32, align 4
  %left_block = alloca %struct.pix_pos, align 4
  %top_block = alloca %struct.pix_pos, align 4
  %residue_R = alloca i32, align 4
  %residue_G = alloca i32, align 4
  %residue_B = alloca i32, align 4
  %rate = alloca i32, align 4
  %distortion = alloca i32, align 4
  %temp = alloca i32, align 4
  %b4 = alloca i32, align 4
  %c_ipmode = alloca i32, align 4
  %rec8x8_c = alloca [2 x [4 x [4 x [4 x i32]]]], align 16
  store i32 %b8, i32* %b8.addr, align 4
  store double %lambda, double* %lambda.addr, align 8
  store i32* %min_cost, i32** %min_cost.addr, align 8
  store i32 0, i32* %best_ipmode, align 4
  store i32 0, i32* %nonzero, align 4
  store double 0.000000e+00, double* %rdcost, align 8
  %0 = load i32, i32* %b8.addr, align 4
  %rem = srem i32 %0, 2
  %mul = mul nsw i32 8, %rem
  store i32 %mul, i32* %block_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %div = sdiv i32 %1, 2
  %mul1 = mul nsw i32 8, %div
  store i32 %mul1, i32* %block_y, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 33
  %3 = load i32, i32* %pix_x, align 4
  %4 = load i32, i32* %block_x, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %pic_pix_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 34
  %6 = load i32, i32* %pix_y, align 4
  %7 = load i32, i32* %block_y, align 4
  %add2 = add nsw i32 %6, %7
  store i32 %add2, i32* %pic_pix_y, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 37
  %9 = load i32, i32* %opix_x, align 4
  %10 = load i32, i32* %block_x, align 4
  %add3 = add nsw i32 %9, %10
  store i32 %add3, i32* %pic_opix_x, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 38
  %12 = load i32, i32* %opix_y, align 4
  %13 = load i32, i32* %block_y, align 4
  %add4 = add nsw i32 %12, %13
  store i32 %add4, i32* %pic_opix_y, align 4
  %14 = load i32, i32* %pic_pix_x, align 4
  %div5 = sdiv i32 %14, 4
  store i32 %div5, i32* %pic_block_x, align 4
  %15 = load i32, i32* %pic_pix_y, align 4
  %div6 = sdiv i32 %15, 4
  store i32 %div6, i32* %pic_block_y, align 4
  store double 1.000000e+30, double* %min_rdcost, align 8
  %16 = load i16**, i16*** @imgY_org, align 8
  store i16** %16, i16*** %imgY_orig, align 8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 3
  %18 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 51
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i64 %idxprom
  %c_ipred_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx, i32 0, i32 20
  %21 = load i32, i32* %c_ipred_mode, align 4
  store i32 %21, i32* %c_ipmode, align 4
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 3
  %23 = load i32, i32* %current_mb_nr7, align 4
  %24 = load i32, i32* %block_x, align 4
  %div8 = sdiv i32 %24, 4
  %25 = load i32, i32* %block_y, align 4
  %div9 = sdiv i32 %25, 4
  call void @getLuma4x4Neighbour(i32 %23, i32 %div8, i32 %div9, i32 -1, i32 0, %struct.pix_pos* %left_block)
  %26 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr10 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %26, i32 0, i32 3
  %27 = load i32, i32* %current_mb_nr10, align 4
  %28 = load i32, i32* %block_x, align 4
  %div11 = sdiv i32 %28, 4
  %29 = load i32, i32* %block_y, align 4
  %div12 = sdiv i32 %29, 4
  call void @getLuma4x4Neighbour(i32 %27, i32 %div11, i32 %div12, i32 0, i32 -1, %struct.pix_pos* %top_block)
  %30 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %30, i32 0, i32 24
  %31 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  %32 = load i32, i32* %available, align 4
  %tobool13 = icmp ne i32 %32, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 1
  %33 = load i32, i32* %mb_addr, align 4
  %idxprom14 = sext i32 %33 to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 54
  %35 = load i32*, i32** %intra_block, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %35, i64 %idxprom14
  %36 = load i32, i32* %arrayidx15, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ 0, %cond.false ]
  %available16 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  store i32 %cond, i32* %available16, align 4
  %available17 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  %37 = load i32, i32* %available17, align 4
  %tobool18 = icmp ne i32 %37, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.24

cond.true.19:                                     ; preds = %cond.end
  %mb_addr20 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 1
  %38 = load i32, i32* %mb_addr20, align 4
  %idxprom21 = sext i32 %38 to i64
  %39 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block22 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %39, i32 0, i32 54
  %40 = load i32*, i32** %intra_block22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %40, i64 %idxprom21
  %41 = load i32, i32* %arrayidx23, align 4
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.19
  %cond26 = phi i32 [ %41, %cond.true.19 ], [ 0, %cond.false.24 ]
  %available27 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  store i32 %cond26, i32* %available27, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.25, %entry
  %42 = load i32, i32* %b8.addr, align 4
  %div28 = sdiv i32 %42, 2
  %tobool29 = icmp ne i32 %div28, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end
  %available31 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  %43 = load i32, i32* %available31, align 4
  %tobool32 = icmp ne i32 %43, 0
  br i1 %tobool32, label %cond.true.33, label %cond.false.38

cond.true.33:                                     ; preds = %if.then.30
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 5
  %44 = load i32, i32* %pos_y, align 4
  %idxprom34 = sext i32 %44 to i64
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 4
  %45 = load i32, i32* %pos_x, align 4
  %idxprom35 = sext i32 %45 to i64
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 26
  %47 = load i32**, i32*** %ipredmode8x8, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %47, i64 %idxprom35
  %48 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %48, i64 %idxprom34
  %49 = load i32, i32* %arrayidx37, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.then.30
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.33
  %cond40 = phi i32 [ %49, %cond.true.33 ], [ -1, %cond.false.38 ]
  store i32 %cond40, i32* %upMode, align 4
  br label %if.end.53

if.else:                                          ; preds = %if.end
  %available41 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  %50 = load i32, i32* %available41, align 4
  %tobool42 = icmp ne i32 %50, 0
  br i1 %tobool42, label %cond.true.43, label %cond.false.50

cond.true.43:                                     ; preds = %if.else
  %pos_y44 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 5
  %51 = load i32, i32* %pos_y44, align 4
  %idxprom45 = sext i32 %51 to i64
  %pos_x46 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 4
  %52 = load i32, i32* %pos_x46, align 4
  %idxprom47 = sext i32 %52 to i64
  %53 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %53, i32 0, i32 25
  %54 = load i32**, i32*** %ipredmode, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %54, i64 %idxprom47
  %55 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %55, i64 %idxprom45
  %56 = load i32, i32* %arrayidx49, align 4
  br label %cond.end.51

cond.false.50:                                    ; preds = %if.else
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.43
  %cond52 = phi i32 [ %56, %cond.true.43 ], [ -1, %cond.false.50 ]
  store i32 %cond52, i32* %upMode, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %cond.end.51, %cond.end.39
  %57 = load i32, i32* %b8.addr, align 4
  %rem54 = srem i32 %57, 2
  %tobool55 = icmp ne i32 %rem54, 0
  br i1 %tobool55, label %if.then.56, label %if.else.70

if.then.56:                                       ; preds = %if.end.53
  %available57 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  %58 = load i32, i32* %available57, align 4
  %tobool58 = icmp ne i32 %58, 0
  br i1 %tobool58, label %cond.true.59, label %cond.false.67

cond.true.59:                                     ; preds = %if.then.56
  %pos_y60 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 5
  %59 = load i32, i32* %pos_y60, align 4
  %idxprom61 = sext i32 %59 to i64
  %pos_x62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 4
  %60 = load i32, i32* %pos_x62, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x864 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 26
  %62 = load i32**, i32*** %ipredmode8x864, align 8
  %arrayidx65 = getelementptr inbounds i32*, i32** %62, i64 %idxprom63
  %63 = load i32*, i32** %arrayidx65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %63, i64 %idxprom61
  %64 = load i32, i32* %arrayidx66, align 4
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.then.56
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.59
  %cond69 = phi i32 [ %64, %cond.true.59 ], [ -1, %cond.false.67 ]
  store i32 %cond69, i32* %leftMode, align 4
  br label %if.end.84

if.else.70:                                       ; preds = %if.end.53
  %available71 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  %65 = load i32, i32* %available71, align 4
  %tobool72 = icmp ne i32 %65, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.81

cond.true.73:                                     ; preds = %if.else.70
  %pos_y74 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 5
  %66 = load i32, i32* %pos_y74, align 4
  %idxprom75 = sext i32 %66 to i64
  %pos_x76 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 4
  %67 = load i32, i32* %pos_x76, align 4
  %idxprom77 = sext i32 %67 to i64
  %68 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode78 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %68, i32 0, i32 25
  %69 = load i32**, i32*** %ipredmode78, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %69, i64 %idxprom77
  %70 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %70, i64 %idxprom75
  %71 = load i32, i32* %arrayidx80, align 4
  br label %cond.end.82

cond.false.81:                                    ; preds = %if.else.70
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.81, %cond.true.73
  %cond83 = phi i32 [ %71, %cond.true.73 ], [ -1, %cond.false.81 ]
  store i32 %cond83, i32* %leftMode, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end.82, %cond.end.68
  %72 = load i32, i32* %upMode, align 4
  %cmp = icmp slt i32 %72, 0
  br i1 %cmp, label %cond.true.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.84
  %73 = load i32, i32* %leftMode, align 4
  %cmp85 = icmp slt i32 %73, 0
  br i1 %cmp85, label %cond.true.86, label %cond.false.87

cond.true.86:                                     ; preds = %lor.lhs.false, %if.end.84
  br label %cond.end.93

cond.false.87:                                    ; preds = %lor.lhs.false
  %74 = load i32, i32* %upMode, align 4
  %75 = load i32, i32* %leftMode, align 4
  %cmp88 = icmp slt i32 %74, %75
  br i1 %cmp88, label %cond.true.89, label %cond.false.90

cond.true.89:                                     ; preds = %cond.false.87
  %76 = load i32, i32* %upMode, align 4
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.false.87
  %77 = load i32, i32* %leftMode, align 4
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.89
  %cond92 = phi i32 [ %76, %cond.true.89 ], [ %77, %cond.false.90 ]
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.91, %cond.true.86
  %cond94 = phi i32 [ 2, %cond.true.86 ], [ %cond92, %cond.end.91 ]
  store i32 %cond94, i32* %mostProbableMode, align 4
  %78 = load i32*, i32** %min_cost.addr, align 8
  store i32 2147483647, i32* %78, align 4
  %79 = load i32, i32* %pic_pix_x, align 4
  %80 = load i32, i32* %pic_pix_y, align 4
  call void @intrapred_luma8x8(i32 %79, i32 %80, i32* %left_available, i32* %up_available, i32* %all_available)
  store i32 0, i32* %ipmode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1126, %cond.end.93
  %81 = load i32, i32* %ipmode, align 4
  %cmp95 = icmp slt i32 %81, 9
  br i1 %cmp95, label %for.body, label %for.end.1128

for.body:                                         ; preds = %for.cond
  %82 = load i32, i32* %ipmode, align 4
  %cmp96 = icmp eq i32 %82, 2
  br i1 %cmp96, label %if.then.112, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %for.body
  %83 = load i32, i32* %ipmode, align 4
  %cmp98 = icmp eq i32 %83, 0
  br i1 %cmp98, label %land.lhs.true, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false.97
  %84 = load i32, i32* %ipmode, align 4
  %cmp100 = icmp eq i32 %84, 7
  br i1 %cmp100, label %land.lhs.true, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.99
  %85 = load i32, i32* %ipmode, align 4
  %cmp102 = icmp eq i32 %85, 3
  br i1 %cmp102, label %land.lhs.true, label %lor.lhs.false.104

land.lhs.true:                                    ; preds = %lor.lhs.false.101, %lor.lhs.false.99, %lor.lhs.false.97
  %86 = load i32, i32* %up_available, align 4
  %tobool103 = icmp ne i32 %86, 0
  br i1 %tobool103, label %if.then.112, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true, %lor.lhs.false.101
  %87 = load i32, i32* %ipmode, align 4
  %cmp105 = icmp eq i32 %87, 1
  br i1 %cmp105, label %land.lhs.true.108, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.104
  %88 = load i32, i32* %ipmode, align 4
  %cmp107 = icmp eq i32 %88, 8
  br i1 %cmp107, label %land.lhs.true.108, label %lor.lhs.false.110

land.lhs.true.108:                                ; preds = %lor.lhs.false.106, %lor.lhs.false.104
  %89 = load i32, i32* %left_available, align 4
  %tobool109 = icmp ne i32 %89, 0
  br i1 %tobool109, label %if.then.112, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.108, %lor.lhs.false.106
  %90 = load i32, i32* %all_available, align 4
  %tobool111 = icmp ne i32 %90, 0
  br i1 %tobool111, label %if.then.112, label %if.end.1125

if.then.112:                                      ; preds = %lor.lhs.false.110, %land.lhs.true.108, %land.lhs.true, %for.body
  %91 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %91, i32 0, i32 85
  %92 = load i32, i32* %rdopt, align 4
  %tobool113 = icmp ne i32 %92, 0
  br i1 %tobool113, label %if.else.154, label %if.then.114

if.then.114:                                      ; preds = %if.then.112
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.137, %if.then.114
  %93 = load i32, i32* %j, align 4
  %cmp116 = icmp slt i32 %93, 8
  br i1 %cmp116, label %for.body.117, label %for.end.139

for.body.117:                                     ; preds = %for.cond.115
  store i32 0, i32* %i, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc, %for.body.117
  %94 = load i32, i32* %i, align 4
  %cmp119 = icmp slt i32 %94, 8
  br i1 %cmp119, label %for.body.120, label %for.end

for.body.120:                                     ; preds = %for.cond.118
  %95 = load i32, i32* %pic_opix_x, align 4
  %96 = load i32, i32* %i, align 4
  %add121 = add nsw i32 %95, %96
  %idxprom122 = sext i32 %add121 to i64
  %97 = load i32, i32* %pic_opix_y, align 4
  %98 = load i32, i32* %j, align 4
  %add123 = add nsw i32 %97, %98
  %idxprom124 = sext i32 %add123 to i64
  %99 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx125 = getelementptr inbounds i16*, i16** %99, i64 %idxprom124
  %100 = load i16*, i16** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i16, i16* %100, i64 %idxprom122
  %101 = load i16, i16* %arrayidx126, align 2
  %conv = zext i16 %101 to i32
  %102 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %102 to i64
  %103 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %103 to i64
  %104 = load i32, i32* %ipmode, align 4
  %idxprom129 = sext i32 %104 to i64
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 43
  %arrayidx130 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx130, i32 0, i64 %idxprom128
  %arrayidx132 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx131, i32 0, i64 %idxprom127
  %106 = load i16, i16* %arrayidx132, align 2
  %conv133 = zext i16 %106 to i32
  %sub = sub nsw i32 %conv, %conv133
  %107 = load i32, i32* %k, align 4
  %idxprom134 = sext i32 %107 to i64
  %arrayidx135 = getelementptr inbounds [64 x i32], [64 x i32]* %diff, i32 0, i64 %idxprom134
  store i32 %sub, i32* %arrayidx135, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.120
  %108 = load i32, i32* %i, align 4
  %inc = add nsw i32 %108, 1
  store i32 %inc, i32* %i, align 4
  %109 = load i32, i32* %k, align 4
  %inc136 = add nsw i32 %109, 1
  store i32 %inc136, i32* %k, align 4
  br label %for.cond.118

for.end:                                          ; preds = %for.cond.118
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end
  %110 = load i32, i32* %j, align 4
  %inc138 = add nsw i32 %110, 1
  store i32 %inc138, i32* %j, align 4
  br label %for.cond.115

for.end.139:                                      ; preds = %for.cond.115
  %111 = load i32, i32* %ipmode, align 4
  %112 = load i32, i32* %mostProbableMode, align 4
  %cmp140 = icmp eq i32 %111, %112
  br i1 %cmp140, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %for.end.139
  br label %cond.end.146

cond.false.143:                                   ; preds = %for.end.139
  %113 = load double, double* %lambda.addr, align 8
  %mul144 = fmul double 4.000000e+00, %113
  %call = call double @floor(double %mul144) #3
  %conv145 = fptosi double %call to i32
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.143, %cond.true.142
  %cond147 = phi i32 [ 0, %cond.true.142 ], [ %conv145, %cond.false.143 ]
  store i32 %cond147, i32* %cost, align 4
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %diff, i32 0, i32 0
  %114 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %hadamard = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %114, i32 0, i32 6
  %115 = load i32, i32* %hadamard, align 4
  %call148 = call i32 @SATD8X8(i32* %arraydecay, i32 %115)
  %116 = load i32, i32* %cost, align 4
  %add149 = add nsw i32 %116, %call148
  store i32 %add149, i32* %cost, align 4
  %117 = load i32, i32* %cost, align 4
  %118 = load i32*, i32** %min_cost.addr, align 8
  %119 = load i32, i32* %118, align 4
  %cmp150 = icmp slt i32 %117, %119
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %cond.end.146
  %120 = load i32, i32* %ipmode, align 4
  store i32 %120, i32* %best_ipmode, align 4
  %121 = load i32, i32* %cost, align 4
  %122 = load i32*, i32** %min_cost.addr, align 8
  store i32 %121, i32* %122, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %cond.end.146
  br label %if.end.1124

if.else.154:                                      ; preds = %if.then.112
  %123 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %123, i32 0, i32 164
  %124 = load i32, i32* %residue_transform_flag, align 4
  %tobool155 = icmp ne i32 %124, 0
  br i1 %tobool155, label %if.else.270, label %if.then.156

if.then.156:                                      ; preds = %if.else.154
  store i32 0, i32* %j, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.201, %if.then.156
  %125 = load i32, i32* %j, align 4
  %cmp158 = icmp slt i32 %125, 8
  br i1 %cmp158, label %for.body.160, label %for.end.203

for.body.160:                                     ; preds = %for.cond.157
  store i32 0, i32* %i, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.198, %for.body.160
  %126 = load i32, i32* %i, align 4
  %cmp162 = icmp slt i32 %126, 8
  br i1 %cmp162, label %for.body.164, label %for.end.200

for.body.164:                                     ; preds = %for.cond.161
  %127 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %127 to i64
  %128 = load i32, i32* %j, align 4
  %idxprom166 = sext i32 %128 to i64
  %129 = load i32, i32* %ipmode, align 4
  %idxprom167 = sext i32 %129 to i64
  %130 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3168 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %130, i32 0, i32 43
  %arrayidx169 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3168, i32 0, i64 %idxprom167
  %arrayidx170 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx169, i32 0, i64 %idxprom166
  %arrayidx171 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx170, i32 0, i64 %idxprom165
  %131 = load i16, i16* %arrayidx171, align 2
  %132 = load i32, i32* %block_y, align 4
  %133 = load i32, i32* %j, align 4
  %add172 = add nsw i32 %132, %133
  %idxprom173 = sext i32 %add172 to i64
  %134 = load i32, i32* %block_x, align 4
  %135 = load i32, i32* %i, align 4
  %add174 = add nsw i32 %134, %135
  %idxprom175 = sext i32 %add174 to i64
  %136 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %136, i32 0, i32 45
  %arrayidx176 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx176, i32 0, i64 %idxprom173
  store i16 %131, i16* %arrayidx177, align 2
  %137 = load i32, i32* %pic_opix_x, align 4
  %138 = load i32, i32* %i, align 4
  %add178 = add nsw i32 %137, %138
  %idxprom179 = sext i32 %add178 to i64
  %139 = load i32, i32* %pic_opix_y, align 4
  %140 = load i32, i32* %j, align 4
  %add180 = add nsw i32 %139, %140
  %idxprom181 = sext i32 %add180 to i64
  %141 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx182 = getelementptr inbounds i16*, i16** %141, i64 %idxprom181
  %142 = load i16*, i16** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i16, i16* %142, i64 %idxprom179
  %143 = load i16, i16* %arrayidx183, align 2
  %conv184 = zext i16 %143 to i32
  %144 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %144 to i64
  %145 = load i32, i32* %j, align 4
  %idxprom186 = sext i32 %145 to i64
  %146 = load i32, i32* %ipmode, align 4
  %idxprom187 = sext i32 %146 to i64
  %147 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3188 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %147, i32 0, i32 43
  %arrayidx189 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3188, i32 0, i64 %idxprom187
  %arrayidx190 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx189, i32 0, i64 %idxprom186
  %arrayidx191 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx190, i32 0, i64 %idxprom185
  %148 = load i16, i16* %arrayidx191, align 2
  %conv192 = zext i16 %148 to i32
  %sub193 = sub nsw i32 %conv184, %conv192
  %149 = load i32, i32* %j, align 4
  %idxprom194 = sext i32 %149 to i64
  %150 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %150 to i64
  %151 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %151, i32 0, i32 46
  %arrayidx196 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx196, i32 0, i64 %idxprom194
  store i32 %sub193, i32* %arrayidx197, align 4
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.164
  %152 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %152, 1
  store i32 %inc199, i32* %i, align 4
  br label %for.cond.161

for.end.200:                                      ; preds = %for.cond.161
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.200
  %153 = load i32, i32* %j, align 4
  %inc202 = add nsw i32 %153, 1
  store i32 %inc202, i32* %j, align 4
  br label %for.cond.157

for.end.203:                                      ; preds = %for.cond.157
  call void (...) @store_coding_state_cs_cm()
  %154 = load i32, i32* %b8.addr, align 4
  %155 = load i32, i32* %ipmode, align 4
  %156 = load double, double* %lambda.addr, align 8
  %157 = load double, double* %min_rdcost, align 8
  %158 = load i32, i32* %mostProbableMode, align 4
  %call204 = call double @RDCost_for_8x8IntraBlocks(i32* %c_nz, i32 %154, i32 %155, double %156, double %157, i32 %158)
  store double %call204, double* %rdcost, align 8
  %159 = load double, double* %min_rdcost, align 8
  %cmp205 = fcmp olt double %call204, %159
  br i1 %cmp205, label %if.then.207, label %if.end.269

if.then.207:                                      ; preds = %for.end.203
  store i32 0, i32* %j, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.242, %if.then.207
  %160 = load i32, i32* %j, align 4
  %cmp209 = icmp slt i32 %160, 2
  br i1 %cmp209, label %for.body.211, label %for.end.244

for.body.211:                                     ; preds = %for.cond.208
  store i32 0, i32* %i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.239, %for.body.211
  %161 = load i32, i32* %i, align 4
  %cmp213 = icmp slt i32 %161, 65
  br i1 %cmp213, label %for.body.215, label %for.end.241

for.body.215:                                     ; preds = %for.cond.212
  store i32 0, i32* %k, align 4
  br label %for.cond.216

for.cond.216:                                     ; preds = %for.inc.236, %for.body.215
  %162 = load i32, i32* %k, align 4
  %cmp217 = icmp slt i32 %162, 4
  br i1 %cmp217, label %for.body.219, label %for.end.238

for.body.219:                                     ; preds = %for.cond.216
  %163 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %163 to i64
  %164 = load i32, i32* %j, align 4
  %idxprom221 = sext i32 %164 to i64
  %165 = load i32, i32* %k, align 4
  %idxprom222 = sext i32 %165 to i64
  %166 = load i32, i32* %b8.addr, align 4
  %idxprom223 = sext i32 %166 to i64
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 47
  %168 = load i32****, i32***** %cofAC, align 8
  %arrayidx224 = getelementptr inbounds i32***, i32**** %168, i64 %idxprom223
  %169 = load i32***, i32**** %arrayidx224, align 8
  %arrayidx225 = getelementptr inbounds i32**, i32*** %169, i64 %idxprom222
  %170 = load i32**, i32*** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32*, i32** %170, i64 %idxprom221
  %171 = load i32*, i32** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %171, i64 %idxprom220
  %172 = load i32, i32* %arrayidx227, align 4
  %173 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %173 to i64
  %174 = load i32, i32* %j, align 4
  %idxprom229 = sext i32 %174 to i64
  %175 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %175 to i64
  %176 = load i32, i32* %b8.addr, align 4
  %idxprom231 = sext i32 %176 to i64
  %177 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx232 = getelementptr inbounds i32***, i32**** %177, i64 %idxprom231
  %178 = load i32***, i32**** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32**, i32*** %178, i64 %idxprom230
  %179 = load i32**, i32*** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i32*, i32** %179, i64 %idxprom229
  %180 = load i32*, i32** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i32, i32* %180, i64 %idxprom228
  store i32 %172, i32* %arrayidx235, align 4
  br label %for.inc.236

for.inc.236:                                      ; preds = %for.body.219
  %181 = load i32, i32* %k, align 4
  %inc237 = add nsw i32 %181, 1
  store i32 %inc237, i32* %k, align 4
  br label %for.cond.216

for.end.238:                                      ; preds = %for.cond.216
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.end.238
  %182 = load i32, i32* %i, align 4
  %inc240 = add nsw i32 %182, 1
  store i32 %inc240, i32* %i, align 4
  br label %for.cond.212

for.end.241:                                      ; preds = %for.cond.212
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.end.241
  %183 = load i32, i32* %j, align 4
  %inc243 = add nsw i32 %183, 1
  store i32 %inc243, i32* %j, align 4
  br label %for.cond.208

for.end.244:                                      ; preds = %for.cond.208
  store i32 0, i32* %y, align 4
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.266, %for.end.244
  %184 = load i32, i32* %y, align 4
  %cmp246 = icmp slt i32 %184, 8
  br i1 %cmp246, label %for.body.248, label %for.end.268

for.body.248:                                     ; preds = %for.cond.245
  store i32 0, i32* %x, align 4
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.263, %for.body.248
  %185 = load i32, i32* %x, align 4
  %cmp250 = icmp slt i32 %185, 8
  br i1 %cmp250, label %for.body.252, label %for.end.265

for.body.252:                                     ; preds = %for.cond.249
  %186 = load i32, i32* %pic_pix_x, align 4
  %187 = load i32, i32* %x, align 4
  %add253 = add nsw i32 %186, %187
  %idxprom254 = sext i32 %add253 to i64
  %188 = load i32, i32* %pic_pix_y, align 4
  %189 = load i32, i32* %y, align 4
  %add255 = add nsw i32 %188, %189
  %idxprom256 = sext i32 %add255 to i64
  %190 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %190, i32 0, i32 25
  %191 = load i16**, i16*** %imgY, align 8
  %arrayidx257 = getelementptr inbounds i16*, i16** %191, i64 %idxprom256
  %192 = load i16*, i16** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i16, i16* %192, i64 %idxprom254
  %193 = load i16, i16* %arrayidx258, align 2
  %194 = load i32, i32* %x, align 4
  %idxprom259 = sext i32 %194 to i64
  %195 = load i32, i32* %y, align 4
  %idxprom260 = sext i32 %195 to i64
  %arrayidx261 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %rec8x8, i32 0, i64 %idxprom260
  %arrayidx262 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx261, i32 0, i64 %idxprom259
  store i16 %193, i16* %arrayidx262, align 2
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.body.252
  %196 = load i32, i32* %x, align 4
  %inc264 = add nsw i32 %196, 1
  store i32 %inc264, i32* %x, align 4
  br label %for.cond.249

for.end.265:                                      ; preds = %for.cond.249
  br label %for.inc.266

for.inc.266:                                      ; preds = %for.end.265
  %197 = load i32, i32* %y, align 4
  %inc267 = add nsw i32 %197, 1
  store i32 %inc267, i32* %y, align 4
  br label %for.cond.245

for.end.268:                                      ; preds = %for.cond.245
  %198 = load i32, i32* %c_nz, align 4
  store i32 %198, i32* %nonzero, align 4
  %199 = load double, double* %rdcost, align 8
  store double %199, double* %min_rdcost, align 8
  %200 = load i32, i32* %ipmode, align 4
  store i32 %200, i32* %best_ipmode, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %for.end.268, %for.end.203
  call void (...) @reset_coding_state_cs_cm()
  br label %if.end.1123

if.else.270:                                      ; preds = %if.else.154
  store i32 0, i32* %j, align 4
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.362, %if.else.270
  %201 = load i32, i32* %j, align 4
  %cmp272 = icmp slt i32 %201, 8
  br i1 %cmp272, label %for.body.274, label %for.end.364

for.body.274:                                     ; preds = %for.cond.271
  store i32 0, i32* %i, align 4
  br label %for.cond.275

for.cond.275:                                     ; preds = %for.inc.359, %for.body.274
  %202 = load i32, i32* %i, align 4
  %cmp276 = icmp slt i32 %202, 8
  br i1 %cmp276, label %for.body.278, label %for.end.361

for.body.278:                                     ; preds = %for.cond.275
  %203 = load i32, i32* %pic_opix_x, align 4
  %204 = load i32, i32* %i, align 4
  %add279 = add nsw i32 %203, %204
  %idxprom280 = sext i32 %add279 to i64
  %205 = load i32, i32* %pic_opix_y, align 4
  %206 = load i32, i32* %j, align 4
  %add281 = add nsw i32 %205, %206
  %idxprom282 = sext i32 %add281 to i64
  %207 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx283 = getelementptr inbounds i16**, i16*** %207, i64 0
  %208 = load i16**, i16*** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i16*, i16** %208, i64 %idxprom282
  %209 = load i16*, i16** %arrayidx284, align 8
  %arrayidx285 = getelementptr inbounds i16, i16* %209, i64 %idxprom280
  %210 = load i16, i16* %arrayidx285, align 2
  %conv286 = zext i16 %210 to i32
  %211 = load i32, i32* %block_y, align 4
  %212 = load i32, i32* %j, align 4
  %add287 = add nsw i32 %211, %212
  %idxprom288 = sext i32 %add287 to i64
  %213 = load i32, i32* %block_x, align 4
  %214 = load i32, i32* %i, align 4
  %add289 = add nsw i32 %213, %214
  %idxprom290 = sext i32 %add289 to i64
  %215 = load i32, i32* %c_ipmode, align 4
  %idxprom291 = sext i32 %215 to i64
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 44
  %arrayidx292 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c, i32 0, i64 0
  %arrayidx293 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx292, i32 0, i64 %idxprom291
  %arrayidx294 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx293, i32 0, i64 %idxprom290
  %arrayidx295 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx294, i32 0, i64 %idxprom288
  %217 = load i16, i16* %arrayidx295, align 2
  %conv296 = zext i16 %217 to i32
  %sub297 = sub nsw i32 %conv286, %conv296
  store i32 %sub297, i32* %residue_B, align 4
  %218 = load i32, i32* %pic_opix_x, align 4
  %219 = load i32, i32* %i, align 4
  %add298 = add nsw i32 %218, %219
  %idxprom299 = sext i32 %add298 to i64
  %220 = load i32, i32* %pic_opix_y, align 4
  %221 = load i32, i32* %j, align 4
  %add300 = add nsw i32 %220, %221
  %idxprom301 = sext i32 %add300 to i64
  %222 = load i16**, i16*** @imgY_org, align 8
  %arrayidx302 = getelementptr inbounds i16*, i16** %222, i64 %idxprom301
  %223 = load i16*, i16** %arrayidx302, align 8
  %arrayidx303 = getelementptr inbounds i16, i16* %223, i64 %idxprom299
  %224 = load i16, i16* %arrayidx303, align 2
  %conv304 = zext i16 %224 to i32
  %225 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %225 to i64
  %226 = load i32, i32* %j, align 4
  %idxprom306 = sext i32 %226 to i64
  %227 = load i32, i32* %ipmode, align 4
  %idxprom307 = sext i32 %227 to i64
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3308 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 43
  %arrayidx309 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3308, i32 0, i64 %idxprom307
  %arrayidx310 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx309, i32 0, i64 %idxprom306
  %arrayidx311 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx310, i32 0, i64 %idxprom305
  %229 = load i16, i16* %arrayidx311, align 2
  %conv312 = zext i16 %229 to i32
  %sub313 = sub nsw i32 %conv304, %conv312
  store i32 %sub313, i32* %residue_G, align 4
  %230 = load i32, i32* %pic_opix_x, align 4
  %231 = load i32, i32* %i, align 4
  %add314 = add nsw i32 %230, %231
  %idxprom315 = sext i32 %add314 to i64
  %232 = load i32, i32* %pic_opix_y, align 4
  %233 = load i32, i32* %j, align 4
  %add316 = add nsw i32 %232, %233
  %idxprom317 = sext i32 %add316 to i64
  %234 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx318 = getelementptr inbounds i16**, i16*** %234, i64 1
  %235 = load i16**, i16*** %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds i16*, i16** %235, i64 %idxprom317
  %236 = load i16*, i16** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i16, i16* %236, i64 %idxprom315
  %237 = load i16, i16* %arrayidx320, align 2
  %conv321 = zext i16 %237 to i32
  %238 = load i32, i32* %block_y, align 4
  %239 = load i32, i32* %j, align 4
  %add322 = add nsw i32 %238, %239
  %idxprom323 = sext i32 %add322 to i64
  %240 = load i32, i32* %block_x, align 4
  %241 = load i32, i32* %i, align 4
  %add324 = add nsw i32 %240, %241
  %idxprom325 = sext i32 %add324 to i64
  %242 = load i32, i32* %c_ipmode, align 4
  %idxprom326 = sext i32 %242 to i64
  %243 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c327 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %243, i32 0, i32 44
  %arrayidx328 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c327, i32 0, i64 1
  %arrayidx329 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx328, i32 0, i64 %idxprom326
  %arrayidx330 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx329, i32 0, i64 %idxprom325
  %arrayidx331 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx330, i32 0, i64 %idxprom323
  %244 = load i16, i16* %arrayidx331, align 2
  %conv332 = zext i16 %244 to i32
  %sub333 = sub nsw i32 %conv321, %conv332
  store i32 %sub333, i32* %residue_R, align 4
  %245 = load i32, i32* %residue_R, align 4
  %246 = load i32, i32* %residue_B, align 4
  %sub334 = sub nsw i32 %245, %246
  %247 = load i32, i32* %j, align 4
  %idxprom335 = sext i32 %247 to i64
  %248 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %248 to i64
  %arrayidx337 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_R, i32 0, i64 %idxprom336
  %arrayidx338 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx337, i32 0, i64 %idxprom335
  store i32 %sub334, i32* %arrayidx338, align 4
  %249 = load i32, i32* %residue_B, align 4
  %250 = load i32, i32* %j, align 4
  %idxprom339 = sext i32 %250 to i64
  %251 = load i32, i32* %i, align 4
  %idxprom340 = sext i32 %251 to i64
  %arrayidx341 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_R, i32 0, i64 %idxprom340
  %arrayidx342 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx341, i32 0, i64 %idxprom339
  %252 = load i32, i32* %arrayidx342, align 4
  %shr = ashr i32 %252, 1
  %add343 = add nsw i32 %249, %shr
  store i32 %add343, i32* %temp, align 4
  %253 = load i32, i32* %residue_G, align 4
  %254 = load i32, i32* %temp, align 4
  %sub344 = sub nsw i32 %253, %254
  %255 = load i32, i32* %j, align 4
  %idxprom345 = sext i32 %255 to i64
  %256 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %256 to i64
  %arrayidx347 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_B, i32 0, i64 %idxprom346
  %arrayidx348 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx347, i32 0, i64 %idxprom345
  store i32 %sub344, i32* %arrayidx348, align 4
  %257 = load i32, i32* %temp, align 4
  %258 = load i32, i32* %j, align 4
  %idxprom349 = sext i32 %258 to i64
  %259 = load i32, i32* %i, align 4
  %idxprom350 = sext i32 %259 to i64
  %arrayidx351 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_B, i32 0, i64 %idxprom350
  %arrayidx352 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx351, i32 0, i64 %idxprom349
  %260 = load i32, i32* %arrayidx352, align 4
  %shr353 = ashr i32 %260, 1
  %add354 = add nsw i32 %257, %shr353
  %261 = load i32, i32* %j, align 4
  %idxprom355 = sext i32 %261 to i64
  %262 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %262 to i64
  %arrayidx357 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_G, i32 0, i64 %idxprom356
  %arrayidx358 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx357, i32 0, i64 %idxprom355
  store i32 %add354, i32* %arrayidx358, align 4
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.body.278
  %263 = load i32, i32* %i, align 4
  %inc360 = add nsw i32 %263, 1
  store i32 %inc360, i32* %i, align 4
  br label %for.cond.275

for.end.361:                                      ; preds = %for.cond.275
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.end.361
  %264 = load i32, i32* %j, align 4
  %inc363 = add nsw i32 %264, 1
  store i32 %inc363, i32* %j, align 4
  br label %for.cond.271

for.end.364:                                      ; preds = %for.cond.271
  store i32 0, i32* %j, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.385, %for.end.364
  %265 = load i32, i32* %j, align 4
  %cmp366 = icmp slt i32 %265, 8
  br i1 %cmp366, label %for.body.368, label %for.end.387

for.body.368:                                     ; preds = %for.cond.365
  store i32 0, i32* %i, align 4
  br label %for.cond.369

for.cond.369:                                     ; preds = %for.inc.382, %for.body.368
  %266 = load i32, i32* %i, align 4
  %cmp370 = icmp slt i32 %266, 8
  br i1 %cmp370, label %for.body.372, label %for.end.384

for.body.372:                                     ; preds = %for.cond.369
  %267 = load i32, i32* %j, align 4
  %idxprom373 = sext i32 %267 to i64
  %268 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %268 to i64
  %arrayidx375 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_G, i32 0, i64 %idxprom374
  %arrayidx376 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx375, i32 0, i64 %idxprom373
  %269 = load i32, i32* %arrayidx376, align 4
  %270 = load i32, i32* %j, align 4
  %idxprom377 = sext i32 %270 to i64
  %271 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %271 to i64
  %272 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7379 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %272, i32 0, i32 46
  %arrayidx380 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7379, i32 0, i64 %idxprom378
  %arrayidx381 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx380, i32 0, i64 %idxprom377
  store i32 %269, i32* %arrayidx381, align 4
  br label %for.inc.382

for.inc.382:                                      ; preds = %for.body.372
  %273 = load i32, i32* %i, align 4
  %inc383 = add nsw i32 %273, 1
  store i32 %inc383, i32* %i, align 4
  br label %for.cond.369

for.end.384:                                      ; preds = %for.cond.369
  br label %for.inc.385

for.inc.385:                                      ; preds = %for.end.384
  %274 = load i32, i32* %j, align 4
  %inc386 = add nsw i32 %274, 1
  store i32 %inc386, i32* %j, align 4
  br label %for.cond.365

for.end.387:                                      ; preds = %for.cond.365
  call void (...) @store_coding_state_cs_cm()
  %275 = load i32, i32* %b8.addr, align 4
  %276 = load i32, i32* %ipmode, align 4
  %277 = load double, double* %lambda.addr, align 8
  %278 = load double, double* %min_rdcost, align 8
  %279 = load i32, i32* %mostProbableMode, align 4
  %call388 = call double @RDCost_for_8x8IntraBlocks(i32* %c_nz, i32 %275, i32 %276, double %277, double %278, i32 %279)
  %conv389 = fptosi double %call388 to i32
  store i32 %conv389, i32* %rate, align 4
  call void (...) @reset_coding_state_cs_cm()
  store i32 0, i32* %j, align 4
  br label %for.cond.390

for.cond.390:                                     ; preds = %for.inc.410, %for.end.387
  %280 = load i32, i32* %j, align 4
  %cmp391 = icmp slt i32 %280, 8
  br i1 %cmp391, label %for.body.393, label %for.end.412

for.body.393:                                     ; preds = %for.cond.390
  store i32 0, i32* %i, align 4
  br label %for.cond.394

for.cond.394:                                     ; preds = %for.inc.407, %for.body.393
  %281 = load i32, i32* %i, align 4
  %cmp395 = icmp slt i32 %281, 8
  br i1 %cmp395, label %for.body.397, label %for.end.409

for.body.397:                                     ; preds = %for.cond.394
  %282 = load i32, i32* %j, align 4
  %idxprom398 = sext i32 %282 to i64
  %283 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %283 to i64
  %284 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7400 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %284, i32 0, i32 46
  %arrayidx401 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7400, i32 0, i64 %idxprom399
  %arrayidx402 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx401, i32 0, i64 %idxprom398
  %285 = load i32, i32* %arrayidx402, align 4
  %286 = load i32, i32* %j, align 4
  %idxprom403 = sext i32 %286 to i64
  %287 = load i32, i32* %i, align 4
  %idxprom404 = sext i32 %287 to i64
  %arrayidx405 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resG, i32 0, i64 %idxprom404
  %arrayidx406 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx405, i32 0, i64 %idxprom403
  store i32 %285, i32* %arrayidx406, align 4
  br label %for.inc.407

for.inc.407:                                      ; preds = %for.body.397
  %288 = load i32, i32* %i, align 4
  %inc408 = add nsw i32 %288, 1
  store i32 %inc408, i32* %i, align 4
  br label %for.cond.394

for.end.409:                                      ; preds = %for.cond.394
  br label %for.inc.410

for.inc.410:                                      ; preds = %for.end.409
  %289 = load i32, i32* %j, align 4
  %inc411 = add nsw i32 %289, 1
  store i32 %inc411, i32* %j, align 4
  br label %for.cond.390

for.end.412:                                      ; preds = %for.cond.390
  call void (...) @store_coding_state_cs_cm()
  store i32 0, i32* %b4, align 4
  br label %for.cond.413

for.cond.413:                                     ; preds = %for.inc.513, %for.end.412
  %290 = load i32, i32* %b4, align 4
  %cmp414 = icmp slt i32 %290, 4
  br i1 %cmp414, label %for.body.416, label %for.end.515

for.body.416:                                     ; preds = %for.cond.413
  %291 = load i32, i32* %b4, align 4
  %rem417 = srem i32 %291, 2
  %mul418 = mul nsw i32 4, %rem417
  store i32 %mul418, i32* %block4x4_x, align 4
  %292 = load i32, i32* %b4, align 4
  %div419 = sdiv i32 %292, 2
  %mul420 = mul nsw i32 4, %div419
  store i32 %mul420, i32* %block4x4_y, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.443, %for.body.416
  %293 = load i32, i32* %j, align 4
  %cmp422 = icmp slt i32 %293, 4
  br i1 %cmp422, label %for.body.424, label %for.end.445

for.body.424:                                     ; preds = %for.cond.421
  store i32 0, i32* %i, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.440, %for.body.424
  %294 = load i32, i32* %i, align 4
  %cmp426 = icmp slt i32 %294, 4
  br i1 %cmp426, label %for.body.428, label %for.end.442

for.body.428:                                     ; preds = %for.cond.425
  %295 = load i32, i32* %j, align 4
  %296 = load i32, i32* %block4x4_y, align 4
  %add429 = add nsw i32 %295, %296
  %idxprom430 = sext i32 %add429 to i64
  %297 = load i32, i32* %i, align 4
  %298 = load i32, i32* %block4x4_x, align 4
  %add431 = add nsw i32 %297, %298
  %idxprom432 = sext i32 %add431 to i64
  %arrayidx433 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_R, i32 0, i64 %idxprom432
  %arrayidx434 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx433, i32 0, i64 %idxprom430
  %299 = load i32, i32* %arrayidx434, align 4
  %300 = load i32, i32* %j, align 4
  %idxprom435 = sext i32 %300 to i64
  %301 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %301 to i64
  %302 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7437 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %302, i32 0, i32 46
  %arrayidx438 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7437, i32 0, i64 %idxprom436
  %arrayidx439 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx438, i32 0, i64 %idxprom435
  store i32 %299, i32* %arrayidx439, align 4
  br label %for.inc.440

for.inc.440:                                      ; preds = %for.body.428
  %303 = load i32, i32* %i, align 4
  %inc441 = add nsw i32 %303, 1
  store i32 %inc441, i32* %i, align 4
  br label %for.cond.425

for.end.442:                                      ; preds = %for.cond.425
  br label %for.inc.443

for.inc.443:                                      ; preds = %for.end.442
  %304 = load i32, i32* %j, align 4
  %inc444 = add nsw i32 %304, 1
  store i32 %inc444, i32* %j, align 4
  br label %for.cond.421

for.end.445:                                      ; preds = %for.cond.421
  %305 = load i32, i32* %b8.addr, align 4
  %add446 = add nsw i32 %305, 4
  %306 = load i32, i32* %b4, align 4
  %call447 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add446, i32 %306, i32 0)
  %307 = load i32, i32* %rate, align 4
  %add448 = add nsw i32 %307, %call447
  store i32 %add448, i32* %rate, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.449

for.cond.449:                                     ; preds = %for.inc.482, %for.end.445
  %308 = load i32, i32* %j, align 4
  %cmp450 = icmp slt i32 %308, 4
  br i1 %cmp450, label %for.body.452, label %for.end.484

for.body.452:                                     ; preds = %for.cond.449
  store i32 0, i32* %i, align 4
  br label %for.cond.453

for.cond.453:                                     ; preds = %for.inc.479, %for.body.452
  %309 = load i32, i32* %i, align 4
  %cmp454 = icmp slt i32 %309, 4
  br i1 %cmp454, label %for.body.456, label %for.end.481

for.body.456:                                     ; preds = %for.cond.453
  %310 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %310 to i64
  %311 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %311 to i64
  %312 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7459 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %312, i32 0, i32 46
  %arrayidx460 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7459, i32 0, i64 %idxprom458
  %arrayidx461 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx460, i32 0, i64 %idxprom457
  %313 = load i32, i32* %arrayidx461, align 4
  %314 = load i32, i32* %j, align 4
  %315 = load i32, i32* %block4x4_y, align 4
  %add462 = add nsw i32 %314, %315
  %idxprom463 = sext i32 %add462 to i64
  %316 = load i32, i32* %i, align 4
  %317 = load i32, i32* %block4x4_x, align 4
  %add464 = add nsw i32 %316, %317
  %idxprom465 = sext i32 %add464 to i64
  %arrayidx466 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resR, i32 0, i64 %idxprom465
  %arrayidx467 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx466, i32 0, i64 %idxprom463
  store i32 %313, i32* %arrayidx467, align 4
  %318 = load i32, i32* %j, align 4
  %319 = load i32, i32* %block4x4_y, align 4
  %add468 = add nsw i32 %318, %319
  %idxprom469 = sext i32 %add468 to i64
  %320 = load i32, i32* %i, align 4
  %321 = load i32, i32* %block4x4_x, align 4
  %add470 = add nsw i32 %320, %321
  %idxprom471 = sext i32 %add470 to i64
  %arrayidx472 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_B, i32 0, i64 %idxprom471
  %arrayidx473 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx472, i32 0, i64 %idxprom469
  %322 = load i32, i32* %arrayidx473, align 4
  %323 = load i32, i32* %j, align 4
  %idxprom474 = sext i32 %323 to i64
  %324 = load i32, i32* %i, align 4
  %idxprom475 = sext i32 %324 to i64
  %325 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7476 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %325, i32 0, i32 46
  %arrayidx477 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7476, i32 0, i64 %idxprom475
  %arrayidx478 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx477, i32 0, i64 %idxprom474
  store i32 %322, i32* %arrayidx478, align 4
  br label %for.inc.479

for.inc.479:                                      ; preds = %for.body.456
  %326 = load i32, i32* %i, align 4
  %inc480 = add nsw i32 %326, 1
  store i32 %inc480, i32* %i, align 4
  br label %for.cond.453

for.end.481:                                      ; preds = %for.cond.453
  br label %for.inc.482

for.inc.482:                                      ; preds = %for.end.481
  %327 = load i32, i32* %j, align 4
  %inc483 = add nsw i32 %327, 1
  store i32 %inc483, i32* %j, align 4
  br label %for.cond.449

for.end.484:                                      ; preds = %for.cond.449
  %328 = load i32, i32* %b8.addr, align 4
  %add485 = add nsw i32 %328, 8
  %329 = load i32, i32* %b4, align 4
  %call486 = call i32 @RDCost_for_4x4Blocks_Chroma(i32 %add485, i32 %329, i32 1)
  %330 = load i32, i32* %rate, align 4
  %add487 = add nsw i32 %330, %call486
  store i32 %add487, i32* %rate, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.488

for.cond.488:                                     ; preds = %for.inc.510, %for.end.484
  %331 = load i32, i32* %j, align 4
  %cmp489 = icmp slt i32 %331, 4
  br i1 %cmp489, label %for.body.491, label %for.end.512

for.body.491:                                     ; preds = %for.cond.488
  store i32 0, i32* %i, align 4
  br label %for.cond.492

for.cond.492:                                     ; preds = %for.inc.507, %for.body.491
  %332 = load i32, i32* %i, align 4
  %cmp493 = icmp slt i32 %332, 4
  br i1 %cmp493, label %for.body.495, label %for.end.509

for.body.495:                                     ; preds = %for.cond.492
  %333 = load i32, i32* %j, align 4
  %idxprom496 = sext i32 %333 to i64
  %334 = load i32, i32* %i, align 4
  %idxprom497 = sext i32 %334 to i64
  %335 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7498 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %335, i32 0, i32 46
  %arrayidx499 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7498, i32 0, i64 %idxprom497
  %arrayidx500 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx499, i32 0, i64 %idxprom496
  %336 = load i32, i32* %arrayidx500, align 4
  %337 = load i32, i32* %j, align 4
  %338 = load i32, i32* %block4x4_y, align 4
  %add501 = add nsw i32 %337, %338
  %idxprom502 = sext i32 %add501 to i64
  %339 = load i32, i32* %i, align 4
  %340 = load i32, i32* %block4x4_x, align 4
  %add503 = add nsw i32 %339, %340
  %idxprom504 = sext i32 %add503 to i64
  %arrayidx505 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resB, i32 0, i64 %idxprom504
  %arrayidx506 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx505, i32 0, i64 %idxprom502
  store i32 %336, i32* %arrayidx506, align 4
  br label %for.inc.507

for.inc.507:                                      ; preds = %for.body.495
  %341 = load i32, i32* %i, align 4
  %inc508 = add nsw i32 %341, 1
  store i32 %inc508, i32* %i, align 4
  br label %for.cond.492

for.end.509:                                      ; preds = %for.cond.492
  br label %for.inc.510

for.inc.510:                                      ; preds = %for.end.509
  %342 = load i32, i32* %j, align 4
  %inc511 = add nsw i32 %342, 1
  store i32 %inc511, i32* %j, align 4
  br label %for.cond.488

for.end.512:                                      ; preds = %for.cond.488
  br label %for.inc.513

for.inc.513:                                      ; preds = %for.end.512
  %343 = load i32, i32* %b4, align 4
  %inc514 = add nsw i32 %343, 1
  store i32 %inc514, i32* %b4, align 4
  br label %for.cond.413

for.end.515:                                      ; preds = %for.cond.413
  call void (...) @reset_coding_state_cs_cm()
  store i32 0, i32* %j, align 4
  br label %for.cond.516

for.cond.516:                                     ; preds = %for.inc.768, %for.end.515
  %344 = load i32, i32* %j, align 4
  %cmp517 = icmp slt i32 %344, 8
  br i1 %cmp517, label %for.body.519, label %for.end.770

for.body.519:                                     ; preds = %for.cond.516
  store i32 0, i32* %i, align 4
  br label %for.cond.520

for.cond.520:                                     ; preds = %for.inc.765, %for.body.519
  %345 = load i32, i32* %i, align 4
  %cmp521 = icmp slt i32 %345, 8
  br i1 %cmp521, label %for.body.523, label %for.end.767

for.body.523:                                     ; preds = %for.cond.520
  %346 = load i32, i32* %j, align 4
  %idxprom524 = sext i32 %346 to i64
  %347 = load i32, i32* %i, align 4
  %idxprom525 = sext i32 %347 to i64
  %arrayidx526 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resG, i32 0, i64 %idxprom525
  %arrayidx527 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx526, i32 0, i64 %idxprom524
  %348 = load i32, i32* %arrayidx527, align 4
  %349 = load i32, i32* %j, align 4
  %idxprom528 = sext i32 %349 to i64
  %350 = load i32, i32* %i, align 4
  %idxprom529 = sext i32 %350 to i64
  %arrayidx530 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resB, i32 0, i64 %idxprom529
  %arrayidx531 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx530, i32 0, i64 %idxprom528
  %351 = load i32, i32* %arrayidx531, align 4
  %shr532 = ashr i32 %351, 1
  %sub533 = sub nsw i32 %348, %shr532
  store i32 %sub533, i32* %temp, align 4
  %352 = load i32, i32* %j, align 4
  %idxprom534 = sext i32 %352 to i64
  %353 = load i32, i32* %i, align 4
  %idxprom535 = sext i32 %353 to i64
  %arrayidx536 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resB, i32 0, i64 %idxprom535
  %arrayidx537 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx536, i32 0, i64 %idxprom534
  %354 = load i32, i32* %arrayidx537, align 4
  %355 = load i32, i32* %temp, align 4
  %add538 = add nsw i32 %354, %355
  store i32 %add538, i32* %residue_G, align 4
  %356 = load i32, i32* %temp, align 4
  %357 = load i32, i32* %j, align 4
  %idxprom539 = sext i32 %357 to i64
  %358 = load i32, i32* %i, align 4
  %idxprom540 = sext i32 %358 to i64
  %arrayidx541 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resR, i32 0, i64 %idxprom540
  %arrayidx542 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx541, i32 0, i64 %idxprom539
  %359 = load i32, i32* %arrayidx542, align 4
  %shr543 = ashr i32 %359, 1
  %sub544 = sub nsw i32 %356, %shr543
  store i32 %sub544, i32* %residue_B, align 4
  %360 = load i32, i32* %residue_B, align 4
  %361 = load i32, i32* %j, align 4
  %idxprom545 = sext i32 %361 to i64
  %362 = load i32, i32* %i, align 4
  %idxprom546 = sext i32 %362 to i64
  %arrayidx547 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resR, i32 0, i64 %idxprom546
  %arrayidx548 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx547, i32 0, i64 %idxprom545
  %363 = load i32, i32* %arrayidx548, align 4
  %add549 = add nsw i32 %360, %363
  store i32 %add549, i32* %residue_R, align 4
  %364 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %364, i32 0, i32 156
  %365 = load i32, i32* %max_imgpel_value_uv, align 4
  %366 = load i32, i32* %residue_B, align 4
  %367 = load i32, i32* %block_y, align 4
  %368 = load i32, i32* %j, align 4
  %add550 = add nsw i32 %367, %368
  %idxprom551 = sext i32 %add550 to i64
  %369 = load i32, i32* %block_x, align 4
  %370 = load i32, i32* %i, align 4
  %add552 = add nsw i32 %369, %370
  %idxprom553 = sext i32 %add552 to i64
  %371 = load i32, i32* %c_ipmode, align 4
  %idxprom554 = sext i32 %371 to i64
  %372 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c555 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %372, i32 0, i32 44
  %arrayidx556 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c555, i32 0, i64 0
  %arrayidx557 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx556, i32 0, i64 %idxprom554
  %arrayidx558 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx557, i32 0, i64 %idxprom553
  %arrayidx559 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx558, i32 0, i64 %idxprom551
  %373 = load i16, i16* %arrayidx559, align 2
  %conv560 = zext i16 %373 to i32
  %add561 = add nsw i32 %366, %conv560
  %cmp562 = icmp sgt i32 0, %add561
  br i1 %cmp562, label %cond.true.564, label %cond.false.565

cond.true.564:                                    ; preds = %for.body.523
  br label %cond.end.578

cond.false.565:                                   ; preds = %for.body.523
  %374 = load i32, i32* %residue_B, align 4
  %375 = load i32, i32* %block_y, align 4
  %376 = load i32, i32* %j, align 4
  %add566 = add nsw i32 %375, %376
  %idxprom567 = sext i32 %add566 to i64
  %377 = load i32, i32* %block_x, align 4
  %378 = load i32, i32* %i, align 4
  %add568 = add nsw i32 %377, %378
  %idxprom569 = sext i32 %add568 to i64
  %379 = load i32, i32* %c_ipmode, align 4
  %idxprom570 = sext i32 %379 to i64
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c571 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 44
  %arrayidx572 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c571, i32 0, i64 0
  %arrayidx573 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx572, i32 0, i64 %idxprom570
  %arrayidx574 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx573, i32 0, i64 %idxprom569
  %arrayidx575 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx574, i32 0, i64 %idxprom567
  %381 = load i16, i16* %arrayidx575, align 2
  %conv576 = zext i16 %381 to i32
  %add577 = add nsw i32 %374, %conv576
  br label %cond.end.578

cond.end.578:                                     ; preds = %cond.false.565, %cond.true.564
  %cond579 = phi i32 [ 0, %cond.true.564 ], [ %add577, %cond.false.565 ]
  %cmp580 = icmp slt i32 %365, %cond579
  br i1 %cmp580, label %cond.true.582, label %cond.false.584

cond.true.582:                                    ; preds = %cond.end.578
  %382 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv583 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %382, i32 0, i32 156
  %383 = load i32, i32* %max_imgpel_value_uv583, align 4
  br label %cond.end.615

cond.false.584:                                   ; preds = %cond.end.578
  %384 = load i32, i32* %residue_B, align 4
  %385 = load i32, i32* %block_y, align 4
  %386 = load i32, i32* %j, align 4
  %add585 = add nsw i32 %385, %386
  %idxprom586 = sext i32 %add585 to i64
  %387 = load i32, i32* %block_x, align 4
  %388 = load i32, i32* %i, align 4
  %add587 = add nsw i32 %387, %388
  %idxprom588 = sext i32 %add587 to i64
  %389 = load i32, i32* %c_ipmode, align 4
  %idxprom589 = sext i32 %389 to i64
  %390 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c590 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %390, i32 0, i32 44
  %arrayidx591 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c590, i32 0, i64 0
  %arrayidx592 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx591, i32 0, i64 %idxprom589
  %arrayidx593 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx592, i32 0, i64 %idxprom588
  %arrayidx594 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx593, i32 0, i64 %idxprom586
  %391 = load i16, i16* %arrayidx594, align 2
  %conv595 = zext i16 %391 to i32
  %add596 = add nsw i32 %384, %conv595
  %cmp597 = icmp sgt i32 0, %add596
  br i1 %cmp597, label %cond.true.599, label %cond.false.600

cond.true.599:                                    ; preds = %cond.false.584
  br label %cond.end.613

cond.false.600:                                   ; preds = %cond.false.584
  %392 = load i32, i32* %residue_B, align 4
  %393 = load i32, i32* %block_y, align 4
  %394 = load i32, i32* %j, align 4
  %add601 = add nsw i32 %393, %394
  %idxprom602 = sext i32 %add601 to i64
  %395 = load i32, i32* %block_x, align 4
  %396 = load i32, i32* %i, align 4
  %add603 = add nsw i32 %395, %396
  %idxprom604 = sext i32 %add603 to i64
  %397 = load i32, i32* %c_ipmode, align 4
  %idxprom605 = sext i32 %397 to i64
  %398 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c606 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %398, i32 0, i32 44
  %arrayidx607 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c606, i32 0, i64 0
  %arrayidx608 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx607, i32 0, i64 %idxprom605
  %arrayidx609 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx608, i32 0, i64 %idxprom604
  %arrayidx610 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx609, i32 0, i64 %idxprom602
  %399 = load i16, i16* %arrayidx610, align 2
  %conv611 = zext i16 %399 to i32
  %add612 = add nsw i32 %392, %conv611
  br label %cond.end.613

cond.end.613:                                     ; preds = %cond.false.600, %cond.true.599
  %cond614 = phi i32 [ 0, %cond.true.599 ], [ %add612, %cond.false.600 ]
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.end.613, %cond.true.582
  %cond616 = phi i32 [ %383, %cond.true.582 ], [ %cond614, %cond.end.613 ]
  %conv617 = trunc i32 %cond616 to i16
  %400 = load i32, i32* %pic_pix_x, align 4
  %401 = load i32, i32* %i, align 4
  %add618 = add nsw i32 %400, %401
  %idxprom619 = sext i32 %add618 to i64
  %402 = load i32, i32* %pic_pix_y, align 4
  %403 = load i32, i32* %j, align 4
  %add620 = add nsw i32 %402, %403
  %idxprom621 = sext i32 %add620 to i64
  %404 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %404, i32 0, i32 30
  %405 = load i16***, i16**** %imgUV, align 8
  %arrayidx622 = getelementptr inbounds i16**, i16*** %405, i64 0
  %406 = load i16**, i16*** %arrayidx622, align 8
  %arrayidx623 = getelementptr inbounds i16*, i16** %406, i64 %idxprom621
  %407 = load i16*, i16** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds i16, i16* %407, i64 %idxprom619
  store i16 %conv617, i16* %arrayidx624, align 2
  %408 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %408, i32 0, i32 155
  %409 = load i32, i32* %max_imgpel_value, align 4
  %410 = load i32, i32* %residue_G, align 4
  %411 = load i32, i32* %i, align 4
  %idxprom625 = sext i32 %411 to i64
  %412 = load i32, i32* %j, align 4
  %idxprom626 = sext i32 %412 to i64
  %413 = load i32, i32* %ipmode, align 4
  %idxprom627 = sext i32 %413 to i64
  %414 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3628 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %414, i32 0, i32 43
  %arrayidx629 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3628, i32 0, i64 %idxprom627
  %arrayidx630 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx629, i32 0, i64 %idxprom626
  %arrayidx631 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx630, i32 0, i64 %idxprom625
  %415 = load i16, i16* %arrayidx631, align 2
  %conv632 = zext i16 %415 to i32
  %add633 = add nsw i32 %410, %conv632
  %cmp634 = icmp sgt i32 0, %add633
  br i1 %cmp634, label %cond.true.636, label %cond.false.637

cond.true.636:                                    ; preds = %cond.end.615
  br label %cond.end.647

cond.false.637:                                   ; preds = %cond.end.615
  %416 = load i32, i32* %residue_G, align 4
  %417 = load i32, i32* %i, align 4
  %idxprom638 = sext i32 %417 to i64
  %418 = load i32, i32* %j, align 4
  %idxprom639 = sext i32 %418 to i64
  %419 = load i32, i32* %ipmode, align 4
  %idxprom640 = sext i32 %419 to i64
  %420 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3641 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %420, i32 0, i32 43
  %arrayidx642 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3641, i32 0, i64 %idxprom640
  %arrayidx643 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx642, i32 0, i64 %idxprom639
  %arrayidx644 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx643, i32 0, i64 %idxprom638
  %421 = load i16, i16* %arrayidx644, align 2
  %conv645 = zext i16 %421 to i32
  %add646 = add nsw i32 %416, %conv645
  br label %cond.end.647

cond.end.647:                                     ; preds = %cond.false.637, %cond.true.636
  %cond648 = phi i32 [ 0, %cond.true.636 ], [ %add646, %cond.false.637 ]
  %cmp649 = icmp slt i32 %409, %cond648
  br i1 %cmp649, label %cond.true.651, label %cond.false.653

cond.true.651:                                    ; preds = %cond.end.647
  %422 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value652 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %422, i32 0, i32 155
  %423 = load i32, i32* %max_imgpel_value652, align 4
  br label %cond.end.678

cond.false.653:                                   ; preds = %cond.end.647
  %424 = load i32, i32* %residue_G, align 4
  %425 = load i32, i32* %i, align 4
  %idxprom654 = sext i32 %425 to i64
  %426 = load i32, i32* %j, align 4
  %idxprom655 = sext i32 %426 to i64
  %427 = load i32, i32* %ipmode, align 4
  %idxprom656 = sext i32 %427 to i64
  %428 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3657 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %428, i32 0, i32 43
  %arrayidx658 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3657, i32 0, i64 %idxprom656
  %arrayidx659 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx658, i32 0, i64 %idxprom655
  %arrayidx660 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx659, i32 0, i64 %idxprom654
  %429 = load i16, i16* %arrayidx660, align 2
  %conv661 = zext i16 %429 to i32
  %add662 = add nsw i32 %424, %conv661
  %cmp663 = icmp sgt i32 0, %add662
  br i1 %cmp663, label %cond.true.665, label %cond.false.666

cond.true.665:                                    ; preds = %cond.false.653
  br label %cond.end.676

cond.false.666:                                   ; preds = %cond.false.653
  %430 = load i32, i32* %residue_G, align 4
  %431 = load i32, i32* %i, align 4
  %idxprom667 = sext i32 %431 to i64
  %432 = load i32, i32* %j, align 4
  %idxprom668 = sext i32 %432 to i64
  %433 = load i32, i32* %ipmode, align 4
  %idxprom669 = sext i32 %433 to i64
  %434 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3670 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %434, i32 0, i32 43
  %arrayidx671 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3670, i32 0, i64 %idxprom669
  %arrayidx672 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx671, i32 0, i64 %idxprom668
  %arrayidx673 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx672, i32 0, i64 %idxprom667
  %435 = load i16, i16* %arrayidx673, align 2
  %conv674 = zext i16 %435 to i32
  %add675 = add nsw i32 %430, %conv674
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.false.666, %cond.true.665
  %cond677 = phi i32 [ 0, %cond.true.665 ], [ %add675, %cond.false.666 ]
  br label %cond.end.678

cond.end.678:                                     ; preds = %cond.end.676, %cond.true.651
  %cond679 = phi i32 [ %423, %cond.true.651 ], [ %cond677, %cond.end.676 ]
  %conv680 = trunc i32 %cond679 to i16
  %436 = load i32, i32* %pic_pix_x, align 4
  %437 = load i32, i32* %i, align 4
  %add681 = add nsw i32 %436, %437
  %idxprom682 = sext i32 %add681 to i64
  %438 = load i32, i32* %pic_pix_y, align 4
  %439 = load i32, i32* %j, align 4
  %add683 = add nsw i32 %438, %439
  %idxprom684 = sext i32 %add683 to i64
  %440 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY685 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %440, i32 0, i32 25
  %441 = load i16**, i16*** %imgY685, align 8
  %arrayidx686 = getelementptr inbounds i16*, i16** %441, i64 %idxprom684
  %442 = load i16*, i16** %arrayidx686, align 8
  %arrayidx687 = getelementptr inbounds i16, i16* %442, i64 %idxprom682
  store i16 %conv680, i16* %arrayidx687, align 2
  %443 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv688 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %443, i32 0, i32 156
  %444 = load i32, i32* %max_imgpel_value_uv688, align 4
  %445 = load i32, i32* %residue_R, align 4
  %446 = load i32, i32* %block_y, align 4
  %447 = load i32, i32* %j, align 4
  %add689 = add nsw i32 %446, %447
  %idxprom690 = sext i32 %add689 to i64
  %448 = load i32, i32* %block_x, align 4
  %449 = load i32, i32* %i, align 4
  %add691 = add nsw i32 %448, %449
  %idxprom692 = sext i32 %add691 to i64
  %450 = load i32, i32* %c_ipmode, align 4
  %idxprom693 = sext i32 %450 to i64
  %451 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c694 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %451, i32 0, i32 44
  %arrayidx695 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c694, i32 0, i64 1
  %arrayidx696 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx695, i32 0, i64 %idxprom693
  %arrayidx697 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx696, i32 0, i64 %idxprom692
  %arrayidx698 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx697, i32 0, i64 %idxprom690
  %452 = load i16, i16* %arrayidx698, align 2
  %conv699 = zext i16 %452 to i32
  %add700 = add nsw i32 %445, %conv699
  %cmp701 = icmp sgt i32 0, %add700
  br i1 %cmp701, label %cond.true.703, label %cond.false.704

cond.true.703:                                    ; preds = %cond.end.678
  br label %cond.end.717

cond.false.704:                                   ; preds = %cond.end.678
  %453 = load i32, i32* %residue_R, align 4
  %454 = load i32, i32* %block_y, align 4
  %455 = load i32, i32* %j, align 4
  %add705 = add nsw i32 %454, %455
  %idxprom706 = sext i32 %add705 to i64
  %456 = load i32, i32* %block_x, align 4
  %457 = load i32, i32* %i, align 4
  %add707 = add nsw i32 %456, %457
  %idxprom708 = sext i32 %add707 to i64
  %458 = load i32, i32* %c_ipmode, align 4
  %idxprom709 = sext i32 %458 to i64
  %459 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c710 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %459, i32 0, i32 44
  %arrayidx711 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c710, i32 0, i64 1
  %arrayidx712 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx711, i32 0, i64 %idxprom709
  %arrayidx713 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx712, i32 0, i64 %idxprom708
  %arrayidx714 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx713, i32 0, i64 %idxprom706
  %460 = load i16, i16* %arrayidx714, align 2
  %conv715 = zext i16 %460 to i32
  %add716 = add nsw i32 %453, %conv715
  br label %cond.end.717

cond.end.717:                                     ; preds = %cond.false.704, %cond.true.703
  %cond718 = phi i32 [ 0, %cond.true.703 ], [ %add716, %cond.false.704 ]
  %cmp719 = icmp slt i32 %444, %cond718
  br i1 %cmp719, label %cond.true.721, label %cond.false.723

cond.true.721:                                    ; preds = %cond.end.717
  %461 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv722 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %461, i32 0, i32 156
  %462 = load i32, i32* %max_imgpel_value_uv722, align 4
  br label %cond.end.754

cond.false.723:                                   ; preds = %cond.end.717
  %463 = load i32, i32* %residue_R, align 4
  %464 = load i32, i32* %block_y, align 4
  %465 = load i32, i32* %j, align 4
  %add724 = add nsw i32 %464, %465
  %idxprom725 = sext i32 %add724 to i64
  %466 = load i32, i32* %block_x, align 4
  %467 = load i32, i32* %i, align 4
  %add726 = add nsw i32 %466, %467
  %idxprom727 = sext i32 %add726 to i64
  %468 = load i32, i32* %c_ipmode, align 4
  %idxprom728 = sext i32 %468 to i64
  %469 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c729 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %469, i32 0, i32 44
  %arrayidx730 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c729, i32 0, i64 1
  %arrayidx731 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx730, i32 0, i64 %idxprom728
  %arrayidx732 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx731, i32 0, i64 %idxprom727
  %arrayidx733 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx732, i32 0, i64 %idxprom725
  %470 = load i16, i16* %arrayidx733, align 2
  %conv734 = zext i16 %470 to i32
  %add735 = add nsw i32 %463, %conv734
  %cmp736 = icmp sgt i32 0, %add735
  br i1 %cmp736, label %cond.true.738, label %cond.false.739

cond.true.738:                                    ; preds = %cond.false.723
  br label %cond.end.752

cond.false.739:                                   ; preds = %cond.false.723
  %471 = load i32, i32* %residue_R, align 4
  %472 = load i32, i32* %block_y, align 4
  %473 = load i32, i32* %j, align 4
  %add740 = add nsw i32 %472, %473
  %idxprom741 = sext i32 %add740 to i64
  %474 = load i32, i32* %block_x, align 4
  %475 = load i32, i32* %i, align 4
  %add742 = add nsw i32 %474, %475
  %idxprom743 = sext i32 %add742 to i64
  %476 = load i32, i32* %c_ipmode, align 4
  %idxprom744 = sext i32 %476 to i64
  %477 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c745 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %477, i32 0, i32 44
  %arrayidx746 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c745, i32 0, i64 1
  %arrayidx747 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx746, i32 0, i64 %idxprom744
  %arrayidx748 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx747, i32 0, i64 %idxprom743
  %arrayidx749 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx748, i32 0, i64 %idxprom741
  %478 = load i16, i16* %arrayidx749, align 2
  %conv750 = zext i16 %478 to i32
  %add751 = add nsw i32 %471, %conv750
  br label %cond.end.752

cond.end.752:                                     ; preds = %cond.false.739, %cond.true.738
  %cond753 = phi i32 [ 0, %cond.true.738 ], [ %add751, %cond.false.739 ]
  br label %cond.end.754

cond.end.754:                                     ; preds = %cond.end.752, %cond.true.721
  %cond755 = phi i32 [ %462, %cond.true.721 ], [ %cond753, %cond.end.752 ]
  %conv756 = trunc i32 %cond755 to i16
  %479 = load i32, i32* %pic_pix_x, align 4
  %480 = load i32, i32* %i, align 4
  %add757 = add nsw i32 %479, %480
  %idxprom758 = sext i32 %add757 to i64
  %481 = load i32, i32* %pic_pix_y, align 4
  %482 = load i32, i32* %j, align 4
  %add759 = add nsw i32 %481, %482
  %idxprom760 = sext i32 %add759 to i64
  %483 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV761 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %483, i32 0, i32 30
  %484 = load i16***, i16**** %imgUV761, align 8
  %arrayidx762 = getelementptr inbounds i16**, i16*** %484, i64 1
  %485 = load i16**, i16*** %arrayidx762, align 8
  %arrayidx763 = getelementptr inbounds i16*, i16** %485, i64 %idxprom760
  %486 = load i16*, i16** %arrayidx763, align 8
  %arrayidx764 = getelementptr inbounds i16, i16* %486, i64 %idxprom758
  store i16 %conv756, i16* %arrayidx764, align 2
  br label %for.inc.765

for.inc.765:                                      ; preds = %cond.end.754
  %487 = load i32, i32* %i, align 4
  %inc766 = add nsw i32 %487, 1
  store i32 %inc766, i32* %i, align 4
  br label %for.cond.520

for.end.767:                                      ; preds = %for.cond.520
  br label %for.inc.768

for.inc.768:                                      ; preds = %for.end.767
  %488 = load i32, i32* %j, align 4
  %inc769 = add nsw i32 %488, 1
  store i32 %inc769, i32* %j, align 4
  br label %for.cond.516

for.end.770:                                      ; preds = %for.cond.516
  store i32 0, i32* %distortion, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.771

for.cond.771:                                     ; preds = %for.inc.881, %for.end.770
  %489 = load i32, i32* %y, align 4
  %cmp772 = icmp slt i32 %489, 8
  br i1 %cmp772, label %for.body.774, label %for.end.883

for.body.774:                                     ; preds = %for.cond.771
  %490 = load i32, i32* %pic_pix_x, align 4
  store i32 %490, i32* %x, align 4
  br label %for.cond.775

for.cond.775:                                     ; preds = %for.inc.878, %for.body.774
  %491 = load i32, i32* %x, align 4
  %492 = load i32, i32* %pic_pix_x, align 4
  %add776 = add nsw i32 %492, 8
  %cmp777 = icmp slt i32 %491, %add776
  br i1 %cmp777, label %for.body.779, label %for.end.880

for.body.779:                                     ; preds = %for.cond.775
  %493 = load i32, i32* %x, align 4
  %idxprom780 = sext i32 %493 to i64
  %494 = load i32, i32* %pic_pix_y, align 4
  %495 = load i32, i32* %y, align 4
  %add781 = add nsw i32 %494, %495
  %idxprom782 = sext i32 %add781 to i64
  %496 = load i16**, i16*** @imgY_org, align 8
  %arrayidx783 = getelementptr inbounds i16*, i16** %496, i64 %idxprom782
  %497 = load i16*, i16** %arrayidx783, align 8
  %arrayidx784 = getelementptr inbounds i16, i16* %497, i64 %idxprom780
  %498 = load i16, i16* %arrayidx784, align 2
  %conv785 = zext i16 %498 to i32
  %499 = load i32, i32* %x, align 4
  %idxprom786 = sext i32 %499 to i64
  %500 = load i32, i32* %pic_pix_y, align 4
  %501 = load i32, i32* %y, align 4
  %add787 = add nsw i32 %500, %501
  %idxprom788 = sext i32 %add787 to i64
  %502 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY789 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %502, i32 0, i32 25
  %503 = load i16**, i16*** %imgY789, align 8
  %arrayidx790 = getelementptr inbounds i16*, i16** %503, i64 %idxprom788
  %504 = load i16*, i16** %arrayidx790, align 8
  %arrayidx791 = getelementptr inbounds i16, i16* %504, i64 %idxprom786
  %505 = load i16, i16* %arrayidx791, align 2
  %conv792 = zext i16 %505 to i32
  %sub793 = sub nsw i32 %conv785, %conv792
  %506 = load i32, i32* %x, align 4
  %idxprom794 = sext i32 %506 to i64
  %507 = load i32, i32* %pic_pix_y, align 4
  %508 = load i32, i32* %y, align 4
  %add795 = add nsw i32 %507, %508
  %idxprom796 = sext i32 %add795 to i64
  %509 = load i16**, i16*** @imgY_org, align 8
  %arrayidx797 = getelementptr inbounds i16*, i16** %509, i64 %idxprom796
  %510 = load i16*, i16** %arrayidx797, align 8
  %arrayidx798 = getelementptr inbounds i16, i16* %510, i64 %idxprom794
  %511 = load i16, i16* %arrayidx798, align 2
  %conv799 = zext i16 %511 to i32
  %512 = load i32, i32* %x, align 4
  %idxprom800 = sext i32 %512 to i64
  %513 = load i32, i32* %pic_pix_y, align 4
  %514 = load i32, i32* %y, align 4
  %add801 = add nsw i32 %513, %514
  %idxprom802 = sext i32 %add801 to i64
  %515 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY803 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %515, i32 0, i32 25
  %516 = load i16**, i16*** %imgY803, align 8
  %arrayidx804 = getelementptr inbounds i16*, i16** %516, i64 %idxprom802
  %517 = load i16*, i16** %arrayidx804, align 8
  %arrayidx805 = getelementptr inbounds i16, i16* %517, i64 %idxprom800
  %518 = load i16, i16* %arrayidx805, align 2
  %conv806 = zext i16 %518 to i32
  %sub807 = sub nsw i32 %conv799, %conv806
  %mul808 = mul nsw i32 %sub793, %sub807
  %519 = load i32, i32* %distortion, align 4
  %add809 = add nsw i32 %519, %mul808
  store i32 %add809, i32* %distortion, align 4
  %520 = load i32, i32* %x, align 4
  %idxprom810 = sext i32 %520 to i64
  %521 = load i32, i32* %pic_pix_y, align 4
  %522 = load i32, i32* %y, align 4
  %add811 = add nsw i32 %521, %522
  %idxprom812 = sext i32 %add811 to i64
  %523 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx813 = getelementptr inbounds i16**, i16*** %523, i64 0
  %524 = load i16**, i16*** %arrayidx813, align 8
  %arrayidx814 = getelementptr inbounds i16*, i16** %524, i64 %idxprom812
  %525 = load i16*, i16** %arrayidx814, align 8
  %arrayidx815 = getelementptr inbounds i16, i16* %525, i64 %idxprom810
  %526 = load i16, i16* %arrayidx815, align 2
  %conv816 = zext i16 %526 to i32
  %527 = load i32, i32* %x, align 4
  %idxprom817 = sext i32 %527 to i64
  %528 = load i32, i32* %pic_pix_y, align 4
  %529 = load i32, i32* %y, align 4
  %add818 = add nsw i32 %528, %529
  %idxprom819 = sext i32 %add818 to i64
  %530 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV820 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %530, i32 0, i32 30
  %531 = load i16***, i16**** %imgUV820, align 8
  %arrayidx821 = getelementptr inbounds i16**, i16*** %531, i64 0
  %532 = load i16**, i16*** %arrayidx821, align 8
  %arrayidx822 = getelementptr inbounds i16*, i16** %532, i64 %idxprom819
  %533 = load i16*, i16** %arrayidx822, align 8
  %arrayidx823 = getelementptr inbounds i16, i16* %533, i64 %idxprom817
  %534 = load i16, i16* %arrayidx823, align 2
  %conv824 = zext i16 %534 to i32
  %sub825 = sub nsw i32 %conv816, %conv824
  %535 = load i32, i32* %x, align 4
  %idxprom826 = sext i32 %535 to i64
  %536 = load i32, i32* %pic_pix_y, align 4
  %537 = load i32, i32* %y, align 4
  %add827 = add nsw i32 %536, %537
  %idxprom828 = sext i32 %add827 to i64
  %538 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx829 = getelementptr inbounds i16**, i16*** %538, i64 0
  %539 = load i16**, i16*** %arrayidx829, align 8
  %arrayidx830 = getelementptr inbounds i16*, i16** %539, i64 %idxprom828
  %540 = load i16*, i16** %arrayidx830, align 8
  %arrayidx831 = getelementptr inbounds i16, i16* %540, i64 %idxprom826
  %541 = load i16, i16* %arrayidx831, align 2
  %conv832 = zext i16 %541 to i32
  %542 = load i32, i32* %x, align 4
  %idxprom833 = sext i32 %542 to i64
  %543 = load i32, i32* %pic_pix_y, align 4
  %544 = load i32, i32* %y, align 4
  %add834 = add nsw i32 %543, %544
  %idxprom835 = sext i32 %add834 to i64
  %545 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV836 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %545, i32 0, i32 30
  %546 = load i16***, i16**** %imgUV836, align 8
  %arrayidx837 = getelementptr inbounds i16**, i16*** %546, i64 0
  %547 = load i16**, i16*** %arrayidx837, align 8
  %arrayidx838 = getelementptr inbounds i16*, i16** %547, i64 %idxprom835
  %548 = load i16*, i16** %arrayidx838, align 8
  %arrayidx839 = getelementptr inbounds i16, i16* %548, i64 %idxprom833
  %549 = load i16, i16* %arrayidx839, align 2
  %conv840 = zext i16 %549 to i32
  %sub841 = sub nsw i32 %conv832, %conv840
  %mul842 = mul nsw i32 %sub825, %sub841
  %550 = load i32, i32* %distortion, align 4
  %add843 = add nsw i32 %550, %mul842
  store i32 %add843, i32* %distortion, align 4
  %551 = load i32, i32* %x, align 4
  %idxprom844 = sext i32 %551 to i64
  %552 = load i32, i32* %pic_pix_y, align 4
  %553 = load i32, i32* %y, align 4
  %add845 = add nsw i32 %552, %553
  %idxprom846 = sext i32 %add845 to i64
  %554 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx847 = getelementptr inbounds i16**, i16*** %554, i64 1
  %555 = load i16**, i16*** %arrayidx847, align 8
  %arrayidx848 = getelementptr inbounds i16*, i16** %555, i64 %idxprom846
  %556 = load i16*, i16** %arrayidx848, align 8
  %arrayidx849 = getelementptr inbounds i16, i16* %556, i64 %idxprom844
  %557 = load i16, i16* %arrayidx849, align 2
  %conv850 = zext i16 %557 to i32
  %558 = load i32, i32* %x, align 4
  %idxprom851 = sext i32 %558 to i64
  %559 = load i32, i32* %pic_pix_y, align 4
  %560 = load i32, i32* %y, align 4
  %add852 = add nsw i32 %559, %560
  %idxprom853 = sext i32 %add852 to i64
  %561 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV854 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %561, i32 0, i32 30
  %562 = load i16***, i16**** %imgUV854, align 8
  %arrayidx855 = getelementptr inbounds i16**, i16*** %562, i64 1
  %563 = load i16**, i16*** %arrayidx855, align 8
  %arrayidx856 = getelementptr inbounds i16*, i16** %563, i64 %idxprom853
  %564 = load i16*, i16** %arrayidx856, align 8
  %arrayidx857 = getelementptr inbounds i16, i16* %564, i64 %idxprom851
  %565 = load i16, i16* %arrayidx857, align 2
  %conv858 = zext i16 %565 to i32
  %sub859 = sub nsw i32 %conv850, %conv858
  %566 = load i32, i32* %x, align 4
  %idxprom860 = sext i32 %566 to i64
  %567 = load i32, i32* %pic_pix_y, align 4
  %568 = load i32, i32* %y, align 4
  %add861 = add nsw i32 %567, %568
  %idxprom862 = sext i32 %add861 to i64
  %569 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx863 = getelementptr inbounds i16**, i16*** %569, i64 1
  %570 = load i16**, i16*** %arrayidx863, align 8
  %arrayidx864 = getelementptr inbounds i16*, i16** %570, i64 %idxprom862
  %571 = load i16*, i16** %arrayidx864, align 8
  %arrayidx865 = getelementptr inbounds i16, i16* %571, i64 %idxprom860
  %572 = load i16, i16* %arrayidx865, align 2
  %conv866 = zext i16 %572 to i32
  %573 = load i32, i32* %x, align 4
  %idxprom867 = sext i32 %573 to i64
  %574 = load i32, i32* %pic_pix_y, align 4
  %575 = load i32, i32* %y, align 4
  %add868 = add nsw i32 %574, %575
  %idxprom869 = sext i32 %add868 to i64
  %576 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV870 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %576, i32 0, i32 30
  %577 = load i16***, i16**** %imgUV870, align 8
  %arrayidx871 = getelementptr inbounds i16**, i16*** %577, i64 1
  %578 = load i16**, i16*** %arrayidx871, align 8
  %arrayidx872 = getelementptr inbounds i16*, i16** %578, i64 %idxprom869
  %579 = load i16*, i16** %arrayidx872, align 8
  %arrayidx873 = getelementptr inbounds i16, i16* %579, i64 %idxprom867
  %580 = load i16, i16* %arrayidx873, align 2
  %conv874 = zext i16 %580 to i32
  %sub875 = sub nsw i32 %conv866, %conv874
  %mul876 = mul nsw i32 %sub859, %sub875
  %581 = load i32, i32* %distortion, align 4
  %add877 = add nsw i32 %581, %mul876
  store i32 %add877, i32* %distortion, align 4
  br label %for.inc.878

for.inc.878:                                      ; preds = %for.body.779
  %582 = load i32, i32* %x, align 4
  %inc879 = add nsw i32 %582, 1
  store i32 %inc879, i32* %x, align 4
  br label %for.cond.775

for.end.880:                                      ; preds = %for.cond.775
  br label %for.inc.881

for.inc.881:                                      ; preds = %for.end.880
  %583 = load i32, i32* %y, align 4
  %inc882 = add nsw i32 %583, 1
  store i32 %inc882, i32* %y, align 4
  br label %for.cond.771

for.end.883:                                      ; preds = %for.cond.771
  %584 = load i32, i32* %distortion, align 4
  %conv884 = sitofp i32 %584 to double
  %585 = load double, double* %lambda.addr, align 8
  %586 = load i32, i32* %rate, align 4
  %conv885 = sitofp i32 %586 to double
  %mul886 = fmul double %585, %conv885
  %add887 = fadd double %conv884, %mul886
  store double %add887, double* %rdcost, align 8
  %587 = load double, double* %rdcost, align 8
  %588 = load double, double* %min_rdcost, align 8
  %cmp888 = fcmp olt double %587, %588
  br i1 %cmp888, label %if.then.890, label %if.end.1122

if.then.890:                                      ; preds = %for.end.883
  store i32 0, i32* %j, align 4
  br label %for.cond.891

for.cond.891:                                     ; preds = %for.inc.926, %if.then.890
  %589 = load i32, i32* %j, align 4
  %cmp892 = icmp slt i32 %589, 2
  br i1 %cmp892, label %for.body.894, label %for.end.928

for.body.894:                                     ; preds = %for.cond.891
  store i32 0, i32* %i, align 4
  br label %for.cond.895

for.cond.895:                                     ; preds = %for.inc.923, %for.body.894
  %590 = load i32, i32* %i, align 4
  %cmp896 = icmp slt i32 %590, 65
  br i1 %cmp896, label %for.body.898, label %for.end.925

for.body.898:                                     ; preds = %for.cond.895
  store i32 0, i32* %k, align 4
  br label %for.cond.899

for.cond.899:                                     ; preds = %for.inc.920, %for.body.898
  %591 = load i32, i32* %k, align 4
  %cmp900 = icmp slt i32 %591, 4
  br i1 %cmp900, label %for.body.902, label %for.end.922

for.body.902:                                     ; preds = %for.cond.899
  %592 = load i32, i32* %i, align 4
  %idxprom903 = sext i32 %592 to i64
  %593 = load i32, i32* %j, align 4
  %idxprom904 = sext i32 %593 to i64
  %594 = load i32, i32* %k, align 4
  %idxprom905 = sext i32 %594 to i64
  %595 = load i32, i32* %b8.addr, align 4
  %idxprom906 = sext i32 %595 to i64
  %596 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC907 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %596, i32 0, i32 47
  %597 = load i32****, i32***** %cofAC907, align 8
  %arrayidx908 = getelementptr inbounds i32***, i32**** %597, i64 %idxprom906
  %598 = load i32***, i32**** %arrayidx908, align 8
  %arrayidx909 = getelementptr inbounds i32**, i32*** %598, i64 %idxprom905
  %599 = load i32**, i32*** %arrayidx909, align 8
  %arrayidx910 = getelementptr inbounds i32*, i32** %599, i64 %idxprom904
  %600 = load i32*, i32** %arrayidx910, align 8
  %arrayidx911 = getelementptr inbounds i32, i32* %600, i64 %idxprom903
  %601 = load i32, i32* %arrayidx911, align 4
  %602 = load i32, i32* %i, align 4
  %idxprom912 = sext i32 %602 to i64
  %603 = load i32, i32* %j, align 4
  %idxprom913 = sext i32 %603 to i64
  %604 = load i32, i32* %k, align 4
  %idxprom914 = sext i32 %604 to i64
  %605 = load i32, i32* %b8.addr, align 4
  %idxprom915 = sext i32 %605 to i64
  %606 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx916 = getelementptr inbounds i32***, i32**** %606, i64 %idxprom915
  %607 = load i32***, i32**** %arrayidx916, align 8
  %arrayidx917 = getelementptr inbounds i32**, i32*** %607, i64 %idxprom914
  %608 = load i32**, i32*** %arrayidx917, align 8
  %arrayidx918 = getelementptr inbounds i32*, i32** %608, i64 %idxprom913
  %609 = load i32*, i32** %arrayidx918, align 8
  %arrayidx919 = getelementptr inbounds i32, i32* %609, i64 %idxprom912
  store i32 %601, i32* %arrayidx919, align 4
  br label %for.inc.920

for.inc.920:                                      ; preds = %for.body.902
  %610 = load i32, i32* %k, align 4
  %inc921 = add nsw i32 %610, 1
  store i32 %inc921, i32* %k, align 4
  br label %for.cond.899

for.end.922:                                      ; preds = %for.cond.899
  br label %for.inc.923

for.inc.923:                                      ; preds = %for.end.922
  %611 = load i32, i32* %i, align 4
  %inc924 = add nsw i32 %611, 1
  store i32 %inc924, i32* %i, align 4
  br label %for.cond.895

for.end.925:                                      ; preds = %for.cond.895
  br label %for.inc.926

for.inc.926:                                      ; preds = %for.end.925
  %612 = load i32, i32* %j, align 4
  %inc927 = add nsw i32 %612, 1
  store i32 %inc927, i32* %j, align 4
  br label %for.cond.891

for.end.928:                                      ; preds = %for.cond.891
  store i32 0, i32* %b4, align 4
  br label %for.cond.929

for.cond.929:                                     ; preds = %for.inc.1094, %for.end.928
  %613 = load i32, i32* %b4, align 4
  %cmp930 = icmp slt i32 %613, 4
  br i1 %cmp930, label %for.body.932, label %for.end.1096

for.body.932:                                     ; preds = %for.cond.929
  %614 = load i32, i32* %b4, align 4
  %rem933 = srem i32 %614, 2
  %mul934 = mul nsw i32 4, %rem933
  store i32 %mul934, i32* %block4x4_x, align 4
  %615 = load i32, i32* %b4, align 4
  %div935 = sdiv i32 %615, 2
  %mul936 = mul nsw i32 4, %div935
  store i32 %mul936, i32* %block4x4_y, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.937

for.cond.937:                                     ; preds = %for.inc.964, %for.body.932
  %616 = load i32, i32* %j, align 4
  %cmp938 = icmp slt i32 %616, 2
  br i1 %cmp938, label %for.body.940, label %for.end.966

for.body.940:                                     ; preds = %for.cond.937
  store i32 0, i32* %i, align 4
  br label %for.cond.941

for.cond.941:                                     ; preds = %for.inc.961, %for.body.940
  %617 = load i32, i32* %i, align 4
  %cmp942 = icmp slt i32 %617, 18
  br i1 %cmp942, label %for.body.944, label %for.end.963

for.body.944:                                     ; preds = %for.cond.941
  %618 = load i32, i32* %i, align 4
  %idxprom945 = sext i32 %618 to i64
  %619 = load i32, i32* %j, align 4
  %idxprom946 = sext i32 %619 to i64
  %620 = load i32, i32* %b4, align 4
  %idxprom947 = sext i32 %620 to i64
  %621 = load i32, i32* %b8.addr, align 4
  %add948 = add nsw i32 %621, 4
  %idxprom949 = sext i32 %add948 to i64
  %622 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC950 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %622, i32 0, i32 47
  %623 = load i32****, i32***** %cofAC950, align 8
  %arrayidx951 = getelementptr inbounds i32***, i32**** %623, i64 %idxprom949
  %624 = load i32***, i32**** %arrayidx951, align 8
  %arrayidx952 = getelementptr inbounds i32**, i32*** %624, i64 %idxprom947
  %625 = load i32**, i32*** %arrayidx952, align 8
  %arrayidx953 = getelementptr inbounds i32*, i32** %625, i64 %idxprom946
  %626 = load i32*, i32** %arrayidx953, align 8
  %arrayidx954 = getelementptr inbounds i32, i32* %626, i64 %idxprom945
  %627 = load i32, i32* %arrayidx954, align 4
  %628 = load i32, i32* %i, align 4
  %idxprom955 = sext i32 %628 to i64
  %629 = load i32, i32* %j, align 4
  %idxprom956 = sext i32 %629 to i64
  %630 = load i32, i32* %b4, align 4
  %idxprom957 = sext i32 %630 to i64
  %arrayidx958 = getelementptr inbounds [4 x [2 x [18 x i32]]], [4 x [2 x [18 x i32]]]* getelementptr inbounds ([2 x [4 x [2 x [18 x i32]]]], [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i32 0, i64 0), i32 0, i64 %idxprom957
  %arrayidx959 = getelementptr inbounds [2 x [18 x i32]], [2 x [18 x i32]]* %arrayidx958, i32 0, i64 %idxprom956
  %arrayidx960 = getelementptr inbounds [18 x i32], [18 x i32]* %arrayidx959, i32 0, i64 %idxprom955
  store i32 %627, i32* %arrayidx960, align 4
  br label %for.inc.961

for.inc.961:                                      ; preds = %for.body.944
  %631 = load i32, i32* %i, align 4
  %inc962 = add nsw i32 %631, 1
  store i32 %inc962, i32* %i, align 4
  br label %for.cond.941

for.end.963:                                      ; preds = %for.cond.941
  br label %for.inc.964

for.inc.964:                                      ; preds = %for.end.963
  %632 = load i32, i32* %j, align 4
  %inc965 = add nsw i32 %632, 1
  store i32 %inc965, i32* %j, align 4
  br label %for.cond.937

for.end.966:                                      ; preds = %for.cond.937
  store i32 0, i32* %j, align 4
  br label %for.cond.967

for.cond.967:                                     ; preds = %for.inc.994, %for.end.966
  %633 = load i32, i32* %j, align 4
  %cmp968 = icmp slt i32 %633, 2
  br i1 %cmp968, label %for.body.970, label %for.end.996

for.body.970:                                     ; preds = %for.cond.967
  store i32 0, i32* %i, align 4
  br label %for.cond.971

for.cond.971:                                     ; preds = %for.inc.991, %for.body.970
  %634 = load i32, i32* %i, align 4
  %cmp972 = icmp slt i32 %634, 18
  br i1 %cmp972, label %for.body.974, label %for.end.993

for.body.974:                                     ; preds = %for.cond.971
  %635 = load i32, i32* %i, align 4
  %idxprom975 = sext i32 %635 to i64
  %636 = load i32, i32* %j, align 4
  %idxprom976 = sext i32 %636 to i64
  %637 = load i32, i32* %b4, align 4
  %idxprom977 = sext i32 %637 to i64
  %638 = load i32, i32* %b8.addr, align 4
  %add978 = add nsw i32 %638, 8
  %idxprom979 = sext i32 %add978 to i64
  %639 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC980 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %639, i32 0, i32 47
  %640 = load i32****, i32***** %cofAC980, align 8
  %arrayidx981 = getelementptr inbounds i32***, i32**** %640, i64 %idxprom979
  %641 = load i32***, i32**** %arrayidx981, align 8
  %arrayidx982 = getelementptr inbounds i32**, i32*** %641, i64 %idxprom977
  %642 = load i32**, i32*** %arrayidx982, align 8
  %arrayidx983 = getelementptr inbounds i32*, i32** %642, i64 %idxprom976
  %643 = load i32*, i32** %arrayidx983, align 8
  %arrayidx984 = getelementptr inbounds i32, i32* %643, i64 %idxprom975
  %644 = load i32, i32* %arrayidx984, align 4
  %645 = load i32, i32* %i, align 4
  %idxprom985 = sext i32 %645 to i64
  %646 = load i32, i32* %j, align 4
  %idxprom986 = sext i32 %646 to i64
  %647 = load i32, i32* %b4, align 4
  %idxprom987 = sext i32 %647 to i64
  %arrayidx988 = getelementptr inbounds [4 x [2 x [18 x i32]]], [4 x [2 x [18 x i32]]]* getelementptr inbounds ([2 x [4 x [2 x [18 x i32]]]], [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i32 0, i64 1), i32 0, i64 %idxprom987
  %arrayidx989 = getelementptr inbounds [2 x [18 x i32]], [2 x [18 x i32]]* %arrayidx988, i32 0, i64 %idxprom986
  %arrayidx990 = getelementptr inbounds [18 x i32], [18 x i32]* %arrayidx989, i32 0, i64 %idxprom985
  store i32 %644, i32* %arrayidx990, align 4
  br label %for.inc.991

for.inc.991:                                      ; preds = %for.body.974
  %648 = load i32, i32* %i, align 4
  %inc992 = add nsw i32 %648, 1
  store i32 %inc992, i32* %i, align 4
  br label %for.cond.971

for.end.993:                                      ; preds = %for.cond.971
  br label %for.inc.994

for.inc.994:                                      ; preds = %for.end.993
  %649 = load i32, i32* %j, align 4
  %inc995 = add nsw i32 %649, 1
  store i32 %inc995, i32* %j, align 4
  br label %for.cond.967

for.end.996:                                      ; preds = %for.cond.967
  store i32 0, i32* %i, align 4
  br label %for.cond.997

for.cond.997:                                     ; preds = %for.inc.1091, %for.end.996
  %650 = load i32, i32* %i, align 4
  %cmp998 = icmp slt i32 %650, 2
  br i1 %cmp998, label %for.body.1000, label %for.end.1093

for.body.1000:                                    ; preds = %for.cond.997
  %651 = load i32, i32* %b8.addr, align 4
  %div1001 = sdiv i32 %651, 2
  %mul1002 = mul nsw i32 2, %div1001
  %652 = load i32, i32* %b4, align 4
  %div1003 = sdiv i32 %652, 2
  %add1004 = add nsw i32 %mul1002, %div1003
  %idxprom1005 = sext i32 %add1004 to i64
  %653 = load i32, i32* %b8.addr, align 4
  %rem1006 = srem i32 %653, 2
  %mul1007 = mul nsw i32 2, %rem1006
  %654 = load i32, i32* %b4, align 4
  %rem1008 = srem i32 %654, 2
  %add1009 = add nsw i32 %mul1007, %rem1008
  %idxprom1010 = sext i32 %add1009 to i64
  %655 = load i32, i32* %i, align 4
  %idxprom1011 = sext i32 %655 to i64
  %arrayidx1012 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @dc_level_temp, i32 0, i64 %idxprom1011
  %arrayidx1013 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx1012, i32 0, i64 %idxprom1010
  %arrayidx1014 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1013, i32 0, i64 %idxprom1005
  %656 = load i32, i32* %arrayidx1014, align 4
  %657 = load i32, i32* %b8.addr, align 4
  %div1015 = sdiv i32 %657, 2
  %mul1016 = mul nsw i32 2, %div1015
  %658 = load i32, i32* %b4, align 4
  %div1017 = sdiv i32 %658, 2
  %add1018 = add nsw i32 %mul1016, %div1017
  %idxprom1019 = sext i32 %add1018 to i64
  %659 = load i32, i32* %b8.addr, align 4
  %rem1020 = srem i32 %659, 2
  %mul1021 = mul nsw i32 2, %rem1020
  %660 = load i32, i32* %b4, align 4
  %rem1022 = srem i32 %660, 2
  %add1023 = add nsw i32 %mul1021, %rem1022
  %idxprom1024 = sext i32 %add1023 to i64
  %661 = load i32, i32* %i, align 4
  %idxprom1025 = sext i32 %661 to i64
  %arrayidx1026 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @dc_level, i32 0, i64 %idxprom1025
  %arrayidx1027 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx1026, i32 0, i64 %idxprom1024
  %arrayidx1028 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1027, i32 0, i64 %idxprom1019
  store i32 %656, i32* %arrayidx1028, align 4
  %662 = load i32, i32* %b8.addr, align 4
  %div1029 = sdiv i32 %662, 2
  %mul1030 = mul nsw i32 2, %div1029
  %663 = load i32, i32* %b4, align 4
  %div1031 = sdiv i32 %663, 2
  %add1032 = add nsw i32 %mul1030, %div1031
  %idxprom1033 = sext i32 %add1032 to i64
  %664 = load i32, i32* %b8.addr, align 4
  %rem1034 = srem i32 %664, 2
  %mul1035 = mul nsw i32 2, %rem1034
  %665 = load i32, i32* %b4, align 4
  %rem1036 = srem i32 %665, 2
  %add1037 = add nsw i32 %mul1035, %rem1036
  %idxprom1038 = sext i32 %add1037 to i64
  %666 = load i32, i32* %i, align 4
  %idxprom1039 = sext i32 %666 to i64
  %arrayidx1040 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, i32 0, i64 %idxprom1039
  %arrayidx1041 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx1040, i32 0, i64 %idxprom1038
  %arrayidx1042 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1041, i32 0, i64 %idxprom1033
  %667 = load i32, i32* %arrayidx1042, align 4
  %668 = load i32, i32* %b8.addr, align 4
  %div1043 = sdiv i32 %668, 2
  %mul1044 = mul nsw i32 2, %div1043
  %669 = load i32, i32* %b4, align 4
  %div1045 = sdiv i32 %669, 2
  %add1046 = add nsw i32 %mul1044, %div1045
  %idxprom1047 = sext i32 %add1046 to i64
  %670 = load i32, i32* %b8.addr, align 4
  %rem1048 = srem i32 %670, 2
  %mul1049 = mul nsw i32 2, %rem1048
  %671 = load i32, i32* %b4, align 4
  %rem1050 = srem i32 %671, 2
  %add1051 = add nsw i32 %mul1049, %rem1050
  %idxprom1052 = sext i32 %add1051 to i64
  %672 = load i32, i32* %i, align 4
  %idxprom1053 = sext i32 %672 to i64
  %arrayidx1054 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i32 0, i64 %idxprom1053
  %arrayidx1055 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx1054, i32 0, i64 %idxprom1052
  %arrayidx1056 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1055, i32 0, i64 %idxprom1047
  store i32 %667, i32* %arrayidx1056, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.1057

for.cond.1057:                                    ; preds = %for.inc.1088, %for.body.1000
  %673 = load i32, i32* %y, align 4
  %cmp1058 = icmp slt i32 %673, 4
  br i1 %cmp1058, label %for.body.1060, label %for.end.1090

for.body.1060:                                    ; preds = %for.cond.1057
  store i32 0, i32* %x, align 4
  br label %for.cond.1061

for.cond.1061:                                    ; preds = %for.inc.1085, %for.body.1060
  %674 = load i32, i32* %x, align 4
  %cmp1062 = icmp slt i32 %674, 4
  br i1 %cmp1062, label %for.body.1064, label %for.end.1087

for.body.1064:                                    ; preds = %for.cond.1061
  %675 = load i32, i32* %pic_pix_x, align 4
  %676 = load i32, i32* %x, align 4
  %add1065 = add nsw i32 %675, %676
  %677 = load i32, i32* %block4x4_x, align 4
  %add1066 = add nsw i32 %add1065, %677
  %idxprom1067 = sext i32 %add1066 to i64
  %678 = load i32, i32* %pic_pix_y, align 4
  %679 = load i32, i32* %y, align 4
  %add1068 = add nsw i32 %678, %679
  %680 = load i32, i32* %block4x4_y, align 4
  %add1069 = add nsw i32 %add1068, %680
  %idxprom1070 = sext i32 %add1069 to i64
  %681 = load i32, i32* %i, align 4
  %idxprom1071 = sext i32 %681 to i64
  %682 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV1072 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %682, i32 0, i32 30
  %683 = load i16***, i16**** %imgUV1072, align 8
  %arrayidx1073 = getelementptr inbounds i16**, i16*** %683, i64 %idxprom1071
  %684 = load i16**, i16*** %arrayidx1073, align 8
  %arrayidx1074 = getelementptr inbounds i16*, i16** %684, i64 %idxprom1070
  %685 = load i16*, i16** %arrayidx1074, align 8
  %arrayidx1075 = getelementptr inbounds i16, i16* %685, i64 %idxprom1067
  %686 = load i16, i16* %arrayidx1075, align 2
  %conv1076 = zext i16 %686 to i32
  %687 = load i32, i32* %x, align 4
  %idxprom1077 = sext i32 %687 to i64
  %688 = load i32, i32* %y, align 4
  %idxprom1078 = sext i32 %688 to i64
  %689 = load i32, i32* %b4, align 4
  %idxprom1079 = sext i32 %689 to i64
  %690 = load i32, i32* %i, align 4
  %idxprom1080 = sext i32 %690 to i64
  %arrayidx1081 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c, i32 0, i64 %idxprom1080
  %arrayidx1082 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx1081, i32 0, i64 %idxprom1079
  %arrayidx1083 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx1082, i32 0, i64 %idxprom1078
  %arrayidx1084 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1083, i32 0, i64 %idxprom1077
  store i32 %conv1076, i32* %arrayidx1084, align 4
  br label %for.inc.1085

for.inc.1085:                                     ; preds = %for.body.1064
  %691 = load i32, i32* %x, align 4
  %inc1086 = add nsw i32 %691, 1
  store i32 %inc1086, i32* %x, align 4
  br label %for.cond.1061

for.end.1087:                                     ; preds = %for.cond.1061
  br label %for.inc.1088

for.inc.1088:                                     ; preds = %for.end.1087
  %692 = load i32, i32* %y, align 4
  %inc1089 = add nsw i32 %692, 1
  store i32 %inc1089, i32* %y, align 4
  br label %for.cond.1057

for.end.1090:                                     ; preds = %for.cond.1057
  br label %for.inc.1091

for.inc.1091:                                     ; preds = %for.end.1090
  %693 = load i32, i32* %i, align 4
  %inc1092 = add nsw i32 %693, 1
  store i32 %inc1092, i32* %i, align 4
  br label %for.cond.997

for.end.1093:                                     ; preds = %for.cond.997
  br label %for.inc.1094

for.inc.1094:                                     ; preds = %for.end.1093
  %694 = load i32, i32* %b4, align 4
  %inc1095 = add nsw i32 %694, 1
  store i32 %inc1095, i32* %b4, align 4
  br label %for.cond.929

for.end.1096:                                     ; preds = %for.cond.929
  store i32 0, i32* %y, align 4
  br label %for.cond.1097

for.cond.1097:                                    ; preds = %for.inc.1119, %for.end.1096
  %695 = load i32, i32* %y, align 4
  %cmp1098 = icmp slt i32 %695, 8
  br i1 %cmp1098, label %for.body.1100, label %for.end.1121

for.body.1100:                                    ; preds = %for.cond.1097
  store i32 0, i32* %x, align 4
  br label %for.cond.1101

for.cond.1101:                                    ; preds = %for.inc.1116, %for.body.1100
  %696 = load i32, i32* %x, align 4
  %cmp1102 = icmp slt i32 %696, 8
  br i1 %cmp1102, label %for.body.1104, label %for.end.1118

for.body.1104:                                    ; preds = %for.cond.1101
  %697 = load i32, i32* %pic_pix_x, align 4
  %698 = load i32, i32* %x, align 4
  %add1105 = add nsw i32 %697, %698
  %idxprom1106 = sext i32 %add1105 to i64
  %699 = load i32, i32* %pic_pix_y, align 4
  %700 = load i32, i32* %y, align 4
  %add1107 = add nsw i32 %699, %700
  %idxprom1108 = sext i32 %add1107 to i64
  %701 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY1109 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %701, i32 0, i32 25
  %702 = load i16**, i16*** %imgY1109, align 8
  %arrayidx1110 = getelementptr inbounds i16*, i16** %702, i64 %idxprom1108
  %703 = load i16*, i16** %arrayidx1110, align 8
  %arrayidx1111 = getelementptr inbounds i16, i16* %703, i64 %idxprom1106
  %704 = load i16, i16* %arrayidx1111, align 2
  %705 = load i32, i32* %x, align 4
  %idxprom1112 = sext i32 %705 to i64
  %706 = load i32, i32* %y, align 4
  %idxprom1113 = sext i32 %706 to i64
  %arrayidx1114 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %rec8x8, i32 0, i64 %idxprom1113
  %arrayidx1115 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1114, i32 0, i64 %idxprom1112
  store i16 %704, i16* %arrayidx1115, align 2
  br label %for.inc.1116

for.inc.1116:                                     ; preds = %for.body.1104
  %707 = load i32, i32* %x, align 4
  %inc1117 = add nsw i32 %707, 1
  store i32 %inc1117, i32* %x, align 4
  br label %for.cond.1101

for.end.1118:                                     ; preds = %for.cond.1101
  br label %for.inc.1119

for.inc.1119:                                     ; preds = %for.end.1118
  %708 = load i32, i32* %y, align 4
  %inc1120 = add nsw i32 %708, 1
  store i32 %inc1120, i32* %y, align 4
  br label %for.cond.1097

for.end.1121:                                     ; preds = %for.cond.1097
  %709 = load i32, i32* %c_nz, align 4
  store i32 %709, i32* %nonzero, align 4
  %710 = load double, double* %rdcost, align 8
  store double %710, double* %min_rdcost, align 8
  %711 = load i32, i32* %ipmode, align 4
  store i32 %711, i32* %best_ipmode, align 4
  br label %if.end.1122

if.end.1122:                                      ; preds = %for.end.1121, %for.end.883
  br label %if.end.1123

if.end.1123:                                      ; preds = %if.end.1122, %if.end.269
  br label %if.end.1124

if.end.1124:                                      ; preds = %if.end.1123, %if.end.153
  br label %if.end.1125

if.end.1125:                                      ; preds = %if.end.1124, %lor.lhs.false.110
  br label %for.inc.1126

for.inc.1126:                                     ; preds = %if.end.1125
  %712 = load i32, i32* %ipmode, align 4
  %inc1127 = add nsw i32 %712, 1
  store i32 %inc1127, i32* %ipmode, align 4
  br label %for.cond

for.end.1128:                                     ; preds = %for.cond
  %713 = load i32, i32* %best_ipmode, align 4
  %714 = load i32, i32* %pic_block_y, align 4
  %idxprom1129 = sext i32 %714 to i64
  %715 = load i32, i32* %pic_block_x, align 4
  %idxprom1130 = sext i32 %715 to i64
  %716 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x81131 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %716, i32 0, i32 26
  %717 = load i32**, i32*** %ipredmode8x81131, align 8
  %arrayidx1132 = getelementptr inbounds i32*, i32** %717, i64 %idxprom1130
  %718 = load i32*, i32** %arrayidx1132, align 8
  %arrayidx1133 = getelementptr inbounds i32, i32* %718, i64 %idxprom1129
  store i32 %713, i32* %arrayidx1133, align 4
  %719 = load i32, i32* %mostProbableMode, align 4
  %720 = load i32, i32* %best_ipmode, align 4
  %cmp1134 = icmp eq i32 %719, %720
  br i1 %cmp1134, label %cond.true.1136, label %cond.false.1137

cond.true.1136:                                   ; preds = %for.end.1128
  br label %cond.end.1145

cond.false.1137:                                  ; preds = %for.end.1128
  %721 = load i32, i32* %best_ipmode, align 4
  %722 = load i32, i32* %mostProbableMode, align 4
  %cmp1138 = icmp slt i32 %721, %722
  br i1 %cmp1138, label %cond.true.1140, label %cond.false.1141

cond.true.1140:                                   ; preds = %cond.false.1137
  %723 = load i32, i32* %best_ipmode, align 4
  br label %cond.end.1143

cond.false.1141:                                  ; preds = %cond.false.1137
  %724 = load i32, i32* %best_ipmode, align 4
  %sub1142 = sub nsw i32 %724, 1
  br label %cond.end.1143

cond.end.1143:                                    ; preds = %cond.false.1141, %cond.true.1140
  %cond1144 = phi i32 [ %723, %cond.true.1140 ], [ %sub1142, %cond.false.1141 ]
  br label %cond.end.1145

cond.end.1145:                                    ; preds = %cond.end.1143, %cond.true.1136
  %cond1146 = phi i32 [ -1, %cond.true.1136 ], [ %cond1144, %cond.end.1143 ]
  %725 = load i32, i32* %b8.addr, align 4
  %mul1147 = mul nsw i32 4, %725
  %idxprom1148 = sext i32 %mul1147 to i64
  %726 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr1149 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %726, i32 0, i32 3
  %727 = load i32, i32* %current_mb_nr1149, align 4
  %idxprom1150 = sext i32 %727 to i64
  %728 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data1151 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %728, i32 0, i32 51
  %729 = load %struct.macroblock*, %struct.macroblock** %mb_data1151, align 8
  %arrayidx1152 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %729, i64 %idxprom1150
  %intra_pred_modes8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %arrayidx1152, i32 0, i32 11
  %arrayidx1153 = getelementptr inbounds [16 x i32], [16 x i32]* %intra_pred_modes8x8, i32 0, i64 %idxprom1148
  store i32 %cond1146, i32* %arrayidx1153, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1154

for.cond.1154:                                    ; preds = %for.inc.1180, %cond.end.1145
  %730 = load i32, i32* %j, align 4
  %cmp1155 = icmp slt i32 %730, 2
  br i1 %cmp1155, label %for.body.1157, label %for.end.1182

for.body.1157:                                    ; preds = %for.cond.1154
  store i32 0, i32* %i, align 4
  br label %for.cond.1158

for.cond.1158:                                    ; preds = %for.inc.1177, %for.body.1157
  %731 = load i32, i32* %i, align 4
  %cmp1159 = icmp slt i32 %731, 2
  br i1 %cmp1159, label %for.body.1161, label %for.end.1179

for.body.1161:                                    ; preds = %for.cond.1158
  %732 = load i32, i32* %best_ipmode, align 4
  %733 = load i32, i32* %j, align 4
  %734 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %734, i32 0, i32 30
  %735 = load i32, i32* %mb_y, align 4
  %mul1162 = mul nsw i32 %735, 4
  %add1163 = add nsw i32 %733, %mul1162
  %736 = load i32, i32* %b8.addr, align 4
  %div1164 = sdiv i32 %736, 2
  %mul1165 = mul nsw i32 %div1164, 2
  %add1166 = add nsw i32 %add1163, %mul1165
  %idxprom1167 = sext i32 %add1166 to i64
  %737 = load i32, i32* %i, align 4
  %738 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %738, i32 0, i32 29
  %739 = load i32, i32* %mb_x, align 4
  %mul1168 = mul nsw i32 %739, 4
  %add1169 = add nsw i32 %737, %mul1168
  %740 = load i32, i32* %b8.addr, align 4
  %rem1170 = srem i32 %740, 2
  %mul1171 = mul nsw i32 %rem1170, 2
  %add1172 = add nsw i32 %add1169, %mul1171
  %idxprom1173 = sext i32 %add1172 to i64
  %741 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x81174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %741, i32 0, i32 26
  %742 = load i32**, i32*** %ipredmode8x81174, align 8
  %arrayidx1175 = getelementptr inbounds i32*, i32** %742, i64 %idxprom1173
  %743 = load i32*, i32** %arrayidx1175, align 8
  %arrayidx1176 = getelementptr inbounds i32, i32* %743, i64 %idxprom1167
  store i32 %732, i32* %arrayidx1176, align 4
  br label %for.inc.1177

for.inc.1177:                                     ; preds = %for.body.1161
  %744 = load i32, i32* %i, align 4
  %inc1178 = add nsw i32 %744, 1
  store i32 %inc1178, i32* %i, align 4
  br label %for.cond.1158

for.end.1179:                                     ; preds = %for.cond.1158
  br label %for.inc.1180

for.inc.1180:                                     ; preds = %for.end.1179
  %745 = load i32, i32* %j, align 4
  %inc1181 = add nsw i32 %745, 1
  store i32 %inc1181, i32* %j, align 4
  br label %for.cond.1154

for.end.1182:                                     ; preds = %for.cond.1154
  %746 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt1183 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %746, i32 0, i32 85
  %747 = load i32, i32* %rdopt1183, align 4
  %tobool1184 = icmp ne i32 %747, 0
  br i1 %tobool1184, label %if.else.1829, label %if.then.1185

if.then.1185:                                     ; preds = %for.end.1182
  %748 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag1186 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %748, i32 0, i32 164
  %749 = load i32, i32* %residue_transform_flag1186, align 4
  %tobool1187 = icmp ne i32 %749, 0
  br i1 %tobool1187, label %if.else.1239, label %if.then.1188

if.then.1188:                                     ; preds = %if.then.1185
  store i32 0, i32* %j, align 4
  br label %for.cond.1189

for.cond.1189:                                    ; preds = %for.inc.1235, %if.then.1188
  %750 = load i32, i32* %j, align 4
  %cmp1190 = icmp slt i32 %750, 8
  br i1 %cmp1190, label %for.body.1192, label %for.end.1237

for.body.1192:                                    ; preds = %for.cond.1189
  store i32 0, i32* %i, align 4
  br label %for.cond.1193

for.cond.1193:                                    ; preds = %for.inc.1232, %for.body.1192
  %751 = load i32, i32* %i, align 4
  %cmp1194 = icmp slt i32 %751, 8
  br i1 %cmp1194, label %for.body.1196, label %for.end.1234

for.body.1196:                                    ; preds = %for.cond.1193
  %752 = load i32, i32* %i, align 4
  %idxprom1197 = sext i32 %752 to i64
  %753 = load i32, i32* %j, align 4
  %idxprom1198 = sext i32 %753 to i64
  %754 = load i32, i32* %best_ipmode, align 4
  %idxprom1199 = sext i32 %754 to i64
  %755 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31200 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %755, i32 0, i32 43
  %arrayidx1201 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31200, i32 0, i64 %idxprom1199
  %arrayidx1202 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1201, i32 0, i64 %idxprom1198
  %arrayidx1203 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1202, i32 0, i64 %idxprom1197
  %756 = load i16, i16* %arrayidx1203, align 2
  %757 = load i32, i32* %block_y, align 4
  %758 = load i32, i32* %j, align 4
  %add1204 = add nsw i32 %757, %758
  %idxprom1205 = sext i32 %add1204 to i64
  %759 = load i32, i32* %block_x, align 4
  %760 = load i32, i32* %i, align 4
  %add1206 = add nsw i32 %759, %760
  %idxprom1207 = sext i32 %add1206 to i64
  %761 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1208 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %761, i32 0, i32 45
  %arrayidx1209 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1208, i32 0, i64 %idxprom1207
  %arrayidx1210 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1209, i32 0, i64 %idxprom1205
  store i16 %756, i16* %arrayidx1210, align 2
  %762 = load i32, i32* %pic_opix_x, align 4
  %763 = load i32, i32* %i, align 4
  %add1211 = add nsw i32 %762, %763
  %idxprom1212 = sext i32 %add1211 to i64
  %764 = load i32, i32* %pic_opix_y, align 4
  %765 = load i32, i32* %j, align 4
  %add1213 = add nsw i32 %764, %765
  %idxprom1214 = sext i32 %add1213 to i64
  %766 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx1215 = getelementptr inbounds i16*, i16** %766, i64 %idxprom1214
  %767 = load i16*, i16** %arrayidx1215, align 8
  %arrayidx1216 = getelementptr inbounds i16, i16* %767, i64 %idxprom1212
  %768 = load i16, i16* %arrayidx1216, align 2
  %conv1217 = zext i16 %768 to i32
  %769 = load i32, i32* %i, align 4
  %idxprom1218 = sext i32 %769 to i64
  %770 = load i32, i32* %j, align 4
  %idxprom1219 = sext i32 %770 to i64
  %771 = load i32, i32* %best_ipmode, align 4
  %idxprom1220 = sext i32 %771 to i64
  %772 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %772, i32 0, i32 43
  %arrayidx1222 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31221, i32 0, i64 %idxprom1220
  %arrayidx1223 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1222, i32 0, i64 %idxprom1219
  %arrayidx1224 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1223, i32 0, i64 %idxprom1218
  %773 = load i16, i16* %arrayidx1224, align 2
  %conv1225 = zext i16 %773 to i32
  %sub1226 = sub nsw i32 %conv1217, %conv1225
  %774 = load i32, i32* %j, align 4
  %idxprom1227 = sext i32 %774 to i64
  %775 = load i32, i32* %i, align 4
  %idxprom1228 = sext i32 %775 to i64
  %776 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71229 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %776, i32 0, i32 46
  %arrayidx1230 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71229, i32 0, i64 %idxprom1228
  %arrayidx1231 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1230, i32 0, i64 %idxprom1227
  store i32 %sub1226, i32* %arrayidx1231, align 4
  br label %for.inc.1232

for.inc.1232:                                     ; preds = %for.body.1196
  %777 = load i32, i32* %i, align 4
  %inc1233 = add nsw i32 %777, 1
  store i32 %inc1233, i32* %i, align 4
  br label %for.cond.1193

for.end.1234:                                     ; preds = %for.cond.1193
  br label %for.inc.1235

for.inc.1235:                                     ; preds = %for.end.1234
  %778 = load i32, i32* %j, align 4
  %inc1236 = add nsw i32 %778, 1
  store i32 %inc1236, i32* %j, align 4
  br label %for.cond.1189

for.end.1237:                                     ; preds = %for.cond.1189
  %779 = load i32, i32* %b8.addr, align 4
  %call1238 = call i32 @dct_luma8x8(i32 %779, i32* %dummy, i32 1)
  store i32 %call1238, i32* %nonzero, align 4
  br label %if.end.1828

if.else.1239:                                     ; preds = %if.then.1185
  store i32 0, i32* %j, align 4
  br label %for.cond.1240

for.cond.1240:                                    ; preds = %for.inc.1347, %if.else.1239
  %780 = load i32, i32* %j, align 4
  %cmp1241 = icmp slt i32 %780, 8
  br i1 %cmp1241, label %for.body.1243, label %for.end.1349

for.body.1243:                                    ; preds = %for.cond.1240
  store i32 0, i32* %i, align 4
  br label %for.cond.1244

for.cond.1244:                                    ; preds = %for.inc.1344, %for.body.1243
  %781 = load i32, i32* %i, align 4
  %cmp1245 = icmp slt i32 %781, 8
  br i1 %cmp1245, label %for.body.1247, label %for.end.1346

for.body.1247:                                    ; preds = %for.cond.1244
  %782 = load i32, i32* %i, align 4
  %idxprom1248 = sext i32 %782 to i64
  %783 = load i32, i32* %j, align 4
  %idxprom1249 = sext i32 %783 to i64
  %784 = load i32, i32* %best_ipmode, align 4
  %idxprom1250 = sext i32 %784 to i64
  %785 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31251 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %785, i32 0, i32 43
  %arrayidx1252 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31251, i32 0, i64 %idxprom1250
  %arrayidx1253 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1252, i32 0, i64 %idxprom1249
  %arrayidx1254 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1253, i32 0, i64 %idxprom1248
  %786 = load i16, i16* %arrayidx1254, align 2
  %787 = load i32, i32* %block_y, align 4
  %788 = load i32, i32* %j, align 4
  %add1255 = add nsw i32 %787, %788
  %idxprom1256 = sext i32 %add1255 to i64
  %789 = load i32, i32* %block_x, align 4
  %790 = load i32, i32* %i, align 4
  %add1257 = add nsw i32 %789, %790
  %idxprom1258 = sext i32 %add1257 to i64
  %791 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1259 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %791, i32 0, i32 45
  %arrayidx1260 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1259, i32 0, i64 %idxprom1258
  %arrayidx1261 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1260, i32 0, i64 %idxprom1256
  store i16 %786, i16* %arrayidx1261, align 2
  %792 = load i32, i32* %pic_opix_x, align 4
  %793 = load i32, i32* %i, align 4
  %add1262 = add nsw i32 %792, %793
  %idxprom1263 = sext i32 %add1262 to i64
  %794 = load i32, i32* %pic_opix_y, align 4
  %795 = load i32, i32* %j, align 4
  %add1264 = add nsw i32 %794, %795
  %idxprom1265 = sext i32 %add1264 to i64
  %796 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx1266 = getelementptr inbounds i16**, i16*** %796, i64 0
  %797 = load i16**, i16*** %arrayidx1266, align 8
  %arrayidx1267 = getelementptr inbounds i16*, i16** %797, i64 %idxprom1265
  %798 = load i16*, i16** %arrayidx1267, align 8
  %arrayidx1268 = getelementptr inbounds i16, i16* %798, i64 %idxprom1263
  %799 = load i16, i16* %arrayidx1268, align 2
  %conv1269 = zext i16 %799 to i32
  %800 = load i32, i32* %block_y, align 4
  %801 = load i32, i32* %j, align 4
  %add1270 = add nsw i32 %800, %801
  %idxprom1271 = sext i32 %add1270 to i64
  %802 = load i32, i32* %block_x, align 4
  %803 = load i32, i32* %i, align 4
  %add1272 = add nsw i32 %802, %803
  %idxprom1273 = sext i32 %add1272 to i64
  %804 = load i32, i32* %c_ipmode, align 4
  %idxprom1274 = sext i32 %804 to i64
  %805 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1275 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %805, i32 0, i32 44
  %arrayidx1276 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1275, i32 0, i64 0
  %arrayidx1277 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1276, i32 0, i64 %idxprom1274
  %arrayidx1278 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1277, i32 0, i64 %idxprom1273
  %arrayidx1279 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1278, i32 0, i64 %idxprom1271
  %806 = load i16, i16* %arrayidx1279, align 2
  %conv1280 = zext i16 %806 to i32
  %sub1281 = sub nsw i32 %conv1269, %conv1280
  store i32 %sub1281, i32* %residue_B, align 4
  %807 = load i32, i32* %pic_opix_x, align 4
  %808 = load i32, i32* %i, align 4
  %add1282 = add nsw i32 %807, %808
  %idxprom1283 = sext i32 %add1282 to i64
  %809 = load i32, i32* %pic_opix_y, align 4
  %810 = load i32, i32* %j, align 4
  %add1284 = add nsw i32 %809, %810
  %idxprom1285 = sext i32 %add1284 to i64
  %811 = load i16**, i16*** @imgY_org, align 8
  %arrayidx1286 = getelementptr inbounds i16*, i16** %811, i64 %idxprom1285
  %812 = load i16*, i16** %arrayidx1286, align 8
  %arrayidx1287 = getelementptr inbounds i16, i16* %812, i64 %idxprom1283
  %813 = load i16, i16* %arrayidx1287, align 2
  %conv1288 = zext i16 %813 to i32
  %814 = load i32, i32* %i, align 4
  %idxprom1289 = sext i32 %814 to i64
  %815 = load i32, i32* %j, align 4
  %idxprom1290 = sext i32 %815 to i64
  %816 = load i32, i32* %best_ipmode, align 4
  %idxprom1291 = sext i32 %816 to i64
  %817 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31292 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %817, i32 0, i32 43
  %arrayidx1293 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31292, i32 0, i64 %idxprom1291
  %arrayidx1294 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1293, i32 0, i64 %idxprom1290
  %arrayidx1295 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1294, i32 0, i64 %idxprom1289
  %818 = load i16, i16* %arrayidx1295, align 2
  %conv1296 = zext i16 %818 to i32
  %sub1297 = sub nsw i32 %conv1288, %conv1296
  store i32 %sub1297, i32* %residue_G, align 4
  %819 = load i32, i32* %pic_opix_x, align 4
  %820 = load i32, i32* %i, align 4
  %add1298 = add nsw i32 %819, %820
  %idxprom1299 = sext i32 %add1298 to i64
  %821 = load i32, i32* %pic_opix_y, align 4
  %822 = load i32, i32* %j, align 4
  %add1300 = add nsw i32 %821, %822
  %idxprom1301 = sext i32 %add1300 to i64
  %823 = load i16***, i16**** @imgUV_org, align 8
  %arrayidx1302 = getelementptr inbounds i16**, i16*** %823, i64 1
  %824 = load i16**, i16*** %arrayidx1302, align 8
  %arrayidx1303 = getelementptr inbounds i16*, i16** %824, i64 %idxprom1301
  %825 = load i16*, i16** %arrayidx1303, align 8
  %arrayidx1304 = getelementptr inbounds i16, i16* %825, i64 %idxprom1299
  %826 = load i16, i16* %arrayidx1304, align 2
  %conv1305 = zext i16 %826 to i32
  %827 = load i32, i32* %block_y, align 4
  %828 = load i32, i32* %j, align 4
  %add1306 = add nsw i32 %827, %828
  %idxprom1307 = sext i32 %add1306 to i64
  %829 = load i32, i32* %block_x, align 4
  %830 = load i32, i32* %i, align 4
  %add1308 = add nsw i32 %829, %830
  %idxprom1309 = sext i32 %add1308 to i64
  %831 = load i32, i32* %c_ipmode, align 4
  %idxprom1310 = sext i32 %831 to i64
  %832 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1311 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %832, i32 0, i32 44
  %arrayidx1312 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1311, i32 0, i64 1
  %arrayidx1313 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1312, i32 0, i64 %idxprom1310
  %arrayidx1314 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1313, i32 0, i64 %idxprom1309
  %arrayidx1315 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1314, i32 0, i64 %idxprom1307
  %833 = load i16, i16* %arrayidx1315, align 2
  %conv1316 = zext i16 %833 to i32
  %sub1317 = sub nsw i32 %conv1305, %conv1316
  store i32 %sub1317, i32* %residue_R, align 4
  %834 = load i32, i32* %residue_R, align 4
  %835 = load i32, i32* %residue_B, align 4
  %sub1318 = sub nsw i32 %834, %835
  %836 = load i32, i32* %j, align 4
  %idxprom1319 = sext i32 %836 to i64
  %837 = load i32, i32* %i, align 4
  %idxprom1320 = sext i32 %837 to i64
  %arrayidx1321 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_R, i32 0, i64 %idxprom1320
  %arrayidx1322 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1321, i32 0, i64 %idxprom1319
  store i32 %sub1318, i32* %arrayidx1322, align 4
  %838 = load i32, i32* %residue_B, align 4
  %839 = load i32, i32* %j, align 4
  %idxprom1323 = sext i32 %839 to i64
  %840 = load i32, i32* %i, align 4
  %idxprom1324 = sext i32 %840 to i64
  %arrayidx1325 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_R, i32 0, i64 %idxprom1324
  %arrayidx1326 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1325, i32 0, i64 %idxprom1323
  %841 = load i32, i32* %arrayidx1326, align 4
  %shr1327 = ashr i32 %841, 1
  %add1328 = add nsw i32 %838, %shr1327
  store i32 %add1328, i32* %temp, align 4
  %842 = load i32, i32* %residue_G, align 4
  %843 = load i32, i32* %temp, align 4
  %sub1329 = sub nsw i32 %842, %843
  %844 = load i32, i32* %j, align 4
  %idxprom1330 = sext i32 %844 to i64
  %845 = load i32, i32* %i, align 4
  %idxprom1331 = sext i32 %845 to i64
  %arrayidx1332 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_B, i32 0, i64 %idxprom1331
  %arrayidx1333 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1332, i32 0, i64 %idxprom1330
  store i32 %sub1329, i32* %arrayidx1333, align 4
  %846 = load i32, i32* %temp, align 4
  %847 = load i32, i32* %j, align 4
  %idxprom1334 = sext i32 %847 to i64
  %848 = load i32, i32* %i, align 4
  %idxprom1335 = sext i32 %848 to i64
  %arrayidx1336 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_B, i32 0, i64 %idxprom1335
  %arrayidx1337 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1336, i32 0, i64 %idxprom1334
  %849 = load i32, i32* %arrayidx1337, align 4
  %shr1338 = ashr i32 %849, 1
  %add1339 = add nsw i32 %846, %shr1338
  %850 = load i32, i32* %j, align 4
  %idxprom1340 = sext i32 %850 to i64
  %851 = load i32, i32* %i, align 4
  %idxprom1341 = sext i32 %851 to i64
  %arrayidx1342 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_G, i32 0, i64 %idxprom1341
  %arrayidx1343 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1342, i32 0, i64 %idxprom1340
  store i32 %add1339, i32* %arrayidx1343, align 4
  br label %for.inc.1344

for.inc.1344:                                     ; preds = %for.body.1247
  %852 = load i32, i32* %i, align 4
  %inc1345 = add nsw i32 %852, 1
  store i32 %inc1345, i32* %i, align 4
  br label %for.cond.1244

for.end.1346:                                     ; preds = %for.cond.1244
  br label %for.inc.1347

for.inc.1347:                                     ; preds = %for.end.1346
  %853 = load i32, i32* %j, align 4
  %inc1348 = add nsw i32 %853, 1
  store i32 %inc1348, i32* %j, align 4
  br label %for.cond.1240

for.end.1349:                                     ; preds = %for.cond.1240
  store i32 0, i32* %j, align 4
  br label %for.cond.1350

for.cond.1350:                                    ; preds = %for.inc.1370, %for.end.1349
  %854 = load i32, i32* %j, align 4
  %cmp1351 = icmp slt i32 %854, 8
  br i1 %cmp1351, label %for.body.1353, label %for.end.1372

for.body.1353:                                    ; preds = %for.cond.1350
  store i32 0, i32* %i, align 4
  br label %for.cond.1354

for.cond.1354:                                    ; preds = %for.inc.1367, %for.body.1353
  %855 = load i32, i32* %i, align 4
  %cmp1355 = icmp slt i32 %855, 8
  br i1 %cmp1355, label %for.body.1357, label %for.end.1369

for.body.1357:                                    ; preds = %for.cond.1354
  %856 = load i32, i32* %j, align 4
  %idxprom1358 = sext i32 %856 to i64
  %857 = load i32, i32* %i, align 4
  %idxprom1359 = sext i32 %857 to i64
  %arrayidx1360 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_G, i32 0, i64 %idxprom1359
  %arrayidx1361 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1360, i32 0, i64 %idxprom1358
  %858 = load i32, i32* %arrayidx1361, align 4
  %859 = load i32, i32* %j, align 4
  %idxprom1362 = sext i32 %859 to i64
  %860 = load i32, i32* %i, align 4
  %idxprom1363 = sext i32 %860 to i64
  %861 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71364 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %861, i32 0, i32 46
  %arrayidx1365 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71364, i32 0, i64 %idxprom1363
  %arrayidx1366 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1365, i32 0, i64 %idxprom1362
  store i32 %858, i32* %arrayidx1366, align 4
  br label %for.inc.1367

for.inc.1367:                                     ; preds = %for.body.1357
  %862 = load i32, i32* %i, align 4
  %inc1368 = add nsw i32 %862, 1
  store i32 %inc1368, i32* %i, align 4
  br label %for.cond.1354

for.end.1369:                                     ; preds = %for.cond.1354
  br label %for.inc.1370

for.inc.1370:                                     ; preds = %for.end.1369
  %863 = load i32, i32* %j, align 4
  %inc1371 = add nsw i32 %863, 1
  store i32 %inc1371, i32* %j, align 4
  br label %for.cond.1350

for.end.1372:                                     ; preds = %for.cond.1350
  %864 = load i32, i32* %b8.addr, align 4
  %call1373 = call i32 @dct_luma8x8(i32 %864, i32* %dummy, i32 1)
  store i32 %call1373, i32* %nonzero, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1374

for.cond.1374:                                    ; preds = %for.inc.1394, %for.end.1372
  %865 = load i32, i32* %j, align 4
  %cmp1375 = icmp slt i32 %865, 8
  br i1 %cmp1375, label %for.body.1377, label %for.end.1396

for.body.1377:                                    ; preds = %for.cond.1374
  store i32 0, i32* %i, align 4
  br label %for.cond.1378

for.cond.1378:                                    ; preds = %for.inc.1391, %for.body.1377
  %866 = load i32, i32* %i, align 4
  %cmp1379 = icmp slt i32 %866, 8
  br i1 %cmp1379, label %for.body.1381, label %for.end.1393

for.body.1381:                                    ; preds = %for.cond.1378
  %867 = load i32, i32* %j, align 4
  %idxprom1382 = sext i32 %867 to i64
  %868 = load i32, i32* %i, align 4
  %idxprom1383 = sext i32 %868 to i64
  %869 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71384 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %869, i32 0, i32 46
  %arrayidx1385 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71384, i32 0, i64 %idxprom1383
  %arrayidx1386 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1385, i32 0, i64 %idxprom1382
  %870 = load i32, i32* %arrayidx1386, align 4
  %871 = load i32, i32* %j, align 4
  %idxprom1387 = sext i32 %871 to i64
  %872 = load i32, i32* %i, align 4
  %idxprom1388 = sext i32 %872 to i64
  %arrayidx1389 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resG, i32 0, i64 %idxprom1388
  %arrayidx1390 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1389, i32 0, i64 %idxprom1387
  store i32 %870, i32* %arrayidx1390, align 4
  br label %for.inc.1391

for.inc.1391:                                     ; preds = %for.body.1381
  %873 = load i32, i32* %i, align 4
  %inc1392 = add nsw i32 %873, 1
  store i32 %inc1392, i32* %i, align 4
  br label %for.cond.1378

for.end.1393:                                     ; preds = %for.cond.1378
  br label %for.inc.1394

for.inc.1394:                                     ; preds = %for.end.1393
  %874 = load i32, i32* %j, align 4
  %inc1395 = add nsw i32 %874, 1
  store i32 %inc1395, i32* %j, align 4
  br label %for.cond.1374

for.end.1396:                                     ; preds = %for.cond.1374
  store i32 0, i32* %b4, align 4
  br label %for.cond.1397

for.cond.1397:                                    ; preds = %for.inc.1567, %for.end.1396
  %875 = load i32, i32* %b4, align 4
  %cmp1398 = icmp slt i32 %875, 4
  br i1 %cmp1398, label %for.body.1400, label %for.end.1569

for.body.1400:                                    ; preds = %for.cond.1397
  %876 = load i32, i32* %b4, align 4
  %rem1401 = srem i32 %876, 2
  %mul1402 = mul nsw i32 4, %rem1401
  store i32 %mul1402, i32* %block4x4_x, align 4
  %877 = load i32, i32* %b4, align 4
  %div1403 = sdiv i32 %877, 2
  %mul1404 = mul nsw i32 4, %div1403
  store i32 %mul1404, i32* %block4x4_y, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1405

for.cond.1405:                                    ; preds = %for.inc.1427, %for.body.1400
  %878 = load i32, i32* %j, align 4
  %cmp1406 = icmp slt i32 %878, 4
  br i1 %cmp1406, label %for.body.1408, label %for.end.1429

for.body.1408:                                    ; preds = %for.cond.1405
  store i32 0, i32* %i, align 4
  br label %for.cond.1409

for.cond.1409:                                    ; preds = %for.inc.1424, %for.body.1408
  %879 = load i32, i32* %i, align 4
  %cmp1410 = icmp slt i32 %879, 4
  br i1 %cmp1410, label %for.body.1412, label %for.end.1426

for.body.1412:                                    ; preds = %for.cond.1409
  %880 = load i32, i32* %j, align 4
  %881 = load i32, i32* %block4x4_y, align 4
  %add1413 = add nsw i32 %880, %881
  %idxprom1414 = sext i32 %add1413 to i64
  %882 = load i32, i32* %i, align 4
  %883 = load i32, i32* %block4x4_x, align 4
  %add1415 = add nsw i32 %882, %883
  %idxprom1416 = sext i32 %add1415 to i64
  %arrayidx1417 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_R, i32 0, i64 %idxprom1416
  %arrayidx1418 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1417, i32 0, i64 %idxprom1414
  %884 = load i32, i32* %arrayidx1418, align 4
  %885 = load i32, i32* %j, align 4
  %idxprom1419 = sext i32 %885 to i64
  %886 = load i32, i32* %i, align 4
  %idxprom1420 = sext i32 %886 to i64
  %887 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71421 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %887, i32 0, i32 46
  %arrayidx1422 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71421, i32 0, i64 %idxprom1420
  %arrayidx1423 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1422, i32 0, i64 %idxprom1419
  store i32 %884, i32* %arrayidx1423, align 4
  br label %for.inc.1424

for.inc.1424:                                     ; preds = %for.body.1412
  %888 = load i32, i32* %i, align 4
  %inc1425 = add nsw i32 %888, 1
  store i32 %inc1425, i32* %i, align 4
  br label %for.cond.1409

for.end.1426:                                     ; preds = %for.cond.1409
  br label %for.inc.1427

for.inc.1427:                                     ; preds = %for.end.1426
  %889 = load i32, i32* %j, align 4
  %inc1428 = add nsw i32 %889, 1
  store i32 %inc1428, i32* %j, align 4
  br label %for.cond.1405

for.end.1429:                                     ; preds = %for.cond.1405
  %890 = load i32, i32* %b8.addr, align 4
  %add1430 = add nsw i32 %890, 4
  %891 = load i32, i32* %b4, align 4
  %call1431 = call i32 @dct_chroma4x4(i32 0, i32 %add1430, i32 %891)
  %892 = load i32, i32* %b8.addr, align 4
  %div1432 = sdiv i32 %892, 2
  %mul1433 = mul nsw i32 2, %div1432
  %893 = load i32, i32* %b4, align 4
  %div1434 = sdiv i32 %893, 2
  %add1435 = add nsw i32 %mul1433, %div1434
  %idxprom1436 = sext i32 %add1435 to i64
  %894 = load i32, i32* %b8.addr, align 4
  %rem1437 = srem i32 %894, 2
  %mul1438 = mul nsw i32 2, %rem1437
  %895 = load i32, i32* %b4, align 4
  %rem1439 = srem i32 %895, 2
  %add1440 = add nsw i32 %mul1438, %rem1439
  %idxprom1441 = sext i32 %add1440 to i64
  %arrayidx1442 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* getelementptr inbounds ([2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i32 0, i64 0), i32 0, i64 %idxprom1441
  %arrayidx1443 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1442, i32 0, i64 %idxprom1436
  store i32 %call1431, i32* %arrayidx1443, align 4
  %896 = load i32, i32* %b8.addr, align 4
  %div1444 = sdiv i32 %896, 2
  %mul1445 = mul nsw i32 2, %div1444
  %897 = load i32, i32* %b4, align 4
  %div1446 = sdiv i32 %897, 2
  %add1447 = add nsw i32 %mul1445, %div1446
  %idxprom1448 = sext i32 %add1447 to i64
  %898 = load i32, i32* %b8.addr, align 4
  %rem1449 = srem i32 %898, 2
  %mul1450 = mul nsw i32 2, %rem1449
  %899 = load i32, i32* %b4, align 4
  %rem1451 = srem i32 %899, 2
  %add1452 = add nsw i32 %mul1450, %rem1451
  %idxprom1453 = sext i32 %add1452 to i64
  %arrayidx1454 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* getelementptr inbounds ([2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @dc_level_temp, i32 0, i64 0), i32 0, i64 %idxprom1453
  %arrayidx1455 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1454, i32 0, i64 %idxprom1448
  %900 = load i32, i32* %arrayidx1455, align 4
  %901 = load i32, i32* %b8.addr, align 4
  %div1456 = sdiv i32 %901, 2
  %mul1457 = mul nsw i32 2, %div1456
  %902 = load i32, i32* %b4, align 4
  %div1458 = sdiv i32 %902, 2
  %add1459 = add nsw i32 %mul1457, %div1458
  %idxprom1460 = sext i32 %add1459 to i64
  %903 = load i32, i32* %b8.addr, align 4
  %rem1461 = srem i32 %903, 2
  %mul1462 = mul nsw i32 2, %rem1461
  %904 = load i32, i32* %b4, align 4
  %rem1463 = srem i32 %904, 2
  %add1464 = add nsw i32 %mul1462, %rem1463
  %idxprom1465 = sext i32 %add1464 to i64
  %arrayidx1466 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* getelementptr inbounds ([2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @dc_level, i32 0, i64 0), i32 0, i64 %idxprom1465
  %arrayidx1467 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1466, i32 0, i64 %idxprom1460
  store i32 %900, i32* %arrayidx1467, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1468

for.cond.1468:                                    ; preds = %for.inc.1501, %for.end.1429
  %905 = load i32, i32* %j, align 4
  %cmp1469 = icmp slt i32 %905, 4
  br i1 %cmp1469, label %for.body.1471, label %for.end.1503

for.body.1471:                                    ; preds = %for.cond.1468
  store i32 0, i32* %i, align 4
  br label %for.cond.1472

for.cond.1472:                                    ; preds = %for.inc.1498, %for.body.1471
  %906 = load i32, i32* %i, align 4
  %cmp1473 = icmp slt i32 %906, 4
  br i1 %cmp1473, label %for.body.1475, label %for.end.1500

for.body.1475:                                    ; preds = %for.cond.1472
  %907 = load i32, i32* %j, align 4
  %idxprom1476 = sext i32 %907 to i64
  %908 = load i32, i32* %i, align 4
  %idxprom1477 = sext i32 %908 to i64
  %909 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71478 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %909, i32 0, i32 46
  %arrayidx1479 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71478, i32 0, i64 %idxprom1477
  %arrayidx1480 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1479, i32 0, i64 %idxprom1476
  %910 = load i32, i32* %arrayidx1480, align 4
  %911 = load i32, i32* %j, align 4
  %912 = load i32, i32* %block4x4_y, align 4
  %add1481 = add nsw i32 %911, %912
  %idxprom1482 = sext i32 %add1481 to i64
  %913 = load i32, i32* %i, align 4
  %914 = load i32, i32* %block4x4_x, align 4
  %add1483 = add nsw i32 %913, %914
  %idxprom1484 = sext i32 %add1483 to i64
  %arrayidx1485 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resR, i32 0, i64 %idxprom1484
  %arrayidx1486 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1485, i32 0, i64 %idxprom1482
  store i32 %910, i32* %arrayidx1486, align 4
  %915 = load i32, i32* %j, align 4
  %916 = load i32, i32* %block4x4_y, align 4
  %add1487 = add nsw i32 %915, %916
  %idxprom1488 = sext i32 %add1487 to i64
  %917 = load i32, i32* %i, align 4
  %918 = load i32, i32* %block4x4_x, align 4
  %add1489 = add nsw i32 %917, %918
  %idxprom1490 = sext i32 %add1489 to i64
  %arrayidx1491 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @resTrans_B, i32 0, i64 %idxprom1490
  %arrayidx1492 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1491, i32 0, i64 %idxprom1488
  %919 = load i32, i32* %arrayidx1492, align 4
  %920 = load i32, i32* %j, align 4
  %idxprom1493 = sext i32 %920 to i64
  %921 = load i32, i32* %i, align 4
  %idxprom1494 = sext i32 %921 to i64
  %922 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71495 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %922, i32 0, i32 46
  %arrayidx1496 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71495, i32 0, i64 %idxprom1494
  %arrayidx1497 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1496, i32 0, i64 %idxprom1493
  store i32 %919, i32* %arrayidx1497, align 4
  br label %for.inc.1498

for.inc.1498:                                     ; preds = %for.body.1475
  %923 = load i32, i32* %i, align 4
  %inc1499 = add nsw i32 %923, 1
  store i32 %inc1499, i32* %i, align 4
  br label %for.cond.1472

for.end.1500:                                     ; preds = %for.cond.1472
  br label %for.inc.1501

for.inc.1501:                                     ; preds = %for.end.1500
  %924 = load i32, i32* %j, align 4
  %inc1502 = add nsw i32 %924, 1
  store i32 %inc1502, i32* %j, align 4
  br label %for.cond.1468

for.end.1503:                                     ; preds = %for.cond.1468
  %925 = load i32, i32* %b8.addr, align 4
  %add1504 = add nsw i32 %925, 8
  %926 = load i32, i32* %b4, align 4
  %call1505 = call i32 @dct_chroma4x4(i32 1, i32 %add1504, i32 %926)
  %927 = load i32, i32* %b8.addr, align 4
  %div1506 = sdiv i32 %927, 2
  %mul1507 = mul nsw i32 2, %div1506
  %928 = load i32, i32* %b4, align 4
  %div1508 = sdiv i32 %928, 2
  %add1509 = add nsw i32 %mul1507, %div1508
  %idxprom1510 = sext i32 %add1509 to i64
  %929 = load i32, i32* %b8.addr, align 4
  %rem1511 = srem i32 %929, 2
  %mul1512 = mul nsw i32 2, %rem1511
  %930 = load i32, i32* %b4, align 4
  %rem1513 = srem i32 %930, 2
  %add1514 = add nsw i32 %mul1512, %rem1513
  %idxprom1515 = sext i32 %add1514 to i64
  %arrayidx1516 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* getelementptr inbounds ([2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @cbp_chroma_block, i32 0, i64 1), i32 0, i64 %idxprom1515
  %arrayidx1517 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1516, i32 0, i64 %idxprom1510
  store i32 %call1505, i32* %arrayidx1517, align 4
  %931 = load i32, i32* %b8.addr, align 4
  %div1518 = sdiv i32 %931, 2
  %mul1519 = mul nsw i32 2, %div1518
  %932 = load i32, i32* %b4, align 4
  %div1520 = sdiv i32 %932, 2
  %add1521 = add nsw i32 %mul1519, %div1520
  %idxprom1522 = sext i32 %add1521 to i64
  %933 = load i32, i32* %b8.addr, align 4
  %rem1523 = srem i32 %933, 2
  %mul1524 = mul nsw i32 2, %rem1523
  %934 = load i32, i32* %b4, align 4
  %rem1525 = srem i32 %934, 2
  %add1526 = add nsw i32 %mul1524, %rem1525
  %idxprom1527 = sext i32 %add1526 to i64
  %arrayidx1528 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* getelementptr inbounds ([2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @dc_level_temp, i32 0, i64 1), i32 0, i64 %idxprom1527
  %arrayidx1529 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1528, i32 0, i64 %idxprom1522
  %935 = load i32, i32* %arrayidx1529, align 4
  %936 = load i32, i32* %b8.addr, align 4
  %div1530 = sdiv i32 %936, 2
  %mul1531 = mul nsw i32 2, %div1530
  %937 = load i32, i32* %b4, align 4
  %div1532 = sdiv i32 %937, 2
  %add1533 = add nsw i32 %mul1531, %div1532
  %idxprom1534 = sext i32 %add1533 to i64
  %938 = load i32, i32* %b8.addr, align 4
  %rem1535 = srem i32 %938, 2
  %mul1536 = mul nsw i32 2, %rem1535
  %939 = load i32, i32* %b4, align 4
  %rem1537 = srem i32 %939, 2
  %add1538 = add nsw i32 %mul1536, %rem1537
  %idxprom1539 = sext i32 %add1538 to i64
  %arrayidx1540 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* getelementptr inbounds ([2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* @dc_level, i32 0, i64 1), i32 0, i64 %idxprom1539
  %arrayidx1541 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx1540, i32 0, i64 %idxprom1534
  store i32 %935, i32* %arrayidx1541, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1542

for.cond.1542:                                    ; preds = %for.inc.1564, %for.end.1503
  %940 = load i32, i32* %j, align 4
  %cmp1543 = icmp slt i32 %940, 4
  br i1 %cmp1543, label %for.body.1545, label %for.end.1566

for.body.1545:                                    ; preds = %for.cond.1542
  store i32 0, i32* %i, align 4
  br label %for.cond.1546

for.cond.1546:                                    ; preds = %for.inc.1561, %for.body.1545
  %941 = load i32, i32* %i, align 4
  %cmp1547 = icmp slt i32 %941, 4
  br i1 %cmp1547, label %for.body.1549, label %for.end.1563

for.body.1549:                                    ; preds = %for.cond.1546
  %942 = load i32, i32* %j, align 4
  %idxprom1550 = sext i32 %942 to i64
  %943 = load i32, i32* %i, align 4
  %idxprom1551 = sext i32 %943 to i64
  %944 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71552 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %944, i32 0, i32 46
  %arrayidx1553 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71552, i32 0, i64 %idxprom1551
  %arrayidx1554 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1553, i32 0, i64 %idxprom1550
  %945 = load i32, i32* %arrayidx1554, align 4
  %946 = load i32, i32* %j, align 4
  %947 = load i32, i32* %block4x4_y, align 4
  %add1555 = add nsw i32 %946, %947
  %idxprom1556 = sext i32 %add1555 to i64
  %948 = load i32, i32* %i, align 4
  %949 = load i32, i32* %block4x4_x, align 4
  %add1557 = add nsw i32 %948, %949
  %idxprom1558 = sext i32 %add1557 to i64
  %arrayidx1559 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resB, i32 0, i64 %idxprom1558
  %arrayidx1560 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1559, i32 0, i64 %idxprom1556
  store i32 %945, i32* %arrayidx1560, align 4
  br label %for.inc.1561

for.inc.1561:                                     ; preds = %for.body.1549
  %950 = load i32, i32* %i, align 4
  %inc1562 = add nsw i32 %950, 1
  store i32 %inc1562, i32* %i, align 4
  br label %for.cond.1546

for.end.1563:                                     ; preds = %for.cond.1546
  br label %for.inc.1564

for.inc.1564:                                     ; preds = %for.end.1563
  %951 = load i32, i32* %j, align 4
  %inc1565 = add nsw i32 %951, 1
  store i32 %inc1565, i32* %j, align 4
  br label %for.cond.1542

for.end.1566:                                     ; preds = %for.cond.1542
  br label %for.inc.1567

for.inc.1567:                                     ; preds = %for.end.1566
  %952 = load i32, i32* %b4, align 4
  %inc1568 = add nsw i32 %952, 1
  store i32 %inc1568, i32* %b4, align 4
  br label %for.cond.1397

for.end.1569:                                     ; preds = %for.cond.1397
  store i32 0, i32* %j, align 4
  br label %for.cond.1570

for.cond.1570:                                    ; preds = %for.inc.1825, %for.end.1569
  %953 = load i32, i32* %j, align 4
  %cmp1571 = icmp slt i32 %953, 8
  br i1 %cmp1571, label %for.body.1573, label %for.end.1827

for.body.1573:                                    ; preds = %for.cond.1570
  store i32 0, i32* %i, align 4
  br label %for.cond.1574

for.cond.1574:                                    ; preds = %for.inc.1822, %for.body.1573
  %954 = load i32, i32* %i, align 4
  %cmp1575 = icmp slt i32 %954, 8
  br i1 %cmp1575, label %for.body.1577, label %for.end.1824

for.body.1577:                                    ; preds = %for.cond.1574
  %955 = load i32, i32* %j, align 4
  %idxprom1578 = sext i32 %955 to i64
  %956 = load i32, i32* %i, align 4
  %idxprom1579 = sext i32 %956 to i64
  %arrayidx1580 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resG, i32 0, i64 %idxprom1579
  %arrayidx1581 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1580, i32 0, i64 %idxprom1578
  %957 = load i32, i32* %arrayidx1581, align 4
  %958 = load i32, i32* %j, align 4
  %idxprom1582 = sext i32 %958 to i64
  %959 = load i32, i32* %i, align 4
  %idxprom1583 = sext i32 %959 to i64
  %arrayidx1584 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resB, i32 0, i64 %idxprom1583
  %arrayidx1585 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1584, i32 0, i64 %idxprom1582
  %960 = load i32, i32* %arrayidx1585, align 4
  %shr1586 = ashr i32 %960, 1
  %sub1587 = sub nsw i32 %957, %shr1586
  store i32 %sub1587, i32* %temp, align 4
  %961 = load i32, i32* %j, align 4
  %idxprom1588 = sext i32 %961 to i64
  %962 = load i32, i32* %i, align 4
  %idxprom1589 = sext i32 %962 to i64
  %arrayidx1590 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resB, i32 0, i64 %idxprom1589
  %arrayidx1591 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1590, i32 0, i64 %idxprom1588
  %963 = load i32, i32* %arrayidx1591, align 4
  %964 = load i32, i32* %temp, align 4
  %add1592 = add nsw i32 %963, %964
  store i32 %add1592, i32* %residue_G, align 4
  %965 = load i32, i32* %temp, align 4
  %966 = load i32, i32* %j, align 4
  %idxprom1593 = sext i32 %966 to i64
  %967 = load i32, i32* %i, align 4
  %idxprom1594 = sext i32 %967 to i64
  %arrayidx1595 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resR, i32 0, i64 %idxprom1594
  %arrayidx1596 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1595, i32 0, i64 %idxprom1593
  %968 = load i32, i32* %arrayidx1596, align 4
  %shr1597 = ashr i32 %968, 1
  %sub1598 = sub nsw i32 %965, %shr1597
  store i32 %sub1598, i32* %residue_B, align 4
  %969 = load i32, i32* %residue_B, align 4
  %970 = load i32, i32* %j, align 4
  %idxprom1599 = sext i32 %970 to i64
  %971 = load i32, i32* %i, align 4
  %idxprom1600 = sext i32 %971 to i64
  %arrayidx1601 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* @rec_resR, i32 0, i64 %idxprom1600
  %arrayidx1602 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1601, i32 0, i64 %idxprom1599
  %972 = load i32, i32* %arrayidx1602, align 4
  %add1603 = add nsw i32 %969, %972
  store i32 %add1603, i32* %residue_R, align 4
  %973 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv1604 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %973, i32 0, i32 156
  %974 = load i32, i32* %max_imgpel_value_uv1604, align 4
  %975 = load i32, i32* %residue_B, align 4
  %976 = load i32, i32* %block_y, align 4
  %977 = load i32, i32* %j, align 4
  %add1605 = add nsw i32 %976, %977
  %idxprom1606 = sext i32 %add1605 to i64
  %978 = load i32, i32* %block_x, align 4
  %979 = load i32, i32* %i, align 4
  %add1607 = add nsw i32 %978, %979
  %idxprom1608 = sext i32 %add1607 to i64
  %980 = load i32, i32* %c_ipmode, align 4
  %idxprom1609 = sext i32 %980 to i64
  %981 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1610 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %981, i32 0, i32 44
  %arrayidx1611 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1610, i32 0, i64 0
  %arrayidx1612 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1611, i32 0, i64 %idxprom1609
  %arrayidx1613 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1612, i32 0, i64 %idxprom1608
  %arrayidx1614 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1613, i32 0, i64 %idxprom1606
  %982 = load i16, i16* %arrayidx1614, align 2
  %conv1615 = zext i16 %982 to i32
  %add1616 = add nsw i32 %975, %conv1615
  %cmp1617 = icmp sgt i32 0, %add1616
  br i1 %cmp1617, label %cond.true.1619, label %cond.false.1620

cond.true.1619:                                   ; preds = %for.body.1577
  br label %cond.end.1633

cond.false.1620:                                  ; preds = %for.body.1577
  %983 = load i32, i32* %residue_B, align 4
  %984 = load i32, i32* %block_y, align 4
  %985 = load i32, i32* %j, align 4
  %add1621 = add nsw i32 %984, %985
  %idxprom1622 = sext i32 %add1621 to i64
  %986 = load i32, i32* %block_x, align 4
  %987 = load i32, i32* %i, align 4
  %add1623 = add nsw i32 %986, %987
  %idxprom1624 = sext i32 %add1623 to i64
  %988 = load i32, i32* %c_ipmode, align 4
  %idxprom1625 = sext i32 %988 to i64
  %989 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1626 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %989, i32 0, i32 44
  %arrayidx1627 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1626, i32 0, i64 0
  %arrayidx1628 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1627, i32 0, i64 %idxprom1625
  %arrayidx1629 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1628, i32 0, i64 %idxprom1624
  %arrayidx1630 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1629, i32 0, i64 %idxprom1622
  %990 = load i16, i16* %arrayidx1630, align 2
  %conv1631 = zext i16 %990 to i32
  %add1632 = add nsw i32 %983, %conv1631
  br label %cond.end.1633

cond.end.1633:                                    ; preds = %cond.false.1620, %cond.true.1619
  %cond1634 = phi i32 [ 0, %cond.true.1619 ], [ %add1632, %cond.false.1620 ]
  %cmp1635 = icmp slt i32 %974, %cond1634
  br i1 %cmp1635, label %cond.true.1637, label %cond.false.1639

cond.true.1637:                                   ; preds = %cond.end.1633
  %991 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv1638 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %991, i32 0, i32 156
  %992 = load i32, i32* %max_imgpel_value_uv1638, align 4
  br label %cond.end.1670

cond.false.1639:                                  ; preds = %cond.end.1633
  %993 = load i32, i32* %residue_B, align 4
  %994 = load i32, i32* %block_y, align 4
  %995 = load i32, i32* %j, align 4
  %add1640 = add nsw i32 %994, %995
  %idxprom1641 = sext i32 %add1640 to i64
  %996 = load i32, i32* %block_x, align 4
  %997 = load i32, i32* %i, align 4
  %add1642 = add nsw i32 %996, %997
  %idxprom1643 = sext i32 %add1642 to i64
  %998 = load i32, i32* %c_ipmode, align 4
  %idxprom1644 = sext i32 %998 to i64
  %999 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1645 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %999, i32 0, i32 44
  %arrayidx1646 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1645, i32 0, i64 0
  %arrayidx1647 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1646, i32 0, i64 %idxprom1644
  %arrayidx1648 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1647, i32 0, i64 %idxprom1643
  %arrayidx1649 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1648, i32 0, i64 %idxprom1641
  %1000 = load i16, i16* %arrayidx1649, align 2
  %conv1650 = zext i16 %1000 to i32
  %add1651 = add nsw i32 %993, %conv1650
  %cmp1652 = icmp sgt i32 0, %add1651
  br i1 %cmp1652, label %cond.true.1654, label %cond.false.1655

cond.true.1654:                                   ; preds = %cond.false.1639
  br label %cond.end.1668

cond.false.1655:                                  ; preds = %cond.false.1639
  %1001 = load i32, i32* %residue_B, align 4
  %1002 = load i32, i32* %block_y, align 4
  %1003 = load i32, i32* %j, align 4
  %add1656 = add nsw i32 %1002, %1003
  %idxprom1657 = sext i32 %add1656 to i64
  %1004 = load i32, i32* %block_x, align 4
  %1005 = load i32, i32* %i, align 4
  %add1658 = add nsw i32 %1004, %1005
  %idxprom1659 = sext i32 %add1658 to i64
  %1006 = load i32, i32* %c_ipmode, align 4
  %idxprom1660 = sext i32 %1006 to i64
  %1007 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1661 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1007, i32 0, i32 44
  %arrayidx1662 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1661, i32 0, i64 0
  %arrayidx1663 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1662, i32 0, i64 %idxprom1660
  %arrayidx1664 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1663, i32 0, i64 %idxprom1659
  %arrayidx1665 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1664, i32 0, i64 %idxprom1657
  %1008 = load i16, i16* %arrayidx1665, align 2
  %conv1666 = zext i16 %1008 to i32
  %add1667 = add nsw i32 %1001, %conv1666
  br label %cond.end.1668

cond.end.1668:                                    ; preds = %cond.false.1655, %cond.true.1654
  %cond1669 = phi i32 [ 0, %cond.true.1654 ], [ %add1667, %cond.false.1655 ]
  br label %cond.end.1670

cond.end.1670:                                    ; preds = %cond.end.1668, %cond.true.1637
  %cond1671 = phi i32 [ %992, %cond.true.1637 ], [ %cond1669, %cond.end.1668 ]
  %conv1672 = trunc i32 %cond1671 to i16
  %1009 = load i32, i32* %pic_pix_x, align 4
  %1010 = load i32, i32* %i, align 4
  %add1673 = add nsw i32 %1009, %1010
  %idxprom1674 = sext i32 %add1673 to i64
  %1011 = load i32, i32* %pic_pix_y, align 4
  %1012 = load i32, i32* %j, align 4
  %add1675 = add nsw i32 %1011, %1012
  %idxprom1676 = sext i32 %add1675 to i64
  %1013 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV1677 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1013, i32 0, i32 30
  %1014 = load i16***, i16**** %imgUV1677, align 8
  %arrayidx1678 = getelementptr inbounds i16**, i16*** %1014, i64 0
  %1015 = load i16**, i16*** %arrayidx1678, align 8
  %arrayidx1679 = getelementptr inbounds i16*, i16** %1015, i64 %idxprom1676
  %1016 = load i16*, i16** %arrayidx1679, align 8
  %arrayidx1680 = getelementptr inbounds i16, i16* %1016, i64 %idxprom1674
  store i16 %conv1672, i16* %arrayidx1680, align 2
  %1017 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value1681 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1017, i32 0, i32 155
  %1018 = load i32, i32* %max_imgpel_value1681, align 4
  %1019 = load i32, i32* %residue_G, align 4
  %1020 = load i32, i32* %i, align 4
  %idxprom1682 = sext i32 %1020 to i64
  %1021 = load i32, i32* %j, align 4
  %idxprom1683 = sext i32 %1021 to i64
  %1022 = load i32, i32* %best_ipmode, align 4
  %idxprom1684 = sext i32 %1022 to i64
  %1023 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31685 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1023, i32 0, i32 43
  %arrayidx1686 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31685, i32 0, i64 %idxprom1684
  %arrayidx1687 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1686, i32 0, i64 %idxprom1683
  %arrayidx1688 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1687, i32 0, i64 %idxprom1682
  %1024 = load i16, i16* %arrayidx1688, align 2
  %conv1689 = zext i16 %1024 to i32
  %add1690 = add nsw i32 %1019, %conv1689
  %cmp1691 = icmp sgt i32 0, %add1690
  br i1 %cmp1691, label %cond.true.1693, label %cond.false.1694

cond.true.1693:                                   ; preds = %cond.end.1670
  br label %cond.end.1704

cond.false.1694:                                  ; preds = %cond.end.1670
  %1025 = load i32, i32* %residue_G, align 4
  %1026 = load i32, i32* %i, align 4
  %idxprom1695 = sext i32 %1026 to i64
  %1027 = load i32, i32* %j, align 4
  %idxprom1696 = sext i32 %1027 to i64
  %1028 = load i32, i32* %best_ipmode, align 4
  %idxprom1697 = sext i32 %1028 to i64
  %1029 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31698 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1029, i32 0, i32 43
  %arrayidx1699 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31698, i32 0, i64 %idxprom1697
  %arrayidx1700 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1699, i32 0, i64 %idxprom1696
  %arrayidx1701 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1700, i32 0, i64 %idxprom1695
  %1030 = load i16, i16* %arrayidx1701, align 2
  %conv1702 = zext i16 %1030 to i32
  %add1703 = add nsw i32 %1025, %conv1702
  br label %cond.end.1704

cond.end.1704:                                    ; preds = %cond.false.1694, %cond.true.1693
  %cond1705 = phi i32 [ 0, %cond.true.1693 ], [ %add1703, %cond.false.1694 ]
  %cmp1706 = icmp slt i32 %1018, %cond1705
  br i1 %cmp1706, label %cond.true.1708, label %cond.false.1710

cond.true.1708:                                   ; preds = %cond.end.1704
  %1031 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value1709 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1031, i32 0, i32 155
  %1032 = load i32, i32* %max_imgpel_value1709, align 4
  br label %cond.end.1735

cond.false.1710:                                  ; preds = %cond.end.1704
  %1033 = load i32, i32* %residue_G, align 4
  %1034 = load i32, i32* %i, align 4
  %idxprom1711 = sext i32 %1034 to i64
  %1035 = load i32, i32* %j, align 4
  %idxprom1712 = sext i32 %1035 to i64
  %1036 = load i32, i32* %best_ipmode, align 4
  %idxprom1713 = sext i32 %1036 to i64
  %1037 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31714 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1037, i32 0, i32 43
  %arrayidx1715 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31714, i32 0, i64 %idxprom1713
  %arrayidx1716 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1715, i32 0, i64 %idxprom1712
  %arrayidx1717 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1716, i32 0, i64 %idxprom1711
  %1038 = load i16, i16* %arrayidx1717, align 2
  %conv1718 = zext i16 %1038 to i32
  %add1719 = add nsw i32 %1033, %conv1718
  %cmp1720 = icmp sgt i32 0, %add1719
  br i1 %cmp1720, label %cond.true.1722, label %cond.false.1723

cond.true.1722:                                   ; preds = %cond.false.1710
  br label %cond.end.1733

cond.false.1723:                                  ; preds = %cond.false.1710
  %1039 = load i32, i32* %residue_G, align 4
  %1040 = load i32, i32* %i, align 4
  %idxprom1724 = sext i32 %1040 to i64
  %1041 = load i32, i32* %j, align 4
  %idxprom1725 = sext i32 %1041 to i64
  %1042 = load i32, i32* %best_ipmode, align 4
  %idxprom1726 = sext i32 %1042 to i64
  %1043 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31727 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1043, i32 0, i32 43
  %arrayidx1728 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31727, i32 0, i64 %idxprom1726
  %arrayidx1729 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1728, i32 0, i64 %idxprom1725
  %arrayidx1730 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1729, i32 0, i64 %idxprom1724
  %1044 = load i16, i16* %arrayidx1730, align 2
  %conv1731 = zext i16 %1044 to i32
  %add1732 = add nsw i32 %1039, %conv1731
  br label %cond.end.1733

cond.end.1733:                                    ; preds = %cond.false.1723, %cond.true.1722
  %cond1734 = phi i32 [ 0, %cond.true.1722 ], [ %add1732, %cond.false.1723 ]
  br label %cond.end.1735

cond.end.1735:                                    ; preds = %cond.end.1733, %cond.true.1708
  %cond1736 = phi i32 [ %1032, %cond.true.1708 ], [ %cond1734, %cond.end.1733 ]
  %conv1737 = trunc i32 %cond1736 to i16
  %1045 = load i32, i32* %pic_pix_x, align 4
  %1046 = load i32, i32* %i, align 4
  %add1738 = add nsw i32 %1045, %1046
  %idxprom1739 = sext i32 %add1738 to i64
  %1047 = load i32, i32* %pic_pix_y, align 4
  %1048 = load i32, i32* %j, align 4
  %add1740 = add nsw i32 %1047, %1048
  %idxprom1741 = sext i32 %add1740 to i64
  %1049 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY1742 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1049, i32 0, i32 25
  %1050 = load i16**, i16*** %imgY1742, align 8
  %arrayidx1743 = getelementptr inbounds i16*, i16** %1050, i64 %idxprom1741
  %1051 = load i16*, i16** %arrayidx1743, align 8
  %arrayidx1744 = getelementptr inbounds i16, i16* %1051, i64 %idxprom1739
  store i16 %conv1737, i16* %arrayidx1744, align 2
  %1052 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv1745 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1052, i32 0, i32 156
  %1053 = load i32, i32* %max_imgpel_value_uv1745, align 4
  %1054 = load i32, i32* %residue_R, align 4
  %1055 = load i32, i32* %block_y, align 4
  %1056 = load i32, i32* %j, align 4
  %add1746 = add nsw i32 %1055, %1056
  %idxprom1747 = sext i32 %add1746 to i64
  %1057 = load i32, i32* %block_x, align 4
  %1058 = load i32, i32* %i, align 4
  %add1748 = add nsw i32 %1057, %1058
  %idxprom1749 = sext i32 %add1748 to i64
  %1059 = load i32, i32* %c_ipmode, align 4
  %idxprom1750 = sext i32 %1059 to i64
  %1060 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1751 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1060, i32 0, i32 44
  %arrayidx1752 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1751, i32 0, i64 1
  %arrayidx1753 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1752, i32 0, i64 %idxprom1750
  %arrayidx1754 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1753, i32 0, i64 %idxprom1749
  %arrayidx1755 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1754, i32 0, i64 %idxprom1747
  %1061 = load i16, i16* %arrayidx1755, align 2
  %conv1756 = zext i16 %1061 to i32
  %add1757 = add nsw i32 %1054, %conv1756
  %cmp1758 = icmp sgt i32 0, %add1757
  br i1 %cmp1758, label %cond.true.1760, label %cond.false.1761

cond.true.1760:                                   ; preds = %cond.end.1735
  br label %cond.end.1774

cond.false.1761:                                  ; preds = %cond.end.1735
  %1062 = load i32, i32* %residue_R, align 4
  %1063 = load i32, i32* %block_y, align 4
  %1064 = load i32, i32* %j, align 4
  %add1762 = add nsw i32 %1063, %1064
  %idxprom1763 = sext i32 %add1762 to i64
  %1065 = load i32, i32* %block_x, align 4
  %1066 = load i32, i32* %i, align 4
  %add1764 = add nsw i32 %1065, %1066
  %idxprom1765 = sext i32 %add1764 to i64
  %1067 = load i32, i32* %c_ipmode, align 4
  %idxprom1766 = sext i32 %1067 to i64
  %1068 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1767 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1068, i32 0, i32 44
  %arrayidx1768 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1767, i32 0, i64 1
  %arrayidx1769 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1768, i32 0, i64 %idxprom1766
  %arrayidx1770 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1769, i32 0, i64 %idxprom1765
  %arrayidx1771 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1770, i32 0, i64 %idxprom1763
  %1069 = load i16, i16* %arrayidx1771, align 2
  %conv1772 = zext i16 %1069 to i32
  %add1773 = add nsw i32 %1062, %conv1772
  br label %cond.end.1774

cond.end.1774:                                    ; preds = %cond.false.1761, %cond.true.1760
  %cond1775 = phi i32 [ 0, %cond.true.1760 ], [ %add1773, %cond.false.1761 ]
  %cmp1776 = icmp slt i32 %1053, %cond1775
  br i1 %cmp1776, label %cond.true.1778, label %cond.false.1780

cond.true.1778:                                   ; preds = %cond.end.1774
  %1070 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value_uv1779 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1070, i32 0, i32 156
  %1071 = load i32, i32* %max_imgpel_value_uv1779, align 4
  br label %cond.end.1811

cond.false.1780:                                  ; preds = %cond.end.1774
  %1072 = load i32, i32* %residue_R, align 4
  %1073 = load i32, i32* %block_y, align 4
  %1074 = load i32, i32* %j, align 4
  %add1781 = add nsw i32 %1073, %1074
  %idxprom1782 = sext i32 %add1781 to i64
  %1075 = load i32, i32* %block_x, align 4
  %1076 = load i32, i32* %i, align 4
  %add1783 = add nsw i32 %1075, %1076
  %idxprom1784 = sext i32 %add1783 to i64
  %1077 = load i32, i32* %c_ipmode, align 4
  %idxprom1785 = sext i32 %1077 to i64
  %1078 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1786 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1078, i32 0, i32 44
  %arrayidx1787 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1786, i32 0, i64 1
  %arrayidx1788 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1787, i32 0, i64 %idxprom1785
  %arrayidx1789 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1788, i32 0, i64 %idxprom1784
  %arrayidx1790 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1789, i32 0, i64 %idxprom1782
  %1079 = load i16, i16* %arrayidx1790, align 2
  %conv1791 = zext i16 %1079 to i32
  %add1792 = add nsw i32 %1072, %conv1791
  %cmp1793 = icmp sgt i32 0, %add1792
  br i1 %cmp1793, label %cond.true.1795, label %cond.false.1796

cond.true.1795:                                   ; preds = %cond.false.1780
  br label %cond.end.1809

cond.false.1796:                                  ; preds = %cond.false.1780
  %1080 = load i32, i32* %residue_R, align 4
  %1081 = load i32, i32* %block_y, align 4
  %1082 = load i32, i32* %j, align 4
  %add1797 = add nsw i32 %1081, %1082
  %idxprom1798 = sext i32 %add1797 to i64
  %1083 = load i32, i32* %block_x, align 4
  %1084 = load i32, i32* %i, align 4
  %add1799 = add nsw i32 %1083, %1084
  %idxprom1800 = sext i32 %add1799 to i64
  %1085 = load i32, i32* %c_ipmode, align 4
  %idxprom1801 = sext i32 %1085 to i64
  %1086 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_c1802 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1086, i32 0, i32 44
  %arrayidx1803 = getelementptr inbounds [2 x [4 x [16 x [16 x i16]]]], [2 x [4 x [16 x [16 x i16]]]]* %mprr_c1802, i32 0, i64 1
  %arrayidx1804 = getelementptr inbounds [4 x [16 x [16 x i16]]], [4 x [16 x [16 x i16]]]* %arrayidx1803, i32 0, i64 %idxprom1801
  %arrayidx1805 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %arrayidx1804, i32 0, i64 %idxprom1800
  %arrayidx1806 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1805, i32 0, i64 %idxprom1798
  %1087 = load i16, i16* %arrayidx1806, align 2
  %conv1807 = zext i16 %1087 to i32
  %add1808 = add nsw i32 %1080, %conv1807
  br label %cond.end.1809

cond.end.1809:                                    ; preds = %cond.false.1796, %cond.true.1795
  %cond1810 = phi i32 [ 0, %cond.true.1795 ], [ %add1808, %cond.false.1796 ]
  br label %cond.end.1811

cond.end.1811:                                    ; preds = %cond.end.1809, %cond.true.1778
  %cond1812 = phi i32 [ %1071, %cond.true.1778 ], [ %cond1810, %cond.end.1809 ]
  %conv1813 = trunc i32 %cond1812 to i16
  %1088 = load i32, i32* %pic_pix_x, align 4
  %1089 = load i32, i32* %i, align 4
  %add1814 = add nsw i32 %1088, %1089
  %idxprom1815 = sext i32 %add1814 to i64
  %1090 = load i32, i32* %pic_pix_y, align 4
  %1091 = load i32, i32* %j, align 4
  %add1816 = add nsw i32 %1090, %1091
  %idxprom1817 = sext i32 %add1816 to i64
  %1092 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV1818 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1092, i32 0, i32 30
  %1093 = load i16***, i16**** %imgUV1818, align 8
  %arrayidx1819 = getelementptr inbounds i16**, i16*** %1093, i64 1
  %1094 = load i16**, i16*** %arrayidx1819, align 8
  %arrayidx1820 = getelementptr inbounds i16*, i16** %1094, i64 %idxprom1817
  %1095 = load i16*, i16** %arrayidx1820, align 8
  %arrayidx1821 = getelementptr inbounds i16, i16* %1095, i64 %idxprom1815
  store i16 %conv1813, i16* %arrayidx1821, align 2
  br label %for.inc.1822

for.inc.1822:                                     ; preds = %cond.end.1811
  %1096 = load i32, i32* %i, align 4
  %inc1823 = add nsw i32 %1096, 1
  store i32 %inc1823, i32* %i, align 4
  br label %for.cond.1574

for.end.1824:                                     ; preds = %for.cond.1574
  br label %for.inc.1825

for.inc.1825:                                     ; preds = %for.end.1824
  %1097 = load i32, i32* %j, align 4
  %inc1826 = add nsw i32 %1097, 1
  store i32 %inc1826, i32* %j, align 4
  br label %for.cond.1570

for.end.1827:                                     ; preds = %for.cond.1570
  br label %if.end.1828

if.end.1828:                                      ; preds = %for.end.1827, %for.end.1237
  br label %if.end.2034

if.else.1829:                                     ; preds = %for.end.1182
  store i32 0, i32* %j, align 4
  br label %for.cond.1830

for.cond.1830:                                    ; preds = %for.inc.1865, %if.else.1829
  %1098 = load i32, i32* %j, align 4
  %cmp1831 = icmp slt i32 %1098, 2
  br i1 %cmp1831, label %for.body.1833, label %for.end.1867

for.body.1833:                                    ; preds = %for.cond.1830
  store i32 0, i32* %i, align 4
  br label %for.cond.1834

for.cond.1834:                                    ; preds = %for.inc.1862, %for.body.1833
  %1099 = load i32, i32* %i, align 4
  %cmp1835 = icmp slt i32 %1099, 65
  br i1 %cmp1835, label %for.body.1837, label %for.end.1864

for.body.1837:                                    ; preds = %for.cond.1834
  store i32 0, i32* %k, align 4
  br label %for.cond.1838

for.cond.1838:                                    ; preds = %for.inc.1859, %for.body.1837
  %1100 = load i32, i32* %k, align 4
  %cmp1839 = icmp slt i32 %1100, 4
  br i1 %cmp1839, label %for.body.1841, label %for.end.1861

for.body.1841:                                    ; preds = %for.cond.1838
  %1101 = load i32, i32* %i, align 4
  %idxprom1842 = sext i32 %1101 to i64
  %1102 = load i32, i32* %j, align 4
  %idxprom1843 = sext i32 %1102 to i64
  %1103 = load i32, i32* %k, align 4
  %idxprom1844 = sext i32 %1103 to i64
  %1104 = load i32, i32* %b8.addr, align 4
  %idxprom1845 = sext i32 %1104 to i64
  %1105 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx1846 = getelementptr inbounds i32***, i32**** %1105, i64 %idxprom1845
  %1106 = load i32***, i32**** %arrayidx1846, align 8
  %arrayidx1847 = getelementptr inbounds i32**, i32*** %1106, i64 %idxprom1844
  %1107 = load i32**, i32*** %arrayidx1847, align 8
  %arrayidx1848 = getelementptr inbounds i32*, i32** %1107, i64 %idxprom1843
  %1108 = load i32*, i32** %arrayidx1848, align 8
  %arrayidx1849 = getelementptr inbounds i32, i32* %1108, i64 %idxprom1842
  %1109 = load i32, i32* %arrayidx1849, align 4
  %1110 = load i32, i32* %i, align 4
  %idxprom1850 = sext i32 %1110 to i64
  %1111 = load i32, i32* %j, align 4
  %idxprom1851 = sext i32 %1111 to i64
  %1112 = load i32, i32* %k, align 4
  %idxprom1852 = sext i32 %1112 to i64
  %1113 = load i32, i32* %b8.addr, align 4
  %idxprom1853 = sext i32 %1113 to i64
  %1114 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC1854 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1114, i32 0, i32 47
  %1115 = load i32****, i32***** %cofAC1854, align 8
  %arrayidx1855 = getelementptr inbounds i32***, i32**** %1115, i64 %idxprom1853
  %1116 = load i32***, i32**** %arrayidx1855, align 8
  %arrayidx1856 = getelementptr inbounds i32**, i32*** %1116, i64 %idxprom1852
  %1117 = load i32**, i32*** %arrayidx1856, align 8
  %arrayidx1857 = getelementptr inbounds i32*, i32** %1117, i64 %idxprom1851
  %1118 = load i32*, i32** %arrayidx1857, align 8
  %arrayidx1858 = getelementptr inbounds i32, i32* %1118, i64 %idxprom1850
  store i32 %1109, i32* %arrayidx1858, align 4
  br label %for.inc.1859

for.inc.1859:                                     ; preds = %for.body.1841
  %1119 = load i32, i32* %k, align 4
  %inc1860 = add nsw i32 %1119, 1
  store i32 %inc1860, i32* %k, align 4
  br label %for.cond.1838

for.end.1861:                                     ; preds = %for.cond.1838
  br label %for.inc.1862

for.inc.1862:                                     ; preds = %for.end.1861
  %1120 = load i32, i32* %i, align 4
  %inc1863 = add nsw i32 %1120, 1
  store i32 %inc1863, i32* %i, align 4
  br label %for.cond.1834

for.end.1864:                                     ; preds = %for.cond.1834
  br label %for.inc.1865

for.inc.1865:                                     ; preds = %for.end.1864
  %1121 = load i32, i32* %j, align 4
  %inc1866 = add nsw i32 %1121, 1
  store i32 %inc1866, i32* %j, align 4
  br label %for.cond.1830

for.end.1867:                                     ; preds = %for.cond.1830
  %1122 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag1868 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1122, i32 0, i32 164
  %1123 = load i32, i32* %residue_transform_flag1868, align 4
  %tobool1869 = icmp ne i32 %1123, 0
  br i1 %tobool1869, label %if.then.1870, label %if.end.1938

if.then.1870:                                     ; preds = %for.end.1867
  store i32 0, i32* %b4, align 4
  br label %for.cond.1871

for.cond.1871:                                    ; preds = %for.inc.1935, %if.then.1870
  %1124 = load i32, i32* %b4, align 4
  %cmp1872 = icmp slt i32 %1124, 4
  br i1 %cmp1872, label %for.body.1874, label %for.end.1937

for.body.1874:                                    ; preds = %for.cond.1871
  store i32 0, i32* %j, align 4
  br label %for.cond.1875

for.cond.1875:                                    ; preds = %for.inc.1902, %for.body.1874
  %1125 = load i32, i32* %j, align 4
  %cmp1876 = icmp slt i32 %1125, 2
  br i1 %cmp1876, label %for.body.1878, label %for.end.1904

for.body.1878:                                    ; preds = %for.cond.1875
  store i32 0, i32* %i, align 4
  br label %for.cond.1879

for.cond.1879:                                    ; preds = %for.inc.1899, %for.body.1878
  %1126 = load i32, i32* %i, align 4
  %cmp1880 = icmp slt i32 %1126, 18
  br i1 %cmp1880, label %for.body.1882, label %for.end.1901

for.body.1882:                                    ; preds = %for.cond.1879
  %1127 = load i32, i32* %i, align 4
  %idxprom1883 = sext i32 %1127 to i64
  %1128 = load i32, i32* %j, align 4
  %idxprom1884 = sext i32 %1128 to i64
  %1129 = load i32, i32* %b4, align 4
  %idxprom1885 = sext i32 %1129 to i64
  %arrayidx1886 = getelementptr inbounds [4 x [2 x [18 x i32]]], [4 x [2 x [18 x i32]]]* getelementptr inbounds ([2 x [4 x [2 x [18 x i32]]]], [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i32 0, i64 0), i32 0, i64 %idxprom1885
  %arrayidx1887 = getelementptr inbounds [2 x [18 x i32]], [2 x [18 x i32]]* %arrayidx1886, i32 0, i64 %idxprom1884
  %arrayidx1888 = getelementptr inbounds [18 x i32], [18 x i32]* %arrayidx1887, i32 0, i64 %idxprom1883
  %1130 = load i32, i32* %arrayidx1888, align 4
  %1131 = load i32, i32* %i, align 4
  %idxprom1889 = sext i32 %1131 to i64
  %1132 = load i32, i32* %j, align 4
  %idxprom1890 = sext i32 %1132 to i64
  %1133 = load i32, i32* %b4, align 4
  %idxprom1891 = sext i32 %1133 to i64
  %1134 = load i32, i32* %b8.addr, align 4
  %add1892 = add nsw i32 %1134, 4
  %idxprom1893 = sext i32 %add1892 to i64
  %1135 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC1894 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1135, i32 0, i32 47
  %1136 = load i32****, i32***** %cofAC1894, align 8
  %arrayidx1895 = getelementptr inbounds i32***, i32**** %1136, i64 %idxprom1893
  %1137 = load i32***, i32**** %arrayidx1895, align 8
  %arrayidx1896 = getelementptr inbounds i32**, i32*** %1137, i64 %idxprom1891
  %1138 = load i32**, i32*** %arrayidx1896, align 8
  %arrayidx1897 = getelementptr inbounds i32*, i32** %1138, i64 %idxprom1890
  %1139 = load i32*, i32** %arrayidx1897, align 8
  %arrayidx1898 = getelementptr inbounds i32, i32* %1139, i64 %idxprom1889
  store i32 %1130, i32* %arrayidx1898, align 4
  br label %for.inc.1899

for.inc.1899:                                     ; preds = %for.body.1882
  %1140 = load i32, i32* %i, align 4
  %inc1900 = add nsw i32 %1140, 1
  store i32 %inc1900, i32* %i, align 4
  br label %for.cond.1879

for.end.1901:                                     ; preds = %for.cond.1879
  br label %for.inc.1902

for.inc.1902:                                     ; preds = %for.end.1901
  %1141 = load i32, i32* %j, align 4
  %inc1903 = add nsw i32 %1141, 1
  store i32 %inc1903, i32* %j, align 4
  br label %for.cond.1875

for.end.1904:                                     ; preds = %for.cond.1875
  store i32 0, i32* %j, align 4
  br label %for.cond.1905

for.cond.1905:                                    ; preds = %for.inc.1932, %for.end.1904
  %1142 = load i32, i32* %j, align 4
  %cmp1906 = icmp slt i32 %1142, 2
  br i1 %cmp1906, label %for.body.1908, label %for.end.1934

for.body.1908:                                    ; preds = %for.cond.1905
  store i32 0, i32* %i, align 4
  br label %for.cond.1909

for.cond.1909:                                    ; preds = %for.inc.1929, %for.body.1908
  %1143 = load i32, i32* %i, align 4
  %cmp1910 = icmp slt i32 %1143, 18
  br i1 %cmp1910, label %for.body.1912, label %for.end.1931

for.body.1912:                                    ; preds = %for.cond.1909
  %1144 = load i32, i32* %i, align 4
  %idxprom1913 = sext i32 %1144 to i64
  %1145 = load i32, i32* %j, align 4
  %idxprom1914 = sext i32 %1145 to i64
  %1146 = load i32, i32* %b4, align 4
  %idxprom1915 = sext i32 %1146 to i64
  %arrayidx1916 = getelementptr inbounds [4 x [2 x [18 x i32]]], [4 x [2 x [18 x i32]]]* getelementptr inbounds ([2 x [4 x [2 x [18 x i32]]]], [2 x [4 x [2 x [18 x i32]]]]* @cofAC8x8_chroma, i32 0, i64 1), i32 0, i64 %idxprom1915
  %arrayidx1917 = getelementptr inbounds [2 x [18 x i32]], [2 x [18 x i32]]* %arrayidx1916, i32 0, i64 %idxprom1914
  %arrayidx1918 = getelementptr inbounds [18 x i32], [18 x i32]* %arrayidx1917, i32 0, i64 %idxprom1913
  %1147 = load i32, i32* %arrayidx1918, align 4
  %1148 = load i32, i32* %i, align 4
  %idxprom1919 = sext i32 %1148 to i64
  %1149 = load i32, i32* %j, align 4
  %idxprom1920 = sext i32 %1149 to i64
  %1150 = load i32, i32* %b4, align 4
  %idxprom1921 = sext i32 %1150 to i64
  %1151 = load i32, i32* %b8.addr, align 4
  %add1922 = add nsw i32 %1151, 8
  %idxprom1923 = sext i32 %add1922 to i64
  %1152 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC1924 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1152, i32 0, i32 47
  %1153 = load i32****, i32***** %cofAC1924, align 8
  %arrayidx1925 = getelementptr inbounds i32***, i32**** %1153, i64 %idxprom1923
  %1154 = load i32***, i32**** %arrayidx1925, align 8
  %arrayidx1926 = getelementptr inbounds i32**, i32*** %1154, i64 %idxprom1921
  %1155 = load i32**, i32*** %arrayidx1926, align 8
  %arrayidx1927 = getelementptr inbounds i32*, i32** %1155, i64 %idxprom1920
  %1156 = load i32*, i32** %arrayidx1927, align 8
  %arrayidx1928 = getelementptr inbounds i32, i32* %1156, i64 %idxprom1919
  store i32 %1147, i32* %arrayidx1928, align 4
  br label %for.inc.1929

for.inc.1929:                                     ; preds = %for.body.1912
  %1157 = load i32, i32* %i, align 4
  %inc1930 = add nsw i32 %1157, 1
  store i32 %inc1930, i32* %i, align 4
  br label %for.cond.1909

for.end.1931:                                     ; preds = %for.cond.1909
  br label %for.inc.1932

for.inc.1932:                                     ; preds = %for.end.1931
  %1158 = load i32, i32* %j, align 4
  %inc1933 = add nsw i32 %1158, 1
  store i32 %inc1933, i32* %j, align 4
  br label %for.cond.1905

for.end.1934:                                     ; preds = %for.cond.1905
  br label %for.inc.1935

for.inc.1935:                                     ; preds = %for.end.1934
  %1159 = load i32, i32* %b4, align 4
  %inc1936 = add nsw i32 %1159, 1
  store i32 %inc1936, i32* %b4, align 4
  br label %for.cond.1871

for.end.1937:                                     ; preds = %for.cond.1871
  br label %if.end.1938

if.end.1938:                                      ; preds = %for.end.1937, %for.end.1867
  store i32 0, i32* %y, align 4
  br label %for.cond.1939

for.cond.1939:                                    ; preds = %for.inc.1975, %if.end.1938
  %1160 = load i32, i32* %y, align 4
  %cmp1940 = icmp slt i32 %1160, 8
  br i1 %cmp1940, label %for.body.1942, label %for.end.1977

for.body.1942:                                    ; preds = %for.cond.1939
  store i32 0, i32* %x, align 4
  br label %for.cond.1943

for.cond.1943:                                    ; preds = %for.inc.1972, %for.body.1942
  %1161 = load i32, i32* %x, align 4
  %cmp1944 = icmp slt i32 %1161, 8
  br i1 %cmp1944, label %for.body.1946, label %for.end.1974

for.body.1946:                                    ; preds = %for.cond.1943
  %1162 = load i32, i32* %x, align 4
  %idxprom1947 = sext i32 %1162 to i64
  %1163 = load i32, i32* %y, align 4
  %idxprom1948 = sext i32 %1163 to i64
  %arrayidx1949 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %rec8x8, i32 0, i64 %idxprom1948
  %arrayidx1950 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1949, i32 0, i64 %idxprom1947
  %1164 = load i16, i16* %arrayidx1950, align 2
  %1165 = load i32, i32* %pic_pix_x, align 4
  %1166 = load i32, i32* %x, align 4
  %add1951 = add nsw i32 %1165, %1166
  %idxprom1952 = sext i32 %add1951 to i64
  %1167 = load i32, i32* %pic_pix_y, align 4
  %1168 = load i32, i32* %y, align 4
  %add1953 = add nsw i32 %1167, %1168
  %idxprom1954 = sext i32 %add1953 to i64
  %1169 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY1955 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1169, i32 0, i32 25
  %1170 = load i16**, i16*** %imgY1955, align 8
  %arrayidx1956 = getelementptr inbounds i16*, i16** %1170, i64 %idxprom1954
  %1171 = load i16*, i16** %arrayidx1956, align 8
  %arrayidx1957 = getelementptr inbounds i16, i16* %1171, i64 %idxprom1952
  store i16 %1164, i16* %arrayidx1957, align 2
  %1172 = load i32, i32* %x, align 4
  %idxprom1958 = sext i32 %1172 to i64
  %1173 = load i32, i32* %y, align 4
  %idxprom1959 = sext i32 %1173 to i64
  %1174 = load i32, i32* %best_ipmode, align 4
  %idxprom1960 = sext i32 %1174 to i64
  %1175 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31961 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1175, i32 0, i32 43
  %arrayidx1962 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31961, i32 0, i64 %idxprom1960
  %arrayidx1963 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1962, i32 0, i64 %idxprom1959
  %arrayidx1964 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1963, i32 0, i64 %idxprom1958
  %1176 = load i16, i16* %arrayidx1964, align 2
  %1177 = load i32, i32* %block_y, align 4
  %1178 = load i32, i32* %y, align 4
  %add1965 = add nsw i32 %1177, %1178
  %idxprom1966 = sext i32 %add1965 to i64
  %1179 = load i32, i32* %block_x, align 4
  %1180 = load i32, i32* %x, align 4
  %add1967 = add nsw i32 %1179, %1180
  %idxprom1968 = sext i32 %add1967 to i64
  %1181 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1969 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1181, i32 0, i32 45
  %arrayidx1970 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1969, i32 0, i64 %idxprom1968
  %arrayidx1971 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1970, i32 0, i64 %idxprom1966
  store i16 %1176, i16* %arrayidx1971, align 2
  br label %for.inc.1972

for.inc.1972:                                     ; preds = %for.body.1946
  %1182 = load i32, i32* %x, align 4
  %inc1973 = add nsw i32 %1182, 1
  store i32 %inc1973, i32* %x, align 4
  br label %for.cond.1943

for.end.1974:                                     ; preds = %for.cond.1943
  br label %for.inc.1975

for.inc.1975:                                     ; preds = %for.end.1974
  %1183 = load i32, i32* %y, align 4
  %inc1976 = add nsw i32 %1183, 1
  store i32 %inc1976, i32* %y, align 4
  br label %for.cond.1939

for.end.1977:                                     ; preds = %for.cond.1939
  %1184 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag1978 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %1184, i32 0, i32 164
  %1185 = load i32, i32* %residue_transform_flag1978, align 4
  %tobool1979 = icmp ne i32 %1185, 0
  br i1 %tobool1979, label %if.then.1980, label %if.end.2033

if.then.1980:                                     ; preds = %for.end.1977
  store i32 0, i32* %b4, align 4
  br label %for.cond.1981

for.cond.1981:                                    ; preds = %for.inc.2030, %if.then.1980
  %1186 = load i32, i32* %b4, align 4
  %cmp1982 = icmp slt i32 %1186, 4
  br i1 %cmp1982, label %for.body.1984, label %for.end.2032

for.body.1984:                                    ; preds = %for.cond.1981
  %1187 = load i32, i32* %b4, align 4
  %rem1985 = srem i32 %1187, 2
  %mul1986 = mul nsw i32 4, %rem1985
  store i32 %mul1986, i32* %block4x4_x, align 4
  %1188 = load i32, i32* %b4, align 4
  %div1987 = sdiv i32 %1188, 2
  %mul1988 = mul nsw i32 4, %div1987
  store i32 %mul1988, i32* %block4x4_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1989

for.cond.1989:                                    ; preds = %for.inc.2027, %for.body.1984
  %1189 = load i32, i32* %i, align 4
  %cmp1990 = icmp slt i32 %1189, 2
  br i1 %cmp1990, label %for.body.1992, label %for.end.2029

for.body.1992:                                    ; preds = %for.cond.1989
  store i32 0, i32* %y, align 4
  br label %for.cond.1993

for.cond.1993:                                    ; preds = %for.inc.2024, %for.body.1992
  %1190 = load i32, i32* %y, align 4
  %cmp1994 = icmp slt i32 %1190, 4
  br i1 %cmp1994, label %for.body.1996, label %for.end.2026

for.body.1996:                                    ; preds = %for.cond.1993
  store i32 0, i32* %x, align 4
  br label %for.cond.1997

for.cond.1997:                                    ; preds = %for.inc.2021, %for.body.1996
  %1191 = load i32, i32* %x, align 4
  %cmp1998 = icmp slt i32 %1191, 4
  br i1 %cmp1998, label %for.body.2000, label %for.end.2023

for.body.2000:                                    ; preds = %for.cond.1997
  %1192 = load i32, i32* %x, align 4
  %idxprom2001 = sext i32 %1192 to i64
  %1193 = load i32, i32* %y, align 4
  %idxprom2002 = sext i32 %1193 to i64
  %1194 = load i32, i32* %b4, align 4
  %idxprom2003 = sext i32 %1194 to i64
  %1195 = load i32, i32* %i, align 4
  %idxprom2004 = sext i32 %1195 to i64
  %arrayidx2005 = getelementptr inbounds [2 x [4 x [4 x [4 x i32]]]], [2 x [4 x [4 x [4 x i32]]]]* %rec8x8_c, i32 0, i64 %idxprom2004
  %arrayidx2006 = getelementptr inbounds [4 x [4 x [4 x i32]]], [4 x [4 x [4 x i32]]]* %arrayidx2005, i32 0, i64 %idxprom2003
  %arrayidx2007 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %arrayidx2006, i32 0, i64 %idxprom2002
  %arrayidx2008 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx2007, i32 0, i64 %idxprom2001
  %1196 = load i32, i32* %arrayidx2008, align 4
  %conv2009 = trunc i32 %1196 to i16
  %1197 = load i32, i32* %pic_pix_x, align 4
  %1198 = load i32, i32* %x, align 4
  %add2010 = add nsw i32 %1197, %1198
  %1199 = load i32, i32* %block4x4_x, align 4
  %add2011 = add nsw i32 %add2010, %1199
  %idxprom2012 = sext i32 %add2011 to i64
  %1200 = load i32, i32* %pic_pix_y, align 4
  %1201 = load i32, i32* %y, align 4
  %add2013 = add nsw i32 %1200, %1201
  %1202 = load i32, i32* %block4x4_y, align 4
  %add2014 = add nsw i32 %add2013, %1202
  %idxprom2015 = sext i32 %add2014 to i64
  %1203 = load i32, i32* %i, align 4
  %idxprom2016 = sext i32 %1203 to i64
  %1204 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgUV2017 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %1204, i32 0, i32 30
  %1205 = load i16***, i16**** %imgUV2017, align 8
  %arrayidx2018 = getelementptr inbounds i16**, i16*** %1205, i64 %idxprom2016
  %1206 = load i16**, i16*** %arrayidx2018, align 8
  %arrayidx2019 = getelementptr inbounds i16*, i16** %1206, i64 %idxprom2015
  %1207 = load i16*, i16** %arrayidx2019, align 8
  %arrayidx2020 = getelementptr inbounds i16, i16* %1207, i64 %idxprom2012
  store i16 %conv2009, i16* %arrayidx2020, align 2
  br label %for.inc.2021

for.inc.2021:                                     ; preds = %for.body.2000
  %1208 = load i32, i32* %x, align 4
  %inc2022 = add nsw i32 %1208, 1
  store i32 %inc2022, i32* %x, align 4
  br label %for.cond.1997

for.end.2023:                                     ; preds = %for.cond.1997
  br label %for.inc.2024

for.inc.2024:                                     ; preds = %for.end.2023
  %1209 = load i32, i32* %y, align 4
  %inc2025 = add nsw i32 %1209, 1
  store i32 %inc2025, i32* %y, align 4
  br label %for.cond.1993

for.end.2026:                                     ; preds = %for.cond.1993
  br label %for.inc.2027

for.inc.2027:                                     ; preds = %for.end.2026
  %1210 = load i32, i32* %i, align 4
  %inc2028 = add nsw i32 %1210, 1
  store i32 %inc2028, i32* %i, align 4
  br label %for.cond.1989

for.end.2029:                                     ; preds = %for.cond.1989
  br label %for.inc.2030

for.inc.2030:                                     ; preds = %for.end.2029
  %1211 = load i32, i32* %b4, align 4
  %inc2031 = add nsw i32 %1211, 1
  store i32 %inc2031, i32* %b4, align 4
  br label %for.cond.1981

for.end.2032:                                     ; preds = %for.cond.1981
  br label %if.end.2033

if.end.2033:                                      ; preds = %for.end.2032, %for.end.1977
  br label %if.end.2034

if.end.2034:                                      ; preds = %if.end.2033, %if.end.1828
  %1212 = load i32, i32* %nonzero, align 4
  ret i32 %1212
}

declare void @getLuma4x4Neighbour(i32, i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind uwtable
define void @intrapred_luma8x8(i32 %img_x, i32 %img_y, i32* %left_available, i32* %up_available, i32* %all_available) #0 {
entry:
  %img_x.addr = alloca i32, align 4
  %img_y.addr = alloca i32, align 4
  %left_available.addr = alloca i32*, align 8
  %up_available.addr = alloca i32*, align 8
  %all_available.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s0 = alloca i32, align 4
  %PredPel = alloca [25 x i32], align 16
  %imgY = alloca i16**, align 8
  %ioff = alloca i32, align 4
  %joff = alloca i32, align 4
  %mb_nr = alloca i32, align 4
  %pix_a = alloca [8 x %struct.pix_pos], align 16
  %pix_b = alloca %struct.pix_pos, align 4
  %pix_c = alloca %struct.pix_pos, align 4
  %pix_d = alloca %struct.pix_pos, align 4
  %block_available_up = alloca i32, align 4
  %block_available_left = alloca i32, align 4
  %block_available_up_left = alloca i32, align 4
  %block_available_up_right = alloca i32, align 4
  store i32 %img_x, i32* %img_x.addr, align 4
  store i32 %img_y, i32* %img_y.addr, align 4
  store i32* %left_available, i32** %left_available.addr, align 8
  store i32* %up_available, i32** %up_available.addr, align 8
  store i32* %all_available, i32** %all_available.addr, align 8
  %0 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 25
  %1 = load i16**, i16*** %imgY1, align 8
  store i16** %1, i16*** %imgY, align 8
  %2 = load i32, i32* %img_x.addr, align 4
  %and = and i32 %2, 15
  store i32 %and, i32* %ioff, align 4
  %3 = load i32, i32* %img_y.addr, align 4
  %and2 = and i32 %3, 15
  store i32 %and2, i32* %joff, align 4
  %4 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %4, i32 0, i32 3
  %5 = load i32, i32* %current_mb_nr, align 4
  store i32 %5, i32* %mb_nr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %mb_nr, align 4
  %8 = load i32, i32* %ioff, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load i32, i32* %joff, align 4
  %10 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom
  call void @getNeighbour(i32 %7, i32 %sub, i32 %add, i32 1, %struct.pix_pos* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %mb_nr, align 4
  %14 = load i32, i32* %ioff, align 4
  %15 = load i32, i32* %joff, align 4
  %sub3 = sub nsw i32 %15, 1
  call void @getNeighbour(i32 %13, i32 %14, i32 %sub3, i32 1, %struct.pix_pos* %pix_b)
  %16 = load i32, i32* %mb_nr, align 4
  %17 = load i32, i32* %ioff, align 4
  %add4 = add nsw i32 %17, 8
  %18 = load i32, i32* %joff, align 4
  %sub5 = sub nsw i32 %18, 1
  call void @getNeighbour(i32 %16, i32 %add4, i32 %sub5, i32 1, %struct.pix_pos* %pix_c)
  %19 = load i32, i32* %mb_nr, align 4
  %20 = load i32, i32* %ioff, align 4
  %sub6 = sub nsw i32 %20, 1
  %21 = load i32, i32* %joff, align 4
  %sub7 = sub nsw i32 %21, 1
  call void @getNeighbour(i32 %19, i32 %sub6, i32 %sub7, i32 1, %struct.pix_pos* %pix_d)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %22 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %land.rhs, label %land.end.11

land.rhs:                                         ; preds = %for.end
  %23 = load i32, i32* %ioff, align 4
  %cmp8 = icmp eq i32 %23, 8
  br i1 %cmp8, label %land.rhs.9, label %land.end

land.rhs.9:                                       ; preds = %land.rhs
  %24 = load i32, i32* %joff, align 4
  %cmp10 = icmp eq i32 %24, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs.9, %land.rhs
  %25 = phi i1 [ false, %land.rhs ], [ %cmp10, %land.rhs.9 ]
  %lnot = xor i1 %25, true
  br label %land.end.11

land.end.11:                                      ; preds = %land.end, %for.end
  %26 = phi i1 [ false, %for.end ], [ %lnot, %land.end ]
  %land.ext = zext i1 %26 to i32
  %available12 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  store i32 %land.ext, i32* %available12, align 4
  %27 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %27, i32 0, i32 24
  %28 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool13 = icmp ne i32 %28, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.11
  store i32 0, i32* %i, align 4
  store i32 1, i32* %block_available_left, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.26, %if.then
  %29 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %29, 8
  br i1 %cmp15, label %for.body.16, label %for.end.28

for.body.16:                                      ; preds = %for.cond.14
  %30 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom17
  %available19 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx18, i32 0, i32 0
  %31 = load i32, i32* %available19, align 4
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.16
  %32 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom21
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx22, i32 0, i32 1
  %33 = load i32, i32* %mb_addr, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %34, i32 0, i32 54
  %35 = load i32*, i32** %intra_block, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %35, i64 %idxprom23
  %36 = load i32, i32* %arrayidx24, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ 0, %cond.false ]
  %37 = load i32, i32* %block_available_left, align 4
  %and25 = and i32 %37, %cond
  store i32 %and25, i32* %block_available_left, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %cond.end
  %38 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %38, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.14

for.end.28:                                       ; preds = %for.cond.14
  %available29 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 0
  %39 = load i32, i32* %available29, align 4
  %tobool30 = icmp ne i32 %39, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.36

cond.true.31:                                     ; preds = %for.end.28
  %mb_addr32 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 1
  %40 = load i32, i32* %mb_addr32, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %41, i32 0, i32 54
  %42 = load i32*, i32** %intra_block34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %42, i64 %idxprom33
  %43 = load i32, i32* %arrayidx35, align 4
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.end.28
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.31
  %cond38 = phi i32 [ %43, %cond.true.31 ], [ 0, %cond.false.36 ]
  store i32 %cond38, i32* %block_available_up, align 4
  %available39 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %44 = load i32, i32* %available39, align 4
  %tobool40 = icmp ne i32 %44, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.46

cond.true.41:                                     ; preds = %cond.end.37
  %mb_addr42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 1
  %45 = load i32, i32* %mb_addr42, align 4
  %idxprom43 = sext i32 %45 to i64
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 54
  %47 = load i32*, i32** %intra_block44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %47, i64 %idxprom43
  %48 = load i32, i32* %arrayidx45, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end.37
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.41
  %cond48 = phi i32 [ %48, %cond.true.41 ], [ 0, %cond.false.46 ]
  store i32 %cond48, i32* %block_available_up_right, align 4
  %available49 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 0
  %49 = load i32, i32* %available49, align 4
  %tobool50 = icmp ne i32 %49, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.56

cond.true.51:                                     ; preds = %cond.end.47
  %mb_addr52 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 1
  %50 = load i32, i32* %mb_addr52, align 4
  %idxprom53 = sext i32 %50 to i64
  %51 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %51, i32 0, i32 54
  %52 = load i32*, i32** %intra_block54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %52, i64 %idxprom53
  %53 = load i32, i32* %arrayidx55, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.47
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.51
  %cond58 = phi i32 [ %53, %cond.true.51 ], [ 0, %cond.false.56 ]
  store i32 %cond58, i32* %block_available_up_left, align 4
  br label %if.end

if.else:                                          ; preds = %land.end.11
  %arrayidx59 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %available60 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx59, i32 0, i32 0
  %54 = load i32, i32* %available60, align 4
  store i32 %54, i32* %block_available_left, align 4
  %available61 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 0
  %55 = load i32, i32* %available61, align 4
  store i32 %55, i32* %block_available_up, align 4
  %available62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %56 = load i32, i32* %available62, align 4
  store i32 %56, i32* %block_available_up_right, align 4
  %available63 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 0
  %57 = load i32, i32* %available63, align 4
  store i32 %57, i32* %block_available_up_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.57
  %58 = load i32, i32* %block_available_left, align 4
  %59 = load i32*, i32** %left_available.addr, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %block_available_up, align 4
  %61 = load i32*, i32** %up_available.addr, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %block_available_up, align 4
  %tobool64 = icmp ne i32 %62, 0
  br i1 %tobool64, label %land.lhs.true, label %land.end.68

land.lhs.true:                                    ; preds = %if.end
  %63 = load i32, i32* %block_available_left, align 4
  %tobool65 = icmp ne i32 %63, 0
  br i1 %tobool65, label %land.rhs.66, label %land.end.68

land.rhs.66:                                      ; preds = %land.lhs.true
  %64 = load i32, i32* %block_available_up_left, align 4
  %tobool67 = icmp ne i32 %64, 0
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.66, %land.lhs.true, %if.end
  %65 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool67, %land.rhs.66 ]
  %land.ext69 = zext i1 %65 to i32
  %66 = load i32*, i32** %all_available.addr, align 8
  store i32 %land.ext69, i32* %66, align 4
  %67 = load i32, i32* %img_x.addr, align 4
  %and70 = and i32 %67, 15
  store i32 %and70, i32* %i, align 4
  %68 = load i32, i32* %img_y.addr, align 4
  %and71 = and i32 %68, 15
  store i32 %and71, i32* %j, align 4
  %69 = load i32, i32* %block_available_up, align 4
  %tobool72 = icmp ne i32 %69, 0
  br i1 %tobool72, label %if.then.73, label %if.else.143

if.then.73:                                       ; preds = %land.end.68
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %70 = load i32, i32* %pos_x, align 4
  %add74 = add nsw i32 %70, 0
  %idxprom75 = sext i32 %add74 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %71 = load i32, i32* %pos_y, align 4
  %idxprom76 = sext i32 %71 to i64
  %72 = load i16**, i16*** %imgY, align 8
  %arrayidx77 = getelementptr inbounds i16*, i16** %72, i64 %idxprom76
  %73 = load i16*, i16** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i16, i16* %73, i64 %idxprom75
  %74 = load i16, i16* %arrayidx78, align 2
  %conv = zext i16 %74 to i32
  %arrayidx79 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  store i32 %conv, i32* %arrayidx79, align 4
  %pos_x80 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %75 = load i32, i32* %pos_x80, align 4
  %add81 = add nsw i32 %75, 1
  %idxprom82 = sext i32 %add81 to i64
  %pos_y83 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %76 = load i32, i32* %pos_y83, align 4
  %idxprom84 = sext i32 %76 to i64
  %77 = load i16**, i16*** %imgY, align 8
  %arrayidx85 = getelementptr inbounds i16*, i16** %77, i64 %idxprom84
  %78 = load i16*, i16** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %78, i64 %idxprom82
  %79 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %79 to i32
  %arrayidx88 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  store i32 %conv87, i32* %arrayidx88, align 4
  %pos_x89 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %80 = load i32, i32* %pos_x89, align 4
  %add90 = add nsw i32 %80, 2
  %idxprom91 = sext i32 %add90 to i64
  %pos_y92 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %81 = load i32, i32* %pos_y92, align 4
  %idxprom93 = sext i32 %81 to i64
  %82 = load i16**, i16*** %imgY, align 8
  %arrayidx94 = getelementptr inbounds i16*, i16** %82, i64 %idxprom93
  %83 = load i16*, i16** %arrayidx94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %83, i64 %idxprom91
  %84 = load i16, i16* %arrayidx95, align 2
  %conv96 = zext i16 %84 to i32
  %arrayidx97 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  store i32 %conv96, i32* %arrayidx97, align 4
  %pos_x98 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %85 = load i32, i32* %pos_x98, align 4
  %add99 = add nsw i32 %85, 3
  %idxprom100 = sext i32 %add99 to i64
  %pos_y101 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %86 = load i32, i32* %pos_y101, align 4
  %idxprom102 = sext i32 %86 to i64
  %87 = load i16**, i16*** %imgY, align 8
  %arrayidx103 = getelementptr inbounds i16*, i16** %87, i64 %idxprom102
  %88 = load i16*, i16** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %88, i64 %idxprom100
  %89 = load i16, i16* %arrayidx104, align 2
  %conv105 = zext i16 %89 to i32
  %arrayidx106 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  store i32 %conv105, i32* %arrayidx106, align 4
  %pos_x107 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %90 = load i32, i32* %pos_x107, align 4
  %add108 = add nsw i32 %90, 4
  %idxprom109 = sext i32 %add108 to i64
  %pos_y110 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %91 = load i32, i32* %pos_y110, align 4
  %idxprom111 = sext i32 %91 to i64
  %92 = load i16**, i16*** %imgY, align 8
  %arrayidx112 = getelementptr inbounds i16*, i16** %92, i64 %idxprom111
  %93 = load i16*, i16** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i16, i16* %93, i64 %idxprom109
  %94 = load i16, i16* %arrayidx113, align 2
  %conv114 = zext i16 %94 to i32
  %arrayidx115 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  store i32 %conv114, i32* %arrayidx115, align 4
  %pos_x116 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %95 = load i32, i32* %pos_x116, align 4
  %add117 = add nsw i32 %95, 5
  %idxprom118 = sext i32 %add117 to i64
  %pos_y119 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %96 = load i32, i32* %pos_y119, align 4
  %idxprom120 = sext i32 %96 to i64
  %97 = load i16**, i16*** %imgY, align 8
  %arrayidx121 = getelementptr inbounds i16*, i16** %97, i64 %idxprom120
  %98 = load i16*, i16** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i16, i16* %98, i64 %idxprom118
  %99 = load i16, i16* %arrayidx122, align 2
  %conv123 = zext i16 %99 to i32
  %arrayidx124 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  store i32 %conv123, i32* %arrayidx124, align 4
  %pos_x125 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %100 = load i32, i32* %pos_x125, align 4
  %add126 = add nsw i32 %100, 6
  %idxprom127 = sext i32 %add126 to i64
  %pos_y128 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %101 = load i32, i32* %pos_y128, align 4
  %idxprom129 = sext i32 %101 to i64
  %102 = load i16**, i16*** %imgY, align 8
  %arrayidx130 = getelementptr inbounds i16*, i16** %102, i64 %idxprom129
  %103 = load i16*, i16** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i16, i16* %103, i64 %idxprom127
  %104 = load i16, i16* %arrayidx131, align 2
  %conv132 = zext i16 %104 to i32
  %arrayidx133 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  store i32 %conv132, i32* %arrayidx133, align 4
  %pos_x134 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %105 = load i32, i32* %pos_x134, align 4
  %add135 = add nsw i32 %105, 7
  %idxprom136 = sext i32 %add135 to i64
  %pos_y137 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %106 = load i32, i32* %pos_y137, align 4
  %idxprom138 = sext i32 %106 to i64
  %107 = load i16**, i16*** %imgY, align 8
  %arrayidx139 = getelementptr inbounds i16*, i16** %107, i64 %idxprom138
  %108 = load i16*, i16** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %108, i64 %idxprom136
  %109 = load i16, i16* %arrayidx140, align 2
  %conv141 = zext i16 %109 to i32
  %arrayidx142 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  store i32 %conv141, i32* %arrayidx142, align 4
  br label %if.end.152

if.else.143:                                      ; preds = %land.end.68
  %110 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %110, i32 0, i32 154
  %111 = load i32, i32* %dc_pred_value, align 4
  %arrayidx144 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  store i32 %111, i32* %arrayidx144, align 4
  %arrayidx145 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  store i32 %111, i32* %arrayidx145, align 4
  %arrayidx146 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  store i32 %111, i32* %arrayidx146, align 4
  %arrayidx147 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  store i32 %111, i32* %arrayidx147, align 4
  %arrayidx148 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  store i32 %111, i32* %arrayidx148, align 4
  %arrayidx149 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  store i32 %111, i32* %arrayidx149, align 4
  %arrayidx150 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  store i32 %111, i32* %arrayidx150, align 4
  %arrayidx151 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  store i32 %111, i32* %arrayidx151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.143, %if.then.73
  %112 = load i32, i32* %block_available_up_right, align 4
  %tobool153 = icmp ne i32 %112, 0
  br i1 %tobool153, label %if.then.154, label %if.else.227

if.then.154:                                      ; preds = %if.end.152
  %pos_x155 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %113 = load i32, i32* %pos_x155, align 4
  %add156 = add nsw i32 %113, 0
  %idxprom157 = sext i32 %add156 to i64
  %pos_y158 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %114 = load i32, i32* %pos_y158, align 4
  %idxprom159 = sext i32 %114 to i64
  %115 = load i16**, i16*** %imgY, align 8
  %arrayidx160 = getelementptr inbounds i16*, i16** %115, i64 %idxprom159
  %116 = load i16*, i16** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %116, i64 %idxprom157
  %117 = load i16, i16* %arrayidx161, align 2
  %conv162 = zext i16 %117 to i32
  %arrayidx163 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  store i32 %conv162, i32* %arrayidx163, align 4
  %pos_x164 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %118 = load i32, i32* %pos_x164, align 4
  %add165 = add nsw i32 %118, 1
  %idxprom166 = sext i32 %add165 to i64
  %pos_y167 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %119 = load i32, i32* %pos_y167, align 4
  %idxprom168 = sext i32 %119 to i64
  %120 = load i16**, i16*** %imgY, align 8
  %arrayidx169 = getelementptr inbounds i16*, i16** %120, i64 %idxprom168
  %121 = load i16*, i16** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i16, i16* %121, i64 %idxprom166
  %122 = load i16, i16* %arrayidx170, align 2
  %conv171 = zext i16 %122 to i32
  %arrayidx172 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  store i32 %conv171, i32* %arrayidx172, align 4
  %pos_x173 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %123 = load i32, i32* %pos_x173, align 4
  %add174 = add nsw i32 %123, 2
  %idxprom175 = sext i32 %add174 to i64
  %pos_y176 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %124 = load i32, i32* %pos_y176, align 4
  %idxprom177 = sext i32 %124 to i64
  %125 = load i16**, i16*** %imgY, align 8
  %arrayidx178 = getelementptr inbounds i16*, i16** %125, i64 %idxprom177
  %126 = load i16*, i16** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds i16, i16* %126, i64 %idxprom175
  %127 = load i16, i16* %arrayidx179, align 2
  %conv180 = zext i16 %127 to i32
  %arrayidx181 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  store i32 %conv180, i32* %arrayidx181, align 4
  %pos_x182 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %128 = load i32, i32* %pos_x182, align 4
  %add183 = add nsw i32 %128, 3
  %idxprom184 = sext i32 %add183 to i64
  %pos_y185 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %129 = load i32, i32* %pos_y185, align 4
  %idxprom186 = sext i32 %129 to i64
  %130 = load i16**, i16*** %imgY, align 8
  %arrayidx187 = getelementptr inbounds i16*, i16** %130, i64 %idxprom186
  %131 = load i16*, i16** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i16, i16* %131, i64 %idxprom184
  %132 = load i16, i16* %arrayidx188, align 2
  %conv189 = zext i16 %132 to i32
  %arrayidx190 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  store i32 %conv189, i32* %arrayidx190, align 4
  %pos_x191 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %133 = load i32, i32* %pos_x191, align 4
  %add192 = add nsw i32 %133, 4
  %idxprom193 = sext i32 %add192 to i64
  %pos_y194 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %134 = load i32, i32* %pos_y194, align 4
  %idxprom195 = sext i32 %134 to i64
  %135 = load i16**, i16*** %imgY, align 8
  %arrayidx196 = getelementptr inbounds i16*, i16** %135, i64 %idxprom195
  %136 = load i16*, i16** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i16, i16* %136, i64 %idxprom193
  %137 = load i16, i16* %arrayidx197, align 2
  %conv198 = zext i16 %137 to i32
  %arrayidx199 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 13
  store i32 %conv198, i32* %arrayidx199, align 4
  %pos_x200 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %138 = load i32, i32* %pos_x200, align 4
  %add201 = add nsw i32 %138, 5
  %idxprom202 = sext i32 %add201 to i64
  %pos_y203 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %139 = load i32, i32* %pos_y203, align 4
  %idxprom204 = sext i32 %139 to i64
  %140 = load i16**, i16*** %imgY, align 8
  %arrayidx205 = getelementptr inbounds i16*, i16** %140, i64 %idxprom204
  %141 = load i16*, i16** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds i16, i16* %141, i64 %idxprom202
  %142 = load i16, i16* %arrayidx206, align 2
  %conv207 = zext i16 %142 to i32
  %arrayidx208 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 14
  store i32 %conv207, i32* %arrayidx208, align 4
  %pos_x209 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %143 = load i32, i32* %pos_x209, align 4
  %add210 = add nsw i32 %143, 6
  %idxprom211 = sext i32 %add210 to i64
  %pos_y212 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %144 = load i32, i32* %pos_y212, align 4
  %idxprom213 = sext i32 %144 to i64
  %145 = load i16**, i16*** %imgY, align 8
  %arrayidx214 = getelementptr inbounds i16*, i16** %145, i64 %idxprom213
  %146 = load i16*, i16** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i16, i16* %146, i64 %idxprom211
  %147 = load i16, i16* %arrayidx215, align 2
  %conv216 = zext i16 %147 to i32
  %arrayidx217 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 15
  store i32 %conv216, i32* %arrayidx217, align 4
  %pos_x218 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %148 = load i32, i32* %pos_x218, align 4
  %add219 = add nsw i32 %148, 7
  %idxprom220 = sext i32 %add219 to i64
  %pos_y221 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %149 = load i32, i32* %pos_y221, align 4
  %idxprom222 = sext i32 %149 to i64
  %150 = load i16**, i16*** %imgY, align 8
  %arrayidx223 = getelementptr inbounds i16*, i16** %150, i64 %idxprom222
  %151 = load i16*, i16** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i16, i16* %151, i64 %idxprom220
  %152 = load i16, i16* %arrayidx224, align 2
  %conv225 = zext i16 %152 to i32
  %arrayidx226 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 16
  store i32 %conv225, i32* %arrayidx226, align 4
  br label %if.end.237

if.else.227:                                      ; preds = %if.end.152
  %arrayidx228 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %153 = load i32, i32* %arrayidx228, align 4
  %arrayidx229 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 16
  store i32 %153, i32* %arrayidx229, align 4
  %arrayidx230 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 15
  store i32 %153, i32* %arrayidx230, align 4
  %arrayidx231 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 14
  store i32 %153, i32* %arrayidx231, align 4
  %arrayidx232 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 13
  store i32 %153, i32* %arrayidx232, align 4
  %arrayidx233 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  store i32 %153, i32* %arrayidx233, align 4
  %arrayidx234 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  store i32 %153, i32* %arrayidx234, align 4
  %arrayidx235 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  store i32 %153, i32* %arrayidx235, align 4
  %arrayidx236 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  store i32 %153, i32* %arrayidx236, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.227, %if.then.154
  %154 = load i32, i32* %block_available_left, align 4
  %tobool238 = icmp ne i32 %154, 0
  br i1 %tobool238, label %if.then.239, label %if.else.320

if.then.239:                                      ; preds = %if.end.237
  %arrayidx240 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %pos_x241 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx240, i32 0, i32 4
  %155 = load i32, i32* %pos_x241, align 4
  %idxprom242 = sext i32 %155 to i64
  %arrayidx243 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %pos_y244 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx243, i32 0, i32 5
  %156 = load i32, i32* %pos_y244, align 4
  %idxprom245 = sext i32 %156 to i64
  %157 = load i16**, i16*** %imgY, align 8
  %arrayidx246 = getelementptr inbounds i16*, i16** %157, i64 %idxprom245
  %158 = load i16*, i16** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i16, i16* %158, i64 %idxprom242
  %159 = load i16, i16* %arrayidx247, align 2
  %conv248 = zext i16 %159 to i32
  %arrayidx249 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  store i32 %conv248, i32* %arrayidx249, align 4
  %arrayidx250 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 1
  %pos_x251 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx250, i32 0, i32 4
  %160 = load i32, i32* %pos_x251, align 4
  %idxprom252 = sext i32 %160 to i64
  %arrayidx253 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 1
  %pos_y254 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx253, i32 0, i32 5
  %161 = load i32, i32* %pos_y254, align 4
  %idxprom255 = sext i32 %161 to i64
  %162 = load i16**, i16*** %imgY, align 8
  %arrayidx256 = getelementptr inbounds i16*, i16** %162, i64 %idxprom255
  %163 = load i16*, i16** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds i16, i16* %163, i64 %idxprom252
  %164 = load i16, i16* %arrayidx257, align 2
  %conv258 = zext i16 %164 to i32
  %arrayidx259 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  store i32 %conv258, i32* %arrayidx259, align 4
  %arrayidx260 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 2
  %pos_x261 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx260, i32 0, i32 4
  %165 = load i32, i32* %pos_x261, align 4
  %idxprom262 = sext i32 %165 to i64
  %arrayidx263 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 2
  %pos_y264 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx263, i32 0, i32 5
  %166 = load i32, i32* %pos_y264, align 4
  %idxprom265 = sext i32 %166 to i64
  %167 = load i16**, i16*** %imgY, align 8
  %arrayidx266 = getelementptr inbounds i16*, i16** %167, i64 %idxprom265
  %168 = load i16*, i16** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i16, i16* %168, i64 %idxprom262
  %169 = load i16, i16* %arrayidx267, align 2
  %conv268 = zext i16 %169 to i32
  %arrayidx269 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  store i32 %conv268, i32* %arrayidx269, align 4
  %arrayidx270 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 3
  %pos_x271 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx270, i32 0, i32 4
  %170 = load i32, i32* %pos_x271, align 4
  %idxprom272 = sext i32 %170 to i64
  %arrayidx273 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 3
  %pos_y274 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx273, i32 0, i32 5
  %171 = load i32, i32* %pos_y274, align 4
  %idxprom275 = sext i32 %171 to i64
  %172 = load i16**, i16*** %imgY, align 8
  %arrayidx276 = getelementptr inbounds i16*, i16** %172, i64 %idxprom275
  %173 = load i16*, i16** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i16, i16* %173, i64 %idxprom272
  %174 = load i16, i16* %arrayidx277, align 2
  %conv278 = zext i16 %174 to i32
  %arrayidx279 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  store i32 %conv278, i32* %arrayidx279, align 4
  %arrayidx280 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 4
  %pos_x281 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx280, i32 0, i32 4
  %175 = load i32, i32* %pos_x281, align 4
  %idxprom282 = sext i32 %175 to i64
  %arrayidx283 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 4
  %pos_y284 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx283, i32 0, i32 5
  %176 = load i32, i32* %pos_y284, align 4
  %idxprom285 = sext i32 %176 to i64
  %177 = load i16**, i16*** %imgY, align 8
  %arrayidx286 = getelementptr inbounds i16*, i16** %177, i64 %idxprom285
  %178 = load i16*, i16** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i16, i16* %178, i64 %idxprom282
  %179 = load i16, i16* %arrayidx287, align 2
  %conv288 = zext i16 %179 to i32
  %arrayidx289 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  store i32 %conv288, i32* %arrayidx289, align 4
  %arrayidx290 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 5
  %pos_x291 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx290, i32 0, i32 4
  %180 = load i32, i32* %pos_x291, align 4
  %idxprom292 = sext i32 %180 to i64
  %arrayidx293 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 5
  %pos_y294 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx293, i32 0, i32 5
  %181 = load i32, i32* %pos_y294, align 4
  %idxprom295 = sext i32 %181 to i64
  %182 = load i16**, i16*** %imgY, align 8
  %arrayidx296 = getelementptr inbounds i16*, i16** %182, i64 %idxprom295
  %183 = load i16*, i16** %arrayidx296, align 8
  %arrayidx297 = getelementptr inbounds i16, i16* %183, i64 %idxprom292
  %184 = load i16, i16* %arrayidx297, align 2
  %conv298 = zext i16 %184 to i32
  %arrayidx299 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  store i32 %conv298, i32* %arrayidx299, align 4
  %arrayidx300 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 6
  %pos_x301 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx300, i32 0, i32 4
  %185 = load i32, i32* %pos_x301, align 4
  %idxprom302 = sext i32 %185 to i64
  %arrayidx303 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 6
  %pos_y304 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx303, i32 0, i32 5
  %186 = load i32, i32* %pos_y304, align 4
  %idxprom305 = sext i32 %186 to i64
  %187 = load i16**, i16*** %imgY, align 8
  %arrayidx306 = getelementptr inbounds i16*, i16** %187, i64 %idxprom305
  %188 = load i16*, i16** %arrayidx306, align 8
  %arrayidx307 = getelementptr inbounds i16, i16* %188, i64 %idxprom302
  %189 = load i16, i16* %arrayidx307, align 2
  %conv308 = zext i16 %189 to i32
  %arrayidx309 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  store i32 %conv308, i32* %arrayidx309, align 4
  %arrayidx310 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 7
  %pos_x311 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx310, i32 0, i32 4
  %190 = load i32, i32* %pos_x311, align 4
  %idxprom312 = sext i32 %190 to i64
  %arrayidx313 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 7
  %pos_y314 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx313, i32 0, i32 5
  %191 = load i32, i32* %pos_y314, align 4
  %idxprom315 = sext i32 %191 to i64
  %192 = load i16**, i16*** %imgY, align 8
  %arrayidx316 = getelementptr inbounds i16*, i16** %192, i64 %idxprom315
  %193 = load i16*, i16** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds i16, i16* %193, i64 %idxprom312
  %194 = load i16, i16* %arrayidx317, align 2
  %conv318 = zext i16 %194 to i32
  %arrayidx319 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  store i32 %conv318, i32* %arrayidx319, align 4
  br label %if.end.330

if.else.320:                                      ; preds = %if.end.237
  %195 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value321 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %195, i32 0, i32 154
  %196 = load i32, i32* %dc_pred_value321, align 4
  %arrayidx322 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  store i32 %196, i32* %arrayidx322, align 4
  %arrayidx323 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  store i32 %196, i32* %arrayidx323, align 4
  %arrayidx324 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  store i32 %196, i32* %arrayidx324, align 4
  %arrayidx325 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  store i32 %196, i32* %arrayidx325, align 4
  %arrayidx326 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  store i32 %196, i32* %arrayidx326, align 4
  %arrayidx327 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  store i32 %196, i32* %arrayidx327, align 4
  %arrayidx328 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  store i32 %196, i32* %arrayidx328, align 4
  %arrayidx329 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  store i32 %196, i32* %arrayidx329, align 4
  br label %if.end.330

if.end.330:                                       ; preds = %if.else.320, %if.then.239
  %197 = load i32, i32* %block_available_up_left, align 4
  %tobool331 = icmp ne i32 %197, 0
  br i1 %tobool331, label %if.then.332, label %if.else.341

if.then.332:                                      ; preds = %if.end.330
  %pos_x333 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 4
  %198 = load i32, i32* %pos_x333, align 4
  %idxprom334 = sext i32 %198 to i64
  %pos_y335 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 5
  %199 = load i32, i32* %pos_y335, align 4
  %idxprom336 = sext i32 %199 to i64
  %200 = load i16**, i16*** %imgY, align 8
  %arrayidx337 = getelementptr inbounds i16*, i16** %200, i64 %idxprom336
  %201 = load i16*, i16** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i16, i16* %201, i64 %idxprom334
  %202 = load i16, i16* %arrayidx338, align 2
  %conv339 = zext i16 %202 to i32
  %arrayidx340 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  store i32 %conv339, i32* %arrayidx340, align 4
  br label %if.end.344

if.else.341:                                      ; preds = %if.end.330
  %203 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value342 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %203, i32 0, i32 154
  %204 = load i32, i32* %dc_pred_value342, align 4
  %arrayidx343 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  store i32 %204, i32* %arrayidx343, align 4
  br label %if.end.344

if.end.344:                                       ; preds = %if.else.341, %if.then.332
  store i32 0, i32* %i, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.353, %if.end.344
  %205 = load i32, i32* %i, align 4
  %cmp346 = icmp slt i32 %205, 9
  br i1 %cmp346, label %for.body.348, label %for.end.355

for.body.348:                                     ; preds = %for.cond.345
  %206 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %206 to i64
  %207 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %207, i32 0, i32 43
  %arrayidx350 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3, i32 0, i64 %idxprom349
  %arrayidx351 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx350, i32 0, i64 0
  %arrayidx352 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx351, i32 0, i64 0
  store i16 -1, i16* %arrayidx352, align 2
  br label %for.inc.353

for.inc.353:                                      ; preds = %for.body.348
  %208 = load i32, i32* %i, align 4
  %inc354 = add nsw i32 %208, 1
  store i32 %inc354, i32* %i, align 4
  br label %for.cond.345

for.end.355:                                      ; preds = %for.cond.345
  %arrayidx356 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %209 = load i32, i32* %block_available_up_left, align 4
  %210 = load i32, i32* %block_available_up, align 4
  %211 = load i32, i32* %block_available_left, align 4
  call void @LowPassForIntra8x8Pred(i32* %arrayidx356, i32 %209, i32 %210, i32 %211)
  store i32 0, i32* %s0, align 4
  %212 = load i32, i32* %block_available_up, align 4
  %tobool357 = icmp ne i32 %212, 0
  br i1 %tobool357, label %land.lhs.true.358, label %if.else.393

land.lhs.true.358:                                ; preds = %for.end.355
  %213 = load i32, i32* %block_available_left, align 4
  %tobool359 = icmp ne i32 %213, 0
  br i1 %tobool359, label %if.then.360, label %if.else.393

if.then.360:                                      ; preds = %land.lhs.true.358
  %arrayidx361 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %214 = load i32, i32* %arrayidx361, align 4
  %arrayidx362 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %215 = load i32, i32* %arrayidx362, align 4
  %add363 = add nsw i32 %214, %215
  %arrayidx364 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %216 = load i32, i32* %arrayidx364, align 4
  %add365 = add nsw i32 %add363, %216
  %arrayidx366 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %217 = load i32, i32* %arrayidx366, align 4
  %add367 = add nsw i32 %add365, %217
  %arrayidx368 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %218 = load i32, i32* %arrayidx368, align 4
  %add369 = add nsw i32 %add367, %218
  %arrayidx370 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %219 = load i32, i32* %arrayidx370, align 4
  %add371 = add nsw i32 %add369, %219
  %arrayidx372 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %220 = load i32, i32* %arrayidx372, align 4
  %add373 = add nsw i32 %add371, %220
  %arrayidx374 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %221 = load i32, i32* %arrayidx374, align 4
  %add375 = add nsw i32 %add373, %221
  %arrayidx376 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %222 = load i32, i32* %arrayidx376, align 4
  %add377 = add nsw i32 %add375, %222
  %arrayidx378 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %223 = load i32, i32* %arrayidx378, align 4
  %add379 = add nsw i32 %add377, %223
  %arrayidx380 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %224 = load i32, i32* %arrayidx380, align 4
  %add381 = add nsw i32 %add379, %224
  %arrayidx382 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %225 = load i32, i32* %arrayidx382, align 4
  %add383 = add nsw i32 %add381, %225
  %arrayidx384 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %226 = load i32, i32* %arrayidx384, align 4
  %add385 = add nsw i32 %add383, %226
  %arrayidx386 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %227 = load i32, i32* %arrayidx386, align 4
  %add387 = add nsw i32 %add385, %227
  %arrayidx388 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %228 = load i32, i32* %arrayidx388, align 4
  %add389 = add nsw i32 %add387, %228
  %arrayidx390 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %229 = load i32, i32* %arrayidx390, align 4
  %add391 = add nsw i32 %add389, %229
  %add392 = add nsw i32 %add391, 8
  %shr = ashr i32 %add392, 4
  store i32 %shr, i32* %s0, align 4
  br label %if.end.441

if.else.393:                                      ; preds = %land.lhs.true.358, %for.end.355
  %230 = load i32, i32* %block_available_up, align 4
  %tobool394 = icmp ne i32 %230, 0
  br i1 %tobool394, label %if.else.415, label %land.lhs.true.395

land.lhs.true.395:                                ; preds = %if.else.393
  %231 = load i32, i32* %block_available_left, align 4
  %tobool396 = icmp ne i32 %231, 0
  br i1 %tobool396, label %if.then.397, label %if.else.415

if.then.397:                                      ; preds = %land.lhs.true.395
  %arrayidx398 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %232 = load i32, i32* %arrayidx398, align 4
  %arrayidx399 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %233 = load i32, i32* %arrayidx399, align 4
  %add400 = add nsw i32 %232, %233
  %arrayidx401 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %234 = load i32, i32* %arrayidx401, align 4
  %add402 = add nsw i32 %add400, %234
  %arrayidx403 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %235 = load i32, i32* %arrayidx403, align 4
  %add404 = add nsw i32 %add402, %235
  %arrayidx405 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %236 = load i32, i32* %arrayidx405, align 4
  %add406 = add nsw i32 %add404, %236
  %arrayidx407 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %237 = load i32, i32* %arrayidx407, align 4
  %add408 = add nsw i32 %add406, %237
  %arrayidx409 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %238 = load i32, i32* %arrayidx409, align 4
  %add410 = add nsw i32 %add408, %238
  %arrayidx411 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %239 = load i32, i32* %arrayidx411, align 4
  %add412 = add nsw i32 %add410, %239
  %add413 = add nsw i32 %add412, 4
  %shr414 = ashr i32 %add413, 3
  store i32 %shr414, i32* %s0, align 4
  br label %if.end.440

if.else.415:                                      ; preds = %land.lhs.true.395, %if.else.393
  %240 = load i32, i32* %block_available_up, align 4
  %tobool416 = icmp ne i32 %240, 0
  br i1 %tobool416, label %land.lhs.true.417, label %if.else.437

land.lhs.true.417:                                ; preds = %if.else.415
  %241 = load i32, i32* %block_available_left, align 4
  %tobool418 = icmp ne i32 %241, 0
  br i1 %tobool418, label %if.else.437, label %if.then.419

if.then.419:                                      ; preds = %land.lhs.true.417
  %arrayidx420 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %242 = load i32, i32* %arrayidx420, align 4
  %arrayidx421 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %243 = load i32, i32* %arrayidx421, align 4
  %add422 = add nsw i32 %242, %243
  %arrayidx423 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %244 = load i32, i32* %arrayidx423, align 4
  %add424 = add nsw i32 %add422, %244
  %arrayidx425 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %245 = load i32, i32* %arrayidx425, align 4
  %add426 = add nsw i32 %add424, %245
  %arrayidx427 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %246 = load i32, i32* %arrayidx427, align 4
  %add428 = add nsw i32 %add426, %246
  %arrayidx429 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %247 = load i32, i32* %arrayidx429, align 4
  %add430 = add nsw i32 %add428, %247
  %arrayidx431 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %248 = load i32, i32* %arrayidx431, align 4
  %add432 = add nsw i32 %add430, %248
  %arrayidx433 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %249 = load i32, i32* %arrayidx433, align 4
  %add434 = add nsw i32 %add432, %249
  %add435 = add nsw i32 %add434, 4
  %shr436 = ashr i32 %add435, 3
  store i32 %shr436, i32* %s0, align 4
  br label %if.end.439

if.else.437:                                      ; preds = %land.lhs.true.417, %if.else.415
  %250 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value438 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %250, i32 0, i32 154
  %251 = load i32, i32* %dc_pred_value438, align 4
  store i32 %251, i32* %s0, align 4
  br label %if.end.439

if.end.439:                                       ; preds = %if.else.437, %if.then.419
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.then.397
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %if.then.360
  store i32 0, i32* %j, align 4
  br label %for.cond.442

for.cond.442:                                     ; preds = %for.inc.460, %if.end.441
  %252 = load i32, i32* %j, align 4
  %cmp443 = icmp slt i32 %252, 8
  br i1 %cmp443, label %for.body.445, label %for.end.462

for.body.445:                                     ; preds = %for.cond.442
  store i32 0, i32* %i, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.457, %for.body.445
  %253 = load i32, i32* %i, align 4
  %cmp447 = icmp slt i32 %253, 8
  br i1 %cmp447, label %for.body.449, label %for.end.459

for.body.449:                                     ; preds = %for.cond.446
  %254 = load i32, i32* %s0, align 4
  %conv450 = trunc i32 %254 to i16
  %255 = load i32, i32* %j, align 4
  %idxprom451 = sext i32 %255 to i64
  %256 = load i32, i32* %i, align 4
  %idxprom452 = sext i32 %256 to i64
  %257 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3453 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %257, i32 0, i32 43
  %arrayidx454 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3453, i32 0, i64 2
  %arrayidx455 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx454, i32 0, i64 %idxprom452
  %arrayidx456 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx455, i32 0, i64 %idxprom451
  store i16 %conv450, i16* %arrayidx456, align 2
  br label %for.inc.457

for.inc.457:                                      ; preds = %for.body.449
  %258 = load i32, i32* %i, align 4
  %inc458 = add nsw i32 %258, 1
  store i32 %inc458, i32* %i, align 4
  br label %for.cond.446

for.end.459:                                      ; preds = %for.cond.446
  br label %for.inc.460

for.inc.460:                                      ; preds = %for.end.459
  %259 = load i32, i32* %j, align 4
  %inc461 = add nsw i32 %259, 1
  store i32 %inc461, i32* %j, align 4
  br label %for.cond.442

for.end.462:                                      ; preds = %for.cond.442
  store i32 0, i32* %i, align 4
  br label %for.cond.463

for.cond.463:                                     ; preds = %for.inc.555, %for.end.462
  %260 = load i32, i32* %i, align 4
  %cmp464 = icmp slt i32 %260, 8
  br i1 %cmp464, label %for.body.466, label %for.end.557

for.body.466:                                     ; preds = %for.cond.463
  %261 = load i32, i32* %i, align 4
  %idxprom467 = sext i32 %261 to i64
  %arrayidx468 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %arrayidx469 = getelementptr inbounds i32, i32* %arrayidx468, i64 %idxprom467
  %262 = load i32, i32* %arrayidx469, align 4
  %conv470 = trunc i32 %262 to i16
  %263 = load i32, i32* %i, align 4
  %idxprom471 = sext i32 %263 to i64
  %264 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3472 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %264, i32 0, i32 43
  %arrayidx473 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3472, i32 0, i64 0
  %arrayidx474 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx473, i32 0, i64 7
  %arrayidx475 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx474, i32 0, i64 %idxprom471
  store i16 %conv470, i16* %arrayidx475, align 2
  %265 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %265 to i64
  %266 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3477 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %266, i32 0, i32 43
  %arrayidx478 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3477, i32 0, i64 0
  %arrayidx479 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx478, i32 0, i64 6
  %arrayidx480 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx479, i32 0, i64 %idxprom476
  store i16 %conv470, i16* %arrayidx480, align 2
  %267 = load i32, i32* %i, align 4
  %idxprom481 = sext i32 %267 to i64
  %268 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3482 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %268, i32 0, i32 43
  %arrayidx483 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3482, i32 0, i64 0
  %arrayidx484 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx483, i32 0, i64 5
  %arrayidx485 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx484, i32 0, i64 %idxprom481
  store i16 %conv470, i16* %arrayidx485, align 2
  %269 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %269 to i64
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3487 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 43
  %arrayidx488 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3487, i32 0, i64 0
  %arrayidx489 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx488, i32 0, i64 4
  %arrayidx490 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx489, i32 0, i64 %idxprom486
  store i16 %conv470, i16* %arrayidx490, align 2
  %271 = load i32, i32* %i, align 4
  %idxprom491 = sext i32 %271 to i64
  %272 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3492 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %272, i32 0, i32 43
  %arrayidx493 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3492, i32 0, i64 0
  %arrayidx494 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx493, i32 0, i64 3
  %arrayidx495 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx494, i32 0, i64 %idxprom491
  store i16 %conv470, i16* %arrayidx495, align 2
  %273 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %273 to i64
  %274 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3497 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %274, i32 0, i32 43
  %arrayidx498 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3497, i32 0, i64 0
  %arrayidx499 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx498, i32 0, i64 2
  %arrayidx500 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx499, i32 0, i64 %idxprom496
  store i16 %conv470, i16* %arrayidx500, align 2
  %275 = load i32, i32* %i, align 4
  %idxprom501 = sext i32 %275 to i64
  %276 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3502 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %276, i32 0, i32 43
  %arrayidx503 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3502, i32 0, i64 0
  %arrayidx504 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx503, i32 0, i64 1
  %arrayidx505 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx504, i32 0, i64 %idxprom501
  store i16 %conv470, i16* %arrayidx505, align 2
  %277 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %277 to i64
  %278 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3507 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %278, i32 0, i32 43
  %arrayidx508 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3507, i32 0, i64 0
  %arrayidx509 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx508, i32 0, i64 0
  %arrayidx510 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx509, i32 0, i64 %idxprom506
  store i16 %conv470, i16* %arrayidx510, align 2
  %279 = load i32, i32* %i, align 4
  %idxprom511 = sext i32 %279 to i64
  %arrayidx512 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %arrayidx513 = getelementptr inbounds i32, i32* %arrayidx512, i64 %idxprom511
  %280 = load i32, i32* %arrayidx513, align 4
  %conv514 = trunc i32 %280 to i16
  %281 = load i32, i32* %i, align 4
  %idxprom515 = sext i32 %281 to i64
  %282 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3516 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %282, i32 0, i32 43
  %arrayidx517 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3516, i32 0, i64 1
  %arrayidx518 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx517, i32 0, i64 %idxprom515
  %arrayidx519 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx518, i32 0, i64 7
  store i16 %conv514, i16* %arrayidx519, align 2
  %283 = load i32, i32* %i, align 4
  %idxprom520 = sext i32 %283 to i64
  %284 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3521 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %284, i32 0, i32 43
  %arrayidx522 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3521, i32 0, i64 1
  %arrayidx523 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx522, i32 0, i64 %idxprom520
  %arrayidx524 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx523, i32 0, i64 6
  store i16 %conv514, i16* %arrayidx524, align 2
  %285 = load i32, i32* %i, align 4
  %idxprom525 = sext i32 %285 to i64
  %286 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3526 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %286, i32 0, i32 43
  %arrayidx527 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3526, i32 0, i64 1
  %arrayidx528 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx527, i32 0, i64 %idxprom525
  %arrayidx529 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx528, i32 0, i64 5
  store i16 %conv514, i16* %arrayidx529, align 2
  %287 = load i32, i32* %i, align 4
  %idxprom530 = sext i32 %287 to i64
  %288 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3531 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %288, i32 0, i32 43
  %arrayidx532 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3531, i32 0, i64 1
  %arrayidx533 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx532, i32 0, i64 %idxprom530
  %arrayidx534 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx533, i32 0, i64 4
  store i16 %conv514, i16* %arrayidx534, align 2
  %289 = load i32, i32* %i, align 4
  %idxprom535 = sext i32 %289 to i64
  %290 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3536 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %290, i32 0, i32 43
  %arrayidx537 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3536, i32 0, i64 1
  %arrayidx538 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx537, i32 0, i64 %idxprom535
  %arrayidx539 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx538, i32 0, i64 3
  store i16 %conv514, i16* %arrayidx539, align 2
  %291 = load i32, i32* %i, align 4
  %idxprom540 = sext i32 %291 to i64
  %292 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3541 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %292, i32 0, i32 43
  %arrayidx542 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3541, i32 0, i64 1
  %arrayidx543 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx542, i32 0, i64 %idxprom540
  %arrayidx544 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx543, i32 0, i64 2
  store i16 %conv514, i16* %arrayidx544, align 2
  %293 = load i32, i32* %i, align 4
  %idxprom545 = sext i32 %293 to i64
  %294 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3546 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %294, i32 0, i32 43
  %arrayidx547 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3546, i32 0, i64 1
  %arrayidx548 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx547, i32 0, i64 %idxprom545
  %arrayidx549 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx548, i32 0, i64 1
  store i16 %conv514, i16* %arrayidx549, align 2
  %295 = load i32, i32* %i, align 4
  %idxprom550 = sext i32 %295 to i64
  %296 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3551 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %296, i32 0, i32 43
  %arrayidx552 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3551, i32 0, i64 1
  %arrayidx553 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx552, i32 0, i64 %idxprom550
  %arrayidx554 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx553, i32 0, i64 0
  store i16 %conv514, i16* %arrayidx554, align 2
  br label %for.inc.555

for.inc.555:                                      ; preds = %for.body.466
  %297 = load i32, i32* %i, align 4
  %inc556 = add nsw i32 %297, 1
  store i32 %inc556, i32* %i, align 4
  br label %for.cond.463

for.end.557:                                      ; preds = %for.cond.463
  %298 = load i32, i32* %block_available_up, align 4
  %tobool558 = icmp ne i32 %298, 0
  br i1 %tobool558, label %if.end.564, label %if.then.559

if.then.559:                                      ; preds = %for.end.557
  %299 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3560 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %299, i32 0, i32 43
  %arrayidx561 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3560, i32 0, i64 0
  %arrayidx562 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx561, i32 0, i64 0
  %arrayidx563 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx562, i32 0, i64 0
  store i16 -1, i16* %arrayidx563, align 2
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.559, %for.end.557
  %300 = load i32, i32* %block_available_left, align 4
  %tobool565 = icmp ne i32 %300, 0
  br i1 %tobool565, label %if.end.571, label %if.then.566

if.then.566:                                      ; preds = %if.end.564
  %301 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3567 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %301, i32 0, i32 43
  %arrayidx568 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3567, i32 0, i64 1
  %arrayidx569 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx568, i32 0, i64 0
  %arrayidx570 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx569, i32 0, i64 0
  store i16 -1, i16* %arrayidx570, align 2
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.566, %if.end.564
  %302 = load i32, i32* %block_available_up, align 4
  %tobool572 = icmp ne i32 %302, 0
  br i1 %tobool572, label %if.then.573, label %if.end.1383

if.then.573:                                      ; preds = %if.end.571
  %arrayidx574 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %303 = load i32, i32* %arrayidx574, align 4
  %arrayidx575 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %304 = load i32, i32* %arrayidx575, align 4
  %add576 = add nsw i32 %303, %304
  %arrayidx577 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %305 = load i32, i32* %arrayidx577, align 4
  %mul = mul nsw i32 2, %305
  %add578 = add nsw i32 %add576, %mul
  %add579 = add nsw i32 %add578, 2
  %shr580 = ashr i32 %add579, 2
  %conv581 = trunc i32 %shr580 to i16
  %306 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3582 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %306, i32 0, i32 43
  %arrayidx583 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3582, i32 0, i64 3
  %arrayidx584 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx583, i32 0, i64 0
  %arrayidx585 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx584, i32 0, i64 0
  store i16 %conv581, i16* %arrayidx585, align 2
  %arrayidx586 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %307 = load i32, i32* %arrayidx586, align 4
  %arrayidx587 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %308 = load i32, i32* %arrayidx587, align 4
  %add588 = add nsw i32 %307, %308
  %arrayidx589 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %309 = load i32, i32* %arrayidx589, align 4
  %mul590 = mul nsw i32 2, %309
  %add591 = add nsw i32 %add588, %mul590
  %add592 = add nsw i32 %add591, 2
  %shr593 = ashr i32 %add592, 2
  %conv594 = trunc i32 %shr593 to i16
  %310 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3595 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %310, i32 0, i32 43
  %arrayidx596 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3595, i32 0, i64 3
  %arrayidx597 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx596, i32 0, i64 1
  %arrayidx598 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx597, i32 0, i64 0
  store i16 %conv594, i16* %arrayidx598, align 2
  %311 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3599 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %311, i32 0, i32 43
  %arrayidx600 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3599, i32 0, i64 3
  %arrayidx601 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx600, i32 0, i64 0
  %arrayidx602 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx601, i32 0, i64 1
  store i16 %conv594, i16* %arrayidx602, align 2
  %arrayidx603 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %312 = load i32, i32* %arrayidx603, align 4
  %arrayidx604 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %313 = load i32, i32* %arrayidx604, align 4
  %add605 = add nsw i32 %312, %313
  %arrayidx606 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %314 = load i32, i32* %arrayidx606, align 4
  %mul607 = mul nsw i32 2, %314
  %add608 = add nsw i32 %add605, %mul607
  %add609 = add nsw i32 %add608, 2
  %shr610 = ashr i32 %add609, 2
  %conv611 = trunc i32 %shr610 to i16
  %315 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3612 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %315, i32 0, i32 43
  %arrayidx613 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3612, i32 0, i64 3
  %arrayidx614 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx613, i32 0, i64 2
  %arrayidx615 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx614, i32 0, i64 0
  store i16 %conv611, i16* %arrayidx615, align 2
  %316 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3616 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %316, i32 0, i32 43
  %arrayidx617 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3616, i32 0, i64 3
  %arrayidx618 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx617, i32 0, i64 1
  %arrayidx619 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx618, i32 0, i64 1
  store i16 %conv611, i16* %arrayidx619, align 2
  %317 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3620 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %317, i32 0, i32 43
  %arrayidx621 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3620, i32 0, i64 3
  %arrayidx622 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx621, i32 0, i64 0
  %arrayidx623 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx622, i32 0, i64 2
  store i16 %conv611, i16* %arrayidx623, align 2
  %arrayidx624 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %318 = load i32, i32* %arrayidx624, align 4
  %arrayidx625 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %319 = load i32, i32* %arrayidx625, align 4
  %add626 = add nsw i32 %318, %319
  %arrayidx627 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %320 = load i32, i32* %arrayidx627, align 4
  %mul628 = mul nsw i32 2, %320
  %add629 = add nsw i32 %add626, %mul628
  %add630 = add nsw i32 %add629, 2
  %shr631 = ashr i32 %add630, 2
  %conv632 = trunc i32 %shr631 to i16
  %321 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3633 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %321, i32 0, i32 43
  %arrayidx634 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3633, i32 0, i64 3
  %arrayidx635 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx634, i32 0, i64 3
  %arrayidx636 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx635, i32 0, i64 0
  store i16 %conv632, i16* %arrayidx636, align 2
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3637 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 43
  %arrayidx638 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3637, i32 0, i64 3
  %arrayidx639 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx638, i32 0, i64 2
  %arrayidx640 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx639, i32 0, i64 1
  store i16 %conv632, i16* %arrayidx640, align 2
  %323 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3641 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %323, i32 0, i32 43
  %arrayidx642 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3641, i32 0, i64 3
  %arrayidx643 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx642, i32 0, i64 1
  %arrayidx644 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx643, i32 0, i64 2
  store i16 %conv632, i16* %arrayidx644, align 2
  %324 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3645 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %324, i32 0, i32 43
  %arrayidx646 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3645, i32 0, i64 3
  %arrayidx647 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx646, i32 0, i64 0
  %arrayidx648 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx647, i32 0, i64 3
  store i16 %conv632, i16* %arrayidx648, align 2
  %arrayidx649 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %325 = load i32, i32* %arrayidx649, align 4
  %arrayidx650 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %326 = load i32, i32* %arrayidx650, align 4
  %add651 = add nsw i32 %325, %326
  %arrayidx652 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %327 = load i32, i32* %arrayidx652, align 4
  %mul653 = mul nsw i32 2, %327
  %add654 = add nsw i32 %add651, %mul653
  %add655 = add nsw i32 %add654, 2
  %shr656 = ashr i32 %add655, 2
  %conv657 = trunc i32 %shr656 to i16
  %328 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3658 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %328, i32 0, i32 43
  %arrayidx659 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3658, i32 0, i64 3
  %arrayidx660 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx659, i32 0, i64 4
  %arrayidx661 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx660, i32 0, i64 0
  store i16 %conv657, i16* %arrayidx661, align 2
  %329 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3662 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %329, i32 0, i32 43
  %arrayidx663 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3662, i32 0, i64 3
  %arrayidx664 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx663, i32 0, i64 3
  %arrayidx665 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx664, i32 0, i64 1
  store i16 %conv657, i16* %arrayidx665, align 2
  %330 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3666 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %330, i32 0, i32 43
  %arrayidx667 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3666, i32 0, i64 3
  %arrayidx668 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx667, i32 0, i64 2
  %arrayidx669 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx668, i32 0, i64 2
  store i16 %conv657, i16* %arrayidx669, align 2
  %331 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3670 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %331, i32 0, i32 43
  %arrayidx671 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3670, i32 0, i64 3
  %arrayidx672 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx671, i32 0, i64 1
  %arrayidx673 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx672, i32 0, i64 3
  store i16 %conv657, i16* %arrayidx673, align 2
  %332 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3674 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %332, i32 0, i32 43
  %arrayidx675 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3674, i32 0, i64 3
  %arrayidx676 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx675, i32 0, i64 0
  %arrayidx677 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx676, i32 0, i64 4
  store i16 %conv657, i16* %arrayidx677, align 2
  %arrayidx678 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %333 = load i32, i32* %arrayidx678, align 4
  %arrayidx679 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %334 = load i32, i32* %arrayidx679, align 4
  %add680 = add nsw i32 %333, %334
  %arrayidx681 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %335 = load i32, i32* %arrayidx681, align 4
  %mul682 = mul nsw i32 2, %335
  %add683 = add nsw i32 %add680, %mul682
  %add684 = add nsw i32 %add683, 2
  %shr685 = ashr i32 %add684, 2
  %conv686 = trunc i32 %shr685 to i16
  %336 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3687 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %336, i32 0, i32 43
  %arrayidx688 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3687, i32 0, i64 3
  %arrayidx689 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx688, i32 0, i64 5
  %arrayidx690 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx689, i32 0, i64 0
  store i16 %conv686, i16* %arrayidx690, align 2
  %337 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3691 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %337, i32 0, i32 43
  %arrayidx692 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3691, i32 0, i64 3
  %arrayidx693 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx692, i32 0, i64 4
  %arrayidx694 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx693, i32 0, i64 1
  store i16 %conv686, i16* %arrayidx694, align 2
  %338 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3695 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %338, i32 0, i32 43
  %arrayidx696 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3695, i32 0, i64 3
  %arrayidx697 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx696, i32 0, i64 3
  %arrayidx698 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx697, i32 0, i64 2
  store i16 %conv686, i16* %arrayidx698, align 2
  %339 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3699 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %339, i32 0, i32 43
  %arrayidx700 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3699, i32 0, i64 3
  %arrayidx701 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx700, i32 0, i64 2
  %arrayidx702 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx701, i32 0, i64 3
  store i16 %conv686, i16* %arrayidx702, align 2
  %340 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3703 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %340, i32 0, i32 43
  %arrayidx704 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3703, i32 0, i64 3
  %arrayidx705 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx704, i32 0, i64 1
  %arrayidx706 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx705, i32 0, i64 4
  store i16 %conv686, i16* %arrayidx706, align 2
  %341 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3707 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %341, i32 0, i32 43
  %arrayidx708 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3707, i32 0, i64 3
  %arrayidx709 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx708, i32 0, i64 0
  %arrayidx710 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx709, i32 0, i64 5
  store i16 %conv686, i16* %arrayidx710, align 2
  %arrayidx711 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %342 = load i32, i32* %arrayidx711, align 4
  %arrayidx712 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %343 = load i32, i32* %arrayidx712, align 4
  %add713 = add nsw i32 %342, %343
  %arrayidx714 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %344 = load i32, i32* %arrayidx714, align 4
  %mul715 = mul nsw i32 2, %344
  %add716 = add nsw i32 %add713, %mul715
  %add717 = add nsw i32 %add716, 2
  %shr718 = ashr i32 %add717, 2
  %conv719 = trunc i32 %shr718 to i16
  %345 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3720 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %345, i32 0, i32 43
  %arrayidx721 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3720, i32 0, i64 3
  %arrayidx722 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx721, i32 0, i64 6
  %arrayidx723 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx722, i32 0, i64 0
  store i16 %conv719, i16* %arrayidx723, align 2
  %346 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3724 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %346, i32 0, i32 43
  %arrayidx725 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3724, i32 0, i64 3
  %arrayidx726 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx725, i32 0, i64 5
  %arrayidx727 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx726, i32 0, i64 1
  store i16 %conv719, i16* %arrayidx727, align 2
  %347 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3728 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %347, i32 0, i32 43
  %arrayidx729 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3728, i32 0, i64 3
  %arrayidx730 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx729, i32 0, i64 4
  %arrayidx731 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx730, i32 0, i64 2
  store i16 %conv719, i16* %arrayidx731, align 2
  %348 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3732 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %348, i32 0, i32 43
  %arrayidx733 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3732, i32 0, i64 3
  %arrayidx734 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx733, i32 0, i64 3
  %arrayidx735 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx734, i32 0, i64 3
  store i16 %conv719, i16* %arrayidx735, align 2
  %349 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3736 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %349, i32 0, i32 43
  %arrayidx737 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3736, i32 0, i64 3
  %arrayidx738 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx737, i32 0, i64 2
  %arrayidx739 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx738, i32 0, i64 4
  store i16 %conv719, i16* %arrayidx739, align 2
  %350 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3740 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %350, i32 0, i32 43
  %arrayidx741 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3740, i32 0, i64 3
  %arrayidx742 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx741, i32 0, i64 1
  %arrayidx743 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx742, i32 0, i64 5
  store i16 %conv719, i16* %arrayidx743, align 2
  %351 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3744 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %351, i32 0, i32 43
  %arrayidx745 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3744, i32 0, i64 3
  %arrayidx746 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx745, i32 0, i64 0
  %arrayidx747 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx746, i32 0, i64 6
  store i16 %conv719, i16* %arrayidx747, align 2
  %arrayidx748 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %352 = load i32, i32* %arrayidx748, align 4
  %arrayidx749 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %353 = load i32, i32* %arrayidx749, align 4
  %add750 = add nsw i32 %352, %353
  %arrayidx751 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %354 = load i32, i32* %arrayidx751, align 4
  %mul752 = mul nsw i32 2, %354
  %add753 = add nsw i32 %add750, %mul752
  %add754 = add nsw i32 %add753, 2
  %shr755 = ashr i32 %add754, 2
  %conv756 = trunc i32 %shr755 to i16
  %355 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3757 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %355, i32 0, i32 43
  %arrayidx758 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3757, i32 0, i64 3
  %arrayidx759 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx758, i32 0, i64 7
  %arrayidx760 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx759, i32 0, i64 0
  store i16 %conv756, i16* %arrayidx760, align 2
  %356 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3761 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %356, i32 0, i32 43
  %arrayidx762 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3761, i32 0, i64 3
  %arrayidx763 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx762, i32 0, i64 6
  %arrayidx764 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx763, i32 0, i64 1
  store i16 %conv756, i16* %arrayidx764, align 2
  %357 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3765 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %357, i32 0, i32 43
  %arrayidx766 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3765, i32 0, i64 3
  %arrayidx767 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx766, i32 0, i64 5
  %arrayidx768 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx767, i32 0, i64 2
  store i16 %conv756, i16* %arrayidx768, align 2
  %358 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3769 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %358, i32 0, i32 43
  %arrayidx770 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3769, i32 0, i64 3
  %arrayidx771 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx770, i32 0, i64 4
  %arrayidx772 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx771, i32 0, i64 3
  store i16 %conv756, i16* %arrayidx772, align 2
  %359 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3773 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %359, i32 0, i32 43
  %arrayidx774 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3773, i32 0, i64 3
  %arrayidx775 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx774, i32 0, i64 3
  %arrayidx776 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx775, i32 0, i64 4
  store i16 %conv756, i16* %arrayidx776, align 2
  %360 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3777 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %360, i32 0, i32 43
  %arrayidx778 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3777, i32 0, i64 3
  %arrayidx779 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx778, i32 0, i64 2
  %arrayidx780 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx779, i32 0, i64 5
  store i16 %conv756, i16* %arrayidx780, align 2
  %361 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3781 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %361, i32 0, i32 43
  %arrayidx782 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3781, i32 0, i64 3
  %arrayidx783 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx782, i32 0, i64 1
  %arrayidx784 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx783, i32 0, i64 6
  store i16 %conv756, i16* %arrayidx784, align 2
  %362 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3785 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %362, i32 0, i32 43
  %arrayidx786 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3785, i32 0, i64 3
  %arrayidx787 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx786, i32 0, i64 0
  %arrayidx788 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx787, i32 0, i64 7
  store i16 %conv756, i16* %arrayidx788, align 2
  %arrayidx789 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %363 = load i32, i32* %arrayidx789, align 4
  %arrayidx790 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %364 = load i32, i32* %arrayidx790, align 4
  %add791 = add nsw i32 %363, %364
  %arrayidx792 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %365 = load i32, i32* %arrayidx792, align 4
  %mul793 = mul nsw i32 2, %365
  %add794 = add nsw i32 %add791, %mul793
  %add795 = add nsw i32 %add794, 2
  %shr796 = ashr i32 %add795, 2
  %conv797 = trunc i32 %shr796 to i16
  %366 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3798 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %366, i32 0, i32 43
  %arrayidx799 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3798, i32 0, i64 3
  %arrayidx800 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx799, i32 0, i64 7
  %arrayidx801 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx800, i32 0, i64 1
  store i16 %conv797, i16* %arrayidx801, align 2
  %367 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3802 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %367, i32 0, i32 43
  %arrayidx803 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3802, i32 0, i64 3
  %arrayidx804 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx803, i32 0, i64 6
  %arrayidx805 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx804, i32 0, i64 2
  store i16 %conv797, i16* %arrayidx805, align 2
  %368 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3806 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %368, i32 0, i32 43
  %arrayidx807 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3806, i32 0, i64 3
  %arrayidx808 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx807, i32 0, i64 5
  %arrayidx809 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx808, i32 0, i64 3
  store i16 %conv797, i16* %arrayidx809, align 2
  %369 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3810 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %369, i32 0, i32 43
  %arrayidx811 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3810, i32 0, i64 3
  %arrayidx812 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx811, i32 0, i64 4
  %arrayidx813 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx812, i32 0, i64 4
  store i16 %conv797, i16* %arrayidx813, align 2
  %370 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3814 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %370, i32 0, i32 43
  %arrayidx815 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3814, i32 0, i64 3
  %arrayidx816 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx815, i32 0, i64 3
  %arrayidx817 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx816, i32 0, i64 5
  store i16 %conv797, i16* %arrayidx817, align 2
  %371 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3818 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %371, i32 0, i32 43
  %arrayidx819 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3818, i32 0, i64 3
  %arrayidx820 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx819, i32 0, i64 2
  %arrayidx821 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx820, i32 0, i64 6
  store i16 %conv797, i16* %arrayidx821, align 2
  %372 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3822 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %372, i32 0, i32 43
  %arrayidx823 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3822, i32 0, i64 3
  %arrayidx824 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx823, i32 0, i64 1
  %arrayidx825 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx824, i32 0, i64 7
  store i16 %conv797, i16* %arrayidx825, align 2
  %arrayidx826 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %373 = load i32, i32* %arrayidx826, align 4
  %arrayidx827 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  %374 = load i32, i32* %arrayidx827, align 4
  %add828 = add nsw i32 %373, %374
  %arrayidx829 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %375 = load i32, i32* %arrayidx829, align 4
  %mul830 = mul nsw i32 2, %375
  %add831 = add nsw i32 %add828, %mul830
  %add832 = add nsw i32 %add831, 2
  %shr833 = ashr i32 %add832, 2
  %conv834 = trunc i32 %shr833 to i16
  %376 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3835 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %376, i32 0, i32 43
  %arrayidx836 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3835, i32 0, i64 3
  %arrayidx837 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx836, i32 0, i64 7
  %arrayidx838 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx837, i32 0, i64 2
  store i16 %conv834, i16* %arrayidx838, align 2
  %377 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3839 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %377, i32 0, i32 43
  %arrayidx840 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3839, i32 0, i64 3
  %arrayidx841 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx840, i32 0, i64 6
  %arrayidx842 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx841, i32 0, i64 3
  store i16 %conv834, i16* %arrayidx842, align 2
  %378 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3843 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %378, i32 0, i32 43
  %arrayidx844 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3843, i32 0, i64 3
  %arrayidx845 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx844, i32 0, i64 5
  %arrayidx846 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx845, i32 0, i64 4
  store i16 %conv834, i16* %arrayidx846, align 2
  %379 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3847 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %379, i32 0, i32 43
  %arrayidx848 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3847, i32 0, i64 3
  %arrayidx849 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx848, i32 0, i64 4
  %arrayidx850 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx849, i32 0, i64 5
  store i16 %conv834, i16* %arrayidx850, align 2
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3851 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 43
  %arrayidx852 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3851, i32 0, i64 3
  %arrayidx853 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx852, i32 0, i64 3
  %arrayidx854 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx853, i32 0, i64 6
  store i16 %conv834, i16* %arrayidx854, align 2
  %381 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3855 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %381, i32 0, i32 43
  %arrayidx856 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3855, i32 0, i64 3
  %arrayidx857 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx856, i32 0, i64 2
  %arrayidx858 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx857, i32 0, i64 7
  store i16 %conv834, i16* %arrayidx858, align 2
  %arrayidx859 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %382 = load i32, i32* %arrayidx859, align 4
  %arrayidx860 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 13
  %383 = load i32, i32* %arrayidx860, align 4
  %add861 = add nsw i32 %382, %383
  %arrayidx862 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  %384 = load i32, i32* %arrayidx862, align 4
  %mul863 = mul nsw i32 2, %384
  %add864 = add nsw i32 %add861, %mul863
  %add865 = add nsw i32 %add864, 2
  %shr866 = ashr i32 %add865, 2
  %conv867 = trunc i32 %shr866 to i16
  %385 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3868 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %385, i32 0, i32 43
  %arrayidx869 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3868, i32 0, i64 3
  %arrayidx870 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx869, i32 0, i64 7
  %arrayidx871 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx870, i32 0, i64 3
  store i16 %conv867, i16* %arrayidx871, align 2
  %386 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3872 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %386, i32 0, i32 43
  %arrayidx873 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3872, i32 0, i64 3
  %arrayidx874 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx873, i32 0, i64 6
  %arrayidx875 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx874, i32 0, i64 4
  store i16 %conv867, i16* %arrayidx875, align 2
  %387 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3876 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %387, i32 0, i32 43
  %arrayidx877 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3876, i32 0, i64 3
  %arrayidx878 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx877, i32 0, i64 5
  %arrayidx879 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx878, i32 0, i64 5
  store i16 %conv867, i16* %arrayidx879, align 2
  %388 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3880 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %388, i32 0, i32 43
  %arrayidx881 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3880, i32 0, i64 3
  %arrayidx882 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx881, i32 0, i64 4
  %arrayidx883 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx882, i32 0, i64 6
  store i16 %conv867, i16* %arrayidx883, align 2
  %389 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3884 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %389, i32 0, i32 43
  %arrayidx885 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3884, i32 0, i64 3
  %arrayidx886 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx885, i32 0, i64 3
  %arrayidx887 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx886, i32 0, i64 7
  store i16 %conv867, i16* %arrayidx887, align 2
  %arrayidx888 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  %390 = load i32, i32* %arrayidx888, align 4
  %arrayidx889 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 14
  %391 = load i32, i32* %arrayidx889, align 4
  %add890 = add nsw i32 %390, %391
  %arrayidx891 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 13
  %392 = load i32, i32* %arrayidx891, align 4
  %mul892 = mul nsw i32 2, %392
  %add893 = add nsw i32 %add890, %mul892
  %add894 = add nsw i32 %add893, 2
  %shr895 = ashr i32 %add894, 2
  %conv896 = trunc i32 %shr895 to i16
  %393 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3897 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %393, i32 0, i32 43
  %arrayidx898 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3897, i32 0, i64 3
  %arrayidx899 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx898, i32 0, i64 7
  %arrayidx900 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx899, i32 0, i64 4
  store i16 %conv896, i16* %arrayidx900, align 2
  %394 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3901 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %394, i32 0, i32 43
  %arrayidx902 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3901, i32 0, i64 3
  %arrayidx903 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx902, i32 0, i64 6
  %arrayidx904 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx903, i32 0, i64 5
  store i16 %conv896, i16* %arrayidx904, align 2
  %395 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3905 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %395, i32 0, i32 43
  %arrayidx906 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3905, i32 0, i64 3
  %arrayidx907 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx906, i32 0, i64 5
  %arrayidx908 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx907, i32 0, i64 6
  store i16 %conv896, i16* %arrayidx908, align 2
  %396 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3909 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %396, i32 0, i32 43
  %arrayidx910 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3909, i32 0, i64 3
  %arrayidx911 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx910, i32 0, i64 4
  %arrayidx912 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx911, i32 0, i64 7
  store i16 %conv896, i16* %arrayidx912, align 2
  %arrayidx913 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 13
  %397 = load i32, i32* %arrayidx913, align 4
  %arrayidx914 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 15
  %398 = load i32, i32* %arrayidx914, align 4
  %add915 = add nsw i32 %397, %398
  %arrayidx916 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 14
  %399 = load i32, i32* %arrayidx916, align 4
  %mul917 = mul nsw i32 2, %399
  %add918 = add nsw i32 %add915, %mul917
  %add919 = add nsw i32 %add918, 2
  %shr920 = ashr i32 %add919, 2
  %conv921 = trunc i32 %shr920 to i16
  %400 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3922 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %400, i32 0, i32 43
  %arrayidx923 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3922, i32 0, i64 3
  %arrayidx924 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx923, i32 0, i64 7
  %arrayidx925 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx924, i32 0, i64 5
  store i16 %conv921, i16* %arrayidx925, align 2
  %401 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3926 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %401, i32 0, i32 43
  %arrayidx927 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3926, i32 0, i64 3
  %arrayidx928 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx927, i32 0, i64 6
  %arrayidx929 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx928, i32 0, i64 6
  store i16 %conv921, i16* %arrayidx929, align 2
  %402 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3930 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %402, i32 0, i32 43
  %arrayidx931 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3930, i32 0, i64 3
  %arrayidx932 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx931, i32 0, i64 5
  %arrayidx933 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx932, i32 0, i64 7
  store i16 %conv921, i16* %arrayidx933, align 2
  %arrayidx934 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 14
  %403 = load i32, i32* %arrayidx934, align 4
  %arrayidx935 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 16
  %404 = load i32, i32* %arrayidx935, align 4
  %add936 = add nsw i32 %403, %404
  %arrayidx937 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 15
  %405 = load i32, i32* %arrayidx937, align 4
  %mul938 = mul nsw i32 2, %405
  %add939 = add nsw i32 %add936, %mul938
  %add940 = add nsw i32 %add939, 2
  %shr941 = ashr i32 %add940, 2
  %conv942 = trunc i32 %shr941 to i16
  %406 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3943 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %406, i32 0, i32 43
  %arrayidx944 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3943, i32 0, i64 3
  %arrayidx945 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx944, i32 0, i64 7
  %arrayidx946 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx945, i32 0, i64 6
  store i16 %conv942, i16* %arrayidx946, align 2
  %407 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3947 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %407, i32 0, i32 43
  %arrayidx948 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3947, i32 0, i64 3
  %arrayidx949 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx948, i32 0, i64 6
  %arrayidx950 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx949, i32 0, i64 7
  store i16 %conv942, i16* %arrayidx950, align 2
  %arrayidx951 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 15
  %408 = load i32, i32* %arrayidx951, align 4
  %arrayidx952 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 16
  %409 = load i32, i32* %arrayidx952, align 4
  %mul953 = mul nsw i32 3, %409
  %add954 = add nsw i32 %408, %mul953
  %add955 = add nsw i32 %add954, 2
  %shr956 = ashr i32 %add955, 2
  %conv957 = trunc i32 %shr956 to i16
  %410 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3958 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %410, i32 0, i32 43
  %arrayidx959 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3958, i32 0, i64 3
  %arrayidx960 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx959, i32 0, i64 7
  %arrayidx961 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx960, i32 0, i64 7
  store i16 %conv957, i16* %arrayidx961, align 2
  %arrayidx962 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %411 = load i32, i32* %arrayidx962, align 4
  %arrayidx963 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %412 = load i32, i32* %arrayidx963, align 4
  %add964 = add nsw i32 %411, %412
  %add965 = add nsw i32 %add964, 1
  %shr966 = ashr i32 %add965, 1
  %conv967 = trunc i32 %shr966 to i16
  %413 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3968 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %413, i32 0, i32 43
  %arrayidx969 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3968, i32 0, i64 7
  %arrayidx970 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx969, i32 0, i64 0
  %arrayidx971 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx970, i32 0, i64 0
  store i16 %conv967, i16* %arrayidx971, align 2
  %arrayidx972 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %414 = load i32, i32* %arrayidx972, align 4
  %arrayidx973 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %415 = load i32, i32* %arrayidx973, align 4
  %add974 = add nsw i32 %414, %415
  %add975 = add nsw i32 %add974, 1
  %shr976 = ashr i32 %add975, 1
  %conv977 = trunc i32 %shr976 to i16
  %416 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3978 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %416, i32 0, i32 43
  %arrayidx979 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3978, i32 0, i64 7
  %arrayidx980 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx979, i32 0, i64 2
  %arrayidx981 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx980, i32 0, i64 0
  store i16 %conv977, i16* %arrayidx981, align 2
  %417 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3982 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %417, i32 0, i32 43
  %arrayidx983 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3982, i32 0, i64 7
  %arrayidx984 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx983, i32 0, i64 0
  %arrayidx985 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx984, i32 0, i64 1
  store i16 %conv977, i16* %arrayidx985, align 2
  %arrayidx986 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %418 = load i32, i32* %arrayidx986, align 4
  %arrayidx987 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %419 = load i32, i32* %arrayidx987, align 4
  %add988 = add nsw i32 %418, %419
  %add989 = add nsw i32 %add988, 1
  %shr990 = ashr i32 %add989, 1
  %conv991 = trunc i32 %shr990 to i16
  %420 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3992 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %420, i32 0, i32 43
  %arrayidx993 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3992, i32 0, i64 7
  %arrayidx994 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx993, i32 0, i64 4
  %arrayidx995 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx994, i32 0, i64 0
  store i16 %conv991, i16* %arrayidx995, align 2
  %421 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3996 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %421, i32 0, i32 43
  %arrayidx997 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3996, i32 0, i64 7
  %arrayidx998 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx997, i32 0, i64 2
  %arrayidx999 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx998, i32 0, i64 1
  store i16 %conv991, i16* %arrayidx999, align 2
  %422 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31000 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %422, i32 0, i32 43
  %arrayidx1001 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31000, i32 0, i64 7
  %arrayidx1002 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1001, i32 0, i64 0
  %arrayidx1003 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1002, i32 0, i64 2
  store i16 %conv991, i16* %arrayidx1003, align 2
  %arrayidx1004 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %423 = load i32, i32* %arrayidx1004, align 4
  %arrayidx1005 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %424 = load i32, i32* %arrayidx1005, align 4
  %add1006 = add nsw i32 %423, %424
  %add1007 = add nsw i32 %add1006, 1
  %shr1008 = ashr i32 %add1007, 1
  %conv1009 = trunc i32 %shr1008 to i16
  %425 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31010 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %425, i32 0, i32 43
  %arrayidx1011 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31010, i32 0, i64 7
  %arrayidx1012 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1011, i32 0, i64 6
  %arrayidx1013 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1012, i32 0, i64 0
  store i16 %conv1009, i16* %arrayidx1013, align 2
  %426 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31014 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %426, i32 0, i32 43
  %arrayidx1015 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31014, i32 0, i64 7
  %arrayidx1016 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1015, i32 0, i64 4
  %arrayidx1017 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1016, i32 0, i64 1
  store i16 %conv1009, i16* %arrayidx1017, align 2
  %427 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31018 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %427, i32 0, i32 43
  %arrayidx1019 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31018, i32 0, i64 7
  %arrayidx1020 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1019, i32 0, i64 2
  %arrayidx1021 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1020, i32 0, i64 2
  store i16 %conv1009, i16* %arrayidx1021, align 2
  %428 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31022 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %428, i32 0, i32 43
  %arrayidx1023 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31022, i32 0, i64 7
  %arrayidx1024 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1023, i32 0, i64 0
  %arrayidx1025 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1024, i32 0, i64 3
  store i16 %conv1009, i16* %arrayidx1025, align 2
  %arrayidx1026 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %429 = load i32, i32* %arrayidx1026, align 4
  %arrayidx1027 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %430 = load i32, i32* %arrayidx1027, align 4
  %add1028 = add nsw i32 %429, %430
  %add1029 = add nsw i32 %add1028, 1
  %shr1030 = ashr i32 %add1029, 1
  %conv1031 = trunc i32 %shr1030 to i16
  %431 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31032 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %431, i32 0, i32 43
  %arrayidx1033 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31032, i32 0, i64 7
  %arrayidx1034 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1033, i32 0, i64 6
  %arrayidx1035 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1034, i32 0, i64 1
  store i16 %conv1031, i16* %arrayidx1035, align 2
  %432 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31036 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %432, i32 0, i32 43
  %arrayidx1037 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31036, i32 0, i64 7
  %arrayidx1038 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1037, i32 0, i64 4
  %arrayidx1039 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1038, i32 0, i64 2
  store i16 %conv1031, i16* %arrayidx1039, align 2
  %433 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31040 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %433, i32 0, i32 43
  %arrayidx1041 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31040, i32 0, i64 7
  %arrayidx1042 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1041, i32 0, i64 2
  %arrayidx1043 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1042, i32 0, i64 3
  store i16 %conv1031, i16* %arrayidx1043, align 2
  %434 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31044 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %434, i32 0, i32 43
  %arrayidx1045 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31044, i32 0, i64 7
  %arrayidx1046 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1045, i32 0, i64 0
  %arrayidx1047 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1046, i32 0, i64 4
  store i16 %conv1031, i16* %arrayidx1047, align 2
  %arrayidx1048 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %435 = load i32, i32* %arrayidx1048, align 4
  %arrayidx1049 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %436 = load i32, i32* %arrayidx1049, align 4
  %add1050 = add nsw i32 %435, %436
  %add1051 = add nsw i32 %add1050, 1
  %shr1052 = ashr i32 %add1051, 1
  %conv1053 = trunc i32 %shr1052 to i16
  %437 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31054 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %437, i32 0, i32 43
  %arrayidx1055 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31054, i32 0, i64 7
  %arrayidx1056 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1055, i32 0, i64 6
  %arrayidx1057 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1056, i32 0, i64 2
  store i16 %conv1053, i16* %arrayidx1057, align 2
  %438 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31058 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %438, i32 0, i32 43
  %arrayidx1059 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31058, i32 0, i64 7
  %arrayidx1060 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1059, i32 0, i64 4
  %arrayidx1061 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1060, i32 0, i64 3
  store i16 %conv1053, i16* %arrayidx1061, align 2
  %439 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31062 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %439, i32 0, i32 43
  %arrayidx1063 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31062, i32 0, i64 7
  %arrayidx1064 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1063, i32 0, i64 2
  %arrayidx1065 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1064, i32 0, i64 4
  store i16 %conv1053, i16* %arrayidx1065, align 2
  %440 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31066 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %440, i32 0, i32 43
  %arrayidx1067 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31066, i32 0, i64 7
  %arrayidx1068 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1067, i32 0, i64 0
  %arrayidx1069 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1068, i32 0, i64 5
  store i16 %conv1053, i16* %arrayidx1069, align 2
  %arrayidx1070 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %441 = load i32, i32* %arrayidx1070, align 4
  %arrayidx1071 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %442 = load i32, i32* %arrayidx1071, align 4
  %add1072 = add nsw i32 %441, %442
  %add1073 = add nsw i32 %add1072, 1
  %shr1074 = ashr i32 %add1073, 1
  %conv1075 = trunc i32 %shr1074 to i16
  %443 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31076 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %443, i32 0, i32 43
  %arrayidx1077 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31076, i32 0, i64 7
  %arrayidx1078 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1077, i32 0, i64 6
  %arrayidx1079 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1078, i32 0, i64 3
  store i16 %conv1075, i16* %arrayidx1079, align 2
  %444 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31080 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %444, i32 0, i32 43
  %arrayidx1081 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31080, i32 0, i64 7
  %arrayidx1082 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1081, i32 0, i64 4
  %arrayidx1083 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1082, i32 0, i64 4
  store i16 %conv1075, i16* %arrayidx1083, align 2
  %445 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31084 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %445, i32 0, i32 43
  %arrayidx1085 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31084, i32 0, i64 7
  %arrayidx1086 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1085, i32 0, i64 2
  %arrayidx1087 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1086, i32 0, i64 5
  store i16 %conv1075, i16* %arrayidx1087, align 2
  %446 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31088 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %446, i32 0, i32 43
  %arrayidx1089 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31088, i32 0, i64 7
  %arrayidx1090 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1089, i32 0, i64 0
  %arrayidx1091 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1090, i32 0, i64 6
  store i16 %conv1075, i16* %arrayidx1091, align 2
  %arrayidx1092 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %447 = load i32, i32* %arrayidx1092, align 4
  %arrayidx1093 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %448 = load i32, i32* %arrayidx1093, align 4
  %add1094 = add nsw i32 %447, %448
  %add1095 = add nsw i32 %add1094, 1
  %shr1096 = ashr i32 %add1095, 1
  %conv1097 = trunc i32 %shr1096 to i16
  %449 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31098 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %449, i32 0, i32 43
  %arrayidx1099 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31098, i32 0, i64 7
  %arrayidx1100 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1099, i32 0, i64 6
  %arrayidx1101 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1100, i32 0, i64 4
  store i16 %conv1097, i16* %arrayidx1101, align 2
  %450 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31102 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %450, i32 0, i32 43
  %arrayidx1103 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31102, i32 0, i64 7
  %arrayidx1104 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1103, i32 0, i64 4
  %arrayidx1105 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1104, i32 0, i64 5
  store i16 %conv1097, i16* %arrayidx1105, align 2
  %451 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %451, i32 0, i32 43
  %arrayidx1107 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31106, i32 0, i64 7
  %arrayidx1108 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1107, i32 0, i64 2
  %arrayidx1109 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1108, i32 0, i64 6
  store i16 %conv1097, i16* %arrayidx1109, align 2
  %452 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31110 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %452, i32 0, i32 43
  %arrayidx1111 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31110, i32 0, i64 7
  %arrayidx1112 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1111, i32 0, i64 0
  %arrayidx1113 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1112, i32 0, i64 7
  store i16 %conv1097, i16* %arrayidx1113, align 2
  %arrayidx1114 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %453 = load i32, i32* %arrayidx1114, align 4
  %arrayidx1115 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %454 = load i32, i32* %arrayidx1115, align 4
  %add1116 = add nsw i32 %453, %454
  %add1117 = add nsw i32 %add1116, 1
  %shr1118 = ashr i32 %add1117, 1
  %conv1119 = trunc i32 %shr1118 to i16
  %455 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31120 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %455, i32 0, i32 43
  %arrayidx1121 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31120, i32 0, i64 7
  %arrayidx1122 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1121, i32 0, i64 6
  %arrayidx1123 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1122, i32 0, i64 5
  store i16 %conv1119, i16* %arrayidx1123, align 2
  %456 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %456, i32 0, i32 43
  %arrayidx1125 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31124, i32 0, i64 7
  %arrayidx1126 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1125, i32 0, i64 4
  %arrayidx1127 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1126, i32 0, i64 6
  store i16 %conv1119, i16* %arrayidx1127, align 2
  %457 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %457, i32 0, i32 43
  %arrayidx1129 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31128, i32 0, i64 7
  %arrayidx1130 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1129, i32 0, i64 2
  %arrayidx1131 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1130, i32 0, i64 7
  store i16 %conv1119, i16* %arrayidx1131, align 2
  %arrayidx1132 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %458 = load i32, i32* %arrayidx1132, align 4
  %arrayidx1133 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %459 = load i32, i32* %arrayidx1133, align 4
  %add1134 = add nsw i32 %458, %459
  %add1135 = add nsw i32 %add1134, 1
  %shr1136 = ashr i32 %add1135, 1
  %conv1137 = trunc i32 %shr1136 to i16
  %460 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31138 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %460, i32 0, i32 43
  %arrayidx1139 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31138, i32 0, i64 7
  %arrayidx1140 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1139, i32 0, i64 6
  %arrayidx1141 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1140, i32 0, i64 6
  store i16 %conv1137, i16* %arrayidx1141, align 2
  %461 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31142 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %461, i32 0, i32 43
  %arrayidx1143 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31142, i32 0, i64 7
  %arrayidx1144 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1143, i32 0, i64 4
  %arrayidx1145 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1144, i32 0, i64 7
  store i16 %conv1137, i16* %arrayidx1145, align 2
  %arrayidx1146 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %462 = load i32, i32* %arrayidx1146, align 4
  %arrayidx1147 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  %463 = load i32, i32* %arrayidx1147, align 4
  %add1148 = add nsw i32 %462, %463
  %add1149 = add nsw i32 %add1148, 1
  %shr1150 = ashr i32 %add1149, 1
  %conv1151 = trunc i32 %shr1150 to i16
  %464 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31152 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %464, i32 0, i32 43
  %arrayidx1153 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31152, i32 0, i64 7
  %arrayidx1154 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1153, i32 0, i64 6
  %arrayidx1155 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1154, i32 0, i64 7
  store i16 %conv1151, i16* %arrayidx1155, align 2
  %arrayidx1156 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %465 = load i32, i32* %arrayidx1156, align 4
  %arrayidx1157 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %466 = load i32, i32* %arrayidx1157, align 4
  %add1158 = add nsw i32 %465, %466
  %arrayidx1159 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %467 = load i32, i32* %arrayidx1159, align 4
  %mul1160 = mul nsw i32 2, %467
  %add1161 = add nsw i32 %add1158, %mul1160
  %add1162 = add nsw i32 %add1161, 2
  %shr1163 = ashr i32 %add1162, 2
  %conv1164 = trunc i32 %shr1163 to i16
  %468 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31165 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %468, i32 0, i32 43
  %arrayidx1166 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31165, i32 0, i64 7
  %arrayidx1167 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1166, i32 0, i64 1
  %arrayidx1168 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1167, i32 0, i64 0
  store i16 %conv1164, i16* %arrayidx1168, align 2
  %arrayidx1169 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %469 = load i32, i32* %arrayidx1169, align 4
  %arrayidx1170 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %470 = load i32, i32* %arrayidx1170, align 4
  %add1171 = add nsw i32 %469, %470
  %arrayidx1172 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %471 = load i32, i32* %arrayidx1172, align 4
  %mul1173 = mul nsw i32 2, %471
  %add1174 = add nsw i32 %add1171, %mul1173
  %add1175 = add nsw i32 %add1174, 2
  %shr1176 = ashr i32 %add1175, 2
  %conv1177 = trunc i32 %shr1176 to i16
  %472 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %472, i32 0, i32 43
  %arrayidx1179 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31178, i32 0, i64 7
  %arrayidx1180 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1179, i32 0, i64 3
  %arrayidx1181 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1180, i32 0, i64 0
  store i16 %conv1177, i16* %arrayidx1181, align 2
  %473 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %473, i32 0, i32 43
  %arrayidx1183 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31182, i32 0, i64 7
  %arrayidx1184 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1183, i32 0, i64 1
  %arrayidx1185 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1184, i32 0, i64 1
  store i16 %conv1177, i16* %arrayidx1185, align 2
  %arrayidx1186 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %474 = load i32, i32* %arrayidx1186, align 4
  %arrayidx1187 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %475 = load i32, i32* %arrayidx1187, align 4
  %add1188 = add nsw i32 %474, %475
  %arrayidx1189 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %476 = load i32, i32* %arrayidx1189, align 4
  %mul1190 = mul nsw i32 2, %476
  %add1191 = add nsw i32 %add1188, %mul1190
  %add1192 = add nsw i32 %add1191, 2
  %shr1193 = ashr i32 %add1192, 2
  %conv1194 = trunc i32 %shr1193 to i16
  %477 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31195 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %477, i32 0, i32 43
  %arrayidx1196 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31195, i32 0, i64 7
  %arrayidx1197 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1196, i32 0, i64 5
  %arrayidx1198 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1197, i32 0, i64 0
  store i16 %conv1194, i16* %arrayidx1198, align 2
  %478 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31199 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %478, i32 0, i32 43
  %arrayidx1200 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31199, i32 0, i64 7
  %arrayidx1201 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1200, i32 0, i64 3
  %arrayidx1202 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1201, i32 0, i64 1
  store i16 %conv1194, i16* %arrayidx1202, align 2
  %479 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31203 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %479, i32 0, i32 43
  %arrayidx1204 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31203, i32 0, i64 7
  %arrayidx1205 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1204, i32 0, i64 1
  %arrayidx1206 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1205, i32 0, i64 2
  store i16 %conv1194, i16* %arrayidx1206, align 2
  %arrayidx1207 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %480 = load i32, i32* %arrayidx1207, align 4
  %arrayidx1208 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %481 = load i32, i32* %arrayidx1208, align 4
  %add1209 = add nsw i32 %480, %481
  %arrayidx1210 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %482 = load i32, i32* %arrayidx1210, align 4
  %mul1211 = mul nsw i32 2, %482
  %add1212 = add nsw i32 %add1209, %mul1211
  %add1213 = add nsw i32 %add1212, 2
  %shr1214 = ashr i32 %add1213, 2
  %conv1215 = trunc i32 %shr1214 to i16
  %483 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31216 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %483, i32 0, i32 43
  %arrayidx1217 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31216, i32 0, i64 7
  %arrayidx1218 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1217, i32 0, i64 7
  %arrayidx1219 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1218, i32 0, i64 0
  store i16 %conv1215, i16* %arrayidx1219, align 2
  %484 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31220 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %484, i32 0, i32 43
  %arrayidx1221 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31220, i32 0, i64 7
  %arrayidx1222 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1221, i32 0, i64 5
  %arrayidx1223 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1222, i32 0, i64 1
  store i16 %conv1215, i16* %arrayidx1223, align 2
  %485 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31224 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %485, i32 0, i32 43
  %arrayidx1225 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31224, i32 0, i64 7
  %arrayidx1226 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1225, i32 0, i64 3
  %arrayidx1227 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1226, i32 0, i64 2
  store i16 %conv1215, i16* %arrayidx1227, align 2
  %486 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31228 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %486, i32 0, i32 43
  %arrayidx1229 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31228, i32 0, i64 7
  %arrayidx1230 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1229, i32 0, i64 1
  %arrayidx1231 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1230, i32 0, i64 3
  store i16 %conv1215, i16* %arrayidx1231, align 2
  %arrayidx1232 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %487 = load i32, i32* %arrayidx1232, align 4
  %arrayidx1233 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %488 = load i32, i32* %arrayidx1233, align 4
  %add1234 = add nsw i32 %487, %488
  %arrayidx1235 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %489 = load i32, i32* %arrayidx1235, align 4
  %mul1236 = mul nsw i32 2, %489
  %add1237 = add nsw i32 %add1234, %mul1236
  %add1238 = add nsw i32 %add1237, 2
  %shr1239 = ashr i32 %add1238, 2
  %conv1240 = trunc i32 %shr1239 to i16
  %490 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %490, i32 0, i32 43
  %arrayidx1242 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31241, i32 0, i64 7
  %arrayidx1243 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1242, i32 0, i64 7
  %arrayidx1244 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1243, i32 0, i64 1
  store i16 %conv1240, i16* %arrayidx1244, align 2
  %491 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31245 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %491, i32 0, i32 43
  %arrayidx1246 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31245, i32 0, i64 7
  %arrayidx1247 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1246, i32 0, i64 5
  %arrayidx1248 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1247, i32 0, i64 2
  store i16 %conv1240, i16* %arrayidx1248, align 2
  %492 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31249 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %492, i32 0, i32 43
  %arrayidx1250 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31249, i32 0, i64 7
  %arrayidx1251 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1250, i32 0, i64 3
  %arrayidx1252 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1251, i32 0, i64 3
  store i16 %conv1240, i16* %arrayidx1252, align 2
  %493 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31253 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %493, i32 0, i32 43
  %arrayidx1254 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31253, i32 0, i64 7
  %arrayidx1255 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1254, i32 0, i64 1
  %arrayidx1256 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1255, i32 0, i64 4
  store i16 %conv1240, i16* %arrayidx1256, align 2
  %arrayidx1257 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %494 = load i32, i32* %arrayidx1257, align 4
  %arrayidx1258 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %495 = load i32, i32* %arrayidx1258, align 4
  %add1259 = add nsw i32 %494, %495
  %arrayidx1260 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %496 = load i32, i32* %arrayidx1260, align 4
  %mul1261 = mul nsw i32 2, %496
  %add1262 = add nsw i32 %add1259, %mul1261
  %add1263 = add nsw i32 %add1262, 2
  %shr1264 = ashr i32 %add1263, 2
  %conv1265 = trunc i32 %shr1264 to i16
  %497 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31266 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %497, i32 0, i32 43
  %arrayidx1267 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31266, i32 0, i64 7
  %arrayidx1268 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1267, i32 0, i64 7
  %arrayidx1269 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1268, i32 0, i64 2
  store i16 %conv1265, i16* %arrayidx1269, align 2
  %498 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31270 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %498, i32 0, i32 43
  %arrayidx1271 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31270, i32 0, i64 7
  %arrayidx1272 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1271, i32 0, i64 5
  %arrayidx1273 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1272, i32 0, i64 3
  store i16 %conv1265, i16* %arrayidx1273, align 2
  %499 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31274 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %499, i32 0, i32 43
  %arrayidx1275 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31274, i32 0, i64 7
  %arrayidx1276 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1275, i32 0, i64 3
  %arrayidx1277 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1276, i32 0, i64 4
  store i16 %conv1265, i16* %arrayidx1277, align 2
  %500 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31278 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %500, i32 0, i32 43
  %arrayidx1279 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31278, i32 0, i64 7
  %arrayidx1280 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1279, i32 0, i64 1
  %arrayidx1281 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1280, i32 0, i64 5
  store i16 %conv1265, i16* %arrayidx1281, align 2
  %arrayidx1282 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %501 = load i32, i32* %arrayidx1282, align 4
  %arrayidx1283 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %502 = load i32, i32* %arrayidx1283, align 4
  %add1284 = add nsw i32 %501, %502
  %arrayidx1285 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %503 = load i32, i32* %arrayidx1285, align 4
  %mul1286 = mul nsw i32 2, %503
  %add1287 = add nsw i32 %add1284, %mul1286
  %add1288 = add nsw i32 %add1287, 2
  %shr1289 = ashr i32 %add1288, 2
  %conv1290 = trunc i32 %shr1289 to i16
  %504 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %504, i32 0, i32 43
  %arrayidx1292 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31291, i32 0, i64 7
  %arrayidx1293 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1292, i32 0, i64 7
  %arrayidx1294 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1293, i32 0, i64 3
  store i16 %conv1290, i16* %arrayidx1294, align 2
  %505 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31295 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %505, i32 0, i32 43
  %arrayidx1296 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31295, i32 0, i64 7
  %arrayidx1297 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1296, i32 0, i64 5
  %arrayidx1298 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1297, i32 0, i64 4
  store i16 %conv1290, i16* %arrayidx1298, align 2
  %506 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31299 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %506, i32 0, i32 43
  %arrayidx1300 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31299, i32 0, i64 7
  %arrayidx1301 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1300, i32 0, i64 3
  %arrayidx1302 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1301, i32 0, i64 5
  store i16 %conv1290, i16* %arrayidx1302, align 2
  %507 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31303 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %507, i32 0, i32 43
  %arrayidx1304 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31303, i32 0, i64 7
  %arrayidx1305 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1304, i32 0, i64 1
  %arrayidx1306 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1305, i32 0, i64 6
  store i16 %conv1290, i16* %arrayidx1306, align 2
  %arrayidx1307 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %508 = load i32, i32* %arrayidx1307, align 4
  %arrayidx1308 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %509 = load i32, i32* %arrayidx1308, align 4
  %add1309 = add nsw i32 %508, %509
  %arrayidx1310 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %510 = load i32, i32* %arrayidx1310, align 4
  %mul1311 = mul nsw i32 2, %510
  %add1312 = add nsw i32 %add1309, %mul1311
  %add1313 = add nsw i32 %add1312, 2
  %shr1314 = ashr i32 %add1313, 2
  %conv1315 = trunc i32 %shr1314 to i16
  %511 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31316 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %511, i32 0, i32 43
  %arrayidx1317 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31316, i32 0, i64 7
  %arrayidx1318 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1317, i32 0, i64 7
  %arrayidx1319 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1318, i32 0, i64 4
  store i16 %conv1315, i16* %arrayidx1319, align 2
  %512 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31320 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %512, i32 0, i32 43
  %arrayidx1321 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31320, i32 0, i64 7
  %arrayidx1322 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1321, i32 0, i64 5
  %arrayidx1323 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1322, i32 0, i64 5
  store i16 %conv1315, i16* %arrayidx1323, align 2
  %513 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31324 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %513, i32 0, i32 43
  %arrayidx1325 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31324, i32 0, i64 7
  %arrayidx1326 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1325, i32 0, i64 3
  %arrayidx1327 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1326, i32 0, i64 6
  store i16 %conv1315, i16* %arrayidx1327, align 2
  %514 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31328 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %514, i32 0, i32 43
  %arrayidx1329 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31328, i32 0, i64 7
  %arrayidx1330 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1329, i32 0, i64 1
  %arrayidx1331 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1330, i32 0, i64 7
  store i16 %conv1315, i16* %arrayidx1331, align 2
  %arrayidx1332 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 9
  %515 = load i32, i32* %arrayidx1332, align 4
  %arrayidx1333 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %516 = load i32, i32* %arrayidx1333, align 4
  %add1334 = add nsw i32 %515, %516
  %arrayidx1335 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %517 = load i32, i32* %arrayidx1335, align 4
  %mul1336 = mul nsw i32 2, %517
  %add1337 = add nsw i32 %add1334, %mul1336
  %add1338 = add nsw i32 %add1337, 2
  %shr1339 = ashr i32 %add1338, 2
  %conv1340 = trunc i32 %shr1339 to i16
  %518 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31341 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %518, i32 0, i32 43
  %arrayidx1342 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31341, i32 0, i64 7
  %arrayidx1343 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1342, i32 0, i64 7
  %arrayidx1344 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1343, i32 0, i64 5
  store i16 %conv1340, i16* %arrayidx1344, align 2
  %519 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31345 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %519, i32 0, i32 43
  %arrayidx1346 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31345, i32 0, i64 7
  %arrayidx1347 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1346, i32 0, i64 5
  %arrayidx1348 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1347, i32 0, i64 6
  store i16 %conv1340, i16* %arrayidx1348, align 2
  %520 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31349 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %520, i32 0, i32 43
  %arrayidx1350 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31349, i32 0, i64 7
  %arrayidx1351 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1350, i32 0, i64 3
  %arrayidx1352 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1351, i32 0, i64 7
  store i16 %conv1340, i16* %arrayidx1352, align 2
  %arrayidx1353 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 10
  %521 = load i32, i32* %arrayidx1353, align 4
  %arrayidx1354 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  %522 = load i32, i32* %arrayidx1354, align 4
  %add1355 = add nsw i32 %521, %522
  %arrayidx1356 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %523 = load i32, i32* %arrayidx1356, align 4
  %mul1357 = mul nsw i32 2, %523
  %add1358 = add nsw i32 %add1355, %mul1357
  %add1359 = add nsw i32 %add1358, 2
  %shr1360 = ashr i32 %add1359, 2
  %conv1361 = trunc i32 %shr1360 to i16
  %524 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31362 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %524, i32 0, i32 43
  %arrayidx1363 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31362, i32 0, i64 7
  %arrayidx1364 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1363, i32 0, i64 7
  %arrayidx1365 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1364, i32 0, i64 6
  store i16 %conv1361, i16* %arrayidx1365, align 2
  %525 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31366 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %525, i32 0, i32 43
  %arrayidx1367 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31366, i32 0, i64 7
  %arrayidx1368 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1367, i32 0, i64 5
  %arrayidx1369 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1368, i32 0, i64 7
  store i16 %conv1361, i16* %arrayidx1369, align 2
  %arrayidx1370 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 11
  %526 = load i32, i32* %arrayidx1370, align 4
  %arrayidx1371 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 13
  %527 = load i32, i32* %arrayidx1371, align 4
  %add1372 = add nsw i32 %526, %527
  %arrayidx1373 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 12
  %528 = load i32, i32* %arrayidx1373, align 4
  %mul1374 = mul nsw i32 2, %528
  %add1375 = add nsw i32 %add1372, %mul1374
  %add1376 = add nsw i32 %add1375, 2
  %shr1377 = ashr i32 %add1376, 2
  %conv1378 = trunc i32 %shr1377 to i16
  %529 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31379 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %529, i32 0, i32 43
  %arrayidx1380 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31379, i32 0, i64 7
  %arrayidx1381 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1380, i32 0, i64 7
  %arrayidx1382 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1381, i32 0, i64 7
  store i16 %conv1378, i16* %arrayidx1382, align 2
  br label %if.end.1383

if.end.1383:                                      ; preds = %if.then.573, %if.end.571
  %530 = load i32, i32* %block_available_up, align 4
  %tobool1384 = icmp ne i32 %530, 0
  br i1 %tobool1384, label %land.lhs.true.1385, label %if.end.2641

land.lhs.true.1385:                               ; preds = %if.end.1383
  %531 = load i32, i32* %block_available_left, align 4
  %tobool1386 = icmp ne i32 %531, 0
  br i1 %tobool1386, label %land.lhs.true.1387, label %if.end.2641

land.lhs.true.1387:                               ; preds = %land.lhs.true.1385
  %532 = load i32, i32* %block_available_up_left, align 4
  %tobool1388 = icmp ne i32 %532, 0
  br i1 %tobool1388, label %if.then.1389, label %if.end.2641

if.then.1389:                                     ; preds = %land.lhs.true.1387
  %arrayidx1390 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %533 = load i32, i32* %arrayidx1390, align 4
  %arrayidx1391 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %534 = load i32, i32* %arrayidx1391, align 4
  %add1392 = add nsw i32 %533, %534
  %arrayidx1393 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %535 = load i32, i32* %arrayidx1393, align 4
  %mul1394 = mul nsw i32 2, %535
  %add1395 = add nsw i32 %add1392, %mul1394
  %add1396 = add nsw i32 %add1395, 2
  %shr1397 = ashr i32 %add1396, 2
  %conv1398 = trunc i32 %shr1397 to i16
  %536 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31399 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %536, i32 0, i32 43
  %arrayidx1400 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31399, i32 0, i64 4
  %arrayidx1401 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1400, i32 0, i64 7
  %arrayidx1402 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1401, i32 0, i64 0
  store i16 %conv1398, i16* %arrayidx1402, align 2
  %arrayidx1403 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %537 = load i32, i32* %arrayidx1403, align 4
  %arrayidx1404 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %538 = load i32, i32* %arrayidx1404, align 4
  %add1405 = add nsw i32 %537, %538
  %arrayidx1406 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %539 = load i32, i32* %arrayidx1406, align 4
  %mul1407 = mul nsw i32 2, %539
  %add1408 = add nsw i32 %add1405, %mul1407
  %add1409 = add nsw i32 %add1408, 2
  %shr1410 = ashr i32 %add1409, 2
  %conv1411 = trunc i32 %shr1410 to i16
  %540 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31412 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %540, i32 0, i32 43
  %arrayidx1413 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31412, i32 0, i64 4
  %arrayidx1414 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1413, i32 0, i64 7
  %arrayidx1415 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1414, i32 0, i64 1
  store i16 %conv1411, i16* %arrayidx1415, align 2
  %541 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31416 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %541, i32 0, i32 43
  %arrayidx1417 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31416, i32 0, i64 4
  %arrayidx1418 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1417, i32 0, i64 6
  %arrayidx1419 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1418, i32 0, i64 0
  store i16 %conv1411, i16* %arrayidx1419, align 2
  %arrayidx1420 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %542 = load i32, i32* %arrayidx1420, align 4
  %arrayidx1421 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %543 = load i32, i32* %arrayidx1421, align 4
  %add1422 = add nsw i32 %542, %543
  %arrayidx1423 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %544 = load i32, i32* %arrayidx1423, align 4
  %mul1424 = mul nsw i32 2, %544
  %add1425 = add nsw i32 %add1422, %mul1424
  %add1426 = add nsw i32 %add1425, 2
  %shr1427 = ashr i32 %add1426, 2
  %conv1428 = trunc i32 %shr1427 to i16
  %545 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31429 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %545, i32 0, i32 43
  %arrayidx1430 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31429, i32 0, i64 4
  %arrayidx1431 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1430, i32 0, i64 7
  %arrayidx1432 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1431, i32 0, i64 2
  store i16 %conv1428, i16* %arrayidx1432, align 2
  %546 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31433 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %546, i32 0, i32 43
  %arrayidx1434 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31433, i32 0, i64 4
  %arrayidx1435 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1434, i32 0, i64 6
  %arrayidx1436 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1435, i32 0, i64 1
  store i16 %conv1428, i16* %arrayidx1436, align 2
  %547 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31437 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %547, i32 0, i32 43
  %arrayidx1438 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31437, i32 0, i64 4
  %arrayidx1439 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1438, i32 0, i64 5
  %arrayidx1440 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1439, i32 0, i64 0
  store i16 %conv1428, i16* %arrayidx1440, align 2
  %arrayidx1441 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %548 = load i32, i32* %arrayidx1441, align 4
  %arrayidx1442 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %549 = load i32, i32* %arrayidx1442, align 4
  %add1443 = add nsw i32 %548, %549
  %arrayidx1444 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %550 = load i32, i32* %arrayidx1444, align 4
  %mul1445 = mul nsw i32 2, %550
  %add1446 = add nsw i32 %add1443, %mul1445
  %add1447 = add nsw i32 %add1446, 2
  %shr1448 = ashr i32 %add1447, 2
  %conv1449 = trunc i32 %shr1448 to i16
  %551 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31450 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %551, i32 0, i32 43
  %arrayidx1451 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31450, i32 0, i64 4
  %arrayidx1452 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1451, i32 0, i64 7
  %arrayidx1453 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1452, i32 0, i64 3
  store i16 %conv1449, i16* %arrayidx1453, align 2
  %552 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31454 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %552, i32 0, i32 43
  %arrayidx1455 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31454, i32 0, i64 4
  %arrayidx1456 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1455, i32 0, i64 6
  %arrayidx1457 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1456, i32 0, i64 2
  store i16 %conv1449, i16* %arrayidx1457, align 2
  %553 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31458 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %553, i32 0, i32 43
  %arrayidx1459 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31458, i32 0, i64 4
  %arrayidx1460 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1459, i32 0, i64 5
  %arrayidx1461 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1460, i32 0, i64 1
  store i16 %conv1449, i16* %arrayidx1461, align 2
  %554 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31462 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %554, i32 0, i32 43
  %arrayidx1463 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31462, i32 0, i64 4
  %arrayidx1464 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1463, i32 0, i64 4
  %arrayidx1465 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1464, i32 0, i64 0
  store i16 %conv1449, i16* %arrayidx1465, align 2
  %arrayidx1466 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %555 = load i32, i32* %arrayidx1466, align 4
  %arrayidx1467 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %556 = load i32, i32* %arrayidx1467, align 4
  %add1468 = add nsw i32 %555, %556
  %arrayidx1469 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %557 = load i32, i32* %arrayidx1469, align 4
  %mul1470 = mul nsw i32 2, %557
  %add1471 = add nsw i32 %add1468, %mul1470
  %add1472 = add nsw i32 %add1471, 2
  %shr1473 = ashr i32 %add1472, 2
  %conv1474 = trunc i32 %shr1473 to i16
  %558 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31475 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %558, i32 0, i32 43
  %arrayidx1476 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31475, i32 0, i64 4
  %arrayidx1477 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1476, i32 0, i64 7
  %arrayidx1478 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1477, i32 0, i64 4
  store i16 %conv1474, i16* %arrayidx1478, align 2
  %559 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31479 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %559, i32 0, i32 43
  %arrayidx1480 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31479, i32 0, i64 4
  %arrayidx1481 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1480, i32 0, i64 6
  %arrayidx1482 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1481, i32 0, i64 3
  store i16 %conv1474, i16* %arrayidx1482, align 2
  %560 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31483 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %560, i32 0, i32 43
  %arrayidx1484 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31483, i32 0, i64 4
  %arrayidx1485 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1484, i32 0, i64 5
  %arrayidx1486 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1485, i32 0, i64 2
  store i16 %conv1474, i16* %arrayidx1486, align 2
  %561 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31487 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %561, i32 0, i32 43
  %arrayidx1488 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31487, i32 0, i64 4
  %arrayidx1489 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1488, i32 0, i64 4
  %arrayidx1490 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1489, i32 0, i64 1
  store i16 %conv1474, i16* %arrayidx1490, align 2
  %562 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31491 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %562, i32 0, i32 43
  %arrayidx1492 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31491, i32 0, i64 4
  %arrayidx1493 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1492, i32 0, i64 3
  %arrayidx1494 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1493, i32 0, i64 0
  store i16 %conv1474, i16* %arrayidx1494, align 2
  %arrayidx1495 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %563 = load i32, i32* %arrayidx1495, align 4
  %arrayidx1496 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %564 = load i32, i32* %arrayidx1496, align 4
  %add1497 = add nsw i32 %563, %564
  %arrayidx1498 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %565 = load i32, i32* %arrayidx1498, align 4
  %mul1499 = mul nsw i32 2, %565
  %add1500 = add nsw i32 %add1497, %mul1499
  %add1501 = add nsw i32 %add1500, 2
  %shr1502 = ashr i32 %add1501, 2
  %conv1503 = trunc i32 %shr1502 to i16
  %566 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31504 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %566, i32 0, i32 43
  %arrayidx1505 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31504, i32 0, i64 4
  %arrayidx1506 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1505, i32 0, i64 7
  %arrayidx1507 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1506, i32 0, i64 5
  store i16 %conv1503, i16* %arrayidx1507, align 2
  %567 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31508 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %567, i32 0, i32 43
  %arrayidx1509 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31508, i32 0, i64 4
  %arrayidx1510 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1509, i32 0, i64 6
  %arrayidx1511 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1510, i32 0, i64 4
  store i16 %conv1503, i16* %arrayidx1511, align 2
  %568 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31512 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %568, i32 0, i32 43
  %arrayidx1513 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31512, i32 0, i64 4
  %arrayidx1514 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1513, i32 0, i64 5
  %arrayidx1515 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1514, i32 0, i64 3
  store i16 %conv1503, i16* %arrayidx1515, align 2
  %569 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31516 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %569, i32 0, i32 43
  %arrayidx1517 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31516, i32 0, i64 4
  %arrayidx1518 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1517, i32 0, i64 4
  %arrayidx1519 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1518, i32 0, i64 2
  store i16 %conv1503, i16* %arrayidx1519, align 2
  %570 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31520 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %570, i32 0, i32 43
  %arrayidx1521 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31520, i32 0, i64 4
  %arrayidx1522 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1521, i32 0, i64 3
  %arrayidx1523 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1522, i32 0, i64 1
  store i16 %conv1503, i16* %arrayidx1523, align 2
  %571 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31524 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %571, i32 0, i32 43
  %arrayidx1525 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31524, i32 0, i64 4
  %arrayidx1526 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1525, i32 0, i64 2
  %arrayidx1527 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1526, i32 0, i64 0
  store i16 %conv1503, i16* %arrayidx1527, align 2
  %arrayidx1528 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %572 = load i32, i32* %arrayidx1528, align 4
  %arrayidx1529 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %573 = load i32, i32* %arrayidx1529, align 4
  %add1530 = add nsw i32 %572, %573
  %arrayidx1531 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %574 = load i32, i32* %arrayidx1531, align 4
  %mul1532 = mul nsw i32 2, %574
  %add1533 = add nsw i32 %add1530, %mul1532
  %add1534 = add nsw i32 %add1533, 2
  %shr1535 = ashr i32 %add1534, 2
  %conv1536 = trunc i32 %shr1535 to i16
  %575 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31537 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %575, i32 0, i32 43
  %arrayidx1538 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31537, i32 0, i64 4
  %arrayidx1539 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1538, i32 0, i64 7
  %arrayidx1540 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1539, i32 0, i64 6
  store i16 %conv1536, i16* %arrayidx1540, align 2
  %576 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31541 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %576, i32 0, i32 43
  %arrayidx1542 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31541, i32 0, i64 4
  %arrayidx1543 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1542, i32 0, i64 6
  %arrayidx1544 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1543, i32 0, i64 5
  store i16 %conv1536, i16* %arrayidx1544, align 2
  %577 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31545 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %577, i32 0, i32 43
  %arrayidx1546 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31545, i32 0, i64 4
  %arrayidx1547 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1546, i32 0, i64 5
  %arrayidx1548 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1547, i32 0, i64 4
  store i16 %conv1536, i16* %arrayidx1548, align 2
  %578 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31549 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %578, i32 0, i32 43
  %arrayidx1550 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31549, i32 0, i64 4
  %arrayidx1551 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1550, i32 0, i64 4
  %arrayidx1552 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1551, i32 0, i64 3
  store i16 %conv1536, i16* %arrayidx1552, align 2
  %579 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31553 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %579, i32 0, i32 43
  %arrayidx1554 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31553, i32 0, i64 4
  %arrayidx1555 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1554, i32 0, i64 3
  %arrayidx1556 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1555, i32 0, i64 2
  store i16 %conv1536, i16* %arrayidx1556, align 2
  %580 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31557 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %580, i32 0, i32 43
  %arrayidx1558 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31557, i32 0, i64 4
  %arrayidx1559 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1558, i32 0, i64 2
  %arrayidx1560 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1559, i32 0, i64 1
  store i16 %conv1536, i16* %arrayidx1560, align 2
  %581 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31561 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %581, i32 0, i32 43
  %arrayidx1562 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31561, i32 0, i64 4
  %arrayidx1563 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1562, i32 0, i64 1
  %arrayidx1564 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1563, i32 0, i64 0
  store i16 %conv1536, i16* %arrayidx1564, align 2
  %arrayidx1565 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %582 = load i32, i32* %arrayidx1565, align 4
  %arrayidx1566 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %583 = load i32, i32* %arrayidx1566, align 4
  %add1567 = add nsw i32 %582, %583
  %arrayidx1568 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %584 = load i32, i32* %arrayidx1568, align 4
  %mul1569 = mul nsw i32 2, %584
  %add1570 = add nsw i32 %add1567, %mul1569
  %add1571 = add nsw i32 %add1570, 2
  %shr1572 = ashr i32 %add1571, 2
  %conv1573 = trunc i32 %shr1572 to i16
  %585 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31574 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %585, i32 0, i32 43
  %arrayidx1575 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31574, i32 0, i64 4
  %arrayidx1576 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1575, i32 0, i64 7
  %arrayidx1577 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1576, i32 0, i64 7
  store i16 %conv1573, i16* %arrayidx1577, align 2
  %586 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31578 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %586, i32 0, i32 43
  %arrayidx1579 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31578, i32 0, i64 4
  %arrayidx1580 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1579, i32 0, i64 6
  %arrayidx1581 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1580, i32 0, i64 6
  store i16 %conv1573, i16* %arrayidx1581, align 2
  %587 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31582 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %587, i32 0, i32 43
  %arrayidx1583 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31582, i32 0, i64 4
  %arrayidx1584 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1583, i32 0, i64 5
  %arrayidx1585 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1584, i32 0, i64 5
  store i16 %conv1573, i16* %arrayidx1585, align 2
  %588 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31586 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %588, i32 0, i32 43
  %arrayidx1587 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31586, i32 0, i64 4
  %arrayidx1588 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1587, i32 0, i64 4
  %arrayidx1589 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1588, i32 0, i64 4
  store i16 %conv1573, i16* %arrayidx1589, align 2
  %589 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31590 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %589, i32 0, i32 43
  %arrayidx1591 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31590, i32 0, i64 4
  %arrayidx1592 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1591, i32 0, i64 3
  %arrayidx1593 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1592, i32 0, i64 3
  store i16 %conv1573, i16* %arrayidx1593, align 2
  %590 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31594 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %590, i32 0, i32 43
  %arrayidx1595 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31594, i32 0, i64 4
  %arrayidx1596 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1595, i32 0, i64 2
  %arrayidx1597 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1596, i32 0, i64 2
  store i16 %conv1573, i16* %arrayidx1597, align 2
  %591 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31598 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %591, i32 0, i32 43
  %arrayidx1599 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31598, i32 0, i64 4
  %arrayidx1600 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1599, i32 0, i64 1
  %arrayidx1601 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1600, i32 0, i64 1
  store i16 %conv1573, i16* %arrayidx1601, align 2
  %592 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31602 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %592, i32 0, i32 43
  %arrayidx1603 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31602, i32 0, i64 4
  %arrayidx1604 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1603, i32 0, i64 0
  %arrayidx1605 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1604, i32 0, i64 0
  store i16 %conv1573, i16* %arrayidx1605, align 2
  %arrayidx1606 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %593 = load i32, i32* %arrayidx1606, align 4
  %arrayidx1607 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %594 = load i32, i32* %arrayidx1607, align 4
  %add1608 = add nsw i32 %593, %594
  %arrayidx1609 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %595 = load i32, i32* %arrayidx1609, align 4
  %mul1610 = mul nsw i32 2, %595
  %add1611 = add nsw i32 %add1608, %mul1610
  %add1612 = add nsw i32 %add1611, 2
  %shr1613 = ashr i32 %add1612, 2
  %conv1614 = trunc i32 %shr1613 to i16
  %596 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31615 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %596, i32 0, i32 43
  %arrayidx1616 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31615, i32 0, i64 4
  %arrayidx1617 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1616, i32 0, i64 6
  %arrayidx1618 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1617, i32 0, i64 7
  store i16 %conv1614, i16* %arrayidx1618, align 2
  %597 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31619 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %597, i32 0, i32 43
  %arrayidx1620 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31619, i32 0, i64 4
  %arrayidx1621 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1620, i32 0, i64 5
  %arrayidx1622 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1621, i32 0, i64 6
  store i16 %conv1614, i16* %arrayidx1622, align 2
  %598 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31623 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %598, i32 0, i32 43
  %arrayidx1624 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31623, i32 0, i64 4
  %arrayidx1625 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1624, i32 0, i64 4
  %arrayidx1626 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1625, i32 0, i64 5
  store i16 %conv1614, i16* %arrayidx1626, align 2
  %599 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31627 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %599, i32 0, i32 43
  %arrayidx1628 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31627, i32 0, i64 4
  %arrayidx1629 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1628, i32 0, i64 3
  %arrayidx1630 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1629, i32 0, i64 4
  store i16 %conv1614, i16* %arrayidx1630, align 2
  %600 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31631 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %600, i32 0, i32 43
  %arrayidx1632 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31631, i32 0, i64 4
  %arrayidx1633 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1632, i32 0, i64 2
  %arrayidx1634 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1633, i32 0, i64 3
  store i16 %conv1614, i16* %arrayidx1634, align 2
  %601 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31635 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %601, i32 0, i32 43
  %arrayidx1636 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31635, i32 0, i64 4
  %arrayidx1637 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1636, i32 0, i64 1
  %arrayidx1638 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1637, i32 0, i64 2
  store i16 %conv1614, i16* %arrayidx1638, align 2
  %602 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31639 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %602, i32 0, i32 43
  %arrayidx1640 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31639, i32 0, i64 4
  %arrayidx1641 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1640, i32 0, i64 0
  %arrayidx1642 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1641, i32 0, i64 1
  store i16 %conv1614, i16* %arrayidx1642, align 2
  %arrayidx1643 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %603 = load i32, i32* %arrayidx1643, align 4
  %arrayidx1644 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %604 = load i32, i32* %arrayidx1644, align 4
  %add1645 = add nsw i32 %603, %604
  %arrayidx1646 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %605 = load i32, i32* %arrayidx1646, align 4
  %mul1647 = mul nsw i32 2, %605
  %add1648 = add nsw i32 %add1645, %mul1647
  %add1649 = add nsw i32 %add1648, 2
  %shr1650 = ashr i32 %add1649, 2
  %conv1651 = trunc i32 %shr1650 to i16
  %606 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31652 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %606, i32 0, i32 43
  %arrayidx1653 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31652, i32 0, i64 4
  %arrayidx1654 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1653, i32 0, i64 5
  %arrayidx1655 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1654, i32 0, i64 7
  store i16 %conv1651, i16* %arrayidx1655, align 2
  %607 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31656 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %607, i32 0, i32 43
  %arrayidx1657 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31656, i32 0, i64 4
  %arrayidx1658 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1657, i32 0, i64 4
  %arrayidx1659 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1658, i32 0, i64 6
  store i16 %conv1651, i16* %arrayidx1659, align 2
  %608 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31660 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %608, i32 0, i32 43
  %arrayidx1661 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31660, i32 0, i64 4
  %arrayidx1662 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1661, i32 0, i64 3
  %arrayidx1663 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1662, i32 0, i64 5
  store i16 %conv1651, i16* %arrayidx1663, align 2
  %609 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31664 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %609, i32 0, i32 43
  %arrayidx1665 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31664, i32 0, i64 4
  %arrayidx1666 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1665, i32 0, i64 2
  %arrayidx1667 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1666, i32 0, i64 4
  store i16 %conv1651, i16* %arrayidx1667, align 2
  %610 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31668 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %610, i32 0, i32 43
  %arrayidx1669 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31668, i32 0, i64 4
  %arrayidx1670 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1669, i32 0, i64 1
  %arrayidx1671 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1670, i32 0, i64 3
  store i16 %conv1651, i16* %arrayidx1671, align 2
  %611 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31672 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %611, i32 0, i32 43
  %arrayidx1673 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31672, i32 0, i64 4
  %arrayidx1674 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1673, i32 0, i64 0
  %arrayidx1675 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1674, i32 0, i64 2
  store i16 %conv1651, i16* %arrayidx1675, align 2
  %arrayidx1676 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %612 = load i32, i32* %arrayidx1676, align 4
  %arrayidx1677 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %613 = load i32, i32* %arrayidx1677, align 4
  %add1678 = add nsw i32 %612, %613
  %arrayidx1679 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %614 = load i32, i32* %arrayidx1679, align 4
  %mul1680 = mul nsw i32 2, %614
  %add1681 = add nsw i32 %add1678, %mul1680
  %add1682 = add nsw i32 %add1681, 2
  %shr1683 = ashr i32 %add1682, 2
  %conv1684 = trunc i32 %shr1683 to i16
  %615 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31685 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %615, i32 0, i32 43
  %arrayidx1686 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31685, i32 0, i64 4
  %arrayidx1687 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1686, i32 0, i64 4
  %arrayidx1688 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1687, i32 0, i64 7
  store i16 %conv1684, i16* %arrayidx1688, align 2
  %616 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31689 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %616, i32 0, i32 43
  %arrayidx1690 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31689, i32 0, i64 4
  %arrayidx1691 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1690, i32 0, i64 3
  %arrayidx1692 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1691, i32 0, i64 6
  store i16 %conv1684, i16* %arrayidx1692, align 2
  %617 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31693 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %617, i32 0, i32 43
  %arrayidx1694 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31693, i32 0, i64 4
  %arrayidx1695 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1694, i32 0, i64 2
  %arrayidx1696 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1695, i32 0, i64 5
  store i16 %conv1684, i16* %arrayidx1696, align 2
  %618 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31697 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %618, i32 0, i32 43
  %arrayidx1698 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31697, i32 0, i64 4
  %arrayidx1699 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1698, i32 0, i64 1
  %arrayidx1700 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1699, i32 0, i64 4
  store i16 %conv1684, i16* %arrayidx1700, align 2
  %619 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31701 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %619, i32 0, i32 43
  %arrayidx1702 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31701, i32 0, i64 4
  %arrayidx1703 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1702, i32 0, i64 0
  %arrayidx1704 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1703, i32 0, i64 3
  store i16 %conv1684, i16* %arrayidx1704, align 2
  %arrayidx1705 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %620 = load i32, i32* %arrayidx1705, align 4
  %arrayidx1706 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %621 = load i32, i32* %arrayidx1706, align 4
  %add1707 = add nsw i32 %620, %621
  %arrayidx1708 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %622 = load i32, i32* %arrayidx1708, align 4
  %mul1709 = mul nsw i32 2, %622
  %add1710 = add nsw i32 %add1707, %mul1709
  %add1711 = add nsw i32 %add1710, 2
  %shr1712 = ashr i32 %add1711, 2
  %conv1713 = trunc i32 %shr1712 to i16
  %623 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31714 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %623, i32 0, i32 43
  %arrayidx1715 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31714, i32 0, i64 4
  %arrayidx1716 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1715, i32 0, i64 3
  %arrayidx1717 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1716, i32 0, i64 7
  store i16 %conv1713, i16* %arrayidx1717, align 2
  %624 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31718 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %624, i32 0, i32 43
  %arrayidx1719 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31718, i32 0, i64 4
  %arrayidx1720 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1719, i32 0, i64 2
  %arrayidx1721 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1720, i32 0, i64 6
  store i16 %conv1713, i16* %arrayidx1721, align 2
  %625 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31722 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %625, i32 0, i32 43
  %arrayidx1723 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31722, i32 0, i64 4
  %arrayidx1724 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1723, i32 0, i64 1
  %arrayidx1725 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1724, i32 0, i64 5
  store i16 %conv1713, i16* %arrayidx1725, align 2
  %626 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31726 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %626, i32 0, i32 43
  %arrayidx1727 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31726, i32 0, i64 4
  %arrayidx1728 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1727, i32 0, i64 0
  %arrayidx1729 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1728, i32 0, i64 4
  store i16 %conv1713, i16* %arrayidx1729, align 2
  %arrayidx1730 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %627 = load i32, i32* %arrayidx1730, align 4
  %arrayidx1731 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %628 = load i32, i32* %arrayidx1731, align 4
  %add1732 = add nsw i32 %627, %628
  %arrayidx1733 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %629 = load i32, i32* %arrayidx1733, align 4
  %mul1734 = mul nsw i32 2, %629
  %add1735 = add nsw i32 %add1732, %mul1734
  %add1736 = add nsw i32 %add1735, 2
  %shr1737 = ashr i32 %add1736, 2
  %conv1738 = trunc i32 %shr1737 to i16
  %630 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31739 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %630, i32 0, i32 43
  %arrayidx1740 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31739, i32 0, i64 4
  %arrayidx1741 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1740, i32 0, i64 2
  %arrayidx1742 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1741, i32 0, i64 7
  store i16 %conv1738, i16* %arrayidx1742, align 2
  %631 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31743 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %631, i32 0, i32 43
  %arrayidx1744 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31743, i32 0, i64 4
  %arrayidx1745 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1744, i32 0, i64 1
  %arrayidx1746 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1745, i32 0, i64 6
  store i16 %conv1738, i16* %arrayidx1746, align 2
  %632 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31747 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %632, i32 0, i32 43
  %arrayidx1748 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31747, i32 0, i64 4
  %arrayidx1749 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1748, i32 0, i64 0
  %arrayidx1750 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1749, i32 0, i64 5
  store i16 %conv1738, i16* %arrayidx1750, align 2
  %arrayidx1751 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %633 = load i32, i32* %arrayidx1751, align 4
  %arrayidx1752 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %634 = load i32, i32* %arrayidx1752, align 4
  %add1753 = add nsw i32 %633, %634
  %arrayidx1754 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %635 = load i32, i32* %arrayidx1754, align 4
  %mul1755 = mul nsw i32 2, %635
  %add1756 = add nsw i32 %add1753, %mul1755
  %add1757 = add nsw i32 %add1756, 2
  %shr1758 = ashr i32 %add1757, 2
  %conv1759 = trunc i32 %shr1758 to i16
  %636 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31760 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %636, i32 0, i32 43
  %arrayidx1761 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31760, i32 0, i64 4
  %arrayidx1762 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1761, i32 0, i64 1
  %arrayidx1763 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1762, i32 0, i64 7
  store i16 %conv1759, i16* %arrayidx1763, align 2
  %637 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31764 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %637, i32 0, i32 43
  %arrayidx1765 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31764, i32 0, i64 4
  %arrayidx1766 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1765, i32 0, i64 0
  %arrayidx1767 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1766, i32 0, i64 6
  store i16 %conv1759, i16* %arrayidx1767, align 2
  %arrayidx1768 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %638 = load i32, i32* %arrayidx1768, align 4
  %arrayidx1769 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %639 = load i32, i32* %arrayidx1769, align 4
  %add1770 = add nsw i32 %638, %639
  %arrayidx1771 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %640 = load i32, i32* %arrayidx1771, align 4
  %mul1772 = mul nsw i32 2, %640
  %add1773 = add nsw i32 %add1770, %mul1772
  %add1774 = add nsw i32 %add1773, 2
  %shr1775 = ashr i32 %add1774, 2
  %conv1776 = trunc i32 %shr1775 to i16
  %641 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31777 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %641, i32 0, i32 43
  %arrayidx1778 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31777, i32 0, i64 4
  %arrayidx1779 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1778, i32 0, i64 0
  %arrayidx1780 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1779, i32 0, i64 7
  store i16 %conv1776, i16* %arrayidx1780, align 2
  %arrayidx1781 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %642 = load i32, i32* %arrayidx1781, align 4
  %arrayidx1782 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %643 = load i32, i32* %arrayidx1782, align 4
  %add1783 = add nsw i32 %642, %643
  %add1784 = add nsw i32 %add1783, 1
  %shr1785 = ashr i32 %add1784, 1
  %conv1786 = trunc i32 %shr1785 to i16
  %644 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31787 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %644, i32 0, i32 43
  %arrayidx1788 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31787, i32 0, i64 5
  %arrayidx1789 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1788, i32 0, i64 6
  %arrayidx1790 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1789, i32 0, i64 3
  store i16 %conv1786, i16* %arrayidx1790, align 2
  %645 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31791 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %645, i32 0, i32 43
  %arrayidx1792 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31791, i32 0, i64 5
  %arrayidx1793 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1792, i32 0, i64 4
  %arrayidx1794 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1793, i32 0, i64 2
  store i16 %conv1786, i16* %arrayidx1794, align 2
  %646 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31795 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %646, i32 0, i32 43
  %arrayidx1796 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31795, i32 0, i64 5
  %arrayidx1797 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1796, i32 0, i64 2
  %arrayidx1798 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1797, i32 0, i64 1
  store i16 %conv1786, i16* %arrayidx1798, align 2
  %647 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31799 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %647, i32 0, i32 43
  %arrayidx1800 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31799, i32 0, i64 5
  %arrayidx1801 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1800, i32 0, i64 0
  %arrayidx1802 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1801, i32 0, i64 0
  store i16 %conv1786, i16* %arrayidx1802, align 2
  %arrayidx1803 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %648 = load i32, i32* %arrayidx1803, align 4
  %arrayidx1804 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %649 = load i32, i32* %arrayidx1804, align 4
  %add1805 = add nsw i32 %648, %649
  %add1806 = add nsw i32 %add1805, 1
  %shr1807 = ashr i32 %add1806, 1
  %conv1808 = trunc i32 %shr1807 to i16
  %650 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31809 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %650, i32 0, i32 43
  %arrayidx1810 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31809, i32 0, i64 5
  %arrayidx1811 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1810, i32 0, i64 6
  %arrayidx1812 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1811, i32 0, i64 4
  store i16 %conv1808, i16* %arrayidx1812, align 2
  %651 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31813 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %651, i32 0, i32 43
  %arrayidx1814 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31813, i32 0, i64 5
  %arrayidx1815 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1814, i32 0, i64 4
  %arrayidx1816 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1815, i32 0, i64 3
  store i16 %conv1808, i16* %arrayidx1816, align 2
  %652 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31817 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %652, i32 0, i32 43
  %arrayidx1818 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31817, i32 0, i64 5
  %arrayidx1819 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1818, i32 0, i64 2
  %arrayidx1820 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1819, i32 0, i64 2
  store i16 %conv1808, i16* %arrayidx1820, align 2
  %653 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31821 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %653, i32 0, i32 43
  %arrayidx1822 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31821, i32 0, i64 5
  %arrayidx1823 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1822, i32 0, i64 0
  %arrayidx1824 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1823, i32 0, i64 1
  store i16 %conv1808, i16* %arrayidx1824, align 2
  %arrayidx1825 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %654 = load i32, i32* %arrayidx1825, align 4
  %arrayidx1826 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %655 = load i32, i32* %arrayidx1826, align 4
  %add1827 = add nsw i32 %654, %655
  %add1828 = add nsw i32 %add1827, 1
  %shr1829 = ashr i32 %add1828, 1
  %conv1830 = trunc i32 %shr1829 to i16
  %656 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31831 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %656, i32 0, i32 43
  %arrayidx1832 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31831, i32 0, i64 5
  %arrayidx1833 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1832, i32 0, i64 6
  %arrayidx1834 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1833, i32 0, i64 5
  store i16 %conv1830, i16* %arrayidx1834, align 2
  %657 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31835 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %657, i32 0, i32 43
  %arrayidx1836 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31835, i32 0, i64 5
  %arrayidx1837 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1836, i32 0, i64 4
  %arrayidx1838 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1837, i32 0, i64 4
  store i16 %conv1830, i16* %arrayidx1838, align 2
  %658 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31839 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %658, i32 0, i32 43
  %arrayidx1840 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31839, i32 0, i64 5
  %arrayidx1841 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1840, i32 0, i64 2
  %arrayidx1842 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1841, i32 0, i64 3
  store i16 %conv1830, i16* %arrayidx1842, align 2
  %659 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31843 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %659, i32 0, i32 43
  %arrayidx1844 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31843, i32 0, i64 5
  %arrayidx1845 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1844, i32 0, i64 0
  %arrayidx1846 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1845, i32 0, i64 2
  store i16 %conv1830, i16* %arrayidx1846, align 2
  %arrayidx1847 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %660 = load i32, i32* %arrayidx1847, align 4
  %arrayidx1848 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %661 = load i32, i32* %arrayidx1848, align 4
  %add1849 = add nsw i32 %660, %661
  %add1850 = add nsw i32 %add1849, 1
  %shr1851 = ashr i32 %add1850, 1
  %conv1852 = trunc i32 %shr1851 to i16
  %662 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31853 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %662, i32 0, i32 43
  %arrayidx1854 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31853, i32 0, i64 5
  %arrayidx1855 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1854, i32 0, i64 6
  %arrayidx1856 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1855, i32 0, i64 6
  store i16 %conv1852, i16* %arrayidx1856, align 2
  %663 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31857 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %663, i32 0, i32 43
  %arrayidx1858 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31857, i32 0, i64 5
  %arrayidx1859 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1858, i32 0, i64 4
  %arrayidx1860 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1859, i32 0, i64 5
  store i16 %conv1852, i16* %arrayidx1860, align 2
  %664 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31861 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %664, i32 0, i32 43
  %arrayidx1862 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31861, i32 0, i64 5
  %arrayidx1863 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1862, i32 0, i64 2
  %arrayidx1864 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1863, i32 0, i64 4
  store i16 %conv1852, i16* %arrayidx1864, align 2
  %665 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31865 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %665, i32 0, i32 43
  %arrayidx1866 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31865, i32 0, i64 5
  %arrayidx1867 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1866, i32 0, i64 0
  %arrayidx1868 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1867, i32 0, i64 3
  store i16 %conv1852, i16* %arrayidx1868, align 2
  %arrayidx1869 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %666 = load i32, i32* %arrayidx1869, align 4
  %arrayidx1870 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %667 = load i32, i32* %arrayidx1870, align 4
  %add1871 = add nsw i32 %666, %667
  %add1872 = add nsw i32 %add1871, 1
  %shr1873 = ashr i32 %add1872, 1
  %conv1874 = trunc i32 %shr1873 to i16
  %668 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31875 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %668, i32 0, i32 43
  %arrayidx1876 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31875, i32 0, i64 5
  %arrayidx1877 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1876, i32 0, i64 6
  %arrayidx1878 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1877, i32 0, i64 7
  store i16 %conv1874, i16* %arrayidx1878, align 2
  %669 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31879 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %669, i32 0, i32 43
  %arrayidx1880 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31879, i32 0, i64 5
  %arrayidx1881 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1880, i32 0, i64 4
  %arrayidx1882 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1881, i32 0, i64 6
  store i16 %conv1874, i16* %arrayidx1882, align 2
  %670 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31883 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %670, i32 0, i32 43
  %arrayidx1884 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31883, i32 0, i64 5
  %arrayidx1885 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1884, i32 0, i64 2
  %arrayidx1886 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1885, i32 0, i64 5
  store i16 %conv1874, i16* %arrayidx1886, align 2
  %671 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31887 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %671, i32 0, i32 43
  %arrayidx1888 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31887, i32 0, i64 5
  %arrayidx1889 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1888, i32 0, i64 0
  %arrayidx1890 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1889, i32 0, i64 4
  store i16 %conv1874, i16* %arrayidx1890, align 2
  %arrayidx1891 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %672 = load i32, i32* %arrayidx1891, align 4
  %arrayidx1892 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %673 = load i32, i32* %arrayidx1892, align 4
  %add1893 = add nsw i32 %672, %673
  %add1894 = add nsw i32 %add1893, 1
  %shr1895 = ashr i32 %add1894, 1
  %conv1896 = trunc i32 %shr1895 to i16
  %674 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31897 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %674, i32 0, i32 43
  %arrayidx1898 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31897, i32 0, i64 5
  %arrayidx1899 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1898, i32 0, i64 4
  %arrayidx1900 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1899, i32 0, i64 7
  store i16 %conv1896, i16* %arrayidx1900, align 2
  %675 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31901 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %675, i32 0, i32 43
  %arrayidx1902 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31901, i32 0, i64 5
  %arrayidx1903 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1902, i32 0, i64 2
  %arrayidx1904 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1903, i32 0, i64 6
  store i16 %conv1896, i16* %arrayidx1904, align 2
  %676 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31905 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %676, i32 0, i32 43
  %arrayidx1906 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31905, i32 0, i64 5
  %arrayidx1907 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1906, i32 0, i64 0
  %arrayidx1908 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1907, i32 0, i64 5
  store i16 %conv1896, i16* %arrayidx1908, align 2
  %arrayidx1909 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %677 = load i32, i32* %arrayidx1909, align 4
  %arrayidx1910 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %678 = load i32, i32* %arrayidx1910, align 4
  %add1911 = add nsw i32 %677, %678
  %add1912 = add nsw i32 %add1911, 1
  %shr1913 = ashr i32 %add1912, 1
  %conv1914 = trunc i32 %shr1913 to i16
  %679 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31915 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %679, i32 0, i32 43
  %arrayidx1916 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31915, i32 0, i64 5
  %arrayidx1917 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1916, i32 0, i64 2
  %arrayidx1918 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1917, i32 0, i64 7
  store i16 %conv1914, i16* %arrayidx1918, align 2
  %680 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31919 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %680, i32 0, i32 43
  %arrayidx1920 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31919, i32 0, i64 5
  %arrayidx1921 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1920, i32 0, i64 0
  %arrayidx1922 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1921, i32 0, i64 6
  store i16 %conv1914, i16* %arrayidx1922, align 2
  %arrayidx1923 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %681 = load i32, i32* %arrayidx1923, align 4
  %arrayidx1924 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %682 = load i32, i32* %arrayidx1924, align 4
  %add1925 = add nsw i32 %681, %682
  %add1926 = add nsw i32 %add1925, 1
  %shr1927 = ashr i32 %add1926, 1
  %conv1928 = trunc i32 %shr1927 to i16
  %683 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31929 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %683, i32 0, i32 43
  %arrayidx1930 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31929, i32 0, i64 5
  %arrayidx1931 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1930, i32 0, i64 0
  %arrayidx1932 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1931, i32 0, i64 7
  store i16 %conv1928, i16* %arrayidx1932, align 2
  %arrayidx1933 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %684 = load i32, i32* %arrayidx1933, align 4
  %arrayidx1934 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %685 = load i32, i32* %arrayidx1934, align 4
  %add1935 = add nsw i32 %684, %685
  %arrayidx1936 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %686 = load i32, i32* %arrayidx1936, align 4
  %mul1937 = mul nsw i32 2, %686
  %add1938 = add nsw i32 %add1935, %mul1937
  %add1939 = add nsw i32 %add1938, 2
  %shr1940 = ashr i32 %add1939, 2
  %conv1941 = trunc i32 %shr1940 to i16
  %687 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31942 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %687, i32 0, i32 43
  %arrayidx1943 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31942, i32 0, i64 5
  %arrayidx1944 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1943, i32 0, i64 7
  %arrayidx1945 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1944, i32 0, i64 3
  store i16 %conv1941, i16* %arrayidx1945, align 2
  %688 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31946 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %688, i32 0, i32 43
  %arrayidx1947 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31946, i32 0, i64 5
  %arrayidx1948 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1947, i32 0, i64 5
  %arrayidx1949 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1948, i32 0, i64 2
  store i16 %conv1941, i16* %arrayidx1949, align 2
  %689 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31950 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %689, i32 0, i32 43
  %arrayidx1951 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31950, i32 0, i64 5
  %arrayidx1952 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1951, i32 0, i64 3
  %arrayidx1953 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1952, i32 0, i64 1
  store i16 %conv1941, i16* %arrayidx1953, align 2
  %690 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31954 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %690, i32 0, i32 43
  %arrayidx1955 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31954, i32 0, i64 5
  %arrayidx1956 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1955, i32 0, i64 1
  %arrayidx1957 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1956, i32 0, i64 0
  store i16 %conv1941, i16* %arrayidx1957, align 2
  %arrayidx1958 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %691 = load i32, i32* %arrayidx1958, align 4
  %arrayidx1959 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %692 = load i32, i32* %arrayidx1959, align 4
  %add1960 = add nsw i32 %691, %692
  %arrayidx1961 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %693 = load i32, i32* %arrayidx1961, align 4
  %mul1962 = mul nsw i32 2, %693
  %add1963 = add nsw i32 %add1960, %mul1962
  %add1964 = add nsw i32 %add1963, 2
  %shr1965 = ashr i32 %add1964, 2
  %conv1966 = trunc i32 %shr1965 to i16
  %694 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31967 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %694, i32 0, i32 43
  %arrayidx1968 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31967, i32 0, i64 5
  %arrayidx1969 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1968, i32 0, i64 7
  %arrayidx1970 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1969, i32 0, i64 4
  store i16 %conv1966, i16* %arrayidx1970, align 2
  %695 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31971 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %695, i32 0, i32 43
  %arrayidx1972 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31971, i32 0, i64 5
  %arrayidx1973 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1972, i32 0, i64 5
  %arrayidx1974 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1973, i32 0, i64 3
  store i16 %conv1966, i16* %arrayidx1974, align 2
  %696 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31975 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %696, i32 0, i32 43
  %arrayidx1976 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31975, i32 0, i64 5
  %arrayidx1977 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1976, i32 0, i64 3
  %arrayidx1978 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1977, i32 0, i64 2
  store i16 %conv1966, i16* %arrayidx1978, align 2
  %697 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31979 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %697, i32 0, i32 43
  %arrayidx1980 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31979, i32 0, i64 5
  %arrayidx1981 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1980, i32 0, i64 1
  %arrayidx1982 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1981, i32 0, i64 1
  store i16 %conv1966, i16* %arrayidx1982, align 2
  %arrayidx1983 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %698 = load i32, i32* %arrayidx1983, align 4
  %arrayidx1984 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %699 = load i32, i32* %arrayidx1984, align 4
  %add1985 = add nsw i32 %698, %699
  %arrayidx1986 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %700 = load i32, i32* %arrayidx1986, align 4
  %mul1987 = mul nsw i32 2, %700
  %add1988 = add nsw i32 %add1985, %mul1987
  %add1989 = add nsw i32 %add1988, 2
  %shr1990 = ashr i32 %add1989, 2
  %conv1991 = trunc i32 %shr1990 to i16
  %701 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31992 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %701, i32 0, i32 43
  %arrayidx1993 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31992, i32 0, i64 5
  %arrayidx1994 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1993, i32 0, i64 7
  %arrayidx1995 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1994, i32 0, i64 5
  store i16 %conv1991, i16* %arrayidx1995, align 2
  %702 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31996 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %702, i32 0, i32 43
  %arrayidx1997 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31996, i32 0, i64 5
  %arrayidx1998 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1997, i32 0, i64 5
  %arrayidx1999 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1998, i32 0, i64 4
  store i16 %conv1991, i16* %arrayidx1999, align 2
  %703 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32000 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %703, i32 0, i32 43
  %arrayidx2001 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32000, i32 0, i64 5
  %arrayidx2002 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2001, i32 0, i64 3
  %arrayidx2003 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2002, i32 0, i64 3
  store i16 %conv1991, i16* %arrayidx2003, align 2
  %704 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32004 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %704, i32 0, i32 43
  %arrayidx2005 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32004, i32 0, i64 5
  %arrayidx2006 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2005, i32 0, i64 1
  %arrayidx2007 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2006, i32 0, i64 2
  store i16 %conv1991, i16* %arrayidx2007, align 2
  %arrayidx2008 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %705 = load i32, i32* %arrayidx2008, align 4
  %arrayidx2009 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %706 = load i32, i32* %arrayidx2009, align 4
  %add2010 = add nsw i32 %705, %706
  %arrayidx2011 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %707 = load i32, i32* %arrayidx2011, align 4
  %mul2012 = mul nsw i32 2, %707
  %add2013 = add nsw i32 %add2010, %mul2012
  %add2014 = add nsw i32 %add2013, 2
  %shr2015 = ashr i32 %add2014, 2
  %conv2016 = trunc i32 %shr2015 to i16
  %708 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32017 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %708, i32 0, i32 43
  %arrayidx2018 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32017, i32 0, i64 5
  %arrayidx2019 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2018, i32 0, i64 7
  %arrayidx2020 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2019, i32 0, i64 6
  store i16 %conv2016, i16* %arrayidx2020, align 2
  %709 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32021 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %709, i32 0, i32 43
  %arrayidx2022 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32021, i32 0, i64 5
  %arrayidx2023 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2022, i32 0, i64 5
  %arrayidx2024 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2023, i32 0, i64 5
  store i16 %conv2016, i16* %arrayidx2024, align 2
  %710 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32025 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %710, i32 0, i32 43
  %arrayidx2026 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32025, i32 0, i64 5
  %arrayidx2027 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2026, i32 0, i64 3
  %arrayidx2028 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2027, i32 0, i64 4
  store i16 %conv2016, i16* %arrayidx2028, align 2
  %711 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32029 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %711, i32 0, i32 43
  %arrayidx2030 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32029, i32 0, i64 5
  %arrayidx2031 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2030, i32 0, i64 1
  %arrayidx2032 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2031, i32 0, i64 3
  store i16 %conv2016, i16* %arrayidx2032, align 2
  %arrayidx2033 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %712 = load i32, i32* %arrayidx2033, align 4
  %arrayidx2034 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %713 = load i32, i32* %arrayidx2034, align 4
  %add2035 = add nsw i32 %712, %713
  %arrayidx2036 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %714 = load i32, i32* %arrayidx2036, align 4
  %mul2037 = mul nsw i32 2, %714
  %add2038 = add nsw i32 %add2035, %mul2037
  %add2039 = add nsw i32 %add2038, 2
  %shr2040 = ashr i32 %add2039, 2
  %conv2041 = trunc i32 %shr2040 to i16
  %715 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32042 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %715, i32 0, i32 43
  %arrayidx2043 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32042, i32 0, i64 5
  %arrayidx2044 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2043, i32 0, i64 7
  %arrayidx2045 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2044, i32 0, i64 7
  store i16 %conv2041, i16* %arrayidx2045, align 2
  %716 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32046 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %716, i32 0, i32 43
  %arrayidx2047 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32046, i32 0, i64 5
  %arrayidx2048 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2047, i32 0, i64 5
  %arrayidx2049 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2048, i32 0, i64 6
  store i16 %conv2041, i16* %arrayidx2049, align 2
  %717 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32050 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %717, i32 0, i32 43
  %arrayidx2051 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32050, i32 0, i64 5
  %arrayidx2052 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2051, i32 0, i64 3
  %arrayidx2053 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2052, i32 0, i64 5
  store i16 %conv2041, i16* %arrayidx2053, align 2
  %718 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32054 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %718, i32 0, i32 43
  %arrayidx2055 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32054, i32 0, i64 5
  %arrayidx2056 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2055, i32 0, i64 1
  %arrayidx2057 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2056, i32 0, i64 4
  store i16 %conv2041, i16* %arrayidx2057, align 2
  %arrayidx2058 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %719 = load i32, i32* %arrayidx2058, align 4
  %arrayidx2059 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %720 = load i32, i32* %arrayidx2059, align 4
  %add2060 = add nsw i32 %719, %720
  %arrayidx2061 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %721 = load i32, i32* %arrayidx2061, align 4
  %mul2062 = mul nsw i32 2, %721
  %add2063 = add nsw i32 %add2060, %mul2062
  %add2064 = add nsw i32 %add2063, 2
  %shr2065 = ashr i32 %add2064, 2
  %conv2066 = trunc i32 %shr2065 to i16
  %722 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32067 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %722, i32 0, i32 43
  %arrayidx2068 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32067, i32 0, i64 5
  %arrayidx2069 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2068, i32 0, i64 5
  %arrayidx2070 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2069, i32 0, i64 7
  store i16 %conv2066, i16* %arrayidx2070, align 2
  %723 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32071 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %723, i32 0, i32 43
  %arrayidx2072 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32071, i32 0, i64 5
  %arrayidx2073 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2072, i32 0, i64 3
  %arrayidx2074 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2073, i32 0, i64 6
  store i16 %conv2066, i16* %arrayidx2074, align 2
  %724 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32075 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %724, i32 0, i32 43
  %arrayidx2076 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32075, i32 0, i64 5
  %arrayidx2077 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2076, i32 0, i64 1
  %arrayidx2078 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2077, i32 0, i64 5
  store i16 %conv2066, i16* %arrayidx2078, align 2
  %arrayidx2079 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %725 = load i32, i32* %arrayidx2079, align 4
  %arrayidx2080 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %726 = load i32, i32* %arrayidx2080, align 4
  %add2081 = add nsw i32 %725, %726
  %arrayidx2082 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %727 = load i32, i32* %arrayidx2082, align 4
  %mul2083 = mul nsw i32 2, %727
  %add2084 = add nsw i32 %add2081, %mul2083
  %add2085 = add nsw i32 %add2084, 2
  %shr2086 = ashr i32 %add2085, 2
  %conv2087 = trunc i32 %shr2086 to i16
  %728 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32088 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %728, i32 0, i32 43
  %arrayidx2089 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32088, i32 0, i64 5
  %arrayidx2090 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2089, i32 0, i64 3
  %arrayidx2091 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2090, i32 0, i64 7
  store i16 %conv2087, i16* %arrayidx2091, align 2
  %729 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32092 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %729, i32 0, i32 43
  %arrayidx2093 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32092, i32 0, i64 5
  %arrayidx2094 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2093, i32 0, i64 1
  %arrayidx2095 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2094, i32 0, i64 6
  store i16 %conv2087, i16* %arrayidx2095, align 2
  %arrayidx2096 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %730 = load i32, i32* %arrayidx2096, align 4
  %arrayidx2097 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 8
  %731 = load i32, i32* %arrayidx2097, align 4
  %add2098 = add nsw i32 %730, %731
  %arrayidx2099 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %732 = load i32, i32* %arrayidx2099, align 4
  %mul2100 = mul nsw i32 2, %732
  %add2101 = add nsw i32 %add2098, %mul2100
  %add2102 = add nsw i32 %add2101, 2
  %shr2103 = ashr i32 %add2102, 2
  %conv2104 = trunc i32 %shr2103 to i16
  %733 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %733, i32 0, i32 43
  %arrayidx2106 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32105, i32 0, i64 5
  %arrayidx2107 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2106, i32 0, i64 1
  %arrayidx2108 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2107, i32 0, i64 7
  store i16 %conv2104, i16* %arrayidx2108, align 2
  %arrayidx2109 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %734 = load i32, i32* %arrayidx2109, align 4
  %arrayidx2110 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %735 = load i32, i32* %arrayidx2110, align 4
  %add2111 = add nsw i32 %734, %735
  %arrayidx2112 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %736 = load i32, i32* %arrayidx2112, align 4
  %mul2113 = mul nsw i32 2, %736
  %add2114 = add nsw i32 %add2111, %mul2113
  %add2115 = add nsw i32 %add2114, 2
  %shr2116 = ashr i32 %add2115, 2
  %conv2117 = trunc i32 %shr2116 to i16
  %737 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32118 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %737, i32 0, i32 43
  %arrayidx2119 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32118, i32 0, i64 5
  %arrayidx2120 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2119, i32 0, i64 6
  %arrayidx2121 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2120, i32 0, i64 2
  store i16 %conv2117, i16* %arrayidx2121, align 2
  %738 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32122 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %738, i32 0, i32 43
  %arrayidx2123 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32122, i32 0, i64 5
  %arrayidx2124 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2123, i32 0, i64 4
  %arrayidx2125 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2124, i32 0, i64 1
  store i16 %conv2117, i16* %arrayidx2125, align 2
  %739 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %739, i32 0, i32 43
  %arrayidx2127 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32126, i32 0, i64 5
  %arrayidx2128 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2127, i32 0, i64 2
  %arrayidx2129 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2128, i32 0, i64 0
  store i16 %conv2117, i16* %arrayidx2129, align 2
  %arrayidx2130 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %740 = load i32, i32* %arrayidx2130, align 4
  %arrayidx2131 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %741 = load i32, i32* %arrayidx2131, align 4
  %add2132 = add nsw i32 %740, %741
  %arrayidx2133 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %742 = load i32, i32* %arrayidx2133, align 4
  %mul2134 = mul nsw i32 2, %742
  %add2135 = add nsw i32 %add2132, %mul2134
  %add2136 = add nsw i32 %add2135, 2
  %shr2137 = ashr i32 %add2136, 2
  %conv2138 = trunc i32 %shr2137 to i16
  %743 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32139 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %743, i32 0, i32 43
  %arrayidx2140 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32139, i32 0, i64 5
  %arrayidx2141 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2140, i32 0, i64 7
  %arrayidx2142 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2141, i32 0, i64 2
  store i16 %conv2138, i16* %arrayidx2142, align 2
  %744 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32143 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %744, i32 0, i32 43
  %arrayidx2144 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32143, i32 0, i64 5
  %arrayidx2145 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2144, i32 0, i64 5
  %arrayidx2146 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2145, i32 0, i64 1
  store i16 %conv2138, i16* %arrayidx2146, align 2
  %745 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32147 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %745, i32 0, i32 43
  %arrayidx2148 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32147, i32 0, i64 5
  %arrayidx2149 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2148, i32 0, i64 3
  %arrayidx2150 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2149, i32 0, i64 0
  store i16 %conv2138, i16* %arrayidx2150, align 2
  %arrayidx2151 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %746 = load i32, i32* %arrayidx2151, align 4
  %arrayidx2152 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %747 = load i32, i32* %arrayidx2152, align 4
  %add2153 = add nsw i32 %746, %747
  %arrayidx2154 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %748 = load i32, i32* %arrayidx2154, align 4
  %mul2155 = mul nsw i32 2, %748
  %add2156 = add nsw i32 %add2153, %mul2155
  %add2157 = add nsw i32 %add2156, 2
  %shr2158 = ashr i32 %add2157, 2
  %conv2159 = trunc i32 %shr2158 to i16
  %749 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32160 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %749, i32 0, i32 43
  %arrayidx2161 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32160, i32 0, i64 5
  %arrayidx2162 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2161, i32 0, i64 6
  %arrayidx2163 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2162, i32 0, i64 1
  store i16 %conv2159, i16* %arrayidx2163, align 2
  %750 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32164 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %750, i32 0, i32 43
  %arrayidx2165 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32164, i32 0, i64 5
  %arrayidx2166 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2165, i32 0, i64 4
  %arrayidx2167 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2166, i32 0, i64 0
  store i16 %conv2159, i16* %arrayidx2167, align 2
  %arrayidx2168 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %751 = load i32, i32* %arrayidx2168, align 4
  %arrayidx2169 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %752 = load i32, i32* %arrayidx2169, align 4
  %add2170 = add nsw i32 %751, %752
  %arrayidx2171 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %753 = load i32, i32* %arrayidx2171, align 4
  %mul2172 = mul nsw i32 2, %753
  %add2173 = add nsw i32 %add2170, %mul2172
  %add2174 = add nsw i32 %add2173, 2
  %shr2175 = ashr i32 %add2174, 2
  %conv2176 = trunc i32 %shr2175 to i16
  %754 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32177 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %754, i32 0, i32 43
  %arrayidx2178 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32177, i32 0, i64 5
  %arrayidx2179 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2178, i32 0, i64 7
  %arrayidx2180 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2179, i32 0, i64 1
  store i16 %conv2176, i16* %arrayidx2180, align 2
  %755 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32181 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %755, i32 0, i32 43
  %arrayidx2182 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32181, i32 0, i64 5
  %arrayidx2183 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2182, i32 0, i64 5
  %arrayidx2184 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2183, i32 0, i64 0
  store i16 %conv2176, i16* %arrayidx2184, align 2
  %arrayidx2185 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %756 = load i32, i32* %arrayidx2185, align 4
  %arrayidx2186 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %757 = load i32, i32* %arrayidx2186, align 4
  %add2187 = add nsw i32 %756, %757
  %arrayidx2188 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %758 = load i32, i32* %arrayidx2188, align 4
  %mul2189 = mul nsw i32 2, %758
  %add2190 = add nsw i32 %add2187, %mul2189
  %add2191 = add nsw i32 %add2190, 2
  %shr2192 = ashr i32 %add2191, 2
  %conv2193 = trunc i32 %shr2192 to i16
  %759 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32194 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %759, i32 0, i32 43
  %arrayidx2195 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32194, i32 0, i64 5
  %arrayidx2196 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2195, i32 0, i64 6
  %arrayidx2197 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2196, i32 0, i64 0
  store i16 %conv2193, i16* %arrayidx2197, align 2
  %arrayidx2198 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %760 = load i32, i32* %arrayidx2198, align 4
  %arrayidx2199 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %761 = load i32, i32* %arrayidx2199, align 4
  %add2200 = add nsw i32 %760, %761
  %arrayidx2201 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %762 = load i32, i32* %arrayidx2201, align 4
  %mul2202 = mul nsw i32 2, %762
  %add2203 = add nsw i32 %add2200, %mul2202
  %add2204 = add nsw i32 %add2203, 2
  %shr2205 = ashr i32 %add2204, 2
  %conv2206 = trunc i32 %shr2205 to i16
  %763 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32207 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %763, i32 0, i32 43
  %arrayidx2208 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32207, i32 0, i64 5
  %arrayidx2209 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2208, i32 0, i64 7
  %arrayidx2210 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2209, i32 0, i64 0
  store i16 %conv2206, i16* %arrayidx2210, align 2
  %arrayidx2211 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %764 = load i32, i32* %arrayidx2211, align 4
  %arrayidx2212 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %765 = load i32, i32* %arrayidx2212, align 4
  %add2213 = add nsw i32 %764, %765
  %add2214 = add nsw i32 %add2213, 1
  %shr2215 = ashr i32 %add2214, 1
  %conv2216 = trunc i32 %shr2215 to i16
  %766 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32217 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %766, i32 0, i32 43
  %arrayidx2218 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32217, i32 0, i64 6
  %arrayidx2219 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2218, i32 0, i64 3
  %arrayidx2220 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2219, i32 0, i64 6
  store i16 %conv2216, i16* %arrayidx2220, align 2
  %767 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32221 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %767, i32 0, i32 43
  %arrayidx2222 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32221, i32 0, i64 6
  %arrayidx2223 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2222, i32 0, i64 2
  %arrayidx2224 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2223, i32 0, i64 4
  store i16 %conv2216, i16* %arrayidx2224, align 2
  %768 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32225 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %768, i32 0, i32 43
  %arrayidx2226 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32225, i32 0, i64 6
  %arrayidx2227 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2226, i32 0, i64 1
  %arrayidx2228 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2227, i32 0, i64 2
  store i16 %conv2216, i16* %arrayidx2228, align 2
  %769 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32229 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %769, i32 0, i32 43
  %arrayidx2230 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32229, i32 0, i64 6
  %arrayidx2231 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2230, i32 0, i64 0
  %arrayidx2232 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2231, i32 0, i64 0
  store i16 %conv2216, i16* %arrayidx2232, align 2
  %arrayidx2233 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %770 = load i32, i32* %arrayidx2233, align 4
  %arrayidx2234 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %771 = load i32, i32* %arrayidx2234, align 4
  %add2235 = add nsw i32 %770, %771
  %add2236 = add nsw i32 %add2235, 1
  %shr2237 = ashr i32 %add2236, 1
  %conv2238 = trunc i32 %shr2237 to i16
  %772 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32239 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %772, i32 0, i32 43
  %arrayidx2240 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32239, i32 0, i64 6
  %arrayidx2241 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2240, i32 0, i64 4
  %arrayidx2242 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2241, i32 0, i64 6
  store i16 %conv2238, i16* %arrayidx2242, align 2
  %773 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32243 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %773, i32 0, i32 43
  %arrayidx2244 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32243, i32 0, i64 6
  %arrayidx2245 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2244, i32 0, i64 3
  %arrayidx2246 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2245, i32 0, i64 4
  store i16 %conv2238, i16* %arrayidx2246, align 2
  %774 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32247 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %774, i32 0, i32 43
  %arrayidx2248 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32247, i32 0, i64 6
  %arrayidx2249 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2248, i32 0, i64 2
  %arrayidx2250 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2249, i32 0, i64 2
  store i16 %conv2238, i16* %arrayidx2250, align 2
  %775 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32251 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %775, i32 0, i32 43
  %arrayidx2252 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32251, i32 0, i64 6
  %arrayidx2253 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2252, i32 0, i64 1
  %arrayidx2254 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2253, i32 0, i64 0
  store i16 %conv2238, i16* %arrayidx2254, align 2
  %arrayidx2255 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %776 = load i32, i32* %arrayidx2255, align 4
  %arrayidx2256 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %777 = load i32, i32* %arrayidx2256, align 4
  %add2257 = add nsw i32 %776, %777
  %add2258 = add nsw i32 %add2257, 1
  %shr2259 = ashr i32 %add2258, 1
  %conv2260 = trunc i32 %shr2259 to i16
  %778 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32261 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %778, i32 0, i32 43
  %arrayidx2262 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32261, i32 0, i64 6
  %arrayidx2263 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2262, i32 0, i64 5
  %arrayidx2264 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2263, i32 0, i64 6
  store i16 %conv2260, i16* %arrayidx2264, align 2
  %779 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32265 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %779, i32 0, i32 43
  %arrayidx2266 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32265, i32 0, i64 6
  %arrayidx2267 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2266, i32 0, i64 4
  %arrayidx2268 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2267, i32 0, i64 4
  store i16 %conv2260, i16* %arrayidx2268, align 2
  %780 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %780, i32 0, i32 43
  %arrayidx2270 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32269, i32 0, i64 6
  %arrayidx2271 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2270, i32 0, i64 3
  %arrayidx2272 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2271, i32 0, i64 2
  store i16 %conv2260, i16* %arrayidx2272, align 2
  %781 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32273 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %781, i32 0, i32 43
  %arrayidx2274 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32273, i32 0, i64 6
  %arrayidx2275 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2274, i32 0, i64 2
  %arrayidx2276 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2275, i32 0, i64 0
  store i16 %conv2260, i16* %arrayidx2276, align 2
  %arrayidx2277 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %782 = load i32, i32* %arrayidx2277, align 4
  %arrayidx2278 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %783 = load i32, i32* %arrayidx2278, align 4
  %add2279 = add nsw i32 %782, %783
  %add2280 = add nsw i32 %add2279, 1
  %shr2281 = ashr i32 %add2280, 1
  %conv2282 = trunc i32 %shr2281 to i16
  %784 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32283 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %784, i32 0, i32 43
  %arrayidx2284 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32283, i32 0, i64 6
  %arrayidx2285 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2284, i32 0, i64 6
  %arrayidx2286 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2285, i32 0, i64 6
  store i16 %conv2282, i16* %arrayidx2286, align 2
  %785 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32287 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %785, i32 0, i32 43
  %arrayidx2288 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32287, i32 0, i64 6
  %arrayidx2289 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2288, i32 0, i64 5
  %arrayidx2290 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2289, i32 0, i64 4
  store i16 %conv2282, i16* %arrayidx2290, align 2
  %786 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32291 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %786, i32 0, i32 43
  %arrayidx2292 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32291, i32 0, i64 6
  %arrayidx2293 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2292, i32 0, i64 4
  %arrayidx2294 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2293, i32 0, i64 2
  store i16 %conv2282, i16* %arrayidx2294, align 2
  %787 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32295 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %787, i32 0, i32 43
  %arrayidx2296 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32295, i32 0, i64 6
  %arrayidx2297 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2296, i32 0, i64 3
  %arrayidx2298 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2297, i32 0, i64 0
  store i16 %conv2282, i16* %arrayidx2298, align 2
  %arrayidx2299 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %788 = load i32, i32* %arrayidx2299, align 4
  %arrayidx2300 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %789 = load i32, i32* %arrayidx2300, align 4
  %add2301 = add nsw i32 %788, %789
  %add2302 = add nsw i32 %add2301, 1
  %shr2303 = ashr i32 %add2302, 1
  %conv2304 = trunc i32 %shr2303 to i16
  %790 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32305 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %790, i32 0, i32 43
  %arrayidx2306 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32305, i32 0, i64 6
  %arrayidx2307 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2306, i32 0, i64 7
  %arrayidx2308 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2307, i32 0, i64 6
  store i16 %conv2304, i16* %arrayidx2308, align 2
  %791 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32309 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %791, i32 0, i32 43
  %arrayidx2310 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32309, i32 0, i64 6
  %arrayidx2311 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2310, i32 0, i64 6
  %arrayidx2312 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2311, i32 0, i64 4
  store i16 %conv2304, i16* %arrayidx2312, align 2
  %792 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32313 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %792, i32 0, i32 43
  %arrayidx2314 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32313, i32 0, i64 6
  %arrayidx2315 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2314, i32 0, i64 5
  %arrayidx2316 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2315, i32 0, i64 2
  store i16 %conv2304, i16* %arrayidx2316, align 2
  %793 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32317 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %793, i32 0, i32 43
  %arrayidx2318 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32317, i32 0, i64 6
  %arrayidx2319 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2318, i32 0, i64 4
  %arrayidx2320 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2319, i32 0, i64 0
  store i16 %conv2304, i16* %arrayidx2320, align 2
  %arrayidx2321 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %794 = load i32, i32* %arrayidx2321, align 4
  %arrayidx2322 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %795 = load i32, i32* %arrayidx2322, align 4
  %add2323 = add nsw i32 %794, %795
  %add2324 = add nsw i32 %add2323, 1
  %shr2325 = ashr i32 %add2324, 1
  %conv2326 = trunc i32 %shr2325 to i16
  %796 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32327 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %796, i32 0, i32 43
  %arrayidx2328 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32327, i32 0, i64 6
  %arrayidx2329 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2328, i32 0, i64 7
  %arrayidx2330 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2329, i32 0, i64 4
  store i16 %conv2326, i16* %arrayidx2330, align 2
  %797 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32331 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %797, i32 0, i32 43
  %arrayidx2332 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32331, i32 0, i64 6
  %arrayidx2333 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2332, i32 0, i64 6
  %arrayidx2334 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2333, i32 0, i64 2
  store i16 %conv2326, i16* %arrayidx2334, align 2
  %798 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32335 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %798, i32 0, i32 43
  %arrayidx2336 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32335, i32 0, i64 6
  %arrayidx2337 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2336, i32 0, i64 5
  %arrayidx2338 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2337, i32 0, i64 0
  store i16 %conv2326, i16* %arrayidx2338, align 2
  %arrayidx2339 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %799 = load i32, i32* %arrayidx2339, align 4
  %arrayidx2340 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %800 = load i32, i32* %arrayidx2340, align 4
  %add2341 = add nsw i32 %799, %800
  %add2342 = add nsw i32 %add2341, 1
  %shr2343 = ashr i32 %add2342, 1
  %conv2344 = trunc i32 %shr2343 to i16
  %801 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32345 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %801, i32 0, i32 43
  %arrayidx2346 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32345, i32 0, i64 6
  %arrayidx2347 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2346, i32 0, i64 7
  %arrayidx2348 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2347, i32 0, i64 2
  store i16 %conv2344, i16* %arrayidx2348, align 2
  %802 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32349 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %802, i32 0, i32 43
  %arrayidx2350 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32349, i32 0, i64 6
  %arrayidx2351 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2350, i32 0, i64 6
  %arrayidx2352 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2351, i32 0, i64 0
  store i16 %conv2344, i16* %arrayidx2352, align 2
  %arrayidx2353 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %803 = load i32, i32* %arrayidx2353, align 4
  %arrayidx2354 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %804 = load i32, i32* %arrayidx2354, align 4
  %add2355 = add nsw i32 %803, %804
  %add2356 = add nsw i32 %add2355, 1
  %shr2357 = ashr i32 %add2356, 1
  %conv2358 = trunc i32 %shr2357 to i16
  %805 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32359 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %805, i32 0, i32 43
  %arrayidx2360 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32359, i32 0, i64 6
  %arrayidx2361 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2360, i32 0, i64 7
  %arrayidx2362 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2361, i32 0, i64 0
  store i16 %conv2358, i16* %arrayidx2362, align 2
  %arrayidx2363 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %806 = load i32, i32* %arrayidx2363, align 4
  %arrayidx2364 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %807 = load i32, i32* %arrayidx2364, align 4
  %add2365 = add nsw i32 %806, %807
  %arrayidx2366 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %808 = load i32, i32* %arrayidx2366, align 4
  %mul2367 = mul nsw i32 2, %808
  %add2368 = add nsw i32 %add2365, %mul2367
  %add2369 = add nsw i32 %add2368, 2
  %shr2370 = ashr i32 %add2369, 2
  %conv2371 = trunc i32 %shr2370 to i16
  %809 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32372 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %809, i32 0, i32 43
  %arrayidx2373 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32372, i32 0, i64 6
  %arrayidx2374 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2373, i32 0, i64 3
  %arrayidx2375 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2374, i32 0, i64 7
  store i16 %conv2371, i16* %arrayidx2375, align 2
  %810 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32376 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %810, i32 0, i32 43
  %arrayidx2377 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32376, i32 0, i64 6
  %arrayidx2378 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2377, i32 0, i64 2
  %arrayidx2379 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2378, i32 0, i64 5
  store i16 %conv2371, i16* %arrayidx2379, align 2
  %811 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32380 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %811, i32 0, i32 43
  %arrayidx2381 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32380, i32 0, i64 6
  %arrayidx2382 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2381, i32 0, i64 1
  %arrayidx2383 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2382, i32 0, i64 3
  store i16 %conv2371, i16* %arrayidx2383, align 2
  %812 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32384 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %812, i32 0, i32 43
  %arrayidx2385 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32384, i32 0, i64 6
  %arrayidx2386 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2385, i32 0, i64 0
  %arrayidx2387 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2386, i32 0, i64 1
  store i16 %conv2371, i16* %arrayidx2387, align 2
  %arrayidx2388 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %813 = load i32, i32* %arrayidx2388, align 4
  %arrayidx2389 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %814 = load i32, i32* %arrayidx2389, align 4
  %add2390 = add nsw i32 %813, %814
  %arrayidx2391 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %815 = load i32, i32* %arrayidx2391, align 4
  %mul2392 = mul nsw i32 2, %815
  %add2393 = add nsw i32 %add2390, %mul2392
  %add2394 = add nsw i32 %add2393, 2
  %shr2395 = ashr i32 %add2394, 2
  %conv2396 = trunc i32 %shr2395 to i16
  %816 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32397 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %816, i32 0, i32 43
  %arrayidx2398 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32397, i32 0, i64 6
  %arrayidx2399 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2398, i32 0, i64 4
  %arrayidx2400 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2399, i32 0, i64 7
  store i16 %conv2396, i16* %arrayidx2400, align 2
  %817 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32401 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %817, i32 0, i32 43
  %arrayidx2402 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32401, i32 0, i64 6
  %arrayidx2403 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2402, i32 0, i64 3
  %arrayidx2404 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2403, i32 0, i64 5
  store i16 %conv2396, i16* %arrayidx2404, align 2
  %818 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32405 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %818, i32 0, i32 43
  %arrayidx2406 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32405, i32 0, i64 6
  %arrayidx2407 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2406, i32 0, i64 2
  %arrayidx2408 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2407, i32 0, i64 3
  store i16 %conv2396, i16* %arrayidx2408, align 2
  %819 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32409 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %819, i32 0, i32 43
  %arrayidx2410 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32409, i32 0, i64 6
  %arrayidx2411 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2410, i32 0, i64 1
  %arrayidx2412 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2411, i32 0, i64 1
  store i16 %conv2396, i16* %arrayidx2412, align 2
  %arrayidx2413 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %820 = load i32, i32* %arrayidx2413, align 4
  %arrayidx2414 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %821 = load i32, i32* %arrayidx2414, align 4
  %add2415 = add nsw i32 %820, %821
  %arrayidx2416 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %822 = load i32, i32* %arrayidx2416, align 4
  %mul2417 = mul nsw i32 2, %822
  %add2418 = add nsw i32 %add2415, %mul2417
  %add2419 = add nsw i32 %add2418, 2
  %shr2420 = ashr i32 %add2419, 2
  %conv2421 = trunc i32 %shr2420 to i16
  %823 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32422 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %823, i32 0, i32 43
  %arrayidx2423 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32422, i32 0, i64 6
  %arrayidx2424 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2423, i32 0, i64 5
  %arrayidx2425 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2424, i32 0, i64 7
  store i16 %conv2421, i16* %arrayidx2425, align 2
  %824 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32426 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %824, i32 0, i32 43
  %arrayidx2427 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32426, i32 0, i64 6
  %arrayidx2428 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2427, i32 0, i64 4
  %arrayidx2429 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2428, i32 0, i64 5
  store i16 %conv2421, i16* %arrayidx2429, align 2
  %825 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32430 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %825, i32 0, i32 43
  %arrayidx2431 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32430, i32 0, i64 6
  %arrayidx2432 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2431, i32 0, i64 3
  %arrayidx2433 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2432, i32 0, i64 3
  store i16 %conv2421, i16* %arrayidx2433, align 2
  %826 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32434 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %826, i32 0, i32 43
  %arrayidx2435 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32434, i32 0, i64 6
  %arrayidx2436 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2435, i32 0, i64 2
  %arrayidx2437 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2436, i32 0, i64 1
  store i16 %conv2421, i16* %arrayidx2437, align 2
  %arrayidx2438 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %827 = load i32, i32* %arrayidx2438, align 4
  %arrayidx2439 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %828 = load i32, i32* %arrayidx2439, align 4
  %add2440 = add nsw i32 %827, %828
  %arrayidx2441 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %829 = load i32, i32* %arrayidx2441, align 4
  %mul2442 = mul nsw i32 2, %829
  %add2443 = add nsw i32 %add2440, %mul2442
  %add2444 = add nsw i32 %add2443, 2
  %shr2445 = ashr i32 %add2444, 2
  %conv2446 = trunc i32 %shr2445 to i16
  %830 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32447 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %830, i32 0, i32 43
  %arrayidx2448 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32447, i32 0, i64 6
  %arrayidx2449 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2448, i32 0, i64 6
  %arrayidx2450 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2449, i32 0, i64 7
  store i16 %conv2446, i16* %arrayidx2450, align 2
  %831 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32451 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %831, i32 0, i32 43
  %arrayidx2452 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32451, i32 0, i64 6
  %arrayidx2453 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2452, i32 0, i64 5
  %arrayidx2454 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2453, i32 0, i64 5
  store i16 %conv2446, i16* %arrayidx2454, align 2
  %832 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32455 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %832, i32 0, i32 43
  %arrayidx2456 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32455, i32 0, i64 6
  %arrayidx2457 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2456, i32 0, i64 4
  %arrayidx2458 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2457, i32 0, i64 3
  store i16 %conv2446, i16* %arrayidx2458, align 2
  %833 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32459 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %833, i32 0, i32 43
  %arrayidx2460 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32459, i32 0, i64 6
  %arrayidx2461 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2460, i32 0, i64 3
  %arrayidx2462 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2461, i32 0, i64 1
  store i16 %conv2446, i16* %arrayidx2462, align 2
  %arrayidx2463 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %834 = load i32, i32* %arrayidx2463, align 4
  %arrayidx2464 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %835 = load i32, i32* %arrayidx2464, align 4
  %add2465 = add nsw i32 %834, %835
  %arrayidx2466 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %836 = load i32, i32* %arrayidx2466, align 4
  %mul2467 = mul nsw i32 2, %836
  %add2468 = add nsw i32 %add2465, %mul2467
  %add2469 = add nsw i32 %add2468, 2
  %shr2470 = ashr i32 %add2469, 2
  %conv2471 = trunc i32 %shr2470 to i16
  %837 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32472 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %837, i32 0, i32 43
  %arrayidx2473 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32472, i32 0, i64 6
  %arrayidx2474 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2473, i32 0, i64 7
  %arrayidx2475 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2474, i32 0, i64 7
  store i16 %conv2471, i16* %arrayidx2475, align 2
  %838 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32476 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %838, i32 0, i32 43
  %arrayidx2477 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32476, i32 0, i64 6
  %arrayidx2478 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2477, i32 0, i64 6
  %arrayidx2479 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2478, i32 0, i64 5
  store i16 %conv2471, i16* %arrayidx2479, align 2
  %839 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32480 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %839, i32 0, i32 43
  %arrayidx2481 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32480, i32 0, i64 6
  %arrayidx2482 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2481, i32 0, i64 5
  %arrayidx2483 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2482, i32 0, i64 3
  store i16 %conv2471, i16* %arrayidx2483, align 2
  %840 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32484 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %840, i32 0, i32 43
  %arrayidx2485 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32484, i32 0, i64 6
  %arrayidx2486 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2485, i32 0, i64 4
  %arrayidx2487 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2486, i32 0, i64 1
  store i16 %conv2471, i16* %arrayidx2487, align 2
  %arrayidx2488 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %841 = load i32, i32* %arrayidx2488, align 4
  %arrayidx2489 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %842 = load i32, i32* %arrayidx2489, align 4
  %add2490 = add nsw i32 %841, %842
  %arrayidx2491 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %843 = load i32, i32* %arrayidx2491, align 4
  %mul2492 = mul nsw i32 2, %843
  %add2493 = add nsw i32 %add2490, %mul2492
  %add2494 = add nsw i32 %add2493, 2
  %shr2495 = ashr i32 %add2494, 2
  %conv2496 = trunc i32 %shr2495 to i16
  %844 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32497 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %844, i32 0, i32 43
  %arrayidx2498 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32497, i32 0, i64 6
  %arrayidx2499 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2498, i32 0, i64 7
  %arrayidx2500 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2499, i32 0, i64 5
  store i16 %conv2496, i16* %arrayidx2500, align 2
  %845 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32501 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %845, i32 0, i32 43
  %arrayidx2502 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32501, i32 0, i64 6
  %arrayidx2503 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2502, i32 0, i64 6
  %arrayidx2504 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2503, i32 0, i64 3
  store i16 %conv2496, i16* %arrayidx2504, align 2
  %846 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32505 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %846, i32 0, i32 43
  %arrayidx2506 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32505, i32 0, i64 6
  %arrayidx2507 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2506, i32 0, i64 5
  %arrayidx2508 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2507, i32 0, i64 1
  store i16 %conv2496, i16* %arrayidx2508, align 2
  %arrayidx2509 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %847 = load i32, i32* %arrayidx2509, align 4
  %arrayidx2510 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %848 = load i32, i32* %arrayidx2510, align 4
  %add2511 = add nsw i32 %847, %848
  %arrayidx2512 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %849 = load i32, i32* %arrayidx2512, align 4
  %mul2513 = mul nsw i32 2, %849
  %add2514 = add nsw i32 %add2511, %mul2513
  %add2515 = add nsw i32 %add2514, 2
  %shr2516 = ashr i32 %add2515, 2
  %conv2517 = trunc i32 %shr2516 to i16
  %850 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32518 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %850, i32 0, i32 43
  %arrayidx2519 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32518, i32 0, i64 6
  %arrayidx2520 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2519, i32 0, i64 7
  %arrayidx2521 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2520, i32 0, i64 3
  store i16 %conv2517, i16* %arrayidx2521, align 2
  %851 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32522 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %851, i32 0, i32 43
  %arrayidx2523 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32522, i32 0, i64 6
  %arrayidx2524 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2523, i32 0, i64 6
  %arrayidx2525 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2524, i32 0, i64 1
  store i16 %conv2517, i16* %arrayidx2525, align 2
  %arrayidx2526 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %852 = load i32, i32* %arrayidx2526, align 4
  %arrayidx2527 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %853 = load i32, i32* %arrayidx2527, align 4
  %add2528 = add nsw i32 %852, %853
  %arrayidx2529 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %854 = load i32, i32* %arrayidx2529, align 4
  %mul2530 = mul nsw i32 2, %854
  %add2531 = add nsw i32 %add2528, %mul2530
  %add2532 = add nsw i32 %add2531, 2
  %shr2533 = ashr i32 %add2532, 2
  %conv2534 = trunc i32 %shr2533 to i16
  %855 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32535 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %855, i32 0, i32 43
  %arrayidx2536 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32535, i32 0, i64 6
  %arrayidx2537 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2536, i32 0, i64 7
  %arrayidx2538 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2537, i32 0, i64 1
  store i16 %conv2534, i16* %arrayidx2538, align 2
  %arrayidx2539 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 0
  %856 = load i32, i32* %arrayidx2539, align 4
  %arrayidx2540 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %857 = load i32, i32* %arrayidx2540, align 4
  %add2541 = add nsw i32 %856, %857
  %arrayidx2542 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %858 = load i32, i32* %arrayidx2542, align 4
  %mul2543 = mul nsw i32 2, %858
  %add2544 = add nsw i32 %add2541, %mul2543
  %add2545 = add nsw i32 %add2544, 2
  %shr2546 = ashr i32 %add2545, 2
  %conv2547 = trunc i32 %shr2546 to i16
  %859 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32548 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %859, i32 0, i32 43
  %arrayidx2549 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32548, i32 0, i64 6
  %arrayidx2550 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2549, i32 0, i64 2
  %arrayidx2551 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2550, i32 0, i64 6
  store i16 %conv2547, i16* %arrayidx2551, align 2
  %860 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32552 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %860, i32 0, i32 43
  %arrayidx2553 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32552, i32 0, i64 6
  %arrayidx2554 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2553, i32 0, i64 1
  %arrayidx2555 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2554, i32 0, i64 4
  store i16 %conv2547, i16* %arrayidx2555, align 2
  %861 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32556 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %861, i32 0, i32 43
  %arrayidx2557 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32556, i32 0, i64 6
  %arrayidx2558 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2557, i32 0, i64 0
  %arrayidx2559 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2558, i32 0, i64 2
  store i16 %conv2547, i16* %arrayidx2559, align 2
  %arrayidx2560 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 1
  %862 = load i32, i32* %arrayidx2560, align 4
  %arrayidx2561 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %863 = load i32, i32* %arrayidx2561, align 4
  %add2562 = add nsw i32 %862, %863
  %arrayidx2563 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %864 = load i32, i32* %arrayidx2563, align 4
  %mul2564 = mul nsw i32 2, %864
  %add2565 = add nsw i32 %add2562, %mul2564
  %add2566 = add nsw i32 %add2565, 2
  %shr2567 = ashr i32 %add2566, 2
  %conv2568 = trunc i32 %shr2567 to i16
  %865 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32569 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %865, i32 0, i32 43
  %arrayidx2570 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32569, i32 0, i64 6
  %arrayidx2571 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2570, i32 0, i64 2
  %arrayidx2572 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2571, i32 0, i64 7
  store i16 %conv2568, i16* %arrayidx2572, align 2
  %866 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32573 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %866, i32 0, i32 43
  %arrayidx2574 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32573, i32 0, i64 6
  %arrayidx2575 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2574, i32 0, i64 1
  %arrayidx2576 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2575, i32 0, i64 5
  store i16 %conv2568, i16* %arrayidx2576, align 2
  %867 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32577 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %867, i32 0, i32 43
  %arrayidx2578 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32577, i32 0, i64 6
  %arrayidx2579 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2578, i32 0, i64 0
  %arrayidx2580 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2579, i32 0, i64 3
  store i16 %conv2568, i16* %arrayidx2580, align 2
  %arrayidx2581 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 2
  %868 = load i32, i32* %arrayidx2581, align 4
  %arrayidx2582 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %869 = load i32, i32* %arrayidx2582, align 4
  %add2583 = add nsw i32 %868, %869
  %arrayidx2584 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %870 = load i32, i32* %arrayidx2584, align 4
  %mul2585 = mul nsw i32 2, %870
  %add2586 = add nsw i32 %add2583, %mul2585
  %add2587 = add nsw i32 %add2586, 2
  %shr2588 = ashr i32 %add2587, 2
  %conv2589 = trunc i32 %shr2588 to i16
  %871 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32590 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %871, i32 0, i32 43
  %arrayidx2591 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32590, i32 0, i64 6
  %arrayidx2592 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2591, i32 0, i64 1
  %arrayidx2593 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2592, i32 0, i64 6
  store i16 %conv2589, i16* %arrayidx2593, align 2
  %872 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32594 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %872, i32 0, i32 43
  %arrayidx2595 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32594, i32 0, i64 6
  %arrayidx2596 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2595, i32 0, i64 0
  %arrayidx2597 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2596, i32 0, i64 4
  store i16 %conv2589, i16* %arrayidx2597, align 2
  %arrayidx2598 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 3
  %873 = load i32, i32* %arrayidx2598, align 4
  %arrayidx2599 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %874 = load i32, i32* %arrayidx2599, align 4
  %add2600 = add nsw i32 %873, %874
  %arrayidx2601 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %875 = load i32, i32* %arrayidx2601, align 4
  %mul2602 = mul nsw i32 2, %875
  %add2603 = add nsw i32 %add2600, %mul2602
  %add2604 = add nsw i32 %add2603, 2
  %shr2605 = ashr i32 %add2604, 2
  %conv2606 = trunc i32 %shr2605 to i16
  %876 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32607 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %876, i32 0, i32 43
  %arrayidx2608 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32607, i32 0, i64 6
  %arrayidx2609 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2608, i32 0, i64 1
  %arrayidx2610 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2609, i32 0, i64 7
  store i16 %conv2606, i16* %arrayidx2610, align 2
  %877 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32611 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %877, i32 0, i32 43
  %arrayidx2612 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32611, i32 0, i64 6
  %arrayidx2613 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2612, i32 0, i64 0
  %arrayidx2614 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2613, i32 0, i64 5
  store i16 %conv2606, i16* %arrayidx2614, align 2
  %arrayidx2615 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 4
  %878 = load i32, i32* %arrayidx2615, align 4
  %arrayidx2616 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %879 = load i32, i32* %arrayidx2616, align 4
  %add2617 = add nsw i32 %878, %879
  %arrayidx2618 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %880 = load i32, i32* %arrayidx2618, align 4
  %mul2619 = mul nsw i32 2, %880
  %add2620 = add nsw i32 %add2617, %mul2619
  %add2621 = add nsw i32 %add2620, 2
  %shr2622 = ashr i32 %add2621, 2
  %conv2623 = trunc i32 %shr2622 to i16
  %881 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32624 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %881, i32 0, i32 43
  %arrayidx2625 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32624, i32 0, i64 6
  %arrayidx2626 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2625, i32 0, i64 0
  %arrayidx2627 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2626, i32 0, i64 6
  store i16 %conv2623, i16* %arrayidx2627, align 2
  %arrayidx2628 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 5
  %882 = load i32, i32* %arrayidx2628, align 4
  %arrayidx2629 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 7
  %883 = load i32, i32* %arrayidx2629, align 4
  %add2630 = add nsw i32 %882, %883
  %arrayidx2631 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 6
  %884 = load i32, i32* %arrayidx2631, align 4
  %mul2632 = mul nsw i32 2, %884
  %add2633 = add nsw i32 %add2630, %mul2632
  %add2634 = add nsw i32 %add2633, 2
  %shr2635 = ashr i32 %add2634, 2
  %conv2636 = trunc i32 %shr2635 to i16
  %885 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32637 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %885, i32 0, i32 43
  %arrayidx2638 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32637, i32 0, i64 6
  %arrayidx2639 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2638, i32 0, i64 0
  %arrayidx2640 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2639, i32 0, i64 7
  store i16 %conv2636, i16* %arrayidx2640, align 2
  br label %if.end.2641

if.end.2641:                                      ; preds = %if.then.1389, %land.lhs.true.1387, %land.lhs.true.1385, %if.end.1383
  %886 = load i32, i32* %block_available_left, align 4
  %tobool2642 = icmp ne i32 %886, 0
  br i1 %tobool2642, label %if.then.2643, label %if.end.3005

if.then.2643:                                     ; preds = %if.end.2641
  %arrayidx2644 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %887 = load i32, i32* %arrayidx2644, align 4
  %arrayidx2645 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %888 = load i32, i32* %arrayidx2645, align 4
  %add2646 = add nsw i32 %887, %888
  %add2647 = add nsw i32 %add2646, 1
  %shr2648 = ashr i32 %add2647, 1
  %conv2649 = trunc i32 %shr2648 to i16
  %889 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32650 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %889, i32 0, i32 43
  %arrayidx2651 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32650, i32 0, i64 8
  %arrayidx2652 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2651, i32 0, i64 0
  %arrayidx2653 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2652, i32 0, i64 0
  store i16 %conv2649, i16* %arrayidx2653, align 2
  %arrayidx2654 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %890 = load i32, i32* %arrayidx2654, align 4
  %arrayidx2655 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %891 = load i32, i32* %arrayidx2655, align 4
  %add2656 = add nsw i32 %890, %891
  %add2657 = add nsw i32 %add2656, 1
  %shr2658 = ashr i32 %add2657, 1
  %conv2659 = trunc i32 %shr2658 to i16
  %892 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32660 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %892, i32 0, i32 43
  %arrayidx2661 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32660, i32 0, i64 8
  %arrayidx2662 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2661, i32 0, i64 0
  %arrayidx2663 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2662, i32 0, i64 2
  store i16 %conv2659, i16* %arrayidx2663, align 2
  %893 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32664 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %893, i32 0, i32 43
  %arrayidx2665 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32664, i32 0, i64 8
  %arrayidx2666 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2665, i32 0, i64 1
  %arrayidx2667 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2666, i32 0, i64 0
  store i16 %conv2659, i16* %arrayidx2667, align 2
  %arrayidx2668 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %894 = load i32, i32* %arrayidx2668, align 4
  %arrayidx2669 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %895 = load i32, i32* %arrayidx2669, align 4
  %add2670 = add nsw i32 %894, %895
  %add2671 = add nsw i32 %add2670, 1
  %shr2672 = ashr i32 %add2671, 1
  %conv2673 = trunc i32 %shr2672 to i16
  %896 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32674 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %896, i32 0, i32 43
  %arrayidx2675 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32674, i32 0, i64 8
  %arrayidx2676 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2675, i32 0, i64 0
  %arrayidx2677 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2676, i32 0, i64 4
  store i16 %conv2673, i16* %arrayidx2677, align 2
  %897 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32678 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %897, i32 0, i32 43
  %arrayidx2679 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32678, i32 0, i64 8
  %arrayidx2680 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2679, i32 0, i64 1
  %arrayidx2681 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2680, i32 0, i64 2
  store i16 %conv2673, i16* %arrayidx2681, align 2
  %898 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32682 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %898, i32 0, i32 43
  %arrayidx2683 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32682, i32 0, i64 8
  %arrayidx2684 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2683, i32 0, i64 2
  %arrayidx2685 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2684, i32 0, i64 0
  store i16 %conv2673, i16* %arrayidx2685, align 2
  %arrayidx2686 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %899 = load i32, i32* %arrayidx2686, align 4
  %arrayidx2687 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %900 = load i32, i32* %arrayidx2687, align 4
  %add2688 = add nsw i32 %899, %900
  %add2689 = add nsw i32 %add2688, 1
  %shr2690 = ashr i32 %add2689, 1
  %conv2691 = trunc i32 %shr2690 to i16
  %901 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32692 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %901, i32 0, i32 43
  %arrayidx2693 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32692, i32 0, i64 8
  %arrayidx2694 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2693, i32 0, i64 0
  %arrayidx2695 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2694, i32 0, i64 6
  store i16 %conv2691, i16* %arrayidx2695, align 2
  %902 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32696 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %902, i32 0, i32 43
  %arrayidx2697 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32696, i32 0, i64 8
  %arrayidx2698 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2697, i32 0, i64 1
  %arrayidx2699 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2698, i32 0, i64 4
  store i16 %conv2691, i16* %arrayidx2699, align 2
  %903 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32700 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %903, i32 0, i32 43
  %arrayidx2701 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32700, i32 0, i64 8
  %arrayidx2702 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2701, i32 0, i64 2
  %arrayidx2703 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2702, i32 0, i64 2
  store i16 %conv2691, i16* %arrayidx2703, align 2
  %904 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32704 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %904, i32 0, i32 43
  %arrayidx2705 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32704, i32 0, i64 8
  %arrayidx2706 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2705, i32 0, i64 3
  %arrayidx2707 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2706, i32 0, i64 0
  store i16 %conv2691, i16* %arrayidx2707, align 2
  %arrayidx2708 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %905 = load i32, i32* %arrayidx2708, align 4
  %arrayidx2709 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %906 = load i32, i32* %arrayidx2709, align 4
  %add2710 = add nsw i32 %905, %906
  %add2711 = add nsw i32 %add2710, 1
  %shr2712 = ashr i32 %add2711, 1
  %conv2713 = trunc i32 %shr2712 to i16
  %907 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32714 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %907, i32 0, i32 43
  %arrayidx2715 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32714, i32 0, i64 8
  %arrayidx2716 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2715, i32 0, i64 1
  %arrayidx2717 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2716, i32 0, i64 6
  store i16 %conv2713, i16* %arrayidx2717, align 2
  %908 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32718 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %908, i32 0, i32 43
  %arrayidx2719 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32718, i32 0, i64 8
  %arrayidx2720 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2719, i32 0, i64 2
  %arrayidx2721 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2720, i32 0, i64 4
  store i16 %conv2713, i16* %arrayidx2721, align 2
  %909 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32722 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %909, i32 0, i32 43
  %arrayidx2723 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32722, i32 0, i64 8
  %arrayidx2724 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2723, i32 0, i64 3
  %arrayidx2725 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2724, i32 0, i64 2
  store i16 %conv2713, i16* %arrayidx2725, align 2
  %910 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32726 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %910, i32 0, i32 43
  %arrayidx2727 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32726, i32 0, i64 8
  %arrayidx2728 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2727, i32 0, i64 4
  %arrayidx2729 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2728, i32 0, i64 0
  store i16 %conv2713, i16* %arrayidx2729, align 2
  %arrayidx2730 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %911 = load i32, i32* %arrayidx2730, align 4
  %arrayidx2731 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %912 = load i32, i32* %arrayidx2731, align 4
  %add2732 = add nsw i32 %911, %912
  %add2733 = add nsw i32 %add2732, 1
  %shr2734 = ashr i32 %add2733, 1
  %conv2735 = trunc i32 %shr2734 to i16
  %913 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32736 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %913, i32 0, i32 43
  %arrayidx2737 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32736, i32 0, i64 8
  %arrayidx2738 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2737, i32 0, i64 2
  %arrayidx2739 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2738, i32 0, i64 6
  store i16 %conv2735, i16* %arrayidx2739, align 2
  %914 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32740 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %914, i32 0, i32 43
  %arrayidx2741 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32740, i32 0, i64 8
  %arrayidx2742 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2741, i32 0, i64 3
  %arrayidx2743 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2742, i32 0, i64 4
  store i16 %conv2735, i16* %arrayidx2743, align 2
  %915 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32744 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %915, i32 0, i32 43
  %arrayidx2745 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32744, i32 0, i64 8
  %arrayidx2746 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2745, i32 0, i64 4
  %arrayidx2747 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2746, i32 0, i64 2
  store i16 %conv2735, i16* %arrayidx2747, align 2
  %916 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32748 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %916, i32 0, i32 43
  %arrayidx2749 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32748, i32 0, i64 8
  %arrayidx2750 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2749, i32 0, i64 5
  %arrayidx2751 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2750, i32 0, i64 0
  store i16 %conv2735, i16* %arrayidx2751, align 2
  %arrayidx2752 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %917 = load i32, i32* %arrayidx2752, align 4
  %arrayidx2753 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %918 = load i32, i32* %arrayidx2753, align 4
  %add2754 = add nsw i32 %917, %918
  %add2755 = add nsw i32 %add2754, 1
  %shr2756 = ashr i32 %add2755, 1
  %conv2757 = trunc i32 %shr2756 to i16
  %919 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32758 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %919, i32 0, i32 43
  %arrayidx2759 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32758, i32 0, i64 8
  %arrayidx2760 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2759, i32 0, i64 3
  %arrayidx2761 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2760, i32 0, i64 6
  store i16 %conv2757, i16* %arrayidx2761, align 2
  %920 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32762 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %920, i32 0, i32 43
  %arrayidx2763 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32762, i32 0, i64 8
  %arrayidx2764 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2763, i32 0, i64 4
  %arrayidx2765 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2764, i32 0, i64 4
  store i16 %conv2757, i16* %arrayidx2765, align 2
  %921 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32766 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %921, i32 0, i32 43
  %arrayidx2767 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32766, i32 0, i64 8
  %arrayidx2768 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2767, i32 0, i64 5
  %arrayidx2769 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2768, i32 0, i64 2
  store i16 %conv2757, i16* %arrayidx2769, align 2
  %922 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32770 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %922, i32 0, i32 43
  %arrayidx2771 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32770, i32 0, i64 8
  %arrayidx2772 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2771, i32 0, i64 6
  %arrayidx2773 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2772, i32 0, i64 0
  store i16 %conv2757, i16* %arrayidx2773, align 2
  %arrayidx2774 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %923 = load i32, i32* %arrayidx2774, align 4
  %conv2775 = trunc i32 %923 to i16
  %924 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32776 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %924, i32 0, i32 43
  %arrayidx2777 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32776, i32 0, i64 8
  %arrayidx2778 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2777, i32 0, i64 7
  %arrayidx2779 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2778, i32 0, i64 7
  store i16 %conv2775, i16* %arrayidx2779, align 2
  %925 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32780 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %925, i32 0, i32 43
  %arrayidx2781 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32780, i32 0, i64 8
  %arrayidx2782 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2781, i32 0, i64 7
  %arrayidx2783 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2782, i32 0, i64 6
  store i16 %conv2775, i16* %arrayidx2783, align 2
  %926 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32784 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %926, i32 0, i32 43
  %arrayidx2785 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32784, i32 0, i64 8
  %arrayidx2786 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2785, i32 0, i64 7
  %arrayidx2787 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2786, i32 0, i64 5
  store i16 %conv2775, i16* %arrayidx2787, align 2
  %927 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32788 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %927, i32 0, i32 43
  %arrayidx2789 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32788, i32 0, i64 8
  %arrayidx2790 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2789, i32 0, i64 7
  %arrayidx2791 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2790, i32 0, i64 4
  store i16 %conv2775, i16* %arrayidx2791, align 2
  %928 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32792 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %928, i32 0, i32 43
  %arrayidx2793 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32792, i32 0, i64 8
  %arrayidx2794 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2793, i32 0, i64 7
  %arrayidx2795 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2794, i32 0, i64 3
  store i16 %conv2775, i16* %arrayidx2795, align 2
  %929 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32796 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %929, i32 0, i32 43
  %arrayidx2797 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32796, i32 0, i64 8
  %arrayidx2798 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2797, i32 0, i64 7
  %arrayidx2799 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2798, i32 0, i64 2
  store i16 %conv2775, i16* %arrayidx2799, align 2
  %930 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32800 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %930, i32 0, i32 43
  %arrayidx2801 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32800, i32 0, i64 8
  %arrayidx2802 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2801, i32 0, i64 7
  %arrayidx2803 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2802, i32 0, i64 1
  store i16 %conv2775, i16* %arrayidx2803, align 2
  %931 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32804 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %931, i32 0, i32 43
  %arrayidx2805 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32804, i32 0, i64 8
  %arrayidx2806 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2805, i32 0, i64 7
  %arrayidx2807 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2806, i32 0, i64 0
  store i16 %conv2775, i16* %arrayidx2807, align 2
  %932 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32808 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %932, i32 0, i32 43
  %arrayidx2809 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32808, i32 0, i64 8
  %arrayidx2810 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2809, i32 0, i64 6
  %arrayidx2811 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2810, i32 0, i64 7
  store i16 %conv2775, i16* %arrayidx2811, align 2
  %933 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32812 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %933, i32 0, i32 43
  %arrayidx2813 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32812, i32 0, i64 8
  %arrayidx2814 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2813, i32 0, i64 6
  %arrayidx2815 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2814, i32 0, i64 6
  store i16 %conv2775, i16* %arrayidx2815, align 2
  %934 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32816 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %934, i32 0, i32 43
  %arrayidx2817 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32816, i32 0, i64 8
  %arrayidx2818 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2817, i32 0, i64 6
  %arrayidx2819 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2818, i32 0, i64 5
  store i16 %conv2775, i16* %arrayidx2819, align 2
  %935 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32820 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %935, i32 0, i32 43
  %arrayidx2821 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32820, i32 0, i64 8
  %arrayidx2822 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2821, i32 0, i64 6
  %arrayidx2823 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2822, i32 0, i64 4
  store i16 %conv2775, i16* %arrayidx2823, align 2
  %936 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32824 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %936, i32 0, i32 43
  %arrayidx2825 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32824, i32 0, i64 8
  %arrayidx2826 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2825, i32 0, i64 6
  %arrayidx2827 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2826, i32 0, i64 3
  store i16 %conv2775, i16* %arrayidx2827, align 2
  %937 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32828 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %937, i32 0, i32 43
  %arrayidx2829 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32828, i32 0, i64 8
  %arrayidx2830 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2829, i32 0, i64 6
  %arrayidx2831 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2830, i32 0, i64 2
  store i16 %conv2775, i16* %arrayidx2831, align 2
  %938 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32832 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %938, i32 0, i32 43
  %arrayidx2833 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32832, i32 0, i64 8
  %arrayidx2834 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2833, i32 0, i64 5
  %arrayidx2835 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2834, i32 0, i64 7
  store i16 %conv2775, i16* %arrayidx2835, align 2
  %939 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32836 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %939, i32 0, i32 43
  %arrayidx2837 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32836, i32 0, i64 8
  %arrayidx2838 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2837, i32 0, i64 5
  %arrayidx2839 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2838, i32 0, i64 6
  store i16 %conv2775, i16* %arrayidx2839, align 2
  %940 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32840 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %940, i32 0, i32 43
  %arrayidx2841 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32840, i32 0, i64 8
  %arrayidx2842 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2841, i32 0, i64 5
  %arrayidx2843 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2842, i32 0, i64 5
  store i16 %conv2775, i16* %arrayidx2843, align 2
  %941 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32844 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %941, i32 0, i32 43
  %arrayidx2845 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32844, i32 0, i64 8
  %arrayidx2846 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2845, i32 0, i64 5
  %arrayidx2847 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2846, i32 0, i64 4
  store i16 %conv2775, i16* %arrayidx2847, align 2
  %942 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32848 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %942, i32 0, i32 43
  %arrayidx2849 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32848, i32 0, i64 8
  %arrayidx2850 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2849, i32 0, i64 4
  %arrayidx2851 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2850, i32 0, i64 7
  store i16 %conv2775, i16* %arrayidx2851, align 2
  %943 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32852 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %943, i32 0, i32 43
  %arrayidx2853 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32852, i32 0, i64 8
  %arrayidx2854 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2853, i32 0, i64 4
  %arrayidx2855 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2854, i32 0, i64 6
  store i16 %conv2775, i16* %arrayidx2855, align 2
  %arrayidx2856 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %944 = load i32, i32* %arrayidx2856, align 4
  %arrayidx2857 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %945 = load i32, i32* %arrayidx2857, align 4
  %mul2858 = mul nsw i32 3, %945
  %add2859 = add nsw i32 %944, %mul2858
  %add2860 = add nsw i32 %add2859, 2
  %shr2861 = ashr i32 %add2860, 2
  %conv2862 = trunc i32 %shr2861 to i16
  %946 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32863 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %946, i32 0, i32 43
  %arrayidx2864 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32863, i32 0, i64 8
  %arrayidx2865 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2864, i32 0, i64 3
  %arrayidx2866 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2865, i32 0, i64 7
  store i16 %conv2862, i16* %arrayidx2866, align 2
  %947 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32867 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %947, i32 0, i32 43
  %arrayidx2868 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32867, i32 0, i64 8
  %arrayidx2869 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2868, i32 0, i64 4
  %arrayidx2870 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2869, i32 0, i64 5
  store i16 %conv2862, i16* %arrayidx2870, align 2
  %948 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32871 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %948, i32 0, i32 43
  %arrayidx2872 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32871, i32 0, i64 8
  %arrayidx2873 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2872, i32 0, i64 5
  %arrayidx2874 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2873, i32 0, i64 3
  store i16 %conv2862, i16* %arrayidx2874, align 2
  %949 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32875 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %949, i32 0, i32 43
  %arrayidx2876 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32875, i32 0, i64 8
  %arrayidx2877 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2876, i32 0, i64 6
  %arrayidx2878 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2877, i32 0, i64 1
  store i16 %conv2862, i16* %arrayidx2878, align 2
  %arrayidx2879 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 24
  %950 = load i32, i32* %arrayidx2879, align 4
  %arrayidx2880 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %951 = load i32, i32* %arrayidx2880, align 4
  %add2881 = add nsw i32 %950, %951
  %arrayidx2882 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %952 = load i32, i32* %arrayidx2882, align 4
  %mul2883 = mul nsw i32 2, %952
  %add2884 = add nsw i32 %add2881, %mul2883
  %add2885 = add nsw i32 %add2884, 2
  %shr2886 = ashr i32 %add2885, 2
  %conv2887 = trunc i32 %shr2886 to i16
  %953 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32888 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %953, i32 0, i32 43
  %arrayidx2889 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32888, i32 0, i64 8
  %arrayidx2890 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2889, i32 0, i64 2
  %arrayidx2891 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2890, i32 0, i64 7
  store i16 %conv2887, i16* %arrayidx2891, align 2
  %954 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32892 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %954, i32 0, i32 43
  %arrayidx2893 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32892, i32 0, i64 8
  %arrayidx2894 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2893, i32 0, i64 3
  %arrayidx2895 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2894, i32 0, i64 5
  store i16 %conv2887, i16* %arrayidx2895, align 2
  %955 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32896 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %955, i32 0, i32 43
  %arrayidx2897 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32896, i32 0, i64 8
  %arrayidx2898 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2897, i32 0, i64 4
  %arrayidx2899 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2898, i32 0, i64 3
  store i16 %conv2887, i16* %arrayidx2899, align 2
  %956 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32900 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %956, i32 0, i32 43
  %arrayidx2901 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32900, i32 0, i64 8
  %arrayidx2902 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2901, i32 0, i64 5
  %arrayidx2903 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2902, i32 0, i64 1
  store i16 %conv2887, i16* %arrayidx2903, align 2
  %arrayidx2904 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 23
  %957 = load i32, i32* %arrayidx2904, align 4
  %arrayidx2905 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %958 = load i32, i32* %arrayidx2905, align 4
  %add2906 = add nsw i32 %957, %958
  %arrayidx2907 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %959 = load i32, i32* %arrayidx2907, align 4
  %mul2908 = mul nsw i32 2, %959
  %add2909 = add nsw i32 %add2906, %mul2908
  %add2910 = add nsw i32 %add2909, 2
  %shr2911 = ashr i32 %add2910, 2
  %conv2912 = trunc i32 %shr2911 to i16
  %960 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32913 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %960, i32 0, i32 43
  %arrayidx2914 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32913, i32 0, i64 8
  %arrayidx2915 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2914, i32 0, i64 1
  %arrayidx2916 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2915, i32 0, i64 7
  store i16 %conv2912, i16* %arrayidx2916, align 2
  %961 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32917 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %961, i32 0, i32 43
  %arrayidx2918 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32917, i32 0, i64 8
  %arrayidx2919 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2918, i32 0, i64 2
  %arrayidx2920 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2919, i32 0, i64 5
  store i16 %conv2912, i16* %arrayidx2920, align 2
  %962 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32921 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %962, i32 0, i32 43
  %arrayidx2922 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32921, i32 0, i64 8
  %arrayidx2923 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2922, i32 0, i64 3
  %arrayidx2924 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2923, i32 0, i64 3
  store i16 %conv2912, i16* %arrayidx2924, align 2
  %963 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32925 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %963, i32 0, i32 43
  %arrayidx2926 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32925, i32 0, i64 8
  %arrayidx2927 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2926, i32 0, i64 4
  %arrayidx2928 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2927, i32 0, i64 1
  store i16 %conv2912, i16* %arrayidx2928, align 2
  %arrayidx2929 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 22
  %964 = load i32, i32* %arrayidx2929, align 4
  %arrayidx2930 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %965 = load i32, i32* %arrayidx2930, align 4
  %add2931 = add nsw i32 %964, %965
  %arrayidx2932 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %966 = load i32, i32* %arrayidx2932, align 4
  %mul2933 = mul nsw i32 2, %966
  %add2934 = add nsw i32 %add2931, %mul2933
  %add2935 = add nsw i32 %add2934, 2
  %shr2936 = ashr i32 %add2935, 2
  %conv2937 = trunc i32 %shr2936 to i16
  %967 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32938 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %967, i32 0, i32 43
  %arrayidx2939 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32938, i32 0, i64 8
  %arrayidx2940 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2939, i32 0, i64 0
  %arrayidx2941 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2940, i32 0, i64 7
  store i16 %conv2937, i16* %arrayidx2941, align 2
  %968 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32942 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %968, i32 0, i32 43
  %arrayidx2943 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32942, i32 0, i64 8
  %arrayidx2944 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2943, i32 0, i64 1
  %arrayidx2945 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2944, i32 0, i64 5
  store i16 %conv2937, i16* %arrayidx2945, align 2
  %969 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32946 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %969, i32 0, i32 43
  %arrayidx2947 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32946, i32 0, i64 8
  %arrayidx2948 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2947, i32 0, i64 2
  %arrayidx2949 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2948, i32 0, i64 3
  store i16 %conv2937, i16* %arrayidx2949, align 2
  %970 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32950 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %970, i32 0, i32 43
  %arrayidx2951 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32950, i32 0, i64 8
  %arrayidx2952 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2951, i32 0, i64 3
  %arrayidx2953 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2952, i32 0, i64 1
  store i16 %conv2937, i16* %arrayidx2953, align 2
  %arrayidx2954 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 21
  %971 = load i32, i32* %arrayidx2954, align 4
  %arrayidx2955 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %972 = load i32, i32* %arrayidx2955, align 4
  %add2956 = add nsw i32 %971, %972
  %arrayidx2957 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %973 = load i32, i32* %arrayidx2957, align 4
  %mul2958 = mul nsw i32 2, %973
  %add2959 = add nsw i32 %add2956, %mul2958
  %add2960 = add nsw i32 %add2959, 2
  %shr2961 = ashr i32 %add2960, 2
  %conv2962 = trunc i32 %shr2961 to i16
  %974 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32963 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %974, i32 0, i32 43
  %arrayidx2964 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32963, i32 0, i64 8
  %arrayidx2965 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2964, i32 0, i64 0
  %arrayidx2966 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2965, i32 0, i64 5
  store i16 %conv2962, i16* %arrayidx2966, align 2
  %975 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32967 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %975, i32 0, i32 43
  %arrayidx2968 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32967, i32 0, i64 8
  %arrayidx2969 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2968, i32 0, i64 1
  %arrayidx2970 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2969, i32 0, i64 3
  store i16 %conv2962, i16* %arrayidx2970, align 2
  %976 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32971 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %976, i32 0, i32 43
  %arrayidx2972 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32971, i32 0, i64 8
  %arrayidx2973 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2972, i32 0, i64 2
  %arrayidx2974 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2973, i32 0, i64 1
  store i16 %conv2962, i16* %arrayidx2974, align 2
  %arrayidx2975 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 20
  %977 = load i32, i32* %arrayidx2975, align 4
  %arrayidx2976 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %978 = load i32, i32* %arrayidx2976, align 4
  %add2977 = add nsw i32 %977, %978
  %arrayidx2978 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %979 = load i32, i32* %arrayidx2978, align 4
  %mul2979 = mul nsw i32 2, %979
  %add2980 = add nsw i32 %add2977, %mul2979
  %add2981 = add nsw i32 %add2980, 2
  %shr2982 = ashr i32 %add2981, 2
  %conv2983 = trunc i32 %shr2982 to i16
  %980 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32984 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %980, i32 0, i32 43
  %arrayidx2985 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32984, i32 0, i64 8
  %arrayidx2986 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2985, i32 0, i64 0
  %arrayidx2987 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2986, i32 0, i64 3
  store i16 %conv2983, i16* %arrayidx2987, align 2
  %981 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_32988 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %981, i32 0, i32 43
  %arrayidx2989 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_32988, i32 0, i64 8
  %arrayidx2990 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx2989, i32 0, i64 1
  %arrayidx2991 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2990, i32 0, i64 1
  store i16 %conv2983, i16* %arrayidx2991, align 2
  %arrayidx2992 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 19
  %982 = load i32, i32* %arrayidx2992, align 4
  %arrayidx2993 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 17
  %983 = load i32, i32* %arrayidx2993, align 4
  %add2994 = add nsw i32 %982, %983
  %arrayidx2995 = getelementptr inbounds [25 x i32], [25 x i32]* %PredPel, i32 0, i64 18
  %984 = load i32, i32* %arrayidx2995, align 4
  %mul2996 = mul nsw i32 2, %984
  %add2997 = add nsw i32 %add2994, %mul2996
  %add2998 = add nsw i32 %add2997, 2
  %shr2999 = ashr i32 %add2998, 2
  %conv3000 = trunc i32 %shr2999 to i16
  %985 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_33001 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %985, i32 0, i32 43
  %arrayidx3002 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_33001, i32 0, i64 8
  %arrayidx3003 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx3002, i32 0, i64 0
  %arrayidx3004 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx3003, i32 0, i64 1
  store i16 %conv3000, i16* %arrayidx3004, align 2
  br label %if.end.3005

if.end.3005:                                      ; preds = %if.then.2643, %if.end.2641
  ret void
}

declare i32 @SATD8X8(i32*, i32) #2

declare void @store_coding_state_cs_cm(...) #2

; Function Attrs: nounwind uwtable
define double @RDCost_for_8x8IntraBlocks(i32* %nonzero, i32 %b8, i32 %ipmode, double %lambda, double %min_rdcost, i32 %mostProbableMode) #0 {
entry:
  %retval = alloca double, align 8
  %nonzero.addr = alloca i32*, align 8
  %b8.addr = alloca i32, align 4
  %ipmode.addr = alloca i32, align 4
  %lambda.addr = alloca double, align 8
  %min_rdcost.addr = alloca double, align 8
  %mostProbableMode.addr = alloca i32, align 4
  %rdcost = alloca double, align 8
  %dummy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rate = alloca i32, align 4
  %distortion = alloca i64, align 8
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %pic_pix_x = alloca i32, align 4
  %pic_pix_y = alloca i32, align 4
  %pic_opix_y = alloca i32, align 4
  %imgY_orig = alloca i16**, align 8
  %imgY = alloca i16**, align 8
  %currSlice = alloca %struct.Slice*, align 8
  %currMB = alloca %struct.macroblock*, align 8
  %currSE = alloca %struct.syntaxelement*, align 8
  %partMap = alloca i32*, align 8
  %dataPart = alloca %struct.datapartition*, align 8
  %b4 = alloca i32, align 4
  store i32* %nonzero, i32** %nonzero.addr, align 8
  store i32 %b8, i32* %b8.addr, align 4
  store i32 %ipmode, i32* %ipmode.addr, align 4
  store double %lambda, double* %lambda.addr, align 8
  store double %min_rdcost, double* %min_rdcost.addr, align 8
  store i32 %mostProbableMode, i32* %mostProbableMode.addr, align 4
  store double 0.000000e+00, double* %rdcost, align 8
  store i64 0, i64* %distortion, align 8
  %0 = load i32, i32* %b8.addr, align 4
  %rem = srem i32 %0, 2
  %mul = mul nsw i32 8, %rem
  store i32 %mul, i32* %block_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %div = sdiv i32 %1, 2
  %mul1 = mul nsw i32 8, %div
  store i32 %mul1, i32* %block_y, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 33
  %3 = load i32, i32* %pix_x, align 4
  %4 = load i32, i32* %block_x, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %pic_pix_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 34
  %6 = load i32, i32* %pix_y, align 4
  %7 = load i32, i32* %block_y, align 4
  %add2 = add nsw i32 %6, %7
  store i32 %add2, i32* %pic_pix_y, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 38
  %9 = load i32, i32* %opix_y, align 4
  %10 = load i32, i32* %block_y, align 4
  %add3 = add nsw i32 %9, %10
  store i32 %add3, i32* %pic_opix_y, align 4
  %11 = load i16**, i16*** @imgY_org, align 8
  store i16** %11, i16*** %imgY_orig, align 8
  %12 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 25
  %13 = load i16**, i16*** %imgY4, align 8
  store i16** %13, i16*** %imgY, align 8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 50
  %15 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %15, %struct.Slice** %currSlice, align 8
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 3
  %17 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 51
  %19 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %19, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %20 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %currSEnr = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i32 0, i32 0
  %21 = load i32, i32* %currSEnr, align 4
  %idxprom5 = sext i32 %21 to i64
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MB_SyntaxElements = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 52
  %arrayidx6 = getelementptr inbounds [1200 x %struct.syntaxelement], [1200 x %struct.syntaxelement]* %MB_SyntaxElements, i32 0, i64 %idxprom5
  store %struct.syntaxelement* %arrayidx6, %struct.syntaxelement** %currSE, align 8
  %23 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %23, i32 0, i32 61
  %24 = load i32, i32* %partition_mode, align 4
  %idxprom7 = sext i32 %24 to i64
  %arrayidx8 = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom7
  %25 = load i32*, i32** %arrayidx8, align 8
  store i32* %25, i32** %partMap, align 8
  store i32 0, i32* %dummy, align 4
  %26 = load i32, i32* %b8.addr, align 4
  %call = call i32 @dct_luma8x8(i32 %26, i32* %dummy, i32 1)
  %27 = load i32*, i32** %nonzero.addr, align 8
  store i32 %call, i32* %27, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %28 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %28, 8
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %pic_pix_x, align 4
  store i32 %29, i32* %x, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %pic_pix_x, align 4
  %add10 = add nsw i32 %31, 8
  %cmp11 = icmp slt i32 %30, %add10
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %32 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %32 to i64
  %33 = load i32, i32* %pic_opix_y, align 4
  %34 = load i32, i32* %y, align 4
  %add14 = add nsw i32 %33, %34
  %idxprom15 = sext i32 %add14 to i64
  %35 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %35, i64 %idxprom15
  %36 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %36, i64 %idxprom13
  %37 = load i16, i16* %arrayidx17, align 2
  %conv = zext i16 %37 to i32
  %38 = load i32, i32* %x, align 4
  %idxprom18 = sext i32 %38 to i64
  %39 = load i32, i32* %pic_pix_y, align 4
  %40 = load i32, i32* %y, align 4
  %add19 = add nsw i32 %39, %40
  %idxprom20 = sext i32 %add19 to i64
  %41 = load i16**, i16*** %imgY, align 8
  %arrayidx21 = getelementptr inbounds i16*, i16** %41, i64 %idxprom20
  %42 = load i16*, i16** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %42, i64 %idxprom18
  %43 = load i16, i16* %arrayidx22, align 2
  %conv23 = zext i16 %43 to i32
  %sub = sub nsw i32 %conv, %conv23
  %idxprom24 = sext i32 %sub to i64
  %44 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %44, i32 0, i32 53
  %45 = load i32*, i32** %quad, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %45, i64 %idxprom24
  %46 = load i32, i32* %arrayidx25, align 4
  %conv26 = sext i32 %46 to i64
  %47 = load i64, i64* %distortion, align 8
  %add27 = add nsw i64 %47, %conv26
  store i64 %add27, i64* %distortion, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %48 = load i32, i32* %x, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %49 = load i32, i32* %y, align 4
  %inc29 = add nsw i32 %49, 1
  store i32 %inc29, i32* %y, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %50 = load i32, i32* %mostProbableMode.addr, align 4
  %51 = load i32, i32* %ipmode.addr, align 4
  %cmp31 = icmp eq i32 %50, %51
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.30
  br label %cond.end.38

cond.false:                                       ; preds = %for.end.30
  %52 = load i32, i32* %ipmode.addr, align 4
  %53 = load i32, i32* %mostProbableMode.addr, align 4
  %cmp33 = icmp slt i32 %52, %53
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.false
  %54 = load i32, i32* %ipmode.addr, align 4
  br label %cond.end

cond.false.36:                                    ; preds = %cond.false
  %55 = load i32, i32* %ipmode.addr, align 4
  %sub37 = sub nsw i32 %55, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.36, %cond.true.35
  %cond = phi i32 [ %54, %cond.true.35 ], [ %sub37, %cond.false.36 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end, %cond.true
  %cond39 = phi i32 [ -1, %cond.true ], [ %cond, %cond.end ]
  %56 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %56, i32 0, i32 1
  store i32 %cond39, i32* %value1, align 4
  %57 = load i32, i32* %b8.addr, align 4
  %58 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %58, i32 0, i32 6
  store i32 %57, i32* %context, align 4
  %59 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %59, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %60 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %60, i32 0, i32 59
  %61 = load i32, i32* %symbol_mode, align 4
  %cmp40 = icmp ne i32 %61, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.38
  %62 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %writing = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %62, i32 0, i32 9
  store void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* @writeIntraPredMode_CABAC, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)** %writing, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.38
  %63 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type42 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %63, i32 0, i32 6
  %64 = load i32, i32* %type42, align 4
  %cmp43 = icmp ne i32 %64, 1
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %if.end
  %65 = load i32*, i32** %partMap, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %65, i64 4
  %66 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %66 to i64
  %67 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %67, i32 0, i32 6
  %68 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx48 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %68, i64 %idxprom47
  store %struct.datapartition* %arrayidx48, %struct.datapartition** %dataPart, align 8
  br label %if.end.53

if.else:                                          ; preds = %if.end
  %69 = load i32*, i32** %partMap, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %69, i64 18
  %70 = load i32, i32* %arrayidx49, align 4
  %idxprom50 = sext i32 %70 to i64
  %71 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr51 = getelementptr inbounds %struct.Slice, %struct.Slice* %71, i32 0, i32 6
  %72 = load %struct.datapartition*, %struct.datapartition** %partArr51, align 8
  %arrayidx52 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %72, i64 %idxprom50
  store %struct.datapartition* %arrayidx52, %struct.datapartition** %dataPart, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.45
  %73 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode54 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %73, i32 0, i32 59
  %74 = load i32, i32* %symbol_mode54, align 4
  %cmp55 = icmp eq i32 %74, 0
  br i1 %cmp55, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.end.53
  %75 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %76 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call58 = call i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* %75, %struct.datapartition* %76)
  br label %if.end.61

if.else.59:                                       ; preds = %if.end.53
  %77 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %writeSyntaxElement = getelementptr inbounds %struct.datapartition, %struct.datapartition* %77, i32 0, i32 2
  %78 = load i32 (%struct.syntaxelement*, %struct.datapartition*)*, i32 (%struct.syntaxelement*, %struct.datapartition*)** %writeSyntaxElement, align 8
  %79 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %80 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  %call60 = call i32 %78(%struct.syntaxelement* %79, %struct.datapartition* %80)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.57
  %81 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %81, i32 0, i32 3
  %82 = load i32, i32* %len, align 4
  store i32 %82, i32* %rate, align 4
  %83 = load %struct.syntaxelement*, %struct.syntaxelement** %currSE, align 8
  %incdec.ptr = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %83, i32 1
  store %struct.syntaxelement* %incdec.ptr, %struct.syntaxelement** %currSE, align 8
  %84 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %currSEnr62 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %84, i32 0, i32 0
  %85 = load i32, i32* %currSEnr62, align 4
  %inc63 = add nsw i32 %85, 1
  store i32 %inc63, i32* %currSEnr62, align 4
  %86 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode64 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %86, i32 0, i32 59
  %87 = load i32, i32* %symbol_mode64, align 4
  %cmp65 = icmp eq i32 %87, 0
  br i1 %cmp65, label %if.then.67, label %if.else.77

if.then.67:                                       ; preds = %if.end.61
  store i32 0, i32* %b4, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.74, %if.then.67
  %88 = load i32, i32* %b4, align 4
  %cmp69 = icmp slt i32 %88, 4
  br i1 %cmp69, label %for.body.71, label %for.end.76

for.body.71:                                      ; preds = %for.cond.68
  %89 = load i32, i32* %b8.addr, align 4
  %90 = load i32, i32* %b4, align 4
  %call72 = call i32 @writeCoeff4x4_CAVLC(i32 0, i32 %89, i32 %90, i32 0)
  %91 = load i32, i32* %rate, align 4
  %add73 = add nsw i32 %91, %call72
  store i32 %add73, i32* %rate, align 4
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.71
  %92 = load i32, i32* %b4, align 4
  %inc75 = add nsw i32 %92, 1
  store i32 %inc75, i32* %b4, align 4
  br label %for.cond.68

for.end.76:                                       ; preds = %for.cond.68
  br label %if.end.80

if.else.77:                                       ; preds = %if.end.61
  %93 = load i32, i32* %b8.addr, align 4
  %call78 = call i32 @writeLumaCoeff8x8_CABAC(i32 %93, i32 1)
  %94 = load i32, i32* %rate, align 4
  %add79 = add nsw i32 %94, %call78
  store i32 %add79, i32* %rate, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %for.end.76
  %95 = load i64, i64* %distortion, align 8
  %conv81 = sitofp i64 %95 to double
  %96 = load double, double* %lambda.addr, align 8
  %97 = load i32, i32* %rate, align 4
  %conv82 = sitofp i32 %97 to double
  %mul83 = fmul double %96, %conv82
  %add84 = fadd double %conv81, %mul83
  store double %add84, double* %rdcost, align 8
  %98 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %98, i32 0, i32 164
  %99 = load i32, i32* %residue_transform_flag, align 4
  %tobool = icmp ne i32 %99, 0
  br i1 %tobool, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.end.80
  %100 = load i32, i32* %rate, align 4
  %conv86 = sitofp i32 %100 to double
  store double %conv86, double* %retval
  br label %return

if.else.87:                                       ; preds = %if.end.80
  %101 = load double, double* %rdcost, align 8
  store double %101, double* %retval
  br label %return

return:                                           ; preds = %if.else.87, %if.then.85
  %102 = load double, double* %retval
  ret double %102
}

declare void @reset_coding_state_cs_cm(...) #2

declare i32 @RDCost_for_4x4Blocks_Chroma(i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @dct_luma8x8(i32 %b8, i32* %coeff_cost, i32 %intra) #0 {
entry:
  %b8.addr = alloca i32, align 4
  %coeff_cost.addr = alloca i32*, align 8
  %intra.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ilev = alloca i32, align 4
  %coeff_ctr = alloca i32, align 4
  %qp_const = alloca i32, align 4
  %level = alloca i32, align 4
  %scan_pos = alloca i32, align 4
  %run = alloca i32, align 4
  %nonzero = alloca i32, align 4
  %qp_per = alloca i32, align 4
  %qp_rem = alloca i32, align 4
  %q_bits = alloca i32, align 4
  %dq_lshift = alloca i32, align 4
  %dq_rshift = alloca i32, align 4
  %dq_round = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %ACLevel = alloca i32*, align 8
  %ACRun = alloca i32*, align 8
  %m6 = alloca [8 x [8 x i32]], align 16
  %scan_poss = alloca [4 x i32], align 16
  %runs = alloca [4 x i32], align 16
  %currMB = alloca %struct.macroblock*, align 8
  %lossless_qpprime = alloca i32, align 4
  %a = alloca [8 x i32], align 16
  %b = alloca [8 x i32], align 16
  %a231 = alloca [8 x i32], align 16
  %b232 = alloca [8 x i32], align 16
  %a704 = alloca [8 x i32], align 16
  %b705 = alloca [8 x i32], align 16
  %a931 = alloca [8 x i32], align 16
  %b932 = alloca [8 x i32], align 16
  store i32 %b8, i32* %b8.addr, align 4
  store i32* %coeff_cost, i32** %coeff_cost.addr, align 8
  store i32 %intra, i32* %intra.addr, align 4
  store i32 0, i32* %dq_lshift, align 4
  store i32 0, i32* %dq_rshift, align 4
  store i32 0, i32* %dq_round, align 4
  %0 = load i32, i32* %b8.addr, align 4
  %rem = srem i32 %0, 2
  %mul = mul nsw i32 8, %rem
  store i32 %mul, i32* %block_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %div = sdiv i32 %1, 2
  %mul1 = mul nsw i32 8, %div
  store i32 %mul1, i32* %block_y, align 4
  %2 = load i32, i32* %b8.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 47
  %4 = load i32****, i32***** %cofAC, align 8
  %arrayidx = getelementptr inbounds i32***, i32**** %4, i64 %idxprom
  %5 = load i32***, i32**** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i32**, i32*** %5, i64 0
  %6 = load i32**, i32*** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i32*, i32** %6, i64 0
  %7 = load i32*, i32** %arrayidx3, align 8
  store i32* %7, i32** %ACLevel, align 8
  %8 = load i32, i32* %b8.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 47
  %10 = load i32****, i32***** %cofAC5, align 8
  %arrayidx6 = getelementptr inbounds i32***, i32**** %10, i64 %idxprom4
  %11 = load i32***, i32**** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32**, i32*** %11, i64 0
  %12 = load i32**, i32*** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %12, i64 1
  %13 = load i32*, i32** %arrayidx8, align 8
  store i32* %13, i32** %ACRun, align 8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 3
  %15 = load i32, i32* %current_mb_nr, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 51
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %idxprom9
  store %struct.macroblock* %arrayidx10, %struct.macroblock** %currMB, align 8
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 10
  %19 = load i32, i32* %qp, align 4
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 151
  %21 = load i32, i32* %bitdepth_luma_qp_scale, align 4
  %add = add nsw i32 %19, %21
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %22 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %22, i32 0, i32 160
  %23 = load i32, i32* %lossless_qpprime_flag, align 4
  %cmp11 = icmp eq i32 %23, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %24 = phi i1 [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %lossless_qpprime, align 4
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 10
  %26 = load i32, i32* %qp12, align 4
  %27 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale13 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %27, i32 0, i32 151
  %28 = load i32, i32* %bitdepth_luma_qp_scale13, align 4
  %add14 = add nsw i32 %26, %28
  %sub = sub nsw i32 %add14, 0
  %div15 = sdiv i32 %sub, 6
  store i32 %div15, i32* %qp_per, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp16 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 10
  %30 = load i32, i32* %qp16, align 4
  %31 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %bitdepth_luma_qp_scale17 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %31, i32 0, i32 151
  %32 = load i32, i32* %bitdepth_luma_qp_scale17, align 4
  %add18 = add nsw i32 %30, %32
  %sub19 = sub nsw i32 %add18, 0
  %rem20 = srem i32 %sub19, 6
  store i32 %rem20, i32* %qp_rem, align 4
  %33 = load i32, i32* %qp_per, align 4
  %add21 = add nsw i32 16, %33
  store i32 %add21, i32* %q_bits, align 4
  %34 = load i32, i32* %qp_per, align 4
  %cmp22 = icmp slt i32 %34, 6
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %35 = load i32, i32* %qp_per, align 4
  %sub23 = sub nsw i32 6, %35
  store i32 %sub23, i32* %dq_rshift, align 4
  %36 = load i32, i32* %qp_per, align 4
  %sub24 = sub nsw i32 5, %36
  %shl = shl i32 1, %sub24
  store i32 %shl, i32* %dq_round, align 4
  br label %if.end

if.else:                                          ; preds = %land.end
  %37 = load i32, i32* %qp_per, align 4
  %sub25 = sub nsw i32 %37, 6
  store i32 %sub25, i32* %dq_lshift, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 6
  %39 = load i32, i32* %type, align 4
  %cmp26 = icmp eq i32 %39, 2
  br i1 %cmp26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.end
  %40 = load i32, i32* %q_bits, align 4
  %shl28 = shl i32 1, %40
  %div29 = sdiv i32 %shl28, 3
  store i32 %div29, i32* %qp_const, align 4
  br label %if.end.33

if.else.30:                                       ; preds = %if.end
  %41 = load i32, i32* %q_bits, align 4
  %shl31 = shl i32 1, %41
  %div32 = sdiv i32 %shl31, 6
  store i32 %div32, i32* %qp_const, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.27
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %42 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %42, 8
  br i1 %cmp34, label %land.rhs.35, label %land.end.36

land.rhs.35:                                      ; preds = %for.cond
  %43 = load i32, i32* %lossless_qpprime, align 4
  %tobool = icmp ne i32 %43, 0
  %lnot = xor i1 %tobool, true
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.35, %for.cond
  %44 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs.35 ]
  br i1 %44, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.36
  %45 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %45 to i64
  %46 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %46, i32 0, i32 46
  %arrayidx39 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx39, i32 0, i64 %idxprom38
  %47 = load i32, i32* %arrayidx40, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %48 to i64
  %49 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m742 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %49, i32 0, i32 46
  %arrayidx43 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m742, i32 0, i64 7
  %arrayidx44 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx43, i32 0, i64 %idxprom41
  %50 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %47, %50
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  store i32 %add45, i32* %arrayidx46, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %51 to i64
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m748 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 46
  %arrayidx49 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m748, i32 0, i64 1
  %arrayidx50 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx49, i32 0, i64 %idxprom47
  %53 = load i32, i32* %arrayidx50, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %54 to i64
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m752 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 46
  %arrayidx53 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m752, i32 0, i64 6
  %arrayidx54 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx53, i32 0, i64 %idxprom51
  %56 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %53, %56
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  store i32 %add55, i32* %arrayidx56, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %57 to i64
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m758 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 46
  %arrayidx59 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m758, i32 0, i64 2
  %arrayidx60 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx59, i32 0, i64 %idxprom57
  %59 = load i32, i32* %arrayidx60, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m762 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 46
  %arrayidx63 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m762, i32 0, i64 5
  %arrayidx64 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx63, i32 0, i64 %idxprom61
  %62 = load i32, i32* %arrayidx64, align 4
  %add65 = add nsw i32 %59, %62
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  store i32 %add65, i32* %arrayidx66, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %63 to i64
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m768 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 46
  %arrayidx69 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m768, i32 0, i64 3
  %arrayidx70 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx69, i32 0, i64 %idxprom67
  %65 = load i32, i32* %arrayidx70, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %66 to i64
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m772 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 46
  %arrayidx73 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m772, i32 0, i64 4
  %arrayidx74 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx73, i32 0, i64 %idxprom71
  %68 = load i32, i32* %arrayidx74, align 4
  %add75 = add nsw i32 %65, %68
  %arrayidx76 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  store i32 %add75, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %69 = load i32, i32* %arrayidx77, align 4
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %70 = load i32, i32* %arrayidx78, align 4
  %add79 = add nsw i32 %69, %70
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  store i32 %add79, i32* %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %71 = load i32, i32* %arrayidx81, align 4
  %arrayidx82 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %72 = load i32, i32* %arrayidx82, align 4
  %add83 = add nsw i32 %71, %72
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  store i32 %add83, i32* %arrayidx84, align 4
  %arrayidx85 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %73 = load i32, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %74 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %73, %74
  %arrayidx88 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  store i32 %sub87, i32* %arrayidx88, align 4
  %arrayidx89 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %75 = load i32, i32* %arrayidx89, align 4
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %76 = load i32, i32* %arrayidx90, align 4
  %sub91 = sub nsw i32 %75, %76
  %arrayidx92 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  store i32 %sub91, i32* %arrayidx92, align 4
  %77 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %77 to i64
  %78 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m794 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %78, i32 0, i32 46
  %arrayidx95 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m794, i32 0, i64 0
  %arrayidx96 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx95, i32 0, i64 %idxprom93
  %79 = load i32, i32* %arrayidx96, align 4
  %80 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %80 to i64
  %81 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m798 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %81, i32 0, i32 46
  %arrayidx99 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m798, i32 0, i64 7
  %arrayidx100 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx99, i32 0, i64 %idxprom97
  %82 = load i32, i32* %arrayidx100, align 4
  %sub101 = sub nsw i32 %79, %82
  %arrayidx102 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  store i32 %sub101, i32* %arrayidx102, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %83 to i64
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7104 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 46
  %arrayidx105 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7104, i32 0, i64 1
  %arrayidx106 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx105, i32 0, i64 %idxprom103
  %85 = load i32, i32* %arrayidx106, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %86 to i64
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7108 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 46
  %arrayidx109 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7108, i32 0, i64 6
  %arrayidx110 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx109, i32 0, i64 %idxprom107
  %88 = load i32, i32* %arrayidx110, align 4
  %sub111 = sub nsw i32 %85, %88
  %arrayidx112 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  store i32 %sub111, i32* %arrayidx112, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %89 to i64
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7114 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 46
  %arrayidx115 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7114, i32 0, i64 2
  %arrayidx116 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx115, i32 0, i64 %idxprom113
  %91 = load i32, i32* %arrayidx116, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %92 to i64
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7118 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 46
  %arrayidx119 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7118, i32 0, i64 5
  %arrayidx120 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx119, i32 0, i64 %idxprom117
  %94 = load i32, i32* %arrayidx120, align 4
  %sub121 = sub nsw i32 %91, %94
  %arrayidx122 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  store i32 %sub121, i32* %arrayidx122, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %95 to i64
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7124 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 46
  %arrayidx125 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7124, i32 0, i64 3
  %arrayidx126 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx125, i32 0, i64 %idxprom123
  %97 = load i32, i32* %arrayidx126, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %98 to i64
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7128 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 46
  %arrayidx129 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7128, i32 0, i64 4
  %arrayidx130 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx129, i32 0, i64 %idxprom127
  %100 = load i32, i32* %arrayidx130, align 4
  %sub131 = sub nsw i32 %97, %100
  %arrayidx132 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  store i32 %sub131, i32* %arrayidx132, align 4
  %arrayidx133 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %101 = load i32, i32* %arrayidx133, align 4
  %arrayidx134 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %102 = load i32, i32* %arrayidx134, align 4
  %add135 = add nsw i32 %101, %102
  %arrayidx136 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %103 = load i32, i32* %arrayidx136, align 4
  %shr = ashr i32 %103, 1
  %arrayidx137 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %104 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %shr, %104
  %add139 = add nsw i32 %add135, %add138
  %arrayidx140 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  store i32 %add139, i32* %arrayidx140, align 4
  %arrayidx141 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %105 = load i32, i32* %arrayidx141, align 4
  %arrayidx142 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %106 = load i32, i32* %arrayidx142, align 4
  %sub143 = sub nsw i32 %105, %106
  %arrayidx144 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %107 = load i32, i32* %arrayidx144, align 4
  %shr145 = ashr i32 %107, 1
  %arrayidx146 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %108 = load i32, i32* %arrayidx146, align 4
  %add147 = add nsw i32 %shr145, %108
  %sub148 = sub nsw i32 %sub143, %add147
  %arrayidx149 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  store i32 %sub148, i32* %arrayidx149, align 4
  %arrayidx150 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %109 = load i32, i32* %arrayidx150, align 4
  %arrayidx151 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %110 = load i32, i32* %arrayidx151, align 4
  %add152 = add nsw i32 %109, %110
  %arrayidx153 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %111 = load i32, i32* %arrayidx153, align 4
  %shr154 = ashr i32 %111, 1
  %arrayidx155 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %112 = load i32, i32* %arrayidx155, align 4
  %add156 = add nsw i32 %shr154, %112
  %sub157 = sub nsw i32 %add152, %add156
  %arrayidx158 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  store i32 %sub157, i32* %arrayidx158, align 4
  %arrayidx159 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %113 = load i32, i32* %arrayidx159, align 4
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %114 = load i32, i32* %arrayidx160, align 4
  %sub161 = sub nsw i32 %113, %114
  %arrayidx162 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %115 = load i32, i32* %arrayidx162, align 4
  %shr163 = ashr i32 %115, 1
  %arrayidx164 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %116 = load i32, i32* %arrayidx164, align 4
  %add165 = add nsw i32 %shr163, %116
  %add166 = add nsw i32 %sub161, %add165
  %arrayidx167 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  store i32 %add166, i32* %arrayidx167, align 4
  %arrayidx168 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %117 = load i32, i32* %arrayidx168, align 4
  %arrayidx169 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %118 = load i32, i32* %arrayidx169, align 4
  %add170 = add nsw i32 %117, %118
  %119 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %119 to i64
  %arrayidx172 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 0
  %arrayidx173 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx172, i32 0, i64 %idxprom171
  store i32 %add170, i32* %arrayidx173, align 4
  %arrayidx174 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %120 = load i32, i32* %arrayidx174, align 4
  %arrayidx175 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %121 = load i32, i32* %arrayidx175, align 4
  %shr176 = ashr i32 %121, 1
  %add177 = add nsw i32 %120, %shr176
  %122 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %122 to i64
  %arrayidx179 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 2
  %arrayidx180 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx179, i32 0, i64 %idxprom178
  store i32 %add177, i32* %arrayidx180, align 4
  %arrayidx181 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %123 = load i32, i32* %arrayidx181, align 4
  %arrayidx182 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %124 = load i32, i32* %arrayidx182, align 4
  %sub183 = sub nsw i32 %123, %124
  %125 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %125 to i64
  %arrayidx185 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 4
  %arrayidx186 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx185, i32 0, i64 %idxprom184
  store i32 %sub183, i32* %arrayidx186, align 4
  %arrayidx187 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %126 = load i32, i32* %arrayidx187, align 4
  %shr188 = ashr i32 %126, 1
  %arrayidx189 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %127 = load i32, i32* %arrayidx189, align 4
  %sub190 = sub nsw i32 %shr188, %127
  %128 = load i32, i32* %i, align 4
  %idxprom191 = sext i32 %128 to i64
  %arrayidx192 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 6
  %arrayidx193 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx192, i32 0, i64 %idxprom191
  store i32 %sub190, i32* %arrayidx193, align 4
  %arrayidx194 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %129 = load i32, i32* %arrayidx194, align 4
  %arrayidx195 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %130 = load i32, i32* %arrayidx195, align 4
  %shr196 = ashr i32 %130, 2
  %add197 = add nsw i32 %129, %shr196
  %131 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %131 to i64
  %arrayidx199 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 1
  %arrayidx200 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx199, i32 0, i64 %idxprom198
  store i32 %add197, i32* %arrayidx200, align 4
  %arrayidx201 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %132 = load i32, i32* %arrayidx201, align 4
  %arrayidx202 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %133 = load i32, i32* %arrayidx202, align 4
  %shr203 = ashr i32 %133, 2
  %add204 = add nsw i32 %132, %shr203
  %134 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %134 to i64
  %arrayidx206 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 3
  %arrayidx207 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx206, i32 0, i64 %idxprom205
  store i32 %add204, i32* %arrayidx207, align 4
  %arrayidx208 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %135 = load i32, i32* %arrayidx208, align 4
  %arrayidx209 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %136 = load i32, i32* %arrayidx209, align 4
  %shr210 = ashr i32 %136, 2
  %sub211 = sub nsw i32 %135, %shr210
  %137 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %137 to i64
  %arrayidx213 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 5
  %arrayidx214 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx213, i32 0, i64 %idxprom212
  store i32 %sub211, i32* %arrayidx214, align 4
  %arrayidx215 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %138 = load i32, i32* %arrayidx215, align 4
  %sub216 = sub nsw i32 0, %138
  %arrayidx217 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %139 = load i32, i32* %arrayidx217, align 4
  %shr218 = ashr i32 %139, 2
  %add219 = add nsw i32 %sub216, %shr218
  %140 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %140 to i64
  %arrayidx221 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 7
  %arrayidx222 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx221, i32 0, i64 %idxprom220
  store i32 %add219, i32* %arrayidx222, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %141 = load i32, i32* %i, align 4
  %inc = add nsw i32 %141, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.36
  store i32 0, i32* %i, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.412, %for.end
  %142 = load i32, i32* %i, align 4
  %cmp224 = icmp slt i32 %142, 8
  br i1 %cmp224, label %land.rhs.225, label %land.end.228

land.rhs.225:                                     ; preds = %for.cond.223
  %143 = load i32, i32* %lossless_qpprime, align 4
  %tobool226 = icmp ne i32 %143, 0
  %lnot227 = xor i1 %tobool226, true
  br label %land.end.228

land.end.228:                                     ; preds = %land.rhs.225, %for.cond.223
  %144 = phi i1 [ false, %for.cond.223 ], [ %lnot227, %land.rhs.225 ]
  br i1 %144, label %for.body.230, label %for.end.414

for.body.230:                                     ; preds = %land.end.228
  %145 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %145 to i64
  %arrayidx234 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx234, i32 0, i64 0
  %146 = load i32, i32* %arrayidx235, align 4
  %147 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %147 to i64
  %arrayidx237 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom236
  %arrayidx238 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx237, i32 0, i64 7
  %148 = load i32, i32* %arrayidx238, align 4
  %add239 = add nsw i32 %146, %148
  %arrayidx240 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 0
  store i32 %add239, i32* %arrayidx240, align 4
  %149 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %149 to i64
  %arrayidx242 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom241
  %arrayidx243 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx242, i32 0, i64 1
  %150 = load i32, i32* %arrayidx243, align 4
  %151 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %151 to i64
  %arrayidx245 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx245, i32 0, i64 6
  %152 = load i32, i32* %arrayidx246, align 4
  %add247 = add nsw i32 %150, %152
  %arrayidx248 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 1
  store i32 %add247, i32* %arrayidx248, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %153 to i64
  %arrayidx250 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom249
  %arrayidx251 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx250, i32 0, i64 2
  %154 = load i32, i32* %arrayidx251, align 4
  %155 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %155 to i64
  %arrayidx253 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom252
  %arrayidx254 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx253, i32 0, i64 5
  %156 = load i32, i32* %arrayidx254, align 4
  %add255 = add nsw i32 %154, %156
  %arrayidx256 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 2
  store i32 %add255, i32* %arrayidx256, align 4
  %157 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %157 to i64
  %arrayidx258 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom257
  %arrayidx259 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx258, i32 0, i64 3
  %158 = load i32, i32* %arrayidx259, align 4
  %159 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %159 to i64
  %arrayidx261 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom260
  %arrayidx262 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx261, i32 0, i64 4
  %160 = load i32, i32* %arrayidx262, align 4
  %add263 = add nsw i32 %158, %160
  %arrayidx264 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 3
  store i32 %add263, i32* %arrayidx264, align 4
  %arrayidx265 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 0
  %161 = load i32, i32* %arrayidx265, align 4
  %arrayidx266 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 3
  %162 = load i32, i32* %arrayidx266, align 4
  %add267 = add nsw i32 %161, %162
  %arrayidx268 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 0
  store i32 %add267, i32* %arrayidx268, align 4
  %arrayidx269 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 1
  %163 = load i32, i32* %arrayidx269, align 4
  %arrayidx270 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 2
  %164 = load i32, i32* %arrayidx270, align 4
  %add271 = add nsw i32 %163, %164
  %arrayidx272 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 1
  store i32 %add271, i32* %arrayidx272, align 4
  %arrayidx273 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 0
  %165 = load i32, i32* %arrayidx273, align 4
  %arrayidx274 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 3
  %166 = load i32, i32* %arrayidx274, align 4
  %sub275 = sub nsw i32 %165, %166
  %arrayidx276 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 2
  store i32 %sub275, i32* %arrayidx276, align 4
  %arrayidx277 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 1
  %167 = load i32, i32* %arrayidx277, align 4
  %arrayidx278 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 2
  %168 = load i32, i32* %arrayidx278, align 4
  %sub279 = sub nsw i32 %167, %168
  %arrayidx280 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 3
  store i32 %sub279, i32* %arrayidx280, align 4
  %169 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %169 to i64
  %arrayidx282 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom281
  %arrayidx283 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx282, i32 0, i64 0
  %170 = load i32, i32* %arrayidx283, align 4
  %171 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %171 to i64
  %arrayidx285 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom284
  %arrayidx286 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx285, i32 0, i64 7
  %172 = load i32, i32* %arrayidx286, align 4
  %sub287 = sub nsw i32 %170, %172
  %arrayidx288 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 4
  store i32 %sub287, i32* %arrayidx288, align 4
  %173 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %173 to i64
  %arrayidx290 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom289
  %arrayidx291 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx290, i32 0, i64 1
  %174 = load i32, i32* %arrayidx291, align 4
  %175 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %175 to i64
  %arrayidx293 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom292
  %arrayidx294 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx293, i32 0, i64 6
  %176 = load i32, i32* %arrayidx294, align 4
  %sub295 = sub nsw i32 %174, %176
  %arrayidx296 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 5
  store i32 %sub295, i32* %arrayidx296, align 4
  %177 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %177 to i64
  %arrayidx298 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom297
  %arrayidx299 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx298, i32 0, i64 2
  %178 = load i32, i32* %arrayidx299, align 4
  %179 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %179 to i64
  %arrayidx301 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom300
  %arrayidx302 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx301, i32 0, i64 5
  %180 = load i32, i32* %arrayidx302, align 4
  %sub303 = sub nsw i32 %178, %180
  %arrayidx304 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 6
  store i32 %sub303, i32* %arrayidx304, align 4
  %181 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %181 to i64
  %arrayidx306 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom305
  %arrayidx307 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx306, i32 0, i64 3
  %182 = load i32, i32* %arrayidx307, align 4
  %183 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %183 to i64
  %arrayidx309 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom308
  %arrayidx310 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx309, i32 0, i64 4
  %184 = load i32, i32* %arrayidx310, align 4
  %sub311 = sub nsw i32 %182, %184
  %arrayidx312 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 7
  store i32 %sub311, i32* %arrayidx312, align 4
  %arrayidx313 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 5
  %185 = load i32, i32* %arrayidx313, align 4
  %arrayidx314 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 6
  %186 = load i32, i32* %arrayidx314, align 4
  %add315 = add nsw i32 %185, %186
  %arrayidx316 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 4
  %187 = load i32, i32* %arrayidx316, align 4
  %shr317 = ashr i32 %187, 1
  %arrayidx318 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 4
  %188 = load i32, i32* %arrayidx318, align 4
  %add319 = add nsw i32 %shr317, %188
  %add320 = add nsw i32 %add315, %add319
  %arrayidx321 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 4
  store i32 %add320, i32* %arrayidx321, align 4
  %arrayidx322 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 4
  %189 = load i32, i32* %arrayidx322, align 4
  %arrayidx323 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 7
  %190 = load i32, i32* %arrayidx323, align 4
  %sub324 = sub nsw i32 %189, %190
  %arrayidx325 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 6
  %191 = load i32, i32* %arrayidx325, align 4
  %shr326 = ashr i32 %191, 1
  %arrayidx327 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 6
  %192 = load i32, i32* %arrayidx327, align 4
  %add328 = add nsw i32 %shr326, %192
  %sub329 = sub nsw i32 %sub324, %add328
  %arrayidx330 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 5
  store i32 %sub329, i32* %arrayidx330, align 4
  %arrayidx331 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 4
  %193 = load i32, i32* %arrayidx331, align 4
  %arrayidx332 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 7
  %194 = load i32, i32* %arrayidx332, align 4
  %add333 = add nsw i32 %193, %194
  %arrayidx334 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 5
  %195 = load i32, i32* %arrayidx334, align 4
  %shr335 = ashr i32 %195, 1
  %arrayidx336 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 5
  %196 = load i32, i32* %arrayidx336, align 4
  %add337 = add nsw i32 %shr335, %196
  %sub338 = sub nsw i32 %add333, %add337
  %arrayidx339 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 6
  store i32 %sub338, i32* %arrayidx339, align 4
  %arrayidx340 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 5
  %197 = load i32, i32* %arrayidx340, align 4
  %arrayidx341 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 6
  %198 = load i32, i32* %arrayidx341, align 4
  %sub342 = sub nsw i32 %197, %198
  %arrayidx343 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 7
  %199 = load i32, i32* %arrayidx343, align 4
  %shr344 = ashr i32 %199, 1
  %arrayidx345 = getelementptr inbounds [8 x i32], [8 x i32]* %a231, i32 0, i64 7
  %200 = load i32, i32* %arrayidx345, align 4
  %add346 = add nsw i32 %shr344, %200
  %add347 = add nsw i32 %sub342, %add346
  %arrayidx348 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 7
  store i32 %add347, i32* %arrayidx348, align 4
  %arrayidx349 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 0
  %201 = load i32, i32* %arrayidx349, align 4
  %arrayidx350 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 1
  %202 = load i32, i32* %arrayidx350, align 4
  %add351 = add nsw i32 %201, %202
  %203 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %203 to i64
  %204 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7353 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %204, i32 0, i32 46
  %arrayidx354 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7353, i32 0, i64 %idxprom352
  %arrayidx355 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx354, i32 0, i64 0
  store i32 %add351, i32* %arrayidx355, align 4
  %arrayidx356 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 2
  %205 = load i32, i32* %arrayidx356, align 4
  %arrayidx357 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 3
  %206 = load i32, i32* %arrayidx357, align 4
  %shr358 = ashr i32 %206, 1
  %add359 = add nsw i32 %205, %shr358
  %207 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %207 to i64
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7361 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 46
  %arrayidx362 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7361, i32 0, i64 %idxprom360
  %arrayidx363 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx362, i32 0, i64 2
  store i32 %add359, i32* %arrayidx363, align 4
  %arrayidx364 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 0
  %209 = load i32, i32* %arrayidx364, align 4
  %arrayidx365 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 1
  %210 = load i32, i32* %arrayidx365, align 4
  %sub366 = sub nsw i32 %209, %210
  %211 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %211 to i64
  %212 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7368 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %212, i32 0, i32 46
  %arrayidx369 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7368, i32 0, i64 %idxprom367
  %arrayidx370 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx369, i32 0, i64 4
  store i32 %sub366, i32* %arrayidx370, align 4
  %arrayidx371 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 2
  %213 = load i32, i32* %arrayidx371, align 4
  %shr372 = ashr i32 %213, 1
  %arrayidx373 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 3
  %214 = load i32, i32* %arrayidx373, align 4
  %sub374 = sub nsw i32 %shr372, %214
  %215 = load i32, i32* %i, align 4
  %idxprom375 = sext i32 %215 to i64
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7376 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 46
  %arrayidx377 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7376, i32 0, i64 %idxprom375
  %arrayidx378 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx377, i32 0, i64 6
  store i32 %sub374, i32* %arrayidx378, align 4
  %arrayidx379 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 4
  %217 = load i32, i32* %arrayidx379, align 4
  %arrayidx380 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 7
  %218 = load i32, i32* %arrayidx380, align 4
  %shr381 = ashr i32 %218, 2
  %add382 = add nsw i32 %217, %shr381
  %219 = load i32, i32* %i, align 4
  %idxprom383 = sext i32 %219 to i64
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7384 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 46
  %arrayidx385 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7384, i32 0, i64 %idxprom383
  %arrayidx386 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx385, i32 0, i64 1
  store i32 %add382, i32* %arrayidx386, align 4
  %arrayidx387 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 5
  %221 = load i32, i32* %arrayidx387, align 4
  %arrayidx388 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 6
  %222 = load i32, i32* %arrayidx388, align 4
  %shr389 = ashr i32 %222, 2
  %add390 = add nsw i32 %221, %shr389
  %223 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %223 to i64
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7392 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 46
  %arrayidx393 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7392, i32 0, i64 %idxprom391
  %arrayidx394 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx393, i32 0, i64 3
  store i32 %add390, i32* %arrayidx394, align 4
  %arrayidx395 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 6
  %225 = load i32, i32* %arrayidx395, align 4
  %arrayidx396 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 5
  %226 = load i32, i32* %arrayidx396, align 4
  %shr397 = ashr i32 %226, 2
  %sub398 = sub nsw i32 %225, %shr397
  %227 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %227 to i64
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7400 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 46
  %arrayidx401 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7400, i32 0, i64 %idxprom399
  %arrayidx402 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx401, i32 0, i64 5
  store i32 %sub398, i32* %arrayidx402, align 4
  %arrayidx403 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 7
  %229 = load i32, i32* %arrayidx403, align 4
  %sub404 = sub nsw i32 0, %229
  %arrayidx405 = getelementptr inbounds [8 x i32], [8 x i32]* %b232, i32 0, i64 4
  %230 = load i32, i32* %arrayidx405, align 4
  %shr406 = ashr i32 %230, 2
  %add407 = add nsw i32 %sub404, %shr406
  %231 = load i32, i32* %i, align 4
  %idxprom408 = sext i32 %231 to i64
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7409 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 46
  %arrayidx410 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7409, i32 0, i64 %idxprom408
  %arrayidx411 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx410, i32 0, i64 7
  store i32 %add407, i32* %arrayidx411, align 4
  br label %for.inc.412

for.inc.412:                                      ; preds = %for.body.230
  %233 = load i32, i32* %i, align 4
  %inc413 = add nsw i32 %233, 1
  store i32 %inc413, i32* %i, align 4
  br label %for.cond.223

for.end.414:                                      ; preds = %land.end.228
  store i32 0, i32* %nonzero, align 4
  store i32 -1, i32* %run, align 4
  store i32 0, i32* %scan_pos, align 4
  %arrayidx415 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 3
  store i32 -1, i32* %arrayidx415, align 4
  %arrayidx416 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 2
  store i32 -1, i32* %arrayidx416, align 4
  %arrayidx417 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 1
  store i32 -1, i32* %arrayidx417, align 4
  %arrayidx418 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 0
  store i32 -1, i32* %arrayidx418, align 4
  %arrayidx419 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 3
  store i32 0, i32* %arrayidx419, align 4
  %arrayidx420 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 2
  store i32 0, i32* %arrayidx420, align 4
  %arrayidx421 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 1
  store i32 0, i32* %arrayidx421, align 4
  %arrayidx422 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 0
  store i32 0, i32* %arrayidx422, align 4
  store i32 0, i32* %coeff_ctr, align 4
  br label %for.cond.423

for.cond.423:                                     ; preds = %for.inc.664, %for.end.414
  %234 = load i32, i32* %coeff_ctr, align 4
  %cmp424 = icmp slt i32 %234, 64
  br i1 %cmp424, label %for.body.425, label %for.end.666

for.body.425:                                     ; preds = %for.cond.423
  %235 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %field_picture = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %235, i32 0, i32 100
  %236 = load i32, i32* %field_picture, align 4
  %tobool426 = icmp ne i32 %236, 0
  br i1 %tobool426, label %if.then.429, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.425
  %237 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %MbaffFrameFlag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %237, i32 0, i32 90
  %238 = load i32, i32* %MbaffFrameFlag, align 4
  %tobool427 = icmp ne i32 %238, 0
  br i1 %tobool427, label %land.lhs.true, label %if.else.437

land.lhs.true:                                    ; preds = %lor.lhs.false
  %239 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %mb_field = getelementptr inbounds %struct.macroblock, %struct.macroblock* %239, i32 0, i32 22
  %240 = load i32, i32* %mb_field, align 4
  %tobool428 = icmp ne i32 %240, 0
  br i1 %tobool428, label %if.then.429, label %if.else.437

if.then.429:                                      ; preds = %land.lhs.true, %for.body.425
  %241 = load i32, i32* %coeff_ctr, align 4
  %idxprom430 = sext i32 %241 to i64
  %arrayidx431 = getelementptr inbounds [64 x [2 x i8]], [64 x [2 x i8]]* @FIELD_SCAN8x8, i32 0, i64 %idxprom430
  %arrayidx432 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx431, i32 0, i64 0
  %242 = load i8, i8* %arrayidx432, align 1
  %conv = zext i8 %242 to i32
  store i32 %conv, i32* %i, align 4
  %243 = load i32, i32* %coeff_ctr, align 4
  %idxprom433 = sext i32 %243 to i64
  %arrayidx434 = getelementptr inbounds [64 x [2 x i8]], [64 x [2 x i8]]* @FIELD_SCAN8x8, i32 0, i64 %idxprom433
  %arrayidx435 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx434, i32 0, i64 1
  %244 = load i8, i8* %arrayidx435, align 1
  %conv436 = zext i8 %244 to i32
  store i32 %conv436, i32* %j, align 4
  br label %if.end.446

if.else.437:                                      ; preds = %land.lhs.true, %lor.lhs.false
  %245 = load i32, i32* %coeff_ctr, align 4
  %idxprom438 = sext i32 %245 to i64
  %arrayidx439 = getelementptr inbounds [64 x [2 x i8]], [64 x [2 x i8]]* @SNGL_SCAN8x8, i32 0, i64 %idxprom438
  %arrayidx440 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx439, i32 0, i64 0
  %246 = load i8, i8* %arrayidx440, align 1
  %conv441 = zext i8 %246 to i32
  store i32 %conv441, i32* %i, align 4
  %247 = load i32, i32* %coeff_ctr, align 4
  %idxprom442 = sext i32 %247 to i64
  %arrayidx443 = getelementptr inbounds [64 x [2 x i8]], [64 x [2 x i8]]* @SNGL_SCAN8x8, i32 0, i64 %idxprom442
  %arrayidx444 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx443, i32 0, i64 1
  %248 = load i8, i8* %arrayidx444, align 1
  %conv445 = zext i8 %248 to i32
  store i32 %conv445, i32* %j, align 4
  br label %if.end.446

if.end.446:                                       ; preds = %if.else.437, %if.then.429
  %249 = load i32, i32* %run, align 4
  %inc447 = add nsw i32 %249, 1
  store i32 %inc447, i32* %run, align 4
  store i32 0, i32* %ilev, align 4
  %250 = load i32, i32* %coeff_ctr, align 4
  %and = and i32 %250, 3
  %idxprom448 = sext i32 %and to i64
  %arrayidx449 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom448
  %251 = load i32, i32* %arrayidx449, align 4
  %inc450 = add nsw i32 %251, 1
  store i32 %inc450, i32* %arrayidx449, align 4
  %252 = load i32, i32* %lossless_qpprime, align 4
  %tobool451 = icmp ne i32 %252, 0
  br i1 %tobool451, label %if.then.452, label %if.else.458

if.then.452:                                      ; preds = %if.end.446
  %253 = load i32, i32* %j, align 4
  %idxprom453 = sext i32 %253 to i64
  %254 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %254 to i64
  %255 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7455 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %255, i32 0, i32 46
  %arrayidx456 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7455, i32 0, i64 %idxprom454
  %arrayidx457 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx456, i32 0, i64 %idxprom453
  %256 = load i32, i32* %arrayidx457, align 4
  %call = call i32 @abs(i32 %256) #3
  store i32 %call, i32* %level, align 4
  br label %if.end.506

if.else.458:                                      ; preds = %if.end.446
  %257 = load i32, i32* %intra.addr, align 4
  %cmp459 = icmp eq i32 %257, 1
  br i1 %cmp459, label %if.then.461, label %if.else.483

if.then.461:                                      ; preds = %if.else.458
  %258 = load i32, i32* %j, align 4
  %idxprom462 = sext i32 %258 to i64
  %259 = load i32, i32* %i, align 4
  %idxprom463 = sext i32 %259 to i64
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7464 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 46
  %arrayidx465 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7464, i32 0, i64 %idxprom463
  %arrayidx466 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx465, i32 0, i64 %idxprom462
  %261 = load i32, i32* %arrayidx466, align 4
  %call467 = call i32 @abs(i32 %261) #3
  %262 = load i32, i32* %j, align 4
  %idxprom468 = sext i32 %262 to i64
  %263 = load i32, i32* %i, align 4
  %idxprom469 = sext i32 %263 to i64
  %264 = load i32, i32* %qp_rem, align 4
  %idxprom470 = sext i32 %264 to i64
  %arrayidx471 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Intra, i32 0, i64 %idxprom470
  %arrayidx472 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx471, i32 0, i64 %idxprom469
  %arrayidx473 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx472, i32 0, i64 %idxprom468
  %265 = load i32, i32* %arrayidx473, align 4
  %mul474 = mul nsw i32 %call467, %265
  %266 = load i32, i32* %j, align 4
  %idxprom475 = sext i32 %266 to i64
  %267 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %267 to i64
  %268 = load i32, i32* %qp_per, align 4
  %idxprom477 = sext i32 %268 to i64
  %arrayidx478 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Intra, i32 0, i64 %idxprom477
  %arrayidx479 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx478, i32 0, i64 %idxprom476
  %arrayidx480 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx479, i32 0, i64 %idxprom475
  %269 = load i32, i32* %arrayidx480, align 4
  %add481 = add nsw i32 %mul474, %269
  %270 = load i32, i32* %q_bits, align 4
  %shr482 = ashr i32 %add481, %270
  store i32 %shr482, i32* %level, align 4
  br label %if.end.505

if.else.483:                                      ; preds = %if.else.458
  %271 = load i32, i32* %j, align 4
  %idxprom484 = sext i32 %271 to i64
  %272 = load i32, i32* %i, align 4
  %idxprom485 = sext i32 %272 to i64
  %273 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7486 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %273, i32 0, i32 46
  %arrayidx487 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7486, i32 0, i64 %idxprom485
  %arrayidx488 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx487, i32 0, i64 %idxprom484
  %274 = load i32, i32* %arrayidx488, align 4
  %call489 = call i32 @abs(i32 %274) #3
  %275 = load i32, i32* %j, align 4
  %idxprom490 = sext i32 %275 to i64
  %276 = load i32, i32* %i, align 4
  %idxprom491 = sext i32 %276 to i64
  %277 = load i32, i32* %qp_rem, align 4
  %idxprom492 = sext i32 %277 to i64
  %arrayidx493 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @LevelScale8x8Luma_Inter, i32 0, i64 %idxprom492
  %arrayidx494 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx493, i32 0, i64 %idxprom491
  %arrayidx495 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx494, i32 0, i64 %idxprom490
  %278 = load i32, i32* %arrayidx495, align 4
  %mul496 = mul nsw i32 %call489, %278
  %279 = load i32, i32* %j, align 4
  %idxprom497 = sext i32 %279 to i64
  %280 = load i32, i32* %i, align 4
  %idxprom498 = sext i32 %280 to i64
  %281 = load i32, i32* %qp_per, align 4
  %idxprom499 = sext i32 %281 to i64
  %arrayidx500 = getelementptr inbounds [13 x [8 x [8 x i32]]], [13 x [8 x [8 x i32]]]* @LevelOffset8x8Luma_Inter, i32 0, i64 %idxprom499
  %arrayidx501 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx500, i32 0, i64 %idxprom498
  %arrayidx502 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx501, i32 0, i64 %idxprom497
  %282 = load i32, i32* %arrayidx502, align 4
  %add503 = add nsw i32 %mul496, %282
  %283 = load i32, i32* %q_bits, align 4
  %shr504 = ashr i32 %add503, %283
  store i32 %shr504, i32* %level, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.else.483, %if.then.461
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.505, %if.then.452
  %284 = load i32, i32* %level, align 4
  %cmp507 = icmp ne i32 %284, 0
  br i1 %cmp507, label %if.then.509, label %if.end.655

if.then.509:                                      ; preds = %if.end.506
  store i32 1, i32* %nonzero, align 4
  %285 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %285, i32 0, i32 32
  %286 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %tobool510 = icmp ne i32 %286, 0
  br i1 %tobool510, label %land.lhs.true.511, label %if.else.570

land.lhs.true.511:                                ; preds = %if.then.509
  %287 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %287, i32 0, i32 59
  %288 = load i32, i32* %symbol_mode, align 4
  %cmp512 = icmp eq i32 %288, 0
  br i1 %cmp512, label %if.then.514, label %if.else.570

if.then.514:                                      ; preds = %land.lhs.true.511
  %289 = load i32, i32* %level, align 4
  %cmp515 = icmp sgt i32 %289, 1
  br i1 %cmp515, label %if.then.517, label %if.else.519

if.then.517:                                      ; preds = %if.then.514
  %290 = load i32*, i32** %coeff_cost.addr, align 8
  %291 = load i32, i32* %290, align 4
  %add518 = add nsw i32 %291, 999999
  store i32 %add518, i32* %290, align 4
  br label %if.end.529

if.else.519:                                      ; preds = %if.then.514
  %292 = load i32, i32* %coeff_ctr, align 4
  %and520 = and i32 %292, 3
  %idxprom521 = sext i32 %and520 to i64
  %arrayidx522 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom521
  %293 = load i32, i32* %arrayidx522, align 4
  %idxprom523 = sext i32 %293 to i64
  %294 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %disthres = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %294, i32 0, i32 86
  %295 = load i32, i32* %disthres, align 4
  %idxprom524 = sext i32 %295 to i64
  %arrayidx525 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @COEFF_COST8x8, i32 0, i64 %idxprom524
  %arrayidx526 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx525, i32 0, i64 %idxprom523
  %296 = load i8, i8* %arrayidx526, align 1
  %conv527 = zext i8 %296 to i32
  %297 = load i32*, i32** %coeff_cost.addr, align 8
  %298 = load i32, i32* %297, align 4
  %add528 = add nsw i32 %298, %conv527
  store i32 %add528, i32* %297, align 4
  br label %if.end.529

if.end.529:                                       ; preds = %if.else.519, %if.then.517
  %299 = load i32, i32* %level, align 4
  %300 = load i32, i32* %j, align 4
  %idxprom530 = sext i32 %300 to i64
  %301 = load i32, i32* %i, align 4
  %idxprom531 = sext i32 %301 to i64
  %302 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7532 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %302, i32 0, i32 46
  %arrayidx533 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7532, i32 0, i64 %idxprom531
  %arrayidx534 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx533, i32 0, i64 %idxprom530
  %303 = load i32, i32* %arrayidx534, align 4
  %call535 = call i32 @sign(i32 %299, i32 %303)
  %304 = load i32, i32* %coeff_ctr, align 4
  %and536 = and i32 %304, 3
  %idxprom537 = sext i32 %and536 to i64
  %arrayidx538 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom537
  %305 = load i32, i32* %arrayidx538, align 4
  %idxprom539 = sext i32 %305 to i64
  %306 = load i32, i32* %coeff_ctr, align 4
  %and540 = and i32 %306, 3
  %idxprom541 = sext i32 %and540 to i64
  %307 = load i32, i32* %b8.addr, align 4
  %idxprom542 = sext i32 %307 to i64
  %308 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC543 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %308, i32 0, i32 47
  %309 = load i32****, i32***** %cofAC543, align 8
  %arrayidx544 = getelementptr inbounds i32***, i32**** %309, i64 %idxprom542
  %310 = load i32***, i32**** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds i32**, i32*** %310, i64 %idxprom541
  %311 = load i32**, i32*** %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds i32*, i32** %311, i64 0
  %312 = load i32*, i32** %arrayidx546, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %312, i64 %idxprom539
  store i32 %call535, i32* %arrayidx547, align 4
  %313 = load i32, i32* %coeff_ctr, align 4
  %and548 = and i32 %313, 3
  %idxprom549 = sext i32 %and548 to i64
  %arrayidx550 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom549
  %314 = load i32, i32* %arrayidx550, align 4
  %315 = load i32, i32* %coeff_ctr, align 4
  %and551 = and i32 %315, 3
  %idxprom552 = sext i32 %and551 to i64
  %arrayidx553 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom552
  %316 = load i32, i32* %arrayidx553, align 4
  %idxprom554 = sext i32 %316 to i64
  %317 = load i32, i32* %coeff_ctr, align 4
  %and555 = and i32 %317, 3
  %idxprom556 = sext i32 %and555 to i64
  %318 = load i32, i32* %b8.addr, align 4
  %idxprom557 = sext i32 %318 to i64
  %319 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC558 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %319, i32 0, i32 47
  %320 = load i32****, i32***** %cofAC558, align 8
  %arrayidx559 = getelementptr inbounds i32***, i32**** %320, i64 %idxprom557
  %321 = load i32***, i32**** %arrayidx559, align 8
  %arrayidx560 = getelementptr inbounds i32**, i32*** %321, i64 %idxprom556
  %322 = load i32**, i32*** %arrayidx560, align 8
  %arrayidx561 = getelementptr inbounds i32*, i32** %322, i64 1
  %323 = load i32*, i32** %arrayidx561, align 8
  %arrayidx562 = getelementptr inbounds i32, i32* %323, i64 %idxprom554
  store i32 %314, i32* %arrayidx562, align 4
  %324 = load i32, i32* %coeff_ctr, align 4
  %and563 = and i32 %324, 3
  %idxprom564 = sext i32 %and563 to i64
  %arrayidx565 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom564
  %325 = load i32, i32* %arrayidx565, align 4
  %inc566 = add nsw i32 %325, 1
  store i32 %inc566, i32* %arrayidx565, align 4
  %326 = load i32, i32* %coeff_ctr, align 4
  %and567 = and i32 %326, 3
  %idxprom568 = sext i32 %and567 to i64
  %arrayidx569 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom568
  store i32 -1, i32* %arrayidx569, align 4
  br label %if.end.595

if.else.570:                                      ; preds = %land.lhs.true.511, %if.then.509
  %327 = load i32, i32* %level, align 4
  %cmp571 = icmp sgt i32 %327, 1
  br i1 %cmp571, label %if.then.573, label %if.else.575

if.then.573:                                      ; preds = %if.else.570
  %328 = load i32*, i32** %coeff_cost.addr, align 8
  %329 = load i32, i32* %328, align 4
  %add574 = add nsw i32 %329, 999999
  store i32 %add574, i32* %328, align 4
  br label %if.end.583

if.else.575:                                      ; preds = %if.else.570
  %330 = load i32, i32* %run, align 4
  %idxprom576 = sext i32 %330 to i64
  %331 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %disthres577 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %331, i32 0, i32 86
  %332 = load i32, i32* %disthres577, align 4
  %idxprom578 = sext i32 %332 to i64
  %arrayidx579 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @COEFF_COST8x8, i32 0, i64 %idxprom578
  %arrayidx580 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx579, i32 0, i64 %idxprom576
  %333 = load i8, i8* %arrayidx580, align 1
  %conv581 = zext i8 %333 to i32
  %334 = load i32*, i32** %coeff_cost.addr, align 8
  %335 = load i32, i32* %334, align 4
  %add582 = add nsw i32 %335, %conv581
  store i32 %add582, i32* %334, align 4
  br label %if.end.583

if.end.583:                                       ; preds = %if.else.575, %if.then.573
  %336 = load i32, i32* %level, align 4
  %337 = load i32, i32* %j, align 4
  %idxprom584 = sext i32 %337 to i64
  %338 = load i32, i32* %i, align 4
  %idxprom585 = sext i32 %338 to i64
  %339 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7586 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %339, i32 0, i32 46
  %arrayidx587 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7586, i32 0, i64 %idxprom585
  %arrayidx588 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx587, i32 0, i64 %idxprom584
  %340 = load i32, i32* %arrayidx588, align 4
  %call589 = call i32 @sign(i32 %336, i32 %340)
  %341 = load i32, i32* %scan_pos, align 4
  %idxprom590 = sext i32 %341 to i64
  %342 = load i32*, i32** %ACLevel, align 8
  %arrayidx591 = getelementptr inbounds i32, i32* %342, i64 %idxprom590
  store i32 %call589, i32* %arrayidx591, align 4
  %343 = load i32, i32* %run, align 4
  %344 = load i32, i32* %scan_pos, align 4
  %idxprom592 = sext i32 %344 to i64
  %345 = load i32*, i32** %ACRun, align 8
  %arrayidx593 = getelementptr inbounds i32, i32* %345, i64 %idxprom592
  store i32 %343, i32* %arrayidx593, align 4
  %346 = load i32, i32* %scan_pos, align 4
  %inc594 = add nsw i32 %346, 1
  store i32 %inc594, i32* %scan_pos, align 4
  store i32 -1, i32* %run, align 4
  br label %if.end.595

if.end.595:                                       ; preds = %if.end.583, %if.end.529
  %347 = load i32, i32* %level, align 4
  %348 = load i32, i32* %j, align 4
  %idxprom596 = sext i32 %348 to i64
  %349 = load i32, i32* %i, align 4
  %idxprom597 = sext i32 %349 to i64
  %350 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7598 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %350, i32 0, i32 46
  %arrayidx599 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7598, i32 0, i64 %idxprom597
  %arrayidx600 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx599, i32 0, i64 %idxprom596
  %351 = load i32, i32* %arrayidx600, align 4
  %call601 = call i32 @sign(i32 %347, i32 %351)
  store i32 %call601, i32* %level, align 4
  %352 = load i32, i32* %lossless_qpprime, align 4
  %tobool602 = icmp ne i32 %352, 0
  br i1 %tobool602, label %if.then.603, label %if.else.604

if.then.603:                                      ; preds = %if.end.595
  %353 = load i32, i32* %level, align 4
  store i32 %353, i32* %ilev, align 4
  br label %if.end.654

if.else.604:                                      ; preds = %if.end.595
  %354 = load i32, i32* %intra.addr, align 4
  %cmp605 = icmp eq i32 %354, 1
  br i1 %cmp605, label %if.then.607, label %if.else.630

if.then.607:                                      ; preds = %if.else.604
  %355 = load i32, i32* %qp_per, align 4
  %cmp608 = icmp sge i32 %355, 6
  br i1 %cmp608, label %if.then.610, label %if.else.619

if.then.610:                                      ; preds = %if.then.607
  %356 = load i32, i32* %level, align 4
  %357 = load i32, i32* %j, align 4
  %idxprom611 = sext i32 %357 to i64
  %358 = load i32, i32* %i, align 4
  %idxprom612 = sext i32 %358 to i64
  %359 = load i32, i32* %qp_rem, align 4
  %idxprom613 = sext i32 %359 to i64
  %arrayidx614 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i32 0, i64 %idxprom613
  %arrayidx615 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx614, i32 0, i64 %idxprom612
  %arrayidx616 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx615, i32 0, i64 %idxprom611
  %360 = load i32, i32* %arrayidx616, align 4
  %mul617 = mul nsw i32 %356, %360
  %361 = load i32, i32* %dq_lshift, align 4
  %shl618 = shl i32 %mul617, %361
  store i32 %shl618, i32* %ilev, align 4
  br label %if.end.629

if.else.619:                                      ; preds = %if.then.607
  %362 = load i32, i32* %level, align 4
  %363 = load i32, i32* %j, align 4
  %idxprom620 = sext i32 %363 to i64
  %364 = load i32, i32* %i, align 4
  %idxprom621 = sext i32 %364 to i64
  %365 = load i32, i32* %qp_rem, align 4
  %idxprom622 = sext i32 %365 to i64
  %arrayidx623 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Intra, i32 0, i64 %idxprom622
  %arrayidx624 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx623, i32 0, i64 %idxprom621
  %arrayidx625 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx624, i32 0, i64 %idxprom620
  %366 = load i32, i32* %arrayidx625, align 4
  %mul626 = mul nsw i32 %362, %366
  %367 = load i32, i32* %dq_round, align 4
  %add627 = add nsw i32 %mul626, %367
  %368 = load i32, i32* %dq_rshift, align 4
  %shr628 = ashr i32 %add627, %368
  store i32 %shr628, i32* %ilev, align 4
  br label %if.end.629

if.end.629:                                       ; preds = %if.else.619, %if.then.610
  br label %if.end.653

if.else.630:                                      ; preds = %if.else.604
  %369 = load i32, i32* %qp_per, align 4
  %cmp631 = icmp sge i32 %369, 6
  br i1 %cmp631, label %if.then.633, label %if.else.642

if.then.633:                                      ; preds = %if.else.630
  %370 = load i32, i32* %level, align 4
  %371 = load i32, i32* %j, align 4
  %idxprom634 = sext i32 %371 to i64
  %372 = load i32, i32* %i, align 4
  %idxprom635 = sext i32 %372 to i64
  %373 = load i32, i32* %qp_rem, align 4
  %idxprom636 = sext i32 %373 to i64
  %arrayidx637 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i32 0, i64 %idxprom636
  %arrayidx638 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx637, i32 0, i64 %idxprom635
  %arrayidx639 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx638, i32 0, i64 %idxprom634
  %374 = load i32, i32* %arrayidx639, align 4
  %mul640 = mul nsw i32 %370, %374
  %375 = load i32, i32* %dq_lshift, align 4
  %shl641 = shl i32 %mul640, %375
  store i32 %shl641, i32* %ilev, align 4
  br label %if.end.652

if.else.642:                                      ; preds = %if.else.630
  %376 = load i32, i32* %level, align 4
  %377 = load i32, i32* %j, align 4
  %idxprom643 = sext i32 %377 to i64
  %378 = load i32, i32* %i, align 4
  %idxprom644 = sext i32 %378 to i64
  %379 = load i32, i32* %qp_rem, align 4
  %idxprom645 = sext i32 %379 to i64
  %arrayidx646 = getelementptr inbounds [6 x [8 x [8 x i32]]], [6 x [8 x [8 x i32]]]* @InvLevelScale8x8Luma_Inter, i32 0, i64 %idxprom645
  %arrayidx647 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %arrayidx646, i32 0, i64 %idxprom644
  %arrayidx648 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx647, i32 0, i64 %idxprom643
  %380 = load i32, i32* %arrayidx648, align 4
  %mul649 = mul nsw i32 %376, %380
  %381 = load i32, i32* %dq_round, align 4
  %add650 = add nsw i32 %mul649, %381
  %382 = load i32, i32* %dq_rshift, align 4
  %shr651 = ashr i32 %add650, %382
  store i32 %shr651, i32* %ilev, align 4
  br label %if.end.652

if.end.652:                                       ; preds = %if.else.642, %if.then.633
  br label %if.end.653

if.end.653:                                       ; preds = %if.end.652, %if.end.629
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.then.603
  br label %if.end.655

if.end.655:                                       ; preds = %if.end.654, %if.end.506
  %383 = load i32, i32* %lossless_qpprime, align 4
  %tobool656 = icmp ne i32 %383, 0
  br i1 %tobool656, label %if.end.663, label %if.then.657

if.then.657:                                      ; preds = %if.end.655
  %384 = load i32, i32* %ilev, align 4
  %385 = load i32, i32* %j, align 4
  %idxprom658 = sext i32 %385 to i64
  %386 = load i32, i32* %i, align 4
  %idxprom659 = sext i32 %386 to i64
  %387 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7660 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %387, i32 0, i32 46
  %arrayidx661 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7660, i32 0, i64 %idxprom659
  %arrayidx662 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx661, i32 0, i64 %idxprom658
  store i32 %384, i32* %arrayidx662, align 4
  br label %if.end.663

if.end.663:                                       ; preds = %if.then.657, %if.end.655
  br label %for.inc.664

for.inc.664:                                      ; preds = %if.end.663
  %388 = load i32, i32* %coeff_ctr, align 4
  %inc665 = add nsw i32 %388, 1
  store i32 %inc665, i32* %coeff_ctr, align 4
  br label %for.cond.423

for.end.666:                                      ; preds = %for.cond.423
  %389 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag667 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %389, i32 0, i32 32
  %390 = load i32, i32* %luma_transform_size_8x8_flag667, align 4
  %tobool668 = icmp ne i32 %390, 0
  br i1 %tobool668, label %lor.lhs.false.669, label %if.then.673

lor.lhs.false.669:                                ; preds = %for.end.666
  %391 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode670 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %391, i32 0, i32 59
  %392 = load i32, i32* %symbol_mode670, align 4
  %cmp671 = icmp ne i32 %392, 0
  br i1 %cmp671, label %if.then.673, label %if.else.676

if.then.673:                                      ; preds = %lor.lhs.false.669, %for.end.666
  %393 = load i32, i32* %scan_pos, align 4
  %idxprom674 = sext i32 %393 to i64
  %394 = load i32*, i32** %ACLevel, align 8
  %arrayidx675 = getelementptr inbounds i32, i32* %394, i64 %idxprom674
  store i32 0, i32* %arrayidx675, align 4
  br label %if.end.694

if.else.676:                                      ; preds = %lor.lhs.false.669
  store i32 0, i32* %i, align 4
  br label %for.cond.677

for.cond.677:                                     ; preds = %for.inc.691, %if.else.676
  %395 = load i32, i32* %i, align 4
  %cmp678 = icmp slt i32 %395, 4
  br i1 %cmp678, label %for.body.680, label %for.end.693

for.body.680:                                     ; preds = %for.cond.677
  %396 = load i32, i32* %i, align 4
  %idxprom681 = sext i32 %396 to i64
  %arrayidx682 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom681
  %397 = load i32, i32* %arrayidx682, align 4
  %idxprom683 = sext i32 %397 to i64
  %398 = load i32, i32* %i, align 4
  %idxprom684 = sext i32 %398 to i64
  %399 = load i32, i32* %b8.addr, align 4
  %idxprom685 = sext i32 %399 to i64
  %400 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC686 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %400, i32 0, i32 47
  %401 = load i32****, i32***** %cofAC686, align 8
  %arrayidx687 = getelementptr inbounds i32***, i32**** %401, i64 %idxprom685
  %402 = load i32***, i32**** %arrayidx687, align 8
  %arrayidx688 = getelementptr inbounds i32**, i32*** %402, i64 %idxprom684
  %403 = load i32**, i32*** %arrayidx688, align 8
  %arrayidx689 = getelementptr inbounds i32*, i32** %403, i64 0
  %404 = load i32*, i32** %arrayidx689, align 8
  %arrayidx690 = getelementptr inbounds i32, i32* %404, i64 %idxprom683
  store i32 0, i32* %arrayidx690, align 4
  br label %for.inc.691

for.inc.691:                                      ; preds = %for.body.680
  %405 = load i32, i32* %i, align 4
  %inc692 = add nsw i32 %405, 1
  store i32 %inc692, i32* %i, align 4
  br label %for.cond.677

for.end.693:                                      ; preds = %for.cond.677
  br label %if.end.694

if.end.694:                                       ; preds = %for.end.693, %if.then.673
  store i32 0, i32* %i, align 4
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.919, %if.end.694
  %406 = load i32, i32* %i, align 4
  %cmp696 = icmp slt i32 %406, 8
  br i1 %cmp696, label %land.rhs.698, label %land.end.701

land.rhs.698:                                     ; preds = %for.cond.695
  %407 = load i32, i32* %lossless_qpprime, align 4
  %tobool699 = icmp ne i32 %407, 0
  %lnot700 = xor i1 %tobool699, true
  br label %land.end.701

land.end.701:                                     ; preds = %land.rhs.698, %for.cond.695
  %408 = phi i1 [ false, %for.cond.695 ], [ %lnot700, %land.rhs.698 ]
  br i1 %408, label %for.body.703, label %for.end.921

for.body.703:                                     ; preds = %land.end.701
  %409 = load i32, i32* %i, align 4
  %idxprom706 = sext i32 %409 to i64
  %410 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7707 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %410, i32 0, i32 46
  %arrayidx708 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7707, i32 0, i64 0
  %arrayidx709 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx708, i32 0, i64 %idxprom706
  %411 = load i32, i32* %arrayidx709, align 4
  %412 = load i32, i32* %i, align 4
  %idxprom710 = sext i32 %412 to i64
  %413 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7711 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %413, i32 0, i32 46
  %arrayidx712 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7711, i32 0, i64 4
  %arrayidx713 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx712, i32 0, i64 %idxprom710
  %414 = load i32, i32* %arrayidx713, align 4
  %add714 = add nsw i32 %411, %414
  %arrayidx715 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 0
  store i32 %add714, i32* %arrayidx715, align 4
  %415 = load i32, i32* %i, align 4
  %idxprom716 = sext i32 %415 to i64
  %416 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7717 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %416, i32 0, i32 46
  %arrayidx718 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7717, i32 0, i64 0
  %arrayidx719 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx718, i32 0, i64 %idxprom716
  %417 = load i32, i32* %arrayidx719, align 4
  %418 = load i32, i32* %i, align 4
  %idxprom720 = sext i32 %418 to i64
  %419 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7721 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %419, i32 0, i32 46
  %arrayidx722 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7721, i32 0, i64 4
  %arrayidx723 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx722, i32 0, i64 %idxprom720
  %420 = load i32, i32* %arrayidx723, align 4
  %sub724 = sub nsw i32 %417, %420
  %arrayidx725 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 4
  store i32 %sub724, i32* %arrayidx725, align 4
  %421 = load i32, i32* %i, align 4
  %idxprom726 = sext i32 %421 to i64
  %422 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7727 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %422, i32 0, i32 46
  %arrayidx728 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7727, i32 0, i64 2
  %arrayidx729 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx728, i32 0, i64 %idxprom726
  %423 = load i32, i32* %arrayidx729, align 4
  %shr730 = ashr i32 %423, 1
  %424 = load i32, i32* %i, align 4
  %idxprom731 = sext i32 %424 to i64
  %425 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7732 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %425, i32 0, i32 46
  %arrayidx733 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7732, i32 0, i64 6
  %arrayidx734 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx733, i32 0, i64 %idxprom731
  %426 = load i32, i32* %arrayidx734, align 4
  %sub735 = sub nsw i32 %shr730, %426
  %arrayidx736 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 2
  store i32 %sub735, i32* %arrayidx736, align 4
  %427 = load i32, i32* %i, align 4
  %idxprom737 = sext i32 %427 to i64
  %428 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7738 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %428, i32 0, i32 46
  %arrayidx739 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7738, i32 0, i64 2
  %arrayidx740 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx739, i32 0, i64 %idxprom737
  %429 = load i32, i32* %arrayidx740, align 4
  %430 = load i32, i32* %i, align 4
  %idxprom741 = sext i32 %430 to i64
  %431 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7742 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %431, i32 0, i32 46
  %arrayidx743 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7742, i32 0, i64 6
  %arrayidx744 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx743, i32 0, i64 %idxprom741
  %432 = load i32, i32* %arrayidx744, align 4
  %shr745 = ashr i32 %432, 1
  %add746 = add nsw i32 %429, %shr745
  %arrayidx747 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 6
  store i32 %add746, i32* %arrayidx747, align 4
  %arrayidx748 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 0
  %433 = load i32, i32* %arrayidx748, align 4
  %arrayidx749 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 6
  %434 = load i32, i32* %arrayidx749, align 4
  %add750 = add nsw i32 %433, %434
  %arrayidx751 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 0
  store i32 %add750, i32* %arrayidx751, align 4
  %arrayidx752 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 4
  %435 = load i32, i32* %arrayidx752, align 4
  %arrayidx753 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 2
  %436 = load i32, i32* %arrayidx753, align 4
  %add754 = add nsw i32 %435, %436
  %arrayidx755 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 2
  store i32 %add754, i32* %arrayidx755, align 4
  %arrayidx756 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 4
  %437 = load i32, i32* %arrayidx756, align 4
  %arrayidx757 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 2
  %438 = load i32, i32* %arrayidx757, align 4
  %sub758 = sub nsw i32 %437, %438
  %arrayidx759 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 4
  store i32 %sub758, i32* %arrayidx759, align 4
  %arrayidx760 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 0
  %439 = load i32, i32* %arrayidx760, align 4
  %arrayidx761 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 6
  %440 = load i32, i32* %arrayidx761, align 4
  %sub762 = sub nsw i32 %439, %440
  %arrayidx763 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 6
  store i32 %sub762, i32* %arrayidx763, align 4
  %441 = load i32, i32* %i, align 4
  %idxprom764 = sext i32 %441 to i64
  %442 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7765 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %442, i32 0, i32 46
  %arrayidx766 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7765, i32 0, i64 3
  %arrayidx767 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx766, i32 0, i64 %idxprom764
  %443 = load i32, i32* %arrayidx767, align 4
  %sub768 = sub nsw i32 0, %443
  %444 = load i32, i32* %i, align 4
  %idxprom769 = sext i32 %444 to i64
  %445 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7770 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %445, i32 0, i32 46
  %arrayidx771 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7770, i32 0, i64 5
  %arrayidx772 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx771, i32 0, i64 %idxprom769
  %446 = load i32, i32* %arrayidx772, align 4
  %add773 = add nsw i32 %sub768, %446
  %447 = load i32, i32* %i, align 4
  %idxprom774 = sext i32 %447 to i64
  %448 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7775 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %448, i32 0, i32 46
  %arrayidx776 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7775, i32 0, i64 7
  %arrayidx777 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx776, i32 0, i64 %idxprom774
  %449 = load i32, i32* %arrayidx777, align 4
  %sub778 = sub nsw i32 %add773, %449
  %450 = load i32, i32* %i, align 4
  %idxprom779 = sext i32 %450 to i64
  %451 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7780 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %451, i32 0, i32 46
  %arrayidx781 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7780, i32 0, i64 7
  %arrayidx782 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx781, i32 0, i64 %idxprom779
  %452 = load i32, i32* %arrayidx782, align 4
  %shr783 = ashr i32 %452, 1
  %sub784 = sub nsw i32 %sub778, %shr783
  %arrayidx785 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 1
  store i32 %sub784, i32* %arrayidx785, align 4
  %453 = load i32, i32* %i, align 4
  %idxprom786 = sext i32 %453 to i64
  %454 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7787 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %454, i32 0, i32 46
  %arrayidx788 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7787, i32 0, i64 1
  %arrayidx789 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx788, i32 0, i64 %idxprom786
  %455 = load i32, i32* %arrayidx789, align 4
  %456 = load i32, i32* %i, align 4
  %idxprom790 = sext i32 %456 to i64
  %457 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7791 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %457, i32 0, i32 46
  %arrayidx792 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7791, i32 0, i64 7
  %arrayidx793 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx792, i32 0, i64 %idxprom790
  %458 = load i32, i32* %arrayidx793, align 4
  %add794 = add nsw i32 %455, %458
  %459 = load i32, i32* %i, align 4
  %idxprom795 = sext i32 %459 to i64
  %460 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7796 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %460, i32 0, i32 46
  %arrayidx797 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7796, i32 0, i64 3
  %arrayidx798 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx797, i32 0, i64 %idxprom795
  %461 = load i32, i32* %arrayidx798, align 4
  %sub799 = sub nsw i32 %add794, %461
  %462 = load i32, i32* %i, align 4
  %idxprom800 = sext i32 %462 to i64
  %463 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7801 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %463, i32 0, i32 46
  %arrayidx802 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7801, i32 0, i64 3
  %arrayidx803 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx802, i32 0, i64 %idxprom800
  %464 = load i32, i32* %arrayidx803, align 4
  %shr804 = ashr i32 %464, 1
  %sub805 = sub nsw i32 %sub799, %shr804
  %arrayidx806 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 3
  store i32 %sub805, i32* %arrayidx806, align 4
  %465 = load i32, i32* %i, align 4
  %idxprom807 = sext i32 %465 to i64
  %466 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7808 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %466, i32 0, i32 46
  %arrayidx809 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7808, i32 0, i64 1
  %arrayidx810 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx809, i32 0, i64 %idxprom807
  %467 = load i32, i32* %arrayidx810, align 4
  %sub811 = sub nsw i32 0, %467
  %468 = load i32, i32* %i, align 4
  %idxprom812 = sext i32 %468 to i64
  %469 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7813 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %469, i32 0, i32 46
  %arrayidx814 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7813, i32 0, i64 7
  %arrayidx815 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx814, i32 0, i64 %idxprom812
  %470 = load i32, i32* %arrayidx815, align 4
  %add816 = add nsw i32 %sub811, %470
  %471 = load i32, i32* %i, align 4
  %idxprom817 = sext i32 %471 to i64
  %472 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7818 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %472, i32 0, i32 46
  %arrayidx819 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7818, i32 0, i64 5
  %arrayidx820 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx819, i32 0, i64 %idxprom817
  %473 = load i32, i32* %arrayidx820, align 4
  %add821 = add nsw i32 %add816, %473
  %474 = load i32, i32* %i, align 4
  %idxprom822 = sext i32 %474 to i64
  %475 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7823 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %475, i32 0, i32 46
  %arrayidx824 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7823, i32 0, i64 5
  %arrayidx825 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx824, i32 0, i64 %idxprom822
  %476 = load i32, i32* %arrayidx825, align 4
  %shr826 = ashr i32 %476, 1
  %add827 = add nsw i32 %add821, %shr826
  %arrayidx828 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 5
  store i32 %add827, i32* %arrayidx828, align 4
  %477 = load i32, i32* %i, align 4
  %idxprom829 = sext i32 %477 to i64
  %478 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7830 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %478, i32 0, i32 46
  %arrayidx831 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7830, i32 0, i64 3
  %arrayidx832 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx831, i32 0, i64 %idxprom829
  %479 = load i32, i32* %arrayidx832, align 4
  %480 = load i32, i32* %i, align 4
  %idxprom833 = sext i32 %480 to i64
  %481 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7834 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %481, i32 0, i32 46
  %arrayidx835 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7834, i32 0, i64 5
  %arrayidx836 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx835, i32 0, i64 %idxprom833
  %482 = load i32, i32* %arrayidx836, align 4
  %add837 = add nsw i32 %479, %482
  %483 = load i32, i32* %i, align 4
  %idxprom838 = sext i32 %483 to i64
  %484 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7839 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %484, i32 0, i32 46
  %arrayidx840 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7839, i32 0, i64 1
  %arrayidx841 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx840, i32 0, i64 %idxprom838
  %485 = load i32, i32* %arrayidx841, align 4
  %add842 = add nsw i32 %add837, %485
  %486 = load i32, i32* %i, align 4
  %idxprom843 = sext i32 %486 to i64
  %487 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7844 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %487, i32 0, i32 46
  %arrayidx845 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7844, i32 0, i64 1
  %arrayidx846 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx845, i32 0, i64 %idxprom843
  %488 = load i32, i32* %arrayidx846, align 4
  %shr847 = ashr i32 %488, 1
  %add848 = add nsw i32 %add842, %shr847
  %arrayidx849 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 7
  store i32 %add848, i32* %arrayidx849, align 4
  %arrayidx850 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 1
  %489 = load i32, i32* %arrayidx850, align 4
  %arrayidx851 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 7
  %490 = load i32, i32* %arrayidx851, align 4
  %shr852 = ashr i32 %490, 2
  %add853 = add nsw i32 %489, %shr852
  %arrayidx854 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 1
  store i32 %add853, i32* %arrayidx854, align 4
  %arrayidx855 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 1
  %491 = load i32, i32* %arrayidx855, align 4
  %shr856 = ashr i32 %491, 2
  %sub857 = sub nsw i32 0, %shr856
  %arrayidx858 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 7
  %492 = load i32, i32* %arrayidx858, align 4
  %add859 = add nsw i32 %sub857, %492
  %arrayidx860 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 7
  store i32 %add859, i32* %arrayidx860, align 4
  %arrayidx861 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 3
  %493 = load i32, i32* %arrayidx861, align 4
  %arrayidx862 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 5
  %494 = load i32, i32* %arrayidx862, align 4
  %shr863 = ashr i32 %494, 2
  %add864 = add nsw i32 %493, %shr863
  %arrayidx865 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 3
  store i32 %add864, i32* %arrayidx865, align 4
  %arrayidx866 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 3
  %495 = load i32, i32* %arrayidx866, align 4
  %shr867 = ashr i32 %495, 2
  %arrayidx868 = getelementptr inbounds [8 x i32], [8 x i32]* %a704, i32 0, i64 5
  %496 = load i32, i32* %arrayidx868, align 4
  %sub869 = sub nsw i32 %shr867, %496
  %arrayidx870 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 5
  store i32 %sub869, i32* %arrayidx870, align 4
  %arrayidx871 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 0
  %497 = load i32, i32* %arrayidx871, align 4
  %arrayidx872 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 7
  %498 = load i32, i32* %arrayidx872, align 4
  %add873 = add nsw i32 %497, %498
  %499 = load i32, i32* %i, align 4
  %idxprom874 = sext i32 %499 to i64
  %arrayidx875 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 0
  %arrayidx876 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx875, i32 0, i64 %idxprom874
  store i32 %add873, i32* %arrayidx876, align 4
  %arrayidx877 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 2
  %500 = load i32, i32* %arrayidx877, align 4
  %arrayidx878 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 5
  %501 = load i32, i32* %arrayidx878, align 4
  %add879 = add nsw i32 %500, %501
  %502 = load i32, i32* %i, align 4
  %idxprom880 = sext i32 %502 to i64
  %arrayidx881 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 1
  %arrayidx882 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx881, i32 0, i64 %idxprom880
  store i32 %add879, i32* %arrayidx882, align 4
  %arrayidx883 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 4
  %503 = load i32, i32* %arrayidx883, align 4
  %arrayidx884 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 3
  %504 = load i32, i32* %arrayidx884, align 4
  %add885 = add nsw i32 %503, %504
  %505 = load i32, i32* %i, align 4
  %idxprom886 = sext i32 %505 to i64
  %arrayidx887 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 2
  %arrayidx888 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx887, i32 0, i64 %idxprom886
  store i32 %add885, i32* %arrayidx888, align 4
  %arrayidx889 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 6
  %506 = load i32, i32* %arrayidx889, align 4
  %arrayidx890 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 1
  %507 = load i32, i32* %arrayidx890, align 4
  %add891 = add nsw i32 %506, %507
  %508 = load i32, i32* %i, align 4
  %idxprom892 = sext i32 %508 to i64
  %arrayidx893 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 3
  %arrayidx894 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx893, i32 0, i64 %idxprom892
  store i32 %add891, i32* %arrayidx894, align 4
  %arrayidx895 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 6
  %509 = load i32, i32* %arrayidx895, align 4
  %arrayidx896 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 1
  %510 = load i32, i32* %arrayidx896, align 4
  %sub897 = sub nsw i32 %509, %510
  %511 = load i32, i32* %i, align 4
  %idxprom898 = sext i32 %511 to i64
  %arrayidx899 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 4
  %arrayidx900 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx899, i32 0, i64 %idxprom898
  store i32 %sub897, i32* %arrayidx900, align 4
  %arrayidx901 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 4
  %512 = load i32, i32* %arrayidx901, align 4
  %arrayidx902 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 3
  %513 = load i32, i32* %arrayidx902, align 4
  %sub903 = sub nsw i32 %512, %513
  %514 = load i32, i32* %i, align 4
  %idxprom904 = sext i32 %514 to i64
  %arrayidx905 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 5
  %arrayidx906 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx905, i32 0, i64 %idxprom904
  store i32 %sub903, i32* %arrayidx906, align 4
  %arrayidx907 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 2
  %515 = load i32, i32* %arrayidx907, align 4
  %arrayidx908 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 5
  %516 = load i32, i32* %arrayidx908, align 4
  %sub909 = sub nsw i32 %515, %516
  %517 = load i32, i32* %i, align 4
  %idxprom910 = sext i32 %517 to i64
  %arrayidx911 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 6
  %arrayidx912 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx911, i32 0, i64 %idxprom910
  store i32 %sub909, i32* %arrayidx912, align 4
  %arrayidx913 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 0
  %518 = load i32, i32* %arrayidx913, align 4
  %arrayidx914 = getelementptr inbounds [8 x i32], [8 x i32]* %b705, i32 0, i64 7
  %519 = load i32, i32* %arrayidx914, align 4
  %sub915 = sub nsw i32 %518, %519
  %520 = load i32, i32* %i, align 4
  %idxprom916 = sext i32 %520 to i64
  %arrayidx917 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 7
  %arrayidx918 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx917, i32 0, i64 %idxprom916
  store i32 %sub915, i32* %arrayidx918, align 4
  br label %for.inc.919

for.inc.919:                                      ; preds = %for.body.703
  %521 = load i32, i32* %i, align 4
  %inc920 = add nsw i32 %521, 1
  store i32 %inc920, i32* %i, align 4
  br label %for.cond.695

for.end.921:                                      ; preds = %land.end.701
  store i32 0, i32* %i, align 4
  br label %for.cond.922

for.cond.922:                                     ; preds = %for.inc.1130, %for.end.921
  %522 = load i32, i32* %i, align 4
  %cmp923 = icmp slt i32 %522, 8
  br i1 %cmp923, label %land.rhs.925, label %land.end.928

land.rhs.925:                                     ; preds = %for.cond.922
  %523 = load i32, i32* %lossless_qpprime, align 4
  %tobool926 = icmp ne i32 %523, 0
  %lnot927 = xor i1 %tobool926, true
  br label %land.end.928

land.end.928:                                     ; preds = %land.rhs.925, %for.cond.922
  %524 = phi i1 [ false, %for.cond.922 ], [ %lnot927, %land.rhs.925 ]
  br i1 %524, label %for.body.930, label %for.end.1132

for.body.930:                                     ; preds = %land.end.928
  %525 = load i32, i32* %i, align 4
  %idxprom933 = sext i32 %525 to i64
  %arrayidx934 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom933
  %arrayidx935 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx934, i32 0, i64 0
  %526 = load i32, i32* %arrayidx935, align 4
  %527 = load i32, i32* %i, align 4
  %idxprom936 = sext i32 %527 to i64
  %arrayidx937 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom936
  %arrayidx938 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx937, i32 0, i64 4
  %528 = load i32, i32* %arrayidx938, align 4
  %add939 = add nsw i32 %526, %528
  %arrayidx940 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 0
  store i32 %add939, i32* %arrayidx940, align 4
  %529 = load i32, i32* %i, align 4
  %idxprom941 = sext i32 %529 to i64
  %arrayidx942 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom941
  %arrayidx943 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx942, i32 0, i64 0
  %530 = load i32, i32* %arrayidx943, align 4
  %531 = load i32, i32* %i, align 4
  %idxprom944 = sext i32 %531 to i64
  %arrayidx945 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom944
  %arrayidx946 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx945, i32 0, i64 4
  %532 = load i32, i32* %arrayidx946, align 4
  %sub947 = sub nsw i32 %530, %532
  %arrayidx948 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 4
  store i32 %sub947, i32* %arrayidx948, align 4
  %533 = load i32, i32* %i, align 4
  %idxprom949 = sext i32 %533 to i64
  %arrayidx950 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom949
  %arrayidx951 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx950, i32 0, i64 2
  %534 = load i32, i32* %arrayidx951, align 4
  %shr952 = ashr i32 %534, 1
  %535 = load i32, i32* %i, align 4
  %idxprom953 = sext i32 %535 to i64
  %arrayidx954 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom953
  %arrayidx955 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx954, i32 0, i64 6
  %536 = load i32, i32* %arrayidx955, align 4
  %sub956 = sub nsw i32 %shr952, %536
  %arrayidx957 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 2
  store i32 %sub956, i32* %arrayidx957, align 4
  %537 = load i32, i32* %i, align 4
  %idxprom958 = sext i32 %537 to i64
  %arrayidx959 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom958
  %arrayidx960 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx959, i32 0, i64 2
  %538 = load i32, i32* %arrayidx960, align 4
  %539 = load i32, i32* %i, align 4
  %idxprom961 = sext i32 %539 to i64
  %arrayidx962 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom961
  %arrayidx963 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx962, i32 0, i64 6
  %540 = load i32, i32* %arrayidx963, align 4
  %shr964 = ashr i32 %540, 1
  %add965 = add nsw i32 %538, %shr964
  %arrayidx966 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 6
  store i32 %add965, i32* %arrayidx966, align 4
  %arrayidx967 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 0
  %541 = load i32, i32* %arrayidx967, align 4
  %arrayidx968 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 6
  %542 = load i32, i32* %arrayidx968, align 4
  %add969 = add nsw i32 %541, %542
  %arrayidx970 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 0
  store i32 %add969, i32* %arrayidx970, align 4
  %arrayidx971 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 4
  %543 = load i32, i32* %arrayidx971, align 4
  %arrayidx972 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 2
  %544 = load i32, i32* %arrayidx972, align 4
  %add973 = add nsw i32 %543, %544
  %arrayidx974 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 2
  store i32 %add973, i32* %arrayidx974, align 4
  %arrayidx975 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 4
  %545 = load i32, i32* %arrayidx975, align 4
  %arrayidx976 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 2
  %546 = load i32, i32* %arrayidx976, align 4
  %sub977 = sub nsw i32 %545, %546
  %arrayidx978 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 4
  store i32 %sub977, i32* %arrayidx978, align 4
  %arrayidx979 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 0
  %547 = load i32, i32* %arrayidx979, align 4
  %arrayidx980 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 6
  %548 = load i32, i32* %arrayidx980, align 4
  %sub981 = sub nsw i32 %547, %548
  %arrayidx982 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 6
  store i32 %sub981, i32* %arrayidx982, align 4
  %549 = load i32, i32* %i, align 4
  %idxprom983 = sext i32 %549 to i64
  %arrayidx984 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom983
  %arrayidx985 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx984, i32 0, i64 3
  %550 = load i32, i32* %arrayidx985, align 4
  %sub986 = sub nsw i32 0, %550
  %551 = load i32, i32* %i, align 4
  %idxprom987 = sext i32 %551 to i64
  %arrayidx988 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom987
  %arrayidx989 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx988, i32 0, i64 5
  %552 = load i32, i32* %arrayidx989, align 4
  %add990 = add nsw i32 %sub986, %552
  %553 = load i32, i32* %i, align 4
  %idxprom991 = sext i32 %553 to i64
  %arrayidx992 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom991
  %arrayidx993 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx992, i32 0, i64 7
  %554 = load i32, i32* %arrayidx993, align 4
  %sub994 = sub nsw i32 %add990, %554
  %555 = load i32, i32* %i, align 4
  %idxprom995 = sext i32 %555 to i64
  %arrayidx996 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom995
  %arrayidx997 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx996, i32 0, i64 7
  %556 = load i32, i32* %arrayidx997, align 4
  %shr998 = ashr i32 %556, 1
  %sub999 = sub nsw i32 %sub994, %shr998
  %arrayidx1000 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 1
  store i32 %sub999, i32* %arrayidx1000, align 4
  %557 = load i32, i32* %i, align 4
  %idxprom1001 = sext i32 %557 to i64
  %arrayidx1002 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1001
  %arrayidx1003 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1002, i32 0, i64 1
  %558 = load i32, i32* %arrayidx1003, align 4
  %559 = load i32, i32* %i, align 4
  %idxprom1004 = sext i32 %559 to i64
  %arrayidx1005 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1004
  %arrayidx1006 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1005, i32 0, i64 7
  %560 = load i32, i32* %arrayidx1006, align 4
  %add1007 = add nsw i32 %558, %560
  %561 = load i32, i32* %i, align 4
  %idxprom1008 = sext i32 %561 to i64
  %arrayidx1009 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1008
  %arrayidx1010 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1009, i32 0, i64 3
  %562 = load i32, i32* %arrayidx1010, align 4
  %sub1011 = sub nsw i32 %add1007, %562
  %563 = load i32, i32* %i, align 4
  %idxprom1012 = sext i32 %563 to i64
  %arrayidx1013 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1012
  %arrayidx1014 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1013, i32 0, i64 3
  %564 = load i32, i32* %arrayidx1014, align 4
  %shr1015 = ashr i32 %564, 1
  %sub1016 = sub nsw i32 %sub1011, %shr1015
  %arrayidx1017 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 3
  store i32 %sub1016, i32* %arrayidx1017, align 4
  %565 = load i32, i32* %i, align 4
  %idxprom1018 = sext i32 %565 to i64
  %arrayidx1019 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1018
  %arrayidx1020 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1019, i32 0, i64 1
  %566 = load i32, i32* %arrayidx1020, align 4
  %sub1021 = sub nsw i32 0, %566
  %567 = load i32, i32* %i, align 4
  %idxprom1022 = sext i32 %567 to i64
  %arrayidx1023 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1022
  %arrayidx1024 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1023, i32 0, i64 7
  %568 = load i32, i32* %arrayidx1024, align 4
  %add1025 = add nsw i32 %sub1021, %568
  %569 = load i32, i32* %i, align 4
  %idxprom1026 = sext i32 %569 to i64
  %arrayidx1027 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1026
  %arrayidx1028 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1027, i32 0, i64 5
  %570 = load i32, i32* %arrayidx1028, align 4
  %add1029 = add nsw i32 %add1025, %570
  %571 = load i32, i32* %i, align 4
  %idxprom1030 = sext i32 %571 to i64
  %arrayidx1031 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1030
  %arrayidx1032 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1031, i32 0, i64 5
  %572 = load i32, i32* %arrayidx1032, align 4
  %shr1033 = ashr i32 %572, 1
  %add1034 = add nsw i32 %add1029, %shr1033
  %arrayidx1035 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 5
  store i32 %add1034, i32* %arrayidx1035, align 4
  %573 = load i32, i32* %i, align 4
  %idxprom1036 = sext i32 %573 to i64
  %arrayidx1037 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1036
  %arrayidx1038 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1037, i32 0, i64 3
  %574 = load i32, i32* %arrayidx1038, align 4
  %575 = load i32, i32* %i, align 4
  %idxprom1039 = sext i32 %575 to i64
  %arrayidx1040 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1039
  %arrayidx1041 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1040, i32 0, i64 5
  %576 = load i32, i32* %arrayidx1041, align 4
  %add1042 = add nsw i32 %574, %576
  %577 = load i32, i32* %i, align 4
  %idxprom1043 = sext i32 %577 to i64
  %arrayidx1044 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1043
  %arrayidx1045 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1044, i32 0, i64 1
  %578 = load i32, i32* %arrayidx1045, align 4
  %add1046 = add nsw i32 %add1042, %578
  %579 = load i32, i32* %i, align 4
  %idxprom1047 = sext i32 %579 to i64
  %arrayidx1048 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1047
  %arrayidx1049 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1048, i32 0, i64 1
  %580 = load i32, i32* %arrayidx1049, align 4
  %shr1050 = ashr i32 %580, 1
  %add1051 = add nsw i32 %add1046, %shr1050
  %arrayidx1052 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 7
  store i32 %add1051, i32* %arrayidx1052, align 4
  %arrayidx1053 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 1
  %581 = load i32, i32* %arrayidx1053, align 4
  %arrayidx1054 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 7
  %582 = load i32, i32* %arrayidx1054, align 4
  %shr1055 = ashr i32 %582, 2
  %add1056 = add nsw i32 %581, %shr1055
  %arrayidx1057 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 1
  store i32 %add1056, i32* %arrayidx1057, align 4
  %arrayidx1058 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 1
  %583 = load i32, i32* %arrayidx1058, align 4
  %shr1059 = ashr i32 %583, 2
  %sub1060 = sub nsw i32 0, %shr1059
  %arrayidx1061 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 7
  %584 = load i32, i32* %arrayidx1061, align 4
  %add1062 = add nsw i32 %sub1060, %584
  %arrayidx1063 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 7
  store i32 %add1062, i32* %arrayidx1063, align 4
  %arrayidx1064 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 3
  %585 = load i32, i32* %arrayidx1064, align 4
  %arrayidx1065 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 5
  %586 = load i32, i32* %arrayidx1065, align 4
  %shr1066 = ashr i32 %586, 2
  %add1067 = add nsw i32 %585, %shr1066
  %arrayidx1068 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 3
  store i32 %add1067, i32* %arrayidx1068, align 4
  %arrayidx1069 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 3
  %587 = load i32, i32* %arrayidx1069, align 4
  %shr1070 = ashr i32 %587, 2
  %arrayidx1071 = getelementptr inbounds [8 x i32], [8 x i32]* %a931, i32 0, i64 5
  %588 = load i32, i32* %arrayidx1071, align 4
  %sub1072 = sub nsw i32 %shr1070, %588
  %arrayidx1073 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 5
  store i32 %sub1072, i32* %arrayidx1073, align 4
  %arrayidx1074 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 0
  %589 = load i32, i32* %arrayidx1074, align 4
  %arrayidx1075 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 7
  %590 = load i32, i32* %arrayidx1075, align 4
  %add1076 = add nsw i32 %589, %590
  %591 = load i32, i32* %i, align 4
  %idxprom1077 = sext i32 %591 to i64
  %592 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71078 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %592, i32 0, i32 46
  %arrayidx1079 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71078, i32 0, i64 %idxprom1077
  %arrayidx1080 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1079, i32 0, i64 0
  store i32 %add1076, i32* %arrayidx1080, align 4
  %arrayidx1081 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 2
  %593 = load i32, i32* %arrayidx1081, align 4
  %arrayidx1082 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 5
  %594 = load i32, i32* %arrayidx1082, align 4
  %add1083 = add nsw i32 %593, %594
  %595 = load i32, i32* %i, align 4
  %idxprom1084 = sext i32 %595 to i64
  %596 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71085 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %596, i32 0, i32 46
  %arrayidx1086 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71085, i32 0, i64 %idxprom1084
  %arrayidx1087 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1086, i32 0, i64 1
  store i32 %add1083, i32* %arrayidx1087, align 4
  %arrayidx1088 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 4
  %597 = load i32, i32* %arrayidx1088, align 4
  %arrayidx1089 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 3
  %598 = load i32, i32* %arrayidx1089, align 4
  %add1090 = add nsw i32 %597, %598
  %599 = load i32, i32* %i, align 4
  %idxprom1091 = sext i32 %599 to i64
  %600 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71092 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %600, i32 0, i32 46
  %arrayidx1093 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71092, i32 0, i64 %idxprom1091
  %arrayidx1094 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1093, i32 0, i64 2
  store i32 %add1090, i32* %arrayidx1094, align 4
  %arrayidx1095 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 6
  %601 = load i32, i32* %arrayidx1095, align 4
  %arrayidx1096 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 1
  %602 = load i32, i32* %arrayidx1096, align 4
  %add1097 = add nsw i32 %601, %602
  %603 = load i32, i32* %i, align 4
  %idxprom1098 = sext i32 %603 to i64
  %604 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71099 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %604, i32 0, i32 46
  %arrayidx1100 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71099, i32 0, i64 %idxprom1098
  %arrayidx1101 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1100, i32 0, i64 3
  store i32 %add1097, i32* %arrayidx1101, align 4
  %arrayidx1102 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 6
  %605 = load i32, i32* %arrayidx1102, align 4
  %arrayidx1103 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 1
  %606 = load i32, i32* %arrayidx1103, align 4
  %sub1104 = sub nsw i32 %605, %606
  %607 = load i32, i32* %i, align 4
  %idxprom1105 = sext i32 %607 to i64
  %608 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71106 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %608, i32 0, i32 46
  %arrayidx1107 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71106, i32 0, i64 %idxprom1105
  %arrayidx1108 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1107, i32 0, i64 4
  store i32 %sub1104, i32* %arrayidx1108, align 4
  %arrayidx1109 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 4
  %609 = load i32, i32* %arrayidx1109, align 4
  %arrayidx1110 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 3
  %610 = load i32, i32* %arrayidx1110, align 4
  %sub1111 = sub nsw i32 %609, %610
  %611 = load i32, i32* %i, align 4
  %idxprom1112 = sext i32 %611 to i64
  %612 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %612, i32 0, i32 46
  %arrayidx1114 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71113, i32 0, i64 %idxprom1112
  %arrayidx1115 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1114, i32 0, i64 5
  store i32 %sub1111, i32* %arrayidx1115, align 4
  %arrayidx1116 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 2
  %613 = load i32, i32* %arrayidx1116, align 4
  %arrayidx1117 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 5
  %614 = load i32, i32* %arrayidx1117, align 4
  %sub1118 = sub nsw i32 %613, %614
  %615 = load i32, i32* %i, align 4
  %idxprom1119 = sext i32 %615 to i64
  %616 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71120 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %616, i32 0, i32 46
  %arrayidx1121 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71120, i32 0, i64 %idxprom1119
  %arrayidx1122 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1121, i32 0, i64 6
  store i32 %sub1118, i32* %arrayidx1122, align 4
  %arrayidx1123 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 0
  %617 = load i32, i32* %arrayidx1123, align 4
  %arrayidx1124 = getelementptr inbounds [8 x i32], [8 x i32]* %b932, i32 0, i64 7
  %618 = load i32, i32* %arrayidx1124, align 4
  %sub1125 = sub nsw i32 %617, %618
  %619 = load i32, i32* %i, align 4
  %idxprom1126 = sext i32 %619 to i64
  %620 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71127 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %620, i32 0, i32 46
  %arrayidx1128 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71127, i32 0, i64 %idxprom1126
  %arrayidx1129 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1128, i32 0, i64 7
  store i32 %sub1125, i32* %arrayidx1129, align 4
  br label %for.inc.1130

for.inc.1130:                                     ; preds = %for.body.930
  %621 = load i32, i32* %i, align 4
  %inc1131 = add nsw i32 %621, 1
  store i32 %inc1131, i32* %i, align 4
  br label %for.cond.922

for.end.1132:                                     ; preds = %land.end.928
  store i32 0, i32* %i, align 4
  br label %for.cond.1133

for.cond.1133:                                    ; preds = %for.inc.1277, %for.end.1132
  %622 = load i32, i32* %i, align 4
  %cmp1134 = icmp slt i32 %622, 8
  br i1 %cmp1134, label %for.body.1136, label %for.end.1279

for.body.1136:                                    ; preds = %for.cond.1133
  store i32 0, i32* %j, align 4
  br label %for.cond.1137

for.cond.1137:                                    ; preds = %for.inc.1274, %for.body.1136
  %623 = load i32, i32* %j, align 4
  %cmp1138 = icmp slt i32 %623, 8
  br i1 %cmp1138, label %for.body.1140, label %for.end.1276

for.body.1140:                                    ; preds = %for.cond.1137
  %624 = load i32, i32* %lossless_qpprime, align 4
  %tobool1141 = icmp ne i32 %624, 0
  br i1 %tobool1141, label %if.then.1142, label %if.else.1161

if.then.1142:                                     ; preds = %for.body.1140
  %625 = load i32, i32* %j, align 4
  %idxprom1143 = sext i32 %625 to i64
  %626 = load i32, i32* %i, align 4
  %idxprom1144 = sext i32 %626 to i64
  %627 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71145 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %627, i32 0, i32 46
  %arrayidx1146 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71145, i32 0, i64 %idxprom1144
  %arrayidx1147 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1146, i32 0, i64 %idxprom1143
  %628 = load i32, i32* %arrayidx1147, align 4
  %629 = load i32, i32* %j, align 4
  %630 = load i32, i32* %block_y, align 4
  %add1148 = add nsw i32 %629, %630
  %idxprom1149 = sext i32 %add1148 to i64
  %631 = load i32, i32* %i, align 4
  %632 = load i32, i32* %block_x, align 4
  %add1150 = add nsw i32 %631, %632
  %idxprom1151 = sext i32 %add1150 to i64
  %633 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %633, i32 0, i32 45
  %arrayidx1152 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom1151
  %arrayidx1153 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1152, i32 0, i64 %idxprom1149
  %634 = load i16, i16* %arrayidx1153, align 2
  %conv1154 = zext i16 %634 to i32
  %add1155 = add nsw i32 %628, %conv1154
  %635 = load i32, i32* %j, align 4
  %idxprom1156 = sext i32 %635 to i64
  %636 = load i32, i32* %i, align 4
  %idxprom1157 = sext i32 %636 to i64
  %637 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71158 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %637, i32 0, i32 46
  %arrayidx1159 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71158, i32 0, i64 %idxprom1157
  %arrayidx1160 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1159, i32 0, i64 %idxprom1156
  store i32 %add1155, i32* %arrayidx1160, align 4
  br label %if.end.1273

if.else.1161:                                     ; preds = %for.body.1140
  %638 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %638, i32 0, i32 164
  %639 = load i32, i32* %residue_transform_flag, align 4
  %tobool1162 = icmp ne i32 %639, 0
  br i1 %tobool1162, label %if.else.1259, label %if.then.1163

if.then.1163:                                     ; preds = %if.else.1161
  %640 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %640, i32 0, i32 155
  %641 = load i32, i32* %max_imgpel_value, align 4
  %conv1164 = sext i32 %641 to i64
  %642 = load i32, i32* %j, align 4
  %idxprom1165 = sext i32 %642 to i64
  %643 = load i32, i32* %i, align 4
  %idxprom1166 = sext i32 %643 to i64
  %644 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71167 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %644, i32 0, i32 46
  %arrayidx1168 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71167, i32 0, i64 %idxprom1166
  %arrayidx1169 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1168, i32 0, i64 %idxprom1165
  %645 = load i32, i32* %arrayidx1169, align 4
  %conv1170 = sext i32 %645 to i64
  %646 = load i32, i32* %j, align 4
  %647 = load i32, i32* %block_y, align 4
  %add1171 = add nsw i32 %646, %647
  %idxprom1172 = sext i32 %add1171 to i64
  %648 = load i32, i32* %i, align 4
  %649 = load i32, i32* %block_x, align 4
  %add1173 = add nsw i32 %648, %649
  %idxprom1174 = sext i32 %add1173 to i64
  %650 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1175 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %650, i32 0, i32 45
  %arrayidx1176 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1175, i32 0, i64 %idxprom1174
  %arrayidx1177 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1176, i32 0, i64 %idxprom1172
  %651 = load i16, i16* %arrayidx1177, align 2
  %conv1178 = zext i16 %651 to i64
  %shl1179 = shl i64 %conv1178, 6
  %add1180 = add nsw i64 %conv1170, %shl1179
  %add1181 = add nsw i64 %add1180, 32
  %shr1182 = ashr i64 %add1181, 6
  %cmp1183 = icmp sgt i64 0, %shr1182
  br i1 %cmp1183, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1163
  br label %cond.end

cond.false:                                       ; preds = %if.then.1163
  %652 = load i32, i32* %j, align 4
  %idxprom1185 = sext i32 %652 to i64
  %653 = load i32, i32* %i, align 4
  %idxprom1186 = sext i32 %653 to i64
  %654 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71187 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %654, i32 0, i32 46
  %arrayidx1188 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71187, i32 0, i64 %idxprom1186
  %arrayidx1189 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1188, i32 0, i64 %idxprom1185
  %655 = load i32, i32* %arrayidx1189, align 4
  %conv1190 = sext i32 %655 to i64
  %656 = load i32, i32* %j, align 4
  %657 = load i32, i32* %block_y, align 4
  %add1191 = add nsw i32 %656, %657
  %idxprom1192 = sext i32 %add1191 to i64
  %658 = load i32, i32* %i, align 4
  %659 = load i32, i32* %block_x, align 4
  %add1193 = add nsw i32 %658, %659
  %idxprom1194 = sext i32 %add1193 to i64
  %660 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1195 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %660, i32 0, i32 45
  %arrayidx1196 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1195, i32 0, i64 %idxprom1194
  %arrayidx1197 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1196, i32 0, i64 %idxprom1192
  %661 = load i16, i16* %arrayidx1197, align 2
  %conv1198 = zext i16 %661 to i64
  %shl1199 = shl i64 %conv1198, 6
  %add1200 = add nsw i64 %conv1190, %shl1199
  %add1201 = add nsw i64 %add1200, 32
  %shr1202 = ashr i64 %add1201, 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %shr1202, %cond.false ]
  %cmp1203 = icmp slt i64 %conv1164, %cond
  br i1 %cmp1203, label %cond.true.1205, label %cond.false.1208

cond.true.1205:                                   ; preds = %cond.end
  %662 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value1206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %662, i32 0, i32 155
  %663 = load i32, i32* %max_imgpel_value1206, align 4
  %conv1207 = sext i32 %663 to i64
  br label %cond.end.1251

cond.false.1208:                                  ; preds = %cond.end
  %664 = load i32, i32* %j, align 4
  %idxprom1209 = sext i32 %664 to i64
  %665 = load i32, i32* %i, align 4
  %idxprom1210 = sext i32 %665 to i64
  %666 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71211 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %666, i32 0, i32 46
  %arrayidx1212 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71211, i32 0, i64 %idxprom1210
  %arrayidx1213 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1212, i32 0, i64 %idxprom1209
  %667 = load i32, i32* %arrayidx1213, align 4
  %conv1214 = sext i32 %667 to i64
  %668 = load i32, i32* %j, align 4
  %669 = load i32, i32* %block_y, align 4
  %add1215 = add nsw i32 %668, %669
  %idxprom1216 = sext i32 %add1215 to i64
  %670 = load i32, i32* %i, align 4
  %671 = load i32, i32* %block_x, align 4
  %add1217 = add nsw i32 %670, %671
  %idxprom1218 = sext i32 %add1217 to i64
  %672 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1219 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %672, i32 0, i32 45
  %arrayidx1220 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1219, i32 0, i64 %idxprom1218
  %arrayidx1221 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1220, i32 0, i64 %idxprom1216
  %673 = load i16, i16* %arrayidx1221, align 2
  %conv1222 = zext i16 %673 to i64
  %shl1223 = shl i64 %conv1222, 6
  %add1224 = add nsw i64 %conv1214, %shl1223
  %add1225 = add nsw i64 %add1224, 32
  %shr1226 = ashr i64 %add1225, 6
  %cmp1227 = icmp sgt i64 0, %shr1226
  br i1 %cmp1227, label %cond.true.1229, label %cond.false.1230

cond.true.1229:                                   ; preds = %cond.false.1208
  br label %cond.end.1249

cond.false.1230:                                  ; preds = %cond.false.1208
  %674 = load i32, i32* %j, align 4
  %idxprom1231 = sext i32 %674 to i64
  %675 = load i32, i32* %i, align 4
  %idxprom1232 = sext i32 %675 to i64
  %676 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71233 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %676, i32 0, i32 46
  %arrayidx1234 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71233, i32 0, i64 %idxprom1232
  %arrayidx1235 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1234, i32 0, i64 %idxprom1231
  %677 = load i32, i32* %arrayidx1235, align 4
  %conv1236 = sext i32 %677 to i64
  %678 = load i32, i32* %j, align 4
  %679 = load i32, i32* %block_y, align 4
  %add1237 = add nsw i32 %678, %679
  %idxprom1238 = sext i32 %add1237 to i64
  %680 = load i32, i32* %i, align 4
  %681 = load i32, i32* %block_x, align 4
  %add1239 = add nsw i32 %680, %681
  %idxprom1240 = sext i32 %add1239 to i64
  %682 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1241 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %682, i32 0, i32 45
  %arrayidx1242 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1241, i32 0, i64 %idxprom1240
  %arrayidx1243 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1242, i32 0, i64 %idxprom1238
  %683 = load i16, i16* %arrayidx1243, align 2
  %conv1244 = zext i16 %683 to i64
  %shl1245 = shl i64 %conv1244, 6
  %add1246 = add nsw i64 %conv1236, %shl1245
  %add1247 = add nsw i64 %add1246, 32
  %shr1248 = ashr i64 %add1247, 6
  br label %cond.end.1249

cond.end.1249:                                    ; preds = %cond.false.1230, %cond.true.1229
  %cond1250 = phi i64 [ 0, %cond.true.1229 ], [ %shr1248, %cond.false.1230 ]
  br label %cond.end.1251

cond.end.1251:                                    ; preds = %cond.end.1249, %cond.true.1205
  %cond1252 = phi i64 [ %conv1207, %cond.true.1205 ], [ %cond1250, %cond.end.1249 ]
  %conv1253 = trunc i64 %cond1252 to i32
  %684 = load i32, i32* %j, align 4
  %idxprom1254 = sext i32 %684 to i64
  %685 = load i32, i32* %i, align 4
  %idxprom1255 = sext i32 %685 to i64
  %686 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71256 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %686, i32 0, i32 46
  %arrayidx1257 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71256, i32 0, i64 %idxprom1255
  %arrayidx1258 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1257, i32 0, i64 %idxprom1254
  store i32 %conv1253, i32* %arrayidx1258, align 4
  br label %if.end.1272

if.else.1259:                                     ; preds = %if.else.1161
  %687 = load i32, i32* %j, align 4
  %idxprom1260 = sext i32 %687 to i64
  %688 = load i32, i32* %i, align 4
  %idxprom1261 = sext i32 %688 to i64
  %689 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71262 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %689, i32 0, i32 46
  %arrayidx1263 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71262, i32 0, i64 %idxprom1261
  %arrayidx1264 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1263, i32 0, i64 %idxprom1260
  %690 = load i32, i32* %arrayidx1264, align 4
  %add1265 = add nsw i32 %690, 32
  %shr1266 = ashr i32 %add1265, 6
  %691 = load i32, i32* %j, align 4
  %idxprom1267 = sext i32 %691 to i64
  %692 = load i32, i32* %i, align 4
  %idxprom1268 = sext i32 %692 to i64
  %693 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71269 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %693, i32 0, i32 46
  %arrayidx1270 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71269, i32 0, i64 %idxprom1268
  %arrayidx1271 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1270, i32 0, i64 %idxprom1267
  store i32 %shr1266, i32* %arrayidx1271, align 4
  br label %if.end.1272

if.end.1272:                                      ; preds = %if.else.1259, %cond.end.1251
  br label %if.end.1273

if.end.1273:                                      ; preds = %if.end.1272, %if.then.1142
  br label %for.inc.1274

for.inc.1274:                                     ; preds = %if.end.1273
  %694 = load i32, i32* %j, align 4
  %inc1275 = add nsw i32 %694, 1
  store i32 %inc1275, i32* %j, align 4
  br label %for.cond.1137

for.end.1276:                                     ; preds = %for.cond.1137
  br label %for.inc.1277

for.inc.1277:                                     ; preds = %for.end.1276
  %695 = load i32, i32* %i, align 4
  %inc1278 = add nsw i32 %695, 1
  store i32 %inc1278, i32* %i, align 4
  br label %for.cond.1133

for.end.1279:                                     ; preds = %for.cond.1133
  %696 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %residue_transform_flag1280 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %696, i32 0, i32 164
  %697 = load i32, i32* %residue_transform_flag1280, align 4
  %tobool1281 = icmp ne i32 %697, 0
  br i1 %tobool1281, label %if.end.1311, label %if.then.1282

if.then.1282:                                     ; preds = %for.end.1279
  store i32 0, i32* %j, align 4
  br label %for.cond.1283

for.cond.1283:                                    ; preds = %for.inc.1308, %if.then.1282
  %698 = load i32, i32* %j, align 4
  %cmp1284 = icmp slt i32 %698, 8
  br i1 %cmp1284, label %for.body.1286, label %for.end.1310

for.body.1286:                                    ; preds = %for.cond.1283
  store i32 0, i32* %i, align 4
  br label %for.cond.1287

for.cond.1287:                                    ; preds = %for.inc.1305, %for.body.1286
  %699 = load i32, i32* %i, align 4
  %cmp1288 = icmp slt i32 %699, 8
  br i1 %cmp1288, label %for.body.1290, label %for.end.1307

for.body.1290:                                    ; preds = %for.cond.1287
  %700 = load i32, i32* %j, align 4
  %idxprom1291 = sext i32 %700 to i64
  %701 = load i32, i32* %i, align 4
  %idxprom1292 = sext i32 %701 to i64
  %702 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71293 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %702, i32 0, i32 46
  %arrayidx1294 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71293, i32 0, i64 %idxprom1292
  %arrayidx1295 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1294, i32 0, i64 %idxprom1291
  %703 = load i32, i32* %arrayidx1295, align 4
  %conv1296 = trunc i32 %703 to i16
  %704 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %704, i32 0, i32 33
  %705 = load i32, i32* %pix_x, align 4
  %706 = load i32, i32* %block_x, align 4
  %add1297 = add nsw i32 %705, %706
  %707 = load i32, i32* %i, align 4
  %add1298 = add nsw i32 %add1297, %707
  %idxprom1299 = sext i32 %add1298 to i64
  %708 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %708, i32 0, i32 34
  %709 = load i32, i32* %pix_y, align 4
  %710 = load i32, i32* %block_y, align 4
  %add1300 = add nsw i32 %709, %710
  %711 = load i32, i32* %j, align 4
  %add1301 = add nsw i32 %add1300, %711
  %idxprom1302 = sext i32 %add1301 to i64
  %712 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %712, i32 0, i32 25
  %713 = load i16**, i16*** %imgY, align 8
  %arrayidx1303 = getelementptr inbounds i16*, i16** %713, i64 %idxprom1302
  %714 = load i16*, i16** %arrayidx1303, align 8
  %arrayidx1304 = getelementptr inbounds i16, i16* %714, i64 %idxprom1299
  store i16 %conv1296, i16* %arrayidx1304, align 2
  br label %for.inc.1305

for.inc.1305:                                     ; preds = %for.body.1290
  %715 = load i32, i32* %i, align 4
  %inc1306 = add nsw i32 %715, 1
  store i32 %inc1306, i32* %i, align 4
  br label %for.cond.1287

for.end.1307:                                     ; preds = %for.cond.1287
  br label %for.inc.1308

for.inc.1308:                                     ; preds = %for.end.1307
  %716 = load i32, i32* %j, align 4
  %inc1309 = add nsw i32 %716, 1
  store i32 %inc1309, i32* %j, align 4
  br label %for.cond.1283

for.end.1310:                                     ; preds = %for.cond.1283
  br label %if.end.1311

if.end.1311:                                      ; preds = %for.end.1310, %for.end.1279
  %717 = load i32, i32* %nonzero, align 4
  ret i32 %717
}

declare i32 @dct_chroma4x4(i32, i32, i32) #2

declare void @getNeighbour(i32, i32, i32, i32, %struct.pix_pos*) #2

; Function Attrs: nounwind uwtable
define void @LowPassForIntra8x8Pred(i32* %PredPel, i32 %block_up_left, i32 %block_up, i32 %block_left) #0 {
entry:
  %PredPel.addr = alloca i32*, align 8
  %block_up_left.addr = alloca i32, align 4
  %block_up.addr = alloca i32, align 4
  %block_left.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %LoopArray = alloca [25 x i32], align 16
  store i32* %PredPel, i32** %PredPel.addr, align 8
  store i32 %block_up_left, i32* %block_up_left.addr, align 4
  store i32 %block_up, i32* %block_up.addr, align 4
  store i32 %block_left, i32* %block_left.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %block_up.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end.58

if.then:                                          ; preds = %for.end
  %7 = load i32, i32* %block_up_left.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 0
  %arrayidx6 = getelementptr inbounds i32, i32* %arrayidx5, i64 0
  %9 = load i32, i32* %arrayidx6, align 4
  %10 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 0
  %arrayidx8 = getelementptr inbounds i32, i32* %arrayidx7, i64 1
  %11 = load i32, i32* %arrayidx8, align 4
  %shl = shl i32 %11, 1
  %add = add nsw i32 %9, %shl
  %12 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 0
  %arrayidx10 = getelementptr inbounds i32, i32* %arrayidx9, i64 2
  %13 = load i32, i32* %arrayidx10, align 4
  %add11 = add nsw i32 %add, %13
  %add12 = add nsw i32 %add11, 2
  %shr = ashr i32 %add12, 2
  %arrayidx13 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 1
  store i32 %shr, i32* %arrayidx13, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %14, i64 0
  %arrayidx15 = getelementptr inbounds i32, i32* %arrayidx14, i64 1
  %15 = load i32, i32* %arrayidx15, align 4
  %16 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 0
  %arrayidx17 = getelementptr inbounds i32, i32* %arrayidx16, i64 1
  %17 = load i32, i32* %arrayidx17, align 4
  %shl18 = shl i32 %17, 1
  %add19 = add nsw i32 %15, %shl18
  %18 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %18, i64 0
  %arrayidx21 = getelementptr inbounds i32, i32* %arrayidx20, i64 2
  %19 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %add19, %19
  %add23 = add nsw i32 %add22, 2
  %shr24 = ashr i32 %add23, 2
  %arrayidx25 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 1
  store i32 %shr24, i32* %arrayidx25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  store i32 2, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.46, %if.end
  %20 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %20, 16
  br i1 %cmp27, label %for.body.28, label %for.end.48

for.body.28:                                      ; preds = %for.cond.26
  %21 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom29 = sext i32 %sub to i64
  %22 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %22, i64 0
  %arrayidx31 = getelementptr inbounds i32, i32* %arrayidx30, i64 %idxprom29
  %23 = load i32, i32* %arrayidx31, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %25, i64 0
  %arrayidx34 = getelementptr inbounds i32, i32* %arrayidx33, i64 %idxprom32
  %26 = load i32, i32* %arrayidx34, align 4
  %shl35 = shl i32 %26, 1
  %add36 = add nsw i32 %23, %shl35
  %27 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %27, 1
  %idxprom38 = sext i32 %add37 to i64
  %28 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %28, i64 0
  %arrayidx40 = getelementptr inbounds i32, i32* %arrayidx39, i64 %idxprom38
  %29 = load i32, i32* %arrayidx40, align 4
  %add41 = add nsw i32 %add36, %29
  %add42 = add nsw i32 %add41, 2
  %shr43 = ashr i32 %add42, 2
  %30 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 %idxprom44
  store i32 %shr43, i32* %arrayidx45, align 4
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.28
  %31 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %31, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.26

for.end.48:                                       ; preds = %for.cond.26
  %32 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %32, i64 16
  %33 = load i32, i32* %arrayidx49, align 4
  %34 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %34, i64 16
  %35 = load i32, i32* %arrayidx50, align 4
  %shl51 = shl i32 %35, 1
  %add52 = add nsw i32 %33, %shl51
  %36 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %36, i64 15
  %37 = load i32, i32* %arrayidx53, align 4
  %add54 = add nsw i32 %add52, %37
  %add55 = add nsw i32 %add54, 2
  %shr56 = ashr i32 %add55, 2
  %arrayidx57 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 16
  store i32 %shr56, i32* %arrayidx57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.48, %for.end
  %38 = load i32, i32* %block_up_left.addr, align 4
  %tobool59 = icmp ne i32 %38, 0
  br i1 %tobool59, label %if.then.60, label %if.end.100

if.then.60:                                       ; preds = %if.end.58
  %39 = load i32, i32* %block_up.addr, align 4
  %tobool61 = icmp ne i32 %39, 0
  br i1 %tobool61, label %land.lhs.true, label %if.else.73

land.lhs.true:                                    ; preds = %if.then.60
  %40 = load i32, i32* %block_left.addr, align 4
  %tobool62 = icmp ne i32 %40, 0
  br i1 %tobool62, label %if.then.63, label %if.else.73

if.then.63:                                       ; preds = %land.lhs.true
  %41 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %41, i64 17
  %42 = load i32, i32* %arrayidx64, align 4
  %43 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %43, i64 0
  %44 = load i32, i32* %arrayidx65, align 4
  %shl66 = shl i32 %44, 1
  %add67 = add nsw i32 %42, %shl66
  %45 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %45, i64 1
  %46 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %add67, %46
  %add70 = add nsw i32 %add69, 2
  %shr71 = ashr i32 %add70, 2
  %arrayidx72 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 0
  store i32 %shr71, i32* %arrayidx72, align 4
  br label %if.end.99

if.else.73:                                       ; preds = %land.lhs.true, %if.then.60
  %47 = load i32, i32* %block_up.addr, align 4
  %tobool74 = icmp ne i32 %47, 0
  br i1 %tobool74, label %if.then.75, label %if.else.85

if.then.75:                                       ; preds = %if.else.73
  %48 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %48, i64 0
  %49 = load i32, i32* %arrayidx76, align 4
  %50 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx77, align 4
  %shl78 = shl i32 %51, 1
  %add79 = add nsw i32 %49, %shl78
  %52 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %52, i64 1
  %53 = load i32, i32* %arrayidx80, align 4
  %add81 = add nsw i32 %add79, %53
  %add82 = add nsw i32 %add81, 2
  %shr83 = ashr i32 %add82, 2
  %arrayidx84 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 0
  store i32 %shr83, i32* %arrayidx84, align 4
  br label %if.end.98

if.else.85:                                       ; preds = %if.else.73
  %54 = load i32, i32* %block_left.addr, align 4
  %tobool86 = icmp ne i32 %54, 0
  br i1 %tobool86, label %if.then.87, label %if.end.97

if.then.87:                                       ; preds = %if.else.85
  %55 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx88, align 4
  %57 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx89, align 4
  %shl90 = shl i32 %58, 1
  %add91 = add nsw i32 %56, %shl90
  %59 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %59, i64 17
  %60 = load i32, i32* %arrayidx92, align 4
  %add93 = add nsw i32 %add91, %60
  %add94 = add nsw i32 %add93, 2
  %shr95 = ashr i32 %add94, 2
  %arrayidx96 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 0
  store i32 %shr95, i32* %arrayidx96, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.87, %if.else.85
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.75
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.63
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.58
  %61 = load i32, i32* %block_left.addr, align 4
  %tobool101 = icmp ne i32 %61, 0
  br i1 %tobool101, label %if.then.102, label %if.end.158

if.then.102:                                      ; preds = %if.end.100
  %62 = load i32, i32* %block_up_left.addr, align 4
  %tobool103 = icmp ne i32 %62, 0
  br i1 %tobool103, label %if.then.104, label %if.else.114

if.then.104:                                      ; preds = %if.then.102
  %63 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %63, i64 0
  %64 = load i32, i32* %arrayidx105, align 4
  %65 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %65, i64 17
  %66 = load i32, i32* %arrayidx106, align 4
  %shl107 = shl i32 %66, 1
  %add108 = add nsw i32 %64, %shl107
  %67 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %67, i64 18
  %68 = load i32, i32* %arrayidx109, align 4
  %add110 = add nsw i32 %add108, %68
  %add111 = add nsw i32 %add110, 2
  %shr112 = ashr i32 %add111, 2
  %arrayidx113 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 17
  store i32 %shr112, i32* %arrayidx113, align 4
  br label %if.end.124

if.else.114:                                      ; preds = %if.then.102
  %69 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %69, i64 17
  %70 = load i32, i32* %arrayidx115, align 4
  %71 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %71, i64 17
  %72 = load i32, i32* %arrayidx116, align 4
  %shl117 = shl i32 %72, 1
  %add118 = add nsw i32 %70, %shl117
  %73 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx119 = getelementptr inbounds i32, i32* %73, i64 18
  %74 = load i32, i32* %arrayidx119, align 4
  %add120 = add nsw i32 %add118, %74
  %add121 = add nsw i32 %add120, 2
  %shr122 = ashr i32 %add121, 2
  %arrayidx123 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 17
  store i32 %shr122, i32* %arrayidx123, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.114, %if.then.104
  store i32 18, i32* %i, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.146, %if.end.124
  %75 = load i32, i32* %i, align 4
  %cmp126 = icmp slt i32 %75, 24
  br i1 %cmp126, label %for.body.127, label %for.end.148

for.body.127:                                     ; preds = %for.cond.125
  %76 = load i32, i32* %i, align 4
  %sub128 = sub nsw i32 %76, 1
  %idxprom129 = sext i32 %sub128 to i64
  %77 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %77, i64 0
  %arrayidx131 = getelementptr inbounds i32, i32* %arrayidx130, i64 %idxprom129
  %78 = load i32, i32* %arrayidx131, align 4
  %79 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %79 to i64
  %80 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %80, i64 0
  %arrayidx134 = getelementptr inbounds i32, i32* %arrayidx133, i64 %idxprom132
  %81 = load i32, i32* %arrayidx134, align 4
  %shl135 = shl i32 %81, 1
  %add136 = add nsw i32 %78, %shl135
  %82 = load i32, i32* %i, align 4
  %add137 = add nsw i32 %82, 1
  %idxprom138 = sext i32 %add137 to i64
  %83 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %83, i64 0
  %arrayidx140 = getelementptr inbounds i32, i32* %arrayidx139, i64 %idxprom138
  %84 = load i32, i32* %arrayidx140, align 4
  %add141 = add nsw i32 %add136, %84
  %add142 = add nsw i32 %add141, 2
  %shr143 = ashr i32 %add142, 2
  %85 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %85 to i64
  %arrayidx145 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 %idxprom144
  store i32 %shr143, i32* %arrayidx145, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.127
  %86 = load i32, i32* %i, align 4
  %inc147 = add nsw i32 %86, 1
  store i32 %inc147, i32* %i, align 4
  br label %for.cond.125

for.end.148:                                      ; preds = %for.cond.125
  %87 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %87, i64 23
  %88 = load i32, i32* %arrayidx149, align 4
  %89 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx150 = getelementptr inbounds i32, i32* %89, i64 24
  %90 = load i32, i32* %arrayidx150, align 4
  %shl151 = shl i32 %90, 1
  %add152 = add nsw i32 %88, %shl151
  %91 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %91, i64 24
  %92 = load i32, i32* %arrayidx153, align 4
  %add154 = add nsw i32 %add152, %92
  %add155 = add nsw i32 %add154, 2
  %shr156 = ashr i32 %add155, 2
  %arrayidx157 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 24
  store i32 %shr156, i32* %arrayidx157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %for.end.148, %if.end.100
  store i32 0, i32* %i, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.166, %if.end.158
  %93 = load i32, i32* %i, align 4
  %cmp160 = icmp slt i32 %93, 25
  br i1 %cmp160, label %for.body.161, label %for.end.168

for.body.161:                                     ; preds = %for.cond.159
  %94 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %94 to i64
  %arrayidx163 = getelementptr inbounds [25 x i32], [25 x i32]* %LoopArray, i32 0, i64 %idxprom162
  %95 = load i32, i32* %arrayidx163, align 4
  %96 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %96 to i64
  %97 = load i32*, i32** %PredPel.addr, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %97, i64 %idxprom164
  store i32 %95, i32* %arrayidx165, align 4
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.body.161
  %98 = load i32, i32* %i, align 4
  %inc167 = add nsw i32 %98, 1
  store i32 %inc167, i32* %i, align 4
  br label %for.cond.159

for.end.168:                                      ; preds = %for.cond.159
  ret void
}

declare void @writeIntraPredMode_CABAC(%struct.syntaxelement*, %struct.EncodingEnvironment*) #2

declare i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement*, %struct.datapartition*) #2

declare i32 @writeCoeff4x4_CAVLC(i32, i32, i32, i32) #2

declare i32 @writeLumaCoeff8x8_CABAC(i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

declare i32 @sign(i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
