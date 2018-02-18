; ModuleID = '00958.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i16 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_33 = internal global i64 5666436859006345498, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"g_33\00", align 1
@g_46 = internal global i16 -10429, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"g_46\00", align 1
@g_48 = internal global [4 x i64] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"g_48[i]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_49 = internal global i32 1209575562, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_49\00", align 1
@g_51 = internal global i16 0, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_51\00", align 1
@g_72 = internal global %union.U0 { i16 8 }, align 2
@.str.7 = private unnamed_addr constant [8 x i8] c"g_72.f0\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_72.f1\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_72.f2\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"g_72.f3\00", align 1
@g_74 = internal global %union.U0 { i16 -1 }, align 2
@.str.11 = private unnamed_addr constant [8 x i8] c"g_74.f0\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"g_74.f1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"g_74.f2\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"g_74.f3\00", align 1
@g_94 = internal global i16 1, align 2
@.str.15 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_103 = internal global [1 x i32] [i32 1158005345], align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"g_103[i]\00", align 1
@g_107 = internal global i8 1, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_107\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_125\00", align 1
@g_151 = internal global [1 x [3 x i32]] [[3 x i32] [i32 1525021447, i32 1525021447, i32 1525021447]], align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"g_151[i][j]\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_179 = internal global i64 1, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_180 = internal global i16 -14295, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_180\00", align 1
@g_181 = internal global i32 -3, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_181\00", align 1
@g_201 = internal global %union.U0 { i16 -5 }, align 2
@.str.24 = private unnamed_addr constant [9 x i8] c"g_201.f0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_201.f1\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_201.f2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_201.f3\00", align 1
@g_244 = internal constant %union.U0 zeroinitializer, align 2
@.str.28 = private unnamed_addr constant [9 x i8] c"g_244.f0\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_244.f1\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"g_244.f2\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_244.f3\00", align 1
@g_262 = internal global i8 -12, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_262\00", align 1
@g_281 = internal global [2 x i64] zeroinitializer, align 16
@.str.33 = private unnamed_addr constant [9 x i8] c"g_281[i]\00", align 1
@g_351 = internal global %union.U0 { i16 -9071 }, align 2
@.str.34 = private unnamed_addr constant [9 x i8] c"g_351.f0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_351.f1\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_351.f2\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_351.f3\00", align 1
@g_430 = internal global i8 -7, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_430\00", align 1
@g_448 = internal global i8 -7, align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_448\00", align 1
@g_500 = internal global i32 1774846414, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_500\00", align 1
@g_534 = internal global i32 -646686418, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_534\00", align 1
@g_558 = internal global %union.U0 { i16 7065 }, align 2
@.str.42 = private unnamed_addr constant [9 x i8] c"g_558.f0\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"g_558.f1\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"g_558.f2\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"g_558.f3\00", align 1
@g_751 = internal global i32 -2055274183, align 4
@.str.46 = private unnamed_addr constant [6 x i8] c"g_751\00", align 1
@g_819 = internal global [9 x %union.U0] [%union.U0 { i16 2 }, %union.U0 { i16 2 }, %union.U0 { i16 2 }, %union.U0 { i16 2 }, %union.U0 { i16 2 }, %union.U0 { i16 2 }, %union.U0 { i16 2 }, %union.U0 { i16 2 }, %union.U0 { i16 2 }], align 16
@.str.47 = private unnamed_addr constant [12 x i8] c"g_819[i].f0\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"g_819[i].f1\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"g_819[i].f2\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"g_819[i].f3\00", align 1
@g_957 = internal global i8 41, align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"g_957\00", align 1
@g_970 = internal constant %union.U0 { i16 -1 }, align 2
@.str.52 = private unnamed_addr constant [9 x i8] c"g_970.f0\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_970.f1\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"g_970.f2\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"g_970.f3\00", align 1
@g_1012 = internal global [9 x i32] [i32 -240778961, i32 -240778961, i32 -240778961, i32 -240778961, i32 -240778961, i32 -240778961, i32 -240778961, i32 -240778961, i32 -240778961], align 16
@.str.56 = private unnamed_addr constant [10 x i8] c"g_1012[i]\00", align 1
@g_1014 = internal global i32 -1, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1014\00", align 1
@g_1061 = internal global i8 -40, align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1061\00", align 1
@g_1105 = internal global [7 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 -281759775, i32 0, i32 -281759775, i32 0, i32 -281759775, i32 0, i32 -281759775], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 -281759775, i32 0, i32 -281759775, i32 0, i32 -281759775, i32 0, i32 -281759775], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 -281759775, i32 0, i32 -281759775, i32 0, i32 -281759775, i32 0, i32 -281759775], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1]], align 16
@.str.59 = private unnamed_addr constant [13 x i8] c"g_1105[i][j]\00", align 1
@g_1130 = internal global %union.U0 { i16 -1 }, align 2
@.str.60 = private unnamed_addr constant [10 x i8] c"g_1130.f0\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"g_1130.f1\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1130.f2\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"g_1130.f3\00", align 1
@g_1206 = internal global i8 -2, align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"g_1206\00", align 1
@g_1286 = internal global i16 -12464, align 2
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1286\00", align 1
@g_1345 = internal global %union.U0 { i16 -1 }, align 2
@.str.66 = private unnamed_addr constant [10 x i8] c"g_1345.f0\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"g_1345.f1\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"g_1345.f2\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"g_1345.f3\00", align 1
@g_1383 = internal global i64 -8815202108258563143, align 8
@.str.70 = private unnamed_addr constant [7 x i8] c"g_1383\00", align 1
@g_1402 = internal global i32 332873130, align 4
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1402\00", align 1
@g_1413 = internal global [5 x [10 x [5 x %union.U0]]] [[10 x [5 x %union.U0]] [[5 x %union.U0] [%union.U0 { i16 -7 }, %union.U0 { i16 -16129 }, %union.U0 { i16 25298 }, %union.U0 { i16 -23609 }, %union.U0 { i16 25298 }], [5 x %union.U0] [%union.U0 { i16 -8 }, %union.U0 { i16 -8 }, %union.U0 { i16 -5 }, %union.U0 { i16 -4 }, %union.U0 { i16 -9 }], [5 x %union.U0] [%union.U0 { i16 12610 }, %union.U0 { i16 -1 }, %union.U0 { i16 -7 }, %union.U0 { i16 -27153 }, %union.U0 zeroinitializer], [5 x %union.U0] [%union.U0 { i16 -7 }, %union.U0 { i16 17112 }, %union.U0 { i16 19364 }, %union.U0 { i16 14704 }, %union.U0 { i16 -1 }], [5 x %union.U0] [%union.U0 { i16 28115 }, %union.U0 { i16 -1 }, %union.U0 { i16 17112 }, %union.U0 { i16 9 }, %union.U0 { i16 1 }], [5 x %union.U0] [%union.U0 { i16 30870 }, %union.U0 { i16 -8 }, %union.U0 { i16 -13151 }, %union.U0 { i16 12610 }, %union.U0 { i16 -9 }], [5 x %union.U0] [%union.U0 { i16 -27153 }, %union.U0 { i16 -16129 }, %union.U0 { i16 -1959 }, %union.U0 { i16 25298 }, %union.U0 { i16 -5 }], [5 x %union.U0] [%union.U0 { i16 -5 }, %union.U0 { i16 28115 }, %union.U0 { i16 17112 }, %union.U0 { i16 4 }, %union.U0 zeroinitializer], [5 x %union.U0] [%union.U0 { i16 1 }, %union.U0 { i16 -1959 }, %union.U0 { i16 -7 }, %union.U0 { i16 -31768 }, %union.U0 { i16 -8 }], [5 x %union.U0] [%union.U0 { i16 -5 }, %union.U0 { i16 -18717 }, %union.U0 { i16 -16129 }, %union.U0 { i16 -31768 }, %union.U0 { i16 -32512 }]], [10 x [5 x %union.U0]] [[5 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i16 -4 }, %union.U0 { i16 -31737 }, %union.U0 { i16 4 }, %union.U0 { i16 14704 }], [5 x %union.U0] [%union.U0 { i16 6 }, %union.U0 { i16 12610 }, %union.U0 { i16 30870 }, %union.U0 zeroinitializer, %union.U0 { i16 20099 }], [5 x %union.U0] [%union.U0 { i16 10935 }, %union.U0 { i16 7 }, %union.U0 { i16 -18717 }, %union.U0 { i16 -18717 }, %union.U0 { i16 7 }], [5 x %union.U0] [%union.U0 { i16 -27461 }, %union.U0 { i16 1 }, %union.U0 { i16 -26362 }, %union.U0 { i16 -1 }, %union.U0 { i16 30870 }], [5 x %union.U0] [%union.U0 { i16 22588 }, %union.U0 { i16 19364 }, %union.U0 { i16 -23609 }, %union.U0 { i16 30870 }, %union.U0 { i16 -1 }], [5 x %union.U0] [%union.U0 { i16 -1 }, %union.U0 { i16 4 }, %union.U0 { i16 10935 }, %union.U0 { i16 -9 }, %union.U0 { i16 -23609 }], [5 x %union.U0] [%union.U0 { i16 22588 }, %union.U0 { i16 20099 }, %union.U0 { i16 1 }, %union.U0 { i16 -5 }, %union.U0 { i16 -1 }], [5 x %union.U0] [%union.U0 { i16 -27461 }, %union.U0 { i16 1 }, %union.U0 { i16 -27153 }, %union.U0 { i16 -16129 }, %union.U0 { i16 -1959 }], [5 x %union.U0] [%union.U0 { i16 10935 }, %union.U0 { i16 -27461 }, %union.U0 { i16 -1 }, %union.U0 { i16 -13151 }, %union.U0 { i16 -31832 }], [5 x %union.U0] [%union.U0 { i16 6 }, %union.U0 { i16 -26362 }, %union.U0 { i16 -1959 }, %union.U0 { i16 28115 }, %union.U0 { i16 12924 }]], [10 x [5 x %union.U0]] [[5 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i16 10935 }, %union.U0 { i16 14704 }, %union.U0 { i16 3 }, %union.U0 { i16 -7 }], [5 x %union.U0] [%union.U0 { i16 -5 }, %union.U0 { i16 -1 }, %union.U0 { i16 14704 }, %union.U0 { i16 19364 }, %union.U0 { i16 17112 }], [5 x %union.U0] [%union.U0 { i16 1 }, %union.U0 { i16 -9 }, %union.U0 { i16 -1959 }, %union.U0 { i16 -1 }, %union.U0 { i16 1 }], [5 x %union.U0] [%union.U0 { i16 -4 }, %union.U0 { i16 -1396 }, %union.U0 { i16 -1 }, %union.U0 { i16 14196 }, %union.U0 { i16 11057 }], [5 x %union.U0] [%union.U0 { i16 -9 }, %union.U0 { i16 17112 }, %union.U0 { i16 -27153 }, %union.U0 { i16 17112 }, %union.U0 { i16 -9 }], [5 x %union.U0] [%union.U0 { i16 4 }, %union.U0 { i16 11057 }, %union.U0 { i16 1 }, %union.U0 { i16 6 }, %union.U0 { i16 1 }], [5 x %union.U0] [%union.U0 { i16 12761 }, %union.U0 { i16 14196 }, %union.U0 { i16 10935 }, %union.U0 { i16 -27153 }, %union.U0 { i16 19364 }], [5 x %union.U0] [%union.U0 { i16 -1 }, %union.U0 { i16 22588 }, %union.U0 { i16 -23609 }, %union.U0 { i16 11057 }, %union.U0 { i16 1 }], [5 x %union.U0] [%union.U0 { i16 -18717 }, %union.U0 { i16 -27153 }, %union.U0 { i16 -26362 }, %union.U0 { i16 1 }, %union.U0 { i16 -9 }], [5 x %union.U0] [%union.U0 { i16 1 }, %union.U0 { i16 -1 }, %union.U0 { i16 -18717 }, %union.U0 { i16 -3734 }, %union.U0 { i16 11057 }]], [10 x [5 x %union.U0]] [[5 x %union.U0] [%union.U0 { i16 14954 }, %union.U0 { i16 -5 }, %union.U0 { i16 30870 }, %union.U0 { i16 32704 }, %union.U0 { i16 1 }], [5 x %union.U0] [%union.U0 { i16 12610 }, %union.U0 zeroinitializer, %union.U0 { i16 -31737 }, %union.U0 { i16 25298 }, %union.U0 { i16 17112 }], [5 x %union.U0] [%union.U0 { i16 3 }, %union.U0 { i16 -31737 }, %union.U0 { i16 -16129 }, %union.U0 { i16 22588 }, %union.U0 { i16 -7 }], [5 x %union.U0] [%union.U0 { i16 32704 }, %union.U0 { i16 -31737 }, %union.U0 { i16 -7 }, %union.U0 { i16 1 }, %union.U0 { i16 12924 }], [5 x %union.U0] [%union.U0 { i16 20099 }, %union.U0 zeroinitializer, %union.U0 { i16 17112 }, %union.U0 { i16 -1959 }, %union.U0 { i16 -31832 }], [5 x %union.U0] [%union.U0 { i16 -3734 }, %union.U0 { i16 -5 }, %union.U0 { i16 -32512 }, %union.U0 { i16 -5 }, %union.U0 { i16 -1959 }], [5 x %union.U0] [%union.U0 { i16 9 }, %union.U0 { i16 -1 }, %union.U0 { i16 -1 }, %union.U0 { i16 9 }, %union.U0 { i16 -1 }], [5 x %union.U0] [%union.U0 { i16 -32512 }, %union.U0 { i16 -27153 }, %union.U0 { i16 -9 }, %union.U0 zeroinitializer, %union.U0 { i16 -23609 }], [5 x %union.U0] [%union.U0 { i16 5 }, %union.U0 { i16 22588 }, %union.U0 { i16 1 }, %union.U0 { i16 -22991 }, %union.U0 { i16 -1 }], [5 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i16 14196 }, %union.U0 { i16 -1 }, %union.U0 zeroinitializer, %union.U0 { i16 30870 }]], [10 x [5 x %union.U0]] [[5 x %union.U0] [%union.U0 { i16 -26362 }, %union.U0 { i16 11057 }, %union.U0 { i16 -4 }, %union.U0 { i16 9 }, %union.U0 { i16 7 }], [5 x %union.U0] [%union.U0 { i16 11057 }, %union.U0 { i16 17112 }, %union.U0 zeroinitializer, %union.U0 { i16 -5 }, %union.U0 { i16 20099 }], [5 x %union.U0] [%union.U0 { i16 -23609 }, %union.U0 { i16 -1396 }, %union.U0 { i16 9 }, %union.U0 { i16 -1959 }, %union.U0 { i16 14704 }], [5 x %union.U0] [%union.U0 { i16 -7 }, %union.U0 { i16 -9 }, %union.U0 { i16 14196 }, %union.U0 { i16 1 }, %union.U0 { i16 -32512 }], [5 x %union.U0] [%union.U0 { i16 -9 }, %union.U0 { i16 -1 }, %union.U0 { i16 -1 }, %union.U0 { i16 22588 }, %union.U0 { i16 -8 }], [5 x %union.U0] [%union.U0 { i16 -9 }, %union.U0 { i16 10935 }, %union.U0 { i16 12610 }, %union.U0 zeroinitializer, %union.U0 { i16 1 }], [5 x %union.U0] [%union.U0 { i16 14954 }, %union.U0 { i16 20099 }, %union.U0 { i16 -13151 }, %union.U0 { i16 22588 }, %union.U0 { i16 -5 }], [5 x %union.U0] [%union.U0 { i16 -16129 }, %union.U0 { i16 -26362 }, %union.U0 { i16 -27461 }, %union.U0 { i16 19364 }, %union.U0 { i16 19364 }], [5 x %union.U0] [%union.U0 { i16 1 }, %union.U0 { i16 1 }, %union.U0 { i16 1 }, %union.U0 { i16 7 }, %union.U0 { i16 -1396 }], [5 x %union.U0] [%union.U0 { i16 20099 }, %union.U0 { i16 14704 }, %union.U0 { i16 -994 }, %union.U0 { i16 1 }, %union.U0 { i16 -8 }]]], align 16
@.str.72 = private unnamed_addr constant [19 x i8] c"g_1413[i][j][k].f0\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"g_1413[i][j][k].f1\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"g_1413[i][j][k].f2\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"g_1413[i][j][k].f3\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_1513 = internal global [5 x [4 x [4 x %union.U0]]] [[4 x [4 x %union.U0]] [[4 x %union.U0] [%union.U0 { i16 -1 }, %union.U0 { i16 23402 }, %union.U0 zeroinitializer, %union.U0 { i16 1 }], [4 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i16 23402 }, %union.U0 zeroinitializer, %union.U0 { i16 -32349 }], [4 x %union.U0] [%union.U0 { i16 23402 }, %union.U0 { i16 1 }, %union.U0 { i16 -6 }, %union.U0 { i16 7261 }], [4 x %union.U0] [%union.U0 { i16 7261 }, %union.U0 { i16 1 }, %union.U0 { i16 -1 }, %union.U0 { i16 1 }]], [4 x [4 x %union.U0]] [[4 x %union.U0] [%union.U0 { i16 8606 }, %union.U0 { i16 -1 }, %union.U0 { i16 -1 }, %union.U0 { i16 8606 }], [4 x %union.U0] [%union.U0 { i16 7261 }, %union.U0 { i16 -32349 }, %union.U0 { i16 -6 }, %union.U0 zeroinitializer], [4 x %union.U0] [%union.U0 { i16 23402 }, %union.U0 { i16 -1 }, %union.U0 zeroinitializer, %union.U0 { i16 5 }], [4 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i16 5 }, %union.U0 zeroinitializer, %union.U0 { i16 5 }]], [4 x [4 x %union.U0]] [[4 x %union.U0] [%union.U0 { i16 -1 }, %union.U0 { i16 -1 }, %union.U0 { i16 1 }, %union.U0 zeroinitializer], [4 x %union.U0] [%union.U0 { i16 -30954 }, %union.U0 { i16 -32349 }, %union.U0 { i16 5 }, %union.U0 { i16 8606 }], [4 x %union.U0] [%union.U0 { i16 1 }, %union.U0 { i16 -1 }, %union.U0 { i16 1 }, %union.U0 { i16 1 }], [4 x %union.U0] [%union.U0 { i16 1 }, %union.U0 { i16 1 }, %union.U0 { i16 5 }, %union.U0 { i16 7261 }]], [4 x [4 x %union.U0]] [[4 x %union.U0] [%union.U0 { i16 -30954 }, %union.U0 { i16 1 }, %union.U0 { i16 1 }, %union.U0 { i16 -32349 }], [4 x %union.U0] [%union.U0 { i16 -1 }, %union.U0 { i16 23402 }, %union.U0 zeroinitializer, %union.U0 { i16 1 }], [4 x %union.U0] [%union.U0 zeroinitializer, %union.U0 { i16 23402 }, %union.U0 zeroinitializer, %union.U0 { i16 -32349 }], [4 x %union.U0] [%union.U0 { i16 23402 }, %union.U0 { i16 1 }, %union.U0 { i16 -6 }, %union.U0 { i16 7261 }]], [4 x [4 x %union.U0]] [[4 x %union.U0] [%union.U0 { i16 7261 }, %union.U0 { i16 1 }, %union.U0 { i16 -1 }, %union.U0 { i16 1 }], [4 x %union.U0] [%union.U0 { i16 8606 }, %union.U0 { i16 -1 }, %union.U0 { i16 -1 }, %union.U0 { i16 8606 }], [4 x %union.U0] [%union.U0 { i16 7261 }, %union.U0 { i16 -32349 }, %union.U0 { i16 -6 }, %union.U0 zeroinitializer], [4 x %union.U0] [%union.U0 { i16 23402 }, %union.U0 { i16 -1 }, %union.U0 zeroinitializer, %union.U0 { i16 5 }]]], align 16
@.str.77 = private unnamed_addr constant [19 x i8] c"g_1513[i][j][k].f0\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"g_1513[i][j][k].f1\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"g_1513[i][j][k].f2\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"g_1513[i][j][k].f3\00", align 1
@g_1528 = internal global i8 39, align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"g_1528\00", align 1
@g_1690 = internal global i8 -125, align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"g_1690\00", align 1
@g_1715 = internal global i16 8, align 2
@.str.83 = private unnamed_addr constant [7 x i8] c"g_1715\00", align 1
@g_1748 = internal global %union.U0 zeroinitializer, align 2
@.str.84 = private unnamed_addr constant [10 x i8] c"g_1748.f0\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"g_1748.f1\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"g_1748.f2\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"g_1748.f3\00", align 1
@g_1906 = internal global i32 -6, align 4
@.str.88 = private unnamed_addr constant [7 x i8] c"g_1906\00", align 1
@g_1929 = internal global [1 x %union.U0] [%union.U0 { i16 -1 }], align 2
@.str.89 = private unnamed_addr constant [13 x i8] c"g_1929[i].f0\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"g_1929[i].f1\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"g_1929[i].f2\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"g_1929[i].f3\00", align 1
@g_2072 = internal global %union.U0 { i16 3 }, align 2
@.str.93 = private unnamed_addr constant [10 x i8] c"g_2072.f0\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"g_2072.f1\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"g_2072.f2\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"g_2072.f3\00", align 1
@g_2073 = internal global %union.U0 { i16 -1 }, align 2
@.str.97 = private unnamed_addr constant [10 x i8] c"g_2073.f0\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"g_2073.f1\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"g_2073.f2\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"g_2073.f3\00", align 1
@g_2131 = internal global [10 x %union.U0] [%union.U0 { i16 -3 }, %union.U0 { i16 9 }, %union.U0 { i16 -3 }, %union.U0 { i16 9 }, %union.U0 { i16 -3 }, %union.U0 { i16 9 }, %union.U0 { i16 -3 }, %union.U0 { i16 9 }, %union.U0 { i16 -3 }, %union.U0 { i16 9 }], align 16
@.str.101 = private unnamed_addr constant [13 x i8] c"g_2131[i].f0\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"g_2131[i].f1\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"g_2131[i].f2\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"g_2131[i].f3\00", align 1
@g_2166 = internal global i16 13184, align 2
@.str.105 = private unnamed_addr constant [7 x i8] c"g_2166\00", align 1
@g_2192 = internal global [6 x %union.U0] [%union.U0 { i16 -10 }, %union.U0 { i16 -10 }, %union.U0 { i16 -10 }, %union.U0 { i16 -10 }, %union.U0 { i16 -10 }, %union.U0 { i16 -10 }], align 2
@.str.106 = private unnamed_addr constant [13 x i8] c"g_2192[i].f0\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"g_2192[i].f1\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"g_2192[i].f2\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"g_2192[i].f3\00", align 1
@g_2217 = internal global i8 47, align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"g_2217\00", align 1
@g_2256 = internal global i64 31606207332543460, align 8
@.str.111 = private unnamed_addr constant [7 x i8] c"g_2256\00", align 1
@g_2263 = internal global %union.U0 { i16 1 }, align 2
@.str.112 = private unnamed_addr constant [10 x i8] c"g_2263.f0\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"g_2263.f1\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"g_2263.f2\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"g_2263.f3\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_45 = private unnamed_addr constant [5 x [5 x i16*]] [[5 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [5 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [5 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [5 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46], [5 x i16*] [i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46, i16* @g_46]], align 16
@g_114 = internal global i32**** null, align 8
@g_1947 = internal global i16* getelementptr inbounds (%union.U0, %union.U0* @g_558, i32 0, i32 0), align 8
@g_2216 = internal global i8* @g_2217, align 8
@g_1334 = internal global i16** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [3 x i16*]]* @g_1335 to i8*), i64 24) to i16**), align 8
@g_634 = internal global i32*** @g_635, align 8
@g_121 = internal global i32**** @g_122, align 8
@g_334 = internal global [5 x i16*] zeroinitializer, align 16
@g_1075 = internal global i64** @g_1076, align 8
@g_452 = internal global %union.U0* @g_74, align 8
@func_15.l_1954 = private unnamed_addr constant [4 x [6 x %union.U0**]] [[6 x %union.U0**] [%union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452], [6 x %union.U0**] [%union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452], [6 x %union.U0**] [%union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452], [6 x %union.U0**] [%union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452, %union.U0** @g_452]], align 16
@g_804 = internal global %union.U0*** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x %union.U0**]* @g_805 to i8*), i64 16) to %union.U0***), align 8
@g_1076 = internal global i64* @g_179, align 8
@g_805 = internal global [4 x %union.U0**] [%union.U0** @g_200, %union.U0** @g_200, %union.U0** @g_200, %union.U0** @g_200], align 16
@g_200 = internal global %union.U0* @g_201, align 8
@g_1010 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i32*]* @g_1011 to i8*), i64 24) to i32**), align 8
@g_1011 = internal global [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1012 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1012 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1012 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1012 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1012 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1012 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1012 to i8*), i64 16) to i32*)], align 16
@g_635 = internal global i32** @g_99, align 8
@func_26.l_1485 = private unnamed_addr constant [3 x [8 x [4 x i64*]]] [[8 x [4 x i64*]] [[4 x i64*] [i64* @g_1383, i64* @g_1383, i64* @g_1383, i64* @g_1383], [4 x i64*] [i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 16) to i64*), i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*)], [4 x i64*] [i64* @g_1383, i64* @g_1383, i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*)], [4 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*), i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 16) to i64*), i64* @g_1383], [4 x i64*] [i64* @g_1383, i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 16) to i64*), i64* null], [4 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*)], [4 x i64*] [i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*)], [4 x i64*] [i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*), i64* @g_1383, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0)]], [8 x [4 x i64*]] [[4 x i64*] [i64* @g_1383, i64* null, i64* null, i64* @g_1383], [4 x i64*] [i64* null, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*)], [4 x i64*] [i64* @g_1383, i64* @g_1383, i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*)], [4 x i64*] [i64* @g_1383, i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*)], [4 x i64*] [i64* @g_1383, i64* @g_1383, i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*)], [4 x i64*] [i64* null, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* @g_1383, i64* @g_1383], [4 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* null, i64* null, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0)], [4 x i64*] [i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*), i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*)]], [8 x [4 x i64*]] [[4 x i64*] [i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*)], [4 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* null], [4 x i64*] [i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* @g_1383], [4 x i64*] [i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i32 0), i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*)], [4 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 8) to i64*), i64* @g_1383, i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*)], [4 x i64*] [i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 16) to i64*), i64* @g_1383, i64* @g_1383], [4 x i64*] [i64* @g_1383, i64* @g_1383, i64* null, i64* null], [4 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*), i64* @g_1383, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i64]* @g_48 to i8*), i64 24) to i64*)]]], align 16
@g_1438 = internal global i32* @g_49, align 8
@g_1488 = internal global i32** @g_1489, align 8
@g_99 = internal global i32* null, align 8
@g_1489 = internal global i32* null, align 8
@func_38.l_1448 = internal constant [9 x [1 x [1 x i32]]] [[1 x [1 x i32]] [[1 x i32] [i32 -223512532]], [1 x [1 x i32]] zeroinitializer, [1 x [1 x i32]] [[1 x i32] [i32 -223512532]], [1 x [1 x i32]] zeroinitializer, [1 x [1 x i32]] [[1 x i32] [i32 -223512532]], [1 x [1 x i32]] zeroinitializer, [1 x [1 x i32]] [[1 x i32] [i32 -223512532]], [1 x [1 x i32]] zeroinitializer, [1 x [1 x i32]] [[1 x i32] [i32 -223512532]]], align 16
@func_43.l_76 = internal constant [4 x [3 x i64]] [[3 x i64] [i64 -6, i64 -6, i64 -5633130293460294241], [3 x i64] [i64 -6, i64 -6, i64 -5633130293460294241], [3 x i64] [i64 -6, i64 -6, i64 -5633130293460294241], [3 x i64] [i64 -6, i64 -6, i64 -5633130293460294241]], align 16
@g_123 = internal global i32** @g_124, align 8
@func_43.l_1322 = private unnamed_addr constant [8 x i32] [i32 -10, i32 -10, i32 2, i32 -10, i32 -10, i32 2, i32 -10, i32 -10], align 16
@func_43.l_1232 = private unnamed_addr constant [4 x [2 x [10 x i8*]]] [[2 x [10 x i8*]] [[10 x i8*] [i8* null, i8* @g_957, i8* @g_107, i8* @g_957, i8* null, i8* @g_107, i8* @g_957, i8* @g_957, i8* @g_957, i8* @g_957], [10 x i8*] [i8* null, i8* @g_107, i8* @g_107, i8* @g_957, i8* @g_957, i8* @g_957, i8* @g_107, i8* @g_107, i8* null, i8* @g_957]], [2 x [10 x i8*]] [[10 x i8*] [i8* @g_957, i8* @g_957, i8* @g_957, i8* @g_107, i8* null, i8* @g_957, i8* @g_107, i8* @g_957, i8* null, i8* @g_107], [10 x i8*] [i8* @g_107, i8* @g_107, i8* @g_107, i8* @g_957, i8* null, i8* @g_107, i8* @g_107, i8* @g_957, i8* @g_957, i8* @g_957]], [2 x [10 x i8*]] [[10 x i8*] [i8* null, i8* @g_107, i8* @g_957, i8* @g_107, i8* @g_957, i8* @g_107, i8* null, i8* @g_957, i8* @g_107, i8* null], [10 x i8*] [i8* @g_107, i8* @g_957, i8* null, i8* @g_107, i8* @g_957, i8* @g_107, i8* @g_957, i8* @g_107, i8* null, i8* @g_957]], [2 x [10 x i8*]] [[10 x i8*] [i8* @g_957, i8* @g_957, i8* @g_107, i8* @g_107, i8* null, i8* @g_957, i8* null, i8* null, i8* null, i8* @g_957], [10 x i8*] [i8* @g_957, i8* @g_107, i8* null, i8* @g_107, i8* @g_957, i8* @g_957, i8* @g_107, i8* @g_107, i8* @g_107, i8* @g_107]]], align 16
@g_1008 = internal global i32**** getelementptr inbounds ([4 x i32***], [4 x i32***]* @g_1009, i32 0, i32 0), align 8
@func_43.l_1437 = private unnamed_addr constant [8 x [4 x i32]] [[4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099], [4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099], [4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099], [4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099], [4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099], [4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099], [4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099], [4 x i32] [i32 -112873033, i32 1678732099, i32 -112873033, i32 1678732099]], align 16
@g_1385 = internal constant i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [10 x i32*]]* @g_1386 to i8*), i64 736) to i32**), align 8
@g_124 = internal global i32* @g_125, align 8
@g_125 = internal constant i32 -1, align 4
@g_1009 = internal global [4 x i32***] [i32*** @g_1010, i32*** @g_1010, i32*** @g_1010, i32*** @g_1010], align 16
@g_1386 = internal global [10 x [10 x i32*]] [[10 x i32*] [i32* @g_500, i32* @g_500, i32* @g_500, i32* @g_500, i32* @g_500, i32* null, i32* @g_751, i32* @g_751, i32* @g_500, i32* @g_751], [10 x i32*] [i32* null, i32* @g_500, i32* @g_500, i32* @g_751, i32* @g_500, i32* @g_751, i32* @g_751, i32* @g_500, i32* null, i32* null], [10 x i32*] [i32* null, i32* @g_500, i32* @g_751, i32* @g_751, i32* @g_751, i32* @g_751, i32* @g_500, i32* null, i32* @g_500, i32* @g_500], [10 x i32*] [i32* @g_751, i32* @g_751, i32* null, i32* @g_751, i32* @g_500, i32* @g_751, i32* @g_751, i32* @g_500, i32* @g_751, i32* @g_751], [10 x i32*] [i32* @g_500, i32* @g_751, i32* null, i32* @g_500, i32* @g_751, i32* @g_500, i32* @g_500, i32* null, i32* @g_500, i32* @g_500], [10 x i32*] [i32* null, i32* @g_500, i32* @g_751, i32* @g_500, i32* null, i32* @g_500, i32* @g_500, i32* @g_500, i32* @g_751, i32* @g_751], [10 x i32*] [i32* @g_751, i32* @g_751, i32* @g_500, i32* @g_751, i32* null, i32* @g_751, i32* null, i32* @g_751, i32* @g_500, i32* @g_751], [10 x i32*] [i32* @g_751, i32* @g_751, i32* @g_500, i32* @g_500, i32* @g_751, i32* @g_500, i32* @g_751, i32* null, i32* @g_751, i32* @g_500], [10 x i32*] [i32* @g_751, i32* @g_500, i32* @g_751, i32* @g_500, i32* null, i32* @g_500, i32* @g_751, i32* @g_500, i32* @g_500, i32* null], [10 x i32*] [i32* @g_751, i32* @g_751, i32* @g_751, i32* @g_500, i32* @g_500, i32* @g_751, i32* @g_500, i32* @g_751, i32* @g_500, i32* @g_751]], align 16
@g_1335 = internal global [3 x [3 x i16*]] [[3 x i16*] [i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0)], [3 x i16*] [i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0)], [3 x i16*] [i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0)]], align 16
@g_122 = internal global i32*** @g_123, align 8
@.str.116 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %union.U0, align 2
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %11 = load i32, i32* %2, align 4, !tbaa !1
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %90

