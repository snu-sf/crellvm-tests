; ModuleID = '00597.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_5 = internal global i32 -1199487283, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_46 = internal global [9 x [6 x [4 x i64]]] [[6 x [4 x i64]] [[4 x i64] [i64 0, i64 -1, i64 9041379330347882778, i64 -7], [4 x i64] [i64 0, i64 -1, i64 8310727633971029892, i64 7963111043335697840], [4 x i64] [i64 -2, i64 -7, i64 -7, i64 -2], [4 x i64] [i64 0, i64 4, i64 -7, i64 -7], [4 x i64] [i64 -2, i64 6195144233690585286, i64 8310727633971029892, i64 0], [4 x i64] [i64 0, i64 -7, i64 9041379330347882778, i64 0]], [6 x [4 x i64]] [[4 x i64] [i64 0, i64 6195144233690585286, i64 -1, i64 -7], [4 x i64] [i64 7963111043335697840, i64 4, i64 8310727633971029892, i64 -2], [4 x i64] [i64 7963111043335697840, i64 -7, i64 -1, i64 7963111043335697840], [4 x i64] [i64 0, i64 -1, i64 9041379330347882778, i64 -7], [4 x i64] [i64 0, i64 -1, i64 8310727633971029892, i64 7963111043335697840], [4 x i64] [i64 -2, i64 -7, i64 8310727633971029892, i64 0]], [6 x [4 x i64]] [[4 x i64] [i64 588527384424823739, i64 9041379330347882778, i64 8310727633971029892, i64 8509726293818467878], [4 x i64] [i64 0, i64 -1, i64 4, i64 -7], [4 x i64] [i64 -7, i64 8310727633971029892, i64 -8, i64 -7], [4 x i64] [i64 588527384424823739, i64 -1, i64 -5130124900617935294, i64 8509726293818467878], [4 x i64] [i64 0, i64 9041379330347882778, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 -5130124900617935294, i64 0]], [6 x [4 x i64]] [[4 x i64] [i64 588527384424823739, i64 -7, i64 -8, i64 8509726293818467878], [4 x i64] [i64 -7, i64 -7, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 8310727633971029892, i64 0], [4 x i64] [i64 588527384424823739, i64 9041379330347882778, i64 8310727633971029892, i64 8509726293818467878], [4 x i64] [i64 0, i64 -1, i64 4, i64 -7], [4 x i64] [i64 -7, i64 8310727633971029892, i64 -8, i64 -7]], [6 x [4 x i64]] [[4 x i64] [i64 588527384424823739, i64 -1, i64 -5130124900617935294, i64 8509726293818467878], [4 x i64] [i64 0, i64 9041379330347882778, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 -5130124900617935294, i64 0], [4 x i64] [i64 588527384424823739, i64 -7, i64 -8, i64 8509726293818467878], [4 x i64] [i64 -7, i64 -7, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 8310727633971029892, i64 0]], [6 x [4 x i64]] [[4 x i64] [i64 588527384424823739, i64 9041379330347882778, i64 8310727633971029892, i64 8509726293818467878], [4 x i64] [i64 0, i64 -1, i64 4, i64 -7], [4 x i64] [i64 -7, i64 8310727633971029892, i64 -8, i64 -7], [4 x i64] [i64 588527384424823739, i64 -1, i64 -5130124900617935294, i64 8509726293818467878], [4 x i64] [i64 0, i64 9041379330347882778, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 -5130124900617935294, i64 0]], [6 x [4 x i64]] [[4 x i64] [i64 588527384424823739, i64 -7, i64 -8, i64 8509726293818467878], [4 x i64] [i64 -7, i64 -7, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 8310727633971029892, i64 0], [4 x i64] [i64 588527384424823739, i64 9041379330347882778, i64 8310727633971029892, i64 8509726293818467878], [4 x i64] [i64 0, i64 -1, i64 4, i64 -7], [4 x i64] [i64 -7, i64 8310727633971029892, i64 -8, i64 -7]], [6 x [4 x i64]] [[4 x i64] [i64 588527384424823739, i64 -1, i64 -5130124900617935294, i64 8509726293818467878], [4 x i64] [i64 0, i64 9041379330347882778, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 -5130124900617935294, i64 0], [4 x i64] [i64 588527384424823739, i64 -7, i64 -8, i64 8509726293818467878], [4 x i64] [i64 -7, i64 -7, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 8310727633971029892, i64 0]], [6 x [4 x i64]] [[4 x i64] [i64 588527384424823739, i64 9041379330347882778, i64 8310727633971029892, i64 8509726293818467878], [4 x i64] [i64 0, i64 -1, i64 4, i64 -7], [4 x i64] [i64 -7, i64 8310727633971029892, i64 -8, i64 -7], [4 x i64] [i64 588527384424823739, i64 -1, i64 -5130124900617935294, i64 8509726293818467878], [4 x i64] [i64 0, i64 9041379330347882778, i64 4, i64 0], [4 x i64] [i64 0, i64 8310727633971029892, i64 -5130124900617935294, i64 0]]], align 16
@.str.3 = private unnamed_addr constant [14 x i8] c"g_46[i][j][k]\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_49 = internal global i64 -1, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"g_49\00", align 1
@g_60 = internal global i8 2, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"g_60\00", align 1
@g_72 = internal global i8 8, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"g_72\00", align 1
@g_74 = internal global [5 x [6 x [8 x i32]]] [[6 x [8 x i32]] [[8 x i32] [i32 -364632160, i32 0, i32 -989156845, i32 -1, i32 -1333582415, i32 1, i32 181620622, i32 -3], [8 x i32] [i32 -3, i32 -1, i32 0, i32 3, i32 3, i32 0, i32 -1, i32 -3], [8 x i32] [i32 -989156845, i32 9, i32 -782985997, i32 0, i32 -1, i32 0, i32 -467871415, i32 1697713895], [8 x i32] [i32 -467871415, i32 -3, i32 -1333582415, i32 -2036231790, i32 0, i32 0, i32 947821168, i32 -1], [8 x i32] [i32 0, i32 9, i32 -3, i32 1, i32 9, i32 0, i32 4, i32 -1112811951], [8 x i32] [i32 -1, i32 -1, i32 1, i32 -135680856, i32 1, i32 1, i32 0, i32 947821168]], [6 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 6, i32 -645149265, i32 1, i32 -645149265, i32 6, i32 0], [8 x i32] [i32 0, i32 -1, i32 1, i32 9, i32 -1, i32 -1650065950, i32 0, i32 -647656796], [8 x i32] [i32 -1333582415, i32 1255131196, i32 9, i32 1697713895, i32 0, i32 -782985997, i32 0, i32 -1], [8 x i32] [i32 9, i32 1697713895, i32 1, i32 -1650065950, i32 -2036231790, i32 1, i32 6, i32 1805507518], [8 x i32] [i32 -2036231790, i32 1, i32 6, i32 1805507518, i32 -364632160, i32 0, i32 0, i32 -7], [8 x i32] [i32 1, i32 947821168, i32 1, i32 4, i32 -647656796, i32 -647656796, i32 4, i32 1]], [6 x [8 x i32]] [[8 x i32] [i32 -1, i32 -1, i32 -3, i32 -364632160, i32 1255131196, i32 4, i32 947821168, i32 1], [8 x i32] [i32 -1, i32 181620622, i32 -1333582415, i32 193734564, i32 -7, i32 1, i32 -467871415, i32 1], [8 x i32] [i32 181620622, i32 -1112811951, i32 -782985997, i32 -364632160, i32 6, i32 -1, i32 -1, i32 1], [8 x i32] [i32 1, i32 9, i32 0, i32 4, i32 -1112811951, i32 -1, i32 181620622, i32 -7], [8 x i32] [i32 -1, i32 6, i32 -989156845, i32 1805507518, i32 -135680856, i32 1255131196, i32 -135680856, i32 1805507518], [8 x i32] [i32 -3, i32 3, i32 -3, i32 -1650065950, i32 0, i32 -364632160, i32 193734564, i32 -1]], [6 x [8 x i32]] [[8 x i32] [i32 -1112811951, i32 1805507518, i32 -645149265, i32 1697713895, i32 -501287486, i32 9, i32 0, i32 -647656796], [8 x i32] [i32 -1112811951, i32 1, i32 -1, i32 9, i32 0, i32 -467871415, i32 -364632160, i32 0], [8 x i32] [i32 -3, i32 1805507518, i32 -1, i32 -782985997, i32 193734564, i32 0, i32 1, i32 -3], [8 x i32] [i32 0, i32 -7, i32 -989156845, i32 193734564, i32 -1, i32 -1112811951, i32 -1112811951, i32 -1], [8 x i32] [i32 -1, i32 1, i32 1, i32 -1, i32 947821168, i32 1697713895, i32 -1333582415, i32 -135680856], [8 x i32] [i32 1697713895, i32 1, i32 -1112811951, i32 9, i32 3, i32 1, i32 4, i32 1]], [6 x [8 x i32]] [[8 x i32] [i32 6, i32 1, i32 -2036231790, i32 -1650065950, i32 1, i32 1697713895, i32 9, i32 1], [8 x i32] [i32 -3, i32 1, i32 9, i32 0, i32 4, i32 -1112811951, i32 -1, i32 181620622], [8 x i32] [i32 0, i32 -7, i32 4, i32 -135680856, i32 -501287486, i32 0, i32 1, i32 0], [8 x i32] [i32 9, i32 1805507518, i32 193734564, i32 1805507518, i32 9, i32 1, i32 3, i32 0], [8 x i32] [i32 -989156845, i32 -1, i32 0, i32 1, i32 1255131196, i32 -645149265, i32 0, i32 1805507518], [8 x i32] [i32 0, i32 -647656796, i32 0, i32 -1112811951, i32 6, i32 -501287486, i32 3, i32 193734564]]], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"g_74[i][j][k]\00", align 1
@g_104 = internal global i16 -15534, align 2
@.str.9 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_108 = internal global i16 -17592, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_108\00", align 1
@g_111 = internal global i16 -28454, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_111\00", align 1
@g_138 = internal global i32 2085907735, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_138\00", align 1
@g_190 = internal global i32 599230296, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_190\00", align 1
@g_236 = internal global i32 -305976209, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_236\00", align 1
@g_258 = internal global [7 x %union.U0] [%union.U0 { i64 -6 }, %union.U0 { i64 -6 }, %union.U0 { i64 -4081557731958033342 }, %union.U0 { i64 -6 }, %union.U0 { i64 -6 }, %union.U0 { i64 -4081557731958033342 }, %union.U0 { i64 -6 }], align 16
@.str.15 = private unnamed_addr constant [12 x i8] c"g_258[i].f0\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"g_258[i].f1\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"g_258[i].f2\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"g_258[i].f3\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_277 = internal global i64 -1, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_277\00", align 1
@g_282 = internal global [6 x i64] [i64 1, i64 -7, i64 -7, i64 1, i64 -7, i64 -7], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"g_282[i]\00", align 1
@g_310 = internal global i64 8420428176600912604, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_310\00", align 1
@g_318 = internal global i64 2509830422838287238, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_318\00", align 1
@g_336 = internal global i8 17, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_336\00", align 1
@g_385 = internal global i64 2, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_385\00", align 1
@g_432 = internal global i16 -21604, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_432\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_451\00", align 1
@g_467 = internal global i32 -1842272636, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_467\00", align 1
@g_483 = internal global i8 118, align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"g_483\00", align 1
@g_605 = internal global i16 1, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_605\00", align 1
@g_638 = internal global %union.U0 { i64 3 }, align 8
@.str.31 = private unnamed_addr constant [9 x i8] c"g_638.f0\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"g_638.f1\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"g_638.f2\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"g_638.f3\00", align 1
@g_671 = internal global i64 5, align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"g_671\00", align 1
@g_709 = internal global i16 2, align 2
@.str.36 = private unnamed_addr constant [6 x i8] c"g_709\00", align 1
@g_735 = internal global i64 -1, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"g_735\00", align 1
@g_748 = internal global i32 -485711627, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_748\00", align 1
@g_755 = internal global i32 -2, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"g_755\00", align 1
@g_783 = internal global i64 1, align 8
@.str.40 = private unnamed_addr constant [6 x i8] c"g_783\00", align 1
@g_899 = internal global i16 22172, align 2
@.str.41 = private unnamed_addr constant [6 x i8] c"g_899\00", align 1
@g_983 = internal global [9 x [5 x i64]] [[5 x i64] [i64 5, i64 -1, i64 4, i64 -1, i64 5], [5 x i64] [i64 0, i64 8218227011657621205, i64 9, i64 1, i64 1], [5 x i64] [i64 0, i64 -1, i64 0, i64 2257938345189496493, i64 0], [5 x i64] [i64 0, i64 1, i64 8218227011657621205, i64 8218227011657621205, i64 1], [5 x i64] [i64 5, i64 2257938345189496493, i64 4, i64 2257938345189496493, i64 5], [5 x i64] [i64 1, i64 8218227011657621205, i64 8218227011657621205, i64 1, i64 0], [5 x i64] [i64 0, i64 2257938345189496493, i64 0, i64 -1, i64 0], [5 x i64] [i64 1, i64 1, i64 9, i64 8218227011657621205, i64 0], [5 x i64] [i64 5, i64 -1, i64 4, i64 -1, i64 5]], align 16
@.str.42 = private unnamed_addr constant [12 x i8] c"g_983[i][j]\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_988 = internal global [6 x [4 x i64]] [[4 x i64] [i64 8, i64 8, i64 6196635181899761651, i64 8], [4 x i64] [i64 8, i64 -5, i64 -5, i64 8], [4 x i64] [i64 -5, i64 8, i64 -5, i64 -5], [4 x i64] [i64 8, i64 8, i64 6196635181899761651, i64 8], [4 x i64] [i64 8, i64 -5, i64 -5, i64 8], [4 x i64] [i64 -5, i64 8, i64 -5, i64 -5]], align 16
@.str.44 = private unnamed_addr constant [12 x i8] c"g_988[i][j]\00", align 1
@g_1049 = internal global i32 -1988823941, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1049\00", align 1
@g_1080 = internal global i64 -1, align 8
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1080\00", align 1
@g_1081 = internal global [2 x i64] [i64 1, i64 1], align 16
@.str.47 = private unnamed_addr constant [10 x i8] c"g_1081[i]\00", align 1
@g_1121 = internal global [9 x i32] [i32 -1299822020, i32 -1299822020, i32 -1299822020, i32 -1299822020, i32 -1299822020, i32 -1299822020, i32 -1299822020, i32 -1299822020, i32 -1299822020], align 16
@.str.48 = private unnamed_addr constant [10 x i8] c"g_1121[i]\00", align 1
@g_1131 = internal global i32 0, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1131\00", align 1
@g_1195 = internal global i8 6, align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1195\00", align 1
@g_1217 = internal global i32 -37018326, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1217\00", align 1
@g_1227 = internal global i64 -5505790862101790971, align 8
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1227\00", align 1
@g_1257 = internal global i8 12, align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1257\00", align 1
@g_1389 = internal global i32 -2015517347, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1389\00", align 1
@g_1394 = internal global i32 0, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1394\00", align 1
@g_1991 = internal global i32 9, align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1991\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_2020\00", align 1
@g_2063 = internal global %union.U0 { i64 1 }, align 8
@.str.58 = private unnamed_addr constant [10 x i8] c"g_2063.f0\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_2063.f1\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"g_2063.f2\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"g_2063.f3\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 -1181091070, i32 0, i32 0, i32 -1181091070, i32 0], align 16
@g_66 = internal global i32* @g_3, align 8
@g_4 = internal global i32* @g_5, align 8
@g_1773 = internal global i8** @g_335, align 8
@g_335 = internal global i8* @g_336, align 8
@.str.62 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call zeroext i8 @func_1()
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_5, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %136, %89
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 9
  br i1 %99, label %100, label %139

