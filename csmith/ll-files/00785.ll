; ModuleID = '00785.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -1253698163, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_6 = internal global i32 -1560609519, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_8 = internal global [10 x i32] [i32 -269230589, i32 92963674, i32 -269230589, i32 -269230589, i32 92963674, i32 -269230589, i32 -269230589, i32 92963674, i32 -269230589, i32 -269230589], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"g_8[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_9 = internal global i32 1769895948, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_10 = internal global i32 -1927689951, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_10\00", align 1
@g_80 = internal global i64 -9, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@g_81 = internal global i8 -16, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_98 = internal global i16 15128, align 2
@.str.10 = private unnamed_addr constant [5 x i8] c"g_98\00", align 1
@g_101 = internal global i32 130590815, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_101\00", align 1
@g_119 = internal global [5 x i32] [i32 -1361673776, i32 -1361673776, i32 -1361673776, i32 -1361673776, i32 -1361673776], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"g_119[i]\00", align 1
@g_145 = internal global i16 -3051, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_166 = internal global i8 59, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_169 = internal global i64 4735728617983744416, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"g_169\00", align 1
@g_216 = internal global [8 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 1], [1 x i16] [i16 1]], align 16
@.str.16 = private unnamed_addr constant [12 x i8] c"g_216[i][j]\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_218 = internal global [5 x [1 x i32]] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"g_218[i][j]\00", align 1
@g_224 = internal global [7 x i32] [i32 460975135, i32 460975135, i32 460975135, i32 460975135, i32 460975135, i32 460975135, i32 460975135], align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"g_224[i]\00", align 1
@g_243 = internal global i32 -1, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_243\00", align 1
@g_300 = internal global i16 -15413, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_300\00", align 1
@g_339 = internal global [3 x i32] [i32 919191438, i32 919191438, i32 919191438], align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"g_339[i]\00", align 1
@g_389 = internal global i16 1, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_389\00", align 1
@g_390 = internal global [7 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@.str.24 = private unnamed_addr constant [9 x i8] c"g_390[i]\00", align 1
@g_392 = internal global i8 9, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_392\00", align 1
@g_393 = internal global i64 1, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_393\00", align 1
@g_400 = internal global i16 -3, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_400\00", align 1
@g_401 = internal global i8 0, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_401\00", align 1
@g_402 = internal global i64 -6552371779684635721, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_402\00", align 1
@g_403 = internal global i64 4794923018952347864, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"g_403\00", align 1
@g_404 = internal global i8 8, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_404\00", align 1
@g_407 = internal global [5 x [7 x [7 x i16]]] [[7 x [7 x i16]] [[7 x i16] [i16 -7, i16 -5, i16 -14327, i16 -7, i16 -7, i16 -5, i16 3375], [7 x i16] [i16 3901, i16 1, i16 -26483, i16 3, i16 3, i16 -26483, i16 1], [7 x i16] [i16 0, i16 0, i16 -14327, i16 1, i16 1, i16 -5, i16 15194], [7 x i16] [i16 0, i16 1, i16 1, i16 1, i16 3, i16 1, i16 -30963], [7 x i16] [i16 0, i16 -5, i16 -2606, i16 1, i16 -7, i16 20431, i16 15194], [7 x i16] [i16 3901, i16 -30963, i16 1, i16 3, i16 1, i16 1, i16 1], [7 x i16] [i16 -7959, i16 -5, i16 -14327, i16 -7, i16 -7, i16 -5, i16 3375]], [7 x [7 x i16]] [[7 x i16] [i16 3901, i16 1, i16 -26483, i16 3, i16 3, i16 -26483, i16 1], [7 x i16] [i16 0, i16 0, i16 -14327, i16 1, i16 1, i16 -5, i16 15194], [7 x i16] [i16 0, i16 1, i16 1, i16 1, i16 3, i16 1, i16 -30963], [7 x i16] [i16 0, i16 -5, i16 -2606, i16 1, i16 -7, i16 20431, i16 15194], [7 x i16] [i16 3901, i16 -30963, i16 1, i16 3, i16 1, i16 1, i16 1], [7 x i16] [i16 -7959, i16 -5, i16 -14327, i16 -7, i16 -7, i16 -5, i16 3375], [7 x i16] [i16 3901, i16 1, i16 -26483, i16 3, i16 3, i16 -26483, i16 1]], [7 x [7 x i16]] [[7 x i16] [i16 0, i16 0, i16 -14327, i16 1, i16 1, i16 -5, i16 15194], [7 x i16] [i16 0, i16 1, i16 1, i16 1, i16 3, i16 1, i16 -30963], [7 x i16] [i16 0, i16 -5, i16 -2606, i16 1, i16 -7, i16 20431, i16 15194], [7 x i16] [i16 3901, i16 -30963, i16 1, i16 3, i16 1, i16 1, i16 1], [7 x i16] [i16 -7959, i16 -5, i16 -14327, i16 -7, i16 -7, i16 -5, i16 3375], [7 x i16] [i16 3901, i16 1, i16 -26483, i16 3, i16 3, i16 -26483, i16 1], [7 x i16] [i16 0, i16 0, i16 -14327, i16 1, i16 1, i16 -5, i16 15194]], [7 x [7 x i16]] [[7 x i16] [i16 0, i16 1, i16 1, i16 1, i16 3, i16 1, i16 -30963], [7 x i16] [i16 0, i16 -5, i16 -2606, i16 1, i16 -7, i16 20431, i16 15194], [7 x i16] [i16 3901, i16 -30963, i16 1, i16 3, i16 1, i16 1, i16 1], [7 x i16] [i16 -7959, i16 -5, i16 -14327, i16 -7, i16 -7, i16 -5, i16 3375], [7 x i16] [i16 3901, i16 1, i16 -26483, i16 3, i16 3, i16 -26483, i16 1], [7 x i16] [i16 0, i16 0, i16 -14327, i16 1, i16 1, i16 -5, i16 15194], [7 x i16] [i16 0, i16 1, i16 1, i16 24092, i16 0, i16 8163, i16 25717]], [7 x [7 x i16]] [[7 x i16] [i16 25893, i16 9341, i16 -7, i16 -2, i16 -7959, i16 1, i16 -31346], [7 x i16] [i16 1, i16 25717, i16 8163, i16 0, i16 24092, i16 8163, i16 12507], [7 x i16] [i16 25609, i16 9341, i16 1, i16 62, i16 -7959, i16 0, i16 3], [7 x i16] [i16 1, i16 12507, i16 3, i16 0, i16 0, i16 3, i16 12507], [7 x i16] [i16 25893, i16 -19539, i16 1, i16 -2, i16 -3, i16 0, i16 -31346], [7 x i16] [i16 1, i16 12507, i16 8163, i16 24092, i16 0, i16 8163, i16 25717], [7 x i16] [i16 25893, i16 9341, i16 -7, i16 -2, i16 -7959, i16 1, i16 -31346]]], align 16
@.str.32 = private unnamed_addr constant [15 x i8] c"g_407[i][j][k]\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_408 = internal global i32 212017080, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_408\00", align 1
@g_454 = internal global i32 1813215892, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_454\00", align 1
@g_456 = internal global [5 x i32] [i32 -7, i32 -7, i32 -7, i32 -7, i32 -7], align 16
@.str.36 = private unnamed_addr constant [9 x i8] c"g_456[i]\00", align 1
@g_467 = internal global %union.U0 { i64 4583422666741305356 }, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"g_467.f0\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"g_467.f1\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"g_467.f2\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"g_467.f3\00", align 1
@g_521 = internal global i8 -8, align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"g_521\00", align 1
@g_572 = internal global [2 x [4 x %union.U0]] [[4 x %union.U0] [%union.U0 { i64 7946191171344689482 }, %union.U0 { i64 -5356931157702742025 }, %union.U0 { i64 7946191171344689482 }, %union.U0 { i64 -5356931157702742025 }], [4 x %union.U0] [%union.U0 { i64 7946191171344689482 }, %union.U0 { i64 -5356931157702742025 }, %union.U0 { i64 7946191171344689482 }, %union.U0 { i64 -5356931157702742025 }]], align 16
@.str.42 = private unnamed_addr constant [15 x i8] c"g_572[i][j].f0\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"g_572[i][j].f1\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"g_572[i][j].f2\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"g_572[i][j].f3\00", align 1
@g_650 = internal global i64 3, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"g_650\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"g_691\00", align 1
@g_711 = internal global i32 1115442185, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"g_711\00", align 1
@g_730 = internal global [9 x [5 x [5 x i8]]] [[5 x [5 x i8]] [[5 x i8] c"\F9l#\F3\80", [5 x i8] c"\9E\D3\D3\9E\F9", [5 x i8] c"\9E\FF\E3\FC\FF", [5 x i8] c"\F9\8A\07#\FB", [5 x i8] c"\8A\F9\D3\FC#"], [5 x [5 x i8]] [[5 x i8] c"\FF\9E\F9\9E\FF", [5 x i8] c"\D3\9E\F9\F3l", [5 x i8] c"l\F9#\FF\BE", [5 x i8] c"\9E\8Ar\9El", [5 x i8] c"p\FF\07\07\FF"], [5 x [5 x i8]] [[5 x i8] c"l\D3\07\FB#", [5 x i8] c"\8Alr\FC\FB", [5 x i8] c"\F3\9E#r\07", [5 x i8] c"\F3r\01\07\01", [5 x i8] c"\BE\BEl\07p"], [5 x [5 x i8]] [[5 x i8] c"r\F3\01r\BE", [5 x i8] c"\D3\E3\F9#\E3", [5 x i8] c"\BE\F3\FB\F9\F9", [5 x i8] c"\01\BE\01\F9\F9", [5 x i8] c"\07r\FE\D3\E3"], [5 x [5 x i8]] [[5 x i8] c"\F3\D3\80\07\BE", [5 x i8] c"\01\BE\FE\E3p", [5 x i8] c"\D3\01\01\D3\01", [5 x i8] c"\D3\07\FB#\07", [5 x i8] c"\01\F3\F9\FE\F9"], [5 x [5 x i8]] [[5 x i8] c"\F3\01\01#\FE", [5 x i8] c"\07\D3l\D3\07", [5 x i8] c"\01\D3\01\E3\BE", [5 x i8] c"\BE\01\FE\07\13", [5 x i8] c"\D3\F3\FF\D3\BE"], [5 x [5 x i8]] [[5 x i8] c"r\07\F9\F9\07", [5 x i8] c"\BE\01\F9\F9\FE", [5 x i8] c"\F3\BE\FF#\F9", [5 x i8] c"\E3\D3\FEr\07", [5 x i8] c"\F3r\01\07\01"], [5 x [5 x i8]] [[5 x i8] c"\BE\BEl\07p", [5 x i8] c"r\F3\01r\BE", [5 x i8] c"\D3\E3\F9#\E3", [5 x i8] c"\BE\F3\FB\F9\F9", [5 x i8] c"\01\BE\01\F9\F9"], [5 x [5 x i8]] [[5 x i8] c"\07r\FE\D3\E3", [5 x i8] c"\F3\D3\80\07\BE", [5 x i8] c"\01\BE\FE\E3p", [5 x i8] c"\D3\01\01\D3\01", [5 x i8] c"\D3\07\FB#\07"]], align 16
@.str.49 = private unnamed_addr constant [15 x i8] c"g_730[i][j][k]\00", align 1
@g_762 = internal global i8 96, align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"g_762\00", align 1
@g_804 = internal global i32 1344433718, align 4
@.str.51 = private unnamed_addr constant [6 x i8] c"g_804\00", align 1
@g_884 = internal global i32 1872679366, align 4
@.str.52 = private unnamed_addr constant [6 x i8] c"g_884\00", align 1
@g_886 = internal global [8 x %union.U0] [%union.U0 { i64 -7 }, %union.U0 { i64 -7 }, %union.U0 { i64 -7 }, %union.U0 { i64 -7 }, %union.U0 { i64 -7 }, %union.U0 { i64 -7 }, %union.U0 { i64 -7 }, %union.U0 { i64 -7 }], align 16
@.str.53 = private unnamed_addr constant [12 x i8] c"g_886[i].f0\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"g_886[i].f1\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"g_886[i].f2\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"g_886[i].f3\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1334\00", align 1
@g_1488 = internal global %union.U0 { i64 2097176916679532950 }, align 8
@.str.58 = private unnamed_addr constant [10 x i8] c"g_1488.f0\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_1488.f1\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"g_1488.f2\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"g_1488.f3\00", align 1
@g_1490 = internal global %union.U0 { i64 -8843665877114646205 }, align 8
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1490.f0\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"g_1490.f1\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"g_1490.f2\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"g_1490.f3\00", align 1
@g_1492 = internal global [2 x %union.U0] [%union.U0 { i64 622284026659965156 }, %union.U0 { i64 622284026659965156 }], align 16
@.str.66 = private unnamed_addr constant [13 x i8] c"g_1492[i].f0\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"g_1492[i].f1\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"g_1492[i].f2\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"g_1492[i].f3\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"g_1506\00", align 1
@g_1519 = internal global i8 -3, align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1519\00", align 1
@g_1520 = internal global i8 1, align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"g_1520\00", align 1
@g_1521 = internal global i8 0, align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"g_1521\00", align 1
@g_1569 = internal global i32 0, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1569\00", align 1
@g_1828 = internal global %union.U0 zeroinitializer, align 8
@.str.75 = private unnamed_addr constant [10 x i8] c"g_1828.f0\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1828.f1\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"g_1828.f2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1828.f3\00", align 1
@g_1850 = internal global %union.U0 { i64 1 }, align 8
@.str.79 = private unnamed_addr constant [10 x i8] c"g_1850.f0\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"g_1850.f1\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"g_1850.f2\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"g_1850.f3\00", align 1
@g_1879 = internal global i32 0, align 4
@.str.83 = private unnamed_addr constant [7 x i8] c"g_1879\00", align 1
@g_1885 = internal global i16 -7, align 2
@.str.84 = private unnamed_addr constant [7 x i8] c"g_1885\00", align 1
@g_1950 = internal global i32 0, align 4
@.str.85 = private unnamed_addr constant [7 x i8] c"g_1950\00", align 1
@g_2002 = internal global i8 -60, align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"g_2002\00", align 1
@g_2041 = internal global i32 1, align 4
@.str.87 = private unnamed_addr constant [7 x i8] c"g_2041\00", align 1
@g_2212 = internal global [8 x %union.U0] [%union.U0 { i64 1053624454591408703 }, %union.U0 { i64 1053624454591408703 }, %union.U0 { i64 1053624454591408703 }, %union.U0 { i64 1053624454591408703 }, %union.U0 { i64 1053624454591408703 }, %union.U0 { i64 1053624454591408703 }, %union.U0 { i64 1053624454591408703 }, %union.U0 { i64 1053624454591408703 }], align 16
@.str.88 = private unnamed_addr constant [13 x i8] c"g_2212[i].f0\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"g_2212[i].f1\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"g_2212[i].f2\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"g_2212[i].f3\00", align 1
@g_2237 = internal global i64 -1, align 8
@.str.92 = private unnamed_addr constant [7 x i8] c"g_2237\00", align 1
@g_2280 = internal global %union.U0 { i64 1 }, align 8
@.str.93 = private unnamed_addr constant [10 x i8] c"g_2280.f0\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"g_2280.f1\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"g_2280.f2\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"g_2280.f3\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_5 = private unnamed_addr constant [6 x i8] c"\FB\87\87\FB\87\87", align 1
@func_1.l_2297 = private unnamed_addr constant [5 x i8*] [i8* @g_401, i8* @g_401, i8* @g_401, i8* @g_401, i8* @g_401], align 16
@func_1.l_2068 = private unnamed_addr constant [10 x i32] [i32 285047566, i32 1454788143, i32 285047566, i32 1454788143, i32 285047566, i32 1454788143, i32 285047566, i32 1454788143, i32 285047566, i32 1454788143], align 16
@g_916 = internal global %union.U0** @g_555, align 8
@func_1.l_2214 = private unnamed_addr constant [8 x i32] [i32 -1341818189, i32 -1341818189, i32 -1341818189, i32 -1341818189, i32 -1341818189, i32 -1341818189, i32 -1341818189, i32 -1341818189], align 16
@func_1.l_2047 = private unnamed_addr constant [4 x [9 x %union.U0*]] [[9 x %union.U0*] [%union.U0* null, %union.U0* getelementptr inbounds ([2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i32 0, i32 0), %union.U0* @g_1828, %union.U0* getelementptr inbounds ([2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i32 0, i32 0), %union.U0* null, %union.U0* null, %union.U0* null, %union.U0* getelementptr inbounds ([2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i32 0, i32 0), %union.U0* @g_1828], [9 x %union.U0*] [%union.U0* @g_467, %union.U0* @g_467, %union.U0* @g_1490, %union.U0* @g_467, %union.U0* @g_467, %union.U0* @g_1490, %union.U0* @g_467, %union.U0* @g_467, %union.U0* @g_1490], [9 x %union.U0*] [%union.U0* null, %union.U0* getelementptr inbounds ([2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i32 0, i32 0), %union.U0* @g_1828, %union.U0* getelementptr inbounds ([2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i32 0, i32 0), %union.U0* null, %union.U0* null, %union.U0* null, %union.U0* getelementptr inbounds ([2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i32 0, i32 0), %union.U0* @g_1828], [9 x %union.U0*] [%union.U0* @g_467, %union.U0* @g_467, %union.U0* @g_1490, %union.U0* @g_467, %union.U0* @g_467, %union.U0* @g_1490, %union.U0* @g_467, %union.U0* @g_467, %union.U0* @g_1490]], align 16
@g_1566 = internal global i16*** @g_1567, align 8
@g_358 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [1 x i16]]* @g_216 to i8*), i64 4) to i16*), align 8
@g_1827 = internal constant %union.U0* @g_1828, align 8
@g_555 = internal global %union.U0* null, align 8
@g_1567 = internal global i16** @g_197, align 8
@g_197 = internal global i16* null, align 8
@.str.97 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %6 = alloca %union.U0, align 8
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
  %91 = call i64 @func_1()
  %92 = getelementptr %union.U0, %union.U0* %6, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = load i32, i32* @g_2, align 4, !tbaa !1
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %95)
  %96 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %98)
  %99 = load volatile i32, i32* @g_7, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %101)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %118, %90
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %121

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10 x i32], [10 x i32]* @g_8, i32 0, i64 %107
  %109 = load volatile i32, i32* %108, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