; <label>:13                                      ; preds = %0
  %14 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %16, label %78

; <label>:16                                      ; preds = %13
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %17 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %78

; <label>:19                                      ; preds = %16
  %20 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i8**, i8*** %3, align 8, !tbaa !5
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8, !tbaa !5
  store i8* %23, i8** %__s1, align 8, !tbaa !5
  %24 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i8*, i8** %__s1, align 8, !tbaa !5
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %__result, align 4, !tbaa !1
  %32 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %73

; <label>:34                                      ; preds = %19
  %35 = load i32, i32* %__result, align 4, !tbaa !1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %73

; <label>:37                                      ; preds = %34
  %38 = load i8*, i8** %__s1, align 8, !tbaa !5
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !9
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %43 = zext i8 %42 to i32
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %__result, align 4, !tbaa !1
  %45 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %47, label %72

; <label>:47                                      ; preds = %37
  %48 = load i32, i32* %__result, align 4, !tbaa !1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %72

; <label>:50                                      ; preds = %47
  %51 = load i8*, i8** %__s1, align 8, !tbaa !5
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %__result, align 4, !tbaa !1
  %58 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %59 = icmp ugt i64 %58, 2
  br i1 %59, label %60, label %71

; <label>:60                                      ; preds = %50
  %61 = load i32, i32* %__result, align 4, !tbaa !1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %60
  %64 = load i8*, i8** %__s1, align 8, !tbaa !5
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1, !tbaa !9
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %69 = zext i8 %68 to i32
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %__result, align 4, !tbaa !1
  br label %71

; <label>:71                                      ; preds = %63, %60, %50
  br label %72

; <label>:72                                      ; preds = %71, %47, %37
  br label %73

; <label>:73                                      ; preds = %72, %34, %19
  %74 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %74, i32* %5, !tbaa !1
  %75 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %5, !tbaa !1
  br label %83

; <label>:78                                      ; preds = %16, %13
  %79 = load i8**, i8*** %3, align 8, !tbaa !5
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8, !tbaa !5
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %83

; <label>:83                                      ; preds = %78, %73
  %84 = phi i32 [ %77, %73 ], [ %82, %78 ]
  store i32 %84, i32* %4, !tbaa !1
  %85 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %4, !tbaa !1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89                                      ; preds = %83
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %90

; <label>:90                                      ; preds = %89, %83, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %91 = call i16 @func_1()
  %92 = getelementptr %union.U0, %union.U0* %6, i32 0, i32 0
  store i16 %91, i16* %92, align 2
  %93 = load i64, i64* @g_33, align 8, !tbaa !7
  %94 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %94)
  %95 = load i16, i16* @g_46, align 2, !tbaa !10
  %96 = sext i16 %95 to i64
  %97 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %97)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %113, %90
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %116

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i64], [4 x i64]* @g_48, i32 0, i64 %103
  %105 = load i64, i64* %104, align 8, !tbaa !7
  %106 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %106)
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

; <label>:109                                     ; preds = %101
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %110)
  br label %112

; <label>:112                                     ; preds = %109, %101
  br label %113

; <label>:113                                     ; preds = %112
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:116                                     ; preds = %98
  %117 = load i32, i32* @g_49, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  %120 = load i16, i16* @g_51, align 2, !tbaa !10
  %121 = sext i16 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  %123 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_72, i32 0, i32 0), align 2, !tbaa !10
  %124 = zext i16 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %125)
  %126 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_72, i32 0, i32 0), align 2, !tbaa !10
  %127 = sext i16 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %128)
  %129 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_72, i32 0, i32 0), align 2, !tbaa !10
  %130 = zext i16 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %131)
  %132 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_72, i32 0, i32 0), align 2, !tbaa !10
  %133 = zext i16 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %134)
  %135 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  %136 = zext i16 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %137)
  %138 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  %139 = sext i16 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 %140)
  %141 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  %142 = zext i16 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %143)
  %144 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  %145 = zext i16 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 %146)
  %147 = load i16, i16* @g_94, align 2, !tbaa !10
  %148 = zext i16 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %149)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %150

; <label>:150                                     ; preds = %166, %116
  %151 = load i32, i32* %i, align 4, !tbaa !1
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %169

; <label>:153                                     ; preds = %150
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [1 x i32], [1 x i32]* @g_103, i32 0, i64 %155
  %157 = load i32, i32* %156, align 4, !tbaa !1
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %159)
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

; <label>:162                                     ; preds = %153
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %163)
  br label %165

; <label>:165                                     ; preds = %162, %153
  br label %166

; <label>:166                                     ; preds = %165
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %i, align 4, !tbaa !1
  br label %150

; <label>:169                                     ; preds = %150
  %170 = load i8, i8* @g_107, align 1, !tbaa !9
  %171 = zext i8 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %172)
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %173)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %174

; <label>:174                                     ; preds = %202, %169
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %205

; <label>:177                                     ; preds = %174
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %178

; <label>:178                                     ; preds = %198, %177
  %179 = load i32, i32* %j, align 4, !tbaa !1
  %180 = icmp slt i32 %179, 3
  br i1 %180, label %181, label %201

; <label>:181                                     ; preds = %178
  %182 = load i32, i32* %j, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [1 x [3 x i32]], [1 x [3 x i32]]* @g_151, i32 0, i64 %185
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %186, i32 0, i64 %183
  %188 = load i32, i32* %187, align 4, !tbaa !1
  %189 = zext i32 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 %190)
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

; <label>:193                                     ; preds = %181
  %194 = load i32, i32* %i, align 4, !tbaa !1
  %195 = load i32, i32* %j, align 4, !tbaa !1
  %196 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %194, i32 %195)
  br label %197

; <label>:197                                     ; preds = %193, %181
  br label %198

; <label>:198                                     ; preds = %197
  %199 = load i32, i32* %j, align 4, !tbaa !1
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %j, align 4, !tbaa !1
  br label %178

; <label>:201                                     ; preds = %178
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load i32, i32* %i, align 4, !tbaa !1
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %i, align 4, !tbaa !1
  br label %174

; <label>:205                                     ; preds = %174
  %206 = load i64, i64* @g_179, align 8, !tbaa !7
  %207 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %207)
  %208 = load i16, i16* @g_180, align 2, !tbaa !10
  %209 = sext i16 %208 to i64
  %210 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %210)
  %211 = load i32, i32* @g_181, align 4, !tbaa !1
  %212 = zext i32 %211 to i64
  %213 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %213)
  %214 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %215 = zext i16 %214 to i64
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %216)
  %217 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %218 = sext i16 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %219)
  %220 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %221 = zext i16 %220 to i64
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %222)
  %223 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %224 = zext i16 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %225)
  %226 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %227 = zext i16 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %228)
  %229 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %230 = sext i16 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %231)
  %232 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %233 = zext i16 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %234)
  %235 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_244, i32 0, i32 0), align 2, !tbaa !10
  %236 = zext i16 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %237)
  %238 = load i8, i8* @g_262, align 1, !tbaa !9
  %239 = sext i8 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %240)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %241

; <label>:241                                     ; preds = %256, %205
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = icmp slt i32 %242, 2
  br i1 %243, label %244, label %259

; <label>:244                                     ; preds = %241
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [2 x i64], [2 x i64]* @g_281, i32 0, i64 %246
  %248 = load volatile i64, i64* %247, align 8, !tbaa !7
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %249)
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

; <label>:252                                     ; preds = %244
  %253 = load i32, i32* %i, align 4, !tbaa !1
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %253)
  br label %255

; <label>:255                                     ; preds = %252, %244
  br label %256

; <label>:256                                     ; preds = %255
  %257 = load i32, i32* %i, align 4, !tbaa !1
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %i, align 4, !tbaa !1
  br label %241

; <label>:259                                     ; preds = %241
  %260 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_351, i32 0, i32 0), align 2, !tbaa !10
  %261 = zext i16 %260 to i64
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %262)
  %263 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_351, i32 0, i32 0), align 2, !tbaa !10
  %264 = sext i16 %263 to i64
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %265)
  %266 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_351, i32 0, i32 0), align 2, !tbaa !10
  %267 = zext i16 %266 to i64
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %268)
  %269 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_351, i32 0, i32 0), align 2, !tbaa !10
  %270 = zext i16 %269 to i64
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %271)
  %272 = load i8, i8* @g_430, align 1, !tbaa !9
  %273 = sext i8 %272 to i64
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %274)
  %275 = load i8, i8* @g_448, align 1, !tbaa !9
  %276 = sext i8 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* @g_500, align 4, !tbaa !1
  %279 = zext i32 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %280)
  %281 = load i32, i32* @g_534, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %283)
  %284 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_558, i32 0, i32 0), align 2, !tbaa !10
  %285 = zext i16 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i32 %286)
  %287 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_558, i32 0, i32 0), align 2, !tbaa !10
  %288 = sext i16 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %289)
  %290 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_558, i32 0, i32 0), align 2, !tbaa !10
  %291 = zext i16 %290 to i64
  %292 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %292)
  %293 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_558, i32 0, i32 0), align 2, !tbaa !10
  %294 = zext i16 %293 to i64
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %295)
  %296 = load i32, i32* @g_751, align 4, !tbaa !1
  %297 = zext i32 %296 to i64
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %297, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %298)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %299