; <label>:100                                     ; preds = %97
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:101                                     ; preds = %132, %100
  %102 = load i32, i32* %j, align 4, !tbaa !1
  %103 = icmp slt i32 %102, 6
  br i1 %103, label %104, label %135

; <label>:104                                     ; preds = %101
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %105

; <label>:105                                     ; preds = %128, %104
  %106 = load i32, i32* %k, align 4, !tbaa !1
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %131

; <label>:108                                     ; preds = %105
  %109 = load i32, i32* %k, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %j, align 4, !tbaa !1
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [9 x [6 x [4 x i64]]], [9 x [6 x [4 x i64]]]* @g_46, i32 0, i64 %114
  %116 = getelementptr inbounds [6 x [4 x i64]], [6 x [4 x i64]]* %115, i32 0, i64 %112
  %117 = getelementptr inbounds [4 x i64], [4 x i64]* %116, i32 0, i64 %110
  %118 = load i64, i64* %117, align 8, !tbaa !7
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %119)
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

; <label>:122                                     ; preds = %108
  %123 = load i32, i32* %i, align 4, !tbaa !1
  %124 = load i32, i32* %j, align 4, !tbaa !1
  %125 = load i32, i32* %k, align 4, !tbaa !1
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %123, i32 %124, i32 %125)
  br label %127

