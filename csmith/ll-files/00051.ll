; ModuleID = '00051.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [5 x [6 x [8 x i32]]] [[6 x [8 x i32]] [[8 x i32] [i32 -10, i32 -239120274, i32 -239120274, i32 -10, i32 -1617219176, i32 -639774983, i32 -1617219176, i32 -10], [8 x i32] [i32 -239120274, i32 -1617219176, i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940, i32 -239120274], [8 x i32] [i32 -1617219176, i32 -1617219176, i32 1340470127, i32 -639774983, i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176], [8 x i32] [i32 -1617219176, i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940, i32 -239120274, i32 -1617219176], [8 x i32] [i32 -239120274, i32 -10, i32 -1617219176, i32 -639774983, i32 -1617219176, i32 -10, i32 -239120274, i32 -239120274], [8 x i32] [i32 -10, i32 -639774983, i32 2056814940, i32 2056814940, i32 -639774983, i32 -10, i32 -1617219176, i32 -239120274]], [6 x [8 x i32]] [[8 x i32] [i32 2056814940, i32 -239120274, i32 -1617219176, i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940], [8 x i32] [i32 -239120274, i32 -639774983, i32 -639774983, i32 -239120274, i32 -995082696, i32 2056814940, i32 -995082696, i32 -239120274], [8 x i32] [i32 -639774983, i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176, i32 -1617219176, i32 1340470127, i32 -639774983], [8 x i32] [i32 -995082696, i32 -995082696, i32 -1617219176, i32 2056814940, i32 -10, i32 2056814940, i32 -1617219176, i32 -995082696], [8 x i32] [i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176, i32 -1617219176, i32 1340470127, i32 -639774983, i32 -995082696], [8 x i32] [i32 -639774983, i32 -239120274, i32 -995082696, i32 2056814940, i32 -995082696, i32 -239120274, i32 -639774983, i32 -639774983]], [6 x [8 x i32]] [[8 x i32] [i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940, i32 -239120274, i32 -1617219176, i32 -239120274], [8 x i32] [i32 2056814940, i32 -239120274, i32 -1617219176, i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940], [8 x i32] [i32 -239120274, i32 -639774983, i32 -639774983, i32 -239120274, i32 -995082696, i32 2056814940, i32 -995082696, i32 -239120274], [8 x i32] [i32 -639774983, i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176, i32 -1617219176, i32 1340470127, i32 -639774983], [8 x i32] [i32 -995082696, i32 -995082696, i32 -1617219176, i32 2056814940, i32 -10, i32 2056814940, i32 -1617219176, i32 -995082696], [8 x i32] [i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176, i32 -1617219176, i32 1340470127, i32 -639774983, i32 -995082696]], [6 x [8 x i32]] [[8 x i32] [i32 -639774983, i32 -239120274, i32 -995082696, i32 2056814940, i32 -995082696, i32 -239120274, i32 -639774983, i32 -639774983], [8 x i32] [i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940, i32 -239120274, i32 -1617219176, i32 -239120274], [8 x i32] [i32 2056814940, i32 -239120274, i32 -1617219176, i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940], [8 x i32] [i32 -239120274, i32 -639774983, i32 -639774983, i32 -239120274, i32 -995082696, i32 2056814940, i32 -995082696, i32 -239120274], [8 x i32] [i32 -639774983, i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176, i32 -1617219176, i32 1340470127, i32 -639774983], [8 x i32] [i32 -995082696, i32 -995082696, i32 -1617219176, i32 2056814940, i32 -10, i32 2056814940, i32 -1617219176, i32 -995082696]], [6 x [8 x i32]] [[8 x i32] [i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176, i32 -1617219176, i32 1340470127, i32 -639774983, i32 -995082696], [8 x i32] [i32 -639774983, i32 -239120274, i32 -995082696, i32 2056814940, i32 -995082696, i32 -239120274, i32 -639774983, i32 -639774983], [8 x i32] [i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940, i32 -239120274, i32 -1617219176, i32 -239120274], [8 x i32] [i32 2056814940, i32 -239120274, i32 -1617219176, i32 -239120274, i32 2056814940, i32 1340470127, i32 1340470127, i32 2056814940], [8 x i32] [i32 -239120274, i32 -639774983, i32 -639774983, i32 -239120274, i32 -995082696, i32 2056814940, i32 -995082696, i32 -239120274], [8 x i32] [i32 -639774983, i32 -995082696, i32 -639774983, i32 1340470127, i32 -1617219176, i32 -995082696, i32 -1617219176, i32 2056814940]]], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"g_2[i][j][k]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_5 = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global i32 8, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_30 = internal global i64 -2245583658001487094, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"g_30\00", align 1
@g_86 = internal global [9 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1]], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"g_86[i][j]\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_96 = internal global [3 x [5 x i16]] [[5 x i16] [i16 29375, i16 29375, i16 29375, i16 29375, i16 29375], [5 x i16] [i16 29375, i16 29375, i16 29375, i16 29375, i16 29375], [5 x i16] [i16 29375, i16 29375, i16 29375, i16 29375, i16 29375]], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"g_96[i][j]\00", align 1
@g_105 = internal global i16 -8, align 2
@.str.9 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_111 = internal global i16 -7, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_111\00", align 1
@g_120 = internal global i32 -1, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_120\00", align 1
@g_125 = internal global i8 0, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_136 = internal constant [2 x [4 x [8 x i16]]] [[4 x [8 x i16]] [[8 x i16] [i16 -7, i16 -9207, i16 -7, i16 -2, i16 9, i16 -4, i16 -8, i16 -1], [8 x i16] [i16 -21511, i16 9, i16 3106, i16 -4, i16 -4, i16 3106, i16 9, i16 -21511], [8 x i16] [i16 -21511, i16 -2, i16 -722, i16 -7, i16 9, i16 -11796, i16 3106, i16 -11796], [8 x i16] [i16 -7, i16 0, i16 -1, i16 0, i16 -7, i16 -11796, i16 -9207, i16 9]], [4 x [8 x i16]] [[8 x i16] [i16 -8, i16 -2, i16 0, i16 0, i16 3106, i16 3106, i16 0, i16 0], [8 x i16] [i16 9, i16 9, i16 0, i16 -21511, i16 -722, i16 -4, i16 -9207, i16 -8], [8 x i16] [i16 3106, i16 -9207, i16 -1, i16 9, i16 -1, i16 -9207, i16 3106, i16 -8], [8 x i16] [i16 -9207, i16 -4, i16 -722, i16 -21511, i16 0, i16 9, i16 9, i16 0]]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_136[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_138\00", align 1
@g_144 = internal global [10 x [4 x i64]] [[4 x i64] [i64 -1, i64 4, i64 -3704028257482842968, i64 358582045994456452], [4 x i64] [i64 0, i64 -3704028257482842968, i64 5179522976325613444, i64 -3704028257482842968], [4 x i64] [i64 5179522976325613444, i64 -3704028257482842968, i64 0, i64 358582045994456452], [4 x i64] [i64 -3704028257482842968, i64 4, i64 -1, i64 5179522976325613444], [4 x i64] [i64 0, i64 -3, i64 -3, i64 0], [4 x i64] [i64 0, i64 358582045994456452, i64 -1, i64 -8946674987210884833], [4 x i64] [i64 -3704028257482842968, i64 0, i64 0, i64 -4602318842988195504], [4 x i64] [i64 5179522976325613444, i64 -1, i64 5179522976325613444, i64 -4602318842988195504], [4 x i64] [i64 0, i64 0, i64 -3704028257482842968, i64 -8946674987210884833], [4 x i64] [i64 -1, i64 358582045994456452, i64 0, i64 0]], align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"g_144[i][j]\00", align 1
@g_152 = internal global i32 -453927978, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_152\00", align 1
@g_184 = internal global i16 9, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_184\00", align 1
@g_191 = internal global i32 -790095651, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_191\00", align 1
@g_237 = internal global i8 -68, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_237\00", align 1
@g_249 = internal global i32 -1644593065, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_249\00", align 1
@g_256 = internal global [1 x [10 x [6 x i16]]] [[10 x [6 x i16]] [[6 x i16] [i16 -3, i16 -1, i16 0, i16 4255, i16 0, i16 -1], [6 x i16] [i16 0, i16 -3, i16 -1, i16 -2, i16 -2, i16 -1], [6 x i16] [i16 0, i16 0, i16 -2, i16 4255, i16 26990, i16 4255], [6 x i16] [i16 -3, i16 0, i16 -3, i16 -1, i16 -2, i16 -2], [6 x i16] [i16 -1, i16 -3, i16 -3, i16 -1, i16 0, i16 4255], [6 x i16] [i16 4255, i16 -1, i16 -2, i16 -1, i16 4255, i16 -1], [6 x i16] [i16 -1, i16 4255, i16 -1, i16 -1, i16 4255, i16 -1], [6 x i16] [i16 -3, i16 -1, i16 0, i16 4255, i16 0, i16 -1], [6 x i16] [i16 0, i16 -3, i16 -1, i16 -2, i16 -2, i16 -1], [6 x i16] [i16 0, i16 0, i16 -2, i16 4255, i16 26990, i16 -1]]], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"g_256[i][j][k]\00", align 1
@g_257 = internal global i64 -6581442981177564629, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_257\00", align 1
@g_258 = internal global [8 x i16] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [9 x i8] c"g_258[i]\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_292 = internal global i64 0, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_292\00", align 1
@g_324 = internal global i32 -1, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_324\00", align 1
@g_326 = internal global i32 -1270816477, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_326\00", align 1
@g_327 = internal global i16 -6, align 2
@.str.28 = private unnamed_addr constant [6 x i8] c"g_327\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_396\00", align 1
@g_406 = internal global [7 x [6 x i8]] [[6 x i8] c"\82\E7\82\E7\82\E7", [6 x i8] c"\FA\E7\FA\E7\FA\E7", [6 x i8] c"\82\E7\82\E7\82\E7", [6 x i8] c"\FA\E7\FA\E7\FA\E7", [6 x i8] c"\82\E7\82\E7\82\E7", [6 x i8] c"\FA\E7\FA\E7\FA\E7", [6 x i8] c"\82\E7\82\E7\82\E7"], align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"g_406[i][j]\00", align 1
@g_436 = internal global i32 3, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_436\00", align 1
@g_438 = internal global i32 648061135, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_438\00", align 1
@g_543 = internal global i32 7, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_543\00", align 1
@g_545 = internal global i16 9, align 2
@.str.34 = private unnamed_addr constant [6 x i8] c"g_545\00", align 1
@g_548 = internal global i32 -1251177249, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_548\00", align 1
@g_553 = internal global i64 -1930953916584106691, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"g_553\00", align 1
@g_586 = internal global i8 -1, align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"g_586\00", align 1
@g_636 = internal global [9 x [9 x [3 x i32]]] [[9 x [3 x i32]] [[3 x i32] [i32 1, i32 -1269417909, i32 506043132], [3 x i32] [i32 9, i32 8, i32 9], [3 x i32] [i32 5, i32 16586887, i32 0], [3 x i32] [i32 -394910213, i32 387275200, i32 -1940254009], [3 x i32] [i32 16586887, i32 1120929208, i32 1852976893], [3 x i32] [i32 -1, i32 -1940254009, i32 -7], [3 x i32] [i32 16586887, i32 -2, i32 0], [3 x i32] [i32 -394910213, i32 0, i32 0], [3 x i32] [i32 5, i32 1852976893, i32 1268592464]], [9 x [3 x i32]] [[3 x i32] [i32 9, i32 -1, i32 1], [3 x i32] [i32 1, i32 1535598664, i32 7], [3 x i32] [i32 0, i32 -1, i32 -666844225], [3 x i32] [i32 506043132, i32 1535598664, i32 -1], [3 x i32] [i32 -3, i32 -1, i32 -394910213], [3 x i32] [i32 1852976893, i32 1852976893, i32 1535598664], [3 x i32] [i32 -666844225, i32 0, i32 1], [3 x i32] [i32 1120929208, i32 -2, i32 2097721978], [3 x i32] [i32 1, i32 -1940254009, i32 -3]], [9 x [3 x i32]] [[3 x i32] [i32 154807515, i32 1120929208, i32 2097721978], [3 x i32] [i32 1, i32 387275200, i32 1], [3 x i32] [i32 1535598664, i32 16586887, i32 1535598664], [3 x i32] [i32 7, i32 8, i32 -394910213], [3 x i32] [i32 0, i32 -1269417909, i32 -1], [3 x i32] [i32 8, i32 -3, i32 -666844225], [3 x i32] [i32 -280517640, i32 -1, i32 7], [3 x i32] [i32 8, i32 1598121593, i32 1], [3 x i32] [i32 0, i32 1268592464, i32 1268592464]], [9 x [3 x i32]] [[3 x i32] [i32 7, i32 -666844225, i32 0], [3 x i32] [i32 1535598664, i32 -280517640, i32 0], [3 x i32] [i32 1, i32 9, i32 -7], [3 x i32] [i32 154807515, i32 0, i32 1852976893], [3 x i32] [i32 1, i32 9, i32 -1940254009], [3 x i32] [i32 1120929208, i32 -280517640, i32 0], [3 x i32] [i32 -666844225, i32 -666844225, i32 9], [3 x i32] [i32 1852976893, i32 1268592464, i32 506043132], [3 x i32] [i32 -3, i32 1598121593, i32 1]], [9 x [3 x i32]] [[3 x i32] [i32 506043132, i32 -1, i32 1120929208], [3 x i32] [i32 0, i32 -3, i32 1], [3 x i32] [i32 1, i32 -1269417909, i32 506043132], [3 x i32] [i32 9, i32 8, i32 9], [3 x i32] [i32 5, i32 16586887, i32 0], [3 x i32] [i32 -394910213, i32 387275200, i32 -1940254009], [3 x i32] [i32 16586887, i32 1120929208, i32 1852976893], [3 x i32] [i32 -1, i32 -1940254009, i32 -7], [3 x i32] [i32 16586887, i32 -2, i32 0]], [9 x [3 x i32]] [[3 x i32] [i32 -394910213, i32 0, i32 0], [3 x i32] [i32 5, i32 1852976893, i32 1268592464], [3 x i32] [i32 9, i32 -1, i32 1], [3 x i32] [i32 1, i32 1535598664, i32 7], [3 x i32] [i32 0, i32 -1, i32 -666844225], [3 x i32] [i32 506043132, i32 1535598664, i32 -1], [3 x i32] [i32 -3, i32 -1, i32 -394910213], [3 x i32] [i32 1852976893, i32 1852976893, i32 1535598664], [3 x i32] [i32 -666844225, i32 0, i32 1]], [9 x [3 x i32]] [[3 x i32] [i32 1120929208, i32 -2, i32 2097721978], [3 x i32] [i32 1, i32 -1940254009, i32 -3], [3 x i32] [i32 154807515, i32 1120929208, i32 2097721978], [3 x i32] [i32 1, i32 387275200, i32 1], [3 x i32] [i32 1535598664, i32 16586887, i32 1535598664], [3 x i32] [i32 7, i32 8, i32 -394910213], [3 x i32] [i32 0, i32 -1269417909, i32 -1], [3 x i32] [i32 8, i32 -3, i32 -666844225], [3 x i32] [i32 -280517640, i32 -1, i32 7]], [9 x [3 x i32]] [[3 x i32] [i32 8, i32 1598121593, i32 -3], [3 x i32] [i32 1535598664, i32 1852976893, i32 1852976893], [3 x i32] [i32 1598121593, i32 0, i32 -666844225], [3 x i32] [i32 5, i32 1268592464, i32 1120929208], [3 x i32] [i32 -7, i32 7, i32 1], [3 x i32] [i32 1828038637, i32 2097721978, i32 154807515], [3 x i32] [i32 -394910213, i32 7, i32 1], [3 x i32] [i32 -280517640, i32 1268592464, i32 1535598664], [3 x i32] [i32 0, i32 0, i32 7]], [9 x [3 x i32]] [[3 x i32] [i32 154807515, i32 1852976893, i32 0], [3 x i32] [i32 -1, i32 1, i32 8], [3 x i32] [i32 0, i32 1, i32 -280517640], [3 x i32] [i32 385894730, i32 -1, i32 8], [3 x i32] [i32 7, i32 0, i32 0], [3 x i32] [i32 7, i32 -1940254009, i32 7], [3 x i32] [i32 -2, i32 -1, i32 1535598664], [3 x i32] [i32 9, i32 -1, i32 1], [3 x i32] [i32 -1, i32 -280517640, i32 154807515]]], align 16
@.str.38 = private unnamed_addr constant [15 x i8] c"g_636[i][j][k]\00", align 1
@g_637 = internal global i16 -1, align 2
@.str.39 = private unnamed_addr constant [6 x i8] c"g_637\00", align 1
@g_646 = internal global i32 -1, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_646\00", align 1
@g_648 = internal global [4 x [3 x i32]] [[3 x i32] [i32 9, i32 9, i32 9], [3 x i32] [i32 -399130462, i32 -399130462, i32 -399130462], [3 x i32] [i32 9, i32 9, i32 9], [3 x i32] [i32 -399130462, i32 -399130462, i32 -399130462]], align 16
@.str.41 = private unnamed_addr constant [12 x i8] c"g_648[i][j]\00", align 1
@g_727 = internal global i32 0, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_727\00", align 1
@g_878 = internal global i64 2005065473571959993, align 8
@.str.43 = private unnamed_addr constant [6 x i8] c"g_878\00", align 1
@g_1072 = internal global i32 -2, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1072\00", align 1
@g_1126 = internal global i32 1542745488, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1126\00", align 1
@g_1165 = internal global i64 -7, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1165\00", align 1
@g_1183 = internal global [3 x [10 x [7 x i8]]] [[10 x [7 x i8]] [[7 x i8] c"\FD\FF\01\ED\F2\00\01", [7 x i8] c"\03\C1Y \ED\05\01", [7 x i8] c"\D4\FE\07\FD\FA\96\05", [7 x i8] c"\BD-D#\02\80B", [7 x i8] c"\FF\FE\E9\00\ED\01\05", [7 x i8] c"#\F8\BB\C1\C1\BB\F8", [7 x i8] c"\01\FEV\07\04\00\00", [7 x i8] c"\FC\00\C2\013\FF\E5", [7 x i8] c"\01\D6\FE\07\FF\07(", [7 x i8] c"\02\E5\00\C1D\00\01"], [10 x [7 x i8]] [[7 x i8] c"\04\01(\00\01\03\FE", [7 x i8] c"\FFD\BD#\BA\ED\FE", [7 x i8] c"\FF\1C\FD\FD\1C\FF\FF", [7 x i8] c"\F7\B7\05 \19\01\07", [7 x i8] c"\F8(\FF\ED\E9\FF\00", [7 x i8] c"\FE\B7\FF\FC\06\FE\19", [7 x i8] c"\FF\1C\D4\03\00\ED\FF", [7 x i8] c"\E5\BA=D\073\ED", [7 x i8] c"\1C\E9\1A\D4\FF\ED\FF", [7 x i8] c"\05BB\05\00\FF\01"], [10 x [7 x i8]] [[7 x i8] c"\7F\09\07\FD\E9\FF\F6", [7 x i8] c"\FF\C1\FE\C9\01\00\01", [7 x i8] c"\ED\07\FE\FE\05\00\FF", [7 x i8] c"\F8 \FC\01DY\ED", [7 x i8] c"\FF\04V\7F\FD\07\05", [7 x i8] c" \05\B7\F7\90\F7\B7", [7 x i8] c"\00\00\FD\1A\00\FD\FF", [7 x i8] c"\BD\FF\FF-#<\E5", [7 x i8] c"V\04\FE\01\00\01\FE", [7 x i8] c"\FE\FF\00\06\90\02\00"]], align 16
@.str.47 = private unnamed_addr constant [16 x i8] c"g_1183[i][j][k]\00", align 1
@g_1199 = internal global i32 425591742, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1199\00", align 1
@g_1226 = internal global i32 -1737821328, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1226\00", align 1
@g_1295 = internal global i8 1, align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1295\00", align 1
@g_1370 = internal global i16 26983, align 2
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1370\00", align 1
@g_1507 = internal global i32 -3, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1507\00", align 1
@g_1514 = internal global i32 1, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1514\00", align 1
@g_1713 = internal global i32 0, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1713\00", align 1
@g_1868 = internal global i8 -46, align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1868\00", align 1
@g_1885 = internal global i8 -10, align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1885\00", align 1
@g_2060 = internal global [10 x [9 x i32]] [[9 x i32] [i32 -1080211523, i32 -1480234851, i32 -176022245, i32 -1080211523, i32 -1097426173, i32 -176022245, i32 -176022245, i32 -1097426173, i32 -1080211523], [9 x i32] [i32 -821766634, i32 1786095439, i32 -821766634, i32 -5, i32 -1, i32 -5, i32 -821766634, i32 1786095439, i32 -821766634], [9 x i32] [i32 -1080211523, i32 -1097426173, i32 -176022245, i32 -176022245, i32 -1097426173, i32 -1080211523, i32 -176022245, i32 -1480234851, i32 -1080211523], [9 x i32] [i32 -1992815337, i32 1786095439, i32 -1992815337, i32 -5, i32 3, i32 -5, i32 -1992815337, i32 1786095439, i32 -1992815337], [9 x i32] [i32 -1080211523, i32 -1480234851, i32 -176022245, i32 -1080211523, i32 -1097426173, i32 -176022245, i32 -176022245, i32 -1097426173, i32 -1080211523], [9 x i32] [i32 -821766634, i32 1786095439, i32 -821766634, i32 -5, i32 -1, i32 -5, i32 -821766634, i32 1786095439, i32 -821766634], [9 x i32] [i32 -1080211523, i32 -1097426173, i32 -176022245, i32 -176022245, i32 -1097426173, i32 -1080211523, i32 -176022245, i32 -1480234851, i32 -1080211523], [9 x i32] [i32 -1992815337, i32 1786095439, i32 -1992815337, i32 -5, i32 3, i32 -5, i32 -1992815337, i32 1786095439, i32 -1992815337], [9 x i32] [i32 -1080211523, i32 -1480234851, i32 -176022245, i32 -1080211523, i32 -1097426173, i32 -176022245, i32 -176022245, i32 -1097426173, i32 -1080211523], [9 x i32] [i32 -821766634, i32 1786095439, i32 -821766634, i32 -5, i32 -1, i32 -5, i32 -821766634, i32 1786095439, i32 -821766634]], align 16
@.str.57 = private unnamed_addr constant [13 x i8] c"g_2060[i][j]\00", align 1
@g_2490 = internal global i16 13496, align 2
@.str.58 = private unnamed_addr constant [7 x i8] c"g_2490\00", align 1
@g_2507 = internal global i32 1, align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"g_2507\00", align 1
@g_2619 = internal global i64 0, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"g_2619\00", align 1
@g_2734 = internal global i32 -7, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_2734\00", align 1
@g_2746 = internal global i32 3, align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"g_2746\00", align 1
@g_2853 = internal global i64 -2658986995244581143, align 8
@.str.63 = private unnamed_addr constant [7 x i8] c"g_2853\00", align 1
@g_2915 = internal global i64 -3415104190596736822, align 8
@.str.64 = private unnamed_addr constant [7 x i8] c"g_2915\00", align 1
@g_3159 = internal constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@.str.65 = private unnamed_addr constant [10 x i8] c"g_3159[i]\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"g_3215\00", align 1
@g_3228 = internal global i32 -984312265, align 4
@.str.67 = private unnamed_addr constant [7 x i8] c"g_3228\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"g_3254\00", align 1
@g_3486 = internal global i32 -166412177, align 4
@.str.69 = private unnamed_addr constant [7 x i8] c"g_3486\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_2626 = internal global i32** @g_328, align 8
@func_1.l_3168 = private unnamed_addr constant [1 x [9 x i32***]] [[9 x i32***] [i32*** @g_2626, i32*** @g_2626, i32*** @g_2626, i32*** @g_2626, i32*** @g_2626, i32*** @g_2626, i32*** @g_2626, i32*** @g_2626, i32*** @g_2626]], align 16
@g_471 = internal global i16** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [10 x i16*]]* @g_472 to i8*), i64 328) to i16**), align 8
@g_472 = internal global [8 x [10 x i16*]] [[10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*)], [10 x i16*] [i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 10) to i16*), i16* @g_184], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* null, i16* @g_184, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* null, i16* @g_184, i16* @g_184, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* @g_184], [10 x i16*] [i16* null, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 10) to i16*), i16* null, i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 10) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 12) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*)], [10 x i16*] [i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i16]]* @g_96 to i8*), i64 14) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* @g_184, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i16]* @g_258 to i8*), i64 14) to i16*), i16* null, i16* @g_184, i16* @g_184, i16* null]], align 16
@g_2059 = internal constant i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [9 x i32]]* @g_2060 to i8*), i64 300) to i32*), align 8
@g_393 = internal global i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [1 x i32**]]* @g_394 to i8*), i64 16) to i32***), align 8
@g_1159 = internal global i64*** @g_1160, align 8
@g_1610 = internal global i8**** @g_1611, align 8
@g_1609 = internal global i8***** @g_1610, align 8
@g_3185 = internal global i8***** @g_3186, align 8
@g_2752 = internal global i16**** @g_2068, align 8
@g_328 = internal global i32* @g_249, align 8
@g_2058 = internal global i32** @g_2059, align 8
@g_1158 = internal global i64**** @g_1159, align 8
@g_2618 = internal global i64* @g_2619, align 8
@g_424 = internal global i64* @g_257, align 8
@g_151 = internal global i32* @g_152, align 8
@g_2758 = internal global i32* @g_152, align 8
@g_2030 = internal global i8**** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i8***]* @g_2031 to i8*), i64 8) to i8****), align 8
@g_2224 = internal global i32** @g_328, align 8
@g_2590 = internal global i32** @g_328, align 8
@g_3187 = internal global [6 x i8***] [i8*** @g_560, i8*** @g_560, i8*** @g_560, i8*** @g_560, i8*** @g_560, i8*** @g_560], align 16
@g_302 = internal global i8** @g_303, align 8
@g_110 = internal global i16* @g_111, align 8
@g_2617 = internal global i64** @g_2618, align 8
@g_2032 = internal global i8** @g_405, align 8
@g_3254 = internal constant i32 727842636, align 4
@func_1.l_3253 = private unnamed_addr constant [7 x i32*] [i32* @g_3254, i32* @g_3254, i32* @g_3254, i32* @g_3254, i32* @g_3254, i32* @g_3254, i32* @g_3254], align 16
@g_2625 = internal constant i32*** @g_2626, align 8
@g_2029 = internal global i8***** @g_2030, align 8
@g_405 = internal global i8* getelementptr (i8, i8* getelementptr inbounds ([7 x [6 x i8]], [7 x [6 x i8]]* @g_406, i32 0, i32 0, i32 0), i64 10), align 8
@g_303 = internal global i8* @g_237, align 8
@g_687 = internal global i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @g_618, i32 0, i32 0), align 8
@g_1883 = internal global i8**** null, align 8
@g_396 = internal constant i32 -6, align 4
@func_1.l_3500 = private unnamed_addr constant [7 x i32] [i32 7, i32 1980135936, i32 7, i32 7, i32 1980135936, i32 7, i32 7], align 16
@g_2175 = internal global i16**** null, align 8
@g_2864 = internal global i32** @g_2865, align 8
@g_3473 = internal global i64** @g_424, align 8
@g_394 = internal global [5 x [1 x i32**]] [[1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i32*]]]* @g_395 to i8*), i64 64) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i32*]]]* @g_395 to i8*), i64 64) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i32*]]]* @g_395 to i8*), i64 64) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i32*]]]* @g_395 to i8*), i64 64) to i32**)], [1 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i32*]]]* @g_395 to i8*), i64 64) to i32**)]], align 16
@g_395 = internal global [6 x [9 x [1 x i32*]]] [[9 x [1 x i32*]] [[1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396]], [9 x [1 x i32*]] [[1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396]], [9 x [1 x i32*]] [[1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396]], [9 x [1 x i32*]] [[1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396]], [9 x [1 x i32*]] [[1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396]], [9 x [1 x i32*]] [[1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396], [1 x i32*] [i32* @g_396]]], align 16
@g_1160 = internal global i64** getelementptr inbounds ([2 x i64*], [2 x i64*]* @g_1161, i32 0, i32 0), align 8
@g_1161 = internal global [2 x i64*] [i64* @g_30, i64* @g_30], align 16
@g_1611 = internal global i8*** @g_560, align 8
@g_560 = internal global i8** null, align 8
@g_3186 = internal constant i8**** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i8***]* @g_3187 to i8*), i64 24) to i8****), align 8
@g_2068 = internal global i16*** getelementptr inbounds ([1 x i16**], [1 x i16**]* @g_2069, i32 0, i32 0), align 8
@g_2069 = internal global [1 x i16**] zeroinitializer, align 8
@g_2031 = internal global [2 x i8***] [i8*** @g_2032, i8*** @g_2032], align 16
@func_72.l_1071 = private unnamed_addr constant [4 x i32*] [i32* @g_646, i32* @g_646, i32* @g_646, i32* @g_646], align 16
@g_618 = internal global [1 x i32*] [i32* @g_438], align 8
@g_2865 = internal global i32* null, align 8
@.str.70 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call signext i8 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %131, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 5
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
  %101 = icmp slt i32 %100, 8
  br i1 %101, label %102, label %126

