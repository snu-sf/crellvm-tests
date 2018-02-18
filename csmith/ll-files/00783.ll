; ModuleID = '00783.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U3 = type { i32 }
%union.U4 = type { i8* }
%struct.S2 = type <{ i64, i16, i16, i16 }>
%struct.S1 = type { i32 }
%struct.S0 = type { [12 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_5 = internal global [7 x i16] [i16 -2073, i16 18830, i16 -2073, i16 -2073, i16 18830, i16 -2073, i16 -2073], align 2
@.str.2 = private unnamed_addr constant [7 x i8] c"g_5[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_7 = internal global i32 4, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_12 = internal global i64 1930610198235518183, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"g_12\00", align 1
@g_13 = internal global i32 -6, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_13\00", align 1
@g_30 = internal global i8 1, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_30\00", align 1
@g_82 = internal global [6 x i32] [i32 1409399824, i32 1409399824, i32 1409399824, i32 1409399824, i32 1409399824, i32 1409399824], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"g_82[i]\00", align 1
@g_84 = internal global i64 1, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"g_84\00", align 1
@g_101 = internal global i16 5, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_129\00", align 1
@g_144 = internal global i8 -80, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_144\00", align 1
@g_148 = internal global i32 -820460889, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_148\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"g_168.f0\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_168.f1\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"g_168.f2\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_168.f3\00", align 1
@g_175 = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_175\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"g_179[i].f0\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"g_179[i].f1\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"g_179[i].f2\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"g_179[i].f3\00", align 1
@g_197 = internal global i64 3, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_197\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"g_202.f0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_202.f1\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_202.f2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_202.f3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_202.f4\00", align 1
@g_234 = internal global i32 -1, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_234\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"g_239.f0\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_239.f1\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"g_239.f2\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"g_239.f3\00", align 1
@g_267 = internal global i64 3, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_267\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_280.f0\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_280.f1\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_280.f2\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"g_280.f3\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"g_281.f0\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"g_281.f1\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"g_281.f2\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"g_281.f3\00", align 1
@g_306 = internal global i32 1, align 4
@.str.43 = private unnamed_addr constant [6 x i8] c"g_306\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_307.f0\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"g_307.f1\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"g_307.f2\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"g_307.f3\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"g_307.f4\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"g_328.f0\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"g_328.f1\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_328.f2\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"g_328.f3\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_328.f4\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"g_348[i][j].f0\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"g_348[i][j].f1\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"g_348[i][j].f2\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"g_348[i][j].f3\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_353 = internal global [1 x [9 x %union.U3]] [[9 x %union.U3] [%union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }, %union.U3 { i32 2087629399 }]], align 16
@.str.59 = private unnamed_addr constant [15 x i8] c"g_353[i][j].f0\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"g_441.f0\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"g_441.f1\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"g_441.f2\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"g_441.f3\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"g_441.f4\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"g_445.f0\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"g_445.f1\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"g_445.f2\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"g_445.f3\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"g_471.f0\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"g_471.f1\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"g_471.f2\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"g_471.f3\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"g_473.f0\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"g_473.f1\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"g_473.f2\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"g_473.f3\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"g_473.f4\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"g_474.f0\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"g_474.f1\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"g_474.f2\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"g_474.f3\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"g_482.f0\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"g_482.f1\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"g_482.f2\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"g_482.f3\00", align 1
@g_486 = internal global i8 -29, align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"g_486\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"g_493[i].f0\00", align 1
@g_531 = internal global [10 x [1 x i8]] [[1 x i8] c"\01", [1 x i8] c"\FC", [1 x i8] c"\01", [1 x i8] c"\FC", [1 x i8] c"\01", [1 x i8] c"\FC", [1 x i8] c"\01", [1 x i8] c"\FC", [1 x i8] c"\01", [1 x i8] c"\FC"], align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"g_531[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_42 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 -66, i8 15, i8 0, i8 0 }, align 4
@g_201 = internal global [5 x %union.U4] zeroinitializer, align 16
@func_1.l_505 = private unnamed_addr constant [5 x [10 x i16]] [[10 x i16] [i16 20622, i16 1, i16 0, i16 1, i16 20622, i16 2, i16 20622, i16 1, i16 0, i16 1], [10 x i16] [i16 20622, i16 0, i16 -1, i16 1, i16 -1, i16 0, i16 20622, i16 0, i16 -1, i16 1], [10 x i16] [i16 -1, i16 1, i16 -1, i16 0, i16 20622, i16 0, i16 -1, i16 1, i16 -1, i16 0], [10 x i16] [i16 20622, i16 1, i16 0, i16 1, i16 20622, i16 2, i16 20622, i16 1, i16 0, i16 1], [10 x i16] [i16 20622, i16 0, i16 -1, i16 1, i16 -1, i16 0, i16 20622, i16 0, i16 -1, i16 1]], align 16
@func_1.l_329 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 -19, i8 -20, i8 -1, i8 1 }, align 4
@func_1.l_504 = private unnamed_addr constant [2 x [5 x [1 x i8]]] [[5 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\02", [1 x i8] c"\02", [1 x i8] zeroinitializer, [1 x i8] zeroinitializer], [5 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\02", [1 x i8] c"\02", [1 x i8] zeroinitializer, [1 x i8] zeroinitializer]], align 1
@g_161 = internal global i32** @g_162, align 8
@g_503 = internal global i32*** @g_161, align 8
@g_60 = internal global i32* @g_7, align 8
@g_509 = internal global %union.U4** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [8 x %union.U4*]]* @g_510 to i8*), i64 72) to %union.U4**), align 8
@g_355 = internal global %union.U3* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [9 x %union.U3]]* @g_353 to i8*), i64 28) to %union.U3*), align 8
@g_354 = internal global %union.U3** @g_355, align 8
@g_394 = internal global i8* @g_30, align 8
@g_530 = internal global [7 x [5 x i32*]] [[5 x i32*] [i32* @g_175, i32* @g_175, i32* @g_175, i32* @g_175, i32* @g_175], [5 x i32*] [i32* @g_175, i32* @g_175, i32* null, i32* @g_175, i32* @g_175], [5 x i32*] [i32* @g_175, i32* @g_175, i32* @g_175, i32* @g_175, i32* @g_175], [5 x i32*] [i32* @g_175, i32* null, i32* @g_175, i32* @g_175, i32* @g_175], [5 x i32*] [i32* @g_175, i32* @g_175, i32* null, i32* @g_175, i32* @g_175], [5 x i32*] [i32* @g_175, i32* @g_175, i32* @g_175, i32* @g_175, i32* null], [5 x i32*] [i32* @g_175, i32* null, i32* @g_175, i32* @g_175, i32* @g_175]], align 16
@g_162 = internal global i32* null, align 8
@func_19.l_373 = private unnamed_addr constant [7 x i32] [i32 -1, i32 -1, i32 1, i32 -1, i32 -1, i32 1, i32 -1], align 16
@g_393 = internal global i8** @g_394, align 8
@func_24.l_31 = private unnamed_addr constant <{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }> <{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 121, i8 20, i8 0, i8 0 } }> }>, align 16
@func_32.l_345 = private unnamed_addr constant [6 x [10 x i16*]] [[10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 8) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 8) to i16*), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 8) to i16*), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* null, i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* null, i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 8) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 2) to i16*), i16* getelementptr inbounds ([7 x i16], [7 x i16]* @g_5, i32 0, i32 0), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 8) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_5 to i8*), i64 10) to i16*)]], align 16
@func_32.l_350 = internal constant { i8, i8, i8, i8 } { i8 -19, i8 11, i8 0, i8 0 }, align 4
@g_266 = internal global i64* @g_267, align 8
@func_32.l_351 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 11, i8 19, i8 0, i8 0 }, align 4
@g_127 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x i32*]]* @g_128 to i8*), i64 120) to i32**), align 8
@g_128 = internal global [5 x [6 x i32*]] [[6 x i32*] [i32* null, i32* @g_129, i32* null, i32* @g_129, i32* null, i32* null], [6 x i32*] [i32* null, i32* @g_129, i32* null, i32* @g_129, i32* null, i32* null], [6 x i32*] [i32* null, i32* @g_129, i32* null, i32* @g_129, i32* null, i32* null], [6 x i32*] [i32* null, i32* @g_129, i32* null, i32* @g_129, i32* null, i32* null], [6 x i32*] [i32* null, i32* @g_129, i32* null, i32* @g_129, i32* null, i32* null]], align 16
@g_129 = internal constant i32 1, align 4
@g_147 = internal global i32* @g_148, align 8
@func_48.l_322 = internal constant [8 x [10 x i64*]] [[10 x i64*] [i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* null, i64* @g_197, i64* @g_197], [10 x i64*] [i64* @g_197, i64* null, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197], [10 x i64*] [i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* null, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197], [10 x i64*] [i64* null, i64* @g_197, i64* null, i64* null, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197], [10 x i64*] [i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197], [10 x i64*] [i64* null, i64* @g_197, i64* @g_197, i64* @g_197, i64* null, i64* null, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197], [10 x i64*] [i64* @g_197, i64* @g_197, i64* @g_197, i64* null, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* null], [10 x i64*] [i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197, i64* @g_197]], align 16
@func_48.l_308 = internal constant { i8, i8, i8, i8 } { i8 98, i8 16, i8 0, i8 0 }, align 4
@g_238 = internal global %struct.S2* null, align 8
@g_265 = internal global i64** @g_266, align 8
@func_56.l_74 = private unnamed_addr constant [10 x i32] [i32 -389800722, i32 -374359988, i32 1123780791, i32 1123780791, i32 -374359988, i32 -389800722, i32 -374359988, i32 1123780791, i32 1123780791, i32 -374359988], align 16
@g_510 = internal global [3 x [8 x %union.U4*]] [[8 x %union.U4*] [%union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* getelementptr inbounds ([5 x %union.U4], [5 x %union.U4]* @g_201, i32 0, i32 0), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 24) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 8) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 24) to %union.U4*)], [8 x %union.U4*] [%union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 24) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* getelementptr inbounds ([5 x %union.U4], [5 x %union.U4]* @g_201, i32 0, i32 0), %union.U4* getelementptr inbounds ([5 x %union.U4], [5 x %union.U4]* @g_201, i32 0, i32 0), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 24) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*)], [8 x %union.U4*] [%union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 8) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 24) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 16) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 8) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 32) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 8) to %union.U4*), %union.U4* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x %union.U4]* @g_201 to i8*), i64 16) to %union.U4*)]], align 16
@.str.89 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_168 = internal global <{ i64, i16, i8, i8, i16 }> <{ i64 1630169298687951315, i16 1, i8 72, i8 0, i16 11869 }>, align 1
@g_179 = internal global <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> <{ <{ i64, i16, i8, i8, i16 }> <{ i64 -291344384086777208, i16 3, i8 119, i8 0, i16 0 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -291344384086777208, i16 3, i8 119, i8 0, i16 0 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 7285805061412158959, i16 30135, i8 -71, i8 63, i16 -21074 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -1, i8 56, i8 0, i16 -4 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -1, i8 56, i8 0, i16 -4 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -291344384086777208, i16 3, i8 119, i8 0, i16 0 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -1, i8 56, i8 0, i16 -4 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -1, i8 56, i8 0, i16 -4 }> }>, align 16
@g_202 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 92, i8 -128, i8 19, i8 8, i8 2, i8 1, i8 -128, i8 -57, i8 3, i8 -64, i8 8, i8 0 }, align 1
@g_239 = internal global <{ i64, i16, i8, i8, i16 }> <{ i64 -3128308709330897121, i16 18849, i8 -113, i8 63, i16 -9 }>, align 1
@g_280 = internal global <{ i64, i16, i8, i8, i16 }> <{ i64 3915593978638155320, i16 -1, i8 -91, i8 63, i16 23643 }>, align 1
@g_281 = internal global <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -872, i8 -101, i8 63, i16 29812 }>, align 1
@g_307 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 31, i8 -64, i8 21, i8 120, i8 91, i8 1, i8 0, i8 104, i8 0, i8 0, i8 0, i8 0 }, align 1
@g_328 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 49, i8 -128, i8 20, i8 80, i8 18, i8 0, i8 0, i8 41, i8 -4, i8 63, i8 15, i8 0 }, align 1
@g_348 = internal global <{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> }> <{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> <{ <{ i64, i16, i8, i8, i16 }> <{ i64 -6, i16 -1400, i8 108, i8 0, i16 0 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6, i16 -1400, i8 108, i8 0, i16 0 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 19695, i8 105, i8 0, i16 -5 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6, i16 -1400, i8 108, i8 0, i16 0 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> <{ <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6252490196966236193, i16 -10140, i8 25, i8 0, i16 8 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -8, i8 -104, i8 63, i16 -6818 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -8, i8 -104, i8 63, i16 -6818 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6252490196966236193, i16 -10140, i8 25, i8 0, i16 8 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> <{ <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -8, i8 -104, i8 63, i16 -6818 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 19695, i8 105, i8 0, i16 -5 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -3413946274089080863, i16 -8, i8 112, i8 0, i16 -24041 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 19695, i8 105, i8 0, i16 -5 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -8, i8 -104, i8 63, i16 -6818 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> <{ <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6252490196966236193, i16 -10140, i8 25, i8 0, i16 8 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -8, i8 -104, i8 63, i16 -6818 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 -8, i8 -104, i8 63, i16 -6818 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6252490196966236193, i16 -10140, i8 25, i8 0, i16 8 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> <{ <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6, i16 -1400, i8 108, i8 0, i16 0 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -1, i16 19695, i8 105, i8 0, i16 -5 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 5416790128182576193, i16 -18608, i8 -27, i8 63, i16 2292 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 -6, i16 -1400, i8 108, i8 0, i16 0 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }>, <{ i64, i16, i8, i8, i16 }> <{ i64 4357506848256303333, i16 0, i8 -107, i8 63, i16 31931 }> }> }>, align 16
@g_441 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 64, i8 0, i8 72, i8 41, i8 0, i8 -128, i8 50, i8 -3, i8 -65, i8 -16, i8 3 }, align 1
@g_445 = internal constant <{ i64, i16, i8, i8, i16 }> <{ i64 4823655982043603407, i16 25819, i8 52, i8 0, i16 26304 }>, align 1
@g_471 = internal global <{ i64, i16, i8, i8, i16 }> <{ i64 -1503896190260237657, i16 -2, i8 -123, i8 63, i16 -1 }>, align 1
@g_473 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 12, i8 -128, i8 8, i8 24, i8 21, i8 1, i8 0, i8 -69, i8 3, i8 -64, i8 -7, i8 3 }, align 1
@g_474 = internal global <{ i64, i16, i8, i8, i16 }> <{ i64 -7861054959437123332, i16 -3, i8 -65, i8 63, i16 7 }>, align 1
@g_482 = internal global <{ i64, i16, i8, i8, i16 }> <{ i64 1, i16 -2, i8 -106, i8 63, i16 -1 }>, align 1
@g_493 = internal global <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 112, i8 5, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 112, i8 5, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 112, i8 5, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 112, i8 5, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 112, i8 5, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 112, i8 5, i8 0, i8 0 }, { i8, i8, i8, i8 } { i8 112, i8 5, i8 0, i8 0 } }>, align 16
@.str.90 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  %8 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %9 = load i32, i32* %2, align 4, !tbaa !1
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %88

; <label>:11                                      ; preds = %0
  %12 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %14, label %76

; <label>:14                                      ; preds = %11
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %15 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %76

; <label>:17                                      ; preds = %14
  %18 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i8**, i8*** %3, align 8, !tbaa !5
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8, !tbaa !5
  store i8* %21, i8** %__s1, align 8, !tbaa !5
  %22 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i8*, i8** %__s1, align 8, !tbaa !5
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %26, %28
  store i32 %29, i32* %__result, align 4, !tbaa !1
  %30 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %71

; <label>:32                                      ; preds = %17
  %33 = load i32, i32* %__result, align 4, !tbaa !1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %71

; <label>:35                                      ; preds = %32
  %36 = load i8*, i8** %__s1, align 8, !tbaa !5
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1, !tbaa !9
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %__result, align 4, !tbaa !1
  %43 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %44 = icmp ugt i64 %43, 1
  br i1 %44, label %45, label %70

; <label>:45                                      ; preds = %35
  %46 = load i32, i32* %__result, align 4, !tbaa !1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %70

; <label>:48                                      ; preds = %45
  %49 = load i8*, i8** %__s1, align 8, !tbaa !5
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1, !tbaa !9
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %52, %54
  store i32 %55, i32* %__result, align 4, !tbaa !1
  %56 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %57 = icmp ugt i64 %56, 2
  br i1 %57, label %58, label %69

; <label>:58                                      ; preds = %48
  %59 = load i32, i32* %__result, align 4, !tbaa !1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %58
  %62 = load i8*, i8** %__s1, align 8, !tbaa !5
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1, !tbaa !9
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %65, %67
  store i32 %68, i32* %__result, align 4, !tbaa !1
  br label %69

; <label>:69                                      ; preds = %61, %58, %48
  br label %70

