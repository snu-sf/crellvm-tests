; ModuleID = '00481.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global i32 -4, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_4\00", align 1
@g_5 = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global [8 x [10 x i32]] [[10 x i32] [i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402], [10 x i32] [i32 1, i32 1, i32 -1783733089, i32 1, i32 1, i32 -1783733089, i32 1, i32 1, i32 -1783733089, i32 1], [10 x i32] [i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1], [10 x i32] [i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402], [10 x i32] [i32 1, i32 1, i32 -1783733089, i32 1, i32 1, i32 -1783733089, i32 968493402, i32 968493402, i32 1, i32 968493402], [10 x i32] [i32 968493402, i32 -1783733089, i32 -1783733089, i32 968493402, i32 -1783733089, i32 -1783733089, i32 968493402, i32 -1783733089, i32 -1783733089, i32 968493402], [10 x i32] [i32 -1783733089, i32 968493402, i32 -1783733089, i32 -1783733089, i32 968493402, i32 -1783733089, i32 -1783733089, i32 968493402, i32 -1783733089, i32 -1783733089], [10 x i32] [i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402, i32 968493402, i32 1, i32 968493402]], align 16
@.str.4 = private unnamed_addr constant [10 x i8] c"g_6[i][j]\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_14 = internal global i32 -335860671, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_18 = internal global i16 -5, align 2
@.str.7 = private unnamed_addr constant [5 x i8] c"g_18\00", align 1
@g_19 = internal global [6 x i16] [i16 10636, i16 -1, i16 -1, i16 10636, i16 -1, i16 -1], align 2
@.str.8 = private unnamed_addr constant [8 x i8] c"g_19[i]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_20 = internal global i32 8, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_20\00", align 1
@g_34 = internal global [10 x [6 x i32]] [[6 x i32] [i32 0, i32 -1521927600, i32 -1265285084, i32 -1521927600, i32 0, i32 -59703025], [6 x i32] [i32 780674056, i32 -489884275, i32 0, i32 -1229288834, i32 -51145336, i32 887924329], [6 x i32] [i32 1594057222, i32 -574297540, i32 -1229288834, i32 -489884275, i32 -1549662280, i32 887924329], [6 x i32] [i32 1150928766, i32 0, i32 0, i32 1, i32 -1818296943, i32 -59703025], [6 x i32] [i32 -1549662280, i32 -1, i32 -1265285084, i32 -1265285084, i32 -1, i32 -1549662280], [6 x i32] [i32 -59703025, i32 -1818296943, i32 1, i32 0, i32 0, i32 1150928766], [6 x i32] [i32 887924329, i32 -1549662280, i32 -489884275, i32 -1229288834, i32 -574297540, i32 1594057222], [6 x i32] [i32 887924329, i32 -51145336, i32 -1229288834, i32 0, i32 -489884275, i32 780674056], [6 x i32] [i32 -59703025, i32 0, i32 -1521927600, i32 -1265285084, i32 -1521927600, i32 0], [6 x i32] [i32 -1549662280, i32 -783982572, i32 -1131632343, i32 1, i32 1, i32 -1549662280]], align 16
@.str.11 = private unnamed_addr constant [11 x i8] c"g_34[i][j]\00", align 1
@g_35 = internal global i32 1215122756, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_35\00", align 1
@g_67 = internal global i8 -46, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"g_67\00", align 1
@g_69 = internal global i8 112, align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"g_69\00", align 1
@g_74 = internal global %union.U0 { i64 -7975769387960488224 }, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"g_74.f0\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"g_74.f1\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"g_74.f2\00", align 1
@g_89 = internal global i16 -25547, align 2
@.str.18 = private unnamed_addr constant [5 x i8] c"g_89\00", align 1
@g_92 = internal global i32 1, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"g_92\00", align 1
@g_127 = internal global i32 1432973064, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_127\00", align 1
@g_134 = internal global [9 x [7 x [4 x i16]]] [[7 x [4 x i16]] [[4 x i16] [i16 27837, i16 -2, i16 30698, i16 -6351], [4 x i16] [i16 15885, i16 -4, i16 30698, i16 1], [4 x i16] [i16 27837, i16 4, i16 -19809, i16 -9354], [4 x i16] [i16 4634, i16 1, i16 -6362, i16 11431], [4 x i16] [i16 -6362, i16 11431, i16 19826, i16 -6362], [4 x i16] [i16 -1752, i16 0, i16 -305, i16 -4], [4 x i16] [i16 9, i16 0, i16 1, i16 21185]], [7 x [4 x i16]] [[4 x i16] [i16 -8, i16 4, i16 -20646, i16 30698], [4 x i16] [i16 29700, i16 6, i16 -8, i16 -4], [4 x i16] [i16 -26187, i16 12557, i16 15885, i16 -1], [4 x i16] [i16 1, i16 11431, i16 -4, i16 19826], [4 x i16] [i16 9, i16 9, i16 24939, i16 -9354], [4 x i16] [i16 -9815, i16 1, i16 12557, i16 -1], [4 x i16] [i16 -9, i16 -4, i16 -6362, i16 -20646]], [7 x [4 x i16]] [[4 x i16] [i16 7, i16 -4, i16 1, i16 -1], [4 x i16] [i16 -9815, i16 -20646, i16 1, i16 9], [4 x i16] [i16 15885, i16 -2, i16 -4, i16 -4], [4 x i16] [i16 4, i16 4, i16 9, i16 30667], [4 x i16] [i16 -26187, i16 -9366, i16 -6362, i16 0], [4 x i16] [i16 31121, i16 9, i16 -20646, i16 -6362], [4 x i16] [i16 8, i16 9, i16 -1, i16 0]], [7 x [4 x i16]] [[4 x i16] [i16 9, i16 -9366, i16 -1, i16 30667], [4 x i16] [i16 0, i16 4, i16 19826, i16 8], [4 x i16] [i16 30698, i16 1, i16 21185, i16 -9], [4 x i16] [i16 -1, i16 1, i16 0, i16 30698], [4 x i16] [i16 15734, i16 31121, i16 -9, i16 1], [4 x i16] [i16 -9, i16 -8, i16 9, i16 -9366], [4 x i16] [i16 -20646, i16 9, i16 0, i16 30138]], [7 x [4 x i16]] [[4 x i16] [i16 -305, i16 0, i16 6, i16 -8], [4 x i16] [i16 30698, i16 -6362, i16 -1, i16 30698], [4 x i16] [i16 12557, i16 7741, i16 1542, i16 31121], [4 x i16] [i16 0, i16 0, i16 -26455, i16 -9], [4 x i16] [i16 -2, i16 15885, i16 -26187, i16 1], [4 x i16] [i16 -4, i16 1938, i16 6, i16 31121], [4 x i16] [i16 -1, i16 -1, i16 0, i16 6]], [7 x [4 x i16]] [[4 x i16] [i16 15885, i16 -6362, i16 -2, i16 -6362], [4 x i16] [i16 -9, i16 -2318, i16 -8860, i16 30138], [4 x i16] [i16 19792, i16 15885, i16 7741, i16 -26455], [4 x i16] [i16 1, i16 -8, i16 21185, i16 -6639], [4 x i16] [i16 1, i16 0, i16 7741, i16 30698], [4 x i16] [i16 19792, i16 -6639, i16 -8860, i16 0], [4 x i16] [i16 -9, i16 1, i16 -2, i16 1]], [7 x [4 x i16]] [[4 x i16] [i16 15885, i16 9, i16 0, i16 0], [4 x i16] [i16 -1, i16 0, i16 6, i16 7741], [4 x i16] [i16 -4, i16 -9, i16 -26187, i16 30698], [4 x i16] [i16 -2, i16 0, i16 -26455, i16 -1], [4 x i16] [i16 0, i16 0, i16 1542, i16 -8860], [4 x i16] [i16 12557, i16 15885, i16 -1, i16 1], [4 x i16] [i16 30698, i16 14904, i16 6, i16 -9]], [7 x [4 x i16]] [[4 x i16] [i16 -305, i16 -6639, i16 0, i16 6], [4 x i16] [i16 -20646, i16 31121, i16 9, i16 -6639], [4 x i16] [i16 -9, i16 1637, i16 -9, i16 -9366], [4 x i16] [i16 15734, i16 15885, i16 0, i16 1542], [4 x i16] [i16 -1, i16 0, i16 21185, i16 -6362], [4 x i16] [i16 30698, i16 -8, i16 -8, i16 30698], [4 x i16] [i16 1, i16 -1, i16 1542, i16 0]], [7 x [4 x i16]] [[4 x i16] [i16 -9, i16 0, i16 -1, i16 1], [4 x i16] [i16 -2, i16 9, i16 1, i16 1], [4 x i16] [i16 -142, i16 0, i16 6, i16 0], [4 x i16] [i16 1, i16 -1, i16 7, i16 30698], [4 x i16] [i16 15885, i16 -8, i16 8, i16 -6362], [4 x i16] [i16 0, i16 0, i16 -8860, i16 1542], [4 x i16] [i16 19826, i16 15885, i16 4634, i16 -9366]]], align 16
@.str.21 = private unnamed_addr constant [15 x i8] c"g_134[i][j][k]\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_136 = internal global i16 -1, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_136\00", align 1
@g_142 = internal global i64 8111417103656687487, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_142\00", align 1
@g_165 = internal global i16 1, align 2
@.str.25 = private unnamed_addr constant [6 x i8] c"g_165\00", align 1
@g_166 = internal global i8 86, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_270 = internal global [5 x i8] c"\07\07\07\07\07", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_270[i]\00", align 1
@g_272 = internal global i32 8, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_272\00", align 1
@g_310 = internal global i32 -213370349, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_310\00", align 1
@g_312 = internal global [4 x i64] [i64 7, i64 7, i64 7, i64 7], align 16
@.str.30 = private unnamed_addr constant [9 x i8] c"g_312[i]\00", align 1
@g_338 = internal global [6 x [8 x i32]] [[8 x i32] [i32 1, i32 552396268, i32 552396268, i32 1, i32 1, i32 0, i32 1, i32 0], [8 x i32] [i32 1, i32 35504923, i32 4, i32 35504923, i32 1, i32 4, i32 6, i32 6], [8 x i32] [i32 0, i32 35504923, i32 1, i32 1, i32 35504923, i32 0, i32 552396268, i32 35504923], [8 x i32] [i32 6, i32 552396268, i32 1, i32 6, i32 1, i32 552396268, i32 6, i32 0], [8 x i32] [i32 35504923, i32 1, i32 4, i32 6, i32 6, i32 4, i32 1, i32 35504923], [8 x i32] [i32 0, i32 6, i32 552396268, i32 1, i32 6, i32 1, i32 552396268, i32 6]], align 16
@.str.31 = private unnamed_addr constant [12 x i8] c"g_338[i][j]\00", align 1
@g_339 = internal global i16 -5620, align 2
@.str.32 = private unnamed_addr constant [6 x i8] c"g_339\00", align 1
@g_396 = internal global i8 -1, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_396\00", align 1
@g_467 = internal global %union.U0 { i64 6 }, align 8
@.str.34 = private unnamed_addr constant [9 x i8] c"g_467.f0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_467.f1\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_467.f2\00", align 1
@g_577 = internal global i32 -6, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_577\00", align 1
@g_578 = internal global i32 -572682536, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_578\00", align 1
@g_579 = internal global i32 5, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_579\00", align 1
@g_644 = internal global [4 x [4 x [2 x i8]]] [[4 x [2 x i8]] [[2 x i8] c"\0C\D9", [2 x i8] c"\D9\0C", [2 x i8] c"\00\FC", [2 x i8] c"\00\0C"], [4 x [2 x i8]] [[2 x i8] c"\D9\D9", [2 x i8] c"\0C\00", [2 x i8] c"\FC\00", [2 x i8] c"\0C\D9"], [4 x [2 x i8]] [[2 x i8] c"\D9\0C", [2 x i8] c"\00\FC", [2 x i8] c"\00\0C", [2 x i8] c"\D9\D9"], [4 x [2 x i8]] [[2 x i8] c"\0C\00", [2 x i8] c"\FC\00", [2 x i8] c"\0C\FF", [2 x i8] c"\FF\FC"]], align 16
@.str.40 = private unnamed_addr constant [15 x i8] c"g_644[i][j][k]\00", align 1
@g_781 = internal global [5 x i64] [i64 5297433306344793212, i64 5297433306344793212, i64 5297433306344793212, i64 5297433306344793212, i64 5297433306344793212], align 16
@.str.41 = private unnamed_addr constant [9 x i8] c"g_781[i]\00", align 1
@g_793 = internal global i32 9, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_793\00", align 1
@g_929 = internal constant [7 x i64] [i64 4, i64 4, i64 -2214692249695317501, i64 4, i64 4, i64 -2214692249695317501, i64 4], align 16
@.str.43 = private unnamed_addr constant [9 x i8] c"g_929[i]\00", align 1
@g_956 = internal global i64 1, align 8
@.str.44 = private unnamed_addr constant [6 x i8] c"g_956\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"g_983\00", align 1
@g_986 = internal global [4 x [3 x [7 x i32]]] [[3 x [7 x i32]] [[7 x i32] [i32 548968087, i32 -85210621, i32 -2086642316, i32 1, i32 -1, i32 -1, i32 1], [7 x i32] [i32 0, i32 1681573061, i32 0, i32 0, i32 1, i32 548968087, i32 -1546626675], [7 x i32] [i32 -2086642316, i32 -85210621, i32 548968087, i32 0, i32 548968087, i32 -85210621, i32 -2086642316]], [3 x [7 x i32]] [[7 x i32] [i32 -85210621, i32 -1, i32 -1546626675, i32 1, i32 1, i32 548968087, i32 1], [7 x i32] [i32 -85210621, i32 1, i32 1, i32 -85210621, i32 0, i32 -1, i32 0], [7 x i32] [i32 -2086642316, i32 -1, i32 -1546626675, i32 0, i32 0, i32 -1546626675, i32 -1]], [3 x [7 x i32]] [[7 x i32] [i32 0, i32 -2086642316, i32 548968087, i32 -1, i32 1, i32 0, i32 0], [7 x i32] [i32 548968087, i32 -2086642316, i32 0, i32 -2086642316, i32 548968087, i32 -1, i32 1], [7 x i32] [i32 -1546626675, i32 -1, i32 -2086642316, i32 -1, i32 1, i32 -1, i32 -2086642316]], [3 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 -85210621, i32 0, i32 -1, i32 0, i32 -1546626675], [7 x i32] [i32 -1546626675, i32 -1, i32 -85210621, i32 -85210621, i32 -1, i32 -1546626675, i32 1], [7 x i32] [i32 548968087, i32 -85210621, i32 -2086642316, i32 1, i32 -1, i32 -1, i32 1]]], align 16
@.str.46 = private unnamed_addr constant [15 x i8] c"g_986[i][j][k]\00", align 1
@g_1037 = internal global i16 3807, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1037\00", align 1
@g_1277 = internal global i8 -7, align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1277\00", align 1
@g_1300 = internal global [4 x i32] [i32 4, i32 4, i32 4, i32 4], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"g_1300[i]\00", align 1
@g_1339 = internal global i16 -23918, align 2
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1339\00", align 1
@g_1399 = internal global i8 -75, align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1399\00", align 1
@g_1408 = internal global i8 111, align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1408\00", align 1
@g_1457 = internal global [7 x i32] [i32 -742091805, i32 -267498129, i32 -742091805, i32 -742091805, i32 -267498129, i32 -742091805, i32 -742091805], align 16
@.str.53 = private unnamed_addr constant [10 x i8] c"g_1457[i]\00", align 1
@g_1462 = internal global i64 3, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1462\00", align 1
@g_1491 = internal global i8 115, align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1491\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1635\00", align 1
@g_1941 = internal global i32 1760893960, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1941\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1984\00", align 1
@g_2125 = internal global i8 5, align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"g_2125\00", align 1
@g_2244 = internal global i64 7757476190612146437, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"g_2244\00", align 1
@g_2257 = internal global i32 -6, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_2257\00", align 1
@g_2296 = internal global i8 -7, align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"g_2296\00", align 1
@g_2299 = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"g_2299\00", align 1
@g_2351 = internal global i32 -1, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"g_2351\00", align 1
@g_2360 = internal global i64 1, align 8
@.str.65 = private unnamed_addr constant [7 x i8] c"g_2360\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [7 x %union.U0] [%union.U0 { i64 -6501458397629815190 }, %union.U0 { i64 -6501458397629815190 }, %union.U0 { i64 -6501458397629815190 }, %union.U0 { i64 -6501458397629815190 }, %union.U0 { i64 -6501458397629815190 }, %union.U0 { i64 -6501458397629815190 }, %union.U0 { i64 -6501458397629815190 }], align 16
@func_1.l_2153 = private unnamed_addr constant [5 x i32] [i32 2002550674, i32 2002550674, i32 2002550674, i32 2002550674, i32 2002550674], align 16
@g_502 = internal global i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i8**]* @g_503 to i8*), i64 24) to i8***), align 8
@g_2131 = internal global i64*** @g_2132, align 8
@g_800 = internal global [10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [6 x i32]]* @g_34 to i8*), i64 36) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [6 x i32]]* @g_34 to i8*), i64 36) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [6 x i32]]* @g_34 to i8*), i64 36) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [6 x i32]]* @g_34 to i8*), i64 36) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [6 x i32]]* @g_34 to i8*), i64 36) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [6 x i32]]* @g_34 to i8*), i64 36) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [6 x i32]]* @g_34 to i8*), i64 36) to i32*)], align 16
@func_1.l_2174 = private unnamed_addr constant [9 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_800 to i8*), i64 32) to i32**)], align 16
@g_1005 = internal global i8*** @g_1006, align 8
@g_574 = internal global i32*** @g_575, align 8
@func_1.l_2353 = private unnamed_addr constant [2 x [4 x [10 x i16]]] [[4 x [10 x i16]] [[10 x i16] [i16 -4530, i16 32704, i16 -32598, i16 -31010, i16 -1, i16 -30509, i16 -28432, i16 -28432, i16 -30509, i16 -1], [10 x i16] [i16 -6, i16 31229, i16 31229, i16 -6, i16 -1, i16 -4381, i16 0, i16 0, i16 -1, i16 28874], [10 x i16] [i16 32704, i16 -26467, i16 -6, i16 0, i16 -7, i16 -1, i16 3, i16 -30509, i16 1, i16 -6], [10 x i16] [i16 -6, i16 0, i16 1, i16 31229, i16 0, i16 -10, i16 -28432, i16 32704, i16 -28432, i16 -10]], [4 x [10 x i16]] [[10 x i16] [i16 3, i16 -7, i16 28874, i16 -7, i16 3, i16 -13374, i16 -954, i16 -10, i16 0, i16 -4381], [10 x i16] [i16 -24962, i16 -21851, i16 -9, i16 -31010, i16 -954, i16 28874, i16 -1, i16 0, i16 0, i16 -4381], [10 x i16] [i16 -1, i16 -31010, i16 -28432, i16 -1, i16 3, i16 -26467, i16 -10, i16 -9, i16 -9, i16 -10], [10 x i16] [i16 -31010, i16 0, i16 -1, i16 -1, i16 0, i16 -31010, i16 -13374, i16 -1, i16 23151, i16 -6]]], align 16
@g_955 = internal global i64* @g_956, align 8
@g_575 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [9 x i32*]]* @g_576 to i8*), i64 48) to i32**), align 8
@g_573 = internal global i32**** @g_574, align 8
@g_503 = internal global [9 x i8**] [i8** null, i8** @g_244, i8** @g_244, i8** null, i8** @g_244, i8** @g_244, i8** null, i8** @g_244, i8** @g_244], align 16
@g_244 = internal global i8* @g_67, align 8
@g_2132 = internal global i64** @g_955, align 8
@g_1006 = internal global i8** @g_1007, align 8
@g_1007 = internal global i8* null, align 8
@g_576 = internal constant [2 x [9 x i32*]] [[9 x i32*] [i32* @g_577, i32* @g_577, i32* @g_578, i32* @g_577, i32* @g_577, i32* @g_578, i32* @g_577, i32* @g_577, i32* @g_578], [9 x i32*] [i32* @g_577, i32* @g_577, i32* @g_578, i32* @g_577, i32* @g_577, i32* @g_578, i32* @g_577, i32* @g_577, i32* @g_578]], align 16
@.str.66 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call i32 @func_1()
  %91 = load volatile i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load volatile i32, i32* @g_4, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %128, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 8
  br i1 %102, label %103, label %131