; <label>:102                                     ; preds = %99
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 %108
  %110 = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %109, i32 0, i64 %106
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %110, i32 0, i64 %104
  %112 = load i32, i32* %111, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 %114)
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
  %135 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %137)
  %138 = load i32, i32* @g_6, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %140)
  %141 = load i64, i64* @g_30, align 8, !tbaa !7
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %142)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %171, %134
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = icmp slt i32 %144, 9
  br i1 %145, label %146, label %174

; <label>:146                                     ; preds = %143
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %147

; <label>:147                                     ; preds = %167, %146
  %148 = load i32, i32* %j, align 4, !tbaa !1
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %170

; <label>:150                                     ; preds = %147
  %151 = load i32, i32* %j, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [9 x [1 x i32]], [9 x [1 x i32]]* @g_86, i32 0, i64 %154
  %156 = getelementptr inbounds [1 x i32], [1 x i32]* %155, i32 0, i64 %152
  %157 = load i32, i32* %156, align 4, !tbaa !1
  %158 = zext i32 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 %159)
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

; <label>:162                                     ; preds = %150
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = load i32, i32* %j, align 4, !tbaa !1
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %163, i32 %164)
  br label %166

; <label>:166                                     ; preds = %162, %150
  br label %167

; <label>:167                                     ; preds = %166
  %168 = load i32, i32* %j, align 4, !tbaa !1
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %j, align 4, !tbaa !1
  br label %147

; <label>:170                                     ; preds = %147
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4, !tbaa !1
  br label %143

; <label>:174                                     ; preds = %143
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %203, %174
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %178, label %206

; <label>:178                                     ; preds = %175
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %179

; <label>:179                                     ; preds = %199, %178
  %180 = load i32, i32* %j, align 4, !tbaa !1
  %181 = icmp slt i32 %180, 5
  br i1 %181, label %182, label %202

; <label>:182                                     ; preds = %179
  %183 = load i32, i32* %j, align 4, !tbaa !1
  %184 = sext i32 %183 to i64
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [3 x [5 x i16]], [3 x [5 x i16]]* @g_96, i32 0, i64 %186
  %188 = getelementptr inbounds [5 x i16], [5 x i16]* %187, i32 0, i64 %184
  %189 = load i16, i16* %188, align 2, !tbaa !10
  %190 = zext i16 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

; <label>:194                                     ; preds = %182
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = load i32, i32* %j, align 4, !tbaa !1
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %195, i32 %196)
  br label %198

; <label>:198                                     ; preds = %194, %182
  br label %199

; <label>:199                                     ; preds = %198
  %200 = load i32, i32* %j, align 4, !tbaa !1
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %j, align 4, !tbaa !1
  br label %179

; <label>:202                                     ; preds = %179
  br label %203

; <label>:203                                     ; preds = %202
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:206                                     ; preds = %175
  %207 = load i16, i16* @g_105, align 2, !tbaa !10
  %208 = sext i16 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %209)
  %210 = load i16, i16* @g_111, align 2, !tbaa !10
  %211 = sext i16 %210 to i64
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %211, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %212)
  %213 = load i32, i32* @g_120, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %215)
  %216 = load i8, i8* @g_125, align 1, !tbaa !9
  %217 = zext i8 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %218)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %219

; <label>:219                                     ; preds = %259, %206
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = icmp slt i32 %220, 2
  br i1 %221, label %222, label %262

; <label>:222                                     ; preds = %219
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %223

; <label>:223                                     ; preds = %255, %222
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = icmp slt i32 %224, 4
  br i1 %225, label %226, label %258

; <label>:226                                     ; preds = %223
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %227

; <label>:227                                     ; preds = %251, %226
  %228 = load i32, i32* %k, align 4, !tbaa !1
  %229 = icmp slt i32 %228, 8
  br i1 %229, label %230, label %254

; <label>:230                                     ; preds = %227
  %231 = load i32, i32* %k, align 4, !tbaa !1
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* %j, align 4, !tbaa !1
  %234 = sext i32 %233 to i64
  %235 = load i32, i32* %i, align 4, !tbaa !1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x [4 x [8 x i16]]], [2 x [4 x [8 x i16]]]* @g_136, i32 0, i64 %236
  %238 = getelementptr inbounds [4 x [8 x i16]], [4 x [8 x i16]]* %237, i32 0, i64 %234
  %239 = getelementptr inbounds [8 x i16], [8 x i16]* %238, i32 0, i64 %232
  %240 = load i16, i16* %239, align 2, !tbaa !10
  %241 = sext i16 %240 to i64
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %242)
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

; <label>:245                                     ; preds = %230
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = load i32, i32* %j, align 4, !tbaa !1
  %248 = load i32, i32* %k, align 4, !tbaa !1
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %246, i32 %247, i32 %248)
  br label %250

; <label>:250                                     ; preds = %245, %230
  br label %251

; <label>:251                                     ; preds = %250
  %252 = load i32, i32* %k, align 4, !tbaa !1
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %k, align 4, !tbaa !1
  br label %227

; <label>:254                                     ; preds = %227
  br label %255

; <label>:255                                     ; preds = %254
  %256 = load i32, i32* %j, align 4, !tbaa !1
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %j, align 4, !tbaa !1
  br label %223

; <label>:258                                     ; preds = %223
  br label %259

; <label>:259                                     ; preds = %258
  %260 = load i32, i32* %i, align 4, !tbaa !1
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %i, align 4, !tbaa !1
  br label %219

; <label>:262                                     ; preds = %219
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -3642, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %263)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %291, %262
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 10
  br i1 %266, label %267, label %294

; <label>:267                                     ; preds = %264
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:268                                     ; preds = %287, %267
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = icmp slt i32 %269, 4
  br i1 %270, label %271, label %290

; <label>:271                                     ; preds = %268
  %272 = load i32, i32* %j, align 4, !tbaa !1
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [10 x [4 x i64]], [10 x [4 x i64]]* @g_144, i32 0, i64 %275
  %277 = getelementptr inbounds [4 x i64], [4 x i64]* %276, i32 0, i64 %273
  %278 = load i64, i64* %277, align 8, !tbaa !7
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 %279)
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

; <label>:282                                     ; preds = %271
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = load i32, i32* %j, align 4, !tbaa !1
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %283, i32 %284)
  br label %286

; <label>:286                                     ; preds = %282, %271
  br label %287

; <label>:287                                     ; preds = %286
  %288 = load i32, i32* %j, align 4, !tbaa !1
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %j, align 4, !tbaa !1
  br label %268

; <label>:290                                     ; preds = %268
  br label %291

; <label>:291                                     ; preds = %290
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:294                                     ; preds = %264
  %295 = load volatile i32, i32* @g_152, align 4, !tbaa !1
  %296 = sext i32 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %297)
  %298 = load i16, i16* @g_184, align 2, !tbaa !10
  %299 = zext i16 %298 to i64
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %300)
  %301 = load i32, i32* @g_191, align 4, !tbaa !1
  %302 = zext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %303)
  %304 = load i8, i8* @g_237, align 1, !tbaa !9
  %305 = zext i8 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %306)
  %307 = load i32, i32* @g_249, align 4, !tbaa !1
  %308 = sext i32 %307 to i64
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %309)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %310

; <label>:310                                     ; preds = %350, %294
  %311 = load i32, i32* %i, align 4, !tbaa !1
  %312 = icmp slt i32 %311, 1
  br i1 %312, label %313, label %353

; <label>:313                                     ; preds = %310
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %314

; <label>:314                                     ; preds = %346, %313
  %315 = load i32, i32* %j, align 4, !tbaa !1
  %316 = icmp slt i32 %315, 10
  br i1 %316, label %317, label %349

; <label>:317                                     ; preds = %314
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %318

; <label>:318                                     ; preds = %342, %317
  %319 = load i32, i32* %k, align 4, !tbaa !1
  %320 = icmp slt i32 %319, 6
  br i1 %320, label %321, label %345

; <label>:321                                     ; preds = %318
  %322 = load i32, i32* %k, align 4, !tbaa !1
  %323 = sext i32 %322 to i64
  %324 = load i32, i32* %j, align 4, !tbaa !1
  %325 = sext i32 %324 to i64
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [1 x [10 x [6 x i16]]], [1 x [10 x [6 x i16]]]* @g_256, i32 0, i64 %327
  %329 = getelementptr inbounds [10 x [6 x i16]], [10 x [6 x i16]]* %328, i32 0, i64 %325
  %330 = getelementptr inbounds [6 x i16], [6 x i16]* %329, i32 0, i64 %323
  %331 = load i16, i16* %330, align 2, !tbaa !10
  %332 = sext i16 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %333)
  %334 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

; <label>:336                                     ; preds = %321
  %337 = load i32, i32* %i, align 4, !tbaa !1
  %338 = load i32, i32* %j, align 4, !tbaa !1
  %339 = load i32, i32* %k, align 4, !tbaa !1
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %337, i32 %338, i32 %339)
  br label %341

; <label>:341                                     ; preds = %336, %321
  br label %342

; <label>:342                                     ; preds = %341
  %343 = load i32, i32* %k, align 4, !tbaa !1
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %k, align 4, !tbaa !1
  br label %318

; <label>:345                                     ; preds = %318
  br label %346

; <label>:346                                     ; preds = %345
  %347 = load i32, i32* %j, align 4, !tbaa !1
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %j, align 4, !tbaa !1
  br label %314

; <label>:349                                     ; preds = %314
  br label %350

; <label>:350                                     ; preds = %349
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %i, align 4, !tbaa !1
  br label %310

; <label>:353                                     ; preds = %310
  %354 = load i64, i64* @g_257, align 8, !tbaa !7
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %355)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %356

; <label>:356                                     ; preds = %372, %353
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = icmp slt i32 %357, 8
  br i1 %358, label %359, label %375

; <label>:359                                     ; preds = %356
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [8 x i16], [8 x i16]* @g_258, i32 0, i64 %361
  %363 = load i16, i16* %362, align 2, !tbaa !10
  %364 = zext i16 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

; <label>:368                                     ; preds = %359
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 %369)
  br label %371

; <label>:371                                     ; preds = %368, %359
  br label %372

; <label>:372                                     ; preds = %371
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %i, align 4, !tbaa !1
  br label %356

; <label>:375                                     ; preds = %356
  %376 = load i64, i64* @g_292, align 8, !tbaa !7
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* @g_324, align 4, !tbaa !1
  %379 = zext i32 %378 to i64
  %380 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %379, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %380)
  %381 = load i32, i32* @g_326, align 4, !tbaa !1
  %382 = zext i32 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %383)
  %384 = load i16, i16* @g_327, align 2, !tbaa !10
  %385 = sext i16 %384 to i64
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %386)
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %387)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %388

; <label>:388                                     ; preds = %416, %375
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = icmp slt i32 %389, 7
  br i1 %390, label %391, label %419

; <label>:391                                     ; preds = %388
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %392

; <label>:392                                     ; preds = %412, %391
  %393 = load i32, i32* %j, align 4, !tbaa !1
  %394 = icmp slt i32 %393, 6
  br i1 %394, label %395, label %415

; <label>:395                                     ; preds = %392
  %396 = load i32, i32* %j, align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = load i32, i32* %i, align 4, !tbaa !1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [7 x [6 x i8]], [7 x [6 x i8]]* @g_406, i32 0, i64 %399
  %401 = getelementptr inbounds [6 x i8], [6 x i8]* %400, i32 0, i64 %397
  %402 = load i8, i8* %401, align 1, !tbaa !9
  %403 = sext i8 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %404)
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %411

; <label>:407                                     ; preds = %395
  %408 = load i32, i32* %i, align 4, !tbaa !1
  %409 = load i32, i32* %j, align 4, !tbaa !1
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %408, i32 %409)
  br label %411

; <label>:411                                     ; preds = %407, %395
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i32, i32* %j, align 4, !tbaa !1
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %j, align 4, !tbaa !1
  br label %392

; <label>:415                                     ; preds = %392
  br label %416

; <label>:416                                     ; preds = %415
  %417 = load i32, i32* %i, align 4, !tbaa !1
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %i, align 4, !tbaa !1
  br label %388

; <label>:419                                     ; preds = %388
  %420 = load i32, i32* @g_436, align 4, !tbaa !1
  %421 = zext i32 %420 to i64
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %421, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %422)
  %423 = load i32, i32* @g_438, align 4, !tbaa !1
  %424 = zext i32 %423 to i64
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %425)
  %426 = load i32, i32* @g_543, align 4, !tbaa !1
  %427 = sext i32 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %428)
  %429 = load i16, i16* @g_545, align 2, !tbaa !10
  %430 = sext i16 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %431)
  %432 = load i32, i32* @g_548, align 4, !tbaa !1
  %433 = sext i32 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %434)
  %435 = load i64, i64* @g_553, align 8, !tbaa !7
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %436)
  %437 = load i8, i8* @g_586, align 1, !tbaa !9
  %438 = zext i8 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %439)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %440

; <label>:440                                     ; preds = %480, %419
  %441 = load i32, i32* %i, align 4, !tbaa !1
  %442 = icmp slt i32 %441, 9
  br i1 %442, label %443, label %483

; <label>:443                                     ; preds = %440
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %444

; <label>:444                                     ; preds = %476, %443
  %445 = load i32, i32* %j, align 4, !tbaa !1
  %446 = icmp slt i32 %445, 9
  br i1 %446, label %447, label %479

; <label>:447                                     ; preds = %444
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %448

; <label>:448                                     ; preds = %472, %447
  %449 = load i32, i32* %k, align 4, !tbaa !1
  %450 = icmp slt i32 %449, 3
  br i1 %450, label %451, label %475

; <label>:451                                     ; preds = %448
  %452 = load i32, i32* %k, align 4, !tbaa !1
  %453 = sext i32 %452 to i64
  %454 = load i32, i32* %j, align 4, !tbaa !1
  %455 = sext i32 %454 to i64
  %456 = load i32, i32* %i, align 4, !tbaa !1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [9 x [9 x [3 x i32]]], [9 x [9 x [3 x i32]]]* @g_636, i32 0, i64 %457
  %459 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %458, i32 0, i64 %455
  %460 = getelementptr inbounds [3 x i32], [3 x i32]* %459, i32 0, i64 %453
  %461 = load i32, i32* %460, align 4, !tbaa !1
  %462 = sext i32 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i32 %463)
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %471

; <label>:466                                     ; preds = %451
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = load i32, i32* %j, align 4, !tbaa !1
  %469 = load i32, i32* %k, align 4, !tbaa !1
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %467, i32 %468, i32 %469)
  br label %471

; <label>:471                                     ; preds = %466, %451
  br label %472

; <label>:472                                     ; preds = %471
  %473 = load i32, i32* %k, align 4, !tbaa !1
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %k, align 4, !tbaa !1
  br label %448

; <label>:475                                     ; preds = %448
  br label %476

; <label>:476                                     ; preds = %475
  %477 = load i32, i32* %j, align 4, !tbaa !1
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %j, align 4, !tbaa !1
  br label %444

; <label>:479                                     ; preds = %444
  br label %480

; <label>:480                                     ; preds = %479
  %481 = load i32, i32* %i, align 4, !tbaa !1
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %i, align 4, !tbaa !1
  br label %440

; <label>:483                                     ; preds = %440
  %484 = load i16, i16* @g_637, align 2, !tbaa !10
  %485 = zext i16 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %486)
  %487 = load i32, i32* @g_646, align 4, !tbaa !1
  %488 = sext i32 %487 to i64
  %489 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %488, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %489)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %490

; <label>:490                                     ; preds = %518, %483
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = icmp slt i32 %491, 4
  br i1 %492, label %493, label %521

; <label>:493                                     ; preds = %490
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %494

; <label>:494                                     ; preds = %514, %493
  %495 = load i32, i32* %j, align 4, !tbaa !1
  %496 = icmp slt i32 %495, 3
  br i1 %496, label %497, label %517

; <label>:497                                     ; preds = %494
  %498 = load i32, i32* %j, align 4, !tbaa !1
  %499 = sext i32 %498 to i64
  %500 = load i32, i32* %i, align 4, !tbaa !1
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 %501
  %503 = getelementptr inbounds [3 x i32], [3 x i32]* %502, i32 0, i64 %499
  %504 = load i32, i32* %503, align 4, !tbaa !1
  %505 = sext i32 %504 to i64
  %506 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %505, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 %506)
  %507 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %513

; <label>:509                                     ; preds = %497
  %510 = load i32, i32* %i, align 4, !tbaa !1
  %511 = load i32, i32* %j, align 4, !tbaa !1
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %510, i32 %511)
  br label %513

; <label>:513                                     ; preds = %509, %497
  br label %514

; <label>:514                                     ; preds = %513
  %515 = load i32, i32* %j, align 4, !tbaa !1
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %j, align 4, !tbaa !1
  br label %494

; <label>:517                                     ; preds = %494
  br label %518

; <label>:518                                     ; preds = %517
  %519 = load i32, i32* %i, align 4, !tbaa !1
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %i, align 4, !tbaa !1
  br label %490

; <label>:521                                     ; preds = %490
  %522 = load i32, i32* @g_727, align 4, !tbaa !1
  %523 = zext i32 %522 to i64
  %524 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %523, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %524)
  %525 = load i64, i64* @g_878, align 8, !tbaa !7
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %525, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %526)
  %527 = load i32, i32* @g_1072, align 4, !tbaa !1
  %528 = sext i32 %527 to i64
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %528, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %529)
  %530 = load i32, i32* @g_1126, align 4, !tbaa !1
  %531 = sext i32 %530 to i64
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %532)
  %533 = load i64, i64* @g_1165, align 8, !tbaa !7
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %533, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %534)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %535

; <label>:535                                     ; preds = %575, %521
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = icmp slt i32 %536, 3
  br i1 %537, label %538, label %578

; <label>:538                                     ; preds = %535
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %539

; <label>:539                                     ; preds = %571, %538
  %540 = load i32, i32* %j, align 4, !tbaa !1
  %541 = icmp slt i32 %540, 10
  br i1 %541, label %542, label %574

; <label>:542                                     ; preds = %539
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %543

; <label>:543                                     ; preds = %567, %542
  %544 = load i32, i32* %k, align 4, !tbaa !1
  %545 = icmp slt i32 %544, 7
  br i1 %545, label %546, label %570