; <label>:70                                      ; preds = %69, %45, %35
  br label %71

; <label>:71                                      ; preds = %70, %32, %17
  %72 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %72, i32* %5, !tbaa !1
  %73 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = load i32, i32* %5, !tbaa !1
  br label %81

; <label>:76                                      ; preds = %14, %11
  %77 = load i8**, i8*** %3, align 8, !tbaa !5
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8, !tbaa !5
  %80 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %81

; <label>:81                                      ; preds = %76, %71
  %82 = phi i32 [ %75, %71 ], [ %80, %76 ]
  store i32 %82, i32* %4, !tbaa !1
  %83 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = load i32, i32* %4, !tbaa !1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %81
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %88

; <label>:88                                      ; preds = %87, %81, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %89 = call signext i16 @func_1()
  %90 = load i32, i32* @g_4, align 4, !tbaa !1
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %92)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %93

; <label>:93                                      ; preds = %109, %88
  %94 = load i32, i32* %i, align 4, !tbaa !1
  %95 = icmp slt i32 %94, 7
  br i1 %95, label %96, label %112

; <label>:96                                      ; preds = %93
  %97 = load i32, i32* %i, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [7 x i16], [7 x i16]* @g_5, i32 0, i64 %98
  %100 = load i16, i16* %99, align 2, !tbaa !10
  %101 = sext i16 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

; <label>:105                                     ; preds = %96
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %106)
  br label %108

; <label>:108                                     ; preds = %105, %96
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i, align 4, !tbaa !1
  br label %93

; <label>:112                                     ; preds = %93
  %113 = load i32, i32* @g_7, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %115)
  %116 = load i64, i64* @g_12, align 8, !tbaa !7
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %117)
  %118 = load i32, i32* @g_13, align 4, !tbaa !1
  %119 = zext i32 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %120)
  %121 = load i8, i8* @g_30, align 1, !tbaa !9
  %122 = sext i8 %121 to i64
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %123)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %124

; <label>:124                                     ; preds = %140, %112
  %125 = load i32, i32* %i, align 4, !tbaa !1
  %126 = icmp slt i32 %125, 6
  br i1 %126, label %127, label %143

; <label>:127                                     ; preds = %124
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [6 x i32], [6 x i32]* @g_82, i32 0, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !1
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %133)
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

; <label>:136                                     ; preds = %127
  %137 = load i32, i32* %i, align 4, !tbaa !1
  %138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %137)
  br label %139

; <label>:139                                     ; preds = %136, %127
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %i, align 4, !tbaa !1
  br label %124

; <label>:143                                     ; preds = %124
  %144 = load i64, i64* @g_84, align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %145)
  %146 = load i16, i16* @g_101, align 2, !tbaa !10
  %147 = zext i16 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %149)
  %150 = load i8, i8* @g_144, align 1, !tbaa !9
  %151 = zext i8 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %152)
  %153 = load i32, i32* @g_148, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %155)
  %156 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_168 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %157)
  %158 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_168 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %159 = zext i16 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %160)
  %161 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_168 to %struct.S2*), i32 0, i32 2), align 1
  %162 = shl i16 %161, 2
  %163 = ashr i16 %162, 2
  %164 = sext i16 %163 to i32
  %165 = sext i32 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %166)
  %167 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_168 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %168 = zext i16 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* @g_175, align 4, !tbaa !1
  %171 = zext i32 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %172)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %173

; <label>:173                                     ; preds = %213, %143
  %174 = load i32, i32* %i, align 4, !tbaa !1
  %175 = icmp slt i32 %174, 8
  br i1 %175, label %176, label %216

; <label>:176                                     ; preds = %173
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>* @g_179 to [8 x %struct.S2]*), i32 0, i64 %178
  %180 = getelementptr inbounds %struct.S2, %struct.S2* %179, i32 0, i32 0
  %181 = load volatile i64, i64* %180, align 1, !tbaa !12
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %182)
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>* @g_179 to [8 x %struct.S2]*), i32 0, i64 %184
  %186 = getelementptr inbounds %struct.S2, %struct.S2* %185, i32 0, i32 1
  %187 = load i16, i16* %186, align 1, !tbaa !14
  %188 = zext i16 %187 to i64
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 %189)
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>* @g_179 to [8 x %struct.S2]*), i32 0, i64 %191
  %193 = getelementptr inbounds %struct.S2, %struct.S2* %192, i32 0, i32 2
  %194 = load i16, i16* %193, align 1
  %195 = shl i16 %194, 2
  %196 = ashr i16 %195, 2
  %197 = sext i16 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 %199)
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>* @g_179 to [8 x %struct.S2]*), i32 0, i64 %201
  %203 = getelementptr inbounds %struct.S2, %struct.S2* %202, i32 0, i32 3
  %204 = load i16, i16* %203, align 1, !tbaa !15
  %205 = zext i16 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i32 %206)
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

; <label>:209                                     ; preds = %176
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %210)
  br label %212

; <label>:212                                     ; preds = %209, %176
  br label %213

; <label>:213                                     ; preds = %212
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %i, align 4, !tbaa !1
  br label %173

; <label>:216                                     ; preds = %173
  %217 = load i64, i64* @g_197, align 8, !tbaa !7
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %218)
  %219 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_202 to i96*), align 1
  %220 = and i96 %219, 16383
  %221 = trunc i96 %220 to i32
  %222 = zext i32 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %223)
  %224 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_202 to i96*), align 1
  %225 = lshr i96 %224, 14
  %226 = and i96 %225, 8191
  %227 = trunc i96 %226 to i32
  %228 = zext i32 %227 to i64
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %229)
  %230 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_202 to i96*), align 1
  %231 = lshr i96 %230, 27
  %232 = and i96 %231, 268435455
  %233 = trunc i96 %232 to i32
  %234 = zext i32 %233 to i64
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %235)
  %236 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_202 to i96*), align 1
  %237 = shl i96 %236, 18
  %238 = ashr i96 %237, 73
  %239 = trunc i96 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %241)
  %242 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_202 to i96*), align 1
  %243 = shl i96 %242, 6
  %244 = ashr i96 %243, 84
  %245 = trunc i96 %244 to i32
  %246 = sext i32 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %247)
  %248 = load i32, i32* @g_234, align 4, !tbaa !1
  %249 = zext i32 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %250)
  %251 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_239 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %252)
  %253 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_239 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %254 = zext i16 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %255)
  %256 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_239 to %struct.S2*), i32 0, i32 2), align 1
  %257 = shl i16 %256, 2
  %258 = ashr i16 %257, 2
  %259 = sext i16 %258 to i32
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %261)
  %262 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_239 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %263 = zext i16 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %264)
  %265 = load volatile i64, i64* @g_267, align 8, !tbaa !7
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %266)
  %267 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_280 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %268)
  %269 = load volatile i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_280 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %270 = zext i16 %269 to i64
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %271)
  %272 = load volatile i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_280 to %struct.S2*), i32 0, i32 2), align 1
  %273 = shl i16 %272, 2
  %274 = ashr i16 %273, 2
  %275 = sext i16 %274 to i32
  %276 = sext i32 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %277)
  %278 = load volatile i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_280 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %279 = zext i16 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %280)
  %281 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_281 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %282)
  %283 = load volatile i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_281 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %284 = zext i16 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %285)
  %286 = load volatile i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_281 to %struct.S2*), i32 0, i32 2), align 1
  %287 = shl i16 %286, 2
  %288 = ashr i16 %287, 2
  %289 = sext i16 %288 to i32
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %291)
  %292 = load volatile i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_281 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %293 = zext i16 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %294)
  %295 = load i32, i32* @g_306, align 4, !tbaa !1
  %296 = sext i32 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %297)
  %298 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %299 = and i96 %298, 16383
  %300 = trunc i96 %299 to i32
  %301 = zext i32 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %302)
  %303 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %304 = lshr i96 %303, 14
  %305 = and i96 %304, 8191
  %306 = trunc i96 %305 to i32
  %307 = zext i32 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %308)
  %309 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %310 = lshr i96 %309, 27
  %311 = and i96 %310, 268435455
  %312 = trunc i96 %311 to i32
  %313 = zext i32 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), i32 %314)
  %315 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %316 = shl i96 %315, 18
  %317 = ashr i96 %316, 73
  %318 = trunc i96 %317 to i32
  %319 = sext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %320)
  %321 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %322 = shl i96 %321, 6
  %323 = ashr i96 %322, 84
  %324 = trunc i96 %323 to i32
  %325 = sext i32 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i32 %326)
  %327 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_328 to i96*), align 1
  %328 = and i96 %327, 16383
  %329 = trunc i96 %328 to i32
  %330 = zext i32 %329 to i64
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %330, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %331)
  %332 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_328 to i96*), align 1
  %333 = lshr i96 %332, 14
  %334 = and i96 %333, 8191
  %335 = trunc i96 %334 to i32
  %336 = zext i32 %335 to i64
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %336, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %337)
  %338 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_328 to i96*), align 1
  %339 = lshr i96 %338, 27
  %340 = and i96 %339, 268435455
  %341 = trunc i96 %340 to i32
  %342 = zext i32 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %343)
  %344 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_328 to i96*), align 1
  %345 = shl i96 %344, 18
  %346 = ashr i96 %345, 73
  %347 = trunc i96 %346 to i32
  %348 = sext i32 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %349)
  %350 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_328 to i96*), align 1
  %351 = shl i96 %350, 6
  %352 = ashr i96 %351, 84
  %353 = trunc i96 %352 to i32
  %354 = sext i32 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %355)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %356

; <label>:356                                     ; preds = %417, %216
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = icmp slt i32 %357, 5
  br i1 %358, label %359, label %420

; <label>:359                                     ; preds = %356
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %360

; <label>:360                                     ; preds = %413, %359
  %361 = load i32, i32* %j, align 4, !tbaa !1
  %362 = icmp slt i32 %361, 8
  br i1 %362, label %363, label %416

; <label>:363                                     ; preds = %360
  %364 = load i32, i32* %j, align 4, !tbaa !1
  %365 = sext i32 %364 to i64
  %366 = load i32, i32* %i, align 4, !tbaa !1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [5 x [8 x %struct.S2]], [5 x [8 x %struct.S2]]* bitcast (<{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> }>* @g_348 to [5 x [8 x %struct.S2]]*), i32 0, i64 %367
  %369 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* %368, i32 0, i64 %365
  %370 = getelementptr inbounds %struct.S2, %struct.S2* %369, i32 0, i32 0
  %371 = load volatile i64, i64* %370, align 1, !tbaa !12
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i32 %372)
  %373 = load i32, i32* %j, align 4, !tbaa !1
  %374 = sext i32 %373 to i64
  %375 = load i32, i32* %i, align 4, !tbaa !1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [5 x [8 x %struct.S2]], [5 x [8 x %struct.S2]]* bitcast (<{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> }>* @g_348 to [5 x [8 x %struct.S2]]*), i32 0, i64 %376
  %378 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* %377, i32 0, i64 %374
  %379 = getelementptr inbounds %struct.S2, %struct.S2* %378, i32 0, i32 1
  %380 = load i16, i16* %379, align 1, !tbaa !14
  %381 = zext i16 %380 to i64
  %382 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %381, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i32 %382)
  %383 = load i32, i32* %j, align 4, !tbaa !1
  %384 = sext i32 %383 to i64
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [5 x [8 x %struct.S2]], [5 x [8 x %struct.S2]]* bitcast (<{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> }>* @g_348 to [5 x [8 x %struct.S2]]*), i32 0, i64 %386
  %388 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* %387, i32 0, i64 %384
  %389 = getelementptr inbounds %struct.S2, %struct.S2* %388, i32 0, i32 2
  %390 = load i16, i16* %389, align 1
  %391 = shl i16 %390, 2
  %392 = ashr i16 %391, 2
  %393 = sext i16 %392 to i32
  %394 = sext i32 %393 to i64
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %394, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i32 %395)
  %396 = load i32, i32* %j, align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = load i32, i32* %i, align 4, !tbaa !1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [5 x [8 x %struct.S2]], [5 x [8 x %struct.S2]]* bitcast (<{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> }>* @g_348 to [5 x [8 x %struct.S2]]*), i32 0, i64 %399
  %401 = getelementptr inbounds [8 x %struct.S2], [8 x %struct.S2]* %400, i32 0, i64 %397
  %402 = getelementptr inbounds %struct.S2, %struct.S2* %401, i32 0, i32 3
  %403 = load i16, i16* %402, align 1, !tbaa !15
  %404 = zext i16 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i32 %405)
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %412

; <label>:408                                     ; preds = %363
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %410 = load i32, i32* %j, align 4, !tbaa !1
  %411 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 %409, i32 %410)
  br label %412

; <label>:412                                     ; preds = %408, %363
  br label %413

; <label>:413                                     ; preds = %412
  %414 = load i32, i32* %j, align 4, !tbaa !1
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %j, align 4, !tbaa !1
  br label %360

; <label>:416                                     ; preds = %360
  br label %417

; <label>:417                                     ; preds = %416
  %418 = load i32, i32* %i, align 4, !tbaa !1
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %i, align 4, !tbaa !1
  br label %356

; <label>:420                                     ; preds = %356
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %421

; <label>:421                                     ; preds = %450, %420
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = icmp slt i32 %422, 1
  br i1 %423, label %424, label %453

; <label>:424                                     ; preds = %421
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %425

; <label>:425                                     ; preds = %446, %424
  %426 = load i32, i32* %j, align 4, !tbaa !1
  %427 = icmp slt i32 %426, 9
  br i1 %427, label %428, label %449

; <label>:428                                     ; preds = %425
  %429 = load i32, i32* %j, align 4, !tbaa !1
  %430 = sext i32 %429 to i64
  %431 = load i32, i32* %i, align 4, !tbaa !1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [1 x [9 x %union.U3]], [1 x [9 x %union.U3]]* @g_353, i32 0, i64 %432
  %434 = getelementptr inbounds [9 x %union.U3], [9 x %union.U3]* %433, i32 0, i64 %430
  %435 = bitcast %union.U3* %434 to i32*
  %436 = load i32, i32* %435, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %437, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i32 %438)
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %445

; <label>:441                                     ; preds = %428
  %442 = load i32, i32* %i, align 4, !tbaa !1
  %443 = load i32, i32* %j, align 4, !tbaa !1
  %444 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 %442, i32 %443)
  br label %445

; <label>:445                                     ; preds = %441, %428
  br label %446

; <label>:446                                     ; preds = %445
  %447 = load i32, i32* %j, align 4, !tbaa !1
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %j, align 4, !tbaa !1
  br label %425

; <label>:449                                     ; preds = %425
  br label %450

; <label>:450                                     ; preds = %449
  %451 = load i32, i32* %i, align 4, !tbaa !1
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %i, align 4, !tbaa !1
  br label %421

; <label>:453                                     ; preds = %421
  %454 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_441 to i96*), align 1
  %455 = and i96 %454, 16383
  %456 = trunc i96 %455 to i32
  %457 = zext i32 %456 to i64
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 %458)
  %459 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_441 to i96*), align 1
  %460 = lshr i96 %459, 14
  %461 = and i96 %460, 8191
  %462 = trunc i96 %461 to i32
  %463 = zext i32 %462 to i64
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %463, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 %464)
  %465 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_441 to i96*), align 1
  %466 = lshr i96 %465, 27
  %467 = and i96 %466, 268435455
  %468 = trunc i96 %467 to i32
  %469 = zext i32 %468 to i64
  %470 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %469, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 %470)
  %471 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_441 to i96*), align 1
  %472 = shl i96 %471, 18
  %473 = ashr i96 %472, 73
  %474 = trunc i96 %473 to i32
  %475 = sext i32 %474 to i64
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %475, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %476)
  %477 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_441 to i96*), align 1
  %478 = shl i96 %477, 6
  %479 = ashr i96 %478, 84
  %480 = trunc i96 %479 to i32
  %481 = sext i32 %480 to i64
  %482 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %481, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 %482)
  %483 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_445 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %484 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %483, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %484)
  %485 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_445 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %486 = zext i16 %485 to i64
  %487 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %486, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 %487)
  %488 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_445 to %struct.S2*), i32 0, i32 2), align 1
  %489 = shl i16 %488, 2
  %490 = ashr i16 %489, 2
  %491 = sext i16 %490 to i32
  %492 = sext i32 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i32 %493)
  %494 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_445 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %495 = zext i16 %494 to i64
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %495, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 %496)
  %497 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_471 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %497, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i32 %498)
  %499 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_471 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %500 = zext i16 %499 to i64
  %501 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %500, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 %501)
  %502 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_471 to %struct.S2*), i32 0, i32 2), align 1
  %503 = shl i16 %502, 2
  %504 = ashr i16 %503, 2
  %505 = sext i16 %504 to i32
  %506 = sext i32 %505 to i64
  %507 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %506, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i32 %507)
  %508 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_471 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %509 = zext i16 %508 to i64
  %510 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %509, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 %510)
  %511 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_473 to i96*), align 1
  %512 = and i96 %511, 16383
  %513 = trunc i96 %512 to i32
  %514 = zext i32 %513 to i64
  %515 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %514, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 %515)
  %516 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_473 to i96*), align 1
  %517 = lshr i96 %516, 14
  %518 = and i96 %517, 8191
  %519 = trunc i96 %518 to i32
  %520 = zext i32 %519 to i64
  %521 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %520, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i32 %521)
  %522 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_473 to i96*), align 1
  %523 = lshr i96 %522, 27
  %524 = and i96 %523, 268435455
  %525 = trunc i96 %524 to i32
  %526 = zext i32 %525 to i64
  %527 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %526, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i32 %527)
  %528 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_473 to i96*), align 1
  %529 = shl i96 %528, 18
  %530 = ashr i96 %529, 73
  %531 = trunc i96 %530 to i32
  %532 = sext i32 %531 to i64
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %532, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i32 %533)
  %534 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_473 to i96*), align 1
  %535 = shl i96 %534, 6
  %536 = ashr i96 %535, 84
  %537 = trunc i96 %536 to i32
  %538 = sext i32 %537 to i64
  %539 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %538, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i32 %539)
  %540 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 %541)
  %542 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %543 = zext i16 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i32 %544)
  %545 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 2), align 1
  %546 = shl i16 %545, 2
  %547 = ashr i16 %546, 2
  %548 = sext i16 %547 to i32
  %549 = sext i32 %548 to i64
  %550 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %549, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i32 %550)
  %551 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %552 = zext i16 %551 to i64
  %553 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %552, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i32 %553)
  %554 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_482 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %554, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i32 %555)
  %556 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_482 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %557 = zext i16 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i32 %558)
  %559 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_482 to %struct.S2*), i32 0, i32 2), align 1
  %560 = shl i16 %559, 2
  %561 = ashr i16 %560, 2
  %562 = sext i16 %561 to i32
  %563 = sext i32 %562 to i64
  %564 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %563, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i32 0, i32 0), i32 %564)
  %565 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_482 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %566 = zext i16 %565 to i64
  %567 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %566, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i32 %567)
  %568 = load i8, i8* @g_486, align 1, !tbaa !9
  %569 = sext i8 %568 to i64
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %569, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 %570)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %571