; <label>:103                                     ; preds = %100
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:104                                     ; preds = %124, %103
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = icmp slt i32 %105, 10
  br i1 %106, label %107, label %127

; <label>:107                                     ; preds = %104
  %108 = load i32, i32* %j, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x [10 x i32]], [8 x [10 x i32]]* @g_6, i32 0, i64 %111
  %113 = getelementptr inbounds [10 x i32], [10 x i32]* %112, i32 0, i64 %109
  %114 = load i32, i32* %113, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 %116)
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

; <label>:119                                     ; preds = %107
  %120 = load i32, i32* %i, align 4, !tbaa !1
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %120, i32 %121)
  br label %123

; <label>:123                                     ; preds = %119, %107
  br label %124

; <label>:124                                     ; preds = %123
  %125 = load i32, i32* %j, align 4, !tbaa !1
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:127                                     ; preds = %104
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32, i32* %i, align 4, !tbaa !1
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:131                                     ; preds = %100
  %132 = load i32, i32* @g_14, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %134)
  %135 = load volatile i16, i16* @g_18, align 2, !tbaa !10
  %136 = sext i16 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %137)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:138                                     ; preds = %154, %131
  %139 = load i32, i32* %i, align 4, !tbaa !1
  %140 = icmp slt i32 %139, 6
  br i1 %140, label %141, label %157

