; ModuleID = '00309.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 695321068, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_14 = internal global i16 1, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_22 = internal global i32 1153243759, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_22\00", align 1
@g_28 = internal global i16 21480, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_28\00", align 1
@g_30 = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_30\00", align 1
@g_71 = internal global i64 1, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_71\00", align 1
@g_105 = internal global i64 4, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_112 = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"g_112\00", align 1
@g_131 = internal global i32 248023264, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_131\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"g_146[i].f0\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_170 = internal global i8 -9, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_170\00", align 1
@g_196 = internal global i16 -1, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_196\00", align 1
@g_208 = internal global i16 -12171, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_208\00", align 1
@g_236 = internal global i32 62750963, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_236\00", align 1
@g_242 = internal global i64 -1, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_242\00", align 1
@g_244 = internal global i32 1503698862, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_244\00", align 1
@g_270 = internal global [2 x i64] [i64 -6, i64 -6], align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"g_270[i]\00", align 1
@g_275 = internal global [10 x i64] [i64 0, i64 0, i64 2, i64 0, i64 0, i64 2, i64 0, i64 0, i64 2, i64 0], align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"g_275[i]\00", align 1
@g_314 = internal global i8 -3, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_314\00", align 1
@g_315 = internal global i64 -1797895640063215072, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"g_315\00", align 1
@g_338 = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_338\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"g_339.f0\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"g_364[i].f0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_425.f0\00", align 1
@g_432 = internal global i8 2, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_432\00", align 1
@g_436 = internal constant [4 x [5 x [4 x i32]]] [[5 x [4 x i32]] [[4 x i32] [i32 1, i32 -3, i32 1884461695, i32 0], [4 x i32] [i32 -1863372071, i32 -3, i32 -1863372071, i32 1995119253], [4 x i32] [i32 -3, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 -246363803, i32 1, i32 1, i32 -246363803]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 1995119253, i32 1, i32 -1863372071], [4 x i32] [i32 -3, i32 1307526473, i32 -1863372071, i32 1089954089], [4 x i32] [i32 -1863372071, i32 1089954089, i32 1884461695, i32 1089954089], [4 x i32] [i32 1, i32 1307526473, i32 0, i32 -1863372071], [4 x i32] [i32 -1326760803, i32 1995119253, i32 1089954089, i32 -246363803]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 1, i32 1], [4 x i32] [i32 0, i32 0, i32 1089954089, i32 0], [4 x i32] [i32 -1326760803, i32 1, i32 0, i32 1995119253], [4 x i32] [i32 1, i32 -3, i32 1884461695, i32 0], [4 x i32] [i32 -1863372071, i32 -3, i32 -1863372071, i32 1995119253]], [5 x [4 x i32]] [[4 x i32] [i32 -3, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 0, i32 1, i32 1], [4 x i32] [i32 0, i32 -246363803, i32 -246363803, i32 0], [4 x i32] [i32 1995119253, i32 1307526473, i32 1884461695, i32 1], [4 x i32] [i32 0, i32 1, i32 1, i32 -3]]], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"g_436[i][j][k]\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_484 = internal global [9 x i8] c"\01\01\01\01\01\01\01\01\01", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_484[i]\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_489\00", align 1
@g_544 = internal global i32 1635212360, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_544\00", align 1
@g_603 = internal constant i32 914004629, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_603\00", align 1
@g_713 = internal global i8 -26, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_713\00", align 1
@g_716 = internal global i16 -12381, align 2
@.str.34 = private unnamed_addr constant [6 x i8] c"g_716\00", align 1
@g_913 = internal constant [8 x i64] [i64 6357942552768766987, i64 6357942552768766987, i64 6357942552768766987, i64 6357942552768766987, i64 6357942552768766987, i64 6357942552768766987, i64 6357942552768766987, i64 6357942552768766987], align 16
@.str.35 = private unnamed_addr constant [9 x i8] c"g_913[i]\00", align 1
@g_978 = internal global i32 -958575241, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_978\00", align 1
@g_1051 = internal global i64 9222494810583081989, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1051\00", align 1
@g_1053 = internal global i32 5, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1053\00", align 1
@g_1087 = internal global i16 -28663, align 2
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1087\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1040 = private unnamed_addr constant [3 x [10 x i32]] [[10 x i32] [i32 -1, i32 0, i32 -1, i32 5, i32 5, i32 -1, i32 0, i32 -1, i32 5, i32 5], [10 x i32] [i32 -1, i32 0, i32 -1, i32 5, i32 5, i32 -1, i32 0, i32 -1, i32 5, i32 5], [10 x i32] [i32 -1, i32 0, i32 -1, i32 5, i32 5, i32 -1, i32 0, i32 -1, i32 5, i32 5]], align 16
@g_824 = internal global %union.U0* bitcast ({ i16, [6 x i8] }* @g_339 to %union.U0*), align 8
@func_1.l_1111 = private unnamed_addr constant [7 x [10 x [3 x %union.U0**]]] [[10 x [3 x %union.U0**]] [[3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** null], [3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824]], [10 x [3 x %union.U0**]] [[3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** null], [3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824]], [10 x [3 x %union.U0**]] [[3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824]], [10 x [3 x %union.U0**]] [[3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null]], [10 x [3 x %union.U0**]] [[3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824]], [10 x [3 x %union.U0**]] [[3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824]], [10 x [3 x %union.U0**]] [[3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** @g_824, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** null, %union.U0** null, %union.U0** @g_824], [3 x %union.U0**] [%union.U0** @g_824, %union.U0** null, %union.U0** null]]], align 16
@g_796 = internal global i64*** @g_535, align 8
@func_1.l_1165 = private unnamed_addr constant [3 x [2 x i32*]] [[2 x i32*] [i32* @g_244, i32* @g_244], [2 x i32*] [i32* @g_244, i32* @g_244], [2 x i32*] [i32* @g_244, i32* @g_244]], align 16
@g_466 = internal global i32* null, align 8
@func_1.l_12 = private unnamed_addr constant [5 x [3 x i8]] [[3 x i8] c"h\9B\9B", [3 x i8] c"O\F5\F5", [3 x i8] c"h\9B\9B", [3 x i8] c"O\F5\F5", [3 x i8] c"h\9B\9B"], align 1
@g_212 = internal global [9 x [6 x [2 x i64*]]] [[6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null]], [6 x [2 x i64*]] [[2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105], [2 x i64*] [i64* @g_105, i64* null], [2 x i64*] [i64* @g_105, i64* @g_105]]], align 16
@g_601 = internal global i32** @g_602, align 8
@g_600 = internal global i32*** @g_601, align 8
@g_1144 = internal global i8* @g_314, align 8
@g_467 = internal global i32* @g_236, align 8
@func_1.l_1190 = private unnamed_addr constant [10 x [2 x [3 x i16]]] [[2 x [3 x i16]] [[3 x i16] [i16 -1, i16 17945, i16 17945], [3 x i16] [i16 -1, i16 17945, i16 17945]], [2 x [3 x i16]] [[3 x i16] [i16 -1, i16 17945, i16 17945], [3 x i16] [i16 -1, i16 17945, i16 17945]], [2 x [3 x i16]] [[3 x i16] [i16 -1, i16 17945, i16 17945], [3 x i16] [i16 -1, i16 17945, i16 17945]], [2 x [3 x i16]] [[3 x i16] [i16 -1, i16 -27704, i16 -27704], [3 x i16] [i16 17945, i16 -27704, i16 -27704]], [2 x [3 x i16]] [[3 x i16] [i16 17945, i16 -27704, i16 -27704], [3 x i16] [i16 17945, i16 -27704, i16 -27704]], [2 x [3 x i16]] [[3 x i16] [i16 17945, i16 -27704, i16 -27704], [3 x i16] [i16 17945, i16 -27704, i16 -27704]], [2 x [3 x i16]] [[3 x i16] [i16 17945, i16 -27704, i16 -27704], [3 x i16] [i16 17945, i16 -27704, i16 -27704]], [2 x [3 x i16]] [[3 x i16] [i16 17945, i16 -27704, i16 -27704], [3 x i16] [i16 17945, i16 -27704, i16 -27704]], [2 x [3 x i16]] [[3 x i16] [i16 17945, i16 -27704, i16 -27704], [3 x i16] [i16 17945, i16 -27704, i16 -27704]], [2 x [3 x i16]] [[3 x i16] [i16 17945, i16 -27704, i16 -27704], [3 x i16] [i16 17945, i16 -27704, i16 -27704]]], align 16
@g_823 = internal global %union.U0** @g_824, align 8
@g_711 = internal global i8** @g_712, align 8
@g_634 = internal global i16** @g_635, align 8
@g_215 = internal global i64* @g_71, align 8
@g_237 = internal global i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @g_126, i32 0, i32 0), align 8
@g_535 = internal global i64** @g_215, align 8
@g_602 = internal global i32* @g_603, align 8
@g_712 = internal global i8* @g_713, align 8
@g_635 = internal global i16* @g_208, align 8
@g_126 = internal global [1 x i32*] [i32* @g_30], align 8
@.str.40 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_146 = internal global <{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }> <{ { i16, [6 x i8] } { i16 -3898, [6 x i8] undef }, { i16, [6 x i8] } { i16 -3898, [6 x i8] undef }, { i16, [6 x i8] } { i16 -3898, [6 x i8] undef }, { i16, [6 x i8] } { i16 -3898, [6 x i8] undef }, { i16, [6 x i8] } { i16 -3898, [6 x i8] undef }, { i16, [6 x i8] } { i16 -3898, [6 x i8] undef } }>, align 16
@g_339 = internal global { i16, [6 x i8] } { i16 1, [6 x i8] undef }, align 8
@g_364 = internal global <{ { i16, [6 x i8] }, { i16, [6 x i8] } }> <{ { i16, [6 x i8] } { i16 26624, [6 x i8] undef }, { i16, [6 x i8] } { i16 26624, [6 x i8] undef } }>, align 16
@g_425 = internal global { i16, [6 x i8] } { i16 0, [6 x i8] undef }, align 8
@.str.41 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %96 = load i16, i16* @g_14, align 2, !tbaa !10
  %97 = sext i16 %96 to i64
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %98)
  %99 = load i32, i32* @g_22, align 4, !tbaa !1
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %101)
  %102 = load i16, i16* @g_28, align 2, !tbaa !10
  %103 = sext i16 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %104)
  %105 = load i32, i32* @g_30, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %107)
  %108 = load i64, i64* @g_71, align 8, !tbaa !7
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %109)
  %110 = load i64, i64* @g_105, align 8, !tbaa !7
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* @g_112, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %114)
  %115 = load i32, i32* @g_131, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %117)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %118