; <label>:571                                     ; preds = %590, %453
  %572 = load i32, i32* %i, align 4, !tbaa !1
  %573 = icmp slt i32 %572, 7
  br i1 %573, label %574, label %593

; <label>:574                                     ; preds = %571
  %575 = load i32, i32* %i, align 4, !tbaa !1
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [7 x %struct.S1], [7 x %struct.S1]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_493 to [7 x %struct.S1]*), i32 0, i64 %576
  %578 = bitcast %struct.S1* %577 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = shl i32 %579, 7
  %581 = ashr i32 %580, 7
  %582 = sext i32 %581 to i64
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i32 %583)
  %584 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %589

; <label>:586                                     ; preds = %574
  %587 = load i32, i32* %i, align 4, !tbaa !1
  %588 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %587)
  br label %589

; <label>:589                                     ; preds = %586, %574
  br label %590

; <label>:590                                     ; preds = %589
  %591 = load i32, i32* %i, align 4, !tbaa !1
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %i, align 4, !tbaa !1
  br label %571

; <label>:593                                     ; preds = %571
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %594

; <label>:594                                     ; preds = %622, %593
  %595 = load i32, i32* %i, align 4, !tbaa !1
  %596 = icmp slt i32 %595, 10
  br i1 %596, label %597, label %625

; <label>:597                                     ; preds = %594
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %598

; <label>:598                                     ; preds = %618, %597
  %599 = load i32, i32* %j, align 4, !tbaa !1
  %600 = icmp slt i32 %599, 1
  br i1 %600, label %601, label %621

; <label>:601                                     ; preds = %598
  %602 = load i32, i32* %j, align 4, !tbaa !1
  %603 = sext i32 %602 to i64
  %604 = load i32, i32* %i, align 4, !tbaa !1
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [10 x [1 x i8]], [10 x [1 x i8]]* @g_531, i32 0, i64 %605
  %607 = getelementptr inbounds [1 x i8], [1 x i8]* %606, i32 0, i64 %603
  %608 = load i8, i8* %607, align 1, !tbaa !9
  %609 = zext i8 %608 to i64
  %610 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %609, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), i32 %610)
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %617

; <label>:613                                     ; preds = %601
  %614 = load i32, i32* %i, align 4, !tbaa !1
  %615 = load i32, i32* %j, align 4, !tbaa !1
  %616 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 %614, i32 %615)
  br label %617

; <label>:617                                     ; preds = %613, %601
  br label %618

; <label>:618                                     ; preds = %617
  %619 = load i32, i32* %j, align 4, !tbaa !1
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %j, align 4, !tbaa !1
  br label %598

; <label>:621                                     ; preds = %598
  br label %622

; <label>:622                                     ; preds = %621
  %623 = load i32, i32* %i, align 4, !tbaa !1
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %i, align 4, !tbaa !1
  br label %594

; <label>:625                                     ; preds = %594
  %626 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %627 = zext i32 %626 to i64
  %628 = xor i64 %627, 4294967295
  %629 = trunc i64 %628 to i32
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %629, i32 %630)
  %631 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %631) #1
  %632 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %632) #1
  %633 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %633) #1
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
  %l_3 = alloca i32*, align 8
  %l_2 = alloca i32**, align 8
  %l_42 = alloca %struct.S1, align 4
  %l_357 = alloca i32*, align 8
  %l_508 = alloca %union.U4*, align 8
  %l_6 = alloca i32*, align 8
  %l_8 = alloca i32*, align 8
  %l_9 = alloca i32, align 4
  %l_10 = alloca i32*, align 8
  %l_11 = alloca [2 x i32*], align 16
  %l_331 = alloca [8 x i8*], align 16
  %l_356 = alloca i32**, align 8
  %l_505 = alloca [5 x [10 x i16]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_28 = alloca [6 x [10 x [4 x i32**]]], align 16
  %l_29 = alloca i8*, align 8
  %l_329 = alloca %struct.S1, align 4
  %l_504 = alloca [2 x [5 x [1 x i8]]], align 1
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = alloca %struct.S1, align 4
  %2 = alloca %struct.S0, align 1
  %3 = alloca { i64, i32 }, align 1
  %4 = alloca i32
  %l_518 = alloca i8, align 1
  %l_529 = alloca i32, align 4
  %5 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_4, i32** %l_3, align 8, !tbaa !5
  %6 = bitcast i32*** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32** %l_3, i32*** %l_2, align 8, !tbaa !5
  %7 = bitcast %struct.S1* %l_42 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.S1* %l_42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_1.l_42, i32 0, i32 0), i64 4, i32 4, i1 false)
  %9 = bitcast i32** %l_357 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_82, i32 0, i64 0), i32** %l_357, align 8, !tbaa !5
  %10 = bitcast %union.U4** %l_508 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %union.U4* getelementptr inbounds ([5 x %union.U4], [5 x %union.U4]* @g_201, i32 0, i64 0), %union.U4** %l_508, align 8, !tbaa !5
  %11 = load i32**, i32*** %l_2, align 8, !tbaa !5
  store i32* null, i32** %11, align 8, !tbaa !5
  store i32 0, i32* @g_4, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %534, %0
  %13 = load i32, i32* @g_4, align 4, !tbaa !1
  %14 = icmp sle i32 %13, 6
  br i1 %14, label %15, label %537

; <label>:15                                      ; preds = %12
  %16 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* @g_7, i32** %l_6, align 8, !tbaa !5
  %17 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32* @g_7, i32** %l_8, align 8, !tbaa !5
  %18 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -1, i32* %l_9, align 4, !tbaa !1
  %19 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32* %l_9, i32** %l_10, align 8, !tbaa !5
  %20 = bitcast [2 x i32*]* %l_11 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast [8 x i8*]* %l_331 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %21) #1
  %22 = bitcast i32*** %l_356 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32** %l_8, i32*** %l_356, align 8, !tbaa !5
  %23 = bitcast [5 x [10 x i16]]* %l_505 to i8*
  call void @llvm.lifetime.start(i64 100, i8* %23) #1
  %24 = bitcast [5 x [10 x i16]]* %l_505 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast ([5 x [10 x i16]]* @func_1.l_505 to i8*), i64 100, i32 16, i1 false)
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %27

; <label>:27                                      ; preds = %34, %15
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %37

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 %32
  store i32* null, i32** %33, align 8, !tbaa !5
  br label %34

; <label>:34                                      ; preds = %30
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4, !tbaa !1
  br label %27

; <label>:37                                      ; preds = %27
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %38

; <label>:38                                      ; preds = %45, %37
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %48

; <label>:41                                      ; preds = %38
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8*], [8 x i8*]* %l_331, i32 0, i64 %43
  store i8* null, i8** %44, align 8, !tbaa !5
  br label %45

; <label>:45                                      ; preds = %41
  %46 = load i32, i32* %i, align 4, !tbaa !1
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %i, align 4, !tbaa !1
  br label %38

; <label>:48                                      ; preds = %38
  %49 = load i32, i32* @g_13, align 4, !tbaa !1
  %50 = add i32 %49, 1
  store i32 %50, i32* @g_13, align 4, !tbaa !1
  store i64 1, i64* @g_12, align 8, !tbaa !7
  br label %51

; <label>:51                                      ; preds = %514, %48
  %52 = load i64, i64* @g_12, align 8, !tbaa !7
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %517