; <label>:299                                     ; preds = %337, %259
  %300 = load i32, i32* %i, align 4, !tbaa !1
  %301 = icmp slt i32 %300, 9
  br i1 %301, label %302, label %340

; <label>:302                                     ; preds = %299
  %303 = load i32, i32* %i, align 4, !tbaa !1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [9 x %union.U0], [9 x %union.U0]* @g_819, i32 0, i64 %304
  %306 = bitcast %union.U0* %305 to i16*
  %307 = load volatile i16, i16* %306, align 2, !tbaa !10
  %308 = zext i16 %307 to i64
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i32 %309)
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [9 x %union.U0], [9 x %union.U0]* @g_819, i32 0, i64 %311
  %313 = bitcast %union.U0* %312 to i16*
  %314 = load volatile i16, i16* %313, align 2, !tbaa !10
  %315 = sext i16 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 %316)
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [9 x %union.U0], [9 x %union.U0]* @g_819, i32 0, i64 %318
  %320 = bitcast %union.U0* %319 to i16*
  %321 = load volatile i16, i16* %320, align 2, !tbaa !10
  %322 = zext i16 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 %323)
  %324 = load i32, i32* %i, align 4, !tbaa !1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [9 x %union.U0], [9 x %union.U0]* @g_819, i32 0, i64 %325
  %327 = bitcast %union.U0* %326 to i16*
  %328 = load volatile i16, i16* %327, align 2, !tbaa !10
  %329 = zext i16 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

; <label>:333                                     ; preds = %302
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %334)
  br label %336

; <label>:336                                     ; preds = %333, %302
  br label %337

; <label>:337                                     ; preds = %336
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %i, align 4, !tbaa !1
  br label %299

; <label>:340                                     ; preds = %299
  %341 = load i8, i8* @g_957, align 1, !tbaa !9
  %342 = zext i8 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %343)
  %344 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), align 2, !tbaa !10
  %345 = zext i16 %344 to i64
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %345, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %346)
  %347 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), align 2, !tbaa !10
  %348 = sext i16 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %349)
  %350 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), align 2, !tbaa !10
  %351 = zext i16 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 %352)
  %353 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), align 2, !tbaa !10
  %354 = zext i16 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 %355)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %356

; <label>:356                                     ; preds = %372, %340
  %357 = load i32, i32* %i, align 4, !tbaa !1
  %358 = icmp slt i32 %357, 9
  br i1 %358, label %359, label %375

; <label>:359                                     ; preds = %356
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [9 x i32], [9 x i32]* @g_1012, i32 0, i64 %361
  %363 = load volatile i32, i32* %362, align 4, !tbaa !1
  %364 = sext i32 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

; <label>:368                                     ; preds = %359
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %369)
  br label %371

; <label>:371                                     ; preds = %368, %359
  br label %372

; <label>:372                                     ; preds = %371
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %i, align 4, !tbaa !1
  br label %356

; <label>:375                                     ; preds = %356
  %376 = load i32, i32* @g_1014, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %378)
  %379 = load i8, i8* @g_1061, align 1, !tbaa !9
  %380 = sext i8 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %381)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:382                                     ; preds = %410, %375
  %383 = load i32, i32* %i, align 4, !tbaa !1
  %384 = icmp slt i32 %383, 7
  br i1 %384, label %385, label %413

; <label>:385                                     ; preds = %382
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %386

; <label>:386                                     ; preds = %406, %385
  %387 = load i32, i32* %j, align 4, !tbaa !1
  %388 = icmp slt i32 %387, 7
  br i1 %388, label %389, label %409

; <label>:389                                     ; preds = %386
  %390 = load i32, i32* %j, align 4, !tbaa !1
  %391 = sext i32 %390 to i64
  %392 = load i32, i32* %i, align 4, !tbaa !1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* @g_1105, i32 0, i64 %393
  %395 = getelementptr inbounds [7 x i32], [7 x i32]* %394, i32 0, i64 %391
  %396 = load i32, i32* %395, align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 %398)
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

; <label>:401                                     ; preds = %389
  %402 = load i32, i32* %i, align 4, !tbaa !1
  %403 = load i32, i32* %j, align 4, !tbaa !1
  %404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 %402, i32 %403)
  br label %405

; <label>:405                                     ; preds = %401, %389
  br label %406

; <label>:406                                     ; preds = %405
  %407 = load i32, i32* %j, align 4, !tbaa !1
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %j, align 4, !tbaa !1
  br label %386

; <label>:409                                     ; preds = %386
  br label %410

; <label>:410                                     ; preds = %409
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:413                                     ; preds = %382
  %414 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %415 = zext i16 %414 to i64
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %415, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %416)
  %417 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %418 = sext i16 %417 to i64
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %418, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %419)
  %420 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %421 = zext i16 %420 to i64
  %422 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %421, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %422)
  %423 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %424 = zext i16 %423 to i64
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %425)
  %426 = load i8, i8* @g_1206, align 1, !tbaa !9
  %427 = sext i8 %426 to i64
  %428 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %427, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %428)
  %429 = load i16, i16* @g_1286, align 2, !tbaa !10
  %430 = sext i16 %429 to i64
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %431)
  %432 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1345, i32 0, i32 0), align 2, !tbaa !10
  %433 = zext i16 %432 to i64
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %434)
  %435 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1345, i32 0, i32 0), align 2, !tbaa !10
  %436 = sext i16 %435 to i64
  %437 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %436, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 %437)
  %438 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1345, i32 0, i32 0), align 2, !tbaa !10
  %439 = zext i16 %438 to i64
  %440 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %439, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 %440)
  %441 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1345, i32 0, i32 0), align 2, !tbaa !10
  %442 = zext i16 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 %443)
  %444 = load i64, i64* @g_1383, align 8, !tbaa !7
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %445)
  %446 = load volatile i32, i32* @g_1402, align 4, !tbaa !1
  %447 = zext i32 %446 to i64
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %448)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %449

; <label>:449                                     ; preds = %529, %413
  %450 = load i32, i32* %i, align 4, !tbaa !1
  %451 = icmp slt i32 %450, 5
  br i1 %451, label %452, label %532

; <label>:452                                     ; preds = %449
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %453

; <label>:453                                     ; preds = %525, %452
  %454 = load i32, i32* %j, align 4, !tbaa !1
  %455 = icmp slt i32 %454, 10
  br i1 %455, label %456, label %528

; <label>:456                                     ; preds = %453
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %457

; <label>:457                                     ; preds = %521, %456
  %458 = load i32, i32* %k, align 4, !tbaa !1
  %459 = icmp slt i32 %458, 5
  br i1 %459, label %460, label %524

; <label>:460                                     ; preds = %457
  %461 = load i32, i32* %k, align 4, !tbaa !1
  %462 = sext i32 %461 to i64
  %463 = load i32, i32* %j, align 4, !tbaa !1
  %464 = sext i32 %463 to i64
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [5 x [10 x [5 x %union.U0]]], [5 x [10 x [5 x %union.U0]]]* @g_1413, i32 0, i64 %466
  %468 = getelementptr inbounds [10 x [5 x %union.U0]], [10 x [5 x %union.U0]]* %467, i32 0, i64 %464
  %469 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* %468, i32 0, i64 %462
  %470 = bitcast %union.U0* %469 to i16*
  %471 = load volatile i16, i16* %470, align 2, !tbaa !10
  %472 = zext i16 %471 to i64
  %473 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0), i32 %473)
  %474 = load i32, i32* %k, align 4, !tbaa !1
  %475 = sext i32 %474 to i64
  %476 = load i32, i32* %j, align 4, !tbaa !1
  %477 = sext i32 %476 to i64
  %478 = load i32, i32* %i, align 4, !tbaa !1
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [5 x [10 x [5 x %union.U0]]], [5 x [10 x [5 x %union.U0]]]* @g_1413, i32 0, i64 %479
  %481 = getelementptr inbounds [10 x [5 x %union.U0]], [10 x [5 x %union.U0]]* %480, i32 0, i64 %477
  %482 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* %481, i32 0, i64 %475
  %483 = bitcast %union.U0* %482 to i16*
  %484 = load volatile i16, i16* %483, align 2, !tbaa !10
  %485 = sext i16 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i32 0, i32 0), i32 %486)
  %487 = load i32, i32* %k, align 4, !tbaa !1
  %488 = sext i32 %487 to i64
  %489 = load i32, i32* %j, align 4, !tbaa !1
  %490 = sext i32 %489 to i64
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [5 x [10 x [5 x %union.U0]]], [5 x [10 x [5 x %union.U0]]]* @g_1413, i32 0, i64 %492
  %494 = getelementptr inbounds [10 x [5 x %union.U0]], [10 x [5 x %union.U0]]* %493, i32 0, i64 %490
  %495 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* %494, i32 0, i64 %488
  %496 = bitcast %union.U0* %495 to i16*
  %497 = load volatile i16, i16* %496, align 2, !tbaa !10
  %498 = zext i16 %497 to i64
  %499 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %498, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0), i32 %499)
  %500 = load i32, i32* %k, align 4, !tbaa !1
  %501 = sext i32 %500 to i64
  %502 = load i32, i32* %j, align 4, !tbaa !1
  %503 = sext i32 %502 to i64
  %504 = load i32, i32* %i, align 4, !tbaa !1
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [5 x [10 x [5 x %union.U0]]], [5 x [10 x [5 x %union.U0]]]* @g_1413, i32 0, i64 %505
  %507 = getelementptr inbounds [10 x [5 x %union.U0]], [10 x [5 x %union.U0]]* %506, i32 0, i64 %503
  %508 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* %507, i32 0, i64 %501
  %509 = bitcast %union.U0* %508 to i16*
  %510 = load volatile i16, i16* %509, align 2, !tbaa !10
  %511 = zext i16 %510 to i64
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %511, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i32 %512)
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %520

; <label>:515                                     ; preds = %460
  %516 = load i32, i32* %i, align 4, !tbaa !1
  %517 = load i32, i32* %j, align 4, !tbaa !1
  %518 = load i32, i32* %k, align 4, !tbaa !1
  %519 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0), i32 %516, i32 %517, i32 %518)
  br label %520

; <label>:520                                     ; preds = %515, %460
  br label %521

; <label>:521                                     ; preds = %520
  %522 = load i32, i32* %k, align 4, !tbaa !1
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %k, align 4, !tbaa !1
  br label %457

; <label>:524                                     ; preds = %457
  br label %525

; <label>:525                                     ; preds = %524
  %526 = load i32, i32* %j, align 4, !tbaa !1
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %j, align 4, !tbaa !1
  br label %453

; <label>:528                                     ; preds = %453
  br label %529

; <label>:529                                     ; preds = %528
  %530 = load i32, i32* %i, align 4, !tbaa !1
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %i, align 4, !tbaa !1
  br label %449

; <label>:532                                     ; preds = %449
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %533

; <label>:533                                     ; preds = %613, %532
  %534 = load i32, i32* %i, align 4, !tbaa !1
  %535 = icmp slt i32 %534, 5
  br i1 %535, label %536, label %616

; <label>:536                                     ; preds = %533
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %537

; <label>:537                                     ; preds = %609, %536
  %538 = load i32, i32* %j, align 4, !tbaa !1
  %539 = icmp slt i32 %538, 4
  br i1 %539, label %540, label %612

; <label>:540                                     ; preds = %537
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %541

; <label>:541                                     ; preds = %605, %540
  %542 = load i32, i32* %k, align 4, !tbaa !1
  %543 = icmp slt i32 %542, 4
  br i1 %543, label %544, label %608

; <label>:544                                     ; preds = %541
  %545 = load i32, i32* %k, align 4, !tbaa !1
  %546 = sext i32 %545 to i64
  %547 = load i32, i32* %j, align 4, !tbaa !1
  %548 = sext i32 %547 to i64
  %549 = load i32, i32* %i, align 4, !tbaa !1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [5 x [4 x [4 x %union.U0]]], [5 x [4 x [4 x %union.U0]]]* @g_1513, i32 0, i64 %550
  %552 = getelementptr inbounds [4 x [4 x %union.U0]], [4 x [4 x %union.U0]]* %551, i32 0, i64 %548
  %553 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %552, i32 0, i64 %546
  %554 = bitcast %union.U0* %553 to i16*
  %555 = load volatile i16, i16* %554, align 2, !tbaa !10
  %556 = zext i16 %555 to i64
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %556, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.77, i32 0, i32 0), i32 %557)
  %558 = load i32, i32* %k, align 4, !tbaa !1
  %559 = sext i32 %558 to i64
  %560 = load i32, i32* %j, align 4, !tbaa !1
  %561 = sext i32 %560 to i64
  %562 = load i32, i32* %i, align 4, !tbaa !1
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [5 x [4 x [4 x %union.U0]]], [5 x [4 x [4 x %union.U0]]]* @g_1513, i32 0, i64 %563
  %565 = getelementptr inbounds [4 x [4 x %union.U0]], [4 x [4 x %union.U0]]* %564, i32 0, i64 %561
  %566 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %565, i32 0, i64 %559
  %567 = bitcast %union.U0* %566 to i16*
  %568 = load i16, i16* %567, align 2, !tbaa !10
  %569 = sext i16 %568 to i64
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %569, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i32 %570)
  %571 = load i32, i32* %k, align 4, !tbaa !1
  %572 = sext i32 %571 to i64
  %573 = load i32, i32* %j, align 4, !tbaa !1
  %574 = sext i32 %573 to i64
  %575 = load i32, i32* %i, align 4, !tbaa !1
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [5 x [4 x [4 x %union.U0]]], [5 x [4 x [4 x %union.U0]]]* @g_1513, i32 0, i64 %576
  %578 = getelementptr inbounds [4 x [4 x %union.U0]], [4 x [4 x %union.U0]]* %577, i32 0, i64 %574
  %579 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %578, i32 0, i64 %572
  %580 = bitcast %union.U0* %579 to i16*
  %581 = load i16, i16* %580, align 2, !tbaa !10
  %582 = zext i16 %581 to i64
  %583 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %582, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i32 0, i32 0), i32 %583)
  %584 = load i32, i32* %k, align 4, !tbaa !1
  %585 = sext i32 %584 to i64
  %586 = load i32, i32* %j, align 4, !tbaa !1
  %587 = sext i32 %586 to i64
  %588 = load i32, i32* %i, align 4, !tbaa !1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [5 x [4 x [4 x %union.U0]]], [5 x [4 x [4 x %union.U0]]]* @g_1513, i32 0, i64 %589
  %591 = getelementptr inbounds [4 x [4 x %union.U0]], [4 x [4 x %union.U0]]* %590, i32 0, i64 %587
  %592 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %591, i32 0, i64 %585
  %593 = bitcast %union.U0* %592 to i16*
  %594 = load i16, i16* %593, align 2, !tbaa !10
  %595 = zext i16 %594 to i64
  %596 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %595, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.80, i32 0, i32 0), i32 %596)
  %597 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %604

; <label>:599                                     ; preds = %544
  %600 = load i32, i32* %i, align 4, !tbaa !1
  %601 = load i32, i32* %j, align 4, !tbaa !1
  %602 = load i32, i32* %k, align 4, !tbaa !1
  %603 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0), i32 %600, i32 %601, i32 %602)
  br label %604

; <label>:604                                     ; preds = %599, %544
  br label %605

; <label>:605                                     ; preds = %604
  %606 = load i32, i32* %k, align 4, !tbaa !1
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %k, align 4, !tbaa !1
  br label %541

; <label>:608                                     ; preds = %541
  br label %609

; <label>:609                                     ; preds = %608
  %610 = load i32, i32* %j, align 4, !tbaa !1
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %j, align 4, !tbaa !1
  br label %537

; <label>:612                                     ; preds = %537
  br label %613

; <label>:613                                     ; preds = %612
  %614 = load i32, i32* %i, align 4, !tbaa !1
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %i, align 4, !tbaa !1
  br label %533

; <label>:616                                     ; preds = %533
  %617 = load i8, i8* @g_1528, align 1, !tbaa !9
  %618 = sext i8 %617 to i64
  %619 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %618, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %619)
  %620 = load i8, i8* @g_1690, align 1, !tbaa !9
  %621 = sext i8 %620 to i64
  %622 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %621, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %622)
  %623 = load i16, i16* @g_1715, align 2, !tbaa !10
  %624 = sext i16 %623 to i64
  %625 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %624, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %625)
  %626 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1748, i32 0, i32 0), align 2, !tbaa !10
  %627 = zext i16 %626 to i64
  %628 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %627, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %628)
  %629 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1748, i32 0, i32 0), align 2, !tbaa !10
  %630 = sext i16 %629 to i64
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %630, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 %631)
  %632 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1748, i32 0, i32 0), align 2, !tbaa !10
  %633 = zext i16 %632 to i64
  %634 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %633, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 %634)
  %635 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1748, i32 0, i32 0), align 2, !tbaa !10
  %636 = zext i16 %635 to i64
  %637 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %636, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 %637)
  %638 = load i32, i32* @g_1906, align 4, !tbaa !1
  %639 = zext i32 %638 to i64
  %640 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %639, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %640)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %641

; <label>:641                                     ; preds = %679, %616
  %642 = load i32, i32* %i, align 4, !tbaa !1
  %643 = icmp slt i32 %642, 1
  br i1 %643, label %644, label %682

; <label>:644                                     ; preds = %641
  %645 = load i32, i32* %i, align 4, !tbaa !1
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* @g_1929, i32 0, i64 %646
  %648 = bitcast %union.U0* %647 to i16*
  %649 = load volatile i16, i16* %648, align 2, !tbaa !10
  %650 = zext i16 %649 to i64
  %651 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %650, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i32 %651)
  %652 = load i32, i32* %i, align 4, !tbaa !1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* @g_1929, i32 0, i64 %653
  %655 = bitcast %union.U0* %654 to i16*
  %656 = load volatile i16, i16* %655, align 2, !tbaa !10
  %657 = sext i16 %656 to i64
  %658 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %657, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i32 %658)
  %659 = load i32, i32* %i, align 4, !tbaa !1
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* @g_1929, i32 0, i64 %660
  %662 = bitcast %union.U0* %661 to i16*
  %663 = load volatile i16, i16* %662, align 2, !tbaa !10
  %664 = zext i16 %663 to i64
  %665 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %664, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i32 %665)
  %666 = load i32, i32* %i, align 4, !tbaa !1
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* @g_1929, i32 0, i64 %667
  %669 = bitcast %union.U0* %668 to i16*
  %670 = load volatile i16, i16* %669, align 2, !tbaa !10
  %671 = zext i16 %670 to i64
  %672 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %671, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 %672)
  %673 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %678

; <label>:675                                     ; preds = %644
  %676 = load i32, i32* %i, align 4, !tbaa !1
  %677 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %676)
  br label %678

; <label>:678                                     ; preds = %675, %644
  br label %679

; <label>:679                                     ; preds = %678
  %680 = load i32, i32* %i, align 4, !tbaa !1
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %i, align 4, !tbaa !1
  br label %641

; <label>:682                                     ; preds = %641
  %683 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2072, i32 0, i32 0), align 2, !tbaa !10
  %684 = zext i16 %683 to i64
  %685 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %684, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %685)
  %686 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2072, i32 0, i32 0), align 2, !tbaa !10
  %687 = sext i16 %686 to i64
  %688 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %687, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %688)
  %689 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2072, i32 0, i32 0), align 2, !tbaa !10
  %690 = zext i16 %689 to i64
  %691 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %690, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %691)
  %692 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2072, i32 0, i32 0), align 2, !tbaa !10
  %693 = zext i16 %692 to i64
  %694 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %693, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i32 %694)
  %695 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2073, i32 0, i32 0), align 2, !tbaa !10
  %696 = zext i16 %695 to i64
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %696, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i32 %697)
  %698 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2073, i32 0, i32 0), align 2, !tbaa !10
  %699 = sext i16 %698 to i64
  %700 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %699, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i32 %700)
  %701 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2073, i32 0, i32 0), align 2, !tbaa !10
  %702 = zext i16 %701 to i64
  %703 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %702, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i32 %703)
  %704 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2073, i32 0, i32 0), align 2, !tbaa !10
  %705 = zext i16 %704 to i64
  %706 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %705, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i32 %706)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %707

; <label>:707                                     ; preds = %745, %682
  %708 = load i32, i32* %i, align 4, !tbaa !1
  %709 = icmp slt i32 %708, 10
  br i1 %709, label %710, label %748