; <label>:141                                     ; preds = %138
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [6 x i16], [6 x i16]* @g_19, i32 0, i64 %143
  %145 = load i16, i16* %144, align 2, !tbaa !10
  %146 = sext i16 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %147)
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

; <label>:150                                     ; preds = %141
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %151)
  br label %153

; <label>:153                                     ; preds = %150, %141
  br label %154

; <label>:154                                     ; preds = %153
  %155 = load i32, i32* %i, align 4, !tbaa !1
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %i, align 4, !tbaa !1
  br label %138

; <label>:157                                     ; preds = %138
  %158 = load volatile i32, i32* @g_20, align 4, !tbaa !1
  %159 = zext i32 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %160)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %189, %157
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 10
  br i1 %163, label %164, label %192

; <label>:164                                     ; preds = %161
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %165

; <label>:165                                     ; preds = %185, %164
  %166 = load i32, i32* %j, align 4, !tbaa !1
  %167 = icmp slt i32 %166, 6
  br i1 %167, label %168, label %188

; <label>:168                                     ; preds = %165
  %169 = load i32, i32* %j, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %i, align 4, !tbaa !1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [10 x [6 x i32]], [10 x [6 x i32]]* @g_34, i32 0, i64 %172
  %174 = getelementptr inbounds [6 x i32], [6 x i32]* %173, i32 0, i64 %170
  %175 = load i32, i32* %174, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %177)
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