; <label>:54                                      ; preds = %51
  %55 = bitcast [6 x [10 x [4 x i32**]]]* %l_28 to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %55) #1
  %56 = getelementptr inbounds [6 x [10 x [4 x i32**]]], [6 x [10 x [4 x i32**]]]* %l_28, i64 0, i64 0
  %57 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %56, i64 0, i64 0
  %58 = getelementptr inbounds [4 x i32**], [4 x i32**]* %57, i64 0, i64 0
  store i32** %l_10, i32*** %58, !tbaa !5
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  store i32** %l_8, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  store i32** %l_8, i32*** %60, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  store i32** %l_3, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds [4 x i32**], [4 x i32**]* %57, i64 1
  %63 = getelementptr inbounds [4 x i32**], [4 x i32**]* %62, i64 0, i64 0
  store i32** null, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  store i32** %l_10, i32*** %64, !tbaa !5
  %65 = getelementptr inbounds i32**, i32*** %64, i64 1
  %66 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %66, i32*** %65, !tbaa !5
  %67 = getelementptr inbounds i32**, i32*** %65, i64 1
  store i32** %l_10, i32*** %67, !tbaa !5
  %68 = getelementptr inbounds [4 x i32**], [4 x i32**]* %62, i64 1
  %69 = getelementptr inbounds [4 x i32**], [4 x i32**]* %68, i64 0, i64 0
  store i32** %l_3, i32*** %69, !tbaa !5
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  store i32** null, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  store i32** %l_10, i32*** %71, !tbaa !5
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  store i32** %l_6, i32*** %72, !tbaa !5
  %73 = getelementptr inbounds [4 x i32**], [4 x i32**]* %68, i64 1
  %74 = bitcast [4 x i32**]* %73 to i8*
  call void @llvm.memset.p0i8.i64(i8* %74, i8 0, i64 32, i32 8, i1 false)
  %75 = getelementptr inbounds [4 x i32**], [4 x i32**]* %73, i64 0, i64 0
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  store i32** %l_8, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds i32**, i32*** %76, i64 1
  %78 = getelementptr inbounds i32**, i32*** %77, i64 1
  %79 = getelementptr inbounds [4 x i32**], [4 x i32**]* %73, i64 1
  %80 = getelementptr inbounds [4 x i32**], [4 x i32**]* %79, i64 0, i64 0
  store i32** %l_3, i32*** %80, !tbaa !5
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  store i32** %l_3, i32*** %81, !tbaa !5
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  store i32** null, i32*** %82, !tbaa !5
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  %84 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %84, i32*** %83, !tbaa !5
  %85 = getelementptr inbounds [4 x i32**], [4 x i32**]* %79, i64 1
  %86 = getelementptr inbounds [4 x i32**], [4 x i32**]* %85, i64 0, i64 0
  store i32** null, i32*** %86, !tbaa !5
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  store i32** %l_8, i32*** %87, !tbaa !5
  %88 = getelementptr inbounds i32**, i32*** %87, i64 1
  store i32** %l_10, i32*** %88, !tbaa !5
  %89 = getelementptr inbounds i32**, i32*** %88, i64 1
  store i32** %l_8, i32*** %89, !tbaa !5
  %90 = getelementptr inbounds [4 x i32**], [4 x i32**]* %85, i64 1
  %91 = getelementptr inbounds [4 x i32**], [4 x i32**]* %90, i64 0, i64 0
  store i32** %l_3, i32*** %91, !tbaa !5
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  store i32** %l_10, i32*** %92, !tbaa !5
  %93 = getelementptr inbounds i32**, i32*** %92, i64 1
  %94 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %94, i32*** %93, !tbaa !5
  %95 = getelementptr inbounds i32**, i32*** %93, i64 1
  store i32** %l_10, i32*** %95, !tbaa !5
  %96 = getelementptr inbounds [4 x i32**], [4 x i32**]* %90, i64 1
  %97 = getelementptr inbounds [4 x i32**], [4 x i32**]* %96, i64 0, i64 0
  %98 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %98, i32*** %97, !tbaa !5
  %99 = getelementptr inbounds i32**, i32*** %97, i64 1
  store i32** %l_10, i32*** %99, !tbaa !5
  %100 = getelementptr inbounds i32**, i32*** %99, i64 1
  store i32** %l_3, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  store i32** %l_8, i32*** %101, !tbaa !5
  %102 = getelementptr inbounds [4 x i32**], [4 x i32**]* %96, i64 1
  %103 = getelementptr inbounds [4 x i32**], [4 x i32**]* %102, i64 0, i64 0
  store i32** %l_10, i32*** %103, !tbaa !5
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  store i32** %l_8, i32*** %104, !tbaa !5
  %105 = getelementptr inbounds i32**, i32*** %104, i64 1
  store i32** null, i32*** %105, !tbaa !5
  %106 = getelementptr inbounds i32**, i32*** %105, i64 1
  %107 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %107, i32*** %106, !tbaa !5
  %108 = getelementptr inbounds [4 x i32**], [4 x i32**]* %102, i64 1
  %109 = getelementptr inbounds [4 x i32**], [4 x i32**]* %108, i64 0, i64 0
  store i32** null, i32*** %109, !tbaa !5
  %110 = getelementptr inbounds i32**, i32*** %109, i64 1
  store i32** %l_3, i32*** %110, !tbaa !5
  %111 = getelementptr inbounds i32**, i32*** %110, i64 1
  store i32** %l_3, i32*** %111, !tbaa !5
  %112 = getelementptr inbounds i32**, i32*** %111, i64 1
  store i32** null, i32*** %112, !tbaa !5
  %113 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %56, i64 1
  %114 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %113, i64 0, i64 0
  %115 = getelementptr inbounds [4 x i32**], [4 x i32**]* %114, i64 0, i64 0
  store i32** null, i32*** %115, !tbaa !5
  %116 = getelementptr inbounds i32**, i32*** %115, i64 1
  store i32** %l_8, i32*** %116, !tbaa !5
  %117 = getelementptr inbounds i32**, i32*** %116, i64 1
  store i32** null, i32*** %117, !tbaa !5
  %118 = getelementptr inbounds i32**, i32*** %117, i64 1
  store i32** %l_6, i32*** %118, !tbaa !5
  %119 = getelementptr inbounds [4 x i32**], [4 x i32**]* %114, i64 1
  %120 = getelementptr inbounds [4 x i32**], [4 x i32**]* %119, i64 0, i64 0
  store i32** %l_10, i32*** %120, !tbaa !5
  %121 = getelementptr inbounds i32**, i32*** %120, i64 1
  store i32** null, i32*** %121, !tbaa !5
  %122 = getelementptr inbounds i32**, i32*** %121, i64 1
  store i32** %l_3, i32*** %122, !tbaa !5
  %123 = getelementptr inbounds i32**, i32*** %122, i64 1
  store i32** %l_10, i32*** %123, !tbaa !5
  %124 = getelementptr inbounds [4 x i32**], [4 x i32**]* %119, i64 1
  %125 = getelementptr inbounds [4 x i32**], [4 x i32**]* %124, i64 0, i64 0
  %126 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %126, i32*** %125, !tbaa !5
  %127 = getelementptr inbounds i32**, i32*** %125, i64 1
  store i32** null, i32*** %127, !tbaa !5
  %128 = getelementptr inbounds i32**, i32*** %127, i64 1
  %129 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %129, i32*** %128, !tbaa !5
  %130 = getelementptr inbounds i32**, i32*** %128, i64 1
  store i32** %l_10, i32*** %130, !tbaa !5
  %131 = getelementptr inbounds [4 x i32**], [4 x i32**]* %124, i64 1
  %132 = getelementptr inbounds [4 x i32**], [4 x i32**]* %131, i64 0, i64 0
  store i32** %l_3, i32*** %132, !tbaa !5
  %133 = getelementptr inbounds i32**, i32*** %132, i64 1
  store i32** null, i32*** %133, !tbaa !5
  %134 = getelementptr inbounds i32**, i32*** %133, i64 1
  store i32** %l_10, i32*** %134, !tbaa !5
  %135 = getelementptr inbounds i32**, i32*** %134, i64 1
  store i32** %l_6, i32*** %135, !tbaa !5
  %136 = getelementptr inbounds [4 x i32**], [4 x i32**]* %131, i64 1
  %137 = bitcast [4 x i32**]* %136 to i8*
  call void @llvm.memset.p0i8.i64(i8* %137, i8 0, i64 32, i32 8, i1 false)
  %138 = getelementptr inbounds [4 x i32**], [4 x i32**]* %136, i64 0, i64 0
  %139 = getelementptr inbounds i32**, i32*** %138, i64 1
  store i32** %l_8, i32*** %139, !tbaa !5
  %140 = getelementptr inbounds i32**, i32*** %139, i64 1
  %141 = getelementptr inbounds i32**, i32*** %140, i64 1
  %142 = getelementptr inbounds [4 x i32**], [4 x i32**]* %136, i64 1
  %143 = getelementptr inbounds [4 x i32**], [4 x i32**]* %142, i64 0, i64 0
  store i32** %l_3, i32*** %143, !tbaa !5
  %144 = getelementptr inbounds i32**, i32*** %143, i64 1
  store i32** %l_3, i32*** %144, !tbaa !5
  %145 = getelementptr inbounds i32**, i32*** %144, i64 1
  store i32** null, i32*** %145, !tbaa !5
  %146 = getelementptr inbounds i32**, i32*** %145, i64 1
  %147 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %147, i32*** %146, !tbaa !5
  %148 = getelementptr inbounds [4 x i32**], [4 x i32**]* %142, i64 1
  %149 = getelementptr inbounds [4 x i32**], [4 x i32**]* %148, i64 0, i64 0
  store i32** null, i32*** %149, !tbaa !5
  %150 = getelementptr inbounds i32**, i32*** %149, i64 1
  store i32** %l_8, i32*** %150, !tbaa !5
  %151 = getelementptr inbounds i32**, i32*** %150, i64 1
  store i32** %l_10, i32*** %151, !tbaa !5
  %152 = getelementptr inbounds i32**, i32*** %151, i64 1
  store i32** %l_8, i32*** %152, !tbaa !5
  %153 = getelementptr inbounds [4 x i32**], [4 x i32**]* %148, i64 1
  %154 = getelementptr inbounds [4 x i32**], [4 x i32**]* %153, i64 0, i64 0
  store i32** %l_3, i32*** %154, !tbaa !5
  %155 = getelementptr inbounds i32**, i32*** %154, i64 1
  store i32** %l_10, i32*** %155, !tbaa !5
  %156 = getelementptr inbounds i32**, i32*** %155, i64 1
  %157 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %157, i32*** %156, !tbaa !5
  %158 = getelementptr inbounds i32**, i32*** %156, i64 1
  store i32** %l_10, i32*** %158, !tbaa !5
  %159 = getelementptr inbounds [4 x i32**], [4 x i32**]* %153, i64 1
  %160 = getelementptr inbounds [4 x i32**], [4 x i32**]* %159, i64 0, i64 0
  %161 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %161, i32*** %160, !tbaa !5
  %162 = getelementptr inbounds i32**, i32*** %160, i64 1
  store i32** %l_10, i32*** %162, !tbaa !5
  %163 = getelementptr inbounds i32**, i32*** %162, i64 1
  store i32** %l_3, i32*** %163, !tbaa !5
  %164 = getelementptr inbounds i32**, i32*** %163, i64 1
  store i32** %l_8, i32*** %164, !tbaa !5
  %165 = getelementptr inbounds [4 x i32**], [4 x i32**]* %159, i64 1
  %166 = getelementptr inbounds [4 x i32**], [4 x i32**]* %165, i64 0, i64 0
  store i32** %l_10, i32*** %166, !tbaa !5
  %167 = getelementptr inbounds i32**, i32*** %166, i64 1
  store i32** %l_8, i32*** %167, !tbaa !5
  %168 = getelementptr inbounds i32**, i32*** %167, i64 1
  store i32** null, i32*** %168, !tbaa !5
  %169 = getelementptr inbounds i32**, i32*** %168, i64 1
  %170 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %170, i32*** %169, !tbaa !5
  %171 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %113, i64 1
  %172 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %171, i64 0, i64 0
  %173 = getelementptr inbounds [4 x i32**], [4 x i32**]* %172, i64 0, i64 0
  store i32** null, i32*** %173, !tbaa !5
  %174 = getelementptr inbounds i32**, i32*** %173, i64 1
  store i32** %l_3, i32*** %174, !tbaa !5
  %175 = getelementptr inbounds i32**, i32*** %174, i64 1
  store i32** %l_3, i32*** %175, !tbaa !5
  %176 = getelementptr inbounds i32**, i32*** %175, i64 1
  store i32** null, i32*** %176, !tbaa !5
  %177 = getelementptr inbounds [4 x i32**], [4 x i32**]* %172, i64 1
  %178 = getelementptr inbounds [4 x i32**], [4 x i32**]* %177, i64 0, i64 0
  store i32** null, i32*** %178, !tbaa !5
  %179 = getelementptr inbounds i32**, i32*** %178, i64 1
  store i32** %l_8, i32*** %179, !tbaa !5
  %180 = getelementptr inbounds i32**, i32*** %179, i64 1
  store i32** null, i32*** %180, !tbaa !5
  %181 = getelementptr inbounds i32**, i32*** %180, i64 1
  store i32** %l_6, i32*** %181, !tbaa !5
  %182 = getelementptr inbounds [4 x i32**], [4 x i32**]* %177, i64 1
  %183 = getelementptr inbounds [4 x i32**], [4 x i32**]* %182, i64 0, i64 0
  store i32** %l_10, i32*** %183, !tbaa !5
  %184 = getelementptr inbounds i32**, i32*** %183, i64 1
  store i32** null, i32*** %184, !tbaa !5
  %185 = getelementptr inbounds i32**, i32*** %184, i64 1
  store i32** %l_3, i32*** %185, !tbaa !5
  %186 = getelementptr inbounds i32**, i32*** %185, i64 1
  store i32** %l_10, i32*** %186, !tbaa !5
  %187 = getelementptr inbounds [4 x i32**], [4 x i32**]* %182, i64 1
  %188 = getelementptr inbounds [4 x i32**], [4 x i32**]* %187, i64 0, i64 0
  %189 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %189, i32*** %188, !tbaa !5
  %190 = getelementptr inbounds i32**, i32*** %188, i64 1
  store i32** null, i32*** %190, !tbaa !5
  %191 = getelementptr inbounds i32**, i32*** %190, i64 1
  %192 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %192, i32*** %191, !tbaa !5
  %193 = getelementptr inbounds i32**, i32*** %191, i64 1
  store i32** %l_10, i32*** %193, !tbaa !5
  %194 = getelementptr inbounds [4 x i32**], [4 x i32**]* %187, i64 1
  %195 = getelementptr inbounds [4 x i32**], [4 x i32**]* %194, i64 0, i64 0
  store i32** %l_3, i32*** %195, !tbaa !5
  %196 = getelementptr inbounds i32**, i32*** %195, i64 1
  store i32** null, i32*** %196, !tbaa !5
  %197 = getelementptr inbounds i32**, i32*** %196, i64 1
  store i32** %l_10, i32*** %197, !tbaa !5
  %198 = getelementptr inbounds i32**, i32*** %197, i64 1
  store i32** %l_6, i32*** %198, !tbaa !5
  %199 = getelementptr inbounds [4 x i32**], [4 x i32**]* %194, i64 1
  %200 = bitcast [4 x i32**]* %199 to i8*
  call void @llvm.memset.p0i8.i64(i8* %200, i8 0, i64 32, i32 8, i1 false)
  %201 = getelementptr inbounds [4 x i32**], [4 x i32**]* %199, i64 0, i64 0
  %202 = getelementptr inbounds i32**, i32*** %201, i64 1
  store i32** %l_8, i32*** %202, !tbaa !5
  %203 = getelementptr inbounds i32**, i32*** %202, i64 1
  %204 = getelementptr inbounds i32**, i32*** %203, i64 1
  %205 = getelementptr inbounds [4 x i32**], [4 x i32**]* %199, i64 1
  %206 = getelementptr inbounds [4 x i32**], [4 x i32**]* %205, i64 0, i64 0
  store i32** %l_3, i32*** %206, !tbaa !5
  %207 = getelementptr inbounds i32**, i32*** %206, i64 1
  store i32** %l_3, i32*** %207, !tbaa !5
  %208 = getelementptr inbounds i32**, i32*** %207, i64 1
  store i32** null, i32*** %208, !tbaa !5
  %209 = getelementptr inbounds i32**, i32*** %208, i64 1
  %210 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %210, i32*** %209, !tbaa !5
  %211 = getelementptr inbounds [4 x i32**], [4 x i32**]* %205, i64 1
  %212 = getelementptr inbounds [4 x i32**], [4 x i32**]* %211, i64 0, i64 0
  store i32** null, i32*** %212, !tbaa !5
  %213 = getelementptr inbounds i32**, i32*** %212, i64 1
  store i32** %l_8, i32*** %213, !tbaa !5
  %214 = getelementptr inbounds i32**, i32*** %213, i64 1
  store i32** %l_10, i32*** %214, !tbaa !5
  %215 = getelementptr inbounds i32**, i32*** %214, i64 1
  store i32** %l_8, i32*** %215, !tbaa !5
  %216 = getelementptr inbounds [4 x i32**], [4 x i32**]* %211, i64 1
  %217 = getelementptr inbounds [4 x i32**], [4 x i32**]* %216, i64 0, i64 0
  store i32** %l_3, i32*** %217, !tbaa !5
  %218 = getelementptr inbounds i32**, i32*** %217, i64 1
  store i32** %l_10, i32*** %218, !tbaa !5
  %219 = getelementptr inbounds i32**, i32*** %218, i64 1
  %220 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %220, i32*** %219, !tbaa !5
  %221 = getelementptr inbounds i32**, i32*** %219, i64 1
  store i32** %l_10, i32*** %221, !tbaa !5
  %222 = getelementptr inbounds [4 x i32**], [4 x i32**]* %216, i64 1
  %223 = getelementptr inbounds [4 x i32**], [4 x i32**]* %222, i64 0, i64 0
  %224 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %224, i32*** %223, !tbaa !5
  %225 = getelementptr inbounds i32**, i32*** %223, i64 1
  store i32** %l_10, i32*** %225, !tbaa !5
  %226 = getelementptr inbounds i32**, i32*** %225, i64 1
  store i32** %l_3, i32*** %226, !tbaa !5
  %227 = getelementptr inbounds i32**, i32*** %226, i64 1
  store i32** %l_8, i32*** %227, !tbaa !5
  %228 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %171, i64 1
  %229 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %228, i64 0, i64 0
  %230 = getelementptr inbounds [4 x i32**], [4 x i32**]* %229, i64 0, i64 0
  store i32** %l_10, i32*** %230, !tbaa !5
  %231 = getelementptr inbounds i32**, i32*** %230, i64 1
  store i32** %l_8, i32*** %231, !tbaa !5
  %232 = getelementptr inbounds i32**, i32*** %231, i64 1
  store i32** null, i32*** %232, !tbaa !5
  %233 = getelementptr inbounds i32**, i32*** %232, i64 1
  %234 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %234, i32*** %233, !tbaa !5
  %235 = getelementptr inbounds [4 x i32**], [4 x i32**]* %229, i64 1
  %236 = getelementptr inbounds [4 x i32**], [4 x i32**]* %235, i64 0, i64 0
  store i32** null, i32*** %236, !tbaa !5
  %237 = getelementptr inbounds i32**, i32*** %236, i64 1
  store i32** %l_3, i32*** %237, !tbaa !5
  %238 = getelementptr inbounds i32**, i32*** %237, i64 1
  store i32** %l_3, i32*** %238, !tbaa !5
  %239 = getelementptr inbounds i32**, i32*** %238, i64 1
  store i32** null, i32*** %239, !tbaa !5
  %240 = getelementptr inbounds [4 x i32**], [4 x i32**]* %235, i64 1
  %241 = getelementptr inbounds [4 x i32**], [4 x i32**]* %240, i64 0, i64 0
  store i32** null, i32*** %241, !tbaa !5
  %242 = getelementptr inbounds i32**, i32*** %241, i64 1
  store i32** %l_8, i32*** %242, !tbaa !5
  %243 = getelementptr inbounds i32**, i32*** %242, i64 1
  store i32** null, i32*** %243, !tbaa !5
  %244 = getelementptr inbounds i32**, i32*** %243, i64 1
  store i32** %l_6, i32*** %244, !tbaa !5
  %245 = getelementptr inbounds [4 x i32**], [4 x i32**]* %240, i64 1
  %246 = getelementptr inbounds [4 x i32**], [4 x i32**]* %245, i64 0, i64 0
  store i32** %l_10, i32*** %246, !tbaa !5
  %247 = getelementptr inbounds i32**, i32*** %246, i64 1
  store i32** null, i32*** %247, !tbaa !5
  %248 = getelementptr inbounds i32**, i32*** %247, i64 1
  store i32** %l_3, i32*** %248, !tbaa !5
  %249 = getelementptr inbounds i32**, i32*** %248, i64 1
  store i32** %l_10, i32*** %249, !tbaa !5
  %250 = getelementptr inbounds [4 x i32**], [4 x i32**]* %245, i64 1
  %251 = getelementptr inbounds [4 x i32**], [4 x i32**]* %250, i64 0, i64 0
  %252 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %252, i32*** %251, !tbaa !5
  %253 = getelementptr inbounds i32**, i32*** %251, i64 1
  store i32** null, i32*** %253, !tbaa !5
  %254 = getelementptr inbounds i32**, i32*** %253, i64 1
  %255 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %255, i32*** %254, !tbaa !5
  %256 = getelementptr inbounds i32**, i32*** %254, i64 1
  store i32** %l_10, i32*** %256, !tbaa !5
  %257 = getelementptr inbounds [4 x i32**], [4 x i32**]* %250, i64 1
  %258 = getelementptr inbounds [4 x i32**], [4 x i32**]* %257, i64 0, i64 0
  store i32** %l_3, i32*** %258, !tbaa !5
  %259 = getelementptr inbounds i32**, i32*** %258, i64 1
  store i32** null, i32*** %259, !tbaa !5
  %260 = getelementptr inbounds i32**, i32*** %259, i64 1
  store i32** %l_10, i32*** %260, !tbaa !5
  %261 = getelementptr inbounds i32**, i32*** %260, i64 1
  store i32** %l_6, i32*** %261, !tbaa !5
  %262 = getelementptr inbounds [4 x i32**], [4 x i32**]* %257, i64 1
  %263 = bitcast [4 x i32**]* %262 to i8*
  call void @llvm.memset.p0i8.i64(i8* %263, i8 0, i64 32, i32 8, i1 false)
  %264 = getelementptr inbounds [4 x i32**], [4 x i32**]* %262, i64 0, i64 0
  %265 = getelementptr inbounds i32**, i32*** %264, i64 1
  store i32** %l_8, i32*** %265, !tbaa !5
  %266 = getelementptr inbounds i32**, i32*** %265, i64 1
  %267 = getelementptr inbounds i32**, i32*** %266, i64 1
  %268 = getelementptr inbounds [4 x i32**], [4 x i32**]* %262, i64 1
  %269 = getelementptr inbounds [4 x i32**], [4 x i32**]* %268, i64 0, i64 0
  store i32** %l_3, i32*** %269, !tbaa !5
  %270 = getelementptr inbounds i32**, i32*** %269, i64 1
  store i32** %l_3, i32*** %270, !tbaa !5
  %271 = getelementptr inbounds i32**, i32*** %270, i64 1
  store i32** null, i32*** %271, !tbaa !5
  %272 = getelementptr inbounds i32**, i32*** %271, i64 1
  %273 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %273, i32*** %272, !tbaa !5
  %274 = getelementptr inbounds [4 x i32**], [4 x i32**]* %268, i64 1
  %275 = getelementptr inbounds [4 x i32**], [4 x i32**]* %274, i64 0, i64 0
  store i32** null, i32*** %275, !tbaa !5
  %276 = getelementptr inbounds i32**, i32*** %275, i64 1
  store i32** %l_8, i32*** %276, !tbaa !5
  %277 = getelementptr inbounds i32**, i32*** %276, i64 1
  store i32** %l_10, i32*** %277, !tbaa !5
  %278 = getelementptr inbounds i32**, i32*** %277, i64 1
  store i32** %l_8, i32*** %278, !tbaa !5
  %279 = getelementptr inbounds [4 x i32**], [4 x i32**]* %274, i64 1
  %280 = getelementptr inbounds [4 x i32**], [4 x i32**]* %279, i64 0, i64 0
  store i32** %l_3, i32*** %280, !tbaa !5
  %281 = getelementptr inbounds i32**, i32*** %280, i64 1
  store i32** %l_10, i32*** %281, !tbaa !5
  %282 = getelementptr inbounds i32**, i32*** %281, i64 1
  %283 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %283, i32*** %282, !tbaa !5
  %284 = getelementptr inbounds i32**, i32*** %282, i64 1
  store i32** %l_10, i32*** %284, !tbaa !5
  %285 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %228, i64 1
  %286 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %285, i64 0, i64 0
  %287 = getelementptr inbounds [4 x i32**], [4 x i32**]* %286, i64 0, i64 0
  %288 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %288, i32*** %287, !tbaa !5
  %289 = getelementptr inbounds i32**, i32*** %287, i64 1
  store i32** %l_10, i32*** %289, !tbaa !5
  %290 = getelementptr inbounds i32**, i32*** %289, i64 1
  store i32** %l_3, i32*** %290, !tbaa !5
  %291 = getelementptr inbounds i32**, i32*** %290, i64 1
  store i32** %l_8, i32*** %291, !tbaa !5
  %292 = getelementptr inbounds [4 x i32**], [4 x i32**]* %286, i64 1
  %293 = getelementptr inbounds [4 x i32**], [4 x i32**]* %292, i64 0, i64 0
  store i32** %l_10, i32*** %293, !tbaa !5
  %294 = getelementptr inbounds i32**, i32*** %293, i64 1
  store i32** %l_8, i32*** %294, !tbaa !5
  %295 = getelementptr inbounds i32**, i32*** %294, i64 1
  store i32** null, i32*** %295, !tbaa !5
  %296 = getelementptr inbounds i32**, i32*** %295, i64 1
  %297 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %297, i32*** %296, !tbaa !5
  %298 = getelementptr inbounds [4 x i32**], [4 x i32**]* %292, i64 1
  %299 = getelementptr inbounds [4 x i32**], [4 x i32**]* %298, i64 0, i64 0
  store i32** null, i32*** %299, !tbaa !5
  %300 = getelementptr inbounds i32**, i32*** %299, i64 1
  store i32** %l_3, i32*** %300, !tbaa !5
  %301 = getelementptr inbounds i32**, i32*** %300, i64 1
  store i32** %l_3, i32*** %301, !tbaa !5
  %302 = getelementptr inbounds i32**, i32*** %301, i64 1
  store i32** null, i32*** %302, !tbaa !5
  %303 = getelementptr inbounds [4 x i32**], [4 x i32**]* %298, i64 1
  %304 = getelementptr inbounds [4 x i32**], [4 x i32**]* %303, i64 0, i64 0
  store i32** null, i32*** %304, !tbaa !5
  %305 = getelementptr inbounds i32**, i32*** %304, i64 1
  store i32** %l_8, i32*** %305, !tbaa !5
  %306 = getelementptr inbounds i32**, i32*** %305, i64 1
  store i32** null, i32*** %306, !tbaa !5
  %307 = getelementptr inbounds i32**, i32*** %306, i64 1
  store i32** %l_6, i32*** %307, !tbaa !5
  %308 = getelementptr inbounds [4 x i32**], [4 x i32**]* %303, i64 1
  %309 = getelementptr inbounds [4 x i32**], [4 x i32**]* %308, i64 0, i64 0
  store i32** %l_10, i32*** %309, !tbaa !5
  %310 = getelementptr inbounds i32**, i32*** %309, i64 1
  store i32** null, i32*** %310, !tbaa !5
  %311 = getelementptr inbounds i32**, i32*** %310, i64 1
  store i32** %l_3, i32*** %311, !tbaa !5
  %312 = getelementptr inbounds i32**, i32*** %311, i64 1
  store i32** %l_10, i32*** %312, !tbaa !5
  %313 = getelementptr inbounds [4 x i32**], [4 x i32**]* %308, i64 1
  %314 = getelementptr inbounds [4 x i32**], [4 x i32**]* %313, i64 0, i64 0
  %315 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %315, i32*** %314, !tbaa !5
  %316 = getelementptr inbounds i32**, i32*** %314, i64 1
  store i32** null, i32*** %316, !tbaa !5
  %317 = getelementptr inbounds i32**, i32*** %316, i64 1
  %318 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %318, i32*** %317, !tbaa !5
  %319 = getelementptr inbounds i32**, i32*** %317, i64 1
  store i32** %l_10, i32*** %319, !tbaa !5
  %320 = getelementptr inbounds [4 x i32**], [4 x i32**]* %313, i64 1
  %321 = getelementptr inbounds [4 x i32**], [4 x i32**]* %320, i64 0, i64 0
  store i32** %l_3, i32*** %321, !tbaa !5
  %322 = getelementptr inbounds i32**, i32*** %321, i64 1
  store i32** null, i32*** %322, !tbaa !5
  %323 = getelementptr inbounds i32**, i32*** %322, i64 1
  store i32** %l_10, i32*** %323, !tbaa !5
  %324 = getelementptr inbounds i32**, i32*** %323, i64 1
  store i32** %l_6, i32*** %324, !tbaa !5
  %325 = getelementptr inbounds [4 x i32**], [4 x i32**]* %320, i64 1
  %326 = bitcast [4 x i32**]* %325 to i8*
  call void @llvm.memset.p0i8.i64(i8* %326, i8 0, i64 32, i32 8, i1 false)
  %327 = getelementptr inbounds [4 x i32**], [4 x i32**]* %325, i64 0, i64 0
  %328 = getelementptr inbounds i32**, i32*** %327, i64 1
  store i32** %l_8, i32*** %328, !tbaa !5
  %329 = getelementptr inbounds i32**, i32*** %328, i64 1
  %330 = getelementptr inbounds i32**, i32*** %329, i64 1
  %331 = getelementptr inbounds [4 x i32**], [4 x i32**]* %325, i64 1
  %332 = getelementptr inbounds [4 x i32**], [4 x i32**]* %331, i64 0, i64 0
  store i32** %l_3, i32*** %332, !tbaa !5
  %333 = getelementptr inbounds i32**, i32*** %332, i64 1
  store i32** %l_3, i32*** %333, !tbaa !5
  %334 = getelementptr inbounds i32**, i32*** %333, i64 1
  store i32** null, i32*** %334, !tbaa !5
  %335 = getelementptr inbounds i32**, i32*** %334, i64 1
  %336 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %336, i32*** %335, !tbaa !5
  %337 = getelementptr inbounds [4 x i32**], [4 x i32**]* %331, i64 1
  %338 = getelementptr inbounds [4 x i32**], [4 x i32**]* %337, i64 0, i64 0
  %339 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %339, i32*** %338, !tbaa !5
  %340 = getelementptr inbounds i32**, i32*** %338, i64 1
  store i32** %l_3, i32*** %340, !tbaa !5
  %341 = getelementptr inbounds i32**, i32*** %340, i64 1
  store i32** null, i32*** %341, !tbaa !5
  %342 = getelementptr inbounds i32**, i32*** %341, i64 1
  store i32** null, i32*** %342, !tbaa !5
  %343 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %285, i64 1
  %344 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %343, i64 0, i64 0
  %345 = bitcast [4 x i32**]* %344 to i8*
  call void @llvm.memset.p0i8.i64(i8* %345, i8 0, i64 32, i32 8, i1 false)
  %346 = getelementptr inbounds [4 x i32**], [4 x i32**]* %344, i64 0, i64 0
  %347 = getelementptr inbounds i32**, i32*** %346, i64 1
  %348 = getelementptr inbounds i32**, i32*** %347, i64 1
  store i32** %l_8, i32*** %348, !tbaa !5
  %349 = getelementptr inbounds i32**, i32*** %348, i64 1
  %350 = getelementptr inbounds [4 x i32**], [4 x i32**]* %344, i64 1
  %351 = bitcast [4 x i32**]* %350 to i8*
  call void @llvm.memset.p0i8.i64(i8* %351, i8 0, i64 32, i32 8, i1 false)
  %352 = getelementptr inbounds [4 x i32**], [4 x i32**]* %350, i64 0, i64 0
  store i32** %l_8, i32*** %352, !tbaa !5
  %353 = getelementptr inbounds i32**, i32*** %352, i64 1
  %354 = getelementptr inbounds i32**, i32*** %353, i64 1
  %355 = getelementptr inbounds i32**, i32*** %354, i64 1
  %356 = getelementptr inbounds [4 x i32**], [4 x i32**]* %350, i64 1
  %357 = getelementptr inbounds [4 x i32**], [4 x i32**]* %356, i64 0, i64 0
  store i32** null, i32*** %357, !tbaa !5
  %358 = getelementptr inbounds i32**, i32*** %357, i64 1
  store i32** %l_3, i32*** %358, !tbaa !5
  %359 = getelementptr inbounds i32**, i32*** %358, i64 1
  %360 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %360, i32*** %359, !tbaa !5
  %361 = getelementptr inbounds i32**, i32*** %359, i64 1
  store i32** %l_8, i32*** %361, !tbaa !5
  %362 = getelementptr inbounds [4 x i32**], [4 x i32**]* %356, i64 1
  %363 = getelementptr inbounds [4 x i32**], [4 x i32**]* %362, i64 0, i64 0
  store i32** %l_3, i32*** %363, !tbaa !5
  %364 = getelementptr inbounds i32**, i32*** %363, i64 1
  store i32** %l_10, i32*** %364, !tbaa !5
  %365 = getelementptr inbounds i32**, i32*** %364, i64 1
  store i32** %l_10, i32*** %365, !tbaa !5
  %366 = getelementptr inbounds i32**, i32*** %365, i64 1
  store i32** %l_3, i32*** %366, !tbaa !5
  %367 = getelementptr inbounds [4 x i32**], [4 x i32**]* %362, i64 1
  %368 = getelementptr inbounds [4 x i32**], [4 x i32**]* %367, i64 0, i64 0
  store i32** %l_3, i32*** %368, !tbaa !5
  %369 = getelementptr inbounds i32**, i32*** %368, i64 1
  store i32** null, i32*** %369, !tbaa !5
  %370 = getelementptr inbounds i32**, i32*** %369, i64 1
  %371 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %371, i32*** %370, !tbaa !5
  %372 = getelementptr inbounds i32**, i32*** %370, i64 1
  store i32** %l_8, i32*** %372, !tbaa !5
  %373 = getelementptr inbounds [4 x i32**], [4 x i32**]* %367, i64 1
  %374 = getelementptr inbounds [4 x i32**], [4 x i32**]* %373, i64 0, i64 0
  store i32** null, i32*** %374, !tbaa !5
  %375 = getelementptr inbounds i32**, i32*** %374, i64 1
  store i32** %l_3, i32*** %375, !tbaa !5
  %376 = getelementptr inbounds i32**, i32*** %375, i64 1
  store i32** null, i32*** %376, !tbaa !5
  %377 = getelementptr inbounds i32**, i32*** %376, i64 1
  store i32** %l_10, i32*** %377, !tbaa !5
  %378 = getelementptr inbounds [4 x i32**], [4 x i32**]* %373, i64 1
  %379 = getelementptr inbounds [4 x i32**], [4 x i32**]* %378, i64 0, i64 0
  store i32** %l_8, i32*** %379, !tbaa !5
  %380 = getelementptr inbounds i32**, i32*** %379, i64 1
  store i32** %l_6, i32*** %380, !tbaa !5
  %381 = getelementptr inbounds i32**, i32*** %380, i64 1
  store i32** %l_8, i32*** %381, !tbaa !5
  %382 = getelementptr inbounds i32**, i32*** %381, i64 1
  store i32** %l_10, i32*** %382, !tbaa !5
  %383 = getelementptr inbounds [4 x i32**], [4 x i32**]* %378, i64 1
  %384 = getelementptr inbounds [4 x i32**], [4 x i32**]* %383, i64 0, i64 0
  store i32** null, i32*** %384, !tbaa !5
  %385 = getelementptr inbounds i32**, i32*** %384, i64 1
  store i32** %l_3, i32*** %385, !tbaa !5
  %386 = getelementptr inbounds i32**, i32*** %385, i64 1
  store i32** null, i32*** %386, !tbaa !5
  %387 = getelementptr inbounds i32**, i32*** %386, i64 1
  store i32** %l_8, i32*** %387, !tbaa !5
  %388 = getelementptr inbounds [4 x i32**], [4 x i32**]* %383, i64 1
  %389 = getelementptr inbounds [4 x i32**], [4 x i32**]* %388, i64 0, i64 0
  %390 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 0
  store i32** %390, i32*** %389, !tbaa !5
  %391 = getelementptr inbounds i32**, i32*** %389, i64 1
  store i32** null, i32*** %391, !tbaa !5
  %392 = getelementptr inbounds i32**, i32*** %391, i64 1
  store i32** %l_3, i32*** %392, !tbaa !5
  %393 = getelementptr inbounds i32**, i32*** %392, i64 1
  store i32** %l_3, i32*** %393, !tbaa !5
  %394 = getelementptr inbounds [4 x i32**], [4 x i32**]* %388, i64 1
  %395 = getelementptr inbounds [4 x i32**], [4 x i32**]* %394, i64 0, i64 0
  store i32** %l_10, i32*** %395, !tbaa !5
  %396 = getelementptr inbounds i32**, i32*** %395, i64 1
  store i32** %l_10, i32*** %396, !tbaa !5
  %397 = getelementptr inbounds i32**, i32*** %396, i64 1
  store i32** %l_3, i32*** %397, !tbaa !5
  %398 = getelementptr inbounds i32**, i32*** %397, i64 1
  store i32** %l_8, i32*** %398, !tbaa !5
  %399 = bitcast i8** %l_29 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %399) #1
  store i8* @g_30, i8** %l_29, align 8, !tbaa !5
  %400 = bitcast %struct.S1* %l_329 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %400) #1
  %401 = bitcast %struct.S1* %l_329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %401, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_1.l_329, i32 0, i32 0), i64 4, i32 4, i1 false)
  %402 = bitcast [2 x [5 x [1 x i8]]]* %l_504 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %402) #1
  %403 = bitcast [2 x [5 x [1 x i8]]]* %l_504 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %403, i8* getelementptr inbounds ([2 x [5 x [1 x i8]]], [2 x [5 x [1 x i8]]]* @func_1.l_504, i32 0, i32 0, i32 0, i32 0), i64 10, i32 1, i1 false)
  %404 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %404) #1
  %405 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %405) #1
  %406 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %406) #1
  %407 = load i32, i32* @g_4, align 4, !tbaa !1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [7 x i16], [7 x i16]* @g_5, i32 0, i64 %408
  %410 = load i16, i16* %409, align 2, !tbaa !10
  %411 = load i32, i32* @g_7, align 4, !tbaa !1
  %412 = trunc i32 %411 to i8
  %413 = getelementptr inbounds [6 x [10 x [4 x i32**]]], [6 x [10 x [4 x i32**]]]* %l_28, i32 0, i64 3
  %414 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %413, i32 0, i64 4
  %415 = getelementptr inbounds [4 x i32**], [4 x i32**]* %414, i32 0, i64 1
  %416 = load i32**, i32*** %415, align 8, !tbaa !5
  %417 = load i8*, i8** %l_29, align 8, !tbaa !5
  %418 = call i32 @func_24(i8 signext %412, i32** %416, i8* %417)
  %419 = getelementptr %struct.S1, %struct.S1* %1, i32 0, i32 0
  store i32 %418, i32* %419, align 4
  %420 = load i64, i64* @g_12, align 8, !tbaa !7
  %421 = load i32, i32* @g_7, align 4, !tbaa !1
  %422 = load i64, i64* @g_12, align 8, !tbaa !7
  %423 = trunc i64 %422 to i32
  %424 = call i64 @func_56(i32 %421, i32 %423)
  %425 = load i8, i8* @g_144, align 1, !tbaa !9
  %426 = zext i8 %425 to i64
  %427 = icmp ult i64 %424, %426
  %428 = zext i1 %427 to i32
  %429 = trunc i32 %428 to i16
  %430 = load i32, i32* @g_306, align 4, !tbaa !1
  %431 = trunc i32 %430 to i16
  %432 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %429, i16 signext %431)
  %433 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_280 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %434 = trunc i64 %433 to i16
  %435 = load i16, i16* getelementptr inbounds ([8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>* @g_179 to [8 x %struct.S2]*), i32 0, i64 0, i32 2), align 1
  %436 = shl i16 %435, 2
  %437 = ashr i16 %436, 2
  %438 = sext i16 %437 to i32
  %439 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_82, i32 0, i64 3), align 4, !tbaa !1
  %440 = trunc i32 %439 to i16
  %441 = load i64, i64* @g_12, align 8, !tbaa !7
  %442 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_11, i32 0, i64 %441
  %443 = load i32*, i32** %442, align 8, !tbaa !5
  %444 = call { i64, i32 } @func_48(i16 signext %434, i32 %438, i16 signext %440, i8* @g_30, i32* %443)
  %445 = getelementptr %struct.S0, %struct.S0* %2, i32 0, i32 0
  store { i64, i32 } %444, { i64, i32 }* %3, align 1
  %446 = bitcast { i64, i32 }* %3 to i8*
  %447 = bitcast [12 x i8]* %445 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %447, i8* %446, i64 12, i32 1, i1 false)
  %448 = getelementptr %struct.S1, %struct.S1* %l_329, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = call zeroext i16 @func_45(i16 zeroext 0, i32 %449)
  %451 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %452 = lshr i96 %451, 14
  %453 = and i96 %452, 8191
  %454 = trunc i96 %453 to i32
  %455 = trunc i32 %454 to i16
  %456 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %450, i16 zeroext %455)
  %457 = trunc i16 %456 to i8
  %458 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %457)
  %459 = zext i8 %458 to i32
  %460 = bitcast %struct.S1* %l_42 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = shl i32 %461, 7
  %463 = ashr i32 %462, 7
  %464 = call i32 @safe_sub_func_int32_t_s_s(i32 %459, i32 %463)
  %465 = sext i32 %464 to i64
  %466 = xor i64 %420, %465
  %467 = getelementptr inbounds [8 x i8*], [8 x i8*]* %l_331, i32 0, i64 0
  %468 = load i8*, i8** %467, align 8, !tbaa !5
  %469 = load i32**, i32*** @g_161, align 8, !tbaa !5
  %470 = load i32*, i32** %469, align 8, !tbaa !5
  %471 = load i32**, i32*** @g_161, align 8, !tbaa !5
  %472 = load i32*, i32** %471, align 8, !tbaa !5
  %473 = load i32**, i32*** %l_2, align 8, !tbaa !5
  %474 = load i32*, i32** %473, align 8, !tbaa !5
  %475 = call i32** @func_32(i8* %468, i32* %470, i8* @g_30, i32* %472, i32* %474)
  %476 = load i32**, i32*** %l_356, align 8, !tbaa !5
  %477 = icmp eq i32** %475, %476
  %478 = zext i1 %477 to i32
  %479 = trunc i32 %478 to i8
  %480 = load i32*, i32** %l_357, align 8, !tbaa !5
  %481 = load i32*, i32** %l_357, align 8, !tbaa !5
  %482 = load i32, i32* %481, align 4, !tbaa !1
  %483 = trunc i32 %482 to i8
  %484 = load i16, i16* @g_101, align 2, !tbaa !10
  %485 = call i8* @func_19(i8 signext %479, i32* %480, i8 signext %483, i16 signext %484)
  %486 = call i32** @func_16(i8* %485, i16 signext 1)
  %487 = load volatile i32***, i32**** @g_503, align 8, !tbaa !5
  store i32** %486, i32*** %487, align 8, !tbaa !5
  %488 = load volatile i32*, i32** @g_60, align 8, !tbaa !5
  %489 = load i32, i32* %488, align 4, !tbaa !1
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

