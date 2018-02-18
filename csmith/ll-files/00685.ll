; ModuleID = '00685.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i16 }
%struct.S0 = type { i24, i32, i24, i32, i32, i24 }
%union.U2 = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_10 = internal global [4 x [6 x [2 x i16]]] [[6 x [2 x i16]] [[2 x i16] [i16 -5, i16 7871], [2 x i16] [i16 -2, i16 -2], [2 x i16] [i16 7871, i16 -5], [2 x i16] [i16 -12752, i16 -5], [2 x i16] [i16 7871, i16 -2], [2 x i16] [i16 -2, i16 7871]], [6 x [2 x i16]] [[2 x i16] [i16 -5, i16 -12752], [2 x i16] [i16 -5, i16 7871], [2 x i16] [i16 -2, i16 -2], [2 x i16] [i16 7871, i16 -5], [2 x i16] [i16 -12752, i16 -5], [2 x i16] [i16 7871, i16 -2]], [6 x [2 x i16]] [[2 x i16] [i16 -2, i16 7871], [2 x i16] [i16 -5, i16 -12752], [2 x i16] [i16 -5, i16 7871], [2 x i16] [i16 -2, i16 -2], [2 x i16] [i16 7871, i16 -5], [2 x i16] [i16 -12752, i16 -5]], [6 x [2 x i16]] [[2 x i16] [i16 7871, i16 -2], [2 x i16] [i16 -2, i16 7871], [2 x i16] [i16 -5, i16 -12752], [2 x i16] [i16 -5, i16 7871], [2 x i16] [i16 -2, i16 -2], [2 x i16] [i16 -12752, i16 7871]]], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"g_10[i][j][k]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_18 = internal global i8 0, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"g_18\00", align 1
@g_33 = internal global [8 x i64] [i64 8, i64 -133812873380526393, i64 8, i64 8, i64 -133812873380526393, i64 8, i64 8, i64 -133812873380526393], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"g_33[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_39 = internal global i16 2529, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_39\00", align 1
@g_40 = internal global i64 1, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_40\00", align 1
@g_42 = internal global i16 3, align 2
@.str.8 = private unnamed_addr constant [5 x i8] c"g_42\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_50.f0\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"g_50.f1\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"g_50.f2\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"g_50.f3\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"g_50.f4\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"g_50.f5\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"g_50.f6\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"g_50.f7\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"g_50.f8\00", align 1
@g_57 = internal global i32 -1858039013, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"g_57\00", align 1
@g_62 = internal global [3 x i8] c"\DE\DE\DE", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"g_62[i]\00", align 1
@g_80 = internal global i32 -524971963, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@g_81 = internal global [9 x [5 x i16]] [[5 x i16] [i16 -7977, i16 11395, i16 -8, i16 11395, i16 -7977], [5 x i16] [i16 4, i16 2, i16 5, i16 -7, i16 -7], [5 x i16] [i16 -8, i16 11395, i16 -8, i16 -3834, i16 -8], [5 x i16] [i16 4, i16 -7, i16 2, i16 2, i16 -7], [5 x i16] [i16 -7977, i16 -3834, i16 -8, i16 -3834, i16 -7977], [5 x i16] [i16 -7, i16 2, i16 2, i16 -7, i16 4], [5 x i16] [i16 -8, i16 -3834, i16 -8, i16 11395, i16 -8], [5 x i16] [i16 -7, i16 -7, i16 5, i16 2, i16 4], [5 x i16] [i16 -7977, i16 11395, i16 -8, i16 11395, i16 -7977]], align 16
@.str.21 = private unnamed_addr constant [11 x i8] c"g_81[i][j]\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_83 = internal global i16 0, align 2
@.str.23 = private unnamed_addr constant [5 x i8] c"g_83\00", align 1
@g_84 = internal global i64 7177405932148419781, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"g_84\00", align 1
@g_117 = internal global [4 x i32] [i32 -2105935809, i32 -2105935809, i32 -2105935809, i32 -2105935809], align 16
@.str.25 = private unnamed_addr constant [9 x i8] c"g_117[i]\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_133.f0\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_133.f3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_133.f4\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_134.f0\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"g_134.f3\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_134.f4\00", align 1
@g_143 = internal global i32 673560524, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_143\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"g_145.f0\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_145.f1\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_145.f2\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_145.f3\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_145.f4\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"g_145.f5\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"g_145.f6\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"g_145.f7\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"g_145.f8\00", align 1
@g_150 = internal global i16 0, align 2
@.str.42 = private unnamed_addr constant [6 x i8] c"g_150\00", align 1
@g_227 = internal global i8 -10, align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_246 = internal global i8 0, align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"g_246\00", align 1
@g_251 = internal global i32 1, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"g_251\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"g_326.f0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_326.f3\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_326.f4\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"g_329.f0\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_329.f3\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_329.f4\00", align 1
@g_404 = internal global %union.U1 { i16 -8 }, align 2
@.str.52 = private unnamed_addr constant [9 x i8] c"g_404.f0\00", align 1
@g_430 = internal global i16 -32735, align 2
@.str.53 = private unnamed_addr constant [6 x i8] c"g_430\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_477.f0\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"g_477.f3\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"g_477.f4\00", align 1
@g_525 = internal constant [4 x %union.U1] [%union.U1 { i16 6788 }, %union.U1 { i16 6788 }, %union.U1 { i16 6788 }, %union.U1 { i16 6788 }], align 2
@.str.57 = private unnamed_addr constant [12 x i8] c"g_525[i].f0\00", align 1
@g_540 = internal global [2 x [8 x i32]] [[8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1]], align 16
@.str.58 = private unnamed_addr constant [12 x i8] c"g_540[i][j]\00", align 1
@g_546 = internal global [3 x [8 x i64]] [[8 x i64] [i64 1, i64 -5318611290701106022, i64 0, i64 1, i64 0, i64 -5318611290701106022, i64 1, i64 1], [8 x i64] [i64 1, i64 8667434228346983901, i64 -438332675108077857, i64 1, i64 1, i64 -438332675108077857, i64 8667434228346983901, i64 1], [8 x i64] [i64 1, i64 1, i64 -5318611290701106022, i64 0, i64 1, i64 0, i64 -5318611290701106022, i64 1]], align 16
@.str.59 = private unnamed_addr constant [12 x i8] c"g_546[i][j]\00", align 1
@g_562 = internal global i8 23, align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"g_562\00", align 1
@g_625 = internal global [8 x [7 x [1 x i64]]] [[7 x [1 x i64]] [[1 x i64] [i64 1], [1 x i64] [i64 1], [1 x i64] [i64 9], [1 x i64] zeroinitializer, [1 x i64] [i64 9], [1 x i64] [i64 5], [1 x i64] [i64 -8448948856224701263]], [7 x [1 x i64]] [[1 x i64] [i64 5737414874603833029], [1 x i64] [i64 -8448948856224701263], [1 x i64] [i64 5], [1 x i64] [i64 9], [1 x i64] zeroinitializer, [1 x i64] [i64 9], [1 x i64] [i64 1]], [7 x [1 x i64]] [[1 x i64] [i64 1], [1 x i64] zeroinitializer, [1 x i64] [i64 6113331398958803675], [1 x i64] [i64 1822470482488900986], [1 x i64] [i64 -9135847714085044213], [1 x i64] [i64 -1], [1 x i64] [i64 -9135847714085044213]], [7 x [1 x i64]] [[1 x i64] zeroinitializer, [1 x i64] [i64 -8448948856224701263], [1 x i64] [i64 -7], [1 x i64] [i64 -821102704511131084], [1 x i64] [i64 1822470482488900986], [1 x i64] [i64 1], [1 x i64] [i64 5737414874603833029]], [7 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -3779424488248725139], [1 x i64] [i64 -10], [1 x i64] [i64 5737414874603833029], [1 x i64] [i64 1], [1 x i64] [i64 1822470482488900986], [1 x i64] [i64 -821102704511131084]], [7 x [1 x i64]] [[1 x i64] [i64 -7], [1 x i64] [i64 -8448948856224701263], [1 x i64] zeroinitializer, [1 x i64] [i64 -9135847714085044213], [1 x i64] [i64 -1], [1 x i64] [i64 1], [1 x i64] [i64 -1]], [7 x [1 x i64]] [[1 x i64] [i64 -9135847714085044213], [1 x i64] zeroinitializer, [1 x i64] [i64 -8448948856224701263], [1 x i64] [i64 -7], [1 x i64] [i64 -821102704511131084], [1 x i64] [i64 1822470482488900986], [1 x i64] [i64 1]], [7 x [1 x i64]] [[1 x i64] [i64 5737414874603833029], [1 x i64] [i64 -10], [1 x i64] [i64 -3779424488248725139], [1 x i64] [i64 -10], [1 x i64] [i64 5737414874603833029], [1 x i64] [i64 1], [1 x i64] [i64 1822470482488900986]]], align 16
@.str.61 = private unnamed_addr constant [15 x i8] c"g_625[i][j][k]\00", align 1
@g_736 = internal global i8 0, align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"g_736\00", align 1
@g_864 = internal global i32 607722970, align 4
@.str.63 = private unnamed_addr constant [6 x i8] c"g_864\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_17 = private unnamed_addr constant [8 x [5 x i8*]] [[5 x i8*] [i8* @g_18, i8* null, i8* @g_18, i8* null, i8* @g_18], [5 x i8*] [i8* @g_18, i8* @g_18, i8* null, i8* @g_18, i8* null], [5 x i8*] [i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18], [5 x i8*] [i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18, i8* null], [5 x i8*] [i8* null, i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18], [5 x i8*] [i8* null, i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18], [5 x i8*] [i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18], [5 x i8*] [i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18, i8* @g_18]], align 16
@func_1.l_43 = private unnamed_addr constant %union.U1 { i16 12964 }, align 2
@func_4.l_630 = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 -1, i32 1759305072, i32 1759305072], [3 x i32] [i32 -1, i32 1759305072, i32 1759305072], [3 x i32] [i32 -1, i32 1759305072, i32 1759305072]], align 16
@func_4.l_850 = private unnamed_addr constant %union.U1 { i16 -3 }, align 2
@func_4.l_687 = private unnamed_addr constant [3 x [3 x [7 x i8*]]] [[3 x [7 x i8*]] [[7 x i8*] [i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562], [7 x i8*] [i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246], [7 x i8*] [i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562]], [3 x [7 x i8*]] [[7 x i8*] [i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246], [7 x i8*] [i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562], [7 x i8*] [i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246]], [3 x [7 x i8*]] [[7 x i8*] [i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562], [7 x i8*] [i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246, i8* @g_246], [7 x i8*] [i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562, i8* @g_18, i8* @g_562]]], align 16
@func_4.l_771 = private unnamed_addr constant [7 x [1 x i8]] [[1 x i8] c"A", [1 x i8] c"\FC", [1 x i8] c"A", [1 x i8] c"A", [1 x i8] c"\FC", [1 x i8] c"A", [1 x i8] c"A"], align 1
@func_4.l_793 = private unnamed_addr constant [4 x [7 x [1 x i16]]] [[7 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 -2], [1 x i16] [i16 8], [1 x i16] [i16 -4], [1 x i16] [i16 1], [1 x i16] [i16 -4], [1 x i16] [i16 8]], [7 x [1 x i16]] [[1 x i16] [i16 -2], [1 x i16] zeroinitializer, [1 x i16] [i16 -29572], [1 x i16] zeroinitializer, [1 x i16] [i16 -2], [1 x i16] [i16 8], [1 x i16] [i16 -4]], [7 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 -4], [1 x i16] [i16 16211], [1 x i16] [i16 15556], [1 x i16] [i16 1], [1 x i16] [i16 -2], [1 x i16] [i16 1]], [7 x [1 x i16]] [[1 x i16] [i16 15556], [1 x i16] [i16 16211], [1 x i16] [i16 -29572], [1 x i16] [i16 8], [1 x i16] [i16 -29572], [1 x i16] [i16 16211], [1 x i16] [i16 15556]]], align 16
@g_148 = internal global %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), align 8
@func_4.l_840 = private unnamed_addr constant %union.U1 { i16 -2 }, align 2
@func_51.l_92 = internal constant [6 x [4 x i32]] [[4 x i32] [i32 5, i32 -97531217, i32 -97531217, i32 5], [4 x i32] [i32 5, i32 -97531217, i32 -97531217, i32 5], [4 x i32] [i32 5, i32 -97531217, i32 -97531217, i32 5], [4 x i32] [i32 5, i32 -97531217, i32 -97531217, i32 5], [4 x i32] [i32 5, i32 -97531217, i32 -97531217, i32 5], [4 x i32] [i32 5, i32 -97531217, i32 -97531217, i32 5]], align 16
@func_51.l_357 = private unnamed_addr constant %union.U1 { i16 -1 }, align 2
@func_51.l_595 = internal constant [10 x i32] [i32 -654654430, i32 -1, i32 -654654430, i32 -1, i32 -654654430, i32 -1, i32 -654654430, i32 -1, i32 -654654430, i32 -1], align 16
@g_356 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_196 to i8*), i64 16) to i32**), align 8
@g_359 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_117 to i8*), i64 4) to i32*), align 8
@g_196 = internal global [10 x i32*] [i32* @g_57, i32* @g_57, i32* @g_57, i32* @g_57, i32* @g_57, i32* @g_57, i32* @g_57, i32* @g_57, i32* @g_57, i32* @g_57], align 16
@func_105.l_361 = private unnamed_addr constant [5 x [6 x [4 x i32**]]] [[6 x [4 x i32**]] [[4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359]], [6 x [4 x i32**]] [[4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359]], [6 x [4 x i32**]] [[4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359]], [6 x [4 x i32**]] [[4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359]], [6 x [4 x i32**]] [[4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359], [4 x i32**] [i32** @g_359, i32** @g_359, i32** @g_359, i32** @g_359]]], align 16
@func_105.l_405 = private unnamed_addr constant %union.U1 { i16 -2 }, align 2
@g_142 = internal global i32* null, align 8
@func_105.l_394 = private unnamed_addr constant [9 x i32] [i32 5, i32 -504093486, i32 5, i32 -504093486, i32 5, i32 -504093486, i32 5, i32 -504093486, i32 5], align 16
@func_105.l_385 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@func_105.l_395 = private unnamed_addr constant [2 x [3 x i8]] [[3 x i8] c"\01\01\01", [3 x i8] c"\FB\FB\FB"], align 1
@func_105.l_427 = private unnamed_addr constant [10 x [9 x i64*]] [[9 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* @g_40, i64* null, i64* null, i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 8) to i64*), i64* null], [9 x i64*] [i64* @g_40, i64* @g_40, i64* @g_40, i64* null, i64* @g_40, i64* @g_40, i64* @g_40, i64* @g_40, i64* null], [9 x i64*] [i64* null, i64* @g_40, i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* null, i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 8) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*)], [9 x i64*] [i64* null, i64* @g_40, i64* @g_40, i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 40) to i64*), i64* null, i64* @g_40, i64* @g_40, i64* null], [9 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 8) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*)], [9 x i64*] [i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 40) to i64*), i64* null, i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 40) to i64*), i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* null], [9 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* null], [9 x i64*] [i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 40) to i64*), i64* null, i64* @g_40, i64* @g_40, i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 24) to i64*), i64* @g_40], [9 x i64*] [i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* null, i64* @g_40, i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* null], [9 x i64*] [i64* @g_40, i64* @g_40, i64* null, i64* @g_40, i64* @g_40, i64* @g_40, i64* @g_40, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_33 to i8*), i64 16) to i64*), i64* @g_40]], align 16
@g_230 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_196 to i8*), i64 64) to i32**), align 8
@func_105.l_455 = private unnamed_addr constant [7 x [10 x %struct.S0**]] [[10 x %struct.S0**] [%struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148], [10 x %struct.S0**] [%struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148], [10 x %struct.S0**] [%struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148], [10 x %struct.S0**] [%struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148], [10 x %struct.S0**] [%struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148], [10 x %struct.S0**] [%struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** null, %struct.S0** @g_148, %struct.S0** @g_148], [10 x %struct.S0**] [%struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148, %struct.S0** @g_148]], align 16
@func_105.l_460 = private unnamed_addr constant [1 x [7 x i32]] [[7 x i32] [i32 0, i32 0, i32 -370885403, i32 0, i32 0, i32 -370885403, i32 0]], align 16
@g_509 = internal global [5 x %union.U1*] [%union.U1* @g_404, %union.U1* @g_404, %union.U1* @g_404, %union.U1* @g_404, %union.U1* @g_404], align 16
@g_195 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_196 to i8*), i64 16) to i32**), align 8
@func_105.l_532 = private unnamed_addr constant [8 x [10 x i32]] [[10 x i32] [i32 4, i32 409978805, i32 -10, i32 4, i32 -10, i32 409978805, i32 4, i32 -1, i32 -1, i32 4], [10 x i32] [i32 -1, i32 1628749654, i32 -10, i32 -10, i32 1628749654, i32 -1, i32 409978805, i32 1628749654, i32 409978805, i32 -1], [10 x i32] [i32 6, i32 1628749654, i32 -347756952, i32 1628749654, i32 6, i32 -347756952, i32 4, i32 4, i32 -347756952, i32 6], [10 x i32] [i32 6, i32 409978805, i32 409978805, i32 6, i32 -10, i32 -1, i32 6, i32 -1, i32 -10, i32 6], [10 x i32] [i32 -1, i32 6, i32 -1, i32 -10, i32 6, i32 409978805, i32 409978805, i32 6, i32 -10, i32 -1], [10 x i32] [i32 4, i32 4, i32 -347756952, i32 6, i32 1628749654, i32 -347756952, i32 1628749654, i32 6, i32 -347756952, i32 4], [10 x i32] [i32 1628749654, i32 409978805, i32 -1, i32 1628749654, i32 -10, i32 -10, i32 1628749654, i32 -1, i32 409978805, i32 1628749654], [10 x i32] [i32 -1, i32 4, i32 409978805, i32 -10, i32 4, i32 -10, i32 409978805, i32 4, i32 -1, i32 -1]], align 16
@g_513 = internal global %struct.S0*** @g_514, align 8
@g_324 = internal global %union.U2** @g_325, align 8
@g_514 = internal global %struct.S0** @g_515, align 8
@g_515 = internal global %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), align 8
@g_325 = internal global %union.U2* bitcast ({ i32, [4 x i8] }* @g_326 to %union.U2*), align 8
@func_113.l_152 = private unnamed_addr constant [9 x %struct.S0*] [%struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*)], align 16
@func_113.l_192 = internal constant [6 x [9 x i8*]] [[9 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1)], [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2)], [9 x i8*] [i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* null], [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null], [9 x i8*] [i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2)], [9 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 2), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1)]], align 16
@func_113.l_296 = private unnamed_addr constant [7 x %struct.S0*] [%struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* null, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*)], align 16
@g_198 = internal global i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_196, i32 0, i32 0), align 8
@.str.64 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_50 = internal constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -71, i8 -1, i8 1, i8 undef, i8 36, i8 -16, i8 -1, i8 1, i8 51, i8 0, i8 12, i8 undef, i8 -64, i8 127, i8 -5, i8 1, i8 -24, i8 74, i8 0, i8 0, i8 -112, i8 2, i8 0, i8 undef }, align 4
@g_133 = internal global { i32, [4 x i8] } { i32 3, [4 x i8] undef }, align 8
@g_134 = internal global { i32, [4 x i8] } { i32 -705244260, [4 x i8] undef }, align 8
@g_145 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -16, i8 0, i8 0, i8 undef, i8 31, i8 19, i8 0, i8 0, i8 -47, i8 -2, i8 15, i8 undef, i8 -44, i8 31, i8 -2, i8 1, i8 43, i8 60, i8 0, i8 0, i8 -79, i8 2, i8 0, i8 undef }, align 4
@g_326 = internal global { i32, [4 x i8] } { i32 -2, [4 x i8] undef }, align 8
@g_329 = internal global { i32, [4 x i8] } { i32 -5, [4 x i8] undef }, align 8
@g_477 = internal global { i32, [4 x i8] } { i32 1364186023, [4 x i8] undef }, align 8
@.str.65 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %89

; <label>:12                                      ; preds = %0
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %15, label %77

; <label>:15                                      ; preds = %12
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %77

; <label>:18                                      ; preds = %15
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8**, i8*** %3, align 8, !tbaa !5
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  store i8* %22, i8** %__s1, align 8, !tbaa !5
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %__s1, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %__result, align 4, !tbaa !1
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %72

; <label>:33                                      ; preds = %18
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

; <label>:36                                      ; preds = %33
  %37 = load i8*, i8** %__s1, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %__result, align 4, !tbaa !1
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %71

; <label>:46                                      ; preds = %36
  %47 = load i32, i32* %__result, align 4, !tbaa !1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

; <label>:49                                      ; preds = %46
  %50 = load i8*, i8** %__s1, align 8, !tbaa !5
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  store i32 %56, i32* %__result, align 4, !tbaa !1
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %58 = icmp ugt i64 %57, 2
  br i1 %58, label %59, label %70

; <label>:59                                      ; preds = %49
  %60 = load i32, i32* %__result, align 4, !tbaa !1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %59
  %63 = load i8*, i8** %__s1, align 8, !tbaa !5
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %__result, align 4, !tbaa !1
  br label %70

; <label>:70                                      ; preds = %62, %59, %49
  br label %71

; <label>:71                                      ; preds = %70, %46, %36
  br label %72

; <label>:72                                      ; preds = %71, %33, %18
  %73 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %73, i32* %5, !tbaa !1
  %74 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %5, !tbaa !1
  br label %82

; <label>:77                                      ; preds = %15, %12
  %78 = load i8**, i8*** %3, align 8, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8, !tbaa !5
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %82

; <label>:82                                      ; preds = %77, %72
  %83 = phi i32 [ %76, %72 ], [ %81, %77 ]
  store i32 %83, i32* %4, !tbaa !1
  %84 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %4, !tbaa !1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %88, %82, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %90 = call signext i16 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %131, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %134

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %127, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 6
  br i1 %97, label %98, label %130

; <label>:98                                      ; preds = %95
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %123, %98
  %100 = load i32, i32* %k, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %126

; <label>:102                                     ; preds = %99
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x [6 x [2 x i16]]], [4 x [6 x [2 x i16]]]* @g_10, i32 0, i64 %108
  %110 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* %109, i32 0, i64 %106
  %111 = getelementptr inbounds [2 x i16], [2 x i16]* %110, i32 0, i64 %104
  %112 = load volatile i16, i16* %111, align 2, !tbaa !10
  %113 = zext i16 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %114)
  %115 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %102
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = load i32, i32* %k, align 4, !tbaa !1
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %118, i32 %119, i32 %120)
  br label %122

; <label>:122                                     ; preds = %117, %102
  br label %123

; <label>:123                                     ; preds = %122
  %124 = load i32, i32* %k, align 4, !tbaa !1
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:126                                     ; preds = %99
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load i32, i32* %j, align 4, !tbaa !1
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:130                                     ; preds = %95
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:134                                     ; preds = %91
  %135 = load i8, i8* @g_18, align 1, !tbaa !9
  %136 = sext i8 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %137)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:138                                     ; preds = %153, %134
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %141, label %156

; <label>:141                                     ; preds = %138
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x i64], [8 x i64]* @g_33, i32 0, i64 %143
  %145 = load i64, i64* %144, align 8, !tbaa !7
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %146)
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

; <label>:149                                     ; preds = %141
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %150)
  br label %152

; <label>:152                                     ; preds = %149, %141
  br label %153

; <label>:153                                     ; preds = %152
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:156                                     ; preds = %138
  %157 = load i16, i16* @g_39, align 2, !tbaa !10
  %158 = zext i16 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %159)
  %160 = load i64, i64* @g_40, align 8, !tbaa !7
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %161)
  %162 = load i16, i16* @g_42, align 2, !tbaa !10
  %163 = zext i16 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %164)
  %165 = load volatile i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to i32*), align 4
  %166 = and i32 %165, 7
  %167 = zext i32 %166 to i64
  %168 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %168)
  %169 = load volatile i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to i32*), align 4
  %170 = shl i32 %169, 15
  %171 = ashr i32 %170, 18
  %172 = sext i32 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %173)
  %174 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 1), align 4
  %175 = shl i32 %174, 7
  %176 = ashr i32 %175, 7
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %178)
  %179 = load volatile i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 2) to i32*), align 4
  %180 = shl i32 %179, 15
  %181 = ashr i32 %180, 15
  %182 = sext i32 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %183)
  %184 = load volatile i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 2) to i32*), align 4
  %185 = shl i32 %184, 9
  %186 = ashr i32 %185, 26
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %188)
  %189 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 3), align 4
  %190 = shl i32 %189, 19
  %191 = ashr i32 %190, 19
  %192 = sext i32 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %193)
  %194 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 3), align 4
  %195 = shl i32 %194, 7
  %196 = ashr i32 %195, 20
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %198)
  %199 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 4), align 4
  %200 = and i32 %199, 2147483647
  %201 = zext i32 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 %202)
  %203 = load volatile i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 5) to i32*), align 4
  %204 = and i32 %203, 524287
  %205 = zext i32 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 %206)
  %207 = load i32, i32* @g_57, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %209)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %226, %156
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 3
  br i1 %212, label %213, label %229

