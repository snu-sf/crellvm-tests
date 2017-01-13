; ModuleID = './MultiSource.Applications.JM/39.lencod.transform8x8.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16**, i16****, i16****, i16*****, i16***, i8*, i8***, i64***, i64***, i16****, i8**, i8**, %struct.storable_picture*, %struct.storable_picture*, %struct.storable_picture*, i32, i32, i32, i32, i32, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)* }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], i32****, i32***, i32, i16, [4 x i32], [4 x i32], i8**, [16 x i8], [16 x i8], i32, i64, i32, i16******, i16******, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@quant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 13107, i32 12222, i32 16777, i32 12222, i32 13107, i32 12222, i32 16777, i32 12222], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428], [8 x i32] [i32 16777, i32 15481, i32 20972, i32 15481, i32 16777, i32 15481, i32 20972, i32 15481], [8 x i32] [i32 12222, i32 11428, i32 15481, i32 11428, i32 12222, i32 11428, i32 15481, i32 11428]], [8 x [8 x i32]] [[8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 11916, i32 11058, i32 14980, i32 11058, i32 11916, i32 11058, i32 14980, i32 11058], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826], [8 x i32] [i32 14980, i32 14290, i32 19174, i32 14290, i32 14980, i32 14290, i32 19174, i32 14290], [8 x i32] [i32 11058, i32 10826, i32 14290, i32 10826, i32 11058, i32 10826, i32 14290, i32 10826]], [8 x [8 x i32]] [[8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 10082, i32 9675, i32 12710, i32 9675, i32 10082, i32 9675, i32 12710, i32 9675], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943], [8 x i32] [i32 12710, i32 11985, i32 15978, i32 11985, i32 12710, i32 11985, i32 15978, i32 11985], [8 x i32] [i32 9675, i32 8943, i32 11985, i32 8943, i32 9675, i32 8943, i32 11985, i32 8943]], [8 x [8 x i32]] [[8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 9362, i32 8931, i32 11984, i32 8931, i32 9362, i32 8931, i32 11984, i32 8931], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228], [8 x i32] [i32 11984, i32 11259, i32 14913, i32 11259, i32 11984, i32 11259, i32 14913, i32 11259], [8 x i32] [i32 8931, i32 8228, i32 11259, i32 8228, i32 8931, i32 8228, i32 11259, i32 8228]], [8 x [8 x i32]] [[8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 8192, i32 7740, i32 10486, i32 7740, i32 8192, i32 7740, i32 10486, i32 7740], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346], [8 x i32] [i32 10486, i32 9777, i32 13159, i32 9777, i32 10486, i32 9777, i32 13159, i32 9777], [8 x i32] [i32 7740, i32 7346, i32 9777, i32 7346, i32 7740, i32 7346, i32 9777, i32 7346]], [8 x [8 x i32]] [[8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 7282, i32 6830, i32 9118, i32 6830, i32 7282, i32 6830, i32 9118, i32 6830], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428], [8 x i32] [i32 9118, i32 8640, i32 11570, i32 8640, i32 9118, i32 8640, i32 11570, i32 8640], [8 x i32] [i32 6830, i32 6428, i32 8640, i32 6428, i32 6830, i32 6428, i32 8640, i32 6428]]], align 16
@dequant_coef8 = constant [6 x [8 x [8 x i32]]] [[8 x [8 x i32]] [[8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 20, i32 19, i32 25, i32 19, i32 20, i32 19, i32 25, i32 19], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18], [8 x i32] [i32 25, i32 24, i32 32, i32 24, i32 25, i32 24, i32 32, i32 24], [8 x i32] [i32 19, i32 18, i32 24, i32 18, i32 19, i32 18, i32 24, i32 18]], [8 x [8 x i32]] [[8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 22, i32 21, i32 28, i32 21, i32 22, i32 21, i32 28, i32 21], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 21, i32 19, i32 26, i32 19, i32 21, i32 19, i32 26, i32 19]], [8 x [8 x i32]] [[8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 26, i32 24, i32 33, i32 24, i32 26, i32 24, i32 33, i32 24], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23], [8 x i32] [i32 33, i32 31, i32 42, i32 31, i32 33, i32 31, i32 42, i32 31], [8 x i32] [i32 24, i32 23, i32 31, i32 23, i32 24, i32 23, i32 31, i32 23]], [8 x [8 x i32]] [[8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 28, i32 26, i32 35, i32 26, i32 28, i32 26, i32 35, i32 26], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25], [8 x i32] [i32 35, i32 33, i32 45, i32 33, i32 35, i32 33, i32 45, i32 33], [8 x i32] [i32 26, i32 25, i32 33, i32 25, i32 26, i32 25, i32 33, i32 25]], [8 x [8 x i32]] [[8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 32, i32 30, i32 40, i32 30, i32 32, i32 30, i32 40, i32 30], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28], [8 x i32] [i32 40, i32 38, i32 51, i32 38, i32 40, i32 38, i32 51, i32 38], [8 x i32] [i32 30, i32 28, i32 38, i32 28, i32 30, i32 28, i32 38, i32 28]], [8 x [8 x i32]] [[8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 36, i32 34, i32 46, i32 34, i32 36, i32 34, i32 46, i32 34], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32], [8 x i32] [i32 46, i32 43, i32 58, i32 43, i32 46, i32 43, i32 58, i32 43], [8 x i32] [i32 34, i32 32, i32 43, i32 32, i32 34, i32 32, i32 43, i32 32]]], align 16
@SNGL_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\01", [2 x i8] c"\02\00", [2 x i8] c"\03\00", [2 x i8] c"\02\01", [2 x i8] c"\01\02", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\03", [2 x i8] c"\02\02", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\05\00", [2 x i8] c"\04\01", [2 x i8] c"\03\02", [2 x i8] c"\02\03", [2 x i8] c"\01\04", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\01\05", [2 x i8] c"\02\04", [2 x i8] c"\03\03", [2 x i8] c"\04\02", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\07\00", [2 x i8] c"\06\01", [2 x i8] c"\05\02", [2 x i8] c"\04\03", [2 x i8] c"\03\04", [2 x i8] c"\02\05", [2 x i8] c"\01\06", [2 x i8] c"\00\07", [2 x i8] c"\01\07", [2 x i8] c"\02\06", [2 x i8] c"\03\05", [2 x i8] c"\04\04", [2 x i8] c"\05\03", [2 x i8] c"\06\02", [2 x i8] c"\07\01", [2 x i8] c"\07\02", [2 x i8] c"\06\03", [2 x i8] c"\05\04", [2 x i8] c"\04\05", [2 x i8] c"\03\06", [2 x i8] c"\02\07", [2 x i8] c"\03\07", [2 x i8] c"\04\06", [2 x i8] c"\05\05", [2 x i8] c"\06\04", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\06\05", [2 x i8] c"\05\06", [2 x i8] c"\04\07", [2 x i8] c"\05\07", [2 x i8] c"\06\06", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\06\07", [2 x i8] c"\07\07"], align 16
@FIELD_SCAN8x8 = constant [64 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\01", [2 x i8] c"\00\02", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\03", [2 x i8] c"\00\04", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\03", [2 x i8] c"\00\05", [2 x i8] c"\00\06", [2 x i8] c"\00\07", [2 x i8] c"\01\04", [2 x i8] c"\02\01", [2 x i8] c"\03\00", [2 x i8] c"\02\02", [2 x i8] c"\01\05", [2 x i8] c"\01\06", [2 x i8] c"\01\07", [2 x i8] c"\02\03", [2 x i8] c"\03\01", [2 x i8] c"\04\00", [2 x i8] c"\03\02", [2 x i8] c"\02\04", [2 x i8] c"\02\05", [2 x i8] c"\02\06", [2 x i8] c"\02\07", [2 x i8] c"\03\03", [2 x i8] c"\04\01", [2 x i8] c"\05\00", [2 x i8] c"\04\02", [2 x i8] c"\03\04", [2 x i8] c"\03\05", [2 x i8] c"\03\06", [2 x i8] c"\03\07", [2 x i8] c"\04\03", [2 x i8] c"\05\01", [2 x i8] c"\06\00", [2 x i8] c"\05\02", [2 x i8] c"\04\04", [2 x i8] c"\04\05", [2 x i8] c"\04\06", [2 x i8] c"\04\07", [2 x i8] c"\05\03", [2 x i8] c"\06\01", [2 x i8] c"\06\02", [2 x i8] c"\05\04", [2 x i8] c"\05\05", [2 x i8] c"\05\06", [2 x i8] c"\05\07", [2 x i8] c"\06\03", [2 x i8] c"\07\00", [2 x i8] c"\07\01", [2 x i8] c"\06\04", [2 x i8] c"\06\05", [2 x i8] c"\06\06", [2 x i8] c"\06\07", [2 x i8] c"\07\02", [2 x i8] c"\07\03", [2 x i8] c"\07\04", [2 x i8] c"\07\05", [2 x i8] c"\07\06", [2 x i8] c"\07\07"], align 16
@COEFF_COST8x8 = constant [2 x [64 x i8]] [[64 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09"], align 16
@img = external global %struct.ImageParameters*, align 8
@imgY_org = common global i16** null, align 8
@input = external global %struct.InputParameters*, align 8
@diff64 = internal global [64 x i32] zeroinitializer, align 16
@cofAC8x8 = external global i32****, align 8
@enc_picture = external global %struct.storable_picture*, align 8
@intrapred_luma8x8.PredPel = internal global [25 x i16] zeroinitializer, align 16
@getNeighbour = common global void (i32, i32, i32, i32, %struct.pix_pos*)* null, align 8
@assignSE2partition = external global [2 x i32*], align 16
@writeIntraPredMode = external global void (%struct.syntaxelement*, %struct.datapartition*)*, align 8
@qp_per_matrix = external global i32*, align 8
@qp_rem_matrix = external global i32*, align 8
@LevelScale8x8Luma = external global i32****, align 8
@LevelOffset8x8Luma = external global i32****, align 8
@InvLevelScale8x8Luma = external global i32****, align 8
@AdaptRndWeight = external global i32, align 4
@color_formats = common global i32 0, align 4
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic_1 = common global %struct.Picture* null, align 8
@frame_pic_2 = common global %struct.Picture* null, align 8
@frame_pic_3 = common global %struct.Picture* null, align 8
@frame_pic_si = common global %struct.Picture* null, align 8
@Bit_Buffer = common global i64* null, align 8
@imgUV_org = common global i16*** null, align 8
@imgY_sub_tmp = common global i32** null, align 8
@PicPos = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i64 0, align 8
@me_time = common global i64 0, align 8
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@dsr_new_search_range = common global i32 0, align 4
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
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
@start_me_refinement_hp = common global i32 0, align 4
@start_me_refinement_qp = common global i32 0, align 4
@get_mb_block_pos = common global void (i32, i32*, i32*)* null, align 8
@cofAC8x8_chroma = common global [2 x [4 x [2 x [18 x i32]]]] zeroinitializer, align 16

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
  %call = call double @floor(double %add) #5
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
  %y = alloca i32, align 4
  %cost = alloca i32, align 4
  %dummy = alloca i32, align 4
  %c_nz = alloca i32, align 4
  %nonzero = alloca i32, align 4
  %rec8x8 = alloca [8 x [8 x i16]], align 16
  %rdcost = alloca double, align 8
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
  %fadjust8x8 = alloca [2 x [16 x [16 x i32]]], align 16
  %left_available = alloca i32, align 4
  %up_available = alloca i32, align 4
  %all_available = alloca i32, align 4
  %upMode = alloca i8, align 1
  %leftMode = alloca i8, align 1
  %mostProbableMode = alloca i32, align 4
  %left_block = alloca %struct.pix_pos, align 4
  %top_block = alloca %struct.pix_pos, align 4
  %currMB = alloca %struct.macroblock*, align 8
  store i32 %b8, i32* %b8.addr, align 4
  store double %lambda, double* %lambda.addr, align 8
  store i32* %min_cost, i32** %min_cost.addr, align 8
  store i32 0, i32* %best_ipmode, align 4
  store i32 0, i32* %nonzero, align 4
  store double 0.000000e+00, double* %rdcost, align 8
  %0 = load i32, i32* %b8.addr, align 4
  %and = and i32 %0, 1
  %mul = mul nsw i32 8, %and
  store i32 %mul, i32* %block_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %shr = ashr i32 %1, 1
  %mul1 = mul nsw i32 8, %shr
  store i32 %mul1, i32* %block_y, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 39
  %3 = load i32, i32* %pix_x, align 4
  %4 = load i32, i32* %block_x, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %pic_pix_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 40
  %6 = load i32, i32* %pix_y, align 4
  %7 = load i32, i32* %block_y, align 4
  %add2 = add nsw i32 %6, %7
  store i32 %add2, i32* %pic_pix_y, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 43
  %9 = load i32, i32* %opix_x, align 4
  %10 = load i32, i32* %block_x, align 4
  %add3 = add nsw i32 %9, %10
  store i32 %add3, i32* %pic_opix_x, align 4
  %11 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %11, i32 0, i32 44
  %12 = load i32, i32* %opix_y, align 4
  %13 = load i32, i32* %block_y, align 4
  %add4 = add nsw i32 %12, %13
  store i32 %add4, i32* %pic_opix_y, align 4
  %14 = load i32, i32* %pic_pix_x, align 4
  %div = sdiv i32 %14, 4
  store i32 %div, i32* %pic_block_x, align 4
  %15 = load i32, i32* %pic_pix_y, align 4
  %div5 = sdiv i32 %15, 4
  store i32 %div5, i32* %pic_block_y, align 4
  store double 1.000000e+30, double* %min_rdcost, align 8
  %16 = load i16**, i16*** @imgY_org, align 8
  store i16** %16, i16*** %imgY_orig, align 8
  %17 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %17, i32 0, i32 3
  %18 = load i32, i32* %current_mb_nr, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %19, i32 0, i32 61
  %20 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx = getelementptr inbounds %struct.macroblock, %struct.macroblock* %20, i64 %idxprom
  store %struct.macroblock* %arrayidx, %struct.macroblock** %currMB, align 8
  %21 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr6 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %21, i32 0, i32 3
  %22 = load i32, i32* %current_mb_nr6, align 4
  %23 = load i32, i32* %block_x, align 4
  %sub = sub nsw i32 %23, 1
  %24 = load i32, i32* %block_y, align 4
  call void @getLuma4x4Neighbour(i32 %22, i32 %sub, i32 %24, %struct.pix_pos* %left_block)
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %current_mb_nr7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 3
  %26 = load i32, i32* %current_mb_nr7, align 4
  %27 = load i32, i32* %block_x, align 4
  %28 = load i32, i32* %block_y, align 4
  %sub8 = sub nsw i32 %28, 1
  call void @getLuma4x4Neighbour(i32 %26, i32 %27, i32 %sub8, %struct.pix_pos* %top_block)
  %29 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %29, i32 0, i32 23
  %30 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  %31 = load i32, i32* %available, align 4
  %tobool9 = icmp ne i32 %31, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 1
  %32 = load i32, i32* %mb_addr, align 4
  %idxprom10 = sext i32 %32 to i64
  %33 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %33, i32 0, i32 63
  %34 = load i32*, i32** %intra_block, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %34, i64 %idxprom10
  %35 = load i32, i32* %arrayidx11, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ 0, %cond.false ]
  %available12 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  store i32 %cond, i32* %available12, align 4
  %available13 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  %36 = load i32, i32* %available13, align 4
  %tobool14 = icmp ne i32 %36, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.20

cond.true.15:                                     ; preds = %cond.end
  %mb_addr16 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 1
  %37 = load i32, i32* %mb_addr16, align 4
  %idxprom17 = sext i32 %37 to i64
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block18 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 63
  %39 = load i32*, i32** %intra_block18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %39, i64 %idxprom17
  %40 = load i32, i32* %arrayidx19, align 4
  br label %cond.end.21

cond.false.20:                                    ; preds = %cond.end
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.20, %cond.true.15
  %cond22 = phi i32 [ %40, %cond.true.15 ], [ 0, %cond.false.20 ]
  %available23 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  store i32 %cond22, i32* %available23, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.21, %entry
  %41 = load i32, i32* %b8.addr, align 4
  %shr24 = ashr i32 %41, 1
  %tobool25 = icmp ne i32 %shr24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end
  %available27 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  %42 = load i32, i32* %available27, align 4
  %tobool28 = icmp ne i32 %42, 0
  br i1 %tobool28, label %cond.true.29, label %cond.false.34

cond.true.29:                                     ; preds = %if.then.26
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 4
  %43 = load i32, i32* %pos_x, align 4
  %idxprom30 = sext i32 %43 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 5
  %44 = load i32, i32* %pos_y, align 4
  %idxprom31 = sext i32 %44 to i64
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 32
  %46 = load i8**, i8*** %ipredmode8x8, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %46, i64 %idxprom31
  %47 = load i8*, i8** %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %47, i64 %idxprom30
  %48 = load i8, i8* %arrayidx33, align 1
  %conv = sext i8 %48 to i32
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.then.26
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.29
  %cond36 = phi i32 [ %conv, %cond.true.29 ], [ -1, %cond.false.34 ]
  %conv37 = trunc i32 %cond36 to i8
  store i8 %conv37, i8* %upMode, align 1
  br label %if.end.52

if.else:                                          ; preds = %if.end
  %available38 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 0
  %49 = load i32, i32* %available38, align 4
  %tobool39 = icmp ne i32 %49, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.48

cond.true.40:                                     ; preds = %if.else
  %pos_x41 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 4
  %50 = load i32, i32* %pos_x41, align 4
  %idxprom42 = sext i32 %50 to i64
  %pos_y43 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %top_block, i32 0, i32 5
  %51 = load i32, i32* %pos_y43, align 4
  %idxprom44 = sext i32 %51 to i64
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 31
  %53 = load i8**, i8*** %ipredmode, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %53, i64 %idxprom44
  %54 = load i8*, i8** %arrayidx45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %54, i64 %idxprom42
  %55 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %55 to i32
  br label %cond.end.49

cond.false.48:                                    ; preds = %if.else
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.40
  %cond50 = phi i32 [ %conv47, %cond.true.40 ], [ -1, %cond.false.48 ]
  %conv51 = trunc i32 %cond50 to i8
  store i8 %conv51, i8* %upMode, align 1
  br label %if.end.52

if.end.52:                                        ; preds = %cond.end.49, %cond.end.35
  %56 = load i32, i32* %b8.addr, align 4
  %and53 = and i32 %56, 1
  %tobool54 = icmp ne i32 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.71

if.then.55:                                       ; preds = %if.end.52
  %available56 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  %57 = load i32, i32* %available56, align 4
  %tobool57 = icmp ne i32 %57, 0
  br i1 %tobool57, label %cond.true.58, label %cond.false.67

cond.true.58:                                     ; preds = %if.then.55
  %pos_x59 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 4
  %58 = load i32, i32* %pos_x59, align 4
  %idxprom60 = sext i32 %58 to i64
  %pos_y61 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 5
  %59 = load i32, i32* %pos_y61, align 4
  %idxprom62 = sext i32 %59 to i64
  %60 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x863 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %60, i32 0, i32 32
  %61 = load i8**, i8*** %ipredmode8x863, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %61, i64 %idxprom62
  %62 = load i8*, i8** %arrayidx64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %62, i64 %idxprom60
  %63 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %63 to i32
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.then.55
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.58
  %cond69 = phi i32 [ %conv66, %cond.true.58 ], [ -1, %cond.false.67 ]
  %conv70 = trunc i32 %cond69 to i8
  store i8 %conv70, i8* %leftMode, align 1
  br label %if.end.87

if.else.71:                                       ; preds = %if.end.52
  %available72 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 0
  %64 = load i32, i32* %available72, align 4
  %tobool73 = icmp ne i32 %64, 0
  br i1 %tobool73, label %cond.true.74, label %cond.false.83

cond.true.74:                                     ; preds = %if.else.71
  %pos_x75 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 4
  %65 = load i32, i32* %pos_x75, align 4
  %idxprom76 = sext i32 %65 to i64
  %pos_y77 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %left_block, i32 0, i32 5
  %66 = load i32, i32* %pos_y77, align 4
  %idxprom78 = sext i32 %66 to i64
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode79 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 31
  %68 = load i8**, i8*** %ipredmode79, align 8
  %arrayidx80 = getelementptr inbounds i8*, i8** %68, i64 %idxprom78
  %69 = load i8*, i8** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %69, i64 %idxprom76
  %70 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %70 to i32
  br label %cond.end.84

cond.false.83:                                    ; preds = %if.else.71
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.83, %cond.true.74
  %cond85 = phi i32 [ %conv82, %cond.true.74 ], [ -1, %cond.false.83 ]
  %conv86 = trunc i32 %cond85 to i8
  store i8 %conv86, i8* %leftMode, align 1
  br label %if.end.87

if.end.87:                                        ; preds = %cond.end.84, %cond.end.68
  %71 = load i8, i8* %upMode, align 1
  %conv88 = sext i8 %71 to i32
  %cmp = icmp slt i32 %conv88, 0
  br i1 %cmp, label %cond.true.93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.87
  %72 = load i8, i8* %leftMode, align 1
  %conv90 = sext i8 %72 to i32
  %cmp91 = icmp slt i32 %conv90, 0
  br i1 %cmp91, label %cond.true.93, label %cond.false.94

cond.true.93:                                     ; preds = %lor.lhs.false, %if.end.87
  br label %cond.end.105

cond.false.94:                                    ; preds = %lor.lhs.false
  %73 = load i8, i8* %upMode, align 1
  %conv95 = sext i8 %73 to i32
  %74 = load i8, i8* %leftMode, align 1
  %conv96 = sext i8 %74 to i32
  %cmp97 = icmp slt i32 %conv95, %conv96
  br i1 %cmp97, label %cond.true.99, label %cond.false.101

cond.true.99:                                     ; preds = %cond.false.94
  %75 = load i8, i8* %upMode, align 1
  %conv100 = sext i8 %75 to i32
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.false.94
  %76 = load i8, i8* %leftMode, align 1
  %conv102 = sext i8 %76 to i32
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.99
  %cond104 = phi i32 [ %conv100, %cond.true.99 ], [ %conv102, %cond.false.101 ]
  br label %cond.end.105

cond.end.105:                                     ; preds = %cond.end.103, %cond.true.93
  %cond106 = phi i32 [ 2, %cond.true.93 ], [ %cond104, %cond.end.103 ]
  store i32 %cond106, i32* %mostProbableMode, align 4
  %77 = load i32*, i32** %min_cost.addr, align 8
  store i32 2147483647, i32* %77, align 4
  %78 = load i32, i32* %pic_pix_x, align 4
  %79 = load i32, i32* %pic_pix_y, align 4
  call void @intrapred_luma8x8(i32 %78, i32 %79, i32* %left_available, i32* %up_available, i32* %all_available)
  store i32 0, i32* %ipmode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.291, %cond.end.105
  %80 = load i32, i32* %ipmode, align 4
  %cmp107 = icmp slt i32 %80, 9
  br i1 %cmp107, label %for.body, label %for.end.293

for.body:                                         ; preds = %for.cond
  %81 = load i32, i32* %ipmode, align 4
  %cmp109 = icmp eq i32 %81, 2
  br i1 %cmp109, label %if.then.131, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %for.body
  %82 = load i32, i32* %ipmode, align 4
  %cmp112 = icmp eq i32 %82, 0
  br i1 %cmp112, label %land.lhs.true, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %lor.lhs.false.111
  %83 = load i32, i32* %ipmode, align 4
  %cmp115 = icmp eq i32 %83, 7
  br i1 %cmp115, label %land.lhs.true, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %lor.lhs.false.114
  %84 = load i32, i32* %ipmode, align 4
  %cmp118 = icmp eq i32 %84, 3
  br i1 %cmp118, label %land.lhs.true, label %lor.lhs.false.121

land.lhs.true:                                    ; preds = %lor.lhs.false.117, %lor.lhs.false.114, %lor.lhs.false.111
  %85 = load i32, i32* %up_available, align 4
  %tobool120 = icmp ne i32 %85, 0
  br i1 %tobool120, label %if.then.131, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %land.lhs.true, %lor.lhs.false.117
  %86 = load i32, i32* %ipmode, align 4
  %cmp122 = icmp eq i32 %86, 1
  br i1 %cmp122, label %land.lhs.true.127, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %lor.lhs.false.121
  %87 = load i32, i32* %ipmode, align 4
  %cmp125 = icmp eq i32 %87, 8
  br i1 %cmp125, label %land.lhs.true.127, label %lor.lhs.false.129

land.lhs.true.127:                                ; preds = %lor.lhs.false.124, %lor.lhs.false.121
  %88 = load i32, i32* %left_available, align 4
  %tobool128 = icmp ne i32 %88, 0
  br i1 %tobool128, label %if.then.131, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %land.lhs.true.127, %lor.lhs.false.124
  %89 = load i32, i32* %all_available, align 4
  %tobool130 = icmp ne i32 %89, 0
  br i1 %tobool130, label %if.then.131, label %if.end.290

if.then.131:                                      ; preds = %lor.lhs.false.129, %land.lhs.true.127, %land.lhs.true, %for.body
  %90 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %90, i32 0, i32 113
  %91 = load i32, i32* %rdopt, align 4
  %tobool132 = icmp ne i32 %91, 0
  br i1 %tobool132, label %if.else.177, label %if.then.133

if.then.133:                                      ; preds = %if.then.131
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.160, %if.then.133
  %92 = load i32, i32* %j, align 4
  %cmp135 = icmp slt i32 %92, 8
  br i1 %cmp135, label %for.body.137, label %for.end.162

for.body.137:                                     ; preds = %for.cond.134
  store i32 0, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc, %for.body.137
  %93 = load i32, i32* %i, align 4
  %cmp139 = icmp slt i32 %93, 8
  br i1 %cmp139, label %for.body.141, label %for.end

for.body.141:                                     ; preds = %for.cond.138
  %94 = load i32, i32* %pic_opix_x, align 4
  %95 = load i32, i32* %i, align 4
  %add142 = add nsw i32 %94, %95
  %idxprom143 = sext i32 %add142 to i64
  %96 = load i32, i32* %pic_opix_y, align 4
  %97 = load i32, i32* %j, align 4
  %add144 = add nsw i32 %96, %97
  %idxprom145 = sext i32 %add144 to i64
  %98 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx146 = getelementptr inbounds i16*, i16** %98, i64 %idxprom145
  %99 = load i16*, i16** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i16, i16* %99, i64 %idxprom143
  %100 = load i16, i16* %arrayidx147, align 2
  %conv148 = zext i16 %100 to i32
  %101 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %101 to i64
  %102 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %102 to i64
  %103 = load i32, i32* %ipmode, align 4
  %idxprom151 = sext i32 %103 to i64
  %104 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %104, i32 0, i32 49
  %arrayidx152 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3, i32 0, i64 %idxprom151
  %arrayidx153 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx152, i32 0, i64 %idxprom150
  %arrayidx154 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx153, i32 0, i64 %idxprom149
  %105 = load i16, i16* %arrayidx154, align 2
  %conv155 = zext i16 %105 to i32
  %sub156 = sub nsw i32 %conv148, %conv155
  %106 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %106 to i64
  %arrayidx158 = getelementptr inbounds [64 x i32], [64 x i32]* @diff64, i32 0, i64 %idxprom157
  store i32 %sub156, i32* %arrayidx158, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.141
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  %108 = load i32, i32* %k, align 4
  %inc159 = add nsw i32 %108, 1
  store i32 %inc159, i32* %k, align 4
  br label %for.cond.138

for.end:                                          ; preds = %for.cond.138
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.end
  %109 = load i32, i32* %j, align 4
  %inc161 = add nsw i32 %109, 1
  store i32 %inc161, i32* %j, align 4
  br label %for.cond.134

for.end.162:                                      ; preds = %for.cond.134
  %110 = load i32, i32* %ipmode, align 4
  %111 = load i32, i32* %mostProbableMode, align 4
  %cmp163 = icmp eq i32 %110, %111
  br i1 %cmp163, label %cond.true.165, label %cond.false.166

cond.true.165:                                    ; preds = %for.end.162
  br label %cond.end.169

cond.false.166:                                   ; preds = %for.end.162
  %112 = load double, double* %lambda.addr, align 8
  %mul167 = fmul double 4.000000e+00, %112
  %call = call double @floor(double %mul167) #5
  %conv168 = fptosi double %call to i32
  br label %cond.end.169

cond.end.169:                                     ; preds = %cond.false.166, %cond.true.165
  %cond170 = phi i32 [ 0, %cond.true.165 ], [ %conv168, %cond.false.166 ]
  store i32 %cond170, i32* %cost, align 4
  %call171 = call i32 @distortion8x8(i32* getelementptr inbounds ([64 x i32], [64 x i32]* @diff64, i32 0, i32 0))
  %113 = load i32, i32* %cost, align 4
  %add172 = add nsw i32 %113, %call171
  store i32 %add172, i32* %cost, align 4
  %114 = load i32, i32* %cost, align 4
  %115 = load i32*, i32** %min_cost.addr, align 8
  %116 = load i32, i32* %115, align 4
  %cmp173 = icmp slt i32 %114, %116
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %cond.end.169
  %117 = load i32, i32* %ipmode, align 4
  store i32 %117, i32* %best_ipmode, align 4
  %118 = load i32, i32* %cost, align 4
  %119 = load i32*, i32** %min_cost.addr, align 8
  store i32 %118, i32* %119, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %cond.end.169
  br label %if.end.289

if.else.177:                                      ; preds = %if.then.131
  store i32 0, i32* %j, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.219, %if.else.177
  %120 = load i32, i32* %j, align 4
  %cmp179 = icmp slt i32 %120, 8
  br i1 %cmp179, label %for.body.181, label %for.end.221

for.body.181:                                     ; preds = %for.cond.178
  %121 = load i32, i32* %block_x, align 4
  %idxprom182 = sext i32 %121 to i64
  %122 = load i32, i32* %block_y, align 4
  %123 = load i32, i32* %j, align 4
  %add183 = add nsw i32 %122, %123
  %idxprom184 = sext i32 %add183 to i64
  %124 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %124, i32 0, i32 51
  %arrayidx185 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom184
  %arrayidx186 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx185, i32 0, i64 %idxprom182
  %125 = bitcast i16* %arrayidx186 to i8*
  %126 = load i32, i32* %j, align 4
  %idxprom187 = sext i32 %126 to i64
  %127 = load i32, i32* %ipmode, align 4
  %idxprom188 = sext i32 %127 to i64
  %128 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3189 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %128, i32 0, i32 49
  %arrayidx190 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3189, i32 0, i64 %idxprom188
  %arrayidx191 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx190, i32 0, i64 %idxprom187
  %129 = bitcast [8 x i16]* %arrayidx191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %129, i64 16, i32 2, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.216, %for.body.181
  %130 = load i32, i32* %i, align 4
  %cmp193 = icmp slt i32 %130, 8
  br i1 %cmp193, label %for.body.195, label %for.end.218

for.body.195:                                     ; preds = %for.cond.192
  %131 = load i32, i32* %pic_opix_x, align 4
  %132 = load i32, i32* %i, align 4
  %add196 = add nsw i32 %131, %132
  %idxprom197 = sext i32 %add196 to i64
  %133 = load i32, i32* %pic_opix_y, align 4
  %134 = load i32, i32* %j, align 4
  %add198 = add nsw i32 %133, %134
  %idxprom199 = sext i32 %add198 to i64
  %135 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx200 = getelementptr inbounds i16*, i16** %135, i64 %idxprom199
  %136 = load i16*, i16** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i16, i16* %136, i64 %idxprom197
  %137 = load i16, i16* %arrayidx201, align 2
  %conv202 = zext i16 %137 to i32
  %138 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %138 to i64
  %139 = load i32, i32* %j, align 4
  %idxprom204 = sext i32 %139 to i64
  %140 = load i32, i32* %ipmode, align 4
  %idxprom205 = sext i32 %140 to i64
  %141 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3206 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %141, i32 0, i32 49
  %arrayidx207 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3206, i32 0, i64 %idxprom205
  %arrayidx208 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx207, i32 0, i64 %idxprom204
  %arrayidx209 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx208, i32 0, i64 %idxprom203
  %142 = load i16, i16* %arrayidx209, align 2
  %conv210 = zext i16 %142 to i32
  %sub211 = sub nsw i32 %conv202, %conv210
  %143 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %143 to i64
  %144 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %144 to i64
  %145 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %145, i32 0, i32 52
  %arrayidx214 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom213
  %arrayidx215 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx214, i32 0, i64 %idxprom212
  store i32 %sub211, i32* %arrayidx215, align 4
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.195
  %146 = load i32, i32* %i, align 4
  %inc217 = add nsw i32 %146, 1
  store i32 %inc217, i32* %i, align 4
  br label %for.cond.192

for.end.218:                                      ; preds = %for.cond.192
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.end.218
  %147 = load i32, i32* %j, align 4
  %inc220 = add nsw i32 %147, 1
  store i32 %inc220, i32* %j, align 4
  br label %for.cond.178

for.end.221:                                      ; preds = %for.cond.178
  %148 = load i32, i32* %b8.addr, align 4
  %149 = load i32, i32* %ipmode, align 4
  %150 = load double, double* %lambda.addr, align 8
  %151 = load double, double* %min_rdcost, align 8
  %152 = load i32, i32* %mostProbableMode, align 4
  %call222 = call double @RDCost_for_8x8IntraBlocks(i32* %c_nz, i32 %148, i32 %149, double %150, double %151, i32 %152)
  store double %call222, double* %rdcost, align 8
  %153 = load double, double* %min_rdcost, align 8
  %cmp223 = fcmp olt double %call222, %153
  br i1 %cmp223, label %if.then.225, label %if.end.288

if.then.225:                                      ; preds = %for.end.221
  store i32 0, i32* %k, align 4
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.249, %if.then.225
  %154 = load i32, i32* %k, align 4
  %cmp227 = icmp slt i32 %154, 4
  br i1 %cmp227, label %for.body.229, label %for.end.251

for.body.229:                                     ; preds = %for.cond.226
  store i32 0, i32* %j, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.246, %for.body.229
  %155 = load i32, i32* %j, align 4
  %cmp231 = icmp slt i32 %155, 2
  br i1 %cmp231, label %for.body.233, label %for.end.248

for.body.233:                                     ; preds = %for.cond.230
  %156 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %156 to i64
  %157 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %157 to i64
  %158 = load i32, i32* %b8.addr, align 4
  %idxprom236 = sext i32 %158 to i64
  %159 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx237 = getelementptr inbounds i32***, i32**** %159, i64 %idxprom236
  %160 = load i32***, i32**** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32**, i32*** %160, i64 %idxprom235
  %161 = load i32**, i32*** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32*, i32** %161, i64 %idxprom234
  %162 = load i32*, i32** %arrayidx239, align 8
  %163 = bitcast i32* %162 to i8*
  %164 = load i32, i32* %j, align 4
  %idxprom240 = sext i32 %164 to i64
  %165 = load i32, i32* %k, align 4
  %idxprom241 = sext i32 %165 to i64
  %166 = load i32, i32* %b8.addr, align 4
  %idxprom242 = sext i32 %166 to i64
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 53
  %168 = load i32****, i32***** %cofAC, align 8
  %arrayidx243 = getelementptr inbounds i32***, i32**** %168, i64 %idxprom242
  %169 = load i32***, i32**** %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds i32**, i32*** %169, i64 %idxprom241
  %170 = load i32**, i32*** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i32*, i32** %170, i64 %idxprom240
  %171 = load i32*, i32** %arrayidx245, align 8
  %172 = bitcast i32* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %172, i64 260, i32 4, i1 false)
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.233
  %173 = load i32, i32* %j, align 4
  %inc247 = add nsw i32 %173, 1
  store i32 %inc247, i32* %j, align 4
  br label %for.cond.230

for.end.248:                                      ; preds = %for.cond.230
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end.248
  %174 = load i32, i32* %k, align 4
  %inc250 = add nsw i32 %174, 1
  store i32 %inc250, i32* %k, align 4
  br label %for.cond.226

for.end.251:                                      ; preds = %for.cond.226
  store i32 0, i32* %y, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.263, %for.end.251
  %175 = load i32, i32* %y, align 4
  %cmp253 = icmp slt i32 %175, 8
  br i1 %cmp253, label %for.body.255, label %for.end.265

for.body.255:                                     ; preds = %for.cond.252
  %176 = load i32, i32* %y, align 4
  %idxprom256 = sext i32 %176 to i64
  %arrayidx257 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %rec8x8, i32 0, i64 %idxprom256
  %177 = bitcast [8 x i16]* %arrayidx257 to i8*
  %178 = load i32, i32* %pic_pix_x, align 4
  %idxprom258 = sext i32 %178 to i64
  %179 = load i32, i32* %pic_pix_y, align 4
  %180 = load i32, i32* %y, align 4
  %add259 = add nsw i32 %179, %180
  %idxprom260 = sext i32 %add259 to i64
  %181 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %181, i32 0, i32 29
  %182 = load i16**, i16*** %imgY, align 8
  %arrayidx261 = getelementptr inbounds i16*, i16** %182, i64 %idxprom260
  %183 = load i16*, i16** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds i16, i16* %183, i64 %idxprom258
  %184 = bitcast i16* %arrayidx262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %177, i8* %184, i64 16, i32 2, i1 false)
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.body.255
  %185 = load i32, i32* %y, align 4
  %inc264 = add nsw i32 %185, 1
  store i32 %inc264, i32* %y, align 4
  br label %for.cond.252

for.end.265:                                      ; preds = %for.cond.252
  %186 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %186, i32 0, i32 98
  %187 = load i32, i32* %AdaptiveRounding, align 4
  %tobool266 = icmp ne i32 %187, 0
  br i1 %tobool266, label %if.then.267, label %if.end.287

if.then.267:                                      ; preds = %for.end.265
  %188 = load i32, i32* %block_y, align 4
  store i32 %188, i32* %j, align 4
  br label %for.cond.268

for.cond.268:                                     ; preds = %for.inc.284, %if.then.267
  %189 = load i32, i32* %j, align 4
  %190 = load i32, i32* %block_y, align 4
  %add269 = add nsw i32 %190, 8
  %cmp270 = icmp slt i32 %189, %add269
  br i1 %cmp270, label %for.body.272, label %for.end.286

for.body.272:                                     ; preds = %for.cond.268
  %191 = load i32, i32* %block_x, align 4
  %idxprom273 = sext i32 %191 to i64
  %192 = load i32, i32* %j, align 4
  %idxprom274 = sext i32 %192 to i64
  %arrayidx275 = getelementptr inbounds [2 x [16 x [16 x i32]]], [2 x [16 x [16 x i32]]]* %fadjust8x8, i32 0, i64 1
  %arrayidx276 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %arrayidx275, i32 0, i64 %idxprom274
  %arrayidx277 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx276, i32 0, i64 %idxprom273
  %193 = bitcast i32* %arrayidx277 to i8*
  %194 = load i32, i32* %block_x, align 4
  %idxprom278 = sext i32 %194 to i64
  %195 = load i32, i32* %j, align 4
  %idxprom279 = sext i32 %195 to i64
  %196 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8280 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %196, i32 0, i32 56
  %197 = load i32***, i32**** %fadjust8x8280, align 8
  %arrayidx281 = getelementptr inbounds i32**, i32*** %197, i64 1
  %198 = load i32**, i32*** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32*, i32** %198, i64 %idxprom279
  %199 = load i32*, i32** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %199, i64 %idxprom278
  %200 = bitcast i32* %arrayidx283 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %200, i64 32, i32 4, i1 false)
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.272
  %201 = load i32, i32* %j, align 4
  %inc285 = add nsw i32 %201, 1
  store i32 %inc285, i32* %j, align 4
  br label %for.cond.268

for.end.286:                                      ; preds = %for.cond.268
  br label %if.end.287

if.end.287:                                       ; preds = %for.end.286, %for.end.265
  %202 = load i32, i32* %c_nz, align 4
  store i32 %202, i32* %nonzero, align 4
  %203 = load double, double* %rdcost, align 8
  store double %203, double* %min_rdcost, align 8
  %204 = load i32, i32* %ipmode, align 4
  store i32 %204, i32* %best_ipmode, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %for.end.221
  call void @reset_coding_state_cs_cm()
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.end.176
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %lor.lhs.false.129
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.290
  %205 = load i32, i32* %ipmode, align 4
  %inc292 = add nsw i32 %205, 1
  store i32 %inc292, i32* %ipmode, align 4
  br label %for.cond

for.end.293:                                      ; preds = %for.cond
  %206 = load i32, i32* %best_ipmode, align 4
  %conv294 = trunc i32 %206 to i8
  %207 = load i32, i32* %pic_block_x, align 4
  %idxprom295 = sext i32 %207 to i64
  %208 = load i32, i32* %pic_block_y, align 4
  %idxprom296 = sext i32 %208 to i64
  %209 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8297 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %209, i32 0, i32 32
  %210 = load i8**, i8*** %ipredmode8x8297, align 8
  %arrayidx298 = getelementptr inbounds i8*, i8** %210, i64 %idxprom296
  %211 = load i8*, i8** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %211, i64 %idxprom295
  store i8 %conv294, i8* %arrayidx299, align 1
  %212 = load i32, i32* %mostProbableMode, align 4
  %213 = load i32, i32* %best_ipmode, align 4
  %cmp300 = icmp eq i32 %212, %213
  br i1 %cmp300, label %cond.true.302, label %cond.false.303

cond.true.302:                                    ; preds = %for.end.293
  br label %cond.end.311

cond.false.303:                                   ; preds = %for.end.293
  %214 = load i32, i32* %best_ipmode, align 4
  %215 = load i32, i32* %mostProbableMode, align 4
  %cmp304 = icmp slt i32 %214, %215
  br i1 %cmp304, label %cond.true.306, label %cond.false.307

cond.true.306:                                    ; preds = %cond.false.303
  %216 = load i32, i32* %best_ipmode, align 4
  br label %cond.end.309

cond.false.307:                                   ; preds = %cond.false.303
  %217 = load i32, i32* %best_ipmode, align 4
  %sub308 = sub nsw i32 %217, 1
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.307, %cond.true.306
  %cond310 = phi i32 [ %216, %cond.true.306 ], [ %sub308, %cond.false.307 ]
  br label %cond.end.311

cond.end.311:                                     ; preds = %cond.end.309, %cond.true.302
  %cond312 = phi i32 [ -1, %cond.true.302 ], [ %cond310, %cond.end.309 ]
  %conv313 = trunc i32 %cond312 to i8
  %218 = load i32, i32* %b8.addr, align 4
  %mul314 = mul nsw i32 4, %218
  %idxprom315 = sext i32 %mul314 to i64
  %219 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %intra_pred_modes8x8 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %219, i32 0, i32 11
  %arrayidx316 = getelementptr inbounds [16 x i8], [16 x i8]* %intra_pred_modes8x8, i32 0, i64 %idxprom315
  store i8 %conv313, i8* %arrayidx316, align 1
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 36
  %221 = load i32, i32* %mb_y, align 4
  %mul317 = mul nsw i32 %221, 4
  %222 = load i32, i32* %b8.addr, align 4
  %shr318 = ashr i32 %222, 1
  %mul319 = mul nsw i32 %shr318, 2
  %add320 = add nsw i32 %mul317, %mul319
  store i32 %add320, i32* %j, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.340, %cond.end.311
  %223 = load i32, i32* %j, align 4
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_y322 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 36
  %225 = load i32, i32* %mb_y322, align 4
  %mul323 = mul nsw i32 %225, 4
  %226 = load i32, i32* %b8.addr, align 4
  %shr324 = ashr i32 %226, 1
  %mul325 = mul nsw i32 %shr324, 2
  %add326 = add nsw i32 %mul323, %mul325
  %add327 = add nsw i32 %add326, 2
  %cmp328 = icmp slt i32 %223, %add327
  br i1 %cmp328, label %for.body.330, label %for.end.342

for.body.330:                                     ; preds = %for.cond.321
  %227 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mb_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %227, i32 0, i32 35
  %228 = load i32, i32* %mb_x, align 4
  %mul331 = mul nsw i32 %228, 4
  %229 = load i32, i32* %b8.addr, align 4
  %and332 = and i32 %229, 1
  %mul333 = mul nsw i32 %and332, 2
  %add334 = add nsw i32 %mul331, %mul333
  %idxprom335 = sext i32 %add334 to i64
  %230 = load i32, i32* %j, align 4
  %idxprom336 = sext i32 %230 to i64
  %231 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %ipredmode8x8337 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %231, i32 0, i32 32
  %232 = load i8**, i8*** %ipredmode8x8337, align 8
  %arrayidx338 = getelementptr inbounds i8*, i8** %232, i64 %idxprom336
  %233 = load i8*, i8** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i8, i8* %233, i64 %idxprom335
  %234 = load i32, i32* %best_ipmode, align 4
  %235 = trunc i32 %234 to i8
  call void @llvm.memset.p0i8.i64(i8* %arrayidx339, i8 %235, i64 2, i32 1, i1 false)
  br label %for.inc.340

for.inc.340:                                      ; preds = %for.body.330
  %236 = load i32, i32* %j, align 4
  %inc341 = add nsw i32 %236, 1
  store i32 %inc341, i32* %j, align 4
  br label %for.cond.321

for.end.342:                                      ; preds = %for.cond.321
  %237 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %rdopt343 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %237, i32 0, i32 113
  %238 = load i32, i32* %rdopt343, align 4
  %tobool344 = icmp ne i32 %238, 0
  br i1 %tobool344, label %if.else.393, label %if.then.345

if.then.345:                                      ; preds = %for.end.342
  store i32 0, i32* %j, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.389, %if.then.345
  %239 = load i32, i32* %j, align 4
  %cmp347 = icmp slt i32 %239, 8
  br i1 %cmp347, label %for.body.349, label %for.end.391

for.body.349:                                     ; preds = %for.cond.346
  %240 = load i32, i32* %block_x, align 4
  %idxprom350 = sext i32 %240 to i64
  %241 = load i32, i32* %block_y, align 4
  %242 = load i32, i32* %j, align 4
  %add351 = add nsw i32 %241, %242
  %idxprom352 = sext i32 %add351 to i64
  %243 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr353 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %243, i32 0, i32 51
  %arrayidx354 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr353, i32 0, i64 %idxprom352
  %arrayidx355 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx354, i32 0, i64 %idxprom350
  %244 = bitcast i16* %arrayidx355 to i8*
  %245 = load i32, i32* %j, align 4
  %idxprom356 = sext i32 %245 to i64
  %246 = load i32, i32* %best_ipmode, align 4
  %idxprom357 = sext i32 %246 to i64
  %247 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3358 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %247, i32 0, i32 49
  %arrayidx359 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3358, i32 0, i64 %idxprom357
  %arrayidx360 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx359, i32 0, i64 %idxprom356
  %248 = bitcast [8 x i16]* %arrayidx360 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %244, i8* %248, i64 16, i32 2, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.361

for.cond.361:                                     ; preds = %for.inc.386, %for.body.349
  %249 = load i32, i32* %i, align 4
  %cmp362 = icmp slt i32 %249, 8
  br i1 %cmp362, label %for.body.364, label %for.end.388

for.body.364:                                     ; preds = %for.cond.361
  %250 = load i32, i32* %pic_opix_x, align 4
  %251 = load i32, i32* %i, align 4
  %add365 = add nsw i32 %250, %251
  %idxprom366 = sext i32 %add365 to i64
  %252 = load i32, i32* %pic_opix_y, align 4
  %253 = load i32, i32* %j, align 4
  %add367 = add nsw i32 %252, %253
  %idxprom368 = sext i32 %add367 to i64
  %254 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx369 = getelementptr inbounds i16*, i16** %254, i64 %idxprom368
  %255 = load i16*, i16** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i16, i16* %255, i64 %idxprom366
  %256 = load i16, i16* %arrayidx370, align 2
  %conv371 = zext i16 %256 to i32
  %257 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %257 to i64
  %258 = load i32, i32* %j, align 4
  %idxprom373 = sext i32 %258 to i64
  %259 = load i32, i32* %best_ipmode, align 4
  %idxprom374 = sext i32 %259 to i64
  %260 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3375 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %260, i32 0, i32 49
  %arrayidx376 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3375, i32 0, i64 %idxprom374
  %arrayidx377 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx376, i32 0, i64 %idxprom373
  %arrayidx378 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx377, i32 0, i64 %idxprom372
  %261 = load i16, i16* %arrayidx378, align 2
  %conv379 = zext i16 %261 to i32
  %sub380 = sub nsw i32 %conv371, %conv379
  %262 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %262 to i64
  %263 = load i32, i32* %j, align 4
  %idxprom382 = sext i32 %263 to i64
  %264 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7383 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %264, i32 0, i32 52
  %arrayidx384 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7383, i32 0, i64 %idxprom382
  %arrayidx385 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx384, i32 0, i64 %idxprom381
  store i32 %sub380, i32* %arrayidx385, align 4
  br label %for.inc.386

for.inc.386:                                      ; preds = %for.body.364
  %265 = load i32, i32* %i, align 4
  %inc387 = add nsw i32 %265, 1
  store i32 %inc387, i32* %i, align 4
  br label %for.cond.361

for.end.388:                                      ; preds = %for.cond.361
  br label %for.inc.389

for.inc.389:                                      ; preds = %for.end.388
  %266 = load i32, i32* %j, align 4
  %inc390 = add nsw i32 %266, 1
  store i32 %inc390, i32* %j, align 4
  br label %for.cond.346

for.end.391:                                      ; preds = %for.cond.346
  %267 = load i32, i32* %b8.addr, align 4
  %call392 = call i32 @dct_luma8x8(i32 %267, i32* %dummy, i32 1)
  store i32 %call392, i32* %nonzero, align 4
  br label %if.end.471

if.else.393:                                      ; preds = %for.end.342
  store i32 0, i32* %k, align 4
  br label %for.cond.394

for.cond.394:                                     ; preds = %for.inc.418, %if.else.393
  %268 = load i32, i32* %k, align 4
  %cmp395 = icmp slt i32 %268, 4
  br i1 %cmp395, label %for.body.397, label %for.end.420

for.body.397:                                     ; preds = %for.cond.394
  store i32 0, i32* %j, align 4
  br label %for.cond.398

for.cond.398:                                     ; preds = %for.inc.415, %for.body.397
  %269 = load i32, i32* %j, align 4
  %cmp399 = icmp slt i32 %269, 2
  br i1 %cmp399, label %for.body.401, label %for.end.417

for.body.401:                                     ; preds = %for.cond.398
  %270 = load i32, i32* %j, align 4
  %idxprom402 = sext i32 %270 to i64
  %271 = load i32, i32* %k, align 4
  %idxprom403 = sext i32 %271 to i64
  %272 = load i32, i32* %b8.addr, align 4
  %idxprom404 = sext i32 %272 to i64
  %273 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC405 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %273, i32 0, i32 53
  %274 = load i32****, i32***** %cofAC405, align 8
  %arrayidx406 = getelementptr inbounds i32***, i32**** %274, i64 %idxprom404
  %275 = load i32***, i32**** %arrayidx406, align 8
  %arrayidx407 = getelementptr inbounds i32**, i32*** %275, i64 %idxprom403
  %276 = load i32**, i32*** %arrayidx407, align 8
  %arrayidx408 = getelementptr inbounds i32*, i32** %276, i64 %idxprom402
  %277 = load i32*, i32** %arrayidx408, align 8
  %278 = bitcast i32* %277 to i8*
  %279 = load i32, i32* %j, align 4
  %idxprom409 = sext i32 %279 to i64
  %280 = load i32, i32* %k, align 4
  %idxprom410 = sext i32 %280 to i64
  %281 = load i32, i32* %b8.addr, align 4
  %idxprom411 = sext i32 %281 to i64
  %282 = load i32****, i32***** @cofAC8x8, align 8
  %arrayidx412 = getelementptr inbounds i32***, i32**** %282, i64 %idxprom411
  %283 = load i32***, i32**** %arrayidx412, align 8
  %arrayidx413 = getelementptr inbounds i32**, i32*** %283, i64 %idxprom410
  %284 = load i32**, i32*** %arrayidx413, align 8
  %arrayidx414 = getelementptr inbounds i32*, i32** %284, i64 %idxprom409
  %285 = load i32*, i32** %arrayidx414, align 8
  %286 = bitcast i32* %285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %278, i8* %286, i64 260, i32 4, i1 false)
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.body.401
  %287 = load i32, i32* %j, align 4
  %inc416 = add nsw i32 %287, 1
  store i32 %inc416, i32* %j, align 4
  br label %for.cond.398

for.end.417:                                      ; preds = %for.cond.398
  br label %for.inc.418

for.inc.418:                                      ; preds = %for.end.417
  %288 = load i32, i32* %k, align 4
  %inc419 = add nsw i32 %288, 1
  store i32 %inc419, i32* %k, align 4
  br label %for.cond.394

for.end.420:                                      ; preds = %for.cond.394
  %289 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding421 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %289, i32 0, i32 98
  %290 = load i32, i32* %AdaptiveRounding421, align 4
  %tobool422 = icmp ne i32 %290, 0
  br i1 %tobool422, label %if.then.423, label %if.end.444

if.then.423:                                      ; preds = %for.end.420
  store i32 0, i32* %j, align 4
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.441, %if.then.423
  %291 = load i32, i32* %j, align 4
  %cmp425 = icmp slt i32 %291, 8
  br i1 %cmp425, label %for.body.427, label %for.end.443

for.body.427:                                     ; preds = %for.cond.424
  %292 = load i32, i32* %block_x, align 4
  %idxprom428 = sext i32 %292 to i64
  %293 = load i32, i32* %block_y, align 4
  %294 = load i32, i32* %j, align 4
  %add429 = add nsw i32 %293, %294
  %idxprom430 = sext i32 %add429 to i64
  %295 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8431 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %295, i32 0, i32 56
  %296 = load i32***, i32**** %fadjust8x8431, align 8
  %arrayidx432 = getelementptr inbounds i32**, i32*** %296, i64 1
  %297 = load i32**, i32*** %arrayidx432, align 8
  %arrayidx433 = getelementptr inbounds i32*, i32** %297, i64 %idxprom430
  %298 = load i32*, i32** %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds i32, i32* %298, i64 %idxprom428
  %299 = bitcast i32* %arrayidx434 to i8*
  %300 = load i32, i32* %block_x, align 4
  %idxprom435 = sext i32 %300 to i64
  %301 = load i32, i32* %block_y, align 4
  %302 = load i32, i32* %j, align 4
  %add436 = add nsw i32 %301, %302
  %idxprom437 = sext i32 %add436 to i64
  %arrayidx438 = getelementptr inbounds [2 x [16 x [16 x i32]]], [2 x [16 x [16 x i32]]]* %fadjust8x8, i32 0, i64 1
  %arrayidx439 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %arrayidx438, i32 0, i64 %idxprom437
  %arrayidx440 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx439, i32 0, i64 %idxprom435
  %303 = bitcast i32* %arrayidx440 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %299, i8* %303, i64 32, i32 4, i1 false)
  br label %for.inc.441

for.inc.441:                                      ; preds = %for.body.427
  %304 = load i32, i32* %j, align 4
  %inc442 = add nsw i32 %304, 1
  store i32 %inc442, i32* %j, align 4
  br label %for.cond.424

for.end.443:                                      ; preds = %for.cond.424
  br label %if.end.444

if.end.444:                                       ; preds = %for.end.443, %for.end.420
  store i32 0, i32* %y, align 4
  br label %for.cond.445

for.cond.445:                                     ; preds = %for.inc.468, %if.end.444
  %305 = load i32, i32* %y, align 4
  %cmp446 = icmp slt i32 %305, 8
  br i1 %cmp446, label %for.body.448, label %for.end.470

for.body.448:                                     ; preds = %for.cond.445
  %306 = load i32, i32* %pic_pix_x, align 4
  %idxprom449 = sext i32 %306 to i64
  %307 = load i32, i32* %pic_pix_y, align 4
  %308 = load i32, i32* %y, align 4
  %add450 = add nsw i32 %307, %308
  %idxprom451 = sext i32 %add450 to i64
  %309 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY452 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %309, i32 0, i32 29
  %310 = load i16**, i16*** %imgY452, align 8
  %arrayidx453 = getelementptr inbounds i16*, i16** %310, i64 %idxprom451
  %311 = load i16*, i16** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %311, i64 %idxprom449
  %312 = bitcast i16* %arrayidx454 to i8*
  %313 = load i32, i32* %y, align 4
  %idxprom455 = sext i32 %313 to i64
  %arrayidx456 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %rec8x8, i32 0, i64 %idxprom455
  %314 = bitcast [8 x i16]* %arrayidx456 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %312, i8* %314, i64 16, i32 2, i1 false)
  %315 = load i32, i32* %block_x, align 4
  %idxprom457 = sext i32 %315 to i64
  %316 = load i32, i32* %block_y, align 4
  %317 = load i32, i32* %y, align 4
  %add458 = add nsw i32 %316, %317
  %idxprom459 = sext i32 %add458 to i64
  %318 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr460 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %318, i32 0, i32 51
  %arrayidx461 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr460, i32 0, i64 %idxprom459
  %arrayidx462 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx461, i32 0, i64 %idxprom457
  %319 = bitcast i16* %arrayidx462 to i8*
  %320 = load i32, i32* %y, align 4
  %idxprom463 = sext i32 %320 to i64
  %321 = load i32, i32* %best_ipmode, align 4
  %idxprom464 = sext i32 %321 to i64
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3465 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 49
  %arrayidx466 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3465, i32 0, i64 %idxprom464
  %arrayidx467 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx466, i32 0, i64 %idxprom463
  %323 = bitcast [8 x i16]* %arrayidx467 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %319, i8* %323, i64 16, i32 2, i1 false)
  br label %for.inc.468

for.inc.468:                                      ; preds = %for.body.448
  %324 = load i32, i32* %y, align 4
  %inc469 = add nsw i32 %324, 1
  store i32 %inc469, i32* %y, align 4
  br label %for.cond.445

for.end.470:                                      ; preds = %for.cond.445
  br label %if.end.471

if.end.471:                                       ; preds = %for.end.470, %for.end.391
  %325 = load i32, i32* %nonzero, align 4
  ret i32 %325
}

declare void @getLuma4x4Neighbour(i32, i32, i32, %struct.pix_pos*) #2

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
  %imgY = alloca i16**, align 8
  %imgYpel = alloca i16*, align 8
  %cur_pred = alloca [8 x i16]*, align 8
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
  %imgY1 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %0, i32 0, i32 29
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
  %7 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %8 = load i32, i32* %mb_nr, align 4
  %9 = load i32, i32* %ioff, align 4
  %sub = sub nsw i32 %9, 1
  %10 = load i32, i32* %joff, align 4
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %10, %11
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom
  call void %7(i32 %8, i32 %sub, i32 %add, i32 0, %struct.pix_pos* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %15 = load i32, i32* %mb_nr, align 4
  %16 = load i32, i32* %ioff, align 4
  %17 = load i32, i32* %joff, align 4
  %sub3 = sub nsw i32 %17, 1
  call void %14(i32 %15, i32 %16, i32 %sub3, i32 0, %struct.pix_pos* %pix_b)
  %18 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %19 = load i32, i32* %mb_nr, align 4
  %20 = load i32, i32* %ioff, align 4
  %add4 = add nsw i32 %20, 8
  %21 = load i32, i32* %joff, align 4
  %sub5 = sub nsw i32 %21, 1
  call void %18(i32 %19, i32 %add4, i32 %sub5, i32 0, %struct.pix_pos* %pix_c)
  %22 = load void (i32, i32, i32, i32, %struct.pix_pos*)*, void (i32, i32, i32, i32, %struct.pix_pos*)** @getNeighbour, align 8
  %23 = load i32, i32* %mb_nr, align 4
  %24 = load i32, i32* %ioff, align 4
  %sub6 = sub nsw i32 %24, 1
  %25 = load i32, i32* %joff, align 4
  %sub7 = sub nsw i32 %25, 1
  call void %22(i32 %23, i32 %sub6, i32 %sub7, i32 0, %struct.pix_pos* %pix_d)
  %available = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %26 = load i32, i32* %available, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %land.rhs, label %land.end.11

land.rhs:                                         ; preds = %for.end
  %27 = load i32, i32* %ioff, align 4
  %cmp8 = icmp eq i32 %27, 8
  br i1 %cmp8, label %land.rhs.9, label %land.end

land.rhs.9:                                       ; preds = %land.rhs
  %28 = load i32, i32* %joff, align 4
  %cmp10 = icmp eq i32 %28, 8
  br label %land.end

land.end:                                         ; preds = %land.rhs.9, %land.rhs
  %29 = phi i1 [ false, %land.rhs ], [ %cmp10, %land.rhs.9 ]
  %lnot = xor i1 %29, true
  br label %land.end.11

land.end.11:                                      ; preds = %land.end, %for.end
  %30 = phi i1 [ false, %for.end ], [ %lnot, %land.end ]
  %land.ext = zext i1 %30 to i32
  %available12 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  store i32 %land.ext, i32* %available12, align 4
  %31 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %UseConstrainedIntraPred = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %31, i32 0, i32 23
  %32 = load i32, i32* %UseConstrainedIntraPred, align 4
  %tobool13 = icmp ne i32 %32, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %land.end.11
  store i32 0, i32* %i, align 4
  store i32 1, i32* %block_available_left, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.26, %if.then
  %33 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %33, 8
  br i1 %cmp15, label %for.body.16, label %for.end.28

for.body.16:                                      ; preds = %for.cond.14
  %34 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %34 to i64
  %arrayidx18 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom17
  %available19 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx18, i32 0, i32 0
  %35 = load i32, i32* %available19, align 4
  %tobool20 = icmp ne i32 %35, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.16
  %36 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 %idxprom21
  %mb_addr = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx22, i32 0, i32 1
  %37 = load i32, i32* %mb_addr, align 4
  %idxprom23 = sext i32 %37 to i64
  %38 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %38, i32 0, i32 63
  %39 = load i32*, i32** %intra_block, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %39, i64 %idxprom23
  %40 = load i32, i32* %arrayidx24, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ 0, %cond.false ]
  %41 = load i32, i32* %block_available_left, align 4
  %and25 = and i32 %41, %cond
  store i32 %and25, i32* %block_available_left, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %cond.end
  %42 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %42, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.14

for.end.28:                                       ; preds = %for.cond.14
  %available29 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 0
  %43 = load i32, i32* %available29, align 4
  %tobool30 = icmp ne i32 %43, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.36

cond.true.31:                                     ; preds = %for.end.28
  %mb_addr32 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 1
  %44 = load i32, i32* %mb_addr32, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block34 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %45, i32 0, i32 63
  %46 = load i32*, i32** %intra_block34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %46, i64 %idxprom33
  %47 = load i32, i32* %arrayidx35, align 4
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.end.28
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.31
  %cond38 = phi i32 [ %47, %cond.true.31 ], [ 0, %cond.false.36 ]
  store i32 %cond38, i32* %block_available_up, align 4
  %available39 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %48 = load i32, i32* %available39, align 4
  %tobool40 = icmp ne i32 %48, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.46

cond.true.41:                                     ; preds = %cond.end.37
  %mb_addr42 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 1
  %49 = load i32, i32* %mb_addr42, align 4
  %idxprom43 = sext i32 %49 to i64
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block44 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 63
  %51 = load i32*, i32** %intra_block44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %51, i64 %idxprom43
  %52 = load i32, i32* %arrayidx45, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %cond.end.37
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.41
  %cond48 = phi i32 [ %52, %cond.true.41 ], [ 0, %cond.false.46 ]
  store i32 %cond48, i32* %block_available_up_right, align 4
  %available49 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 0
  %53 = load i32, i32* %available49, align 4
  %tobool50 = icmp ne i32 %53, 0
  br i1 %tobool50, label %cond.true.51, label %cond.false.56

cond.true.51:                                     ; preds = %cond.end.47
  %mb_addr52 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 1
  %54 = load i32, i32* %mb_addr52, align 4
  %idxprom53 = sext i32 %54 to i64
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %intra_block54 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 63
  %56 = load i32*, i32** %intra_block54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %56, i64 %idxprom53
  %57 = load i32, i32* %arrayidx55, align 4
  br label %cond.end.57

cond.false.56:                                    ; preds = %cond.end.47
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.56, %cond.true.51
  %cond58 = phi i32 [ %57, %cond.true.51 ], [ 0, %cond.false.56 ]
  store i32 %cond58, i32* %block_available_up_left, align 4
  br label %if.end

if.else:                                          ; preds = %land.end.11
  %arrayidx59 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %available60 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx59, i32 0, i32 0
  %58 = load i32, i32* %available60, align 4
  store i32 %58, i32* %block_available_left, align 4
  %available61 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 0
  %59 = load i32, i32* %available61, align 4
  store i32 %59, i32* %block_available_up, align 4
  %available62 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 0
  %60 = load i32, i32* %available62, align 4
  store i32 %60, i32* %block_available_up_right, align 4
  %available63 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 0
  %61 = load i32, i32* %available63, align 4
  store i32 %61, i32* %block_available_up_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end.57
  %62 = load i32, i32* %block_available_left, align 4
  %63 = load i32*, i32** %left_available.addr, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %block_available_up, align 4
  %65 = load i32*, i32** %up_available.addr, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %block_available_up, align 4
  %tobool64 = icmp ne i32 %66, 0
  br i1 %tobool64, label %land.lhs.true, label %land.end.68

land.lhs.true:                                    ; preds = %if.end
  %67 = load i32, i32* %block_available_left, align 4
  %tobool65 = icmp ne i32 %67, 0
  br i1 %tobool65, label %land.rhs.66, label %land.end.68

land.rhs.66:                                      ; preds = %land.lhs.true
  %68 = load i32, i32* %block_available_up_left, align 4
  %tobool67 = icmp ne i32 %68, 0
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.66, %land.lhs.true, %if.end
  %69 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool67, %land.rhs.66 ]
  %land.ext69 = zext i1 %69 to i32
  %70 = load i32*, i32** %all_available.addr, align 8
  store i32 %land.ext69, i32* %70, align 4
  %71 = load i32, i32* %img_x.addr, align 4
  %and70 = and i32 %71, 15
  store i32 %and70, i32* %i, align 4
  %72 = load i32, i32* %img_y.addr, align 4
  %and71 = and i32 %72, 15
  store i32 %and71, i32* %j, align 4
  %73 = load i32, i32* %block_available_up, align 4
  %tobool72 = icmp ne i32 %73, 0
  br i1 %tobool72, label %if.then.73, label %if.else.84

if.then.73:                                       ; preds = %land.end.68
  %pos_x = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 4
  %74 = load i32, i32* %pos_x, align 4
  %idxprom74 = sext i32 %74 to i64
  %pos_y = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_b, i32 0, i32 5
  %75 = load i32, i32* %pos_y, align 4
  %idxprom75 = sext i32 %75 to i64
  %76 = load i16**, i16*** %imgY, align 8
  %arrayidx76 = getelementptr inbounds i16*, i16** %76, i64 %idxprom75
  %77 = load i16*, i16** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i16, i16* %77, i64 %idxprom74
  store i16* %arrayidx77, i16** %imgYpel, align 8
  %78 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %78, i32 1
  store i16* %incdec.ptr, i16** %imgYpel, align 8
  %79 = load i16, i16* %78, align 2
  store i16 %79, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %80 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr78 = getelementptr inbounds i16, i16* %80, i32 1
  store i16* %incdec.ptr78, i16** %imgYpel, align 8
  %81 = load i16, i16* %80, align 2
  store i16 %81, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %82 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr79 = getelementptr inbounds i16, i16* %82, i32 1
  store i16* %incdec.ptr79, i16** %imgYpel, align 8
  %83 = load i16, i16* %82, align 2
  store i16 %83, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %84 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr80 = getelementptr inbounds i16, i16* %84, i32 1
  store i16* %incdec.ptr80, i16** %imgYpel, align 8
  %85 = load i16, i16* %84, align 2
  store i16 %85, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %86 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr81 = getelementptr inbounds i16, i16* %86, i32 1
  store i16* %incdec.ptr81, i16** %imgYpel, align 8
  %87 = load i16, i16* %86, align 2
  store i16 %87, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %88 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr82 = getelementptr inbounds i16, i16* %88, i32 1
  store i16* %incdec.ptr82, i16** %imgYpel, align 8
  %89 = load i16, i16* %88, align 2
  store i16 %89, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %90 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr83 = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %incdec.ptr83, i16** %imgYpel, align 8
  %91 = load i16, i16* %90, align 2
  store i16 %91, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %92 = load i16*, i16** %imgYpel, align 8
  %93 = load i16, i16* %92, align 2
  store i16 %93, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  br label %if.end.85

if.else.84:                                       ; preds = %land.end.68
  %94 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_luma = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %94, i32 0, i32 154
  %95 = load i32, i32* %dc_pred_value_luma, align 4
  %conv = trunc i32 %95 to i16
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  store i16 %conv, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.84, %if.then.73
  %96 = load i32, i32* %block_available_up_right, align 4
  %tobool86 = icmp ne i32 %96, 0
  br i1 %tobool86, label %if.then.87, label %if.else.101

if.then.87:                                       ; preds = %if.end.85
  %pos_x88 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 4
  %97 = load i32, i32* %pos_x88, align 4
  %idxprom89 = sext i32 %97 to i64
  %pos_y90 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_c, i32 0, i32 5
  %98 = load i32, i32* %pos_y90, align 4
  %idxprom91 = sext i32 %98 to i64
  %99 = load i16**, i16*** %imgY, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %99, i64 %idxprom91
  %100 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %100, i64 %idxprom89
  store i16* %arrayidx93, i16** %imgYpel, align 8
  %101 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr94 = getelementptr inbounds i16, i16* %101, i32 1
  store i16* %incdec.ptr94, i16** %imgYpel, align 8
  %102 = load i16, i16* %101, align 2
  store i16 %102, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %103 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr95 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %incdec.ptr95, i16** %imgYpel, align 8
  %104 = load i16, i16* %103, align 2
  store i16 %104, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %105 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr96 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %incdec.ptr96, i16** %imgYpel, align 8
  %106 = load i16, i16* %105, align 2
  store i16 %106, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %107 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr97 = getelementptr inbounds i16, i16* %107, i32 1
  store i16* %incdec.ptr97, i16** %imgYpel, align 8
  %108 = load i16, i16* %107, align 2
  store i16 %108, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  %109 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr98 = getelementptr inbounds i16, i16* %109, i32 1
  store i16* %incdec.ptr98, i16** %imgYpel, align 8
  %110 = load i16, i16* %109, align 2
  store i16 %110, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 13), align 2
  %111 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr99 = getelementptr inbounds i16, i16* %111, i32 1
  store i16* %incdec.ptr99, i16** %imgYpel, align 8
  %112 = load i16, i16* %111, align 2
  store i16 %112, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 14), align 2
  %113 = load i16*, i16** %imgYpel, align 8
  %incdec.ptr100 = getelementptr inbounds i16, i16* %113, i32 1
  store i16* %incdec.ptr100, i16** %imgYpel, align 8
  %114 = load i16, i16* %113, align 2
  store i16 %114, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 15), align 2
  %115 = load i16*, i16** %imgYpel, align 8
  %116 = load i16, i16* %115, align 2
  store i16 %116, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 16), align 2
  br label %if.end.102

if.else.101:                                      ; preds = %if.end.85
  %117 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 16), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 15), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 14), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 13), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  store i16 %117, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.101, %if.then.87
  %118 = load i32, i32* %block_available_left, align 4
  %tobool103 = icmp ne i32 %118, 0
  br i1 %tobool103, label %if.then.104, label %if.else.169

if.then.104:                                      ; preds = %if.end.102
  %arrayidx105 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %pos_x106 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx105, i32 0, i32 4
  %119 = load i32, i32* %pos_x106, align 4
  %idxprom107 = sext i32 %119 to i64
  %arrayidx108 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 0
  %pos_y109 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx108, i32 0, i32 5
  %120 = load i32, i32* %pos_y109, align 4
  %idxprom110 = sext i32 %120 to i64
  %121 = load i16**, i16*** %imgY, align 8
  %arrayidx111 = getelementptr inbounds i16*, i16** %121, i64 %idxprom110
  %122 = load i16*, i16** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %122, i64 %idxprom107
  %123 = load i16, i16* %arrayidx112, align 2
  store i16 %123, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %arrayidx113 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 1
  %pos_x114 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx113, i32 0, i32 4
  %124 = load i32, i32* %pos_x114, align 4
  %idxprom115 = sext i32 %124 to i64
  %arrayidx116 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 1
  %pos_y117 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx116, i32 0, i32 5
  %125 = load i32, i32* %pos_y117, align 4
  %idxprom118 = sext i32 %125 to i64
  %126 = load i16**, i16*** %imgY, align 8
  %arrayidx119 = getelementptr inbounds i16*, i16** %126, i64 %idxprom118
  %127 = load i16*, i16** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i16, i16* %127, i64 %idxprom115
  %128 = load i16, i16* %arrayidx120, align 2
  store i16 %128, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %arrayidx121 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 2
  %pos_x122 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx121, i32 0, i32 4
  %129 = load i32, i32* %pos_x122, align 4
  %idxprom123 = sext i32 %129 to i64
  %arrayidx124 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 2
  %pos_y125 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx124, i32 0, i32 5
  %130 = load i32, i32* %pos_y125, align 4
  %idxprom126 = sext i32 %130 to i64
  %131 = load i16**, i16*** %imgY, align 8
  %arrayidx127 = getelementptr inbounds i16*, i16** %131, i64 %idxprom126
  %132 = load i16*, i16** %arrayidx127, align 8
  %arrayidx128 = getelementptr inbounds i16, i16* %132, i64 %idxprom123
  %133 = load i16, i16* %arrayidx128, align 2
  store i16 %133, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %arrayidx129 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 3
  %pos_x130 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx129, i32 0, i32 4
  %134 = load i32, i32* %pos_x130, align 4
  %idxprom131 = sext i32 %134 to i64
  %arrayidx132 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 3
  %pos_y133 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx132, i32 0, i32 5
  %135 = load i32, i32* %pos_y133, align 4
  %idxprom134 = sext i32 %135 to i64
  %136 = load i16**, i16*** %imgY, align 8
  %arrayidx135 = getelementptr inbounds i16*, i16** %136, i64 %idxprom134
  %137 = load i16*, i16** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i16, i16* %137, i64 %idxprom131
  %138 = load i16, i16* %arrayidx136, align 2
  store i16 %138, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %arrayidx137 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 4
  %pos_x138 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx137, i32 0, i32 4
  %139 = load i32, i32* %pos_x138, align 4
  %idxprom139 = sext i32 %139 to i64
  %arrayidx140 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 4
  %pos_y141 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx140, i32 0, i32 5
  %140 = load i32, i32* %pos_y141, align 4
  %idxprom142 = sext i32 %140 to i64
  %141 = load i16**, i16*** %imgY, align 8
  %arrayidx143 = getelementptr inbounds i16*, i16** %141, i64 %idxprom142
  %142 = load i16*, i16** %arrayidx143, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %142, i64 %idxprom139
  %143 = load i16, i16* %arrayidx144, align 2
  store i16 %143, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %arrayidx145 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 5
  %pos_x146 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx145, i32 0, i32 4
  %144 = load i32, i32* %pos_x146, align 4
  %idxprom147 = sext i32 %144 to i64
  %arrayidx148 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 5
  %pos_y149 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx148, i32 0, i32 5
  %145 = load i32, i32* %pos_y149, align 4
  %idxprom150 = sext i32 %145 to i64
  %146 = load i16**, i16*** %imgY, align 8
  %arrayidx151 = getelementptr inbounds i16*, i16** %146, i64 %idxprom150
  %147 = load i16*, i16** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i16, i16* %147, i64 %idxprom147
  %148 = load i16, i16* %arrayidx152, align 2
  store i16 %148, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %arrayidx153 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 6
  %pos_x154 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx153, i32 0, i32 4
  %149 = load i32, i32* %pos_x154, align 4
  %idxprom155 = sext i32 %149 to i64
  %arrayidx156 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 6
  %pos_y157 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx156, i32 0, i32 5
  %150 = load i32, i32* %pos_y157, align 4
  %idxprom158 = sext i32 %150 to i64
  %151 = load i16**, i16*** %imgY, align 8
  %arrayidx159 = getelementptr inbounds i16*, i16** %151, i64 %idxprom158
  %152 = load i16*, i16** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %152, i64 %idxprom155
  %153 = load i16, i16* %arrayidx160, align 2
  store i16 %153, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %arrayidx161 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 7
  %pos_x162 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx161, i32 0, i32 4
  %154 = load i32, i32* %pos_x162, align 4
  %idxprom163 = sext i32 %154 to i64
  %arrayidx164 = getelementptr inbounds [8 x %struct.pix_pos], [8 x %struct.pix_pos]* %pix_a, i32 0, i64 7
  %pos_y165 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %arrayidx164, i32 0, i32 5
  %155 = load i32, i32* %pos_y165, align 4
  %idxprom166 = sext i32 %155 to i64
  %156 = load i16**, i16*** %imgY, align 8
  %arrayidx167 = getelementptr inbounds i16*, i16** %156, i64 %idxprom166
  %157 = load i16*, i16** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %157, i64 %idxprom163
  %158 = load i16, i16* %arrayidx168, align 2
  store i16 %158, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  br label %if.end.172

if.else.169:                                      ; preds = %if.end.102
  %159 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_luma170 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %159, i32 0, i32 154
  %160 = load i32, i32* %dc_pred_value_luma170, align 4
  %conv171 = trunc i32 %160 to i16
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  store i16 %conv171, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.169, %if.then.104
  %161 = load i32, i32* %block_available_up_left, align 4
  %tobool173 = icmp ne i32 %161, 0
  br i1 %tobool173, label %if.then.174, label %if.else.181

if.then.174:                                      ; preds = %if.end.172
  %pos_x175 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 4
  %162 = load i32, i32* %pos_x175, align 4
  %idxprom176 = sext i32 %162 to i64
  %pos_y177 = getelementptr inbounds %struct.pix_pos, %struct.pix_pos* %pix_d, i32 0, i32 5
  %163 = load i32, i32* %pos_y177, align 4
  %idxprom178 = sext i32 %163 to i64
  %164 = load i16**, i16*** %imgY, align 8
  %arrayidx179 = getelementptr inbounds i16*, i16** %164, i64 %idxprom178
  %165 = load i16*, i16** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i16, i16* %165, i64 %idxprom176
  %166 = load i16, i16* %arrayidx180, align 2
  store i16 %166, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  br label %if.end.184

if.else.181:                                      ; preds = %if.end.172
  %167 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_luma182 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %167, i32 0, i32 154
  %168 = load i32, i32* %dc_pred_value_luma182, align 4
  %conv183 = trunc i32 %168 to i16
  store i16 %conv183, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.181, %if.then.174
  store i32 0, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.193, %if.end.184
  %169 = load i32, i32* %i, align 4
  %cmp186 = icmp slt i32 %169, 9
  br i1 %cmp186, label %for.body.188, label %for.end.195

for.body.188:                                     ; preds = %for.cond.185
  %170 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %170 to i64
  %171 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %171, i32 0, i32 49
  %arrayidx190 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3, i32 0, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx190, i32 0, i64 0
  %arrayidx192 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx191, i32 0, i64 0
  store i16 -1, i16* %arrayidx192, align 2
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.188
  %172 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %172, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.185

for.end.195:                                      ; preds = %for.cond.185
  %173 = load i32, i32* %block_available_up_left, align 4
  %174 = load i32, i32* %block_available_up, align 4
  %175 = load i32, i32* %block_available_left, align 4
  call void @LowPassForIntra8x8Pred(i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), i32 %173, i32 %174, i32 %175)
  store i32 0, i32* %s0, align 4
  %176 = load i32, i32* %block_available_up, align 4
  %tobool196 = icmp ne i32 %176, 0
  br i1 %tobool196, label %land.lhs.true.197, label %if.else.231

land.lhs.true.197:                                ; preds = %for.end.195
  %177 = load i32, i32* %block_available_left, align 4
  %tobool198 = icmp ne i32 %177, 0
  br i1 %tobool198, label %if.then.199, label %if.else.231

if.then.199:                                      ; preds = %land.lhs.true.197
  %178 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv200 = zext i16 %178 to i32
  %179 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv201 = zext i16 %179 to i32
  %add202 = add nsw i32 %conv200, %conv201
  %180 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv203 = zext i16 %180 to i32
  %add204 = add nsw i32 %add202, %conv203
  %181 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv205 = zext i16 %181 to i32
  %add206 = add nsw i32 %add204, %conv205
  %182 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv207 = zext i16 %182 to i32
  %add208 = add nsw i32 %add206, %conv207
  %183 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv209 = zext i16 %183 to i32
  %add210 = add nsw i32 %add208, %conv209
  %184 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv211 = zext i16 %184 to i32
  %add212 = add nsw i32 %add210, %conv211
  %185 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv213 = zext i16 %185 to i32
  %add214 = add nsw i32 %add212, %conv213
  %186 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv215 = zext i16 %186 to i32
  %add216 = add nsw i32 %add214, %conv215
  %187 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv217 = zext i16 %187 to i32
  %add218 = add nsw i32 %add216, %conv217
  %188 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv219 = zext i16 %188 to i32
  %add220 = add nsw i32 %add218, %conv219
  %189 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv221 = zext i16 %189 to i32
  %add222 = add nsw i32 %add220, %conv221
  %190 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv223 = zext i16 %190 to i32
  %add224 = add nsw i32 %add222, %conv223
  %191 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv225 = zext i16 %191 to i32
  %add226 = add nsw i32 %add224, %conv225
  %192 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv227 = zext i16 %192 to i32
  %add228 = add nsw i32 %add226, %conv227
  %193 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv229 = zext i16 %193 to i32
  %add230 = add nsw i32 %add228, %conv229
  %call = call i32 @rshift_rnd_sf(i32 %add230, i32 4)
  store i32 %call, i32* %s0, align 4
  br label %if.end.277

if.else.231:                                      ; preds = %land.lhs.true.197, %for.end.195
  %194 = load i32, i32* %block_available_up, align 4
  %tobool232 = icmp ne i32 %194, 0
  br i1 %tobool232, label %if.else.252, label %land.lhs.true.233

land.lhs.true.233:                                ; preds = %if.else.231
  %195 = load i32, i32* %block_available_left, align 4
  %tobool234 = icmp ne i32 %195, 0
  br i1 %tobool234, label %if.then.235, label %if.else.252

if.then.235:                                      ; preds = %land.lhs.true.233
  %196 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv236 = zext i16 %196 to i32
  %197 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv237 = zext i16 %197 to i32
  %add238 = add nsw i32 %conv236, %conv237
  %198 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv239 = zext i16 %198 to i32
  %add240 = add nsw i32 %add238, %conv239
  %199 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv241 = zext i16 %199 to i32
  %add242 = add nsw i32 %add240, %conv241
  %200 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv243 = zext i16 %200 to i32
  %add244 = add nsw i32 %add242, %conv243
  %201 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv245 = zext i16 %201 to i32
  %add246 = add nsw i32 %add244, %conv245
  %202 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv247 = zext i16 %202 to i32
  %add248 = add nsw i32 %add246, %conv247
  %203 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv249 = zext i16 %203 to i32
  %add250 = add nsw i32 %add248, %conv249
  %call251 = call i32 @rshift_rnd_sf(i32 %add250, i32 3)
  store i32 %call251, i32* %s0, align 4
  br label %if.end.276

if.else.252:                                      ; preds = %land.lhs.true.233, %if.else.231
  %204 = load i32, i32* %block_available_up, align 4
  %tobool253 = icmp ne i32 %204, 0
  br i1 %tobool253, label %land.lhs.true.254, label %if.else.273

land.lhs.true.254:                                ; preds = %if.else.252
  %205 = load i32, i32* %block_available_left, align 4
  %tobool255 = icmp ne i32 %205, 0
  br i1 %tobool255, label %if.else.273, label %if.then.256

if.then.256:                                      ; preds = %land.lhs.true.254
  %206 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv257 = zext i16 %206 to i32
  %207 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv258 = zext i16 %207 to i32
  %add259 = add nsw i32 %conv257, %conv258
  %208 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv260 = zext i16 %208 to i32
  %add261 = add nsw i32 %add259, %conv260
  %209 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv262 = zext i16 %209 to i32
  %add263 = add nsw i32 %add261, %conv262
  %210 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv264 = zext i16 %210 to i32
  %add265 = add nsw i32 %add263, %conv264
  %211 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv266 = zext i16 %211 to i32
  %add267 = add nsw i32 %add265, %conv266
  %212 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv268 = zext i16 %212 to i32
  %add269 = add nsw i32 %add267, %conv268
  %213 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv270 = zext i16 %213 to i32
  %add271 = add nsw i32 %add269, %conv270
  %call272 = call i32 @rshift_rnd_sf(i32 %add271, i32 3)
  store i32 %call272, i32* %s0, align 4
  br label %if.end.275

if.else.273:                                      ; preds = %land.lhs.true.254, %if.else.252
  %214 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %dc_pred_value_luma274 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %214, i32 0, i32 154
  %215 = load i32, i32* %dc_pred_value_luma274, align 4
  store i32 %215, i32* %s0, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.273, %if.then.256
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.235
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then.199
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3278 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 49
  %arrayidx279 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3278, i32 0, i64 2
  %arraydecay = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx279, i32 0, i32 0
  store [8 x i16]* %arraydecay, [8 x i16]** %cur_pred, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.296, %if.end.277
  %217 = load i32, i32* %j, align 4
  %cmp281 = icmp slt i32 %217, 8
  br i1 %cmp281, label %for.body.283, label %for.end.298

for.body.283:                                     ; preds = %for.cond.280
  store i32 0, i32* %i, align 4
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.293, %for.body.283
  %218 = load i32, i32* %i, align 4
  %cmp285 = icmp slt i32 %218, 8
  br i1 %cmp285, label %for.body.287, label %for.end.295

for.body.287:                                     ; preds = %for.cond.284
  %219 = load i32, i32* %s0, align 4
  %conv288 = trunc i32 %219 to i16
  %220 = load i32, i32* %j, align 4
  %idxprom289 = sext i32 %220 to i64
  %221 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %221 to i64
  %222 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx291 = getelementptr inbounds [8 x i16], [8 x i16]* %222, i64 %idxprom290
  %arrayidx292 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx291, i32 0, i64 %idxprom289
  store i16 %conv288, i16* %arrayidx292, align 2
  br label %for.inc.293

for.inc.293:                                      ; preds = %for.body.287
  %223 = load i32, i32* %i, align 4
  %inc294 = add nsw i32 %223, 1
  store i32 %inc294, i32* %i, align 4
  br label %for.cond.284

for.end.295:                                      ; preds = %for.cond.284
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.end.295
  %224 = load i32, i32* %j, align 4
  %inc297 = add nsw i32 %224, 1
  store i32 %inc297, i32* %j, align 4
  br label %for.cond.280

for.end.298:                                      ; preds = %for.cond.280
  %225 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3299 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %225, i32 0, i32 49
  %arrayidx300 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3299, i32 0, i64 0
  %arraydecay301 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx300, i32 0, i32 0
  store [8 x i16]* %arraydecay301, [8 x i16]** %cur_pred, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.332, %for.end.298
  %226 = load i32, i32* %i, align 4
  %cmp303 = icmp slt i32 %226, 8
  br i1 %cmp303, label %for.body.305, label %for.end.334

for.body.305:                                     ; preds = %for.cond.302
  %227 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %227 to i64
  %arrayidx307 = getelementptr inbounds i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), i64 %idxprom306
  %228 = load i16, i16* %arrayidx307, align 2
  %229 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %229 to i64
  %230 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx309 = getelementptr inbounds [8 x i16], [8 x i16]* %230, i64 7
  %arrayidx310 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx309, i32 0, i64 %idxprom308
  store i16 %228, i16* %arrayidx310, align 2
  %231 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %231 to i64
  %232 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx312 = getelementptr inbounds [8 x i16], [8 x i16]* %232, i64 6
  %arrayidx313 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx312, i32 0, i64 %idxprom311
  store i16 %228, i16* %arrayidx313, align 2
  %233 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %233 to i64
  %234 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx315 = getelementptr inbounds [8 x i16], [8 x i16]* %234, i64 5
  %arrayidx316 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx315, i32 0, i64 %idxprom314
  store i16 %228, i16* %arrayidx316, align 2
  %235 = load i32, i32* %i, align 4
  %idxprom317 = sext i32 %235 to i64
  %236 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx318 = getelementptr inbounds [8 x i16], [8 x i16]* %236, i64 4
  %arrayidx319 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx318, i32 0, i64 %idxprom317
  store i16 %228, i16* %arrayidx319, align 2
  %237 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %237 to i64
  %238 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx321 = getelementptr inbounds [8 x i16], [8 x i16]* %238, i64 3
  %arrayidx322 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx321, i32 0, i64 %idxprom320
  store i16 %228, i16* %arrayidx322, align 2
  %239 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %239 to i64
  %240 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx324 = getelementptr inbounds [8 x i16], [8 x i16]* %240, i64 2
  %arrayidx325 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx324, i32 0, i64 %idxprom323
  store i16 %228, i16* %arrayidx325, align 2
  %241 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %241 to i64
  %242 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx327 = getelementptr inbounds [8 x i16], [8 x i16]* %242, i64 1
  %arrayidx328 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx327, i32 0, i64 %idxprom326
  store i16 %228, i16* %arrayidx328, align 2
  %243 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %243 to i64
  %244 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx330 = getelementptr inbounds [8 x i16], [8 x i16]* %244, i64 0
  %arrayidx331 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx330, i32 0, i64 %idxprom329
  store i16 %228, i16* %arrayidx331, align 2
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body.305
  %245 = load i32, i32* %i, align 4
  %inc333 = add nsw i32 %245, 1
  store i32 %inc333, i32* %i, align 4
  br label %for.cond.302

for.end.334:                                      ; preds = %for.cond.302
  %246 = load i32, i32* %block_available_up, align 4
  %tobool335 = icmp ne i32 %246, 0
  br i1 %tobool335, label %if.end.339, label %if.then.336

if.then.336:                                      ; preds = %for.end.334
  %247 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx337 = getelementptr inbounds [8 x i16], [8 x i16]* %247, i64 0
  %arrayidx338 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx337, i32 0, i64 0
  store i16 -1, i16* %arrayidx338, align 2
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.336, %for.end.334
  %248 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3340 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %248, i32 0, i32 49
  %arrayidx341 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3340, i32 0, i64 1
  %arraydecay342 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx341, i32 0, i32 0
  store [8 x i16]* %arraydecay342, [8 x i16]** %cur_pred, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.343

for.cond.343:                                     ; preds = %for.inc.373, %if.end.339
  %249 = load i32, i32* %i, align 4
  %cmp344 = icmp slt i32 %249, 8
  br i1 %cmp344, label %for.body.346, label %for.end.375

for.body.346:                                     ; preds = %for.cond.343
  %250 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %250 to i64
  %arrayidx348 = getelementptr inbounds i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), i64 %idxprom347
  %251 = load i16, i16* %arrayidx348, align 2
  %252 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %252 to i64
  %253 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx350 = getelementptr inbounds [8 x i16], [8 x i16]* %253, i64 %idxprom349
  %arrayidx351 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx350, i32 0, i64 7
  store i16 %251, i16* %arrayidx351, align 2
  %254 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %254 to i64
  %255 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx353 = getelementptr inbounds [8 x i16], [8 x i16]* %255, i64 %idxprom352
  %arrayidx354 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx353, i32 0, i64 6
  store i16 %251, i16* %arrayidx354, align 2
  %256 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %256 to i64
  %257 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx356 = getelementptr inbounds [8 x i16], [8 x i16]* %257, i64 %idxprom355
  %arrayidx357 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx356, i32 0, i64 5
  store i16 %251, i16* %arrayidx357, align 2
  %258 = load i32, i32* %i, align 4
  %idxprom358 = sext i32 %258 to i64
  %259 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx359 = getelementptr inbounds [8 x i16], [8 x i16]* %259, i64 %idxprom358
  %arrayidx360 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx359, i32 0, i64 4
  store i16 %251, i16* %arrayidx360, align 2
  %260 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %260 to i64
  %261 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx362 = getelementptr inbounds [8 x i16], [8 x i16]* %261, i64 %idxprom361
  %arrayidx363 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx362, i32 0, i64 3
  store i16 %251, i16* %arrayidx363, align 2
  %262 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %262 to i64
  %263 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx365 = getelementptr inbounds [8 x i16], [8 x i16]* %263, i64 %idxprom364
  %arrayidx366 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx365, i32 0, i64 2
  store i16 %251, i16* %arrayidx366, align 2
  %264 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %264 to i64
  %265 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx368 = getelementptr inbounds [8 x i16], [8 x i16]* %265, i64 %idxprom367
  %arrayidx369 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx368, i32 0, i64 1
  store i16 %251, i16* %arrayidx369, align 2
  %266 = load i32, i32* %i, align 4
  %idxprom370 = sext i32 %266 to i64
  %267 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx371 = getelementptr inbounds [8 x i16], [8 x i16]* %267, i64 %idxprom370
  %arrayidx372 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx371, i32 0, i64 0
  store i16 %251, i16* %arrayidx372, align 2
  br label %for.inc.373

for.inc.373:                                      ; preds = %for.body.346
  %268 = load i32, i32* %i, align 4
  %inc374 = add nsw i32 %268, 1
  store i32 %inc374, i32* %i, align 4
  br label %for.cond.343

for.end.375:                                      ; preds = %for.cond.343
  %269 = load i32, i32* %block_available_left, align 4
  %tobool376 = icmp ne i32 %269, 0
  br i1 %tobool376, label %if.end.380, label %if.then.377

if.then.377:                                      ; preds = %for.end.375
  %270 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx378 = getelementptr inbounds [8 x i16], [8 x i16]* %270, i64 0
  %arrayidx379 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx378, i32 0, i64 0
  store i16 -1, i16* %arrayidx379, align 2
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.377, %for.end.375
  %271 = load i32, i32* %block_available_up, align 4
  %tobool381 = icmp ne i32 %271, 0
  br i1 %tobool381, label %if.then.382, label %if.end.941

if.then.382:                                      ; preds = %if.end.380
  %272 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3383 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %272, i32 0, i32 49
  %arrayidx384 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3383, i32 0, i64 3
  %arraydecay385 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx384, i32 0, i32 0
  store [8 x i16]* %arraydecay385, [8 x i16]** %cur_pred, align 8
  %273 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv386 = zext i16 %273 to i32
  %274 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv387 = zext i16 %274 to i32
  %add388 = add nsw i32 %conv386, %conv387
  %275 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv389 = zext i16 %275 to i32
  %mul = mul nsw i32 2, %conv389
  %add390 = add nsw i32 %add388, %mul
  %add391 = add nsw i32 %add390, 2
  %shr = ashr i32 %add391, 2
  %conv392 = trunc i32 %shr to i16
  %276 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx393 = getelementptr inbounds [8 x i16], [8 x i16]* %276, i64 0
  %arrayidx394 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx393, i32 0, i64 0
  store i16 %conv392, i16* %arrayidx394, align 2
  %277 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv395 = zext i16 %277 to i32
  %278 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv396 = zext i16 %278 to i32
  %add397 = add nsw i32 %conv395, %conv396
  %279 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv398 = zext i16 %279 to i32
  %mul399 = mul nsw i32 2, %conv398
  %add400 = add nsw i32 %add397, %mul399
  %add401 = add nsw i32 %add400, 2
  %shr402 = ashr i32 %add401, 2
  %conv403 = trunc i32 %shr402 to i16
  %280 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx404 = getelementptr inbounds [8 x i16], [8 x i16]* %280, i64 1
  %arrayidx405 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx404, i32 0, i64 0
  store i16 %conv403, i16* %arrayidx405, align 2
  %281 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx406 = getelementptr inbounds [8 x i16], [8 x i16]* %281, i64 0
  %arrayidx407 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx406, i32 0, i64 1
  store i16 %conv403, i16* %arrayidx407, align 2
  %282 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv408 = zext i16 %282 to i32
  %283 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv409 = zext i16 %283 to i32
  %add410 = add nsw i32 %conv408, %conv409
  %284 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv411 = zext i16 %284 to i32
  %mul412 = mul nsw i32 2, %conv411
  %add413 = add nsw i32 %add410, %mul412
  %add414 = add nsw i32 %add413, 2
  %shr415 = ashr i32 %add414, 2
  %conv416 = trunc i32 %shr415 to i16
  %285 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx417 = getelementptr inbounds [8 x i16], [8 x i16]* %285, i64 2
  %arrayidx418 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx417, i32 0, i64 0
  store i16 %conv416, i16* %arrayidx418, align 2
  %286 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx419 = getelementptr inbounds [8 x i16], [8 x i16]* %286, i64 1
  %arrayidx420 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx419, i32 0, i64 1
  store i16 %conv416, i16* %arrayidx420, align 2
  %287 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx421 = getelementptr inbounds [8 x i16], [8 x i16]* %287, i64 0
  %arrayidx422 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx421, i32 0, i64 2
  store i16 %conv416, i16* %arrayidx422, align 2
  %288 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv423 = zext i16 %288 to i32
  %289 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv424 = zext i16 %289 to i32
  %add425 = add nsw i32 %conv423, %conv424
  %290 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv426 = zext i16 %290 to i32
  %mul427 = mul nsw i32 2, %conv426
  %add428 = add nsw i32 %add425, %mul427
  %add429 = add nsw i32 %add428, 2
  %shr430 = ashr i32 %add429, 2
  %conv431 = trunc i32 %shr430 to i16
  %291 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx432 = getelementptr inbounds [8 x i16], [8 x i16]* %291, i64 3
  %arrayidx433 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx432, i32 0, i64 0
  store i16 %conv431, i16* %arrayidx433, align 2
  %292 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx434 = getelementptr inbounds [8 x i16], [8 x i16]* %292, i64 2
  %arrayidx435 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx434, i32 0, i64 1
  store i16 %conv431, i16* %arrayidx435, align 2
  %293 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx436 = getelementptr inbounds [8 x i16], [8 x i16]* %293, i64 1
  %arrayidx437 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx436, i32 0, i64 2
  store i16 %conv431, i16* %arrayidx437, align 2
  %294 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx438 = getelementptr inbounds [8 x i16], [8 x i16]* %294, i64 0
  %arrayidx439 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx438, i32 0, i64 3
  store i16 %conv431, i16* %arrayidx439, align 2
  %295 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv440 = zext i16 %295 to i32
  %296 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv441 = zext i16 %296 to i32
  %add442 = add nsw i32 %conv440, %conv441
  %297 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv443 = zext i16 %297 to i32
  %mul444 = mul nsw i32 2, %conv443
  %add445 = add nsw i32 %add442, %mul444
  %add446 = add nsw i32 %add445, 2
  %shr447 = ashr i32 %add446, 2
  %conv448 = trunc i32 %shr447 to i16
  %298 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx449 = getelementptr inbounds [8 x i16], [8 x i16]* %298, i64 4
  %arrayidx450 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx449, i32 0, i64 0
  store i16 %conv448, i16* %arrayidx450, align 2
  %299 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx451 = getelementptr inbounds [8 x i16], [8 x i16]* %299, i64 3
  %arrayidx452 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx451, i32 0, i64 1
  store i16 %conv448, i16* %arrayidx452, align 2
  %300 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx453 = getelementptr inbounds [8 x i16], [8 x i16]* %300, i64 2
  %arrayidx454 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx453, i32 0, i64 2
  store i16 %conv448, i16* %arrayidx454, align 2
  %301 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx455 = getelementptr inbounds [8 x i16], [8 x i16]* %301, i64 1
  %arrayidx456 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx455, i32 0, i64 3
  store i16 %conv448, i16* %arrayidx456, align 2
  %302 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx457 = getelementptr inbounds [8 x i16], [8 x i16]* %302, i64 0
  %arrayidx458 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx457, i32 0, i64 4
  store i16 %conv448, i16* %arrayidx458, align 2
  %303 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv459 = zext i16 %303 to i32
  %304 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv460 = zext i16 %304 to i32
  %add461 = add nsw i32 %conv459, %conv460
  %305 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv462 = zext i16 %305 to i32
  %mul463 = mul nsw i32 2, %conv462
  %add464 = add nsw i32 %add461, %mul463
  %add465 = add nsw i32 %add464, 2
  %shr466 = ashr i32 %add465, 2
  %conv467 = trunc i32 %shr466 to i16
  %306 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx468 = getelementptr inbounds [8 x i16], [8 x i16]* %306, i64 5
  %arrayidx469 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx468, i32 0, i64 0
  store i16 %conv467, i16* %arrayidx469, align 2
  %307 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx470 = getelementptr inbounds [8 x i16], [8 x i16]* %307, i64 4
  %arrayidx471 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx470, i32 0, i64 1
  store i16 %conv467, i16* %arrayidx471, align 2
  %308 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx472 = getelementptr inbounds [8 x i16], [8 x i16]* %308, i64 3
  %arrayidx473 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx472, i32 0, i64 2
  store i16 %conv467, i16* %arrayidx473, align 2
  %309 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx474 = getelementptr inbounds [8 x i16], [8 x i16]* %309, i64 2
  %arrayidx475 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx474, i32 0, i64 3
  store i16 %conv467, i16* %arrayidx475, align 2
  %310 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx476 = getelementptr inbounds [8 x i16], [8 x i16]* %310, i64 1
  %arrayidx477 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx476, i32 0, i64 4
  store i16 %conv467, i16* %arrayidx477, align 2
  %311 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx478 = getelementptr inbounds [8 x i16], [8 x i16]* %311, i64 0
  %arrayidx479 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx478, i32 0, i64 5
  store i16 %conv467, i16* %arrayidx479, align 2
  %312 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv480 = zext i16 %312 to i32
  %313 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv481 = zext i16 %313 to i32
  %add482 = add nsw i32 %conv480, %conv481
  %314 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv483 = zext i16 %314 to i32
  %mul484 = mul nsw i32 2, %conv483
  %add485 = add nsw i32 %add482, %mul484
  %add486 = add nsw i32 %add485, 2
  %shr487 = ashr i32 %add486, 2
  %conv488 = trunc i32 %shr487 to i16
  %315 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx489 = getelementptr inbounds [8 x i16], [8 x i16]* %315, i64 6
  %arrayidx490 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx489, i32 0, i64 0
  store i16 %conv488, i16* %arrayidx490, align 2
  %316 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx491 = getelementptr inbounds [8 x i16], [8 x i16]* %316, i64 5
  %arrayidx492 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx491, i32 0, i64 1
  store i16 %conv488, i16* %arrayidx492, align 2
  %317 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx493 = getelementptr inbounds [8 x i16], [8 x i16]* %317, i64 4
  %arrayidx494 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx493, i32 0, i64 2
  store i16 %conv488, i16* %arrayidx494, align 2
  %318 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx495 = getelementptr inbounds [8 x i16], [8 x i16]* %318, i64 3
  %arrayidx496 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx495, i32 0, i64 3
  store i16 %conv488, i16* %arrayidx496, align 2
  %319 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx497 = getelementptr inbounds [8 x i16], [8 x i16]* %319, i64 2
  %arrayidx498 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx497, i32 0, i64 4
  store i16 %conv488, i16* %arrayidx498, align 2
  %320 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx499 = getelementptr inbounds [8 x i16], [8 x i16]* %320, i64 1
  %arrayidx500 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx499, i32 0, i64 5
  store i16 %conv488, i16* %arrayidx500, align 2
  %321 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx501 = getelementptr inbounds [8 x i16], [8 x i16]* %321, i64 0
  %arrayidx502 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx501, i32 0, i64 6
  store i16 %conv488, i16* %arrayidx502, align 2
  %322 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv503 = zext i16 %322 to i32
  %323 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv504 = zext i16 %323 to i32
  %add505 = add nsw i32 %conv503, %conv504
  %324 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv506 = zext i16 %324 to i32
  %mul507 = mul nsw i32 2, %conv506
  %add508 = add nsw i32 %add505, %mul507
  %add509 = add nsw i32 %add508, 2
  %shr510 = ashr i32 %add509, 2
  %conv511 = trunc i32 %shr510 to i16
  %325 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx512 = getelementptr inbounds [8 x i16], [8 x i16]* %325, i64 7
  %arrayidx513 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx512, i32 0, i64 0
  store i16 %conv511, i16* %arrayidx513, align 2
  %326 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx514 = getelementptr inbounds [8 x i16], [8 x i16]* %326, i64 6
  %arrayidx515 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx514, i32 0, i64 1
  store i16 %conv511, i16* %arrayidx515, align 2
  %327 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx516 = getelementptr inbounds [8 x i16], [8 x i16]* %327, i64 5
  %arrayidx517 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx516, i32 0, i64 2
  store i16 %conv511, i16* %arrayidx517, align 2
  %328 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx518 = getelementptr inbounds [8 x i16], [8 x i16]* %328, i64 4
  %arrayidx519 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx518, i32 0, i64 3
  store i16 %conv511, i16* %arrayidx519, align 2
  %329 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx520 = getelementptr inbounds [8 x i16], [8 x i16]* %329, i64 3
  %arrayidx521 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx520, i32 0, i64 4
  store i16 %conv511, i16* %arrayidx521, align 2
  %330 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx522 = getelementptr inbounds [8 x i16], [8 x i16]* %330, i64 2
  %arrayidx523 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx522, i32 0, i64 5
  store i16 %conv511, i16* %arrayidx523, align 2
  %331 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx524 = getelementptr inbounds [8 x i16], [8 x i16]* %331, i64 1
  %arrayidx525 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx524, i32 0, i64 6
  store i16 %conv511, i16* %arrayidx525, align 2
  %332 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx526 = getelementptr inbounds [8 x i16], [8 x i16]* %332, i64 0
  %arrayidx527 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx526, i32 0, i64 7
  store i16 %conv511, i16* %arrayidx527, align 2
  %333 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv528 = zext i16 %333 to i32
  %334 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv529 = zext i16 %334 to i32
  %add530 = add nsw i32 %conv528, %conv529
  %335 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv531 = zext i16 %335 to i32
  %mul532 = mul nsw i32 2, %conv531
  %add533 = add nsw i32 %add530, %mul532
  %add534 = add nsw i32 %add533, 2
  %shr535 = ashr i32 %add534, 2
  %conv536 = trunc i32 %shr535 to i16
  %336 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx537 = getelementptr inbounds [8 x i16], [8 x i16]* %336, i64 7
  %arrayidx538 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx537, i32 0, i64 1
  store i16 %conv536, i16* %arrayidx538, align 2
  %337 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx539 = getelementptr inbounds [8 x i16], [8 x i16]* %337, i64 6
  %arrayidx540 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx539, i32 0, i64 2
  store i16 %conv536, i16* %arrayidx540, align 2
  %338 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx541 = getelementptr inbounds [8 x i16], [8 x i16]* %338, i64 5
  %arrayidx542 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx541, i32 0, i64 3
  store i16 %conv536, i16* %arrayidx542, align 2
  %339 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx543 = getelementptr inbounds [8 x i16], [8 x i16]* %339, i64 4
  %arrayidx544 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx543, i32 0, i64 4
  store i16 %conv536, i16* %arrayidx544, align 2
  %340 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx545 = getelementptr inbounds [8 x i16], [8 x i16]* %340, i64 3
  %arrayidx546 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx545, i32 0, i64 5
  store i16 %conv536, i16* %arrayidx546, align 2
  %341 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx547 = getelementptr inbounds [8 x i16], [8 x i16]* %341, i64 2
  %arrayidx548 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx547, i32 0, i64 6
  store i16 %conv536, i16* %arrayidx548, align 2
  %342 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx549 = getelementptr inbounds [8 x i16], [8 x i16]* %342, i64 1
  %arrayidx550 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx549, i32 0, i64 7
  store i16 %conv536, i16* %arrayidx550, align 2
  %343 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv551 = zext i16 %343 to i32
  %344 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  %conv552 = zext i16 %344 to i32
  %add553 = add nsw i32 %conv551, %conv552
  %345 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv554 = zext i16 %345 to i32
  %mul555 = mul nsw i32 2, %conv554
  %add556 = add nsw i32 %add553, %mul555
  %add557 = add nsw i32 %add556, 2
  %shr558 = ashr i32 %add557, 2
  %conv559 = trunc i32 %shr558 to i16
  %346 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx560 = getelementptr inbounds [8 x i16], [8 x i16]* %346, i64 7
  %arrayidx561 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx560, i32 0, i64 2
  store i16 %conv559, i16* %arrayidx561, align 2
  %347 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx562 = getelementptr inbounds [8 x i16], [8 x i16]* %347, i64 6
  %arrayidx563 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx562, i32 0, i64 3
  store i16 %conv559, i16* %arrayidx563, align 2
  %348 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx564 = getelementptr inbounds [8 x i16], [8 x i16]* %348, i64 5
  %arrayidx565 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx564, i32 0, i64 4
  store i16 %conv559, i16* %arrayidx565, align 2
  %349 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx566 = getelementptr inbounds [8 x i16], [8 x i16]* %349, i64 4
  %arrayidx567 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx566, i32 0, i64 5
  store i16 %conv559, i16* %arrayidx567, align 2
  %350 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx568 = getelementptr inbounds [8 x i16], [8 x i16]* %350, i64 3
  %arrayidx569 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx568, i32 0, i64 6
  store i16 %conv559, i16* %arrayidx569, align 2
  %351 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx570 = getelementptr inbounds [8 x i16], [8 x i16]* %351, i64 2
  %arrayidx571 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx570, i32 0, i64 7
  store i16 %conv559, i16* %arrayidx571, align 2
  %352 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv572 = zext i16 %352 to i32
  %353 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 13), align 2
  %conv573 = zext i16 %353 to i32
  %add574 = add nsw i32 %conv572, %conv573
  %354 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  %conv575 = zext i16 %354 to i32
  %mul576 = mul nsw i32 2, %conv575
  %add577 = add nsw i32 %add574, %mul576
  %add578 = add nsw i32 %add577, 2
  %shr579 = ashr i32 %add578, 2
  %conv580 = trunc i32 %shr579 to i16
  %355 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx581 = getelementptr inbounds [8 x i16], [8 x i16]* %355, i64 7
  %arrayidx582 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx581, i32 0, i64 3
  store i16 %conv580, i16* %arrayidx582, align 2
  %356 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx583 = getelementptr inbounds [8 x i16], [8 x i16]* %356, i64 6
  %arrayidx584 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx583, i32 0, i64 4
  store i16 %conv580, i16* %arrayidx584, align 2
  %357 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx585 = getelementptr inbounds [8 x i16], [8 x i16]* %357, i64 5
  %arrayidx586 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx585, i32 0, i64 5
  store i16 %conv580, i16* %arrayidx586, align 2
  %358 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx587 = getelementptr inbounds [8 x i16], [8 x i16]* %358, i64 4
  %arrayidx588 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx587, i32 0, i64 6
  store i16 %conv580, i16* %arrayidx588, align 2
  %359 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx589 = getelementptr inbounds [8 x i16], [8 x i16]* %359, i64 3
  %arrayidx590 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx589, i32 0, i64 7
  store i16 %conv580, i16* %arrayidx590, align 2
  %360 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  %conv591 = zext i16 %360 to i32
  %361 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 14), align 2
  %conv592 = zext i16 %361 to i32
  %add593 = add nsw i32 %conv591, %conv592
  %362 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 13), align 2
  %conv594 = zext i16 %362 to i32
  %mul595 = mul nsw i32 2, %conv594
  %add596 = add nsw i32 %add593, %mul595
  %add597 = add nsw i32 %add596, 2
  %shr598 = ashr i32 %add597, 2
  %conv599 = trunc i32 %shr598 to i16
  %363 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx600 = getelementptr inbounds [8 x i16], [8 x i16]* %363, i64 7
  %arrayidx601 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx600, i32 0, i64 4
  store i16 %conv599, i16* %arrayidx601, align 2
  %364 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx602 = getelementptr inbounds [8 x i16], [8 x i16]* %364, i64 6
  %arrayidx603 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx602, i32 0, i64 5
  store i16 %conv599, i16* %arrayidx603, align 2
  %365 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx604 = getelementptr inbounds [8 x i16], [8 x i16]* %365, i64 5
  %arrayidx605 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx604, i32 0, i64 6
  store i16 %conv599, i16* %arrayidx605, align 2
  %366 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx606 = getelementptr inbounds [8 x i16], [8 x i16]* %366, i64 4
  %arrayidx607 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx606, i32 0, i64 7
  store i16 %conv599, i16* %arrayidx607, align 2
  %367 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 13), align 2
  %conv608 = zext i16 %367 to i32
  %368 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 15), align 2
  %conv609 = zext i16 %368 to i32
  %add610 = add nsw i32 %conv608, %conv609
  %369 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 14), align 2
  %conv611 = zext i16 %369 to i32
  %mul612 = mul nsw i32 2, %conv611
  %add613 = add nsw i32 %add610, %mul612
  %add614 = add nsw i32 %add613, 2
  %shr615 = ashr i32 %add614, 2
  %conv616 = trunc i32 %shr615 to i16
  %370 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx617 = getelementptr inbounds [8 x i16], [8 x i16]* %370, i64 7
  %arrayidx618 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx617, i32 0, i64 5
  store i16 %conv616, i16* %arrayidx618, align 2
  %371 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx619 = getelementptr inbounds [8 x i16], [8 x i16]* %371, i64 6
  %arrayidx620 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx619, i32 0, i64 6
  store i16 %conv616, i16* %arrayidx620, align 2
  %372 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx621 = getelementptr inbounds [8 x i16], [8 x i16]* %372, i64 5
  %arrayidx622 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx621, i32 0, i64 7
  store i16 %conv616, i16* %arrayidx622, align 2
  %373 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 14), align 2
  %conv623 = zext i16 %373 to i32
  %374 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 16), align 2
  %conv624 = zext i16 %374 to i32
  %add625 = add nsw i32 %conv623, %conv624
  %375 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 15), align 2
  %conv626 = zext i16 %375 to i32
  %mul627 = mul nsw i32 2, %conv626
  %add628 = add nsw i32 %add625, %mul627
  %add629 = add nsw i32 %add628, 2
  %shr630 = ashr i32 %add629, 2
  %conv631 = trunc i32 %shr630 to i16
  %376 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx632 = getelementptr inbounds [8 x i16], [8 x i16]* %376, i64 7
  %arrayidx633 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx632, i32 0, i64 6
  store i16 %conv631, i16* %arrayidx633, align 2
  %377 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx634 = getelementptr inbounds [8 x i16], [8 x i16]* %377, i64 6
  %arrayidx635 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx634, i32 0, i64 7
  store i16 %conv631, i16* %arrayidx635, align 2
  %378 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 15), align 2
  %conv636 = zext i16 %378 to i32
  %379 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 16), align 2
  %conv637 = zext i16 %379 to i32
  %mul638 = mul nsw i32 3, %conv637
  %add639 = add nsw i32 %conv636, %mul638
  %add640 = add nsw i32 %add639, 2
  %shr641 = ashr i32 %add640, 2
  %conv642 = trunc i32 %shr641 to i16
  %380 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx643 = getelementptr inbounds [8 x i16], [8 x i16]* %380, i64 7
  %arrayidx644 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx643, i32 0, i64 7
  store i16 %conv642, i16* %arrayidx644, align 2
  %381 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3645 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %381, i32 0, i32 49
  %arrayidx646 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3645, i32 0, i64 7
  %arraydecay647 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx646, i32 0, i32 0
  store [8 x i16]* %arraydecay647, [8 x i16]** %cur_pred, align 8
  %382 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv648 = zext i16 %382 to i32
  %383 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv649 = zext i16 %383 to i32
  %add650 = add nsw i32 %conv648, %conv649
  %add651 = add nsw i32 %add650, 1
  %shr652 = ashr i32 %add651, 1
  %conv653 = trunc i32 %shr652 to i16
  %384 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx654 = getelementptr inbounds [8 x i16], [8 x i16]* %384, i64 0
  %arrayidx655 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx654, i32 0, i64 0
  store i16 %conv653, i16* %arrayidx655, align 2
  %385 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv656 = zext i16 %385 to i32
  %386 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv657 = zext i16 %386 to i32
  %add658 = add nsw i32 %conv656, %conv657
  %add659 = add nsw i32 %add658, 1
  %shr660 = ashr i32 %add659, 1
  %conv661 = trunc i32 %shr660 to i16
  %387 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx662 = getelementptr inbounds [8 x i16], [8 x i16]* %387, i64 2
  %arrayidx663 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx662, i32 0, i64 0
  store i16 %conv661, i16* %arrayidx663, align 2
  %388 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx664 = getelementptr inbounds [8 x i16], [8 x i16]* %388, i64 0
  %arrayidx665 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx664, i32 0, i64 1
  store i16 %conv661, i16* %arrayidx665, align 2
  %389 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv666 = zext i16 %389 to i32
  %390 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv667 = zext i16 %390 to i32
  %add668 = add nsw i32 %conv666, %conv667
  %add669 = add nsw i32 %add668, 1
  %shr670 = ashr i32 %add669, 1
  %conv671 = trunc i32 %shr670 to i16
  %391 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx672 = getelementptr inbounds [8 x i16], [8 x i16]* %391, i64 4
  %arrayidx673 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx672, i32 0, i64 0
  store i16 %conv671, i16* %arrayidx673, align 2
  %392 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx674 = getelementptr inbounds [8 x i16], [8 x i16]* %392, i64 2
  %arrayidx675 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx674, i32 0, i64 1
  store i16 %conv671, i16* %arrayidx675, align 2
  %393 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx676 = getelementptr inbounds [8 x i16], [8 x i16]* %393, i64 0
  %arrayidx677 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx676, i32 0, i64 2
  store i16 %conv671, i16* %arrayidx677, align 2
  %394 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv678 = zext i16 %394 to i32
  %395 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv679 = zext i16 %395 to i32
  %add680 = add nsw i32 %conv678, %conv679
  %add681 = add nsw i32 %add680, 1
  %shr682 = ashr i32 %add681, 1
  %conv683 = trunc i32 %shr682 to i16
  %396 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx684 = getelementptr inbounds [8 x i16], [8 x i16]* %396, i64 6
  %arrayidx685 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx684, i32 0, i64 0
  store i16 %conv683, i16* %arrayidx685, align 2
  %397 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx686 = getelementptr inbounds [8 x i16], [8 x i16]* %397, i64 4
  %arrayidx687 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx686, i32 0, i64 1
  store i16 %conv683, i16* %arrayidx687, align 2
  %398 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx688 = getelementptr inbounds [8 x i16], [8 x i16]* %398, i64 2
  %arrayidx689 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx688, i32 0, i64 2
  store i16 %conv683, i16* %arrayidx689, align 2
  %399 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx690 = getelementptr inbounds [8 x i16], [8 x i16]* %399, i64 0
  %arrayidx691 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx690, i32 0, i64 3
  store i16 %conv683, i16* %arrayidx691, align 2
  %400 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv692 = zext i16 %400 to i32
  %401 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv693 = zext i16 %401 to i32
  %add694 = add nsw i32 %conv692, %conv693
  %add695 = add nsw i32 %add694, 1
  %shr696 = ashr i32 %add695, 1
  %conv697 = trunc i32 %shr696 to i16
  %402 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx698 = getelementptr inbounds [8 x i16], [8 x i16]* %402, i64 6
  %arrayidx699 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx698, i32 0, i64 1
  store i16 %conv697, i16* %arrayidx699, align 2
  %403 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx700 = getelementptr inbounds [8 x i16], [8 x i16]* %403, i64 4
  %arrayidx701 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx700, i32 0, i64 2
  store i16 %conv697, i16* %arrayidx701, align 2
  %404 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx702 = getelementptr inbounds [8 x i16], [8 x i16]* %404, i64 2
  %arrayidx703 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx702, i32 0, i64 3
  store i16 %conv697, i16* %arrayidx703, align 2
  %405 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx704 = getelementptr inbounds [8 x i16], [8 x i16]* %405, i64 0
  %arrayidx705 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx704, i32 0, i64 4
  store i16 %conv697, i16* %arrayidx705, align 2
  %406 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv706 = zext i16 %406 to i32
  %407 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv707 = zext i16 %407 to i32
  %add708 = add nsw i32 %conv706, %conv707
  %add709 = add nsw i32 %add708, 1
  %shr710 = ashr i32 %add709, 1
  %conv711 = trunc i32 %shr710 to i16
  %408 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx712 = getelementptr inbounds [8 x i16], [8 x i16]* %408, i64 6
  %arrayidx713 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx712, i32 0, i64 2
  store i16 %conv711, i16* %arrayidx713, align 2
  %409 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx714 = getelementptr inbounds [8 x i16], [8 x i16]* %409, i64 4
  %arrayidx715 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx714, i32 0, i64 3
  store i16 %conv711, i16* %arrayidx715, align 2
  %410 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx716 = getelementptr inbounds [8 x i16], [8 x i16]* %410, i64 2
  %arrayidx717 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx716, i32 0, i64 4
  store i16 %conv711, i16* %arrayidx717, align 2
  %411 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx718 = getelementptr inbounds [8 x i16], [8 x i16]* %411, i64 0
  %arrayidx719 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx718, i32 0, i64 5
  store i16 %conv711, i16* %arrayidx719, align 2
  %412 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv720 = zext i16 %412 to i32
  %413 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv721 = zext i16 %413 to i32
  %add722 = add nsw i32 %conv720, %conv721
  %add723 = add nsw i32 %add722, 1
  %shr724 = ashr i32 %add723, 1
  %conv725 = trunc i32 %shr724 to i16
  %414 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx726 = getelementptr inbounds [8 x i16], [8 x i16]* %414, i64 6
  %arrayidx727 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx726, i32 0, i64 3
  store i16 %conv725, i16* %arrayidx727, align 2
  %415 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx728 = getelementptr inbounds [8 x i16], [8 x i16]* %415, i64 4
  %arrayidx729 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx728, i32 0, i64 4
  store i16 %conv725, i16* %arrayidx729, align 2
  %416 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx730 = getelementptr inbounds [8 x i16], [8 x i16]* %416, i64 2
  %arrayidx731 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx730, i32 0, i64 5
  store i16 %conv725, i16* %arrayidx731, align 2
  %417 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx732 = getelementptr inbounds [8 x i16], [8 x i16]* %417, i64 0
  %arrayidx733 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx732, i32 0, i64 6
  store i16 %conv725, i16* %arrayidx733, align 2
  %418 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv734 = zext i16 %418 to i32
  %419 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv735 = zext i16 %419 to i32
  %add736 = add nsw i32 %conv734, %conv735
  %add737 = add nsw i32 %add736, 1
  %shr738 = ashr i32 %add737, 1
  %conv739 = trunc i32 %shr738 to i16
  %420 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx740 = getelementptr inbounds [8 x i16], [8 x i16]* %420, i64 6
  %arrayidx741 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx740, i32 0, i64 4
  store i16 %conv739, i16* %arrayidx741, align 2
  %421 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx742 = getelementptr inbounds [8 x i16], [8 x i16]* %421, i64 4
  %arrayidx743 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx742, i32 0, i64 5
  store i16 %conv739, i16* %arrayidx743, align 2
  %422 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx744 = getelementptr inbounds [8 x i16], [8 x i16]* %422, i64 2
  %arrayidx745 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx744, i32 0, i64 6
  store i16 %conv739, i16* %arrayidx745, align 2
  %423 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx746 = getelementptr inbounds [8 x i16], [8 x i16]* %423, i64 0
  %arrayidx747 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx746, i32 0, i64 7
  store i16 %conv739, i16* %arrayidx747, align 2
  %424 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv748 = zext i16 %424 to i32
  %425 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv749 = zext i16 %425 to i32
  %add750 = add nsw i32 %conv748, %conv749
  %add751 = add nsw i32 %add750, 1
  %shr752 = ashr i32 %add751, 1
  %conv753 = trunc i32 %shr752 to i16
  %426 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx754 = getelementptr inbounds [8 x i16], [8 x i16]* %426, i64 6
  %arrayidx755 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx754, i32 0, i64 5
  store i16 %conv753, i16* %arrayidx755, align 2
  %427 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx756 = getelementptr inbounds [8 x i16], [8 x i16]* %427, i64 4
  %arrayidx757 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx756, i32 0, i64 6
  store i16 %conv753, i16* %arrayidx757, align 2
  %428 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx758 = getelementptr inbounds [8 x i16], [8 x i16]* %428, i64 2
  %arrayidx759 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx758, i32 0, i64 7
  store i16 %conv753, i16* %arrayidx759, align 2
  %429 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv760 = zext i16 %429 to i32
  %430 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv761 = zext i16 %430 to i32
  %add762 = add nsw i32 %conv760, %conv761
  %add763 = add nsw i32 %add762, 1
  %shr764 = ashr i32 %add763, 1
  %conv765 = trunc i32 %shr764 to i16
  %431 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx766 = getelementptr inbounds [8 x i16], [8 x i16]* %431, i64 6
  %arrayidx767 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx766, i32 0, i64 6
  store i16 %conv765, i16* %arrayidx767, align 2
  %432 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx768 = getelementptr inbounds [8 x i16], [8 x i16]* %432, i64 4
  %arrayidx769 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx768, i32 0, i64 7
  store i16 %conv765, i16* %arrayidx769, align 2
  %433 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv770 = zext i16 %433 to i32
  %434 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  %conv771 = zext i16 %434 to i32
  %add772 = add nsw i32 %conv770, %conv771
  %add773 = add nsw i32 %add772, 1
  %shr774 = ashr i32 %add773, 1
  %conv775 = trunc i32 %shr774 to i16
  %435 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx776 = getelementptr inbounds [8 x i16], [8 x i16]* %435, i64 6
  %arrayidx777 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx776, i32 0, i64 7
  store i16 %conv775, i16* %arrayidx777, align 2
  %436 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv778 = zext i16 %436 to i32
  %437 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv779 = zext i16 %437 to i32
  %add780 = add nsw i32 %conv778, %conv779
  %438 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv781 = zext i16 %438 to i32
  %mul782 = mul nsw i32 2, %conv781
  %add783 = add nsw i32 %add780, %mul782
  %add784 = add nsw i32 %add783, 2
  %shr785 = ashr i32 %add784, 2
  %conv786 = trunc i32 %shr785 to i16
  %439 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx787 = getelementptr inbounds [8 x i16], [8 x i16]* %439, i64 1
  %arrayidx788 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx787, i32 0, i64 0
  store i16 %conv786, i16* %arrayidx788, align 2
  %440 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv789 = zext i16 %440 to i32
  %441 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv790 = zext i16 %441 to i32
  %add791 = add nsw i32 %conv789, %conv790
  %442 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv792 = zext i16 %442 to i32
  %mul793 = mul nsw i32 2, %conv792
  %add794 = add nsw i32 %add791, %mul793
  %add795 = add nsw i32 %add794, 2
  %shr796 = ashr i32 %add795, 2
  %conv797 = trunc i32 %shr796 to i16
  %443 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx798 = getelementptr inbounds [8 x i16], [8 x i16]* %443, i64 3
  %arrayidx799 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx798, i32 0, i64 0
  store i16 %conv797, i16* %arrayidx799, align 2
  %444 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx800 = getelementptr inbounds [8 x i16], [8 x i16]* %444, i64 1
  %arrayidx801 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx800, i32 0, i64 1
  store i16 %conv797, i16* %arrayidx801, align 2
  %445 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv802 = zext i16 %445 to i32
  %446 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv803 = zext i16 %446 to i32
  %add804 = add nsw i32 %conv802, %conv803
  %447 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv805 = zext i16 %447 to i32
  %mul806 = mul nsw i32 2, %conv805
  %add807 = add nsw i32 %add804, %mul806
  %add808 = add nsw i32 %add807, 2
  %shr809 = ashr i32 %add808, 2
  %conv810 = trunc i32 %shr809 to i16
  %448 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx811 = getelementptr inbounds [8 x i16], [8 x i16]* %448, i64 5
  %arrayidx812 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx811, i32 0, i64 0
  store i16 %conv810, i16* %arrayidx812, align 2
  %449 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx813 = getelementptr inbounds [8 x i16], [8 x i16]* %449, i64 3
  %arrayidx814 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx813, i32 0, i64 1
  store i16 %conv810, i16* %arrayidx814, align 2
  %450 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx815 = getelementptr inbounds [8 x i16], [8 x i16]* %450, i64 1
  %arrayidx816 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx815, i32 0, i64 2
  store i16 %conv810, i16* %arrayidx816, align 2
  %451 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv817 = zext i16 %451 to i32
  %452 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv818 = zext i16 %452 to i32
  %add819 = add nsw i32 %conv817, %conv818
  %453 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv820 = zext i16 %453 to i32
  %mul821 = mul nsw i32 2, %conv820
  %add822 = add nsw i32 %add819, %mul821
  %add823 = add nsw i32 %add822, 2
  %shr824 = ashr i32 %add823, 2
  %conv825 = trunc i32 %shr824 to i16
  %454 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx826 = getelementptr inbounds [8 x i16], [8 x i16]* %454, i64 7
  %arrayidx827 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx826, i32 0, i64 0
  store i16 %conv825, i16* %arrayidx827, align 2
  %455 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx828 = getelementptr inbounds [8 x i16], [8 x i16]* %455, i64 5
  %arrayidx829 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx828, i32 0, i64 1
  store i16 %conv825, i16* %arrayidx829, align 2
  %456 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx830 = getelementptr inbounds [8 x i16], [8 x i16]* %456, i64 3
  %arrayidx831 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx830, i32 0, i64 2
  store i16 %conv825, i16* %arrayidx831, align 2
  %457 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx832 = getelementptr inbounds [8 x i16], [8 x i16]* %457, i64 1
  %arrayidx833 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx832, i32 0, i64 3
  store i16 %conv825, i16* %arrayidx833, align 2
  %458 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv834 = zext i16 %458 to i32
  %459 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv835 = zext i16 %459 to i32
  %add836 = add nsw i32 %conv834, %conv835
  %460 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv837 = zext i16 %460 to i32
  %mul838 = mul nsw i32 2, %conv837
  %add839 = add nsw i32 %add836, %mul838
  %add840 = add nsw i32 %add839, 2
  %shr841 = ashr i32 %add840, 2
  %conv842 = trunc i32 %shr841 to i16
  %461 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx843 = getelementptr inbounds [8 x i16], [8 x i16]* %461, i64 7
  %arrayidx844 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx843, i32 0, i64 1
  store i16 %conv842, i16* %arrayidx844, align 2
  %462 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx845 = getelementptr inbounds [8 x i16], [8 x i16]* %462, i64 5
  %arrayidx846 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx845, i32 0, i64 2
  store i16 %conv842, i16* %arrayidx846, align 2
  %463 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx847 = getelementptr inbounds [8 x i16], [8 x i16]* %463, i64 3
  %arrayidx848 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx847, i32 0, i64 3
  store i16 %conv842, i16* %arrayidx848, align 2
  %464 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx849 = getelementptr inbounds [8 x i16], [8 x i16]* %464, i64 1
  %arrayidx850 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx849, i32 0, i64 4
  store i16 %conv842, i16* %arrayidx850, align 2
  %465 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv851 = zext i16 %465 to i32
  %466 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv852 = zext i16 %466 to i32
  %add853 = add nsw i32 %conv851, %conv852
  %467 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv854 = zext i16 %467 to i32
  %mul855 = mul nsw i32 2, %conv854
  %add856 = add nsw i32 %add853, %mul855
  %add857 = add nsw i32 %add856, 2
  %shr858 = ashr i32 %add857, 2
  %conv859 = trunc i32 %shr858 to i16
  %468 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx860 = getelementptr inbounds [8 x i16], [8 x i16]* %468, i64 7
  %arrayidx861 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx860, i32 0, i64 2
  store i16 %conv859, i16* %arrayidx861, align 2
  %469 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx862 = getelementptr inbounds [8 x i16], [8 x i16]* %469, i64 5
  %arrayidx863 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx862, i32 0, i64 3
  store i16 %conv859, i16* %arrayidx863, align 2
  %470 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx864 = getelementptr inbounds [8 x i16], [8 x i16]* %470, i64 3
  %arrayidx865 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx864, i32 0, i64 4
  store i16 %conv859, i16* %arrayidx865, align 2
  %471 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx866 = getelementptr inbounds [8 x i16], [8 x i16]* %471, i64 1
  %arrayidx867 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx866, i32 0, i64 5
  store i16 %conv859, i16* %arrayidx867, align 2
  %472 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv868 = zext i16 %472 to i32
  %473 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv869 = zext i16 %473 to i32
  %add870 = add nsw i32 %conv868, %conv869
  %474 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv871 = zext i16 %474 to i32
  %mul872 = mul nsw i32 2, %conv871
  %add873 = add nsw i32 %add870, %mul872
  %add874 = add nsw i32 %add873, 2
  %shr875 = ashr i32 %add874, 2
  %conv876 = trunc i32 %shr875 to i16
  %475 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx877 = getelementptr inbounds [8 x i16], [8 x i16]* %475, i64 7
  %arrayidx878 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx877, i32 0, i64 3
  store i16 %conv876, i16* %arrayidx878, align 2
  %476 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx879 = getelementptr inbounds [8 x i16], [8 x i16]* %476, i64 5
  %arrayidx880 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx879, i32 0, i64 4
  store i16 %conv876, i16* %arrayidx880, align 2
  %477 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx881 = getelementptr inbounds [8 x i16], [8 x i16]* %477, i64 3
  %arrayidx882 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx881, i32 0, i64 5
  store i16 %conv876, i16* %arrayidx882, align 2
  %478 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx883 = getelementptr inbounds [8 x i16], [8 x i16]* %478, i64 1
  %arrayidx884 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx883, i32 0, i64 6
  store i16 %conv876, i16* %arrayidx884, align 2
  %479 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv885 = zext i16 %479 to i32
  %480 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv886 = zext i16 %480 to i32
  %add887 = add nsw i32 %conv885, %conv886
  %481 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv888 = zext i16 %481 to i32
  %mul889 = mul nsw i32 2, %conv888
  %add890 = add nsw i32 %add887, %mul889
  %add891 = add nsw i32 %add890, 2
  %shr892 = ashr i32 %add891, 2
  %conv893 = trunc i32 %shr892 to i16
  %482 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx894 = getelementptr inbounds [8 x i16], [8 x i16]* %482, i64 7
  %arrayidx895 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx894, i32 0, i64 4
  store i16 %conv893, i16* %arrayidx895, align 2
  %483 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx896 = getelementptr inbounds [8 x i16], [8 x i16]* %483, i64 5
  %arrayidx897 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx896, i32 0, i64 5
  store i16 %conv893, i16* %arrayidx897, align 2
  %484 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx898 = getelementptr inbounds [8 x i16], [8 x i16]* %484, i64 3
  %arrayidx899 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx898, i32 0, i64 6
  store i16 %conv893, i16* %arrayidx899, align 2
  %485 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx900 = getelementptr inbounds [8 x i16], [8 x i16]* %485, i64 1
  %arrayidx901 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx900, i32 0, i64 7
  store i16 %conv893, i16* %arrayidx901, align 2
  %486 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 9), align 2
  %conv902 = zext i16 %486 to i32
  %487 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv903 = zext i16 %487 to i32
  %add904 = add nsw i32 %conv902, %conv903
  %488 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv905 = zext i16 %488 to i32
  %mul906 = mul nsw i32 2, %conv905
  %add907 = add nsw i32 %add904, %mul906
  %add908 = add nsw i32 %add907, 2
  %shr909 = ashr i32 %add908, 2
  %conv910 = trunc i32 %shr909 to i16
  %489 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx911 = getelementptr inbounds [8 x i16], [8 x i16]* %489, i64 7
  %arrayidx912 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx911, i32 0, i64 5
  store i16 %conv910, i16* %arrayidx912, align 2
  %490 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx913 = getelementptr inbounds [8 x i16], [8 x i16]* %490, i64 5
  %arrayidx914 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx913, i32 0, i64 6
  store i16 %conv910, i16* %arrayidx914, align 2
  %491 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx915 = getelementptr inbounds [8 x i16], [8 x i16]* %491, i64 3
  %arrayidx916 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx915, i32 0, i64 7
  store i16 %conv910, i16* %arrayidx916, align 2
  %492 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 10), align 2
  %conv917 = zext i16 %492 to i32
  %493 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  %conv918 = zext i16 %493 to i32
  %add919 = add nsw i32 %conv917, %conv918
  %494 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv920 = zext i16 %494 to i32
  %mul921 = mul nsw i32 2, %conv920
  %add922 = add nsw i32 %add919, %mul921
  %add923 = add nsw i32 %add922, 2
  %shr924 = ashr i32 %add923, 2
  %conv925 = trunc i32 %shr924 to i16
  %495 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx926 = getelementptr inbounds [8 x i16], [8 x i16]* %495, i64 7
  %arrayidx927 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx926, i32 0, i64 6
  store i16 %conv925, i16* %arrayidx927, align 2
  %496 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx928 = getelementptr inbounds [8 x i16], [8 x i16]* %496, i64 5
  %arrayidx929 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx928, i32 0, i64 7
  store i16 %conv925, i16* %arrayidx929, align 2
  %497 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 11), align 2
  %conv930 = zext i16 %497 to i32
  %498 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 13), align 2
  %conv931 = zext i16 %498 to i32
  %add932 = add nsw i32 %conv930, %conv931
  %499 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 12), align 2
  %conv933 = zext i16 %499 to i32
  %mul934 = mul nsw i32 2, %conv933
  %add935 = add nsw i32 %add932, %mul934
  %add936 = add nsw i32 %add935, 2
  %shr937 = ashr i32 %add936, 2
  %conv938 = trunc i32 %shr937 to i16
  %500 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx939 = getelementptr inbounds [8 x i16], [8 x i16]* %500, i64 7
  %arrayidx940 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx939, i32 0, i64 7
  store i16 %conv938, i16* %arrayidx940, align 2
  br label %if.end.941

if.end.941:                                       ; preds = %if.then.382, %if.end.380
  %501 = load i32, i32* %block_available_up, align 4
  %tobool942 = icmp ne i32 %501, 0
  br i1 %tobool942, label %land.lhs.true.943, label %if.end.1824

land.lhs.true.943:                                ; preds = %if.end.941
  %502 = load i32, i32* %block_available_left, align 4
  %tobool944 = icmp ne i32 %502, 0
  br i1 %tobool944, label %land.lhs.true.945, label %if.end.1824

land.lhs.true.945:                                ; preds = %land.lhs.true.943
  %503 = load i32, i32* %block_available_up_left, align 4
  %tobool946 = icmp ne i32 %503, 0
  br i1 %tobool946, label %if.then.947, label %if.end.1824

if.then.947:                                      ; preds = %land.lhs.true.945
  %504 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_3948 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %504, i32 0, i32 49
  %arrayidx949 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_3948, i32 0, i64 4
  %arraydecay950 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx949, i32 0, i32 0
  store [8 x i16]* %arraydecay950, [8 x i16]** %cur_pred, align 8
  %505 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv951 = zext i16 %505 to i32
  %506 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv952 = zext i16 %506 to i32
  %add953 = add nsw i32 %conv951, %conv952
  %507 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv954 = zext i16 %507 to i32
  %mul955 = mul nsw i32 2, %conv954
  %add956 = add nsw i32 %add953, %mul955
  %add957 = add nsw i32 %add956, 2
  %shr958 = ashr i32 %add957, 2
  %conv959 = trunc i32 %shr958 to i16
  %508 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx960 = getelementptr inbounds [8 x i16], [8 x i16]* %508, i64 7
  %arrayidx961 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx960, i32 0, i64 0
  store i16 %conv959, i16* %arrayidx961, align 2
  %509 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv962 = zext i16 %509 to i32
  %510 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv963 = zext i16 %510 to i32
  %add964 = add nsw i32 %conv962, %conv963
  %511 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv965 = zext i16 %511 to i32
  %mul966 = mul nsw i32 2, %conv965
  %add967 = add nsw i32 %add964, %mul966
  %add968 = add nsw i32 %add967, 2
  %shr969 = ashr i32 %add968, 2
  %conv970 = trunc i32 %shr969 to i16
  %512 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx971 = getelementptr inbounds [8 x i16], [8 x i16]* %512, i64 7
  %arrayidx972 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx971, i32 0, i64 1
  store i16 %conv970, i16* %arrayidx972, align 2
  %513 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx973 = getelementptr inbounds [8 x i16], [8 x i16]* %513, i64 6
  %arrayidx974 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx973, i32 0, i64 0
  store i16 %conv970, i16* %arrayidx974, align 2
  %514 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv975 = zext i16 %514 to i32
  %515 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv976 = zext i16 %515 to i32
  %add977 = add nsw i32 %conv975, %conv976
  %516 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv978 = zext i16 %516 to i32
  %mul979 = mul nsw i32 2, %conv978
  %add980 = add nsw i32 %add977, %mul979
  %add981 = add nsw i32 %add980, 2
  %shr982 = ashr i32 %add981, 2
  %conv983 = trunc i32 %shr982 to i16
  %517 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx984 = getelementptr inbounds [8 x i16], [8 x i16]* %517, i64 7
  %arrayidx985 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx984, i32 0, i64 2
  store i16 %conv983, i16* %arrayidx985, align 2
  %518 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx986 = getelementptr inbounds [8 x i16], [8 x i16]* %518, i64 6
  %arrayidx987 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx986, i32 0, i64 1
  store i16 %conv983, i16* %arrayidx987, align 2
  %519 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx988 = getelementptr inbounds [8 x i16], [8 x i16]* %519, i64 5
  %arrayidx989 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx988, i32 0, i64 0
  store i16 %conv983, i16* %arrayidx989, align 2
  %520 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv990 = zext i16 %520 to i32
  %521 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv991 = zext i16 %521 to i32
  %add992 = add nsw i32 %conv990, %conv991
  %522 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv993 = zext i16 %522 to i32
  %mul994 = mul nsw i32 2, %conv993
  %add995 = add nsw i32 %add992, %mul994
  %add996 = add nsw i32 %add995, 2
  %shr997 = ashr i32 %add996, 2
  %conv998 = trunc i32 %shr997 to i16
  %523 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx999 = getelementptr inbounds [8 x i16], [8 x i16]* %523, i64 7
  %arrayidx1000 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx999, i32 0, i64 3
  store i16 %conv998, i16* %arrayidx1000, align 2
  %524 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1001 = getelementptr inbounds [8 x i16], [8 x i16]* %524, i64 6
  %arrayidx1002 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1001, i32 0, i64 2
  store i16 %conv998, i16* %arrayidx1002, align 2
  %525 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1003 = getelementptr inbounds [8 x i16], [8 x i16]* %525, i64 5
  %arrayidx1004 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1003, i32 0, i64 1
  store i16 %conv998, i16* %arrayidx1004, align 2
  %526 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1005 = getelementptr inbounds [8 x i16], [8 x i16]* %526, i64 4
  %arrayidx1006 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1005, i32 0, i64 0
  store i16 %conv998, i16* %arrayidx1006, align 2
  %527 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1007 = zext i16 %527 to i32
  %528 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1008 = zext i16 %528 to i32
  %add1009 = add nsw i32 %conv1007, %conv1008
  %529 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1010 = zext i16 %529 to i32
  %mul1011 = mul nsw i32 2, %conv1010
  %add1012 = add nsw i32 %add1009, %mul1011
  %add1013 = add nsw i32 %add1012, 2
  %shr1014 = ashr i32 %add1013, 2
  %conv1015 = trunc i32 %shr1014 to i16
  %530 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1016 = getelementptr inbounds [8 x i16], [8 x i16]* %530, i64 7
  %arrayidx1017 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1016, i32 0, i64 4
  store i16 %conv1015, i16* %arrayidx1017, align 2
  %531 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1018 = getelementptr inbounds [8 x i16], [8 x i16]* %531, i64 6
  %arrayidx1019 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1018, i32 0, i64 3
  store i16 %conv1015, i16* %arrayidx1019, align 2
  %532 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1020 = getelementptr inbounds [8 x i16], [8 x i16]* %532, i64 5
  %arrayidx1021 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1020, i32 0, i64 2
  store i16 %conv1015, i16* %arrayidx1021, align 2
  %533 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1022 = getelementptr inbounds [8 x i16], [8 x i16]* %533, i64 4
  %arrayidx1023 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1022, i32 0, i64 1
  store i16 %conv1015, i16* %arrayidx1023, align 2
  %534 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1024 = getelementptr inbounds [8 x i16], [8 x i16]* %534, i64 3
  %arrayidx1025 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1024, i32 0, i64 0
  store i16 %conv1015, i16* %arrayidx1025, align 2
  %535 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1026 = zext i16 %535 to i32
  %536 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1027 = zext i16 %536 to i32
  %add1028 = add nsw i32 %conv1026, %conv1027
  %537 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1029 = zext i16 %537 to i32
  %mul1030 = mul nsw i32 2, %conv1029
  %add1031 = add nsw i32 %add1028, %mul1030
  %add1032 = add nsw i32 %add1031, 2
  %shr1033 = ashr i32 %add1032, 2
  %conv1034 = trunc i32 %shr1033 to i16
  %538 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1035 = getelementptr inbounds [8 x i16], [8 x i16]* %538, i64 7
  %arrayidx1036 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1035, i32 0, i64 5
  store i16 %conv1034, i16* %arrayidx1036, align 2
  %539 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1037 = getelementptr inbounds [8 x i16], [8 x i16]* %539, i64 6
  %arrayidx1038 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1037, i32 0, i64 4
  store i16 %conv1034, i16* %arrayidx1038, align 2
  %540 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1039 = getelementptr inbounds [8 x i16], [8 x i16]* %540, i64 5
  %arrayidx1040 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1039, i32 0, i64 3
  store i16 %conv1034, i16* %arrayidx1040, align 2
  %541 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1041 = getelementptr inbounds [8 x i16], [8 x i16]* %541, i64 4
  %arrayidx1042 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1041, i32 0, i64 2
  store i16 %conv1034, i16* %arrayidx1042, align 2
  %542 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1043 = getelementptr inbounds [8 x i16], [8 x i16]* %542, i64 3
  %arrayidx1044 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1043, i32 0, i64 1
  store i16 %conv1034, i16* %arrayidx1044, align 2
  %543 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1045 = getelementptr inbounds [8 x i16], [8 x i16]* %543, i64 2
  %arrayidx1046 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1045, i32 0, i64 0
  store i16 %conv1034, i16* %arrayidx1046, align 2
  %544 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1047 = zext i16 %544 to i32
  %545 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1048 = zext i16 %545 to i32
  %add1049 = add nsw i32 %conv1047, %conv1048
  %546 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1050 = zext i16 %546 to i32
  %mul1051 = mul nsw i32 2, %conv1050
  %add1052 = add nsw i32 %add1049, %mul1051
  %add1053 = add nsw i32 %add1052, 2
  %shr1054 = ashr i32 %add1053, 2
  %conv1055 = trunc i32 %shr1054 to i16
  %547 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1056 = getelementptr inbounds [8 x i16], [8 x i16]* %547, i64 7
  %arrayidx1057 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1056, i32 0, i64 6
  store i16 %conv1055, i16* %arrayidx1057, align 2
  %548 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1058 = getelementptr inbounds [8 x i16], [8 x i16]* %548, i64 6
  %arrayidx1059 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1058, i32 0, i64 5
  store i16 %conv1055, i16* %arrayidx1059, align 2
  %549 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1060 = getelementptr inbounds [8 x i16], [8 x i16]* %549, i64 5
  %arrayidx1061 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1060, i32 0, i64 4
  store i16 %conv1055, i16* %arrayidx1061, align 2
  %550 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1062 = getelementptr inbounds [8 x i16], [8 x i16]* %550, i64 4
  %arrayidx1063 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1062, i32 0, i64 3
  store i16 %conv1055, i16* %arrayidx1063, align 2
  %551 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1064 = getelementptr inbounds [8 x i16], [8 x i16]* %551, i64 3
  %arrayidx1065 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1064, i32 0, i64 2
  store i16 %conv1055, i16* %arrayidx1065, align 2
  %552 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1066 = getelementptr inbounds [8 x i16], [8 x i16]* %552, i64 2
  %arrayidx1067 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1066, i32 0, i64 1
  store i16 %conv1055, i16* %arrayidx1067, align 2
  %553 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1068 = getelementptr inbounds [8 x i16], [8 x i16]* %553, i64 1
  %arrayidx1069 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1068, i32 0, i64 0
  store i16 %conv1055, i16* %arrayidx1069, align 2
  %554 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1070 = zext i16 %554 to i32
  %555 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1071 = zext i16 %555 to i32
  %add1072 = add nsw i32 %conv1070, %conv1071
  %556 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1073 = zext i16 %556 to i32
  %mul1074 = mul nsw i32 2, %conv1073
  %add1075 = add nsw i32 %add1072, %mul1074
  %add1076 = add nsw i32 %add1075, 2
  %shr1077 = ashr i32 %add1076, 2
  %conv1078 = trunc i32 %shr1077 to i16
  %557 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1079 = getelementptr inbounds [8 x i16], [8 x i16]* %557, i64 7
  %arrayidx1080 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1079, i32 0, i64 7
  store i16 %conv1078, i16* %arrayidx1080, align 2
  %558 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1081 = getelementptr inbounds [8 x i16], [8 x i16]* %558, i64 6
  %arrayidx1082 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1081, i32 0, i64 6
  store i16 %conv1078, i16* %arrayidx1082, align 2
  %559 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1083 = getelementptr inbounds [8 x i16], [8 x i16]* %559, i64 5
  %arrayidx1084 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1083, i32 0, i64 5
  store i16 %conv1078, i16* %arrayidx1084, align 2
  %560 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1085 = getelementptr inbounds [8 x i16], [8 x i16]* %560, i64 4
  %arrayidx1086 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1085, i32 0, i64 4
  store i16 %conv1078, i16* %arrayidx1086, align 2
  %561 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1087 = getelementptr inbounds [8 x i16], [8 x i16]* %561, i64 3
  %arrayidx1088 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1087, i32 0, i64 3
  store i16 %conv1078, i16* %arrayidx1088, align 2
  %562 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1089 = getelementptr inbounds [8 x i16], [8 x i16]* %562, i64 2
  %arrayidx1090 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1089, i32 0, i64 2
  store i16 %conv1078, i16* %arrayidx1090, align 2
  %563 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1091 = getelementptr inbounds [8 x i16], [8 x i16]* %563, i64 1
  %arrayidx1092 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1091, i32 0, i64 1
  store i16 %conv1078, i16* %arrayidx1092, align 2
  %564 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1093 = getelementptr inbounds [8 x i16], [8 x i16]* %564, i64 0
  %arrayidx1094 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1093, i32 0, i64 0
  store i16 %conv1078, i16* %arrayidx1094, align 2
  %565 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1095 = zext i16 %565 to i32
  %566 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1096 = zext i16 %566 to i32
  %add1097 = add nsw i32 %conv1095, %conv1096
  %567 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1098 = zext i16 %567 to i32
  %mul1099 = mul nsw i32 2, %conv1098
  %add1100 = add nsw i32 %add1097, %mul1099
  %add1101 = add nsw i32 %add1100, 2
  %shr1102 = ashr i32 %add1101, 2
  %conv1103 = trunc i32 %shr1102 to i16
  %568 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1104 = getelementptr inbounds [8 x i16], [8 x i16]* %568, i64 6
  %arrayidx1105 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1104, i32 0, i64 7
  store i16 %conv1103, i16* %arrayidx1105, align 2
  %569 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1106 = getelementptr inbounds [8 x i16], [8 x i16]* %569, i64 5
  %arrayidx1107 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1106, i32 0, i64 6
  store i16 %conv1103, i16* %arrayidx1107, align 2
  %570 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1108 = getelementptr inbounds [8 x i16], [8 x i16]* %570, i64 4
  %arrayidx1109 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1108, i32 0, i64 5
  store i16 %conv1103, i16* %arrayidx1109, align 2
  %571 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1110 = getelementptr inbounds [8 x i16], [8 x i16]* %571, i64 3
  %arrayidx1111 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1110, i32 0, i64 4
  store i16 %conv1103, i16* %arrayidx1111, align 2
  %572 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1112 = getelementptr inbounds [8 x i16], [8 x i16]* %572, i64 2
  %arrayidx1113 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1112, i32 0, i64 3
  store i16 %conv1103, i16* %arrayidx1113, align 2
  %573 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1114 = getelementptr inbounds [8 x i16], [8 x i16]* %573, i64 1
  %arrayidx1115 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1114, i32 0, i64 2
  store i16 %conv1103, i16* %arrayidx1115, align 2
  %574 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1116 = getelementptr inbounds [8 x i16], [8 x i16]* %574, i64 0
  %arrayidx1117 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1116, i32 0, i64 1
  store i16 %conv1103, i16* %arrayidx1117, align 2
  %575 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1118 = zext i16 %575 to i32
  %576 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1119 = zext i16 %576 to i32
  %add1120 = add nsw i32 %conv1118, %conv1119
  %577 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1121 = zext i16 %577 to i32
  %mul1122 = mul nsw i32 2, %conv1121
  %add1123 = add nsw i32 %add1120, %mul1122
  %add1124 = add nsw i32 %add1123, 2
  %shr1125 = ashr i32 %add1124, 2
  %conv1126 = trunc i32 %shr1125 to i16
  %578 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1127 = getelementptr inbounds [8 x i16], [8 x i16]* %578, i64 5
  %arrayidx1128 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1127, i32 0, i64 7
  store i16 %conv1126, i16* %arrayidx1128, align 2
  %579 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1129 = getelementptr inbounds [8 x i16], [8 x i16]* %579, i64 4
  %arrayidx1130 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1129, i32 0, i64 6
  store i16 %conv1126, i16* %arrayidx1130, align 2
  %580 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1131 = getelementptr inbounds [8 x i16], [8 x i16]* %580, i64 3
  %arrayidx1132 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1131, i32 0, i64 5
  store i16 %conv1126, i16* %arrayidx1132, align 2
  %581 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1133 = getelementptr inbounds [8 x i16], [8 x i16]* %581, i64 2
  %arrayidx1134 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1133, i32 0, i64 4
  store i16 %conv1126, i16* %arrayidx1134, align 2
  %582 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1135 = getelementptr inbounds [8 x i16], [8 x i16]* %582, i64 1
  %arrayidx1136 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1135, i32 0, i64 3
  store i16 %conv1126, i16* %arrayidx1136, align 2
  %583 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1137 = getelementptr inbounds [8 x i16], [8 x i16]* %583, i64 0
  %arrayidx1138 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1137, i32 0, i64 2
  store i16 %conv1126, i16* %arrayidx1138, align 2
  %584 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1139 = zext i16 %584 to i32
  %585 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1140 = zext i16 %585 to i32
  %add1141 = add nsw i32 %conv1139, %conv1140
  %586 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1142 = zext i16 %586 to i32
  %mul1143 = mul nsw i32 2, %conv1142
  %add1144 = add nsw i32 %add1141, %mul1143
  %add1145 = add nsw i32 %add1144, 2
  %shr1146 = ashr i32 %add1145, 2
  %conv1147 = trunc i32 %shr1146 to i16
  %587 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1148 = getelementptr inbounds [8 x i16], [8 x i16]* %587, i64 4
  %arrayidx1149 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1148, i32 0, i64 7
  store i16 %conv1147, i16* %arrayidx1149, align 2
  %588 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1150 = getelementptr inbounds [8 x i16], [8 x i16]* %588, i64 3
  %arrayidx1151 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1150, i32 0, i64 6
  store i16 %conv1147, i16* %arrayidx1151, align 2
  %589 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1152 = getelementptr inbounds [8 x i16], [8 x i16]* %589, i64 2
  %arrayidx1153 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1152, i32 0, i64 5
  store i16 %conv1147, i16* %arrayidx1153, align 2
  %590 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1154 = getelementptr inbounds [8 x i16], [8 x i16]* %590, i64 1
  %arrayidx1155 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1154, i32 0, i64 4
  store i16 %conv1147, i16* %arrayidx1155, align 2
  %591 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1156 = getelementptr inbounds [8 x i16], [8 x i16]* %591, i64 0
  %arrayidx1157 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1156, i32 0, i64 3
  store i16 %conv1147, i16* %arrayidx1157, align 2
  %592 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1158 = zext i16 %592 to i32
  %593 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1159 = zext i16 %593 to i32
  %add1160 = add nsw i32 %conv1158, %conv1159
  %594 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1161 = zext i16 %594 to i32
  %mul1162 = mul nsw i32 2, %conv1161
  %add1163 = add nsw i32 %add1160, %mul1162
  %add1164 = add nsw i32 %add1163, 2
  %shr1165 = ashr i32 %add1164, 2
  %conv1166 = trunc i32 %shr1165 to i16
  %595 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1167 = getelementptr inbounds [8 x i16], [8 x i16]* %595, i64 3
  %arrayidx1168 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1167, i32 0, i64 7
  store i16 %conv1166, i16* %arrayidx1168, align 2
  %596 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1169 = getelementptr inbounds [8 x i16], [8 x i16]* %596, i64 2
  %arrayidx1170 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1169, i32 0, i64 6
  store i16 %conv1166, i16* %arrayidx1170, align 2
  %597 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1171 = getelementptr inbounds [8 x i16], [8 x i16]* %597, i64 1
  %arrayidx1172 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1171, i32 0, i64 5
  store i16 %conv1166, i16* %arrayidx1172, align 2
  %598 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1173 = getelementptr inbounds [8 x i16], [8 x i16]* %598, i64 0
  %arrayidx1174 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1173, i32 0, i64 4
  store i16 %conv1166, i16* %arrayidx1174, align 2
  %599 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1175 = zext i16 %599 to i32
  %600 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1176 = zext i16 %600 to i32
  %add1177 = add nsw i32 %conv1175, %conv1176
  %601 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1178 = zext i16 %601 to i32
  %mul1179 = mul nsw i32 2, %conv1178
  %add1180 = add nsw i32 %add1177, %mul1179
  %add1181 = add nsw i32 %add1180, 2
  %shr1182 = ashr i32 %add1181, 2
  %conv1183 = trunc i32 %shr1182 to i16
  %602 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1184 = getelementptr inbounds [8 x i16], [8 x i16]* %602, i64 2
  %arrayidx1185 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1184, i32 0, i64 7
  store i16 %conv1183, i16* %arrayidx1185, align 2
  %603 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1186 = getelementptr inbounds [8 x i16], [8 x i16]* %603, i64 1
  %arrayidx1187 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1186, i32 0, i64 6
  store i16 %conv1183, i16* %arrayidx1187, align 2
  %604 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1188 = getelementptr inbounds [8 x i16], [8 x i16]* %604, i64 0
  %arrayidx1189 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1188, i32 0, i64 5
  store i16 %conv1183, i16* %arrayidx1189, align 2
  %605 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1190 = zext i16 %605 to i32
  %606 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv1191 = zext i16 %606 to i32
  %add1192 = add nsw i32 %conv1190, %conv1191
  %607 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1193 = zext i16 %607 to i32
  %mul1194 = mul nsw i32 2, %conv1193
  %add1195 = add nsw i32 %add1192, %mul1194
  %add1196 = add nsw i32 %add1195, 2
  %shr1197 = ashr i32 %add1196, 2
  %conv1198 = trunc i32 %shr1197 to i16
  %608 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1199 = getelementptr inbounds [8 x i16], [8 x i16]* %608, i64 1
  %arrayidx1200 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1199, i32 0, i64 7
  store i16 %conv1198, i16* %arrayidx1200, align 2
  %609 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1201 = getelementptr inbounds [8 x i16], [8 x i16]* %609, i64 0
  %arrayidx1202 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1201, i32 0, i64 6
  store i16 %conv1198, i16* %arrayidx1202, align 2
  %610 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1203 = zext i16 %610 to i32
  %611 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv1204 = zext i16 %611 to i32
  %add1205 = add nsw i32 %conv1203, %conv1204
  %612 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv1206 = zext i16 %612 to i32
  %mul1207 = mul nsw i32 2, %conv1206
  %add1208 = add nsw i32 %add1205, %mul1207
  %add1209 = add nsw i32 %add1208, 2
  %shr1210 = ashr i32 %add1209, 2
  %conv1211 = trunc i32 %shr1210 to i16
  %613 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1212 = getelementptr inbounds [8 x i16], [8 x i16]* %613, i64 0
  %arrayidx1213 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1212, i32 0, i64 7
  store i16 %conv1211, i16* %arrayidx1213, align 2
  %614 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31214 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %614, i32 0, i32 49
  %arrayidx1215 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31214, i32 0, i64 5
  %arraydecay1216 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1215, i32 0, i32 0
  store [8 x i16]* %arraydecay1216, [8 x i16]** %cur_pred, align 8
  %615 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1217 = zext i16 %615 to i32
  %616 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1218 = zext i16 %616 to i32
  %add1219 = add nsw i32 %conv1217, %conv1218
  %add1220 = add nsw i32 %add1219, 1
  %shr1221 = ashr i32 %add1220, 1
  %conv1222 = trunc i32 %shr1221 to i16
  %617 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1223 = getelementptr inbounds [8 x i16], [8 x i16]* %617, i64 6
  %arrayidx1224 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1223, i32 0, i64 3
  store i16 %conv1222, i16* %arrayidx1224, align 2
  %618 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1225 = getelementptr inbounds [8 x i16], [8 x i16]* %618, i64 4
  %arrayidx1226 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1225, i32 0, i64 2
  store i16 %conv1222, i16* %arrayidx1226, align 2
  %619 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1227 = getelementptr inbounds [8 x i16], [8 x i16]* %619, i64 2
  %arrayidx1228 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1227, i32 0, i64 1
  store i16 %conv1222, i16* %arrayidx1228, align 2
  %620 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1229 = getelementptr inbounds [8 x i16], [8 x i16]* %620, i64 0
  %arrayidx1230 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1229, i32 0, i64 0
  store i16 %conv1222, i16* %arrayidx1230, align 2
  %621 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1231 = zext i16 %621 to i32
  %622 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1232 = zext i16 %622 to i32
  %add1233 = add nsw i32 %conv1231, %conv1232
  %add1234 = add nsw i32 %add1233, 1
  %shr1235 = ashr i32 %add1234, 1
  %conv1236 = trunc i32 %shr1235 to i16
  %623 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1237 = getelementptr inbounds [8 x i16], [8 x i16]* %623, i64 6
  %arrayidx1238 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1237, i32 0, i64 4
  store i16 %conv1236, i16* %arrayidx1238, align 2
  %624 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1239 = getelementptr inbounds [8 x i16], [8 x i16]* %624, i64 4
  %arrayidx1240 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1239, i32 0, i64 3
  store i16 %conv1236, i16* %arrayidx1240, align 2
  %625 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1241 = getelementptr inbounds [8 x i16], [8 x i16]* %625, i64 2
  %arrayidx1242 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1241, i32 0, i64 2
  store i16 %conv1236, i16* %arrayidx1242, align 2
  %626 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1243 = getelementptr inbounds [8 x i16], [8 x i16]* %626, i64 0
  %arrayidx1244 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1243, i32 0, i64 1
  store i16 %conv1236, i16* %arrayidx1244, align 2
  %627 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1245 = zext i16 %627 to i32
  %628 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1246 = zext i16 %628 to i32
  %add1247 = add nsw i32 %conv1245, %conv1246
  %add1248 = add nsw i32 %add1247, 1
  %shr1249 = ashr i32 %add1248, 1
  %conv1250 = trunc i32 %shr1249 to i16
  %629 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1251 = getelementptr inbounds [8 x i16], [8 x i16]* %629, i64 6
  %arrayidx1252 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1251, i32 0, i64 5
  store i16 %conv1250, i16* %arrayidx1252, align 2
  %630 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1253 = getelementptr inbounds [8 x i16], [8 x i16]* %630, i64 4
  %arrayidx1254 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1253, i32 0, i64 4
  store i16 %conv1250, i16* %arrayidx1254, align 2
  %631 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1255 = getelementptr inbounds [8 x i16], [8 x i16]* %631, i64 2
  %arrayidx1256 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1255, i32 0, i64 3
  store i16 %conv1250, i16* %arrayidx1256, align 2
  %632 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1257 = getelementptr inbounds [8 x i16], [8 x i16]* %632, i64 0
  %arrayidx1258 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1257, i32 0, i64 2
  store i16 %conv1250, i16* %arrayidx1258, align 2
  %633 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1259 = zext i16 %633 to i32
  %634 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1260 = zext i16 %634 to i32
  %add1261 = add nsw i32 %conv1259, %conv1260
  %add1262 = add nsw i32 %add1261, 1
  %shr1263 = ashr i32 %add1262, 1
  %conv1264 = trunc i32 %shr1263 to i16
  %635 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1265 = getelementptr inbounds [8 x i16], [8 x i16]* %635, i64 6
  %arrayidx1266 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1265, i32 0, i64 6
  store i16 %conv1264, i16* %arrayidx1266, align 2
  %636 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1267 = getelementptr inbounds [8 x i16], [8 x i16]* %636, i64 4
  %arrayidx1268 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1267, i32 0, i64 5
  store i16 %conv1264, i16* %arrayidx1268, align 2
  %637 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1269 = getelementptr inbounds [8 x i16], [8 x i16]* %637, i64 2
  %arrayidx1270 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1269, i32 0, i64 4
  store i16 %conv1264, i16* %arrayidx1270, align 2
  %638 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1271 = getelementptr inbounds [8 x i16], [8 x i16]* %638, i64 0
  %arrayidx1272 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1271, i32 0, i64 3
  store i16 %conv1264, i16* %arrayidx1272, align 2
  %639 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1273 = zext i16 %639 to i32
  %640 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1274 = zext i16 %640 to i32
  %add1275 = add nsw i32 %conv1273, %conv1274
  %add1276 = add nsw i32 %add1275, 1
  %shr1277 = ashr i32 %add1276, 1
  %conv1278 = trunc i32 %shr1277 to i16
  %641 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1279 = getelementptr inbounds [8 x i16], [8 x i16]* %641, i64 6
  %arrayidx1280 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1279, i32 0, i64 7
  store i16 %conv1278, i16* %arrayidx1280, align 2
  %642 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1281 = getelementptr inbounds [8 x i16], [8 x i16]* %642, i64 4
  %arrayidx1282 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1281, i32 0, i64 6
  store i16 %conv1278, i16* %arrayidx1282, align 2
  %643 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1283 = getelementptr inbounds [8 x i16], [8 x i16]* %643, i64 2
  %arrayidx1284 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1283, i32 0, i64 5
  store i16 %conv1278, i16* %arrayidx1284, align 2
  %644 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1285 = getelementptr inbounds [8 x i16], [8 x i16]* %644, i64 0
  %arrayidx1286 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1285, i32 0, i64 4
  store i16 %conv1278, i16* %arrayidx1286, align 2
  %645 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1287 = zext i16 %645 to i32
  %646 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1288 = zext i16 %646 to i32
  %add1289 = add nsw i32 %conv1287, %conv1288
  %add1290 = add nsw i32 %add1289, 1
  %shr1291 = ashr i32 %add1290, 1
  %conv1292 = trunc i32 %shr1291 to i16
  %647 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1293 = getelementptr inbounds [8 x i16], [8 x i16]* %647, i64 4
  %arrayidx1294 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1293, i32 0, i64 7
  store i16 %conv1292, i16* %arrayidx1294, align 2
  %648 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1295 = getelementptr inbounds [8 x i16], [8 x i16]* %648, i64 2
  %arrayidx1296 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1295, i32 0, i64 6
  store i16 %conv1292, i16* %arrayidx1296, align 2
  %649 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1297 = getelementptr inbounds [8 x i16], [8 x i16]* %649, i64 0
  %arrayidx1298 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1297, i32 0, i64 5
  store i16 %conv1292, i16* %arrayidx1298, align 2
  %650 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1299 = zext i16 %650 to i32
  %651 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv1300 = zext i16 %651 to i32
  %add1301 = add nsw i32 %conv1299, %conv1300
  %add1302 = add nsw i32 %add1301, 1
  %shr1303 = ashr i32 %add1302, 1
  %conv1304 = trunc i32 %shr1303 to i16
  %652 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1305 = getelementptr inbounds [8 x i16], [8 x i16]* %652, i64 2
  %arrayidx1306 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1305, i32 0, i64 7
  store i16 %conv1304, i16* %arrayidx1306, align 2
  %653 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1307 = getelementptr inbounds [8 x i16], [8 x i16]* %653, i64 0
  %arrayidx1308 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1307, i32 0, i64 6
  store i16 %conv1304, i16* %arrayidx1308, align 2
  %654 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv1309 = zext i16 %654 to i32
  %655 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv1310 = zext i16 %655 to i32
  %add1311 = add nsw i32 %conv1309, %conv1310
  %add1312 = add nsw i32 %add1311, 1
  %shr1313 = ashr i32 %add1312, 1
  %conv1314 = trunc i32 %shr1313 to i16
  %656 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1315 = getelementptr inbounds [8 x i16], [8 x i16]* %656, i64 0
  %arrayidx1316 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1315, i32 0, i64 7
  store i16 %conv1314, i16* %arrayidx1316, align 2
  %657 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1317 = zext i16 %657 to i32
  %658 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1318 = zext i16 %658 to i32
  %add1319 = add nsw i32 %conv1317, %conv1318
  %659 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1320 = zext i16 %659 to i32
  %mul1321 = mul nsw i32 2, %conv1320
  %add1322 = add nsw i32 %add1319, %mul1321
  %add1323 = add nsw i32 %add1322, 2
  %shr1324 = ashr i32 %add1323, 2
  %conv1325 = trunc i32 %shr1324 to i16
  %660 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1326 = getelementptr inbounds [8 x i16], [8 x i16]* %660, i64 7
  %arrayidx1327 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1326, i32 0, i64 3
  store i16 %conv1325, i16* %arrayidx1327, align 2
  %661 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1328 = getelementptr inbounds [8 x i16], [8 x i16]* %661, i64 5
  %arrayidx1329 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1328, i32 0, i64 2
  store i16 %conv1325, i16* %arrayidx1329, align 2
  %662 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1330 = getelementptr inbounds [8 x i16], [8 x i16]* %662, i64 3
  %arrayidx1331 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1330, i32 0, i64 1
  store i16 %conv1325, i16* %arrayidx1331, align 2
  %663 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1332 = getelementptr inbounds [8 x i16], [8 x i16]* %663, i64 1
  %arrayidx1333 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1332, i32 0, i64 0
  store i16 %conv1325, i16* %arrayidx1333, align 2
  %664 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1334 = zext i16 %664 to i32
  %665 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1335 = zext i16 %665 to i32
  %add1336 = add nsw i32 %conv1334, %conv1335
  %666 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1337 = zext i16 %666 to i32
  %mul1338 = mul nsw i32 2, %conv1337
  %add1339 = add nsw i32 %add1336, %mul1338
  %add1340 = add nsw i32 %add1339, 2
  %shr1341 = ashr i32 %add1340, 2
  %conv1342 = trunc i32 %shr1341 to i16
  %667 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1343 = getelementptr inbounds [8 x i16], [8 x i16]* %667, i64 7
  %arrayidx1344 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1343, i32 0, i64 4
  store i16 %conv1342, i16* %arrayidx1344, align 2
  %668 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1345 = getelementptr inbounds [8 x i16], [8 x i16]* %668, i64 5
  %arrayidx1346 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1345, i32 0, i64 3
  store i16 %conv1342, i16* %arrayidx1346, align 2
  %669 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1347 = getelementptr inbounds [8 x i16], [8 x i16]* %669, i64 3
  %arrayidx1348 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1347, i32 0, i64 2
  store i16 %conv1342, i16* %arrayidx1348, align 2
  %670 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1349 = getelementptr inbounds [8 x i16], [8 x i16]* %670, i64 1
  %arrayidx1350 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1349, i32 0, i64 1
  store i16 %conv1342, i16* %arrayidx1350, align 2
  %671 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1351 = zext i16 %671 to i32
  %672 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1352 = zext i16 %672 to i32
  %add1353 = add nsw i32 %conv1351, %conv1352
  %673 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1354 = zext i16 %673 to i32
  %mul1355 = mul nsw i32 2, %conv1354
  %add1356 = add nsw i32 %add1353, %mul1355
  %add1357 = add nsw i32 %add1356, 2
  %shr1358 = ashr i32 %add1357, 2
  %conv1359 = trunc i32 %shr1358 to i16
  %674 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1360 = getelementptr inbounds [8 x i16], [8 x i16]* %674, i64 7
  %arrayidx1361 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1360, i32 0, i64 5
  store i16 %conv1359, i16* %arrayidx1361, align 2
  %675 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1362 = getelementptr inbounds [8 x i16], [8 x i16]* %675, i64 5
  %arrayidx1363 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1362, i32 0, i64 4
  store i16 %conv1359, i16* %arrayidx1363, align 2
  %676 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1364 = getelementptr inbounds [8 x i16], [8 x i16]* %676, i64 3
  %arrayidx1365 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1364, i32 0, i64 3
  store i16 %conv1359, i16* %arrayidx1365, align 2
  %677 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1366 = getelementptr inbounds [8 x i16], [8 x i16]* %677, i64 1
  %arrayidx1367 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1366, i32 0, i64 2
  store i16 %conv1359, i16* %arrayidx1367, align 2
  %678 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1368 = zext i16 %678 to i32
  %679 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1369 = zext i16 %679 to i32
  %add1370 = add nsw i32 %conv1368, %conv1369
  %680 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1371 = zext i16 %680 to i32
  %mul1372 = mul nsw i32 2, %conv1371
  %add1373 = add nsw i32 %add1370, %mul1372
  %add1374 = add nsw i32 %add1373, 2
  %shr1375 = ashr i32 %add1374, 2
  %conv1376 = trunc i32 %shr1375 to i16
  %681 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1377 = getelementptr inbounds [8 x i16], [8 x i16]* %681, i64 7
  %arrayidx1378 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1377, i32 0, i64 6
  store i16 %conv1376, i16* %arrayidx1378, align 2
  %682 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1379 = getelementptr inbounds [8 x i16], [8 x i16]* %682, i64 5
  %arrayidx1380 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1379, i32 0, i64 5
  store i16 %conv1376, i16* %arrayidx1380, align 2
  %683 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1381 = getelementptr inbounds [8 x i16], [8 x i16]* %683, i64 3
  %arrayidx1382 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1381, i32 0, i64 4
  store i16 %conv1376, i16* %arrayidx1382, align 2
  %684 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1383 = getelementptr inbounds [8 x i16], [8 x i16]* %684, i64 1
  %arrayidx1384 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1383, i32 0, i64 3
  store i16 %conv1376, i16* %arrayidx1384, align 2
  %685 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1385 = zext i16 %685 to i32
  %686 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1386 = zext i16 %686 to i32
  %add1387 = add nsw i32 %conv1385, %conv1386
  %687 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1388 = zext i16 %687 to i32
  %mul1389 = mul nsw i32 2, %conv1388
  %add1390 = add nsw i32 %add1387, %mul1389
  %add1391 = add nsw i32 %add1390, 2
  %shr1392 = ashr i32 %add1391, 2
  %conv1393 = trunc i32 %shr1392 to i16
  %688 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1394 = getelementptr inbounds [8 x i16], [8 x i16]* %688, i64 7
  %arrayidx1395 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1394, i32 0, i64 7
  store i16 %conv1393, i16* %arrayidx1395, align 2
  %689 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1396 = getelementptr inbounds [8 x i16], [8 x i16]* %689, i64 5
  %arrayidx1397 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1396, i32 0, i64 6
  store i16 %conv1393, i16* %arrayidx1397, align 2
  %690 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1398 = getelementptr inbounds [8 x i16], [8 x i16]* %690, i64 3
  %arrayidx1399 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1398, i32 0, i64 5
  store i16 %conv1393, i16* %arrayidx1399, align 2
  %691 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1400 = getelementptr inbounds [8 x i16], [8 x i16]* %691, i64 1
  %arrayidx1401 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1400, i32 0, i64 4
  store i16 %conv1393, i16* %arrayidx1401, align 2
  %692 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1402 = zext i16 %692 to i32
  %693 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1403 = zext i16 %693 to i32
  %add1404 = add nsw i32 %conv1402, %conv1403
  %694 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1405 = zext i16 %694 to i32
  %mul1406 = mul nsw i32 2, %conv1405
  %add1407 = add nsw i32 %add1404, %mul1406
  %add1408 = add nsw i32 %add1407, 2
  %shr1409 = ashr i32 %add1408, 2
  %conv1410 = trunc i32 %shr1409 to i16
  %695 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1411 = getelementptr inbounds [8 x i16], [8 x i16]* %695, i64 5
  %arrayidx1412 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1411, i32 0, i64 7
  store i16 %conv1410, i16* %arrayidx1412, align 2
  %696 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1413 = getelementptr inbounds [8 x i16], [8 x i16]* %696, i64 3
  %arrayidx1414 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1413, i32 0, i64 6
  store i16 %conv1410, i16* %arrayidx1414, align 2
  %697 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1415 = getelementptr inbounds [8 x i16], [8 x i16]* %697, i64 1
  %arrayidx1416 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1415, i32 0, i64 5
  store i16 %conv1410, i16* %arrayidx1416, align 2
  %698 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1417 = zext i16 %698 to i32
  %699 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv1418 = zext i16 %699 to i32
  %add1419 = add nsw i32 %conv1417, %conv1418
  %700 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1420 = zext i16 %700 to i32
  %mul1421 = mul nsw i32 2, %conv1420
  %add1422 = add nsw i32 %add1419, %mul1421
  %add1423 = add nsw i32 %add1422, 2
  %shr1424 = ashr i32 %add1423, 2
  %conv1425 = trunc i32 %shr1424 to i16
  %701 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1426 = getelementptr inbounds [8 x i16], [8 x i16]* %701, i64 3
  %arrayidx1427 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1426, i32 0, i64 7
  store i16 %conv1425, i16* %arrayidx1427, align 2
  %702 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1428 = getelementptr inbounds [8 x i16], [8 x i16]* %702, i64 1
  %arrayidx1429 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1428, i32 0, i64 6
  store i16 %conv1425, i16* %arrayidx1429, align 2
  %703 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1430 = zext i16 %703 to i32
  %704 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 8), align 2
  %conv1431 = zext i16 %704 to i32
  %add1432 = add nsw i32 %conv1430, %conv1431
  %705 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv1433 = zext i16 %705 to i32
  %mul1434 = mul nsw i32 2, %conv1433
  %add1435 = add nsw i32 %add1432, %mul1434
  %add1436 = add nsw i32 %add1435, 2
  %shr1437 = ashr i32 %add1436, 2
  %conv1438 = trunc i32 %shr1437 to i16
  %706 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1439 = getelementptr inbounds [8 x i16], [8 x i16]* %706, i64 1
  %arrayidx1440 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1439, i32 0, i64 7
  store i16 %conv1438, i16* %arrayidx1440, align 2
  %707 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1441 = zext i16 %707 to i32
  %708 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1442 = zext i16 %708 to i32
  %add1443 = add nsw i32 %conv1441, %conv1442
  %709 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1444 = zext i16 %709 to i32
  %mul1445 = mul nsw i32 2, %conv1444
  %add1446 = add nsw i32 %add1443, %mul1445
  %add1447 = add nsw i32 %add1446, 2
  %shr1448 = ashr i32 %add1447, 2
  %conv1449 = trunc i32 %shr1448 to i16
  %710 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1450 = getelementptr inbounds [8 x i16], [8 x i16]* %710, i64 6
  %arrayidx1451 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1450, i32 0, i64 2
  store i16 %conv1449, i16* %arrayidx1451, align 2
  %711 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1452 = getelementptr inbounds [8 x i16], [8 x i16]* %711, i64 4
  %arrayidx1453 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1452, i32 0, i64 1
  store i16 %conv1449, i16* %arrayidx1453, align 2
  %712 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1454 = getelementptr inbounds [8 x i16], [8 x i16]* %712, i64 2
  %arrayidx1455 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1454, i32 0, i64 0
  store i16 %conv1449, i16* %arrayidx1455, align 2
  %713 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1456 = zext i16 %713 to i32
  %714 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1457 = zext i16 %714 to i32
  %add1458 = add nsw i32 %conv1456, %conv1457
  %715 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1459 = zext i16 %715 to i32
  %mul1460 = mul nsw i32 2, %conv1459
  %add1461 = add nsw i32 %add1458, %mul1460
  %add1462 = add nsw i32 %add1461, 2
  %shr1463 = ashr i32 %add1462, 2
  %conv1464 = trunc i32 %shr1463 to i16
  %716 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1465 = getelementptr inbounds [8 x i16], [8 x i16]* %716, i64 7
  %arrayidx1466 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1465, i32 0, i64 2
  store i16 %conv1464, i16* %arrayidx1466, align 2
  %717 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1467 = getelementptr inbounds [8 x i16], [8 x i16]* %717, i64 5
  %arrayidx1468 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1467, i32 0, i64 1
  store i16 %conv1464, i16* %arrayidx1468, align 2
  %718 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1469 = getelementptr inbounds [8 x i16], [8 x i16]* %718, i64 3
  %arrayidx1470 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1469, i32 0, i64 0
  store i16 %conv1464, i16* %arrayidx1470, align 2
  %719 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1471 = zext i16 %719 to i32
  %720 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1472 = zext i16 %720 to i32
  %add1473 = add nsw i32 %conv1471, %conv1472
  %721 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1474 = zext i16 %721 to i32
  %mul1475 = mul nsw i32 2, %conv1474
  %add1476 = add nsw i32 %add1473, %mul1475
  %add1477 = add nsw i32 %add1476, 2
  %shr1478 = ashr i32 %add1477, 2
  %conv1479 = trunc i32 %shr1478 to i16
  %722 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1480 = getelementptr inbounds [8 x i16], [8 x i16]* %722, i64 6
  %arrayidx1481 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1480, i32 0, i64 1
  store i16 %conv1479, i16* %arrayidx1481, align 2
  %723 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1482 = getelementptr inbounds [8 x i16], [8 x i16]* %723, i64 4
  %arrayidx1483 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1482, i32 0, i64 0
  store i16 %conv1479, i16* %arrayidx1483, align 2
  %724 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1484 = zext i16 %724 to i32
  %725 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1485 = zext i16 %725 to i32
  %add1486 = add nsw i32 %conv1484, %conv1485
  %726 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1487 = zext i16 %726 to i32
  %mul1488 = mul nsw i32 2, %conv1487
  %add1489 = add nsw i32 %add1486, %mul1488
  %add1490 = add nsw i32 %add1489, 2
  %shr1491 = ashr i32 %add1490, 2
  %conv1492 = trunc i32 %shr1491 to i16
  %727 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1493 = getelementptr inbounds [8 x i16], [8 x i16]* %727, i64 7
  %arrayidx1494 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1493, i32 0, i64 1
  store i16 %conv1492, i16* %arrayidx1494, align 2
  %728 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1495 = getelementptr inbounds [8 x i16], [8 x i16]* %728, i64 5
  %arrayidx1496 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1495, i32 0, i64 0
  store i16 %conv1492, i16* %arrayidx1496, align 2
  %729 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1497 = zext i16 %729 to i32
  %730 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1498 = zext i16 %730 to i32
  %add1499 = add nsw i32 %conv1497, %conv1498
  %731 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1500 = zext i16 %731 to i32
  %mul1501 = mul nsw i32 2, %conv1500
  %add1502 = add nsw i32 %add1499, %mul1501
  %add1503 = add nsw i32 %add1502, 2
  %shr1504 = ashr i32 %add1503, 2
  %conv1505 = trunc i32 %shr1504 to i16
  %732 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1506 = getelementptr inbounds [8 x i16], [8 x i16]* %732, i64 6
  %arrayidx1507 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1506, i32 0, i64 0
  store i16 %conv1505, i16* %arrayidx1507, align 2
  %733 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1508 = zext i16 %733 to i32
  %734 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1509 = zext i16 %734 to i32
  %add1510 = add nsw i32 %conv1508, %conv1509
  %735 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1511 = zext i16 %735 to i32
  %mul1512 = mul nsw i32 2, %conv1511
  %add1513 = add nsw i32 %add1510, %mul1512
  %add1514 = add nsw i32 %add1513, 2
  %shr1515 = ashr i32 %add1514, 2
  %conv1516 = trunc i32 %shr1515 to i16
  %736 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1517 = getelementptr inbounds [8 x i16], [8 x i16]* %736, i64 7
  %arrayidx1518 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1517, i32 0, i64 0
  store i16 %conv1516, i16* %arrayidx1518, align 2
  %737 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31519 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %737, i32 0, i32 49
  %arrayidx1520 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31519, i32 0, i64 6
  %arraydecay1521 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1520, i32 0, i32 0
  store [8 x i16]* %arraydecay1521, [8 x i16]** %cur_pred, align 8
  %738 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1522 = zext i16 %738 to i32
  %739 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1523 = zext i16 %739 to i32
  %add1524 = add nsw i32 %conv1522, %conv1523
  %add1525 = add nsw i32 %add1524, 1
  %shr1526 = ashr i32 %add1525, 1
  %conv1527 = trunc i32 %shr1526 to i16
  %740 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1528 = getelementptr inbounds [8 x i16], [8 x i16]* %740, i64 3
  %arrayidx1529 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1528, i32 0, i64 6
  store i16 %conv1527, i16* %arrayidx1529, align 2
  %741 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1530 = getelementptr inbounds [8 x i16], [8 x i16]* %741, i64 2
  %arrayidx1531 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1530, i32 0, i64 4
  store i16 %conv1527, i16* %arrayidx1531, align 2
  %742 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1532 = getelementptr inbounds [8 x i16], [8 x i16]* %742, i64 1
  %arrayidx1533 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1532, i32 0, i64 2
  store i16 %conv1527, i16* %arrayidx1533, align 2
  %743 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1534 = getelementptr inbounds [8 x i16], [8 x i16]* %743, i64 0
  %arrayidx1535 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1534, i32 0, i64 0
  store i16 %conv1527, i16* %arrayidx1535, align 2
  %744 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1536 = zext i16 %744 to i32
  %745 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1537 = zext i16 %745 to i32
  %add1538 = add nsw i32 %conv1536, %conv1537
  %add1539 = add nsw i32 %add1538, 1
  %shr1540 = ashr i32 %add1539, 1
  %conv1541 = trunc i32 %shr1540 to i16
  %746 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1542 = getelementptr inbounds [8 x i16], [8 x i16]* %746, i64 4
  %arrayidx1543 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1542, i32 0, i64 6
  store i16 %conv1541, i16* %arrayidx1543, align 2
  %747 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1544 = getelementptr inbounds [8 x i16], [8 x i16]* %747, i64 3
  %arrayidx1545 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1544, i32 0, i64 4
  store i16 %conv1541, i16* %arrayidx1545, align 2
  %748 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1546 = getelementptr inbounds [8 x i16], [8 x i16]* %748, i64 2
  %arrayidx1547 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1546, i32 0, i64 2
  store i16 %conv1541, i16* %arrayidx1547, align 2
  %749 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1548 = getelementptr inbounds [8 x i16], [8 x i16]* %749, i64 1
  %arrayidx1549 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1548, i32 0, i64 0
  store i16 %conv1541, i16* %arrayidx1549, align 2
  %750 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1550 = zext i16 %750 to i32
  %751 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1551 = zext i16 %751 to i32
  %add1552 = add nsw i32 %conv1550, %conv1551
  %add1553 = add nsw i32 %add1552, 1
  %shr1554 = ashr i32 %add1553, 1
  %conv1555 = trunc i32 %shr1554 to i16
  %752 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1556 = getelementptr inbounds [8 x i16], [8 x i16]* %752, i64 5
  %arrayidx1557 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1556, i32 0, i64 6
  store i16 %conv1555, i16* %arrayidx1557, align 2
  %753 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1558 = getelementptr inbounds [8 x i16], [8 x i16]* %753, i64 4
  %arrayidx1559 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1558, i32 0, i64 4
  store i16 %conv1555, i16* %arrayidx1559, align 2
  %754 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1560 = getelementptr inbounds [8 x i16], [8 x i16]* %754, i64 3
  %arrayidx1561 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1560, i32 0, i64 2
  store i16 %conv1555, i16* %arrayidx1561, align 2
  %755 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1562 = getelementptr inbounds [8 x i16], [8 x i16]* %755, i64 2
  %arrayidx1563 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1562, i32 0, i64 0
  store i16 %conv1555, i16* %arrayidx1563, align 2
  %756 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1564 = zext i16 %756 to i32
  %757 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1565 = zext i16 %757 to i32
  %add1566 = add nsw i32 %conv1564, %conv1565
  %add1567 = add nsw i32 %add1566, 1
  %shr1568 = ashr i32 %add1567, 1
  %conv1569 = trunc i32 %shr1568 to i16
  %758 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1570 = getelementptr inbounds [8 x i16], [8 x i16]* %758, i64 6
  %arrayidx1571 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1570, i32 0, i64 6
  store i16 %conv1569, i16* %arrayidx1571, align 2
  %759 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1572 = getelementptr inbounds [8 x i16], [8 x i16]* %759, i64 5
  %arrayidx1573 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1572, i32 0, i64 4
  store i16 %conv1569, i16* %arrayidx1573, align 2
  %760 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1574 = getelementptr inbounds [8 x i16], [8 x i16]* %760, i64 4
  %arrayidx1575 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1574, i32 0, i64 2
  store i16 %conv1569, i16* %arrayidx1575, align 2
  %761 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1576 = getelementptr inbounds [8 x i16], [8 x i16]* %761, i64 3
  %arrayidx1577 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1576, i32 0, i64 0
  store i16 %conv1569, i16* %arrayidx1577, align 2
  %762 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1578 = zext i16 %762 to i32
  %763 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1579 = zext i16 %763 to i32
  %add1580 = add nsw i32 %conv1578, %conv1579
  %add1581 = add nsw i32 %add1580, 1
  %shr1582 = ashr i32 %add1581, 1
  %conv1583 = trunc i32 %shr1582 to i16
  %764 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1584 = getelementptr inbounds [8 x i16], [8 x i16]* %764, i64 7
  %arrayidx1585 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1584, i32 0, i64 6
  store i16 %conv1583, i16* %arrayidx1585, align 2
  %765 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1586 = getelementptr inbounds [8 x i16], [8 x i16]* %765, i64 6
  %arrayidx1587 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1586, i32 0, i64 4
  store i16 %conv1583, i16* %arrayidx1587, align 2
  %766 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1588 = getelementptr inbounds [8 x i16], [8 x i16]* %766, i64 5
  %arrayidx1589 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1588, i32 0, i64 2
  store i16 %conv1583, i16* %arrayidx1589, align 2
  %767 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1590 = getelementptr inbounds [8 x i16], [8 x i16]* %767, i64 4
  %arrayidx1591 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1590, i32 0, i64 0
  store i16 %conv1583, i16* %arrayidx1591, align 2
  %768 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1592 = zext i16 %768 to i32
  %769 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1593 = zext i16 %769 to i32
  %add1594 = add nsw i32 %conv1592, %conv1593
  %add1595 = add nsw i32 %add1594, 1
  %shr1596 = ashr i32 %add1595, 1
  %conv1597 = trunc i32 %shr1596 to i16
  %770 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1598 = getelementptr inbounds [8 x i16], [8 x i16]* %770, i64 7
  %arrayidx1599 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1598, i32 0, i64 4
  store i16 %conv1597, i16* %arrayidx1599, align 2
  %771 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1600 = getelementptr inbounds [8 x i16], [8 x i16]* %771, i64 6
  %arrayidx1601 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1600, i32 0, i64 2
  store i16 %conv1597, i16* %arrayidx1601, align 2
  %772 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1602 = getelementptr inbounds [8 x i16], [8 x i16]* %772, i64 5
  %arrayidx1603 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1602, i32 0, i64 0
  store i16 %conv1597, i16* %arrayidx1603, align 2
  %773 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1604 = zext i16 %773 to i32
  %774 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1605 = zext i16 %774 to i32
  %add1606 = add nsw i32 %conv1604, %conv1605
  %add1607 = add nsw i32 %add1606, 1
  %shr1608 = ashr i32 %add1607, 1
  %conv1609 = trunc i32 %shr1608 to i16
  %775 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1610 = getelementptr inbounds [8 x i16], [8 x i16]* %775, i64 7
  %arrayidx1611 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1610, i32 0, i64 2
  store i16 %conv1609, i16* %arrayidx1611, align 2
  %776 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1612 = getelementptr inbounds [8 x i16], [8 x i16]* %776, i64 6
  %arrayidx1613 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1612, i32 0, i64 0
  store i16 %conv1609, i16* %arrayidx1613, align 2
  %777 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv1614 = zext i16 %777 to i32
  %778 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1615 = zext i16 %778 to i32
  %add1616 = add nsw i32 %conv1614, %conv1615
  %add1617 = add nsw i32 %add1616, 1
  %shr1618 = ashr i32 %add1617, 1
  %conv1619 = trunc i32 %shr1618 to i16
  %779 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1620 = getelementptr inbounds [8 x i16], [8 x i16]* %779, i64 7
  %arrayidx1621 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1620, i32 0, i64 0
  store i16 %conv1619, i16* %arrayidx1621, align 2
  %780 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1622 = zext i16 %780 to i32
  %781 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1623 = zext i16 %781 to i32
  %add1624 = add nsw i32 %conv1622, %conv1623
  %782 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1625 = zext i16 %782 to i32
  %mul1626 = mul nsw i32 2, %conv1625
  %add1627 = add nsw i32 %add1624, %mul1626
  %add1628 = add nsw i32 %add1627, 2
  %shr1629 = ashr i32 %add1628, 2
  %conv1630 = trunc i32 %shr1629 to i16
  %783 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1631 = getelementptr inbounds [8 x i16], [8 x i16]* %783, i64 3
  %arrayidx1632 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1631, i32 0, i64 7
  store i16 %conv1630, i16* %arrayidx1632, align 2
  %784 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1633 = getelementptr inbounds [8 x i16], [8 x i16]* %784, i64 2
  %arrayidx1634 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1633, i32 0, i64 5
  store i16 %conv1630, i16* %arrayidx1634, align 2
  %785 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1635 = getelementptr inbounds [8 x i16], [8 x i16]* %785, i64 1
  %arrayidx1636 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1635, i32 0, i64 3
  store i16 %conv1630, i16* %arrayidx1636, align 2
  %786 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1637 = getelementptr inbounds [8 x i16], [8 x i16]* %786, i64 0
  %arrayidx1638 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1637, i32 0, i64 1
  store i16 %conv1630, i16* %arrayidx1638, align 2
  %787 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1639 = zext i16 %787 to i32
  %788 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1640 = zext i16 %788 to i32
  %add1641 = add nsw i32 %conv1639, %conv1640
  %789 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1642 = zext i16 %789 to i32
  %mul1643 = mul nsw i32 2, %conv1642
  %add1644 = add nsw i32 %add1641, %mul1643
  %add1645 = add nsw i32 %add1644, 2
  %shr1646 = ashr i32 %add1645, 2
  %conv1647 = trunc i32 %shr1646 to i16
  %790 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1648 = getelementptr inbounds [8 x i16], [8 x i16]* %790, i64 4
  %arrayidx1649 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1648, i32 0, i64 7
  store i16 %conv1647, i16* %arrayidx1649, align 2
  %791 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1650 = getelementptr inbounds [8 x i16], [8 x i16]* %791, i64 3
  %arrayidx1651 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1650, i32 0, i64 5
  store i16 %conv1647, i16* %arrayidx1651, align 2
  %792 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1652 = getelementptr inbounds [8 x i16], [8 x i16]* %792, i64 2
  %arrayidx1653 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1652, i32 0, i64 3
  store i16 %conv1647, i16* %arrayidx1653, align 2
  %793 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1654 = getelementptr inbounds [8 x i16], [8 x i16]* %793, i64 1
  %arrayidx1655 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1654, i32 0, i64 1
  store i16 %conv1647, i16* %arrayidx1655, align 2
  %794 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1656 = zext i16 %794 to i32
  %795 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1657 = zext i16 %795 to i32
  %add1658 = add nsw i32 %conv1656, %conv1657
  %796 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1659 = zext i16 %796 to i32
  %mul1660 = mul nsw i32 2, %conv1659
  %add1661 = add nsw i32 %add1658, %mul1660
  %add1662 = add nsw i32 %add1661, 2
  %shr1663 = ashr i32 %add1662, 2
  %conv1664 = trunc i32 %shr1663 to i16
  %797 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1665 = getelementptr inbounds [8 x i16], [8 x i16]* %797, i64 5
  %arrayidx1666 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1665, i32 0, i64 7
  store i16 %conv1664, i16* %arrayidx1666, align 2
  %798 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1667 = getelementptr inbounds [8 x i16], [8 x i16]* %798, i64 4
  %arrayidx1668 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1667, i32 0, i64 5
  store i16 %conv1664, i16* %arrayidx1668, align 2
  %799 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1669 = getelementptr inbounds [8 x i16], [8 x i16]* %799, i64 3
  %arrayidx1670 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1669, i32 0, i64 3
  store i16 %conv1664, i16* %arrayidx1670, align 2
  %800 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1671 = getelementptr inbounds [8 x i16], [8 x i16]* %800, i64 2
  %arrayidx1672 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1671, i32 0, i64 1
  store i16 %conv1664, i16* %arrayidx1672, align 2
  %801 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1673 = zext i16 %801 to i32
  %802 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1674 = zext i16 %802 to i32
  %add1675 = add nsw i32 %conv1673, %conv1674
  %803 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1676 = zext i16 %803 to i32
  %mul1677 = mul nsw i32 2, %conv1676
  %add1678 = add nsw i32 %add1675, %mul1677
  %add1679 = add nsw i32 %add1678, 2
  %shr1680 = ashr i32 %add1679, 2
  %conv1681 = trunc i32 %shr1680 to i16
  %804 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1682 = getelementptr inbounds [8 x i16], [8 x i16]* %804, i64 6
  %arrayidx1683 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1682, i32 0, i64 7
  store i16 %conv1681, i16* %arrayidx1683, align 2
  %805 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1684 = getelementptr inbounds [8 x i16], [8 x i16]* %805, i64 5
  %arrayidx1685 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1684, i32 0, i64 5
  store i16 %conv1681, i16* %arrayidx1685, align 2
  %806 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1686 = getelementptr inbounds [8 x i16], [8 x i16]* %806, i64 4
  %arrayidx1687 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1686, i32 0, i64 3
  store i16 %conv1681, i16* %arrayidx1687, align 2
  %807 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1688 = getelementptr inbounds [8 x i16], [8 x i16]* %807, i64 3
  %arrayidx1689 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1688, i32 0, i64 1
  store i16 %conv1681, i16* %arrayidx1689, align 2
  %808 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1690 = zext i16 %808 to i32
  %809 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1691 = zext i16 %809 to i32
  %add1692 = add nsw i32 %conv1690, %conv1691
  %810 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1693 = zext i16 %810 to i32
  %mul1694 = mul nsw i32 2, %conv1693
  %add1695 = add nsw i32 %add1692, %mul1694
  %add1696 = add nsw i32 %add1695, 2
  %shr1697 = ashr i32 %add1696, 2
  %conv1698 = trunc i32 %shr1697 to i16
  %811 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1699 = getelementptr inbounds [8 x i16], [8 x i16]* %811, i64 7
  %arrayidx1700 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1699, i32 0, i64 7
  store i16 %conv1698, i16* %arrayidx1700, align 2
  %812 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1701 = getelementptr inbounds [8 x i16], [8 x i16]* %812, i64 6
  %arrayidx1702 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1701, i32 0, i64 5
  store i16 %conv1698, i16* %arrayidx1702, align 2
  %813 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1703 = getelementptr inbounds [8 x i16], [8 x i16]* %813, i64 5
  %arrayidx1704 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1703, i32 0, i64 3
  store i16 %conv1698, i16* %arrayidx1704, align 2
  %814 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1705 = getelementptr inbounds [8 x i16], [8 x i16]* %814, i64 4
  %arrayidx1706 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1705, i32 0, i64 1
  store i16 %conv1698, i16* %arrayidx1706, align 2
  %815 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1707 = zext i16 %815 to i32
  %816 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1708 = zext i16 %816 to i32
  %add1709 = add nsw i32 %conv1707, %conv1708
  %817 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1710 = zext i16 %817 to i32
  %mul1711 = mul nsw i32 2, %conv1710
  %add1712 = add nsw i32 %add1709, %mul1711
  %add1713 = add nsw i32 %add1712, 2
  %shr1714 = ashr i32 %add1713, 2
  %conv1715 = trunc i32 %shr1714 to i16
  %818 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1716 = getelementptr inbounds [8 x i16], [8 x i16]* %818, i64 7
  %arrayidx1717 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1716, i32 0, i64 5
  store i16 %conv1715, i16* %arrayidx1717, align 2
  %819 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1718 = getelementptr inbounds [8 x i16], [8 x i16]* %819, i64 6
  %arrayidx1719 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1718, i32 0, i64 3
  store i16 %conv1715, i16* %arrayidx1719, align 2
  %820 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1720 = getelementptr inbounds [8 x i16], [8 x i16]* %820, i64 5
  %arrayidx1721 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1720, i32 0, i64 1
  store i16 %conv1715, i16* %arrayidx1721, align 2
  %821 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1722 = zext i16 %821 to i32
  %822 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1723 = zext i16 %822 to i32
  %add1724 = add nsw i32 %conv1722, %conv1723
  %823 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1725 = zext i16 %823 to i32
  %mul1726 = mul nsw i32 2, %conv1725
  %add1727 = add nsw i32 %add1724, %mul1726
  %add1728 = add nsw i32 %add1727, 2
  %shr1729 = ashr i32 %add1728, 2
  %conv1730 = trunc i32 %shr1729 to i16
  %824 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1731 = getelementptr inbounds [8 x i16], [8 x i16]* %824, i64 7
  %arrayidx1732 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1731, i32 0, i64 3
  store i16 %conv1730, i16* %arrayidx1732, align 2
  %825 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1733 = getelementptr inbounds [8 x i16], [8 x i16]* %825, i64 6
  %arrayidx1734 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1733, i32 0, i64 1
  store i16 %conv1730, i16* %arrayidx1734, align 2
  %826 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1735 = zext i16 %826 to i32
  %827 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv1736 = zext i16 %827 to i32
  %add1737 = add nsw i32 %conv1735, %conv1736
  %828 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1738 = zext i16 %828 to i32
  %mul1739 = mul nsw i32 2, %conv1738
  %add1740 = add nsw i32 %add1737, %mul1739
  %add1741 = add nsw i32 %add1740, 2
  %shr1742 = ashr i32 %add1741, 2
  %conv1743 = trunc i32 %shr1742 to i16
  %829 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1744 = getelementptr inbounds [8 x i16], [8 x i16]* %829, i64 7
  %arrayidx1745 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1744, i32 0, i64 1
  store i16 %conv1743, i16* %arrayidx1745, align 2
  %830 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 0), align 2
  %conv1746 = zext i16 %830 to i32
  %831 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1747 = zext i16 %831 to i32
  %add1748 = add nsw i32 %conv1746, %conv1747
  %832 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1749 = zext i16 %832 to i32
  %mul1750 = mul nsw i32 2, %conv1749
  %add1751 = add nsw i32 %add1748, %mul1750
  %add1752 = add nsw i32 %add1751, 2
  %shr1753 = ashr i32 %add1752, 2
  %conv1754 = trunc i32 %shr1753 to i16
  %833 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1755 = getelementptr inbounds [8 x i16], [8 x i16]* %833, i64 2
  %arrayidx1756 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1755, i32 0, i64 6
  store i16 %conv1754, i16* %arrayidx1756, align 2
  %834 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1757 = getelementptr inbounds [8 x i16], [8 x i16]* %834, i64 1
  %arrayidx1758 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1757, i32 0, i64 4
  store i16 %conv1754, i16* %arrayidx1758, align 2
  %835 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1759 = getelementptr inbounds [8 x i16], [8 x i16]* %835, i64 0
  %arrayidx1760 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1759, i32 0, i64 2
  store i16 %conv1754, i16* %arrayidx1760, align 2
  %836 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 1), align 2
  %conv1761 = zext i16 %836 to i32
  %837 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1762 = zext i16 %837 to i32
  %add1763 = add nsw i32 %conv1761, %conv1762
  %838 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1764 = zext i16 %838 to i32
  %mul1765 = mul nsw i32 2, %conv1764
  %add1766 = add nsw i32 %add1763, %mul1765
  %add1767 = add nsw i32 %add1766, 2
  %shr1768 = ashr i32 %add1767, 2
  %conv1769 = trunc i32 %shr1768 to i16
  %839 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1770 = getelementptr inbounds [8 x i16], [8 x i16]* %839, i64 2
  %arrayidx1771 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1770, i32 0, i64 7
  store i16 %conv1769, i16* %arrayidx1771, align 2
  %840 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1772 = getelementptr inbounds [8 x i16], [8 x i16]* %840, i64 1
  %arrayidx1773 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1772, i32 0, i64 5
  store i16 %conv1769, i16* %arrayidx1773, align 2
  %841 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1774 = getelementptr inbounds [8 x i16], [8 x i16]* %841, i64 0
  %arrayidx1775 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1774, i32 0, i64 3
  store i16 %conv1769, i16* %arrayidx1775, align 2
  %842 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 2), align 2
  %conv1776 = zext i16 %842 to i32
  %843 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1777 = zext i16 %843 to i32
  %add1778 = add nsw i32 %conv1776, %conv1777
  %844 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1779 = zext i16 %844 to i32
  %mul1780 = mul nsw i32 2, %conv1779
  %add1781 = add nsw i32 %add1778, %mul1780
  %add1782 = add nsw i32 %add1781, 2
  %shr1783 = ashr i32 %add1782, 2
  %conv1784 = trunc i32 %shr1783 to i16
  %845 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1785 = getelementptr inbounds [8 x i16], [8 x i16]* %845, i64 1
  %arrayidx1786 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1785, i32 0, i64 6
  store i16 %conv1784, i16* %arrayidx1786, align 2
  %846 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1787 = getelementptr inbounds [8 x i16], [8 x i16]* %846, i64 0
  %arrayidx1788 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1787, i32 0, i64 4
  store i16 %conv1784, i16* %arrayidx1788, align 2
  %847 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 3), align 2
  %conv1789 = zext i16 %847 to i32
  %848 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1790 = zext i16 %848 to i32
  %add1791 = add nsw i32 %conv1789, %conv1790
  %849 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1792 = zext i16 %849 to i32
  %mul1793 = mul nsw i32 2, %conv1792
  %add1794 = add nsw i32 %add1791, %mul1793
  %add1795 = add nsw i32 %add1794, 2
  %shr1796 = ashr i32 %add1795, 2
  %conv1797 = trunc i32 %shr1796 to i16
  %850 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1798 = getelementptr inbounds [8 x i16], [8 x i16]* %850, i64 1
  %arrayidx1799 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1798, i32 0, i64 7
  store i16 %conv1797, i16* %arrayidx1799, align 2
  %851 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1800 = getelementptr inbounds [8 x i16], [8 x i16]* %851, i64 0
  %arrayidx1801 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1800, i32 0, i64 5
  store i16 %conv1797, i16* %arrayidx1801, align 2
  %852 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 4), align 2
  %conv1802 = zext i16 %852 to i32
  %853 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1803 = zext i16 %853 to i32
  %add1804 = add nsw i32 %conv1802, %conv1803
  %854 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1805 = zext i16 %854 to i32
  %mul1806 = mul nsw i32 2, %conv1805
  %add1807 = add nsw i32 %add1804, %mul1806
  %add1808 = add nsw i32 %add1807, 2
  %shr1809 = ashr i32 %add1808, 2
  %conv1810 = trunc i32 %shr1809 to i16
  %855 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1811 = getelementptr inbounds [8 x i16], [8 x i16]* %855, i64 0
  %arrayidx1812 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1811, i32 0, i64 6
  store i16 %conv1810, i16* %arrayidx1812, align 2
  %856 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 5), align 2
  %conv1813 = zext i16 %856 to i32
  %857 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 7), align 2
  %conv1814 = zext i16 %857 to i32
  %add1815 = add nsw i32 %conv1813, %conv1814
  %858 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 6), align 2
  %conv1816 = zext i16 %858 to i32
  %mul1817 = mul nsw i32 2, %conv1816
  %add1818 = add nsw i32 %add1815, %mul1817
  %add1819 = add nsw i32 %add1818, 2
  %shr1820 = ashr i32 %add1819, 2
  %conv1821 = trunc i32 %shr1820 to i16
  %859 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1822 = getelementptr inbounds [8 x i16], [8 x i16]* %859, i64 0
  %arrayidx1823 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1822, i32 0, i64 7
  store i16 %conv1821, i16* %arrayidx1823, align 2
  br label %if.end.1824

if.end.1824:                                      ; preds = %if.then.947, %land.lhs.true.945, %land.lhs.true.943, %if.end.941
  %860 = load i32, i32* %block_available_left, align 4
  %tobool1825 = icmp ne i32 %860, 0
  br i1 %tobool1825, label %if.then.1826, label %if.end.2061

if.then.1826:                                     ; preds = %if.end.1824
  %861 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mprr_31827 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %861, i32 0, i32 49
  %arrayidx1828 = getelementptr inbounds [9 x [8 x [8 x i16]]], [9 x [8 x [8 x i16]]]* %mprr_31827, i32 0, i64 8
  %arraydecay1829 = getelementptr inbounds [8 x [8 x i16]], [8 x [8 x i16]]* %arrayidx1828, i32 0, i32 0
  store [8 x i16]* %arraydecay1829, [8 x i16]** %cur_pred, align 8
  %862 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv1830 = zext i16 %862 to i32
  %863 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1831 = zext i16 %863 to i32
  %add1832 = add nsw i32 %conv1830, %conv1831
  %add1833 = add nsw i32 %add1832, 1
  %shr1834 = ashr i32 %add1833, 1
  %conv1835 = trunc i32 %shr1834 to i16
  %864 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1836 = getelementptr inbounds [8 x i16], [8 x i16]* %864, i64 0
  %arrayidx1837 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1836, i32 0, i64 0
  store i16 %conv1835, i16* %arrayidx1837, align 2
  %865 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv1838 = zext i16 %865 to i32
  %866 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1839 = zext i16 %866 to i32
  %add1840 = add nsw i32 %conv1838, %conv1839
  %add1841 = add nsw i32 %add1840, 1
  %shr1842 = ashr i32 %add1841, 1
  %conv1843 = trunc i32 %shr1842 to i16
  %867 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1844 = getelementptr inbounds [8 x i16], [8 x i16]* %867, i64 0
  %arrayidx1845 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1844, i32 0, i64 2
  store i16 %conv1843, i16* %arrayidx1845, align 2
  %868 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1846 = getelementptr inbounds [8 x i16], [8 x i16]* %868, i64 1
  %arrayidx1847 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1846, i32 0, i64 0
  store i16 %conv1843, i16* %arrayidx1847, align 2
  %869 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv1848 = zext i16 %869 to i32
  %870 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1849 = zext i16 %870 to i32
  %add1850 = add nsw i32 %conv1848, %conv1849
  %add1851 = add nsw i32 %add1850, 1
  %shr1852 = ashr i32 %add1851, 1
  %conv1853 = trunc i32 %shr1852 to i16
  %871 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1854 = getelementptr inbounds [8 x i16], [8 x i16]* %871, i64 0
  %arrayidx1855 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1854, i32 0, i64 4
  store i16 %conv1853, i16* %arrayidx1855, align 2
  %872 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1856 = getelementptr inbounds [8 x i16], [8 x i16]* %872, i64 1
  %arrayidx1857 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1856, i32 0, i64 2
  store i16 %conv1853, i16* %arrayidx1857, align 2
  %873 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1858 = getelementptr inbounds [8 x i16], [8 x i16]* %873, i64 2
  %arrayidx1859 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1858, i32 0, i64 0
  store i16 %conv1853, i16* %arrayidx1859, align 2
  %874 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv1860 = zext i16 %874 to i32
  %875 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1861 = zext i16 %875 to i32
  %add1862 = add nsw i32 %conv1860, %conv1861
  %add1863 = add nsw i32 %add1862, 1
  %shr1864 = ashr i32 %add1863, 1
  %conv1865 = trunc i32 %shr1864 to i16
  %876 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1866 = getelementptr inbounds [8 x i16], [8 x i16]* %876, i64 0
  %arrayidx1867 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1866, i32 0, i64 6
  store i16 %conv1865, i16* %arrayidx1867, align 2
  %877 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1868 = getelementptr inbounds [8 x i16], [8 x i16]* %877, i64 1
  %arrayidx1869 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1868, i32 0, i64 4
  store i16 %conv1865, i16* %arrayidx1869, align 2
  %878 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1870 = getelementptr inbounds [8 x i16], [8 x i16]* %878, i64 2
  %arrayidx1871 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1870, i32 0, i64 2
  store i16 %conv1865, i16* %arrayidx1871, align 2
  %879 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1872 = getelementptr inbounds [8 x i16], [8 x i16]* %879, i64 3
  %arrayidx1873 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1872, i32 0, i64 0
  store i16 %conv1865, i16* %arrayidx1873, align 2
  %880 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1874 = zext i16 %880 to i32
  %881 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1875 = zext i16 %881 to i32
  %add1876 = add nsw i32 %conv1874, %conv1875
  %add1877 = add nsw i32 %add1876, 1
  %shr1878 = ashr i32 %add1877, 1
  %conv1879 = trunc i32 %shr1878 to i16
  %882 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1880 = getelementptr inbounds [8 x i16], [8 x i16]* %882, i64 1
  %arrayidx1881 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1880, i32 0, i64 6
  store i16 %conv1879, i16* %arrayidx1881, align 2
  %883 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1882 = getelementptr inbounds [8 x i16], [8 x i16]* %883, i64 2
  %arrayidx1883 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1882, i32 0, i64 4
  store i16 %conv1879, i16* %arrayidx1883, align 2
  %884 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1884 = getelementptr inbounds [8 x i16], [8 x i16]* %884, i64 3
  %arrayidx1885 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1884, i32 0, i64 2
  store i16 %conv1879, i16* %arrayidx1885, align 2
  %885 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1886 = getelementptr inbounds [8 x i16], [8 x i16]* %885, i64 4
  %arrayidx1887 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1886, i32 0, i64 0
  store i16 %conv1879, i16* %arrayidx1887, align 2
  %886 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1888 = zext i16 %886 to i32
  %887 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1889 = zext i16 %887 to i32
  %add1890 = add nsw i32 %conv1888, %conv1889
  %add1891 = add nsw i32 %add1890, 1
  %shr1892 = ashr i32 %add1891, 1
  %conv1893 = trunc i32 %shr1892 to i16
  %888 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1894 = getelementptr inbounds [8 x i16], [8 x i16]* %888, i64 2
  %arrayidx1895 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1894, i32 0, i64 6
  store i16 %conv1893, i16* %arrayidx1895, align 2
  %889 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1896 = getelementptr inbounds [8 x i16], [8 x i16]* %889, i64 3
  %arrayidx1897 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1896, i32 0, i64 4
  store i16 %conv1893, i16* %arrayidx1897, align 2
  %890 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1898 = getelementptr inbounds [8 x i16], [8 x i16]* %890, i64 4
  %arrayidx1899 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1898, i32 0, i64 2
  store i16 %conv1893, i16* %arrayidx1899, align 2
  %891 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1900 = getelementptr inbounds [8 x i16], [8 x i16]* %891, i64 5
  %arrayidx1901 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1900, i32 0, i64 0
  store i16 %conv1893, i16* %arrayidx1901, align 2
  %892 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1902 = zext i16 %892 to i32
  %893 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv1903 = zext i16 %893 to i32
  %add1904 = add nsw i32 %conv1902, %conv1903
  %add1905 = add nsw i32 %add1904, 1
  %shr1906 = ashr i32 %add1905, 1
  %conv1907 = trunc i32 %shr1906 to i16
  %894 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1908 = getelementptr inbounds [8 x i16], [8 x i16]* %894, i64 3
  %arrayidx1909 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1908, i32 0, i64 6
  store i16 %conv1907, i16* %arrayidx1909, align 2
  %895 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1910 = getelementptr inbounds [8 x i16], [8 x i16]* %895, i64 4
  %arrayidx1911 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1910, i32 0, i64 4
  store i16 %conv1907, i16* %arrayidx1911, align 2
  %896 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1912 = getelementptr inbounds [8 x i16], [8 x i16]* %896, i64 5
  %arrayidx1913 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1912, i32 0, i64 2
  store i16 %conv1907, i16* %arrayidx1913, align 2
  %897 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1914 = getelementptr inbounds [8 x i16], [8 x i16]* %897, i64 6
  %arrayidx1915 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1914, i32 0, i64 0
  store i16 %conv1907, i16* %arrayidx1915, align 2
  %898 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %899 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1916 = getelementptr inbounds [8 x i16], [8 x i16]* %899, i64 7
  %arrayidx1917 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1916, i32 0, i64 7
  store i16 %898, i16* %arrayidx1917, align 2
  %900 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1918 = getelementptr inbounds [8 x i16], [8 x i16]* %900, i64 7
  %arrayidx1919 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1918, i32 0, i64 6
  store i16 %898, i16* %arrayidx1919, align 2
  %901 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1920 = getelementptr inbounds [8 x i16], [8 x i16]* %901, i64 7
  %arrayidx1921 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1920, i32 0, i64 5
  store i16 %898, i16* %arrayidx1921, align 2
  %902 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1922 = getelementptr inbounds [8 x i16], [8 x i16]* %902, i64 7
  %arrayidx1923 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1922, i32 0, i64 4
  store i16 %898, i16* %arrayidx1923, align 2
  %903 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1924 = getelementptr inbounds [8 x i16], [8 x i16]* %903, i64 7
  %arrayidx1925 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1924, i32 0, i64 3
  store i16 %898, i16* %arrayidx1925, align 2
  %904 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1926 = getelementptr inbounds [8 x i16], [8 x i16]* %904, i64 7
  %arrayidx1927 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1926, i32 0, i64 2
  store i16 %898, i16* %arrayidx1927, align 2
  %905 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1928 = getelementptr inbounds [8 x i16], [8 x i16]* %905, i64 7
  %arrayidx1929 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1928, i32 0, i64 1
  store i16 %898, i16* %arrayidx1929, align 2
  %906 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1930 = getelementptr inbounds [8 x i16], [8 x i16]* %906, i64 7
  %arrayidx1931 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1930, i32 0, i64 0
  store i16 %898, i16* %arrayidx1931, align 2
  %907 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1932 = getelementptr inbounds [8 x i16], [8 x i16]* %907, i64 6
  %arrayidx1933 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1932, i32 0, i64 7
  store i16 %898, i16* %arrayidx1933, align 2
  %908 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1934 = getelementptr inbounds [8 x i16], [8 x i16]* %908, i64 6
  %arrayidx1935 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1934, i32 0, i64 6
  store i16 %898, i16* %arrayidx1935, align 2
  %909 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1936 = getelementptr inbounds [8 x i16], [8 x i16]* %909, i64 6
  %arrayidx1937 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1936, i32 0, i64 5
  store i16 %898, i16* %arrayidx1937, align 2
  %910 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1938 = getelementptr inbounds [8 x i16], [8 x i16]* %910, i64 6
  %arrayidx1939 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1938, i32 0, i64 4
  store i16 %898, i16* %arrayidx1939, align 2
  %911 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1940 = getelementptr inbounds [8 x i16], [8 x i16]* %911, i64 6
  %arrayidx1941 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1940, i32 0, i64 3
  store i16 %898, i16* %arrayidx1941, align 2
  %912 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1942 = getelementptr inbounds [8 x i16], [8 x i16]* %912, i64 6
  %arrayidx1943 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1942, i32 0, i64 2
  store i16 %898, i16* %arrayidx1943, align 2
  %913 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1944 = getelementptr inbounds [8 x i16], [8 x i16]* %913, i64 5
  %arrayidx1945 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1944, i32 0, i64 7
  store i16 %898, i16* %arrayidx1945, align 2
  %914 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1946 = getelementptr inbounds [8 x i16], [8 x i16]* %914, i64 5
  %arrayidx1947 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1946, i32 0, i64 6
  store i16 %898, i16* %arrayidx1947, align 2
  %915 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1948 = getelementptr inbounds [8 x i16], [8 x i16]* %915, i64 5
  %arrayidx1949 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1948, i32 0, i64 5
  store i16 %898, i16* %arrayidx1949, align 2
  %916 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1950 = getelementptr inbounds [8 x i16], [8 x i16]* %916, i64 5
  %arrayidx1951 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1950, i32 0, i64 4
  store i16 %898, i16* %arrayidx1951, align 2
  %917 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1952 = getelementptr inbounds [8 x i16], [8 x i16]* %917, i64 4
  %arrayidx1953 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1952, i32 0, i64 7
  store i16 %898, i16* %arrayidx1953, align 2
  %918 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1954 = getelementptr inbounds [8 x i16], [8 x i16]* %918, i64 4
  %arrayidx1955 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1954, i32 0, i64 6
  store i16 %898, i16* %arrayidx1955, align 2
  %919 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1956 = zext i16 %919 to i32
  %920 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv1957 = zext i16 %920 to i32
  %mul1958 = mul nsw i32 3, %conv1957
  %add1959 = add nsw i32 %conv1956, %mul1958
  %add1960 = add nsw i32 %add1959, 2
  %shr1961 = ashr i32 %add1960, 2
  %conv1962 = trunc i32 %shr1961 to i16
  %921 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1963 = getelementptr inbounds [8 x i16], [8 x i16]* %921, i64 3
  %arrayidx1964 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1963, i32 0, i64 7
  store i16 %conv1962, i16* %arrayidx1964, align 2
  %922 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1965 = getelementptr inbounds [8 x i16], [8 x i16]* %922, i64 4
  %arrayidx1966 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1965, i32 0, i64 5
  store i16 %conv1962, i16* %arrayidx1966, align 2
  %923 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1967 = getelementptr inbounds [8 x i16], [8 x i16]* %923, i64 5
  %arrayidx1968 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1967, i32 0, i64 3
  store i16 %conv1962, i16* %arrayidx1968, align 2
  %924 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1969 = getelementptr inbounds [8 x i16], [8 x i16]* %924, i64 6
  %arrayidx1970 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1969, i32 0, i64 1
  store i16 %conv1962, i16* %arrayidx1970, align 2
  %925 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 24), align 2
  %conv1971 = zext i16 %925 to i32
  %926 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1972 = zext i16 %926 to i32
  %add1973 = add nsw i32 %conv1971, %conv1972
  %927 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1974 = zext i16 %927 to i32
  %mul1975 = mul nsw i32 2, %conv1974
  %add1976 = add nsw i32 %add1973, %mul1975
  %add1977 = add nsw i32 %add1976, 2
  %shr1978 = ashr i32 %add1977, 2
  %conv1979 = trunc i32 %shr1978 to i16
  %928 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1980 = getelementptr inbounds [8 x i16], [8 x i16]* %928, i64 2
  %arrayidx1981 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1980, i32 0, i64 7
  store i16 %conv1979, i16* %arrayidx1981, align 2
  %929 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1982 = getelementptr inbounds [8 x i16], [8 x i16]* %929, i64 3
  %arrayidx1983 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1982, i32 0, i64 5
  store i16 %conv1979, i16* %arrayidx1983, align 2
  %930 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1984 = getelementptr inbounds [8 x i16], [8 x i16]* %930, i64 4
  %arrayidx1985 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1984, i32 0, i64 3
  store i16 %conv1979, i16* %arrayidx1985, align 2
  %931 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1986 = getelementptr inbounds [8 x i16], [8 x i16]* %931, i64 5
  %arrayidx1987 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1986, i32 0, i64 1
  store i16 %conv1979, i16* %arrayidx1987, align 2
  %932 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 23), align 2
  %conv1988 = zext i16 %932 to i32
  %933 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv1989 = zext i16 %933 to i32
  %add1990 = add nsw i32 %conv1988, %conv1989
  %934 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv1991 = zext i16 %934 to i32
  %mul1992 = mul nsw i32 2, %conv1991
  %add1993 = add nsw i32 %add1990, %mul1992
  %add1994 = add nsw i32 %add1993, 2
  %shr1995 = ashr i32 %add1994, 2
  %conv1996 = trunc i32 %shr1995 to i16
  %935 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1997 = getelementptr inbounds [8 x i16], [8 x i16]* %935, i64 1
  %arrayidx1998 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1997, i32 0, i64 7
  store i16 %conv1996, i16* %arrayidx1998, align 2
  %936 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx1999 = getelementptr inbounds [8 x i16], [8 x i16]* %936, i64 2
  %arrayidx2000 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx1999, i32 0, i64 5
  store i16 %conv1996, i16* %arrayidx2000, align 2
  %937 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2001 = getelementptr inbounds [8 x i16], [8 x i16]* %937, i64 3
  %arrayidx2002 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2001, i32 0, i64 3
  store i16 %conv1996, i16* %arrayidx2002, align 2
  %938 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2003 = getelementptr inbounds [8 x i16], [8 x i16]* %938, i64 4
  %arrayidx2004 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2003, i32 0, i64 1
  store i16 %conv1996, i16* %arrayidx2004, align 2
  %939 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 22), align 2
  %conv2005 = zext i16 %939 to i32
  %940 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv2006 = zext i16 %940 to i32
  %add2007 = add nsw i32 %conv2005, %conv2006
  %941 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv2008 = zext i16 %941 to i32
  %mul2009 = mul nsw i32 2, %conv2008
  %add2010 = add nsw i32 %add2007, %mul2009
  %add2011 = add nsw i32 %add2010, 2
  %shr2012 = ashr i32 %add2011, 2
  %conv2013 = trunc i32 %shr2012 to i16
  %942 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2014 = getelementptr inbounds [8 x i16], [8 x i16]* %942, i64 0
  %arrayidx2015 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2014, i32 0, i64 7
  store i16 %conv2013, i16* %arrayidx2015, align 2
  %943 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2016 = getelementptr inbounds [8 x i16], [8 x i16]* %943, i64 1
  %arrayidx2017 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2016, i32 0, i64 5
  store i16 %conv2013, i16* %arrayidx2017, align 2
  %944 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2018 = getelementptr inbounds [8 x i16], [8 x i16]* %944, i64 2
  %arrayidx2019 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2018, i32 0, i64 3
  store i16 %conv2013, i16* %arrayidx2019, align 2
  %945 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2020 = getelementptr inbounds [8 x i16], [8 x i16]* %945, i64 3
  %arrayidx2021 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2020, i32 0, i64 1
  store i16 %conv2013, i16* %arrayidx2021, align 2
  %946 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 21), align 2
  %conv2022 = zext i16 %946 to i32
  %947 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv2023 = zext i16 %947 to i32
  %add2024 = add nsw i32 %conv2022, %conv2023
  %948 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv2025 = zext i16 %948 to i32
  %mul2026 = mul nsw i32 2, %conv2025
  %add2027 = add nsw i32 %add2024, %mul2026
  %add2028 = add nsw i32 %add2027, 2
  %shr2029 = ashr i32 %add2028, 2
  %conv2030 = trunc i32 %shr2029 to i16
  %949 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2031 = getelementptr inbounds [8 x i16], [8 x i16]* %949, i64 0
  %arrayidx2032 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2031, i32 0, i64 5
  store i16 %conv2030, i16* %arrayidx2032, align 2
  %950 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2033 = getelementptr inbounds [8 x i16], [8 x i16]* %950, i64 1
  %arrayidx2034 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2033, i32 0, i64 3
  store i16 %conv2030, i16* %arrayidx2034, align 2
  %951 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2035 = getelementptr inbounds [8 x i16], [8 x i16]* %951, i64 2
  %arrayidx2036 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2035, i32 0, i64 1
  store i16 %conv2030, i16* %arrayidx2036, align 2
  %952 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 20), align 2
  %conv2037 = zext i16 %952 to i32
  %953 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv2038 = zext i16 %953 to i32
  %add2039 = add nsw i32 %conv2037, %conv2038
  %954 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv2040 = zext i16 %954 to i32
  %mul2041 = mul nsw i32 2, %conv2040
  %add2042 = add nsw i32 %add2039, %mul2041
  %add2043 = add nsw i32 %add2042, 2
  %shr2044 = ashr i32 %add2043, 2
  %conv2045 = trunc i32 %shr2044 to i16
  %955 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2046 = getelementptr inbounds [8 x i16], [8 x i16]* %955, i64 0
  %arrayidx2047 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2046, i32 0, i64 3
  store i16 %conv2045, i16* %arrayidx2047, align 2
  %956 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2048 = getelementptr inbounds [8 x i16], [8 x i16]* %956, i64 1
  %arrayidx2049 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2048, i32 0, i64 1
  store i16 %conv2045, i16* %arrayidx2049, align 2
  %957 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 19), align 2
  %conv2050 = zext i16 %957 to i32
  %958 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 17), align 2
  %conv2051 = zext i16 %958 to i32
  %add2052 = add nsw i32 %conv2050, %conv2051
  %959 = load i16, i16* getelementptr inbounds ([25 x i16], [25 x i16]* @intrapred_luma8x8.PredPel, i32 0, i64 18), align 2
  %conv2053 = zext i16 %959 to i32
  %mul2054 = mul nsw i32 2, %conv2053
  %add2055 = add nsw i32 %add2052, %mul2054
  %add2056 = add nsw i32 %add2055, 2
  %shr2057 = ashr i32 %add2056, 2
  %conv2058 = trunc i32 %shr2057 to i16
  %960 = load [8 x i16]*, [8 x i16]** %cur_pred, align 8
  %arrayidx2059 = getelementptr inbounds [8 x i16], [8 x i16]* %960, i64 0
  %arrayidx2060 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx2059, i32 0, i64 1
  store i16 %conv2058, i16* %arrayidx2060, align 2
  br label %if.end.2061

if.end.2061:                                      ; preds = %if.then.1826, %if.end.1824
  ret void
}

declare i32 @distortion8x8(i32*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define double @RDCost_for_8x8IntraBlocks(i32* %nonzero, i32 %b8, i32 %ipmode, double %lambda, double %min_rdcost, i32 %mostProbableMode) #0 {
entry:
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
  %se = alloca %struct.syntaxelement, align 8
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
  %and = and i32 %0, 1
  %mul = mul nsw i32 8, %and
  store i32 %mul, i32* %block_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %shr = ashr i32 %1, 1
  %mul1 = mul nsw i32 8, %shr
  store i32 %mul1, i32* %block_y, align 4
  %2 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %2, i32 0, i32 39
  %3 = load i32, i32* %pix_x, align 4
  %4 = load i32, i32* %block_x, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %pic_pix_x, align 4
  %5 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %5, i32 0, i32 40
  %6 = load i32, i32* %pix_y, align 4
  %7 = load i32, i32* %block_y, align 4
  %add2 = add nsw i32 %6, %7
  store i32 %add2, i32* %pic_pix_y, align 4
  %8 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %opix_y = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %8, i32 0, i32 44
  %9 = load i32, i32* %opix_y, align 4
  %10 = load i32, i32* %block_y, align 4
  %add3 = add nsw i32 %9, %10
  store i32 %add3, i32* %pic_opix_y, align 4
  %11 = load i16**, i16*** @imgY_org, align 8
  store i16** %11, i16*** %imgY_orig, align 8
  %12 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY4 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %12, i32 0, i32 29
  %13 = load i16**, i16*** %imgY4, align 8
  store i16** %13, i16*** %imgY, align 8
  %14 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %currentSlice = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %14, i32 0, i32 60
  %15 = load %struct.Slice*, %struct.Slice** %currentSlice, align 8
  store %struct.Slice* %15, %struct.Slice** %currSlice, align 8
  %16 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %partition_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %16, i32 0, i32 76
  %17 = load i32, i32* %partition_mode, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* @assignSE2partition, i32 0, i64 %idxprom
  %18 = load i32*, i32** %arrayidx, align 8
  store i32* %18, i32** %partMap, align 8
  store i32 0, i32* %dummy, align 4
  %19 = load i32, i32* %b8.addr, align 4
  %call = call i32 @dct_luma8x8(i32 %19, i32* %dummy, i32 1)
  %20 = load i32*, i32** %nonzero.addr, align 8
  store i32 %call, i32* %20, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %entry
  %21 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %21, 8
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %pic_pix_x, align 4
  store i32 %22, i32* %x, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %pic_pix_x, align 4
  %add6 = add nsw i32 %24, 8
  %cmp7 = icmp slt i32 %23, %add6
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %25 = load i32, i32* %x, align 4
  %idxprom9 = sext i32 %25 to i64
  %26 = load i32, i32* %pic_opix_y, align 4
  %27 = load i32, i32* %y, align 4
  %add10 = add nsw i32 %26, %27
  %idxprom11 = sext i32 %add10 to i64
  %28 = load i16**, i16*** %imgY_orig, align 8
  %arrayidx12 = getelementptr inbounds i16*, i16** %28, i64 %idxprom11
  %29 = load i16*, i16** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %29, i64 %idxprom9
  %30 = load i16, i16* %arrayidx13, align 2
  %conv = zext i16 %30 to i32
  %31 = load i32, i32* %x, align 4
  %idxprom14 = sext i32 %31 to i64
  %32 = load i32, i32* %pic_pix_y, align 4
  %33 = load i32, i32* %y, align 4
  %add15 = add nsw i32 %32, %33
  %idxprom16 = sext i32 %add15 to i64
  %34 = load i16**, i16*** %imgY, align 8
  %arrayidx17 = getelementptr inbounds i16*, i16** %34, i64 %idxprom16
  %35 = load i16*, i16** %arrayidx17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %35, i64 %idxprom14
  %36 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %36 to i32
  %sub = sub nsw i32 %conv, %conv19
  %idxprom20 = sext i32 %sub to i64
  %37 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %quad = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %37, i32 0, i32 62
  %38 = load i32*, i32** %quad, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %38, i64 %idxprom20
  %39 = load i32, i32* %arrayidx21, align 4
  %conv22 = sext i32 %39 to i64
  %40 = load i64, i64* %distortion, align 8
  %add23 = add nsw i64 %40, %conv22
  store i64 %add23, i64* %distortion, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %41 = load i32, i32* %x, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end
  %42 = load i32, i32* %y, align 4
  %inc25 = add nsw i32 %42, 1
  store i32 %inc25, i32* %y, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %43 = load i32, i32* %mostProbableMode.addr, align 4
  %44 = load i32, i32* %ipmode.addr, align 4
  %cmp27 = icmp eq i32 %43, %44
  br i1 %cmp27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.26
  br label %cond.end.34

cond.false:                                       ; preds = %for.end.26
  %45 = load i32, i32* %ipmode.addr, align 4
  %46 = load i32, i32* %mostProbableMode.addr, align 4
  %cmp29 = icmp slt i32 %45, %46
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.false
  %47 = load i32, i32* %ipmode.addr, align 4
  br label %cond.end

cond.false.32:                                    ; preds = %cond.false
  %48 = load i32, i32* %ipmode.addr, align 4
  %sub33 = sub nsw i32 %48, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.32, %cond.true.31
  %cond = phi i32 [ %47, %cond.true.31 ], [ %sub33, %cond.false.32 ]
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.end, %cond.true
  %cond35 = phi i32 [ -1, %cond.true ], [ %cond, %cond.end ]
  %value1 = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 1
  store i32 %cond35, i32* %value1, align 4
  %49 = load i32, i32* %b8.addr, align 4
  %context = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 6
  store i32 %49, i32* %context, align 4
  %type = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 0
  store i32 4, i32* %type, align 4
  %50 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %type36 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %50, i32 0, i32 5
  %51 = load i32, i32* %type36, align 4
  %cmp37 = icmp ne i32 %51, 1
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.34
  %52 = load i32*, i32** %partMap, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %52, i64 4
  %53 = load i32, i32* %arrayidx39, align 4
  %idxprom40 = sext i32 %53 to i64
  %54 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr = getelementptr inbounds %struct.Slice, %struct.Slice* %54, i32 0, i32 6
  %55 = load %struct.datapartition*, %struct.datapartition** %partArr, align 8
  %arrayidx41 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %55, i64 %idxprom40
  store %struct.datapartition* %arrayidx41, %struct.datapartition** %dataPart, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.34
  %56 = load i32*, i32** %partMap, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %56, i64 16
  %57 = load i32, i32* %arrayidx42, align 4
  %idxprom43 = sext i32 %57 to i64
  %58 = load %struct.Slice*, %struct.Slice** %currSlice, align 8
  %partArr44 = getelementptr inbounds %struct.Slice, %struct.Slice* %58, i32 0, i32 6
  %59 = load %struct.datapartition*, %struct.datapartition** %partArr44, align 8
  %arrayidx45 = getelementptr inbounds %struct.datapartition, %struct.datapartition* %59, i64 %idxprom43
  store %struct.datapartition* %arrayidx45, %struct.datapartition** %dataPart, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %60 = load void (%struct.syntaxelement*, %struct.datapartition*)*, void (%struct.syntaxelement*, %struct.datapartition*)** @writeIntraPredMode, align 8
  %61 = load %struct.datapartition*, %struct.datapartition** %dataPart, align 8
  call void %60(%struct.syntaxelement* %se, %struct.datapartition* %61)
  %len = getelementptr inbounds %struct.syntaxelement, %struct.syntaxelement* %se, i32 0, i32 3
  %62 = load i32, i32* %len, align 4
  store i32 %62, i32* %rate, align 4
  %63 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %63, i32 0, i32 74
  %64 = load i32, i32* %symbol_mode, align 4
  %cmp46 = icmp eq i32 %64, 0
  br i1 %cmp46, label %if.then.48, label %if.else.58

if.then.48:                                       ; preds = %if.end
  store i32 0, i32* %b4, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.55, %if.then.48
  %65 = load i32, i32* %b4, align 4
  %cmp50 = icmp slt i32 %65, 4
  br i1 %cmp50, label %for.body.52, label %for.end.57

for.body.52:                                      ; preds = %for.cond.49
  %66 = load i32, i32* %b8.addr, align 4
  %67 = load i32, i32* %b4, align 4
  %call53 = call i32 @writeCoeff4x4_CAVLC(i32 0, i32 %66, i32 %67, i32 0)
  %68 = load i32, i32* %rate, align 4
  %add54 = add nsw i32 %68, %call53
  store i32 %add54, i32* %rate, align 4
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.52
  %69 = load i32, i32* %b4, align 4
  %inc56 = add nsw i32 %69, 1
  store i32 %inc56, i32* %b4, align 4
  br label %for.cond.49

for.end.57:                                       ; preds = %for.cond.49
  br label %if.end.61

if.else.58:                                       ; preds = %if.end
  %70 = load i32, i32* %b8.addr, align 4
  %call59 = call i32 @writeLumaCoeff8x8_CABAC(i32 %70, i32 1)
  %71 = load i32, i32* %rate, align 4
  %add60 = add nsw i32 %71, %call59
  store i32 %add60, i32* %rate, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %for.end.57
  %72 = load i64, i64* %distortion, align 8
  %conv62 = sitofp i64 %72 to double
  %73 = load double, double* %lambda.addr, align 8
  %74 = load i32, i32* %rate, align 4
  %conv63 = sitofp i32 %74 to double
  %mul64 = fmul double %73, %conv63
  %add65 = fadd double %conv62, %mul64
  store double %add65, double* %rdcost, align 8
  %75 = load double, double* %rdcost, align 8
  ret double %75
}

declare void @reset_coding_state_cs_cm() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

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
  %level = alloca i32, align 4
  %scan_pos = alloca i32, align 4
  %run = alloca i32, align 4
  %nonzero = alloca i32, align 4
  %qp_per = alloca i32, align 4
  %qp_rem = alloca i32, align 4
  %q_bits = alloca i32, align 4
  %block_x = alloca i32, align 4
  %block_y = alloca i32, align 4
  %ACLevel = alloca i32*, align 8
  %ACRun = alloca i32*, align 8
  %m6 = alloca [8 x [8 x i32]], align 16
  %a = alloca [8 x i32], align 16
  %b = alloca [8 x i32], align 16
  %scan_poss = alloca [4 x i32], align 16
  %runs = alloca [4 x i32], align 16
  %pix_x = alloca i32, align 4
  %pix_y = alloca i32, align 4
  %ipix_y = alloca i32, align 4
  %levelscale = alloca i32**, align 8
  %leveloffset = alloca i32**, align 8
  %invlevelscale = alloca i32**, align 8
  %MCcoeff = alloca i32, align 4
  %currMB = alloca %struct.macroblock*, align 8
  %lossless_qpprime = alloca i32, align 4
  %pos_scan = alloca [2 x i8]*, align 8
  store i32 %b8, i32* %b8.addr, align 4
  store i32* %coeff_cost, i32** %coeff_cost.addr, align 8
  store i32 %intra, i32* %intra.addr, align 4
  %0 = load i32, i32* %b8.addr, align 4
  %and = and i32 %0, 1
  %mul = mul nsw i32 8, %and
  store i32 %mul, i32* %block_x, align 4
  %1 = load i32, i32* %b8.addr, align 4
  %shr = ashr i32 %1, 1
  %mul1 = mul nsw i32 8, %shr
  store i32 %mul1, i32* %block_y, align 4
  %2 = load i32, i32* %b8.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %3, i32 0, i32 53
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
  %cofAC5 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %9, i32 0, i32 53
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
  %mb_data = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %16, i32 0, i32 61
  %17 = load %struct.macroblock*, %struct.macroblock** %mb_data, align 8
  %arrayidx10 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %17, i64 %idxprom9
  store %struct.macroblock* %arrayidx10, %struct.macroblock** %currMB, align 8
  %18 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %18, i32 0, i32 11
  %19 = load i32, i32* %qp_scaled, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %20 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %lossless_qpprime_flag = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %20, i32 0, i32 161
  %21 = load i32, i32* %lossless_qpprime_flag, align 4
  %cmp11 = icmp eq i32 %21, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %22 = phi i1 [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  store i32 %land.ext, i32* %lossless_qpprime, align 4
  %23 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %is_field_mode = getelementptr inbounds %struct.macroblock, %struct.macroblock* %23, i32 0, i32 20
  %24 = load i32, i32* %is_field_mode, align 4
  %tobool = icmp ne i32 %24, 0
  %cond = select i1 %tobool, [2 x i8]* getelementptr inbounds ([64 x [2 x i8]], [64 x [2 x i8]]* @FIELD_SCAN8x8, i32 0, i32 0), [2 x i8]* getelementptr inbounds ([64 x [2 x i8]], [64 x [2 x i8]]* @SNGL_SCAN8x8, i32 0, i32 0)
  store [2 x i8]* %cond, [2 x i8]** %pos_scan, align 8
  %25 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled12 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %25, i32 0, i32 11
  %26 = load i32, i32* %qp_scaled12, align 4
  %sub = sub nsw i32 %26, 0
  %idxprom13 = sext i32 %sub to i64
  %27 = load i32*, i32** @qp_per_matrix, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %27, i64 %idxprom13
  %28 = load i32, i32* %arrayidx14, align 4
  store i32 %28, i32* %qp_per, align 4
  %29 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %qp_scaled15 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %29, i32 0, i32 11
  %30 = load i32, i32* %qp_scaled15, align 4
  %sub16 = sub nsw i32 %30, 0
  %idxprom17 = sext i32 %sub16 to i64
  %31 = load i32*, i32** @qp_rem_matrix, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %31, i64 %idxprom17
  %32 = load i32, i32* %arrayidx18, align 4
  store i32 %32, i32* %qp_rem, align 4
  %33 = load i32, i32* %qp_per, align 4
  %add = add nsw i32 16, %33
  store i32 %add, i32* %q_bits, align 4
  %34 = load i32, i32* %qp_rem, align 4
  %idxprom19 = sext i32 %34 to i64
  %35 = load i32, i32* %intra.addr, align 4
  %idxprom20 = sext i32 %35 to i64
  %36 = load i32****, i32***** @LevelScale8x8Luma, align 8
  %arrayidx21 = getelementptr inbounds i32***, i32**** %36, i64 %idxprom20
  %37 = load i32***, i32**** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32**, i32*** %37, i64 %idxprom19
  %38 = load i32**, i32*** %arrayidx22, align 8
  store i32** %38, i32*** %levelscale, align 8
  %39 = load i32, i32* %qp_per, align 4
  %idxprom23 = sext i32 %39 to i64
  %40 = load i32, i32* %intra.addr, align 4
  %idxprom24 = sext i32 %40 to i64
  %41 = load i32****, i32***** @LevelOffset8x8Luma, align 8
  %arrayidx25 = getelementptr inbounds i32***, i32**** %41, i64 %idxprom24
  %42 = load i32***, i32**** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32**, i32*** %42, i64 %idxprom23
  %43 = load i32**, i32*** %arrayidx26, align 8
  store i32** %43, i32*** %leveloffset, align 8
  %44 = load i32, i32* %qp_rem, align 4
  %idxprom27 = sext i32 %44 to i64
  %45 = load i32, i32* %intra.addr, align 4
  %idxprom28 = sext i32 %45 to i64
  %46 = load i32****, i32***** @InvLevelScale8x8Luma, align 8
  %arrayidx29 = getelementptr inbounds i32***, i32**** %46, i64 %idxprom28
  %47 = load i32***, i32**** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32**, i32*** %47, i64 %idxprom27
  %48 = load i32**, i32*** %arrayidx30, align 8
  store i32** %48, i32*** %invlevelscale, align 8
  %49 = load i32, i32* %lossless_qpprime, align 4
  %tobool31 = icmp ne i32 %49, 0
  br i1 %tobool31, label %if.else.572, label %if.then

if.then:                                          ; preds = %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %50 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %50, 8
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %51 to i64
  %52 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %52, i32 0, i32 52
  %arrayidx34 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx34, i32 0, i64 0
  %53 = load i32, i32* %arrayidx35, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %54 to i64
  %55 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m737 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %55, i32 0, i32 52
  %arrayidx38 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m737, i32 0, i64 %idxprom36
  %arrayidx39 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx38, i32 0, i64 7
  %56 = load i32, i32* %arrayidx39, align 4
  %add40 = add nsw i32 %53, %56
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  store i32 %add40, i32* %arrayidx41, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %57 to i64
  %58 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m743 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %58, i32 0, i32 52
  %arrayidx44 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m743, i32 0, i64 %idxprom42
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx44, i32 0, i64 1
  %59 = load i32, i32* %arrayidx45, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %60 to i64
  %61 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m747 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %61, i32 0, i32 52
  %arrayidx48 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m747, i32 0, i64 %idxprom46
  %arrayidx49 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx48, i32 0, i64 6
  %62 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %59, %62
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  store i32 %add50, i32* %arrayidx51, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %63 to i64
  %64 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m753 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %64, i32 0, i32 52
  %arrayidx54 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m753, i32 0, i64 %idxprom52
  %arrayidx55 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx54, i32 0, i64 2
  %65 = load i32, i32* %arrayidx55, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %66 to i64
  %67 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m757 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %67, i32 0, i32 52
  %arrayidx58 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m757, i32 0, i64 %idxprom56
  %arrayidx59 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx58, i32 0, i64 5
  %68 = load i32, i32* %arrayidx59, align 4
  %add60 = add nsw i32 %65, %68
  %arrayidx61 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  store i32 %add60, i32* %arrayidx61, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %69 to i64
  %70 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m763 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %70, i32 0, i32 52
  %arrayidx64 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m763, i32 0, i64 %idxprom62
  %arrayidx65 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx64, i32 0, i64 3
  %71 = load i32, i32* %arrayidx65, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %72 to i64
  %73 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m767 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %73, i32 0, i32 52
  %arrayidx68 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m767, i32 0, i64 %idxprom66
  %arrayidx69 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx68, i32 0, i64 4
  %74 = load i32, i32* %arrayidx69, align 4
  %add70 = add nsw i32 %71, %74
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  store i32 %add70, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %75 = load i32, i32* %arrayidx72, align 4
  %arrayidx73 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %76 = load i32, i32* %arrayidx73, align 4
  %add74 = add nsw i32 %75, %76
  %arrayidx75 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  store i32 %add74, i32* %arrayidx75, align 4
  %arrayidx76 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %77 = load i32, i32* %arrayidx76, align 4
  %arrayidx77 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %78 = load i32, i32* %arrayidx77, align 4
  %add78 = add nsw i32 %77, %78
  %arrayidx79 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  store i32 %add78, i32* %arrayidx79, align 4
  %arrayidx80 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %79 = load i32, i32* %arrayidx80, align 4
  %arrayidx81 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %80 = load i32, i32* %arrayidx81, align 4
  %sub82 = sub nsw i32 %79, %80
  %arrayidx83 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  store i32 %sub82, i32* %arrayidx83, align 4
  %arrayidx84 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %81 = load i32, i32* %arrayidx84, align 4
  %arrayidx85 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %82 = load i32, i32* %arrayidx85, align 4
  %sub86 = sub nsw i32 %81, %82
  %arrayidx87 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  store i32 %sub86, i32* %arrayidx87, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %83 to i64
  %84 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m789 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %84, i32 0, i32 52
  %arrayidx90 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m789, i32 0, i64 %idxprom88
  %arrayidx91 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx90, i32 0, i64 0
  %85 = load i32, i32* %arrayidx91, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %86 to i64
  %87 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m793 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %87, i32 0, i32 52
  %arrayidx94 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m793, i32 0, i64 %idxprom92
  %arrayidx95 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx94, i32 0, i64 7
  %88 = load i32, i32* %arrayidx95, align 4
  %sub96 = sub nsw i32 %85, %88
  %arrayidx97 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  store i32 %sub96, i32* %arrayidx97, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %89 to i64
  %90 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m799 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %90, i32 0, i32 52
  %arrayidx100 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m799, i32 0, i64 %idxprom98
  %arrayidx101 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx100, i32 0, i64 1
  %91 = load i32, i32* %arrayidx101, align 4
  %92 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %92 to i64
  %93 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7103 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %93, i32 0, i32 52
  %arrayidx104 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7103, i32 0, i64 %idxprom102
  %arrayidx105 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx104, i32 0, i64 6
  %94 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %91, %94
  %arrayidx107 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  store i32 %sub106, i32* %arrayidx107, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %95 to i64
  %96 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7109 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %96, i32 0, i32 52
  %arrayidx110 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7109, i32 0, i64 %idxprom108
  %arrayidx111 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx110, i32 0, i64 2
  %97 = load i32, i32* %arrayidx111, align 4
  %98 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %98 to i64
  %99 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7113 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %99, i32 0, i32 52
  %arrayidx114 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7113, i32 0, i64 %idxprom112
  %arrayidx115 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx114, i32 0, i64 5
  %100 = load i32, i32* %arrayidx115, align 4
  %sub116 = sub nsw i32 %97, %100
  %arrayidx117 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  store i32 %sub116, i32* %arrayidx117, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %101 to i64
  %102 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %102, i32 0, i32 52
  %arrayidx120 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7119, i32 0, i64 %idxprom118
  %arrayidx121 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx120, i32 0, i64 3
  %103 = load i32, i32* %arrayidx121, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %104 to i64
  %105 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7123 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %105, i32 0, i32 52
  %arrayidx124 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7123, i32 0, i64 %idxprom122
  %arrayidx125 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx124, i32 0, i64 4
  %106 = load i32, i32* %arrayidx125, align 4
  %sub126 = sub nsw i32 %103, %106
  %arrayidx127 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  store i32 %sub126, i32* %arrayidx127, align 4
  %arrayidx128 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %107 = load i32, i32* %arrayidx128, align 4
  %arrayidx129 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %108 = load i32, i32* %arrayidx129, align 4
  %add130 = add nsw i32 %107, %108
  %arrayidx131 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %109 = load i32, i32* %arrayidx131, align 4
  %shr132 = ashr i32 %109, 1
  %arrayidx133 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %110 = load i32, i32* %arrayidx133, align 4
  %add134 = add nsw i32 %shr132, %110
  %add135 = add nsw i32 %add130, %add134
  %arrayidx136 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  store i32 %add135, i32* %arrayidx136, align 4
  %arrayidx137 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %111 = load i32, i32* %arrayidx137, align 4
  %arrayidx138 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %112 = load i32, i32* %arrayidx138, align 4
  %sub139 = sub nsw i32 %111, %112
  %arrayidx140 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %113 = load i32, i32* %arrayidx140, align 4
  %shr141 = ashr i32 %113, 1
  %arrayidx142 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %114 = load i32, i32* %arrayidx142, align 4
  %add143 = add nsw i32 %shr141, %114
  %sub144 = sub nsw i32 %sub139, %add143
  %arrayidx145 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  store i32 %sub144, i32* %arrayidx145, align 4
  %arrayidx146 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %115 = load i32, i32* %arrayidx146, align 4
  %arrayidx147 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %116 = load i32, i32* %arrayidx147, align 4
  %add148 = add nsw i32 %115, %116
  %arrayidx149 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %117 = load i32, i32* %arrayidx149, align 4
  %shr150 = ashr i32 %117, 1
  %arrayidx151 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %118 = load i32, i32* %arrayidx151, align 4
  %add152 = add nsw i32 %shr150, %118
  %sub153 = sub nsw i32 %add148, %add152
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  store i32 %sub153, i32* %arrayidx154, align 4
  %arrayidx155 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %119 = load i32, i32* %arrayidx155, align 4
  %arrayidx156 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %120 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %119, %120
  %arrayidx158 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %121 = load i32, i32* %arrayidx158, align 4
  %shr159 = ashr i32 %121, 1
  %arrayidx160 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %122 = load i32, i32* %arrayidx160, align 4
  %add161 = add nsw i32 %shr159, %122
  %add162 = add nsw i32 %sub157, %add161
  %arrayidx163 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  store i32 %add162, i32* %arrayidx163, align 4
  %arrayidx164 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %123 = load i32, i32* %arrayidx164, align 4
  %arrayidx165 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %124 = load i32, i32* %arrayidx165, align 4
  %add166 = add nsw i32 %123, %124
  %125 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %125 to i64
  %arrayidx168 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 0
  %arrayidx169 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx168, i32 0, i64 %idxprom167
  store i32 %add166, i32* %arrayidx169, align 4
  %arrayidx170 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %126 = load i32, i32* %arrayidx170, align 4
  %arrayidx171 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %127 = load i32, i32* %arrayidx171, align 4
  %shr172 = ashr i32 %127, 1
  %add173 = add nsw i32 %126, %shr172
  %128 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %128 to i64
  %arrayidx175 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 2
  %arrayidx176 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx175, i32 0, i64 %idxprom174
  store i32 %add173, i32* %arrayidx176, align 4
  %arrayidx177 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %129 = load i32, i32* %arrayidx177, align 4
  %arrayidx178 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %130 = load i32, i32* %arrayidx178, align 4
  %sub179 = sub nsw i32 %129, %130
  %131 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %131 to i64
  %arrayidx181 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 4
  %arrayidx182 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx181, i32 0, i64 %idxprom180
  store i32 %sub179, i32* %arrayidx182, align 4
  %arrayidx183 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %132 = load i32, i32* %arrayidx183, align 4
  %shr184 = ashr i32 %132, 1
  %arrayidx185 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %133 = load i32, i32* %arrayidx185, align 4
  %sub186 = sub nsw i32 %shr184, %133
  %134 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %134 to i64
  %arrayidx188 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 6
  %arrayidx189 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx188, i32 0, i64 %idxprom187
  store i32 %sub186, i32* %arrayidx189, align 4
  %arrayidx190 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %135 = load i32, i32* %arrayidx190, align 4
  %arrayidx191 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %136 = load i32, i32* %arrayidx191, align 4
  %shr192 = ashr i32 %136, 2
  %add193 = add nsw i32 %135, %shr192
  %137 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %137 to i64
  %arrayidx195 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 1
  %arrayidx196 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx195, i32 0, i64 %idxprom194
  store i32 %add193, i32* %arrayidx196, align 4
  %arrayidx197 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %138 = load i32, i32* %arrayidx197, align 4
  %arrayidx198 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %139 = load i32, i32* %arrayidx198, align 4
  %shr199 = ashr i32 %139, 2
  %add200 = add nsw i32 %138, %shr199
  %140 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %140 to i64
  %arrayidx202 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 3
  %arrayidx203 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx202, i32 0, i64 %idxprom201
  store i32 %add200, i32* %arrayidx203, align 4
  %arrayidx204 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %141 = load i32, i32* %arrayidx204, align 4
  %arrayidx205 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %142 = load i32, i32* %arrayidx205, align 4
  %shr206 = ashr i32 %142, 2
  %sub207 = sub nsw i32 %141, %shr206
  %143 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %143 to i64
  %arrayidx209 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 5
  %arrayidx210 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx209, i32 0, i64 %idxprom208
  store i32 %sub207, i32* %arrayidx210, align 4
  %arrayidx211 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %144 = load i32, i32* %arrayidx211, align 4
  %sub212 = sub nsw i32 0, %144
  %arrayidx213 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %145 = load i32, i32* %arrayidx213, align 4
  %shr214 = ashr i32 %145, 2
  %add215 = add nsw i32 %sub212, %shr214
  %146 = load i32, i32* %i, align 4
  %idxprom216 = sext i32 %146 to i64
  %arrayidx217 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 7
  %arrayidx218 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx217, i32 0, i64 %idxprom216
  store i32 %add215, i32* %arrayidx218, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %147 = load i32, i32* %i, align 4
  %inc = add nsw i32 %147, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.401, %for.end
  %148 = load i32, i32* %i, align 4
  %cmp220 = icmp slt i32 %148, 8
  br i1 %cmp220, label %for.body.221, label %for.end.403

for.body.221:                                     ; preds = %for.cond.219
  %149 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %149 to i64
  %arrayidx223 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom222
  %arrayidx224 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx223, i32 0, i64 0
  %150 = load i32, i32* %arrayidx224, align 4
  %151 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %151 to i64
  %arrayidx226 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom225
  %arrayidx227 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx226, i32 0, i64 7
  %152 = load i32, i32* %arrayidx227, align 4
  %add228 = add nsw i32 %150, %152
  %arrayidx229 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  store i32 %add228, i32* %arrayidx229, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %153 to i64
  %arrayidx231 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom230
  %arrayidx232 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx231, i32 0, i64 1
  %154 = load i32, i32* %arrayidx232, align 4
  %155 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %155 to i64
  %arrayidx234 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx234, i32 0, i64 6
  %156 = load i32, i32* %arrayidx235, align 4
  %add236 = add nsw i32 %154, %156
  %arrayidx237 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  store i32 %add236, i32* %arrayidx237, align 4
  %157 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %157 to i64
  %arrayidx239 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom238
  %arrayidx240 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx239, i32 0, i64 2
  %158 = load i32, i32* %arrayidx240, align 4
  %159 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %159 to i64
  %arrayidx242 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom241
  %arrayidx243 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx242, i32 0, i64 5
  %160 = load i32, i32* %arrayidx243, align 4
  %add244 = add nsw i32 %158, %160
  %arrayidx245 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  store i32 %add244, i32* %arrayidx245, align 4
  %161 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %161 to i64
  %arrayidx247 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom246
  %arrayidx248 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx247, i32 0, i64 3
  %162 = load i32, i32* %arrayidx248, align 4
  %163 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %163 to i64
  %arrayidx250 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom249
  %arrayidx251 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx250, i32 0, i64 4
  %164 = load i32, i32* %arrayidx251, align 4
  %add252 = add nsw i32 %162, %164
  %arrayidx253 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  store i32 %add252, i32* %arrayidx253, align 4
  %arrayidx254 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %165 = load i32, i32* %arrayidx254, align 4
  %arrayidx255 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %166 = load i32, i32* %arrayidx255, align 4
  %add256 = add nsw i32 %165, %166
  %arrayidx257 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  store i32 %add256, i32* %arrayidx257, align 4
  %arrayidx258 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %167 = load i32, i32* %arrayidx258, align 4
  %arrayidx259 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %168 = load i32, i32* %arrayidx259, align 4
  %add260 = add nsw i32 %167, %168
  %arrayidx261 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  store i32 %add260, i32* %arrayidx261, align 4
  %arrayidx262 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %169 = load i32, i32* %arrayidx262, align 4
  %arrayidx263 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %170 = load i32, i32* %arrayidx263, align 4
  %sub264 = sub nsw i32 %169, %170
  %arrayidx265 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  store i32 %sub264, i32* %arrayidx265, align 4
  %arrayidx266 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %171 = load i32, i32* %arrayidx266, align 4
  %arrayidx267 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %172 = load i32, i32* %arrayidx267, align 4
  %sub268 = sub nsw i32 %171, %172
  %arrayidx269 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  store i32 %sub268, i32* %arrayidx269, align 4
  %173 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %173 to i64
  %arrayidx271 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom270
  %arrayidx272 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx271, i32 0, i64 0
  %174 = load i32, i32* %arrayidx272, align 4
  %175 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %175 to i64
  %arrayidx274 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom273
  %arrayidx275 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx274, i32 0, i64 7
  %176 = load i32, i32* %arrayidx275, align 4
  %sub276 = sub nsw i32 %174, %176
  %arrayidx277 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  store i32 %sub276, i32* %arrayidx277, align 4
  %177 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %177 to i64
  %arrayidx279 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom278
  %arrayidx280 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx279, i32 0, i64 1
  %178 = load i32, i32* %arrayidx280, align 4
  %179 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %179 to i64
  %arrayidx282 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom281
  %arrayidx283 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx282, i32 0, i64 6
  %180 = load i32, i32* %arrayidx283, align 4
  %sub284 = sub nsw i32 %178, %180
  %arrayidx285 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  store i32 %sub284, i32* %arrayidx285, align 4
  %181 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %181 to i64
  %arrayidx287 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom286
  %arrayidx288 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx287, i32 0, i64 2
  %182 = load i32, i32* %arrayidx288, align 4
  %183 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %183 to i64
  %arrayidx290 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom289
  %arrayidx291 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx290, i32 0, i64 5
  %184 = load i32, i32* %arrayidx291, align 4
  %sub292 = sub nsw i32 %182, %184
  %arrayidx293 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  store i32 %sub292, i32* %arrayidx293, align 4
  %185 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %185 to i64
  %arrayidx295 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom294
  %arrayidx296 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx295, i32 0, i64 3
  %186 = load i32, i32* %arrayidx296, align 4
  %187 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %187 to i64
  %arrayidx298 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom297
  %arrayidx299 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx298, i32 0, i64 4
  %188 = load i32, i32* %arrayidx299, align 4
  %sub300 = sub nsw i32 %186, %188
  %arrayidx301 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  store i32 %sub300, i32* %arrayidx301, align 4
  %arrayidx302 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %189 = load i32, i32* %arrayidx302, align 4
  %arrayidx303 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %190 = load i32, i32* %arrayidx303, align 4
  %add304 = add nsw i32 %189, %190
  %arrayidx305 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %191 = load i32, i32* %arrayidx305, align 4
  %shr306 = ashr i32 %191, 1
  %arrayidx307 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %192 = load i32, i32* %arrayidx307, align 4
  %add308 = add nsw i32 %shr306, %192
  %add309 = add nsw i32 %add304, %add308
  %arrayidx310 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  store i32 %add309, i32* %arrayidx310, align 4
  %arrayidx311 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %193 = load i32, i32* %arrayidx311, align 4
  %arrayidx312 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %194 = load i32, i32* %arrayidx312, align 4
  %sub313 = sub nsw i32 %193, %194
  %arrayidx314 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %195 = load i32, i32* %arrayidx314, align 4
  %shr315 = ashr i32 %195, 1
  %arrayidx316 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %196 = load i32, i32* %arrayidx316, align 4
  %add317 = add nsw i32 %shr315, %196
  %sub318 = sub nsw i32 %sub313, %add317
  %arrayidx319 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  store i32 %sub318, i32* %arrayidx319, align 4
  %arrayidx320 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %197 = load i32, i32* %arrayidx320, align 4
  %arrayidx321 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %198 = load i32, i32* %arrayidx321, align 4
  %add322 = add nsw i32 %197, %198
  %arrayidx323 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %199 = load i32, i32* %arrayidx323, align 4
  %shr324 = ashr i32 %199, 1
  %arrayidx325 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %200 = load i32, i32* %arrayidx325, align 4
  %add326 = add nsw i32 %shr324, %200
  %sub327 = sub nsw i32 %add322, %add326
  %arrayidx328 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  store i32 %sub327, i32* %arrayidx328, align 4
  %arrayidx329 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %201 = load i32, i32* %arrayidx329, align 4
  %arrayidx330 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %202 = load i32, i32* %arrayidx330, align 4
  %sub331 = sub nsw i32 %201, %202
  %arrayidx332 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %203 = load i32, i32* %arrayidx332, align 4
  %shr333 = ashr i32 %203, 1
  %arrayidx334 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %204 = load i32, i32* %arrayidx334, align 4
  %add335 = add nsw i32 %shr333, %204
  %add336 = add nsw i32 %sub331, %add335
  %arrayidx337 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  store i32 %add336, i32* %arrayidx337, align 4
  %arrayidx338 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %205 = load i32, i32* %arrayidx338, align 4
  %arrayidx339 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %206 = load i32, i32* %arrayidx339, align 4
  %add340 = add nsw i32 %205, %206
  %207 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %207 to i64
  %208 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7342 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %208, i32 0, i32 52
  %arrayidx343 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7342, i32 0, i64 0
  %arrayidx344 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx343, i32 0, i64 %idxprom341
  store i32 %add340, i32* %arrayidx344, align 4
  %arrayidx345 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %209 = load i32, i32* %arrayidx345, align 4
  %arrayidx346 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %210 = load i32, i32* %arrayidx346, align 4
  %shr347 = ashr i32 %210, 1
  %add348 = add nsw i32 %209, %shr347
  %211 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %211 to i64
  %212 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7350 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %212, i32 0, i32 52
  %arrayidx351 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7350, i32 0, i64 2
  %arrayidx352 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx351, i32 0, i64 %idxprom349
  store i32 %add348, i32* %arrayidx352, align 4
  %arrayidx353 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %213 = load i32, i32* %arrayidx353, align 4
  %arrayidx354 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %214 = load i32, i32* %arrayidx354, align 4
  %sub355 = sub nsw i32 %213, %214
  %215 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %215 to i64
  %216 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7357 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %216, i32 0, i32 52
  %arrayidx358 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7357, i32 0, i64 4
  %arrayidx359 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx358, i32 0, i64 %idxprom356
  store i32 %sub355, i32* %arrayidx359, align 4
  %arrayidx360 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %217 = load i32, i32* %arrayidx360, align 4
  %shr361 = ashr i32 %217, 1
  %arrayidx362 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %218 = load i32, i32* %arrayidx362, align 4
  %sub363 = sub nsw i32 %shr361, %218
  %219 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %219 to i64
  %220 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7365 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %220, i32 0, i32 52
  %arrayidx366 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7365, i32 0, i64 6
  %arrayidx367 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx366, i32 0, i64 %idxprom364
  store i32 %sub363, i32* %arrayidx367, align 4
  %arrayidx368 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %221 = load i32, i32* %arrayidx368, align 4
  %arrayidx369 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %222 = load i32, i32* %arrayidx369, align 4
  %shr370 = ashr i32 %222, 2
  %add371 = add nsw i32 %221, %shr370
  %223 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %223 to i64
  %224 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7373 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %224, i32 0, i32 52
  %arrayidx374 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7373, i32 0, i64 1
  %arrayidx375 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx374, i32 0, i64 %idxprom372
  store i32 %add371, i32* %arrayidx375, align 4
  %arrayidx376 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %225 = load i32, i32* %arrayidx376, align 4
  %arrayidx377 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %226 = load i32, i32* %arrayidx377, align 4
  %shr378 = ashr i32 %226, 2
  %add379 = add nsw i32 %225, %shr378
  %227 = load i32, i32* %i, align 4
  %idxprom380 = sext i32 %227 to i64
  %228 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7381 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %228, i32 0, i32 52
  %arrayidx382 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7381, i32 0, i64 3
  %arrayidx383 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx382, i32 0, i64 %idxprom380
  store i32 %add379, i32* %arrayidx383, align 4
  %arrayidx384 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %229 = load i32, i32* %arrayidx384, align 4
  %arrayidx385 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %230 = load i32, i32* %arrayidx385, align 4
  %shr386 = ashr i32 %230, 2
  %sub387 = sub nsw i32 %229, %shr386
  %231 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %231 to i64
  %232 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7389 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %232, i32 0, i32 52
  %arrayidx390 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7389, i32 0, i64 5
  %arrayidx391 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx390, i32 0, i64 %idxprom388
  store i32 %sub387, i32* %arrayidx391, align 4
  %arrayidx392 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %233 = load i32, i32* %arrayidx392, align 4
  %sub393 = sub nsw i32 0, %233
  %arrayidx394 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %234 = load i32, i32* %arrayidx394, align 4
  %shr395 = ashr i32 %234, 2
  %add396 = add nsw i32 %sub393, %shr395
  %235 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %235 to i64
  %236 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7398 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %236, i32 0, i32 52
  %arrayidx399 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7398, i32 0, i64 7
  %arrayidx400 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx399, i32 0, i64 %idxprom397
  store i32 %add396, i32* %arrayidx400, align 4
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.221
  %237 = load i32, i32* %i, align 4
  %inc402 = add nsw i32 %237, 1
  store i32 %inc402, i32* %i, align 4
  br label %for.cond.219

for.end.403:                                      ; preds = %for.cond.219
  store i32 0, i32* %nonzero, align 4
  store i32 -1, i32* %run, align 4
  store i32 0, i32* %scan_pos, align 4
  %arrayidx404 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 3
  store i32 -1, i32* %arrayidx404, align 4
  %arrayidx405 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 2
  store i32 -1, i32* %arrayidx405, align 4
  %arrayidx406 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 1
  store i32 -1, i32* %arrayidx406, align 4
  %arrayidx407 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 0
  store i32 -1, i32* %arrayidx407, align 4
  %arrayidx408 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 3
  store i32 0, i32* %arrayidx408, align 4
  %arrayidx409 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 2
  store i32 0, i32* %arrayidx409, align 4
  %arrayidx410 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 1
  store i32 0, i32* %arrayidx410, align 4
  %arrayidx411 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 0
  store i32 0, i32* %arrayidx411, align 4
  store i32 0, i32* %coeff_ctr, align 4
  br label %for.cond.412

for.cond.412:                                     ; preds = %for.inc.569, %for.end.403
  %238 = load i32, i32* %coeff_ctr, align 4
  %cmp413 = icmp slt i32 %238, 64
  br i1 %cmp413, label %for.body.414, label %for.end.571

for.body.414:                                     ; preds = %for.cond.412
  %239 = load i32, i32* %coeff_ctr, align 4
  %idxprom415 = sext i32 %239 to i64
  %240 = load [2 x i8]*, [2 x i8]** %pos_scan, align 8
  %arrayidx416 = getelementptr inbounds [2 x i8], [2 x i8]* %240, i64 %idxprom415
  %arrayidx417 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx416, i32 0, i64 0
  %241 = load i8, i8* %arrayidx417, align 1
  %conv = zext i8 %241 to i32
  store i32 %conv, i32* %i, align 4
  %242 = load i32, i32* %coeff_ctr, align 4
  %idxprom418 = sext i32 %242 to i64
  %243 = load [2 x i8]*, [2 x i8]** %pos_scan, align 8
  %arrayidx419 = getelementptr inbounds [2 x i8], [2 x i8]* %243, i64 %idxprom418
  %arrayidx420 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx419, i32 0, i64 1
  %244 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %244 to i32
  store i32 %conv421, i32* %j, align 4
  %245 = load i32, i32* %coeff_ctr, align 4
  %and422 = and i32 %245, 3
  store i32 %and422, i32* %MCcoeff, align 4
  %246 = load i32, i32* %run, align 4
  %inc423 = add nsw i32 %246, 1
  store i32 %inc423, i32* %run, align 4
  store i32 0, i32* %ilev, align 4
  %247 = load i32, i32* %MCcoeff, align 4
  %idxprom424 = sext i32 %247 to i64
  %arrayidx425 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom424
  %248 = load i32, i32* %arrayidx425, align 4
  %inc426 = add nsw i32 %248, 1
  store i32 %inc426, i32* %arrayidx425, align 4
  %249 = load i32, i32* %i, align 4
  %idxprom427 = sext i32 %249 to i64
  %250 = load i32, i32* %j, align 4
  %idxprom428 = sext i32 %250 to i64
  %251 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7429 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %251, i32 0, i32 52
  %arrayidx430 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7429, i32 0, i64 %idxprom428
  %arrayidx431 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx430, i32 0, i64 %idxprom427
  %252 = load i32, i32* %arrayidx431, align 4
  %call = call i32 @iabs(i32 %252)
  %253 = load i32, i32* %i, align 4
  %idxprom432 = sext i32 %253 to i64
  %254 = load i32, i32* %j, align 4
  %idxprom433 = sext i32 %254 to i64
  %255 = load i32**, i32*** %levelscale, align 8
  %arrayidx434 = getelementptr inbounds i32*, i32** %255, i64 %idxprom433
  %256 = load i32*, i32** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %256, i64 %idxprom432
  %257 = load i32, i32* %arrayidx435, align 4
  %mul436 = mul nsw i32 %call, %257
  %258 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %258 to i64
  %259 = load i32, i32* %j, align 4
  %idxprom438 = sext i32 %259 to i64
  %260 = load i32**, i32*** %leveloffset, align 8
  %arrayidx439 = getelementptr inbounds i32*, i32** %260, i64 %idxprom438
  %261 = load i32*, i32** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds i32, i32* %261, i64 %idxprom437
  %262 = load i32, i32* %arrayidx440, align 4
  %add441 = add nsw i32 %mul436, %262
  %263 = load i32, i32* %q_bits, align 4
  %shr442 = ashr i32 %add441, %263
  store i32 %shr442, i32* %level, align 4
  %264 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %264, i32 0, i32 98
  %265 = load i32, i32* %AdaptiveRounding, align 4
  %tobool443 = icmp ne i32 %265, 0
  br i1 %tobool443, label %if.then.444, label %if.end

if.then.444:                                      ; preds = %for.body.414
  %266 = load i32, i32* %level, align 4
  %cmp445 = icmp eq i32 %266, 0
  br i1 %cmp445, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.444
  br label %cond.end

cond.false:                                       ; preds = %if.then.444
  %267 = load i32, i32* @AdaptRndWeight, align 4
  %268 = load i32, i32* %i, align 4
  %idxprom447 = sext i32 %268 to i64
  %269 = load i32, i32* %j, align 4
  %idxprom448 = sext i32 %269 to i64
  %270 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7449 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %270, i32 0, i32 52
  %arrayidx450 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7449, i32 0, i64 %idxprom448
  %arrayidx451 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx450, i32 0, i64 %idxprom447
  %271 = load i32, i32* %arrayidx451, align 4
  %call452 = call i32 @iabs(i32 %271)
  %272 = load i32, i32* %i, align 4
  %idxprom453 = sext i32 %272 to i64
  %273 = load i32, i32* %j, align 4
  %idxprom454 = sext i32 %273 to i64
  %274 = load i32**, i32*** %levelscale, align 8
  %arrayidx455 = getelementptr inbounds i32*, i32** %274, i64 %idxprom454
  %275 = load i32*, i32** %arrayidx455, align 8
  %arrayidx456 = getelementptr inbounds i32, i32* %275, i64 %idxprom453
  %276 = load i32, i32* %arrayidx456, align 4
  %mul457 = mul nsw i32 %call452, %276
  %277 = load i32, i32* %level, align 4
  %278 = load i32, i32* %q_bits, align 4
  %shl = shl i32 %277, %278
  %sub458 = sub nsw i32 %mul457, %shl
  %mul459 = mul nsw i32 %267, %sub458
  %279 = load i32, i32* %q_bits, align 4
  %add460 = add nsw i32 %279, 1
  %call461 = call i32 @rshift_rnd_sf(i32 %mul459, i32 %add460)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond462 = phi i32 [ 0, %cond.true ], [ %call461, %cond.false ]
  %280 = load i32, i32* %block_x, align 4
  %281 = load i32, i32* %i, align 4
  %add463 = add nsw i32 %280, %281
  %idxprom464 = sext i32 %add463 to i64
  %282 = load i32, i32* %block_y, align 4
  %283 = load i32, i32* %j, align 4
  %add465 = add nsw i32 %282, %283
  %idxprom466 = sext i32 %add465 to i64
  %284 = load i32, i32* %intra.addr, align 4
  %idxprom467 = sext i32 %284 to i64
  %285 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %285, i32 0, i32 56
  %286 = load i32***, i32**** %fadjust8x8, align 8
  %arrayidx468 = getelementptr inbounds i32**, i32*** %286, i64 %idxprom467
  %287 = load i32**, i32*** %arrayidx468, align 8
  %arrayidx469 = getelementptr inbounds i32*, i32** %287, i64 %idxprom466
  %288 = load i32*, i32** %arrayidx469, align 8
  %arrayidx470 = getelementptr inbounds i32, i32* %288, i64 %idxprom464
  store i32 %cond462, i32* %arrayidx470, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body.414
  %289 = load i32, i32* %level, align 4
  %cmp471 = icmp ne i32 %289, 0
  br i1 %cmp471, label %if.then.473, label %if.end.563

if.then.473:                                      ; preds = %if.end
  store i32 1, i32* %nonzero, align 4
  %290 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag = getelementptr inbounds %struct.macroblock, %struct.macroblock* %290, i32 0, i32 31
  %291 = load i32, i32* %luma_transform_size_8x8_flag, align 4
  %tobool474 = icmp ne i32 %291, 0
  br i1 %tobool474, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.473
  %292 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %292, i32 0, i32 74
  %293 = load i32, i32* %symbol_mode, align 4
  %cmp475 = icmp eq i32 %293, 0
  br i1 %cmp475, label %if.then.477, label %if.else

if.then.477:                                      ; preds = %land.lhs.true
  %294 = load i32, i32* %level, align 4
  %cmp478 = icmp sgt i32 %294, 1
  br i1 %cmp478, label %cond.true.480, label %cond.false.481

cond.true.480:                                    ; preds = %if.then.477
  br label %cond.end.489

cond.false.481:                                   ; preds = %if.then.477
  %295 = load i32, i32* %MCcoeff, align 4
  %idxprom482 = sext i32 %295 to i64
  %arrayidx483 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom482
  %296 = load i32, i32* %arrayidx483, align 4
  %idxprom484 = sext i32 %296 to i64
  %297 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %disthres = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %297, i32 0, i32 116
  %298 = load i32, i32* %disthres, align 4
  %idxprom485 = sext i32 %298 to i64
  %arrayidx486 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @COEFF_COST8x8, i32 0, i64 %idxprom485
  %arrayidx487 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx486, i32 0, i64 %idxprom484
  %299 = load i8, i8* %arrayidx487, align 1
  %conv488 = zext i8 %299 to i32
  br label %cond.end.489

cond.end.489:                                     ; preds = %cond.false.481, %cond.true.480
  %cond490 = phi i32 [ 999999, %cond.true.480 ], [ %conv488, %cond.false.481 ]
  %300 = load i32*, i32** %coeff_cost.addr, align 8
  %301 = load i32, i32* %300, align 4
  %add491 = add nsw i32 %301, %cond490
  store i32 %add491, i32* %300, align 4
  %302 = load i32, i32* %level, align 4
  %303 = load i32, i32* %i, align 4
  %idxprom492 = sext i32 %303 to i64
  %304 = load i32, i32* %j, align 4
  %idxprom493 = sext i32 %304 to i64
  %305 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7494 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %305, i32 0, i32 52
  %arrayidx495 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7494, i32 0, i64 %idxprom493
  %arrayidx496 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx495, i32 0, i64 %idxprom492
  %306 = load i32, i32* %arrayidx496, align 4
  %call497 = call i32 @isignab(i32 %302, i32 %306)
  %307 = load i32, i32* %MCcoeff, align 4
  %idxprom498 = sext i32 %307 to i64
  %arrayidx499 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom498
  %308 = load i32, i32* %arrayidx499, align 4
  %idxprom500 = sext i32 %308 to i64
  %309 = load i32, i32* %MCcoeff, align 4
  %idxprom501 = sext i32 %309 to i64
  %310 = load i32, i32* %b8.addr, align 4
  %idxprom502 = sext i32 %310 to i64
  %311 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC503 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %311, i32 0, i32 53
  %312 = load i32****, i32***** %cofAC503, align 8
  %arrayidx504 = getelementptr inbounds i32***, i32**** %312, i64 %idxprom502
  %313 = load i32***, i32**** %arrayidx504, align 8
  %arrayidx505 = getelementptr inbounds i32**, i32*** %313, i64 %idxprom501
  %314 = load i32**, i32*** %arrayidx505, align 8
  %arrayidx506 = getelementptr inbounds i32*, i32** %314, i64 0
  %315 = load i32*, i32** %arrayidx506, align 8
  %arrayidx507 = getelementptr inbounds i32, i32* %315, i64 %idxprom500
  store i32 %call497, i32* %arrayidx507, align 4
  %316 = load i32, i32* %MCcoeff, align 4
  %idxprom508 = sext i32 %316 to i64
  %arrayidx509 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom508
  %317 = load i32, i32* %arrayidx509, align 4
  %318 = load i32, i32* %MCcoeff, align 4
  %idxprom510 = sext i32 %318 to i64
  %arrayidx511 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom510
  %319 = load i32, i32* %arrayidx511, align 4
  %idxprom512 = sext i32 %319 to i64
  %320 = load i32, i32* %MCcoeff, align 4
  %idxprom513 = sext i32 %320 to i64
  %321 = load i32, i32* %b8.addr, align 4
  %idxprom514 = sext i32 %321 to i64
  %322 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC515 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %322, i32 0, i32 53
  %323 = load i32****, i32***** %cofAC515, align 8
  %arrayidx516 = getelementptr inbounds i32***, i32**** %323, i64 %idxprom514
  %324 = load i32***, i32**** %arrayidx516, align 8
  %arrayidx517 = getelementptr inbounds i32**, i32*** %324, i64 %idxprom513
  %325 = load i32**, i32*** %arrayidx517, align 8
  %arrayidx518 = getelementptr inbounds i32*, i32** %325, i64 1
  %326 = load i32*, i32** %arrayidx518, align 8
  %arrayidx519 = getelementptr inbounds i32, i32* %326, i64 %idxprom512
  store i32 %317, i32* %arrayidx519, align 4
  %327 = load i32, i32* %MCcoeff, align 4
  %idxprom520 = sext i32 %327 to i64
  %arrayidx521 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom520
  %328 = load i32, i32* %arrayidx521, align 4
  %inc522 = add nsw i32 %328, 1
  store i32 %inc522, i32* %arrayidx521, align 4
  %329 = load i32, i32* %MCcoeff, align 4
  %idxprom523 = sext i32 %329 to i64
  %arrayidx524 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom523
  store i32 -1, i32* %arrayidx524, align 4
  br label %if.end.549

if.else:                                          ; preds = %land.lhs.true, %if.then.473
  %330 = load i32, i32* %level, align 4
  %cmp525 = icmp sgt i32 %330, 1
  br i1 %cmp525, label %cond.true.527, label %cond.false.528

cond.true.527:                                    ; preds = %if.else
  br label %cond.end.535

cond.false.528:                                   ; preds = %if.else
  %331 = load i32, i32* %run, align 4
  %idxprom529 = sext i32 %331 to i64
  %332 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %disthres530 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %332, i32 0, i32 116
  %333 = load i32, i32* %disthres530, align 4
  %idxprom531 = sext i32 %333 to i64
  %arrayidx532 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @COEFF_COST8x8, i32 0, i64 %idxprom531
  %arrayidx533 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx532, i32 0, i64 %idxprom529
  %334 = load i8, i8* %arrayidx533, align 1
  %conv534 = zext i8 %334 to i32
  br label %cond.end.535

cond.end.535:                                     ; preds = %cond.false.528, %cond.true.527
  %cond536 = phi i32 [ 999999, %cond.true.527 ], [ %conv534, %cond.false.528 ]
  %335 = load i32*, i32** %coeff_cost.addr, align 8
  %336 = load i32, i32* %335, align 4
  %add537 = add nsw i32 %336, %cond536
  store i32 %add537, i32* %335, align 4
  %337 = load i32, i32* %level, align 4
  %338 = load i32, i32* %i, align 4
  %idxprom538 = sext i32 %338 to i64
  %339 = load i32, i32* %j, align 4
  %idxprom539 = sext i32 %339 to i64
  %340 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7540 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %340, i32 0, i32 52
  %arrayidx541 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7540, i32 0, i64 %idxprom539
  %arrayidx542 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx541, i32 0, i64 %idxprom538
  %341 = load i32, i32* %arrayidx542, align 4
  %call543 = call i32 @isignab(i32 %337, i32 %341)
  %342 = load i32, i32* %scan_pos, align 4
  %idxprom544 = sext i32 %342 to i64
  %343 = load i32*, i32** %ACLevel, align 8
  %arrayidx545 = getelementptr inbounds i32, i32* %343, i64 %idxprom544
  store i32 %call543, i32* %arrayidx545, align 4
  %344 = load i32, i32* %run, align 4
  %345 = load i32, i32* %scan_pos, align 4
  %idxprom546 = sext i32 %345 to i64
  %346 = load i32*, i32** %ACRun, align 8
  %arrayidx547 = getelementptr inbounds i32, i32* %346, i64 %idxprom546
  store i32 %344, i32* %arrayidx547, align 4
  %347 = load i32, i32* %scan_pos, align 4
  %inc548 = add nsw i32 %347, 1
  store i32 %inc548, i32* %scan_pos, align 4
  store i32 -1, i32* %run, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %cond.end.535, %cond.end.489
  %348 = load i32, i32* %level, align 4
  %349 = load i32, i32* %i, align 4
  %idxprom550 = sext i32 %349 to i64
  %350 = load i32, i32* %j, align 4
  %idxprom551 = sext i32 %350 to i64
  %351 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7552 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %351, i32 0, i32 52
  %arrayidx553 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7552, i32 0, i64 %idxprom551
  %arrayidx554 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx553, i32 0, i64 %idxprom550
  %352 = load i32, i32* %arrayidx554, align 4
  %call555 = call i32 @isignab(i32 %348, i32 %352)
  store i32 %call555, i32* %level, align 4
  %353 = load i32, i32* %level, align 4
  %354 = load i32, i32* %i, align 4
  %idxprom556 = sext i32 %354 to i64
  %355 = load i32, i32* %j, align 4
  %idxprom557 = sext i32 %355 to i64
  %356 = load i32**, i32*** %invlevelscale, align 8
  %arrayidx558 = getelementptr inbounds i32*, i32** %356, i64 %idxprom557
  %357 = load i32*, i32** %arrayidx558, align 8
  %arrayidx559 = getelementptr inbounds i32, i32* %357, i64 %idxprom556
  %358 = load i32, i32* %arrayidx559, align 4
  %mul560 = mul nsw i32 %353, %358
  %359 = load i32, i32* %qp_per, align 4
  %shl561 = shl i32 %mul560, %359
  %call562 = call i32 @rshift_rnd_sf(i32 %shl561, i32 6)
  store i32 %call562, i32* %ilev, align 4
  br label %if.end.563

if.end.563:                                       ; preds = %if.end.549, %if.end
  %360 = load i32, i32* %ilev, align 4
  %361 = load i32, i32* %i, align 4
  %idxprom564 = sext i32 %361 to i64
  %362 = load i32, i32* %j, align 4
  %idxprom565 = sext i32 %362 to i64
  %363 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7566 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %363, i32 0, i32 52
  %arrayidx567 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7566, i32 0, i64 %idxprom565
  %arrayidx568 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx567, i32 0, i64 %idxprom564
  store i32 %360, i32* %arrayidx568, align 4
  br label %for.inc.569

for.inc.569:                                      ; preds = %if.end.563
  %364 = load i32, i32* %coeff_ctr, align 4
  %inc570 = add nsw i32 %364, 1
  store i32 %inc570, i32* %coeff_ctr, align 4
  br label %for.cond.412

for.end.571:                                      ; preds = %for.cond.412
  br label %if.end.685

if.else.572:                                      ; preds = %land.end
  store i32 0, i32* %nonzero, align 4
  store i32 -1, i32* %run, align 4
  store i32 0, i32* %scan_pos, align 4
  %arrayidx573 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 3
  store i32 -1, i32* %arrayidx573, align 4
  %arrayidx574 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 2
  store i32 -1, i32* %arrayidx574, align 4
  %arrayidx575 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 1
  store i32 -1, i32* %arrayidx575, align 4
  %arrayidx576 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 0
  store i32 -1, i32* %arrayidx576, align 4
  %arrayidx577 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 3
  store i32 0, i32* %arrayidx577, align 4
  %arrayidx578 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 2
  store i32 0, i32* %arrayidx578, align 4
  %arrayidx579 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 1
  store i32 0, i32* %arrayidx579, align 4
  %arrayidx580 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 0
  store i32 0, i32* %arrayidx580, align 4
  store i32 0, i32* %coeff_ctr, align 4
  br label %for.cond.581

for.cond.581:                                     ; preds = %for.inc.682, %if.else.572
  %365 = load i32, i32* %coeff_ctr, align 4
  %cmp582 = icmp slt i32 %365, 64
  br i1 %cmp582, label %for.body.584, label %for.end.684

for.body.584:                                     ; preds = %for.cond.581
  %366 = load i32, i32* %coeff_ctr, align 4
  %idxprom585 = sext i32 %366 to i64
  %367 = load [2 x i8]*, [2 x i8]** %pos_scan, align 8
  %arrayidx586 = getelementptr inbounds [2 x i8], [2 x i8]* %367, i64 %idxprom585
  %arrayidx587 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx586, i32 0, i64 0
  %368 = load i8, i8* %arrayidx587, align 1
  %conv588 = zext i8 %368 to i32
  store i32 %conv588, i32* %i, align 4
  %369 = load i32, i32* %coeff_ctr, align 4
  %idxprom589 = sext i32 %369 to i64
  %370 = load [2 x i8]*, [2 x i8]** %pos_scan, align 8
  %arrayidx590 = getelementptr inbounds [2 x i8], [2 x i8]* %370, i64 %idxprom589
  %arrayidx591 = getelementptr inbounds [2 x i8], [2 x i8]* %arrayidx590, i32 0, i64 1
  %371 = load i8, i8* %arrayidx591, align 1
  %conv592 = zext i8 %371 to i32
  store i32 %conv592, i32* %j, align 4
  %372 = load i32, i32* %coeff_ctr, align 4
  %and593 = and i32 %372, 3
  store i32 %and593, i32* %MCcoeff, align 4
  %373 = load i32, i32* %run, align 4
  %inc594 = add nsw i32 %373, 1
  store i32 %inc594, i32* %run, align 4
  store i32 0, i32* %ilev, align 4
  %374 = load i32, i32* %MCcoeff, align 4
  %idxprom595 = sext i32 %374 to i64
  %arrayidx596 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom595
  %375 = load i32, i32* %arrayidx596, align 4
  %inc597 = add nsw i32 %375, 1
  store i32 %inc597, i32* %arrayidx596, align 4
  %376 = load i32, i32* %i, align 4
  %idxprom598 = sext i32 %376 to i64
  %377 = load i32, i32* %j, align 4
  %idxprom599 = sext i32 %377 to i64
  %378 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7600 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %378, i32 0, i32 52
  %arrayidx601 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7600, i32 0, i64 %idxprom599
  %arrayidx602 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx601, i32 0, i64 %idxprom598
  %379 = load i32, i32* %arrayidx602, align 4
  %call603 = call i32 @iabs(i32 %379)
  store i32 %call603, i32* %level, align 4
  %380 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %AdaptiveRounding604 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %380, i32 0, i32 98
  %381 = load i32, i32* %AdaptiveRounding604, align 4
  %tobool605 = icmp ne i32 %381, 0
  br i1 %tobool605, label %if.then.606, label %if.end.616

if.then.606:                                      ; preds = %for.body.584
  %382 = load i32, i32* %block_x, align 4
  %383 = load i32, i32* %i, align 4
  %add607 = add nsw i32 %382, %383
  %idxprom608 = sext i32 %add607 to i64
  %384 = load i32, i32* %block_y, align 4
  %385 = load i32, i32* %j, align 4
  %add609 = add nsw i32 %384, %385
  %idxprom610 = sext i32 %add609 to i64
  %386 = load i32, i32* %intra.addr, align 4
  %idxprom611 = sext i32 %386 to i64
  %387 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %fadjust8x8612 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %387, i32 0, i32 56
  %388 = load i32***, i32**** %fadjust8x8612, align 8
  %arrayidx613 = getelementptr inbounds i32**, i32*** %388, i64 %idxprom611
  %389 = load i32**, i32*** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i32*, i32** %389, i64 %idxprom610
  %390 = load i32*, i32** %arrayidx614, align 8
  %arrayidx615 = getelementptr inbounds i32, i32* %390, i64 %idxprom608
  store i32 0, i32* %arrayidx615, align 4
  br label %if.end.616

if.end.616:                                       ; preds = %if.then.606, %for.body.584
  %391 = load i32, i32* %level, align 4
  %cmp617 = icmp ne i32 %391, 0
  br i1 %cmp617, label %if.then.619, label %if.end.681

if.then.619:                                      ; preds = %if.end.616
  store i32 1, i32* %nonzero, align 4
  %392 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag620 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %392, i32 0, i32 31
  %393 = load i32, i32* %luma_transform_size_8x8_flag620, align 4
  %tobool621 = icmp ne i32 %393, 0
  br i1 %tobool621, label %land.lhs.true.622, label %if.else.661

land.lhs.true.622:                                ; preds = %if.then.619
  %394 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode623 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %394, i32 0, i32 74
  %395 = load i32, i32* %symbol_mode623, align 4
  %cmp624 = icmp eq i32 %395, 0
  br i1 %cmp624, label %if.then.626, label %if.else.661

if.then.626:                                      ; preds = %land.lhs.true.622
  %396 = load i32*, i32** %coeff_cost.addr, align 8
  %397 = load i32, i32* %396, align 4
  %add627 = add nsw i32 %397, 999999
  store i32 %add627, i32* %396, align 4
  %398 = load i32, i32* %level, align 4
  %399 = load i32, i32* %i, align 4
  %idxprom628 = sext i32 %399 to i64
  %400 = load i32, i32* %j, align 4
  %idxprom629 = sext i32 %400 to i64
  %401 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7630 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %401, i32 0, i32 52
  %arrayidx631 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7630, i32 0, i64 %idxprom629
  %arrayidx632 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx631, i32 0, i64 %idxprom628
  %402 = load i32, i32* %arrayidx632, align 4
  %call633 = call i32 @isignab(i32 %398, i32 %402)
  %403 = load i32, i32* %MCcoeff, align 4
  %idxprom634 = sext i32 %403 to i64
  %arrayidx635 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom634
  %404 = load i32, i32* %arrayidx635, align 4
  %idxprom636 = sext i32 %404 to i64
  %405 = load i32, i32* %MCcoeff, align 4
  %idxprom637 = sext i32 %405 to i64
  %406 = load i32, i32* %b8.addr, align 4
  %idxprom638 = sext i32 %406 to i64
  %407 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC639 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %407, i32 0, i32 53
  %408 = load i32****, i32***** %cofAC639, align 8
  %arrayidx640 = getelementptr inbounds i32***, i32**** %408, i64 %idxprom638
  %409 = load i32***, i32**** %arrayidx640, align 8
  %arrayidx641 = getelementptr inbounds i32**, i32*** %409, i64 %idxprom637
  %410 = load i32**, i32*** %arrayidx641, align 8
  %arrayidx642 = getelementptr inbounds i32*, i32** %410, i64 0
  %411 = load i32*, i32** %arrayidx642, align 8
  %arrayidx643 = getelementptr inbounds i32, i32* %411, i64 %idxprom636
  store i32 %call633, i32* %arrayidx643, align 4
  %412 = load i32, i32* %MCcoeff, align 4
  %idxprom644 = sext i32 %412 to i64
  %arrayidx645 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom644
  %413 = load i32, i32* %arrayidx645, align 4
  %414 = load i32, i32* %MCcoeff, align 4
  %idxprom646 = sext i32 %414 to i64
  %arrayidx647 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom646
  %415 = load i32, i32* %arrayidx647, align 4
  %idxprom648 = sext i32 %415 to i64
  %416 = load i32, i32* %MCcoeff, align 4
  %idxprom649 = sext i32 %416 to i64
  %417 = load i32, i32* %b8.addr, align 4
  %idxprom650 = sext i32 %417 to i64
  %418 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC651 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %418, i32 0, i32 53
  %419 = load i32****, i32***** %cofAC651, align 8
  %arrayidx652 = getelementptr inbounds i32***, i32**** %419, i64 %idxprom650
  %420 = load i32***, i32**** %arrayidx652, align 8
  %arrayidx653 = getelementptr inbounds i32**, i32*** %420, i64 %idxprom649
  %421 = load i32**, i32*** %arrayidx653, align 8
  %arrayidx654 = getelementptr inbounds i32*, i32** %421, i64 1
  %422 = load i32*, i32** %arrayidx654, align 8
  %arrayidx655 = getelementptr inbounds i32, i32* %422, i64 %idxprom648
  store i32 %413, i32* %arrayidx655, align 4
  %423 = load i32, i32* %MCcoeff, align 4
  %idxprom656 = sext i32 %423 to i64
  %arrayidx657 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom656
  %424 = load i32, i32* %arrayidx657, align 4
  %inc658 = add nsw i32 %424, 1
  store i32 %inc658, i32* %arrayidx657, align 4
  %425 = load i32, i32* %MCcoeff, align 4
  %idxprom659 = sext i32 %425 to i64
  %arrayidx660 = getelementptr inbounds [4 x i32], [4 x i32]* %runs, i32 0, i64 %idxprom659
  store i32 -1, i32* %arrayidx660, align 4
  br label %if.end.674

if.else.661:                                      ; preds = %land.lhs.true.622, %if.then.619
  %426 = load i32*, i32** %coeff_cost.addr, align 8
  %427 = load i32, i32* %426, align 4
  %add662 = add nsw i32 %427, 999999
  store i32 %add662, i32* %426, align 4
  %428 = load i32, i32* %level, align 4
  %429 = load i32, i32* %i, align 4
  %idxprom663 = sext i32 %429 to i64
  %430 = load i32, i32* %j, align 4
  %idxprom664 = sext i32 %430 to i64
  %431 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7665 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %431, i32 0, i32 52
  %arrayidx666 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7665, i32 0, i64 %idxprom664
  %arrayidx667 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx666, i32 0, i64 %idxprom663
  %432 = load i32, i32* %arrayidx667, align 4
  %call668 = call i32 @isignab(i32 %428, i32 %432)
  %433 = load i32, i32* %scan_pos, align 4
  %idxprom669 = sext i32 %433 to i64
  %434 = load i32*, i32** %ACLevel, align 8
  %arrayidx670 = getelementptr inbounds i32, i32* %434, i64 %idxprom669
  store i32 %call668, i32* %arrayidx670, align 4
  %435 = load i32, i32* %run, align 4
  %436 = load i32, i32* %scan_pos, align 4
  %idxprom671 = sext i32 %436 to i64
  %437 = load i32*, i32** %ACRun, align 8
  %arrayidx672 = getelementptr inbounds i32, i32* %437, i64 %idxprom671
  store i32 %435, i32* %arrayidx672, align 4
  %438 = load i32, i32* %scan_pos, align 4
  %inc673 = add nsw i32 %438, 1
  store i32 %inc673, i32* %scan_pos, align 4
  store i32 -1, i32* %run, align 4
  br label %if.end.674

if.end.674:                                       ; preds = %if.else.661, %if.then.626
  %439 = load i32, i32* %level, align 4
  %440 = load i32, i32* %i, align 4
  %idxprom675 = sext i32 %440 to i64
  %441 = load i32, i32* %j, align 4
  %idxprom676 = sext i32 %441 to i64
  %442 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7677 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %442, i32 0, i32 52
  %arrayidx678 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7677, i32 0, i64 %idxprom676
  %arrayidx679 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx678, i32 0, i64 %idxprom675
  %443 = load i32, i32* %arrayidx679, align 4
  %call680 = call i32 @isignab(i32 %439, i32 %443)
  store i32 %call680, i32* %level, align 4
  %444 = load i32, i32* %level, align 4
  store i32 %444, i32* %ilev, align 4
  br label %if.end.681

if.end.681:                                       ; preds = %if.end.674, %if.end.616
  br label %for.inc.682

for.inc.682:                                      ; preds = %if.end.681
  %445 = load i32, i32* %coeff_ctr, align 4
  %inc683 = add nsw i32 %445, 1
  store i32 %inc683, i32* %coeff_ctr, align 4
  br label %for.cond.581

for.end.684:                                      ; preds = %for.cond.581
  br label %if.end.685

if.end.685:                                       ; preds = %for.end.684, %for.end.571
  %446 = load %struct.macroblock*, %struct.macroblock** %currMB, align 8
  %luma_transform_size_8x8_flag686 = getelementptr inbounds %struct.macroblock, %struct.macroblock* %446, i32 0, i32 31
  %447 = load i32, i32* %luma_transform_size_8x8_flag686, align 4
  %tobool687 = icmp ne i32 %447, 0
  br i1 %tobool687, label %lor.lhs.false, label %if.then.691

lor.lhs.false:                                    ; preds = %if.end.685
  %448 = load %struct.InputParameters*, %struct.InputParameters** @input, align 8
  %symbol_mode688 = getelementptr inbounds %struct.InputParameters, %struct.InputParameters* %448, i32 0, i32 74
  %449 = load i32, i32* %symbol_mode688, align 4
  %cmp689 = icmp ne i32 %449, 0
  br i1 %cmp689, label %if.then.691, label %if.else.694

if.then.691:                                      ; preds = %lor.lhs.false, %if.end.685
  %450 = load i32, i32* %scan_pos, align 4
  %idxprom692 = sext i32 %450 to i64
  %451 = load i32*, i32** %ACLevel, align 8
  %arrayidx693 = getelementptr inbounds i32, i32* %451, i64 %idxprom692
  store i32 0, i32* %arrayidx693, align 4
  br label %if.end.712

if.else.694:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.695

for.cond.695:                                     ; preds = %for.inc.709, %if.else.694
  %452 = load i32, i32* %i, align 4
  %cmp696 = icmp slt i32 %452, 4
  br i1 %cmp696, label %for.body.698, label %for.end.711

for.body.698:                                     ; preds = %for.cond.695
  %453 = load i32, i32* %i, align 4
  %idxprom699 = sext i32 %453 to i64
  %arrayidx700 = getelementptr inbounds [4 x i32], [4 x i32]* %scan_poss, i32 0, i64 %idxprom699
  %454 = load i32, i32* %arrayidx700, align 4
  %idxprom701 = sext i32 %454 to i64
  %455 = load i32, i32* %i, align 4
  %idxprom702 = sext i32 %455 to i64
  %456 = load i32, i32* %b8.addr, align 4
  %idxprom703 = sext i32 %456 to i64
  %457 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %cofAC704 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %457, i32 0, i32 53
  %458 = load i32****, i32***** %cofAC704, align 8
  %arrayidx705 = getelementptr inbounds i32***, i32**** %458, i64 %idxprom703
  %459 = load i32***, i32**** %arrayidx705, align 8
  %arrayidx706 = getelementptr inbounds i32**, i32*** %459, i64 %idxprom702
  %460 = load i32**, i32*** %arrayidx706, align 8
  %arrayidx707 = getelementptr inbounds i32*, i32** %460, i64 0
  %461 = load i32*, i32** %arrayidx707, align 8
  %arrayidx708 = getelementptr inbounds i32, i32* %461, i64 %idxprom701
  store i32 0, i32* %arrayidx708, align 4
  br label %for.inc.709

for.inc.709:                                      ; preds = %for.body.698
  %462 = load i32, i32* %i, align 4
  %inc710 = add nsw i32 %462, 1
  store i32 %inc710, i32* %i, align 4
  br label %for.cond.695

for.end.711:                                      ; preds = %for.cond.695
  br label %if.end.712

if.end.712:                                       ; preds = %for.end.711, %if.then.691
  %463 = load i32, i32* %lossless_qpprime, align 4
  %tobool713 = icmp ne i32 %463, 0
  br i1 %tobool713, label %if.else.1190, label %if.then.714

if.then.714:                                      ; preds = %if.end.712
  store i32 0, i32* %i, align 4
  br label %for.cond.715

for.cond.715:                                     ; preds = %for.inc.932, %if.then.714
  %464 = load i32, i32* %i, align 4
  %cmp716 = icmp slt i32 %464, 8
  br i1 %cmp716, label %for.body.718, label %for.end.934

for.body.718:                                     ; preds = %for.cond.715
  %465 = load i32, i32* %i, align 4
  %idxprom719 = sext i32 %465 to i64
  %466 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7720 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %466, i32 0, i32 52
  %arrayidx721 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7720, i32 0, i64 %idxprom719
  %arrayidx722 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx721, i32 0, i64 0
  %467 = load i32, i32* %arrayidx722, align 4
  %468 = load i32, i32* %i, align 4
  %idxprom723 = sext i32 %468 to i64
  %469 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7724 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %469, i32 0, i32 52
  %arrayidx725 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7724, i32 0, i64 %idxprom723
  %arrayidx726 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx725, i32 0, i64 4
  %470 = load i32, i32* %arrayidx726, align 4
  %add727 = add nsw i32 %467, %470
  %arrayidx728 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  store i32 %add727, i32* %arrayidx728, align 4
  %471 = load i32, i32* %i, align 4
  %idxprom729 = sext i32 %471 to i64
  %472 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7730 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %472, i32 0, i32 52
  %arrayidx731 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7730, i32 0, i64 %idxprom729
  %arrayidx732 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx731, i32 0, i64 0
  %473 = load i32, i32* %arrayidx732, align 4
  %474 = load i32, i32* %i, align 4
  %idxprom733 = sext i32 %474 to i64
  %475 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7734 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %475, i32 0, i32 52
  %arrayidx735 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7734, i32 0, i64 %idxprom733
  %arrayidx736 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx735, i32 0, i64 4
  %476 = load i32, i32* %arrayidx736, align 4
  %sub737 = sub nsw i32 %473, %476
  %arrayidx738 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  store i32 %sub737, i32* %arrayidx738, align 4
  %477 = load i32, i32* %i, align 4
  %idxprom739 = sext i32 %477 to i64
  %478 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7740 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %478, i32 0, i32 52
  %arrayidx741 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7740, i32 0, i64 %idxprom739
  %arrayidx742 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx741, i32 0, i64 2
  %479 = load i32, i32* %arrayidx742, align 4
  %shr743 = ashr i32 %479, 1
  %480 = load i32, i32* %i, align 4
  %idxprom744 = sext i32 %480 to i64
  %481 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7745 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %481, i32 0, i32 52
  %arrayidx746 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7745, i32 0, i64 %idxprom744
  %arrayidx747 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx746, i32 0, i64 6
  %482 = load i32, i32* %arrayidx747, align 4
  %sub748 = sub nsw i32 %shr743, %482
  %arrayidx749 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  store i32 %sub748, i32* %arrayidx749, align 4
  %483 = load i32, i32* %i, align 4
  %idxprom750 = sext i32 %483 to i64
  %484 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7751 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %484, i32 0, i32 52
  %arrayidx752 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7751, i32 0, i64 %idxprom750
  %arrayidx753 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx752, i32 0, i64 2
  %485 = load i32, i32* %arrayidx753, align 4
  %486 = load i32, i32* %i, align 4
  %idxprom754 = sext i32 %486 to i64
  %487 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7755 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %487, i32 0, i32 52
  %arrayidx756 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7755, i32 0, i64 %idxprom754
  %arrayidx757 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx756, i32 0, i64 6
  %488 = load i32, i32* %arrayidx757, align 4
  %shr758 = ashr i32 %488, 1
  %add759 = add nsw i32 %485, %shr758
  %arrayidx760 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  store i32 %add759, i32* %arrayidx760, align 4
  %arrayidx761 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %489 = load i32, i32* %arrayidx761, align 4
  %arrayidx762 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %490 = load i32, i32* %arrayidx762, align 4
  %add763 = add nsw i32 %489, %490
  %arrayidx764 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  store i32 %add763, i32* %arrayidx764, align 4
  %arrayidx765 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %491 = load i32, i32* %arrayidx765, align 4
  %arrayidx766 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %492 = load i32, i32* %arrayidx766, align 4
  %add767 = add nsw i32 %491, %492
  %arrayidx768 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  store i32 %add767, i32* %arrayidx768, align 4
  %arrayidx769 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %493 = load i32, i32* %arrayidx769, align 4
  %arrayidx770 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %494 = load i32, i32* %arrayidx770, align 4
  %sub771 = sub nsw i32 %493, %494
  %arrayidx772 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  store i32 %sub771, i32* %arrayidx772, align 4
  %arrayidx773 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %495 = load i32, i32* %arrayidx773, align 4
  %arrayidx774 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %496 = load i32, i32* %arrayidx774, align 4
  %sub775 = sub nsw i32 %495, %496
  %arrayidx776 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  store i32 %sub775, i32* %arrayidx776, align 4
  %497 = load i32, i32* %i, align 4
  %idxprom777 = sext i32 %497 to i64
  %498 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7778 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %498, i32 0, i32 52
  %arrayidx779 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7778, i32 0, i64 %idxprom777
  %arrayidx780 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx779, i32 0, i64 3
  %499 = load i32, i32* %arrayidx780, align 4
  %sub781 = sub nsw i32 0, %499
  %500 = load i32, i32* %i, align 4
  %idxprom782 = sext i32 %500 to i64
  %501 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7783 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %501, i32 0, i32 52
  %arrayidx784 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7783, i32 0, i64 %idxprom782
  %arrayidx785 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx784, i32 0, i64 5
  %502 = load i32, i32* %arrayidx785, align 4
  %add786 = add nsw i32 %sub781, %502
  %503 = load i32, i32* %i, align 4
  %idxprom787 = sext i32 %503 to i64
  %504 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7788 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %504, i32 0, i32 52
  %arrayidx789 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7788, i32 0, i64 %idxprom787
  %arrayidx790 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx789, i32 0, i64 7
  %505 = load i32, i32* %arrayidx790, align 4
  %sub791 = sub nsw i32 %add786, %505
  %506 = load i32, i32* %i, align 4
  %idxprom792 = sext i32 %506 to i64
  %507 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7793 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %507, i32 0, i32 52
  %arrayidx794 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7793, i32 0, i64 %idxprom792
  %arrayidx795 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx794, i32 0, i64 7
  %508 = load i32, i32* %arrayidx795, align 4
  %shr796 = ashr i32 %508, 1
  %sub797 = sub nsw i32 %sub791, %shr796
  %arrayidx798 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  store i32 %sub797, i32* %arrayidx798, align 4
  %509 = load i32, i32* %i, align 4
  %idxprom799 = sext i32 %509 to i64
  %510 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7800 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %510, i32 0, i32 52
  %arrayidx801 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7800, i32 0, i64 %idxprom799
  %arrayidx802 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx801, i32 0, i64 1
  %511 = load i32, i32* %arrayidx802, align 4
  %512 = load i32, i32* %i, align 4
  %idxprom803 = sext i32 %512 to i64
  %513 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7804 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %513, i32 0, i32 52
  %arrayidx805 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7804, i32 0, i64 %idxprom803
  %arrayidx806 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx805, i32 0, i64 7
  %514 = load i32, i32* %arrayidx806, align 4
  %add807 = add nsw i32 %511, %514
  %515 = load i32, i32* %i, align 4
  %idxprom808 = sext i32 %515 to i64
  %516 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7809 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %516, i32 0, i32 52
  %arrayidx810 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7809, i32 0, i64 %idxprom808
  %arrayidx811 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx810, i32 0, i64 3
  %517 = load i32, i32* %arrayidx811, align 4
  %sub812 = sub nsw i32 %add807, %517
  %518 = load i32, i32* %i, align 4
  %idxprom813 = sext i32 %518 to i64
  %519 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7814 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %519, i32 0, i32 52
  %arrayidx815 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7814, i32 0, i64 %idxprom813
  %arrayidx816 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx815, i32 0, i64 3
  %520 = load i32, i32* %arrayidx816, align 4
  %shr817 = ashr i32 %520, 1
  %sub818 = sub nsw i32 %sub812, %shr817
  %arrayidx819 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  store i32 %sub818, i32* %arrayidx819, align 4
  %521 = load i32, i32* %i, align 4
  %idxprom820 = sext i32 %521 to i64
  %522 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7821 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %522, i32 0, i32 52
  %arrayidx822 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7821, i32 0, i64 %idxprom820
  %arrayidx823 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx822, i32 0, i64 1
  %523 = load i32, i32* %arrayidx823, align 4
  %sub824 = sub nsw i32 0, %523
  %524 = load i32, i32* %i, align 4
  %idxprom825 = sext i32 %524 to i64
  %525 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7826 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %525, i32 0, i32 52
  %arrayidx827 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7826, i32 0, i64 %idxprom825
  %arrayidx828 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx827, i32 0, i64 7
  %526 = load i32, i32* %arrayidx828, align 4
  %add829 = add nsw i32 %sub824, %526
  %527 = load i32, i32* %i, align 4
  %idxprom830 = sext i32 %527 to i64
  %528 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7831 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %528, i32 0, i32 52
  %arrayidx832 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7831, i32 0, i64 %idxprom830
  %arrayidx833 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx832, i32 0, i64 5
  %529 = load i32, i32* %arrayidx833, align 4
  %add834 = add nsw i32 %add829, %529
  %530 = load i32, i32* %i, align 4
  %idxprom835 = sext i32 %530 to i64
  %531 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7836 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %531, i32 0, i32 52
  %arrayidx837 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7836, i32 0, i64 %idxprom835
  %arrayidx838 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx837, i32 0, i64 5
  %532 = load i32, i32* %arrayidx838, align 4
  %shr839 = ashr i32 %532, 1
  %add840 = add nsw i32 %add834, %shr839
  %arrayidx841 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  store i32 %add840, i32* %arrayidx841, align 4
  %533 = load i32, i32* %i, align 4
  %idxprom842 = sext i32 %533 to i64
  %534 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7843 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %534, i32 0, i32 52
  %arrayidx844 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7843, i32 0, i64 %idxprom842
  %arrayidx845 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx844, i32 0, i64 3
  %535 = load i32, i32* %arrayidx845, align 4
  %536 = load i32, i32* %i, align 4
  %idxprom846 = sext i32 %536 to i64
  %537 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7847 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %537, i32 0, i32 52
  %arrayidx848 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7847, i32 0, i64 %idxprom846
  %arrayidx849 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx848, i32 0, i64 5
  %538 = load i32, i32* %arrayidx849, align 4
  %add850 = add nsw i32 %535, %538
  %539 = load i32, i32* %i, align 4
  %idxprom851 = sext i32 %539 to i64
  %540 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7852 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %540, i32 0, i32 52
  %arrayidx853 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7852, i32 0, i64 %idxprom851
  %arrayidx854 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx853, i32 0, i64 1
  %541 = load i32, i32* %arrayidx854, align 4
  %add855 = add nsw i32 %add850, %541
  %542 = load i32, i32* %i, align 4
  %idxprom856 = sext i32 %542 to i64
  %543 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m7857 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %543, i32 0, i32 52
  %arrayidx858 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m7857, i32 0, i64 %idxprom856
  %arrayidx859 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx858, i32 0, i64 1
  %544 = load i32, i32* %arrayidx859, align 4
  %shr860 = ashr i32 %544, 1
  %add861 = add nsw i32 %add855, %shr860
  %arrayidx862 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  store i32 %add861, i32* %arrayidx862, align 4
  %arrayidx863 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %545 = load i32, i32* %arrayidx863, align 4
  %arrayidx864 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %546 = load i32, i32* %arrayidx864, align 4
  %shr865 = ashr i32 %546, 2
  %add866 = add nsw i32 %545, %shr865
  %arrayidx867 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  store i32 %add866, i32* %arrayidx867, align 4
  %arrayidx868 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %547 = load i32, i32* %arrayidx868, align 4
  %shr869 = ashr i32 %547, 2
  %sub870 = sub nsw i32 0, %shr869
  %arrayidx871 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %548 = load i32, i32* %arrayidx871, align 4
  %add872 = add nsw i32 %sub870, %548
  %arrayidx873 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  store i32 %add872, i32* %arrayidx873, align 4
  %arrayidx874 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %549 = load i32, i32* %arrayidx874, align 4
  %arrayidx875 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %550 = load i32, i32* %arrayidx875, align 4
  %shr876 = ashr i32 %550, 2
  %add877 = add nsw i32 %549, %shr876
  %arrayidx878 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  store i32 %add877, i32* %arrayidx878, align 4
  %arrayidx879 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %551 = load i32, i32* %arrayidx879, align 4
  %shr880 = ashr i32 %551, 2
  %arrayidx881 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %552 = load i32, i32* %arrayidx881, align 4
  %sub882 = sub nsw i32 %shr880, %552
  %arrayidx883 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  store i32 %sub882, i32* %arrayidx883, align 4
  %arrayidx884 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %553 = load i32, i32* %arrayidx884, align 4
  %arrayidx885 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %554 = load i32, i32* %arrayidx885, align 4
  %add886 = add nsw i32 %553, %554
  %555 = load i32, i32* %i, align 4
  %idxprom887 = sext i32 %555 to i64
  %arrayidx888 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 0
  %arrayidx889 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx888, i32 0, i64 %idxprom887
  store i32 %add886, i32* %arrayidx889, align 4
  %arrayidx890 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %556 = load i32, i32* %arrayidx890, align 4
  %arrayidx891 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %557 = load i32, i32* %arrayidx891, align 4
  %add892 = add nsw i32 %556, %557
  %558 = load i32, i32* %i, align 4
  %idxprom893 = sext i32 %558 to i64
  %arrayidx894 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 1
  %arrayidx895 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx894, i32 0, i64 %idxprom893
  store i32 %add892, i32* %arrayidx895, align 4
  %arrayidx896 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %559 = load i32, i32* %arrayidx896, align 4
  %arrayidx897 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %560 = load i32, i32* %arrayidx897, align 4
  %add898 = add nsw i32 %559, %560
  %561 = load i32, i32* %i, align 4
  %idxprom899 = sext i32 %561 to i64
  %arrayidx900 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 2
  %arrayidx901 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx900, i32 0, i64 %idxprom899
  store i32 %add898, i32* %arrayidx901, align 4
  %arrayidx902 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %562 = load i32, i32* %arrayidx902, align 4
  %arrayidx903 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %563 = load i32, i32* %arrayidx903, align 4
  %add904 = add nsw i32 %562, %563
  %564 = load i32, i32* %i, align 4
  %idxprom905 = sext i32 %564 to i64
  %arrayidx906 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 3
  %arrayidx907 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx906, i32 0, i64 %idxprom905
  store i32 %add904, i32* %arrayidx907, align 4
  %arrayidx908 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %565 = load i32, i32* %arrayidx908, align 4
  %arrayidx909 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %566 = load i32, i32* %arrayidx909, align 4
  %sub910 = sub nsw i32 %565, %566
  %567 = load i32, i32* %i, align 4
  %idxprom911 = sext i32 %567 to i64
  %arrayidx912 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 4
  %arrayidx913 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx912, i32 0, i64 %idxprom911
  store i32 %sub910, i32* %arrayidx913, align 4
  %arrayidx914 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %568 = load i32, i32* %arrayidx914, align 4
  %arrayidx915 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %569 = load i32, i32* %arrayidx915, align 4
  %sub916 = sub nsw i32 %568, %569
  %570 = load i32, i32* %i, align 4
  %idxprom917 = sext i32 %570 to i64
  %arrayidx918 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 5
  %arrayidx919 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx918, i32 0, i64 %idxprom917
  store i32 %sub916, i32* %arrayidx919, align 4
  %arrayidx920 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %571 = load i32, i32* %arrayidx920, align 4
  %arrayidx921 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %572 = load i32, i32* %arrayidx921, align 4
  %sub922 = sub nsw i32 %571, %572
  %573 = load i32, i32* %i, align 4
  %idxprom923 = sext i32 %573 to i64
  %arrayidx924 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 6
  %arrayidx925 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx924, i32 0, i64 %idxprom923
  store i32 %sub922, i32* %arrayidx925, align 4
  %arrayidx926 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %574 = load i32, i32* %arrayidx926, align 4
  %arrayidx927 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %575 = load i32, i32* %arrayidx927, align 4
  %sub928 = sub nsw i32 %574, %575
  %576 = load i32, i32* %i, align 4
  %idxprom929 = sext i32 %576 to i64
  %arrayidx930 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 7
  %arrayidx931 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx930, i32 0, i64 %idxprom929
  store i32 %sub928, i32* %arrayidx931, align 4
  br label %for.inc.932

for.inc.932:                                      ; preds = %for.body.718
  %577 = load i32, i32* %i, align 4
  %inc933 = add nsw i32 %577, 1
  store i32 %inc933, i32* %i, align 4
  br label %for.cond.715

for.end.934:                                      ; preds = %for.cond.715
  store i32 0, i32* %i, align 4
  br label %for.cond.935

for.cond.935:                                     ; preds = %for.inc.1136, %for.end.934
  %578 = load i32, i32* %i, align 4
  %cmp936 = icmp slt i32 %578, 8
  br i1 %cmp936, label %for.body.938, label %for.end.1138

for.body.938:                                     ; preds = %for.cond.935
  %579 = load i32, i32* %i, align 4
  %idxprom939 = sext i32 %579 to i64
  %arrayidx940 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom939
  %arrayidx941 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx940, i32 0, i64 0
  %580 = load i32, i32* %arrayidx941, align 4
  %581 = load i32, i32* %i, align 4
  %idxprom942 = sext i32 %581 to i64
  %arrayidx943 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom942
  %arrayidx944 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx943, i32 0, i64 4
  %582 = load i32, i32* %arrayidx944, align 4
  %add945 = add nsw i32 %580, %582
  %arrayidx946 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  store i32 %add945, i32* %arrayidx946, align 4
  %583 = load i32, i32* %i, align 4
  %idxprom947 = sext i32 %583 to i64
  %arrayidx948 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom947
  %arrayidx949 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx948, i32 0, i64 0
  %584 = load i32, i32* %arrayidx949, align 4
  %585 = load i32, i32* %i, align 4
  %idxprom950 = sext i32 %585 to i64
  %arrayidx951 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom950
  %arrayidx952 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx951, i32 0, i64 4
  %586 = load i32, i32* %arrayidx952, align 4
  %sub953 = sub nsw i32 %584, %586
  %arrayidx954 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  store i32 %sub953, i32* %arrayidx954, align 4
  %587 = load i32, i32* %i, align 4
  %idxprom955 = sext i32 %587 to i64
  %arrayidx956 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom955
  %arrayidx957 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx956, i32 0, i64 2
  %588 = load i32, i32* %arrayidx957, align 4
  %shr958 = ashr i32 %588, 1
  %589 = load i32, i32* %i, align 4
  %idxprom959 = sext i32 %589 to i64
  %arrayidx960 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom959
  %arrayidx961 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx960, i32 0, i64 6
  %590 = load i32, i32* %arrayidx961, align 4
  %sub962 = sub nsw i32 %shr958, %590
  %arrayidx963 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  store i32 %sub962, i32* %arrayidx963, align 4
  %591 = load i32, i32* %i, align 4
  %idxprom964 = sext i32 %591 to i64
  %arrayidx965 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom964
  %arrayidx966 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx965, i32 0, i64 2
  %592 = load i32, i32* %arrayidx966, align 4
  %593 = load i32, i32* %i, align 4
  %idxprom967 = sext i32 %593 to i64
  %arrayidx968 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom967
  %arrayidx969 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx968, i32 0, i64 6
  %594 = load i32, i32* %arrayidx969, align 4
  %shr970 = ashr i32 %594, 1
  %add971 = add nsw i32 %592, %shr970
  %arrayidx972 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  store i32 %add971, i32* %arrayidx972, align 4
  %arrayidx973 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %595 = load i32, i32* %arrayidx973, align 4
  %arrayidx974 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %596 = load i32, i32* %arrayidx974, align 4
  %add975 = add nsw i32 %595, %596
  %arrayidx976 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  store i32 %add975, i32* %arrayidx976, align 4
  %arrayidx977 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %597 = load i32, i32* %arrayidx977, align 4
  %arrayidx978 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %598 = load i32, i32* %arrayidx978, align 4
  %add979 = add nsw i32 %597, %598
  %arrayidx980 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  store i32 %add979, i32* %arrayidx980, align 4
  %arrayidx981 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 4
  %599 = load i32, i32* %arrayidx981, align 4
  %arrayidx982 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 2
  %600 = load i32, i32* %arrayidx982, align 4
  %sub983 = sub nsw i32 %599, %600
  %arrayidx984 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  store i32 %sub983, i32* %arrayidx984, align 4
  %arrayidx985 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 0
  %601 = load i32, i32* %arrayidx985, align 4
  %arrayidx986 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 6
  %602 = load i32, i32* %arrayidx986, align 4
  %sub987 = sub nsw i32 %601, %602
  %arrayidx988 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  store i32 %sub987, i32* %arrayidx988, align 4
  %603 = load i32, i32* %i, align 4
  %idxprom989 = sext i32 %603 to i64
  %arrayidx990 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom989
  %arrayidx991 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx990, i32 0, i64 3
  %604 = load i32, i32* %arrayidx991, align 4
  %sub992 = sub nsw i32 0, %604
  %605 = load i32, i32* %i, align 4
  %idxprom993 = sext i32 %605 to i64
  %arrayidx994 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom993
  %arrayidx995 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx994, i32 0, i64 5
  %606 = load i32, i32* %arrayidx995, align 4
  %add996 = add nsw i32 %sub992, %606
  %607 = load i32, i32* %i, align 4
  %idxprom997 = sext i32 %607 to i64
  %arrayidx998 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom997
  %arrayidx999 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx998, i32 0, i64 7
  %608 = load i32, i32* %arrayidx999, align 4
  %sub1000 = sub nsw i32 %add996, %608
  %609 = load i32, i32* %i, align 4
  %idxprom1001 = sext i32 %609 to i64
  %arrayidx1002 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1001
  %arrayidx1003 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1002, i32 0, i64 7
  %610 = load i32, i32* %arrayidx1003, align 4
  %shr1004 = ashr i32 %610, 1
  %sub1005 = sub nsw i32 %sub1000, %shr1004
  %arrayidx1006 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  store i32 %sub1005, i32* %arrayidx1006, align 4
  %611 = load i32, i32* %i, align 4
  %idxprom1007 = sext i32 %611 to i64
  %arrayidx1008 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1007
  %arrayidx1009 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1008, i32 0, i64 1
  %612 = load i32, i32* %arrayidx1009, align 4
  %613 = load i32, i32* %i, align 4
  %idxprom1010 = sext i32 %613 to i64
  %arrayidx1011 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1010
  %arrayidx1012 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1011, i32 0, i64 7
  %614 = load i32, i32* %arrayidx1012, align 4
  %add1013 = add nsw i32 %612, %614
  %615 = load i32, i32* %i, align 4
  %idxprom1014 = sext i32 %615 to i64
  %arrayidx1015 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1014
  %arrayidx1016 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1015, i32 0, i64 3
  %616 = load i32, i32* %arrayidx1016, align 4
  %sub1017 = sub nsw i32 %add1013, %616
  %617 = load i32, i32* %i, align 4
  %idxprom1018 = sext i32 %617 to i64
  %arrayidx1019 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1018
  %arrayidx1020 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1019, i32 0, i64 3
  %618 = load i32, i32* %arrayidx1020, align 4
  %shr1021 = ashr i32 %618, 1
  %sub1022 = sub nsw i32 %sub1017, %shr1021
  %arrayidx1023 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  store i32 %sub1022, i32* %arrayidx1023, align 4
  %619 = load i32, i32* %i, align 4
  %idxprom1024 = sext i32 %619 to i64
  %arrayidx1025 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1024
  %arrayidx1026 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1025, i32 0, i64 1
  %620 = load i32, i32* %arrayidx1026, align 4
  %sub1027 = sub nsw i32 0, %620
  %621 = load i32, i32* %i, align 4
  %idxprom1028 = sext i32 %621 to i64
  %arrayidx1029 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1028
  %arrayidx1030 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1029, i32 0, i64 7
  %622 = load i32, i32* %arrayidx1030, align 4
  %add1031 = add nsw i32 %sub1027, %622
  %623 = load i32, i32* %i, align 4
  %idxprom1032 = sext i32 %623 to i64
  %arrayidx1033 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1032
  %arrayidx1034 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1033, i32 0, i64 5
  %624 = load i32, i32* %arrayidx1034, align 4
  %add1035 = add nsw i32 %add1031, %624
  %625 = load i32, i32* %i, align 4
  %idxprom1036 = sext i32 %625 to i64
  %arrayidx1037 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1036
  %arrayidx1038 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1037, i32 0, i64 5
  %626 = load i32, i32* %arrayidx1038, align 4
  %shr1039 = ashr i32 %626, 1
  %add1040 = add nsw i32 %add1035, %shr1039
  %arrayidx1041 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  store i32 %add1040, i32* %arrayidx1041, align 4
  %627 = load i32, i32* %i, align 4
  %idxprom1042 = sext i32 %627 to i64
  %arrayidx1043 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1042
  %arrayidx1044 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1043, i32 0, i64 3
  %628 = load i32, i32* %arrayidx1044, align 4
  %629 = load i32, i32* %i, align 4
  %idxprom1045 = sext i32 %629 to i64
  %arrayidx1046 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1045
  %arrayidx1047 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1046, i32 0, i64 5
  %630 = load i32, i32* %arrayidx1047, align 4
  %add1048 = add nsw i32 %628, %630
  %631 = load i32, i32* %i, align 4
  %idxprom1049 = sext i32 %631 to i64
  %arrayidx1050 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1049
  %arrayidx1051 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1050, i32 0, i64 1
  %632 = load i32, i32* %arrayidx1051, align 4
  %add1052 = add nsw i32 %add1048, %632
  %633 = load i32, i32* %i, align 4
  %idxprom1053 = sext i32 %633 to i64
  %arrayidx1054 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %m6, i32 0, i64 %idxprom1053
  %arrayidx1055 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx1054, i32 0, i64 1
  %634 = load i32, i32* %arrayidx1055, align 4
  %shr1056 = ashr i32 %634, 1
  %add1057 = add nsw i32 %add1052, %shr1056
  %arrayidx1058 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  store i32 %add1057, i32* %arrayidx1058, align 4
  %arrayidx1059 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %635 = load i32, i32* %arrayidx1059, align 4
  %arrayidx1060 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %636 = load i32, i32* %arrayidx1060, align 4
  %shr1061 = ashr i32 %636, 2
  %add1062 = add nsw i32 %635, %shr1061
  %arrayidx1063 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  store i32 %add1062, i32* %arrayidx1063, align 4
  %arrayidx1064 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 1
  %637 = load i32, i32* %arrayidx1064, align 4
  %shr1065 = ashr i32 %637, 2
  %sub1066 = sub nsw i32 0, %shr1065
  %arrayidx1067 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 7
  %638 = load i32, i32* %arrayidx1067, align 4
  %add1068 = add nsw i32 %sub1066, %638
  %arrayidx1069 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  store i32 %add1068, i32* %arrayidx1069, align 4
  %arrayidx1070 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %639 = load i32, i32* %arrayidx1070, align 4
  %arrayidx1071 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %640 = load i32, i32* %arrayidx1071, align 4
  %shr1072 = ashr i32 %640, 2
  %add1073 = add nsw i32 %639, %shr1072
  %arrayidx1074 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  store i32 %add1073, i32* %arrayidx1074, align 4
  %arrayidx1075 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 3
  %641 = load i32, i32* %arrayidx1075, align 4
  %shr1076 = ashr i32 %641, 2
  %arrayidx1077 = getelementptr inbounds [8 x i32], [8 x i32]* %a, i32 0, i64 5
  %642 = load i32, i32* %arrayidx1077, align 4
  %sub1078 = sub nsw i32 %shr1076, %642
  %arrayidx1079 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  store i32 %sub1078, i32* %arrayidx1079, align 4
  %arrayidx1080 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %643 = load i32, i32* %arrayidx1080, align 4
  %arrayidx1081 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %644 = load i32, i32* %arrayidx1081, align 4
  %add1082 = add nsw i32 %643, %644
  %645 = load i32, i32* %i, align 4
  %idxprom1083 = sext i32 %645 to i64
  %646 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71084 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %646, i32 0, i32 52
  %arrayidx1085 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71084, i32 0, i64 0
  %arrayidx1086 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1085, i32 0, i64 %idxprom1083
  store i32 %add1082, i32* %arrayidx1086, align 4
  %arrayidx1087 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %647 = load i32, i32* %arrayidx1087, align 4
  %arrayidx1088 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %648 = load i32, i32* %arrayidx1088, align 4
  %add1089 = add nsw i32 %647, %648
  %649 = load i32, i32* %i, align 4
  %idxprom1090 = sext i32 %649 to i64
  %650 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71091 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %650, i32 0, i32 52
  %arrayidx1092 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71091, i32 0, i64 1
  %arrayidx1093 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1092, i32 0, i64 %idxprom1090
  store i32 %add1089, i32* %arrayidx1093, align 4
  %arrayidx1094 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %651 = load i32, i32* %arrayidx1094, align 4
  %arrayidx1095 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %652 = load i32, i32* %arrayidx1095, align 4
  %add1096 = add nsw i32 %651, %652
  %653 = load i32, i32* %i, align 4
  %idxprom1097 = sext i32 %653 to i64
  %654 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71098 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %654, i32 0, i32 52
  %arrayidx1099 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71098, i32 0, i64 2
  %arrayidx1100 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1099, i32 0, i64 %idxprom1097
  store i32 %add1096, i32* %arrayidx1100, align 4
  %arrayidx1101 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %655 = load i32, i32* %arrayidx1101, align 4
  %arrayidx1102 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %656 = load i32, i32* %arrayidx1102, align 4
  %add1103 = add nsw i32 %655, %656
  %657 = load i32, i32* %i, align 4
  %idxprom1104 = sext i32 %657 to i64
  %658 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71105 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %658, i32 0, i32 52
  %arrayidx1106 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71105, i32 0, i64 3
  %arrayidx1107 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1106, i32 0, i64 %idxprom1104
  store i32 %add1103, i32* %arrayidx1107, align 4
  %arrayidx1108 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 6
  %659 = load i32, i32* %arrayidx1108, align 4
  %arrayidx1109 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 1
  %660 = load i32, i32* %arrayidx1109, align 4
  %sub1110 = sub nsw i32 %659, %660
  %661 = load i32, i32* %i, align 4
  %idxprom1111 = sext i32 %661 to i64
  %662 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71112 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %662, i32 0, i32 52
  %arrayidx1113 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71112, i32 0, i64 4
  %arrayidx1114 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1113, i32 0, i64 %idxprom1111
  store i32 %sub1110, i32* %arrayidx1114, align 4
  %arrayidx1115 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 4
  %663 = load i32, i32* %arrayidx1115, align 4
  %arrayidx1116 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 3
  %664 = load i32, i32* %arrayidx1116, align 4
  %sub1117 = sub nsw i32 %663, %664
  %665 = load i32, i32* %i, align 4
  %idxprom1118 = sext i32 %665 to i64
  %666 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71119 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %666, i32 0, i32 52
  %arrayidx1120 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71119, i32 0, i64 5
  %arrayidx1121 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1120, i32 0, i64 %idxprom1118
  store i32 %sub1117, i32* %arrayidx1121, align 4
  %arrayidx1122 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 2
  %667 = load i32, i32* %arrayidx1122, align 4
  %arrayidx1123 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 5
  %668 = load i32, i32* %arrayidx1123, align 4
  %sub1124 = sub nsw i32 %667, %668
  %669 = load i32, i32* %i, align 4
  %idxprom1125 = sext i32 %669 to i64
  %670 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71126 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %670, i32 0, i32 52
  %arrayidx1127 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71126, i32 0, i64 6
  %arrayidx1128 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1127, i32 0, i64 %idxprom1125
  store i32 %sub1124, i32* %arrayidx1128, align 4
  %arrayidx1129 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 0
  %671 = load i32, i32* %arrayidx1129, align 4
  %arrayidx1130 = getelementptr inbounds [8 x i32], [8 x i32]* %b, i32 0, i64 7
  %672 = load i32, i32* %arrayidx1130, align 4
  %sub1131 = sub nsw i32 %671, %672
  %673 = load i32, i32* %i, align 4
  %idxprom1132 = sext i32 %673 to i64
  %674 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71133 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %674, i32 0, i32 52
  %arrayidx1134 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71133, i32 0, i64 7
  %arrayidx1135 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1134, i32 0, i64 %idxprom1132
  store i32 %sub1131, i32* %arrayidx1135, align 4
  br label %for.inc.1136

for.inc.1136:                                     ; preds = %for.body.938
  %675 = load i32, i32* %i, align 4
  %inc1137 = add nsw i32 %675, 1
  store i32 %inc1137, i32* %i, align 4
  br label %for.cond.935

for.end.1138:                                     ; preds = %for.cond.935
  store i32 0, i32* %j, align 4
  br label %for.cond.1139

for.cond.1139:                                    ; preds = %for.inc.1187, %for.end.1138
  %676 = load i32, i32* %j, align 4
  %cmp1140 = icmp slt i32 %676, 8
  br i1 %cmp1140, label %for.body.1142, label %for.end.1189

for.body.1142:                                    ; preds = %for.cond.1139
  %677 = load i32, i32* %block_y, align 4
  %678 = load i32, i32* %j, align 4
  %add1143 = add nsw i32 %677, %678
  store i32 %add1143, i32* %pix_y, align 4
  %679 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y1144 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %679, i32 0, i32 40
  %680 = load i32, i32* %pix_y1144, align 4
  %681 = load i32, i32* %pix_y, align 4
  %add1145 = add nsw i32 %680, %681
  store i32 %add1145, i32* %ipix_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1146

for.cond.1146:                                    ; preds = %for.inc.1184, %for.body.1142
  %682 = load i32, i32* %i, align 4
  %cmp1147 = icmp slt i32 %682, 8
  br i1 %cmp1147, label %for.body.1149, label %for.end.1186

for.body.1149:                                    ; preds = %for.cond.1146
  %683 = load i32, i32* %block_x, align 4
  %684 = load i32, i32* %i, align 4
  %add1150 = add nsw i32 %683, %684
  store i32 %add1150, i32* %pix_x, align 4
  %685 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %max_imgpel_value = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %685, i32 0, i32 156
  %686 = load i32, i32* %max_imgpel_value, align 4
  %687 = load i32, i32* %i, align 4
  %idxprom1151 = sext i32 %687 to i64
  %688 = load i32, i32* %j, align 4
  %idxprom1152 = sext i32 %688 to i64
  %689 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71153 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %689, i32 0, i32 52
  %arrayidx1154 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71153, i32 0, i64 %idxprom1152
  %arrayidx1155 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1154, i32 0, i64 %idxprom1151
  %690 = load i32, i32* %arrayidx1155, align 4
  %conv1156 = sext i32 %690 to i64
  %691 = load i32, i32* %pix_x, align 4
  %idxprom1157 = sext i32 %691 to i64
  %692 = load i32, i32* %pix_y, align 4
  %idxprom1158 = sext i32 %692 to i64
  %693 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %693, i32 0, i32 51
  %arrayidx1159 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr, i32 0, i64 %idxprom1158
  %arrayidx1160 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1159, i32 0, i64 %idxprom1157
  %694 = load i16, i16* %arrayidx1160, align 2
  %conv1161 = zext i16 %694 to i64
  %shl1162 = shl i64 %conv1161, 6
  %add1163 = add nsw i64 %conv1156, %shl1162
  %conv1164 = trunc i64 %add1163 to i32
  %call1165 = call i32 @rshift_rnd_sf(i32 %conv1164, i32 6)
  %call1166 = call i32 @iClip1(i32 %686, i32 %call1165)
  %695 = load i32, i32* %i, align 4
  %idxprom1167 = sext i32 %695 to i64
  %696 = load i32, i32* %j, align 4
  %idxprom1168 = sext i32 %696 to i64
  %697 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71169 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %697, i32 0, i32 52
  %arrayidx1170 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71169, i32 0, i64 %idxprom1168
  %arrayidx1171 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1170, i32 0, i64 %idxprom1167
  store i32 %call1166, i32* %arrayidx1171, align 4
  %698 = load i32, i32* %i, align 4
  %idxprom1172 = sext i32 %698 to i64
  %699 = load i32, i32* %j, align 4
  %idxprom1173 = sext i32 %699 to i64
  %700 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71174 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %700, i32 0, i32 52
  %arrayidx1175 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71174, i32 0, i64 %idxprom1173
  %arrayidx1176 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1175, i32 0, i64 %idxprom1172
  %701 = load i32, i32* %arrayidx1176, align 4
  %conv1177 = trunc i32 %701 to i16
  %702 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x1178 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %702, i32 0, i32 39
  %703 = load i32, i32* %pix_x1178, align 4
  %704 = load i32, i32* %pix_x, align 4
  %add1179 = add nsw i32 %703, %704
  %idxprom1180 = sext i32 %add1179 to i64
  %705 = load i32, i32* %ipix_y, align 4
  %idxprom1181 = sext i32 %705 to i64
  %706 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %706, i32 0, i32 29
  %707 = load i16**, i16*** %imgY, align 8
  %arrayidx1182 = getelementptr inbounds i16*, i16** %707, i64 %idxprom1181
  %708 = load i16*, i16** %arrayidx1182, align 8
  %arrayidx1183 = getelementptr inbounds i16, i16* %708, i64 %idxprom1180
  store i16 %conv1177, i16* %arrayidx1183, align 2
  br label %for.inc.1184

for.inc.1184:                                     ; preds = %for.body.1149
  %709 = load i32, i32* %i, align 4
  %inc1185 = add nsw i32 %709, 1
  store i32 %inc1185, i32* %i, align 4
  br label %for.cond.1146

for.end.1186:                                     ; preds = %for.cond.1146
  br label %for.inc.1187

for.inc.1187:                                     ; preds = %for.end.1186
  %710 = load i32, i32* %j, align 4
  %inc1188 = add nsw i32 %710, 1
  store i32 %inc1188, i32* %j, align 4
  br label %for.cond.1139

for.end.1189:                                     ; preds = %for.cond.1139
  br label %if.end.1240

if.else.1190:                                     ; preds = %if.end.712
  store i32 0, i32* %j, align 4
  br label %for.cond.1191

for.cond.1191:                                    ; preds = %for.inc.1237, %if.else.1190
  %711 = load i32, i32* %j, align 4
  %cmp1192 = icmp slt i32 %711, 8
  br i1 %cmp1192, label %for.body.1194, label %for.end.1239

for.body.1194:                                    ; preds = %for.cond.1191
  %712 = load i32, i32* %block_y, align 4
  %713 = load i32, i32* %j, align 4
  %add1195 = add nsw i32 %712, %713
  store i32 %add1195, i32* %pix_y, align 4
  %714 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_y1196 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %714, i32 0, i32 40
  %715 = load i32, i32* %pix_y1196, align 4
  %716 = load i32, i32* %pix_y, align 4
  %add1197 = add nsw i32 %715, %716
  store i32 %add1197, i32* %ipix_y, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1198

for.cond.1198:                                    ; preds = %for.inc.1234, %for.body.1194
  %717 = load i32, i32* %i, align 4
  %cmp1199 = icmp slt i32 %717, 8
  br i1 %cmp1199, label %for.body.1201, label %for.end.1236

for.body.1201:                                    ; preds = %for.cond.1198
  %718 = load i32, i32* %block_x, align 4
  %719 = load i32, i32* %i, align 4
  %add1202 = add nsw i32 %718, %719
  store i32 %add1202, i32* %pix_x, align 4
  %720 = load i32, i32* %i, align 4
  %idxprom1203 = sext i32 %720 to i64
  %721 = load i32, i32* %j, align 4
  %idxprom1204 = sext i32 %721 to i64
  %722 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71205 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %722, i32 0, i32 52
  %arrayidx1206 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71205, i32 0, i64 %idxprom1204
  %arrayidx1207 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1206, i32 0, i64 %idxprom1203
  %723 = load i32, i32* %arrayidx1207, align 4
  %724 = load i32, i32* %block_x, align 4
  %725 = load i32, i32* %i, align 4
  %add1208 = add nsw i32 %724, %725
  %idxprom1209 = sext i32 %add1208 to i64
  %726 = load i32, i32* %pix_y, align 4
  %idxprom1210 = sext i32 %726 to i64
  %727 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %mpr1211 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %727, i32 0, i32 51
  %arrayidx1212 = getelementptr inbounds [16 x [16 x i16]], [16 x [16 x i16]]* %mpr1211, i32 0, i64 %idxprom1210
  %arrayidx1213 = getelementptr inbounds [16 x i16], [16 x i16]* %arrayidx1212, i32 0, i64 %idxprom1209
  %728 = load i16, i16* %arrayidx1213, align 2
  %conv1214 = zext i16 %728 to i32
  %add1215 = add nsw i32 %723, %conv1214
  %729 = load i32, i32* %i, align 4
  %idxprom1216 = sext i32 %729 to i64
  %730 = load i32, i32* %j, align 4
  %idxprom1217 = sext i32 %730 to i64
  %731 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71218 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %731, i32 0, i32 52
  %arrayidx1219 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71218, i32 0, i64 %idxprom1217
  %arrayidx1220 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1219, i32 0, i64 %idxprom1216
  store i32 %add1215, i32* %arrayidx1220, align 4
  %732 = load i32, i32* %i, align 4
  %idxprom1221 = sext i32 %732 to i64
  %733 = load i32, i32* %j, align 4
  %idxprom1222 = sext i32 %733 to i64
  %734 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %m71223 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %734, i32 0, i32 52
  %arrayidx1224 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]]* %m71223, i32 0, i64 %idxprom1222
  %arrayidx1225 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx1224, i32 0, i64 %idxprom1221
  %735 = load i32, i32* %arrayidx1225, align 4
  %conv1226 = trunc i32 %735 to i16
  %736 = load %struct.ImageParameters*, %struct.ImageParameters** @img, align 8
  %pix_x1227 = getelementptr inbounds %struct.ImageParameters, %struct.ImageParameters* %736, i32 0, i32 39
  %737 = load i32, i32* %pix_x1227, align 4
  %738 = load i32, i32* %pix_x, align 4
  %add1228 = add nsw i32 %737, %738
  %idxprom1229 = sext i32 %add1228 to i64
  %739 = load i32, i32* %ipix_y, align 4
  %idxprom1230 = sext i32 %739 to i64
  %740 = load %struct.storable_picture*, %struct.storable_picture** @enc_picture, align 8
  %imgY1231 = getelementptr inbounds %struct.storable_picture, %struct.storable_picture* %740, i32 0, i32 29
  %741 = load i16**, i16*** %imgY1231, align 8
  %arrayidx1232 = getelementptr inbounds i16*, i16** %741, i64 %idxprom1230
  %742 = load i16*, i16** %arrayidx1232, align 8
  %arrayidx1233 = getelementptr inbounds i16, i16* %742, i64 %idxprom1229
  store i16 %conv1226, i16* %arrayidx1233, align 2
  br label %for.inc.1234

for.inc.1234:                                     ; preds = %for.body.1201
  %743 = load i32, i32* %i, align 4
  %inc1235 = add nsw i32 %743, 1
  store i32 %inc1235, i32* %i, align 4
  br label %for.cond.1198

for.end.1236:                                     ; preds = %for.cond.1198
  br label %for.inc.1237

for.inc.1237:                                     ; preds = %for.end.1236
  %744 = load i32, i32* %j, align 4
  %inc1238 = add nsw i32 %744, 1
  store i32 %inc1238, i32* %j, align 4
  br label %for.cond.1191

for.end.1239:                                     ; preds = %for.cond.1191
  br label %if.end.1240

if.end.1240:                                      ; preds = %for.end.1239, %for.end.1189
  %745 = load i32, i32* %nonzero, align 4
  ret i32 %745
}

; Function Attrs: nounwind uwtable
define void @LowPassForIntra8x8Pred(i16* %PredPel, i32 %block_up_left, i32 %block_up, i32 %block_left) #0 {
entry:
  %PredPel.addr = alloca i16*, align 8
  %block_up_left.addr = alloca i32, align 4
  %block_up.addr = alloca i32, align 4
  %block_left.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %LoopArray = alloca [25 x i16], align 16
  store i16* %PredPel, i16** %PredPel.addr, align 8
  store i32 %block_up_left, i32* %block_up_left.addr, align 4
  store i32 %block_up, i32* %block_up.addr, align 4
  store i32 %block_left, i32* %block_left.addr, align 4
  %0 = bitcast [25 x i16]* %LoopArray to i8*
  %1 = load i16*, i16** %PredPel.addr, align 8
  %2 = bitcast i16* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %2, i64 50, i32 2, i1 false)
  %3 = load i32, i32* %block_up.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end.64

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %block_up_left.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  %arrayidx3 = getelementptr inbounds i16, i16* %arrayidx, i64 0
  %6 = load i16, i16* %arrayidx3, align 2
  %conv = zext i16 %6 to i32
  %7 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 0
  %arrayidx5 = getelementptr inbounds i16, i16* %arrayidx4, i64 1
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %8 to i32
  %shl = shl i32 %conv6, 1
  %add = add nsw i32 %conv, %shl
  %9 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %9, i64 0
  %arrayidx8 = getelementptr inbounds i16, i16* %arrayidx7, i64 2
  %10 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %10 to i32
  %add10 = add nsw i32 %add, %conv9
  %add11 = add nsw i32 %add10, 2
  %shr = ashr i32 %add11, 2
  %conv12 = trunc i32 %shr to i16
  %arrayidx13 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 1
  store i16 %conv12, i16* %arrayidx13, align 2
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %11, i64 0
  %arrayidx15 = getelementptr inbounds i16, i16* %arrayidx14, i64 1
  %12 = load i16, i16* %arrayidx15, align 2
  %conv16 = zext i16 %12 to i32
  %13 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %13, i64 0
  %arrayidx18 = getelementptr inbounds i16, i16* %arrayidx17, i64 1
  %14 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %14 to i32
  %shl20 = shl i32 %conv19, 1
  %add21 = add nsw i32 %conv16, %shl20
  %15 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx22 = getelementptr inbounds i16, i16* %15, i64 0
  %arrayidx23 = getelementptr inbounds i16, i16* %arrayidx22, i64 2
  %16 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %16 to i32
  %add25 = add nsw i32 %add21, %conv24
  %add26 = add nsw i32 %add25, 2
  %shr27 = ashr i32 %add26, 2
  %conv28 = trunc i32 %shr27 to i16
  %arrayidx29 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 1
  store i16 %conv28, i16* %arrayidx29, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %17, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %18, 1
  %idxprom = sext i32 %sub to i64
  %19 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %19, i64 0
  %arrayidx32 = getelementptr inbounds i16, i16* %arrayidx31, i64 %idxprom
  %20 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %20 to i32
  %21 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %21 to i64
  %22 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %22, i64 0
  %arrayidx36 = getelementptr inbounds i16, i16* %arrayidx35, i64 %idxprom34
  %23 = load i16, i16* %arrayidx36, align 2
  %conv37 = zext i16 %23 to i32
  %shl38 = shl i32 %conv37, 1
  %add39 = add nsw i32 %conv33, %shl38
  %24 = load i32, i32* %i, align 4
  %add40 = add nsw i32 %24, 1
  %idxprom41 = sext i32 %add40 to i64
  %25 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %25, i64 0
  %arrayidx43 = getelementptr inbounds i16, i16* %arrayidx42, i64 %idxprom41
  %26 = load i16, i16* %arrayidx43, align 2
  %conv44 = zext i16 %26 to i32
  %add45 = add nsw i32 %add39, %conv44
  %add46 = add nsw i32 %add45, 2
  %shr47 = ashr i32 %add46, 2
  %conv48 = trunc i32 %shr47 to i16
  %27 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %27 to i64
  %arrayidx50 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 %idxprom49
  store i16 %conv48, i16* %arrayidx50, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %29, i64 16
  %30 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %30 to i32
  %31 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %31, i64 16
  %32 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %32 to i32
  %shl55 = shl i32 %conv54, 1
  %add56 = add nsw i32 %conv52, %shl55
  %33 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %33, i64 15
  %34 = load i16, i16* %arrayidx57, align 2
  %conv58 = zext i16 %34 to i32
  %add59 = add nsw i32 %add56, %conv58
  %add60 = add nsw i32 %add59, 2
  %shr61 = ashr i32 %add60, 2
  %conv62 = trunc i32 %shr61 to i16
  %arrayidx63 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 16
  store i16 %conv62, i16* %arrayidx63, align 2
  br label %if.end.64

if.end.64:                                        ; preds = %for.end, %entry
  %35 = load i32, i32* %block_up_left.addr, align 4
  %tobool65 = icmp ne i32 %35, 0
  br i1 %tobool65, label %if.then.66, label %if.end.118

if.then.66:                                       ; preds = %if.end.64
  %36 = load i32, i32* %block_up.addr, align 4
  %tobool67 = icmp ne i32 %36, 0
  br i1 %tobool67, label %land.lhs.true, label %if.else.83

land.lhs.true:                                    ; preds = %if.then.66
  %37 = load i32, i32* %block_left.addr, align 4
  %tobool68 = icmp ne i32 %37, 0
  br i1 %tobool68, label %if.then.69, label %if.else.83

if.then.69:                                       ; preds = %land.lhs.true
  %38 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %38, i64 17
  %39 = load i16, i16* %arrayidx70, align 2
  %conv71 = zext i16 %39 to i32
  %40 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %40, i64 0
  %41 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %41 to i32
  %shl74 = shl i32 %conv73, 1
  %add75 = add nsw i32 %conv71, %shl74
  %42 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx76 = getelementptr inbounds i16, i16* %42, i64 1
  %43 = load i16, i16* %arrayidx76, align 2
  %conv77 = zext i16 %43 to i32
  %add78 = add nsw i32 %add75, %conv77
  %add79 = add nsw i32 %add78, 2
  %shr80 = ashr i32 %add79, 2
  %conv81 = trunc i32 %shr80 to i16
  %arrayidx82 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 0
  store i16 %conv81, i16* %arrayidx82, align 2
  br label %if.end.117

if.else.83:                                       ; preds = %land.lhs.true, %if.then.66
  %44 = load i32, i32* %block_up.addr, align 4
  %tobool84 = icmp ne i32 %44, 0
  br i1 %tobool84, label %if.then.85, label %if.else.99

if.then.85:                                       ; preds = %if.else.83
  %45 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %45, i64 0
  %46 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %46 to i32
  %47 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx88 = getelementptr inbounds i16, i16* %47, i64 0
  %48 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %48 to i32
  %shl90 = shl i32 %conv89, 1
  %add91 = add nsw i32 %conv87, %shl90
  %49 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx92 = getelementptr inbounds i16, i16* %49, i64 1
  %50 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %50 to i32
  %add94 = add nsw i32 %add91, %conv93
  %add95 = add nsw i32 %add94, 2
  %shr96 = ashr i32 %add95, 2
  %conv97 = trunc i32 %shr96 to i16
  %arrayidx98 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 0
  store i16 %conv97, i16* %arrayidx98, align 2
  br label %if.end.116

if.else.99:                                       ; preds = %if.else.83
  %51 = load i32, i32* %block_left.addr, align 4
  %tobool100 = icmp ne i32 %51, 0
  br i1 %tobool100, label %if.then.101, label %if.end.115

if.then.101:                                      ; preds = %if.else.99
  %52 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx102 = getelementptr inbounds i16, i16* %52, i64 0
  %53 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %53 to i32
  %54 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %54, i64 0
  %55 = load i16, i16* %arrayidx104, align 2
  %conv105 = zext i16 %55 to i32
  %shl106 = shl i32 %conv105, 1
  %add107 = add nsw i32 %conv103, %shl106
  %56 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %56, i64 17
  %57 = load i16, i16* %arrayidx108, align 2
  %conv109 = zext i16 %57 to i32
  %add110 = add nsw i32 %add107, %conv109
  %add111 = add nsw i32 %add110, 2
  %shr112 = ashr i32 %add111, 2
  %conv113 = trunc i32 %shr112 to i16
  %arrayidx114 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 0
  store i16 %conv113, i16* %arrayidx114, align 2
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.101, %if.else.99
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.then.85
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.69
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.end.64
  %58 = load i32, i32* %block_left.addr, align 4
  %tobool119 = icmp ne i32 %58, 0
  br i1 %tobool119, label %if.then.120, label %if.end.193

if.then.120:                                      ; preds = %if.end.118
  %59 = load i32, i32* %block_up_left.addr, align 4
  %tobool121 = icmp ne i32 %59, 0
  br i1 %tobool121, label %if.then.122, label %if.else.136

if.then.122:                                      ; preds = %if.then.120
  %60 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx123 = getelementptr inbounds i16, i16* %60, i64 0
  %61 = load i16, i16* %arrayidx123, align 2
  %conv124 = zext i16 %61 to i32
  %62 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %62, i64 17
  %63 = load i16, i16* %arrayidx125, align 2
  %conv126 = zext i16 %63 to i32
  %shl127 = shl i32 %conv126, 1
  %add128 = add nsw i32 %conv124, %shl127
  %64 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx129 = getelementptr inbounds i16, i16* %64, i64 18
  %65 = load i16, i16* %arrayidx129, align 2
  %conv130 = zext i16 %65 to i32
  %add131 = add nsw i32 %add128, %conv130
  %add132 = add nsw i32 %add131, 2
  %shr133 = ashr i32 %add132, 2
  %conv134 = trunc i32 %shr133 to i16
  %arrayidx135 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 17
  store i16 %conv134, i16* %arrayidx135, align 2
  br label %if.end.150

if.else.136:                                      ; preds = %if.then.120
  %66 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %66, i64 17
  %67 = load i16, i16* %arrayidx137, align 2
  %conv138 = zext i16 %67 to i32
  %68 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx139 = getelementptr inbounds i16, i16* %68, i64 17
  %69 = load i16, i16* %arrayidx139, align 2
  %conv140 = zext i16 %69 to i32
  %shl141 = shl i32 %conv140, 1
  %add142 = add nsw i32 %conv138, %shl141
  %70 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %70, i64 18
  %71 = load i16, i16* %arrayidx143, align 2
  %conv144 = zext i16 %71 to i32
  %add145 = add nsw i32 %add142, %conv144
  %add146 = add nsw i32 %add145, 2
  %shr147 = ashr i32 %add146, 2
  %conv148 = trunc i32 %shr147 to i16
  %arrayidx149 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 17
  store i16 %conv148, i16* %arrayidx149, align 2
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.136, %if.then.122
  store i32 18, i32* %i, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.177, %if.end.150
  %72 = load i32, i32* %i, align 4
  %cmp152 = icmp slt i32 %72, 24
  br i1 %cmp152, label %for.body.154, label %for.end.179

for.body.154:                                     ; preds = %for.cond.151
  %73 = load i32, i32* %i, align 4
  %sub155 = sub nsw i32 %73, 1
  %idxprom156 = sext i32 %sub155 to i64
  %74 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %74, i64 0
  %arrayidx158 = getelementptr inbounds i16, i16* %arrayidx157, i64 %idxprom156
  %75 = load i16, i16* %arrayidx158, align 2
  %conv159 = zext i16 %75 to i32
  %76 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %76 to i64
  %77 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %77, i64 0
  %arrayidx162 = getelementptr inbounds i16, i16* %arrayidx161, i64 %idxprom160
  %78 = load i16, i16* %arrayidx162, align 2
  %conv163 = zext i16 %78 to i32
  %shl164 = shl i32 %conv163, 1
  %add165 = add nsw i32 %conv159, %shl164
  %79 = load i32, i32* %i, align 4
  %add166 = add nsw i32 %79, 1
  %idxprom167 = sext i32 %add166 to i64
  %80 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %80, i64 0
  %arrayidx169 = getelementptr inbounds i16, i16* %arrayidx168, i64 %idxprom167
  %81 = load i16, i16* %arrayidx169, align 2
  %conv170 = zext i16 %81 to i32
  %add171 = add nsw i32 %add165, %conv170
  %add172 = add nsw i32 %add171, 2
  %shr173 = ashr i32 %add172, 2
  %conv174 = trunc i32 %shr173 to i16
  %82 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %82 to i64
  %arrayidx176 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 %idxprom175
  store i16 %conv174, i16* %arrayidx176, align 2
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.body.154
  %83 = load i32, i32* %i, align 4
  %inc178 = add nsw i32 %83, 1
  store i32 %inc178, i32* %i, align 4
  br label %for.cond.151

for.end.179:                                      ; preds = %for.cond.151
  %84 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx180 = getelementptr inbounds i16, i16* %84, i64 23
  %85 = load i16, i16* %arrayidx180, align 2
  %conv181 = zext i16 %85 to i32
  %86 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx182 = getelementptr inbounds i16, i16* %86, i64 24
  %87 = load i16, i16* %arrayidx182, align 2
  %conv183 = zext i16 %87 to i32
  %shl184 = shl i32 %conv183, 1
  %add185 = add nsw i32 %conv181, %shl184
  %88 = load i16*, i16** %PredPel.addr, align 8
  %arrayidx186 = getelementptr inbounds i16, i16* %88, i64 24
  %89 = load i16, i16* %arrayidx186, align 2
  %conv187 = zext i16 %89 to i32
  %add188 = add nsw i32 %add185, %conv187
  %add189 = add nsw i32 %add188, 2
  %shr190 = ashr i32 %add189, 2
  %conv191 = trunc i32 %shr190 to i16
  %arrayidx192 = getelementptr inbounds [25 x i16], [25 x i16]* %LoopArray, i32 0, i64 24
  store i16 %conv191, i16* %arrayidx192, align 2
  br label %if.end.193

if.end.193:                                       ; preds = %for.end.179, %if.end.118
  %90 = load i16*, i16** %PredPel.addr, align 8
  %91 = bitcast i16* %90 to i8*
  %92 = bitcast [25 x i16]* %LoopArray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 50, i32 2, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rshift_rnd_sf(i32 %x, i32 %a) #4 {
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

declare i32 @writeCoeff4x4_CAVLC(i32, i32, i32, i32) #2

declare i32 @writeLumaCoeff8x8_CABAC(i32, i32) #2

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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @isignab(i32 %a, i32 %b) #4 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @iClip1(i32 %high, i32 %x) #4 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @imax(i32 %a, i32 %b) #4 {
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