; <label>:491                                     ; preds = %54
  store i32 13, i32* %4
  br label %505

; <label>:492                                     ; preds = %54
  %493 = getelementptr inbounds [2 x [5 x [1 x i8]]], [2 x [5 x [1 x i8]]]* %l_504, i32 0, i64 1
  %494 = getelementptr inbounds [5 x [1 x i8]], [5 x [1 x i8]]* %493, i32 0, i64 2
  %495 = getelementptr inbounds [1 x i8], [1 x i8]* %494, i32 0, i64 0
  %496 = load i8, i8* %495, align 1, !tbaa !9
  %497 = sext i8 %496 to i32
  %498 = load i32**, i32*** %l_356, align 8, !tbaa !5
  %499 = load i32*, i32** %498, align 8, !tbaa !5
  store i32 %497, i32* %499, align 4, !tbaa !1
  %500 = load i32*, i32** %l_6, align 8, !tbaa !5
  %501 = load i32, i32* %500, align 4, !tbaa !1
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %504

; <label>:503                                     ; preds = %492
  store i32 11, i32* %4
  br label %505

; <label>:504                                     ; preds = %492
  store i32 0, i32* %4
  br label %505

; <label>:505                                     ; preds = %504, %503, %491
  %506 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %506) #1
  %507 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %507) #1
  %508 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %508) #1
  %509 = bitcast [2 x [5 x [1 x i8]]]* %l_504 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %509) #1
  %510 = bitcast %struct.S1* %l_329 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %510) #1
  %511 = bitcast i8** %l_29 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %511) #1
  %512 = bitcast [6 x [10 x [4 x i32**]]]* %l_28 to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %512) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %674 [
    i32 0, label %513
    i32 13, label %514
    i32 11, label %517
  ]