; <label>:546                                     ; preds = %543
  %547 = load i32, i32* %k, align 4, !tbaa !1
  %548 = sext i32 %547 to i64
  %549 = load i32, i32* %j, align 4, !tbaa !1
  %550 = sext i32 %549 to i64
  %551 = load i32, i32* %i, align 4, !tbaa !1
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds [3 x [10 x [7 x i8]]], [3 x [10 x [7 x i8]]]* @g_1183, i32 0, i64 %552
  %554 = getelementptr inbounds [10 x [7 x i8]], [10 x [7 x i8]]* %553, i32 0, i64 %550
  %555 = getelementptr inbounds [7 x i8], [7 x i8]* %554, i32 0, i64 %548
  %556 = load i8, i8* %555, align 1, !tbaa !9
  %557 = zext i8 %556 to i64
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i32 0, i32 0), i32 %558)
  %559 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %566

; <label>:561                                     ; preds = %546
  %562 = load i32, i32* %i, align 4, !tbaa !1
  %563 = load i32, i32* %j, align 4, !tbaa !1
  %564 = load i32, i32* %k, align 4, !tbaa !1
  %565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %562, i32 %563, i32 %564)
  br label %566

; <label>:566                                     ; preds = %561, %546
  br label %567

; <label>:567                                     ; preds = %566
  %568 = load i32, i32* %k, align 4, !tbaa !1
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %k, align 4, !tbaa !1
  br label %543

; <label>:570                                     ; preds = %543
  br label %571

; <label>:571                                     ; preds = %570
  %572 = load i32, i32* %j, align 4, !tbaa !1
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %j, align 4, !tbaa !1
  br label %539

; <label>:574                                     ; preds = %539
  br label %575

; <label>:575                                     ; preds = %574
  %576 = load i32, i32* %i, align 4, !tbaa !1
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %i, align 4, !tbaa !1
  br label %535

; <label>:578                                     ; preds = %535
  %579 = load i32, i32* @g_1199, align 4, !tbaa !1
  %580 = sext i32 %579 to i64
  %581 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %580, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %581)
  %582 = load i32, i32* @g_1226, align 4, !tbaa !1
  %583 = zext i32 %582 to i64
  %584 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %583, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %584)
  %585 = load i8, i8* @g_1295, align 1, !tbaa !9
  %586 = sext i8 %585 to i64
  %587 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %586, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %587)
  %588 = load i16, i16* @g_1370, align 2, !tbaa !10
  %589 = zext i16 %588 to i64
  %590 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %589, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %590)
  %591 = load i32, i32* @g_1507, align 4, !tbaa !1
  %592 = sext i32 %591 to i64
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %592, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %593)
  %594 = load i32, i32* @g_1514, align 4, !tbaa !1
  %595 = sext i32 %594 to i64
  %596 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %595, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %596)
  %597 = load i32, i32* @g_1713, align 4, !tbaa !1
  %598 = zext i32 %597 to i64
  %599 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %598, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %599)
  %600 = load i8, i8* @g_1868, align 1, !tbaa !9
  %601 = sext i8 %600 to i64
  %602 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %601, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %602)
  %603 = load volatile i8, i8* @g_1885, align 1, !tbaa !9
  %604 = sext i8 %603 to i64
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %604, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %605)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %606

; <label>:606                                     ; preds = %634, %578
  %607 = load i32, i32* %i, align 4, !tbaa !1
  %608 = icmp slt i32 %607, 10
  br i1 %608, label %609, label %637

; <label>:609                                     ; preds = %606
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %610

; <label>:610                                     ; preds = %630, %609
  %611 = load i32, i32* %j, align 4, !tbaa !1
  %612 = icmp slt i32 %611, 9
  br i1 %612, label %613, label %633

; <label>:613                                     ; preds = %610
  %614 = load i32, i32* %j, align 4, !tbaa !1
  %615 = sext i32 %614 to i64
  %616 = load i32, i32* %i, align 4, !tbaa !1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [10 x [9 x i32]], [10 x [9 x i32]]* @g_2060, i32 0, i64 %617
  %619 = getelementptr inbounds [9 x i32], [9 x i32]* %618, i32 0, i64 %615
  %620 = load i32, i32* %619, align 4, !tbaa !1
  %621 = sext i32 %620 to i64
  %622 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %621, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i32 %622)
  %623 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %629

; <label>:625                                     ; preds = %613
  %626 = load i32, i32* %i, align 4, !tbaa !1
  %627 = load i32, i32* %j, align 4, !tbaa !1
  %628 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %626, i32 %627)
  br label %629

; <label>:629                                     ; preds = %625, %613
  br label %630

; <label>:630                                     ; preds = %629
  %631 = load i32, i32* %j, align 4, !tbaa !1
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %j, align 4, !tbaa !1
  br label %610

; <label>:633                                     ; preds = %610
  br label %634

; <label>:634                                     ; preds = %633
  %635 = load i32, i32* %i, align 4, !tbaa !1
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %i, align 4, !tbaa !1
  br label %606

; <label>:637                                     ; preds = %606
  %638 = load i16, i16* @g_2490, align 2, !tbaa !10
  %639 = zext i16 %638 to i64
  %640 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %639, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %640)
  %641 = load volatile i32, i32* @g_2507, align 4, !tbaa !1
  %642 = sext i32 %641 to i64
  %643 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %642, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %643)
  %644 = load volatile i64, i64* @g_2619, align 8, !tbaa !7
  %645 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %644, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %645)
  %646 = load volatile i32, i32* @g_2734, align 4, !tbaa !1
  %647 = zext i32 %646 to i64
  %648 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %647, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %648)
  %649 = load i32, i32* @g_2746, align 4, !tbaa !1
  %650 = zext i32 %649 to i64
  %651 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %650, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %651)
  %652 = load i64, i64* @g_2853, align 8, !tbaa !7
  %653 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %652, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %653)
  %654 = load i64, i64* @g_2915, align 8, !tbaa !7
  %655 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %654, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %655)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %656

; <label>:656                                     ; preds = %672, %637
  %657 = load i32, i32* %i, align 4, !tbaa !1
  %658 = icmp slt i32 %657, 3
  br i1 %658, label %659, label %675

; <label>:659                                     ; preds = %656
  %660 = load i32, i32* %i, align 4, !tbaa !1
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [3 x i32], [3 x i32]* @g_3159, i32 0, i64 %661
  %663 = load i32, i32* %662, align 4, !tbaa !1
  %664 = sext i32 %663 to i64
  %665 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %664, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %665)
  %666 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %671

; <label>:668                                     ; preds = %659
  %669 = load i32, i32* %i, align 4, !tbaa !1
  %670 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 %669)
  br label %671

; <label>:671                                     ; preds = %668, %659
  br label %672

; <label>:672                                     ; preds = %671
  %673 = load i32, i32* %i, align 4, !tbaa !1
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %i, align 4, !tbaa !1
  br label %656

; <label>:675                                     ; preds = %656
  %676 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -5922999069572520612, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %676)
  %677 = load i32, i32* @g_3228, align 4, !tbaa !1
  %678 = zext i32 %677 to i64
  %679 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %678, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %679)
  %680 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 727842636, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %680)
  %681 = load i32, i32* @g_3486, align 4, !tbaa !1
  %682 = zext i32 %681 to i64
  %683 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %682, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %683)
  %684 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %685 = zext i32 %684 to i64
  %686 = xor i64 %685, 4294967295
  %687 = trunc i64 %686 to i32
  %688 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %687, i32 %688)
  %689 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %689) #1
  %690 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %690) #1
  %691 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %691) #1
  %692 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %692) #1
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
define internal signext i8 @func_1() #0 {
  %1 = alloca i8, align 1
  %l_20 = alloca [1 x [10 x i8]], align 1
  %l_3165 = alloca i64, align 8
  %l_3168 = alloca [1 x [9 x i32***]], align 16
  %l_3167 = alloca i32****, align 8
  %l_3166 = alloca i32*****, align 8
  %l_3188 = alloca i32*, align 8
  %l_3218 = alloca i64**, align 8
  %l_3224 = alloca i16, align 2
  %l_3225 = alloca i64, align 8
  %l_3237 = alloca i16***, align 8
  %l_3236 = alloca i16****, align 8
  %l_3256 = alloca i16, align 2
  %l_3364 = alloca i16, align 2
  %l_3408 = alloca i16, align 2
  %l_3409 = alloca i8, align 1
  %l_3478 = alloca i64, align 8
  %l_3501 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_22 = alloca i32, align 4
  %l_3173 = alloca i32, align 4
  %l_3174 = alloca i32, align 4
  %l_3175 = alloca i32, align 4
  %l_3235 = alloca i16***, align 8
  %l_3234 = alloca i16****, align 8
  %l_3255 = alloca i32*, align 8
  %l_3296 = alloca i32*, align 8
  %l_3358 = alloca i32, align 4
  %l_3368 = alloca i16**, align 8
  %l_3367 = alloca [3 x [9 x i16***]], align 16
  %l_3366 = alloca i16****, align 8
  %l_3365 = alloca i16*****, align 8
  %l_3376 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_21 = alloca i16, align 2
  %l_3182 = alloca i16**, align 8
  %l_3195 = alloca i32*, align 8
  %l_3197 = alloca i32, align 4
  %l_3207 = alloca i64***, align 8
  %l_3245 = alloca i32****, align 8
  %l_3176 = alloca i32, align 4
  %2 = alloca i32
  %l_3223 = alloca i32, align 4
  %l_3226 = alloca i32, align 4
  %l_3227 = alloca i32, align 4
  %l_3233 = alloca i16***, align 8
  %l_3232 = alloca i16****, align 8
  %l_3231 = alloca [6 x [1 x [5 x i16*****]]], align 16
  %l_3244 = alloca [10 x i32****], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_3196 = alloca i32*, align 8
  %l_3198 = alloca i16, align 2
  %l_3219 = alloca i16, align 2
  %l_3222 = alloca i64, align 8
  %l_3266 = alloca i64, align 8
  %l_3267 = alloca i32*, align 8
  %l_3291 = alloca i32, align 4
  %l_3293 = alloca [3 x [4 x i32]], align 16
  %l_3301 = alloca i8****, align 8
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_3253 = alloca [7 x i32*], align 16
  %l_3252 = alloca i32**, align 8
  %l_3259 = alloca [9 x i32], align 16
  %l_3263 = alloca i32, align 4
  %l_3302 = alloca i8****, align 8
  %l_3303 = alloca i8**, align 8
  %i8 = alloca i32, align 4
  %l_3286 = alloca i32, align 4
  %l_3292 = alloca [1 x i64*], align 8
  %l_3294 = alloca i8, align 1
  %l_3295 = alloca i32*, align 8
  %l_3297 = alloca i32*, align 8
  %l_3300 = alloca i8****, align 8
  %l_3316 = alloca i32*, align 8
  %i9 = alloca i32, align 4
  %l_3323 = alloca i8, align 1
  %l_3345 = alloca i16, align 2
  %l_3348 = alloca i32, align 4
  %l_3349 = alloca i32, align 4
  %l_3350 = alloca i32, align 4
  %l_3357 = alloca i32, align 4
  %l_3328 = alloca [2 x i32], align 4
  %l_3346 = alloca i32, align 4
  %l_3347 = alloca i64*, align 8
  %i11 = alloca i32, align 4
  %l_3351 = alloca i8, align 1
  %l_3356 = alloca i32, align 4
  %l_3363 = alloca i64, align 8
  %l_3377 = alloca i8, align 1
  %l_3413 = alloca [5 x [9 x [2 x i32*]]], align 16
  %i14 = alloca i32, align 4
  %j15 = alloca i32, align 4
  %k16 = alloca i32, align 4
  %l_3440 = alloca i16, align 2
  %l_3455 = alloca i32*, align 8
  %l_3461 = alloca i64, align 8
  %l_3472 = alloca i64**, align 8
  %l_3475 = alloca i16, align 2
  %l_3495 = alloca i64*, align 8
  %l_3500 = alloca [7 x i32], align 16
  %l_3502 = alloca i32, align 4
  %l_3503 = alloca i32, align 4
  %l_3504 = alloca i32, align 4
  %l_3505 = alloca i32, align 4
  %l_3506 = alloca i8, align 1
  %l_3507 = alloca i32, align 4
  %l_3508 = alloca i8, align 1
  %i18 = alloca i32, align 4
  %l_3433 = alloca i16, align 2
  %l_3437 = alloca i32, align 4
  %l_3451 = alloca i32, align 4
  %l_3452 = alloca i64, align 8
  %l_3471 = alloca i16, align 2
  %l_3474 = alloca i32, align 4
  %i19 = alloca i32, align 4
  %j20 = alloca i32, align 4
  %l_3479 = alloca i64, align 8
  %i23 = alloca i32, align 4
  %j24 = alloca i32, align 4
  %3 = bitcast [1 x [10 x i8]]* %l_20 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %3) #1
  %4 = bitcast i64* %l_3165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 -8143275757273054640, i64* %l_3165, align 8, !tbaa !7
  %5 = bitcast [1 x [9 x i32***]]* %l_3168 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  %6 = bitcast [1 x [9 x i32***]]* %l_3168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([1 x [9 x i32***]]* @func_1.l_3168 to i8*), i64 72, i32 16, i1 false)
  %7 = bitcast i32***** %l_3167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = getelementptr inbounds [1 x [9 x i32***]], [1 x [9 x i32***]]* %l_3168, i32 0, i64 0
  %9 = getelementptr inbounds [9 x i32***], [9 x i32***]* %8, i32 0, i64 7
  store i32**** %9, i32***** %l_3167, align 8, !tbaa !5
  %10 = bitcast i32****** %l_3166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32***** %l_3167, i32****** %l_3166, align 8, !tbaa !5
  %11 = bitcast i32** %l_3188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* null, i32** %l_3188, align 8, !tbaa !5
  %12 = bitcast i64*** %l_3218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64** null, i64*** %l_3218, align 8, !tbaa !5
  %13 = bitcast i16* %l_3224 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 -1, i16* %l_3224, align 2, !tbaa !10
  %14 = bitcast i64* %l_3225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 3285863650843576342, i64* %l_3225, align 8, !tbaa !7
  %15 = bitcast i16**** %l_3237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i16*** @g_471, i16**** %l_3237, align 8, !tbaa !5
  %16 = bitcast i16***** %l_3236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i16**** %l_3237, i16***** %l_3236, align 8, !tbaa !5
  %17 = bitcast i16* %l_3256 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #1
  store i16 18662, i16* %l_3256, align 2, !tbaa !10
  %18 = bitcast i16* %l_3364 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #1
  store i16 -29717, i16* %l_3364, align 2, !tbaa !10
  %19 = bitcast i16* %l_3408 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %19) #1
  store i16 0, i16* %l_3408, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_3409) #1
  store i8 97, i8* %l_3409, align 1, !tbaa !9
  %20 = bitcast i64* %l_3478 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64 -8, i64* %l_3478, align 8, !tbaa !7
  %21 = bitcast i16* %l_3501 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %21) #1
  store i16 24434, i16* %l_3501, align 2, !tbaa !10
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %42, %0
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %45

; <label>:27                                      ; preds = %24
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %38, %27
  %29 = load i32, i32* %j, align 4, !tbaa !1
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %j, align 4, !tbaa !1
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1 x [10 x i8]], [1 x [10 x i8]]* %l_20, i32 0, i64 %35
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %36, i32 0, i64 %33
  store i8 1, i8* %37, align 1, !tbaa !9
  br label %38

; <label>:38                                      ; preds = %31
  %39 = load i32, i32* %j, align 4, !tbaa !1
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %j, align 4, !tbaa !1
  br label %28

; <label>:41                                      ; preds = %28
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4, !tbaa !1
  br label %24

; <label>:45                                      ; preds = %24
  br label %46

; <label>:46                                      ; preds = %1675, %45
  store i32 0, i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), align 4, !tbaa !1
  br label %47

; <label>:47                                      ; preds = %1291, %46
  %48 = load i32, i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), align 4, !tbaa !1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %1296

; <label>:50                                      ; preds = %47
  %51 = bitcast i32* %l_22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 714111077, i32* %l_22, align 4, !tbaa !1
  %52 = bitcast i32* %l_3173 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 1, i32* %l_3173, align 4, !tbaa !1
  %53 = bitcast i32* %l_3174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 -1, i32* %l_3174, align 4, !tbaa !1
  %54 = bitcast i32* %l_3175 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 1174572447, i32* %l_3175, align 4, !tbaa !1
  %55 = bitcast i16**** %l_3235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i16*** @g_471, i16**** %l_3235, align 8, !tbaa !5
  %56 = bitcast i16***** %l_3234 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i16**** %l_3235, i16***** %l_3234, align 8, !tbaa !5
  %57 = bitcast i32** %l_3255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i32* getelementptr inbounds ([9 x [9 x [3 x i32]]], [9 x [9 x [3 x i32]]]* @g_636, i32 0, i64 7, i64 2, i64 0), i32** %l_3255, align 8, !tbaa !5
  %58 = bitcast i32** %l_3296 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  store i32* null, i32** %l_3296, align 8, !tbaa !5
  %59 = bitcast i32* %l_3358 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 -368253407, i32* %l_3358, align 4, !tbaa !1
  %60 = bitcast i16*** %l_3368 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  store i16** getelementptr inbounds ([8 x [10 x i16*]], [8 x [10 x i16*]]* @g_472, i32 0, i64 4, i64 1), i16*** %l_3368, align 8, !tbaa !5
  %61 = bitcast [3 x [9 x i16***]]* %l_3367 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %61) #1
  %62 = getelementptr inbounds [3 x [9 x i16***]], [3 x [9 x i16***]]* %l_3367, i64 0, i64 0
  %63 = getelementptr inbounds [9 x i16***], [9 x i16***]* %62, i64 0, i64 0
  store i16*** %l_3368, i16**** %63, !tbaa !5
  %64 = getelementptr inbounds i16***, i16**** %63, i64 1
  store i16*** null, i16**** %64, !tbaa !5
  %65 = getelementptr inbounds i16***, i16**** %64, i64 1
  store i16*** %l_3368, i16**** %65, !tbaa !5
  %66 = getelementptr inbounds i16***, i16**** %65, i64 1
  store i16*** null, i16**** %66, !tbaa !5
  %67 = getelementptr inbounds i16***, i16**** %66, i64 1
  store i16*** %l_3368, i16**** %67, !tbaa !5
  %68 = getelementptr inbounds i16***, i16**** %67, i64 1
  store i16*** %l_3368, i16**** %68, !tbaa !5
  %69 = getelementptr inbounds i16***, i16**** %68, i64 1
  store i16*** %l_3368, i16**** %69, !tbaa !5
  %70 = getelementptr inbounds i16***, i16**** %69, i64 1
  store i16*** null, i16**** %70, !tbaa !5
  %71 = getelementptr inbounds i16***, i16**** %70, i64 1
  store i16*** %l_3368, i16**** %71, !tbaa !5
  %72 = getelementptr inbounds [9 x i16***], [9 x i16***]* %62, i64 1
  %73 = getelementptr inbounds [9 x i16***], [9 x i16***]* %72, i64 0, i64 0
  store i16*** %l_3368, i16**** %73, !tbaa !5
  %74 = getelementptr inbounds i16***, i16**** %73, i64 1
  store i16*** %l_3368, i16**** %74, !tbaa !5
  %75 = getelementptr inbounds i16***, i16**** %74, i64 1
  store i16*** %l_3368, i16**** %75, !tbaa !5
  %76 = getelementptr inbounds i16***, i16**** %75, i64 1
  store i16*** %l_3368, i16**** %76, !tbaa !5
  %77 = getelementptr inbounds i16***, i16**** %76, i64 1
  store i16*** %l_3368, i16**** %77, !tbaa !5
  %78 = getelementptr inbounds i16***, i16**** %77, i64 1
  store i16*** %l_3368, i16**** %78, !tbaa !5
  %79 = getelementptr inbounds i16***, i16**** %78, i64 1
  store i16*** %l_3368, i16**** %79, !tbaa !5
  %80 = getelementptr inbounds i16***, i16**** %79, i64 1
  store i16*** %l_3368, i16**** %80, !tbaa !5
  %81 = getelementptr inbounds i16***, i16**** %80, i64 1
  store i16*** %l_3368, i16**** %81, !tbaa !5
  %82 = getelementptr inbounds [9 x i16***], [9 x i16***]* %72, i64 1
  %83 = getelementptr inbounds [9 x i16***], [9 x i16***]* %82, i64 0, i64 0
  store i16*** %l_3368, i16**** %83, !tbaa !5
  %84 = getelementptr inbounds i16***, i16**** %83, i64 1
  store i16*** null, i16**** %84, !tbaa !5
  %85 = getelementptr inbounds i16***, i16**** %84, i64 1
  store i16*** %l_3368, i16**** %85, !tbaa !5
  %86 = getelementptr inbounds i16***, i16**** %85, i64 1
  store i16*** null, i16**** %86, !tbaa !5
  %87 = getelementptr inbounds i16***, i16**** %86, i64 1
  store i16*** %l_3368, i16**** %87, !tbaa !5
  %88 = getelementptr inbounds i16***, i16**** %87, i64 1
  store i16*** %l_3368, i16**** %88, !tbaa !5
  %89 = getelementptr inbounds i16***, i16**** %88, i64 1
  store i16*** %l_3368, i16**** %89, !tbaa !5
  %90 = getelementptr inbounds i16***, i16**** %89, i64 1
  store i16*** null, i16**** %90, !tbaa !5
  %91 = getelementptr inbounds i16***, i16**** %90, i64 1
  store i16*** %l_3368, i16**** %91, !tbaa !5
  %92 = bitcast i16***** %l_3366 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = getelementptr inbounds [3 x [9 x i16***]], [3 x [9 x i16***]]* %l_3367, i32 0, i64 1
  %94 = getelementptr inbounds [9 x i16***], [9 x i16***]* %93, i32 0, i64 7
  store i16**** %94, i16***** %l_3366, align 8, !tbaa !5
  %95 = bitcast i16****** %l_3365 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  store i16***** %l_3366, i16****** %l_3365, align 8, !tbaa !5
  %96 = bitcast i64* %l_3376 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i64 155851597573208540, i64* %l_3376, align 8, !tbaa !7
  %97 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  store i32 7, i32* @g_6, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %430, %50
  %100 = load i32, i32* @g_6, align 4, !tbaa !1
  %101 = icmp sgt i32 %100, 16
  br i1 %101, label %102, label %435

; <label>:102                                     ; preds = %99
  %103 = bitcast i16* %l_21 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %103) #1
  store i16 -7, i16* %l_21, align 2, !tbaa !10
  %104 = bitcast i16*** %l_3182 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  store i16** null, i16*** %l_3182, align 8, !tbaa !5
  %105 = bitcast i32** %l_3195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 1, i64 4, i64 5), i32** %l_3195, align 8, !tbaa !5
  %106 = bitcast i32* %l_3197 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  store i32 -9, i32* %l_3197, align 4, !tbaa !1
  %107 = bitcast i64**** %l_3207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  store i64*** null, i64**** %l_3207, align 8, !tbaa !5
  %108 = bitcast i32***** %l_3245 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  store i32**** null, i32***** %l_3245, align 8, !tbaa !5
  %109 = load i32, i32* %l_3174, align 4, !tbaa !1
  %110 = and i32 1, %109
  %111 = trunc i32 %110 to i16
  %112 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %111, i16 zeroext 7)
  %113 = zext i16 %112 to i32
  store i32 %113, i32* %l_3174, align 4, !tbaa !1
  %114 = trunc i32 %113 to i8
  %115 = load i32, i32* %l_3175, align 4, !tbaa !1
  %116 = trunc i32 %115 to i8
  %117 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %114, i8 zeroext %116)
  %118 = zext i8 %117 to i32
  %119 = load i16, i16* %l_21, align 2, !tbaa !10
  %120 = sext i16 %119 to i32
  %121 = icmp ne i32 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @safe_div_func_uint32_t_u_u(i32 %122, i32 681911005)
  %124 = trunc i32 %123 to i8
  %125 = load i32, i32* %l_3175, align 4, !tbaa !1
  %126 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %124, i32 %125)
  %127 = zext i8 %126 to i32
  %128 = load i32*, i32** @g_2059, align 8, !tbaa !5
  %129 = load i32, i32* %128, align 4, !tbaa !1
  %130 = and i32 %129, %127
  store i32 %130, i32* %128, align 4, !tbaa !1
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