; <label>:118                                     ; preds = %135, %90
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = icmp slt i32 %119, 6
  br i1 %120, label %121, label %138

; <label>:121                                     ; preds = %118
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [6 x %union.U0], [6 x %union.U0]* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_146 to [6 x %union.U0]*), i32 0, i64 %123
  %125 = bitcast %union.U0* %124 to i16*
  %126 = load volatile i16, i16* %125, align 2, !tbaa !10
  %127 = sext i16 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %128)
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

; <label>:131                                     ; preds = %121
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %132)
  br label %134

; <label>:134                                     ; preds = %131, %121
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %i, align 4, !tbaa !1
  br label %118

; <label>:138                                     ; preds = %118
  %139 = load i8, i8* @g_170, align 1, !tbaa !9
  %140 = zext i8 %139 to i64
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %141)
  %142 = load i16, i16* @g_196, align 2, !tbaa !10
  %143 = sext i16 %142 to i64
  %144 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %144)
  %145 = load i16, i16* @g_208, align 2, !tbaa !10
  %146 = zext i16 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %147)
  %148 = load i32, i32* @g_236, align 4, !tbaa !1
  %149 = zext i32 %148 to i64
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %150)
  %151 = load volatile i64, i64* @g_242, align 8, !tbaa !7
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %152)
  %153 = load i32, i32* @g_244, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %155)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %171, %138
  %157 = load i32, i32* %i, align 4, !tbaa !1
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %174

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* %i, align 4, !tbaa !1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x i64], [2 x i64]* @g_270, i32 0, i64 %161
  %163 = load i64, i64* %162, align 8, !tbaa !7
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %164)
  %165 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