; <label>:180                                     ; preds = %168
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = load i32, i32* %j, align 4, !tbaa !1
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %181, i32 %182)
  br label %184

; <label>:184                                     ; preds = %180, %168
  br label %185

; <label>:185                                     ; preds = %184
  %186 = load i32, i32* %j, align 4, !tbaa !1
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %j, align 4, !tbaa !1
  br label %165

; <label>:188                                     ; preds = %165
  br label %189

; <label>:189                                     ; preds = %188
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %i, align 4, !tbaa !1
  br label %161

; <label>:192                                     ; preds = %161
  %193 = load i32, i32* @g_35, align 4, !tbaa !1
  %194 = sext i32 %193 to i64
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %195)
  %196 = load i8, i8* @g_67, align 1, !tbaa !9
  %197 = sext i8 %196 to i64
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %198)
  %199 = load i8, i8* @g_69, align 1, !tbaa !9
  %200 = zext i8 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %201)
  %202 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 8, !tbaa !7
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* bitcast (%union.U0* @g_74 to i32*), align 4, !tbaa !1
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 %206)
  %207 = load i32, i32* bitcast (%union.U0* @g_74 to i32*), align 8
  %208 = shl i32 %207, 3
  %209 = ashr i32 %208, 3
  %210 = sext i32 %209 to i64
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 %211)
  %212 = load i16, i16* @g_89, align 2, !tbaa !10
  %213 = zext i16 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %214)
  %215 = load i32, i32* @g_92, align 4, !tbaa !1
  %216 = zext i32 %215 to i64
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 %217)
  %218 = load i32, i32* @g_127, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %220)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %221

; <label>:221                                     ; preds = %261, %192
  %222 = load i32, i32* %i, align 4, !tbaa !1
  %223 = icmp slt i32 %222, 9
  br i1 %223, label %224, label %264

; <label>:224                                     ; preds = %221
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %225

; <label>:225                                     ; preds = %257, %224
  %226 = load i32, i32* %j, align 4, !tbaa !1
  %227 = icmp slt i32 %226, 7
  br i1 %227, label %228, label %260

; <label>:228                                     ; preds = %225
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %229

; <label>:229                                     ; preds = %253, %228
  %230 = load i32, i32* %k, align 4, !tbaa !1
  %231 = icmp slt i32 %230, 4
  br i1 %231, label %232, label %256

; <label>:232                                     ; preds = %229
  %233 = load i32, i32* %k, align 4, !tbaa !1
  %234 = sext i32 %233 to i64
  %235 = load i32, i32* %j, align 4, !tbaa !1
  %236 = sext i32 %235 to i64
  %237 = load i32, i32* %i, align 4, !tbaa !1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [9 x [7 x [4 x i16]]], [9 x [7 x [4 x i16]]]* @g_134, i32 0, i64 %238
  %240 = getelementptr inbounds [7 x [4 x i16]], [7 x [4 x i16]]* %239, i32 0, i64 %236
  %241 = getelementptr inbounds [4 x i16], [4 x i16]* %240, i32 0, i64 %234
  %242 = load i16, i16* %241, align 2, !tbaa !10
  %243 = zext i16 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