; <label>:513                                     ; preds = %505
  br label %514

; <label>:514                                     ; preds = %513, %505
  %515 = load i64, i64* @g_12, align 8, !tbaa !7
  %516 = sub nsw i64 %515, 1
  store i64 %516, i64* @g_12, align 8, !tbaa !7
  br label %51

; <label>:517                                     ; preds = %505, %51
  %518 = getelementptr inbounds [5 x [10 x i16]], [5 x [10 x i16]]* %l_505, i32 0, i64 1
  %519 = getelementptr inbounds [10 x i16], [10 x i16]* %518, i32 0, i64 5
  %520 = load i16, i16* %519, align 2, !tbaa !10
  %521 = add i16 %520, 1
  store i16 %521, i16* %519, align 2, !tbaa !10
  %522 = load %union.U4*, %union.U4** %l_508, align 8, !tbaa !5
  %523 = load volatile %union.U4**, %union.U4*** @g_509, align 8, !tbaa !5
  store %union.U4* %522, %union.U4** %523, align 8, !tbaa !5
  %524 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #1
  %525 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #1
  %526 = bitcast [5 x [10 x i16]]* %l_505 to i8*
  call void @llvm.lifetime.end(i64 100, i8* %526) #1
  %527 = bitcast i32*** %l_356 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %527) #1
  %528 = bitcast [8 x i8*]* %l_331 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %528) #1
  %529 = bitcast [2 x i32*]* %l_11 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %529) #1
  %530 = bitcast i32** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %530) #1
  %531 = bitcast i32* %l_9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %531) #1
  %532 = bitcast i32** %l_8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %532) #1
  %533 = bitcast i32** %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %533) #1
  br label %534

; <label>:534                                     ; preds = %517
  %535 = load i32, i32* @g_4, align 4, !tbaa !1
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* @g_4, align 4, !tbaa !1
  br label %12

; <label>:537                                     ; preds = %12
  store i16 12, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  br label %538

; <label>:538                                     ; preds = %661, %537
  %539 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %540 = zext i16 %539 to i32
  %541 = icmp sle i32 %540, 48
  br i1 %541, label %542, label %666

; <label>:542                                     ; preds = %538
  call void @llvm.lifetime.start(i64 1, i8* %l_518) #1
  store i8 -52, i8* %l_518, align 1, !tbaa !9
  %543 = bitcast i32* %l_529 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %543) #1
  store i32 -249955056, i32* %l_529, align 4, !tbaa !1
  %544 = load %union.U3*, %union.U3** @g_355, align 8, !tbaa !5
  %545 = load volatile %union.U3**, %union.U3*** @g_354, align 8, !tbaa !5
  %546 = load %union.U3*, %union.U3** %545, align 8, !tbaa !5
  %547 = load i64, i64* @g_12, align 8, !tbaa !7
  %548 = icmp ule i64 %547, 4294967295
  %549 = zext i1 %548 to i32
  %550 = trunc i32 %549 to i16
  %551 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %550, i16 signext 4677)
  %552 = sext i16 %551 to i32
  %553 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_441 to i96*), align 1
  %554 = shl i96 %553, 18
  %555 = ashr i96 %554, 73
  %556 = trunc i96 %555 to i32
  %557 = icmp ne i32 %552, %556
  %558 = zext i1 %557 to i32
  %559 = trunc i32 %558 to i16
  %560 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %559, i32 1)
  %561 = sext i16 %560 to i32
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %577, label %563

; <label>:563                                     ; preds = %542
  %564 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %565 = and i96 %564, 16383
  %566 = trunc i96 %565 to i32
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %577, label %568

; <label>:568                                     ; preds = %563
  %569 = load i32**, i32*** %l_2, align 8, !tbaa !5
  %570 = load i32*, i32** %569, align 8, !tbaa !5
  %571 = icmp ne i32* null, %570
  %572 = zext i1 %571 to i32
  %573 = load i32*, i32** %l_357, align 8, !tbaa !5
  %574 = load i32, i32* %573, align 4, !tbaa !1
  %575 = and i32 %574, %572
  store i32 %575, i32* %573, align 4, !tbaa !1
  %576 = icmp ne i32 %575, 0
  br label %577

; <label>:577                                     ; preds = %568, %563, %542
  %578 = phi i1 [ true, %563 ], [ true, %542 ], [ %576, %568 ]
  %579 = zext i1 %578 to i32
  %580 = load i8, i8* %l_518, align 1, !tbaa !9
  %581 = zext i8 %580 to i64
  %582 = or i64 %581, -6
  %583 = trunc i64 %582 to i8
  store i8 %583, i8* %l_518, align 1, !tbaa !9
  %584 = load i32, i32* @g_148, align 4, !tbaa !1
  %585 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_482 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %586 = load i8, i8* %l_518, align 1, !tbaa !9
  %587 = zext i8 %586 to i32
  %588 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_441 to i96*), align 1
  %589 = shl i96 %588, 18
  %590 = ashr i96 %589, 73
  %591 = trunc i96 %590 to i32
  %592 = icmp sge i32 %587, %591
  %593 = zext i1 %592 to i32
  %594 = load i8*, i8** @g_394, align 8, !tbaa !5
  %595 = load i8, i8* %594, align 1, !tbaa !9
  %596 = sext i8 %595 to i32
  %597 = icmp ne i32 %593, %596
  %598 = zext i1 %597 to i32
  %599 = trunc i32 %598 to i8
  %600 = load i8*, i8** @g_394, align 8, !tbaa !5
  %601 = load i8, i8* %600, align 1, !tbaa !9
  %602 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %601, i32 0)
  %603 = sext i8 %602 to i32
  %604 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_168 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %605 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 4, i16 zeroext %604)
  %606 = zext i16 %605 to i32
  %607 = icmp sle i32 %603, %606
  %608 = zext i1 %607 to i32
  %609 = load i8, i8* @g_486, align 1, !tbaa !9
  %610 = sext i8 %609 to i32
  %611 = icmp ne i32 %608, %610
  %612 = zext i1 %611 to i32
  %613 = sext i32 %612 to i64
  %614 = icmp sle i64 %613, 1144085707
  %615 = zext i1 %614 to i32
  %616 = trunc i32 %615 to i16
  %617 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %616, i16 signext 0)
  %618 = sext i16 %617 to i32
  %619 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_239 to %struct.S2*), i32 0, i32 3), align 1, !tbaa !15
  %620 = zext i16 %619 to i32
  %621 = icmp slt i32 %618, %620
  %622 = zext i1 %621 to i32
  %623 = sext i32 %622 to i64
  %624 = icmp sgt i64 %623, 41599
  %625 = zext i1 %624 to i32
  %626 = sext i32 %625 to i64
  %627 = icmp sle i64 -1, %626
  br i1 %627, label %628, label %629

; <label>:628                                     ; preds = %577
  br label %629

; <label>:629                                     ; preds = %628, %577
  %630 = phi i1 [ false, %577 ], [ true, %628 ]
  %631 = zext i1 %630 to i32
  %632 = icmp ult i32 %631, -249955056
  %633 = zext i1 %632 to i32
  %634 = load i8, i8* %l_518, align 1, !tbaa !9
  %635 = zext i8 %634 to i32
  %636 = icmp eq i32 %633, %635
  %637 = zext i1 %636 to i32
  %638 = load i32*, i32** %l_357, align 8, !tbaa !5
  %639 = load i32, i32* %638, align 4, !tbaa !1
  %640 = trunc i32 %639 to i8
  %641 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %599, i8 zeroext %640)
  %642 = zext i8 %641 to i64
  %643 = icmp sle i64 %585, %642
  %644 = zext i1 %643 to i32
  %645 = load i32*, i32** %l_3, align 8, !tbaa !5
  store i32* %645, i32** getelementptr inbounds ([7 x [5 x i32*]], [7 x [5 x i32*]]* @g_530, i32 0, i64 3, i64 1), align 8, !tbaa !5
  %646 = load i32*, i32** %l_357, align 8, !tbaa !5
  %647 = icmp ne i32* %645, %646
  br i1 %647, label %652, label %648

; <label>:648                                     ; preds = %629
  %649 = load i32*, i32** %l_357, align 8, !tbaa !5
  %650 = load i32, i32* %649, align 4, !tbaa !1
  %651 = icmp ne i32 %650, 0
  br label %652

; <label>:652                                     ; preds = %648, %629
  %653 = phi i1 [ true, %629 ], [ %651, %648 ]
  %654 = zext i1 %653 to i32
  %655 = sext i32 %654 to i64
  %656 = and i64 40909, %655
  %657 = trunc i64 %656 to i16
  %658 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %657, i32 10)
  %659 = trunc i16 %658 to i8
  store i8 %659, i8* getelementptr inbounds ([10 x [1 x i8]], [10 x [1 x i8]]* @g_531, i32 0, i64 9, i64 0), align 1, !tbaa !9
  %660 = bitcast i32* %l_529 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %660) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_518) #1
  br label %661

; <label>:661                                     ; preds = %652
  %662 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %663 = trunc i16 %662 to i8
  %664 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %663, i8 signext 8)
  %665 = sext i8 %664 to i16
  store i16 %665, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_474 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  br label %538

; <label>:666                                     ; preds = %538
  %667 = load i32, i32* @g_234, align 4, !tbaa !1
  %668 = trunc i32 %667 to i16
  store i32 1, i32* %4
  %669 = bitcast %union.U4** %l_508 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %669) #1
  %670 = bitcast i32** %l_357 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %670) #1
  %671 = bitcast %struct.S1* %l_42 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %671) #1
  %672 = bitcast i32*** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %672) #1
  %673 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %673) #1
  ret i16 %668

; <label>:674                                     ; preds = %505
  unreachable
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.89, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32** @func_16(i8* %p_17, i16 signext %p_18) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i16, align 2
  %l_502 = alloca i32**, align 8
  %l_501 = alloca i8, align 1
  %3 = alloca i32
  store i8* %p_17, i8** %1, align 8, !tbaa !5
  store i16 %p_18, i16* %2, align 2, !tbaa !10
  %4 = bitcast i32*** %l_502 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32** @g_162, i32*** %l_502, align 8, !tbaa !5
  store i32 11, i32* @g_13, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %15, %0
  %6 = load i32, i32* @g_13, align 4, !tbaa !1
  %7 = icmp ule i32 %6, 39
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %5
  call void @llvm.lifetime.start(i64 1, i8* %l_501) #1
  store i8 -4, i8* %l_501, align 1, !tbaa !9
  %9 = load i8, i8* %l_501, align 1, !tbaa !9
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  store i32 2, i32* %3
  br label %13

; <label>:12                                      ; preds = %8
  store i32 0, i32* %3
  br label %13

; <label>:13                                      ; preds = %12, %11
  call void @llvm.lifetime.end(i64 1, i8* %l_501) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %21 [
    i32 0, label %14
    i32 2, label %18
  ]

; <label>:14                                      ; preds = %13
  br label %15

; <label>:15                                      ; preds = %14
  %16 = load i32, i32* @g_13, align 4, !tbaa !1
  %17 = add i32 %16, 1
  store i32 %17, i32* @g_13, align 4, !tbaa !1
  br label %5

; <label>:18                                      ; preds = %13, %5
  %19 = load i32**, i32*** %l_502, align 8, !tbaa !5
  store i32 1, i32* %3
  %20 = bitcast i32*** %l_502 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32** %19