; <label>:167                                     ; preds = %159
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %168)
  br label %170

; <label>:170                                     ; preds = %167, %159
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4, !tbaa !1
  br label %156

; <label>:174                                     ; preds = %156
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %190, %174
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 10
  br i1 %177, label %178, label %193

; <label>:178                                     ; preds = %175
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10 x i64], [10 x i64]* @g_275, i32 0, i64 %180
  %182 = load i64, i64* %181, align 8, !tbaa !7
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

; <label>:186                                     ; preds = %178
  %187 = load i32, i32* %i, align 4, !tbaa !1
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %187)
  br label %189

; <label>:189                                     ; preds = %186, %178
  br label %190

; <label>:190                                     ; preds = %189
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:193                                     ; preds = %175
  %194 = load i8, i8* @g_314, align 1, !tbaa !9
  %195 = zext i8 %194 to i64
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %196)
  %197 = load i64, i64* @g_315, align 8, !tbaa !7
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %198)
  %199 = load i32, i32* @g_338, align 4, !tbaa !1
  %200 = zext i32 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %201)
  %202 = load i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_339, i32 0, i32 0), align 2, !tbaa !10
  %203 = sext i16 %202 to i64
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %204)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:205                                     ; preds = %222, %193
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = icmp slt i32 %206, 2
  br i1 %207, label %208, label %225

; <label>:208                                     ; preds = %205
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* bitcast (<{ { i16, [6 x i8] }, { i16, [6 x i8] } }>* @g_364 to [2 x %union.U0]*), i32 0, i64 %210
  %212 = bitcast %union.U0* %211 to i16*
  %213 = load volatile i16, i16* %212, align 2, !tbaa !10
  %214 = sext i16 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %215)
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

; <label>:218                                     ; preds = %208
  %219 = load i32, i32* %i, align 4, !tbaa !1
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %219)
  br label %221

; <label>:221                                     ; preds = %218, %208
  br label %222

; <label>:222                                     ; preds = %221
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:225                                     ; preds = %205
  %226 = load volatile i16, i16* getelementptr inbounds ({ i16, [6 x i8] }, { i16, [6 x i8] }* @g_425, i32 0, i32 0), align 2, !tbaa !10
  %227 = sext i16 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %228)
  %229 = load i8, i8* @g_432, align 1, !tbaa !9
  %230 = sext i8 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %231)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %232