; <label>:213                                     ; preds = %210
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [3 x i8], [3 x i8]* @g_62, i32 0, i64 %215
  %217 = load i8, i8* %216, align 1, !tbaa !9
  %218 = zext i8 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

; <label>:222                                     ; preds = %213
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %223)
  br label %225

; <label>:225                                     ; preds = %222, %213
  br label %226

; <label>:226                                     ; preds = %225
  %227 = load i32, i32* %i, align 4, !tbaa !1
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:229                                     ; preds = %210
  %230 = load volatile i32, i32* @g_80, align 4, !tbaa !1
  %231 = sext i32 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 %232)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %233

; <label>:233                                     ; preds = %261, %229
  %234 = load i32, i32* %i, align 4, !tbaa !1
  %235 = icmp slt i32 %234, 9
  br i1 %235, label %236, label %264

; <label>:236                                     ; preds = %233
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %237

; <label>:237                                     ; preds = %257, %236
  %238 = load i32, i32* %j, align 4, !tbaa !1
  %239 = icmp slt i32 %238, 5
  br i1 %239, label %240, label %260

; <label>:240                                     ; preds = %237
  %241 = load i32, i32* %j, align 4, !tbaa !1
  %242 = sext i32 %241 to i64
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [9 x [5 x i16]], [9 x [5 x i16]]* @g_81, i32 0, i64 %244
  %246 = getelementptr inbounds [5 x i16], [5 x i16]* %245, i32 0, i64 %242
  %247 = load volatile i16, i16* %246, align 2, !tbaa !10
  %248 = sext i16 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 %249)
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

; <label>:252                                     ; preds = %240
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = load i32, i32* %j, align 4, !tbaa !1
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 %253, i32 %254)
  br label %256

; <label>:256                                     ; preds = %252, %240
  br label %257

; <label>:257                                     ; preds = %256
  %258 = load i32, i32* %j, align 4, !tbaa !1
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %j, align 4, !tbaa !1
  br label %237

; <label>:260                                     ; preds = %237
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %i, align 4, !tbaa !1
  br label %233

; <label>:264                                     ; preds = %233
  %265 = load volatile i16, i16* @g_83, align 2, !tbaa !10
  %266 = sext i16 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 %267)
  %268 = load volatile i64, i64* @g_84, align 8, !tbaa !7
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 %269)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %270

; <label>:270                                     ; preds = %286, %264
  %271 = load i32, i32* %i, align 4, !tbaa !1
  %272 = icmp slt i32 %271, 4
  br i1 %272, label %273, label %289

; <label>:273                                     ; preds = %270
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* @g_117, i32 0, i64 %275
  %277 = load i32, i32* %276, align 4, !tbaa !1
  %278 = sext i32 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %279)
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

; <label>:282                                     ; preds = %273
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %283)
  br label %285

; <label>:285                                     ; preds = %282, %273
  br label %286

; <label>:286                                     ; preds = %285
  %287 = load i32, i32* %i, align 4, !tbaa !1
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %i, align 4, !tbaa !1
  br label %270

; <label>:289                                     ; preds = %270
  %290 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_133, i32 0, i32 0), align 4, !tbaa !1
  %291 = zext i32 %290 to i64
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %292)
  %293 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_133, i32 0, i32 0), align 8
  %294 = shl i32 %293, 3
  %295 = ashr i32 %294, 3
  %296 = sext i32 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %297)
  %298 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_133 to i8*), align 1, !tbaa !9
  %299 = zext i8 %298 to i64
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %300)
  %301 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_134, i32 0, i32 0), align 4, !tbaa !1
  %302 = zext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %303)
  %304 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_134, i32 0, i32 0), align 8
  %305 = shl i32 %304, 3
  %306 = ashr i32 %305, 3
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %308)
  %309 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_134 to i8*), align 1, !tbaa !9
  %310 = zext i8 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %311)
  %312 = load i32, i32* @g_143, align 4, !tbaa !1
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %314)
  %315 = load i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to i32*), align 4
  %316 = and i32 %315, 7
  %317 = zext i32 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %318)
  %319 = load i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to i32*), align 4
  %320 = shl i32 %319, 15
  %321 = ashr i32 %320, 18
  %322 = sext i32 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %323)
  %324 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 1), align 4
  %325 = shl i32 %324, 7
  %326 = ashr i32 %325, 7
  %327 = sext i32 %326 to i64
  %328 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %327, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %328)
  %329 = load volatile i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 2) to i32*), align 4
  %330 = shl i32 %329, 15
  %331 = ashr i32 %330, 15
  %332 = sext i32 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %333)
  %334 = load i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 2) to i32*), align 4
  %335 = shl i32 %334, 9
  %336 = ashr i32 %335, 26
  %337 = sext i32 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %338)
  %339 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 3), align 4
  %340 = shl i32 %339, 19
  %341 = ashr i32 %340, 19
  %342 = sext i32 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %343)
  %344 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 3), align 4
  %345 = shl i32 %344, 7
  %346 = ashr i32 %345, 20
  %347 = sext i32 %346 to i64
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %347, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %348)
  %349 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 4), align 4
  %350 = and i32 %349, 2147483647
  %351 = zext i32 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %352)
  %353 = load i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 5) to i32*), align 4
  %354 = and i32 %353, 524287
  %355 = zext i32 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %356)
  %357 = load i16, i16* @g_150, align 2, !tbaa !10
  %358 = sext i16 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %359)
  %360 = load i8, i8* @g_227, align 1, !tbaa !9
  %361 = zext i8 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %362)
  %363 = load i8, i8* @g_246, align 1, !tbaa !9
  %364 = sext i8 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* @g_251, align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %368)
  %369 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_326, i32 0, i32 0), align 4, !tbaa !1
  %370 = zext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %371)
  %372 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_326, i32 0, i32 0), align 8
  %373 = shl i32 %372, 3
  %374 = ashr i32 %373, 3
  %375 = sext i32 %374 to i64
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %375, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %376)
  %377 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_326 to i8*), align 1, !tbaa !9
  %378 = zext i8 %377 to i64
  %379 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %378, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %379)
  %380 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 4, !tbaa !1
  %381 = zext i32 %380 to i64
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %381, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %382)
  %383 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 8
  %384 = shl i32 %383, 3
  %385 = ashr i32 %384, 3
  %386 = sext i32 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %387)
  %388 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_329 to i8*), align 1, !tbaa !9
  %389 = zext i8 %388 to i64
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %389, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %390)
  %391 = load i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  %392 = sext i16 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %393)
  %394 = load i16, i16* @g_430, align 2, !tbaa !10
  %395 = zext i16 %394 to i64
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 %396)
  %397 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_477, i32 0, i32 0), align 4, !tbaa !1
  %398 = zext i32 %397 to i64
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %398, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %399)
  %400 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_477, i32 0, i32 0), align 8
  %401 = shl i32 %400, 3
  %402 = ashr i32 %401, 3
  %403 = sext i32 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %404)
  %405 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_477 to i8*), align 1, !tbaa !9
  %406 = zext i8 %405 to i64
  %407 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %406, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 %407)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %408

; <label>:408                                     ; preds = %425, %289
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %410 = icmp slt i32 %409, 4
  br i1 %410, label %411, label %428

; <label>:411                                     ; preds = %408
  %412 = load i32, i32* %i, align 4, !tbaa !1
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [4 x %union.U1], [4 x %union.U1]* @g_525, i32 0, i64 %413
  %415 = bitcast %union.U1* %414 to i16*
  %416 = load i16, i16* %415, align 2, !tbaa !10
  %417 = sext i16 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 %418)
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %424

; <label>:421                                     ; preds = %411
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %422)
  br label %424

; <label>:424                                     ; preds = %421, %411
  br label %425

; <label>:425                                     ; preds = %424
  %426 = load i32, i32* %i, align 4, !tbaa !1
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %i, align 4, !tbaa !1
  br label %408

; <label>:428                                     ; preds = %408
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %429

; <label>:429                                     ; preds = %457, %428
  %430 = load i32, i32* %i, align 4, !tbaa !1
  %431 = icmp slt i32 %430, 2
  br i1 %431, label %432, label %460

; <label>:432                                     ; preds = %429
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %433

; <label>:433                                     ; preds = %453, %432
  %434 = load i32, i32* %j, align 4, !tbaa !1
  %435 = icmp slt i32 %434, 8
  br i1 %435, label %436, label %456

; <label>:436                                     ; preds = %433
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = sext i32 %437 to i64
  %439 = load i32, i32* %i, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @g_540, i32 0, i64 %440
  %442 = getelementptr inbounds [8 x i32], [8 x i32]* %441, i32 0, i64 %438
  %443 = load i32, i32* %442, align 4, !tbaa !1
  %444 = zext i32 %443 to i64
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %445)
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %452

; <label>:448                                     ; preds = %436
  %449 = load i32, i32* %i, align 4, !tbaa !1
  %450 = load i32, i32* %j, align 4, !tbaa !1
  %451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 %449, i32 %450)
  br label %452

; <label>:452                                     ; preds = %448, %436
  br label %453

; <label>:453                                     ; preds = %452
  %454 = load i32, i32* %j, align 4, !tbaa !1
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %j, align 4, !tbaa !1
  br label %433

; <label>:456                                     ; preds = %433
  br label %457

; <label>:457                                     ; preds = %456
  %458 = load i32, i32* %i, align 4, !tbaa !1
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %i, align 4, !tbaa !1
  br label %429

; <label>:460                                     ; preds = %429
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %461

; <label>:461                                     ; preds = %488, %460
  %462 = load i32, i32* %i, align 4, !tbaa !1
  %463 = icmp slt i32 %462, 3
  br i1 %463, label %464, label %491

; <label>:464                                     ; preds = %461
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %465

; <label>:465                                     ; preds = %484, %464
  %466 = load i32, i32* %j, align 4, !tbaa !1
  %467 = icmp slt i32 %466, 8
  br i1 %467, label %468, label %487

; <label>:468                                     ; preds = %465
  %469 = load i32, i32* %j, align 4, !tbaa !1
  %470 = sext i32 %469 to i64
  %471 = load i32, i32* %i, align 4, !tbaa !1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [3 x [8 x i64]], [3 x [8 x i64]]* @g_546, i32 0, i64 %472
  %474 = getelementptr inbounds [8 x i64], [8 x i64]* %473, i32 0, i64 %470
  %475 = load i64, i64* %474, align 8, !tbaa !7
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %475, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i32 %476)
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %483

; <label>:479                                     ; preds = %468
  %480 = load i32, i32* %i, align 4, !tbaa !1
  %481 = load i32, i32* %j, align 4, !tbaa !1
  %482 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 %480, i32 %481)
  br label %483

; <label>:483                                     ; preds = %479, %468
  br label %484

; <label>:484                                     ; preds = %483
  %485 = load i32, i32* %j, align 4, !tbaa !1
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %j, align 4, !tbaa !1
  br label %465

; <label>:487                                     ; preds = %465
  br label %488

; <label>:488                                     ; preds = %487
  %489 = load i32, i32* %i, align 4, !tbaa !1
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %i, align 4, !tbaa !1
  br label %461

; <label>:491                                     ; preds = %461
  %492 = load i8, i8* @g_562, align 1, !tbaa !9
  %493 = sext i8 %492 to i64
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %493, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 %494)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %495

; <label>:495                                     ; preds = %534, %491
  %496 = load i32, i32* %i, align 4, !tbaa !1
  %497 = icmp slt i32 %496, 8
  br i1 %497, label %498, label %537

; <label>:498                                     ; preds = %495
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %499

; <label>:499                                     ; preds = %530, %498
  %500 = load i32, i32* %j, align 4, !tbaa !1
  %501 = icmp slt i32 %500, 7
  br i1 %501, label %502, label %533

; <label>:502                                     ; preds = %499
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %503

; <label>:503                                     ; preds = %526, %502
  %504 = load i32, i32* %k, align 4, !tbaa !1
  %505 = icmp slt i32 %504, 1
  br i1 %505, label %506, label %529

; <label>:506                                     ; preds = %503
  %507 = load i32, i32* %k, align 4, !tbaa !1
  %508 = sext i32 %507 to i64
  %509 = load i32, i32* %j, align 4, !tbaa !1
  %510 = sext i32 %509 to i64
  %511 = load i32, i32* %i, align 4, !tbaa !1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [8 x [7 x [1 x i64]]], [8 x [7 x [1 x i64]]]* @g_625, i32 0, i64 %512
  %514 = getelementptr inbounds [7 x [1 x i64]], [7 x [1 x i64]]* %513, i32 0, i64 %510
  %515 = getelementptr inbounds [1 x i64], [1 x i64]* %514, i32 0, i64 %508
  %516 = load i64, i64* %515, align 8, !tbaa !7
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i32 %517)
  %518 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %525

; <label>:520                                     ; preds = %506
  %521 = load i32, i32* %i, align 4, !tbaa !1
  %522 = load i32, i32* %j, align 4, !tbaa !1
  %523 = load i32, i32* %k, align 4, !tbaa !1
  %524 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %521, i32 %522, i32 %523)
  br label %525

; <label>:525                                     ; preds = %520, %506
  br label %526

; <label>:526                                     ; preds = %525
  %527 = load i32, i32* %k, align 4, !tbaa !1
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %k, align 4, !tbaa !1
  br label %503

; <label>:529                                     ; preds = %503
  br label %530

; <label>:530                                     ; preds = %529
  %531 = load i32, i32* %j, align 4, !tbaa !1
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %j, align 4, !tbaa !1
  br label %499

; <label>:533                                     ; preds = %499
  br label %534

; <label>:534                                     ; preds = %533
  %535 = load i32, i32* %i, align 4, !tbaa !1
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %i, align 4, !tbaa !1
  br label %495

; <label>:537                                     ; preds = %495
  %538 = load volatile i8, i8* @g_736, align 1, !tbaa !9
  %539 = sext i8 %538 to i64
  %540 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %539, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 %540)
  %541 = load i32, i32* @g_864, align 4, !tbaa !1
  %542 = sext i32 %541 to i64
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 %543)
  %544 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %545 = zext i32 %544 to i64
  %546 = xor i64 %545, 4294967295
  %547 = trunc i64 %546 to i32
  %548 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %547, i32 %548)
  %549 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %549) #1
  %550 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %550) #1
  %551 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %551) #1
  %552 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %552) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_gentab() #0 {
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -306674912, i32* %poly, align 4, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %33, %0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %9, i32* %crc, align 4, !tbaa !1
  store i32 8, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %25, %8
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %crc, align 4, !tbaa !1
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %crc, align 4, !tbaa !1
  %19 = lshr i32 %18, 1
  %20 = xor i32 %19, -306674912
  store i32 %20, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %crc, align 4, !tbaa !1
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %21, %17
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %j, align 4, !tbaa !1
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:28                                      ; preds = %10
  %29 = load i32, i32* %crc, align 4, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %28
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:36                                      ; preds = %5
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal signext i16 @func_1() #0 {
  %l_15 = alloca [7 x i32], align 16
  %l_16 = alloca i8*, align 8
  %l_17 = alloca [8 x [5 x i8*]], align 16
  %l_38 = alloca i16*, align 8
  %l_41 = alloca i16*, align 8
  %l_43 = alloca %union.U1, align 2
  %l_863 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast [7 x i32]* %l_15 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %1) #1
  %2 = bitcast i8** %l_16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %l_16, align 8, !tbaa !5
  %3 = bitcast [8 x [5 x i8*]]* %l_17 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %3) #1
  %4 = bitcast [8 x [5 x i8*]]* %l_17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([8 x [5 x i8*]]* @func_1.l_17 to i8*), i64 320, i32 16, i1 false)
  %5 = bitcast i16** %l_38 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_39, i16** %l_38, align 8, !tbaa !5
  %6 = bitcast i16** %l_41 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_42, i16** %l_41, align 8, !tbaa !5
  %7 = bitcast %union.U1* %l_43 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  %8 = bitcast %union.U1* %l_43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast (%union.U1* @func_1.l_43 to i8*), i64 2, i32 2, i1 false)
  %9 = bitcast i32** %l_863 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_864, i32** %l_863, align 8, !tbaa !5
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %19, %0
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = icmp slt i32 %13, 7
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 %17
  store i32 -2, i32* %18, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:22                                      ; preds = %12
  %23 = load volatile i16, i16* getelementptr inbounds ([4 x [6 x [2 x i16]]], [4 x [6 x [2 x i16]]]* @g_10, i32 0, i64 0, i64 5, i64 1), align 2, !tbaa !10
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 2
  %26 = load i32, i32* %25, align 4, !tbaa !1
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 4
  %29 = load i32, i32* %28, align 4, !tbaa !1
  %30 = trunc i32 %29 to i8
  %31 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %27, i8 zeroext %30)
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @g_18, align 1, !tbaa !9
  %34 = sext i8 %33 to i32
  %35 = xor i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* @g_18, align 1, !tbaa !9
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 5
  %38 = load i32, i32* %37, align 4, !tbaa !1
  %39 = trunc i32 %38 to i8
  %40 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %36, i8 signext %39)
  %41 = sext i8 %40 to i32
  %42 = load i8*, i8** %l_16, align 8, !tbaa !5
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 2
  %47 = load i32, i32* %46, align 4, !tbaa !1
  %48 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

; <label>:50                                      ; preds = %22
  %51 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 2
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = sext i32 %53 to i64
  %55 = call i64 @safe_sub_func_int64_t_s_s(i64 %51, i64 %54)
  %56 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %57 = trunc i64 %56 to i16
  %58 = load i16*, i16** %l_38, align 8, !tbaa !5
  store i16 %57, i16* %58, align 2, !tbaa !10
  %59 = zext i16 %57 to i64
  %60 = xor i64 %59, 65531
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 3
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 2
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = sext i32 %68 to i64
  %70 = call i64 @safe_div_func_uint64_t_u_u(i64 %66, i64 %69)
  %71 = icmp ne i64 %70, 0
  br label %72

; <label>:72                                      ; preds = %50, %22
  %73 = phi i1 [ false, %22 ], [ %71, %50 ]
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  store i64 %76, i64* @g_40, align 8, !tbaa !7
  %77 = load i16*, i16** %l_41, align 8, !tbaa !5
  %78 = load i16, i16* %77, align 2, !tbaa !10
  %79 = zext i16 %78 to i64
  %80 = xor i64 %79, %76
  %81 = trunc i64 %80 to i16
  store i16 %81, i16* %77, align 2, !tbaa !10
  %82 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 6), align 8, !tbaa !7
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds [8 x [5 x i8*]], [8 x [5 x i8*]]* %l_17, i32 0, i64 5
  %85 = getelementptr inbounds [5 x i8*], [5 x i8*]* %84, i32 0, i64 4
  %86 = load i8*, i8** %85, align 8, !tbaa !5
  %87 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %88 = trunc i64 %87 to i32
  %89 = call zeroext i16 @func_27(i16 zeroext %81, i8 signext %83, i8* %86, i32 %88)
  %90 = load i16*, i16** %l_38, align 8, !tbaa !5
  store i16 %89, i16* %90, align 2, !tbaa !10
  %91 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %45, i16 signext %89)
  %92 = sext i16 %91 to i32
  %93 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 2
  %94 = load i32, i32* %93, align 4, !tbaa !1
  %95 = icmp sle i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %98 = trunc i64 %97 to i32
  %99 = call i32 @safe_sub_func_uint32_t_u_u(i32 %96, i32 %98)
  %100 = zext i32 %99 to i64
  %101 = icmp ne i64 %100, -4
  br i1 %101, label %102, label %103

; <label>:102                                     ; preds = %72
  br label %103

; <label>:103                                     ; preds = %102, %72
  %104 = phi i1 [ false, %72 ], [ true, %102 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @safe_div_func_int32_t_s_s(i32 %105, i32 1741114923)
  %107 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 6
  %108 = load i32, i32* %107, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = xor i64 251, %109
  %111 = trunc i64 %110 to i8
  %112 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %113 = trunc i64 %112 to i8
  %114 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %111, i8 zeroext %113)
  %115 = zext i8 %114 to i32
  %116 = icmp sgt i32 %41, %115
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %118, 52214
  %120 = zext i1 %119 to i32
  %121 = icmp slt i32 %24, %120
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = getelementptr %union.U1, %union.U1* %l_43, i32 0, i32 0
  %125 = load i16, i16* %124, align 2
  %126 = call i32 @func_7(i64 %123, i16 %125)
  %127 = getelementptr inbounds [7 x i32], [7 x i32]* %l_15, i32 0, i64 2
  %128 = load i32, i32* %127, align 4, !tbaa !1
  %129 = trunc i32 %128 to i16
  %130 = call i64 @func_4(i32 %126, i16 zeroext %129)
  %131 = call i64 @safe_sub_func_int64_t_s_s(i64 %130, i64 -5779268260709251418)
  %132 = load i32*, i32** %l_863, align 8, !tbaa !5
  %133 = load i32, i32* %132, align 4, !tbaa !1
  %134 = sext i32 %133 to i64
  %135 = or i64 %134, %131
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4, !tbaa !1
  %137 = load i32*, i32** %l_863, align 8, !tbaa !5
  %138 = load i32, i32* %137, align 4, !tbaa !1
  %139 = trunc i32 %138 to i16
  %140 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i32** %l_863 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast %union.U1* %l_43 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %143) #1
  %144 = bitcast i16** %l_41 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i16** %l_38 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast [8 x [5 x i8*]]* %l_17 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %146) #1
  %147 = bitcast i8** %l_16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast [7 x i32]* %l_15 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %148) #1
  ret i16 %139
}

; Function Attrs: nounwind uwtable
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i64 %val, i64* %1, align 8, !tbaa !7
  store i8* %vname, i8** %2, align 8, !tbaa !5
  store i32 %flag, i32* %3, align 4, !tbaa !1
  %4 = load i64, i64* %1, align 8, !tbaa !7
  call void @crc32_8bytes(i64 %4)
  %5 = load i32, i32* %3, align 4, !tbaa !1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %2, align 8, !tbaa !5
  %9 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %10 = zext i32 %9 to i64
  %11 = xor i64 %10, 4294967295
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.64, i32 0, i32 0), i8* %8, i64 %11)
  br label %13

; <label>:13                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i64 @safe_sub_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = xor i64 %3, %4
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = load i64, i64* %2, align 8, !tbaa !7
  %9 = xor i64 %7, %8
  %10 = and i64 %9, -9223372036854775808
  %11 = xor i64 %6, %10
  %12 = load i64, i64* %2, align 8, !tbaa !7
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* %2, align 8, !tbaa !7
  %15 = xor i64 %13, %14
  %16 = and i64 %5, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i64, i64* %1, align 8, !tbaa !7
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i64, i64* %1, align 8, !tbaa !7
  %22 = load i64, i64* %2, align 8, !tbaa !7
  %23 = sub nsw i64 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i64 [ %19, %18 ], [ %23, %20 ]
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define internal i64 @func_4(i32 %p_5, i16 zeroext %p_6) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %l_605 = alloca i8*, align 8
  %l_615 = alloca i32, align 4
  %l_623 = alloca i32, align 4
  %l_630 = alloca [3 x [3 x i32]], align 16
  %l_697 = alloca %union.U1**, align 8
  %l_716 = alloca [6 x i32*], align 16
  %l_731 = alloca i8, align 1
  %l_744 = alloca i64, align 8
  %l_749 = alloca i8, align 1
  %l_850 = alloca %union.U1, align 2
  %l_856 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_624 = alloca i16, align 2
  %l_658 = alloca i32, align 4
  %l_659 = alloca [6 x i32], align 16
  %l_687 = alloca [3 x [3 x [7 x i8*]]], align 16
  %l_698 = alloca %union.U1**, align 8
  %l_721 = alloca i8***, align 8
  %l_770 = alloca i32, align 4
  %l_771 = alloca [7 x [1 x i8]], align 1
  %l_793 = alloca [4 x [7 x [1 x i16]]], align 16
  %l_813 = alloca %struct.S0**, align 8
  %l_816 = alloca i64*, align 8
  %l_829 = alloca i16, align 2
  %l_840 = alloca %union.U1, align 2
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_5, i32* %1, align 4, !tbaa !1
  store i16 %p_6, i16* %2, align 2, !tbaa !10
  %3 = bitcast i8** %l_605 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* @g_246, i8** %l_605, align 8, !tbaa !5
  %4 = bitcast i32* %l_615 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 769559737, i32* %l_615, align 4, !tbaa !1
  %5 = bitcast i32* %l_623 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 5, i32* %l_623, align 4, !tbaa !1
  %6 = bitcast [3 x [3 x i32]]* %l_630 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %6) #1
  %7 = bitcast [3 x [3 x i32]]* %l_630 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([3 x [3 x i32]]* @func_4.l_630 to i8*), i64 36, i32 16, i1 false)
  %8 = bitcast %union.U1*** %l_697 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %union.U1** null, %union.U1*** %l_697, align 8, !tbaa !5
  %9 = bitcast [6 x i32*]* %l_716 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %9) #1
  %10 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_716, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_117, i32 0, i64 2), i32** %10, !tbaa !5
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  store i32* %l_615, i32** %11, !tbaa !5
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  store i32* %l_615, i32** %12, !tbaa !5
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_117, i32 0, i64 2), i32** %13, !tbaa !5
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  store i32* %l_615, i32** %14, !tbaa !5
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  store i32* %l_615, i32** %15, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_731) #1
  store i8 1, i8* %l_731, align 1, !tbaa !9
  %16 = bitcast i64* %l_744 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 0, i64* %l_744, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_749) #1
  store i8 28, i8* %l_749, align 1, !tbaa !9
  %17 = bitcast %union.U1* %l_850 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  %18 = bitcast %union.U1* %l_850 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast (%union.U1* @func_4.l_850 to i8*), i64 2, i32 2, i1 false)
  %19 = bitcast i32* %l_856 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %l_856, align 4, !tbaa !1
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i8 0, i8* @g_227, align 1, !tbaa !9
  br label %22