; <label>:21                                      ; preds = %13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i8* @func_19(i8 signext %p_20, i32* %p_21, i8 signext %p_22, i16 signext %p_23) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %l_358 = alloca i8, align 1
  %l_364 = alloca i16*, align 8
  %l_368 = alloca %union.U4*, align 8
  %l_367 = alloca %union.U4**, align 8
  %l_369 = alloca [2 x i8*], align 16
  %l_370 = alloca i32, align 4
  %l_371 = alloca i32, align 4
  %l_372 = alloca i16*, align 8
  %l_373 = alloca [7 x i32], align 16
  %l_407 = alloca i16, align 2
  %l_408 = alloca [1 x [3 x [1 x i32]]], align 4
  %l_409 = alloca i64, align 8
  %l_465 = alloca i16, align 2
  %l_470 = alloca %struct.S2*, align 8
  %l_490 = alloca i32, align 4
  %l_492 = alloca i32*, align 8
  %l_491 = alloca i32**, align 8
  %l_498 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8 %p_20, i8* %1, align 1, !tbaa !9
  store i32* %p_21, i32** %2, align 8, !tbaa !5
  store i8 %p_22, i8* %3, align 1, !tbaa !9
  store i16 %p_23, i16* %4, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_358) #1
  store i8 -117, i8* %l_358, align 1, !tbaa !9
  %5 = bitcast i16** %l_364 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_168 to %struct.S2*), i32 0, i32 1), i16** %l_364, align 8, !tbaa !5
  %6 = bitcast %union.U4** %l_368 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %union.U4* getelementptr inbounds ([5 x %union.U4], [5 x %union.U4]* @g_201, i32 0, i64 3), %union.U4** %l_368, align 8, !tbaa !5
  %7 = bitcast %union.U4*** %l_367 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %union.U4** %l_368, %union.U4*** %l_367, align 8, !tbaa !5
  %8 = bitcast [2 x i8*]* %l_369 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32* %l_370 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1715776118, i32* %l_370, align 4, !tbaa !1
  %10 = bitcast i32* %l_371 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -4, i32* %l_371, align 4, !tbaa !1
  %11 = bitcast i16** %l_372 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16* getelementptr inbounds ([5 x [8 x %struct.S2]], [5 x [8 x %struct.S2]]* bitcast (<{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> }>* @g_348 to [5 x [8 x %struct.S2]]*), i32 0, i64 3, i64 6, i32 1), i16** %l_372, align 8, !tbaa !5
  %12 = bitcast [7 x i32]* %l_373 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %12) #1
  %13 = bitcast [7 x i32]* %l_373 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([7 x i32]* @func_19.l_373 to i8*), i64 28, i32 16, i1 false)
  %14 = bitcast i16* %l_407 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  store i16 20052, i16* %l_407, align 2, !tbaa !10
  %15 = bitcast [1 x [3 x [1 x i32]]]* %l_408 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %15) #1
  %16 = bitcast i64* %l_409 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 -1, i64* %l_409, align 8, !tbaa !7
  %17 = bitcast i16* %l_465 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  store i16 -1, i16* %l_465, align 2, !tbaa !10
  %18 = bitcast %struct.S2** %l_470 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_471 to %struct.S2*), %struct.S2** %l_470, align 8, !tbaa !5
  %19 = bitcast i32* %l_490 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %l_490, align 4, !tbaa !1
  %20 = bitcast i32** %l_492 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = getelementptr inbounds [7 x i32], [7 x i32]* %l_373, i32 0, i64 5
  store i32* %21, i32** %l_492, align 8, !tbaa !5
  %22 = bitcast i32*** %l_491 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32** %l_492, i32*** %l_491, align 8, !tbaa !5
  %23 = bitcast i16* %l_498 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  store i16 -5, i16* %l_498, align 2, !tbaa !10
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %27

; <label>:27                                      ; preds = %34, %0
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %37

; <label>:30                                      ; preds = %27
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %l_369, i32 0, i64 %32
  store i8* @g_144, i8** %33, align 8, !tbaa !5
  br label %34

; <label>:34                                      ; preds = %30
  %35 = load i32, i32* %i, align 4, !tbaa !1
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4, !tbaa !1
  br label %27

; <label>:37                                      ; preds = %27
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %38

; <label>:38                                      ; preds = %67, %37
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %70

; <label>:41                                      ; preds = %38
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %42

; <label>:42                                      ; preds = %63, %41
  %43 = load i32, i32* %j, align 4, !tbaa !1
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %66

; <label>:45                                      ; preds = %42
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %46

; <label>:46                                      ; preds = %59, %45
  %47 = load i32, i32* %k, align 4, !tbaa !1
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %62

; <label>:49                                      ; preds = %46
  %50 = load i32, i32* %k, align 4, !tbaa !1
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* %j, align 4, !tbaa !1
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1 x [3 x [1 x i32]]], [1 x [3 x [1 x i32]]]* %l_408, i32 0, i64 %55
  %57 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* %56, i32 0, i64 %53
  %58 = getelementptr inbounds [1 x i32], [1 x i32]* %57, i32 0, i64 %51
  store i32 1641367953, i32* %58, align 4, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %49
  %60 = load i32, i32* %k, align 4, !tbaa !1
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %k, align 4, !tbaa !1
  br label %46

; <label>:62                                      ; preds = %46
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i32, i32* %j, align 4, !tbaa !1
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %j, align 4, !tbaa !1
  br label %42

; <label>:66                                      ; preds = %42
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load i32, i32* %i, align 4, !tbaa !1
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i, align 4, !tbaa !1
  br label %38

; <label>:70                                      ; preds = %38
  %71 = load volatile i8**, i8*** @g_393, align 8, !tbaa !5
  %72 = load i8*, i8** %71, align 8, !tbaa !5
  %73 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i16* %l_498 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %76) #1
  %77 = bitcast i32*** %l_491 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i32** %l_492 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32* %l_490 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast %struct.S2** %l_470 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i16* %l_465 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %81) #1
  %82 = bitcast i64* %l_409 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast [1 x [3 x [1 x i32]]]* %l_408 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %83) #1
  %84 = bitcast i16* %l_407 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %84) #1
  %85 = bitcast [7 x i32]* %l_373 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %85) #1
  %86 = bitcast i16** %l_372 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %l_371 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %l_370 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast [2 x i8*]* %l_369 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %89) #1
  %90 = bitcast %union.U4*** %l_367 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast %union.U4** %l_368 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i16** %l_364 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_358) #1
  ret i8* %72
}

; Function Attrs: nounwind uwtable
define internal i32 @func_24(i8 signext %p_25, i32** %p_26, i8* %p_27) #0 {
  %1 = alloca %struct.S1, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %l_31 = alloca [6 x [2 x %struct.S1]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8 %p_25, i8* %2, align 1, !tbaa !9
  store i32** %p_26, i32*** %3, align 8, !tbaa !5
  store i8* %p_27, i8** %4, align 8, !tbaa !5
  %5 = bitcast [6 x [2 x %struct.S1]]* %l_31 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast [6 x [2 x %struct.S1]]* %l_31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* getelementptr inbounds (<{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }>, <{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }>* @func_24.l_31, i32 0, i32 0, i32 0, i32 0), i64 48, i32 16, i1 false)
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = getelementptr inbounds [6 x [2 x %struct.S1]], [6 x [2 x %struct.S1]]* %l_31, i32 0, i64 1
  %10 = getelementptr inbounds [2 x %struct.S1], [2 x %struct.S1]* %9, i32 0, i64 1
  %11 = bitcast %struct.S1* %1 to i8*
  %12 = bitcast %struct.S1* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 4, i32 4, i1 false), !tbaa.struct !16
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast [6 x [2 x %struct.S1]]* %l_31 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %15) #1
  %16 = getelementptr %struct.S1, %struct.S1* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32** @func_32(i8* %p_33, i32* %p_34, i8* %p_35, i32* %p_36, i32* %p_37) #0 {
  %1 = alloca i32**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %l_332 = alloca i32, align 4
  %l_338 = alloca i32*, align 8
  %l_337 = alloca i32**, align 8
  %l_345 = alloca [6 x [10 x i16*]], align 16
  %l_346 = alloca i32, align 4
  %l_347 = alloca i8*, align 8
  %l_352 = alloca [2 x %union.U3*], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %7 = alloca %struct.S0, align 1
  %8 = alloca { i64, i32 }, align 1
  %l_349 = alloca %struct.S2*, align 8
  %l_351 = alloca %struct.S1, align 4
  %9 = alloca i32
  store i8* %p_33, i8** %2, align 8, !tbaa !5
  store i32* %p_34, i32** %3, align 8, !tbaa !5
  store i8* %p_35, i8** %4, align 8, !tbaa !5
  store i32* %p_36, i32** %5, align 8, !tbaa !5
  store i32* %p_37, i32** %6, align 8, !tbaa !5
  %10 = bitcast i32* %l_332 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 67969197, i32* %l_332, align 4, !tbaa !1
  %11 = bitcast i32** %l_338 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* null, i32** %l_338, align 8, !tbaa !5
  %12 = bitcast i32*** %l_337 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** %l_338, i32*** %l_337, align 8, !tbaa !5
  %13 = bitcast [6 x [10 x i16*]]* %l_345 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %13) #1
  %14 = bitcast [6 x [10 x i16*]]* %l_345 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([6 x [10 x i16*]]* @func_32.l_345 to i8*), i64 480, i32 16, i1 false)
  %15 = bitcast i32* %l_346 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -4, i32* %l_346, align 4, !tbaa !1
  %16 = bitcast i8** %l_347 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8* @g_30, i8** %l_347, align 8, !tbaa !5
  %17 = bitcast [2 x %union.U3*]* %l_352 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %27, %0
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x %union.U3*], [2 x %union.U3*]* %l_352, i32 0, i64 %25
  store %union.U3* getelementptr inbounds ([1 x [9 x %union.U3]], [1 x [9 x %union.U3]]* @g_353, i32 0, i64 0, i64 7), %union.U3** %26, align 8, !tbaa !5
  br label %27

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:30                                      ; preds = %20
  %31 = load i32, i32* %l_332, align 4, !tbaa !1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %101, label %33

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %l_332, align 4, !tbaa !1
  %35 = trunc i32 %34 to i16
  %36 = load i32**, i32*** @g_161, align 8, !tbaa !5
  %37 = load i32*, i32** %36, align 8, !tbaa !5
  %38 = load i32**, i32*** @g_161, align 8, !tbaa !5
  store i32* %37, i32** %38, align 8, !tbaa !5
  %39 = load i32**, i32*** %l_337, align 8, !tbaa !5
  store i32* %37, i32** %39, align 8, !tbaa !5
  %40 = load i32*, i32** %3, align 8, !tbaa !5
  %41 = icmp ne i32* %37, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %l_332, align 4, !tbaa !1
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 64094, %44
  %46 = zext i1 %45 to i32
  %47 = load volatile i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_280 to %struct.S2*), i32 0, i32 1), align 1, !tbaa !14
  %48 = zext i16 %47 to i32
  %49 = load i8, i8* @g_144, align 1, !tbaa !9
  %50 = zext i8 %49 to i32
  %51 = icmp sge i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = load i64*, i64** @g_266, align 8, !tbaa !5
  %54 = load volatile i64, i64* %53, align 8, !tbaa !7
  %55 = icmp ne i64 1, %54
  %56 = zext i1 %55 to i32
  %57 = trunc i32 %56 to i16
  %58 = load i16, i16* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_239 to %struct.S2*), i32 0, i32 2), align 1
  %59 = shl i16 %58, 2
  %60 = ashr i16 %59, 2
  %61 = sext i16 %60 to i32
  %62 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %57, i32 %61)
  %63 = zext i16 %62 to i32
  %64 = load i32, i32* %l_332, align 4, !tbaa !1
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = trunc i32 %66 to i16
  %68 = load i32, i32* @g_13, align 4, !tbaa !1
  %69 = trunc i32 %68 to i16
  %70 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %67, i16 signext %69)
  %71 = trunc i16 %70 to i8
  %72 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %71)
  %73 = zext i8 %72 to i32
  %74 = icmp slt i32 %42, %73
  %75 = zext i1 %74 to i32
  %76 = trunc i32 %75 to i8
  %77 = load i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_307 to i96*), align 1
  %78 = lshr i96 %77, 14
  %79 = and i96 %78, 8191
  %80 = trunc i96 %79 to i32
  %81 = trunc i32 %80 to i8
  %82 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %76, i8 zeroext %81)
  %83 = zext i8 %82 to i16
  %84 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %35, i16 zeroext %83)
  %85 = zext i16 %84 to i32
  store i32 %85, i32* %l_346, align 4, !tbaa !1
  %86 = trunc i32 %85 to i16
  %87 = load i32, i32* %l_332, align 4, !tbaa !1
  %88 = load i32, i32* %l_332, align 4, !tbaa !1
  %89 = trunc i32 %88 to i16
  %90 = load i8*, i8** %l_347, align 8, !tbaa !5
  %91 = load i32*, i32** %5, align 8, !tbaa !5
  %92 = call { i64, i32 } @func_48(i16 signext %86, i32 %87, i16 signext %89, i8* %90, i32* %91)
  %93 = getelementptr %struct.S0, %struct.S0* %7, i32 0, i32 0
  store { i64, i32 } %92, { i64, i32 }* %8, align 1
  %94 = bitcast { i64, i32 }* %8 to i8*
  %95 = bitcast [12 x i8]* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %94, i64 12, i32 1, i1 false)
  %96 = load volatile i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* bitcast (<{ i64, i16, i8, i8, i16 }>* @g_168 to %struct.S2*), i32 0, i32 0), align 1, !tbaa !12
  %97 = load i32, i32* %l_332, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = xor i64 %96, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

; <label>:101                                     ; preds = %33, %30
  %102 = bitcast %struct.S2** %l_349 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  store %struct.S2* getelementptr inbounds ([8 x %struct.S2], [8 x %struct.S2]* bitcast (<{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>* @g_179 to [8 x %struct.S2]*), i32 0, i64 4), %struct.S2** %l_349, align 8, !tbaa !5
  %103 = bitcast %struct.S1* %l_351 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = bitcast %struct.S1* %l_351 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_32.l_351, i32 0, i32 0), i64 4, i32 4, i1 false)
  store i32 -646490798, i32* %l_346, align 4, !tbaa !1
  %105 = load %struct.S2*, %struct.S2** %l_349, align 8, !tbaa !5
  %106 = bitcast %struct.S2* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* bitcast (%struct.S2* getelementptr inbounds ([5 x [8 x %struct.S2]], [5 x [8 x %struct.S2]]* bitcast (<{ <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }>, <{ <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }>, <{ i64, i16, i8, i8, i16 }> }> }>* @g_348 to [5 x [8 x %struct.S2]]*), i32 0, i64 3, i64 6) to i8*), i64 14, i32 1, i1 true), !tbaa.struct !17
  %107 = load volatile i32*, i32** @g_60, align 8, !tbaa !5
  %108 = load i32, i32* %107, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %107, align 4, !tbaa !1
  %111 = load i32**, i32*** %l_337, align 8, !tbaa !5
  %112 = load i32*, i32** %111, align 8, !tbaa !5
  %113 = load i32**, i32*** @g_127, align 8, !tbaa !5
  store i32* %112, i32** %113, align 8, !tbaa !5
  %114 = bitcast %struct.S1* %l_351 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast %struct.S2** %l_349 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  br label %117

; <label>:116                                     ; preds = %33
  store i32** @g_162, i32*** %1
  store i32 1, i32* %9
  br label %130

; <label>:117                                     ; preds = %101
  %118 = getelementptr inbounds [2 x %union.U3*], [2 x %union.U3*]* %l_352, i32 0, i64 0
  %119 = load %union.U3*, %union.U3** %118, align 8, !tbaa !5
  %120 = load volatile %union.U3**, %union.U3*** @g_354, align 8, !tbaa !5
  store %union.U3* %119, %union.U3** %120, align 8, !tbaa !5
  %121 = load i32**, i32*** %l_337, align 8, !tbaa !5
  %122 = load i32*, i32** %121, align 8, !tbaa !5
  %123 = load i32**, i32*** @g_127, align 8, !tbaa !5
  store i32* %122, i32** %123, align 8, !tbaa !5
  %124 = load i32, i32* bitcast ({ i8, i8, i8, i8 }* @func_32.l_350 to i32*), align 4
  %125 = shl i32 %124, 7
  %126 = ashr i32 %125, 7
  %127 = load volatile i32*, i32** @g_60, align 8, !tbaa !5
  %128 = load i32, i32* %127, align 4, !tbaa !1
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4, !tbaa !1
  store i32** @g_162, i32*** %1
  store i32 1, i32* %9
  br label %130

; <label>:130                                     ; preds = %117, %116
  %131 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast [2 x %union.U3*]* %l_352 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %133) #1
  %134 = bitcast i8** %l_347 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32* %l_346 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast [6 x [10 x i16*]]* %l_345 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %136) #1
  %137 = bitcast i32*** %l_337 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32** %l_338 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i32* %l_332 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = load i32**, i32*** %1
  ret i32** %140
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
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %ui1, i8 zeroext %ui2) #0 {
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
  %14 = srem i32 %11, %13
  br label %15

; <label>:15                                      ; preds = %9, %6
  %16 = phi i32 [ %8, %6 ], [ %14, %9 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
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
define internal zeroext i16 @func_45(i16 zeroext %p_46, i32 %p_47.coerce) #0 {
  %p_47 = alloca %struct.S1, align 4
  %1 = alloca i16, align 2
  %l_330 = alloca i64, align 8
  %2 = getelementptr %struct.S1, %struct.S1* %p_47, i32 0, i32 0
  store i32 %p_47.coerce, i32* %2, align 4
  store i16 %p_46, i16* %1, align 2, !tbaa !10
  %3 = bitcast i64* %l_330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 7, i64* %l_330, align 8, !tbaa !7
  %4 = load i16, i16* %1, align 2, !tbaa !10
  %5 = zext i16 %4 to i32
  %6 = load volatile i32*, i32** @g_147, align 8, !tbaa !5
  %7 = load i32, i32* %6, align 4, !tbaa !1
  %8 = icmp sge i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = load volatile i32*, i32** @g_147, align 8, !tbaa !5
  store i32 %9, i32* %10, align 4, !tbaa !1
  %11 = load i64, i64* %l_330, align 8, !tbaa !7
  %12 = trunc i64 %11 to i16
  %13 = bitcast i64* %l_330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i16 %12
}