; <label>:132                                     ; preds = %102
  %133 = load i32**, i32*** @g_2626, align 8, !tbaa !5
  %134 = load i32*, i32** %133, align 8, !tbaa !5
  %135 = load i32***, i32**** @g_393, align 8, !tbaa !5
  %136 = load i32**, i32*** %135, align 8, !tbaa !5
  store i32* %134, i32** %136, align 8, !tbaa !5
  br label %194

; <label>:137                                     ; preds = %102
  %138 = bitcast i32* %l_3176 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #1
  store i32 -1796637651, i32* %l_3176, align 4, !tbaa !1
  %139 = load i32, i32* %l_3176, align 4, !tbaa !1
  %140 = load i32, i32* %l_3175, align 4, !tbaa !1
  %141 = and i32 %140, %139
  store i32 %141, i32* %l_3175, align 4, !tbaa !1
  %142 = load i16**, i16*** %l_3182, align 8, !tbaa !5
  %143 = icmp eq i16** %142, null
  %144 = zext i1 %143 to i32
  %145 = sext i32 %144 to i64
  %146 = load i64***, i64**** @g_1159, align 8, !tbaa !5
  %147 = load i64**, i64*** %146, align 8, !tbaa !5
  %148 = load i64*, i64** %147, align 8, !tbaa !5
  %149 = load i64, i64* %148, align 8, !tbaa !7
  %150 = call i64 @safe_div_func_uint64_t_u_u(i64 %145, i64 %149)
  %151 = load i32, i32* %l_3175, align 4, !tbaa !1
  store i8***** @g_1610, i8****** @g_1609, align 8, !tbaa !5
  store i8***** @g_1610, i8****** @g_3185, align 8, !tbaa !5
  %152 = load volatile i16****, i16***** @g_2752, align 8, !tbaa !5
  %153 = load i16***, i16**** %152, align 8, !tbaa !5
  %154 = load i32*, i32** @g_328, align 8, !tbaa !5
  %155 = load i32, i32* %154, align 4, !tbaa !1
  %156 = load i16, i16* %l_21, align 2, !tbaa !10
  %157 = sext i16 %156 to i32
  %158 = load i32, i32* %l_3176, align 4, !tbaa !1
  %159 = or i32 %157, %158
  %160 = icmp ne i16*** %153, null
  %161 = zext i1 %160 to i32
  %162 = trunc i32 %161 to i16
  %163 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext %162)
  %164 = zext i16 %163 to i32
  %165 = and i32 %151, %164
  %166 = sext i32 %165 to i64
  %167 = icmp ne i64 %150, %166
  %168 = zext i1 %167 to i32
  %169 = load i32*, i32** %l_3188, align 8, !tbaa !5
  %170 = icmp eq i32* getelementptr inbounds ([9 x [9 x [3 x i32]]], [9 x [9 x [3 x i32]]]* @g_636, i32 0, i64 0, i64 8, i64 1), %169
  %171 = zext i1 %170 to i32
  %172 = sext i32 %171 to i64
  %173 = load i32, i32* %l_22, align 4, !tbaa !1
  %174 = zext i32 %173 to i64
  %175 = call i64 @safe_add_func_uint64_t_u_u(i64 %172, i64 %174)
  %176 = call i64 @safe_unary_minus_func_int64_t_s(i64 %175)
  %177 = trunc i64 %176 to i32
  %178 = load i32**, i32*** @g_2058, align 8, !tbaa !5
  %179 = load i32*, i32** %178, align 8, !tbaa !5
  store i32 %177, i32* %179, align 4, !tbaa !1
  store i32 0, i32* @g_548, align 4, !tbaa !1
  br label %180

; <label>:180                                     ; preds = %189, %137
  %181 = load i32, i32* @g_548, align 4, !tbaa !1
  %182 = icmp slt i32 %181, 24
  br i1 %182, label %183, label %192

; <label>:183                                     ; preds = %180
  %184 = load i32*, i32** @g_328, align 8, !tbaa !5
  %185 = load i32, i32* %184, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %183
  br label %192

; <label>:188                                     ; preds = %183
  br label %189

; <label>:189                                     ; preds = %188
  %190 = load i32, i32* @g_548, align 4, !tbaa !1
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @g_548, align 4, !tbaa !1
  br label %180

; <label>:192                                     ; preds = %187, %180
  %193 = bitcast i32* %l_3176 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  br label %194

; <label>:194                                     ; preds = %192, %132
  %195 = load i16, i16* %l_21, align 2, !tbaa !10
  %196 = icmp ne i16 %195, 0
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %194
  store i32 12, i32* %2
  br label %422

; <label>:198                                     ; preds = %194
  store i32 19, i32* @g_1199, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %416, %198
  %200 = load i32, i32* @g_1199, align 4, !tbaa !1
  %201 = icmp eq i32 %200, -14
  br i1 %201, label %202, label %421

; <label>:202                                     ; preds = %199
  %203 = bitcast i32* %l_3223 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %203) #1
  store i32 -1, i32* %l_3223, align 4, !tbaa !1
  %204 = bitcast i32* %l_3226 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  store i32 -1, i32* %l_3226, align 4, !tbaa !1
  %205 = bitcast i32* %l_3227 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #1
  store i32 -479701971, i32* %l_3227, align 4, !tbaa !1
  %206 = bitcast i16**** %l_3233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  store i16*** %l_3182, i16**** %l_3233, align 8, !tbaa !5
  %207 = bitcast i16***** %l_3232 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  store i16**** %l_3233, i16***** %l_3232, align 8, !tbaa !5
  %208 = bitcast [6 x [1 x [5 x i16*****]]]* %l_3231 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %208) #1
  %209 = getelementptr inbounds [6 x [1 x [5 x i16*****]]], [6 x [1 x [5 x i16*****]]]* %l_3231, i64 0, i64 0
  %210 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %209, i64 0, i64 0
  %211 = getelementptr inbounds [5 x i16*****], [5 x i16*****]* %210, i64 0, i64 0
  store i16***** %l_3232, i16****** %211, !tbaa !5
  %212 = getelementptr inbounds i16*****, i16****** %211, i64 1
  store i16***** %l_3232, i16****** %212, !tbaa !5
  %213 = getelementptr inbounds i16*****, i16****** %212, i64 1
  store i16***** %l_3232, i16****** %213, !tbaa !5
  %214 = getelementptr inbounds i16*****, i16****** %213, i64 1
  store i16***** %l_3232, i16****** %214, !tbaa !5
  %215 = getelementptr inbounds i16*****, i16****** %214, i64 1
  store i16***** %l_3232, i16****** %215, !tbaa !5
  %216 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %209, i64 1
  %217 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %216, i64 0, i64 0
  %218 = getelementptr inbounds [5 x i16*****], [5 x i16*****]* %217, i64 0, i64 0
  store i16***** %l_3232, i16****** %218, !tbaa !5
  %219 = getelementptr inbounds i16*****, i16****** %218, i64 1
  store i16***** %l_3232, i16****** %219, !tbaa !5
  %220 = getelementptr inbounds i16*****, i16****** %219, i64 1
  store i16***** %l_3232, i16****** %220, !tbaa !5
  %221 = getelementptr inbounds i16*****, i16****** %220, i64 1
  store i16***** %l_3232, i16****** %221, !tbaa !5
  %222 = getelementptr inbounds i16*****, i16****** %221, i64 1
  store i16***** %l_3232, i16****** %222, !tbaa !5
  %223 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %216, i64 1
  %224 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %223, i64 0, i64 0
  %225 = getelementptr inbounds [5 x i16*****], [5 x i16*****]* %224, i64 0, i64 0
  store i16***** %l_3232, i16****** %225, !tbaa !5
  %226 = getelementptr inbounds i16*****, i16****** %225, i64 1
  store i16***** %l_3232, i16****** %226, !tbaa !5
  %227 = getelementptr inbounds i16*****, i16****** %226, i64 1
  store i16***** %l_3232, i16****** %227, !tbaa !5
  %228 = getelementptr inbounds i16*****, i16****** %227, i64 1
  store i16***** %l_3232, i16****** %228, !tbaa !5
  %229 = getelementptr inbounds i16*****, i16****** %228, i64 1
  store i16***** %l_3232, i16****** %229, !tbaa !5
  %230 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %223, i64 1
  %231 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %230, i64 0, i64 0
  %232 = getelementptr inbounds [5 x i16*****], [5 x i16*****]* %231, i64 0, i64 0
  store i16***** %l_3232, i16****** %232, !tbaa !5
  %233 = getelementptr inbounds i16*****, i16****** %232, i64 1
  store i16***** %l_3232, i16****** %233, !tbaa !5
  %234 = getelementptr inbounds i16*****, i16****** %233, i64 1
  store i16***** %l_3232, i16****** %234, !tbaa !5
  %235 = getelementptr inbounds i16*****, i16****** %234, i64 1
  store i16***** %l_3232, i16****** %235, !tbaa !5
  %236 = getelementptr inbounds i16*****, i16****** %235, i64 1
  store i16***** %l_3232, i16****** %236, !tbaa !5
  %237 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %230, i64 1
  %238 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %237, i64 0, i64 0
  %239 = getelementptr inbounds [5 x i16*****], [5 x i16*****]* %238, i64 0, i64 0
  store i16***** %l_3232, i16****** %239, !tbaa !5
  %240 = getelementptr inbounds i16*****, i16****** %239, i64 1
  store i16***** %l_3232, i16****** %240, !tbaa !5
  %241 = getelementptr inbounds i16*****, i16****** %240, i64 1
  store i16***** %l_3232, i16****** %241, !tbaa !5
  %242 = getelementptr inbounds i16*****, i16****** %241, i64 1
  store i16***** %l_3232, i16****** %242, !tbaa !5
  %243 = getelementptr inbounds i16*****, i16****** %242, i64 1
  store i16***** %l_3232, i16****** %243, !tbaa !5
  %244 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %237, i64 1
  %245 = getelementptr inbounds [1 x [5 x i16*****]], [1 x [5 x i16*****]]* %244, i64 0, i64 0
  %246 = getelementptr inbounds [5 x i16*****], [5 x i16*****]* %245, i64 0, i64 0
  store i16***** %l_3232, i16****** %246, !tbaa !5
  %247 = getelementptr inbounds i16*****, i16****** %246, i64 1
  store i16***** %l_3232, i16****** %247, !tbaa !5
  %248 = getelementptr inbounds i16*****, i16****** %247, i64 1
  store i16***** %l_3232, i16****** %248, !tbaa !5
  %249 = getelementptr inbounds i16*****, i16****** %248, i64 1
  store i16***** %l_3232, i16****** %249, !tbaa !5
  %250 = getelementptr inbounds i16*****, i16****** %249, i64 1
  store i16***** %l_3232, i16****** %250, !tbaa !5
  %251 = bitcast [10 x i32****]* %l_3244 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %251) #1
  %252 = bitcast [10 x i32****]* %l_3244 to i8*
  call void @llvm.memset.p0i8.i64(i8* %252, i8 0, i64 80, i32 16, i1 false)
  %253 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %253) #1
  %254 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %254) #1
  %255 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %255) #1
  %256 = load i16, i16* %l_21, align 2, !tbaa !10
  %257 = icmp ne i16 %256, 0
  br i1 %257, label %258, label %336

; <label>:258                                     ; preds = %202
  %259 = bitcast i32** %l_3196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %259) #1
  store i32* null, i32** %l_3196, align 8, !tbaa !5
  store i64 21, i64* @g_878, align 8, !tbaa !7
  br label %260

; <label>:260                                     ; preds = %320, %258
  %261 = load i64, i64* @g_878, align 8, !tbaa !7
  %262 = icmp sle i64 %261, -8
  br i1 %262, label %263, label %323

; <label>:263                                     ; preds = %260
  %264 = bitcast i16* %l_3198 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %264) #1
  store i16 -1, i16* %l_3198, align 2, !tbaa !10
  %265 = load i32*, i32** %l_3195, align 8, !tbaa !5
  store i32* %265, i32** %l_3196, align 8, !tbaa !5
  %266 = load i16, i16* %l_3198, align 2, !tbaa !10
  %267 = add i16 %266, 1
  store i16 %267, i16* %l_3198, align 2, !tbaa !10
  %268 = load i32***, i32**** @g_393, align 8, !tbaa !5
  %269 = load i32**, i32*** %268, align 8, !tbaa !5
  store i32* %l_3173, i32** %269, align 8, !tbaa !5
  %270 = load i32, i32* %l_22, align 4, !tbaa !1
  %271 = zext i32 %270 to i64
  %272 = load i32, i32* %l_3174, align 4, !tbaa !1
  %273 = trunc i32 %272 to i8
  %274 = load i32, i32* %l_22, align 4, !tbaa !1
  %275 = trunc i32 %274 to i8
  %276 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %273, i8 signext %275)
  %277 = sext i8 %276 to i64
  %278 = call i64 @safe_div_func_int64_t_s_s(i64 %271, i64 %277)
  %279 = trunc i64 %278 to i8
  %280 = load i64****, i64***** @g_1158, align 8, !tbaa !5
  %281 = load i64***, i64**** %280, align 8, !tbaa !5
  %282 = load i64***, i64**** %l_3207, align 8, !tbaa !5
  %283 = icmp ne i64*** %281, %282
  %284 = zext i1 %283 to i32
  %285 = load volatile i64*, i64** @g_2618, align 8, !tbaa !5
  %286 = load volatile i64, i64* %285, align 8, !tbaa !7
  %287 = load i64*, i64** @g_424, align 8, !tbaa !5
  %288 = load i64, i64* %287, align 8, !tbaa !7
  %289 = call i64 @safe_mod_func_int64_t_s_s(i64 %286, i64 %288)
  %290 = load i32, i32* %l_3173, align 4, !tbaa !1
  %291 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %290)
  %292 = zext i32 %291 to i64
  %293 = call i64 @safe_div_func_int64_t_s_s(i64 %292, i64 -5)
  %294 = icmp sle i64 1670805071, %293
  br i1 %294, label %295, label %296

; <label>:295                                     ; preds = %263
  br label %296

; <label>:296                                     ; preds = %295, %263
  %297 = phi i1 [ false, %263 ], [ false, %295 ]
  %298 = zext i1 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = xor i64 %289, %299
  %301 = icmp sle i64 %300, 1248853369
  br i1 %301, label %302, label %306

; <label>:302                                     ; preds = %296
  %303 = load i32*, i32** %l_3195, align 8, !tbaa !5
  %304 = load i32, i32* %303, align 4, !tbaa !1
  %305 = icmp ne i32 %304, 0
  br label %306

; <label>:306                                     ; preds = %302, %296
  %307 = phi i1 [ false, %296 ], [ %305, %302 ]
  %308 = zext i1 %307 to i32
  %309 = sext i32 %308 to i64
  %310 = load i32, i32* %l_22, align 4, !tbaa !1
  %311 = zext i32 %310 to i64
  %312 = call i64 @safe_sub_func_uint64_t_u_u(i64 %309, i64 %311)
  %313 = load i32*, i32** %l_3196, align 8, !tbaa !5
  %314 = load i32, i32* %313, align 4, !tbaa !1
  %315 = trunc i32 %314 to i8
  %316 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %279, i8 signext %315)
  %317 = sext i8 %316 to i32
  %318 = load i32*, i32** @g_151, align 8, !tbaa !5
  store volatile i32 %317, i32* %318, align 4, !tbaa !1
  %319 = bitcast i16* %l_3198 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %319) #1
  br label %320

; <label>:320                                     ; preds = %306
  %321 = load i64, i64* @g_878, align 8, !tbaa !7
  %322 = add nsw i64 %321, -1
  store i64 %322, i64* @g_878, align 8, !tbaa !7
  br label %260

; <label>:323                                     ; preds = %260
  %324 = load i32*, i32** @g_2758, align 8, !tbaa !5
  %325 = load volatile i32, i32* %324, align 4, !tbaa !1
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

; <label>:327                                     ; preds = %323
  store i32 18, i32* %2
  br label %334

; <label>:328                                     ; preds = %323
  %329 = load i8****, i8***** @g_2030, align 8, !tbaa !5
  %330 = load i8***, i8**** %329, align 8, !tbaa !5
  %331 = load i8**, i8*** %330, align 8, !tbaa !5
  %332 = load i8*, i8** %331, align 8, !tbaa !5
  %333 = load i8, i8* %332, align 1, !tbaa !9
  store i8 %333, i8* %1
  store i32 1, i32* %2
  br label %334

; <label>:334                                     ; preds = %328, %327
  %335 = bitcast i32** %l_3196 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  br label %404

; <label>:336                                     ; preds = %202
  %337 = load i64**, i64*** %l_3218, align 8, !tbaa !5
  %338 = icmp ne i64** null, %337
  %339 = zext i1 %338 to i32
  %340 = sext i32 %339 to i64
  %341 = call i64 @safe_sub_func_uint64_t_u_u(i64 8093898490292153635, i64 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %352

; <label>:343                                     ; preds = %336
  %344 = bitcast i16* %l_3219 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %344) #1
  store i16 -21771, i16* %l_3219, align 2, !tbaa !10
  %345 = load i16, i16* %l_3219, align 2, !tbaa !10
  %346 = add i16 %345, 1
  store i16 %346, i16* %l_3219, align 2, !tbaa !10
  %347 = load i32*, i32** @g_328, align 8, !tbaa !5
  %348 = load i32, i32* %347, align 4, !tbaa !1
  %349 = sext i32 %348 to i64
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %347, align 4, !tbaa !1
  %351 = bitcast i16* %l_3219 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %351) #1
  br label %362

; <label>:352                                     ; preds = %336
  %353 = bitcast i64* %l_3222 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %353) #1
  store i64 8731314773582153201, i64* %l_3222, align 8, !tbaa !7
  %354 = load i64, i64* %l_3222, align 8, !tbaa !7
  %355 = trunc i64 %354 to i32
  %356 = load i32**, i32*** @g_2626, align 8, !tbaa !5
  %357 = load i32*, i32** %356, align 8, !tbaa !5
  store i32 %355, i32* %357, align 4, !tbaa !1
  %358 = load volatile i32**, i32*** @g_2224, align 8, !tbaa !5
  %359 = load i32*, i32** %358, align 8, !tbaa !5
  %360 = load i32**, i32*** @g_2626, align 8, !tbaa !5
  store i32* %359, i32** %360, align 8, !tbaa !5
  %361 = bitcast i64* %l_3222 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %361) #1
  br label %362

; <label>:362                                     ; preds = %352, %343
  br label %363

; <label>:363                                     ; preds = %362
  %364 = load i32, i32* @g_3228, align 4, !tbaa !1
  %365 = add i32 %364, 1
  store i32 %365, i32* @g_3228, align 4, !tbaa !1
  %366 = icmp eq i16* null, %l_21
  %367 = zext i1 %366 to i32
  store i16**** null, i16***** %l_3234, align 8, !tbaa !5
  store i16**** null, i16***** %l_3236, align 8, !tbaa !5
  %368 = load i32*, i32** @g_2758, align 8, !tbaa !5
  %369 = load volatile i32, i32* %368, align 4, !tbaa !1
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %390, label %371

; <label>:371                                     ; preds = %363
  %372 = getelementptr inbounds [10 x i32****], [10 x i32****]* %l_3244, i32 0, i64 1
  %373 = load i32****, i32***** %372, align 8, !tbaa !5
  %374 = load i32****, i32***** %l_3245, align 8, !tbaa !5
  %375 = icmp eq i32**** %373, %374
  %376 = zext i1 %375 to i32
  %377 = trunc i32 %376 to i8
  %378 = icmp ne i64*** null, %l_3218
  %379 = zext i1 %378 to i32
  store i32 %379, i32* %l_3197, align 4, !tbaa !1
  %380 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %377, i32 %379)
  %381 = load i32*, i32** %l_3195, align 8, !tbaa !5
  %382 = load i32, i32* %381, align 4, !tbaa !1
  %383 = trunc i32 %382 to i16
  %384 = load i32*, i32** %l_3195, align 8, !tbaa !5
  %385 = load i32, i32* %384, align 4, !tbaa !1
  %386 = trunc i32 %385 to i16
  %387 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %383, i16 signext %386)
  %388 = sext i16 %387 to i32
  %389 = icmp ne i32 %388, 0
  br label %390

; <label>:390                                     ; preds = %371, %363
  %391 = phi i1 [ true, %363 ], [ %389, %371 ]
  %392 = zext i1 %391 to i32
  %393 = trunc i32 %392 to i8
  %394 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %393, i8 signext -17)
  %395 = load i32*, i32** @g_151, align 8, !tbaa !5
  %396 = load volatile i32, i32* %395, align 4, !tbaa !1
  %397 = load i32*, i32** @g_328, align 8, !tbaa !5
  store i32 %396, i32* %397, align 4, !tbaa !1
  %398 = load volatile i32**, i32*** @g_2590, align 8, !tbaa !5
  %399 = load i32*, i32** %398, align 8, !tbaa !5
  %400 = load i32, i32* %399, align 4, !tbaa !1
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

; <label>:402                                     ; preds = %390
  store i32 18, i32* %2
  br label %404

; <label>:403                                     ; preds = %390
  store i32 0, i32* %2
  br label %404

; <label>:404                                     ; preds = %403, %402, %334
  %405 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #1
  %406 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast [10 x i32****]* %l_3244 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %408) #1
  %409 = bitcast [6 x [1 x [5 x i16*****]]]* %l_3231 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %409) #1
  %410 = bitcast i16***** %l_3232 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  %411 = bitcast i16**** %l_3233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast i32* %l_3227 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %413 = bitcast i32* %l_3226 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %413) #1
  %414 = bitcast i32* %l_3223 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %422 [
    i32 0, label %415
    i32 18, label %421
  ]

; <label>:415                                     ; preds = %404
  br label %416

; <label>:416                                     ; preds = %415
  %417 = load i32, i32* @g_1199, align 4, !tbaa !1
  %418 = trunc i32 %417 to i8
  %419 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %418, i8 signext 7)
  %420 = sext i8 %419 to i32
  store i32 %420, i32* @g_1199, align 4, !tbaa !1
  br label %199

; <label>:421                                     ; preds = %404, %199
  store i32 0, i32* %2
  br label %422

; <label>:422                                     ; preds = %421, %404, %197
  %423 = bitcast i32***** %l_3245 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %423) #1
  %424 = bitcast i64**** %l_3207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #1
  %425 = bitcast i32* %l_3197 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #1
  %426 = bitcast i32** %l_3195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #1
  %427 = bitcast i16*** %l_3182 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427) #1
  %428 = bitcast i16* %l_21 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %428) #1
  %cleanup.dest.5 = load i32, i32* %2
  switch i32 %cleanup.dest.5, label %1273 [
    i32 0, label %429
    i32 12, label %435
  ]

; <label>:429                                     ; preds = %422
  br label %430

; <label>:430                                     ; preds = %429
  %431 = load i32, i32* @g_6, align 4, !tbaa !1
  %432 = trunc i32 %431 to i8
  %433 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %432, i8 signext 7)
  %434 = sext i8 %433 to i32
  store i32 %434, i32* @g_6, align 4, !tbaa !1
  br label %99

; <label>:435                                     ; preds = %422, %99
  store i64 -6, i64* @g_878, align 8, !tbaa !7
  br label %436