; <label>:22                                      ; preds = %74, %0
  %23 = load i8, i8* @g_227, align 1, !tbaa !9
  %24 = zext i8 %23 to i32
  %25 = icmp sle i32 %24, 5
  br i1 %25, label %26, label %79

; <label>:26                                      ; preds = %22
  %27 = bitcast i16* %l_624 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #1
  store i16 -1, i16* %l_624, align 2, !tbaa !10
  %28 = bitcast i32* %l_658 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 427924022, i32* %l_658, align 4, !tbaa !1
  %29 = bitcast [6 x i32]* %l_659 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %29) #1
  %30 = bitcast [3 x [3 x [7 x i8*]]]* %l_687 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %30) #1
  %31 = bitcast [3 x [3 x [7 x i8*]]]* %l_687 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast ([3 x [3 x [7 x i8*]]]* @func_4.l_687 to i8*), i64 504, i32 16, i1 false)
  %32 = bitcast %union.U1*** %l_698 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store %union.U1** null, %union.U1*** %l_698, align 8, !tbaa !5
  %33 = bitcast i8**** %l_721 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i8*** null, i8**** %l_721, align 8, !tbaa !5
  %34 = bitcast i32* %l_770 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -1969777126, i32* %l_770, align 4, !tbaa !1
  %35 = bitcast [7 x [1 x i8]]* %l_771 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %35) #1
  %36 = bitcast [7 x [1 x i8]]* %l_771 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([7 x [1 x i8]], [7 x [1 x i8]]* @func_4.l_771, i32 0, i32 0, i32 0), i64 7, i32 1, i1 false)
  %37 = bitcast [4 x [7 x [1 x i16]]]* %l_793 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %37) #1
  %38 = bitcast [4 x [7 x [1 x i16]]]* %l_793 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* bitcast ([4 x [7 x [1 x i16]]]* @func_4.l_793 to i8*), i64 56, i32 16, i1 false)
  %39 = bitcast %struct.S0*** %l_813 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store %struct.S0** @g_148, %struct.S0*** %l_813, align 8, !tbaa !5
  %40 = bitcast i64** %l_816 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 0), i64** %l_816, align 8, !tbaa !5
  %41 = bitcast i16* %l_829 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %41) #1
  store i16 30087, i16* %l_829, align 2, !tbaa !10
  %42 = bitcast %union.U1* %l_840 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %42) #1
  %43 = bitcast %union.U1* %l_840 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast (%union.U1* @func_4.l_840 to i8*), i64 2, i32 2, i1 false)
  %44 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %47

; <label>:47                                      ; preds = %54, %26
  %48 = load i32, i32* %i1, align 4, !tbaa !1
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %57

; <label>:50                                      ; preds = %47
  %51 = load i32, i32* %i1, align 4, !tbaa !1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %l_659, i32 0, i64 %52
  store i32 -1, i32* %53, align 4, !tbaa !1
  br label %54

; <label>:54                                      ; preds = %50
  %55 = load i32, i32* %i1, align 4, !tbaa !1
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %i1, align 4, !tbaa !1
  br label %47

; <label>:57                                      ; preds = %47
  %58 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %union.U1* %l_840 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %61) #1
  %62 = bitcast i16* %l_829 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %62) #1
  %63 = bitcast i64** %l_816 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.S0*** %l_813 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast [4 x [7 x [1 x i16]]]* %l_793 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %65) #1
  %66 = bitcast [7 x [1 x i8]]* %l_771 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %66) #1
  %67 = bitcast i32* %l_770 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i8**** %l_721 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %union.U1*** %l_698 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast [3 x [3 x [7 x i8*]]]* %l_687 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %70) #1
  %71 = bitcast [6 x i32]* %l_659 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %71) #1
  %72 = bitcast i32* %l_658 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i16* %l_624 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %73) #1
  br label %74

; <label>:74                                      ; preds = %57
  %75 = load i8, i8* @g_227, align 1, !tbaa !9
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, 1
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* @g_227, align 1, !tbaa !9
  br label %22

; <label>:79                                      ; preds = %22
  %80 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_133, i32 0, i32 0), align 4, !tbaa !1
  %81 = zext i32 %80 to i64
  %82 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %l_856 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast %union.U1* %l_850 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %85) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_749) #1
  %86 = bitcast i64* %l_744 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_731) #1
  %87 = bitcast [6 x i32*]* %l_716 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %87) #1
  %88 = bitcast %union.U1*** %l_697 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast [3 x [3 x i32]]* %l_630 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %89) #1
  %90 = bitcast i32* %l_623 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %l_615 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i8** %l_605 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  ret i64 %81
}

; Function Attrs: nounwind uwtable
define internal i32 @func_7(i64 %p_8, i16 %p_9.coerce) #0 {
  %1 = alloca i32, align 4
  %p_9 = alloca %union.U1, align 2
  %2 = alloca i64, align 8
  %l_71 = alloca i8*, align 8
  %l_72 = alloca i32, align 4
  %l_603 = alloca i32*, align 8
  %3 = alloca i32
  %l_73 = alloca i8, align 1
  %l_74 = alloca [2 x [1 x i32]], align 4
  %l_604 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_56 = alloca i32*, align 8
  %l_60 = alloca i8*, align 8
  %l_61 = alloca i8*, align 8
  %l_602 = alloca [9 x i32**], align 16
  %i1 = alloca i32, align 4
  %4 = alloca %struct.S0, align 4
  %5 = getelementptr %union.U1, %union.U1* %p_9, i32 0, i32 0
  store i16 %p_9.coerce, i16* %5, align 2
  store i64 %p_8, i64* %2, align 8, !tbaa !7
  %6 = bitcast i8** %l_71 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8* null, i8** %l_71, align 8, !tbaa !5
  %7 = bitcast i32* %l_72 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1, i32* %l_72, align 4, !tbaa !1
  %8 = bitcast i32** %l_603 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_143, i32** %l_603, align 8, !tbaa !5
  store i64 -22, i64* @g_40, align 8, !tbaa !7
  br label %9

; <label>:9                                       ; preds = %15, %0
  %10 = load i64, i64* @g_40, align 8, !tbaa !7
  %11 = icmp uge i64 %10, 27
  br i1 %11, label %12, label %20

; <label>:12                                      ; preds = %9
  %13 = load volatile i16, i16* getelementptr inbounds ([4 x [6 x [2 x i16]]], [4 x [6 x [2 x i16]]]* @g_10, i32 0, i64 0, i64 5, i64 1), align 2, !tbaa !10
  %14 = zext i16 %13 to i32
  store i32 %14, i32* %1
  store i32 1, i32* %3
  br label %143
                                                  ; No predecessors!
  %16 = load i64, i64* @g_40, align 8, !tbaa !7
  %17 = trunc i64 %16 to i32
  %18 = call i32 @safe_add_func_uint32_t_u_u(i32 %17, i32 9)
  %19 = zext i32 %18 to i64
  store i64 %19, i64* @g_40, align 8, !tbaa !7
  br label %9

; <label>:20                                      ; preds = %9
  store i64 0, i64* @g_40, align 8, !tbaa !7
  br label %21

; <label>:21                                      ; preds = %136, %20
  %22 = load i64, i64* @g_40, align 8, !tbaa !7
  %23 = icmp ule i64 %22, 59
  br i1 %23, label %24, label %139

; <label>:24                                      ; preds = %21
  call void @llvm.lifetime.start(i64 1, i8* %l_73) #1
  store i8 -106, i8* %l_73, align 1, !tbaa !9
  %25 = bitcast [2 x [1 x i32]]* %l_74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i32** %l_604 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i32* null, i32** %l_604, align 8, !tbaa !5
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %47, %24
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %50

; <label>:32                                      ; preds = %29
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %43, %32
  %34 = load i32, i32* %j, align 4, !tbaa !1
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %46

; <label>:36                                      ; preds = %33
  %37 = load i32, i32* %j, align 4, !tbaa !1
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %l_74, i32 0, i64 %40
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %41, i32 0, i64 %38
  store i32 -463366455, i32* %42, align 4, !tbaa !1
  br label %43

; <label>:43                                      ; preds = %36
  %44 = load i32, i32* %j, align 4, !tbaa !1
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %j, align 4, !tbaa !1
  br label %33

; <label>:46                                      ; preds = %33
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load i32, i32* %i, align 4, !tbaa !1
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %i, align 4, !tbaa !1
  br label %29

; <label>:50                                      ; preds = %29
  store i16 -24, i16* @g_39, align 2, !tbaa !10
  br label %51

; <label>:51                                      ; preds = %126, %50
  %52 = load i16, i16* @g_39, align 2, !tbaa !10
  %53 = zext i16 %52 to i32
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %131

; <label>:55                                      ; preds = %51
  %56 = bitcast i32** %l_56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i32* @g_57, i32** %l_56, align 8, !tbaa !5
  %57 = bitcast i8** %l_60 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i8* null, i8** %l_60, align 8, !tbaa !5
  %58 = bitcast i8** %l_61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), i8** %l_61, align 8, !tbaa !5
  %59 = bitcast [9 x i32**]* %l_602 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %59) #1
  %60 = bitcast [9 x i32**]* %l_602 to i8*
  call void @llvm.memset.p0i8.i64(i8* %60, i8 0, i64 72, i32 16, i1 false)
  %61 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = bitcast %struct.S0* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50, i32 0, i32 0), i64 24, i32 4, i1 true), !tbaa.struct !12
  %63 = load i32*, i32** %l_56, align 8, !tbaa !5
  %64 = load i8*, i8** %l_60, align 8, !tbaa !5
  %65 = icmp eq i8* %64, @g_18
  %66 = zext i1 %65 to i32
  %67 = load i8*, i8** %l_61, align 8, !tbaa !5
  store i8 8, i8* %67, align 1, !tbaa !9
  %68 = icmp sle i32 %66, 8
  %69 = zext i1 %68 to i32
  %70 = trunc i32 %69 to i8
  %71 = bitcast %union.U1* %p_9 to i16*
  %72 = load i16, i16* %71, align 2, !tbaa !10
  %73 = sext i16 %72 to i32
  %74 = bitcast %union.U1* %p_9 to i16*
  %75 = load i16, i16* %74, align 2, !tbaa !10
  %76 = load volatile i16, i16* getelementptr inbounds ([4 x [6 x [2 x i16]]], [4 x [6 x [2 x i16]]]* @g_10, i32 0, i64 3, i64 3, i64 1), align 2, !tbaa !10
  %77 = zext i16 %76 to i64
  %78 = icmp ne i64 8244283066550345571, %77
  %79 = zext i1 %78 to i32
  %80 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 1), align 4
  %81 = shl i32 %80, 7
  %82 = ashr i32 %81, 7
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %l_71, align 8, !tbaa !5
  %85 = bitcast %union.U1* %p_9 to i16*
  %86 = load i16, i16* %85, align 2, !tbaa !10
  %87 = sext i16 %86 to i32
  %88 = call zeroext i16 @func_27(i16 zeroext %75, i8 signext %83, i8* %84, i32 %87)
  %89 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %90 = trunc i64 %89 to i16
  %91 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %88, i16 zeroext %90)
  %92 = load i32, i32* %l_72, align 4, !tbaa !1
  %93 = trunc i32 %92 to i8
  %94 = load i32, i32* @g_57, align 4, !tbaa !1
  %95 = trunc i32 %94 to i8
  %96 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %93, i8 zeroext %95)
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = trunc i32 %99 to i16
  %101 = load i64, i64* %2, align 8, !tbaa !7
  %102 = trunc i64 %101 to i32
  %103 = call zeroext i16 @func_27(i16 zeroext %100, i8 signext -106, i8* @g_18, i32 %102)
  %104 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %103, i16 zeroext 13233)
  %105 = zext i16 %104 to i32
  %106 = xor i32 %73, %105
  %107 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %l_74, i32 0, i64 1
  %108 = getelementptr inbounds [1 x i32], [1 x i32]* %107, i32 0, i64 0
  store i32 %106, i32* %108, align 4, !tbaa !1
  %109 = sext i32 %106 to i64
  %110 = call i64 @safe_sub_func_int64_t_s_s(i64 %109, i64 2)
  %111 = trunc i64 %110 to i32
  %112 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %70, i32 %111)
  %113 = call i32* @func_51(i32* %63, i8 zeroext %112, i8* @g_18, i8* @g_18)
  store i32* %113, i32** %l_603, align 8, !tbaa !5
  store i32* %113, i32** %l_604, align 8, !tbaa !5
  %114 = bitcast %union.U1* %p_9 to i16*
  %115 = load i16, i16* %114, align 2, !tbaa !10
  %116 = icmp ne i16 %115, 0
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %55
  store i32 16, i32* %3
  br label %119

; <label>:118                                     ; preds = %55
  store i32 0, i32* %3
  br label %119

; <label>:119                                     ; preds = %118, %117
  %120 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast [9 x i32**]* %l_602 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %121) #1
  %122 = bitcast i8** %l_61 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i8** %l_60 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast i32** %l_56 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %148 [
    i32 0, label %125
    i32 16, label %126
  ]

; <label>:125                                     ; preds = %119
  br label %126

; <label>:126                                     ; preds = %125, %119
  %127 = load i16, i16* @g_39, align 2, !tbaa !10
  %128 = trunc i16 %127 to i8
  %129 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %128, i8 zeroext 5)
  %130 = zext i8 %129 to i16
  store i16 %130, i16* @g_39, align 2, !tbaa !10
  br label %51

; <label>:131                                     ; preds = %51
  %132 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32** %l_604 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast [2 x [1 x i32]]* %l_74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_73) #1
  br label %136

; <label>:136                                     ; preds = %131
  %137 = load i64, i64* @g_40, align 8, !tbaa !7
  %138 = add i64 %137, 1
  store i64 %138, i64* @g_40, align 8, !tbaa !7
  br label %21

; <label>:139                                     ; preds = %21
  %140 = load volatile i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to i32*), align 4
  %141 = shl i32 %140, 15
  %142 = ashr i32 %141, 18
  store i32 %142, i32* %1
  store i32 1, i32* %3
  br label %143

; <label>:143                                     ; preds = %139, %12
  %144 = bitcast i32** %l_603 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i32* %l_72 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i8** %l_71 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = load i32, i32* %1
  ret i32 %147

; <label>:148                                     ; preds = %119
  unreachable
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_mod_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8, i8* %2, align 1, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %2, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_div_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32, i32* %1, align 4, !tbaa !1
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = sdiv i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @func_27(i16 zeroext %p_28, i8 signext %p_29, i8* %p_30, i32 %p_31) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i16 %p_28, i16* %1, align 2, !tbaa !10
  store i8 %p_29, i8* %2, align 1, !tbaa !9
  store i8* %p_30, i8** %3, align 8, !tbaa !5
  store i32 %p_31, i32* %4, align 4, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !1
  %6 = trunc i32 %5 to i16
  ret i16 %6
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8, !tbaa !7
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = udiv i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_add_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = add i32 %3, %4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32* @func_51(i32* %p_52, i8 zeroext %p_53, i8* %p_54, i8* %p_55) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %l_75 = alloca i32*, align 8
  %l_76 = alloca i32*, align 8
  %l_77 = alloca i32*, align 8
  %l_78 = alloca i32*, align 8
  %l_79 = alloca [1 x i32*], align 8
  %l_82 = alloca i8, align 1
  %l_91 = alloca %union.U1, align 2
  %l_547 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_100 = alloca i32, align 4
  %l_357 = alloca %union.U1, align 2
  %l_358 = alloca i16*, align 8
  %l_542 = alloca i16*, align 8
  %l_543 = alloca i16*, align 8
  %l_544 = alloca [9 x i16*], align 16
  %l_545 = alloca i64*, align 8
  %l_592 = alloca i8*, align 8
  %l_601 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %6 = alloca i32
  %l_550 = alloca i32, align 4
  %l_553 = alloca i32, align 4
  %l_561 = alloca i32, align 4
  %l_560 = alloca i64, align 8
  %l_586 = alloca i8*, align 8
  %l_585 = alloca i8**, align 8
  %l_587 = alloca i8**, align 8
  %l_588 = alloca i8**, align 8
  %l_589 = alloca i8**, align 8
  %l_591 = alloca i8*, align 8
  %l_590 = alloca i8**, align 8
  %l_599 = alloca i8*, align 8
  %l_598 = alloca i8**, align 8
  %l_600 = alloca i16*, align 8
  store i32* %p_52, i32** %2, align 8, !tbaa !5
  store i8 %p_53, i8* %3, align 1, !tbaa !9
  store i8* %p_54, i8** %4, align 8, !tbaa !5
  store i8* %p_55, i8** %5, align 8, !tbaa !5
  %7 = bitcast i32** %l_75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_57, i32** %l_75, align 8, !tbaa !5
  %8 = bitcast i32** %l_76 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_57, i32** %l_76, align 8, !tbaa !5
  %9 = bitcast i32** %l_77 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_57, i32** %l_77, align 8, !tbaa !5
  %10 = bitcast i32** %l_78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_57, i32** %l_78, align 8, !tbaa !5
  %11 = bitcast [1 x i32*]* %l_79 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_82) #1
  store i8 9, i8* %l_82, align 1, !tbaa !9
  %12 = bitcast %union.U1* %l_91 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  %13 = bitcast %union.U1* %l_91 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 2, i32 2, i1 false)
  %14 = bitcast i32* %l_547 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 418773358, i32* %l_547, align 4, !tbaa !1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %23, %0
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_79, i32 0, i64 %21
  store i32* @g_57, i32** %22, align 8, !tbaa !5
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:26                                      ; preds = %16
  %27 = load volatile i64, i64* @g_84, align 8, !tbaa !7
  %28 = add i64 %27, 1
  store volatile i64 %28, i64* @g_84, align 8, !tbaa !7
  store i16 13, i16* @g_42, align 2, !tbaa !10
  br label %29

; <label>:29                                      ; preds = %394, %26
  %30 = load i16, i16* @g_42, align 2, !tbaa !10
  %31 = zext i16 %30 to i32
  %32 = icmp sge i32 %31, 56
  br i1 %32, label %33, label %397

; <label>:33                                      ; preds = %29
  %34 = bitcast i32* %l_100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 3, i32* %l_100, align 4, !tbaa !1
  %35 = bitcast %union.U1* %l_357 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %35) #1
  %36 = bitcast %union.U1* %l_357 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* bitcast (%union.U1* @func_51.l_357 to i8*), i64 2, i32 2, i1 false)
  %37 = bitcast i16** %l_358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i16* null, i16** %l_358, align 8, !tbaa !5
  %38 = bitcast i16** %l_542 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %l_542, align 8, !tbaa !5
  %39 = bitcast i16** %l_543 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i16* null, i16** %l_543, align 8, !tbaa !5
  %40 = bitcast [9 x i16*]* %l_544 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %40) #1
  %41 = getelementptr inbounds [9 x i16*], [9 x i16*]* %l_544, i64 0, i64 0
  %42 = bitcast %union.U1* %l_357 to i16*
  store i16* %42, i16** %41, !tbaa !5
  %43 = getelementptr inbounds i16*, i16** %41, i64 1
  %44 = bitcast %union.U1* %l_357 to i16*
  store i16* %44, i16** %43, !tbaa !5
  %45 = getelementptr inbounds i16*, i16** %43, i64 1
  %46 = bitcast %union.U1* %l_357 to i16*
  store i16* %46, i16** %45, !tbaa !5
  %47 = getelementptr inbounds i16*, i16** %45, i64 1
  %48 = bitcast %union.U1* %l_357 to i16*
  store i16* %48, i16** %47, !tbaa !5
  %49 = getelementptr inbounds i16*, i16** %47, i64 1
  %50 = bitcast %union.U1* %l_357 to i16*
  store i16* %50, i16** %49, !tbaa !5
  %51 = getelementptr inbounds i16*, i16** %49, i64 1
  %52 = bitcast %union.U1* %l_357 to i16*
  store i16* %52, i16** %51, !tbaa !5
  %53 = getelementptr inbounds i16*, i16** %51, i64 1
  %54 = bitcast %union.U1* %l_357 to i16*
  store i16* %54, i16** %53, !tbaa !5
  %55 = getelementptr inbounds i16*, i16** %53, i64 1
  %56 = bitcast %union.U1* %l_357 to i16*
  store i16* %56, i16** %55, !tbaa !5
  %57 = getelementptr inbounds i16*, i16** %55, i64 1
  %58 = bitcast %union.U1* %l_357 to i16*
  store i16* %58, i16** %57, !tbaa !5
  %59 = bitcast i64** %l_545 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  store i64* getelementptr inbounds ([3 x [8 x i64]], [3 x [8 x i64]]* @g_546, i32 0, i64 2, i64 2), i64** %l_545, align 8, !tbaa !5
  %60 = bitcast i8** %l_592 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  store i8* null, i8** %l_592, align 8, !tbaa !5
  %61 = bitcast i32* %l_601 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  store i32 12023546, i32* %l_601, align 4, !tbaa !1
  %62 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i32, i32* getelementptr inbounds ([6 x [4 x i32]], [6 x [4 x i32]]* @func_51.l_92, i32 0, i64 2, i64 2), align 4, !tbaa !1
  %65 = load i32, i32* %l_100, align 4, !tbaa !1
  %66 = trunc i32 %65 to i16
  %67 = load i32*, i32** %l_76, align 8, !tbaa !5
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = load i8, i8* %3, align 1, !tbaa !9
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = load volatile i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to i32*), align 4
  %73 = and i32 %72, 7
  %74 = trunc i32 %73 to i16
  %75 = load i32, i32* getelementptr inbounds ([6 x [4 x i32]], [6 x [4 x i32]]* @func_51.l_92, i32 0, i64 2, i64 2), align 4, !tbaa !1
  %76 = trunc i32 %75 to i8
  %77 = call signext i8 @func_113(i16 zeroext %74, i8 signext %76)
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %71, %78
  %80 = zext i1 %79 to i32
  %81 = trunc i32 %80 to i16
  %82 = load i32, i32* %l_100, align 4, !tbaa !1
  %83 = trunc i32 %82 to i8
  %84 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_133, i32 0, i32 0), align 8
  %85 = shl i32 %84, 3
  %86 = ashr i32 %85, 3
  %87 = call zeroext i16 @func_27(i16 zeroext %81, i8 signext %83, i8* %l_82, i32 %86)
  %88 = zext i16 %87 to i64
  %89 = xor i64 %88, 0
  %90 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_117, i32 0, i64 1), align 4, !tbaa !1
  %91 = sext i32 %90 to i64
  %92 = xor i64 %89, %91
  %93 = call i64 @safe_add_func_uint64_t_u_u(i64 4, i64 %92)
  %94 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), align 8, !tbaa !7
  %95 = icmp ult i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* getelementptr inbounds ([6 x [4 x i32]], [6 x [4 x i32]]* @func_51.l_92, i32 0, i64 2, i64 2), align 4, !tbaa !1
  %98 = icmp ne i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = trunc i32 %99 to i16
  %101 = load i16*, i16** %l_358, align 8, !tbaa !5
  %102 = getelementptr %union.U1, %union.U1* %l_357, i32 0, i32 0
  %103 = load i16, i16* %102, align 2
  %104 = call zeroext i16 @func_105(i16 signext %100, i16 %103, i16* %101)
  %105 = load i32, i32* getelementptr inbounds ([6 x [4 x i32]], [6 x [4 x i32]]* @func_51.l_92, i32 0, i64 5, i64 0), align 4, !tbaa !1
  %106 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %104, i32 %105)
  %107 = zext i16 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