; Function Attrs: nounwind uwtable
define internal { i64, i32 } @func_48(i16 signext %p_49, i32 %p_50, i16 signext %p_51, i8* %p_52, i32* %p_53) #0 {
  %1 = alloca %struct.S0, align 1
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %l_321 = alloca i64**, align 8
  %l_320 = alloca i64***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_309 = alloca %struct.S2**, align 8
  %l_310 = alloca i64*, align 8
  %l_313 = alloca [6 x [1 x i64*]], align 16
  %l_314 = alloca i32, align 4
  %l_323 = alloca i32**, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_324 = alloca i32*, align 8
  %l_326 = alloca %union.U4*, align 8
  %l_325 = alloca %union.U4**, align 8
  %7 = alloca i32
  %8 = alloca %struct.S1, align 4
  %l_327 = alloca i16, align 2
  %9 = alloca { i64, i32 }, align 1
  store i16 %p_49, i16* %2, align 2, !tbaa !10
  store i32 %p_50, i32* %3, align 4, !tbaa !1
  store i16 %p_51, i16* %4, align 2, !tbaa !10
  store i8* %p_52, i8** %5, align 8, !tbaa !5
  store i32* %p_53, i32** %6, align 8, !tbaa !5
  %10 = bitcast i64*** %l_321 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64** getelementptr inbounds ([8 x [10 x i64*]], [8 x [10 x i64*]]* @func_48.l_322, i32 0, i64 1, i64 3), i64*** %l_321, align 8, !tbaa !5
  %11 = bitcast i64**** %l_320 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64*** %l_321, i64**** %l_320, align 8, !tbaa !5
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* @g_175, align 4, !tbaa !1
  br label %14

; <label>:14                                      ; preds = %176, %0
  %15 = load i32, i32* @g_175, align 4, !tbaa !1
  %16 = icmp ule i32 %15, 6
  br i1 %16, label %17, label %179

; <label>:17                                      ; preds = %14
  %18 = bitcast %struct.S2*** %l_309 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store %struct.S2** @g_238, %struct.S2*** %l_309, align 8, !tbaa !5
  %19 = bitcast i64** %l_310 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64* @g_84, i64** %l_310, align 8, !tbaa !5
  %20 = bitcast [6 x [1 x i64*]]* %l_313 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %20) #1
  %21 = bitcast i32* %l_314 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 -1, i32* %l_314, align 4, !tbaa !1
  %22 = bitcast i32*** %l_323 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32** @g_162, i32*** %l_323, align 8, !tbaa !5
  %23 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %25

; <label>:25                                      ; preds = %43, %17
  %26 = load i32, i32* %i1, align 4, !tbaa !1
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %46

; <label>:28                                      ; preds = %25
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %39, %28
  %30 = load i32, i32* %j2, align 4, !tbaa !1
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %42

; <label>:32                                      ; preds = %29
  %33 = load i32, i32* %j2, align 4, !tbaa !1
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %i1, align 4, !tbaa !1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x [1 x i64*]], [6 x [1 x i64*]]* %l_313, i32 0, i64 %36
  %38 = getelementptr inbounds [1 x i64*], [1 x i64*]* %37, i32 0, i64 %34
  store i64* null, i64** %38, align 8, !tbaa !5
  br label %39

; <label>:39                                      ; preds = %32
  %40 = load i32, i32* %j2, align 4, !tbaa !1
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %j2, align 4, !tbaa !1
  br label %29

; <label>:42                                      ; preds = %29
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load i32, i32* %i1, align 4, !tbaa !1
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %i1, align 4, !tbaa !1
  br label %25

; <label>:46                                      ; preds = %25
  %47 = load i32, i32* @g_175, align 4, !tbaa !1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [7 x i16], [7 x i16]* @g_5, i32 0, i64 %48
  %50 = load i16, i16* %49, align 2, !tbaa !10
  %51 = load i32, i32* @g_175, align 4, !tbaa !1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [7 x i16], [7 x i16]* @g_5, i32 0, i64 %52
  %54 = load i16, i16* %53, align 2, !tbaa !10
  %55 = sext i16 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %93

; <label>:57                                      ; preds = %46
  %58 = load %struct.S2**, %struct.S2*** %l_309, align 8, !tbaa !5
  %59 = icmp ne %struct.S2** %58, @g_238
  %60 = zext i1 %59 to i32
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %l_310, align 8, !tbaa !5
  %63 = load i64, i64* %62, align 8, !tbaa !7
  %64 = and i64 %63, %61
  store i64 %64, i64* %62, align 8, !tbaa !7
  %65 = load i32, i32* bitcast ({ i8, i8, i8, i8 }* @func_48.l_308 to i32*), align 4
  %66 = shl i32 %65, 7
  %67 = ashr i32 %66, 7
  %68 = load i64*, i64** @g_266, align 8, !tbaa !5
  %69 = load volatile i64, i64* %68, align 8, !tbaa !7
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %l_314, align 4, !tbaa !1
  %71 = load i32, i32* @g_234, align 4, !tbaa !1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

; <label>:73                                      ; preds = %57
  %74 = load i32, i32* @g_175, align 4, !tbaa !1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [7 x i16], [7 x i16]* @g_5, i32 0, i64 %75
  %77 = load i16, i16* %76, align 2, !tbaa !10
  %78 = sext i16 %77 to i32
  %79 = icmp ne i32 %78, 0
  br label %80

; <label>:80                                      ; preds = %73, %57
  %81 = phi i1 [ false, %57 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = xor i64 %83, -1187661967448564770
  %85 = icmp ugt i64 %84, 1
  %86 = zext i1 %85 to i32
  %87 = trunc i32 %86 to i16
  %88 = load i32, i32* @g_234, align 4, !tbaa !1
  %89 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %87, i32 %88)
  %90 = sext i16 %89 to i64
  %91 = and i64 %64, %90
  store i64 %91, i64* @g_197, align 8, !tbaa !7
  %92 = icmp ne i64 %91, 0
  br label %93

; <label>:93                                      ; preds = %80, %46
  %94 = phi i1 [ false, %46 ], [ %92, %80 ]
  br i1 %94, label %95, label %100

; <label>:95                                      ; preds = %93
  %96 = load i32, i32* bitcast ({ i8, i8, i8, i8 }* @func_48.l_308 to i32*), align 4
  %97 = shl i32 %96, 7
  %98 = ashr i32 %97, 7
  %99 = icmp ne i32 %98, 0
  br label %100

; <label>:100                                     ; preds = %95, %93
  %101 = phi i1 [ false, %93 ], [ %99, %95 ]
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 56748, %103
  br i1 %104, label %105, label %157

; <label>:105                                     ; preds = %100
  %106 = bitcast i32** %l_324 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  store i32* @g_7, i32** %l_324, align 8, !tbaa !5
  %107 = bitcast %union.U4** %l_326 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  store %union.U4* getelementptr inbounds ([5 x %union.U4], [5 x %union.U4]* @g_201, i32 0, i64 3), %union.U4** %l_326, align 8, !tbaa !5
  %108 = bitcast %union.U4*** %l_325 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  store %union.U4** %l_326, %union.U4*** %l_325, align 8, !tbaa !5
  %109 = load i32, i32* %l_314, align 4, !tbaa !1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %105
  store i32 2, i32* %7
  br label %152

; <label>:112                                     ; preds = %105
  %113 = load i64*, i64** %l_310, align 8, !tbaa !5
  store i64 0, i64* %113, align 8, !tbaa !7
  %114 = load i16, i16* %4, align 2, !tbaa !10
  %115 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %114, i32 7)
  %116 = sext i16 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

; <label>:118                                     ; preds = %112
  %119 = load i32, i32* @g_234, align 4, !tbaa !1
  %120 = icmp ne i32 %119, 0
  br label %121

; <label>:121                                     ; preds = %118, %112
  %122 = phi i1 [ true, %112 ], [ %120, %118 ]
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 0, %124
  %126 = zext i1 %125 to i32
  %127 = load i16, i16* %4, align 2, !tbaa !10
  %128 = load i64***, i64**** %l_320, align 8, !tbaa !5
  %129 = icmp eq i64*** %128, @g_265
  %130 = zext i1 %129 to i32
  %131 = trunc i32 %130 to i8
  %132 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %131, i32 3)
  %133 = zext i8 %132 to i32
  %134 = and i32 %126, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

; <label>:136                                     ; preds = %121
  %137 = load volatile i96, i96* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_202 to i96*), align 1
  %138 = shl i96 %137, 18
  %139 = ashr i96 %138, 73
  %140 = trunc i96 %139 to i32
  %141 = trunc i32 %140 to i8
  %142 = load i32**, i32*** %l_323, align 8, !tbaa !5
  %143 = call i32 @func_24(i8 signext %141, i32** %142, i8* @g_30)
  %144 = getelementptr %struct.S1, %struct.S1* %8, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %3, align 4, !tbaa !1
  %146 = icmp ne i32 %145, 0
  br label %147

; <label>:147                                     ; preds = %136, %121
  %148 = phi i1 [ false, %121 ], [ %146, %136 ]
  %149 = zext i1 %148 to i32
  %150 = load i32*, i32** %l_324, align 8, !tbaa !5
  store i32 %149, i32* %150, align 4, !tbaa !1
  %151 = load %union.U4**, %union.U4*** %l_325, align 8, !tbaa !5
  store %union.U4* getelementptr inbounds ([5 x %union.U4], [5 x %union.U4]* @g_201, i32 0, i64 2), %union.U4** %151, align 8, !tbaa !5
  store i32 0, i32* %7
  br label %152

; <label>:152                                     ; preds = %147, %111
  %153 = bitcast %union.U4*** %l_325 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast %union.U4** %l_326 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32** %l_324 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %167 [
    i32 0, label %156
  ]

; <label>:156                                     ; preds = %152
  br label %166

; <label>:157                                     ; preds = %100
  %158 = bitcast i16* %l_327 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %158) #1
  store i16 30933, i16* %l_327, align 2, !tbaa !10
  %159 = load i16, i16* %l_327, align 2, !tbaa !10
  %160 = icmp ne i16 %159, 0
  br i1 %160, label %161, label %162

; <label>:161                                     ; preds = %157
  store i32 2, i32* %7
  br label %163

; <label>:162                                     ; preds = %157
  store i32 0, i32* %7
  br label %163

; <label>:163                                     ; preds = %162, %161
  %164 = bitcast i16* %l_327 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %164) #1
  %cleanup.dest.3 = load i32, i32* %7
  switch i32 %cleanup.dest.3, label %167 [
    i32 0, label %165
  ]

; <label>:165                                     ; preds = %163
  br label %166

; <label>:166                                     ; preds = %165, %156
  store i32 0, i32* %7
  br label %167

; <label>:167                                     ; preds = %166, %163, %152
  %168 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32*** %l_323 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast i32* %l_314 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast [6 x [1 x i64*]]* %l_313 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %172) #1
  %173 = bitcast i64** %l_310 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast %struct.S2*** %l_309 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %cleanup.dest.4 = load i32, i32* %7
  switch i32 %cleanup.dest.4, label %189 [
    i32 0, label %175
    i32 2, label %179
  ]

; <label>:175                                     ; preds = %167
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* @g_175, align 4, !tbaa !1
  %178 = add i32 %177, 1
  store i32 %178, i32* @g_175, align 4, !tbaa !1
  br label %14

; <label>:179                                     ; preds = %167, %14
  %180 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_328 to %struct.S0*), i32 0, i32 0, i32 0), i64 12, i32 1, i1 false), !tbaa.struct !18
  store i32 1, i32* %7
  %181 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i64**** %l_320 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i64*** %l_321 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #1
  %185 = getelementptr %struct.S0, %struct.S0* %1, i32 0, i32 0
  %186 = bitcast { i64, i32 }* %9 to i8*
  %187 = bitcast [12 x i8]* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 12, i32 1, i1 false)
  %188 = load { i64, i32 }, { i64, i32 }* %9, align 1
  ret { i64, i32 } %188

; <label>:189                                     ; preds = %167
  unreachable
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
define internal i64 @func_56(i32 %p_57, i32 %p_58) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %l_59 = alloca i32*, align 8
  %l_65 = alloca i32, align 4
  %l_66 = alloca i8*, align 8
  %l_74 = alloca [10 x i32], align 16
  %l_81 = alloca i64*, align 8
  %l_83 = alloca [2 x i64*], align 16
  %l_305 = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %p_57, i32* %1, align 4, !tbaa !1
  store i32 %p_58, i32* %2, align 4, !tbaa !1
  %3 = bitcast i32** %l_59 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_59, align 8, !tbaa !5
  %4 = bitcast i32* %l_65 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1006258895, i32* %l_65, align 4, !tbaa !1
  %5 = load i32, i32* @g_4, align 4, !tbaa !1
  %6 = load volatile i32*, i32** @g_60, align 8, !tbaa !5
  store i32 %5, i32* %6, align 4, !tbaa !1
  store i32 0, i32* %2, align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %45, %0
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %48

; <label>:10                                      ; preds = %7
  store i32 29, i32* @g_7, align 4, !tbaa !1
  br label %11

; <label>:11                                      ; preds = %39, %10
  %12 = load i32, i32* @g_7, align 4, !tbaa !1
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %44

; <label>:14                                      ; preds = %11
  %15 = bitcast i8** %l_66 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* @g_30, i8** %l_66, align 8, !tbaa !5
  %16 = bitcast [10 x i32]* %l_74 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %16) #1
  %17 = bitcast [10 x i32]* %l_74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* bitcast ([10 x i32]* @func_56.l_74 to i8*), i64 40, i32 16, i1 false)
  %18 = bitcast i64** %l_81 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64* null, i64** %l_81, align 8, !tbaa !5
  %19 = bitcast [2 x i64*]* %l_83 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = bitcast i32** %l_305 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32* @g_306, i32** %l_305, align 8, !tbaa !5
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %29, %14
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %32

; <label>:25                                      ; preds = %22
  %26 = load i32, i32* %i, align 4, !tbaa !1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i64*], [2 x i64*]* %l_83, i32 0, i64 %27
  store i64* @g_84, i64** %28, align 8, !tbaa !5
  br label %29

; <label>:29                                      ; preds = %25
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4, !tbaa !1
  br label %22

; <label>:32                                      ; preds = %22
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32** %l_305 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast [2 x i64*]* %l_83 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #1
  %36 = bitcast i64** %l_81 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast [10 x i32]* %l_74 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %37) #1
  %38 = bitcast i8** %l_66 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  br label %39

; <label>:39                                      ; preds = %32
  %40 = load i32, i32* @g_7, align 4, !tbaa !1
  %41 = trunc i32 %40 to i16
  %42 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %41, i16 zeroext 3)
  %43 = zext i16 %42 to i32
  store i32 %43, i32* @g_7, align 4, !tbaa !1
  br label %11

; <label>:44                                      ; preds = %11
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32, i32* %2, align 4, !tbaa !1
  %47 = add i32 %46, 1
  store i32 %47, i32* %2, align 4, !tbaa !1
  br label %7

; <label>:48                                      ; preds = %7
  %49 = load i32, i32* %2, align 4, !tbaa !1
  %50 = zext i32 %49 to i64
  %51 = bitcast i32* %l_65 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32** %l_59 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  ret i64 %50
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
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32, i32* %2, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5, %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  br label %16

; <label>:11                                      ; preds = %5
  %12 = load i16, i16* %1, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %2, align 4, !tbaa !1
  %15 = ashr i32 %13, %14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %17 = phi i32 [ %10, %8 ], [ %15, %11 ]
  %18 = trunc i32 %17 to i16
  ret i16 %18
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
define internal zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) #0 {
  %1 = alloca i8, align 1
  store i8 %ui, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = zext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %11, label %5

; <label>:5                                       ; preds = %0
  %6 = load i16, i16* %1, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  %8 = load i32, i32* %2, align 4, !tbaa !1
  %9 = ashr i32 65535, %8
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %5, %0
  %12 = load i16, i16* %1, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  br label %19

; <label>:14                                      ; preds = %5
  %15 = load i16, i16* %1, align 2, !tbaa !10
  %16 = zext i16 %15 to i32
  %17 = load i32, i32* %2, align 4, !tbaa !1
  %18 = shl i32 %16, %17
  br label %19

; <label>:19                                      ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ]
  %21 = trunc i32 %20 to i16
  ret i16 %21
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
!12 = !{!13, !8, i64 0}
!13 = !{!"S2", !8, i64 0, !11, i64 8, !2, i64 10, !11, i64 12}
!14 = !{!13, !11, i64 8}
!15 = !{!13, !11, i64 12}
!16 = !{i64 0, i64 4, !1}
!17 = !{i64 0, i64 8, !7, i64 8, i64 2, !10, i64 10, i64 4, !1, i64 12, i64 2, !10}
!18 = !{i64 0, i64 4, !1, i64 1, i64 4, !1, i64 3, i64 4, !1, i64 6, i64 4, !1, i64 9, i64 4, !1}