; <label>:232                                     ; preds = %272, %225
  %233 = load i32, i32* %i, align 4, !tbaa !1
  %234 = icmp slt i32 %233, 4
  br i1 %234, label %235, label %275

; <label>:235                                     ; preds = %232
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %236

; <label>:236                                     ; preds = %268, %235
  %237 = load i32, i32* %j, align 4, !tbaa !1
  %238 = icmp slt i32 %237, 5
  br i1 %238, label %239, label %271

; <label>:239                                     ; preds = %236
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %240

; <label>:240                                     ; preds = %264, %239
  %241 = load i32, i32* %k, align 4, !tbaa !1
  %242 = icmp slt i32 %241, 4
  br i1 %242, label %243, label %267

; <label>:243                                     ; preds = %240
  %244 = load i32, i32* %k, align 4, !tbaa !1
  %245 = sext i32 %244 to i64
  %246 = load i32, i32* %j, align 4, !tbaa !1
  %247 = sext i32 %246 to i64
  %248 = load i32, i32* %i, align 4, !tbaa !1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [4 x [5 x [4 x i32]]], [4 x [5 x [4 x i32]]]* @g_436, i32 0, i64 %249
  %251 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %250, i32 0, i64 %247
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %251, i32 0, i64 %245
  %253 = load i32, i32* %252, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

; <label>:258                                     ; preds = %243
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %260 = load i32, i32* %j, align 4, !tbaa !1
  %261 = load i32, i32* %k, align 4, !tbaa !1
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), i32 %259, i32 %260, i32 %261)
  br label %263

; <label>:263                                     ; preds = %258, %243
  br label %264

; <label>:264                                     ; preds = %263
  %265 = load i32, i32* %k, align 4, !tbaa !1
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %k, align 4, !tbaa !1
  br label %240

; <label>:267                                     ; preds = %240
  br label %268

; <label>:268                                     ; preds = %267
  %269 = load i32, i32* %j, align 4, !tbaa !1
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %j, align 4, !tbaa !1
  br label %236

; <label>:271                                     ; preds = %236
  br label %272

; <label>:272                                     ; preds = %271
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %i, align 4, !tbaa !1
  br label %232

; <label>:275                                     ; preds = %232
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:276                                     ; preds = %292, %275
  %277 = load i32, i32* %i, align 4, !tbaa !1
  %278 = icmp slt i32 %277, 9
  br i1 %278, label %279, label %295

; <label>:279                                     ; preds = %276
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [9 x i8], [9 x i8]* @g_484, i32 0, i64 %281
  %283 = load i8, i8* %282, align 1, !tbaa !9
  %284 = sext i8 %283 to i64
  %285 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %285)
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

; <label>:288                                     ; preds = %279
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %289)
  br label %291

; <label>:291                                     ; preds = %288, %279
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %i, align 4, !tbaa !1
  br label %276

; <label>:295                                     ; preds = %276
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %296)
  %297 = load volatile i32, i32* @g_544, align 4, !tbaa !1
  %298 = zext i32 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %299)
  %300 = load volatile i32, i32* @g_603, align 4, !tbaa !1
  %301 = zext i32 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %302)
  %303 = load volatile i8, i8* @g_713, align 1, !tbaa !9
  %304 = sext i8 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %305)
  %306 = load volatile i16, i16* @g_716, align 2, !tbaa !10
  %307 = sext i16 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %308)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:309                                     ; preds = %324, %295
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = icmp slt i32 %310, 8
  br i1 %311, label %312, label %327

; <label>:312                                     ; preds = %309
  %313 = load i32, i32* %i, align 4, !tbaa !1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [8 x i64], [8 x i64]* @g_913, i32 0, i64 %314
  %316 = load i64, i64* %315, align 8, !tbaa !7
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

; <label>:320                                     ; preds = %312
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 %321)
  br label %323

; <label>:323                                     ; preds = %320, %312
  br label %324

; <label>:324                                     ; preds = %323
  %325 = load i32, i32* %i, align 4, !tbaa !1
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %i, align 4, !tbaa !1
  br label %309