; <label>:127                                     ; preds = %122, %108
  br label %128

; <label>:128                                     ; preds = %127
  %129 = load i32, i32* %k, align 4, !tbaa !1
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %k, align 4, !tbaa !1
  br label %105

; <label>:131                                     ; preds = %105
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load i32, i32* %j, align 4, !tbaa !1
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %j, align 4, !tbaa !1
  br label %101

; <label>:135                                     ; preds = %101
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i32, i32* %i, align 4, !tbaa !1
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:139                                     ; preds = %97
  %140 = load i64, i64* @g_49, align 8, !tbaa !7
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %141)
  %142 = load i8, i8* @g_60, align 1, !tbaa !9
  %143 = zext i8 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %144)
  %145 = load i8, i8* @g_72, align 1, !tbaa !9
  %146 = sext i8 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %147)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:148                                     ; preds = %188, %139
  %149 = load i32, i32* %i, align 4, !tbaa !1
  %150 = icmp slt i32 %149, 5
  br i1 %150, label %151, label %191

; <label>:151                                     ; preds = %148
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %184, %151
  %153 = load i32, i32* %j, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 6
  br i1 %154, label %155, label %187

; <label>:155                                     ; preds = %152
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %180, %155
  %157 = load i32, i32* %k, align 4, !tbaa !1
  %158 = icmp slt i32 %157, 8
  br i1 %158, label %159, label %183

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* %k, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = sext i32 %162 to i64
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [5 x [6 x [8 x i32]]], [5 x [6 x [8 x i32]]]* @g_74, i32 0, i64 %165
  %167 = getelementptr inbounds [6 x [8 x i32]], [6 x [8 x i32]]* %166, i32 0, i64 %163
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %167, i32 0, i64 %161
  %169 = load i32, i32* %168, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %171)
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