; <label>:710                                     ; preds = %707
  %711 = load i32, i32* %i, align 4, !tbaa !1
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [10 x %union.U0], [10 x %union.U0]* @g_2131, i32 0, i64 %712
  %714 = bitcast %union.U0* %713 to i16*
  %715 = load volatile i16, i16* %714, align 2, !tbaa !10
  %716 = zext i16 %715 to i64
  %717 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %716, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i32 %717)
  %718 = load i32, i32* %i, align 4, !tbaa !1
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [10 x %union.U0], [10 x %union.U0]* @g_2131, i32 0, i64 %719
  %721 = bitcast %union.U0* %720 to i16*
  %722 = load volatile i16, i16* %721, align 2, !tbaa !10
  %723 = sext i16 %722 to i64
  %724 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %723, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i32 %724)
  %725 = load i32, i32* %i, align 4, !tbaa !1
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [10 x %union.U0], [10 x %union.U0]* @g_2131, i32 0, i64 %726
  %728 = bitcast %union.U0* %727 to i16*
  %729 = load volatile i16, i16* %728, align 2, !tbaa !10
  %730 = zext i16 %729 to i64
  %731 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %730, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.103, i32 0, i32 0), i32 %731)
  %732 = load i32, i32* %i, align 4, !tbaa !1
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds [10 x %union.U0], [10 x %union.U0]* @g_2131, i32 0, i64 %733
  %735 = bitcast %union.U0* %734 to i16*
  %736 = load volatile i16, i16* %735, align 2, !tbaa !10
  %737 = zext i16 %736 to i64
  %738 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %737, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i32 %738)
  %739 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %744

; <label>:741                                     ; preds = %710
  %742 = load i32, i32* %i, align 4, !tbaa !1
  %743 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %742)
  br label %744

; <label>:744                                     ; preds = %741, %710
  br label %745

; <label>:745                                     ; preds = %744
  %746 = load i32, i32* %i, align 4, !tbaa !1
  %747 = add nsw i32 %746, 1
  store i32 %747, i32* %i, align 4, !tbaa !1
  br label %707

; <label>:748                                     ; preds = %707
  %749 = load volatile i16, i16* @g_2166, align 2, !tbaa !10
  %750 = zext i16 %749 to i64
  %751 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %750, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i32 %751)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %752

; <label>:752                                     ; preds = %790, %748
  %753 = load i32, i32* %i, align 4, !tbaa !1
  %754 = icmp slt i32 %753, 6
  br i1 %754, label %755, label %793

; <label>:755                                     ; preds = %752
  %756 = load i32, i32* %i, align 4, !tbaa !1
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* @g_2192, i32 0, i64 %757
  %759 = bitcast %union.U0* %758 to i16*
  %760 = load volatile i16, i16* %759, align 2, !tbaa !10
  %761 = zext i16 %760 to i64
  %762 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %761, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i32 %762)
  %763 = load i32, i32* %i, align 4, !tbaa !1
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* @g_2192, i32 0, i64 %764
  %766 = bitcast %union.U0* %765 to i16*
  %767 = load volatile i16, i16* %766, align 2, !tbaa !10
  %768 = sext i16 %767 to i64
  %769 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %768, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.107, i32 0, i32 0), i32 %769)
  %770 = load i32, i32* %i, align 4, !tbaa !1
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* @g_2192, i32 0, i64 %771
  %773 = bitcast %union.U0* %772 to i16*
  %774 = load volatile i16, i16* %773, align 2, !tbaa !10
  %775 = zext i16 %774 to i64
  %776 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %775, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i32 %776)
  %777 = load i32, i32* %i, align 4, !tbaa !1
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* @g_2192, i32 0, i64 %778
  %780 = bitcast %union.U0* %779 to i16*
  %781 = load volatile i16, i16* %780, align 2, !tbaa !10
  %782 = zext i16 %781 to i64
  %783 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %782, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 %783)
  %784 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %786, label %789

; <label>:786                                     ; preds = %755
  %787 = load i32, i32* %i, align 4, !tbaa !1
  %788 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %787)
  br label %789

; <label>:789                                     ; preds = %786, %755
  br label %790

; <label>:790                                     ; preds = %789
  %791 = load i32, i32* %i, align 4, !tbaa !1
  %792 = add nsw i32 %791, 1
  store i32 %792, i32* %i, align 4, !tbaa !1
  br label %752

; <label>:793                                     ; preds = %752
  %794 = load volatile i8, i8* @g_2217, align 1, !tbaa !9
  %795 = sext i8 %794 to i64
  %796 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %795, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i32 %796)
  %797 = load i64, i64* @g_2256, align 8, !tbaa !7
  %798 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %797, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 %798)
  %799 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2263, i32 0, i32 0), align 2, !tbaa !10
  %800 = zext i16 %799 to i64
  %801 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %800, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i32 %801)
  %802 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2263, i32 0, i32 0), align 2, !tbaa !10
  %803 = sext i16 %802 to i64
  %804 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %803, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i32 %804)
  %805 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2263, i32 0, i32 0), align 2, !tbaa !10
  %806 = zext i16 %805 to i64
  %807 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %806, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i32 %807)
  %808 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_2263, i32 0, i32 0), align 2, !tbaa !10
  %809 = zext i16 %808 to i64
  %810 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %809, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i32 %810)
  %811 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %812 = zext i32 %811 to i64
  %813 = xor i64 %812, 4294967295
  %814 = trunc i64 %813 to i32
  %815 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %814, i32 %815)
  %816 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %816) #1
  %817 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %817) #1
  %818 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %818) #1
  %819 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %819) #1
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
define internal i16 @func_1() #0 {
  %1 = alloca %union.U0, align 2
  %l_42 = alloca i64, align 8
  %l_45 = alloca [5 x [5 x i16*]], align 16
  %l_47 = alloca i32, align 4
  %l_1474 = alloca i32*****, align 8
  %l_1475 = alloca i32, align 4
  %l_2255 = alloca i64*, align 8
  %l_2257 = alloca i16, align 2
  %l_2258 = alloca i64, align 8
  %l_2259 = alloca i32, align 4
  %l_2261 = alloca [2 x i32*], align 16
  %l_2262 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %2 = bitcast i64* %l_42 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 1498674387402178798, i64* %l_42, align 8, !tbaa !7
  %3 = bitcast [5 x [5 x i16*]]* %l_45 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %3) #1
  %4 = bitcast [5 x [5 x i16*]]* %l_45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([5 x [5 x i16*]]* @func_1.l_45 to i8*), i64 200, i32 16, i1 false)
  %5 = bitcast i32* %l_47 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1254883638, i32* %l_47, align 4, !tbaa !1
  %6 = bitcast i32****** %l_1474 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32***** @g_114, i32****** %l_1474, align 8, !tbaa !5
  %7 = bitcast i32* %l_1475 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 789493081, i32* %l_1475, align 4, !tbaa !1
  %8 = bitcast i64** %l_2255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64* @g_2256, i64** %l_2255, align 8, !tbaa !5
  %9 = bitcast i16* %l_2257 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  store i16 -1, i16* %l_2257, align 2, !tbaa !10
  %10 = bitcast i64* %l_2258 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 4091195916593416121, i64* %l_2258, align 8, !tbaa !7
  %11 = bitcast i32* %l_2259 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -622539303, i32* %l_2259, align 4, !tbaa !1
  %12 = bitcast [2 x i32*]* %l_2261 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast i32* %l_2262 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 391290200, i32* %l_2262, align 4, !tbaa !1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %23, %0
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_2261, i32 0, i64 %21
  store i32* null, i32** %22, align 8, !tbaa !5
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:26                                      ; preds = %16
  %27 = load i64, i64* @g_33, align 8, !tbaa !7
  %28 = xor i64 %27, -1
  %29 = load i32, i32* %l_47, align 4, !tbaa !1
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 1498674387402178798
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %l_47, align 4, !tbaa !1
  %33 = trunc i32 %32 to i16
  %34 = call i32 @func_43(i16 signext %33)
  %35 = call zeroext i8 @func_38(i8 signext -18, i8 zeroext -18, i32 %34)
  %36 = load i32*****, i32****** %l_1474, align 8, !tbaa !5
  %37 = icmp ne i32***** %36, null
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @g_751, align 4, !tbaa !1
  %40 = xor i32 %38, %39
  %41 = trunc i32 %40 to i8
  %42 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %41)
  %43 = zext i8 %42 to i64
  %44 = icmp slt i64 %43, 1498674387402178798
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %26
  %46 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %47 = sext i16 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

; <label>:49                                      ; preds = %45, %26
  %50 = phi i1 [ false, %26 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = trunc i32 %51 to i16
  %53 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %54 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %52, i16 signext %53)
  %55 = sext i16 %54 to i64
  %56 = or i64 %55, 65535
  %57 = trunc i64 %56 to i8
  %58 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %35, i8 zeroext %57)
  %59 = zext i8 %58 to i64
  %60 = xor i64 %59, 135
  %61 = trunc i64 %60 to i16
  %62 = load i32, i32* %l_1475, align 4, !tbaa !1
  %63 = trunc i32 %62 to i16
  %64 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %61, i16 signext %63)
  %65 = sext i16 %64 to i64
  %66 = icmp ugt i64 %28, %65
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* getelementptr inbounds ([7 x [7 x i32]], [7 x [7 x i32]]* @g_1105, i32 0, i64 0, i64 5), align 4, !tbaa !1
  %70 = trunc i32 %69 to i8
  %71 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %72 = sext i16 %71 to i32
  %73 = load i64, i64* @g_33, align 8, !tbaa !7
  %74 = trunc i64 %73 to i8
  %75 = call signext i16 @func_26(i64 %68, i8 signext %70, i16 signext 16622, i32 %72, i8 signext %74)
  %76 = load i32, i32* @g_500, align 4, !tbaa !1
  %77 = trunc i32 %76 to i16
  %78 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %75, i16 signext %77)
  %79 = call i64 @func_21(i32 220360975, i8 signext -18)
  %80 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_558, i32 0, i32 0), align 2, !tbaa !10
  %81 = zext i16 %80 to i32
  %82 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %83 = trunc i16 %82 to i8
  %84 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), align 2, !tbaa !10
  %85 = trunc i16 %84 to i8
  %86 = call zeroext i16 @func_15(i64 %79, i32 %81, i16 signext 16622, i8 zeroext %83, i8 signext %85)
  %87 = zext i16 %86 to i32
  %88 = load i16*, i16** @g_1947, align 8, !tbaa !5
  %89 = load i16, i16* %88, align 2, !tbaa !10
  %90 = zext i16 %89 to i32
  %91 = or i32 %87, %90
  %92 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %93 = zext i16 %92 to i32
  %94 = icmp ne i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = load volatile i16, i16* getelementptr inbounds ([5 x [4 x [4 x %union.U0]]], [5 x [4 x [4 x %union.U0]]]* @g_1513, i32 0, i64 1, i64 0, i64 3, i32 0), align 2, !tbaa !10
  %97 = zext i16 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

; <label>:99                                      ; preds = %49
  %100 = load volatile i8*, i8** @g_2216, align 8, !tbaa !5
  %101 = load volatile i8, i8* %100, align 1, !tbaa !9
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br label %104