; <label>:327                                     ; preds = %309
  %328 = load volatile i32, i32* @g_978, align 4, !tbaa !1
  %329 = sext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %330)
  %331 = load volatile i64, i64* @g_1051, align 8, !tbaa !7
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %332)
  %333 = load volatile i32, i32* @g_1053, align 4, !tbaa !1
  %334 = zext i32 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %335)
  %336 = load i16, i16* @g_1087, align 2, !tbaa !10
  %337 = zext i16 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %338)
  %339 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %340 = zext i32 %339 to i64
  %341 = xor i64 %340, 4294967295
  %342 = trunc i64 %341 to i32
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %342, i32 %343)
  %344 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  %347 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
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
  %l_1040 = alloca [3 x [10 x i32]], align 16
  %l_1065 = alloca i8, align 1
  %l_1092 = alloca i32, align 4
  %l_1111 = alloca [7 x [10 x [3 x %union.U0**]]], align 16
  %l_1123 = alloca i32, align 4
  %l_1133 = alloca i64****, align 8
  %l_1142 = alloca i8*, align 8
  %l_1160 = alloca i32*, align 8
  %l_1161 = alloca i32*, align 8
  %l_1162 = alloca i32*, align 8
  %l_1163 = alloca i32*, align 8
  %l_1164 = alloca i32*, align 8
  %l_1165 = alloca [3 x [2 x i32*]], align 16
  %l_1166 = alloca i8, align 1
  %l_1167 = alloca i32, align 4
  %l_1168 = alloca i32, align 4
  %l_1169 = alloca i8, align 1
  %l_1172 = alloca i32**, align 8
  %l_1179 = alloca i64*, align 8
  %l_1178 = alloca i64**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_7 = alloca i16, align 2
  %l_12 = alloca [5 x [3 x i8]], align 1
  %l_13 = alloca i16*, align 8
  %l_1066 = alloca i64**, align 8
  %l_1132 = alloca i64****, align 8
  %l_1156 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_1190 = alloca [10 x [2 x [3 x i16]]], align 16
  %l_1191 = alloca i32, align 4
  %l_1192 = alloca [9 x i32], align 16
  %l_1193 = alloca i8, align 1
  %l_1196 = alloca i32**, align 8
  %l_1197 = alloca [2 x [6 x [5 x i32**]]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %2 = bitcast [3 x [10 x i32]]* %l_1040 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %2) #1
  %3 = bitcast [3 x [10 x i32]]* %l_1040 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([3 x [10 x i32]]* @func_1.l_1040 to i8*), i64 120, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1065) #1
  store i8 1, i8* %l_1065, align 1, !tbaa !9
  %4 = bitcast i32* %l_1092 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %l_1092, align 4, !tbaa !1
  %5 = bitcast [7 x [10 x [3 x %union.U0**]]]* %l_1111 to i8*
  call void @llvm.lifetime.start(i64 1680, i8* %5) #1
  %6 = bitcast [7 x [10 x [3 x %union.U0**]]]* %l_1111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([7 x [10 x [3 x %union.U0**]]]* @func_1.l_1111 to i8*), i64 1680, i32 16, i1 false)
  %7 = bitcast i32* %l_1123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1, i32* %l_1123, align 4, !tbaa !1
  %8 = bitcast i64***** %l_1133 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64**** @g_796, i64***** %l_1133, align 8, !tbaa !5
  %9 = bitcast i8** %l_1142 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* @g_314, i8** %l_1142, align 8, !tbaa !5
  %10 = bitcast i32** %l_1160 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* %l_1123, i32** %l_1160, align 8, !tbaa !5
  %11 = bitcast i32** %l_1161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* null, i32** %l_1161, align 8, !tbaa !5
  %12 = bitcast i32** %l_1162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* @g_244, i32** %l_1162, align 8, !tbaa !5
  %13 = bitcast i32** %l_1163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* null, i32** %l_1163, align 8, !tbaa !5
  %14 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_2, i32** %l_1164, align 8, !tbaa !5
  %15 = bitcast [3 x [2 x i32*]]* %l_1165 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %15) #1
  %16 = bitcast [3 x [2 x i32*]]* %l_1165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([3 x [2 x i32*]]* @func_1.l_1165 to i8*), i64 48, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1166) #1
  store i8 -1, i8* %l_1166, align 1, !tbaa !9
  %17 = bitcast i32* %l_1167 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 1, i32* %l_1167, align 4, !tbaa !1
  %18 = bitcast i32* %l_1168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 285901076, i32* %l_1168, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1169) #1
  store i8 1, i8* %l_1169, align 1, !tbaa !9
  %19 = bitcast i32*** %l_1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32** @g_466, i32*** %l_1172, align 8, !tbaa !5
  %20 = bitcast i64** %l_1179 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64* @g_105, i64** %l_1179, align 8, !tbaa !5
  %21 = bitcast i64*** %l_1178 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64** %l_1179, i64*** %l_1178, align 8, !tbaa !5
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* @g_2, align 4, !tbaa !1
  br label %25

; <label>:25                                      ; preds = %46, %0
  %26 = load i32, i32* @g_2, align 4, !tbaa !1
  %27 = icmp sle i32 %26, -9
  br i1 %27, label %28, label %51