; <label>:174                                     ; preds = %159
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = load i32, i32* %j, align 4, !tbaa !1
  %177 = load i32, i32* %k, align 4, !tbaa !1
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %175, i32 %176, i32 %177)
  br label %179

; <label>:179                                     ; preds = %174, %159
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %k, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %k, align 4, !tbaa !1
  br label %156

; <label>:183                                     ; preds = %156
  br label %184

; <label>:184                                     ; preds = %183
  %185 = load i32, i32* %j, align 4, !tbaa !1
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %j, align 4, !tbaa !1
  br label %152

; <label>:187                                     ; preds = %152
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %i, align 4, !tbaa !1
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %i, align 4, !tbaa !1
  br label %148

; <label>:191                                     ; preds = %148
  %192 = load i16, i16* @g_104, align 2, !tbaa !10
  %193 = zext i16 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %194)
  %195 = load i16, i16* @g_108, align 2, !tbaa !10
  %196 = sext i16 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %197)
  %198 = load i16, i16* @g_111, align 2, !tbaa !10
  %199 = sext i16 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %200)
  %201 = load i32, i32* @g_138, align 4, !tbaa !1
  %202 = zext i32 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* @g_190, align 4, !tbaa !1
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %206)
  %207 = load i32, i32* @g_236, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %209)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %245, %191
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 7
  br i1 %212, label %213, label %248