; <label>:114                                     ; preds = %105
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %115)
  br label %117

; <label>:117                                     ; preds = %114, %105
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:121                                     ; preds = %102
  %122 = load volatile i32, i32* @g_9, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %124)
  %125 = load i32, i32* @g_10, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %127)
  %128 = load i64, i64* @g_80, align 8, !tbaa !7
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %129)
  %130 = load i8, i8* @g_81, align 1, !tbaa !9
  %131 = zext i8 %130 to i64
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %132)
  %133 = load i16, i16* @g_98, align 2, !tbaa !10
  %134 = zext i16 %133 to i64
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %135)
  %136 = load i32, i32* @g_101, align 4, !tbaa !1
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %138)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %139

; <label>:139                                     ; preds = %155, %121
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = icmp slt i32 %140, 5
  br i1 %141, label %142, label %158

; <label>:142                                     ; preds = %139
  %143 = load i32, i32* %i, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* @g_119, i32 0, i64 %144
  %146 = load i32, i32* %145, align 4, !tbaa !1
  %147 = zext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

; <label>:151                                     ; preds = %142
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %152)
  br label %154

; <label>:154                                     ; preds = %151, %142
  br label %155

; <label>:155                                     ; preds = %154
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %i, align 4, !tbaa !1
  br label %139