; <label>:28                                      ; preds = %25
  %29 = bitcast i16* %l_7 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  store i16 1, i16* %l_7, align 2, !tbaa !10
  %30 = bitcast [5 x [3 x i8]]* %l_12 to i8*
  call void @llvm.lifetime.start(i64 15, i8* %30) #1
  %31 = bitcast [5 x [3 x i8]]* %l_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* getelementptr inbounds ([5 x [3 x i8]], [5 x [3 x i8]]* @func_1.l_12, i32 0, i32 0, i32 0), i64 15, i32 1, i1 false)
  %32 = bitcast i16** %l_13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i16* @g_14, i16** %l_13, align 8, !tbaa !5
  %33 = bitcast i64*** %l_1066 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i64** getelementptr inbounds ([9 x [6 x [2 x i64*]]], [9 x [6 x [2 x i64*]]]* @g_212, i32 0, i64 8, i64 4, i64 1), i64*** %l_1066, align 8, !tbaa !5
  %34 = bitcast i64***** %l_1132 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  store i64**** @g_796, i64***** %l_1132, align 8, !tbaa !5
  %35 = bitcast i32* %l_1156 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 -1963956190, i32* %l_1156, align 4, !tbaa !1
  %36 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %l_1156 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i64***** %l_1132 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast i64*** %l_1066 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast i16** %l_13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast [5 x [3 x i8]]* %l_12 to i8*
  call void @llvm.lifetime.end(i64 15, i8* %44) #1
  %45 = bitcast i16* %l_7 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #1
  br label %46

; <label>:46                                      ; preds = %28
  %47 = load i32, i32* @g_2, align 4, !tbaa !1
  %48 = sext i32 %47 to i64
  %49 = call i64 @safe_sub_func_int64_t_s_s(i64 %48, i64 1)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* @g_2, align 4, !tbaa !1
  br label %25

; <label>:51                                      ; preds = %25
  %52 = load i8, i8* %l_1169, align 1, !tbaa !9
  %53 = add i8 %52, -1
  store i8 %53, i8* %l_1169, align 1, !tbaa !9
  %54 = load volatile i32**, i32*** @g_601, align 8, !tbaa !5
  %55 = load i32*, i32** %54, align 8, !tbaa !5
  %56 = load volatile i32, i32* %55, align 4, !tbaa !1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

; <label>:58                                      ; preds = %51
  %59 = load i32*, i32** %l_1160, align 8, !tbaa !5
  %60 = load i32, i32* %59, align 4, !tbaa !1
  %61 = load i32**, i32*** %l_1172, align 8, !tbaa !5
  %62 = load volatile i32***, i32**** @g_600, align 8, !tbaa !5
  %63 = load volatile i32**, i32*** %62, align 8, !tbaa !5
  %64 = icmp eq i32** %61, %63
  br label %65

; <label>:65                                      ; preds = %58, %51
  %66 = phi i1 [ false, %51 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  %68 = load i8*, i8** @g_1144, align 8, !tbaa !5
  %69 = load i8, i8* %68, align 1, !tbaa !9
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* @g_105, align 8, !tbaa !7
  %74 = trunc i64 %73 to i8
  %75 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %74, i8 signext 33)
  %76 = sext i8 %75 to i32
  %77 = load i32*, i32** @g_467, align 8, !tbaa !5
  %78 = load i32, i32* %77, align 4, !tbaa !1
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = or i32 %76, %81
  %83 = and i32 %72, %82
  %84 = load i32*, i32** %l_1162, align 8, !tbaa !5
  %85 = load i32, i32* %84, align 4, !tbaa !1
  %86 = xor i32 %85, %83
  store i32 %86, i32* %84, align 4, !tbaa !1
  store i32 0, i32* @g_30, align 4, !tbaa !1
  br label %87

; <label>:87                                      ; preds = %235, %65
  %88 = load i32, i32* @g_30, align 4, !tbaa !1
  %89 = icmp slt i32 %88, 14
  br i1 %89, label %90, label %238

; <label>:90                                      ; preds = %87
  %91 = bitcast [10 x [2 x [3 x i16]]]* %l_1190 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %91) #1
  %92 = bitcast [10 x [2 x [3 x i16]]]* %l_1190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* bitcast ([10 x [2 x [3 x i16]]]* @func_1.l_1190 to i8*), i64 120, i32 16, i1 false)
  %93 = bitcast i32* %l_1191 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  store i32 -1, i32* %l_1191, align 4, !tbaa !1
  %94 = bitcast [9 x i32]* %l_1192 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %94) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1193) #1
  store i8 0, i8* %l_1193, align 1, !tbaa !9
  %95 = bitcast i32*** %l_1196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  store i32** null, i32*** %l_1196, align 8, !tbaa !5
  %96 = bitcast [2 x [6 x [5 x i32**]]]* %l_1197 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %96) #1
  %97 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  %99 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %107, %90
  %101 = load i32, i32* %i3, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 9
  br i1 %102, label %103, label %110

; <label>:103                                     ; preds = %100
  %104 = load i32, i32* %i3, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1192, i32 0, i64 %105
  store i32 1221710161, i32* %106, align 4, !tbaa !1
  br label %107