; <label>:213                                     ; preds = %210
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* @g_258, i32 0, i64 %215
  %217 = bitcast %union.U0* %216 to i64*
  %218 = load i64, i64* %217, align 8, !tbaa !7
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 %219)
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* @g_258, i32 0, i64 %221
  %223 = bitcast %union.U0* %222 to i64*
  %224 = load i64, i64* %223, align 8, !tbaa !7
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %225)
  %226 = load i32, i32* %i, align 4, !tbaa !1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* @g_258, i32 0, i64 %227
  %229 = bitcast %union.U0* %228 to i16*
  %230 = load i16, i16* %229, align 2, !tbaa !10
  %231 = sext i16 %230 to i64
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %232)
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* @g_258, i32 0, i64 %234
  %236 = bitcast %union.U0* %235 to i64*
  %237 = load i64, i64* %236, align 8, !tbaa !7
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %238)
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

; <label>:241                                     ; preds = %213
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %242)
  br label %244

; <label>:244                                     ; preds = %241, %213
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %i, align 4, !tbaa !1
  br label %210

; <label>:248                                     ; preds = %210
  %249 = load volatile i64, i64* @g_277, align 8, !tbaa !7
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %250)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:251                                     ; preds = %266, %248
  %252 = load i32, i32* %i, align 4, !tbaa !1
  %253 = icmp slt i32 %252, 6
  br i1 %253, label %254, label %269