; <label>:109                                     ; preds = %33
  %110 = load i32, i32* @g_251, align 4, !tbaa !1
  %111 = icmp ne i32 %110, 0
  br label %112

; <label>:112                                     ; preds = %109, %33
  %113 = phi i1 [ true, %33 ], [ %111, %109 ]
  %114 = zext i1 %113 to i32
  %115 = trunc i32 %114 to i16
  %116 = load i16*, i16** %l_542, align 8, !tbaa !5
  store i16 %115, i16* %116, align 2, !tbaa !10
  %117 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %115, i32 1)
  %118 = sext i16 %117 to i32
  %119 = load i32*, i32** %l_75, align 8, !tbaa !5
  store i32 %118, i32* %119, align 4, !tbaa !1
  %120 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %66, i32 %118)
  %121 = zext i16 %120 to i32
  %122 = load i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to i32*), align 4
  %123 = shl i32 %122, 15
  %124 = ashr i32 %123, 18
  %125 = or i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = call i64 @safe_sub_func_int64_t_s_s(i64 %126, i64 0)
  %128 = call i64 @safe_div_func_uint64_t_u_u(i64 49738, i64 %127)
  %129 = load i32, i32* %l_100, align 4, !tbaa !1
  %130 = zext i32 %129 to i64
  %131 = icmp eq i64 %128, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to i32*), align 4
  %134 = shl i32 %133, 15
  %135 = ashr i32 %134, 18
  %136 = icmp ne i32 %132, %135
  %137 = zext i1 %136 to i32
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %l_545, align 8, !tbaa !5
  %140 = load i64, i64* %139, align 8, !tbaa !7
  %141 = or i64 %140, %138
  store i64 %141, i64* %139, align 8, !tbaa !7
  %142 = icmp sge i64 7, %141
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %l_547, align 4, !tbaa !1
  %145 = icmp sge i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = icmp ugt i32 %64, %146
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = icmp uge i64 %149, 65535
  %151 = zext i1 %150 to i32
  %152 = trunc i32 %151 to i8
  %153 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %152, i32 5)
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %155, label %158

; <label>:155                                     ; preds = %112
  %156 = load volatile i32**, i32*** @g_356, align 8, !tbaa !5
  %157 = load i32*, i32** %156, align 8, !tbaa !5
  store i32* %157, i32** %1
  store i32 1, i32* %6
  br label %381

; <label>:158                                     ; preds = %112
  %159 = bitcast i32* %l_550 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  store i32 -641876127, i32* %l_550, align 4, !tbaa !1
  %160 = bitcast i32* %l_553 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #1
  store i32 746838422, i32* %l_553, align 4, !tbaa !1
  %161 = bitcast i32* %l_561 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  store i32 3, i32* %l_561, align 4, !tbaa !1
  store i16 6, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  br label %162

; <label>:162                                     ; preds = %371, %158
  %163 = load i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  %164 = sext i16 %163 to i32
  %165 = icmp eq i32 %164, -13
  br i1 %165, label %166, label %376

; <label>:166                                     ; preds = %162
  %167 = bitcast i64* %l_560 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  store i64 6, i64* %l_560, align 8, !tbaa !7
  %168 = bitcast i8** %l_586 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 0), i8** %l_586, align 8, !tbaa !5
  %169 = bitcast i8*** %l_585 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  store i8** %l_586, i8*** %l_585, align 8, !tbaa !5
  %170 = bitcast i8*** %l_587 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i8** null, i8*** %l_587, align 8, !tbaa !5
  %171 = bitcast i8*** %l_588 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  store i8** null, i8*** %l_588, align 8, !tbaa !5
  %172 = bitcast i8*** %l_589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #1
  store i8** null, i8*** %l_589, align 8, !tbaa !5
  %173 = bitcast i8** %l_591 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  store i8* @g_227, i8** %l_591, align 8, !tbaa !5
  %174 = bitcast i8*** %l_590 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  store i8** %l_591, i8*** %l_590, align 8, !tbaa !5
  %175 = bitcast i8** %l_599 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i8* null, i8** %l_599, align 8, !tbaa !5
  %176 = bitcast i8*** %l_598 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #1
  store i8** %l_599, i8*** %l_598, align 8, !tbaa !5
  %177 = bitcast i16** %l_600 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  store i16* @g_430, i16** %l_600, align 8, !tbaa !5
  %178 = load i32, i32* %l_550, align 4, !tbaa !1
  %179 = add i32 %178, -1
  store i32 %179, i32* %l_550, align 4, !tbaa !1
  %180 = load i32, i32* getelementptr inbounds ([6 x [4 x i32]], [6 x [4 x i32]]* @func_51.l_92, i32 0, i64 2, i64 3), align 4, !tbaa !1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %166
  store i32 10, i32* %6
  br label %358

; <label>:183                                     ; preds = %166
  %184 = load i32, i32* %l_553, align 4, !tbaa !1
  %185 = load i8, i8* %3, align 1, !tbaa !9
  %186 = zext i8 %185 to i32
  %187 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_134, i32 0, i32 0), align 4, !tbaa !1
  %188 = and i32 %186, %187
  %189 = load i8, i8* %3, align 1, !tbaa !9
  %190 = zext i8 %189 to i64
  %191 = or i64 %190, -1
  %192 = load i64, i64* %l_560, align 8, !tbaa !7
  %193 = trunc i64 %192 to i16
  %194 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_477, i32 0, i32 0), align 8
  %195 = shl i32 %194, 3
  %196 = ashr i32 %195, 3
  store i32 %196, i32* %l_561, align 4, !tbaa !1
  %197 = trunc i32 %196 to i16
  store i16 %197, i16* @g_150, align 2, !tbaa !10
  %198 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %193, i16 zeroext %197)
  %199 = zext i16 %198 to i32
  %200 = bitcast %union.U1* %l_357 to i16*
  %201 = load i16, i16* %200, align 2, !tbaa !10
  %202 = sext i16 %201 to i32
  %203 = icmp sge i32 %199, %202
  %204 = zext i1 %203 to i32
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %4, align 8, !tbaa !5
  store i8 %205, i8* %206, align 1, !tbaa !9
  %207 = sext i8 %205 to i32
  %208 = xor i32 %207, -1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

; <label>:210                                     ; preds = %183
  %211 = load i32*, i32** %2, align 8, !tbaa !5
  %212 = load i32, i32* %211, align 4, !tbaa !1
  %213 = icmp ne i32 %212, 0
  br label %214

; <label>:214                                     ; preds = %210, %183
  %215 = phi i1 [ false, %183 ], [ %213, %210 ]
  %216 = zext i1 %215 to i32
  %217 = load i8, i8* @g_562, align 1, !tbaa !9
  %218 = sext i8 %217 to i32
  %219 = and i32 %218, %216
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* @g_562, align 1, !tbaa !9
  %221 = sext i8 %220 to i16
  %222 = load i8, i8* %3, align 1, !tbaa !9
  %223 = zext i8 %222 to i16
  %224 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %221, i16 signext %223)
  %225 = sext i16 %224 to i32
  %226 = load i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  %227 = sext i16 %226 to i32
  %228 = or i32 %225, %227
  br i1 true, label %233, label %229

; <label>:229                                     ; preds = %214
  %230 = load i8, i8* %3, align 1, !tbaa !9
  %231 = zext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br label %233

; <label>:233                                     ; preds = %229, %214
  %234 = phi i1 [ true, %214 ], [ %232, %229 ]
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %l_553, align 4, !tbaa !1
  %237 = xor i32 %235, %236
  %238 = icmp ne i32 %188, %237
  %239 = zext i1 %238 to i32
  %240 = xor i32 %184, %239
  %241 = load i32*, i32** %l_78, align 8, !tbaa !5
  store i32 %240, i32* %241, align 4, !tbaa !1
  %242 = load i32*, i32** @g_359, align 8, !tbaa !5
  %243 = load i32, i32* %242, align 4, !tbaa !1
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 4, !tbaa !1
  %245 = load i8*, i8** %5, align 8, !tbaa !5
  %246 = load i8, i8* %245, align 1, !tbaa !9
  %247 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %246, i32 2)
  %248 = sext i8 %247 to i16
  %249 = load i8, i8* %3, align 1, !tbaa !9
  %250 = zext i8 %249 to i64
  %251 = icmp slt i64 -1, %250
  %252 = zext i1 %251 to i32
  %253 = trunc i32 %252 to i16
  %254 = load i32, i32* %l_553, align 4, !tbaa !1
  %255 = trunc i32 %254 to i8
  %256 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %255, i32 0)
  %257 = zext i8 %256 to i16
  %258 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %253, i16 zeroext %257)
  %259 = zext i16 %258 to i32
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %335, label %261

; <label>:261                                     ; preds = %233
  %262 = load i32*, i32** %2, align 8, !tbaa !5
  %263 = load i32, i32* %262, align 4, !tbaa !1
  %264 = load i8**, i8*** %l_585, align 8, !tbaa !5
  store i8* null, i8** %264, align 8, !tbaa !5
  %265 = load i8**, i8*** %l_590, align 8, !tbaa !5
  store i8* null, i8** %265, align 8, !tbaa !5
  store i8* null, i8** %l_592, align 8, !tbaa !5
  %266 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @func_51.l_595, i32 0, i64 8), align 4, !tbaa !1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

; <label>:268                                     ; preds = %261
  br label %269

; <label>:269                                     ; preds = %268, %261
  %270 = phi i1 [ true, %261 ], [ true, %268 ]
  %271 = zext i1 %270 to i32
  %272 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_326 to i8*), align 1, !tbaa !9
  %273 = load i64, i64* %l_560, align 8, !tbaa !7
  %274 = trunc i64 %273 to i32
  %275 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %272, i32 %274)
  %276 = zext i8 %275 to i32
  %277 = load i32, i32* %l_100, align 4, !tbaa !1
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %280, label %279

; <label>:279                                     ; preds = %269
  br label %280

; <label>:280                                     ; preds = %279, %269
  %281 = phi i1 [ true, %269 ], [ true, %279 ]
  %282 = zext i1 %281 to i32
  %283 = load i8*, i8** %4, align 8, !tbaa !5
  %284 = load i8, i8* %283, align 1, !tbaa !9
  %285 = sext i8 %284 to i32
  %286 = and i32 %282, %285
  %287 = call i32 @safe_mod_func_int32_t_s_s(i32 %271, i32 %286)
  %288 = load i8**, i8*** %l_598, align 8, !tbaa !5
  store i8* null, i8** %288, align 8, !tbaa !5
  %289 = load i32, i32* getelementptr inbounds ([6 x [4 x i32]], [6 x [4 x i32]]* @func_51.l_92, i32 0, i64 2, i64 2), align 4, !tbaa !1
  %290 = trunc i32 %289 to i8
  %291 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %290, i32 3)
  %292 = sext i8 %291 to i32
  %293 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 0), align 1, !tbaa !9
  %294 = zext i8 %293 to i32
  %295 = icmp ne i32 %292, %294
  br i1 %295, label %300, label %296

; <label>:296                                     ; preds = %280
  %297 = load i32, i32* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to i32*), align 4
  %298 = and i32 %297, 7
  %299 = icmp ne i32 %298, 0
  br label %300

; <label>:300                                     ; preds = %296, %280
  %301 = phi i1 [ true, %280 ], [ %299, %296 ]
  %302 = zext i1 %301 to i32
  %303 = trunc i32 %302 to i8
  %304 = load i8, i8* %3, align 1, !tbaa !9
  %305 = zext i8 %304 to i32
  %306 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %303, i32 %305)
  %307 = sext i8 %306 to i32
  %308 = load i8*, i8** %4, align 8, !tbaa !5
  %309 = load i8, i8* %308, align 1, !tbaa !9
  %310 = sext i8 %309 to i32
  %311 = icmp sge i32 %307, %310
  %312 = zext i1 %311 to i32
  %313 = trunc i32 %312 to i16
  %314 = load i32, i32* %l_553, align 4, !tbaa !1
  %315 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %313, i32 %314)
  %316 = sext i16 %315 to i32
  %317 = call i32 @safe_div_func_uint32_t_u_u(i32 %316, i32 1)
  %318 = zext i32 %317 to i64
  %319 = call i64 @safe_add_func_int64_t_s_s(i64 %318, i64 -3144345903213450264)
  %320 = load i32, i32* %l_553, align 4, !tbaa !1
  %321 = sext i32 %320 to i64
  %322 = call i64 @safe_mod_func_uint64_t_u_u(i64 %319, i64 %321)
  %323 = load i64, i64* %l_560, align 8, !tbaa !7
  %324 = or i64 %322, %323
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %330, label %326

; <label>:326                                     ; preds = %300
  %327 = load i8, i8* %3, align 1, !tbaa !9
  %328 = zext i8 %327 to i32
  %329 = icmp ne i32 %328, 0
  br label %330

; <label>:330                                     ; preds = %326, %300
  %331 = phi i1 [ true, %300 ], [ %329, %326 ]
  %332 = zext i1 %331 to i32
  %333 = sext i32 %332 to i64
  %334 = icmp ule i64 %333, 249
  br label %335

; <label>:335                                     ; preds = %330, %233
  %336 = phi i1 [ true, %233 ], [ %334, %330 ]
  %337 = zext i1 %336 to i32
  %338 = trunc i32 %337 to i8
  %339 = load i8, i8* %3, align 1, !tbaa !9
  %340 = zext i8 %339 to i32
  %341 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %338, i32 %340)
  %342 = sext i8 %341 to i16
  %343 = load i16*, i16** %l_600, align 8, !tbaa !5
  store i16 %342, i16* %343, align 2, !tbaa !10
  %344 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %248, i16 signext %342)
  %345 = sext i16 %344 to i32
  %346 = load i32*, i32** %2, align 8, !tbaa !5
  %347 = load i32, i32* %346, align 4, !tbaa !1
  %348 = icmp slt i32 %345, %347
  br i1 %348, label %349, label %353

; <label>:349                                     ; preds = %335
  %350 = load i32*, i32** %2, align 8, !tbaa !5
  %351 = load i32, i32* %350, align 4, !tbaa !1
  %352 = icmp ne i32 %351, 0
  br label %353

; <label>:353                                     ; preds = %349, %335
  %354 = phi i1 [ false, %335 ], [ %352, %349 ]
  %355 = zext i1 %354 to i32
  %356 = load i32, i32* %l_601, align 4, !tbaa !1
  %357 = xor i32 %356, %355
  store i32 %357, i32* %l_601, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %358

; <label>:358                                     ; preds = %353, %182
  %359 = bitcast i16** %l_600 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %360 = bitcast i8*** %l_598 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  %361 = bitcast i8** %l_599 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #1
  %362 = bitcast i8*** %l_590 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %362) #1
  %363 = bitcast i8** %l_591 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #1
  %364 = bitcast i8*** %l_589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #1
  %365 = bitcast i8*** %l_588 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %365) #1
  %366 = bitcast i8*** %l_587 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %366) #1
  %367 = bitcast i8*** %l_585 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #1
  %368 = bitcast i8** %l_586 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = bitcast i64* %l_560 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %409 [
    i32 0, label %370
    i32 10, label %371
  ]

; <label>:370                                     ; preds = %358
  br label %371

; <label>:371                                     ; preds = %370, %358
  %372 = load i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  %373 = trunc i16 %372 to i8
  %374 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %373, i8 signext 5)
  %375 = sext i8 %374 to i16
  store i16 %375, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  br label %162

; <label>:376                                     ; preds = %162
  %377 = bitcast i32* %l_561 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %l_553 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast i32* %l_550 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %379) #1
  br label %380

; <label>:380                                     ; preds = %376
  store i32 0, i32* %6
  br label %381

; <label>:381                                     ; preds = %380, %155
  %382 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #1
  %384 = bitcast i32* %l_601 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %384) #1
  %385 = bitcast i8** %l_592 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %385) #1
  %386 = bitcast i64** %l_545 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %386) #1
  %387 = bitcast [9 x i16*]* %l_544 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %387) #1
  %388 = bitcast i16** %l_543 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %388) #1
  %389 = bitcast i16** %l_542 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %389) #1
  %390 = bitcast i16** %l_358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %390) #1
  %391 = bitcast %union.U1* %l_357 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %391) #1
  %392 = bitcast i32* %l_100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %cleanup.dest.2 = load i32, i32* %6
  switch i32 %cleanup.dest.2, label %399 [
    i32 0, label %393
  ]

; <label>:393                                     ; preds = %381
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load i16, i16* @g_42, align 2, !tbaa !10
  %396 = add i16 %395, 1
  store i16 %396, i16* @g_42, align 2, !tbaa !10
  br label %29

; <label>:397                                     ; preds = %29
  %398 = load i32*, i32** %l_76, align 8, !tbaa !5
  store i32* %398, i32** %1
  store i32 1, i32* %6
  br label %399

; <label>:399                                     ; preds = %397, %381
  %400 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #1
  %401 = bitcast i32* %l_547 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast %union.U1* %l_91 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %402) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_82) #1
  %403 = bitcast [1 x i32*]* %l_79 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %403) #1
  %404 = bitcast i32** %l_78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #1
  %405 = bitcast i32** %l_77 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #1
  %406 = bitcast i32** %l_76 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %406) #1
  %407 = bitcast i32** %l_75 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %407) #1
  %408 = load i32*, i32** %1
  ret i32* %408

; <label>:409                                     ; preds = %358
  unreachable
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i8
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %2, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 65535, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = zext i16 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i16
  ret i16 %24
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 32767, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @func_105(i16 signext %p_106, i16 %p_107.coerce, i16* %p_108) #0 {
  %1 = alloca i16, align 2
  %p_107 = alloca %union.U1, align 2
  %2 = alloca i16, align 2
  %3 = alloca i16*, align 8
  %l_360 = alloca i32**, align 8
  %l_361 = alloca [5 x [6 x [4 x i32**]]], align 16
  %l_363 = alloca i8, align 1
  %l_397 = alloca [9 x [5 x i32]], align 16
  %l_405 = alloca %union.U1, align 2
  %l_456 = alloca i32, align 4
  %l_502 = alloca i8*, align 8
  %l_508 = alloca %union.U1*, align 8
  %l_524 = alloca %union.U1*, align 8
  %l_523 = alloca %union.U1**, align 8
  %l_528 = alloca %struct.S0**, align 8
  %l_529 = alloca i32, align 4
  %l_537 = alloca [5 x i16*], align 16
  %l_538 = alloca i32*, align 8
  %l_539 = alloca i32*, align 8
  %l_541 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_362 = alloca i64, align 8
  %l_389 = alloca i32, align 4
  %l_392 = alloca i32, align 4
  %l_394 = alloca [9 x i32], align 16
  %l_421 = alloca i32*, align 8
  %l_507 = alloca %union.U1*, align 8
  %l_506 = alloca [3 x %union.U1**], align 16
  %i1 = alloca i32, align 4
  %l_374 = alloca i8*, align 8
  %l_375 = alloca i8*, align 8
  %l_380 = alloca i8*, align 8
  %l_385 = alloca [4 x i32], align 16
  %l_395 = alloca [2 x [3 x i8]], align 1
  %l_396 = alloca i8, align 1
  %l_427 = alloca [10 x [9 x i64*]], align 16
  %l_428 = alloca i32, align 4
  %l_431 = alloca i32**, align 8
  %l_476 = alloca [5 x [1 x %union.U2*]], align 16
  %l_475 = alloca %union.U2**, align 8
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l_386 = alloca i64*, align 8
  %l_390 = alloca i32, align 4
  %l_391 = alloca i32, align 4
  %l_393 = alloca [9 x i32], align 16
  %l_400 = alloca i16, align 2
  %i4 = alloca i32, align 4
  %4 = alloca i32
  %l_422 = alloca i32**, align 8
  %l_423 = alloca i32**, align 8
  %l_426 = alloca i64*, align 8
  %l_429 = alloca [4 x i16*], align 16
  %l_457 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %l_439 = alloca [2 x i8], align 1
  %l_455 = alloca [7 x [10 x %struct.S0**]], align 16
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_454 = alloca i8*, align 8
  %i8 = alloca i32, align 4
  %l_460 = alloca [1 x [7 x i32]], align 16
  %l_478 = alloca %union.U2***, align 8
  %l_482 = alloca [6 x [3 x i16*]], align 16
  %l_483 = alloca i8, align 1
  %l_503 = alloca i8**, align 8
  %l_504 = alloca i32**, align 8
  %l_505 = alloca i64, align 8
  %i11 = alloca i32, align 4
  %j12 = alloca i32, align 4
  %l_512 = alloca %struct.S0**, align 8
  %l_511 = alloca %struct.S0***, align 8
  %l_510 = alloca [10 x [9 x %struct.S0****]], align 16
  %l_519 = alloca i32, align 4
  %l_520 = alloca %union.U1**, align 8
  %l_521 = alloca [8 x [1 x %union.U1**]], align 16
  %l_522 = alloca [4 x %union.U1***], align 16
  %l_531 = alloca i32, align 4
  %l_532 = alloca [8 x [10 x i32]], align 16
  %i17 = alloca i32, align 4
  %j18 = alloca i32, align 4
  %5 = getelementptr %union.U1, %union.U1* %p_107, i32 0, i32 0
  store i16 %p_107.coerce, i16* %5, align 2
  store i16 %p_106, i16* %2, align 2, !tbaa !10
  store i16* %p_108, i16** %3, align 8, !tbaa !5
  %6 = bitcast i32*** %l_360 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_196, i32 0, i64 1), i32*** %l_360, align 8, !tbaa !5
  %7 = bitcast [5 x [6 x [4 x i32**]]]* %l_361 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %7) #1
  %8 = bitcast [5 x [6 x [4 x i32**]]]* %l_361 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([5 x [6 x [4 x i32**]]]* @func_105.l_361 to i8*), i64 960, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_363) #1
  store i8 0, i8* %l_363, align 1, !tbaa !9
  %9 = bitcast [9 x [5 x i32]]* %l_397 to i8*
  call void @llvm.lifetime.start(i64 180, i8* %9) #1
  %10 = bitcast %union.U1* %l_405 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = bitcast %union.U1* %l_405 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast (%union.U1* @func_105.l_405 to i8*), i64 2, i32 2, i1 false)
  %12 = bitcast i32* %l_456 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1428180546, i32* %l_456, align 4, !tbaa !1
  %13 = bitcast i8** %l_502 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i8* @g_246, i8** %l_502, align 8, !tbaa !5
  %14 = bitcast %union.U1** %l_508 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %union.U1* %l_405, %union.U1** %l_508, align 8, !tbaa !5
  %15 = bitcast %union.U1** %l_524 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %union.U1* getelementptr inbounds ([4 x %union.U1], [4 x %union.U1]* @g_525, i32 0, i64 0), %union.U1** %l_524, align 8, !tbaa !5
  %16 = bitcast %union.U1*** %l_523 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store %union.U1** %l_524, %union.U1*** %l_523, align 8, !tbaa !5
  %17 = bitcast %struct.S0*** %l_528 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store %struct.S0** @g_148, %struct.S0*** %l_528, align 8, !tbaa !5
  %18 = bitcast i32* %l_529 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %l_529, align 4, !tbaa !1
  %19 = bitcast [5 x i16*]* %l_537 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %19) #1
  %20 = bitcast i32** %l_538 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32* null, i32** %l_538, align 8, !tbaa !5
  %21 = bitcast i32** %l_539 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32* getelementptr inbounds ([2 x [8 x i32]], [2 x [8 x i32]]* @g_540, i32 0, i64 1, i64 4), i32** %l_539, align 8, !tbaa !5
  %22 = bitcast i32* %l_541 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 -1, i32* %l_541, align 4, !tbaa !1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %44, %0
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = icmp slt i32 %27, 9
  br i1 %28, label %29, label %47

; <label>:29                                      ; preds = %26
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %40, %29
  %31 = load i32, i32* %j, align 4, !tbaa !1
  %32 = icmp slt i32 %31, 5
  br i1 %32, label %33, label %43

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %j, align 4, !tbaa !1
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [9 x [5 x i32]], [9 x [5 x i32]]* %l_397, i32 0, i64 %37
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %38, i32 0, i64 %35
  store i32 -5, i32* %39, align 4, !tbaa !1
  br label %40