; <label>:107                                     ; preds = %103
  %108 = load i32, i32* %i3, align 4, !tbaa !1
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i3, align 4, !tbaa !1
  br label %100

; <label>:110                                     ; preds = %100
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %140, %110
  %112 = load i32, i32* %i3, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %143

; <label>:114                                     ; preds = %111
  store i32 0, i32* %j4, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %136, %114
  %116 = load i32, i32* %j4, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 6
  br i1 %117, label %118, label %139

; <label>:118                                     ; preds = %115
  store i32 0, i32* %k5, align 4, !tbaa !1
  br label %119

; <label>:119                                     ; preds = %132, %118
  %120 = load i32, i32* %k5, align 4, !tbaa !1
  %121 = icmp slt i32 %120, 5
  br i1 %121, label %122, label %135

; <label>:122                                     ; preds = %119
  %123 = load i32, i32* %k5, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %j4, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %i3, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x [6 x [5 x i32**]]], [2 x [6 x [5 x i32**]]]* %l_1197, i32 0, i64 %128
  %130 = getelementptr inbounds [6 x [5 x i32**]], [6 x [5 x i32**]]* %129, i32 0, i64 %126
  %131 = getelementptr inbounds [5 x i32**], [5 x i32**]* %130, i32 0, i64 %124
  store i32** %l_1162, i32*** %131, align 8, !tbaa !5
  br label %132

; <label>:132                                     ; preds = %122
  %133 = load i32, i32* %k5, align 4, !tbaa !1
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %k5, align 4, !tbaa !1
  br label %119

; <label>:135                                     ; preds = %119
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i32, i32* %j4, align 4, !tbaa !1
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %j4, align 4, !tbaa !1
  br label %115

; <label>:139                                     ; preds = %115
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load i32, i32* %i3, align 4, !tbaa !1
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %i3, align 4, !tbaa !1
  br label %111

; <label>:143                                     ; preds = %111
  %144 = load i64**, i64*** %l_1178, align 8, !tbaa !5
  %145 = load volatile %union.U0**, %union.U0*** @g_823, align 8, !tbaa !5
  %146 = load %union.U0*, %union.U0** %145, align 8, !tbaa !5
  %147 = icmp ne i64** %144, %l_1179
  br i1 %147, label %220, label %148

; <label>:148                                     ; preds = %143
  %149 = load i8**, i8*** @g_711, align 8, !tbaa !5
  %150 = load i8*, i8** %149, align 8, !tbaa !5
  %151 = load volatile i8, i8* %150, align 1, !tbaa !9
  %152 = sext i8 %151 to i32
  %153 = load i16**, i16*** @g_634, align 8, !tbaa !5
  %154 = load i16*, i16** %153, align 8, !tbaa !5
  %155 = load i16, i16* %154, align 2, !tbaa !10
  %156 = zext i16 %155 to i64
  %157 = icmp eq i64 8484, %156
  %158 = zext i1 %157 to i32
  %159 = trunc i32 %158 to i16
  %160 = load i32*, i32** %l_1164, align 8, !tbaa !5
  %161 = load i32, i32* %160, align 4, !tbaa !1
  %162 = load i32*, i32** @g_467, align 8, !tbaa !5
  store i32 1375893232, i32* %162, align 4, !tbaa !1
  br i1 true, label %163, label %199

; <label>:163                                     ; preds = %148
  %164 = load i16**, i16*** @g_634, align 8, !tbaa !5
  %165 = load i16*, i16** %164, align 8, !tbaa !5
  %166 = load i16, i16* %165, align 2, !tbaa !10
  %167 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext -5, i16 zeroext %166)
  %168 = zext i16 %167 to i32
  %169 = load i16, i16* @g_14, align 2, !tbaa !10
  %170 = sext i16 %169 to i32
  %171 = icmp sgt i32 %168, %170
  %172 = zext i1 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = xor i64 %173, 16413
  %175 = trunc i64 %174 to i8
  %176 = getelementptr inbounds [10 x [2 x [3 x i16]]], [10 x [2 x [3 x i16]]]* %l_1190, i32 0, i64 3
  %177 = getelementptr inbounds [2 x [3 x i16]], [2 x [3 x i16]]* %176, i32 0, i64 1
  %178 = getelementptr inbounds [3 x i16], [3 x i16]* %177, i32 0, i64 1
  %179 = load i16, i16* %178, align 2, !tbaa !10
  %180 = zext i16 %179 to i32
  %181 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %175, i32 %180)
  %182 = sext i8 %181 to i64
  %183 = icmp eq i64 %182, 214
  %184 = zext i1 %183 to i32
  %185 = sext i32 %184 to i64
  %186 = or i64 %185, 4
  %187 = load i64***, i64**** @g_796, align 8, !tbaa !5
  %188 = load i64**, i64*** %187, align 8, !tbaa !5
  %189 = load i64*, i64** %188, align 8, !tbaa !5
  %190 = load i64, i64* %189, align 8, !tbaa !7
  %191 = call i64 @safe_mod_func_uint64_t_u_u(i64 %186, i64 %190)
  %192 = trunc i64 %191 to i8
  %193 = load i64, i64* @g_105, align 8, !tbaa !7
  %194 = trunc i64 %193 to i8
  %195 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %192, i8 signext %194)
  %196 = sext i8 %195 to i64
  %197 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_275, i32 0, i64 8), align 8, !tbaa !7
  %198 = or i64 %197, %196
  store i64 %198, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @g_275, i32 0, i64 8), align 8, !tbaa !7
  br label %199