; <label>:247                                     ; preds = %232
  %248 = load i32, i32* %i, align 4, !tbaa !1
  %249 = load i32, i32* %j, align 4, !tbaa !1
  %250 = load i32, i32* %k, align 4, !tbaa !1
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 %248, i32 %249, i32 %250)
  br label %252

; <label>:252                                     ; preds = %247, %232
  br label %253

; <label>:253                                     ; preds = %252
  %254 = load i32, i32* %k, align 4, !tbaa !1
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %k, align 4, !tbaa !1
  br label %229

; <label>:256                                     ; preds = %229
  br label %257

; <label>:257                                     ; preds = %256
  %258 = load i32, i32* %j, align 4, !tbaa !1
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %j, align 4, !tbaa !1
  br label %225

; <label>:260                                     ; preds = %225
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %i, align 4, !tbaa !1
  br label %221

; <label>:264                                     ; preds = %221
  %265 = load i16, i16* @g_136, align 2, !tbaa !10
  %266 = zext i16 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %267)
  %268 = load i64, i64* @g_142, align 8, !tbaa !7
  %269 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %269)
  %270 = load i16, i16* @g_165, align 2, !tbaa !10
  %271 = sext i16 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %272)
  %273 = load volatile i8, i8* @g_166, align 1, !tbaa !9
  %274 = zext i8 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %275)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:276                                     ; preds = %292, %264
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = icmp slt i32 %277, 5
  br i1 %278, label %279, label %295

; <label>:279                                     ; preds = %276
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [5 x i8], [5 x i8]* @g_270, i32 0, i64 %281
  %283 = load i8, i8* %282, align 1, !tbaa !9
  %284 = sext i8 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %285)
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

; <label>:288                                     ; preds = %279
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %289)
  br label %291

; <label>:291                                     ; preds = %288, %279
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:295                                     ; preds = %276
  %296 = load volatile i32, i32* @g_272, align 4, !tbaa !1
  %297 = sext i32 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %298)
  %299 = load i32, i32* @g_310, align 4, !tbaa !1
  %300 = zext i32 %299 to i64
  %301 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %301)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %302

; <label>:302                                     ; preds = %317, %295
  %303 = load i32, i32* %i, align 4, !tbaa !1
  %304 = icmp slt i32 %303, 4
  br i1 %304, label %305, label %320

; <label>:305                                     ; preds = %302
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [4 x i64], [4 x i64]* @g_312, i32 0, i64 %307
  %309 = load i64, i64* %308, align 8, !tbaa !7
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %310)
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %316

; <label>:313                                     ; preds = %305
  %314 = load i32, i32* %i, align 4, !tbaa !1
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %314)
  br label %316

; <label>:316                                     ; preds = %313, %305
  br label %317

; <label>:317                                     ; preds = %316
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %i, align 4, !tbaa !1
  br label %302

; <label>:320                                     ; preds = %302
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:321                                     ; preds = %349, %320
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = icmp slt i32 %322, 6
  br i1 %323, label %324, label %352

; <label>:324                                     ; preds = %321
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %325

; <label>:325                                     ; preds = %345, %324
  %326 = load i32, i32* %j, align 4, !tbaa !1
  %327 = icmp slt i32 %326, 8
  br i1 %327, label %328, label %348

; <label>:328                                     ; preds = %325
  %329 = load i32, i32* %j, align 4, !tbaa !1
  %330 = sext i32 %329 to i64
  %331 = load i32, i32* %i, align 4, !tbaa !1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* @g_338, i32 0, i64 %332
  %334 = getelementptr inbounds [8 x i32], [8 x i32]* %333, i32 0, i64 %330
  %335 = load i32, i32* %334, align 4, !tbaa !1
  %336 = zext i32 %335 to i64
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %336, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 %337)
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %344

; <label>:340                                     ; preds = %328
  %341 = load i32, i32* %i, align 4, !tbaa !1
  %342 = load i32, i32* %j, align 4, !tbaa !1
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 %341, i32 %342)
  br label %344

; <label>:344                                     ; preds = %340, %328
  br label %345

; <label>:345                                     ; preds = %344
  %346 = load i32, i32* %j, align 4, !tbaa !1
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %j, align 4, !tbaa !1
  br label %325

; <label>:348                                     ; preds = %325
  br label %349

; <label>:349                                     ; preds = %348
  %350 = load i32, i32* %i, align 4, !tbaa !1
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %i, align 4, !tbaa !1
  br label %321

; <label>:352                                     ; preds = %321
  %353 = load i16, i16* @g_339, align 2, !tbaa !10
  %354 = zext i16 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %355)
  %356 = load volatile i8, i8* @g_396, align 1, !tbaa !9
  %357 = zext i8 %356 to i64
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %357, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %358)
  %359 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_467, i32 0, i32 0), align 8, !tbaa !7
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %359, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %360)
  %361 = load volatile i32, i32* bitcast (%union.U0* @g_467 to i32*), align 4, !tbaa !1
  %362 = sext i32 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %363)
  %364 = load volatile i32, i32* bitcast (%union.U0* @g_467 to i32*), align 8
  %365 = shl i32 %364, 3
  %366 = ashr i32 %365, 3
  %367 = sext i32 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* @g_577, align 4, !tbaa !1
  %370 = sext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %371)
  %372 = load i32, i32* @g_578, align 4, !tbaa !1
  %373 = sext i32 %372 to i64
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %373, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %374)
  %375 = load i32, i32* @g_579, align 4, !tbaa !1
  %376 = sext i32 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %377)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %378

; <label>:378                                     ; preds = %418, %352
  %379 = load i32, i32* %i, align 4, !tbaa !1
  %380 = icmp slt i32 %379, 4
  br i1 %380, label %381, label %421

; <label>:381                                     ; preds = %378
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %382

; <label>:382                                     ; preds = %414, %381
  %383 = load i32, i32* %j, align 4, !tbaa !1
  %384 = icmp slt i32 %383, 4
  br i1 %384, label %385, label %417

; <label>:385                                     ; preds = %382
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %386

; <label>:386                                     ; preds = %410, %385
  %387 = load i32, i32* %k, align 4, !tbaa !1
  %388 = icmp slt i32 %387, 2
  br i1 %388, label %389, label %413