; <label>:436                                     ; preds = %924, %435
  %437 = load i64, i64* @g_878, align 8, !tbaa !7
  %438 = icmp sle i64 %437, -6
  br i1 %438, label %439, label %929

; <label>:439                                     ; preds = %436
  %440 = bitcast i64* %l_3266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %440) #1
  store i64 5092027384569495880, i64* %l_3266, align 8, !tbaa !7
  %441 = bitcast i32** %l_3267 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %441) #1
  store i32* @g_191, i32** %l_3267, align 8, !tbaa !5
  %442 = bitcast i32* %l_3291 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %442) #1
  store i32 376870521, i32* %l_3291, align 4, !tbaa !1
  %443 = bitcast [3 x [4 x i32]]* %l_3293 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %443) #1
  %444 = bitcast i8***** %l_3301 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %444) #1
  store i8**** getelementptr inbounds ([6 x i8***], [6 x i8***]* @g_3187, i32 0, i64 3), i8***** %l_3301, align 8, !tbaa !5
  %445 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %445) #1
  %446 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %446) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %447

; <label>:447                                     ; preds = %465, %439
  %448 = load i32, i32* %i6, align 4, !tbaa !1
  %449 = icmp slt i32 %448, 3
  br i1 %449, label %450, label %468

; <label>:450                                     ; preds = %447
  store i32 0, i32* %j7, align 4, !tbaa !1
  br label %451

; <label>:451                                     ; preds = %461, %450
  %452 = load i32, i32* %j7, align 4, !tbaa !1
  %453 = icmp slt i32 %452, 4
  br i1 %453, label %454, label %464

; <label>:454                                     ; preds = %451
  %455 = load i32, i32* %j7, align 4, !tbaa !1
  %456 = sext i32 %455 to i64
  %457 = load i32, i32* %i6, align 4, !tbaa !1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %l_3293, i32 0, i64 %458
  %460 = getelementptr inbounds [4 x i32], [4 x i32]* %459, i32 0, i64 %456
  store i32 -1755590947, i32* %460, align 4, !tbaa !1
  br label %461

; <label>:461                                     ; preds = %454
  %462 = load i32, i32* %j7, align 4, !tbaa !1
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %j7, align 4, !tbaa !1
  br label %451

; <label>:464                                     ; preds = %451
  br label %465

; <label>:465                                     ; preds = %464
  %466 = load i32, i32* %i6, align 4, !tbaa !1
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %i6, align 4, !tbaa !1
  br label %447

; <label>:468                                     ; preds = %447
  %469 = load i8**, i8*** @g_302, align 8, !tbaa !5
  %470 = load i8*, i8** %469, align 8, !tbaa !5
  %471 = load i8, i8* %470, align 1, !tbaa !9
  %472 = zext i8 %471 to i32
  %473 = load i32, i32* %l_3173, align 4, !tbaa !1
  %474 = xor i32 %473, %472
  store i32 %474, i32* %l_3173, align 4, !tbaa !1
  %475 = load i16*, i16** @g_110, align 8, !tbaa !5
  %476 = load i16, i16* %475, align 2, !tbaa !10
  %477 = sext i16 %476 to i64
  %478 = load i32, i32* %l_22, align 4, !tbaa !1
  %479 = zext i32 %478 to i64
  %480 = load volatile i64**, i64*** @g_2617, align 8, !tbaa !5
  %481 = load volatile i64*, i64** %480, align 8, !tbaa !5
  %482 = load volatile i64, i64* %481, align 8, !tbaa !7
  %483 = icmp sge i64 %479, %482
  %484 = zext i1 %483 to i32
  %485 = load i64*, i64** @g_424, align 8, !tbaa !5
  store i64 1, i64* %485, align 8, !tbaa !7
  %486 = load i32, i32* %l_3174, align 4, !tbaa !1
  %487 = and i32 %484, %486
  %488 = sext i32 %487 to i64
  %489 = xor i64 %488, 1
  %490 = icmp ugt i64 %477, %489
  %491 = zext i1 %490 to i32
  %492 = trunc i32 %491 to i8
  %493 = load i8**, i8*** @g_2032, align 8, !tbaa !5
  %494 = load i8*, i8** %493, align 8, !tbaa !5
  store i8 %492, i8* %494, align 1, !tbaa !9
  %495 = load i8**, i8*** @g_302, align 8, !tbaa !5
  %496 = load i8*, i8** %495, align 8, !tbaa !5
  %497 = load i8, i8* %496, align 1, !tbaa !9
  %498 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %492, i8 signext %497)
  %499 = sext i8 %498 to i32
  %500 = icmp ne i32 %474, %499
  %501 = zext i1 %500 to i32
  %502 = load i32**, i32*** @g_2058, align 8, !tbaa !5
  %503 = load i32*, i32** %502, align 8, !tbaa !5
  %504 = load i32, i32* %503, align 4, !tbaa !1
  %505 = and i32 %504, %501
  store i32 %505, i32* %503, align 4, !tbaa !1
  store i64 0, i64* @g_1165, align 8, !tbaa !7
  br label %506

; <label>:506                                     ; preds = %909, %468
  %507 = load i64, i64* @g_1165, align 8, !tbaa !7
  %508 = icmp ule i64 %507, 49
  br i1 %508, label %509, label %914

; <label>:509                                     ; preds = %506
  %510 = bitcast [7 x i32*]* %l_3253 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %510) #1
  %511 = bitcast [7 x i32*]* %l_3253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %511, i8* bitcast ([7 x i32*]* @func_1.l_3253 to i8*), i64 56, i32 16, i1 false)
  %512 = bitcast i32*** %l_3252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %512) #1
  %513 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_3253, i32 0, i64 1
  store i32** %513, i32*** %l_3252, align 8, !tbaa !5
  %514 = bitcast [9 x i32]* %l_3259 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %514) #1
  %515 = bitcast i32* %l_3263 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %515) #1
  store i32 -8, i32* %l_3263, align 4, !tbaa !1
  %516 = bitcast i8***** %l_3302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %516) #1
  store i8**** getelementptr inbounds ([6 x i8***], [6 x i8***]* @g_3187, i32 0, i64 0), i8***** %l_3302, align 8, !tbaa !5
  %517 = bitcast i8*** %l_3303 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %517) #1
  store i8** null, i8*** %l_3303, align 8, !tbaa !5
  %518 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %518) #1
  store i32 0, i32* %i8, align 4, !tbaa !1
  br label %519

; <label>:519                                     ; preds = %526, %509
  %520 = load i32, i32* %i8, align 4, !tbaa !1
  %521 = icmp slt i32 %520, 9
  br i1 %521, label %522, label %529

; <label>:522                                     ; preds = %519
  %523 = load i32, i32* %i8, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 %524
  store i32 8, i32* %525, align 4, !tbaa !1
  br label %526

; <label>:526                                     ; preds = %522
  %527 = load i32, i32* %i8, align 4, !tbaa !1
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %i8, align 4, !tbaa !1
  br label %519

; <label>:529                                     ; preds = %519
  %530 = load i32*, i32** %l_3188, align 8, !tbaa !5
  %531 = load i32**, i32*** %l_3252, align 8, !tbaa !5
  store i32* %530, i32** %531, align 8, !tbaa !5
  %532 = load i32*, i32** %l_3255, align 8, !tbaa !5
  %533 = icmp eq i32* %530, %532
  %534 = zext i1 %533 to i32
  %535 = load i16, i16* %l_3256, align 2, !tbaa !10
  %536 = zext i16 %535 to i32
  %537 = load i32, i32* %l_3173, align 4, !tbaa !1
  %538 = icmp eq i32 %536, %537
  %539 = zext i1 %538 to i32
  %540 = sext i32 %539 to i64
  %541 = icmp ne i64 %540, 65535
  %542 = zext i1 %541 to i32
  %543 = xor i32 %534, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %549

; <label>:545                                     ; preds = %529
  %546 = load i64*, i64** @g_424, align 8, !tbaa !5
  %547 = load i64, i64* %546, align 8, !tbaa !7
  %548 = icmp ne i64 %547, 0
  br label %549

; <label>:549                                     ; preds = %545, %529
  %550 = phi i1 [ false, %529 ], [ %548, %545 ]
  %551 = zext i1 %550 to i32
  %552 = load i32*, i32** @g_151, align 8, !tbaa !5
  store volatile i32 %551, i32* %552, align 4, !tbaa !1
  %553 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %554 = load i32, i32* %553, align 4, !tbaa !1
  %555 = icmp ne i32 %554, 0
  %556 = zext i1 %555 to i32
  %557 = load i64*, i64** @g_424, align 8, !tbaa !5
  %558 = load i64, i64* %557, align 8, !tbaa !7
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %571

; <label>:560                                     ; preds = %549
  %561 = load i32, i32* %l_3175, align 4, !tbaa !1
  %562 = trunc i32 %561 to i8
  %563 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 0
  %564 = load i32, i32* %563, align 4, !tbaa !1
  %565 = trunc i32 %564 to i8
  %566 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %562, i8 signext %565)
  %567 = sext i8 %566 to i32
  %568 = load i32, i32* %l_3263, align 4, !tbaa !1
  %569 = or i32 %568, %567
  store i32 %569, i32* %l_3263, align 4, !tbaa !1
  %570 = icmp ne i32 %569, 0
  br label %571

; <label>:571                                     ; preds = %560, %549
  %572 = phi i1 [ false, %549 ], [ %570, %560 ]
  %573 = zext i1 %572 to i32
  %574 = load i32, i32* %l_3175, align 4, !tbaa !1
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %592

; <label>:576                                     ; preds = %571
  %577 = load i64, i64* %l_3266, align 8, !tbaa !7
  %578 = icmp ugt i64 %577, 3
  %579 = zext i1 %578 to i32
  %580 = sext i32 %579 to i64
  %581 = icmp sle i64 %580, -1
  %582 = zext i1 %581 to i32
  %583 = trunc i32 %582 to i16
  %584 = load i16*, i16** @g_110, align 8, !tbaa !5
  %585 = load i16, i16* %584, align 2, !tbaa !10
  %586 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %583, i16 zeroext %585)
  %587 = zext i16 %586 to i32
  %588 = load i32***, i32**** @g_2625, align 8, !tbaa !5
  %589 = load i32**, i32*** %588, align 8, !tbaa !5
  %590 = load i32*, i32** %589, align 8, !tbaa !5
  store i32 %587, i32* %590, align 4, !tbaa !1
  %591 = icmp ne i32 %587, 0
  br label %592

; <label>:592                                     ; preds = %576, %571
  %593 = phi i1 [ false, %571 ], [ %591, %576 ]
  %594 = zext i1 %593 to i32
  %595 = trunc i32 %594 to i16
  %596 = load i16*, i16** @g_110, align 8, !tbaa !5
  store i16 %595, i16* %596, align 2, !tbaa !10
  %597 = sext i16 %595 to i32
  %598 = or i32 %573, %597
  %599 = xor i32 %598, -1
  %600 = and i32 %556, %599
  %601 = sext i32 %600 to i64
  %602 = load i64, i64* %l_3266, align 8, !tbaa !7
  %603 = icmp eq i64 %601, %602
  %604 = zext i1 %603 to i32
  %605 = trunc i32 %604 to i8
  %606 = load i64, i64* %l_3266, align 8, !tbaa !7
  %607 = trunc i64 %606 to i32
  %608 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %605, i32 %607)
  %609 = sext i8 %608 to i32
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %612

; <label>:611                                     ; preds = %592
  br label %612

; <label>:612                                     ; preds = %611, %592
  %613 = phi i1 [ false, %592 ], [ true, %611 ]
  %614 = zext i1 %613 to i32
  %615 = sext i32 %614 to i64
  %616 = icmp eq i64 %615, 139
  %617 = zext i1 %616 to i32
  %618 = load i32, i32* %l_3263, align 4, !tbaa !1
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %621, label %620

; <label>:620                                     ; preds = %612
  br label %621

; <label>:621                                     ; preds = %620, %612
  %622 = phi i1 [ true, %612 ], [ true, %620 ]
  %623 = zext i1 %622 to i32
  %624 = load i32, i32* %l_3263, align 4, !tbaa !1
  %625 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %626 = load i32, i32* %625, align 4, !tbaa !1
  %627 = icmp sgt i32 %624, %626
  %628 = zext i1 %627 to i32
  %629 = load i32, i32* %l_3173, align 4, !tbaa !1
  %630 = icmp sgt i32 %628, %629
  %631 = zext i1 %630 to i32
  %632 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_3253, i32 0, i64 1
  %633 = load i32*, i32** %632, align 8, !tbaa !5
  %634 = load i32*, i32** %l_3267, align 8, !tbaa !5
  %635 = icmp ne i32* %633, %634
  %636 = zext i1 %635 to i32
  %637 = load i32, i32* %l_3175, align 4, !tbaa !1
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %654

; <label>:639                                     ; preds = %621
  store i8 0, i8* @g_1295, align 1, !tbaa !9
  br label %640

; <label>:640                                     ; preds = %650, %639
  %641 = load i8, i8* @g_1295, align 1, !tbaa !9
  %642 = sext i8 %641 to i32
  %643 = icmp sgt i32 %642, 7
  br i1 %643, label %644, label %653

; <label>:644                                     ; preds = %640
  %645 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %646 = load i32***, i32**** @g_2625, align 8, !tbaa !5
  %647 = load i32**, i32*** %646, align 8, !tbaa !5
  store i32* %645, i32** %647, align 8, !tbaa !5
  %648 = load i64, i64* %l_3266, align 8, !tbaa !7
  %649 = trunc i64 %648 to i8
  store i8 %649, i8* %1
  store i32 1, i32* %2
  br label %901
                                                  ; No predecessors!
  %651 = load i8, i8* @g_1295, align 1, !tbaa !9
  %652 = add i8 %651, 1
  store i8 %652, i8* @g_1295, align 1, !tbaa !9
  br label %640

; <label>:653                                     ; preds = %640
  br label %896

; <label>:654                                     ; preds = %621
  %655 = bitcast i32* %l_3286 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %655) #1
  store i32 421835757, i32* %l_3286, align 4, !tbaa !1
  %656 = bitcast [1 x i64*]* %l_3292 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %656) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_3294) #1
  store i8 30, i8* %l_3294, align 1, !tbaa !9
  %657 = bitcast i32** %l_3295 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %657) #1
  store i32* null, i32** %l_3295, align 8, !tbaa !5
  %658 = bitcast i32** %l_3297 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %658) #1
  store i32* null, i32** %l_3297, align 8, !tbaa !5
  %659 = bitcast i8***** %l_3300 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %659) #1
  store i8**** getelementptr inbounds ([6 x i8***], [6 x i8***]* @g_3187, i32 0, i64 3), i8***** %l_3300, align 8, !tbaa !5
  %660 = bitcast i32** %l_3316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %660) #1
  store i32* @g_436, i32** %l_3316, align 8, !tbaa !5
  %661 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %661) #1
  store i32 0, i32* %i9, align 4, !tbaa !1
  br label %662

; <label>:662                                     ; preds = %669, %654
  %663 = load i32, i32* %i9, align 4, !tbaa !1
  %664 = icmp slt i32 %663, 1
  br i1 %664, label %665, label %672

; <label>:665                                     ; preds = %662
  %666 = load i32, i32* %i9, align 4, !tbaa !1
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [1 x i64*], [1 x i64*]* %l_3292, i32 0, i64 %667
  store i64* %l_3165, i64** %668, align 8, !tbaa !5
  br label %669

; <label>:669                                     ; preds = %665
  %670 = load i32, i32* %i9, align 4, !tbaa !1
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %i9, align 4, !tbaa !1
  br label %662

; <label>:672                                     ; preds = %662
  %673 = load i64*, i64** @g_424, align 8, !tbaa !5
  store i64 -10, i64* %673, align 8, !tbaa !7
  %674 = load i64, i64* %l_3266, align 8, !tbaa !7
  %675 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %676 = load i32, i32* %675, align 4, !tbaa !1
  %677 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %678 = load i32, i32* %677, align 4, !tbaa !1
  %679 = xor i32 %676, %678
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %684

; <label>:681                                     ; preds = %672
  %682 = load i64, i64* %l_3266, align 8, !tbaa !7
  %683 = icmp ne i64 %682, 0
  br label %684

; <label>:684                                     ; preds = %681, %672
  %685 = phi i1 [ false, %672 ], [ %683, %681 ]
  %686 = zext i1 %685 to i32
  %687 = load i64, i64* %l_3266, align 8, !tbaa !7
  %688 = trunc i64 %687 to i16
  %689 = load i8*****, i8****** @g_2029, align 8, !tbaa !5
  %690 = load i8****, i8***** %689, align 8, !tbaa !5
  %691 = load i8***, i8**** %690, align 8, !tbaa !5
  %692 = load i8**, i8*** %691, align 8, !tbaa !5
  %693 = load i8*, i8** %692, align 8, !tbaa !5
  %694 = load i8, i8* %693, align 1, !tbaa !9
  %695 = load i32, i32* %l_3286, align 4, !tbaa !1
  %696 = trunc i32 %695 to i8
  %697 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %694, i8 signext %696)
  %698 = sext i8 %697 to i32
  store i32 65532, i32* %l_3291, align 4, !tbaa !1
  %699 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %700 = load i32, i32* %699, align 4, !tbaa !1
  %701 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext -10, i32 %700)
  %702 = zext i8 %701 to i32
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %707, label %704

; <label>:704                                     ; preds = %684
  %705 = load i32, i32* %l_3173, align 4, !tbaa !1
  %706 = icmp ne i32 %705, 0
  br label %707

; <label>:707                                     ; preds = %704, %684
  %708 = phi i1 [ true, %684 ], [ %706, %704 ]
  %709 = zext i1 %708 to i32
  %710 = load i64, i64* %l_3266, align 8, !tbaa !7
  %711 = trunc i64 %710 to i8
  %712 = load i8**, i8*** @g_302, align 8, !tbaa !5
  %713 = load i8*, i8** %712, align 8, !tbaa !5
  %714 = load i8, i8* %713, align 1, !tbaa !9
  %715 = zext i8 %714 to i32
  %716 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %711, i32 %715)
  %717 = zext i8 %716 to i32
  %718 = icmp sge i32 %698, %717
  %719 = zext i1 %718 to i32
  %720 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %l_3293, i32 0, i64 2
  %721 = getelementptr inbounds [4 x i32], [4 x i32]* %720, i32 0, i64 1
  store i32 %719, i32* %721, align 4, !tbaa !1
  %722 = sext i32 %719 to i64
  %723 = load i64, i64* %l_3266, align 8, !tbaa !7
  %724 = call i64 @safe_sub_func_int64_t_s_s(i64 %722, i64 %723)
  %725 = trunc i64 %724 to i32
  %726 = load i32, i32* %l_22, align 4, !tbaa !1
  %727 = call i32 @safe_div_func_uint32_t_u_u(i32 %725, i32 %726)
  %728 = load i32, i32* %l_3263, align 4, !tbaa !1
  %729 = icmp ule i32 %727, %728
  %730 = zext i1 %729 to i32
  %731 = load i32, i32* %l_22, align 4, !tbaa !1
  %732 = icmp ule i32 %730, %731
  %733 = zext i1 %732 to i32
  %734 = trunc i32 %733 to i16
  %735 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %688, i16 zeroext %734)
  %736 = zext i16 %735 to i32
  %737 = and i32 %686, %736
  %738 = sext i32 %737 to i64
  %739 = icmp ne i64 %674, %738
  %740 = zext i1 %739 to i32
  %741 = trunc i32 %740 to i8
  %742 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %741, i8 signext 80)
  %743 = sext i8 %742 to i64
  %744 = icmp slt i64 %743, 44
  %745 = zext i1 %744 to i32
  %746 = trunc i32 %745 to i16
  %747 = load i8, i8* %l_3294, align 1, !tbaa !9
  %748 = sext i8 %747 to i16
  %749 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %746, i16 zeroext %748)
  %750 = zext i16 %749 to i64
  %751 = icmp sge i64 %750, 33171
  %752 = zext i1 %751 to i32
  %753 = trunc i32 %752 to i8
  %754 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %753, i32 0)
  %755 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %754, i8 zeroext -19)
  %756 = zext i8 %755 to i64
  %757 = and i64 -10, %756
  %758 = trunc i64 %757 to i32
  %759 = load i32*, i32** @g_2059, align 8, !tbaa !5
  store i32 %758, i32* %759, align 4, !tbaa !1
  store i32 3, i32* @g_6, align 4, !tbaa !1
  br label %760

; <label>:760                                     ; preds = %766, %707
  %761 = load i32, i32* @g_6, align 4, !tbaa !1
  %762 = icmp sge i32 %761, 0
  br i1 %762, label %763, label %769

; <label>:763                                     ; preds = %760
  %764 = load i32*, i32** %l_3295, align 8, !tbaa !5
  %765 = load i32**, i32*** @g_2626, align 8, !tbaa !5
  store i32* %764, i32** %765, align 8, !tbaa !5
  store i32* %764, i32** %l_3296, align 8, !tbaa !5
  br label %766

; <label>:766                                     ; preds = %763
  %767 = load i32, i32* @g_6, align 4, !tbaa !1
  %768 = sub nsw i32 %767, 1
  store i32 %768, i32* @g_6, align 4, !tbaa !1
  br label %760

; <label>:769                                     ; preds = %760
  %770 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %l_3293, i32 0, i64 2
  %771 = getelementptr inbounds [4 x i32], [4 x i32]* %770, i32 0, i64 0
  %772 = load i32***, i32**** @g_2625, align 8, !tbaa !5
  %773 = load i32**, i32*** %772, align 8, !tbaa !5
  store i32* %771, i32** %773, align 8, !tbaa !5
  %774 = load i32*, i32** %l_3297, align 8, !tbaa !5
  %775 = load i8****, i8***** %l_3300, align 8, !tbaa !5
  %776 = load i8****, i8***** %l_3301, align 8, !tbaa !5
  %777 = load i8*****, i8****** @g_1609, align 8, !tbaa !5
  store i8**** %776, i8***** %777, align 8, !tbaa !5
  store i8**** %776, i8***** %l_3302, align 8, !tbaa !5
  %778 = icmp ne i8**** %775, %776
  %779 = zext i1 %778 to i32
  %780 = load i32, i32* %l_3263, align 4, !tbaa !1
  %781 = call i32 @safe_mod_func_uint32_t_u_u(i32 %779, i32 %780)
  %782 = zext i32 %781 to i64
  %783 = icmp ne i64 8, %782
  %784 = zext i1 %783 to i32
  %785 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %786 = load i32, i32* %785, align 4, !tbaa !1
  %787 = sext i32 %786 to i64
  %788 = icmp ule i64 65533, %787
  %789 = zext i1 %788 to i32
  %790 = xor i32 %784, %789
  %791 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %792 = load i32, i32* %791, align 4, !tbaa !1
  %793 = icmp sle i32 %790, %792
  %794 = zext i1 %793 to i32
  %795 = load i8**, i8*** %l_3303, align 8, !tbaa !5
  %796 = load i8****, i8***** @g_2030, align 8, !tbaa !5
  %797 = load i8***, i8**** %796, align 8, !tbaa !5
  store i8** %795, i8*** %797, align 8, !tbaa !5
  %798 = icmp ne i8** %795, null
  %799 = zext i1 %798 to i32
  %800 = trunc i32 %799 to i16
  %801 = call i32* @func_72(i32* %l_3174, i32* %774, i16 signext %800, i32* %l_3175)
  %802 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %l_3293, i32 0, i64 2
  %803 = getelementptr inbounds [4 x i32], [4 x i32]* %802, i32 0, i64 1
  %804 = load i32, i32* %803, align 4, !tbaa !1
  %805 = trunc i32 %804 to i16
  %806 = call i32* @func_72(i32* %771, i32* %801, i16 signext %805, i32* %l_3173)
  %807 = load i32***, i32**** @g_2625, align 8, !tbaa !5
  %808 = load i32**, i32*** %807, align 8, !tbaa !5
  store i32* %806, i32** %808, align 8, !tbaa !5
  %809 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 6
  %810 = load i32, i32* %809, align 4, !tbaa !1
  %811 = trunc i32 %810 to i16
  %812 = load i16*, i16** @g_110, align 8, !tbaa !5
  store i16 %811, i16* %812, align 2, !tbaa !10
  %813 = load i16*, i16** @g_110, align 8, !tbaa !5
  %814 = load i16, i16* %813, align 2, !tbaa !10
  %815 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 5
  %816 = load i32, i32* %815, align 4, !tbaa !1
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %856