; <label>:199                                     ; preds = %163, %148
  %200 = phi i1 [ false, %148 ], [ true, %163 ]
  %201 = zext i1 %200 to i32
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %l_1142, align 8, !tbaa !5
  store i8 %202, i8* %203, align 1, !tbaa !9
  %204 = zext i8 %202 to i32
  %205 = load i32, i32* getelementptr inbounds ([4 x [5 x [4 x i32]]], [4 x [5 x [4 x i32]]]* @g_436, i32 0, i64 1, i64 2, i64 2), align 4, !tbaa !1
  %206 = or i32 %204, %205
  %207 = icmp sgt i32 %161, %206
  %208 = zext i1 %207 to i32
  %209 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %159, i32 %208)
  %210 = sext i16 %209 to i64
  %211 = load i64*, i64** @g_215, align 8, !tbaa !5
  %212 = load i64, i64* %211, align 8, !tbaa !7
  %213 = or i64 %210, %212
  %214 = load i32*, i32** %l_1164, align 8, !tbaa !5
  %215 = load i32, i32* %214, align 4, !tbaa !1
  %216 = sext i32 %215 to i64
  %217 = icmp uge i64 %213, %216
  %218 = zext i1 %217 to i32
  %219 = icmp ne i32 %152, %218
  br label %220

; <label>:220                                     ; preds = %199, %143
  %221 = phi i1 [ true, %143 ], [ %219, %199 ]
  %222 = zext i1 %221 to i32
  %223 = load i32*, i32** %l_1160, align 8, !tbaa !5
  store i32 %222, i32* %223, align 4, !tbaa !1
  %224 = load i8, i8* %l_1193, align 1, !tbaa !9
  %225 = add i8 %224, -1
  store i8 %225, i8* %l_1193, align 1, !tbaa !9
  %226 = load volatile i32**, i32*** @g_237, align 8, !tbaa !5
  store i32* %l_1123, i32** %226, align 8, !tbaa !5
  %227 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast [2 x [6 x [5 x i32**]]]* %l_1197 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %230) #1
  %231 = bitcast i32*** %l_1196 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1193) #1
  %232 = bitcast [9 x i32]* %l_1192 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %232) #1
  %233 = bitcast i32* %l_1191 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast [10 x [2 x [3 x i16]]]* %l_1190 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %234) #1
  br label %235

; <label>:235                                     ; preds = %220
  %236 = load i32, i32* @g_30, align 4, !tbaa !1
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* @g_30, align 4, !tbaa !1
  br label %87

; <label>:238                                     ; preds = %87
  %239 = load volatile %union.U0**, %union.U0*** @g_823, align 8, !tbaa !5
  %240 = load %union.U0*, %union.U0** %239, align 8, !tbaa !5
  %241 = bitcast %union.U0* %1 to i8*
  %242 = bitcast %union.U0* %240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %241, i8* %242, i64 8, i32 8, i1 false), !tbaa.struct !12
  %243 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i64*** %l_1178 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast i64** %l_1179 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i32*** %l_1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1169) #1
  %249 = bitcast i32* %l_1168 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast i32* %l_1167 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1166) #1
  %251 = bitcast [3 x [2 x i32*]]* %l_1165 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %251) #1
  %252 = bitcast i32** %l_1164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #1
  %253 = bitcast i32** %l_1163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  %254 = bitcast i32** %l_1162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #1
  %255 = bitcast i32** %l_1161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %255) #1
  %256 = bitcast i32** %l_1160 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %256) #1
  %257 = bitcast i8** %l_1142 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast i64***** %l_1133 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i32* %l_1123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast [7 x [10 x [3 x %union.U0**]]]* %l_1111 to i8*
  call void @llvm.lifetime.end(i64 1680, i8* %260) #1
  %261 = bitcast i32* %l_1092 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1065) #1
  %262 = bitcast [3 x [10 x i32]]* %l_1040 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %262) #1
  %263 = getelementptr %union.U0, %union.U0* %1, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  ret i64 %264
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i32 %3)
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
!12 = !{i64 0, i64 2, !10, i64 0, i64 4, !1, i64 0, i64 8, !7}