; <label>:389                                     ; preds = %386
  %390 = load i32, i32* %k, align 4, !tbaa !1
  %391 = sext i32 %390 to i64
  %392 = load i32, i32* %j, align 4, !tbaa !1
  %393 = sext i32 %392 to i64
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [4 x [4 x [2 x i8]]], [4 x [4 x [2 x i8]]]* @g_644, i32 0, i64 %395
  %397 = getelementptr inbounds [4 x [2 x i8]], [4 x [2 x i8]]* %396, i32 0, i64 %393
  %398 = getelementptr inbounds [2 x i8], [2 x i8]* %397, i32 0, i64 %391
  %399 = load i8, i8* %398, align 1, !tbaa !9
  %400 = zext i8 %399 to i64
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %401)
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %409

; <label>:404                                     ; preds = %389
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %406 = load i32, i32* %j, align 4, !tbaa !1
  %407 = load i32, i32* %k, align 4, !tbaa !1
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 %405, i32 %406, i32 %407)
  br label %409

; <label>:409                                     ; preds = %404, %389
  br label %410

; <label>:410                                     ; preds = %409
  %411 = load i32, i32* %k, align 4, !tbaa !1
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %k, align 4, !tbaa !1
  br label %386

; <label>:413                                     ; preds = %386
  br label %414

; <label>:414                                     ; preds = %413
  %415 = load i32, i32* %j, align 4, !tbaa !1
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %j, align 4, !tbaa !1
  br label %382

; <label>:417                                     ; preds = %382
  br label %418

; <label>:418                                     ; preds = %417
  %419 = load i32, i32* %i, align 4, !tbaa !1
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %i, align 4, !tbaa !1
  br label %378

; <label>:421                                     ; preds = %378
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %422

; <label>:422                                     ; preds = %437, %421
  %423 = load i32, i32* %i, align 4, !tbaa !1
  %424 = icmp slt i32 %423, 5
  br i1 %424, label %425, label %440

; <label>:425                                     ; preds = %422
  %426 = load i32, i32* %i, align 4, !tbaa !1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [5 x i64], [5 x i64]* @g_781, i32 0, i64 %427
  %429 = load volatile i64, i64* %428, align 8, !tbaa !7
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %429, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %430)
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %436

; <label>:433                                     ; preds = %425
  %434 = load i32, i32* %i, align 4, !tbaa !1
  %435 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %434)
  br label %436

; <label>:436                                     ; preds = %433, %425
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %i, align 4, !tbaa !1
  br label %422

; <label>:440                                     ; preds = %422
  %441 = load i32, i32* @g_793, align 4, !tbaa !1
  %442 = zext i32 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %443)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %444

; <label>:444                                     ; preds = %459, %440
  %445 = load i32, i32* %i, align 4, !tbaa !1
  %446 = icmp slt i32 %445, 7
  br i1 %446, label %447, label %462

; <label>:447                                     ; preds = %444
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [7 x i64], [7 x i64]* @g_929, i32 0, i64 %449
  %451 = load i64, i64* %450, align 8, !tbaa !7
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %452)
  %453 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %458

; <label>:455                                     ; preds = %447
  %456 = load i32, i32* %i, align 4, !tbaa !1
  %457 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %456)
  br label %458

; <label>:458                                     ; preds = %455, %447
  br label %459

; <label>:459                                     ; preds = %458
  %460 = load i32, i32* %i, align 4, !tbaa !1
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %i, align 4, !tbaa !1
  br label %444

; <label>:462                                     ; preds = %444
  %463 = load i64, i64* @g_956, align 8, !tbaa !7
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %463, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %464)
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 %465)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %466

; <label>:466                                     ; preds = %506, %462
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = icmp slt i32 %467, 4
  br i1 %468, label %469, label %509

; <label>:469                                     ; preds = %466
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %470

; <label>:470                                     ; preds = %502, %469
  %471 = load i32, i32* %j, align 4, !tbaa !1
  %472 = icmp slt i32 %471, 3
  br i1 %472, label %473, label %505

; <label>:473                                     ; preds = %470
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %474

; <label>:474                                     ; preds = %498, %473
  %475 = load i32, i32* %k, align 4, !tbaa !1
  %476 = icmp slt i32 %475, 7
  br i1 %476, label %477, label %501

; <label>:477                                     ; preds = %474
  %478 = load i32, i32* %k, align 4, !tbaa !1
  %479 = sext i32 %478 to i64
  %480 = load i32, i32* %j, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = load i32, i32* %i, align 4, !tbaa !1
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [4 x [3 x [7 x i32]]], [4 x [3 x [7 x i32]]]* @g_986, i32 0, i64 %483
  %485 = getelementptr inbounds [3 x [7 x i32]], [3 x [7 x i32]]* %484, i32 0, i64 %481
  %486 = getelementptr inbounds [7 x i32], [7 x i32]* %485, i32 0, i64 %479
  %487 = load i32, i32* %486, align 4, !tbaa !1
  %488 = zext i32 %487 to i64
  %489 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %488, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i32 %489)
  %490 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %497

; <label>:492                                     ; preds = %477
  %493 = load i32, i32* %i, align 4, !tbaa !1
  %494 = load i32, i32* %j, align 4, !tbaa !1
  %495 = load i32, i32* %k, align 4, !tbaa !1
  %496 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 %493, i32 %494, i32 %495)
  br label %497

; <label>:497                                     ; preds = %492, %477
  br label %498

; <label>:498                                     ; preds = %497
  %499 = load i32, i32* %k, align 4, !tbaa !1
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %k, align 4, !tbaa !1
  br label %474

; <label>:501                                     ; preds = %474
  br label %502

; <label>:502                                     ; preds = %501
  %503 = load i32, i32* %j, align 4, !tbaa !1
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %j, align 4, !tbaa !1
  br label %470

; <label>:505                                     ; preds = %470
  br label %506

; <label>:506                                     ; preds = %505
  %507 = load i32, i32* %i, align 4, !tbaa !1
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %i, align 4, !tbaa !1
  br label %466

; <label>:509                                     ; preds = %466
  %510 = load i16, i16* @g_1037, align 2, !tbaa !10
  %511 = sext i16 %510 to i64
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %511, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %512)
  %513 = load i8, i8* @g_1277, align 1, !tbaa !9
  %514 = sext i8 %513 to i64
  %515 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %514, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %515)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %516

; <label>:516                                     ; preds = %532, %509
  %517 = load i32, i32* %i, align 4, !tbaa !1
  %518 = icmp slt i32 %517, 4
  br i1 %518, label %519, label %535

; <label>:519                                     ; preds = %516
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [4 x i32], [4 x i32]* @g_1300, i32 0, i64 %521
  %523 = load volatile i32, i32* %522, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %524, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 %525)
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %531