; <label>:254                                     ; preds = %251
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [6 x i64], [6 x i64]* @g_282, i32 0, i64 %256
  %258 = load i64, i64* %257, align 8, !tbaa !7
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %259)
  %260 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

; <label>:262                                     ; preds = %254
  %263 = load i32, i32* %i, align 4, !tbaa !1
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %263)
  br label %265

; <label>:265                                     ; preds = %262, %254
  br label %266

; <label>:266                                     ; preds = %265
  %267 = load i32, i32* %i, align 4, !tbaa !1
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:269                                     ; preds = %251
  %270 = load i64, i64* @g_310, align 8, !tbaa !7
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %271)
  %272 = load i64, i64* @g_318, align 8, !tbaa !7
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %273)
  %274 = load i8, i8* @g_336, align 1, !tbaa !9
  %275 = zext i8 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %276)
  %277 = load i64, i64* @g_385, align 8, !tbaa !7
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %278)
  %279 = load i16, i16* @g_432, align 2, !tbaa !10
  %280 = zext i16 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %281)
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %282)
  %283 = load volatile i32, i32* @g_467, align 4, !tbaa !1
  %284 = zext i32 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %285)
  %286 = load i8, i8* @g_483, align 1, !tbaa !9
  %287 = zext i8 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %288)
  %289 = load i16, i16* @g_605, align 2, !tbaa !10
  %290 = zext i16 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %291)
  %292 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_638, i32 0, i32 0), align 8, !tbaa !7
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %293)
  %294 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_638, i32 0, i32 0), align 8, !tbaa !7
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %295)
  %296 = load i16, i16* bitcast (%union.U0* @g_638 to i16*), align 2, !tbaa !10
  %297 = sext i16 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %298)
  %299 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_638, i32 0, i32 0), align 8, !tbaa !7
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %300)
  %301 = load i64, i64* @g_671, align 8, !tbaa !7
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %302)
  %303 = load i16, i16* @g_709, align 2, !tbaa !10
  %304 = sext i16 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %305)
  %306 = load volatile i64, i64* @g_735, align 8, !tbaa !7
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %307)
  %308 = load i32, i32* @g_748, align 4, !tbaa !1
  %309 = zext i32 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %310)
  %311 = load i32, i32* @g_755, align 4, !tbaa !1
  %312 = zext i32 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %313)
  %314 = load i64, i64* @g_783, align 8, !tbaa !7
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %315)
  %316 = load i16, i16* @g_899, align 2, !tbaa !10
  %317 = zext i16 %316 to i64
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %318)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %319

; <label>:319                                     ; preds = %346, %269
  %320 = load i32, i32* %i, align 4, !tbaa !1
  %321 = icmp slt i32 %320, 9
  br i1 %321, label %322, label %349

; <label>:322                                     ; preds = %319
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %323

; <label>:323                                     ; preds = %342, %322
  %324 = load i32, i32* %j, align 4, !tbaa !1
  %325 = icmp slt i32 %324, 5
  br i1 %325, label %326, label %345

; <label>:326                                     ; preds = %323
  %327 = load i32, i32* %j, align 4, !tbaa !1
  %328 = sext i32 %327 to i64
  %329 = load i32, i32* %i, align 4, !tbaa !1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [9 x [5 x i64]], [9 x [5 x i64]]* @g_983, i32 0, i64 %330
  %332 = getelementptr inbounds [5 x i64], [5 x i64]* %331, i32 0, i64 %328
  %333 = load volatile i64, i64* %332, align 8, !tbaa !7
  %334 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 %334)
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