; <label>:40                                      ; preds = %33
  %41 = load i32, i32* %j, align 4, !tbaa !1
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %j, align 4, !tbaa !1
  br label %30

; <label>:43                                      ; preds = %30
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:47                                      ; preds = %26
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %55, %47
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = icmp slt i32 %49, 5
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %48
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x i16*], [5 x i16*]* %l_537, i32 0, i64 %53
  store i16* @g_430, i16** %54, align 8, !tbaa !5
  br label %55

; <label>:55                                      ; preds = %51
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %i, align 4, !tbaa !1
  br label %48

; <label>:58                                      ; preds = %48
  br label %59

; <label>:59                                      ; preds = %830, %58
  %60 = load i32*, i32** @g_359, align 8, !tbaa !5
  %61 = load i32**, i32*** %l_360, align 8, !tbaa !5
  store i32* %60, i32** %61, align 8, !tbaa !5
  store volatile i32* %60, i32** @g_142, align 8, !tbaa !5
  %62 = load i16, i16* %2, align 2, !tbaa !10
  %63 = icmp ne i16 %62, 0
  br i1 %63, label %64, label %840

; <label>:64                                      ; preds = %59
  %65 = bitcast i64* %l_362 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  store i64 -2011329830935893187, i64* %l_362, align 8, !tbaa !7
  %66 = bitcast i32* %l_389 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  store i32 -6, i32* %l_389, align 4, !tbaa !1
  %67 = bitcast i32* %l_392 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  store i32 2140184202, i32* %l_392, align 4, !tbaa !1
  %68 = bitcast [9 x i32]* %l_394 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %68) #1
  %69 = bitcast [9 x i32]* %l_394 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast ([9 x i32]* @func_105.l_394 to i8*), i64 36, i32 16, i1 false)
  %70 = bitcast i32** %l_421 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i32* @g_251, i32** %l_421, align 8, !tbaa !5
  %71 = bitcast %union.U1** %l_507 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  store %union.U1* %l_405, %union.U1** %l_507, align 8, !tbaa !5
  %72 = bitcast [3 x %union.U1**]* %l_506 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %72) #1
  %73 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %74

; <label>:74                                      ; preds = %81, %64
  %75 = load i32, i32* %i1, align 4, !tbaa !1
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %84

; <label>:77                                      ; preds = %74
  %78 = load i32, i32* %i1, align 4, !tbaa !1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x %union.U1**], [3 x %union.U1**]* %l_506, i32 0, i64 %79
  store %union.U1** %l_507, %union.U1*** %80, align 8, !tbaa !5
  br label %81

; <label>:81                                      ; preds = %77
  %82 = load i32, i32* %i1, align 4, !tbaa !1
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %i1, align 4, !tbaa !1
  br label %74

; <label>:84                                      ; preds = %74
  %85 = load i8, i8* %l_363, align 1, !tbaa !9
  %86 = add i8 %85, 1
  store i8 %86, i8* %l_363, align 1, !tbaa !9
  store i32 0, i32* @g_143, align 4, !tbaa !1
  br label %87

; <label>:87                                      ; preds = %819, %84
  %88 = load i32, i32* @g_143, align 4, !tbaa !1
  %89 = icmp ne i32 %88, 17
  br i1 %89, label %90, label %822

; <label>:90                                      ; preds = %87
  %91 = bitcast i8** %l_374 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  store i8* null, i8** %l_374, align 8, !tbaa !5
  %92 = bitcast i8** %l_375 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i8* @g_18, i8** %l_375, align 8, !tbaa !5
  %93 = bitcast i8** %l_380 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i8* @g_227, i8** %l_380, align 8, !tbaa !5
  %94 = bitcast [4 x i32]* %l_385 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %94) #1
  %95 = bitcast [4 x i32]* %l_385 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* bitcast ([4 x i32]* @func_105.l_385 to i8*), i64 16, i32 16, i1 false)
  %96 = bitcast [2 x [3 x i8]]* %l_395 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %96) #1
  %97 = bitcast [2 x [3 x i8]]* %l_395 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* getelementptr inbounds ([2 x [3 x i8]], [2 x [3 x i8]]* @func_105.l_395, i32 0, i32 0, i32 0), i64 6, i32 1, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_396) #1
  store i8 1, i8* %l_396, align 1, !tbaa !9
  %98 = bitcast [10 x [9 x i64*]]* %l_427 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %98) #1
  %99 = bitcast [10 x [9 x i64*]]* %l_427 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* bitcast ([10 x [9 x i64*]]* @func_105.l_427 to i8*), i64 720, i32 16, i1 false)
  %100 = bitcast i32* %l_428 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 6, i32* %l_428, align 4, !tbaa !1
  %101 = bitcast i32*** %l_431 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  store i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_196, i32 0, i64 2), i32*** %l_431, align 8, !tbaa !5
  %102 = bitcast [5 x [1 x %union.U2*]]* %l_476 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %102) #1
  %103 = bitcast %union.U2*** %l_475 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %103) #1
  %104 = getelementptr inbounds [5 x [1 x %union.U2*]], [5 x [1 x %union.U2*]]* %l_476, i32 0, i64 3
  %105 = getelementptr inbounds [1 x %union.U2*], [1 x %union.U2*]* %104, i32 0, i64 0
  store %union.U2** %105, %union.U2*** %l_475, align 8, !tbaa !5
  %106 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %108

; <label>:108                                     ; preds = %126, %90
  %109 = load i32, i32* %i2, align 4, !tbaa !1
  %110 = icmp slt i32 %109, 5
  br i1 %110, label %111, label %129

; <label>:111                                     ; preds = %108
  store i32 0, i32* %j3, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %122, %111
  %113 = load i32, i32* %j3, align 4, !tbaa !1
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %115, label %125

; <label>:115                                     ; preds = %112
  %116 = load i32, i32* %j3, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %i2, align 4, !tbaa !1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [5 x [1 x %union.U2*]], [5 x [1 x %union.U2*]]* %l_476, i32 0, i64 %119
  %121 = getelementptr inbounds [1 x %union.U2*], [1 x %union.U2*]* %120, i32 0, i64 %117
  store %union.U2* bitcast ({ i32, [4 x i8] }* @g_477 to %union.U2*), %union.U2** %121, align 8, !tbaa !5
  br label %122

; <label>:122                                     ; preds = %115
  %123 = load i32, i32* %j3, align 4, !tbaa !1
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %j3, align 4, !tbaa !1
  br label %112

; <label>:125                                     ; preds = %112
  br label %126

; <label>:126                                     ; preds = %125
  %127 = load i32, i32* %i2, align 4, !tbaa !1
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %i2, align 4, !tbaa !1
  br label %108

; <label>:129                                     ; preds = %108
  %130 = load i64, i64* %l_362, align 8, !tbaa !7
  %131 = load i8*, i8** %l_375, align 8, !tbaa !5
  %132 = load i8, i8* %131, align 1, !tbaa !9
  %133 = sext i8 %132 to i64
  %134 = xor i64 %133, %130
  %135 = trunc i64 %134 to i8
  store i8 %135, i8* %131, align 1, !tbaa !9
  %136 = sext i8 %135 to i32
  %137 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %138 = load i32*, i32** %137, align 8, !tbaa !5
  store i32 %136, i32* %138, align 4, !tbaa !1
  %139 = trunc i32 %136 to i8
  %140 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %139, i32 7)
  %141 = sext i8 %140 to i32
  %142 = load i16, i16* %2, align 2, !tbaa !10
  %143 = sext i16 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

; <label>:145                                     ; preds = %129
  %146 = load volatile i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 2) to i32*), align 4
  %147 = shl i32 %146, 15
  %148 = ashr i32 %147, 15
  %149 = icmp ne i32 %148, 0
  br label %150

; <label>:150                                     ; preds = %145, %129
  %151 = phi i1 [ true, %129 ], [ %149, %145 ]
  %152 = zext i1 %151 to i32
  %153 = or i32 %141, %152
  %154 = trunc i32 %153 to i8
  %155 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %154, i32 5)
  %156 = zext i8 %155 to i16
  %157 = load i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 5) to i32*), align 4
  %158 = and i32 %157, 524287
  %159 = zext i32 %158 to i64
  %160 = load i16, i16* %2, align 2, !tbaa !10
  %161 = sext i16 %160 to i32
  %162 = bitcast %union.U1* %p_107 to i16*
  %163 = load i16, i16* %162, align 2, !tbaa !10
  %164 = trunc i16 %163 to i8
  %165 = load i8*, i8** %l_380, align 8, !tbaa !5
  store i8 %164, i8* %165, align 1, !tbaa !9
  %166 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %164, i8 zeroext -1)
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %l_385, i32 0, i64 2
  %169 = load i32, i32* %168, align 4, !tbaa !1
  %170 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @g_62, i32 0, i64 1), align 1, !tbaa !9
  %171 = zext i8 %170 to i32
  %172 = icmp sle i32 %169, %171
  %173 = zext i1 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = or i64 %174, 36383
  %176 = trunc i64 %175 to i8
  %177 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %176, i8 signext -9)
  %178 = sext i8 %177 to i64
  %179 = icmp sge i64 %178, -1
  %180 = zext i1 %179 to i32
  %181 = load i16, i16* %2, align 2, !tbaa !10
  %182 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 8
  %183 = shl i32 %182, 3
  %184 = ashr i32 %183, 3
  %185 = trunc i32 %184 to i8
  %186 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %185, i32 1)
  %187 = zext i8 %186 to i32
  %188 = and i32 %167, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

; <label>:190                                     ; preds = %150
  %191 = load i16, i16* @g_39, align 2, !tbaa !10
  %192 = zext i16 %191 to i32
  %193 = icmp ne i32 %192, 0
  br label %194

; <label>:194                                     ; preds = %190, %150
  %195 = phi i1 [ false, %150 ], [ %193, %190 ]
  %196 = zext i1 %195 to i32
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %l_385, i32 0, i64 3
  %198 = load i32, i32* %197, align 4, !tbaa !1
  %199 = and i32 %196, %198
  %200 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 4), align 4
  %201 = and i32 %200, 2147483647
  %202 = call i32 @safe_sub_func_uint32_t_u_u(i32 %161, i32 %201)
  %203 = or i64 %159, -1645899078898409724
  %204 = trunc i64 %203 to i16
  %205 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %156, i16 zeroext %204)
  %206 = zext i16 %205 to i32
  %207 = load i8, i8* @g_246, align 1, !tbaa !9
  %208 = sext i8 %207 to i32
  %209 = icmp sgt i32 %206, %208
  br i1 %209, label %210, label %235

; <label>:210                                     ; preds = %194
  %211 = bitcast i64** %l_386 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %211) #1
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), i64** %l_386, align 8, !tbaa !5
  %212 = load i64*, i64** %l_386, align 8, !tbaa !5
  store i64 1, i64* %212, align 8, !tbaa !7
  %213 = load i64, i64* %l_362, align 8, !tbaa !7
  %214 = trunc i64 %213 to i8
  %215 = load i8*, i8** %l_375, align 8, !tbaa !5
  store i8 %214, i8* %215, align 1, !tbaa !9
  %216 = sext i8 %214 to i32
  %217 = icmp ne i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = bitcast %union.U1* %p_107 to i16*
  %220 = load i16, i16* %219, align 2, !tbaa !10
  %221 = sext i16 %220 to i32
  %222 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext -1, i32 4)
  %223 = bitcast %union.U1* %p_107 to i16*
  %224 = load i16, i16* %223, align 2, !tbaa !10
  %225 = sext i16 %224 to i32
  %226 = icmp sle i32 %221, %225
  %227 = zext i1 %226 to i32
  %228 = icmp sgt i32 %218, %227
  %229 = zext i1 %228 to i32
  %230 = sext i32 %229 to i64
  %231 = xor i64 1, %230
  %232 = trunc i64 %231 to i32
  %233 = load i32*, i32** @g_359, align 8, !tbaa !5
  store i32 %232, i32* %233, align 4, !tbaa !1
  %234 = bitcast i64** %l_386 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  br label %273

; <label>:235                                     ; preds = %194
  %236 = bitcast i32* %l_390 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  store i32 -741219500, i32* %l_390, align 4, !tbaa !1
  %237 = bitcast i32* %l_391 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  store i32 -1711508519, i32* %l_391, align 4, !tbaa !1
  %238 = bitcast [9 x i32]* %l_393 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %238) #1
  %239 = bitcast i16* %l_400 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %239) #1
  store i16 25777, i16* %l_400, align 2, !tbaa !10
  %240 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %240) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %241

; <label>:241                                     ; preds = %248, %235
  %242 = load i32, i32* %i4, align 4, !tbaa !1
  %243 = icmp slt i32 %242, 9
  br i1 %243, label %244, label %251

; <label>:244                                     ; preds = %241
  %245 = load i32, i32* %i4, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [9 x i32], [9 x i32]* %l_393, i32 0, i64 %246
  store i32 599157111, i32* %247, align 4, !tbaa !1
  br label %248

; <label>:248                                     ; preds = %244
  %249 = load i32, i32* %i4, align 4, !tbaa !1
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %i4, align 4, !tbaa !1
  br label %241

; <label>:251                                     ; preds = %241
  %252 = getelementptr inbounds [9 x [5 x i32]], [9 x [5 x i32]]* %l_397, i32 0, i64 8
  %253 = getelementptr inbounds [5 x i32], [5 x i32]* %252, i32 0, i64 3
  %254 = load i32, i32* %253, align 4, !tbaa !1
  %255 = add i32 %254, 1
  store i32 %255, i32* %253, align 4, !tbaa !1
  %256 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %257 = load i32*, i32** %256, align 8, !tbaa !5
  %258 = load volatile i32**, i32*** @g_230, align 8, !tbaa !5
  store i32* %257, i32** %258, align 8, !tbaa !5
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %l_385, i32 0, i64 2
  %260 = load i32, i32* %259, align 4, !tbaa !1
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

; <label>:262                                     ; preds = %251
  store i32 17, i32* %4
  br label %266

; <label>:263                                     ; preds = %251
  %264 = load i16, i16* %l_400, align 2, !tbaa !10
  %265 = add i16 %264, -1
  store i16 %265, i16* %l_400, align 2, !tbaa !10
  store i32 0, i32* %4
  br label %266

; <label>:266                                     ; preds = %263, %262
  %267 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i16* %l_400 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %268) #1
  %269 = bitcast [9 x i32]* %l_393 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %269) #1
  %270 = bitcast i32* %l_391 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %271 = bitcast i32* %l_390 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %805 [
    i32 0, label %272
  ]

; <label>:272                                     ; preds = %266
  br label %273

; <label>:273                                     ; preds = %272, %210
  store i64 2, i64* %l_362, align 8, !tbaa !7
  br label %274

; <label>:274                                     ; preds = %797, %273
  %275 = load i64, i64* %l_362, align 8, !tbaa !7
  %276 = icmp sle i64 %275, 8
  br i1 %276, label %277, label %800

; <label>:277                                     ; preds = %274
  %278 = bitcast i32*** %l_422 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  store i32** null, i32*** %l_422, align 8, !tbaa !5
  %279 = bitcast i32*** %l_423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #1
  store i32** %l_421, i32*** %l_423, align 8, !tbaa !5
  %280 = bitcast i64** %l_426 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %280) #1
  store i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 2), i64** %l_426, align 8, !tbaa !5
  %281 = bitcast [4 x i16*]* %l_429 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %281) #1
  %282 = bitcast i32* %l_457 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  store i32 667412031, i32* %l_457, align 4, !tbaa !1
  %283 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %284

; <label>:284                                     ; preds = %291, %277
  %285 = load i32, i32* %i5, align 4, !tbaa !1
  %286 = icmp slt i32 %285, 4
  br i1 %286, label %287, label %294

; <label>:287                                     ; preds = %284
  %288 = load i32, i32* %i5, align 4, !tbaa !1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x i16*], [4 x i16*]* %l_429, i32 0, i64 %289
  store i16* @g_430, i16** %290, align 8, !tbaa !5
  br label %291

; <label>:291                                     ; preds = %287
  %292 = load i32, i32* %i5, align 4, !tbaa !1
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %i5, align 4, !tbaa !1
  br label %284

; <label>:294                                     ; preds = %284
  %295 = bitcast %union.U1* %p_107 to i16*
  %296 = load i16, i16* %295, align 2, !tbaa !10
  %297 = icmp ne i16 %296, 0
  br i1 %297, label %298, label %299

; <label>:298                                     ; preds = %294
  store i32 11, i32* %4
  br label %789

; <label>:299                                     ; preds = %294
  %300 = bitcast %union.U1* %l_405 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %300, i8* bitcast (%union.U1* @g_404 to i8*), i64 2, i32 2, i1 false), !tbaa.struct !13
  %301 = load i64, i64* %l_362, align 8, !tbaa !7
  %302 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 %301
  %303 = load i32, i32* %302, align 4, !tbaa !1
  %304 = trunc i32 %303 to i16
  %305 = bitcast %union.U1* %p_107 to i16*
  %306 = load i16, i16* %305, align 2, !tbaa !10
  %307 = trunc i16 %306 to i8
  %308 = load i32*, i32** %l_421, align 8, !tbaa !5
  %309 = load i32**, i32*** %l_423, align 8, !tbaa !5
  store i32* %308, i32** %309, align 8, !tbaa !5
  %310 = icmp ne i32* %308, null
  %311 = zext i1 %310 to i32
  %312 = sext i32 %311 to i64
  %313 = and i64 %312, 12444
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %334, label %315

; <label>:315                                     ; preds = %299
  %316 = load i64*, i64** %l_426, align 8, !tbaa !5
  %317 = getelementptr inbounds [10 x [9 x i64*]], [10 x [9 x i64*]]* %l_427, i32 0, i64 3
  %318 = getelementptr inbounds [9 x i64*], [9 x i64*]* %317, i32 0, i64 0
  %319 = load i64*, i64** %318, align 8, !tbaa !5
  %320 = icmp eq i64* %316, %319
  %321 = zext i1 %320 to i32
  %322 = sext i32 %321 to i64
  %323 = xor i64 %322, -1
  %324 = trunc i64 %323 to i16
  %325 = load i64, i64* %l_362, align 8, !tbaa !7
  %326 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 %325
  %327 = load i32, i32* %326, align 4, !tbaa !1
  %328 = trunc i32 %327 to i16
  %329 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %324, i16 zeroext %328)
  %330 = zext i16 %329 to i32
  %331 = load i32**, i32*** %l_423, align 8, !tbaa !5
  %332 = load i32*, i32** %331, align 8, !tbaa !5
  store i32 %330, i32* %332, align 4, !tbaa !1
  %333 = icmp ne i32 %330, 0
  br label %334

; <label>:334                                     ; preds = %315, %299
  %335 = phi i1 [ true, %299 ], [ %333, %315 ]
  %336 = zext i1 %335 to i32
  %337 = trunc i32 %336 to i8
  %338 = bitcast %union.U1* %p_107 to i16*
  %339 = load i16, i16* %338, align 2, !tbaa !10
  %340 = trunc i16 %339 to i8
  %341 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %337, i8 signext %340)
  %342 = sext i8 %341 to i32
  %343 = load i32, i32* %l_428, align 4, !tbaa !1
  %344 = icmp sge i32 %342, %343
  %345 = zext i1 %344 to i32
  %346 = load i16, i16* @g_430, align 2, !tbaa !10
  %347 = zext i16 %346 to i32
  %348 = or i32 %347, %345
  %349 = trunc i32 %348 to i16
  store i16 %349, i16* @g_430, align 2, !tbaa !10
  %350 = load volatile i32, i32* bitcast (i24* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 2) to i32*), align 4
  %351 = shl i32 %350, 15
  %352 = ashr i32 %351, 15
  %353 = trunc i32 %352 to i16
  %354 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %349, i16 zeroext %353)
  %355 = zext i16 %354 to i32
  %356 = load i8, i8* @g_246, align 1, !tbaa !9
  %357 = sext i8 %356 to i32
  %358 = xor i32 %355, %357
  %359 = xor i32 %358, -1
  %360 = load i8, i8* %l_396, align 1, !tbaa !9
  %361 = sext i8 %360 to i32
  %362 = icmp sle i32 %359, %361
  %363 = zext i1 %362 to i32
  %364 = trunc i32 %363 to i8
  %365 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %307, i8 signext %364)
  %366 = sext i8 %365 to i64
  %367 = icmp sle i64 %366, 93
  %368 = zext i1 %367 to i32
  %369 = trunc i32 %368 to i16
  %370 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %371 = load i32*, i32** %370, align 8, !tbaa !5
  %372 = load i32, i32* %371, align 4, !tbaa !1
  %373 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %369, i32 %372)
  %374 = zext i16 %373 to i32
  %375 = load i64, i64* %l_362, align 8, !tbaa !7
  %376 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 %375
  %377 = load i32, i32* %376, align 4, !tbaa !1
  %378 = and i32 %374, %377
  %379 = trunc i32 %378 to i16
  %380 = load i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  %381 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %379, i16 zeroext %380)
  %382 = trunc i16 %381 to i8
  %383 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_134, i32 0, i32 0), align 8
  %384 = shl i32 %383, 3
  %385 = ashr i32 %384, 3
  %386 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %382, i32 %385)
  %387 = zext i8 %386 to i32
  %388 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %304, i32 %387)
  %389 = sext i16 %388 to i32
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %396

; <label>:391                                     ; preds = %334
  %392 = load i64, i64* %l_362, align 8, !tbaa !7
  %393 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 %392
  %394 = load i32, i32* %393, align 4, !tbaa !1
  %395 = icmp ne i32 %394, 0
  br label %396

; <label>:396                                     ; preds = %391, %334
  %397 = phi i1 [ false, %334 ], [ %395, %391 ]
  %398 = zext i1 %397 to i32
  %399 = trunc i32 %398 to i8
  %400 = load i8*, i8** %l_375, align 8, !tbaa !5
  store i8 %399, i8* %400, align 1, !tbaa !9
  %401 = sext i8 %399 to i64
  %402 = and i64 195, %401
  %403 = getelementptr inbounds [4 x i32], [4 x i32]* %l_385, i32 0, i64 1
  %404 = load i32, i32* %403, align 4, !tbaa !1
  %405 = sext i32 %404 to i64
  %406 = icmp sle i64 %402, %405
  %407 = zext i1 %406 to i32
  %408 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 8
  %409 = shl i32 %408, 3
  %410 = ashr i32 %409, 3
  %411 = or i32 %407, %410
  %412 = sext i32 %411 to i64
  %413 = icmp ne i64 %412, -4
  br i1 %413, label %414, label %584

; <label>:414                                     ; preds = %396
  %415 = bitcast [2 x i8]* %l_439 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %415) #1
  %416 = bitcast [7 x [10 x %struct.S0**]]* %l_455 to i8*
  call void @llvm.lifetime.start(i64 560, i8* %416) #1
  %417 = bitcast [7 x [10 x %struct.S0**]]* %l_455 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %417, i8* bitcast ([7 x [10 x %struct.S0**]]* @func_105.l_455 to i8*), i64 560, i32 16, i1 false)
  %418 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %418) #1
  %419 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %419) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %420

; <label>:420                                     ; preds = %427, %414
  %421 = load i32, i32* %i6, align 4, !tbaa !1
  %422 = icmp slt i32 %421, 2
  br i1 %422, label %423, label %430

; <label>:423                                     ; preds = %420
  %424 = load i32, i32* %i6, align 4, !tbaa !1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [2 x i8], [2 x i8]* %l_439, i32 0, i64 %425
  store i8 -3, i8* %426, align 1, !tbaa !9
  br label %427

; <label>:427                                     ; preds = %423
  %428 = load i32, i32* %i6, align 4, !tbaa !1
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %i6, align 4, !tbaa !1
  br label %420

; <label>:430                                     ; preds = %420
  %431 = load i16, i16* %2, align 2, !tbaa !10
  %432 = icmp ne i16 %431, 0
  br i1 %432, label %433, label %568