; <label>:818                                     ; preds = %769
  %819 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 7
  %820 = load i32, i32* %819, align 4, !tbaa !1
  %821 = load i16*, i16** @g_110, align 8, !tbaa !5
  %822 = load i16, i16* %821, align 2, !tbaa !10
  %823 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %l_3293, i32 0, i64 2
  %824 = getelementptr inbounds [4 x i32], [4 x i32]* %823, i32 0, i64 1
  %825 = load i32, i32* %824, align 4, !tbaa !1
  %826 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %822, i32 %825)
  %827 = sext i16 %826 to i32
  %828 = icmp ne i32 %827, 0
  br i1 %828, label %847, label %829

; <label>:829                                     ; preds = %818
  %830 = load i32, i32* %l_3263, align 4, !tbaa !1
  %831 = load i32, i32* %l_3263, align 4, !tbaa !1
  %832 = load i8*, i8** @g_405, align 8, !tbaa !5
  %833 = load i8, i8* %832, align 1, !tbaa !9
  %834 = sext i8 %833 to i64
  %835 = or i64 %834, 17
  %836 = trunc i64 %835 to i8
  store i8 %836, i8* %832, align 1, !tbaa !9
  %837 = sext i8 %836 to i32
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %842, label %839

; <label>:839                                     ; preds = %829
  %840 = load i32, i32* %l_3173, align 4, !tbaa !1
  %841 = icmp ne i32 %840, 0
  br label %842

; <label>:842                                     ; preds = %839, %829
  %843 = phi i1 [ true, %829 ], [ %841, %839 ]
  %844 = zext i1 %843 to i32
  %845 = call i32 @safe_mod_func_uint32_t_u_u(i32 %831, i32 %844)
  %846 = icmp uge i32 %830, %845
  br label %847

; <label>:847                                     ; preds = %842, %818
  %848 = phi i1 [ true, %818 ], [ %846, %842 ]
  %849 = zext i1 %848 to i32
  %850 = icmp slt i32 %820, %849
  %851 = zext i1 %850 to i32
  store i32 %851, i32* %l_3263, align 4, !tbaa !1
  %852 = trunc i32 %851 to i8
  %853 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %852, i8 signext 36)
  %854 = sext i8 %853 to i32
  %855 = icmp ne i32 %854, 0
  br label %856

; <label>:856                                     ; preds = %847, %769
  %857 = phi i1 [ false, %769 ], [ %855, %847 ]
  %858 = zext i1 %857 to i32
  %859 = trunc i32 %858 to i8
  %860 = load i8*, i8** @g_303, align 8, !tbaa !5
  %861 = load i8, i8* %860, align 1, !tbaa !9
  %862 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %859, i8 zeroext %861)
  %863 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 6
  %864 = load i32, i32* %863, align 4, !tbaa !1
  %865 = trunc i32 %864 to i16
  %866 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %814, i16 signext %865)
  %867 = load i32, i32* %l_3173, align 4, !tbaa !1
  %868 = load i32*, i32** %l_3267, align 8, !tbaa !5
  %869 = load i32, i32* %868, align 4, !tbaa !1
  %870 = and i32 %869, %867
  store i32 %870, i32* %868, align 4, !tbaa !1
  %871 = load i32**, i32*** @g_687, align 8, !tbaa !5
  %872 = load i32*, i32** %871, align 8, !tbaa !5
  %873 = load i32, i32* %872, align 4, !tbaa !1
  %874 = xor i32 %873, %870
  store i32 %874, i32* %872, align 4, !tbaa !1
  %875 = getelementptr inbounds [9 x i32], [9 x i32]* %l_3259, i32 0, i64 4
  store i32 %874, i32* %875, align 4, !tbaa !1
  %876 = load i32*, i32** %l_3316, align 8, !tbaa !5
  store i32 %874, i32* %876, align 4, !tbaa !1
  %877 = load i32*, i32** @g_328, align 8, !tbaa !5
  %878 = load i32, i32* %877, align 4, !tbaa !1
  %879 = call i32 @safe_mod_func_uint32_t_u_u(i32 %874, i32 %878)
  br i1 true, label %880, label %884

; <label>:880                                     ; preds = %856
  %881 = load volatile i64*, i64** @g_2618, align 8, !tbaa !5
  %882 = load volatile i64, i64* %881, align 8, !tbaa !7
  %883 = icmp ne i64 %882, 0
  br label %884

; <label>:884                                     ; preds = %880, %856
  %885 = phi i1 [ false, %856 ], [ %883, %880 ]
  %886 = zext i1 %885 to i32
  %887 = load i32*, i32** @g_328, align 8, !tbaa !5
  store i32 %886, i32* %887, align 4, !tbaa !1
  store i32 %886, i32* %l_3291, align 4, !tbaa !1
  %888 = load i32*, i32** @g_2758, align 8, !tbaa !5
  store volatile i32 %886, i32* %888, align 4, !tbaa !1
  %889 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %889) #1
  %890 = bitcast i32** %l_3316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %890) #1
  %891 = bitcast i8***** %l_3300 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %891) #1
  %892 = bitcast i32** %l_3297 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %892) #1
  %893 = bitcast i32** %l_3295 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %893) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3294) #1
  %894 = bitcast [1 x i64*]* %l_3292 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %894) #1
  %895 = bitcast i32* %l_3286 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %895) #1
  br label %896

; <label>:896                                     ; preds = %884, %653
  %897 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %l_3293, i32 0, i64 1
  %898 = getelementptr inbounds [4 x i32], [4 x i32]* %897, i32 0, i64 2
  %899 = load i32, i32* %898, align 4, !tbaa !1
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %1
  store i32 1, i32* %2
  br label %901

; <label>:901                                     ; preds = %896, %644
  %902 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %902) #1
  %903 = bitcast i8*** %l_3303 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %903) #1
  %904 = bitcast i8***** %l_3302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %904) #1
  %905 = bitcast i32* %l_3263 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %905) #1
  %906 = bitcast [9 x i32]* %l_3259 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %906) #1
  %907 = bitcast i32*** %l_3252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %907) #1
  %908 = bitcast [7 x i32*]* %l_3253 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %908) #1
  br label %915
                                                  ; No predecessors!
  %910 = load i64, i64* @g_1165, align 8, !tbaa !7
  %911 = trunc i64 %910 to i16
  %912 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %911, i16 zeroext 6)
  %913 = zext i16 %912 to i64
  store i64 %913, i64* @g_1165, align 8, !tbaa !7
  br label %506

; <label>:914                                     ; preds = %506
  store i32 0, i32* %2
  br label %915

; <label>:915                                     ; preds = %914, %901
  %916 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %916) #1
  %917 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %917) #1
  %918 = bitcast i8***** %l_3301 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %918) #1
  %919 = bitcast [3 x [4 x i32]]* %l_3293 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %919) #1
  %920 = bitcast i32* %l_3291 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %920) #1
  %921 = bitcast i32** %l_3267 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %921) #1
  %922 = bitcast i64* %l_3266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %922) #1
  %cleanup.dest.10 = load i32, i32* %2
  switch i32 %cleanup.dest.10, label %1273 [
    i32 0, label %923
  ]

; <label>:923                                     ; preds = %915
  br label %924

; <label>:924                                     ; preds = %923
  %925 = load i64, i64* @g_878, align 8, !tbaa !7
  %926 = trunc i64 %925 to i8
  %927 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %926, i8 zeroext 5)
  %928 = zext i8 %927 to i64
  store i64 %928, i64* @g_878, align 8, !tbaa !7
  br label %436

; <label>:929                                     ; preds = %436
  store i32 18, i32* @g_120, align 4, !tbaa !1
  br label %930

; <label>:930                                     ; preds = %1109, %929
  %931 = load i32, i32* @g_120, align 4, !tbaa !1
  %932 = icmp slt i32 %931, -25
  br i1 %932, label %933, label %1114

; <label>:933                                     ; preds = %930
  call void @llvm.lifetime.start(i64 1, i8* %l_3323) #1
  store i8 55, i8* %l_3323, align 1, !tbaa !9
  %934 = bitcast i16* %l_3345 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %934) #1
  store i16 -9244, i16* %l_3345, align 2, !tbaa !10
  %935 = bitcast i32* %l_3348 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %935) #1
  store i32 861398612, i32* %l_3348, align 4, !tbaa !1
  %936 = bitcast i32* %l_3349 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %936) #1
  store i32 0, i32* %l_3349, align 4, !tbaa !1
  %937 = bitcast i32* %l_3350 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %937) #1
  store i32 2, i32* %l_3350, align 4, !tbaa !1
  %938 = bitcast i32* %l_3357 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %938) #1
  store i32 -1048043905, i32* %l_3357, align 4, !tbaa !1
  %939 = load i32*, i32** @g_151, align 8, !tbaa !5
  store volatile i32 -9, i32* %939, align 4, !tbaa !1
  store i16 -6, i16* %l_3224, align 2, !tbaa !10
  br label %940

; <label>:940                                     ; preds = %1091, %933
  %941 = load i16, i16* %l_3224, align 2, !tbaa !10
  %942 = sext i16 %941 to i32
  %943 = icmp sgt i32 %942, -24
  br i1 %943, label %944, label %1096

; <label>:944                                     ; preds = %940
  %945 = bitcast [2 x i32]* %l_3328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %945) #1
  %946 = bitcast i32* %l_3346 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %946) #1
  store i32 -1, i32* %l_3346, align 4, !tbaa !1
  %947 = bitcast i64** %l_3347 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %947) #1
  store i64* @g_878, i64** %l_3347, align 8, !tbaa !5
  %948 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %948) #1
  store i32 0, i32* %i11, align 4, !tbaa !1
  br label %949

; <label>:949                                     ; preds = %956, %944
  %950 = load i32, i32* %i11, align 4, !tbaa !1
  %951 = icmp slt i32 %950, 2
  br i1 %951, label %952, label %959

; <label>:952                                     ; preds = %949
  %953 = load i32, i32* %i11, align 4, !tbaa !1
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [2 x i32], [2 x i32]* %l_3328, i32 0, i64 %954
  store i32 1591784998, i32* %955, align 4, !tbaa !1
  br label %956

; <label>:956                                     ; preds = %952
  %957 = load i32, i32* %i11, align 4, !tbaa !1
  %958 = add nsw i32 %957, 1
  store i32 %958, i32* %i11, align 4, !tbaa !1
  br label %949

; <label>:959                                     ; preds = %949
  store i64 0, i64* @g_553, align 8, !tbaa !7
  br label %960

; <label>:960                                     ; preds = %965, %959
  %961 = load i64, i64* @g_553, align 8, !tbaa !7
  %962 = icmp ule i64 %961, 26
  br i1 %962, label %963, label %968

; <label>:963                                     ; preds = %960
  %964 = load i32*, i32** @g_2059, align 8, !tbaa !5
  store i32 8, i32* %964, align 4, !tbaa !1
  br label %965

; <label>:965                                     ; preds = %963
  %966 = load i64, i64* @g_553, align 8, !tbaa !7
  %967 = add i64 %966, 1
  store i64 %967, i64* @g_553, align 8, !tbaa !7
  br label %960

; <label>:968                                     ; preds = %960
  %969 = load i8, i8* %l_3323, align 1, !tbaa !9
  %970 = getelementptr inbounds [2 x i32], [2 x i32]* %l_3328, i32 0, i64 0
  %971 = load i32, i32* %970, align 4, !tbaa !1
  %972 = trunc i32 %971 to i8
  %973 = getelementptr inbounds [2 x i32], [2 x i32]* %l_3328, i32 0, i64 0
  %974 = load i32, i32* %973, align 4, !tbaa !1
  %975 = icmp ne i32 %974, 0
  br i1 %975, label %976, label %1007

; <label>:976                                     ; preds = %968
  %977 = load i64***, i64**** @g_1159, align 8, !tbaa !5
  %978 = load i64**, i64*** %977, align 8, !tbaa !5
  %979 = load i64*, i64** %978, align 8, !tbaa !5
  store i64 0, i64* %979, align 8, !tbaa !7
  %980 = load i8, i8* %l_3323, align 1, !tbaa !9
  %981 = zext i8 %980 to i64
  %982 = icmp ugt i64 0, %981
  %983 = zext i1 %982 to i32
  %984 = trunc i32 %983 to i16
  %985 = load i64*, i64** @g_424, align 8, !tbaa !5
  %986 = load i64, i64* %985, align 8, !tbaa !7
  %987 = and i64 %986, 0
  store i64 %987, i64* %985, align 8, !tbaa !7
  %988 = call i32 @safe_div_func_uint32_t_u_u(i32 -217637371, i32 -1)
  %989 = getelementptr inbounds [2 x i32], [2 x i32]* %l_3328, i32 0, i64 0
  %990 = load i32, i32* %989, align 4, !tbaa !1
  %991 = trunc i32 %990 to i16
  %992 = load i16*, i16** @g_110, align 8, !tbaa !5
  store i16 %991, i16* %992, align 2, !tbaa !10
  %993 = sext i16 %991 to i64
  %994 = icmp ule i64 %993, 1
  %995 = zext i1 %994 to i32
  %996 = sext i32 %995 to i64
  %997 = call i64 @safe_add_func_int64_t_s_s(i64 %987, i64 %996)
  %998 = load i8, i8* %l_3323, align 1, !tbaa !9
  %999 = load i32**, i32*** @g_687, align 8, !tbaa !5
  %1000 = load i32*, i32** %999, align 8, !tbaa !5
  %1001 = load i32, i32* %1000, align 4, !tbaa !1
  %1002 = call i32 @safe_mod_func_int32_t_s_s(i32 1, i32 %1001)
  %1003 = trunc i32 %1002 to i16
  %1004 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %984, i16 signext %1003)
  %1005 = sext i16 %1004 to i32
  %1006 = icmp ne i32 %1005, 0
  br label %1007

; <label>:1007                                    ; preds = %976, %968
  %1008 = phi i1 [ false, %968 ], [ %1006, %976 ]
  %1009 = zext i1 %1008 to i32
  %1010 = getelementptr inbounds [2 x i32], [2 x i32]* %l_3328, i32 0, i64 0
  %1011 = load i32, i32* %1010, align 4, !tbaa !1
  %1012 = trunc i32 %1011 to i16
  %1013 = load i16, i16* %l_3345, align 2, !tbaa !10
  %1014 = sext i16 %1013 to i32
  %1015 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1012, i32 %1014)
  %1016 = zext i16 %1015 to i32
  %1017 = call i32 @safe_div_func_uint32_t_u_u(i32 %1016, i32 -735906767)
  %1018 = trunc i32 %1017 to i16
  %1019 = load i32, i32* %l_3174, align 4, !tbaa !1
  %1020 = trunc i32 %1019 to i16
  %1021 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1018, i16 signext %1020)
  %1022 = sext i16 %1021 to i64
  %1023 = xor i64 %1022, 3992202599
  %1024 = icmp sle i64 %1023, 18
  %1025 = zext i1 %1024 to i32
  %1026 = call i32 @safe_sub_func_int32_t_s_s(i32 1141092750, i32 %1025)
  %1027 = icmp ne i32 %1026, 0
  br i1 %1027, label %1028, label %1029

; <label>:1028                                    ; preds = %1007
  br label %1029

; <label>:1029                                    ; preds = %1028, %1007
  %1030 = phi i1 [ false, %1007 ], [ true, %1028 ]
  %1031 = zext i1 %1030 to i32
  %1032 = trunc i32 %1031 to i8
  %1033 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %972, i8 signext %1032)
  %1034 = sext i8 %1033 to i32
  %1035 = load i8****, i8***** @g_2030, align 8, !tbaa !5
  %1036 = load i8***, i8**** %1035, align 8, !tbaa !5
  %1037 = load i8**, i8*** %1036, align 8, !tbaa !5
  %1038 = load i8*, i8** %1037, align 8, !tbaa !5
  %1039 = load i8, i8* %1038, align 1, !tbaa !9
  %1040 = sext i8 %1039 to i32
  %1041 = and i32 %1040, %1034
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %1038, align 1, !tbaa !9
  %1043 = sext i8 %1042 to i32
  %1044 = load i32, i32* %l_3346, align 4, !tbaa !1
  %1045 = or i32 %1044, %1043
  store i32 %1045, i32* %l_3346, align 4, !tbaa !1
  %1046 = trunc i32 %1045 to i8
  %1047 = load i16, i16* %l_3345, align 2, !tbaa !10
  %1048 = trunc i16 %1047 to i8
  %1049 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1046, i8 signext %1048)
  %1050 = sext i8 %1049 to i64
  %1051 = load i64*, i64** %l_3347, align 8, !tbaa !5
  store i64 %1050, i64* %1051, align 8, !tbaa !7
  %1052 = load i8, i8* %l_3323, align 1, !tbaa !9
  %1053 = zext i8 %1052 to i32
  %1054 = load i8**, i8*** @g_302, align 8, !tbaa !5
  %1055 = load i8*, i8** %1054, align 8, !tbaa !5
  %1056 = load i8, i8* %1055, align 1, !tbaa !9
  %1057 = zext i8 %1056 to i32
  %1058 = icmp sle i32 %1053, %1057
  br i1 %1058, label %1059, label %1071

; <label>:1059                                    ; preds = %1029
  call void @llvm.lifetime.start(i64 1, i8* %l_3351) #1
  store i8 -48, i8* %l_3351, align 1, !tbaa !9
  %1060 = load i8, i8* %l_3351, align 1, !tbaa !9
  %1061 = add i8 %1060, 1
  store i8 %1061, i8* %l_3351, align 1, !tbaa !9
  %1062 = load i32*, i32** @g_2758, align 8, !tbaa !5
  %1063 = load volatile i32, i32* %1062, align 4, !tbaa !1
  %1064 = getelementptr inbounds [2 x i32], [2 x i32]* %l_3328, i32 0, i64 0
  store i32 %1063, i32* %1064, align 4, !tbaa !1
  %1065 = load i8*****, i8****** @g_2029, align 8, !tbaa !5
  %1066 = load i8****, i8***** %1065, align 8, !tbaa !5
  %1067 = load i8***, i8**** %1066, align 8, !tbaa !5
  %1068 = load i8**, i8*** %1067, align 8, !tbaa !5
  %1069 = load i8*, i8** %1068, align 8, !tbaa !5
  %1070 = load i8, i8* %1069, align 1, !tbaa !9
  store i8 %1070, i8* %1
  store i32 1, i32* %2
  call void @llvm.lifetime.end(i64 1, i8* %l_3351) #1
  br label %1086

; <label>:1071                                    ; preds = %1029
  store i32 -1, i32* @g_438, align 4, !tbaa !1
  br label %1072

; <label>:1072                                    ; preds = %1080, %1071
  %1073 = load i32, i32* @g_438, align 4, !tbaa !1
  %1074 = icmp uge i32 %1073, 39
  br i1 %1074, label %1075, label %1085

; <label>:1075                                    ; preds = %1072
  %1076 = bitcast i32* %l_3356 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1076) #1
  store i32 1, i32* %l_3356, align 4, !tbaa !1
  %1077 = load i32, i32* %l_3356, align 4, !tbaa !1
  %1078 = trunc i32 %1077 to i8
  store i8 %1078, i8* %1
  store i32 1, i32* %2
  %1079 = bitcast i32* %l_3356 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  br label %1086
                                                  ; No predecessors!
  %1081 = load i32, i32* @g_438, align 4, !tbaa !1
  %1082 = trunc i32 %1081 to i8
  %1083 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1082, i8 zeroext 1)
  %1084 = zext i8 %1083 to i32
  store i32 %1084, i32* @g_438, align 4, !tbaa !1
  br label %1072

; <label>:1085                                    ; preds = %1072
  store i32 53, i32* %2
  br label %1086

; <label>:1086                                    ; preds = %1085, %1075, %1059
  %1087 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1087) #1
  %1088 = bitcast i64** %l_3347 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1088) #1
  %1089 = bitcast i32* %l_3346 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1089) #1
  %1090 = bitcast [2 x i32]* %l_3328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1090) #1
  %cleanup.dest.12 = load i32, i32* %2
  switch i32 %cleanup.dest.12, label %1102 [
    i32 53, label %1091
  ]

; <label>:1091                                    ; preds = %1086
  %1092 = load i16, i16* %l_3224, align 2, !tbaa !10
  %1093 = trunc i16 %1092 to i8
  %1094 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1093, i8 signext 4)
  %1095 = sext i8 %1094 to i16
  store i16 %1095, i16* %l_3224, align 2, !tbaa !10
  br label %940

; <label>:1096                                    ; preds = %940
  %1097 = load i32*, i32** @g_328, align 8, !tbaa !5
  %1098 = load i32, i32* %1097, align 4, !tbaa !1
  %1099 = sext i32 %1098 to i64
  %1100 = or i64 %1099, 954598660
  %1101 = trunc i64 %1100 to i32
  store i32 %1101, i32* %1097, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %1102

; <label>:1102                                    ; preds = %1096, %1086
  %1103 = bitcast i32* %l_3357 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1103) #1
  %1104 = bitcast i32* %l_3350 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1104) #1
  %1105 = bitcast i32* %l_3349 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1105) #1
  %1106 = bitcast i32* %l_3348 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1106) #1
  %1107 = bitcast i16* %l_3345 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1107) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3323) #1
  %cleanup.dest.13 = load i32, i32* %2
  switch i32 %cleanup.dest.13, label %1273 [
    i32 0, label %1108
  ]

; <label>:1108                                    ; preds = %1102
  br label %1109

; <label>:1109                                    ; preds = %1108
  %1110 = load i32, i32* @g_120, align 4, !tbaa !1
  %1111 = trunc i32 %1110 to i16
  %1112 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %1111, i16 zeroext 5)
  %1113 = zext i16 %1112 to i32
  store i32 %1113, i32* @g_120, align 4, !tbaa !1
  br label %930

; <label>:1114                                    ; preds = %930
  store i32 0, i32* @g_646, align 4, !tbaa !1
  br label %1115

; <label>:1115                                    ; preds = %1269, %1114
  %1116 = load i32, i32* @g_646, align 4, !tbaa !1
  %1117 = icmp eq i32 %1116, -25
  br i1 %1117, label %1118, label %1272