; <label>:158                                     ; preds = %139
  %159 = load i16, i16* @g_145, align 2, !tbaa !10
  %160 = sext i16 %159 to i64
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %161)
  %162 = load i8, i8* @g_166, align 1, !tbaa !9
  %163 = sext i8 %162 to i64
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %164)
  %165 = load i64, i64* @g_169, align 8, !tbaa !7
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %166)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:167                                     ; preds = %195, %158
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = icmp slt i32 %168, 8
  br i1 %169, label %170, label %198

; <label>:170                                     ; preds = %167
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:171                                     ; preds = %191, %170
  %172 = load i32, i32* %j, align 4, !tbaa !1
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %174, label %194

; <label>:174                                     ; preds = %171
  %175 = load i32, i32* %j, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x [1 x i16]], [8 x [1 x i16]]* @g_216, i32 0, i64 %178
  %180 = getelementptr inbounds [1 x i16], [1 x i16]* %179, i32 0, i64 %176
  %181 = load i16, i16* %180, align 2, !tbaa !10
  %182 = sext i16 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

; <label>:186                                     ; preds = %174
  %187 = load i32, i32* %i, align 4, !tbaa !1
  %188 = load i32, i32* %j, align 4, !tbaa !1
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %187, i32 %188)
  br label %190

; <label>:190                                     ; preds = %186, %174
  br label %191

; <label>:191                                     ; preds = %190
  %192 = load i32, i32* %j, align 4, !tbaa !1
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:194                                     ; preds = %171
  br label %195

; <label>:195                                     ; preds = %194
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:198                                     ; preds = %167
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %227, %198
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = icmp slt i32 %200, 5
  br i1 %201, label %202, label %230

; <label>:202                                     ; preds = %199
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:203                                     ; preds = %223, %202
  %204 = load i32, i32* %j, align 4, !tbaa !1
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %206, label %226

; <label>:206                                     ; preds = %203
  %207 = load i32, i32* %j, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [5 x [1 x i32]], [5 x [1 x i32]]* @g_218, i32 0, i64 %210
  %212 = getelementptr inbounds [1 x i32], [1 x i32]* %211, i32 0, i64 %208
  %213 = load i32, i32* %212, align 4, !tbaa !1
  %214 = zext i32 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %215)
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

; <label>:218                                     ; preds = %206
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = load i32, i32* %j, align 4, !tbaa !1
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %219, i32 %220)
  br label %222

; <label>:222                                     ; preds = %218, %206
  br label %223

; <label>:223                                     ; preds = %222
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %j, align 4, !tbaa !1
  br label %203

; <label>:226                                     ; preds = %203
  br label %227

; <label>:227                                     ; preds = %226
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %i, align 4, !tbaa !1
  br label %199

; <label>:230                                     ; preds = %199
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:231                                     ; preds = %247, %230
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = icmp slt i32 %232, 7
  br i1 %233, label %234, label %250

; <label>:234                                     ; preds = %231
  %235 = load i32, i32* %i, align 4, !tbaa !1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [7 x i32], [7 x i32]* @g_224, i32 0, i64 %236
  %238 = load i32, i32* %237, align 4, !tbaa !1
  %239 = zext i32 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %240)
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

; <label>:243                                     ; preds = %234
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %244)
  br label %246

; <label>:246                                     ; preds = %243, %234
  br label %247

; <label>:247                                     ; preds = %246
  %248 = load i32, i32* %i, align 4, !tbaa !1
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %i, align 4, !tbaa !1
  br label %231

; <label>:250                                     ; preds = %231
  %251 = load i32, i32* @g_243, align 4, !tbaa !1
  %252 = zext i32 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %253)
  %254 = load i16, i16* @g_300, align 2, !tbaa !10
  %255 = zext i16 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %256)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %257

; <label>:257                                     ; preds = %273, %250
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = icmp slt i32 %258, 3
  br i1 %259, label %260, label %276