; <label>:104                                     ; preds = %99, %49
  %105 = phi i1 [ false, %49 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = trunc i32 %106 to i8
  %108 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext -8, i8 signext %107)
  %109 = load i16*, i16** @g_1947, align 8, !tbaa !5
  %110 = load i16, i16* %109, align 2, !tbaa !10
  %111 = call i64 @func_10(i32 -1, i16 zeroext %110)
  %112 = icmp eq i64 %111, -8640844865018621351
  %113 = zext i1 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** %l_2255, align 8, !tbaa !5
  %116 = load i64, i64* %115, align 8, !tbaa !7
  %117 = and i64 %116, %114
  store i64 %117, i64* %115, align 8, !tbaa !7
  %118 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), align 2, !tbaa !10
  %119 = zext i16 %118 to i64
  %120 = call i64 @safe_mod_func_int64_t_s_s(i64 %117, i64 %119)
  %121 = trunc i64 %120 to i32
  %122 = call i32 @safe_add_func_int32_t_s_s(i32 %121, i32 -1456424544)
  %123 = trunc i32 %122 to i16
  %124 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %123, i32 -1)
  %125 = zext i16 %124 to i64
  %126 = icmp eq i64 %125, -1
  %127 = zext i1 %126 to i32
  %128 = trunc i32 %127 to i16
  %129 = load i32, i32* %l_1475, align 4, !tbaa !1
  %130 = trunc i32 %129 to i16
  %131 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %128, i16 signext %130)
  %132 = sext i16 %131 to i64
  %133 = icmp ne i64 %132, 1
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %l_2258, align 8, !tbaa !7
  %136 = load i16**, i16*** @g_1334, align 8, !tbaa !5
  %137 = load i16*, i16** %136, align 8, !tbaa !5
  %138 = load i16, i16* %137, align 2, !tbaa !10
  %139 = sext i16 %138 to i64
  %140 = icmp sge i64 %135, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %l_2259, align 4, !tbaa !1
  store i32 %142, i32* %l_2262, align 4, !tbaa !1
  %143 = load i32***, i32**** @g_634, align 8, !tbaa !5
  %144 = load i32**, i32*** %143, align 8, !tbaa !5
  %145 = load i32*, i32** %144, align 8, !tbaa !5
  %146 = load i32****, i32***** @g_121, align 8, !tbaa !5
  %147 = load i32***, i32**** %146, align 8, !tbaa !5
  %148 = load i32**, i32*** %147, align 8, !tbaa !5
  store i32* %145, i32** %148, align 8, !tbaa !5
  %149 = bitcast %union.U0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* bitcast (%union.U0* @g_2263 to i8*), i64 2, i32 2, i1 false), !tbaa.struct !12
  %150 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %l_2262 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast [2 x i32*]* %l_2261 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %153) #1
  %154 = bitcast i32* %l_2259 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i64* %l_2258 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i16* %l_2257 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %156) #1
  %157 = bitcast i64** %l_2255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32* %l_1475 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32****** %l_1474 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %l_47 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast [5 x [5 x i16*]]* %l_45 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %161) #1
  %162 = bitcast i64* %l_42 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %164 = load i16, i16* %163, align 2
  ret i16 %164
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.116, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal i64 @func_10(i32 %p_11, i16 zeroext %p_12) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  store i32 %p_11, i32* %1, align 4, !tbaa !1
  store i16 %p_12, i16* %2, align 2, !tbaa !10
  %3 = load volatile i16, i16* getelementptr inbounds ([10 x %union.U0], [10 x %union.U0]* @g_2131, i32 0, i64 2, i32 0), align 2, !tbaa !10
  %4 = sext i16 %3 to i64
  ret i64 %4
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
define internal zeroext i16 @func_15(i64 %p_16, i32 %p_17, i16 signext %p_18, i8 zeroext %p_19, i8 signext %p_20) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %l_1527 = alloca [6 x i16**], align 16
  %l_1529 = alloca [2 x i32*], align 16
  %l_1530 = alloca i32*, align 8
  %l_1531 = alloca i32**, align 8
  %l_1532 = alloca [3 x [4 x [9 x i32**]]], align 16
  %l_1538 = alloca [7 x i32*], align 16
  %l_1537 = alloca i32**, align 8
  %l_1539 = alloca i32, align 4
  %l_1540 = alloca i64*, align 8
  %l_1541 = alloca i32, align 4
  %l_1569 = alloca i32, align 4
  %l_1572 = alloca i32, align 4
  %l_1573 = alloca i32, align 4
  %l_1578 = alloca i32, align 4
  %l_1579 = alloca i32, align 4
  %l_1589 = alloca i32, align 4
  %l_1592 = alloca i32, align 4
  %l_1653 = alloca i16, align 2
  %l_1684 = alloca i16***, align 8
  %l_1683 = alloca i16****, align 8
  %l_1689 = alloca i16*, align 8
  %l_1688 = alloca [1 x i16**], align 8
  %l_1694 = alloca i32*****, align 8
  %l_1751 = alloca i64*, align 8
  %l_1750 = alloca i64**, align 8
  %l_1749 = alloca i64***, align 8
  %l_1783 = alloca i32, align 4
  %l_1833 = alloca i32, align 4
  %l_1859 = alloca i32*, align 8
  %l_1903 = alloca i64***, align 8
  %l_1904 = alloca i32, align 4
  %l_1942 = alloca i32, align 4
  %l_1954 = alloca [4 x [6 x %union.U0**]], align 16
  %l_1953 = alloca [6 x %union.U0***], align 16
  %l_1958 = alloca %union.U0***, align 8
  %l_2002 = alloca i64, align 8
  %l_2033 = alloca i8, align 1
  %l_2046 = alloca %union.U0****, align 8
  %l_2085 = alloca i32**, align 8
  %l_2151 = alloca i8, align 1
  %l_2251 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 %p_16, i64* %1, align 8, !tbaa !7
  store i32 %p_17, i32* %2, align 4, !tbaa !1
  store i16 %p_18, i16* %3, align 2, !tbaa !10
  store i8 %p_19, i8* %4, align 1, !tbaa !9
  store i8 %p_20, i8* %5, align 1, !tbaa !9
  %6 = bitcast [6 x i16**]* %l_1527 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %6) #1
  %7 = bitcast [6 x i16**]* %l_1527 to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 48, i32 16, i1 false)
  %8 = bitcast i8* %7 to [6 x i16**]*
  %9 = getelementptr [6 x i16**], [6 x i16**]* %8, i32 0, i32 0
  store i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16*]* @g_334 to i8*), i64 16) to i16**), i16*** %9
  %10 = getelementptr [6 x i16**], [6 x i16**]* %8, i32 0, i32 1
  store i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16*]* @g_334 to i8*), i64 16) to i16**), i16*** %10
  %11 = getelementptr [6 x i16**], [6 x i16**]* %8, i32 0, i32 2
  store i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16*]* @g_334 to i8*), i64 16) to i16**), i16*** %11
  %12 = getelementptr [6 x i16**], [6 x i16**]* %8, i32 0, i32 3
  store i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16*]* @g_334 to i8*), i64 16) to i16**), i16*** %12
  %13 = getelementptr [6 x i16**], [6 x i16**]* %8, i32 0, i32 4
  store i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16*]* @g_334 to i8*), i64 16) to i16**), i16*** %13
  %14 = getelementptr [6 x i16**], [6 x i16**]* %8, i32 0, i32 5
  store i16** bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16*]* @g_334 to i8*), i64 16) to i16**), i16*** %14
  %15 = bitcast [2 x i32*]* %l_1529 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast i32** %l_1530 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* @g_751, i32** %l_1530, align 8, !tbaa !5
  %17 = bitcast i32*** %l_1531 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32** null, i32*** %l_1531, align 8, !tbaa !5
  %18 = bitcast [3 x [4 x [9 x i32**]]]* %l_1532 to i8*
  call void @llvm.lifetime.start(i64 864, i8* %18) #1
  %19 = getelementptr inbounds [3 x [4 x [9 x i32**]]], [3 x [4 x [9 x i32**]]]* %l_1532, i64 0, i64 0
  %20 = getelementptr inbounds [4 x [9 x i32**]], [4 x [9 x i32**]]* %19, i64 0, i64 0
  %21 = bitcast [9 x i32**]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 72, i32 8, i1 false)
  %22 = getelementptr inbounds [9 x i32**], [9 x i32**]* %20, i64 0, i64 0
  %23 = getelementptr inbounds i32**, i32*** %22, i64 1
  %24 = getelementptr inbounds i32**, i32*** %23, i64 1
  %25 = getelementptr inbounds i32**, i32*** %24, i64 1
  %26 = getelementptr inbounds i32**, i32*** %25, i64 1
  %27 = getelementptr inbounds i32**, i32*** %26, i64 1
  %28 = getelementptr inbounds i32**, i32*** %27, i64 1
  %29 = getelementptr inbounds i32**, i32*** %28, i64 1
  %30 = getelementptr inbounds i32**, i32*** %29, i64 1
  %31 = getelementptr inbounds [9 x i32**], [9 x i32**]* %20, i64 1
  %32 = getelementptr inbounds [9 x i32**], [9 x i32**]* %31, i64 0, i64 0
  store i32** %l_1530, i32*** %32, !tbaa !5
  %33 = getelementptr inbounds i32**, i32*** %32, i64 1
  store i32** %l_1530, i32*** %33, !tbaa !5
  %34 = getelementptr inbounds i32**, i32*** %33, i64 1
  store i32** %l_1530, i32*** %34, !tbaa !5
  %35 = getelementptr inbounds i32**, i32*** %34, i64 1
  store i32** %l_1530, i32*** %35, !tbaa !5
  %36 = getelementptr inbounds i32**, i32*** %35, i64 1
  store i32** %l_1530, i32*** %36, !tbaa !5
  %37 = getelementptr inbounds i32**, i32*** %36, i64 1
  store i32** %l_1530, i32*** %37, !tbaa !5
  %38 = getelementptr inbounds i32**, i32*** %37, i64 1
  store i32** %l_1530, i32*** %38, !tbaa !5
  %39 = getelementptr inbounds i32**, i32*** %38, i64 1
  store i32** %l_1530, i32*** %39, !tbaa !5
  %40 = getelementptr inbounds i32**, i32*** %39, i64 1
  store i32** %l_1530, i32*** %40, !tbaa !5
  %41 = getelementptr inbounds [9 x i32**], [9 x i32**]* %31, i64 1
  %42 = bitcast [9 x i32**]* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 72, i32 8, i1 false)
  %43 = getelementptr inbounds [9 x i32**], [9 x i32**]* %41, i64 0, i64 0
  %44 = getelementptr inbounds i32**, i32*** %43, i64 1
  %45 = getelementptr inbounds i32**, i32*** %44, i64 1
  %46 = getelementptr inbounds i32**, i32*** %45, i64 1
  %47 = getelementptr inbounds i32**, i32*** %46, i64 1
  %48 = getelementptr inbounds i32**, i32*** %47, i64 1
  %49 = getelementptr inbounds i32**, i32*** %48, i64 1
  %50 = getelementptr inbounds i32**, i32*** %49, i64 1
  %51 = getelementptr inbounds i32**, i32*** %50, i64 1
  %52 = getelementptr inbounds [9 x i32**], [9 x i32**]* %41, i64 1
  %53 = getelementptr inbounds [9 x i32**], [9 x i32**]* %52, i64 0, i64 0
  store i32** %l_1530, i32*** %53, !tbaa !5
  %54 = getelementptr inbounds i32**, i32*** %53, i64 1
  store i32** %l_1530, i32*** %54, !tbaa !5
  %55 = getelementptr inbounds i32**, i32*** %54, i64 1
  store i32** %l_1530, i32*** %55, !tbaa !5
  %56 = getelementptr inbounds i32**, i32*** %55, i64 1
  store i32** %l_1530, i32*** %56, !tbaa !5
  %57 = getelementptr inbounds i32**, i32*** %56, i64 1
  store i32** %l_1530, i32*** %57, !tbaa !5
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  store i32** %l_1530, i32*** %58, !tbaa !5
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  store i32** %l_1530, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  store i32** %l_1530, i32*** %60, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  store i32** %l_1530, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds [4 x [9 x i32**]], [4 x [9 x i32**]]* %19, i64 1
  %63 = getelementptr inbounds [4 x [9 x i32**]], [4 x [9 x i32**]]* %62, i64 0, i64 0
  %64 = bitcast [9 x i32**]* %63 to i8*
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 72, i32 8, i1 false)
  %65 = getelementptr inbounds [9 x i32**], [9 x i32**]* %63, i64 0, i64 0
  %66 = getelementptr inbounds i32**, i32*** %65, i64 1
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  %69 = getelementptr inbounds i32**, i32*** %68, i64 1
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  %73 = getelementptr inbounds i32**, i32*** %72, i64 1
  %74 = getelementptr inbounds [9 x i32**], [9 x i32**]* %63, i64 1
  %75 = getelementptr inbounds [9 x i32**], [9 x i32**]* %74, i64 0, i64 0
  store i32** %l_1530, i32*** %75, !tbaa !5
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  store i32** %l_1530, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds i32**, i32*** %76, i64 1
  store i32** %l_1530, i32*** %77, !tbaa !5
  %78 = getelementptr inbounds i32**, i32*** %77, i64 1
  store i32** %l_1530, i32*** %78, !tbaa !5
  %79 = getelementptr inbounds i32**, i32*** %78, i64 1
  store i32** %l_1530, i32*** %79, !tbaa !5
  %80 = getelementptr inbounds i32**, i32*** %79, i64 1
  store i32** %l_1530, i32*** %80, !tbaa !5
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  store i32** %l_1530, i32*** %81, !tbaa !5
  %82 = getelementptr inbounds i32**, i32*** %81, i64 1
  store i32** %l_1530, i32*** %82, !tbaa !5
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  store i32** %l_1530, i32*** %83, !tbaa !5
  %84 = getelementptr inbounds [9 x i32**], [9 x i32**]* %74, i64 1
  %85 = bitcast [9 x i32**]* %84 to i8*
  call void @llvm.memset.p0i8.i64(i8* %85, i8 0, i64 72, i32 8, i1 false)
  %86 = getelementptr inbounds [9 x i32**], [9 x i32**]* %84, i64 0, i64 0
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  %88 = getelementptr inbounds i32**, i32*** %87, i64 1
  %89 = getelementptr inbounds i32**, i32*** %88, i64 1
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  %93 = getelementptr inbounds i32**, i32*** %92, i64 1
  %94 = getelementptr inbounds i32**, i32*** %93, i64 1
  %95 = getelementptr inbounds [9 x i32**], [9 x i32**]* %84, i64 1
  %96 = getelementptr inbounds [9 x i32**], [9 x i32**]* %95, i64 0, i64 0
  store i32** %l_1530, i32*** %96, !tbaa !5
  %97 = getelementptr inbounds i32**, i32*** %96, i64 1
  store i32** %l_1530, i32*** %97, !tbaa !5
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  store i32** %l_1530, i32*** %98, !tbaa !5
  %99 = getelementptr inbounds i32**, i32*** %98, i64 1
  store i32** %l_1530, i32*** %99, !tbaa !5
  %100 = getelementptr inbounds i32**, i32*** %99, i64 1
  store i32** %l_1530, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  store i32** %l_1530, i32*** %101, !tbaa !5
  %102 = getelementptr inbounds i32**, i32*** %101, i64 1
  store i32** %l_1530, i32*** %102, !tbaa !5
  %103 = getelementptr inbounds i32**, i32*** %102, i64 1
  store i32** %l_1530, i32*** %103, !tbaa !5
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  store i32** %l_1530, i32*** %104, !tbaa !5
  %105 = getelementptr inbounds [4 x [9 x i32**]], [4 x [9 x i32**]]* %62, i64 1
  %106 = getelementptr inbounds [4 x [9 x i32**]], [4 x [9 x i32**]]* %105, i64 0, i64 0
  %107 = bitcast [9 x i32**]* %106 to i8*
  call void @llvm.memset.p0i8.i64(i8* %107, i8 0, i64 72, i32 8, i1 false)
  %108 = getelementptr inbounds [9 x i32**], [9 x i32**]* %106, i64 0, i64 0
  %109 = getelementptr inbounds i32**, i32*** %108, i64 1
  %110 = getelementptr inbounds i32**, i32*** %109, i64 1
  %111 = getelementptr inbounds i32**, i32*** %110, i64 1
  %112 = getelementptr inbounds i32**, i32*** %111, i64 1
  %113 = getelementptr inbounds i32**, i32*** %112, i64 1
  %114 = getelementptr inbounds i32**, i32*** %113, i64 1
  %115 = getelementptr inbounds i32**, i32*** %114, i64 1
  %116 = getelementptr inbounds i32**, i32*** %115, i64 1
  %117 = getelementptr inbounds [9 x i32**], [9 x i32**]* %106, i64 1
  %118 = getelementptr inbounds [9 x i32**], [9 x i32**]* %117, i64 0, i64 0
  store i32** %l_1530, i32*** %118, !tbaa !5
  %119 = getelementptr inbounds i32**, i32*** %118, i64 1
  store i32** %l_1530, i32*** %119, !tbaa !5
  %120 = getelementptr inbounds i32**, i32*** %119, i64 1
  store i32** %l_1530, i32*** %120, !tbaa !5
  %121 = getelementptr inbounds i32**, i32*** %120, i64 1
  store i32** %l_1530, i32*** %121, !tbaa !5
  %122 = getelementptr inbounds i32**, i32*** %121, i64 1
  store i32** %l_1530, i32*** %122, !tbaa !5
  %123 = getelementptr inbounds i32**, i32*** %122, i64 1
  store i32** %l_1530, i32*** %123, !tbaa !5
  %124 = getelementptr inbounds i32**, i32*** %123, i64 1
  store i32** %l_1530, i32*** %124, !tbaa !5
  %125 = getelementptr inbounds i32**, i32*** %124, i64 1
  store i32** %l_1530, i32*** %125, !tbaa !5
  %126 = getelementptr inbounds i32**, i32*** %125, i64 1
  store i32** %l_1530, i32*** %126, !tbaa !5
  %127 = getelementptr inbounds [9 x i32**], [9 x i32**]* %117, i64 1
  %128 = bitcast [9 x i32**]* %127 to i8*
  call void @llvm.memset.p0i8.i64(i8* %128, i8 0, i64 72, i32 8, i1 false)
  %129 = getelementptr inbounds [9 x i32**], [9 x i32**]* %127, i64 0, i64 0
  %130 = getelementptr inbounds i32**, i32*** %129, i64 1
  %131 = getelementptr inbounds i32**, i32*** %130, i64 1
  %132 = getelementptr inbounds i32**, i32*** %131, i64 1
  %133 = getelementptr inbounds i32**, i32*** %132, i64 1
  %134 = getelementptr inbounds i32**, i32*** %133, i64 1
  %135 = getelementptr inbounds i32**, i32*** %134, i64 1
  %136 = getelementptr inbounds i32**, i32*** %135, i64 1
  %137 = getelementptr inbounds i32**, i32*** %136, i64 1
  %138 = getelementptr inbounds [9 x i32**], [9 x i32**]* %127, i64 1
  %139 = getelementptr inbounds [9 x i32**], [9 x i32**]* %138, i64 0, i64 0
  store i32** %l_1530, i32*** %139, !tbaa !5
  %140 = getelementptr inbounds i32**, i32*** %139, i64 1
  store i32** %l_1530, i32*** %140, !tbaa !5
  %141 = getelementptr inbounds i32**, i32*** %140, i64 1
  store i32** %l_1530, i32*** %141, !tbaa !5
  %142 = getelementptr inbounds i32**, i32*** %141, i64 1
  store i32** %l_1530, i32*** %142, !tbaa !5
  %143 = getelementptr inbounds i32**, i32*** %142, i64 1
  store i32** %l_1530, i32*** %143, !tbaa !5
  %144 = getelementptr inbounds i32**, i32*** %143, i64 1
  store i32** %l_1530, i32*** %144, !tbaa !5
  %145 = getelementptr inbounds i32**, i32*** %144, i64 1
  store i32** %l_1530, i32*** %145, !tbaa !5
  %146 = getelementptr inbounds i32**, i32*** %145, i64 1
  store i32** %l_1530, i32*** %146, !tbaa !5
  %147 = getelementptr inbounds i32**, i32*** %146, i64 1
  store i32** %l_1530, i32*** %147, !tbaa !5
  %148 = bitcast [7 x i32*]* %l_1538 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %148) #1
  %149 = bitcast [7 x i32*]* %l_1538 to i8*
  call void @llvm.memset.p0i8.i64(i8* %149, i8 0, i64 56, i32 16, i1 false)
  %150 = bitcast i32*** %l_1537 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #1
  %151 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_1538, i32 0, i64 1
  store i32** %151, i32*** %l_1537, align 8, !tbaa !5
  %152 = bitcast i32* %l_1539 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  store i32 2090697520, i32* %l_1539, align 4, !tbaa !1
  %153 = bitcast i64** %l_1540 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  store i64* @g_1383, i64** %l_1540, align 8, !tbaa !5
  %154 = bitcast i32* %l_1541 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  store i32 -6, i32* %l_1541, align 4, !tbaa !1
  %155 = bitcast i32* %l_1569 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  store i32 -1448644104, i32* %l_1569, align 4, !tbaa !1
  %156 = bitcast i32* %l_1572 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  store i32 -1, i32* %l_1572, align 4, !tbaa !1
  %157 = bitcast i32* %l_1573 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #1
  store i32 0, i32* %l_1573, align 4, !tbaa !1
  %158 = bitcast i32* %l_1578 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  store i32 1231388033, i32* %l_1578, align 4, !tbaa !1
  %159 = bitcast i32* %l_1579 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  store i32 1795614469, i32* %l_1579, align 4, !tbaa !1
  %160 = bitcast i32* %l_1589 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #1
  store i32 4, i32* %l_1589, align 4, !tbaa !1
  %161 = bitcast i32* %l_1592 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  store i32 1995900841, i32* %l_1592, align 4, !tbaa !1
  %162 = bitcast i16* %l_1653 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %162) #1
  store i16 -3, i16* %l_1653, align 2, !tbaa !10
  %163 = bitcast i16**** %l_1684 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %163) #1
  %164 = getelementptr inbounds [6 x i16**], [6 x i16**]* %l_1527, i32 0, i64 3
  store i16*** %164, i16**** %l_1684, align 8, !tbaa !5
  %165 = bitcast i16***** %l_1683 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %165) #1
  store i16**** %l_1684, i16***** %l_1683, align 8, !tbaa !5
  %166 = bitcast i16** %l_1689 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %166) #1
  store i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), i16** %l_1689, align 8, !tbaa !5
  %167 = bitcast [1 x i16**]* %l_1688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  %168 = bitcast i32****** %l_1694 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  store i32***** @g_114, i32****** %l_1694, align 8, !tbaa !5
  %169 = bitcast i64** %l_1751 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  store i64* @g_33, i64** %l_1751, align 8, !tbaa !5
  %170 = bitcast i64*** %l_1750 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i64** %l_1751, i64*** %l_1750, align 8, !tbaa !5
  %171 = bitcast i64**** %l_1749 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  store i64*** %l_1750, i64**** %l_1749, align 8, !tbaa !5
  %172 = bitcast i32* %l_1783 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  store i32 0, i32* %l_1783, align 4, !tbaa !1
  %173 = bitcast i32* %l_1833 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  store i32 -655974919, i32* %l_1833, align 4, !tbaa !1
  %174 = bitcast i32** %l_1859 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %174) #1
  store i32* %l_1578, i32** %l_1859, align 8, !tbaa !5
  %175 = bitcast i64**** %l_1903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  store i64*** @g_1075, i64**** %l_1903, align 8, !tbaa !5
  %176 = bitcast i32* %l_1904 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  store i32 309183607, i32* %l_1904, align 4, !tbaa !1
  %177 = bitcast i32* %l_1942 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  store i32 -764046011, i32* %l_1942, align 4, !tbaa !1
  %178 = bitcast [4 x [6 x %union.U0**]]* %l_1954 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %178) #1
  %179 = bitcast [4 x [6 x %union.U0**]]* %l_1954 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* bitcast ([4 x [6 x %union.U0**]]* @func_15.l_1954 to i8*), i64 192, i32 16, i1 false)
  %180 = bitcast [6 x %union.U0***]* %l_1953 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %180) #1
  %181 = bitcast %union.U0**** %l_1958 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = getelementptr inbounds [4 x [6 x %union.U0**]], [4 x [6 x %union.U0**]]* %l_1954, i32 0, i64 1
  %183 = getelementptr inbounds [6 x %union.U0**], [6 x %union.U0**]* %182, i32 0, i64 0
  store %union.U0*** %183, %union.U0**** %l_1958, align 8, !tbaa !5
  %184 = bitcast i64* %l_2002 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %184) #1
  store i64 4043727389167312759, i64* %l_2002, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_2033) #1
  store i8 0, i8* %l_2033, align 1, !tbaa !9
  %185 = bitcast %union.U0***** %l_2046 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %185) #1
  store %union.U0**** @g_804, %union.U0***** %l_2046, align 8, !tbaa !5
  %186 = bitcast i32*** %l_2085 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %186) #1
  %187 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_1538, i32 0, i64 1
  store i32** %187, i32*** %l_2085, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2151) #1
  store i8 -115, i8* %l_2151, align 1, !tbaa !9
  %188 = bitcast i16* %l_2251 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %188) #1
  store i16 -32369, i16* %l_2251, align 2, !tbaa !10
  %189 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %192

; <label>:192                                     ; preds = %199, %0
  %193 = load i32, i32* %i, align 4, !tbaa !1
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %202

; <label>:195                                     ; preds = %192
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1529, i32 0, i64 %197
  store i32* @g_500, i32** %198, align 8, !tbaa !5
  br label %199

; <label>:199                                     ; preds = %195
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %i, align 4, !tbaa !1
  br label %192

; <label>:202                                     ; preds = %192
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %210, %202
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %206, label %213

; <label>:206                                     ; preds = %203
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [1 x i16**], [1 x i16**]* %l_1688, i32 0, i64 %208
  store i16** %l_1689, i16*** %209, align 8, !tbaa !5
  br label %210

; <label>:210                                     ; preds = %206
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i, align 4, !tbaa !1
  br label %203

; <label>:213                                     ; preds = %203
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %214

; <label>:214                                     ; preds = %223, %213
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = icmp slt i32 %215, 6
  br i1 %216, label %217, label %226

; <label>:217                                     ; preds = %214
  %218 = getelementptr inbounds [4 x [6 x %union.U0**]], [4 x [6 x %union.U0**]]* %l_1954, i32 0, i64 1
  %219 = getelementptr inbounds [6 x %union.U0**], [6 x %union.U0**]* %218, i32 0, i64 0
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [6 x %union.U0***], [6 x %union.U0***]* %l_1953, i32 0, i64 %221
  store %union.U0*** %219, %union.U0**** %222, align 8, !tbaa !5
  br label %223

; <label>:223                                     ; preds = %217
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %i, align 4, !tbaa !1
  br label %214

; <label>:226                                     ; preds = %214
  %227 = load i32, i32* %2, align 4, !tbaa !1
  %228 = trunc i32 %227 to i16
  %229 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i16* %l_2251 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %232) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2151) #1
  %233 = bitcast i32*** %l_2085 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast %union.U0***** %l_2046 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2033) #1
  %235 = bitcast i64* %l_2002 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  %236 = bitcast %union.U0**** %l_1958 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast [6 x %union.U0***]* %l_1953 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %237) #1
  %238 = bitcast [4 x [6 x %union.U0**]]* %l_1954 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %238) #1
  %239 = bitcast i32* %l_1942 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %l_1904 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i64**** %l_1903 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast i32** %l_1859 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #1
  %243 = bitcast i32* %l_1833 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %l_1783 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i64**** %l_1749 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = bitcast i64*** %l_1750 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast i64** %l_1751 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i32****** %l_1694 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast [1 x i16**]* %l_1688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast i16** %l_1689 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %251 = bitcast i16***** %l_1683 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = bitcast i16**** %l_1684 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast i16* %l_1653 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %253) #1
  %254 = bitcast i32* %l_1592 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %l_1589 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %l_1579 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32* %l_1578 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %l_1573 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %l_1572 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %l_1569 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %l_1541 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i64** %l_1540 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %262) #1
  %263 = bitcast i32* %l_1539 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32*** %l_1537 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast [7 x i32*]* %l_1538 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %265) #1
  %266 = bitcast [3 x [4 x [9 x i32**]]]* %l_1532 to i8*
  call void @llvm.lifetime.end(i64 864, i8* %266) #1
  %267 = bitcast i32*** %l_1531 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast i32** %l_1530 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast [2 x i32*]* %l_1529 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %269) #1
  %270 = bitcast [6 x i16**]* %l_1527 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %270) #1
  ret i16 %228
}