; <label>:1118                                    ; preds = %1115
  %1119 = bitcast i64* %l_3363 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1119) #1
  store i64 0, i64* %l_3363, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_3377) #1
  store i8 -116, i8* %l_3377, align 1, !tbaa !9
  %1120 = bitcast [5 x [9 x [2 x i32*]]]* %l_3413 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %1120) #1
  %1121 = getelementptr inbounds [5 x [9 x [2 x i32*]]], [5 x [9 x [2 x i32*]]]* %l_3413, i64 0, i64 0
  %1122 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1121, i64 0, i64 0
  %1123 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1122, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1123, !tbaa !5
  %1124 = getelementptr inbounds i32*, i32** %1123, i64 1
  store i32* %l_3173, i32** %1124, !tbaa !5
  %1125 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1122, i64 1
  %1126 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1125, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1126, !tbaa !5
  %1127 = getelementptr inbounds i32*, i32** %1126, i64 1
  store i32* @g_6, i32** %1127, !tbaa !5
  %1128 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1125, i64 1
  %1129 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1128, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1129, !tbaa !5
  %1130 = getelementptr inbounds i32*, i32** %1129, i64 1
  store i32* %l_3173, i32** %1130, !tbaa !5
  %1131 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1128, i64 1
  %1132 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1131, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1132, !tbaa !5
  %1133 = getelementptr inbounds i32*, i32** %1132, i64 1
  store i32* null, i32** %1133, !tbaa !5
  %1134 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1131, i64 1
  %1135 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1134, i64 0, i64 0
  store i32* %l_3173, i32** %1135, !tbaa !5
  %1136 = getelementptr inbounds i32*, i32** %1135, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1136, !tbaa !5
  %1137 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1134, i64 1
  %1138 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1137, i64 0, i64 0
  store i32* @g_1199, i32** %1138, !tbaa !5
  %1139 = getelementptr inbounds i32*, i32** %1138, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1139, !tbaa !5
  %1140 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1137, i64 1
  %1141 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1140, i64 0, i64 0
  store i32* @g_646, i32** %1141, !tbaa !5
  %1142 = getelementptr inbounds i32*, i32** %1141, i64 1
  store i32* @g_1514, i32** %1142, !tbaa !5
  %1143 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1140, i64 1
  %1144 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1143, i64 0, i64 0
  store i32* @g_1514, i32** %1144, !tbaa !5
  %1145 = getelementptr inbounds i32*, i32** %1144, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1145, !tbaa !5
  %1146 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1143, i64 1
  %1147 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1146, i64 0, i64 0
  store i32* %l_3174, i32** %1147, !tbaa !5
  %1148 = getelementptr inbounds i32*, i32** %1147, i64 1
  store i32* null, i32** %1148, !tbaa !5
  %1149 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1121, i64 1
  %1150 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1149, i64 0, i64 0
  %1151 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1150, i64 0, i64 0
  store i32* @g_1126, i32** %1151, !tbaa !5
  %1152 = getelementptr inbounds i32*, i32** %1151, i64 1
  store i32* @g_1199, i32** %1152, !tbaa !5
  %1153 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1150, i64 1
  %1154 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1153, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1154, !tbaa !5
  %1155 = getelementptr inbounds i32*, i32** %1154, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 1, i64 0, i64 1), i32** %1155, !tbaa !5
  %1156 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1153, i64 1
  %1157 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1156, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1157, !tbaa !5
  %1158 = getelementptr inbounds i32*, i32** %1157, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 1, i64 0, i64 1), i32** %1158, !tbaa !5
  %1159 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1156, i64 1
  %1160 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1159, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1160, !tbaa !5
  %1161 = getelementptr inbounds i32*, i32** %1160, i64 1
  store i32* @g_1199, i32** %1161, !tbaa !5
  %1162 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1159, i64 1
  %1163 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1162, i64 0, i64 0
  store i32* @g_1126, i32** %1163, !tbaa !5
  %1164 = getelementptr inbounds i32*, i32** %1163, i64 1
  store i32* null, i32** %1164, !tbaa !5
  %1165 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1162, i64 1
  %1166 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1165, i64 0, i64 0
  store i32* %l_3174, i32** %1166, !tbaa !5
  %1167 = getelementptr inbounds i32*, i32** %1166, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1167, !tbaa !5
  %1168 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1165, i64 1
  %1169 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1168, i64 0, i64 0
  store i32* @g_1514, i32** %1169, !tbaa !5
  %1170 = getelementptr inbounds i32*, i32** %1169, i64 1
  store i32* @g_1514, i32** %1170, !tbaa !5
  %1171 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1168, i64 1
  %1172 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1171, i64 0, i64 0
  store i32* @g_646, i32** %1172, !tbaa !5
  %1173 = getelementptr inbounds i32*, i32** %1172, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1173, !tbaa !5
  %1174 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1171, i64 1
  %1175 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1174, i64 0, i64 0
  store i32* @g_1199, i32** %1175, !tbaa !5
  %1176 = getelementptr inbounds i32*, i32** %1175, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1176, !tbaa !5
  %1177 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1149, i64 1
  %1178 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1177, i64 0, i64 0
  %1179 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1178, i64 0, i64 0
  store i32* %l_3173, i32** %1179, !tbaa !5
  %1180 = getelementptr inbounds i32*, i32** %1179, i64 1
  store i32* null, i32** %1180, !tbaa !5
  %1181 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1178, i64 1
  %1182 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1181, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1182, !tbaa !5
  %1183 = getelementptr inbounds i32*, i32** %1182, i64 1
  store i32* %l_3173, i32** %1183, !tbaa !5
  %1184 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1181, i64 1
  %1185 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1184, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1185, !tbaa !5
  %1186 = getelementptr inbounds i32*, i32** %1185, i64 1
  store i32* @g_6, i32** %1186, !tbaa !5
  %1187 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1184, i64 1
  %1188 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1187, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1188, !tbaa !5
  %1189 = getelementptr inbounds i32*, i32** %1188, i64 1
  store i32* %l_3173, i32** %1189, !tbaa !5
  %1190 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1187, i64 1
  %1191 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1190, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1191, !tbaa !5
  %1192 = getelementptr inbounds i32*, i32** %1191, i64 1
  store i32* null, i32** %1192, !tbaa !5
  %1193 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1190, i64 1
  %1194 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1193, i64 0, i64 0
  store i32* %l_3173, i32** %1194, !tbaa !5
  %1195 = getelementptr inbounds i32*, i32** %1194, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1195, !tbaa !5
  %1196 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1193, i64 1
  %1197 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1196, i64 0, i64 0
  store i32* @g_1199, i32** %1197, !tbaa !5
  %1198 = getelementptr inbounds i32*, i32** %1197, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1198, !tbaa !5
  %1199 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1196, i64 1
  %1200 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1199, i64 0, i64 0
  store i32* @g_646, i32** %1200, !tbaa !5
  %1201 = getelementptr inbounds i32*, i32** %1200, i64 1
  store i32* @g_1514, i32** %1201, !tbaa !5
  %1202 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1199, i64 1
  %1203 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1202, i64 0, i64 0
  store i32* @g_1514, i32** %1203, !tbaa !5
  %1204 = getelementptr inbounds i32*, i32** %1203, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1204, !tbaa !5
  %1205 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1177, i64 1
  %1206 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1205, i64 0, i64 0
  %1207 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1206, i64 0, i64 0
  store i32* %l_3174, i32** %1207, !tbaa !5
  %1208 = getelementptr inbounds i32*, i32** %1207, i64 1
  store i32* null, i32** %1208, !tbaa !5
  %1209 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1206, i64 1
  %1210 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1209, i64 0, i64 0
  store i32* @g_1126, i32** %1210, !tbaa !5
  %1211 = getelementptr inbounds i32*, i32** %1210, i64 1
  store i32* @g_1199, i32** %1211, !tbaa !5
  %1212 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1209, i64 1
  %1213 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1212, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1213, !tbaa !5
  %1214 = getelementptr inbounds i32*, i32** %1213, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 1, i64 0, i64 1), i32** %1214, !tbaa !5
  %1215 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1212, i64 1
  %1216 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1215, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1216, !tbaa !5
  %1217 = getelementptr inbounds i32*, i32** %1216, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 1, i64 0, i64 1), i32** %1217, !tbaa !5
  %1218 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1215, i64 1
  %1219 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1218, i64 0, i64 0
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1219, !tbaa !5
  %1220 = getelementptr inbounds i32*, i32** %1219, i64 1
  store i32* @g_1199, i32** %1220, !tbaa !5
  %1221 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1218, i64 1
  %1222 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1221, i64 0, i64 0
  store i32* @g_1126, i32** %1222, !tbaa !5
  %1223 = getelementptr inbounds i32*, i32** %1222, i64 1
  store i32* null, i32** %1223, !tbaa !5
  %1224 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1221, i64 1
  %1225 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1224, i64 0, i64 0
  store i32* %l_3174, i32** %1225, !tbaa !5
  %1226 = getelementptr inbounds i32*, i32** %1225, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1226, !tbaa !5
  %1227 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1224, i64 1
  %1228 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1227, i64 0, i64 0
  store i32* @g_1514, i32** %1228, !tbaa !5
  %1229 = getelementptr inbounds i32*, i32** %1228, i64 1
  store i32* @g_1514, i32** %1229, !tbaa !5
  %1230 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1227, i64 1
  %1231 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1230, i64 0, i64 0
  store i32* @g_646, i32** %1231, !tbaa !5
  %1232 = getelementptr inbounds i32*, i32** %1231, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1232, !tbaa !5
  %1233 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1205, i64 1
  %1234 = getelementptr inbounds [9 x [2 x i32*]], [9 x [2 x i32*]]* %1233, i64 0, i64 0
  %1235 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1234, i64 0, i64 0
  store i32* @g_1199, i32** %1235, !tbaa !5
  %1236 = getelementptr inbounds i32*, i32** %1235, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1236, !tbaa !5
  %1237 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1234, i64 1
  %1238 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1237, i64 0, i64 0
  store i32* %l_3173, i32** %1238, !tbaa !5
  %1239 = getelementptr inbounds i32*, i32** %1238, i64 1
  store i32* null, i32** %1239, !tbaa !5
  %1240 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1237, i64 1
  %1241 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1240, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1241, !tbaa !5
  %1242 = getelementptr inbounds i32*, i32** %1241, i64 1
  store i32* %l_3173, i32** %1242, !tbaa !5
  %1243 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1240, i64 1
  %1244 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1243, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1244, !tbaa !5
  %1245 = getelementptr inbounds i32*, i32** %1244, i64 1
  store i32* @g_6, i32** %1245, !tbaa !5
  %1246 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1243, i64 1
  %1247 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1246, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1247, !tbaa !5
  %1248 = getelementptr inbounds i32*, i32** %1247, i64 1
  store i32* %l_3173, i32** %1248, !tbaa !5
  %1249 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1246, i64 1
  %1250 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1249, i64 0, i64 0
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1250, !tbaa !5
  %1251 = getelementptr inbounds i32*, i32** %1250, i64 1
  store i32* null, i32** %1251, !tbaa !5
  %1252 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1249, i64 1
  %1253 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1252, i64 0, i64 0
  store i32* %l_3173, i32** %1253, !tbaa !5
  %1254 = getelementptr inbounds i32*, i32** %1253, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), i32** %1254, !tbaa !5
  %1255 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1252, i64 1
  %1256 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1255, i64 0, i64 0
  store i32* @g_1199, i32** %1256, !tbaa !5
  %1257 = getelementptr inbounds i32*, i32** %1256, i64 1
  store i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 1, i64 0, i64 1), i32** %1257, !tbaa !5
  %1258 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1255, i64 1
  %1259 = getelementptr inbounds [2 x i32*], [2 x i32*]* %1258, i64 0, i64 0
  store i32* null, i32** %1259, !tbaa !5
  %1260 = getelementptr inbounds i32*, i32** %1259, i64 1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %1260, !tbaa !5
  %1261 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1261) #1
  %1262 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1262) #1
  %1263 = bitcast i32* %k16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1263) #1
  %1264 = bitcast i32* %k16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1264) #1
  %1265 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1265) #1
  %1266 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1266) #1
  %1267 = bitcast [5 x [9 x [2 x i32*]]]* %l_3413 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %1267) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3377) #1
  %1268 = bitcast i64* %l_3363 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1268) #1
  br label %1269

; <label>:1269                                    ; preds = %1118
  %1270 = load i32, i32* @g_646, align 4, !tbaa !1
  %1271 = call i32 @safe_sub_func_uint32_t_u_u(i32 %1270, i32 9)
  store i32 %1271, i32* @g_646, align 4, !tbaa !1
  br label %1115

; <label>:1272                                    ; preds = %1115
  store i32 0, i32* %2
  br label %1273

; <label>:1273                                    ; preds = %1272, %1102, %915, %422
  %1274 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1274) #1
  %1275 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1275) #1
  %1276 = bitcast i64* %l_3376 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1276) #1
  %1277 = bitcast i16****** %l_3365 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1277) #1
  %1278 = bitcast i16***** %l_3366 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1278) #1
  %1279 = bitcast [3 x [9 x i16***]]* %l_3367 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %1279) #1
  %1280 = bitcast i16*** %l_3368 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1280) #1
  %1281 = bitcast i32* %l_3358 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1281) #1
  %1282 = bitcast i32** %l_3296 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1282) #1
  %1283 = bitcast i32** %l_3255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1283) #1
  %1284 = bitcast i16***** %l_3234 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1284) #1
  %1285 = bitcast i16**** %l_3235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1285) #1
  %1286 = bitcast i32* %l_3175 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1286) #1
  %1287 = bitcast i32* %l_3174 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1287) #1
  %1288 = bitcast i32* %l_3173 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1288) #1
  %1289 = bitcast i32* %l_22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1289) #1
  %cleanup.dest.17 = load i32, i32* %2
  switch i32 %cleanup.dest.17, label %1696 [
    i32 0, label %1290
  ]

; <label>:1290                                    ; preds = %1273
  br label %1291

; <label>:1291                                    ; preds = %1290
  %1292 = load i32, i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), align 4, !tbaa !1
  %1293 = trunc i32 %1292 to i8
  %1294 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1293, i8 zeroext 4)
  %1295 = zext i8 %1294 to i32
  store i32 %1295, i32* getelementptr inbounds ([5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_2, i32 0, i64 3, i64 0, i64 5), align 4, !tbaa !1
  br label %47

; <label>:1296                                    ; preds = %47
  store i32 -10, i32* @g_191, align 4, !tbaa !1
  br label %1297

; <label>:1297                                    ; preds = %1690, %1296
  %1298 = load i32, i32* @g_191, align 4, !tbaa !1
  %1299 = icmp uge i32 %1298, 40
  br i1 %1299, label %1300, label %1693

; <label>:1300                                    ; preds = %1297
  %1301 = bitcast i16* %l_3440 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1301) #1
  store i16 2463, i16* %l_3440, align 2, !tbaa !10
  %1302 = bitcast i32** %l_3455 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1302) #1
  store i32* @g_396, i32** %l_3455, align 8, !tbaa !5
  %1303 = bitcast i64* %l_3461 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1303) #1
  store i64 5687166976793200839, i64* %l_3461, align 8, !tbaa !7
  %1304 = bitcast i64*** %l_3472 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1304) #1
  store i64** null, i64*** %l_3472, align 8, !tbaa !5
  %1305 = bitcast i16* %l_3475 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1305) #1
  store i16 -3, i16* %l_3475, align 2, !tbaa !10
  %1306 = bitcast i64** %l_3495 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1306) #1
  store i64* %l_3225, i64** %l_3495, align 8, !tbaa !5
  %1307 = bitcast [7 x i32]* %l_3500 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %1307) #1
  %1308 = bitcast [7 x i32]* %l_3500 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1308, i8* bitcast ([7 x i32]* @func_1.l_3500 to i8*), i64 28, i32 16, i1 false)
  %1309 = bitcast i32* %l_3502 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1309) #1
  store i32 -544017930, i32* %l_3502, align 4, !tbaa !1
  %1310 = bitcast i32* %l_3503 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1310) #1
  store i32 1, i32* %l_3503, align 4, !tbaa !1
  %1311 = bitcast i32* %l_3504 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1311) #1
  store i32 -559860083, i32* %l_3504, align 4, !tbaa !1
  %1312 = bitcast i32* %l_3505 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1312) #1
  store i32 -1384835654, i32* %l_3505, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3506) #1
  store i8 -110, i8* %l_3506, align 1, !tbaa !9
  %1313 = bitcast i32* %l_3507 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1313) #1
  store i32 7, i32* %l_3507, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3508) #1
  store i8 -1, i8* %l_3508, align 1, !tbaa !9
  %1314 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1314) #1
  store i32 18, i32* @g_3228, align 4, !tbaa !1
  br label %1315

; <label>:1315                                    ; preds = %1575, %1300
  %1316 = load i32, i32* @g_3228, align 4, !tbaa !1
  %1317 = icmp ule i32 %1316, 14
  br i1 %1317, label %1318, label %1578

; <label>:1318                                    ; preds = %1315
  %1319 = bitcast i16* %l_3433 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1319) #1
  store i16 -25043, i16* %l_3433, align 2, !tbaa !10
  %1320 = load i32*, i32** @g_328, align 8, !tbaa !5
  %1321 = load i32, i32* %1320, align 4, !tbaa !1
  %1322 = icmp ne i32 %1321, 0
  br i1 %1322, label %1323, label %1557

; <label>:1323                                    ; preds = %1318
  %1324 = bitcast i32* %l_3437 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1324) #1
  store i32 1, i32* %l_3437, align 4, !tbaa !1
  %1325 = bitcast i32* %l_3451 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1325) #1
  store i32 1165747863, i32* %l_3451, align 4, !tbaa !1
  %1326 = bitcast i64* %l_3452 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1326) #1
  store i64 7, i64* %l_3452, align 8, !tbaa !7
  %1327 = load i16, i16* %l_3433, align 2, !tbaa !10
  br i1 true, label %1328, label %1396

; <label>:1328                                    ; preds = %1323
  %1329 = load i32, i32* %l_3437, align 4, !tbaa !1
  %1330 = sext i32 %1329 to i64
  %1331 = icmp sgt i64 65, %1330
  %1332 = zext i1 %1331 to i32
  %1333 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1334 = sext i16 %1333 to i32
  %1335 = load i16, i16* %l_3440, align 2, !tbaa !10
  %1336 = add i16 %1335, 1
  store i16 %1336, i16* %l_3440, align 2, !tbaa !10
  %1337 = zext i16 %1335 to i32
  %1338 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1339 = sext i16 %1338 to i64
  %1340 = icmp ne i64 %1339, 1
  %1341 = zext i1 %1340 to i32
  %1342 = trunc i32 %1341 to i8
  %1343 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1342, i8 signext 0)
  %1344 = sext i8 %1343 to i16
  %1345 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %1344, i32 0)
  %1346 = load volatile i64*, i64** @g_2618, align 8, !tbaa !5
  %1347 = load volatile i64, i64* %1346, align 8, !tbaa !7
  %1348 = call i64 @safe_mod_func_uint64_t_u_u(i64 1, i64 %1347)
  %1349 = load i32, i32* %l_3437, align 4, !tbaa !1
  %1350 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1351 = sext i16 %1350 to i32
  %1352 = and i32 %1349, %1351
  %1353 = sext i32 %1352 to i64
  %1354 = icmp ule i64 %1353, 1
  %1355 = zext i1 %1354 to i32
  %1356 = sext i32 %1355 to i64
  %1357 = load i64****, i64***** @g_1158, align 8, !tbaa !5
  %1358 = load i64***, i64**** %1357, align 8, !tbaa !5
  %1359 = load i64**, i64*** %1358, align 8, !tbaa !5
  %1360 = load i64*, i64** %1359, align 8, !tbaa !5
  %1361 = load i64, i64* %1360, align 8, !tbaa !7
  %1362 = and i64 %1356, %1361
  %1363 = icmp ne i64 %1362, 0
  %1364 = xor i1 %1363, true
  %1365 = zext i1 %1364 to i32
  %1366 = icmp slt i32 %1337, %1365
  %1367 = zext i1 %1366 to i32
  %1368 = trunc i32 %1367 to i16
  %1369 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %1368, i32 3)
  %1370 = zext i16 %1369 to i32
  %1371 = icmp sle i32 %1334, %1370
  %1372 = zext i1 %1371 to i32
  %1373 = xor i32 %1332, %1372
  %1374 = load i16, i16* %l_3440, align 2, !tbaa !10
  %1375 = zext i16 %1374 to i64
  %1376 = icmp sge i64 32365, %1375
  %1377 = zext i1 %1376 to i32
  %1378 = load i32, i32* %l_3437, align 4, !tbaa !1
  %1379 = load i32, i32* %l_3451, align 4, !tbaa !1
  %1380 = load i32**, i32*** @g_687, align 8, !tbaa !5
  %1381 = load i32*, i32** %1380, align 8, !tbaa !5
  %1382 = load i32, i32* %1381, align 4, !tbaa !1
  %1383 = icmp ult i32 %1379, %1382
  %1384 = zext i1 %1383 to i32
  %1385 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1386 = sext i16 %1385 to i32
  %1387 = icmp slt i32 %1384, %1386
  %1388 = zext i1 %1387 to i32
  %1389 = sext i32 %1388 to i64
  %1390 = load i64***, i64**** @g_1159, align 8, !tbaa !5
  %1391 = load i64**, i64*** %1390, align 8, !tbaa !5
  %1392 = load i64*, i64** %1391, align 8, !tbaa !5
  %1393 = load i64, i64* %1392, align 8, !tbaa !7
  %1394 = call i64 @safe_add_func_int64_t_s_s(i64 %1389, i64 %1393)
  %1395 = icmp ne i64 %1394, 0
  br label %1396

; <label>:1396                                    ; preds = %1328, %1323
  %1397 = phi i1 [ false, %1323 ], [ %1395, %1328 ]
  %1398 = zext i1 %1397 to i32
  %1399 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1400 = sext i16 %1399 to i32
  %1401 = icmp slt i32 %1398, %1400
  br i1 %1401, label %1406, label %1402

; <label>:1402                                    ; preds = %1396
  %1403 = load i16, i16* %l_3440, align 2, !tbaa !10
  %1404 = zext i16 %1403 to i32
  %1405 = icmp ne i32 %1404, 0
  br label %1406

; <label>:1406                                    ; preds = %1402, %1396
  %1407 = phi i1 [ true, %1396 ], [ %1405, %1402 ]
  %1408 = zext i1 %1407 to i32
  %1409 = load i32, i32* %l_3451, align 4, !tbaa !1
  %1410 = icmp sgt i32 %1408, %1409
  %1411 = zext i1 %1410 to i32
  %1412 = load i32, i32* %l_3437, align 4, !tbaa !1
  %1413 = xor i32 %1411, %1412
  %1414 = trunc i32 %1413 to i16
  %1415 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1416 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1414, i16 signext %1415)
  %1417 = trunc i16 %1416 to i8
  %1418 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1417, i32 7)
  %1419 = zext i8 %1418 to i16
  %1420 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1419, i32 1)
  %1421 = sext i16 %1420 to i32
  %1422 = load i16*, i16** @g_110, align 8, !tbaa !5
  %1423 = load i16, i16* %1422, align 2, !tbaa !10
  %1424 = sext i16 %1423 to i32
  %1425 = icmp eq i32 %1421, %1424
  %1426 = zext i1 %1425 to i32
  %1427 = load i32*, i32** @g_2059, align 8, !tbaa !5
  store i32 %1426, i32* %1427, align 4, !tbaa !1
  %1428 = load i64, i64* %l_3452, align 8, !tbaa !7
  %1429 = icmp ne i64 %1428, 0
  br i1 %1429, label %1430, label %1448

; <label>:1430                                    ; preds = %1406
  store i8 0, i8* @g_1868, align 1, !tbaa !9
  br label %1431

; <label>:1431                                    ; preds = %1444, %1430
  %1432 = load i8, i8* @g_1868, align 1, !tbaa !9
  %1433 = sext i8 %1432 to i32
  %1434 = icmp sgt i32 %1433, 26
  br i1 %1434, label %1435, label %1447

; <label>:1435                                    ; preds = %1431
  %1436 = load i32***, i32**** @g_2625, align 8, !tbaa !5
  %1437 = load i32**, i32*** %1436, align 8, !tbaa !5
  %1438 = load i32*, i32** %1437, align 8, !tbaa !5
  %1439 = load i32, i32* %1438, align 4, !tbaa !1
  %1440 = load i32**, i32*** @g_2058, align 8, !tbaa !5
  %1441 = load i32*, i32** %1440, align 8, !tbaa !5
  %1442 = load i32, i32* %1441, align 4, !tbaa !1
  %1443 = xor i32 %1442, %1439
  store i32 %1443, i32* %1441, align 4, !tbaa !1
  br label %1444