; <label>:433                                     ; preds = %430
  %434 = bitcast i8** %l_454 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %434) #1
  %435 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %l_395, i32 0, i64 0
  %436 = getelementptr inbounds [3 x i8], [3 x i8]* %435, i32 0, i64 1
  store i8* %436, i8** %l_454, align 8, !tbaa !5
  %437 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %437) #1
  %438 = bitcast %union.U1* %p_107 to i16*
  %439 = load i16, i16* %438, align 2, !tbaa !10
  %440 = load i32**, i32*** %l_431, align 8, !tbaa !5
  %441 = icmp ne i32** null, %440
  %442 = zext i1 %441 to i32
  %443 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 4, !tbaa !1
  %444 = trunc i32 %443 to i16
  %445 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext %444)
  %446 = zext i16 %445 to i64
  %447 = and i64 %446, 8
  %448 = bitcast %union.U1* %p_107 to i16*
  %449 = load i16, i16* %448, align 2, !tbaa !10
  %450 = sext i16 %449 to i32
  %451 = bitcast %union.U1* %p_107 to i16*
  %452 = load i16, i16* %451, align 2, !tbaa !10
  %453 = sext i16 %452 to i32
  %454 = icmp sle i32 %450, %453
  %455 = zext i1 %454 to i32
  %456 = sext i32 %455 to i64
  %457 = icmp sge i64 %456, 0
  %458 = zext i1 %457 to i32
  %459 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_133, i32 0, i32 0), align 8
  %460 = shl i32 %459, 3
  %461 = ashr i32 %460, 3
  %462 = call i32 @safe_sub_func_int32_t_s_s(i32 %458, i32 %461)
  %463 = load volatile i16, i16* @g_83, align 2, !tbaa !10
  %464 = sext i16 %463 to i32
  %465 = load i64, i64* %l_362, align 8, !tbaa !7
  %466 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 %465
  %467 = load i32, i32* %466, align 4, !tbaa !1
  %468 = icmp eq i32 %464, %467
  %469 = zext i1 %468 to i32
  %470 = load i32, i32* @g_57, align 4, !tbaa !1
  %471 = icmp ne i32 %469, %470
  %472 = zext i1 %471 to i32
  %473 = icmp sle i32 %442, %472
  %474 = zext i1 %473 to i32
  %475 = getelementptr inbounds [2 x i8], [2 x i8]* %l_439, i32 0, i64 1
  %476 = load i8, i8* %475, align 1, !tbaa !9
  %477 = sext i8 %476 to i32
  %478 = or i32 %477, %474
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %475, align 1, !tbaa !9
  %480 = bitcast %union.U1* %p_107 to i16*
  %481 = load i16, i16* %480, align 2, !tbaa !10
  %482 = icmp ne i16 %481, 0
  br i1 %482, label %483, label %484

; <label>:483                                     ; preds = %433
  store i32 29, i32* %4
  br label %564

; <label>:484                                     ; preds = %433
  %485 = load i32, i32* %l_392, align 4, !tbaa !1
  %486 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 0
  store i32 %485, i32* %486, align 4, !tbaa !1
  %487 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %488 = load i32*, i32** %487, align 8, !tbaa !5
  %489 = load i32, i32* %488, align 4, !tbaa !1
  %490 = load i16, i16* %2, align 2, !tbaa !10
  %491 = sext i16 %490 to i32
  %492 = icmp slt i32 %489, %491
  %493 = zext i1 %492 to i32
  %494 = trunc i32 %493 to i8
  %495 = load i32**, i32*** %l_431, align 8, !tbaa !5
  %496 = load i32*, i32** %495, align 8, !tbaa !5
  %497 = load i32, i32* %496, align 4, !tbaa !1
  %498 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 4, !tbaa !1
  %499 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 5
  %500 = load i32, i32* %499, align 4, !tbaa !1
  %501 = icmp ne i32 %498, %500
  %502 = zext i1 %501 to i32
  %503 = sext i32 %502 to i64
  %504 = load i8*, i8** %l_454, align 8, !tbaa !5
  %505 = getelementptr inbounds [2 x i8], [2 x i8]* %l_439, i32 0, i64 1
  %506 = icmp ne i8* %504, %505
  %507 = zext i1 %506 to i32
  %508 = getelementptr inbounds [7 x [10 x %struct.S0**]], [7 x [10 x %struct.S0**]]* %l_455, i32 0, i64 5
  %509 = getelementptr inbounds [10 x %struct.S0**], [10 x %struct.S0**]* %508, i32 0, i64 9
  %510 = load %struct.S0**, %struct.S0*** %509, align 8, !tbaa !5
  %511 = getelementptr inbounds [7 x [10 x %struct.S0**]], [7 x [10 x %struct.S0**]]* %l_455, i32 0, i64 5
  %512 = getelementptr inbounds [10 x %struct.S0**], [10 x %struct.S0**]* %511, i32 0, i64 9
  %513 = load %struct.S0**, %struct.S0*** %512, align 8, !tbaa !5
  %514 = icmp eq %struct.S0** %510, %513
  %515 = zext i1 %514 to i32
  %516 = and i32 %507, %515
  %517 = bitcast %union.U1* %p_107 to i16*
  %518 = load i16, i16* %517, align 2, !tbaa !10
  %519 = sext i16 %518 to i32
  %520 = or i32 %516, %519
  %521 = sext i32 %520 to i64
  %522 = or i64 303391210, %521
  %523 = icmp sle i64 %503, %522
  %524 = zext i1 %523 to i32
  %525 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 3
  %526 = load i32, i32* %525, align 4, !tbaa !1
  %527 = icmp slt i32 %524, %526
  %528 = zext i1 %527 to i32
  %529 = sext i32 %528 to i64
  %530 = or i64 %529, 1846188796
  %531 = trunc i64 %530 to i8
  %532 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %531, i32 4)
  %533 = bitcast %union.U1* %p_107 to i16*
  %534 = load i16, i16* %533, align 2, !tbaa !10
  %535 = sext i16 %534 to i32
  %536 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %532, i32 %535)
  %537 = zext i8 %536 to i64
  %538 = icmp uge i64 %537, 1
  %539 = zext i1 %538 to i32
  %540 = load i32, i32* %l_456, align 4, !tbaa !1
  %541 = or i32 %540, %539
  store i32 %541, i32* %l_456, align 4, !tbaa !1
  %542 = load i32**, i32*** %l_431, align 8, !tbaa !5
  %543 = load i32*, i32** %542, align 8, !tbaa !5
  %544 = load i32, i32* %543, align 4, !tbaa !1
  %545 = icmp sle i32 %541, %544
  %546 = zext i1 %545 to i32
  %547 = icmp slt i32 %497, %546
  %548 = zext i1 %547 to i32
  %549 = trunc i32 %548 to i16
  %550 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %549, i16 zeroext 26042)
  %551 = trunc i16 %550 to i8
  %552 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %551, i8 zeroext 126)
  %553 = bitcast %union.U1* %p_107 to i16*
  %554 = load i16, i16* %553, align 2, !tbaa !10
  %555 = trunc i16 %554 to i8
  %556 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %552, i8 signext %555)
  %557 = sext i8 %556 to i64
  %558 = or i64 %557, 9917
  %559 = trunc i64 %558 to i8
  %560 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %494, i8 zeroext %559)
  %561 = zext i8 %560 to i32
  %562 = load i32, i32* %l_457, align 4, !tbaa !1
  %563 = and i32 %562, %561
  store i32 %563, i32* %l_457, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %564

; <label>:564                                     ; preds = %484, %483
  %565 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %565) #1
  %566 = bitcast i8** %l_454 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %566) #1
  %cleanup.dest.9 = load i32, i32* %4
  switch i32 %cleanup.dest.9, label %578 [
    i32 0, label %567
  ]

; <label>:567                                     ; preds = %564
  br label %577

; <label>:568                                     ; preds = %430
  %569 = load volatile i32**, i32*** @g_230, align 8, !tbaa !5
  %570 = load i32*, i32** %569, align 8, !tbaa !5
  %571 = load i32, i32* %570, align 4, !tbaa !1
  %572 = sext i32 %571 to i64
  %573 = xor i64 %572, -4
  %574 = trunc i64 %573 to i32
  store i32 %574, i32* %570, align 4, !tbaa !1
  %575 = load i32**, i32*** %l_431, align 8, !tbaa !5
  %576 = load i32*, i32** %575, align 8, !tbaa !5
  store i32 -6, i32* %576, align 4, !tbaa !1
  br label %577

; <label>:577                                     ; preds = %568, %567
  store i32 0, i32* %4
  br label %578

; <label>:578                                     ; preds = %577, %564
  %579 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %579) #1
  %580 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %580) #1
  %581 = bitcast [7 x [10 x %struct.S0**]]* %l_455 to i8*
  call void @llvm.lifetime.end(i64 560, i8* %581) #1
  %582 = bitcast [2 x i8]* %l_439 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %582) #1
  %cleanup.dest.10 = load i32, i32* %4
  switch i32 %cleanup.dest.10, label %789 [
    i32 0, label %583
  ]

; <label>:583                                     ; preds = %578
  br label %788

; <label>:584                                     ; preds = %396
  %585 = bitcast [1 x [7 x i32]]* %l_460 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %585) #1
  %586 = bitcast [1 x [7 x i32]]* %l_460 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %586, i8* bitcast ([1 x [7 x i32]]* @func_105.l_460 to i8*), i64 28, i32 16, i1 false)
  %587 = bitcast %union.U2**** %l_478 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %587) #1
  store %union.U2*** %l_475, %union.U2**** %l_478, align 8, !tbaa !5
  %588 = bitcast [6 x [3 x i16*]]* %l_482 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %588) #1
  %589 = getelementptr inbounds [6 x [3 x i16*]], [6 x [3 x i16*]]* %l_482, i64 0, i64 0
  %590 = getelementptr inbounds [3 x i16*], [3 x i16*]* %589, i64 0, i64 0
  %591 = bitcast %union.U1* %l_405 to i16*
  store i16* %591, i16** %590, !tbaa !5
  %592 = getelementptr inbounds i16*, i16** %590, i64 1
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %592, !tbaa !5
  %593 = getelementptr inbounds i16*, i16** %592, i64 1
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %593, !tbaa !5
  %594 = getelementptr inbounds [3 x i16*], [3 x i16*]* %589, i64 1
  %595 = getelementptr inbounds [3 x i16*], [3 x i16*]* %594, i64 0, i64 0
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %595, !tbaa !5
  %596 = getelementptr inbounds i16*, i16** %595, i64 1
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %596, !tbaa !5
  %597 = getelementptr inbounds i16*, i16** %596, i64 1
  store i16* null, i16** %597, !tbaa !5
  %598 = getelementptr inbounds [3 x i16*], [3 x i16*]* %594, i64 1
  %599 = getelementptr inbounds [3 x i16*], [3 x i16*]* %598, i64 0, i64 0
  %600 = bitcast %union.U1* %l_405 to i16*
  store i16* %600, i16** %599, !tbaa !5
  %601 = getelementptr inbounds i16*, i16** %599, i64 1
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %601, !tbaa !5
  %602 = getelementptr inbounds i16*, i16** %601, i64 1
  %603 = bitcast %union.U1* %l_405 to i16*
  store i16* %603, i16** %602, !tbaa !5
  %604 = getelementptr inbounds [3 x i16*], [3 x i16*]* %598, i64 1
  %605 = getelementptr inbounds [3 x i16*], [3 x i16*]* %604, i64 0, i64 0
  %606 = bitcast %union.U1* %l_405 to i16*
  store i16* %606, i16** %605, !tbaa !5
  %607 = getelementptr inbounds i16*, i16** %605, i64 1
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %607, !tbaa !5
  %608 = getelementptr inbounds i16*, i16** %607, i64 1
  store i16* null, i16** %608, !tbaa !5
  %609 = getelementptr inbounds [3 x i16*], [3 x i16*]* %604, i64 1
  %610 = getelementptr inbounds [3 x i16*], [3 x i16*]* %609, i64 0, i64 0
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %610, !tbaa !5
  %611 = getelementptr inbounds i16*, i16** %610, i64 1
  store i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), i16** %611, !tbaa !5
  %612 = getelementptr inbounds i16*, i16** %611, i64 1
  %613 = bitcast %union.U1* %l_405 to i16*
  store i16* %613, i16** %612, !tbaa !5
  %614 = getelementptr inbounds [3 x i16*], [3 x i16*]* %609, i64 1
  %615 = getelementptr inbounds [3 x i16*], [3 x i16*]* %614, i64 0, i64 0
  store i16* null, i16** %615, !tbaa !5
  %616 = getelementptr inbounds i16*, i16** %615, i64 1
  %617 = bitcast %union.U1* %l_405 to i16*
  store i16* %617, i16** %616, !tbaa !5
  %618 = getelementptr inbounds i16*, i16** %616, i64 1
  %619 = bitcast %union.U1* %l_405 to i16*
  store i16* %619, i16** %618, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_483) #1
  store i8 5, i8* %l_483, align 1, !tbaa !9
  %620 = bitcast i8*** %l_503 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %620) #1
  store i8** %l_374, i8*** %l_503, align 8, !tbaa !5
  %621 = bitcast i32*** %l_504 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %621) #1
  store i32** @g_359, i32*** %l_504, align 8, !tbaa !5
  %622 = bitcast i64* %l_505 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %622) #1
  store i64 -9, i64* %l_505, align 8, !tbaa !7
  %623 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %623) #1
  %624 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %624) #1
  store i32 0, i32* @g_57, align 4, !tbaa !1
  br label %625

; <label>:625                                     ; preds = %631, %584
  %626 = load i32, i32* @g_57, align 4, !tbaa !1
  %627 = icmp sge i32 %626, 1
  br i1 %627, label %628, label %634

; <label>:628                                     ; preds = %625
  %629 = load i64, i64* %l_362, align 8, !tbaa !7
  %630 = trunc i64 %629 to i16
  store i16 %630, i16* %1
  store i32 1, i32* %4
  br label %778
                                                  ; No predecessors!
  %632 = load i32, i32* @g_57, align 4, !tbaa !1
  %633 = add nsw i32 %632, 1
  store i32 %633, i32* @g_57, align 4, !tbaa !1
  br label %625

; <label>:634                                     ; preds = %625
  %635 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_460, i32 0, i64 0
  %636 = getelementptr inbounds [7 x i32], [7 x i32]* %635, i32 0, i64 0
  %637 = load i32, i32* %636, align 4, !tbaa !1
  %638 = add i32 %637, -1
  store i32 %638, i32* %636, align 4, !tbaa !1
  %639 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 4, !tbaa !1
  %640 = load %union.U2**, %union.U2*** %l_475, align 8, !tbaa !5
  %641 = load %union.U2***, %union.U2**** %l_478, align 8, !tbaa !5
  store %union.U2** %640, %union.U2*** %641, align 8, !tbaa !5
  %642 = icmp ne %union.U2** %640, null
  %643 = zext i1 %642 to i32
  %644 = bitcast %union.U1* %p_107 to i16*
  %645 = load i16, i16* %644, align 2, !tbaa !10
  %646 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext -23628, i16 signext %645)
  %647 = sext i16 %646 to i32
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %662, label %649

; <label>:649                                     ; preds = %634
  %650 = load i64, i64* %l_362, align 8, !tbaa !7
  %651 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 %650
  %652 = load i32, i32* %651, align 4, !tbaa !1
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %660, label %654

; <label>:654                                     ; preds = %649
  %655 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_460, i32 0, i64 0
  %656 = getelementptr inbounds [7 x i32], [7 x i32]* %655, i32 0, i64 0
  %657 = load i32, i32* %656, align 4, !tbaa !1
  %658 = or i32 0, %657
  %659 = icmp ne i32 %658, 0
  br label %660

; <label>:660                                     ; preds = %654, %649
  %661 = phi i1 [ true, %649 ], [ %659, %654 ]
  br label %662

; <label>:662                                     ; preds = %660, %634
  %663 = phi i1 [ true, %634 ], [ %661, %660 ]
  %664 = zext i1 %663 to i32
  %665 = sext i32 %664 to i64
  %666 = or i64 %665, 4294967287
  %667 = icmp ne i64 %666, 1
  %668 = zext i1 %667 to i32
  %669 = sext i32 %668 to i64
  store i64 %669, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 4), align 8, !tbaa !7
  %670 = icmp eq i64 %669, -6
  %671 = zext i1 %670 to i32
  %672 = xor i32 %671, -1
  %673 = call i32 @safe_add_func_uint32_t_u_u(i32 %643, i32 %672)
  %674 = trunc i32 %673 to i16
  store i16 %674, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  %675 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_460, i32 0, i64 0
  %676 = getelementptr inbounds [7 x i32], [7 x i32]* %675, i32 0, i64 0
  %677 = load i32, i32* %676, align 4, !tbaa !1
  %678 = trunc i32 %677 to i16
  %679 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %674, i16 signext %678)
  %680 = sext i16 %679 to i32
  %681 = load i8, i8* %l_483, align 1, !tbaa !9
  %682 = sext i8 %681 to i32
  %683 = icmp ne i32 %680, %682
  %684 = zext i1 %683 to i32
  %685 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext 2, i32 %684)
  %686 = sext i8 %685 to i64
  %687 = or i64 %686, 504802211
  %688 = trunc i64 %687 to i32
  %689 = load i32*, i32** @g_359, align 8, !tbaa !5
  %690 = load i32, i32* %689, align 4, !tbaa !1
  %691 = call i32 @safe_add_func_uint32_t_u_u(i32 %688, i32 %690)
  %692 = trunc i32 %691 to i16
  %693 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %692, i16 zeroext 18690)
  %694 = load i32, i32* @g_57, align 4, !tbaa !1
  %695 = trunc i32 %694 to i16
  %696 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %693, i16 signext %695)
  %697 = sext i16 %696 to i32
  %698 = load i32**, i32*** %l_431, align 8, !tbaa !5
  %699 = load i32*, i32** %698, align 8, !tbaa !5
  store i32 %697, i32* %699, align 4, !tbaa !1
  %700 = bitcast %union.U1* %p_107 to i16*
  %701 = load i16, i16* %700, align 2, !tbaa !10
  %702 = sext i16 %701 to i32
  %703 = icmp eq i32 %697, %702
  %704 = zext i1 %703 to i32
  %705 = xor i32 %639, %704
  store i32 %705, i32* %l_457, align 4, !tbaa !1
  %706 = load i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_329, i32 0, i32 0), align 8
  %707 = shl i32 %706, 3
  %708 = ashr i32 %707, 3
  %709 = trunc i32 %708 to i16
  %710 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %709, i16 signext -1)
  %711 = trunc i16 %710 to i8
  %712 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_326, i32 0, i32 0), align 4, !tbaa !1
  %713 = load i32**, i32*** %l_431, align 8, !tbaa !5
  %714 = load i32*, i32** %713, align 8, !tbaa !5
  %715 = load i32, i32* %714, align 4, !tbaa !1
  %716 = trunc i32 %715 to i16
  %717 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %716, i32 8)
  %718 = sext i16 %717 to i32
  %719 = load i8*, i8** %l_502, align 8, !tbaa !5
  %720 = load i8**, i8*** %l_503, align 8, !tbaa !5
  store i8* @g_246, i8** %720, align 8, !tbaa !5
  %721 = icmp eq i8* %719, @g_246
  %722 = zext i1 %721 to i32
  %723 = load i32**, i32*** %l_504, align 8, !tbaa !5
  %724 = icmp eq i32** null, %723
  %725 = zext i1 %724 to i32
  %726 = load i32**, i32*** %l_423, align 8, !tbaa !5
  %727 = load i32*, i32** %726, align 8, !tbaa !5
  store i32 %725, i32* %727, align 4, !tbaa !1
  %728 = icmp ugt i32 %722, %725
  %729 = zext i1 %728 to i32
  %730 = bitcast %union.U1* %p_107 to i16*
  %731 = load i16, i16* %730, align 2, !tbaa !10
  %732 = sext i16 %731 to i32
  %733 = icmp eq i32 %729, %732
  %734 = zext i1 %733 to i32
  %735 = bitcast %union.U1* %p_107 to i16*
  %736 = load i16, i16* %735, align 2, !tbaa !10
  %737 = sext i16 %736 to i32
  %738 = icmp sle i32 %734, %737
  %739 = zext i1 %738 to i32
  %740 = xor i32 %718, %739
  %741 = load i64, i64* %l_505, align 8, !tbaa !7
  %742 = trunc i64 %741 to i32
  %743 = call i32 @safe_add_func_int32_t_s_s(i32 %740, i32 %742)
  %744 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -1, i32 %743)
  %745 = sext i8 %744 to i32
  %746 = icmp eq i32 %712, %745
  %747 = zext i1 %746 to i32
  %748 = trunc i32 %747 to i16
  store i16 %748, i16* @g_430, align 2, !tbaa !10
  %749 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %748, i16 zeroext -1)
  %750 = trunc i16 %749 to i8
  %751 = load i32**, i32*** %l_431, align 8, !tbaa !5
  %752 = load i32*, i32** %751, align 8, !tbaa !5
  %753 = load i32, i32* %752, align 4, !tbaa !1
  %754 = trunc i32 %753 to i8
  %755 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %750, i8 signext %754)
  %756 = sext i8 %755 to i64
  %757 = load i64, i64* @g_40, align 8, !tbaa !7
  %758 = xor i64 %756, %757
  %759 = trunc i64 %758 to i8
  %760 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %711, i8 zeroext %759)
  %761 = zext i8 %760 to i32
  %762 = bitcast %union.U1* %p_107 to i16*
  %763 = load i16, i16* %762, align 2, !tbaa !10
  %764 = sext i16 %763 to i32
  %765 = xor i32 %761, %764
  %766 = sext i32 %765 to i64
  %767 = call i64 @safe_mod_func_int64_t_s_s(i64 %766, i64 -6)
  %768 = load i64, i64* %l_362, align 8, !tbaa !7
  %769 = getelementptr inbounds [9 x i32], [9 x i32]* %l_394, i32 0, i64 %768
  %770 = load i32, i32* %769, align 4, !tbaa !1
  %771 = sext i32 %770 to i64
  %772 = xor i64 %767, %771
  %773 = load i16, i16* %2, align 2, !tbaa !10
  %774 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 23870, i16 zeroext %773)
  %775 = zext i16 %774 to i32
  %776 = load i32**, i32*** %l_504, align 8, !tbaa !5
  %777 = load i32*, i32** %776, align 8, !tbaa !5
  store i32 %775, i32* %777, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %778

; <label>:778                                     ; preds = %662, %628
  %779 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %779) #1
  %780 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %780) #1
  %781 = bitcast i64* %l_505 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %781) #1
  %782 = bitcast i32*** %l_504 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %782) #1
  %783 = bitcast i8*** %l_503 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %783) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_483) #1
  %784 = bitcast [6 x [3 x i16*]]* %l_482 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %784) #1
  %785 = bitcast %union.U2**** %l_478 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %785) #1
  %786 = bitcast [1 x [7 x i32]]* %l_460 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %786) #1
  %cleanup.dest.13 = load i32, i32* %4
  switch i32 %cleanup.dest.13, label %789 [
    i32 0, label %787
  ]

; <label>:787                                     ; preds = %778
  br label %788

; <label>:788                                     ; preds = %787, %583
  store i32 0, i32* %4
  br label %789

; <label>:789                                     ; preds = %788, %778, %578, %298
  %790 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %790) #1
  %791 = bitcast i32* %l_457 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %791) #1
  %792 = bitcast [4 x i16*]* %l_429 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %792) #1
  %793 = bitcast i64** %l_426 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %793) #1
  %794 = bitcast i32*** %l_423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %794) #1
  %795 = bitcast i32*** %l_422 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %795) #1
  %cleanup.dest.14 = load i32, i32* %4
  switch i32 %cleanup.dest.14, label %805 [
    i32 0, label %796
    i32 29, label %797
  ]

; <label>:796                                     ; preds = %789
  br label %797

; <label>:797                                     ; preds = %796, %789
  %798 = load i64, i64* %l_362, align 8, !tbaa !7
  %799 = add nsw i64 %798, 1
  store i64 %799, i64* %l_362, align 8, !tbaa !7
  br label %274

; <label>:800                                     ; preds = %274
  %801 = load i32*, i32** @g_359, align 8, !tbaa !5
  %802 = load i32, i32* %801, align 4, !tbaa !1
  %803 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %804 = load i32*, i32** %803, align 8, !tbaa !5
  store i32 %802, i32* %804, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %805

; <label>:805                                     ; preds = %800, %789, %266
  %806 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %806) #1
  %807 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %807) #1
  %808 = bitcast %union.U2*** %l_475 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %808) #1
  %809 = bitcast [5 x [1 x %union.U2*]]* %l_476 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %809) #1
  %810 = bitcast i32*** %l_431 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %810) #1
  %811 = bitcast i32* %l_428 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %811) #1
  %812 = bitcast [10 x [9 x i64*]]* %l_427 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %812) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_396) #1
  %813 = bitcast [2 x [3 x i8]]* %l_395 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %813) #1
  %814 = bitcast [4 x i32]* %l_385 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %814) #1
  %815 = bitcast i8** %l_380 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %815) #1
  %816 = bitcast i8** %l_375 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %816) #1
  %817 = bitcast i8** %l_374 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %817) #1
  %cleanup.dest.15 = load i32, i32* %4
  switch i32 %cleanup.dest.15, label %830 [
    i32 0, label %818
    i32 17, label %819
  ]

; <label>:818                                     ; preds = %805
  br label %819