; <label>:337                                     ; preds = %326
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = load i32, i32* %j, align 4, !tbaa !1
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i32 %338, i32 %339)
  br label %341

; <label>:341                                     ; preds = %337, %326
  br label %342

; <label>:342                                     ; preds = %341
  %343 = load i32, i32* %j, align 4, !tbaa !1
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %j, align 4, !tbaa !1
  br label %323

; <label>:345                                     ; preds = %323
  br label %346

; <label>:346                                     ; preds = %345
  %347 = load i32, i32* %i, align 4, !tbaa !1
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %i, align 4, !tbaa !1
  br label %319

; <label>:349                                     ; preds = %319
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %350

; <label>:350                                     ; preds = %377, %349
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = icmp slt i32 %351, 6
  br i1 %352, label %353, label %380

; <label>:353                                     ; preds = %350
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %354

; <label>:354                                     ; preds = %373, %353
  %355 = load i32, i32* %j, align 4, !tbaa !1
  %356 = icmp slt i32 %355, 4
  br i1 %356, label %357, label %376

; <label>:357                                     ; preds = %354
  %358 = load i32, i32* %j, align 4, !tbaa !1
  %359 = sext i32 %358 to i64
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [6 x [4 x i64]], [6 x [4 x i64]]* @g_988, i32 0, i64 %361
  %363 = getelementptr inbounds [4 x i64], [4 x i64]* %362, i32 0, i64 %359
  %364 = load i64, i64* %363, align 8, !tbaa !7
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

; <label>:368                                     ; preds = %357
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = load i32, i32* %j, align 4, !tbaa !1
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i32 %369, i32 %370)
  br label %372

; <label>:372                                     ; preds = %368, %357
  br label %373

; <label>:373                                     ; preds = %372
  %374 = load i32, i32* %j, align 4, !tbaa !1
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %j, align 4, !tbaa !1
  br label %354

; <label>:376                                     ; preds = %354
  br label %377

; <label>:377                                     ; preds = %376
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %i, align 4, !tbaa !1
  br label %350

; <label>:380                                     ; preds = %350
  %381 = load i32, i32* @g_1049, align 4, !tbaa !1
  %382 = sext i32 %381 to i64
  %383 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %383)
  %384 = load i64, i64* @g_1080, align 8, !tbaa !7
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %385)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %386

; <label>:386                                     ; preds = %401, %380
  %387 = load i32, i32* %i, align 4, !tbaa !1
  %388 = icmp slt i32 %387, 2
  br i1 %388, label %389, label %404

; <label>:389                                     ; preds = %386
  %390 = load i32, i32* %i, align 4, !tbaa !1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [2 x i64], [2 x i64]* @g_1081, i32 0, i64 %391
  %393 = load volatile i64, i64* %392, align 8, !tbaa !7
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %394)
  %395 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %400

; <label>:397                                     ; preds = %389
  %398 = load i32, i32* %i, align 4, !tbaa !1
  %399 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %398)
  br label %400

; <label>:400                                     ; preds = %397, %389
  br label %401

; <label>:401                                     ; preds = %400
  %402 = load i32, i32* %i, align 4, !tbaa !1
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %i, align 4, !tbaa !1
  br label %386

; <label>:404                                     ; preds = %386
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %405

; <label>:405                                     ; preds = %421, %404
  %406 = load i32, i32* %i, align 4, !tbaa !1
  %407 = icmp slt i32 %406, 9
  br i1 %407, label %408, label %424

; <label>:408                                     ; preds = %405
  %409 = load i32, i32* %i, align 4, !tbaa !1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [9 x i32], [9 x i32]* @g_1121, i32 0, i64 %410
  %412 = load volatile i32, i32* %411, align 4, !tbaa !1
  %413 = zext i32 %412 to i64
  %414 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %413, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 %414)
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

; <label>:417                                     ; preds = %408
  %418 = load i32, i32* %i, align 4, !tbaa !1
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %418)
  br label %420

; <label>:420                                     ; preds = %417, %408
  br label %421