; <label>:260                                     ; preds = %257
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* @g_339, i32 0, i64 %262
  %264 = load i32, i32* %263, align 4, !tbaa !1
  %265 = zext i32 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %266)
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

; <label>:269                                     ; preds = %260
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %270)
  br label %272

; <label>:272                                     ; preds = %269, %260
  br label %273

; <label>:273                                     ; preds = %272
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %i, align 4, !tbaa !1
  br label %257

; <label>:276                                     ; preds = %257
  %277 = load i16, i16* @g_389, align 2, !tbaa !10
  %278 = sext i16 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %279)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %280

; <label>:280                                     ; preds = %296, %276
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = icmp slt i32 %281, 7
  br i1 %282, label %283, label %299

; <label>:283                                     ; preds = %280
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [7 x i16], [7 x i16]* @g_390, i32 0, i64 %285
  %287 = load i16, i16* %286, align 2, !tbaa !10
  %288 = sext i16 %287 to i64
  %289 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %289)
  %290 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

; <label>:292                                     ; preds = %283
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %293)
  br label %295

; <label>:295                                     ; preds = %292, %283
  br label %296

; <label>:296                                     ; preds = %295
  %297 = load i32, i32* %i, align 4, !tbaa !1
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %i, align 4, !tbaa !1
  br label %280

; <label>:299                                     ; preds = %280
  %300 = load i8, i8* @g_392, align 1, !tbaa !9
  %301 = sext i8 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %302)
  %303 = load i64, i64* @g_393, align 8, !tbaa !7
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %304)
  %305 = load i16, i16* @g_400, align 2, !tbaa !10
  %306 = sext i16 %305 to i64
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %307)
  %308 = load i8, i8* @g_401, align 1, !tbaa !9
  %309 = sext i8 %308 to i64
  %310 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %310)
  %311 = load i64, i64* @g_402, align 8, !tbaa !7
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %312)
  %313 = load i64, i64* @g_403, align 8, !tbaa !7
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %314)
  %315 = load i8, i8* @g_404, align 1, !tbaa !9
  %316 = sext i8 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %317)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %318

; <label>:318                                     ; preds = %358, %299
  %319 = load i32, i32* %i, align 4, !tbaa !1
  %320 = icmp slt i32 %319, 5
  br i1 %320, label %321, label %361

; <label>:321                                     ; preds = %318
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %322

; <label>:322                                     ; preds = %354, %321
  %323 = load i32, i32* %j, align 4, !tbaa !1
  %324 = icmp slt i32 %323, 7
  br i1 %324, label %325, label %357

; <label>:325                                     ; preds = %322
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %326

; <label>:326                                     ; preds = %350, %325
  %327 = load i32, i32* %k, align 4, !tbaa !1
  %328 = icmp slt i32 %327, 7
  br i1 %328, label %329, label %353

; <label>:329                                     ; preds = %326
  %330 = load i32, i32* %k, align 4, !tbaa !1
  %331 = sext i32 %330 to i64
  %332 = load i32, i32* %j, align 4, !tbaa !1
  %333 = sext i32 %332 to i64
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [5 x [7 x [7 x i16]]], [5 x [7 x [7 x i16]]]* @g_407, i32 0, i64 %335
  %337 = getelementptr inbounds [7 x [7 x i16]], [7 x [7 x i16]]* %336, i32 0, i64 %333
  %338 = getelementptr inbounds [7 x i16], [7 x i16]* %337, i32 0, i64 %331
  %339 = load i16, i16* %338, align 2, !tbaa !10
  %340 = sext i16 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %349

; <label>:344                                     ; preds = %329
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = load i32, i32* %j, align 4, !tbaa !1
  %347 = load i32, i32* %k, align 4, !tbaa !1
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32 %345, i32 %346, i32 %347)
  br label %349

; <label>:349                                     ; preds = %344, %329
  br label %350

; <label>:350                                     ; preds = %349
  %351 = load i32, i32* %k, align 4, !tbaa !1
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %k, align 4, !tbaa !1
  br label %326

; <label>:353                                     ; preds = %326
  br label %354

; <label>:354                                     ; preds = %353
  %355 = load i32, i32* %j, align 4, !tbaa !1
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %j, align 4, !tbaa !1
  br label %322

; <label>:357                                     ; preds = %322
  br label %358

; <label>:358                                     ; preds = %357
  %359 = load i32, i32* %i, align 4, !tbaa !1
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %i, align 4, !tbaa !1
  br label %318

; <label>:361                                     ; preds = %318
  %362 = load i32, i32* @g_408, align 4, !tbaa !1
  %363 = zext i32 %362 to i64
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %364)
  %365 = load i32, i32* @g_454, align 4, !tbaa !1
  %366 = sext i32 %365 to i64
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %367)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %368

; <label>:368                                     ; preds = %384, %361
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = icmp slt i32 %369, 5
  br i1 %370, label %371, label %387

; <label>:371                                     ; preds = %368
  %372 = load i32, i32* %i, align 4, !tbaa !1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [5 x i32], [5 x i32]* @g_456, i32 0, i64 %373
  %375 = load i32, i32* %374, align 4, !tbaa !1
  %376 = sext i32 %375 to i64
  %377 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %377)
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

; <label>:380                                     ; preds = %371
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %381)
  br label %383

; <label>:383                                     ; preds = %380, %371
  br label %384

; <label>:384                                     ; preds = %383
  %385 = load i32, i32* %i, align 4, !tbaa !1
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %i, align 4, !tbaa !1
  br label %368

; <label>:387                                     ; preds = %368
  %388 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_467, i32 0, i32 0), align 8, !tbaa !7
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %389)
  %390 = load i16, i16* bitcast (%union.U0* @g_467 to i16*), align 2, !tbaa !10
  %391 = sext i16 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %392)
  %393 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_467, i32 0, i32 0), align 8, !tbaa !7
  %394 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %393, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %394)
  %395 = load volatile i32, i32* bitcast (%union.U0* @g_467 to i32*), align 4, !tbaa !1
  %396 = zext i32 %395 to i64
  %397 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %396, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %397)
  %398 = load i8, i8* @g_521, align 1, !tbaa !9
  %399 = zext i8 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %400)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %401

; <label>:401                                     ; preds = %458, %387
  %402 = load i32, i32* %i, align 4, !tbaa !1
  %403 = icmp slt i32 %402, 2
  br i1 %403, label %404, label %461

; <label>:404                                     ; preds = %401
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %405

; <label>:405                                     ; preds = %454, %404
  %406 = load i32, i32* %j, align 4, !tbaa !1
  %407 = icmp slt i32 %406, 4
  br i1 %407, label %408, label %457

; <label>:408                                     ; preds = %405
  %409 = load i32, i32* %j, align 4, !tbaa !1
  %410 = sext i32 %409 to i64
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i64 %412
  %414 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %413, i32 0, i64 %410
  %415 = bitcast %union.U0* %414 to i64*
  %416 = load i64, i64* %415, align 8, !tbaa !7
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 %417)
  %418 = load i32, i32* %j, align 4, !tbaa !1
  %419 = sext i32 %418 to i64
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i64 %421
  %423 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %422, i32 0, i64 %419
  %424 = bitcast %union.U0* %423 to i16*
  %425 = load i16, i16* %424, align 2, !tbaa !10
  %426 = sext i16 %425 to i64
  %427 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %426, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %427)
  %428 = load i32, i32* %j, align 4, !tbaa !1
  %429 = sext i32 %428 to i64
  %430 = load i32, i32* %i, align 4, !tbaa !1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i64 %431
  %433 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %432, i32 0, i64 %429
  %434 = bitcast %union.U0* %433 to i64*
  %435 = load volatile i64, i64* %434, align 8, !tbaa !7
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %435, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i32 %436)
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = sext i32 %437 to i64
  %439 = load i32, i32* %i, align 4, !tbaa !1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [2 x [4 x %union.U0]], [2 x [4 x %union.U0]]* @g_572, i32 0, i64 %440
  %442 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* %441, i32 0, i64 %438
  %443 = bitcast %union.U0* %442 to i32*
  %444 = load volatile i32, i32* %443, align 4, !tbaa !1
  %445 = zext i32 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i32 %446)
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %453