; <label>:819                                     ; preds = %818, %805
  %820 = load i32, i32* @g_143, align 4, !tbaa !1
  %821 = call i32 @safe_add_func_int32_t_s_s(i32 %820, i32 1)
  store i32 %821, i32* @g_143, align 4, !tbaa !1
  br label %87

; <label>:822                                     ; preds = %87
  store %union.U1* @g_404, %union.U1** %l_508, align 8, !tbaa !5
  store %union.U1* @g_404, %union.U1** getelementptr inbounds ([5 x %union.U1*], [5 x %union.U1*]* @g_509, i32 0, i64 0), align 8, !tbaa !5
  %823 = bitcast %union.U1* %p_107 to i16*
  %824 = load i16, i16* %823, align 2, !tbaa !10
  %825 = sext i16 %824 to i32
  %826 = load volatile i32**, i32*** @g_195, align 8, !tbaa !5
  %827 = load i32*, i32** %826, align 8, !tbaa !5
  %828 = load i32, i32* %827, align 4, !tbaa !1
  %829 = xor i32 %828, %825
  store i32 %829, i32* %827, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %830

; <label>:830                                     ; preds = %822, %805
  %831 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %831) #1
  %832 = bitcast [3 x %union.U1**]* %l_506 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %832) #1
  %833 = bitcast %union.U1** %l_507 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %833) #1
  %834 = bitcast i32** %l_421 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %834) #1
  %835 = bitcast [9 x i32]* %l_394 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %835) #1
  %836 = bitcast i32* %l_392 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %836) #1
  %837 = bitcast i32* %l_389 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %837) #1
  %838 = bitcast i64* %l_362 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %838) #1
  %cleanup.dest.16 = load i32, i32* %4
  switch i32 %cleanup.dest.16, label %1116 [
    i32 0, label %839
    i32 11, label %59
  ]

; <label>:839                                     ; preds = %830
  br label %1049

; <label>:840                                     ; preds = %59
  %841 = bitcast %struct.S0*** %l_512 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %841) #1
  store %struct.S0** @g_148, %struct.S0*** %l_512, align 8, !tbaa !5
  %842 = bitcast %struct.S0**** %l_511 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %842) #1
  store %struct.S0*** %l_512, %struct.S0**** %l_511, align 8, !tbaa !5
  %843 = bitcast [10 x [9 x %struct.S0****]]* %l_510 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %843) #1
  %844 = getelementptr inbounds [10 x [9 x %struct.S0****]], [10 x [9 x %struct.S0****]]* %l_510, i64 0, i64 0
  %845 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %844, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %845, !tbaa !5
  %846 = getelementptr inbounds %struct.S0****, %struct.S0***** %845, i64 1
  store %struct.S0**** null, %struct.S0***** %846, !tbaa !5
  %847 = getelementptr inbounds %struct.S0****, %struct.S0***** %846, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %847, !tbaa !5
  %848 = getelementptr inbounds %struct.S0****, %struct.S0***** %847, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %848, !tbaa !5
  %849 = getelementptr inbounds %struct.S0****, %struct.S0***** %848, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %849, !tbaa !5
  %850 = getelementptr inbounds %struct.S0****, %struct.S0***** %849, i64 1
  store %struct.S0**** null, %struct.S0***** %850, !tbaa !5
  %851 = getelementptr inbounds %struct.S0****, %struct.S0***** %850, i64 1
  store %struct.S0**** null, %struct.S0***** %851, !tbaa !5
  %852 = getelementptr inbounds %struct.S0****, %struct.S0***** %851, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %852, !tbaa !5
  %853 = getelementptr inbounds %struct.S0****, %struct.S0***** %852, i64 1
  store %struct.S0**** null, %struct.S0***** %853, !tbaa !5
  %854 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %844, i64 1
  %855 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %854, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %855, !tbaa !5
  %856 = getelementptr inbounds %struct.S0****, %struct.S0***** %855, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %856, !tbaa !5
  %857 = getelementptr inbounds %struct.S0****, %struct.S0***** %856, i64 1
  store %struct.S0**** null, %struct.S0***** %857, !tbaa !5
  %858 = getelementptr inbounds %struct.S0****, %struct.S0***** %857, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %858, !tbaa !5
  %859 = getelementptr inbounds %struct.S0****, %struct.S0***** %858, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %859, !tbaa !5
  %860 = getelementptr inbounds %struct.S0****, %struct.S0***** %859, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %860, !tbaa !5
  %861 = getelementptr inbounds %struct.S0****, %struct.S0***** %860, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %861, !tbaa !5
  %862 = getelementptr inbounds %struct.S0****, %struct.S0***** %861, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %862, !tbaa !5
  %863 = getelementptr inbounds %struct.S0****, %struct.S0***** %862, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %863, !tbaa !5
  %864 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %854, i64 1
  %865 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %864, i64 0, i64 0
  store %struct.S0**** null, %struct.S0***** %865, !tbaa !5
  %866 = getelementptr inbounds %struct.S0****, %struct.S0***** %865, i64 1
  store %struct.S0**** null, %struct.S0***** %866, !tbaa !5
  %867 = getelementptr inbounds %struct.S0****, %struct.S0***** %866, i64 1
  store %struct.S0**** null, %struct.S0***** %867, !tbaa !5
  %868 = getelementptr inbounds %struct.S0****, %struct.S0***** %867, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %868, !tbaa !5
  %869 = getelementptr inbounds %struct.S0****, %struct.S0***** %868, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %869, !tbaa !5
  %870 = getelementptr inbounds %struct.S0****, %struct.S0***** %869, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %870, !tbaa !5
  %871 = getelementptr inbounds %struct.S0****, %struct.S0***** %870, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %871, !tbaa !5
  %872 = getelementptr inbounds %struct.S0****, %struct.S0***** %871, i64 1
  store %struct.S0**** null, %struct.S0***** %872, !tbaa !5
  %873 = getelementptr inbounds %struct.S0****, %struct.S0***** %872, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %873, !tbaa !5
  %874 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %864, i64 1
  %875 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %874, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %875, !tbaa !5
  %876 = getelementptr inbounds %struct.S0****, %struct.S0***** %875, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %876, !tbaa !5
  %877 = getelementptr inbounds %struct.S0****, %struct.S0***** %876, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %877, !tbaa !5
  %878 = getelementptr inbounds %struct.S0****, %struct.S0***** %877, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %878, !tbaa !5
  %879 = getelementptr inbounds %struct.S0****, %struct.S0***** %878, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %879, !tbaa !5
  %880 = getelementptr inbounds %struct.S0****, %struct.S0***** %879, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %880, !tbaa !5
  %881 = getelementptr inbounds %struct.S0****, %struct.S0***** %880, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %881, !tbaa !5
  %882 = getelementptr inbounds %struct.S0****, %struct.S0***** %881, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %882, !tbaa !5
  %883 = getelementptr inbounds %struct.S0****, %struct.S0***** %882, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %883, !tbaa !5
  %884 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %874, i64 1
  %885 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %884, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %885, !tbaa !5
  %886 = getelementptr inbounds %struct.S0****, %struct.S0***** %885, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %886, !tbaa !5
  %887 = getelementptr inbounds %struct.S0****, %struct.S0***** %886, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %887, !tbaa !5
  %888 = getelementptr inbounds %struct.S0****, %struct.S0***** %887, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %888, !tbaa !5
  %889 = getelementptr inbounds %struct.S0****, %struct.S0***** %888, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %889, !tbaa !5
  %890 = getelementptr inbounds %struct.S0****, %struct.S0***** %889, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %890, !tbaa !5
  %891 = getelementptr inbounds %struct.S0****, %struct.S0***** %890, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %891, !tbaa !5
  %892 = getelementptr inbounds %struct.S0****, %struct.S0***** %891, i64 1
  store %struct.S0**** null, %struct.S0***** %892, !tbaa !5
  %893 = getelementptr inbounds %struct.S0****, %struct.S0***** %892, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %893, !tbaa !5
  %894 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %884, i64 1
  %895 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %894, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %895, !tbaa !5
  %896 = getelementptr inbounds %struct.S0****, %struct.S0***** %895, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %896, !tbaa !5
  %897 = getelementptr inbounds %struct.S0****, %struct.S0***** %896, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %897, !tbaa !5
  %898 = getelementptr inbounds %struct.S0****, %struct.S0***** %897, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %898, !tbaa !5
  %899 = getelementptr inbounds %struct.S0****, %struct.S0***** %898, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %899, !tbaa !5
  %900 = getelementptr inbounds %struct.S0****, %struct.S0***** %899, i64 1
  store %struct.S0**** null, %struct.S0***** %900, !tbaa !5
  %901 = getelementptr inbounds %struct.S0****, %struct.S0***** %900, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %901, !tbaa !5
  %902 = getelementptr inbounds %struct.S0****, %struct.S0***** %901, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %902, !tbaa !5
  %903 = getelementptr inbounds %struct.S0****, %struct.S0***** %902, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %903, !tbaa !5
  %904 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %894, i64 1
  %905 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %904, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %905, !tbaa !5
  %906 = getelementptr inbounds %struct.S0****, %struct.S0***** %905, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %906, !tbaa !5
  %907 = getelementptr inbounds %struct.S0****, %struct.S0***** %906, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %907, !tbaa !5
  %908 = getelementptr inbounds %struct.S0****, %struct.S0***** %907, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %908, !tbaa !5
  %909 = getelementptr inbounds %struct.S0****, %struct.S0***** %908, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %909, !tbaa !5
  %910 = getelementptr inbounds %struct.S0****, %struct.S0***** %909, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %910, !tbaa !5
  %911 = getelementptr inbounds %struct.S0****, %struct.S0***** %910, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %911, !tbaa !5
  %912 = getelementptr inbounds %struct.S0****, %struct.S0***** %911, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %912, !tbaa !5
  %913 = getelementptr inbounds %struct.S0****, %struct.S0***** %912, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %913, !tbaa !5
  %914 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %904, i64 1
  %915 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %914, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %915, !tbaa !5
  %916 = getelementptr inbounds %struct.S0****, %struct.S0***** %915, i64 1
  store %struct.S0**** null, %struct.S0***** %916, !tbaa !5
  %917 = getelementptr inbounds %struct.S0****, %struct.S0***** %916, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %917, !tbaa !5
  %918 = getelementptr inbounds %struct.S0****, %struct.S0***** %917, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %918, !tbaa !5
  %919 = getelementptr inbounds %struct.S0****, %struct.S0***** %918, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %919, !tbaa !5
  %920 = getelementptr inbounds %struct.S0****, %struct.S0***** %919, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %920, !tbaa !5
  %921 = getelementptr inbounds %struct.S0****, %struct.S0***** %920, i64 1
  store %struct.S0**** null, %struct.S0***** %921, !tbaa !5
  %922 = getelementptr inbounds %struct.S0****, %struct.S0***** %921, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %922, !tbaa !5
  %923 = getelementptr inbounds %struct.S0****, %struct.S0***** %922, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %923, !tbaa !5
  %924 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %914, i64 1
  %925 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %924, i64 0, i64 0
  store %struct.S0**** null, %struct.S0***** %925, !tbaa !5
  %926 = getelementptr inbounds %struct.S0****, %struct.S0***** %925, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %926, !tbaa !5
  %927 = getelementptr inbounds %struct.S0****, %struct.S0***** %926, i64 1
  store %struct.S0**** null, %struct.S0***** %927, !tbaa !5
  %928 = getelementptr inbounds %struct.S0****, %struct.S0***** %927, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %928, !tbaa !5
  %929 = getelementptr inbounds %struct.S0****, %struct.S0***** %928, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %929, !tbaa !5
  %930 = getelementptr inbounds %struct.S0****, %struct.S0***** %929, i64 1
  store %struct.S0**** null, %struct.S0***** %930, !tbaa !5
  %931 = getelementptr inbounds %struct.S0****, %struct.S0***** %930, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %931, !tbaa !5
  %932 = getelementptr inbounds %struct.S0****, %struct.S0***** %931, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %932, !tbaa !5
  %933 = getelementptr inbounds %struct.S0****, %struct.S0***** %932, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %933, !tbaa !5
  %934 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %924, i64 1
  %935 = getelementptr inbounds [9 x %struct.S0****], [9 x %struct.S0****]* %934, i64 0, i64 0
  store %struct.S0**** %l_511, %struct.S0***** %935, !tbaa !5
  %936 = getelementptr inbounds %struct.S0****, %struct.S0***** %935, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %936, !tbaa !5
  %937 = getelementptr inbounds %struct.S0****, %struct.S0***** %936, i64 1
  store %struct.S0**** null, %struct.S0***** %937, !tbaa !5
  %938 = getelementptr inbounds %struct.S0****, %struct.S0***** %937, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %938, !tbaa !5
  %939 = getelementptr inbounds %struct.S0****, %struct.S0***** %938, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %939, !tbaa !5
  %940 = getelementptr inbounds %struct.S0****, %struct.S0***** %939, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %940, !tbaa !5
  %941 = getelementptr inbounds %struct.S0****, %struct.S0***** %940, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %941, !tbaa !5
  %942 = getelementptr inbounds %struct.S0****, %struct.S0***** %941, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %942, !tbaa !5
  %943 = getelementptr inbounds %struct.S0****, %struct.S0***** %942, i64 1
  store %struct.S0**** %l_511, %struct.S0***** %943, !tbaa !5
  %944 = bitcast i32* %l_519 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %944) #1
  store i32 1570059150, i32* %l_519, align 4, !tbaa !1
  %945 = bitcast %union.U1*** %l_520 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %945) #1
  store %union.U1** null, %union.U1*** %l_520, align 8, !tbaa !5
  %946 = bitcast [8 x [1 x %union.U1**]]* %l_521 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %946) #1
  %947 = bitcast [4 x %union.U1***]* %l_522 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %947) #1
  %948 = bitcast i32* %l_531 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %948) #1
  store i32 0, i32* %l_531, align 4, !tbaa !1
  %949 = bitcast [8 x [10 x i32]]* %l_532 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %949) #1
  %950 = bitcast [8 x [10 x i32]]* %l_532 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %950, i8* bitcast ([8 x [10 x i32]]* @func_105.l_532 to i8*), i64 320, i32 16, i1 false)
  %951 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %951) #1
  %952 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %952) #1
  store i32 0, i32* %i17, align 4, !tbaa !1
  br label %953

; <label>:953                                     ; preds = %971, %840
  %954 = load i32, i32* %i17, align 4, !tbaa !1
  %955 = icmp slt i32 %954, 8
  br i1 %955, label %956, label %974

; <label>:956                                     ; preds = %953
  store i32 0, i32* %j18, align 4, !tbaa !1
  br label %957

; <label>:957                                     ; preds = %967, %956
  %958 = load i32, i32* %j18, align 4, !tbaa !1
  %959 = icmp slt i32 %958, 1
  br i1 %959, label %960, label %970

; <label>:960                                     ; preds = %957
  %961 = load i32, i32* %j18, align 4, !tbaa !1
  %962 = sext i32 %961 to i64
  %963 = load i32, i32* %i17, align 4, !tbaa !1
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds [8 x [1 x %union.U1**]], [8 x [1 x %union.U1**]]* %l_521, i32 0, i64 %964
  %966 = getelementptr inbounds [1 x %union.U1**], [1 x %union.U1**]* %965, i32 0, i64 %962
  store %union.U1** null, %union.U1*** %966, align 8, !tbaa !5
  br label %967

; <label>:967                                     ; preds = %960
  %968 = load i32, i32* %j18, align 4, !tbaa !1
  %969 = add nsw i32 %968, 1
  store i32 %969, i32* %j18, align 4, !tbaa !1
  br label %957

; <label>:970                                     ; preds = %957
  br label %971

; <label>:971                                     ; preds = %970
  %972 = load i32, i32* %i17, align 4, !tbaa !1
  %973 = add nsw i32 %972, 1
  store i32 %973, i32* %i17, align 4, !tbaa !1
  br label %953

; <label>:974                                     ; preds = %953
  store i32 0, i32* %i17, align 4, !tbaa !1
  br label %975

; <label>:975                                     ; preds = %984, %974
  %976 = load i32, i32* %i17, align 4, !tbaa !1
  %977 = icmp slt i32 %976, 4
  br i1 %977, label %978, label %987

; <label>:978                                     ; preds = %975
  %979 = getelementptr inbounds [8 x [1 x %union.U1**]], [8 x [1 x %union.U1**]]* %l_521, i32 0, i64 1
  %980 = getelementptr inbounds [1 x %union.U1**], [1 x %union.U1**]* %979, i32 0, i64 0
  %981 = load i32, i32* %i17, align 4, !tbaa !1
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [4 x %union.U1***], [4 x %union.U1***]* %l_522, i32 0, i64 %982
  store %union.U1*** %980, %union.U1**** %983, align 8, !tbaa !5
  br label %984

; <label>:984                                     ; preds = %978
  %985 = load i32, i32* %i17, align 4, !tbaa !1
  %986 = add nsw i32 %985, 1
  store i32 %986, i32* %i17, align 4, !tbaa !1
  br label %975

; <label>:987                                     ; preds = %975
  store volatile %struct.S0*** null, %struct.S0**** @g_513, align 8, !tbaa !5
  %988 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %989 = load i32*, i32** %988, align 8, !tbaa !5
  %990 = load i32, i32* %989, align 4, !tbaa !1
  store i32 %990, i32* %l_519, align 4, !tbaa !1
  %991 = load %union.U1**, %union.U1*** %l_520, align 8, !tbaa !5
  %992 = getelementptr inbounds [8 x [1 x %union.U1**]], [8 x [1 x %union.U1**]]* %l_521, i32 0, i64 1
  %993 = getelementptr inbounds [1 x %union.U1**], [1 x %union.U1**]* %992, i32 0, i64 0
  %994 = load %union.U1**, %union.U1*** %993, align 8, !tbaa !5
  store %union.U1** %994, %union.U1*** %l_523, align 8, !tbaa !5
  %995 = icmp ne %union.U1** %991, %994
  %996 = zext i1 %995 to i32
  %997 = load %struct.S0**, %struct.S0*** %l_528, align 8, !tbaa !5
  %998 = load %struct.S0***, %struct.S0**** %l_511, align 8, !tbaa !5
  store %struct.S0** %997, %struct.S0*** %998, align 8, !tbaa !5
  %999 = icmp eq %struct.S0** %997, null
  %1000 = zext i1 %999 to i32
  store i32 %1000, i32* %l_529, align 4, !tbaa !1
  br i1 %999, label %1006, label %1001

; <label>:1001                                    ; preds = %987
  %1002 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %1003 = load i32*, i32** %1002, align 8, !tbaa !5
  %1004 = load i32, i32* %1003, align 4, !tbaa !1
  %1005 = icmp ne i32 %1004, 0
  br label %1006

; <label>:1006                                    ; preds = %1001, %987
  %1007 = phi i1 [ true, %987 ], [ %1005, %1001 ]
  %1008 = zext i1 %1007 to i32
  %1009 = load volatile i32, i32* getelementptr inbounds ({ i32, [4 x i8] }, { i32, [4 x i8] }* @g_326, i32 0, i32 0), align 8
  %1010 = shl i32 %1009, 3
  %1011 = ashr i32 %1010, 3
  %1012 = xor i32 %1011, -1
  %1013 = load i16, i16* @g_150, align 2, !tbaa !10
  %1014 = bitcast %union.U1* %p_107 to i16*
  %1015 = load i16, i16* %1014, align 2, !tbaa !10
  %1016 = sext i16 %1015 to i32
  %1017 = and i32 %1012, %1016
  %1018 = load i32, i32* %l_531, align 4, !tbaa !1
  %1019 = icmp sge i32 %1017, %1018
  %1020 = zext i1 %1019 to i32
  %1021 = xor i32 %1008, %1020
  %1022 = sext i32 %1021 to i64
  %1023 = icmp ule i64 %1022, -6990786939291722981
  %1024 = zext i1 %1023 to i32
  %1025 = icmp sle i32 %996, %1024
  %1026 = zext i1 %1025 to i32
  %1027 = icmp sge i32 %990, %1026
  %1028 = zext i1 %1027 to i32
  %1029 = trunc i32 %1028 to i8
  %1030 = load i16, i16* %2, align 2, !tbaa !10
  %1031 = trunc i16 %1030 to i8
  %1032 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1029, i8 signext %1031)
  %1033 = sext i8 %1032 to i32
  %1034 = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* %l_532, i32 0, i64 5
  %1035 = getelementptr inbounds [10 x i32], [10 x i32]* %1034, i32 0, i64 2
  %1036 = load i32, i32* %1035, align 4, !tbaa !1
  %1037 = or i32 %1036, %1033
  store i32 %1037, i32* %1035, align 4, !tbaa !1
  %1038 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1038) #1
  %1039 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1039) #1
  %1040 = bitcast [8 x [10 x i32]]* %l_532 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %1040) #1
  %1041 = bitcast i32* %l_531 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1041) #1
  %1042 = bitcast [4 x %union.U1***]* %l_522 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1042) #1
  %1043 = bitcast [8 x [1 x %union.U1**]]* %l_521 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1043) #1
  %1044 = bitcast %union.U1*** %l_520 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1044) #1
  %1045 = bitcast i32* %l_519 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1045) #1
  %1046 = bitcast [10 x [9 x %struct.S0****]]* %l_510 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %1046) #1
  %1047 = bitcast %struct.S0**** %l_511 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1047) #1
  %1048 = bitcast %struct.S0*** %l_512 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1048) #1
  br label %1049

; <label>:1049                                    ; preds = %1006, %839
  %1050 = load i8, i8* @g_18, align 1, !tbaa !9
  %1051 = load volatile i8, i8* bitcast ({ i32, [4 x i8] }* @g_329 to i8*), align 1, !tbaa !9
  %1052 = zext i8 %1051 to i32
  %1053 = load %union.U2**, %union.U2*** @g_324, align 8, !tbaa !5
  %1054 = load %union.U2*, %union.U2** %1053, align 8, !tbaa !5
  %1055 = icmp eq %union.U2* null, %1054
  %1056 = zext i1 %1055 to i32
  %1057 = load i32, i32* @g_251, align 4, !tbaa !1
  %1058 = zext i32 %1057 to i64
  %1059 = icmp sle i64 46246, %1058
  %1060 = zext i1 %1059 to i32
  %1061 = sext i32 %1060 to i64
  %1062 = icmp ugt i64 %1061, 3
  %1063 = zext i1 %1062 to i32
  %1064 = load i16, i16* %2, align 2, !tbaa !10
  %1065 = sext i16 %1064 to i32
  %1066 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %1067 = load i32*, i32** %1066, align 8, !tbaa !5
  %1068 = load i32, i32* %1067, align 4, !tbaa !1
  %1069 = icmp slt i32 %1065, %1068
  %1070 = zext i1 %1069 to i32
  %1071 = sext i32 %1070 to i64
  %1072 = icmp eq i64 %1071, 65528
  %1073 = zext i1 %1072 to i32
  %1074 = trunc i32 %1073 to i16
  store i16 %1074, i16* @g_430, align 2, !tbaa !10
  %1075 = zext i16 %1074 to i32
  %1076 = load i16, i16* getelementptr inbounds (%union.U1, %union.U1* @g_404, i32 0, i32 0), align 2, !tbaa !10
  %1077 = sext i16 %1076 to i32
  %1078 = and i32 %1075, %1077
  %1079 = load i16, i16* @g_150, align 2, !tbaa !10
  %1080 = sext i16 %1079 to i32
  %1081 = xor i32 %1078, %1080
  %1082 = sext i32 %1081 to i64
  %1083 = icmp sle i64 %1082, -10
  %1084 = zext i1 %1083 to i32
  %1085 = trunc i32 %1084 to i8
  %1086 = load i8*, i8** %l_502, align 8, !tbaa !5
  store i8 %1085, i8* %1086, align 1, !tbaa !9
  %1087 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1085, i32 3)
  %1088 = sext i8 %1087 to i64
  %1089 = bitcast %union.U1* %p_107 to i16*
  %1090 = load i16, i16* %1089, align 2, !tbaa !10
  %1091 = sext i16 %1090 to i64
  %1092 = call i64 @safe_div_func_int64_t_s_s(i64 %1088, i64 %1091)
  %1093 = load i32*, i32** %l_539, align 8, !tbaa !5
  %1094 = load i32, i32* %1093, align 4, !tbaa !1
  %1095 = and i32 %1094, 0
  store i32 %1095, i32* %1093, align 4, !tbaa !1
  %1096 = icmp ne i32 %1095, 0
  br i1 %1096, label %1101, label %1097

; <label>:1097                                    ; preds = %1049
  %1098 = load i16, i16* %2, align 2, !tbaa !10
  %1099 = sext i16 %1098 to i32
  %1100 = icmp ne i32 %1099, 0
  br label %1101