; Function Attrs: nounwind uwtable
define internal i64 @func_21(i32 %p_22, i8 signext %p_23) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %l_1522 = alloca i32, align 4
  store i32 %p_22, i32* %1, align 4, !tbaa !1
  store i8 %p_23, i8* %2, align 1, !tbaa !9
  %3 = bitcast i32* %l_1522 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 987449445, i32* %l_1522, align 4, !tbaa !1
  %4 = load i32**, i32*** @g_1010, align 8, !tbaa !5
  %5 = load volatile i32*, i32** %4, align 8, !tbaa !5
  %6 = load i32**, i32*** @g_1010, align 8, !tbaa !5
  store volatile i32* %5, i32** %6, align 8, !tbaa !5
  %7 = bitcast i32* %l_1522 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i64 987449445
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
define internal signext i16 @func_26(i64 %p_27, i8 signext %p_28, i16 signext %p_29, i32 %p_30, i8 signext %p_31) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %l_1476 = alloca i32*, align 8
  %l_1487 = alloca i32*, align 8
  %l_1486 = alloca i32**, align 8
  %l_1505 = alloca i8*, align 8
  %l_1512 = alloca i8*, align 8
  %l_1520 = alloca i32, align 4
  %l_1521 = alloca [5 x [6 x i32*]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_1485 = alloca [3 x [8 x [4 x i64*]]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 %p_27, i64* %1, align 8, !tbaa !7
  store i8 %p_28, i8* %2, align 1, !tbaa !9
  store i16 %p_29, i16* %3, align 2, !tbaa !10
  store i32 %p_30, i32* %4, align 4, !tbaa !1
  store i8 %p_31, i8* %5, align 1, !tbaa !9
  %6 = bitcast i32** %l_1476 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([7 x [7 x i32]], [7 x [7 x i32]]* @g_1105, i32 0, i64 3, i64 3), i32** %l_1476, align 8, !tbaa !5
  %7 = bitcast i32** %l_1487 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* null, i32** %l_1487, align 8, !tbaa !5
  %8 = bitcast i32*** %l_1486 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32** %l_1487, i32*** %l_1486, align 8, !tbaa !5
  %9 = bitcast i8** %l_1505 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* @g_1206, i8** %l_1505, align 8, !tbaa !5
  %10 = bitcast i8** %l_1512 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* @g_430, i8** %l_1512, align 8, !tbaa !5
  %11 = bitcast i32* %l_1520 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %l_1520, align 4, !tbaa !1
  %12 = bitcast [5 x [6 x i32*]]* %l_1521 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %12) #1
  %13 = getelementptr inbounds [5 x [6 x i32*]], [5 x [6 x i32*]]* %l_1521, i64 0, i64 0
  %14 = getelementptr inbounds [6 x i32*], [6 x i32*]* %13, i64 0, i64 0
  store i32* @g_534, i32** %14, !tbaa !5
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  store i32* @g_534, i32** %15, !tbaa !5
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  store i32* null, i32** %16, !tbaa !5
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  store i32* @g_49, i32** %17, !tbaa !5
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  store i32* @g_534, i32** %18, !tbaa !5
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* null, i32** %19, !tbaa !5
  %20 = getelementptr inbounds [6 x i32*], [6 x i32*]* %13, i64 1
  %21 = getelementptr inbounds [6 x i32*], [6 x i32*]* %20, i64 0, i64 0
  store i32* %l_1520, i32** %21, !tbaa !5
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  store i32* null, i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* null, i32** %23, !tbaa !5
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  store i32* @g_534, i32** %24, !tbaa !5
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  store i32* @g_49, i32** %25, !tbaa !5
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  store i32* @g_49, i32** %26, !tbaa !5
  %27 = getelementptr inbounds [6 x i32*], [6 x i32*]* %20, i64 1
  %28 = getelementptr inbounds [6 x i32*], [6 x i32*]* %27, i64 0, i64 0
  store i32* %l_1520, i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* null, i32** %29, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* null, i32** %30, !tbaa !5
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32* %l_1520, i32** %31, !tbaa !5
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  store i32* @g_534, i32** %32, !tbaa !5
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_103, i32 0, i64 0), i32** %33, !tbaa !5
  %34 = getelementptr inbounds [6 x i32*], [6 x i32*]* %27, i64 1
  %35 = getelementptr inbounds [6 x i32*], [6 x i32*]* %34, i64 0, i64 0
  store i32* %l_1520, i32** %35, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32* @g_534, i32** %36, !tbaa !5
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_103, i32 0, i64 0), i32** %37, !tbaa !5
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* @g_534, i32** %38, !tbaa !5
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  store i32* null, i32** %39, !tbaa !5
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_103, i32 0, i64 0), i32** %40, !tbaa !5
  %41 = getelementptr inbounds [6 x i32*], [6 x i32*]* %34, i64 1
  %42 = getelementptr inbounds [6 x i32*], [6 x i32*]* %41, i64 0, i64 0
  store i32* %l_1520, i32** %42, !tbaa !5
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* @g_49, i32** %43, !tbaa !5
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  store i32* null, i32** %44, !tbaa !5
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  store i32* @g_49, i32** %45, !tbaa !5
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* null, i32** %46, !tbaa !5
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  store i32* @g_49, i32** %47, !tbaa !5
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load i32*, i32** %l_1476, align 8, !tbaa !5
  %51 = load i32**, i32*** @g_635, align 8, !tbaa !5
  store i32* %50, i32** %51, align 8, !tbaa !5
  store i8 0, i8* @g_107, align 1, !tbaa !9
  br label %52

; <label>:52                                      ; preds = %111, %0
  %53 = load i8, i8* @g_107, align 1, !tbaa !9
  %54 = zext i8 %53 to i32
  %55 = icmp sgt i32 %54, 56
  br i1 %55, label %56, label %114

; <label>:56                                      ; preds = %52
  store i16 0, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  br label %57

; <label>:57                                      ; preds = %105, %56
  %58 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  %59 = zext i16 %58 to i32
  %60 = icmp sle i32 %59, 3
  br i1 %60, label %61, label %110

; <label>:61                                      ; preds = %57
  %62 = bitcast [3 x [8 x [4 x i64*]]]* %l_1485 to i8*
  call void @llvm.lifetime.start(i64 768, i8* %62) #1
  %63 = bitcast [3 x [8 x [4 x i64*]]]* %l_1485 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast ([3 x [8 x [4 x i64*]]]* @func_26.l_1485 to i8*), i64 768, i32 16, i1 false)
  %64 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = load i64**, i64*** @g_1075, align 8, !tbaa !5
  %68 = load i64*, i64** %67, align 8, !tbaa !5
  %69 = load i64, i64* %68, align 8, !tbaa !7
  %70 = add i64 %69, -1
  store i64 %70, i64* %68, align 8, !tbaa !7
  store i64 3, i64* @g_1383, align 8, !tbaa !7
  %71 = icmp uge i64 %69, 3
  %72 = zext i1 %71 to i32
  %73 = load volatile i32*, i32** @g_1438, align 8, !tbaa !5
  store i32 %72, i32* %73, align 4, !tbaa !1
  %74 = load i8, i8* %5, align 1, !tbaa !9
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

; <label>:77                                      ; preds = %61
  %78 = load i32**, i32*** %l_1486, align 8, !tbaa !5
  %79 = load i32**, i32*** @g_1488, align 8, !tbaa !5
  %80 = icmp ne i32** %78, %79
  %81 = zext i1 %80 to i32
  br label %82

; <label>:82                                      ; preds = %77, %61
  %83 = phi i1 [ false, %61 ], [ true, %77 ]
  %84 = zext i1 %83 to i32
  %85 = load i16, i16* %3, align 2, !tbaa !10
  %86 = trunc i16 %85 to i8
  %87 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %86, i32 6)
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %84, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @safe_add_func_int32_t_s_s(i32 %72, i32 %90)
  %92 = sext i32 %91 to i64
  store i64 %92, i64* @g_33, align 8, !tbaa !7
  %93 = load i64, i64* %1, align 8, !tbaa !7
  %94 = load i32***, i32**** @g_634, align 8, !tbaa !5
  %95 = load i32**, i32*** %94, align 8, !tbaa !5
  %96 = load i32*, i32** %95, align 8, !tbaa !5
  %97 = load i32, i32* %96, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = and i64 %98, %93
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4, !tbaa !1
  %101 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast [3 x [8 x [4 x i64*]]]* %l_1485 to i8*
  call void @llvm.lifetime.end(i64 768, i8* %104) #1
  br label %105

; <label>:105                                     ; preds = %82
  %106 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  %107 = zext i16 %106 to i32
  %108 = call i32 @safe_add_func_int32_t_s_s(i32 %107, i32 4)
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* getelementptr inbounds (%union.U0, %union.U0* @g_74, i32 0, i32 0), align 2, !tbaa !10
  br label %57

; <label>:110                                     ; preds = %57
  br label %111

; <label>:111                                     ; preds = %110
  %112 = load i8, i8* @g_107, align 1, !tbaa !9
  %113 = add i8 %112, 1
  store i8 %113, i8* @g_107, align 1, !tbaa !9
  br label %52

; <label>:114                                     ; preds = %52
  %115 = load i32*, i32** %l_1476, align 8, !tbaa !5
  %116 = load i32, i32* %115, align 4, !tbaa !1
  %117 = load i8*, i8** %l_1505, align 8, !tbaa !5
  %118 = load i8, i8* %117, align 1, !tbaa !9
  %119 = sext i8 %118 to i32
  %120 = or i32 %119, %116
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %117, align 1, !tbaa !9
  %122 = sext i8 %121 to i64
  %123 = or i64 %122, 18
  %124 = trunc i64 %123 to i8
  %125 = load i32*, i32** %l_1476, align 8, !tbaa !5
  %126 = load i32, i32* %125, align 4, !tbaa !1
  %127 = trunc i32 %126 to i8
  %128 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %124, i8 signext %127)
  %129 = sext i8 %128 to i64
  %130 = call i64 @safe_add_func_uint64_t_u_u(i64 -1, i64 %129)
  %131 = trunc i64 %130 to i16
  %132 = load i32*, i32** %l_1476, align 8, !tbaa !5
  %133 = load i32, i32* %132, align 4, !tbaa !1
  %134 = trunc i32 %133 to i16
  %135 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %131, i16 zeroext %134)
  %136 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_72, i32 0, i32 0), align 2, !tbaa !10
  %137 = trunc i16 %136 to i8
  %138 = load i8*, i8** %l_1512, align 8, !tbaa !5
  store i8 %137, i8* %138, align 1, !tbaa !9
  %139 = load i32, i32* @g_181, align 4, !tbaa !1
  %140 = add i32 %139, -1
  store i32 %140, i32* @g_181, align 4, !tbaa !1
  %141 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_201, i32 0, i32 0), align 2, !tbaa !10
  %142 = zext i16 %141 to i32
  %143 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %144 = zext i16 %143 to i32
  %145 = xor i32 %142, %144
  %146 = load i32, i32* %l_1520, align 4, !tbaa !1
  %147 = or i32 %145, %146
  %148 = trunc i32 %147 to i8
  %149 = load i8, i8* %5, align 1, !tbaa !9
  %150 = sext i8 %149 to i32
  %151 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %148, i32 %150)
  %152 = zext i8 %151 to i32
  %153 = load i16, i16* %3, align 2, !tbaa !10
  %154 = sext i16 %153 to i32
  %155 = icmp sle i32 %152, %154
  %156 = zext i1 %155 to i32
  %157 = load i8*, i8** %l_1512, align 8, !tbaa !5
  store i8 94, i8* %157, align 1, !tbaa !9
  %158 = load i32*, i32** %l_1476, align 8, !tbaa !5
  %159 = load i32, i32* %158, align 4, !tbaa !1
  %160 = or i32 94, %159
  %161 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_558, i32 0, i32 0), align 2, !tbaa !10
  %162 = trunc i16 %161 to i8
  %163 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext 7, i8 signext %162)
  %164 = sext i8 %163 to i32
  %165 = and i32 %140, %164
  %166 = trunc i32 %165 to i16
  %167 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %166, i32 15)
  %168 = sext i16 %167 to i64
  %169 = trunc i64 %168 to i8
  %170 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %169, i32 0)
  %171 = zext i8 %170 to i16
  %172 = load i32, i32* getelementptr inbounds ([1 x [3 x i32]], [1 x [3 x i32]]* @g_151, i32 0, i64 0, i64 2), align 4, !tbaa !1
  %173 = trunc i32 %172 to i16
  %174 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %171, i16 signext %173)
  %175 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %135, i16 signext %174)
  %176 = sext i16 %175 to i32
  %177 = load i32, i32* getelementptr inbounds ([1 x [3 x i32]], [1 x [3 x i32]]* @g_151, i32 0, i64 0, i64 2), align 4, !tbaa !1
  %178 = icmp ult i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = icmp uge i64 %180, -4445062745625009881
  %182 = zext i1 %181 to i32
  %183 = xor i32 %182, -1
  %184 = load i32*, i32** %l_1476, align 8, !tbaa !5
  store i32 %183, i32* %184, align 4, !tbaa !1
  %185 = trunc i32 %183 to i16
  %186 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), align 2, !tbaa !10
  %187 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %185, i16 zeroext %186)
  %188 = load i32, i32* %4, align 4, !tbaa !1
  %189 = trunc i32 %188 to i16
  %190 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %187, i16 zeroext %189)
  %191 = zext i16 %190 to i32
  %192 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_103, i32 0, i64 0), align 4, !tbaa !1
  %193 = or i32 %192, %191
  store i32 %193, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_103, i32 0, i64 0), align 4, !tbaa !1
  %194 = load i32, i32* %4, align 4, !tbaa !1
  %195 = trunc i32 %194 to i16
  %196 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast [5 x [6 x i32*]]* %l_1521 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %198) #1
  %199 = bitcast i32* %l_1520 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i8** %l_1512 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast i8** %l_1505 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast i32*** %l_1486 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast i32** %l_1487 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast i32** %l_1476 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  ret i16 %195
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
define internal zeroext i8 @func_38(i8 signext %p_39, i8 zeroext %p_40, i32 %p_41) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %l_1449 = alloca i32*, align 8
  %l_1452 = alloca i32*, align 8
  %l_1453 = alloca i32*, align 8
  %l_1454 = alloca i32, align 4
  %l_1456 = alloca i32*, align 8
  %l_1455 = alloca i32**, align 8
  %l_1457 = alloca i32**, align 8
  %l_1458 = alloca [5 x i32**], align 16
  %l_1461 = alloca i64*, align 8
  %l_1468 = alloca i16*, align 8
  %l_1469 = alloca i64*, align 8
  %l_1470 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i8 %p_39, i8* %1, align 1, !tbaa !9
  store i8 %p_40, i8* %2, align 1, !tbaa !9
  store i32 %p_41, i32* %3, align 4, !tbaa !1
  %4 = bitcast i32** %l_1449 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_181, i32** %l_1449, align 8, !tbaa !5
  %5 = bitcast i32** %l_1452 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* null, i32** %l_1452, align 8, !tbaa !5
  %6 = bitcast i32** %l_1453 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([1 x [3 x i32]], [1 x [3 x i32]]* @g_151, i32 0, i64 0, i64 2), i32** %l_1453, align 8, !tbaa !5
  %7 = bitcast i32* %l_1454 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1363477031, i32* %l_1454, align 4, !tbaa !1
  %8 = bitcast i32** %l_1456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_500, i32** %l_1456, align 8, !tbaa !5
  %9 = bitcast i32*** %l_1455 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32** %l_1456, i32*** %l_1455, align 8, !tbaa !5
  %10 = bitcast i32*** %l_1457 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** null, i32*** %l_1457, align 8, !tbaa !5
  %11 = bitcast [5 x i32**]* %l_1458 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %11) #1
  %12 = bitcast i64** %l_1461 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* getelementptr inbounds ([4 x i64], [4 x i64]* @g_48, i32 0, i64 1), i64** %l_1461, align 8, !tbaa !5
  %13 = bitcast i16** %l_1468 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16* getelementptr inbounds (%union.U0, %union.U0* @g_1130, i32 0, i32 0), i16** %l_1468, align 8, !tbaa !5
  %14 = bitcast i64** %l_1469 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64* @g_1383, i64** %l_1469, align 8, !tbaa !5
  %15 = bitcast i32* %l_1470 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %l_1470, align 4, !tbaa !1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %26, %0
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i32**], [5 x i32**]* %l_1458, i32 0, i64 %24
  store i32** %l_1456, i32*** %25, align 8, !tbaa !5
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:29                                      ; preds = %19
  %30 = load i32, i32* getelementptr inbounds ([9 x [1 x [1 x i32]]], [9 x [1 x [1 x i32]]]* @func_38.l_1448, i32 0, i64 8, i64 0, i64 0), align 4, !tbaa !1
  %31 = load i32*, i32** %l_1449, align 8, !tbaa !5
  %32 = load i32, i32* %31, align 4, !tbaa !1
  %33 = add i32 %32, 1
  store i32 %33, i32* %31, align 4, !tbaa !1
  %34 = load i32*, i32** %l_1453, align 8, !tbaa !5
  store i32 %33, i32* %34, align 4, !tbaa !1
  store i32 %33, i32* %l_1454, align 4, !tbaa !1
  %35 = call i32 @safe_mod_func_int32_t_s_s(i32 %30, i32 %33)
  %36 = load i32**, i32*** %l_1455, align 8, !tbaa !5
  store i32** %36, i32*** %l_1457, align 8, !tbaa !5
  %37 = getelementptr inbounds [5 x i32**], [5 x i32**]* %l_1458, i32 0, i64 3
  %38 = load i32**, i32*** %37, align 8, !tbaa !5
  %39 = icmp eq i32** %36, %38
  br i1 %39, label %77, label %40

; <label>:40                                      ; preds = %29
  %41 = load i32, i32* getelementptr inbounds ([9 x [1 x [1 x i32]]], [9 x [1 x [1 x i32]]]* @func_38.l_1448, i32 0, i64 1, i64 0, i64 0), align 4, !tbaa !1
  %42 = zext i32 %41 to i64
  %43 = or i64 39995, %42
  %44 = load i64*, i64** %l_1461, align 8, !tbaa !5
  store i64 %43, i64* %44, align 8, !tbaa !7
  %45 = load i32, i32* %l_1454, align 4, !tbaa !1
  %46 = load i8, i8* %2, align 1, !tbaa !9
  %47 = zext i8 %46 to i32
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %65

; <label>:49                                      ; preds = %40
  %50 = load i8, i8* %1, align 1, !tbaa !9
  %51 = load i16*, i16** %l_1468, align 8, !tbaa !5
  %52 = icmp ne i16* %51, null
  %53 = zext i1 %52 to i32
  %54 = trunc i32 %53 to i8
  %55 = load i8, i8* %1, align 1, !tbaa !9
  %56 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %54, i8 signext %55)
  %57 = load i32, i32* %3, align 4, !tbaa !1
  %58 = trunc i32 %57 to i8
  %59 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %56, i8 signext %58)
  %60 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %50, i8 zeroext %59)
  %61 = zext i8 %60 to i32
  %62 = load i32, i32* %3, align 4, !tbaa !1
  %63 = or i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br label %65

; <label>:65                                      ; preds = %49, %40
  %66 = phi i1 [ false, %40 ], [ %64, %49 ]
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* getelementptr inbounds ([9 x [1 x [1 x i32]]], [9 x [1 x [1 x i32]]]* @func_38.l_1448, i32 0, i64 8, i64 0, i64 0), align 4, !tbaa !1
  %69 = or i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = load i64*, i64** %l_1469, align 8, !tbaa !5
  store i64 %70, i64* %71, align 8, !tbaa !7
  %72 = icmp ult i64 %70, 0
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = and i64 %74, 7324947375849269247
  %76 = call i64 @safe_add_func_int64_t_s_s(i64 %43, i64 %75)
  br label %77

; <label>:77                                      ; preds = %65, %29
  %78 = phi i1 [ true, %29 ], [ true, %65 ]
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* getelementptr inbounds ([9 x [1 x [1 x i32]]], [9 x [1 x [1 x i32]]]* @func_38.l_1448, i32 0, i64 5, i64 0, i64 0), align 4, !tbaa !1
  %84 = and i32 %82, %83
  %85 = load i32, i32* getelementptr inbounds ([9 x [1 x [1 x i32]]], [9 x [1 x [1 x i32]]]* @func_38.l_1448, i32 0, i64 8, i64 0, i64 0), align 4, !tbaa !1
  %86 = icmp ne i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %l_1470, align 4, !tbaa !1
  %89 = xor i32 %88, %87
  store i32 %89, i32* %l_1470, align 4, !tbaa !1
  %90 = load i32, i32* getelementptr inbounds ([9 x [1 x [1 x i32]]], [9 x [1 x [1 x i32]]]* @func_38.l_1448, i32 0, i64 8, i64 0, i64 0), align 4, !tbaa !1
  %91 = trunc i32 %90 to i8
  %92 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %l_1470 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i64** %l_1469 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i16** %l_1468 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64** %l_1461 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast [5 x i32**]* %l_1458 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %99) #1
  %100 = bitcast i32*** %l_1457 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32*** %l_1455 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32** %l_1456 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i32* %l_1454 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32** %l_1453 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i32** %l_1452 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i32** %l_1449 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  ret i8 %91
}