; <label>:449                                     ; preds = %408
  %450 = load i32, i32* %i, align 4, !tbaa !1
  %451 = load i32, i32* %j, align 4, !tbaa !1
  %452 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %450, i32 %451)
  br label %453

; <label>:453                                     ; preds = %449, %408
  br label %454

; <label>:454                                     ; preds = %453
  %455 = load i32, i32* %j, align 4, !tbaa !1
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %j, align 4, !tbaa !1
  br label %405

; <label>:457                                     ; preds = %405
  br label %458

; <label>:458                                     ; preds = %457
  %459 = load i32, i32* %i, align 4, !tbaa !1
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %i, align 4, !tbaa !1
  br label %401

; <label>:461                                     ; preds = %401
  %462 = load i64, i64* @g_650, align 8, !tbaa !7
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %463)
  %464 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %464)
  %465 = load i32, i32* @g_711, align 4, !tbaa !1
  %466 = zext i32 %465 to i64
  %467 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %466, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %467)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %468

; <label>:468                                     ; preds = %508, %461
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %470 = icmp slt i32 %469, 9
  br i1 %470, label %471, label %511

; <label>:471                                     ; preds = %468
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %472

; <label>:472                                     ; preds = %504, %471
  %473 = load i32, i32* %j, align 4, !tbaa !1
  %474 = icmp slt i32 %473, 5
  br i1 %474, label %475, label %507

; <label>:475                                     ; preds = %472
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %476

; <label>:476                                     ; preds = %500, %475
  %477 = load i32, i32* %k, align 4, !tbaa !1
  %478 = icmp slt i32 %477, 5
  br i1 %478, label %479, label %503

; <label>:479                                     ; preds = %476
  %480 = load i32, i32* %k, align 4, !tbaa !1
  %481 = sext i32 %480 to i64
  %482 = load i32, i32* %j, align 4, !tbaa !1
  %483 = sext i32 %482 to i64
  %484 = load i32, i32* %i, align 4, !tbaa !1
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [9 x [5 x [5 x i8]]], [9 x [5 x [5 x i8]]]* @g_730, i32 0, i64 %485
  %487 = getelementptr inbounds [5 x [5 x i8]], [5 x [5 x i8]]* %486, i32 0, i64 %483
  %488 = getelementptr inbounds [5 x i8], [5 x i8]* %487, i32 0, i64 %481
  %489 = load i8, i8* %488, align 1, !tbaa !9
  %490 = zext i8 %489 to i64
  %491 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %490, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i32 %491)
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %499

; <label>:494                                     ; preds = %479
  %495 = load i32, i32* %i, align 4, !tbaa !1
  %496 = load i32, i32* %j, align 4, !tbaa !1
  %497 = load i32, i32* %k, align 4, !tbaa !1
  %498 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i32 %495, i32 %496, i32 %497)
  br label %499

; <label>:499                                     ; preds = %494, %479
  br label %500

; <label>:500                                     ; preds = %499
  %501 = load i32, i32* %k, align 4, !tbaa !1
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %k, align 4, !tbaa !1
  br label %476

; <label>:503                                     ; preds = %476
  br label %504

; <label>:504                                     ; preds = %503
  %505 = load i32, i32* %j, align 4, !tbaa !1
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %j, align 4, !tbaa !1
  br label %472

; <label>:507                                     ; preds = %472
  br label %508

; <label>:508                                     ; preds = %507
  %509 = load i32, i32* %i, align 4, !tbaa !1
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %i, align 4, !tbaa !1
  br label %468

; <label>:511                                     ; preds = %468
  %512 = load volatile i8, i8* @g_762, align 1, !tbaa !9
  %513 = zext i8 %512 to i64
  %514 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %513, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %514)
  %515 = load i32, i32* @g_804, align 4, !tbaa !1
  %516 = sext i32 %515 to i64
  %517 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %516, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %517)
  %518 = load i32, i32* @g_884, align 4, !tbaa !1
  %519 = zext i32 %518 to i64
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %519, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %520)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %521

; <label>:521                                     ; preds = %557, %511
  %522 = load i32, i32* %i, align 4, !tbaa !1
  %523 = icmp slt i32 %522, 8
  br i1 %523, label %524, label %560

; <label>:524                                     ; preds = %521
  %525 = load i32, i32* %i, align 4, !tbaa !1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_886, i32 0, i64 %526
  %528 = bitcast %union.U0* %527 to i64*
  %529 = load i64, i64* %528, align 8, !tbaa !7
  %530 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %529, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 %530)
  %531 = load i32, i32* %i, align 4, !tbaa !1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_886, i32 0, i64 %532
  %534 = bitcast %union.U0* %533 to i16*
  %535 = load i16, i16* %534, align 2, !tbaa !10
  %536 = sext i16 %535 to i64
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %536, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 %537)
  %538 = load i32, i32* %i, align 4, !tbaa !1
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_886, i32 0, i64 %539
  %541 = bitcast %union.U0* %540 to i64*
  %542 = load volatile i64, i64* %541, align 8, !tbaa !7
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 %543)
  %544 = load i32, i32* %i, align 4, !tbaa !1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_886, i32 0, i64 %545
  %547 = bitcast %union.U0* %546 to i32*
  %548 = load volatile i32, i32* %547, align 4, !tbaa !1
  %549 = zext i32 %548 to i64
  %550 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %549, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 %550)
  %551 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

; <label>:553                                     ; preds = %524
  %554 = load i32, i32* %i, align 4, !tbaa !1
  %555 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %554)
  br label %556

; <label>:556                                     ; preds = %553, %524
  br label %557

; <label>:557                                     ; preds = %556
  %558 = load i32, i32* %i, align 4, !tbaa !1
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %i, align 4, !tbaa !1
  br label %521

; <label>:560                                     ; preds = %521
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 5331010776642828709, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %561)
  %562 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1488, i32 0, i32 0), align 8, !tbaa !7
  %563 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %562, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %563)
  %564 = load i16, i16* bitcast (%union.U0* @g_1488 to i16*), align 2, !tbaa !10
  %565 = sext i16 %564 to i64
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %565, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %566)
  %567 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1488, i32 0, i32 0), align 8, !tbaa !7
  %568 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %567, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %568)
  %569 = load volatile i32, i32* bitcast (%union.U0* @g_1488 to i32*), align 4, !tbaa !1
  %570 = zext i32 %569 to i64
  %571 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %570, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 %571)
  %572 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1490, i32 0, i32 0), align 8, !tbaa !7
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %573)
  %574 = load i16, i16* bitcast (%union.U0* @g_1490 to i16*), align 2, !tbaa !10
  %575 = sext i16 %574 to i64
  %576 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %575, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 %576)
  %577 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1490, i32 0, i32 0), align 8, !tbaa !7
  %578 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %577, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 %578)
  %579 = load volatile i32, i32* bitcast (%union.U0* @g_1490 to i32*), align 4, !tbaa !1
  %580 = zext i32 %579 to i64
  %581 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %580, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 %581)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %582

; <label>:582                                     ; preds = %618, %560
  %583 = load i32, i32* %i, align 4, !tbaa !1
  %584 = icmp slt i32 %583, 2
  br i1 %584, label %585, label %621