; <label>:1101                                    ; preds = %1097, %1049
  %1102 = phi i1 [ true, %1049 ], [ %1100, %1097 ]
  %1103 = zext i1 %1102 to i32
  %1104 = icmp eq i32 %1063, %1103
  %1105 = zext i1 %1104 to i32
  %1106 = icmp sgt i32 %1056, %1105
  %1107 = zext i1 %1106 to i32
  %1108 = icmp sgt i32 %1052, %1107
  %1109 = zext i1 %1108 to i32
  %1110 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %1111 = load i32*, i32** %1110, align 8, !tbaa !5
  store i32 %1109, i32* %1111, align 4, !tbaa !1
  store i32 %1109, i32* %l_541, align 4, !tbaa !1
  %1112 = load i32**, i32*** %l_360, align 8, !tbaa !5
  %1113 = load i32*, i32** %1112, align 8, !tbaa !5
  %1114 = load i32, i32* %1113, align 4, !tbaa !1
  %1115 = trunc i32 %1114 to i16
  store i16 %1115, i16* %1
  store i32 1, i32* %4
  br label %1116

; <label>:1116                                    ; preds = %1101, %830
  %1117 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1117) #1
  %1118 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1118) #1
  %1119 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1119) #1
  %1120 = bitcast i32* %l_541 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1120) #1
  %1121 = bitcast i32** %l_539 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1121) #1
  %1122 = bitcast i32** %l_538 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1122) #1
  %1123 = bitcast [5 x i16*]* %l_537 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1123) #1
  %1124 = bitcast i32* %l_529 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1124) #1
  %1125 = bitcast %struct.S0*** %l_528 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1125) #1
  %1126 = bitcast %union.U1*** %l_523 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1126) #1
  %1127 = bitcast %union.U1** %l_524 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1127) #1
  %1128 = bitcast %union.U1** %l_508 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1128) #1
  %1129 = bitcast i8** %l_502 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1129) #1
  %1130 = bitcast i32* %l_456 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1130) #1
  %1131 = bitcast %union.U1* %l_405 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1131) #1
  %1132 = bitcast [9 x [5 x i32]]* %l_397 to i8*
  call void @llvm.lifetime.end(i64 180, i8* %1132) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_363) #1
  %1133 = bitcast [5 x [6 x [4 x i32**]]]* %l_361 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %1133) #1
  %1134 = bitcast i32*** %l_360 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1134) #1
  %1135 = load i16, i16* %1
  ret i16 %1135
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_add_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = add i64 %3, %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define internal signext i8 @func_113(i16 zeroext %p_114, i8 signext %p_115) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %l_129 = alloca i32*, align 8
  %l_130 = alloca i16*, align 8
  %l_152 = alloca [9 x %struct.S0*], align 16
  %l_174 = alloca i32, align 4
  %l_178 = alloca i32, align 4
  %l_185 = alloca i16, align 2
  %l_187 = alloca i32, align 4
  %l_188 = alloca i32, align 4
  %l_203 = alloca %struct.S0**, align 8
  %l_202 = alloca %struct.S0***, align 8
  %l_222 = alloca i32, align 4
  %l_223 = alloca i32, align 4
  %l_328 = alloca %union.U2*, align 8
  %l_327 = alloca %union.U2**, align 8
  %l_352 = alloca i16*, align 8
  %l_353 = alloca [5 x [4 x i32*]], align 16
  %l_354 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_118 = alloca i32*, align 8
  %l_119 = alloca i32, align 4
  %l_173 = alloca i32, align 4
  %l_181 = alloca i32, align 4
  %l_182 = alloca i32, align 4
  %l_186 = alloca i32, align 4
  %l_274 = alloca i32, align 4
  %l_305 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_120 = alloca i32, align 4
  %l_149 = alloca i16*, align 8
  %l_151 = alloca i32*, align 8
  %l_177 = alloca i32, align 4
  %l_184 = alloca i32, align 4
  %l_193 = alloca i8*, align 8
  %l_216 = alloca i32, align 4
  %l_218 = alloca i32, align 4
  %l_219 = alloca i32, align 4
  %l_221 = alloca i32, align 4
  %l_224 = alloca i32, align 4
  %l_225 = alloca i32, align 4
  %l_284 = alloca i64, align 8
  %l_296 = alloca [7 x %struct.S0*], align 16
  %i3 = alloca i32, align 4
  %4 = alloca i32
  store i16 %p_114, i16* %2, align 2, !tbaa !10
  store i8 %p_115, i8* %3, align 1, !tbaa !9
  %5 = bitcast i32** %l_129 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_57, i32** %l_129, align 8, !tbaa !5
  %6 = bitcast i16** %l_130 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_39, i16** %l_130, align 8, !tbaa !5
  %7 = bitcast [9 x %struct.S0*]* %l_152 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  %8 = bitcast [9 x %struct.S0*]* %l_152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([9 x %struct.S0*]* @func_113.l_152 to i8*), i64 72, i32 16, i1 false)
  %9 = bitcast i32* %l_174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -2008031515, i32* %l_174, align 4, !tbaa !1
  %10 = bitcast i32* %l_178 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1902777845, i32* %l_178, align 4, !tbaa !1
  %11 = bitcast i16* %l_185 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 0, i16* %l_185, align 2, !tbaa !10
  %12 = bitcast i32* %l_187 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %l_187, align 4, !tbaa !1
  %13 = bitcast i32* %l_188 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 2071969088, i32* %l_188, align 4, !tbaa !1
  %14 = bitcast %struct.S0*** %l_203 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store %struct.S0** null, %struct.S0*** %l_203, align 8, !tbaa !5
  %15 = bitcast %struct.S0**** %l_202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store %struct.S0*** %l_203, %struct.S0**** %l_202, align 8, !tbaa !5
  %16 = bitcast i32* %l_222 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 1343387390, i32* %l_222, align 4, !tbaa !1
  %17 = bitcast i32* %l_223 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 577257060, i32* %l_223, align 4, !tbaa !1
  %18 = bitcast %union.U2** %l_328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %union.U2* bitcast ({ i32, [4 x i8] }* @g_329 to %union.U2*), %union.U2** %l_328, align 8, !tbaa !5
  %19 = bitcast %union.U2*** %l_327 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store %union.U2** %l_328, %union.U2*** %l_327, align 8, !tbaa !5
  %20 = bitcast i16** %l_352 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i16* @g_150, i16** %l_352, align 8, !tbaa !5
  %21 = bitcast [5 x [4 x i32*]]* %l_353 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %21) #1
  %22 = getelementptr inbounds [5 x [4 x i32*]], [5 x [4 x i32*]]* %l_353, i64 0, i64 0
  %23 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  store i32* @g_57, i32** %23, !tbaa !5
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  store i32* @g_57, i32** %24, !tbaa !5
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  store i32* null, i32** %25, !tbaa !5
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  store i32* %l_178, i32** %26, !tbaa !5
  %27 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 1
  %28 = getelementptr inbounds [4 x i32*], [4 x i32*]* %27, i64 0, i64 0
  store i32* %l_178, i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* @g_143, i32** %29, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* %l_178, i32** %30, !tbaa !5
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32* %l_178, i32** %31, !tbaa !5
  %32 = getelementptr inbounds [4 x i32*], [4 x i32*]* %27, i64 1
  %33 = getelementptr inbounds [4 x i32*], [4 x i32*]* %32, i64 0, i64 0
  store i32* %l_178, i32** %33, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* %l_178, i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* %l_178, i32** %35, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32* %l_178, i32** %36, !tbaa !5
  %37 = getelementptr inbounds [4 x i32*], [4 x i32*]* %32, i64 1
  %38 = getelementptr inbounds [4 x i32*], [4 x i32*]* %37, i64 0, i64 0
  store i32* null, i32** %38, !tbaa !5
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  store i32* %l_178, i32** %39, !tbaa !5
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  store i32* @g_143, i32** %40, !tbaa !5
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* %l_178, i32** %41, !tbaa !5
  %42 = getelementptr inbounds [4 x i32*], [4 x i32*]* %37, i64 1
  %43 = getelementptr inbounds [4 x i32*], [4 x i32*]* %42, i64 0, i64 0
  store i32* %l_178, i32** %43, !tbaa !5
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  store i32* @g_57, i32** %44, !tbaa !5
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  store i32* @g_143, i32** %45, !tbaa !5
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* @g_143, i32** %46, !tbaa !5
  %47 = bitcast i32* %l_354 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 5, i32* %l_354, align 4, !tbaa !1
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i8 1, i8* @g_18, align 1, !tbaa !9
  br label %50

; <label>:50                                      ; preds = %128, %0
  %51 = load i8, i8* @g_18, align 1, !tbaa !9
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 7
  br i1 %53, label %54, label %133

; <label>:54                                      ; preds = %50
  %55 = bitcast i32** %l_118 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i32* null, i32** %l_118, align 8, !tbaa !5
  %56 = bitcast i32* %l_119 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 9, i32* %l_119, align 4, !tbaa !1
  %57 = bitcast i32* %l_173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  store i32 -909796393, i32* %l_173, align 4, !tbaa !1
  %58 = bitcast i32* %l_181 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 1, i32* %l_181, align 4, !tbaa !1
  %59 = bitcast i32* %l_182 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 -1, i32* %l_182, align 4, !tbaa !1
  %60 = bitcast i32* %l_186 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 1, i32* %l_186, align 4, !tbaa !1
  %61 = bitcast i32* %l_274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  store i32 0, i32* %l_274, align 4, !tbaa !1
  %62 = bitcast i16* %l_305 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %62) #1
  store i16 -2, i16* %l_305, align 2, !tbaa !10
  %63 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load i8, i8* @g_18, align 1, !tbaa !9
  %66 = sext i8 %65 to i64
  %67 = getelementptr inbounds [8 x i64], [8 x i64]* @g_33, i32 0, i64 %66
  %68 = load i64, i64* %67, align 8, !tbaa !7
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %l_119, align 4, !tbaa !1
  %70 = load i8, i8* @g_18, align 1, !tbaa !9
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %54
  store i32 5, i32* %4
  br label %116

; <label>:73                                      ; preds = %54
  store i16 2, i16* %2, align 2, !tbaa !10
  br label %74

; <label>:74                                      ; preds = %110, %73
  %75 = load i16, i16* %2, align 2, !tbaa !10
  %76 = zext i16 %75 to i32
  %77 = icmp sle i32 %76, 7
  br i1 %77, label %78, label %115

; <label>:78                                      ; preds = %74
  %79 = bitcast i32* %l_120 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  store i32 3, i32* %l_120, align 4, !tbaa !1
  %80 = bitcast i16** %l_149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  store i16* @g_150, i16** %l_149, align 8, !tbaa !5
  %81 = bitcast i32** %l_151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  store i32* @g_143, i32** %l_151, align 8, !tbaa !5
  %82 = bitcast i32* %l_177 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  store i32 -7, i32* %l_177, align 4, !tbaa !1
  %83 = bitcast i32* %l_184 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  store i32 -2019571936, i32* %l_184, align 4, !tbaa !1
  %84 = bitcast i8** %l_193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  store i8* null, i8** %l_193, align 8, !tbaa !5
  %85 = bitcast i32* %l_216 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  store i32 2, i32* %l_216, align 4, !tbaa !1
  %86 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  store i32 -1, i32* %l_218, align 4, !tbaa !1
  %87 = bitcast i32* %l_219 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 331989210, i32* %l_219, align 4, !tbaa !1
  %88 = bitcast i32* %l_221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 1433146194, i32* %l_221, align 4, !tbaa !1
  %89 = bitcast i32* %l_224 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  store i32 -4, i32* %l_224, align 4, !tbaa !1
  %90 = bitcast i32* %l_225 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  store i32 467791370, i32* %l_225, align 4, !tbaa !1
  %91 = bitcast i64* %l_284 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  store i64 4, i64* %l_284, align 8, !tbaa !7
  %92 = bitcast [7 x %struct.S0*]* %l_296 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %92) #1
  %93 = bitcast [7 x %struct.S0*]* %l_296 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* bitcast ([7 x %struct.S0*]* @func_113.l_296 to i8*), i64 56, i32 16, i1 false)
  %94 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast [7 x %struct.S0*]* %l_296 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %96) #1
  %97 = bitcast i64* %l_284 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %l_225 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %l_224 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %l_221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %l_219 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %l_216 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i8** %l_193 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i32* %l_184 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %l_177 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32** %l_151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i16** %l_149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32* %l_120 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  br label %110

; <label>:110                                     ; preds = %78
  %111 = load i16, i16* %2, align 2, !tbaa !10
  %112 = zext i16 %111 to i32
  %113 = add nsw i32 %112, 1
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %2, align 2, !tbaa !10
  br label %74

; <label>:115                                     ; preds = %74
  store i32 0, i32* %4
  br label %116

; <label>:116                                     ; preds = %72, %115
  %117 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i16* %l_305 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %119) #1
  %120 = bitcast i32* %l_274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %l_186 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %l_182 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %l_181 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %l_173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %l_119 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32** %l_118 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %167 [
    i32 0, label %127
    i32 5, label %134
  ]

; <label>:127                                     ; preds = %116
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i8, i8* @g_18, align 1, !tbaa !9
  %130 = sext i8 %129 to i32
  %131 = add nsw i32 %130, 1
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* @g_18, align 1, !tbaa !9
  br label %50

; <label>:133                                     ; preds = %50
  br label %134

; <label>:134                                     ; preds = %133, %116
  %135 = load i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_145 to %struct.S0*), i32 0, i32 3), align 4
  %136 = shl i32 %135, 19
  %137 = ashr i32 %136, 19
  %138 = load i8, i8* %3, align 1, !tbaa !9
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

; <label>:141                                     ; preds = %134
  %142 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_50 to %struct.S0*), i32 0, i32 3), align 4
  %143 = shl i32 %142, 7
  %144 = ashr i32 %143, 20
  %145 = sext i32 %144 to i64
  %146 = icmp sgt i64 %145, 4156525655
  br label %147

; <label>:147                                     ; preds = %141, %134
  %148 = phi i1 [ false, %134 ], [ %146, %141 ]
  %149 = zext i1 %148 to i32
  %150 = icmp slt i32 %137, %149
  %151 = zext i1 %150 to i32
  %152 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_33, i32 0, i64 3), align 8, !tbaa !7
  %153 = trunc i64 %152 to i16
  %154 = load i16*, i16** %l_352, align 8, !tbaa !5
  store i16 %153, i16* %154, align 2, !tbaa !10
  %155 = sext i16 %153 to i32
  %156 = icmp sge i32 %151, %155
  %157 = zext i1 %156 to i32
  %158 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext -7, i32 %157)
  %159 = zext i16 %158 to i32
  %160 = load i32, i32* %l_354, align 4, !tbaa !1
  %161 = xor i32 %160, %159
  store i32 %161, i32* %l_354, align 4, !tbaa !1
  %162 = load volatile i32**, i32*** @g_198, align 8, !tbaa !5
  %163 = load i32*, i32** %162, align 8, !tbaa !5
  %164 = load volatile i32**, i32*** @g_356, align 8, !tbaa !5
  store i32* %163, i32** %164, align 8, !tbaa !5
  %165 = load i16, i16* %2, align 2, !tbaa !10
  %166 = trunc i16 %165 to i8
  store i8 %166, i8* %1
  store i32 1, i32* %4
  br label %167

; <label>:167                                     ; preds = %147, %116
  %168 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %l_354 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast [5 x [4 x i32*]]* %l_353 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %171) #1
  %172 = bitcast i16** %l_352 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast %union.U2*** %l_327 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast %union.U2** %l_328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i32* %l_223 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %l_222 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast %struct.S0**** %l_202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast %struct.S0*** %l_203 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i32* %l_188 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %l_187 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i16* %l_185 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %181) #1
  %182 = bitcast i32* %l_178 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %l_174 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast [9 x %struct.S0*]* %l_152 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %184) #1
  %185 = bitcast i16** %l_130 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = bitcast i32** %l_129 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = load i8, i8* %1
  ret i8 %187
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_div_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i16, i16* %2, align 2, !tbaa !10
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = sext i16 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %2, align 2, !tbaa !10
  %21 = sext i16 %20 to i32
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %15, label %9

; <label>:9                                       ; preds = %6
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = ashr i32 127, %12
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %9, %6, %0
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  br label %23

; <label>:18                                      ; preds = %9
  %19 = load i8, i8* %1, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = shl i32 %20, %21
  br label %23

; <label>:23                                      ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 255, %11
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  br label %22

; <label>:17                                      ; preds = %8
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %2, align 4, !tbaa !1
  %21 = shl i32 %19, %20
  br label %22

; <label>:22                                      ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i8
  ret i8 %24
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i64, i64* %1, align 8, !tbaa !7
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = urem i64 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_add_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %2, align 8, !tbaa !7
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %1, align 8, !tbaa !7
  %10 = load i64, i64* %2, align 8, !tbaa !7
  %11 = sub nsw i64 9223372036854775807, %10
  %12 = icmp sgt i64 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i64, i64* %2, align 8, !tbaa !7
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i64, i64* %1, align 8, !tbaa !7
  %21 = load i64, i64* %2, align 8, !tbaa !7
  %22 = sub nsw i64 -9223372036854775808, %21
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i64, i64* %1, align 8, !tbaa !7
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i64, i64* %1, align 8, !tbaa !7
  %28 = load i64, i64* %2, align 8, !tbaa !7
  %29 = add nsw i64 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_div_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %ui1, i32* %1, align 4, !tbaa !1
  store i32 %ui2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  br label %11

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %1, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = udiv i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i16, i16* %1, align 2, !tbaa !10
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = icmp eq i32 %6, -2147483648
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i32, i32* %1, align 4, !tbaa !1
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = srem i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_sub_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = zext i16 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* %2, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i16
  ret i16 %17
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 127, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i8, i8* %1, align 1, !tbaa !9
  %20 = sext i8 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i8, i8* %1, align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i8
  ret i8 %28
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = zext i8 %5 to i32
  %7 = mul i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_add_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 32767, %15
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %12, %9, %6, %0
  %19 = load i16, i16* %1, align 2, !tbaa !10
  %20 = sext i16 %19 to i32
  br label %26

; <label>:21                                      ; preds = %12
  %22 = load i16, i16* %1, align 2, !tbaa !10
  %23 = sext i16 %22 to i32
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = shl i32 %23, %24
  br label %26

; <label>:26                                      ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %25, %21 ]
  %28 = trunc i32 %27 to i16
  ret i16 %28
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_mul_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = load i8, i8* %2, align 1, !tbaa !9
  %6 = sext i8 %5 to i32
  %7 = mul nsw i32 %4, %6
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %si1, i8 signext %si2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %si1, i8* %1, align 1, !tbaa !9
  store i8 %si2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, -128
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i8, i8* %2, align 1, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i8, i8* %1, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %2, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = sdiv i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i8
  ret i8 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_sub_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = load i32, i32* %2, align 4, !tbaa !1
  %5 = xor i32 %3, %4
  %6 = load i32, i32* %1, align 4, !tbaa !1
  %7 = load i32, i32* %1, align 4, !tbaa !1
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = xor i32 %7, %8
  %10 = and i32 %9, -2147483648
  %11 = xor i32 %6, %10
  %12 = load i32, i32* %2, align 4, !tbaa !1
  %13 = sub nsw i32 %11, %12
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = xor i32 %13, %14
  %16 = and i32 %5, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = load i32, i32* %1, align 4, !tbaa !1
  br label %24

; <label>:20                                      ; preds = %0
  %21 = load i32, i32* %1, align 4, !tbaa !1
  %22 = load i32, i32* %2, align 4, !tbaa !1
  %23 = sub nsw i32 %21, %22
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  store i8 %ui1, i8* %1, align 1, !tbaa !9
  store i8 %ui2, i8* %2, align 1, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !9
  %4 = zext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i8, i8* %1, align 1, !tbaa !9
  %8 = zext i8 %7 to i32
  br label %15

; <label>:9                                       ; preds = %0
  %10 = load i8, i8* %1, align 1, !tbaa !9
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %2, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  %14 = sdiv i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 255, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i8, i8* %1, align 1, !tbaa !9
  %13 = zext i8 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i8, i8* %1, align 1, !tbaa !9
  %16 = zext i8 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define internal signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i8, i8* %1, align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp sge i32 %10, 32
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %9, %6, %0
  %13 = load i8, i8* %1, align 1, !tbaa !9
  %14 = sext i8 %13 to i32
  br label %20

; <label>:15                                      ; preds = %9
  %16 = load i8, i8* %1, align 1, !tbaa !9
  %17 = sext i8 %16 to i32
  %18 = load i32, i32* %2, align 4, !tbaa !1
  %19 = ashr i32 %17, %18
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %22 = trunc i32 %21 to i8
  ret i8 %22
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %2, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %0
  %7 = load i16, i16* %1, align 2, !tbaa !10
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %6
  %11 = load i16, i16* %2, align 2, !tbaa !10
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10, %0
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = sext i16 %15 to i32
  br label %23

; <label>:17                                      ; preds = %10, %6
  %18 = load i16, i16* %1, align 2, !tbaa !10
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %2, align 2, !tbaa !10
  %21 = sext i16 %20 to i32
  %22 = srem i32 %19, %21
  br label %23

; <label>:23                                      ; preds = %17, %14
  %24 = phi i32 [ %16, %14 ], [ %22, %17 ]
  %25 = trunc i32 %24 to i16
  ret i16 %25
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_mod_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = icmp eq i64 %6, -9223372036854775808
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i64, i64* %1, align 8, !tbaa !7
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = load i64, i64* %2, align 8, !tbaa !7
  %16 = srem i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_add_func_int32_t_s_s(i32 %si1, i32 %si2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %si1, i32* %1, align 4, !tbaa !1
  store i32 %si2, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %1, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = sub nsw i32 2147483647, %10
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %8, %5, %0
  %14 = load i32, i32* %1, align 4, !tbaa !1
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %1, align 4, !tbaa !1
  %21 = load i32, i32* %2, align 4, !tbaa !1
  %22 = sub nsw i32 -2147483648, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %19, %8
  %25 = load i32, i32* %1, align 4, !tbaa !1
  br label %30

; <label>:26                                      ; preds = %19, %16, %13
  %27 = load i32, i32* %1, align 4, !tbaa !1
  %28 = load i32, i32* %2, align 4, !tbaa !1
  %29 = add nsw i32 %27, %28
  br label %30

; <label>:30                                      ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %2, align 4, !tbaa !1
  %8 = icmp uge i32 %7, 32
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6, %0
  %10 = load i16, i16* %1, align 2, !tbaa !10
  %11 = sext i16 %10 to i32
  br label %17

; <label>:12                                      ; preds = %6
  %13 = load i16, i16* %1, align 2, !tbaa !10
  %14 = sext i16 %13 to i32
  %15 = load i32, i32* %2, align 4, !tbaa !1
  %16 = ashr i32 %14, %15
  br label %17

; <label>:17                                      ; preds = %12, %9
  %18 = phi i32 [ %11, %9 ], [ %16, %12 ]
  %19 = trunc i32 %18 to i16
  ret i16 %19
}

; Function Attrs: nounwind uwtable
define internal i64 @safe_div_func_int64_t_s_s(i64 %si1, i64 %si2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %si1, i64* %1, align 8, !tbaa !7
  store i64 %si2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = icmp eq i64 %6, -9223372036854775808
  br i1 %7, label %8, label %13

; <label>:8                                       ; preds = %5
  %9 = load i64, i64* %2, align 8, !tbaa !7
  %10 = icmp eq i64 %9, -1
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8, %0
  %12 = load i64, i64* %1, align 8, !tbaa !7
  br label %17

; <label>:13                                      ; preds = %8, %5
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = load i64, i64* %2, align 8, !tbaa !7
  %16 = sdiv i64 %14, %15
  br label %17

; <label>:17                                      ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5)
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9)
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13)
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17)
  %18 = load i64, i64* %1, align 8, !tbaa !7
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21)
  %22 = load i64, i64* %1, align 8, !tbaa !7
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25)
  %26 = load i64, i64* %1, align 8, !tbaa !7
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29)
  %30 = load i64, i64* %1, align 8, !tbaa !7
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = alloca i8, align 1
  store i8 %b, i8* %1, align 1, !tbaa !9
  %2 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 16777215
  %5 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = xor i32 %5, %7
  %9 = and i32 %8, 255
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = xor i32 %4, %12
  store i32 %13, i32* @crc32_context, align 4, !tbaa !1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{i64 0, i64 4, !1, i64 0, i64 4, !1, i64 4, i64 4, !1, i64 8, i64 4, !1, i64 8, i64 4, !1, i64 10, i64 4, !1, i64 12, i64 4, !1, i64 13, i64 4, !1, i64 16, i64 4, !1, i64 20, i64 4, !1}
!13 = !{i64 0, i64 2, !10}