; Function Attrs: nounwind uwtable
define internal i32 @func_43(i16 signext %p_44) #0 {
  %1 = alloca i16, align 2
  %l_75 = alloca i64, align 8
  %l_1207 = alloca i32, align 4
  %l_1237 = alloca i16*, align 8
  %l_1236 = alloca i16**, align 8
  %l_1323 = alloca i32, align 4
  %l_1408 = alloca i64*, align 8
  %l_1419 = alloca [5 x %union.U0**], align 16
  %l_1418 = alloca %union.U0***, align 8
  %l_1417 = alloca [10 x [5 x %union.U0****]], align 16
  %l_1416 = alloca %union.U0*****, align 8
  %l_1420 = alloca i16, align 2
  %l_1421 = alloca i32, align 4
  %l_1430 = alloca i32*, align 8
  %l_1429 = alloca [2 x i32**], align 16
  %l_1428 = alloca i32***, align 8
  %l_1444 = alloca [7 x i32*], align 16
  %l_1445 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_80 = alloca [7 x [6 x [2 x %union.U0*]]], align 16
  %l_1221 = alloca i32*, align 8
  %l_1231 = alloca i32, align 4
  %l_1348 = alloca i32*, align 8
  %l_1378 = alloca i32***, align 8
  %l_1377 = alloca [1 x i32****], align 8
  %l_1376 = alloca i32*****, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_73 = alloca %union.U0*, align 8
  %l_79 = alloca i32, align 4
  %l_1320 = alloca i32, align 4
  %l_1322 = alloca [8 x i32], align 16
  %l_1325 = alloca i16, align 2
  %l_1336 = alloca i16****, align 8
  %l_1346 = alloca i32*, align 8
  %i3 = alloca i32, align 4
  %l_81 = alloca i16, align 2
  %l_1230 = alloca i32*, align 8
  %l_1232 = alloca [4 x [2 x [10 x i8*]]], align 16
  %l_1278 = alloca i64*, align 8
  %l_1321 = alloca [2 x i32], align 4
  %l_1347 = alloca i32, align 4
  %l_1357 = alloca i64, align 8
  %l_1367 = alloca i8, align 1
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %2 = alloca i32
  %3 = alloca %union.U0, align 2
  %l_1437 = alloca [8 x [4 x i32]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %l_1433 = alloca i32, align 4
  %l_1436 = alloca i32*, align 8
  %l_1439 = alloca i32*, align 8
  %l_1440 = alloca [4 x [8 x [1 x i32*]]], align 16
  %l_1441 = alloca i32, align 4
  %i9 = alloca i32, align 4
  %j10 = alloca i32, align 4
  %k11 = alloca i32, align 4
  store i16 %p_44, i16* %1, align 2, !tbaa !10
  %4 = bitcast i64* %l_75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 1, i64* %l_75, align 8, !tbaa !7
  %5 = bitcast i32* %l_1207 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -1, i32* %l_1207, align 4, !tbaa !1
  %6 = bitcast i16** %l_1237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* getelementptr inbounds (%union.U0, %union.U0* @g_970, i32 0, i32 0), i16** %l_1237, align 8, !tbaa !5
  %7 = bitcast i16*** %l_1236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16** %l_1237, i16*** %l_1236, align 8, !tbaa !5
  %8 = bitcast i32* %l_1323 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %l_1323, align 4, !tbaa !1
  %9 = bitcast i64** %l_1408 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64* null, i64** %l_1408, align 8, !tbaa !5
  %10 = bitcast [5 x %union.U0**]* %l_1419 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %10) #1
  %11 = bitcast %union.U0**** %l_1418 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = getelementptr inbounds [5 x %union.U0**], [5 x %union.U0**]* %l_1419, i32 0, i64 2
  store %union.U0*** %12, %union.U0**** %l_1418, align 8, !tbaa !5
  %13 = bitcast [10 x [5 x %union.U0****]]* %l_1417 to i8*
  call void @llvm.lifetime.start(i64 400, i8* %13) #1
  %14 = getelementptr inbounds [10 x [5 x %union.U0****]], [10 x [5 x %union.U0****]]* %l_1417, i64 0, i64 0
  %15 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %14, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %15, !tbaa !5
  %16 = getelementptr inbounds %union.U0****, %union.U0***** %15, i64 1
  store %union.U0**** %l_1418, %union.U0***** %16, !tbaa !5
  %17 = getelementptr inbounds %union.U0****, %union.U0***** %16, i64 1
  store %union.U0**** %l_1418, %union.U0***** %17, !tbaa !5
  %18 = getelementptr inbounds %union.U0****, %union.U0***** %17, i64 1
  store %union.U0**** %l_1418, %union.U0***** %18, !tbaa !5
  %19 = getelementptr inbounds %union.U0****, %union.U0***** %18, i64 1
  store %union.U0**** %l_1418, %union.U0***** %19, !tbaa !5
  %20 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %14, i64 1
  %21 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %20, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %21, !tbaa !5
  %22 = getelementptr inbounds %union.U0****, %union.U0***** %21, i64 1
  store %union.U0**** %l_1418, %union.U0***** %22, !tbaa !5
  %23 = getelementptr inbounds %union.U0****, %union.U0***** %22, i64 1
  store %union.U0**** %l_1418, %union.U0***** %23, !tbaa !5
  %24 = getelementptr inbounds %union.U0****, %union.U0***** %23, i64 1
  store %union.U0**** %l_1418, %union.U0***** %24, !tbaa !5
  %25 = getelementptr inbounds %union.U0****, %union.U0***** %24, i64 1
  store %union.U0**** %l_1418, %union.U0***** %25, !tbaa !5
  %26 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %20, i64 1
  %27 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %26, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %27, !tbaa !5
  %28 = getelementptr inbounds %union.U0****, %union.U0***** %27, i64 1
  store %union.U0**** %l_1418, %union.U0***** %28, !tbaa !5
  %29 = getelementptr inbounds %union.U0****, %union.U0***** %28, i64 1
  store %union.U0**** %l_1418, %union.U0***** %29, !tbaa !5
  %30 = getelementptr inbounds %union.U0****, %union.U0***** %29, i64 1
  store %union.U0**** %l_1418, %union.U0***** %30, !tbaa !5
  %31 = getelementptr inbounds %union.U0****, %union.U0***** %30, i64 1
  store %union.U0**** %l_1418, %union.U0***** %31, !tbaa !5
  %32 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %26, i64 1
  %33 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %32, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %33, !tbaa !5
  %34 = getelementptr inbounds %union.U0****, %union.U0***** %33, i64 1
  store %union.U0**** %l_1418, %union.U0***** %34, !tbaa !5
  %35 = getelementptr inbounds %union.U0****, %union.U0***** %34, i64 1
  store %union.U0**** %l_1418, %union.U0***** %35, !tbaa !5
  %36 = getelementptr inbounds %union.U0****, %union.U0***** %35, i64 1
  store %union.U0**** %l_1418, %union.U0***** %36, !tbaa !5
  %37 = getelementptr inbounds %union.U0****, %union.U0***** %36, i64 1
  store %union.U0**** %l_1418, %union.U0***** %37, !tbaa !5
  %38 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %32, i64 1
  %39 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %38, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %39, !tbaa !5
  %40 = getelementptr inbounds %union.U0****, %union.U0***** %39, i64 1
  store %union.U0**** %l_1418, %union.U0***** %40, !tbaa !5
  %41 = getelementptr inbounds %union.U0****, %union.U0***** %40, i64 1
  store %union.U0**** %l_1418, %union.U0***** %41, !tbaa !5
  %42 = getelementptr inbounds %union.U0****, %union.U0***** %41, i64 1
  store %union.U0**** %l_1418, %union.U0***** %42, !tbaa !5
  %43 = getelementptr inbounds %union.U0****, %union.U0***** %42, i64 1
  store %union.U0**** %l_1418, %union.U0***** %43, !tbaa !5
  %44 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %38, i64 1
  %45 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %44, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %45, !tbaa !5
  %46 = getelementptr inbounds %union.U0****, %union.U0***** %45, i64 1
  store %union.U0**** %l_1418, %union.U0***** %46, !tbaa !5
  %47 = getelementptr inbounds %union.U0****, %union.U0***** %46, i64 1
  store %union.U0**** %l_1418, %union.U0***** %47, !tbaa !5
  %48 = getelementptr inbounds %union.U0****, %union.U0***** %47, i64 1
  store %union.U0**** %l_1418, %union.U0***** %48, !tbaa !5
  %49 = getelementptr inbounds %union.U0****, %union.U0***** %48, i64 1
  store %union.U0**** %l_1418, %union.U0***** %49, !tbaa !5
  %50 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %44, i64 1
  %51 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %50, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %51, !tbaa !5
  %52 = getelementptr inbounds %union.U0****, %union.U0***** %51, i64 1
  store %union.U0**** %l_1418, %union.U0***** %52, !tbaa !5
  %53 = getelementptr inbounds %union.U0****, %union.U0***** %52, i64 1
  store %union.U0**** %l_1418, %union.U0***** %53, !tbaa !5
  %54 = getelementptr inbounds %union.U0****, %union.U0***** %53, i64 1
  store %union.U0**** %l_1418, %union.U0***** %54, !tbaa !5
  %55 = getelementptr inbounds %union.U0****, %union.U0***** %54, i64 1
  store %union.U0**** %l_1418, %union.U0***** %55, !tbaa !5
  %56 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %50, i64 1
  %57 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %56, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %57, !tbaa !5
  %58 = getelementptr inbounds %union.U0****, %union.U0***** %57, i64 1
  store %union.U0**** %l_1418, %union.U0***** %58, !tbaa !5
  %59 = getelementptr inbounds %union.U0****, %union.U0***** %58, i64 1
  store %union.U0**** %l_1418, %union.U0***** %59, !tbaa !5
  %60 = getelementptr inbounds %union.U0****, %union.U0***** %59, i64 1
  store %union.U0**** %l_1418, %union.U0***** %60, !tbaa !5
  %61 = getelementptr inbounds %union.U0****, %union.U0***** %60, i64 1
  store %union.U0**** %l_1418, %union.U0***** %61, !tbaa !5
  %62 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %56, i64 1
  %63 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %62, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %63, !tbaa !5
  %64 = getelementptr inbounds %union.U0****, %union.U0***** %63, i64 1
  store %union.U0**** %l_1418, %union.U0***** %64, !tbaa !5
  %65 = getelementptr inbounds %union.U0****, %union.U0***** %64, i64 1
  store %union.U0**** %l_1418, %union.U0***** %65, !tbaa !5
  %66 = getelementptr inbounds %union.U0****, %union.U0***** %65, i64 1
  store %union.U0**** %l_1418, %union.U0***** %66, !tbaa !5
  %67 = getelementptr inbounds %union.U0****, %union.U0***** %66, i64 1
  store %union.U0**** %l_1418, %union.U0***** %67, !tbaa !5
  %68 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %62, i64 1
  %69 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %68, i64 0, i64 0
  store %union.U0**** %l_1418, %union.U0***** %69, !tbaa !5
  %70 = getelementptr inbounds %union.U0****, %union.U0***** %69, i64 1
  store %union.U0**** %l_1418, %union.U0***** %70, !tbaa !5
  %71 = getelementptr inbounds %union.U0****, %union.U0***** %70, i64 1
  store %union.U0**** %l_1418, %union.U0***** %71, !tbaa !5
  %72 = getelementptr inbounds %union.U0****, %union.U0***** %71, i64 1
  store %union.U0**** %l_1418, %union.U0***** %72, !tbaa !5
  %73 = getelementptr inbounds %union.U0****, %union.U0***** %72, i64 1
  store %union.U0**** %l_1418, %union.U0***** %73, !tbaa !5
  %74 = bitcast %union.U0****** %l_1416 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = getelementptr inbounds [10 x [5 x %union.U0****]], [10 x [5 x %union.U0****]]* %l_1417, i32 0, i64 9
  %76 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %75, i32 0, i64 3
  store %union.U0***** %76, %union.U0****** %l_1416, align 8, !tbaa !5
  %77 = bitcast i16* %l_1420 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %77) #1
  store i16 7302, i16* %l_1420, align 2, !tbaa !10
  %78 = bitcast i32* %l_1421 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  store i32 -496543059, i32* %l_1421, align 4, !tbaa !1
  %79 = bitcast i32** %l_1430 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i32* %l_1421, i32** %l_1430, align 8, !tbaa !5
  %80 = bitcast [2 x i32**]* %l_1429 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %80) #1
  %81 = bitcast i32**** %l_1428 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = getelementptr inbounds [2 x i32**], [2 x i32**]* %l_1429, i32 0, i64 1
  store i32*** %82, i32**** %l_1428, align 8, !tbaa !5
  %83 = bitcast [7 x i32*]* %l_1444 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %83) #1
  %84 = bitcast i32** %l_1445 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  store i32* @g_1014, i32** %l_1445, align 8, !tbaa !5
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #1
  %86 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %87

; <label>:87                                      ; preds = %94, %0
  %88 = load i32, i32* %i, align 4, !tbaa !1
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %90, label %97

; <label>:90                                      ; preds = %87
  %91 = load i32, i32* %i, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x %union.U0**], [5 x %union.U0**]* %l_1419, i32 0, i64 %92
  store %union.U0** @g_452, %union.U0*** %93, align 8, !tbaa !5
  br label %94

; <label>:94                                      ; preds = %90
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %i, align 4, !tbaa !1
  br label %87

; <label>:97                                      ; preds = %87
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %105, %97
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 2
  br i1 %100, label %101, label %108

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i32**], [2 x i32**]* %l_1429, i32 0, i64 %103
  store i32** %l_1430, i32*** %104, align 8, !tbaa !5
  br label %105

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:108                                     ; preds = %98
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %116, %108
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = icmp slt i32 %110, 7
  br i1 %111, label %112, label %119

; <label>:112                                     ; preds = %109
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_1444, i32 0, i64 %114
  store i32* %l_1207, i32** %115, align 8, !tbaa !5
  br label %116

; <label>:116                                     ; preds = %112
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %i, align 4, !tbaa !1
  br label %109

; <label>:119                                     ; preds = %109
  store i16 0, i16* %1, align 2, !tbaa !10
  br label %120

; <label>:120                                     ; preds = %248, %119
  %121 = load i16, i16* %1, align 2, !tbaa !10
  %122 = sext i16 %121 to i32
  %123 = icmp sle i32 %122, 3
  br i1 %123, label %124, label %253

; <label>:124                                     ; preds = %120
  %125 = bitcast [7 x [6 x [2 x %union.U0*]]]* %l_80 to i8*
  call void @llvm.lifetime.start(i64 672, i8* %125) #1
  %126 = bitcast [7 x [6 x [2 x %union.U0*]]]* %l_80 to i8*
  call void @llvm.memset.p0i8.i64(i8* %126, i8 0, i64 672, i32 16, i1 false)
  %127 = bitcast i32** %l_1221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  store i32* @g_751, i32** %l_1221, align 8, !tbaa !5
  %128 = bitcast i32* %l_1231 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  store i32 1358912516, i32* %l_1231, align 4, !tbaa !1
  %129 = bitcast i32** %l_1348 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #1
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_103, i32 0, i64 0), i32** %l_1348, align 8, !tbaa !5
  %130 = bitcast i32**** %l_1378 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  store i32*** @g_123, i32**** %l_1378, align 8, !tbaa !5
  %131 = bitcast [1 x i32****]* %l_1377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  %132 = bitcast i32****** %l_1376 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = getelementptr inbounds [1 x i32****], [1 x i32****]* %l_1377, i32 0, i64 0
  store i32***** %133, i32****** %l_1376, align 8, !tbaa !5
  %134 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  %135 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %144, %124
  %138 = load i32, i32* %i1, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %140, label %147

; <label>:140                                     ; preds = %137
  %141 = load i32, i32* %i1, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [1 x i32****], [1 x i32****]* %l_1377, i32 0, i64 %142
  store i32**** %l_1378, i32***** %143, align 8, !tbaa !5
  br label %144

; <label>:144                                     ; preds = %140
  %145 = load i32, i32* %i1, align 4, !tbaa !1
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %i1, align 4, !tbaa !1
  br label %137

; <label>:147                                     ; preds = %137
  store i16 3, i16* @g_46, align 2, !tbaa !10
  br label %148

; <label>:148                                     ; preds = %232, %147
  %149 = load i16, i16* @g_46, align 2, !tbaa !10
  %150 = sext i16 %149 to i32
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %237

; <label>:152                                     ; preds = %148
  %153 = bitcast %union.U0** %l_73 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  store %union.U0* @g_74, %union.U0** %l_73, align 8, !tbaa !5
  %154 = bitcast i32* %l_79 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  store i32 1235410225, i32* %l_79, align 4, !tbaa !1
  %155 = bitcast i32* %l_1320 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  store i32 -1444755935, i32* %l_1320, align 4, !tbaa !1
  %156 = bitcast [8 x i32]* %l_1322 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %156) #1
  %157 = bitcast [8 x i32]* %l_1322 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* bitcast ([8 x i32]* @func_43.l_1322 to i8*), i64 32, i32 16, i1 false)
  %158 = bitcast i16* %l_1325 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %158) #1
  store i16 772, i16* %l_1325, align 2, !tbaa !10
  %159 = bitcast i16***** %l_1336 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  store i16**** null, i16***** %l_1336, align 8, !tbaa !5
  %160 = bitcast i32** %l_1346 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  store i32* getelementptr inbounds ([1 x [3 x i32]], [1 x [3 x i32]]* @g_151, i32 0, i64 0, i64 2), i32** %l_1346, align 8, !tbaa !5
  %161 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  store i32 3, i32* @g_49, align 4, !tbaa !1
  br label %162

; <label>:162                                     ; preds = %198, %152
  %163 = load i32, i32* @g_49, align 4, !tbaa !1
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %201

; <label>:165                                     ; preds = %162
  %166 = bitcast i16* %l_81 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %166) #1
  store i16 16614, i16* %l_81, align 2, !tbaa !10
  %167 = bitcast i32** %l_1230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  store i32* @g_181, i32** %l_1230, align 8, !tbaa !5
  %168 = bitcast [4 x [2 x [10 x i8*]]]* %l_1232 to i8*
  call void @llvm.lifetime.start(i64 640, i8* %168) #1
  %169 = bitcast [4 x [2 x [10 x i8*]]]* %l_1232 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* bitcast ([4 x [2 x [10 x i8*]]]* @func_43.l_1232 to i8*), i64 640, i32 16, i1 false)
  %170 = bitcast i64** %l_1278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  store i64* @g_179, i64** %l_1278, align 8, !tbaa !5
  %171 = bitcast [2 x i32]* %l_1321 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  %172 = bitcast i32* %l_1347 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  store i32 77462187, i32* %l_1347, align 4, !tbaa !1
  %173 = bitcast i64* %l_1357 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  store i64 -6833459193208397598, i64* %l_1357, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_1367) #1
  store i8 -6, i8* %l_1367, align 1, !tbaa !9
  %174 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  %175 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #1
  %176 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %177

; <label>:177                                     ; preds = %184, %165
  %178 = load i32, i32* %i4, align 4, !tbaa !1
  %179 = icmp slt i32 %178, 2
  br i1 %179, label %180, label %187

; <label>:180                                     ; preds = %177
  %181 = load i32, i32* %i4, align 4, !tbaa !1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1321, i32 0, i64 %182
  store i32 -8, i32* %183, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %180
  %185 = load i32, i32* %i4, align 4, !tbaa !1
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %i4, align 4, !tbaa !1
  br label %177

; <label>:187                                     ; preds = %177
  %188 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1367) #1
  %191 = bitcast i64* %l_1357 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32* %l_1347 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast [2 x i32]* %l_1321 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i64** %l_1278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast [4 x [2 x [10 x i8*]]]* %l_1232 to i8*
  call void @llvm.lifetime.end(i64 640, i8* %195) #1
  %196 = bitcast i32** %l_1230 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i16* %l_81 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %197) #1
  br label %198

; <label>:198                                     ; preds = %187
  %199 = load i32, i32* @g_49, align 4, !tbaa !1
  %200 = sub nsw i32 %199, 1
  store i32 %200, i32* @g_49, align 4, !tbaa !1
  br label %162

; <label>:201                                     ; preds = %162
  %202 = load i32**, i32*** @g_635, align 8, !tbaa !5
  store i32* null, i32** %202, align 8, !tbaa !5
  %203 = load i64*, i64** @g_1076, align 8, !tbaa !5
  store i64 -3524652325261840468, i64* %203, align 8, !tbaa !7
  %204 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* @g_72, i32 0, i32 0), align 2, !tbaa !10
  %205 = zext i16 %204 to i32
  %206 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 91, i32 %205)
  %207 = load i16, i16* @g_46, align 2, !tbaa !10
  %208 = sext i16 %207 to i64
  %209 = icmp ugt i64 %208, 2
  %210 = zext i1 %209 to i32
  %211 = load i32*, i32** %l_1348, align 8, !tbaa !5
  %212 = load i32, i32* %211, align 4, !tbaa !1
  %213 = and i32 %212, %210
  store i32 %213, i32* %211, align 4, !tbaa !1
  %214 = load i32****, i32***** @g_1008, align 8, !tbaa !5
  %215 = load volatile i32***, i32**** %214, align 8, !tbaa !5
  %216 = load i32**, i32*** %215, align 8, !tbaa !5
  %217 = load volatile i32*, i32** %216, align 8, !tbaa !5
  %218 = load volatile i32, i32* %217, align 4, !tbaa !1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

; <label>:220                                     ; preds = %201
  store i32 19, i32* %2
  br label %222

; <label>:221                                     ; preds = %201
  store i32 0, i32* %2
  br label %222

; <label>:222                                     ; preds = %221, %220
  %223 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast i32** %l_1346 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i16***** %l_1336 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i16* %l_1325 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %226) #1
  %227 = bitcast [8 x i32]* %l_1322 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %227) #1
  %228 = bitcast i32* %l_1320 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %l_79 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast %union.U0** %l_73 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %503 [
    i32 0, label %231
    i32 19, label %232
  ]

; <label>:231                                     ; preds = %222
  br label %232

; <label>:232                                     ; preds = %231, %222
  %233 = load i16, i16* @g_46, align 2, !tbaa !10
  %234 = sext i16 %233 to i32
  %235 = sub nsw i32 %234, 1
  %236 = trunc i32 %235 to i16
  store i16 %236, i16* @g_46, align 2, !tbaa !10
  br label %148

; <label>:237                                     ; preds = %148
  %238 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32****** %l_1376 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast [1 x i32****]* %l_1377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #1
  %243 = bitcast i32**** %l_1378 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #1
  %244 = bitcast i32** %l_1348 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  %245 = bitcast i32* %l_1231 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32** %l_1221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast [7 x [6 x [2 x %union.U0*]]]* %l_80 to i8*
  call void @llvm.lifetime.end(i64 672, i8* %247) #1
  br label %248