; <label>:528                                     ; preds = %519
  %529 = load i32, i32* %i, align 4, !tbaa !1
  %530 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %529)
  br label %531

; <label>:531                                     ; preds = %528, %519
  br label %532

; <label>:532                                     ; preds = %531
  %533 = load i32, i32* %i, align 4, !tbaa !1
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %i, align 4, !tbaa !1
  br label %516

; <label>:535                                     ; preds = %516
  %536 = load i16, i16* @g_1339, align 2, !tbaa !10
  %537 = zext i16 %536 to i64
  %538 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %537, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %538)
  %539 = load i8, i8* @g_1399, align 1, !tbaa !9
  %540 = zext i8 %539 to i64
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %541)
  %542 = load i8, i8* @g_1408, align 1, !tbaa !9
  %543 = sext i8 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %544)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %545

; <label>:545                                     ; preds = %561, %535
  %546 = load i32, i32* %i, align 4, !tbaa !1
  %547 = icmp slt i32 %546, 7
  br i1 %547, label %548, label %564

; <label>:548                                     ; preds = %545
  %549 = load i32, i32* %i, align 4, !tbaa !1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [7 x i32], [7 x i32]* @g_1457, i32 0, i64 %550
  %552 = load i32, i32* %551, align 4, !tbaa !1
  %553 = sext i32 %552 to i64
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 %554)
  %555 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %560

; <label>:557                                     ; preds = %548
  %558 = load i32, i32* %i, align 4, !tbaa !1
  %559 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 %558)
  br label %560

; <label>:560                                     ; preds = %557, %548
  br label %561

; <label>:561                                     ; preds = %560
  %562 = load i32, i32* %i, align 4, !tbaa !1
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %i, align 4, !tbaa !1
  br label %545

; <label>:564                                     ; preds = %545
  %565 = load volatile i64, i64* @g_1462, align 8, !tbaa !7
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %565, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %566)
  %567 = load i8, i8* @g_1491, align 1, !tbaa !9
  %568 = zext i8 %567 to i64
  %569 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %568, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %569)
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %570)
  %571 = load volatile i32, i32* @g_1941, align 4, !tbaa !1
  %572 = zext i32 %571 to i64
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %573)
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 65535, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %574)
  %575 = load volatile i8, i8* @g_2125, align 1, !tbaa !9
  %576 = sext i8 %575 to i64
  %577 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %576, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %577)
  %578 = load volatile i64, i64* @g_2244, align 8, !tbaa !7
  %579 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %578, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %579)
  %580 = load i32, i32* @g_2257, align 4, !tbaa !1
  %581 = sext i32 %580 to i64
  %582 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %581, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %582)
  %583 = load volatile i8, i8* @g_2296, align 1, !tbaa !9
  %584 = zext i8 %583 to i64
  %585 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %584, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %585)
  %586 = load volatile i32, i32* @g_2299, align 4, !tbaa !1
  %587 = sext i32 %586 to i64
  %588 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %587, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %588)
  %589 = load volatile i32, i32* @g_2351, align 4, !tbaa !1
  %590 = sext i32 %589 to i64
  %591 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %590, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %591)
  %592 = load i64, i64* @g_2360, align 8, !tbaa !7
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %592, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %593)
  %594 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %595 = zext i32 %594 to i64
  %596 = xor i64 %595, 4294967295
  %597 = trunc i64 %596 to i32
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %597, i32 %598)
  %599 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %599) #1
  %600 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %600) #1
  %601 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %601) #1
  %602 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %602) #1
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
define internal i32 @func_1() #0 {
  %l_2 = alloca [7 x %union.U0], align 16
  %l_2153 = alloca [5 x i32], align 16
  %l_2165 = alloca i8****, align 8
  %l_2167 = alloca i64, align 8
  %l_2169 = alloca i32*, align 8
  %l_2171 = alloca i32, align 4
  %l_2175 = alloca i32*, align 8
  %l_2200 = alloca i64, align 8
  %l_2204 = alloca i64****, align 8
  %l_2208 = alloca i8, align 1
  %l_2221 = alloca i32, align 4
  %l_2246 = alloca i8, align 1
  %i = alloca i32, align 4
  %l_2158 = alloca i64, align 8
  %l_2166 = alloca i64, align 8
  %l_2168 = alloca i8, align 1
  %l_2170 = alloca i32, align 4
  %l_2172 = alloca i32*, align 8
  %l_2173 = alloca i32**, align 8
  %l_2174 = alloca [9 x i32**], align 16
  %l_2176 = alloca i64, align 8
  %l_2199 = alloca i32, align 4
  %l_2219 = alloca i32, align 4
  %l_2220 = alloca i32, align 4
  %l_2275 = alloca i8****, align 8
  %l_2282 = alloca i32, align 4
  %l_2284 = alloca i64, align 8
  %l_2289 = alloca i32*, align 8
  %l_2309 = alloca i32, align 4
  %l_2312 = alloca [3 x i16], align 2
  %l_2342 = alloca i16, align 2
  %l_2347 = alloca i32****, align 8
  %l_2353 = alloca [2 x [4 x [10 x i16]]], align 16
  %l_2358 = alloca i64**, align 8
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast [7 x %union.U0]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #1
  %2 = bitcast [7 x %union.U0]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([7 x %union.U0]* @func_1.l_2 to i8*), i64 56, i32 16, i1 false)
  %3 = bitcast [5 x i32]* %l_2153 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %3) #1
  %4 = bitcast [5 x i32]* %l_2153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([5 x i32]* @func_1.l_2153 to i8*), i64 20, i32 16, i1 false)
  %5 = bitcast i8***** %l_2165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8**** @g_502, i8***** %l_2165, align 8, !tbaa !5
  %6 = bitcast i64* %l_2167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 -5579828620987406760, i64* %l_2167, align 8, !tbaa !7
  %7 = bitcast i32** %l_2169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* getelementptr inbounds ([6 x [8 x i32]], [6 x [8 x i32]]* @g_338, i32 0, i64 4, i64 2), i32** %l_2169, align 8, !tbaa !5
  %8 = bitcast i32* %l_2171 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 330065991, i32* %l_2171, align 4, !tbaa !1
  %9 = bitcast i32** %l_2175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2153, i32 0, i64 0
  store i32* %10, i32** %l_2175, align 8, !tbaa !5
  %11 = bitcast i64* %l_2200 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 1, i64* %l_2200, align 8, !tbaa !7
  %12 = bitcast i64***** %l_2204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64**** @g_2131, i64***** %l_2204, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2208) #1
  store i8 25, i8* %l_2208, align 1, !tbaa !9
  %13 = bitcast i32* %l_2221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %l_2221, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_2246) #1
  store i8 1, i8* %l_2246, align 1, !tbaa !9
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* getelementptr inbounds ([8 x [10 x i32]], [8 x [10 x i32]]* @g_6, i32 0, i64 2, i64 4), align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %78, %0
  %16 = load i32, i32* getelementptr inbounds ([8 x [10 x i32]], [8 x [10 x i32]]* @g_6, i32 0, i64 2, i64 4), align 4, !tbaa !1
  %17 = icmp sle i32 %16, 6
  br i1 %17, label %18, label %81