; <label>:585                                     ; preds = %582
  %586 = load i32, i32* %i, align 4, !tbaa !1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* @g_1492, i32 0, i64 %587
  %589 = bitcast %union.U0* %588 to i64*
  %590 = load i64, i64* %589, align 8, !tbaa !7
  %591 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %590, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 %591)
  %592 = load i32, i32* %i, align 4, !tbaa !1
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* @g_1492, i32 0, i64 %593
  %595 = bitcast %union.U0* %594 to i16*
  %596 = load i16, i16* %595, align 2, !tbaa !10
  %597 = sext i16 %596 to i64
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %597, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32 %598)
  %599 = load i32, i32* %i, align 4, !tbaa !1
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* @g_1492, i32 0, i64 %600
  %602 = bitcast %union.U0* %601 to i64*
  %603 = load volatile i64, i64* %602, align 8, !tbaa !7
  %604 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %603, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i32 %604)
  %605 = load i32, i32* %i, align 4, !tbaa !1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* @g_1492, i32 0, i64 %606
  %608 = bitcast %union.U0* %607 to i32*
  %609 = load volatile i32, i32* %608, align 4, !tbaa !1
  %610 = zext i32 %609 to i64
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %610, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0), i32 %611)
  %612 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %617

; <label>:614                                     ; preds = %585
  %615 = load i32, i32* %i, align 4, !tbaa !1
  %616 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %615)
  br label %617

; <label>:617                                     ; preds = %614, %585
  br label %618

; <label>:618                                     ; preds = %617
  %619 = load i32, i32* %i, align 4, !tbaa !1
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %i, align 4, !tbaa !1
  br label %582

; <label>:621                                     ; preds = %582
  %622 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1469934980, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %622)
  %623 = load volatile i8, i8* @g_1519, align 1, !tbaa !9
  %624 = sext i8 %623 to i64
  %625 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %624, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %625)
  %626 = load volatile i8, i8* @g_1520, align 1, !tbaa !9
  %627 = sext i8 %626 to i64
  %628 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %627, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %628)
  %629 = load volatile i8, i8* @g_1521, align 1, !tbaa !9
  %630 = sext i8 %629 to i64
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %630, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %631)
  %632 = load i32, i32* @g_1569, align 4, !tbaa !1
  %633 = zext i32 %632 to i64
  %634 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %633, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %634)
  %635 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1828, i32 0, i32 0), align 8, !tbaa !7
  %636 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %635, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %636)
  %637 = load i16, i16* bitcast (%union.U0* @g_1828 to i16*), align 2, !tbaa !10
  %638 = sext i16 %637 to i64
  %639 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %638, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %639)
  %640 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1828, i32 0, i32 0), align 8, !tbaa !7
  %641 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %640, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %641)
  %642 = load volatile i32, i32* bitcast (%union.U0* @g_1828 to i32*), align 4, !tbaa !1
  %643 = zext i32 %642 to i64
  %644 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %643, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %644)
  %645 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1850, i32 0, i32 0), align 8, !tbaa !7
  %646 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %645, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 %646)
  %647 = load i16, i16* bitcast (%union.U0* @g_1850 to i16*), align 2, !tbaa !10
  %648 = sext i16 %647 to i64
  %649 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %648, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %649)
  %650 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1850, i32 0, i32 0), align 8, !tbaa !7
  %651 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %650, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %651)
  %652 = load volatile i32, i32* bitcast (%union.U0* @g_1850 to i32*), align 4, !tbaa !1
  %653 = zext i32 %652 to i64
  %654 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %653, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 %654)
  %655 = load i32, i32* @g_1879, align 4, !tbaa !1
  %656 = sext i32 %655 to i64
  %657 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %656, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %657)
  %658 = load i16, i16* @g_1885, align 2, !tbaa !10
  %659 = zext i16 %658 to i64
  %660 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %659, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 %660)
  %661 = load i32, i32* @g_1950, align 4, !tbaa !1
  %662 = sext i32 %661 to i64
  %663 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %662, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %663)
  %664 = load i8, i8* @g_2002, align 1, !tbaa !9
  %665 = sext i8 %664 to i64
  %666 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %665, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 %666)
  %667 = load i32, i32* @g_2041, align 4, !tbaa !1
  %668 = sext i32 %667 to i64
  %669 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %668, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %669)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %670

; <label>:670                                     ; preds = %706, %621
  %671 = load i32, i32* %i, align 4, !tbaa !1
  %672 = icmp slt i32 %671, 8
  br i1 %672, label %673, label %709

; <label>:673                                     ; preds = %670
  %674 = load i32, i32* %i, align 4, !tbaa !1
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2212, i32 0, i64 %675
  %677 = bitcast %union.U0* %676 to i64*
  %678 = load volatile i64, i64* %677, align 8, !tbaa !7
  %679 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %678, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.88, i32 0, i32 0), i32 %679)
  %680 = load i32, i32* %i, align 4, !tbaa !1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2212, i32 0, i64 %681
  %683 = bitcast %union.U0* %682 to i16*
  %684 = load volatile i16, i16* %683, align 2, !tbaa !10
  %685 = sext i16 %684 to i64
  %686 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %685, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i32 %686)
  %687 = load i32, i32* %i, align 4, !tbaa !1
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2212, i32 0, i64 %688
  %690 = bitcast %union.U0* %689 to i64*
  %691 = load volatile i64, i64* %690, align 8, !tbaa !7
  %692 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %691, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i32 0, i32 0), i32 %692)
  %693 = load i32, i32* %i, align 4, !tbaa !1
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2212, i32 0, i64 %694
  %696 = bitcast %union.U0* %695 to i32*
  %697 = load volatile i32, i32* %696, align 4, !tbaa !1
  %698 = zext i32 %697 to i64
  %699 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %698, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i32 %699)
  %700 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %705

; <label>:702                                     ; preds = %673
  %703 = load i32, i32* %i, align 4, !tbaa !1
  %704 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %703)
  br label %705

; <label>:705                                     ; preds = %702, %673
  br label %706

; <label>:706                                     ; preds = %705
  %707 = load i32, i32* %i, align 4, !tbaa !1
  %708 = add nsw i32 %707, 1
  store i32 %708, i32* %i, align 4, !tbaa !1
  br label %670

; <label>:709                                     ; preds = %670
  %710 = load i64, i64* @g_2237, align 8, !tbaa !7
  %711 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %710, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 %711)
  %712 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2280, i32 0, i32 0), align 8, !tbaa !7
  %713 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %712, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %713)
  %714 = load i16, i16* bitcast (%union.U0* @g_2280 to i16*), align 2, !tbaa !10
  %715 = sext i16 %714 to i64
  %716 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %715, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %716)
  %717 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2280, i32 0, i32 0), align 8, !tbaa !7
  %718 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %717, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %718)
  %719 = load volatile i32, i32* bitcast (%union.U0* @g_2280 to i32*), align 4, !tbaa !1
  %720 = zext i32 %719 to i64
  %721 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %720, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i32 %721)
  %722 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %723 = zext i32 %722 to i64
  %724 = xor i64 %723, 4294967295
  %725 = trunc i64 %724 to i32
  %726 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %725, i32 %726)
  %727 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %727) #1
  %728 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %728) #1
  %729 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %729) #1
  %730 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %730) #1
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
define internal i64 @func_1() #0 {
  %1 = alloca %union.U0, align 8
  %l_5 = alloca [6 x i8], align 1
  %l_2015 = alloca i16, align 2
  %l_2058 = alloca i32, align 4
  %l_2064 = alloca i32, align 4
  %l_2069 = alloca i32, align 4
  %l_2236 = alloca i32, align 4
  %l_2277 = alloca i16, align 2
  %l_2296 = alloca i32, align 4
  %l_2297 = alloca [5 x i8*], align 16
  %l_2298 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_19 = alloca [6 x i64], align 16
  %l_2065 = alloca i32, align 4
  %l_2068 = alloca [10 x i32], align 16
  %l_2075 = alloca i32*, align 8
  %l_2140 = alloca i16, align 2
  %l_2157 = alloca %union.U0***, align 8
  %l_2181 = alloca [1 x i32], align 4
  %l_2214 = alloca [8 x i32], align 16
  %l_2226 = alloca i16, align 2
  %l_2246 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_29 = alloca i8, align 1
  %l_2016 = alloca [2 x i32], align 4
  %l_2040 = alloca i32*, align 8
  %i2 = alloca i32, align 4
  %l_2046 = alloca i8, align 1
  %l_2047 = alloca [4 x [9 x %union.U0*]], align 16
  %l_2052 = alloca i32, align 4
  %l_2067 = alloca i32, align 4
  %l_2070 = alloca i8, align 1
  %l_2096 = alloca [2 x i64], align 16
  %l_2143 = alloca [5 x i32], align 16
  %l_2208 = alloca i16, align 2
  %l_2247 = alloca i32, align 4
  %l_2248 = alloca i32, align 4
  %l_2272 = alloca i16, align 2
  %l_2273 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %j = alloca i32, align 4
  %2 = alloca i32
  %3 = bitcast [6 x i8]* %l_5 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %3) #1
  %4 = bitcast [6 x i8]* %l_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @func_1.l_5, i32 0, i32 0), i64 6, i32 1, i1 false)
  %5 = bitcast i16* %l_2015 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 -5, i16* %l_2015, align 2, !tbaa !10
  %6 = bitcast i32* %l_2058 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 4, i32* %l_2058, align 4, !tbaa !1
  %7 = bitcast i32* %l_2064 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1770554011, i32* %l_2064, align 4, !tbaa !1
  %8 = bitcast i32* %l_2069 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 4, i32* %l_2069, align 4, !tbaa !1
  %9 = bitcast i32* %l_2236 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 3, i32* %l_2236, align 4, !tbaa !1
  %10 = bitcast i16* %l_2277 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  store i16 25666, i16* %l_2277, align 2, !tbaa !10
  %11 = bitcast i32* %l_2296 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 898937981, i32* %l_2296, align 4, !tbaa !1
  %12 = bitcast [5 x i8*]* %l_2297 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #1
  %13 = bitcast [5 x i8*]* %l_2297 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([5 x i8*]* @func_1.l_2297 to i8*), i64 40, i32 16, i1 false)
  %14 = bitcast i32* %l_2298 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 4, i32* %l_2298, align 4, !tbaa !1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* @g_2, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %146, %0
  %17 = load i32, i32* @g_2, align 4, !tbaa !1
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %151