; <label>:248                                     ; preds = %237
  %249 = load i16, i16* %1, align 2, !tbaa !10
  %250 = sext i16 %249 to i32
  %251 = add nsw i32 %250, 1
  %252 = trunc i32 %251 to i16
  store i16 %252, i16* %1, align 2, !tbaa !10
  br label %120

; <label>:253                                     ; preds = %120
  store i64 -9, i64* @g_1383, align 8, !tbaa !7
  store i32 -9, i32* %l_1207, align 4, !tbaa !1
  %254 = load i64, i64* %l_75, align 8, !tbaa !7
  %255 = bitcast %union.U0* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %255, i8* bitcast (%union.U0* getelementptr inbounds ([5 x [10 x [5 x %union.U0]]], [5 x [10 x [5 x %union.U0]]]* @g_1413, i32 0, i64 2, i64 1, i64 3) to i8*), i64 2, i32 2, i1 true), !tbaa.struct !12
  %256 = load i64, i64* %l_75, align 8, !tbaa !7
  %257 = load i16, i16* %1, align 2, !tbaa !10
  %258 = sext i16 %257 to i64
  %259 = load %union.U0*****, %union.U0****** %l_1416, align 8, !tbaa !5
  %260 = getelementptr inbounds [10 x [5 x %union.U0****]], [10 x [5 x %union.U0****]]* %l_1417, i32 0, i64 9
  %261 = getelementptr inbounds [5 x %union.U0****], [5 x %union.U0****]* %260, i32 0, i64 3
  %262 = icmp eq %union.U0***** %259, %261
  %263 = zext i1 %262 to i32
  %264 = sext i32 %263 to i64
  %265 = or i64 %264, 3020074468
  %266 = load i16, i16* %1, align 2, !tbaa !10
  %267 = sext i16 %266 to i64
  %268 = or i64 %265, %267
  %269 = icmp slt i64 %258, %268
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %l_1323, align 4, !tbaa !1
  %272 = call i32 @safe_sub_func_int32_t_s_s(i32 %270, i32 %271)
  %273 = load i64, i64* %l_75, align 8, !tbaa !7
  %274 = load i64, i64* %l_75, align 8, !tbaa !7
  %275 = icmp sge i64 %273, %274
  %276 = zext i1 %275 to i32
  %277 = load i16, i16* %1, align 2, !tbaa !10
  %278 = sext i16 %277 to i32
  %279 = icmp sle i32 %276, %278
  %280 = zext i1 %279 to i32
  %281 = sext i32 %280 to i64
  %282 = icmp sge i64 %256, %281
  %283 = zext i1 %282 to i32
  %284 = trunc i32 %283 to i16
  %285 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %284, i16 signext -9)
  %286 = sext i16 %285 to i64
  %287 = icmp sgt i64 -1, %286
  %288 = zext i1 %287 to i32
  %289 = load i16, i16* %1, align 2, !tbaa !10
  %290 = sext i16 %289 to i32
  %291 = and i32 %288, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

; <label>:293                                     ; preds = %253
  %294 = load i64, i64* @g_179, align 8, !tbaa !7
  %295 = icmp ne i64 %294, 0
  br label %296

; <label>:296                                     ; preds = %293, %253
  %297 = phi i1 [ true, %253 ], [ %295, %293 ]
  %298 = zext i1 %297 to i32
  %299 = trunc i32 %298 to i16
  %300 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %299, i16 signext 1)
  %301 = sext i16 %300 to i32
  %302 = load i16, i16* %l_1420, align 2, !tbaa !10
  %303 = sext i16 %302 to i32
  %304 = and i32 %301, %303
  %305 = sext i32 %304 to i64
  %306 = or i64 %305, 1
  %307 = load i16, i16* %1, align 2, !tbaa !10
  %308 = sext i16 %307 to i32
  %309 = load i16, i16* %1, align 2, !tbaa !10
  %310 = sext i16 %309 to i32
  %311 = xor i32 %308, %310
  %312 = load i32, i32* %l_1323, align 4, !tbaa !1
  %313 = icmp sgt i32 1, %312
  %314 = zext i1 %313 to i32
  %315 = load i32, i32* %l_1421, align 4, !tbaa !1
  %316 = icmp uge i32 %314, %315
  br i1 %316, label %317, label %378

; <label>:317                                     ; preds = %296
  %318 = bitcast [8 x [4 x i32]]* %l_1437 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %318) #1
  %319 = bitcast [8 x [4 x i32]]* %l_1437 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %319, i8* bitcast ([8 x [4 x i32]]* @func_43.l_1437 to i8*), i64 128, i32 16, i1 false)
  %320 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %320) #1
  %321 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %321) #1
  store i16 0, i16* @g_180, align 2, !tbaa !10
  br label %322

; <label>:322                                     ; preds = %371, %317
  %323 = load i16, i16* @g_180, align 2, !tbaa !10
  %324 = sext i16 %323 to i32
  %325 = icmp sgt i32 %324, -17
  br i1 %325, label %326, label %374

; <label>:326                                     ; preds = %322
  %327 = bitcast i32* %l_1433 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %327) #1
  store i32 1049058737, i32* %l_1433, align 4, !tbaa !1
  %328 = bitcast i32** %l_1436 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %328) #1
  store i32* %l_1323, i32** %l_1436, align 8, !tbaa !5
  %329 = load i32, i32* %l_1421, align 4, !tbaa !1
  %330 = load i16, i16* %1, align 2, !tbaa !10
  %331 = sext i16 %330 to i32
  %332 = icmp ne i32 %329, %331
  %333 = zext i1 %332 to i32
  %334 = load i32, i32* %l_1207, align 4, !tbaa !1
  %335 = or i32 %334, %333
  store i32 %335, i32* %l_1207, align 4, !tbaa !1
  %336 = load i16, i16* %1, align 2, !tbaa !10
  %337 = sext i16 %336 to i32
  %338 = icmp slt i32 %335, %337
  %339 = zext i1 %338 to i32
  %340 = load i32***, i32**** %l_1428, align 8, !tbaa !5
  %341 = icmp ne i32*** @g_1385, %340
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  store i64 %343, i64* @g_1383, align 8, !tbaa !7
  %344 = load i32, i32* %l_1433, align 4, !tbaa !1
  %345 = zext i32 %344 to i64
  %346 = load i64, i64* %l_75, align 8, !tbaa !7
  %347 = load i16, i16* %1, align 2, !tbaa !10
  %348 = sext i16 %347 to i64
  %349 = call i64 @safe_mod_func_int64_t_s_s(i64 %346, i64 %348)
  %350 = icmp ne i64 %345, %349
  %351 = zext i1 %350 to i32
  %352 = sext i32 %351 to i64
  %353 = and i64 41, %352
  %354 = icmp sle i64 %353, -7
  %355 = zext i1 %354 to i32
  %356 = trunc i32 %355 to i8
  %357 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %356, i8 signext 110)
  %358 = load i16, i16* %1, align 2, !tbaa !10
  %359 = sext i16 %358 to i64
  %360 = xor i64 -5065156179094756671, %359
  %361 = call i64 @safe_mod_func_int64_t_s_s(i64 %343, i64 %360)
  %362 = trunc i64 %361 to i8
  %363 = load volatile i32, i32* @g_1402, align 4, !tbaa !1
  %364 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %362, i32 %363)
  %365 = sext i8 %364 to i32
  %366 = load i32*, i32** %l_1436, align 8, !tbaa !5
  store i32 %365, i32* %366, align 4, !tbaa !1
  %367 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %l_1437, i32 0, i64 4
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %367, i32 0, i64 1
  store i32 %365, i32* %368, align 4, !tbaa !1
  %369 = bitcast i32** %l_1436 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  %370 = bitcast i32* %l_1433 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #1
  br label %371

; <label>:371                                     ; preds = %326
  %372 = load i16, i16* @g_180, align 2, !tbaa !10
  %373 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %372, i16 zeroext 9)
  store i16 %373, i16* @g_180, align 2, !tbaa !10
  br label %322

; <label>:374                                     ; preds = %322
  %375 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  %376 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %376) #1
  %377 = bitcast [8 x [4 x i32]]* %l_1437 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %377) #1
  br label %478

; <label>:378                                     ; preds = %296
  %379 = bitcast i32** %l_1439 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %379) #1
  store i32* %l_1323, i32** %l_1439, align 8, !tbaa !5
  %380 = bitcast [4 x [8 x [1 x i32*]]]* %l_1440 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %380) #1
  %381 = getelementptr inbounds [4 x [8 x [1 x i32*]]], [4 x [8 x [1 x i32*]]]* %l_1440, i64 0, i64 0
  %382 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %381, i64 0, i64 0
  %383 = getelementptr inbounds [1 x i32*], [1 x i32*]* %382, i64 0, i64 0
  store i32* @g_534, i32** %383, !tbaa !5
  %384 = getelementptr inbounds [1 x i32*], [1 x i32*]* %382, i64 1
  %385 = getelementptr inbounds [1 x i32*], [1 x i32*]* %384, i64 0, i64 0
  store i32* %l_1323, i32** %385, !tbaa !5
  %386 = getelementptr inbounds [1 x i32*], [1 x i32*]* %384, i64 1
  %387 = getelementptr inbounds [1 x i32*], [1 x i32*]* %386, i64 0, i64 0
  store i32* @g_534, i32** %387, !tbaa !5
  %388 = getelementptr inbounds [1 x i32*], [1 x i32*]* %386, i64 1
  %389 = getelementptr inbounds [1 x i32*], [1 x i32*]* %388, i64 0, i64 0
  store i32* %l_1323, i32** %389, !tbaa !5
  %390 = getelementptr inbounds [1 x i32*], [1 x i32*]* %388, i64 1
  %391 = getelementptr inbounds [1 x i32*], [1 x i32*]* %390, i64 0, i64 0
  store i32* @g_534, i32** %391, !tbaa !5
  %392 = getelementptr inbounds [1 x i32*], [1 x i32*]* %390, i64 1
  %393 = getelementptr inbounds [1 x i32*], [1 x i32*]* %392, i64 0, i64 0
  store i32* %l_1323, i32** %393, !tbaa !5
  %394 = getelementptr inbounds [1 x i32*], [1 x i32*]* %392, i64 1
  %395 = getelementptr inbounds [1 x i32*], [1 x i32*]* %394, i64 0, i64 0
  store i32* @g_534, i32** %395, !tbaa !5
  %396 = getelementptr inbounds [1 x i32*], [1 x i32*]* %394, i64 1
  %397 = getelementptr inbounds [1 x i32*], [1 x i32*]* %396, i64 0, i64 0
  store i32* %l_1323, i32** %397, !tbaa !5
  %398 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %381, i64 1
  %399 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %398, i64 0, i64 0
  %400 = getelementptr inbounds [1 x i32*], [1 x i32*]* %399, i64 0, i64 0
  store i32* @g_534, i32** %400, !tbaa !5
  %401 = getelementptr inbounds [1 x i32*], [1 x i32*]* %399, i64 1
  %402 = getelementptr inbounds [1 x i32*], [1 x i32*]* %401, i64 0, i64 0
  store i32* %l_1323, i32** %402, !tbaa !5
  %403 = getelementptr inbounds [1 x i32*], [1 x i32*]* %401, i64 1
  %404 = getelementptr inbounds [1 x i32*], [1 x i32*]* %403, i64 0, i64 0
  store i32* @g_534, i32** %404, !tbaa !5
  %405 = getelementptr inbounds [1 x i32*], [1 x i32*]* %403, i64 1
  %406 = getelementptr inbounds [1 x i32*], [1 x i32*]* %405, i64 0, i64 0
  store i32* %l_1323, i32** %406, !tbaa !5
  %407 = getelementptr inbounds [1 x i32*], [1 x i32*]* %405, i64 1
  %408 = getelementptr inbounds [1 x i32*], [1 x i32*]* %407, i64 0, i64 0
  store i32* @g_534, i32** %408, !tbaa !5
  %409 = getelementptr inbounds [1 x i32*], [1 x i32*]* %407, i64 1
  %410 = getelementptr inbounds [1 x i32*], [1 x i32*]* %409, i64 0, i64 0
  store i32* %l_1323, i32** %410, !tbaa !5
  %411 = getelementptr inbounds [1 x i32*], [1 x i32*]* %409, i64 1
  %412 = getelementptr inbounds [1 x i32*], [1 x i32*]* %411, i64 0, i64 0
  store i32* @g_534, i32** %412, !tbaa !5
  %413 = getelementptr inbounds [1 x i32*], [1 x i32*]* %411, i64 1
  %414 = getelementptr inbounds [1 x i32*], [1 x i32*]* %413, i64 0, i64 0
  store i32* %l_1323, i32** %414, !tbaa !5
  %415 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %398, i64 1
  %416 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %415, i64 0, i64 0
  %417 = getelementptr inbounds [1 x i32*], [1 x i32*]* %416, i64 0, i64 0
  store i32* @g_534, i32** %417, !tbaa !5
  %418 = getelementptr inbounds [1 x i32*], [1 x i32*]* %416, i64 1
  %419 = getelementptr inbounds [1 x i32*], [1 x i32*]* %418, i64 0, i64 0
  store i32* %l_1323, i32** %419, !tbaa !5
  %420 = getelementptr inbounds [1 x i32*], [1 x i32*]* %418, i64 1
  %421 = getelementptr inbounds [1 x i32*], [1 x i32*]* %420, i64 0, i64 0
  store i32* @g_534, i32** %421, !tbaa !5
  %422 = getelementptr inbounds [1 x i32*], [1 x i32*]* %420, i64 1
  %423 = getelementptr inbounds [1 x i32*], [1 x i32*]* %422, i64 0, i64 0
  store i32* %l_1323, i32** %423, !tbaa !5
  %424 = getelementptr inbounds [1 x i32*], [1 x i32*]* %422, i64 1
  %425 = getelementptr inbounds [1 x i32*], [1 x i32*]* %424, i64 0, i64 0
  store i32* @g_534, i32** %425, !tbaa !5
  %426 = getelementptr inbounds [1 x i32*], [1 x i32*]* %424, i64 1
  %427 = getelementptr inbounds [1 x i32*], [1 x i32*]* %426, i64 0, i64 0
  store i32* %l_1323, i32** %427, !tbaa !5
  %428 = getelementptr inbounds [1 x i32*], [1 x i32*]* %426, i64 1
  %429 = getelementptr inbounds [1 x i32*], [1 x i32*]* %428, i64 0, i64 0
  store i32* @g_534, i32** %429, !tbaa !5
  %430 = getelementptr inbounds [1 x i32*], [1 x i32*]* %428, i64 1
  %431 = getelementptr inbounds [1 x i32*], [1 x i32*]* %430, i64 0, i64 0
  store i32* %l_1323, i32** %431, !tbaa !5
  %432 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %415, i64 1
  %433 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %432, i64 0, i64 0
  %434 = getelementptr inbounds [1 x i32*], [1 x i32*]* %433, i64 0, i64 0
  store i32* @g_534, i32** %434, !tbaa !5
  %435 = getelementptr inbounds [1 x i32*], [1 x i32*]* %433, i64 1
  %436 = getelementptr inbounds [1 x i32*], [1 x i32*]* %435, i64 0, i64 0
  store i32* %l_1323, i32** %436, !tbaa !5
  %437 = getelementptr inbounds [1 x i32*], [1 x i32*]* %435, i64 1
  %438 = getelementptr inbounds [1 x i32*], [1 x i32*]* %437, i64 0, i64 0
  store i32* @g_534, i32** %438, !tbaa !5
  %439 = getelementptr inbounds [1 x i32*], [1 x i32*]* %437, i64 1
  %440 = getelementptr inbounds [1 x i32*], [1 x i32*]* %439, i64 0, i64 0
  store i32* %l_1323, i32** %440, !tbaa !5
  %441 = getelementptr inbounds [1 x i32*], [1 x i32*]* %439, i64 1
  %442 = getelementptr inbounds [1 x i32*], [1 x i32*]* %441, i64 0, i64 0
  store i32* @g_534, i32** %442, !tbaa !5
  %443 = getelementptr inbounds [1 x i32*], [1 x i32*]* %441, i64 1
  %444 = getelementptr inbounds [1 x i32*], [1 x i32*]* %443, i64 0, i64 0
  store i32* %l_1323, i32** %444, !tbaa !5
  %445 = getelementptr inbounds [1 x i32*], [1 x i32*]* %443, i64 1
  %446 = getelementptr inbounds [1 x i32*], [1 x i32*]* %445, i64 0, i64 0
  store i32* @g_534, i32** %446, !tbaa !5
  %447 = getelementptr inbounds [1 x i32*], [1 x i32*]* %445, i64 1
  %448 = getelementptr inbounds [1 x i32*], [1 x i32*]* %447, i64 0, i64 0
  store i32* %l_1323, i32** %448, !tbaa !5
  %449 = bitcast i32* %l_1441 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %449) #1
  store i32 -4, i32* %l_1441, align 4, !tbaa !1
  %450 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %450) #1
  %451 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %451) #1
  %452 = bitcast i32* %k11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %452) #1
  store i32 3, i32* %l_1421, align 4, !tbaa !1
  br label %453

; <label>:453                                     ; preds = %462, %378
  %454 = load i32, i32* %l_1421, align 4, !tbaa !1
  %455 = icmp ule i32 %454, 9
  br i1 %455, label %456, label %465

; <label>:456                                     ; preds = %453
  %457 = load i64**, i64*** @g_1075, align 8, !tbaa !5
  %458 = load i64*, i64** %457, align 8, !tbaa !5
  %459 = icmp eq i64* null, %458
  %460 = zext i1 %459 to i32
  %461 = load volatile i32*, i32** @g_1438, align 8, !tbaa !5
  store i32 %460, i32* %461, align 4, !tbaa !1
  br label %462

; <label>:462                                     ; preds = %456
  %463 = load i32, i32* %l_1421, align 4, !tbaa !1
  %464 = add i32 %463, 1
  store i32 %464, i32* %l_1421, align 4, !tbaa !1
  br label %453

; <label>:465                                     ; preds = %453
  %466 = load i32, i32* %l_1441, align 4, !tbaa !1
  %467 = add i32 %466, -1
  store i32 %467, i32* %l_1441, align 4, !tbaa !1
  %468 = load i32***, i32**** @g_634, align 8, !tbaa !5
  %469 = load i32**, i32*** %468, align 8, !tbaa !5
  %470 = load i32*, i32** %469, align 8, !tbaa !5
  %471 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_1444, i32 0, i64 0
  store i32* %470, i32** %471, align 8, !tbaa !5
  store i32* %470, i32** %l_1445, align 8, !tbaa !5
  %472 = bitcast i32* %k11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i32* %l_1441 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %475) #1
  %476 = bitcast [4 x [8 x [1 x i32*]]]* %l_1440 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %476) #1
  %477 = bitcast i32** %l_1439 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %477) #1
  br label %478

; <label>:478                                     ; preds = %465, %374
  %479 = load i32****, i32***** @g_121, align 8, !tbaa !5
  %480 = load i32***, i32**** %479, align 8, !tbaa !5
  %481 = load i32**, i32*** %480, align 8, !tbaa !5
  store i32* %l_1207, i32** %481, align 8, !tbaa !5
  %482 = load i16, i16* @g_51, align 2, !tbaa !10
  %483 = sext i16 %482 to i32
  store i32 1, i32* %2
  %484 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %484) #1
  %485 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast i32** %l_1445 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %486) #1
  %487 = bitcast [7 x i32*]* %l_1444 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %487) #1
  %488 = bitcast i32**** %l_1428 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %488) #1
  %489 = bitcast [2 x i32**]* %l_1429 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %489) #1
  %490 = bitcast i32** %l_1430 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %490) #1
  %491 = bitcast i32* %l_1421 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %491) #1
  %492 = bitcast i16* %l_1420 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %492) #1
  %493 = bitcast %union.U0****** %l_1416 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %493) #1
  %494 = bitcast [10 x [5 x %union.U0****]]* %l_1417 to i8*
  call void @llvm.lifetime.end(i64 400, i8* %494) #1
  %495 = bitcast %union.U0**** %l_1418 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %495) #1
  %496 = bitcast [5 x %union.U0**]* %l_1419 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %496) #1
  %497 = bitcast i64** %l_1408 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %497) #1
  %498 = bitcast i32* %l_1323 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast i16*** %l_1236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %499) #1
  %500 = bitcast i16** %l_1237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %500) #1
  %501 = bitcast i32* %l_1207 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = bitcast i64* %l_75 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %502) #1
  ret i32 %483

; <label>:503                                     ; preds = %222
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
define internal zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %ui) #0 {
  %1 = alloca i8, align 1
  store i8 %ui, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = zext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
!12 = !{i64 0, i64 2, !10, i64 0, i64 2, !10, i64 0, i64 2, !10, i64 0, i64 2, !10}