; <label>:18                                      ; preds = %15
  %19 = bitcast i64* %l_2158 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 -1, i64* %l_2158, align 8, !tbaa !7
  %20 = bitcast i64* %l_2166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64 1858491722257593612, i64* %l_2166, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_2168) #1
  store i8 -121, i8* %l_2168, align 1, !tbaa !9
  %21 = bitcast i32* %l_2170 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 -9, i32* %l_2170, align 4, !tbaa !1
  %22 = bitcast i32** %l_2172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32* null, i32** %l_2172, align 8, !tbaa !5
  %23 = bitcast i32*** %l_2173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32** getelementptr inbounds ([10 x i32*], [10 x i32*]* @g_800, i32 0, i64 7), i32*** %l_2173, align 8, !tbaa !5
  %24 = bitcast [9 x i32**]* %l_2174 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %24) #1
  %25 = bitcast [9 x i32**]* %l_2174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([9 x i32**]* @func_1.l_2174 to i8*), i64 72, i32 16, i1 false)
  %26 = bitcast i64* %l_2176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i64 -1, i64* %l_2176, align 8, !tbaa !7
  %27 = bitcast i32* %l_2199 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 -1709905065, i32* %l_2199, align 4, !tbaa !1
  %28 = bitcast i32* %l_2219 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 3, i32* %l_2219, align 4, !tbaa !1
  %29 = bitcast i32* %l_2220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 -2133137343, i32* %l_2220, align 4, !tbaa !1
  %30 = bitcast i8***** %l_2275 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i8**** @g_1005, i8***** %l_2275, align 8, !tbaa !5
  %31 = bitcast i32* %l_2282 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 1354232923, i32* %l_2282, align 4, !tbaa !1
  %32 = bitcast i64* %l_2284 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i64 8, i64* %l_2284, align 8, !tbaa !7
  %33 = bitcast i32** %l_2289 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i32* null, i32** %l_2289, align 8, !tbaa !5
  %34 = bitcast i32* %l_2309 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -1513195946, i32* %l_2309, align 4, !tbaa !1
  %35 = bitcast [3 x i16]* %l_2312 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %35) #1
  %36 = bitcast i16* %l_2342 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %36) #1
  store i16 0, i16* %l_2342, align 2, !tbaa !10
  %37 = bitcast i32***** %l_2347 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i32**** @g_574, i32***** %l_2347, align 8, !tbaa !5
  %38 = bitcast [2 x [4 x [10 x i16]]]* %l_2353 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %38) #1
  %39 = bitcast [2 x [4 x [10 x i16]]]* %l_2353 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast ([2 x [4 x [10 x i16]]]* @func_1.l_2353 to i8*), i64 160, i32 16, i1 false)
  %40 = bitcast i64*** %l_2358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i64** @g_955, i64*** %l_2358, align 8, !tbaa !5
  %41 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %44

; <label>:44                                      ; preds = %51, %18
  %45 = load i32, i32* %i1, align 4, !tbaa !1
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %54

; <label>:47                                      ; preds = %44
  %48 = load i32, i32* %i1, align 4, !tbaa !1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i16], [3 x i16]* %l_2312, i32 0, i64 %49
  store i16 7401, i16* %50, align 2, !tbaa !10
  br label %51

; <label>:51                                      ; preds = %47
  %52 = load i32, i32* %i1, align 4, !tbaa !1
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %i1, align 4, !tbaa !1
  br label %44

; <label>:54                                      ; preds = %44
  %55 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i64*** %l_2358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast [2 x [4 x [10 x i16]]]* %l_2353 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %59) #1
  %60 = bitcast i32***** %l_2347 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i16* %l_2342 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %61) #1
  %62 = bitcast [3 x i16]* %l_2312 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %62) #1
  %63 = bitcast i32* %l_2309 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32** %l_2289 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i64* %l_2284 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %l_2282 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i8***** %l_2275 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %l_2220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %l_2219 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %l_2199 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i64* %l_2176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast [9 x i32**]* %l_2174 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %72) #1
  %73 = bitcast i32*** %l_2173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32** %l_2172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %l_2170 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2168) #1
  %76 = bitcast i64* %l_2166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i64* %l_2158 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  br label %78

; <label>:78                                      ; preds = %54
  %79 = load i32, i32* getelementptr inbounds ([8 x [10 x i32]], [8 x [10 x i32]]* @g_6, i32 0, i64 2, i64 4), align 4, !tbaa !1
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* getelementptr inbounds ([8 x [10 x i32]], [8 x [10 x i32]]* @g_6, i32 0, i64 2, i64 4), align 4, !tbaa !1
  br label %15

; <label>:81                                      ; preds = %15
  %82 = load i32*, i32** %l_2175, align 8, !tbaa !5
  %83 = load i32, i32* %82, align 4, !tbaa !1
  %84 = load i32*, i32** %l_2175, align 8, !tbaa !5
  store i32 %83, i32* %84, align 4, !tbaa !1
  %85 = load i32**, i32*** @g_575, align 8, !tbaa !5
  %86 = load i32*, i32** %85, align 8, !tbaa !5
  %87 = load i32, i32* %86, align 4, !tbaa !1
  %88 = and i32 %87, %83
  store i32 %88, i32* %86, align 4, !tbaa !1
  %89 = load i32****, i32***** @g_573, align 8, !tbaa !5
  %90 = load i32***, i32**** %89, align 8, !tbaa !5
  %91 = load i32**, i32*** %90, align 8, !tbaa !5
  %92 = load i32*, i32** %91, align 8, !tbaa !5
  %93 = load i32, i32* %92, align 4, !tbaa !1
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2246) #1
  %95 = bitcast i32* %l_2221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2208) #1
  %96 = bitcast i64***** %l_2204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i64* %l_2200 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32** %l_2175 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %l_2171 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32** %l_2169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i64* %l_2167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i8***** %l_2165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast [5 x i32]* %l_2153 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %103) #1
  %104 = bitcast [7 x %union.U0]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %104) #1
  ret i32 %93
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.66, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