; <label>:421                                     ; preds = %420
  %422 = load i32, i32* %i, align 4, !tbaa !1
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %i, align 4, !tbaa !1
  br label %405

; <label>:424                                     ; preds = %405
  %425 = load i32, i32* @g_1131, align 4, !tbaa !1
  %426 = zext i32 %425 to i64
  %427 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %426, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %427)
  %428 = load i8, i8* @g_1195, align 1, !tbaa !9
  %429 = zext i8 %428 to i64
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %429, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %430)
  %431 = load volatile i32, i32* @g_1217, align 4, !tbaa !1
  %432 = sext i32 %431 to i64
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %433)
  %434 = load i64, i64* @g_1227, align 8, !tbaa !7
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %435)
  %436 = load i8, i8* @g_1257, align 1, !tbaa !9
  %437 = sext i8 %436 to i64
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %437, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %438)
  %439 = load i32, i32* @g_1389, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %441)
  %442 = load i32, i32* @g_1394, align 4, !tbaa !1
  %443 = sext i32 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %444)
  %445 = load i32, i32* @g_1991, align 4, !tbaa !1
  %446 = zext i32 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %447)
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4180954737, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %448)
  %449 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2063, i32 0, i32 0), align 8, !tbaa !7
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %450)
  %451 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2063, i32 0, i32 0), align 8, !tbaa !7
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %452)
  %453 = load i16, i16* bitcast (%union.U0* @g_2063 to i16*), align 2, !tbaa !10
  %454 = sext i16 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %455)
  %456 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2063, i32 0, i32 0), align 8, !tbaa !7
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %457)
  %458 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %459 = zext i32 %458 to i64
  %460 = xor i64 %459, 4294967295
  %461 = trunc i64 %460 to i32
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %461, i32 %462)
  %463 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %463) #1
  %464 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %464) #1
  %465 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %465) #1
  %466 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %466) #1
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
define internal zeroext i8 @func_1() #0 {
  %l_2 = alloca [7 x i32], align 16
  %l_208 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_28 = alloca i32*, align 8
  %l_44 = alloca i32*, align 8
  %l_43 = alloca i32**, align 8
  %l_115 = alloca i64, align 8
  %l_192 = alloca i32**, align 8
  %i1 = alloca i32, align 4
  %1 = bitcast [7 x i32]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %1) #1
  %2 = bitcast [7 x i32]* %l_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([7 x i32]* @func_1.l_2 to i8*), i64 28, i32 16, i1 false)
  %3 = bitcast i32** %l_208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_208, align 8, !tbaa !5
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 4, i32* @g_3, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %27, %0
  %6 = load i32, i32* @g_3, align 4, !tbaa !1
  %7 = icmp sge i32 %6, 2
  br i1 %7, label %8, label %30

; <label>:8                                       ; preds = %5
  %9 = bitcast i32** %l_28 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_5, i32** %l_28, align 8, !tbaa !5
  %10 = bitcast i32** %l_44 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* @g_3, i32** %l_44, align 8, !tbaa !5
  %11 = bitcast i32*** %l_43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32** %l_44, i32*** %l_43, align 8, !tbaa !5
  %12 = bitcast i64* %l_115 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 -5703698595420360030, i64* %l_115, align 8, !tbaa !7
  %13 = bitcast i32*** %l_192 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32** @g_66, i32*** %l_192, align 8, !tbaa !5
  %14 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* @g_3, align 4, !tbaa !1
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %l_2, i32 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !1
  %20 = load volatile i32*, i32** @g_4, align 8, !tbaa !5
  store i32 %19, i32* %20, align 4, !tbaa !1
  %21 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32*** %l_192 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i64* %l_115 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32*** %l_43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32** %l_44 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32** %l_28 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %27

; <label>:27                                      ; preds = %8
  %28 = load i32, i32* @g_3, align 4, !tbaa !1
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* @g_3, align 4, !tbaa !1
  br label %5

; <label>:30                                      ; preds = %5
  %31 = load i8**, i8*** @g_1773, align 8, !tbaa !5
  %32 = load i8*, i8** %31, align 8, !tbaa !5
  %33 = load i8, i8* %32, align 1, !tbaa !9
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32** %l_208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast [7 x i32]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %36) #1
  ret i8 %33
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.62, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i32 %3)
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