; <label>:1444                                    ; preds = %1435
  %1445 = load i8, i8* @g_1868, align 1, !tbaa !9
  %1446 = add i8 %1445, 1
  store i8 %1446, i8* @g_1868, align 1, !tbaa !9
  br label %1431

; <label>:1447                                    ; preds = %1431
  br label %1454

; <label>:1448                                    ; preds = %1406
  %1449 = load i32*, i32** %l_3455, align 8, !tbaa !5
  %1450 = load i32***, i32**** @g_393, align 8, !tbaa !5
  %1451 = load i32**, i32*** %1450, align 8, !tbaa !5
  store i32* %1449, i32** %1451, align 8, !tbaa !5
  %1452 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1453 = trunc i16 %1452 to i8
  store i8 %1453, i8* %1
  store i32 1, i32* %2
  br label %1552

; <label>:1454                                    ; preds = %1447
  store i16 0, i16* @g_2490, align 2, !tbaa !10
  br label %1455

; <label>:1455                                    ; preds = %1546, %1454
  %1456 = load i16, i16* @g_2490, align 2, !tbaa !10
  %1457 = zext i16 %1456 to i32
  %1458 = icmp sle i32 %1457, 2
  br i1 %1458, label %1459, label %1551

; <label>:1459                                    ; preds = %1455
  %1460 = bitcast i16* %l_3471 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1460) #1
  store i16 -18983, i16* %l_3471, align 2, !tbaa !10
  %1461 = bitcast i32* %l_3474 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1461) #1
  store i32 1, i32* %l_3474, align 4, !tbaa !1
  %1462 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1462) #1
  %1463 = bitcast i32* %j20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1463) #1
  %1464 = load i64, i64* @g_257, align 8, !tbaa !7
  %1465 = icmp ne i64 %1464, 0
  br i1 %1465, label %1466, label %1467

; <label>:1466                                    ; preds = %1459
  store i32 8, i32* %2
  br label %1540

; <label>:1467                                    ; preds = %1459
  %1468 = load i64, i64* %l_3461, align 8, !tbaa !7
  %1469 = trunc i64 %1468 to i16
  %1470 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext 16798, i32 5)
  %1471 = zext i16 %1470 to i32
  %1472 = icmp ne i32 %1471, 0
  br i1 %1472, label %1473, label %1503

; <label>:1473                                    ; preds = %1467
  %1474 = load volatile i16****, i16***** @g_2752, align 8, !tbaa !5
  %1475 = load i16***, i16**** %1474, align 8, !tbaa !5
  %1476 = load i16**, i16*** %1475, align 8, !tbaa !5
  %1477 = icmp ne i16** null, %1476
  br i1 %1477, label %1478, label %1479

; <label>:1478                                    ; preds = %1473
  br label %1479

; <label>:1479                                    ; preds = %1478, %1473
  %1480 = phi i1 [ false, %1473 ], [ false, %1478 ]
  %1481 = zext i1 %1480 to i32
  store i16 23, i16* %l_3471, align 2, !tbaa !10
  %1482 = load i64**, i64*** %l_3472, align 8, !tbaa !5
  store i64** %1482, i64*** @g_3473, align 8, !tbaa !5
  %1483 = icmp ne i64** @g_424, %1482
  %1484 = zext i1 %1483 to i32
  %1485 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 23, i32 %1484)
  %1486 = zext i8 %1485 to i32
  %1487 = load i32**, i32*** @g_687, align 8, !tbaa !5
  %1488 = load i32*, i32** %1487, align 8, !tbaa !5
  store i32 %1486, i32* %1488, align 4, !tbaa !1
  %1489 = load i64, i64* %l_3452, align 8, !tbaa !7
  %1490 = trunc i64 %1489 to i16
  %1491 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %1490, i16 zeroext -1803)
  %1492 = load i32, i32* %l_3474, align 4, !tbaa !1
  %1493 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1491, i32 %1492)
  %1494 = sext i16 %1493 to i32
  %1495 = icmp slt i32 %1481, %1494
  %1496 = zext i1 %1495 to i32
  %1497 = sext i32 %1496 to i64
  %1498 = or i64 %1497, 4294967294
  %1499 = icmp ugt i64 %1498, -3
  %1500 = zext i1 %1499 to i32
  %1501 = sext i32 %1500 to i64
  %1502 = icmp uge i64 %1501, 7
  br label %1503

; <label>:1503                                    ; preds = %1479, %1467
  %1504 = phi i1 [ false, %1467 ], [ %1502, %1479 ]
  %1505 = zext i1 %1504 to i32
  %1506 = trunc i32 %1505 to i16
  %1507 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %1469, i16 zeroext %1506)
  %1508 = zext i16 %1507 to i32
  %1509 = load i16*, i16** @g_110, align 8, !tbaa !5
  %1510 = load i16, i16* %1509, align 2, !tbaa !10
  %1511 = sext i16 %1510 to i32
  %1512 = icmp ne i32 %1508, %1511
  %1513 = zext i1 %1512 to i32
  %1514 = sext i32 %1513 to i64
  %1515 = load i64, i64* %l_3452, align 8, !tbaa !7
  %1516 = or i64 %1514, %1515
  %1517 = trunc i64 %1516 to i8
  %1518 = load i8****, i8***** @g_2030, align 8, !tbaa !5
  %1519 = load i8***, i8**** %1518, align 8, !tbaa !5
  %1520 = load i8**, i8*** %1519, align 8, !tbaa !5
  %1521 = load i8*, i8** %1520, align 8, !tbaa !5
  store i8 %1517, i8* %1521, align 1, !tbaa !9
  %1522 = sext i8 %1517 to i64
  %1523 = icmp eq i64 %1522, -5
  %1524 = zext i1 %1523 to i32
  %1525 = load i32, i32* %l_3451, align 4, !tbaa !1
  %1526 = trunc i32 %1525 to i16
  %1527 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %1526, i16 zeroext 6466)
  %1528 = zext i16 %1527 to i32
  %1529 = load i16, i16* @g_2490, align 2, !tbaa !10
  %1530 = zext i16 %1529 to i64
  %1531 = load i16, i16* @g_2490, align 2, !tbaa !10
  %1532 = zext i16 %1531 to i64
  %1533 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 %1532
  %1534 = getelementptr inbounds [3 x i32], [3 x i32]* %1533, i32 0, i64 %1530
  store i32 %1528, i32* %1534, align 4, !tbaa !1
  %1535 = load i32*, i32** @g_2059, align 8, !tbaa !5
  %1536 = load i32, i32* %1535, align 4, !tbaa !1
  %1537 = icmp ne i32 %1536, 0
  br i1 %1537, label %1538, label %1539

; <label>:1538                                    ; preds = %1503
  store i32 75, i32* %2
  br label %1540

; <label>:1539                                    ; preds = %1503
  store i32 0, i32* %2
  br label %1540

; <label>:1540                                    ; preds = %1539, %1538, %1466
  %1541 = bitcast i32* %j20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1541) #1
  %1542 = bitcast i32* %i19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1542) #1
  %1543 = bitcast i32* %l_3474 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1543) #1
  %1544 = bitcast i16* %l_3471 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1544) #1
  %cleanup.dest.21 = load i32, i32* %2
  switch i32 %cleanup.dest.21, label %1552 [
    i32 0, label %1545
    i32 75, label %1551
  ]

; <label>:1545                                    ; preds = %1540
  br label %1546

; <label>:1546                                    ; preds = %1545
  %1547 = load i16, i16* @g_2490, align 2, !tbaa !10
  %1548 = zext i16 %1547 to i32
  %1549 = add nsw i32 %1548, 1
  %1550 = trunc i32 %1549 to i16
  store i16 %1550, i16* @g_2490, align 2, !tbaa !10
  br label %1455

; <label>:1551                                    ; preds = %1540, %1455
  store i32 0, i32* %2
  br label %1552

; <label>:1552                                    ; preds = %1551, %1540, %1448
  %1553 = bitcast i64* %l_3452 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1553) #1
  %1554 = bitcast i32* %l_3451 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1554) #1
  %1555 = bitcast i32* %l_3437 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1555) #1
  %cleanup.dest.22 = load i32, i32* %2
  switch i32 %cleanup.dest.22, label %1573 [
    i32 0, label %1556
  ]

; <label>:1556                                    ; preds = %1552
  br label %1570

; <label>:1557                                    ; preds = %1318
  %1558 = bitcast i64* %l_3479 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1558) #1
  store i64 7186521276945566570, i64* %l_3479, align 8, !tbaa !7
  %1559 = load i32**, i32*** @g_2626, align 8, !tbaa !5
  %1560 = load i32*, i32** %1559, align 8, !tbaa !5
  store i32 0, i32* %1560, align 4, !tbaa !1
  %1561 = load i64, i64* %l_3478, align 8, !tbaa !7
  %1562 = trunc i64 %1561 to i16
  %1563 = load i64, i64* %l_3479, align 8, !tbaa !7
  %1564 = trunc i64 %1563 to i16
  %1565 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1562, i16 zeroext %1564)
  %1566 = zext i16 %1565 to i32
  %1567 = load i32**, i32*** @g_2626, align 8, !tbaa !5
  %1568 = load i32*, i32** %1567, align 8, !tbaa !5
  store i32 %1566, i32* %1568, align 4, !tbaa !1
  %1569 = bitcast i64* %l_3479 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1569) #1
  br label %1570

; <label>:1570                                    ; preds = %1557, %1556
  %1571 = load i16, i16* %l_3433, align 2, !tbaa !10
  %1572 = trunc i16 %1571 to i8
  store i8 %1572, i8* %1
  store i32 1, i32* %2
  br label %1573

; <label>:1573                                    ; preds = %1570, %1552
  %1574 = bitcast i16* %l_3433 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1574) #1
  br label %1675
                                                  ; No predecessors!
  %1576 = load i32, i32* @g_3228, align 4, !tbaa !1
  %1577 = add i32 %1576, -1
  store i32 %1577, i32* @g_3228, align 4, !tbaa !1
  br label %1315

; <label>:1578                                    ; preds = %1315
  store i32 0, i32* @g_249, align 4, !tbaa !1
  br label %1579

; <label>:1579                                    ; preds = %1600, %1578
  %1580 = load i32, i32* @g_249, align 4, !tbaa !1
  %1581 = icmp sle i32 %1580, 2
  br i1 %1581, label %1582, label %1603

; <label>:1582                                    ; preds = %1579
  %1583 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1583) #1
  %1584 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1584) #1
  %1585 = load i32, i32* @g_249, align 4, !tbaa !1
  %1586 = sext i32 %1585 to i64
  %1587 = load i32, i32* @g_249, align 4, !tbaa !1
  %1588 = add nsw i32 %1587, 1
  %1589 = sext i32 %1588 to i64
  %1590 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 %1589
  %1591 = getelementptr inbounds [3 x i32], [3 x i32]* %1590, i32 0, i64 %1586
  %1592 = load i32, i32* %1591, align 4, !tbaa !1
  %1593 = icmp ne i32 %1592, 0
  br i1 %1593, label %1594, label %1595

; <label>:1594                                    ; preds = %1582
  store i32 78, i32* %2
  br label %1596

; <label>:1595                                    ; preds = %1582
  store i32 0, i32* %2
  br label %1596

; <label>:1596                                    ; preds = %1595, %1594
  %1597 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1597) #1
  %1598 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1598) #1
  %cleanup.dest.25 = load i32, i32* %2
  switch i32 %cleanup.dest.25, label %1716 [
    i32 0, label %1599
    i32 78, label %1603
  ]

; <label>:1599                                    ; preds = %1596
  br label %1600

; <label>:1600                                    ; preds = %1599
  %1601 = load i32, i32* @g_249, align 4, !tbaa !1
  %1602 = add nsw i32 %1601, 1
  store i32 %1602, i32* @g_249, align 4, !tbaa !1
  br label %1579

; <label>:1603                                    ; preds = %1596, %1579
  %1604 = load i32, i32* @g_3486, align 4, !tbaa !1
  %1605 = load i32*, i32** %l_3455, align 8, !tbaa !5
  %1606 = load i32, i32* %1605, align 4, !tbaa !1
  %1607 = icmp ult i32 %1604, %1606
  %1608 = zext i1 %1607 to i32
  %1609 = sext i32 %1608 to i64
  %1610 = load i64*, i64** @g_424, align 8, !tbaa !5
  store i64 -9, i64* %1610, align 8, !tbaa !7
  %1611 = load i64***, i64**** @g_1159, align 8, !tbaa !5
  %1612 = load i64**, i64*** %1611, align 8, !tbaa !5
  %1613 = load i64*, i64** %1612, align 8, !tbaa !5
  %1614 = load i64, i64* %1613, align 8, !tbaa !7
  br i1 true, label %1640, label %1615

; <label>:1615                                    ; preds = %1603
  %1616 = load i64*, i64** %l_3495, align 8, !tbaa !5
  store i64 2, i64* %1616, align 8, !tbaa !7
  %1617 = load i32*, i32** %l_3455, align 8, !tbaa !5
  %1618 = load i32, i32* %1617, align 4, !tbaa !1
  %1619 = sext i32 %1618 to i64
  %1620 = load i64****, i64***** @g_1158, align 8, !tbaa !5
  %1621 = load i64***, i64**** %1620, align 8, !tbaa !5
  %1622 = load i64**, i64*** %1621, align 8, !tbaa !5
  %1623 = load i64*, i64** %1622, align 8, !tbaa !5
  %1624 = load i64, i64* %1623, align 8, !tbaa !7
  %1625 = load i8**, i8*** @g_302, align 8, !tbaa !5
  %1626 = load i8*, i8** %1625, align 8, !tbaa !5
  %1627 = load i8, i8* %1626, align 1, !tbaa !9
  %1628 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %1627, i8 zeroext 1)
  %1629 = zext i8 %1628 to i64
  %1630 = icmp eq i64 %1624, %1629
  %1631 = zext i1 %1630 to i32
  %1632 = trunc i32 %1631 to i16
  %1633 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3500, i32 0, i64 3
  %1634 = load i32, i32* %1633, align 4, !tbaa !1
  %1635 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1632, i32 %1634)
  %1636 = icmp ult i64 %1619, 1
  %1637 = zext i1 %1636 to i32
  %1638 = sext i32 %1637 to i64
  %1639 = icmp sle i64 2, %1638
  br label %1640

; <label>:1640                                    ; preds = %1615, %1603
  %1641 = phi i1 [ true, %1603 ], [ %1639, %1615 ]
  %1642 = zext i1 %1641 to i32
  %1643 = trunc i32 %1642 to i16
  %1644 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %1643, i16 zeroext 24434)
  %1645 = trunc i16 %1644 to i8
  %1646 = load i8*, i8** @g_405, align 8, !tbaa !5
  %1647 = load i8, i8* %1646, align 1, !tbaa !9
  %1648 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1645, i8 signext %1647)
  %1649 = sext i8 %1648 to i16
  %1650 = load i32*, i32** %l_3455, align 8, !tbaa !5
  %1651 = load i32, i32* %1650, align 4, !tbaa !1
  %1652 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1649, i32 %1651)
  %1653 = sext i16 %1652 to i64
  %1654 = call i64 @safe_sub_func_int64_t_s_s(i64 -9, i64 %1653)
  %1655 = or i64 %1609, %1654
  %1656 = call i64 @safe_mod_func_int64_t_s_s(i64 %1655, i64 -6261237101911612995)
  %1657 = trunc i64 %1656 to i16
  %1658 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1657, i32 15)
  %1659 = sext i16 %1658 to i32
  %1660 = icmp ne i32 %1659, 0
  br i1 %1660, label %1661, label %1666

; <label>:1661                                    ; preds = %1640
  %1662 = load volatile i64**, i64*** @g_2617, align 8, !tbaa !5
  %1663 = load volatile i64*, i64** %1662, align 8, !tbaa !5
  %1664 = load volatile i64, i64* %1663, align 8, !tbaa !7
  %1665 = icmp ne i64 %1664, 0
  br label %1666

; <label>:1666                                    ; preds = %1661, %1640
  %1667 = phi i1 [ false, %1640 ], [ %1665, %1661 ]
  %1668 = zext i1 %1667 to i32
  %1669 = trunc i32 %1668 to i8
  %1670 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1669, i8 signext 8)
  %1671 = sext i8 %1670 to i32
  %1672 = load i32*, i32** @g_151, align 8, !tbaa !5
  store volatile i32 %1671, i32* %1672, align 4, !tbaa !1
  %1673 = load i8, i8* %l_3508, align 1, !tbaa !9
  %1674 = add i8 %1673, -1
  store i8 %1674, i8* %l_3508, align 1, !tbaa !9
  store i32 0, i32* %2
  br label %1675

; <label>:1675                                    ; preds = %1666, %1573
  %1676 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1676) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3508) #1
  %1677 = bitcast i32* %l_3507 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1677) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3506) #1
  %1678 = bitcast i32* %l_3505 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1678) #1
  %1679 = bitcast i32* %l_3504 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1679) #1
  %1680 = bitcast i32* %l_3503 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1680) #1
  %1681 = bitcast i32* %l_3502 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1681) #1
  %1682 = bitcast [7 x i32]* %l_3500 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %1682) #1
  %1683 = bitcast i64** %l_3495 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1683) #1
  %1684 = bitcast i16* %l_3475 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1684) #1
  %1685 = bitcast i64*** %l_3472 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1685) #1
  %1686 = bitcast i64* %l_3461 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1686) #1
  %1687 = bitcast i32** %l_3455 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1687) #1
  %1688 = bitcast i16* %l_3440 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1688) #1
  %cleanup.dest.26 = load i32, i32* %2
  switch i32 %cleanup.dest.26, label %1696 [
    i32 0, label %1689
    i32 8, label %46
  ]

; <label>:1689                                    ; preds = %1675
  br label %1690

; <label>:1690                                    ; preds = %1689
  %1691 = load i32, i32* @g_191, align 4, !tbaa !1
  %1692 = add i32 %1691, 1
  store i32 %1692, i32* @g_191, align 4, !tbaa !1
  br label %1297

; <label>:1693                                    ; preds = %1297
  %1694 = load i8*, i8** @g_405, align 8, !tbaa !5
  %1695 = load i8, i8* %1694, align 1, !tbaa !9
  store i8 %1695, i8* %1
  store i32 1, i32* %2
  br label %1696

; <label>:1696                                    ; preds = %1693, %1675, %1273
  %1697 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1697) #1
  %1698 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1698) #1
  %1699 = bitcast i16* %l_3501 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1699) #1
  %1700 = bitcast i64* %l_3478 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1700) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3409) #1
  %1701 = bitcast i16* %l_3408 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1701) #1
  %1702 = bitcast i16* %l_3364 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1702) #1
  %1703 = bitcast i16* %l_3256 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1703) #1
  %1704 = bitcast i16***** %l_3236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1704) #1
  %1705 = bitcast i16**** %l_3237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1705) #1
  %1706 = bitcast i64* %l_3225 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1706) #1
  %1707 = bitcast i16* %l_3224 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1707) #1
  %1708 = bitcast i64*** %l_3218 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1708) #1
  %1709 = bitcast i32** %l_3188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1709) #1
  %1710 = bitcast i32****** %l_3166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1710) #1
  %1711 = bitcast i32***** %l_3167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1711) #1
  %1712 = bitcast [1 x [9 x i32***]]* %l_3168 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1712) #1
  %1713 = bitcast i64* %l_3165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1713) #1
  %1714 = bitcast [1 x [10 x i8]]* %l_20 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %1714) #1
  %1715 = load i8, i8* %1
  ret i8 %1715

; <label>:1716                                    ; preds = %1596
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal i64 @safe_unary_minus_func_int64_t_s(i64 %si) #0 {
  %1 = alloca i64, align 8
  store i64 %si, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = icmp eq i64 %2, -9223372036854775808
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i64, i64* %1, align 8, !tbaa !7
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8, !tbaa !7
  %8 = sub nsw i64 0, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i64 [ %5, %4 ], [ %8, %6 ]
  ret i64 %10
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i64 @safe_sub_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = sub i64 %3, %4
  ret i64 %5
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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
define internal zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %left, i32 %right) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  store i8 %left, i8* %1, align 1, !tbaa !9
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i8, i8* %1, align 1, !tbaa !9
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define internal i32* @func_72(i32* %p_73, i32* %p_74, i16 signext %p_75, i32* %p_76) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 8
  %l_1064 = alloca i32*, align 8
  %l_1065 = alloca i32*, align 8
  %l_1066 = alloca i32*, align 8
  %l_1067 = alloca i32*, align 8
  %l_1068 = alloca i32*, align 8
  %l_1069 = alloca i32*, align 8
  %l_1070 = alloca i32*, align 8
  %l_1071 = alloca [4 x i32*], align 16
  %l_1073 = alloca i16, align 2
  %i = alloca i32, align 4
  store i32* %p_73, i32** %1, align 8, !tbaa !5
  store i32* %p_74, i32** %2, align 8, !tbaa !5
  store i16 %p_75, i16* %3, align 2, !tbaa !10
  store i32* %p_76, i32** %4, align 8, !tbaa !5
  %5 = bitcast i32** %l_1064 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_249, i32** %l_1064, align 8, !tbaa !5
  %6 = bitcast i32** %l_1065 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %l_1065, align 8, !tbaa !5
  %7 = bitcast i32** %l_1066 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* null, i32** %l_1066, align 8, !tbaa !5
  %8 = bitcast i32** %l_1067 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_646, i32** %l_1067, align 8, !tbaa !5
  %9 = bitcast i32** %l_1068 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* null, i32** %l_1068, align 8, !tbaa !5
  %10 = bitcast i32** %l_1069 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* null, i32** %l_1069, align 8, !tbaa !5
  %11 = bitcast i32** %l_1070 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @g_648, i32 0, i64 1, i64 0), i32** %l_1070, align 8, !tbaa !5
  %12 = bitcast [4 x i32*]* %l_1071 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %12) #1
  %13 = bitcast [4 x i32*]* %l_1071 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([4 x i32*]* @func_72.l_1071 to i8*), i64 32, i32 16, i1 false)
  %14 = bitcast i16* %l_1073 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  store i16 29343, i16* %l_1073, align 2, !tbaa !10
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i16, i16* %l_1073, align 2, !tbaa !10
  %17 = add i16 %16, -1
  store i16 %17, i16* %l_1073, align 2, !tbaa !10
  %18 = load i32*, i32** %1, align 8, !tbaa !5
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i16* %l_1073 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #1
  %21 = bitcast [4 x i32*]* %l_1071 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %21) #1
  %22 = bitcast i32** %l_1070 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32** %l_1069 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32** %l_1068 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32** %l_1067 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32** %l_1066 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32** %l_1065 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32** %l_1064 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret i32* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_mod_func_uint32_t_u_u(i32 %ui1, i32 %ui2) #0 {
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
  %10 = urem i32 %8, %9
  br label %11

; <label>:11                                      ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
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
define internal zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %ui1, i16 zeroext %ui2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %ui1, i16* %1, align 2, !tbaa !10
  store i16 %ui2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = zext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
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
define internal zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %left, i32 %right) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %left, i16* %1, align 2, !tbaa !10
  store i32 %right, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !1
  %4 = icmp uge i32 %3, 32
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load i16, i16* %1, align 2, !tbaa !10
  %7 = zext i16 %6 to i32
  br label %13

; <label>:8                                       ; preds = %0
  %9 = load i16, i16* %1, align 2, !tbaa !10
  %10 = zext i16 %9 to i32
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = ashr i32 %10, %11
  br label %13

; <label>:13                                      ; preds = %8, %5
  %14 = phi i32 [ %7, %5 ], [ %12, %8 ]
  %15 = trunc i32 %14 to i16
  ret i16 %15
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