; <label>:19                                      ; preds = %16
  %20 = bitcast [6 x i64]* %l_19 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %20) #1
  %21 = bitcast [6 x i64]* %l_19 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 48, i32 16, i1 false)
  %22 = bitcast i8* %21 to [6 x i64]*
  %23 = getelementptr [6 x i64], [6 x i64]* %22, i32 0, i32 0
  store i64 -3656068146617335414, i64* %23
  %24 = getelementptr [6 x i64], [6 x i64]* %22, i32 0, i32 1
  store i64 -3656068146617335414, i64* %24
  %25 = getelementptr [6 x i64], [6 x i64]* %22, i32 0, i32 2
  store i64 8764580093264487268, i64* %25
  %26 = getelementptr [6 x i64], [6 x i64]* %22, i32 0, i32 3
  store i64 -3656068146617335414, i64* %26
  %27 = getelementptr [6 x i64], [6 x i64]* %22, i32 0, i32 4
  store i64 -3656068146617335414, i64* %27
  %28 = getelementptr [6 x i64], [6 x i64]* %22, i32 0, i32 5
  store i64 8764580093264487268, i64* %28
  %29 = bitcast i32* %l_2065 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 935510358, i32* %l_2065, align 4, !tbaa !1
  %30 = bitcast [10 x i32]* %l_2068 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %30) #1
  %31 = bitcast [10 x i32]* %l_2068 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast ([10 x i32]* @func_1.l_2068 to i8*), i64 40, i32 16, i1 false)
  %32 = bitcast i32** %l_2075 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i32* @g_1950, i32** %l_2075, align 8, !tbaa !5
  %33 = bitcast i16* %l_2140 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %33) #1
  store i16 1, i16* %l_2140, align 2, !tbaa !10
  %34 = bitcast %union.U0**** %l_2157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store %union.U0*** @g_916, %union.U0**** %l_2157, align 8, !tbaa !5
  %35 = bitcast [1 x i32]* %l_2181 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast [8 x i32]* %l_2214 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %36) #1
  %37 = bitcast [8 x i32]* %l_2214 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* bitcast ([8 x i32]* @func_1.l_2214 to i8*), i64 32, i32 16, i1 false)
  %38 = bitcast i16* %l_2226 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %38) #1
  store i16 -5421, i16* %l_2226, align 2, !tbaa !10
  %39 = bitcast i32* %l_2246 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 1, i32* %l_2246, align 4, !tbaa !1
  %40 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %41

; <label>:41                                      ; preds = %48, %19
  %42 = load i32, i32* %i1, align 4, !tbaa !1
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %51

; <label>:44                                      ; preds = %41
  %45 = load i32, i32* %i1, align 4, !tbaa !1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %l_2181, i32 0, i64 %46
  store i32 -505440199, i32* %47, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %i1, align 4, !tbaa !1
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i1, align 4, !tbaa !1
  br label %41

; <label>:51                                      ; preds = %41
  store i32 4, i32* @g_10, align 4, !tbaa !1
  br label %52

; <label>:52                                      ; preds = %73, %51
  %53 = load i32, i32* @g_10, align 4, !tbaa !1
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %76

; <label>:55                                      ; preds = %52
  call void @llvm.lifetime.start(i64 1, i8* %l_29) #1
  store i8 18, i8* %l_29, align 1, !tbaa !9
  %56 = bitcast [2 x i32]* %l_2016 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = bitcast i32** %l_2040 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i32* @g_2041, i32** %l_2040, align 8, !tbaa !5
  %58 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %59

; <label>:59                                      ; preds = %66, %55
  %60 = load i32, i32* %i2, align 4, !tbaa !1
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %69

; <label>:62                                      ; preds = %59
  %63 = load i32, i32* %i2, align 4, !tbaa !1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %l_2016, i32 0, i64 %64
  store i32 2, i32* %65, align 4, !tbaa !1
  br label %66

; <label>:66                                      ; preds = %62
  %67 = load i32, i32* %i2, align 4, !tbaa !1
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %i2, align 4, !tbaa !1
  br label %59

; <label>:69                                      ; preds = %59
  %70 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32** %l_2040 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast [2 x i32]* %l_2016 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_29) #1
  br label %73

; <label>:73                                      ; preds = %69
  %74 = load i32, i32* @g_10, align 4, !tbaa !1
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* @g_10, align 4, !tbaa !1
  br label %52

; <label>:76                                      ; preds = %52
  store i64 0, i64* @g_403, align 8, !tbaa !7
  br label %77

; <label>:77                                      ; preds = %128, %76
  %78 = load i64, i64* @g_403, align 8, !tbaa !7
  %79 = icmp sge i64 %78, -27
  br i1 %79, label %80, label %133

; <label>:80                                      ; preds = %77
  call void @llvm.lifetime.start(i64 1, i8* %l_2046) #1
  store i8 -1, i8* %l_2046, align 1, !tbaa !9
  %81 = bitcast [4 x [9 x %union.U0*]]* %l_2047 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %81) #1
  %82 = bitcast [4 x [9 x %union.U0*]]* %l_2047 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* bitcast ([4 x [9 x %union.U0*]]* @func_1.l_2047 to i8*), i64 288, i32 16, i1 false)
  %83 = bitcast i32* %l_2052 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  store i32 0, i32* %l_2052, align 4, !tbaa !1
  %84 = bitcast i32* %l_2067 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  store i32 -1, i32* %l_2067, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_2070) #1
  store i8 0, i8* %l_2070, align 1, !tbaa !9
  %85 = bitcast [2 x i64]* %l_2096 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %85) #1
  %86 = bitcast [5 x i32]* %l_2143 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %86) #1
  %87 = bitcast i16* %l_2208 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %87) #1
  store i16 6261, i16* %l_2208, align 2, !tbaa !10
  %88 = bitcast i32* %l_2247 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 -570871144, i32* %l_2247, align 4, !tbaa !1
  %89 = bitcast i32* %l_2248 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  store i32 3, i32* %l_2248, align 4, !tbaa !1
  %90 = bitcast i16* %l_2272 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %90) #1
  store i16 -11500, i16* %l_2272, align 2, !tbaa !10
  %91 = bitcast i32* %l_2273 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 0, i32* %l_2273, align 4, !tbaa !1
  %92 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %101, %80
  %95 = load i32, i32* %i3, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %104

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i3, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %l_2096, i32 0, i64 %99
  store i64 1, i64* %100, align 8, !tbaa !7
  br label %101

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* %i3, align 4, !tbaa !1
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %i3, align 4, !tbaa !1
  br label %94

; <label>:104                                     ; preds = %94
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %105

; <label>:105                                     ; preds = %112, %104
  %106 = load i32, i32* %i3, align 4, !tbaa !1
  %107 = icmp slt i32 %106, 5
  br i1 %107, label %108, label %115

; <label>:108                                     ; preds = %105
  %109 = load i32, i32* %i3, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [5 x i32], [5 x i32]* %l_2143, i32 0, i64 %110
  store i32 -6, i32* %111, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %108
  %113 = load i32, i32* %i3, align 4, !tbaa !1
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %i3, align 4, !tbaa !1
  br label %105

; <label>:115                                     ; preds = %105
  %116 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %l_2273 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i16* %l_2272 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %119) #1
  %120 = bitcast i32* %l_2248 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %l_2247 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i16* %l_2208 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %122) #1
  %123 = bitcast [5 x i32]* %l_2143 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %123) #1
  %124 = bitcast [2 x i64]* %l_2096 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %124) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2070) #1
  %125 = bitcast i32* %l_2067 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %l_2052 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast [4 x [9 x %union.U0*]]* %l_2047 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %127) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2046) #1
  br label %128

; <label>:128                                     ; preds = %115
  %129 = load i64, i64* @g_403, align 8, !tbaa !7
  %130 = trunc i64 %129 to i16
  %131 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %130, i16 signext 7)
  %132 = sext i16 %131 to i64
  store i64 %132, i64* @g_403, align 8, !tbaa !7
  br label %77

; <label>:133                                     ; preds = %77
  %134 = bitcast %union.U0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* bitcast (%union.U0* @g_2280 to i8*), i64 8, i32 8, i1 false), !tbaa.struct !12
  store i32 1, i32* %2
  %135 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %l_2246 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i16* %l_2226 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %137) #1
  %138 = bitcast [8 x i32]* %l_2214 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %138) #1
  %139 = bitcast [1 x i32]* %l_2181 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast %union.U0**** %l_2157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i16* %l_2140 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %141) #1
  %142 = bitcast i32** %l_2075 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast [10 x i32]* %l_2068 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %143) #1
  %144 = bitcast i32* %l_2065 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast [6 x i64]* %l_19 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %145) #1
  br label %233
                                                  ; No predecessors!
  %147 = load i32, i32* @g_2, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = call i64 @safe_add_func_int64_t_s_s(i64 %148, i64 8)
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* @g_2, align 4, !tbaa !1
  br label %16

; <label>:151                                     ; preds = %16
  %152 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext -13948, i16 zeroext 3107)
  %153 = zext i16 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %195, label %155

; <label>:155                                     ; preds = %151
  %156 = load i16***, i16**** @g_1566, align 8, !tbaa !5
  %157 = load i16**, i16*** %156, align 8, !tbaa !5
  %158 = icmp ne i16** null, %157
  %159 = zext i1 %158 to i32
  %160 = getelementptr inbounds [6 x i8], [6 x i8]* %l_5, i32 0, i64 3
  %161 = load i8, i8* %160, align 1, !tbaa !9
  %162 = load i32, i32* %l_2058, align 4, !tbaa !1
  %163 = trunc i32 %162 to i8
  %164 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %161, i8 signext %163)
  %165 = sext i8 %164 to i32
  %166 = load i32, i32* %l_2296, align 4, !tbaa !1
  %167 = icmp sgt i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = icmp ne i32* %l_2236, getelementptr inbounds ([3 x i32], [3 x i32]* @g_339, i32 0, i64 1)
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %l_2058, align 4, !tbaa !1
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

; <label>:174                                     ; preds = %155
  %175 = load i32, i32* %l_2058, align 4, !tbaa !1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

; <label>:177                                     ; preds = %174, %155
  %178 = load i16, i16* %l_2277, align 2, !tbaa !10
  %179 = zext i16 %178 to i32
  %180 = icmp ne i32 %179, 0
  br label %181

; <label>:181                                     ; preds = %177, %174
  %182 = phi i1 [ false, %174 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %l_2069, align 4, !tbaa !1
  %184 = load i16, i16* %l_2277, align 2, !tbaa !10
  %185 = zext i16 %184 to i32
  %186 = icmp sgt i32 %183, %185
  %187 = zext i1 %186 to i32
  %188 = trunc i32 %187 to i8
  %189 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %188, i8 signext 99)
  %190 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 89, i8 zeroext %189)
  %191 = zext i8 %190 to i16
  %192 = load i16*, i16** @g_358, align 8, !tbaa !5
  store i16 %191, i16* %192, align 2, !tbaa !10
  %193 = sext i16 %191 to i32
  %194 = icmp ne i32 %193, 0
  br label %195

; <label>:195                                     ; preds = %181, %151
  %196 = phi i1 [ true, %151 ], [ %194, %181 ]
  %197 = zext i1 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = and i64 1, %198
  %200 = load i32, i32* %l_2296, align 4, !tbaa !1
  %201 = load i32, i32* %l_2058, align 4, !tbaa !1
  %202 = icmp sgt i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %l_2236, align 4, !tbaa !1
  %205 = icmp ule i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = trunc i32 %206 to i8
  %208 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 8, i8 zeroext %207)
  %209 = zext i8 %208 to i32
  store i32 %209, i32* %l_2064, align 4, !tbaa !1
  %210 = load i16, i16* %l_2277, align 2, !tbaa !10
  %211 = zext i16 %210 to i32
  %212 = call i32 @safe_div_func_int32_t_s_s(i32 %209, i32 %211)
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* @g_401, align 1, !tbaa !9
  %214 = sext i8 %213 to i32
  %215 = load i16, i16* %l_2015, align 2, !tbaa !10
  %216 = zext i16 %215 to i32
  %217 = and i32 %214, %216
  %218 = trunc i32 %217 to i8
  %219 = getelementptr inbounds [6 x i8], [6 x i8]* %l_5, i32 0, i64 5
  %220 = load i8, i8* %219, align 1, !tbaa !9
  %221 = zext i8 %220 to i32
  %222 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %218, i32 %221)
  %223 = zext i8 %222 to i32
  %224 = load i16, i16* %l_2277, align 2, !tbaa !10
  %225 = zext i16 %224 to i32
  %226 = icmp sgt i32 %223, %225
  %227 = zext i1 %226 to i32
  %228 = load i32, i32* %l_2298, align 4, !tbaa !1
  %229 = xor i32 %228, %227
  store i32 %229, i32* %l_2298, align 4, !tbaa !1
  %230 = load %union.U0*, %union.U0** @g_1827, align 8, !tbaa !5
  %231 = bitcast %union.U0* %1 to i8*
  %232 = bitcast %union.U0* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %231, i8* %232, i64 8, i32 8, i1 false), !tbaa.struct !12
  store i32 1, i32* %2
  br label %233

; <label>:233                                     ; preds = %195, %133
  %234 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i32* %l_2298 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast [5 x i8*]* %l_2297 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %236) #1
  %237 = bitcast i32* %l_2296 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i16* %l_2277 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %238) #1
  %239 = bitcast i32* %l_2236 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %l_2069 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %l_2064 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i32* %l_2058 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i16* %l_2015 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %243) #1
  %244 = bitcast [6 x i8]* %l_5 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %244) #1
  %245 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  ret i64 %246
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.97, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
!12 = !{i64 0, i64 8, !7, i64 0, i64 2, !10, i64 0, i64 8, !7, i64 0, i64 4, !1}
