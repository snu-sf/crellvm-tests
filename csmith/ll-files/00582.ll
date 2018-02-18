; ModuleID = '00582.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_5 = internal global i8 -7, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_28 = internal global i16 -21731, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"g_28\00", align 1
@g_30 = internal global i32 6, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_30\00", align 1
@g_34 = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_34\00", align 1
@g_69 = internal global i32 -1087738938, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_69\00", align 1
@g_72 = internal global i32 -1, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_72\00", align 1
@g_75 = internal global i32 -694418372, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_94 = internal global i64 3059925157820801098, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"g_94\00", align 1
@g_111 = internal global i32 -1, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_111\00", align 1
@g_113 = internal global i16 3, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_113\00", align 1
@g_116 = internal global i64 5242458581170997729, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"g_116\00", align 1
@g_130 = internal global i8 0, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_130\00", align 1
@g_140 = internal global [7 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\5C\F7\0E\01", [4 x i8] c"s\F7s\1B", [4 x i8] c"\F7\000\C2", [4 x i8] c"\C2\01\5C\00"], [4 x [4 x i8]] [[4 x i8] c"\F2\5C\5C\F2", [4 x i8] c"\C2\1B0s", [4 x i8] c"\F7\00s\FF", [4 x i8] c"s\FF\0E\FF"], [4 x [4 x i8]] [[4 x i8] c"\5C\00\01s", [4 x i8] c"\8A\1B\FF\F2", [4 x i8] c"\01\5C\00\00", [4 x i8] c"\01\01\F7\1B"], [4 x [4 x i8]] [[4 x i8] c"s\5C\FF\00", [4 x i8] c"\F2\C2\8A\FF", [4 x i8] c"\00\C2\00\00", [4 x i8] c"\C2\5C\0E\1B"], [4 x [4 x i8]] [[4 x i8] c"\1B\FF\F2\5C", [4 x i8] c"\01\F2\F2\01", [4 x i8] c"\1B\00\0E\00", [4 x i8] c"\C20\00\F7"], [4 x [4 x i8]] [[4 x i8] c"\00\F7\8A\F7", [4 x i8] c"\F20\FF\00", [4 x i8] c"s\00\F7\01", [4 x i8] c"\FF\F2\5C\5C"], [4 x [4 x i8]] [[4 x i8] c"\FF\FF\F7\1B", [4 x i8] c"s\5C\FF\00", [4 x i8] c"\F2\C2\8A\FF", [4 x i8] c"\00\C2\00\00"]], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"g_140[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_146 = internal global i32 -1217940618, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_146\00", align 1
@g_158 = internal global [6 x [9 x [1 x i64]]] [[9 x [1 x i64]] [[1 x i64] [i64 -5242453879884389906], [1 x i64] [i64 -7680882030623269605], [1 x i64] [i64 2814408051809728725], [1 x i64] [i64 531911170896959379], [1 x i64] [i64 7], [1 x i64] [i64 1], [1 x i64] [i64 -577867406060337048], [1 x i64] [i64 1], [1 x i64] [i64 7]], [9 x [1 x i64]] [[1 x i64] [i64 531911170896959379], [1 x i64] [i64 2814408051809728725], [1 x i64] [i64 -7680882030623269605], [1 x i64] [i64 -5242453879884389906], [1 x i64] [i64 3], [1 x i64] [i64 -5242453879884389906], [1 x i64] [i64 -7680882030623269605], [1 x i64] [i64 2814408051809728725], [1 x i64] [i64 531911170896959379]], [9 x [1 x i64]] [[1 x i64] [i64 7], [1 x i64] [i64 1], [1 x i64] [i64 -577867406060337048], [1 x i64] [i64 1], [1 x i64] [i64 7], [1 x i64] [i64 531911170896959379], [1 x i64] [i64 2814408051809728725], [1 x i64] [i64 -7680882030623269605], [1 x i64] [i64 -5242453879884389906]], [9 x [1 x i64]] [[1 x i64] [i64 3], [1 x i64] [i64 -5242453879884389906], [1 x i64] [i64 -7680882030623269605], [1 x i64] [i64 2814408051809728725], [1 x i64] [i64 531911170896959379], [1 x i64] [i64 7], [1 x i64] [i64 1], [1 x i64] [i64 -577867406060337048], [1 x i64] [i64 1]], [9 x [1 x i64]] [[1 x i64] [i64 7], [1 x i64] [i64 531911170896959379], [1 x i64] [i64 2814408051809728725], [1 x i64] [i64 -7680882030623269605], [1 x i64] [i64 -5242453879884389906], [1 x i64] [i64 3], [1 x i64] [i64 -5242453879884389906], [1 x i64] [i64 -7680882030623269605], [1 x i64] [i64 2814408051809728725]], [9 x [1 x i64]] [[1 x i64] [i64 531911170896959379], [1 x i64] [i64 7], [1 x i64] [i64 1], [1 x i64] [i64 -577867406060337048], [1 x i64] [i64 1], [1 x i64] [i64 7], [1 x i64] [i64 531911170896959379], [1 x i64] [i64 2814408051809728725], [1 x i64] [i64 -7680882030623269605]]], align 16
@.str.16 = private unnamed_addr constant [15 x i8] c"g_158[i][j][k]\00", align 1
@g_219 = internal global i32 1, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_219\00", align 1
@g_221 = internal global i32 1960183757, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_221\00", align 1
@g_228 = internal global i16 1, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_228\00", align 1
@g_250 = internal global i64 7304403946420354882, align 8
@.str.20 = private unnamed_addr constant [6 x i8] c"g_250\00", align 1
@g_310 = internal global i16 -9699, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_310\00", align 1
@g_321 = internal global i32 859186716, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_321\00", align 1
@g_353 = internal global i8 94, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_353\00", align 1
@g_427 = internal global i8 -57, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_427\00", align 1
@g_460 = internal global i32 1333366497, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_460\00", align 1
@g_524 = internal global i32 -168651674, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_524\00", align 1
@g_627 = internal global i8 5, align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_627\00", align 1
@g_662 = internal global i16 1, align 2
@.str.28 = private unnamed_addr constant [6 x i8] c"g_662\00", align 1
@g_699 = internal global i32 1332117857, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_699\00", align 1
@g_731 = internal global i64 3235933875934947702, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"g_731\00", align 1
@g_789 = internal global i32 1375069130, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_789\00", align 1
@g_793 = internal global i64 -8357760426533609042, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"g_793\00", align 1
@g_940 = internal constant [1 x [1 x i64]] [[1 x i64] [i64 -8]], align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"g_940[i][j]\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_1048 = internal global i32 -844986591, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1048\00", align 1
@g_1249 = internal global [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"g_1249[i]\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_1347 = internal global i32 289257369, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1347\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2 = internal constant [1 x [1 x i8]] zeroinitializer, align 1
@g_144 = internal constant i32** @g_145, align 8
@g_143 = internal global i32*** @g_144, align 8
@g_579 = internal global i32*** @g_155, align 8
@g_155 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [8 x i32*]]* @g_156 to i8*), i64 328) to i32**), align 8
@g_156 = internal global [7 x [8 x i32*]] [[8 x i32*] [i32* @g_75, i32* @g_34, i32* null, i32* @g_75, i32* @g_75, i32* null, i32* @g_34, i32* @g_75], [8 x i32*] [i32* @g_72, i32* @g_75, i32* @g_72, i32* @g_75, i32* @g_75, i32* @g_75, i32* @g_72, i32* @g_75], [8 x i32*] [i32* @g_75, i32* @g_72, i32* @g_72, i32* @g_75, i32* @g_75, i32* @g_75, i32* @g_75, i32* @g_72], [8 x i32*] [i32* @g_75, i32* @g_75, i32* null, i32* @g_34, i32* @g_75, i32* null, i32* @g_75, i32* @g_34], [8 x i32*] [i32* @g_72, i32* @g_34, i32* @g_72, i32* @g_75, i32* @g_34, i32* @g_72, i32* @g_72, i32* @g_34], [8 x i32*] [i32* @g_34, i32* @g_72, i32* @g_72, i32* @g_34, i32* @g_75, i32* @g_72, i32* @g_34, i32* @g_72], [8 x i32*] [i32* @g_34, i32* @g_75, i32* null, i32* @g_75, i32* @g_34, i32* null, i32* @g_75, i32* @g_75]], align 16
@func_11.l_1377 = private unnamed_addr constant [10 x i32] [i32 1445442515, i32 1445442515, i32 1445442515, i32 1445442515, i32 1445442515, i32 1445442515, i32 1445442515, i32 1445442515, i32 1445442515, i32 1445442515], align 16
@g_1098 = internal global i64** @g_1026, align 8
@func_11.l_1373 = private unnamed_addr constant [10 x i32] [i32 2016656594, i32 2016656594, i32 2016656594, i32 2016656594, i32 2016656594, i32 2016656594, i32 2016656594, i32 2016656594, i32 2016656594, i32 2016656594], align 16
@g_1327 = internal global i16** null, align 8
@g_1326 = internal global [4 x i16***] [i16*** @g_1327, i16*** @g_1327, i16*** @g_1327, i16*** @g_1327], align 16
@func_11.l_1408 = private unnamed_addr constant [9 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*)], align 16
@func_11.l_1415 = private unnamed_addr constant [8 x i64] [i64 -2190972373942914703, i64 -2190972373942914703, i64 -2190972373942914703, i64 -2190972373942914703, i64 -2190972373942914703, i64 -2190972373942914703, i64 -2190972373942914703, i64 -2190972373942914703], align 16
@func_11.l_1442 = private unnamed_addr constant [4 x [3 x i32***]] [[3 x i32***] [i32*** @g_155, i32*** @g_155, i32*** @g_155], [3 x i32***] [i32*** @g_155, i32*** @g_155, i32*** @g_155], [3 x i32***] [i32*** @g_155, i32*** @g_155, i32*** @g_155], [3 x i32***] [i32*** @g_155, i32*** @g_155, i32*** @g_155]], align 16
@g_1413 = internal global i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 88) to i32*****), align 8
@g_578 = internal global [6 x [4 x i32****]] [[4 x i32****] [i32**** @g_579, i32**** @g_579, i32**** @g_579, i32**** @g_579], [4 x i32****] [i32**** @g_579, i32**** @g_579, i32**** @g_579, i32**** @g_579], [4 x i32****] [i32**** @g_579, i32**** @g_579, i32**** @g_579, i32**** @g_579], [4 x i32****] [i32**** @g_579, i32**** @g_579, i32**** @g_579, i32**** @g_579], [4 x i32****] [i32**** @g_579, i32**** @g_579, i32**** @g_579, i32**** @g_579], [4 x i32****] [i32**** @g_579, i32**** @g_579, i32**** @g_579, i32**** @g_579]], align 16
@g_492 = internal global i8** @g_493, align 8
@g_660 = internal global i16** @g_661, align 8
@g_1026 = internal global i64* @g_94, align 8
@func_11.l_1447 = private unnamed_addr constant [9 x i32] [i32 -5, i32 1, i32 -5, i32 -5, i32 1, i32 -5, i32 -5, i32 1, i32 -5], align 16
@func_11.l_1471 = private unnamed_addr constant [8 x [10 x [2 x i64**]]] [[10 x [2 x i64**]] [[2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] zeroinitializer, [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026]], [10 x [2 x i64**]] [[2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] zeroinitializer, [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] zeroinitializer, [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026]], [10 x [2 x i64**]] [[2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] zeroinitializer], [10 x [2 x i64**]] [[2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] zeroinitializer, [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] zeroinitializer, [2 x i64**] [i64** @g_1026, i64** null]], [10 x [2 x i64**]] [[2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** null, i64** @g_1026]], [10 x [2 x i64**]] [[2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] zeroinitializer, [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026]], [10 x [2 x i64**]] [[2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] zeroinitializer, [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026]], [10 x [2 x i64**]] [[2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** null], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026], [2 x i64**] [i64** @g_1026, i64** @g_1026], [2 x i64**] [i64** null, i64** @g_1026]]], align 16
@func_11.l_1475 = private unnamed_addr constant [3 x [5 x i16*]] [[5 x i16*] [i16* null, i16* null, i16* @g_113, i16* @g_113, i16* null], [5 x i16*] [i16* null, i16* null, i16* @g_113, i16* @g_113, i16* null], [5 x i16*] [i16* null, i16* null, i16* @g_113, i16* @g_113, i16* null]], align 16
@g_351 = internal global i8** @g_352, align 8
@g_1097 = internal global i64*** @g_1098, align 8
@g_493 = internal global i8* @g_427, align 8
@g_661 = internal global i16* @g_662, align 8
@g_352 = internal global i8* @g_353, align 8
@g_1240 = internal global i32* @g_219, align 8
@func_21.l_1103 = private unnamed_addr constant [10 x i32] [i32 -4, i32 -4, i32 -3, i32 -4, i32 -4, i32 -3, i32 -4, i32 -4, i32 -3, i32 -4], align 16
@func_21.l_1253 = private unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 4, i32 1044153943, i32 1044153943, i32 4], [4 x i32] [i32 1044153943, i32 4, i32 1044153943, i32 1044153943], [4 x i32] [i32 4, i32 4, i32 -2049818336, i32 4], [4 x i32] [i32 4, i32 1044153943, i32 1044153943, i32 4], [4 x i32] [i32 1044153943, i32 4, i32 1044153943, i32 1044153943], [4 x i32] [i32 4, i32 4, i32 -2049818336, i32 4]], align 16
@func_21.l_1290 = private unnamed_addr constant [10 x i16*] [i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310], align 16
@g_29 = internal global i32* @g_30, align 8
@func_21.l_1177 = private unnamed_addr constant [7 x [3 x [1 x i16]]] [[3 x [1 x i16]] [[1 x i16] [i16 -16795], [1 x i16] [i16 1], [1 x i16] [i16 -16795]], [3 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 -16795], [1 x i16] [i16 1]], [3 x [1 x i16]] [[1 x i16] [i16 -16795], [1 x i16] [i16 1], [1 x i16] [i16 -16795]], [3 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 -16795], [1 x i16] [i16 1]], [3 x [1 x i16]] [[1 x i16] [i16 -16795], [1 x i16] [i16 1], [1 x i16] [i16 -16795]], [3 x [1 x i16]] [[1 x i16] [i16 1], [1 x i16] [i16 -16795], [1 x i16] [i16 1]], [3 x [1 x i16]] [[1 x i16] [i16 -16795], [1 x i16] [i16 1], [1 x i16] [i16 -16795]]], align 16
@func_21.l_1262 = private unnamed_addr constant [9 x [4 x i32]] [[4 x i32] [i32 8, i32 -1, i32 1, i32 1], [4 x i32] [i32 -1137648221, i32 -1137648221, i32 8, i32 1], [4 x i32] [i32 1064913058, i32 -1, i32 1064913058, i32 8], [4 x i32] [i32 1064913058, i32 8, i32 8, i32 1064913058], [4 x i32] [i32 -1137648221, i32 8, i32 1, i32 8], [4 x i32] [i32 8, i32 -1, i32 1, i32 1], [4 x i32] [i32 -1137648221, i32 -1137648221, i32 8, i32 1], [4 x i32] [i32 1064913058, i32 -1, i32 1064913058, i32 8], [4 x i32] [i32 1064913058, i32 8, i32 8, i32 1064913058]], align 16
@func_21.l_1102 = private unnamed_addr constant [8 x [6 x i16*]] [[6 x i16*] [i16* @g_310, i16* @g_310, i16* @g_228, i16* @g_228, i16* @g_310, i16* @g_228], [6 x i16*] [i16* @g_228, i16* @g_310, i16* @g_228, i16* @g_310, i16* @g_228, i16* @g_228], [6 x i16*] [i16* @g_228, i16* @g_228, i16* @g_228, i16* @g_228, i16* @g_310, i16* @g_228], [6 x i16*] [i16* @g_228, i16* @g_228, i16* @g_228, i16* @g_228, i16* @g_228, i16* @g_228], [6 x i16*] [i16* @g_228, i16* @g_310, i16* @g_228, i16* @g_228, i16* @g_310, i16* @g_228], [6 x i16*] [i16* @g_228, i16* @g_228, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_228], [6 x i16*] [i16* @g_310, i16* @g_228, i16* @g_228, i16* @g_310, i16* @g_310, i16* @g_228], [6 x i16*] [i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_310, i16* @g_228, i16* @g_310]], align 16
@g_145 = internal global i32* @g_146, align 8
@g_507 = internal global [10 x [1 x [4 x i32*]]] [[1 x [4 x i32*]] [[4 x i32*] [i32* @g_34, i32* null, i32* null, i32* @g_34]], [1 x [4 x i32*]] [[4 x i32*] [i32* @g_30, i32* null, i32* @g_34, i32* null]], [1 x [4 x i32*]] [[4 x i32*] [i32* null, i32* @g_111, i32* @g_34, i32* @g_34]], [1 x [4 x i32*]] [[4 x i32*] [i32* @g_30, i32* @g_30, i32* null, i32* @g_111]], [1 x [4 x i32*]] [[4 x i32*] [i32* @g_34, i32* @g_30, i32* @g_34, i32* @g_34]], [1 x [4 x i32*]] [[4 x i32*] [i32* @g_34, i32* @g_34, i32* @g_34, i32* @g_34]], [1 x [4 x i32*]] [[4 x i32*] [i32* null, i32* @g_34, i32* @g_111, i32* @g_34]], [1 x [4 x i32*]] [[4 x i32*] [i32* @g_34, i32* @g_30, i32* @g_111, i32* @g_111]], [1 x [4 x i32*]] [[4 x i32*] [i32* null, i32* null, i32* @g_34, i32* @g_111]], [1 x [4 x i32*]] [[4 x i32*] [i32* @g_34, i32* @g_30, i32* @g_34, i32* @g_34]]], align 16
@g_506 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [1 x [4 x i32*]]]* @g_507 to i8*), i64 40) to i32**), align 8
@func_21.l_1247 = internal constant [9 x [6 x i32*****]] [[6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null], [6 x i32*****] [i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null, i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [4 x i32****]]* @g_578 to i8*), i64 176) to i32*****), i32***** null]], align 16
@func_21.l_1260 = private unnamed_addr constant [8 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 -3, i32 -3], [2 x i32] [i32 -3, i32 -1], [2 x i32] [i32 1, i32 661304373]], [3 x [2 x i32]] [[2 x i32] [i32 -1, i32 661304373], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 -3, i32 -3]], [3 x [2 x i32]] [[2 x i32] [i32 -3, i32 -1], [2 x i32] [i32 1, i32 661304373], [2 x i32] [i32 -1, i32 661304373]], [3 x [2 x i32]] [[2 x i32] [i32 1, i32 -1], [2 x i32] [i32 -3, i32 -3], [2 x i32] [i32 -3, i32 -1]], [3 x [2 x i32]] [[2 x i32] [i32 1, i32 661304373], [2 x i32] [i32 -1, i32 661304373], [2 x i32] [i32 1, i32 -1]], [3 x [2 x i32]] [[2 x i32] [i32 -3, i32 -3], [2 x i32] [i32 -3, i32 -1], [2 x i32] [i32 1, i32 661304373]], [3 x [2 x i32]] [[2 x i32] [i32 -1, i32 661304373], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 -3, i32 -3]], [3 x [2 x i32]] [[2 x i32] [i32 -3, i32 -1], [2 x i32] [i32 1, i32 661304373], [2 x i32] [i32 -1, i32 661304373]]], align 16
@func_40.l_55 = private unnamed_addr constant [10 x [2 x [8 x i64]]] [[2 x [8 x i64]] [[8 x i64] [i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2], [8 x i64] [i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232]], [2 x [8 x i64]] [[8 x i64] [i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310], [8 x i64] [i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310]], [2 x [8 x i64]] [[8 x i64] [i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232], [8 x i64] [i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310]], [2 x [8 x i64]] [[8 x i64] [i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310], [8 x i64] [i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232]], [2 x [8 x i64]] [[8 x i64] [i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310], [8 x i64] [i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310]], [2 x [8 x i64]] [[8 x i64] [i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232], [8 x i64] [i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310]], [2 x [8 x i64]] [[8 x i64] [i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310], [8 x i64] [i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232]], [2 x [8 x i64]] [[8 x i64] [i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310], [8 x i64] [i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310]], [2 x [8 x i64]] [[8 x i64] [i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232], [8 x i64] [i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310, i64 -2, i64 2163888665660622310, i64 2163888665660622310]], [2 x [8 x i64]] [[8 x i64] [i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310], [8 x i64] [i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232, i64 -7190346628374080232, i64 2163888665660622310, i64 -7190346628374080232]]], align 16
@func_40.l_1033 = private unnamed_addr constant [5 x [3 x [7 x i32*]]] [[3 x [7 x i32*]] [[7 x i32*] [i32* @g_75, i32* null, i32* @g_34, i32* @g_75, i32* @g_34, i32* @g_699, i32* null], [7 x i32*] [i32* null, i32* @g_72, i32* @g_34, i32* null, i32* @g_34, i32* @g_72, i32* null], [7 x i32*] [i32* @g_72, i32* null, i32* @g_72, i32* @g_34, i32* null, i32* @g_72, i32* @g_34]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_75, i32* @g_34, i32* @g_699, i32* null, i32* null, i32* @g_699, i32* @g_34], [7 x i32*] [i32* null, i32* @g_69, i32* @g_72, i32* null, i32* @g_69, i32* @g_34, i32* @g_34], [7 x i32*] [i32* null, i32* null, i32* @g_34, i32* null, i32* @g_34, i32* null, i32* @g_34]], [3 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_34, i32* @g_75, i32* @g_69, i32* null, i32* null, i32* @g_34], [7 x i32*] [i32* @g_34, i32* @g_699, i32* @g_699, i32* null, i32* @g_34, i32* @g_34, i32* null], [7 x i32*] [i32* @g_699, i32* @g_72, i32* @g_699, i32* @g_699, i32* null, i32* @g_699, i32* @g_34]], [3 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_72, i32* @g_34, i32* @g_69, i32* @g_72, i32* @g_75, i32* @g_72], [7 x i32*] [i32* @g_72, i32* @g_699, i32* @g_699, i32* @g_72, i32* @g_34, i32* @g_699, i32* null], [7 x i32*] [i32* @g_34, i32* @g_34, i32* @g_699, i32* @g_699, i32* null, i32* @g_34, i32* @g_34]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_34, i32* null, i32* @g_34, i32* null, i32* @g_34, i32* null, i32* null], [7 x i32*] [i32* @g_72, i32* @g_34, i32* @g_699, i32* null, i32* @g_699, i32* @g_699, i32* @g_72], [7 x i32*] [i32* @g_699, i32* @g_72, i32* @g_699, i32* @g_699, i32* @g_72, i32* @g_699, i32* @g_34]]], align 16
@func_40.l_52 = private unnamed_addr constant [9 x [7 x i32*]] [[7 x i32*] [i32* @g_30, i32* @g_30, i32* @g_34, i32* null, i32* null, i32* @g_34, i32* null], [7 x i32*] [i32* null, i32* @g_30, i32* @g_30, i32* null, i32* @g_34, i32* @g_34, i32* null], [7 x i32*] [i32* @g_34, i32* null, i32* @g_34, i32* @g_34, i32* null, i32* @g_34, i32* @g_30], [7 x i32*] [i32* null, i32* null, i32* @g_34, i32* @g_30, i32* @g_30, i32* @g_34, i32* null], [7 x i32*] [i32* null, i32* @g_30, i32* @g_34, i32* null, i32* @g_34, i32* @g_34, i32* null], [7 x i32*] [i32* @g_34, i32* null, i32* @g_34, i32* @g_34, i32* null, i32* @g_30, i32* @g_30], [7 x i32*] [i32* null, i32* null, i32* @g_34, i32* null, i32* null, i32* @g_34, i32* @g_30], [7 x i32*] [i32* @g_30, i32* @g_30, i32* @g_34, i32* @g_30, i32* @g_34, i32* @g_30, i32* @g_30], [7 x i32*] [i32* @g_34, i32* @g_30, i32* @g_30, i32* @g_34, i32* @g_30, i32* @g_34, i32* @g_30]], align 16
@func_67.l_119 = internal constant [7 x [3 x i32*]] [[3 x i32*] [i32* @g_34, i32* null, i32* @g_34], [3 x i32*] [i32* @g_30, i32* @g_34, i32* null], [3 x i32*] [i32* @g_30, i32* @g_30, i32* @g_34], [3 x i32*] [i32* @g_34, i32* @g_34, i32* @g_34], [3 x i32*] [i32* @g_34, i32* null, i32* null], [3 x i32*] [i32* @g_34, i32* null, i32* @g_34], [3 x i32*] [i32* @g_30, i32* @g_34, i32* null]], align 16
@func_67.l_936 = private unnamed_addr constant [4 x i64*] [i64* @g_116, i64* @g_116, i64* @g_116, i64* @g_116], align 16
@g_859 = internal global i64* null, align 8
@func_67.l_791 = private unnamed_addr constant [6 x [6 x [7 x i32]]] [[6 x [7 x i32]] [[7 x i32] [i32 1, i32 -10, i32 1, i32 0, i32 0, i32 1, i32 -10], [7 x i32] [i32 0, i32 -10, i32 1, i32 1, i32 -10, i32 0, i32 -10], [7 x i32] [i32 1, i32 0, i32 0, i32 1, i32 -10, i32 1, i32 0], [7 x i32] [i32 364858471, i32 364858471, i32 1, i32 -10, i32 1, i32 0, i32 0], [7 x i32] [i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 1, i32 364858471, i32 1, i32 1, i32 1, i32 1, i32 364858471]], [6 x [7 x i32]] [[7 x i32] [i32 1, i32 364858471, i32 -10, i32 -10, i32 364858471, i32 1, i32 364858471], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 364858471, i32 1, i32 1], [7 x i32] [i32 0, i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0], [7 x i32] [i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 1, i32 364858471, i32 1, i32 1, i32 1, i32 1, i32 364858471], [7 x i32] [i32 1, i32 364858471, i32 -10, i32 -10, i32 364858471, i32 1, i32 364858471]], [6 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 364858471, i32 1, i32 1], [7 x i32] [i32 0, i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0], [7 x i32] [i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 1, i32 364858471, i32 1, i32 1, i32 1, i32 1, i32 364858471], [7 x i32] [i32 1, i32 364858471, i32 -10, i32 -10, i32 364858471, i32 1, i32 364858471], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 364858471, i32 1, i32 1]], [6 x [7 x i32]] [[7 x i32] [i32 0, i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0], [7 x i32] [i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 1, i32 364858471, i32 1, i32 1, i32 1, i32 1, i32 364858471], [7 x i32] [i32 1, i32 364858471, i32 -10, i32 -10, i32 364858471, i32 1, i32 364858471], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 364858471, i32 1, i32 1], [7 x i32] [i32 0, i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0]], [6 x [7 x i32]] [[7 x i32] [i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0, i32 1], [7 x i32] [i32 1, i32 364858471, i32 1, i32 1, i32 1, i32 1, i32 364858471], [7 x i32] [i32 1, i32 364858471, i32 -10, i32 -10, i32 364858471, i32 1, i32 364858471], [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 364858471, i32 1, i32 1], [7 x i32] [i32 0, i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0], [7 x i32] [i32 0, i32 1, i32 -10, i32 1, i32 0, i32 0, i32 1]], [6 x [7 x i32]] [[7 x i32] [i32 1, i32 364858471, i32 1, i32 1, i32 1, i32 -10, i32 0], [7 x i32] [i32 1, i32 0, i32 364858471, i32 364858471, i32 0, i32 1, i32 0], [7 x i32] [i32 -10, i32 1, i32 1, i32 -10, i32 0, i32 -10, i32 1], [7 x i32] [i32 1, i32 1, i32 1, i32 364858471, i32 1, i32 1, i32 1], [7 x i32] [i32 1, i32 1, i32 364858471, i32 1, i32 1, i32 1, i32 1], [7 x i32] [i32 -10, i32 0, i32 -10, i32 1, i32 1, i32 -10, i32 0]]], align 16
@func_67.l_855 = private unnamed_addr constant [9 x [2 x i64*]] [[2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*)], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 32) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [9 x [1 x i64]]]* @g_158 to i8*), i64 88) to i64*)]], align 16
@func_67.l_1008 = private unnamed_addr constant [2 x [2 x [4 x i16]]] [[2 x [4 x i16]] [[4 x i16] [i16 -7, i16 -7, i16 -7, i16 -7], [4 x i16] [i16 -7, i16 -7, i16 -7, i16 -7]], [2 x [4 x i16]] [[4 x i16] [i16 -7, i16 -7, i16 -7, i16 -7], [4 x i16] [i16 -7, i16 -7, i16 -7, i16 -7]]], align 16
@.str.39 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i8, i8* @g_5, align 1, !tbaa !9
  %92 = sext i8 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i16, i16* @g_28, align 2, !tbaa !10
  %95 = zext i16 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_30, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* @g_34, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i32, i32* @g_69, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i32, i32* @g_72, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* @g_75, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  %112 = load i64, i64* @g_94, align 8, !tbaa !7
  %113 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %113)
  %114 = load i32, i32* @g_111, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %116)
  %117 = load i16, i16* @g_113, align 2, !tbaa !10
  %118 = zext i16 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %119)
  %120 = load i64, i64* @g_116, align 8, !tbaa !7
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %121)
  %122 = load i8, i8* @g_130, align 1, !tbaa !9
  %123 = zext i8 %122 to i64
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %124)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:125                                     ; preds = %165, %89
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = icmp slt i32 %126, 7
  br i1 %127, label %128, label %168

; <label>:128                                     ; preds = %125
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %129

; <label>:129                                     ; preds = %161, %128
  %130 = load i32, i32* %j, align 4, !tbaa !1
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %164

; <label>:132                                     ; preds = %129
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %133

; <label>:133                                     ; preds = %157, %132
  %134 = load i32, i32* %k, align 4, !tbaa !1
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %160

; <label>:136                                     ; preds = %133
  %137 = load i32, i32* %k, align 4, !tbaa !1
  %138 = sext i32 %137 to i64
  %139 = load i32, i32* %j, align 4, !tbaa !1
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 %142
  %144 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %143, i32 0, i64 %140
  %145 = getelementptr inbounds [4 x i8], [4 x i8]* %144, i32 0, i64 %138
  %146 = load i8, i8* %145, align 1, !tbaa !9
  %147 = zext i8 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

; <label>:151                                     ; preds = %136
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = load i32, i32* %j, align 4, !tbaa !1
  %154 = load i32, i32* %k, align 4, !tbaa !1
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %152, i32 %153, i32 %154)
  br label %156

; <label>:156                                     ; preds = %151, %136
  br label %157

; <label>:157                                     ; preds = %156
  %158 = load i32, i32* %k, align 4, !tbaa !1
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %k, align 4, !tbaa !1
  br label %133

; <label>:160                                     ; preds = %133
  br label %161

; <label>:161                                     ; preds = %160
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %j, align 4, !tbaa !1
  br label %129

; <label>:164                                     ; preds = %129
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:168                                     ; preds = %125
  %169 = load volatile i32, i32* @g_146, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %171)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %211, %168
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 6
  br i1 %174, label %175, label %214

; <label>:175                                     ; preds = %172
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %176

; <label>:176                                     ; preds = %207, %175
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = icmp slt i32 %177, 9
  br i1 %178, label %179, label %210

; <label>:179                                     ; preds = %176
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %180

; <label>:180                                     ; preds = %203, %179
  %181 = load i32, i32* %k, align 4, !tbaa !1
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %206

; <label>:183                                     ; preds = %180
  %184 = load i32, i32* %k, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %j, align 4, !tbaa !1
  %187 = sext i32 %186 to i64
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [6 x [9 x [1 x i64]]], [6 x [9 x [1 x i64]]]* @g_158, i32 0, i64 %189
  %191 = getelementptr inbounds [9 x [1 x i64]], [9 x [1 x i64]]* %190, i32 0, i64 %187
  %192 = getelementptr inbounds [1 x i64], [1 x i64]* %191, i32 0, i64 %185
  %193 = load i64, i64* %192, align 8, !tbaa !7
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 %194)
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

; <label>:197                                     ; preds = %183
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = load i32, i32* %j, align 4, !tbaa !1
  %200 = load i32, i32* %k, align 4, !tbaa !1
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %198, i32 %199, i32 %200)
  br label %202

; <label>:202                                     ; preds = %197, %183
  br label %203

; <label>:203                                     ; preds = %202
  %204 = load i32, i32* %k, align 4, !tbaa !1
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %k, align 4, !tbaa !1
  br label %180

; <label>:206                                     ; preds = %180
  br label %207

; <label>:207                                     ; preds = %206
  %208 = load i32, i32* %j, align 4, !tbaa !1
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %j, align 4, !tbaa !1
  br label %176

; <label>:210                                     ; preds = %176
  br label %211

; <label>:211                                     ; preds = %210
  %212 = load i32, i32* %i, align 4, !tbaa !1
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %i, align 4, !tbaa !1
  br label %172

; <label>:214                                     ; preds = %172
  %215 = load i32, i32* @g_219, align 4, !tbaa !1
  %216 = sext i32 %215 to i64
  %217 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %217)
  %218 = load i32, i32* @g_221, align 4, !tbaa !1
  %219 = zext i32 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %220)
  %221 = load i16, i16* @g_228, align 2, !tbaa !10
  %222 = sext i16 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %223)
  %224 = load i64, i64* @g_250, align 8, !tbaa !7
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %225)
  %226 = load i16, i16* @g_310, align 2, !tbaa !10
  %227 = sext i16 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %228)
  %229 = load i32, i32* @g_321, align 4, !tbaa !1
  %230 = zext i32 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %231)
  %232 = load volatile i8, i8* @g_353, align 1, !tbaa !9
  %233 = sext i8 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %234)
  %235 = load i8, i8* @g_427, align 1, !tbaa !9
  %236 = sext i8 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %237)
  %238 = load volatile i32, i32* @g_460, align 4, !tbaa !1
  %239 = sext i32 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %240)
  %241 = load i32, i32* @g_524, align 4, !tbaa !1
  %242 = sext i32 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %243)
  %244 = load i8, i8* @g_627, align 1, !tbaa !9
  %245 = sext i8 %244 to i64
  %246 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %246)
  %247 = load volatile i16, i16* @g_662, align 2, !tbaa !10
  %248 = zext i16 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %249)
  %250 = load i32, i32* @g_699, align 4, !tbaa !1
  %251 = sext i32 %250 to i64
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %252)
  %253 = load volatile i64, i64* @g_731, align 8, !tbaa !7
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* @g_789, align 4, !tbaa !1
  %256 = sext i32 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %257)
  %258 = load volatile i64, i64* @g_793, align 8, !tbaa !7
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %259)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:260                                     ; preds = %287, %214
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %263, label %290

; <label>:263                                     ; preds = %260
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %283, %263
  %265 = load i32, i32* %j, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 1
  br i1 %266, label %267, label %286

; <label>:267                                     ; preds = %264
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [1 x [1 x i64]], [1 x [1 x i64]]* @g_940, i32 0, i64 %271
  %273 = getelementptr inbounds [1 x i64], [1 x i64]* %272, i32 0, i64 %269
  %274 = load i64, i64* %273, align 8, !tbaa !7
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

; <label>:278                                     ; preds = %267
  %279 = load i32, i32* %i, align 4, !tbaa !1
  %280 = load i32, i32* %j, align 4, !tbaa !1
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 %279, i32 %280)
  br label %282

; <label>:282                                     ; preds = %278, %267
  br label %283

; <label>:283                                     ; preds = %282
  %284 = load i32, i32* %j, align 4, !tbaa !1
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %j, align 4, !tbaa !1
  br label %264

; <label>:286                                     ; preds = %264
  br label %287

; <label>:287                                     ; preds = %286
  %288 = load i32, i32* %i, align 4, !tbaa !1
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %i, align 4, !tbaa !1
  br label %260

; <label>:290                                     ; preds = %260
  %291 = load i32, i32* @g_1048, align 4, !tbaa !1
  %292 = zext i32 %291 to i64
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %293)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %310, %290
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 9
  br i1 %296, label %297, label %313

; <label>:297                                     ; preds = %294
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [9 x i32], [9 x i32]* @g_1249, i32 0, i64 %299
  %301 = load i32, i32* %300, align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 %303)
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

; <label>:306                                     ; preds = %297
  %307 = load i32, i32* %i, align 4, !tbaa !1
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i32 %307)
  br label %309

; <label>:309                                     ; preds = %306, %297
  br label %310

; <label>:310                                     ; preds = %309
  %311 = load i32, i32* %i, align 4, !tbaa !1
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:313                                     ; preds = %294
  %314 = load volatile i32, i32* @g_1347, align 4, !tbaa !1
  %315 = zext i32 %314 to i64
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %316)
  %317 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %318 = zext i32 %317 to i64
  %319 = xor i64 %318, 4294967295
  %320 = trunc i64 %319 to i32
  %321 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %320, i32 %321)
  %322 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  %325 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
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
  %l_27 = alloca i16*, align 8
  %l_1368 = alloca i8, align 1
  %l_1369 = alloca i8, align 1
  %l_1480 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i16** %l_27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i16* @g_28, i16** %l_27, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1368) #1
  store i8 60, i8* %l_1368, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_1369) #1
  store i8 -7, i8* %l_1369, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_1480) #1
  store i8 78, i8* %l_1480, align 1, !tbaa !9
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8, i8* getelementptr inbounds ([1 x [1 x i8]], [1 x [1 x i8]]* @func_1.l_2, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %5 = sext i8 %4 to i32
  %6 = load i8, i8* getelementptr inbounds ([1 x [1 x i8]], [1 x [1 x i8]]* @func_1.l_2, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %7 = load i8, i8* @g_5, align 1, !tbaa !9
  %8 = sext i8 %7 to i16
  %9 = load i8, i8* @g_5, align 1, !tbaa !9
  %10 = sext i8 %9 to i16
  %11 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %8, i16 signext %10)
  %12 = sext i16 %11 to i32
  %13 = load i8, i8* @g_5, align 1, !tbaa !9
  %14 = sext i8 %13 to i16
  %15 = load i8, i8* @g_5, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* getelementptr inbounds ([1 x [1 x i8]], [1 x [1 x i8]]* @func_1.l_2, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %18 = load i8, i8* @g_5, align 1, !tbaa !9
  %19 = load i8, i8* @g_5, align 1, !tbaa !9
  %20 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %18, i8 signext %19)
  %21 = sext i8 %20 to i16
  %22 = load i8, i8* getelementptr inbounds ([1 x [1 x i8]], [1 x [1 x i8]]* @func_1.l_2, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %23 = sext i8 %22 to i32
  %24 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %21, i32 %23)
  %25 = sext i16 %24 to i32
  %26 = load i16*, i16** %l_27, align 8, !tbaa !5
  %27 = load i16, i16* %26, align 2, !tbaa !10
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, %25
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %26, align 2, !tbaa !10
  %31 = call i32 @func_21(i16 zeroext %30)
  store i32 %31, i32* @g_321, align 4, !tbaa !1
  %32 = load i32**, i32*** @g_144, align 8, !tbaa !5
  %33 = load i32*, i32** %32, align 8, !tbaa !5
  %34 = load volatile i32, i32* %33, align 4, !tbaa !1
  %35 = load i64, i64* getelementptr inbounds ([1 x [1 x i64]], [1 x [1 x i64]]* @g_940, i32 0, i64 0, i64 0), align 8, !tbaa !7
  %36 = trunc i64 %35 to i32
  %37 = call signext i16 @func_17(i8 zeroext %17, i16 signext 23413, i32 %36)
  %38 = sext i16 %37 to i32
  %39 = icmp sle i32 %16, %38
  %40 = zext i1 %39 to i32
  %41 = trunc i32 %40 to i16
  %42 = load i8, i8* %l_1368, align 1, !tbaa !9
  %43 = sext i8 %42 to i16
  %44 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %41, i16 signext %43)
  %45 = sext i16 %44 to i32
  %46 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext -57, i32 %45)
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %l_1369, align 1, !tbaa !9
  %49 = sext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = load volatile i64, i64* @g_731, align 8, !tbaa !7
  %52 = trunc i64 %51 to i16
  %53 = call signext i16 @func_11(i16 signext %52)
  %54 = sext i16 %53 to i32
  %55 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %14, i32 %54)
  %56 = sext i16 %55 to i32
  %57 = load i8, i8* %l_1369, align 1, !tbaa !9
  %58 = sext i8 %57 to i16
  %59 = call i32 @func_6(i32 %56, i16 zeroext %58)
  %60 = load i8, i8* getelementptr inbounds ([1 x [1 x i8]], [1 x [1 x i8]]* @func_1.l_2, i32 0, i64 0, i64 0), align 1, !tbaa !9
  %61 = sext i8 %60 to i32
  %62 = icmp ult i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = icmp ne i32 %12, %63
  %65 = zext i1 %64 to i32
  %66 = or i32 %5, %65
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %l_1480, align 1, !tbaa !9
  %68 = load i32***, i32**** @g_143, align 8, !tbaa !5
  %69 = load i32**, i32*** %68, align 8, !tbaa !5
  %70 = load i32*, i32** %69, align 8, !tbaa !5
  %71 = load volatile i32, i32* %70, align 4, !tbaa !1
  %72 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1480) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1369) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1368) #1
  %74 = bitcast i16** %l_27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret i32 %71
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 %3)
  ret void
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
define internal i32 @func_6(i32 %p_7, i16 zeroext %p_8) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %l_1478 = alloca i32*, align 8
  %l_1479 = alloca i32, align 4
  store i32 %p_7, i32* %1, align 4, !tbaa !1
  store i16 %p_8, i16* %2, align 2, !tbaa !10
  %3 = bitcast i32** %l_1478 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_34, i32** %l_1478, align 8, !tbaa !5
  store i32 -14, i32* @g_75, align 4, !tbaa !1
  br label %4

; <label>:4                                       ; preds = %20, %0
  %5 = load i32, i32* @g_75, align 4, !tbaa !1
  %6 = icmp ne i32 %5, 21
  br i1 %6, label %7, label %23

; <label>:7                                       ; preds = %4
  %8 = bitcast i32* %l_1479 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -934900152, i32* %l_1479, align 4, !tbaa !1
  %9 = load i32*, i32** %l_1478, align 8, !tbaa !5
  %10 = load i32***, i32**** @g_579, align 8, !tbaa !5
  %11 = load i32**, i32*** %10, align 8, !tbaa !5
  store i32* %9, i32** %11, align 8, !tbaa !5
  %12 = load i32, i32* %l_1479, align 4, !tbaa !1
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 176
  %15 = zext i1 %14 to i32
  %16 = load i32*, i32** %l_1478, align 8, !tbaa !5
  store i32* %16, i32** %l_1478, align 8, !tbaa !5
  %17 = load i32***, i32**** @g_579, align 8, !tbaa !5
  %18 = load i32**, i32*** %17, align 8, !tbaa !5
  store i32* %16, i32** %18, align 8, !tbaa !5
  %19 = bitcast i32* %l_1479 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  br label %20

; <label>:20                                      ; preds = %7
  %21 = load i32, i32* @g_75, align 4, !tbaa !1
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @g_75, align 4, !tbaa !1
  br label %4

; <label>:23                                      ; preds = %4
  %24 = load i32*, i32** %l_1478, align 8, !tbaa !5
  %25 = load i32, i32* %24, align 4, !tbaa !1
  %26 = bitcast i32** %l_1478 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i32 %25
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
define internal signext i16 @func_11(i16 signext %p_12) #0 {
  %1 = alloca i16, align 2
  %l_1375 = alloca i8, align 1
  %l_1377 = alloca [10 x i32], align 16
  %l_1378 = alloca i64, align 8
  %l_1402 = alloca i32, align 4
  %l_1403 = alloca i32, align 4
  %l_1414 = alloca i64, align 8
  %l_1445 = alloca i64, align 8
  %l_1448 = alloca i32, align 4
  %l_1463 = alloca i64***, align 8
  %l_1466 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_1372 = alloca i32*, align 8
  %l_1373 = alloca [10 x i32], align 16
  %l_1374 = alloca i32*, align 8
  %l_1376 = alloca [2 x i32*], align 16
  %l_1393 = alloca i32, align 4
  %l_1394 = alloca i16*, align 8
  %l_1401 = alloca [10 x [10 x i8*]], align 16
  %l_1423 = alloca i8**, align 8
  %l_1443 = alloca i32***, align 8
  %l_1446 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %l_1404 = alloca i64, align 8
  %l_1408 = alloca [9 x i64*], align 16
  %l_1409 = alloca i32, align 4
  %l_1415 = alloca [8 x i64], align 16
  %l_1422 = alloca i8**, align 8
  %l_1442 = alloca [4 x [3 x i32***]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %2 = alloca i32
  %l_1447 = alloca [9 x i32], align 16
  %l_1449 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %l_1460 = alloca i32, align 4
  %l_1471 = alloca [8 x [10 x [2 x i64**]]], align 16
  %l_1472 = alloca i16*, align 8
  %l_1473 = alloca i8, align 1
  %l_1474 = alloca i16*, align 8
  %l_1475 = alloca [3 x [5 x i16*]], align 16
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k = alloca i32, align 4
  store i16 %p_12, i16* %1, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1375) #1
  store i8 1, i8* %l_1375, align 1, !tbaa !9
  %3 = bitcast [10 x i32]* %l_1377 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast [10 x i32]* %l_1377 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([10 x i32]* @func_11.l_1377 to i8*), i64 40, i32 16, i1 false)
  %5 = bitcast i64* %l_1378 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 1091973796188596826, i64* %l_1378, align 8, !tbaa !7
  %6 = bitcast i32* %l_1402 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -936304344, i32* %l_1402, align 4, !tbaa !1
  %7 = bitcast i32* %l_1403 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -350818899, i32* %l_1403, align 4, !tbaa !1
  %8 = bitcast i64* %l_1414 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 -1, i64* %l_1414, align 8, !tbaa !7
  %9 = bitcast i64* %l_1445 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 6836008813683816490, i64* %l_1445, align 8, !tbaa !7
  %10 = bitcast i32* %l_1448 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 7, i32* %l_1448, align 4, !tbaa !1
  %11 = bitcast i64**** %l_1463 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64*** @g_1098, i64**** %l_1463, align 8, !tbaa !5
  %12 = bitcast i32* %l_1466 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -2, i32* %l_1466, align 4, !tbaa !1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i64 0, i64* @g_116, align 8, !tbaa !7
  br label %14

; <label>:14                                      ; preds = %448, %0
  %15 = load i64, i64* @g_116, align 8, !tbaa !7
  %16 = icmp ne i64 %15, 18
  br i1 %16, label %17, label %453

; <label>:17                                      ; preds = %14
  %18 = bitcast i32** %l_1372 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* @g_72, i32** %l_1372, align 8, !tbaa !5
  %19 = bitcast [10 x i32]* %l_1373 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %19) #1
  %20 = bitcast [10 x i32]* %l_1373 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast ([10 x i32]* @func_11.l_1373 to i8*), i64 40, i32 16, i1 false)
  %21 = bitcast i32** %l_1374 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32* @g_69, i32** %l_1374, align 8, !tbaa !5
  %22 = bitcast [2 x i32*]* %l_1376 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast i32* %l_1393 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 1, i32* %l_1393, align 4, !tbaa !1
  %24 = bitcast i16** %l_1394 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i16* @g_228, i16** %l_1394, align 8, !tbaa !5
  %25 = bitcast [10 x [10 x i8*]]* %l_1401 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %25) #1
  %26 = getelementptr inbounds [10 x [10 x i8*]], [10 x [10 x i8*]]* %l_1401, i64 0, i64 0
  %27 = getelementptr inbounds [10 x i8*], [10 x i8*]* %26, i64 0, i64 0
  store i8* @g_5, i8** %27, !tbaa !5
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* @g_5, i8** %28, !tbaa !5
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* @g_427, i8** %29, !tbaa !5
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* @g_5, i8** %30, !tbaa !5
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* @g_627, i8** %31, !tbaa !5
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  store i8* @g_5, i8** %32, !tbaa !5
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* @g_427, i8** %33, !tbaa !5
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* @g_5, i8** %34, !tbaa !5
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* @g_5, i8** %35, !tbaa !5
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  store i8* @g_427, i8** %36, !tbaa !5
  %37 = getelementptr inbounds [10 x i8*], [10 x i8*]* %26, i64 1
  %38 = getelementptr inbounds [10 x i8*], [10 x i8*]* %37, i64 0, i64 0
  store i8* @g_627, i8** %38, !tbaa !5
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  store i8* @g_5, i8** %39, !tbaa !5
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  store i8* %l_1375, i8** %40, !tbaa !5
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* @g_627, i8** %41, !tbaa !5
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  store i8* @g_627, i8** %42, !tbaa !5
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  store i8* @g_427, i8** %43, !tbaa !5
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* @g_5, i8** %44, !tbaa !5
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* @g_5, i8** %45, !tbaa !5
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* @g_427, i8** %46, !tbaa !5
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* @g_627, i8** %47, !tbaa !5
  %48 = getelementptr inbounds [10 x i8*], [10 x i8*]* %37, i64 1
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %48, i64 0, i64 0
  store i8* @g_627, i8** %49, !tbaa !5
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* @g_427, i8** %50, !tbaa !5
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  store i8* @g_427, i8** %51, !tbaa !5
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* @g_627, i8** %52, !tbaa !5
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* @g_427, i8** %53, !tbaa !5
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* @g_5, i8** %54, !tbaa !5
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  store i8* @g_5, i8** %55, !tbaa !5
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* @g_427, i8** %56, !tbaa !5
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* @g_5, i8** %57, !tbaa !5
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  store i8* @g_627, i8** %58, !tbaa !5
  %59 = getelementptr inbounds [10 x i8*], [10 x i8*]* %48, i64 1
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %59, i64 0, i64 0
  store i8* @g_5, i8** %60, !tbaa !5
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* @g_5, i8** %61, !tbaa !5
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* @g_427, i8** %62, !tbaa !5
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* @g_5, i8** %63, !tbaa !5
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* @g_627, i8** %64, !tbaa !5
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* @g_5, i8** %65, !tbaa !5
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* @g_427, i8** %66, !tbaa !5
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  store i8* @g_5, i8** %67, !tbaa !5
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  store i8* @g_5, i8** %68, !tbaa !5
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* @g_427, i8** %69, !tbaa !5
  %70 = getelementptr inbounds [10 x i8*], [10 x i8*]* %59, i64 1
  %71 = getelementptr inbounds [10 x i8*], [10 x i8*]* %70, i64 0, i64 0
  store i8* @g_627, i8** %71, !tbaa !5
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* @g_5, i8** %72, !tbaa !5
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  store i8* %l_1375, i8** %73, !tbaa !5
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* @g_627, i8** %74, !tbaa !5
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  store i8* @g_627, i8** %75, !tbaa !5
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  store i8* @g_427, i8** %76, !tbaa !5
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  store i8* @g_5, i8** %77, !tbaa !5
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  store i8* @g_5, i8** %78, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  store i8* @g_427, i8** %79, !tbaa !5
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* @g_627, i8** %80, !tbaa !5
  %81 = getelementptr inbounds [10 x i8*], [10 x i8*]* %70, i64 1
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* %81, i64 0, i64 0
  store i8* @g_627, i8** %82, !tbaa !5
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  store i8* @g_427, i8** %83, !tbaa !5
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  store i8* @g_427, i8** %84, !tbaa !5
  %85 = getelementptr inbounds i8*, i8** %84, i64 1
  store i8* @g_627, i8** %85, !tbaa !5
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  store i8* @g_427, i8** %86, !tbaa !5
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* @g_627, i8** %87, !tbaa !5
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* @g_5, i8** %88, !tbaa !5
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  store i8* @g_427, i8** %89, !tbaa !5
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  store i8* @g_627, i8** %90, !tbaa !5
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  store i8* @g_427, i8** %91, !tbaa !5
  %92 = getelementptr inbounds [10 x i8*], [10 x i8*]* %81, i64 1
  %93 = getelementptr inbounds [10 x i8*], [10 x i8*]* %92, i64 0, i64 0
  store i8* @g_627, i8** %93, !tbaa !5
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  store i8* @g_5, i8** %94, !tbaa !5
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* @g_427, i8** %95, !tbaa !5
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  store i8* @g_627, i8** %96, !tbaa !5
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* @g_427, i8** %97, !tbaa !5
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  store i8* @g_627, i8** %98, !tbaa !5
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  store i8* @g_427, i8** %99, !tbaa !5
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  store i8* @g_5, i8** %100, !tbaa !5
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  store i8* @g_627, i8** %101, !tbaa !5
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* @g_5, i8** %102, !tbaa !5
  %103 = getelementptr inbounds [10 x i8*], [10 x i8*]* %92, i64 1
  %104 = getelementptr inbounds [10 x i8*], [10 x i8*]* %103, i64 0, i64 0
  store i8* @g_5, i8** %104, !tbaa !5
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* @g_5, i8** %105, !tbaa !5
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  store i8* @g_627, i8** %106, !tbaa !5
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  store i8* @g_5, i8** %107, !tbaa !5
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  store i8* @g_427, i8** %108, !tbaa !5
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  store i8* null, i8** %109, !tbaa !5
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  store i8* @g_5, i8** %110, !tbaa !5
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  store i8* @g_5, i8** %111, !tbaa !5
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  store i8* null, i8** %112, !tbaa !5
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  store i8* @g_427, i8** %113, !tbaa !5
  %114 = getelementptr inbounds [10 x i8*], [10 x i8*]* %103, i64 1
  %115 = getelementptr inbounds [10 x i8*], [10 x i8*]* %114, i64 0, i64 0
  store i8* @g_5, i8** %115, !tbaa !5
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  store i8* @g_427, i8** %116, !tbaa !5
  %117 = getelementptr inbounds i8*, i8** %116, i64 1
  store i8* @g_427, i8** %117, !tbaa !5
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  store i8* @g_5, i8** %118, !tbaa !5
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  store i8* @g_5, i8** %119, !tbaa !5
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  store i8* @g_627, i8** %120, !tbaa !5
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  store i8* @g_5, i8** %121, !tbaa !5
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  store i8* @g_427, i8** %122, !tbaa !5
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  store i8* @g_627, i8** %123, !tbaa !5
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* @g_427, i8** %124, !tbaa !5
  %125 = getelementptr inbounds [10 x i8*], [10 x i8*]* %114, i64 1
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %125, i64 0, i64 0
  store i8* @g_627, i8** %126, !tbaa !5
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  store i8* @g_5, i8** %127, !tbaa !5
  %128 = getelementptr inbounds i8*, i8** %127, i64 1
  store i8* @g_427, i8** %128, !tbaa !5
  %129 = getelementptr inbounds i8*, i8** %128, i64 1
  store i8* @g_627, i8** %129, !tbaa !5
  %130 = getelementptr inbounds i8*, i8** %129, i64 1
  store i8* @g_427, i8** %130, !tbaa !5
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  store i8* @g_627, i8** %131, !tbaa !5
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  store i8* @g_427, i8** %132, !tbaa !5
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  store i8* @g_5, i8** %133, !tbaa !5
  %134 = getelementptr inbounds i8*, i8** %133, i64 1
  store i8* @g_627, i8** %134, !tbaa !5
  %135 = getelementptr inbounds i8*, i8** %134, i64 1
  store i8* @g_5, i8** %135, !tbaa !5
  %136 = bitcast i8*** %l_1423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #1
  %137 = getelementptr inbounds [10 x [10 x i8*]], [10 x [10 x i8*]]* %l_1401, i32 0, i64 1
  %138 = getelementptr inbounds [10 x i8*], [10 x i8*]* %137, i32 0, i64 9
  store i8** %138, i8*** %l_1423, align 8, !tbaa !5
  %139 = bitcast i32**** %l_1443 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #1
  store i32*** @g_155, i32**** %l_1443, align 8, !tbaa !5
  %140 = bitcast i32* %l_1446 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  store i32 -1995694684, i32* %l_1446, align 4, !tbaa !1
  %141 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %150, %17
  %144 = load i32, i32* %i1, align 4, !tbaa !1
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %153

; <label>:146                                     ; preds = %143
  %147 = load i32, i32* %i1, align 4, !tbaa !1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1376, i32 0, i64 %148
  store i32* @g_69, i32** %149, align 8, !tbaa !5
  br label %150

; <label>:150                                     ; preds = %146
  %151 = load i32, i32* %i1, align 4, !tbaa !1
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %i1, align 4, !tbaa !1
  br label %143

; <label>:153                                     ; preds = %143
  %154 = load i64, i64* %l_1378, align 8, !tbaa !7
  %155 = add i64 %154, -1
  store i64 %155, i64* %l_1378, align 8, !tbaa !7
  store i32 0, i32* @g_1048, align 4, !tbaa !1
  br label %156

; <label>:156                                     ; preds = %163, %153
  %157 = load i32, i32* @g_1048, align 4, !tbaa !1
  %158 = icmp ult i32 %157, 4
  br i1 %158, label %159, label %166

; <label>:159                                     ; preds = %156
  %160 = load i32, i32* @g_1048, align 4, !tbaa !1
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i16***], [4 x i16***]* @g_1326, i32 0, i64 %161
  store i16*** @g_1327, i16**** %162, align 8, !tbaa !5
  br label %163

; <label>:163                                     ; preds = %159
  %164 = load i32, i32* @g_1048, align 4, !tbaa !1
  %165 = add i32 %164, 1
  store i32 %165, i32* @g_1048, align 4, !tbaa !1
  br label %156

; <label>:166                                     ; preds = %156
  %167 = load i32, i32* %l_1393, align 4, !tbaa !1
  %168 = trunc i32 %167 to i16
  %169 = load i16*, i16** %l_1394, align 8, !tbaa !5
  store i16 %168, i16* %169, align 2, !tbaa !10
  %170 = load i16, i16* %1, align 2, !tbaa !10
  %171 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %168, i16 signext %170)
  %172 = sext i16 %171 to i64
  %173 = load i64, i64* %l_1378, align 8, !tbaa !7
  %174 = icmp ugt i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = trunc i32 %175 to i16
  %177 = load i32, i32* @g_72, align 4, !tbaa !1
  %178 = load i32*, i32** %l_1372, align 8, !tbaa !5
  %179 = load i32, i32* %178, align 4, !tbaa !1
  %180 = load i8, i8* %l_1375, align 1, !tbaa !9
  %181 = sext i8 %180 to i32
  %182 = xor i32 %179, %181
  %183 = trunc i32 %182 to i16
  %184 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %183, i32 1)
  %185 = load i16, i16* %1, align 2, !tbaa !10
  %186 = trunc i16 %185 to i8
  %187 = load i32*, i32** %l_1374, align 8, !tbaa !5
  %188 = load i32, i32* %187, align 4, !tbaa !1
  %189 = load i64, i64* getelementptr inbounds ([1 x [1 x i64]], [1 x [1 x i64]]* @g_940, i32 0, i64 0, i64 0), align 8, !tbaa !7
  %190 = load i32*, i32** %l_1374, align 8, !tbaa !5
  %191 = load i32, i32* %190, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = xor i64 %189, %192
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1377, i32 0, i64 5
  store i32 %194, i32* %195, align 4, !tbaa !1
  %196 = load i32*, i32** %l_1374, align 8, !tbaa !5
  store i32 %194, i32* %196, align 4, !tbaa !1
  %197 = trunc i32 %194 to i8
  %198 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %186, i8 signext %197)
  %199 = sext i8 %198 to i32
  store i32 %199, i32* %l_1402, align 4, !tbaa !1
  %200 = trunc i32 %199 to i16
  %201 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %184, i16 signext %200)
  %202 = sext i16 %201 to i64
  %203 = xor i64 %202, -1
  %204 = load i32*, i32** %l_1372, align 8, !tbaa !5
  %205 = load i32, i32* %204, align 4, !tbaa !1
  %206 = sext i32 %205 to i64
  %207 = icmp sgt i64 %203, %206
  %208 = zext i1 %207 to i32
  store i32 %208, i32* %l_1403, align 4, !tbaa !1
  %209 = icmp ne i32 %177, %208
  %210 = zext i1 %209 to i32
  %211 = load i16, i16* %1, align 2, !tbaa !10
  %212 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %176, i16 zeroext %211)
  %213 = zext i16 %212 to i32
  %214 = load i8, i8* %l_1375, align 1, !tbaa !9
  %215 = sext i8 %214 to i32
  %216 = icmp slt i32 %213, %215
  %217 = zext i1 %216 to i32
  %218 = sext i32 %217 to i64
  %219 = load i16, i16* %1, align 2, !tbaa !10
  %220 = sext i16 %219 to i64
  %221 = call i64 @safe_mod_func_uint64_t_u_u(i64 %218, i64 %220)
  %222 = trunc i64 %221 to i16
  %223 = load i16, i16* %1, align 2, !tbaa !10
  %224 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %222, i16 zeroext %223)
  %225 = zext i16 %224 to i32
  %226 = call i32 @safe_add_func_int32_t_s_s(i32 -1396642167, i32 %225)
  %227 = call i32 @safe_sub_func_uint32_t_u_u(i32 %226, i32 1)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %420

; <label>:229                                     ; preds = %166
  %230 = bitcast i64* %l_1404 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %230) #1
  store i64 -4818131924072295784, i64* %l_1404, align 8, !tbaa !7
  %231 = bitcast [9 x i64*]* %l_1408 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %231) #1
  %232 = bitcast [9 x i64*]* %l_1408 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %232, i8* bitcast ([9 x i64*]* @func_11.l_1408 to i8*), i64 72, i32 16, i1 false)
  %233 = bitcast i32* %l_1409 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %233) #1
  store i32 3, i32* %l_1409, align 4, !tbaa !1
  %234 = bitcast [8 x i64]* %l_1415 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %234) #1
  %235 = bitcast [8 x i64]* %l_1415 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* bitcast ([8 x i64]* @func_11.l_1415 to i8*), i64 64, i32 16, i1 false)
  %236 = bitcast i8*** %l_1422 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #1
  %237 = getelementptr inbounds [10 x [10 x i8*]], [10 x [10 x i8*]]* %l_1401, i32 0, i64 7
  %238 = getelementptr inbounds [10 x i8*], [10 x i8*]* %237, i32 0, i64 2
  store i8** %238, i8*** %l_1422, align 8, !tbaa !5
  %239 = bitcast [4 x [3 x i32***]]* %l_1442 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %239) #1
  %240 = bitcast [4 x [3 x i32***]]* %l_1442 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %240, i8* bitcast ([4 x [3 x i32***]]* @func_11.l_1442 to i8*), i64 96, i32 16, i1 false)
  %241 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %241) #1
  %242 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %242) #1
  %243 = load i64, i64* %l_1404, align 8, !tbaa !7
  %244 = add i64 %243, 1
  store i64 %244, i64* %l_1404, align 8, !tbaa !7
  %245 = load i32*, i32** %l_1374, align 8, !tbaa !5
  %246 = load i32, i32* %245, align 4, !tbaa !1
  %247 = load i32, i32* %l_1409, align 4, !tbaa !1
  %248 = and i32 %247, %246
  store i32 %248, i32* %l_1409, align 4, !tbaa !1
  %249 = sext i32 %248 to i64
  %250 = call i64 @safe_unary_minus_func_int64_t_s(i64 %249)
  %251 = load i16, i16* %1, align 2, !tbaa !10
  %252 = sext i16 %251 to i64
  %253 = xor i64 %252, 1
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

; <label>:255                                     ; preds = %229
  %256 = load i16, i16* %1, align 2, !tbaa !10
  %257 = sext i16 %256 to i64
  %258 = icmp slt i64 %257, 0
  br label %259

; <label>:259                                     ; preds = %255, %229
  %260 = phi i1 [ false, %229 ], [ %258, %255 ]
  %261 = zext i1 %260 to i32
  %262 = load i16, i16* %1, align 2, !tbaa !10
  %263 = sext i16 %262 to i32
  store i32***** null, i32****** @g_1413, align 8, !tbaa !5
  %264 = icmp eq i32 %263, 0
  %265 = zext i1 %264 to i32
  %266 = icmp sge i32 %261, %265
  %267 = zext i1 %266 to i32
  %268 = trunc i32 %267 to i8
  %269 = load i16, i16* %1, align 2, !tbaa !10
  %270 = trunc i16 %269 to i8
  %271 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %268, i8 signext %270)
  %272 = sext i8 %271 to i64
  %273 = icmp slt i64 %250, %272
  br i1 %273, label %274, label %278

; <label>:274                                     ; preds = %259
  %275 = load i16, i16* %1, align 2, !tbaa !10
  %276 = sext i16 %275 to i32
  %277 = icmp ne i32 %276, 0
  br label %278

; <label>:278                                     ; preds = %274, %259
  %279 = phi i1 [ false, %259 ], [ %277, %274 ]
  %280 = zext i1 %279 to i32
  %281 = load i16, i16* %1, align 2, !tbaa !10
  %282 = sext i16 %281 to i32
  %283 = icmp sgt i32 %280, %282
  br i1 %283, label %284, label %285

; <label>:284                                     ; preds = %278
  br label %285

; <label>:285                                     ; preds = %284, %278
  %286 = phi i1 [ false, %278 ], [ true, %284 ]
  %287 = zext i1 %286 to i32
  %288 = sext i32 %287 to i64
  %289 = xor i64 %288, 34915
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %295, label %291

; <label>:291                                     ; preds = %285
  %292 = load i16, i16* %1, align 2, !tbaa !10
  %293 = sext i16 %292 to i32
  %294 = icmp ne i32 %293, 0
  br label %295

; <label>:295                                     ; preds = %291, %285
  %296 = phi i1 [ true, %285 ], [ %294, %291 ]
  %297 = zext i1 %296 to i32
  %298 = load i16, i16* %1, align 2, !tbaa !10
  %299 = sext i16 %298 to i32
  %300 = icmp sgt i32 %297, %299
  %301 = zext i1 %300 to i32
  %302 = sext i32 %301 to i64
  %303 = or i64 %302, 5
  %304 = getelementptr inbounds [8 x i64], [8 x i64]* %l_1415, i32 0, i64 6
  %305 = load i64, i64* %304, align 8, !tbaa !7
  %306 = xor i64 %303, %305
  %307 = trunc i64 %306 to i32
  %308 = load i32*, i32** %l_1372, align 8, !tbaa !5
  store i32 %307, i32* %308, align 4, !tbaa !1
  %309 = load i32*, i32** %l_1374, align 8, !tbaa !5
  store i32 %307, i32* %309, align 4, !tbaa !1
  %310 = load i8**, i8*** %l_1422, align 8, !tbaa !5
  %311 = getelementptr inbounds [10 x [10 x i8*]], [10 x [10 x i8*]]* %l_1401, i32 0, i64 7
  %312 = getelementptr inbounds [10 x i8*], [10 x i8*]* %311, i32 0, i64 2
  store i8** %312, i8*** %l_1423, align 8, !tbaa !5
  %313 = icmp eq i8** %310, %312
  %314 = zext i1 %313 to i32
  %315 = trunc i32 %314 to i8
  %316 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %315, i32 0)
  %317 = sext i8 %316 to i16
  %318 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext 0, i16 signext %317)
  %319 = sext i16 %318 to i64
  %320 = load i16, i16* %1, align 2, !tbaa !10
  %321 = sext i16 %320 to i64
  %322 = call i64 @safe_div_func_int64_t_s_s(i64 %321, i64 8400181904664019517)
  %323 = trunc i64 %322 to i16
  %324 = getelementptr inbounds [4 x [3 x i32***]], [4 x [3 x i32***]]* %l_1442, i32 0, i64 0
  %325 = getelementptr inbounds [3 x i32***], [3 x i32***]* %324, i32 0, i64 1
  %326 = load i32***, i32**** %325, align 8, !tbaa !5
  %327 = load i32***, i32**** %l_1443, align 8, !tbaa !5
  %328 = icmp ne i32*** %326, %327
  %329 = zext i1 %328 to i32
  %330 = sext i32 %329 to i64
  %331 = and i64 %330, 982608081
  %332 = load i32*, i32** %l_1374, align 8, !tbaa !5
  %333 = load i32, i32* %332, align 4, !tbaa !1
  %334 = load i16, i16* %1, align 2, !tbaa !10
  %335 = sext i16 %334 to i32
  %336 = icmp sgt i32 %333, %335
  %337 = zext i1 %336 to i32
  %338 = trunc i32 %337 to i8
  %339 = load i8**, i8*** @g_492, align 8, !tbaa !5
  %340 = load i8*, i8** %339, align 8, !tbaa !5
  %341 = load i8, i8* %340, align 1, !tbaa !9
  %342 = sext i8 %341 to i32
  %343 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %338, i32 %342)
  %344 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %345 = load volatile i16*, i16** %344, align 8, !tbaa !5
  %346 = load volatile i16, i16* %345, align 2, !tbaa !10
  %347 = load i64, i64* %l_1445, align 8, !tbaa !7
  %348 = trunc i64 %347 to i16
  %349 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %346, i16 zeroext %348)
  %350 = zext i16 %349 to i32
  %351 = load i16, i16* %1, align 2, !tbaa !10
  %352 = sext i16 %351 to i32
  %353 = icmp eq i32 %350, %352
  %354 = zext i1 %353 to i32
  %355 = trunc i32 %354 to i16
  %356 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %323, i16 signext %355)
  %357 = sext i16 %356 to i32
  %358 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1377, i32 0, i64 5
  %359 = load i32, i32* %358, align 4, !tbaa !1
  %360 = xor i32 %357, %359
  %361 = load i16, i16* %1, align 2, !tbaa !10
  %362 = sext i16 %361 to i64
  %363 = load i64*, i64** @g_1026, align 8, !tbaa !5
  %364 = load i64, i64* %363, align 8, !tbaa !7
  %365 = call i64 @safe_mod_func_int64_t_s_s(i64 %362, i64 %364)
  %366 = and i64 %365, 6133258067417507823
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %369

; <label>:368                                     ; preds = %295
  br label %369

; <label>:369                                     ; preds = %368, %295
  %370 = phi i1 [ false, %295 ], [ true, %368 ]
  %371 = zext i1 %370 to i32
  %372 = trunc i32 %371 to i16
  %373 = load i16, i16* %1, align 2, !tbaa !10
  %374 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %372, i16 signext %373)
  %375 = sext i16 %374 to i64
  %376 = icmp uge i64 %375, -1
  %377 = zext i1 %376 to i32
  %378 = sext i32 %377 to i64
  %379 = icmp uge i64 %378, -3
  %380 = zext i1 %379 to i32
  %381 = call i32 @safe_add_func_int32_t_s_s(i32 %380, i32 1516888096)
  %382 = sext i32 %381 to i64
  %383 = icmp ule i64 %382, -557412335044865527
  %384 = zext i1 %383 to i32
  %385 = trunc i32 %384 to i16
  %386 = load i64, i64* %l_1378, align 8, !tbaa !7
  %387 = trunc i64 %386 to i16
  %388 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %385, i16 zeroext %387)
  %389 = zext i16 %388 to i32
  %390 = load i8**, i8*** @g_492, align 8, !tbaa !5
  %391 = load i8*, i8** %390, align 8, !tbaa !5
  %392 = load i8, i8* %391, align 1, !tbaa !9
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %389, %393
  %395 = zext i1 %394 to i32
  %396 = trunc i32 %395 to i8
  %397 = load i16, i16* %1, align 2, !tbaa !10
  %398 = trunc i16 %397 to i8
  %399 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %396, i8 zeroext %398)
  %400 = zext i8 %399 to i64
  %401 = call i64 @safe_add_func_uint64_t_u_u(i64 %319, i64 %400)
  %402 = trunc i64 %401 to i32
  %403 = load i32***, i32**** @g_143, align 8, !tbaa !5
  %404 = load i32**, i32*** %403, align 8, !tbaa !5
  %405 = load i32*, i32** %404, align 8, !tbaa !5
  store volatile i32 %402, i32* %405, align 4, !tbaa !1
  %406 = load i32, i32* %l_1446, align 4, !tbaa !1
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

; <label>:408                                     ; preds = %369
  store i32 4, i32* %2
  br label %410

; <label>:409                                     ; preds = %369
  store i32 0, i32* %2
  br label %410

; <label>:410                                     ; preds = %409, %408
  %411 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #1
  %412 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %412) #1
  %413 = bitcast [4 x [3 x i32***]]* %l_1442 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %413) #1
  %414 = bitcast i8*** %l_1422 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %414) #1
  %415 = bitcast [8 x i64]* %l_1415 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %415) #1
  %416 = bitcast i32* %l_1409 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %417 = bitcast [9 x i64*]* %l_1408 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %417) #1
  %418 = bitcast i64* %l_1404 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %418) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %434 [
    i32 0, label %419
  ]

; <label>:419                                     ; preds = %410
  br label %433

; <label>:420                                     ; preds = %166
  %421 = bitcast [9 x i32]* %l_1447 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %421) #1
  %422 = bitcast [9 x i32]* %l_1447 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %422, i8* bitcast ([9 x i32]* @func_11.l_1447 to i8*), i64 36, i32 16, i1 false)
  %423 = bitcast i32* %l_1449 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %423) #1
  store i32 -2, i32* %l_1449, align 4, !tbaa !1
  %424 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %424) #1
  %425 = load i16, i16* %1, align 2, !tbaa !10
  %426 = sext i16 %425 to i32
  %427 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1447, i32 0, i64 0
  store i32 %426, i32* %427, align 4, !tbaa !1
  %428 = load i32, i32* %l_1449, align 4, !tbaa !1
  %429 = add i32 %428, -1
  store i32 %429, i32* %l_1449, align 4, !tbaa !1
  %430 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast i32* %l_1449 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #1
  %432 = bitcast [9 x i32]* %l_1447 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %432) #1
  br label %433

; <label>:433                                     ; preds = %420, %419
  store i32 0, i32* %2
  br label %434

; <label>:434                                     ; preds = %433, %410
  %435 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #1
  %436 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  %437 = bitcast i32* %l_1446 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %438 = bitcast i32**** %l_1443 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %438) #1
  %439 = bitcast i8*** %l_1423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439) #1
  %440 = bitcast [10 x [10 x i8*]]* %l_1401 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %440) #1
  %441 = bitcast i16** %l_1394 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %441) #1
  %442 = bitcast i32* %l_1393 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #1
  %443 = bitcast [2 x i32*]* %l_1376 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %443) #1
  %444 = bitcast i32** %l_1374 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = bitcast [10 x i32]* %l_1373 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %445) #1
  %446 = bitcast i32** %l_1372 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %446) #1
  %cleanup.dest.5 = load i32, i32* %2
  switch i32 %cleanup.dest.5, label %571 [
    i32 0, label %447
    i32 4, label %448
  ]

; <label>:447                                     ; preds = %434
  br label %448

; <label>:448                                     ; preds = %447, %434
  %449 = load i64, i64* @g_116, align 8, !tbaa !7
  %450 = trunc i64 %449 to i16
  %451 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %450, i16 signext 1)
  %452 = sext i16 %451 to i64
  store i64 %452, i64* @g_116, align 8, !tbaa !7
  br label %14

; <label>:453                                     ; preds = %14
  store i32 0, i32* %l_1402, align 4, !tbaa !1
  br label %454

; <label>:454                                     ; preds = %555, %453
  %455 = load i32, i32* %l_1402, align 4, !tbaa !1
  %456 = icmp eq i32 %455, 8
  br i1 %456, label %457, label %558

; <label>:457                                     ; preds = %454
  %458 = bitcast i32* %l_1460 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %458) #1
  store i32 1510280717, i32* %l_1460, align 4, !tbaa !1
  %459 = bitcast [8 x [10 x [2 x i64**]]]* %l_1471 to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %459) #1
  %460 = bitcast [8 x [10 x [2 x i64**]]]* %l_1471 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %460, i8* bitcast ([8 x [10 x [2 x i64**]]]* @func_11.l_1471 to i8*), i64 1280, i32 16, i1 false)
  %461 = bitcast i16** %l_1472 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %461) #1
  store i16* @g_310, i16** %l_1472, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1473) #1
  store i8 -1, i8* %l_1473, align 1, !tbaa !9
  %462 = bitcast i16** %l_1474 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %462) #1
  store i16* null, i16** %l_1474, align 8, !tbaa !5
  %463 = bitcast [3 x [5 x i16*]]* %l_1475 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %463) #1
  %464 = bitcast [3 x [5 x i16*]]* %l_1475 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %464, i8* bitcast ([3 x [5 x i16*]]* @func_11.l_1475 to i8*), i64 120, i32 16, i1 false)
  %465 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %465) #1
  %466 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %466) #1
  %467 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %467) #1
  %468 = load i32, i32* %l_1460, align 4, !tbaa !1
  %469 = trunc i32 %468 to i16
  %470 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_1249, i32 0, i64 5), align 4, !tbaa !1
  %471 = load i64***, i64**** %l_1463, align 8, !tbaa !5
  %472 = icmp ne i64*** null, %471
  %473 = zext i1 %472 to i32
  %474 = sext i32 %473 to i64
  %475 = load i32, i32* %l_1466, align 4, !tbaa !1
  %476 = trunc i32 %475 to i8
  %477 = load i8**, i8*** @g_351, align 8, !tbaa !5
  %478 = load i8*, i8** %477, align 8, !tbaa !5
  %479 = icmp ne i8* null, %478
  %480 = zext i1 %479 to i32
  %481 = trunc i32 %480 to i8
  %482 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %476, i8 signext %481)
  %483 = sext i8 %482 to i64
  %484 = load i64***, i64**** @g_1097, align 8, !tbaa !5
  %485 = load i64**, i64*** %484, align 8, !tbaa !5
  %486 = getelementptr inbounds [8 x [10 x [2 x i64**]]], [8 x [10 x [2 x i64**]]]* %l_1471, i32 0, i64 2
  %487 = getelementptr inbounds [10 x [2 x i64**]], [10 x [2 x i64**]]* %486, i32 0, i64 8
  %488 = getelementptr inbounds [2 x i64**], [2 x i64**]* %487, i32 0, i64 1
  %489 = load i64**, i64*** %488, align 8, !tbaa !5
  %490 = icmp ne i64** %485, %489
  %491 = zext i1 %490 to i32
  %492 = load i16, i16* %1, align 2, !tbaa !10
  %493 = sext i16 %492 to i32
  %494 = load i32, i32* %l_1403, align 4, !tbaa !1
  %495 = and i32 %493, %494
  %496 = load i16, i16* %1, align 2, !tbaa !10
  %497 = sext i16 %496 to i32
  %498 = or i32 %495, %497
  %499 = load i16, i16* %1, align 2, !tbaa !10
  %500 = sext i16 %499 to i32
  %501 = load i16*, i16** %l_1472, align 8, !tbaa !5
  %502 = load i16, i16* %501, align 2, !tbaa !10
  %503 = sext i16 %502 to i32
  %504 = xor i32 %503, %500
  %505 = trunc i32 %504 to i16
  store i16 %505, i16* %501, align 2, !tbaa !10
  %506 = load i8, i8* %l_1473, align 1, !tbaa !9
  %507 = zext i8 %506 to i32
  %508 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %505, i32 %507)
  %509 = sext i16 %508 to i32
  %510 = load i32, i32* %l_1460, align 4, !tbaa !1
  %511 = and i32 %509, %510
  %512 = zext i32 %511 to i64
  %513 = load i64***, i64**** @g_1097, align 8, !tbaa !5
  %514 = load i64**, i64*** %513, align 8, !tbaa !5
  %515 = load i64*, i64** %514, align 8, !tbaa !5
  %516 = load i64, i64* %515, align 8, !tbaa !7
  %517 = call i64 @safe_add_func_uint64_t_u_u(i64 %512, i64 %516)
  %518 = icmp ule i64 %483, %517
  %519 = zext i1 %518 to i32
  %520 = load i32, i32* %l_1448, align 4, !tbaa !1
  %521 = xor i32 %519, %520
  %522 = sext i32 %521 to i64
  %523 = and i64 %522, 0
  %524 = icmp ne i64 %474, %523
  %525 = zext i1 %524 to i32
  %526 = trunc i32 %525 to i16
  %527 = load i16, i16* %1, align 2, !tbaa !10
  %528 = sext i16 %527 to i32
  %529 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %526, i32 %528)
  %530 = zext i16 %529 to i32
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %536, label %532

; <label>:532                                     ; preds = %457
  %533 = load i8, i8* %l_1473, align 1, !tbaa !9
  %534 = zext i8 %533 to i32
  %535 = icmp ne i32 %534, 0
  br label %536

; <label>:536                                     ; preds = %532, %457
  %537 = phi i1 [ true, %457 ], [ %535, %532 ]
  %538 = zext i1 %537 to i32
  %539 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %469, i32 %538)
  %540 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %539, i32 9)
  %541 = zext i16 %540 to i32
  %542 = load i16, i16* %1, align 2, !tbaa !10
  %543 = sext i16 %542 to i32
  %544 = or i32 %541, %543
  store i32 %544, i32* %l_1448, align 4, !tbaa !1
  %545 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext 9, i32 %544)
  %546 = zext i16 %545 to i32
  store i32 %546, i32* %l_1403, align 4, !tbaa !1
  %547 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %549 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %549) #1
  %550 = bitcast [3 x [5 x i16*]]* %l_1475 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %550) #1
  %551 = bitcast i16** %l_1474 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %551) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1473) #1
  %552 = bitcast i16** %l_1472 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %552) #1
  %553 = bitcast [8 x [10 x [2 x i64**]]]* %l_1471 to i8*
  call void @llvm.lifetime.end(i64 1280, i8* %553) #1
  %554 = bitcast i32* %l_1460 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %554) #1
  br label %555

; <label>:555                                     ; preds = %536
  %556 = load i32, i32* %l_1402, align 4, !tbaa !1
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %l_1402, align 4, !tbaa !1
  br label %454

; <label>:558                                     ; preds = %454
  %559 = load i32, i32* %l_1448, align 4, !tbaa !1
  %560 = trunc i32 %559 to i16
  store i32 1, i32* %2
  %561 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %561) #1
  %562 = bitcast i32* %l_1466 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %562) #1
  %563 = bitcast i64**** %l_1463 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %563) #1
  %564 = bitcast i32* %l_1448 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %564) #1
  %565 = bitcast i64* %l_1445 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %565) #1
  %566 = bitcast i64* %l_1414 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %566) #1
  %567 = bitcast i32* %l_1403 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %l_1402 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i64* %l_1378 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %569) #1
  %570 = bitcast [10 x i32]* %l_1377 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %570) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1375) #1
  ret i16 %560

; <label>:571                                     ; preds = %434
  unreachable
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
define internal signext i16 @func_17(i8 zeroext %p_18, i16 signext %p_19, i32 %p_20) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %l_1302 = alloca i32*, align 8
  %l_1344 = alloca i32**, align 8
  %l_1367 = alloca i32, align 4
  %l_1316 = alloca i64****, align 8
  %l_1318 = alloca i32, align 4
  %l_1341 = alloca i32**, align 8
  %l_1354 = alloca i8*, align 8
  %l_1363 = alloca i32**, align 8
  %l_1364 = alloca i32*, align 8
  %l_1365 = alloca i8*, align 8
  %l_1366 = alloca i32*, align 8
  store i8 %p_18, i8* %1, align 1, !tbaa !9
  store i16 %p_19, i16* %2, align 2, !tbaa !10
  store i32 %p_20, i32* %3, align 4, !tbaa !1
  %4 = bitcast i32** %l_1302 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_1249, i32 0, i64 5), i32** %l_1302, align 8, !tbaa !5
  %5 = bitcast i32*** %l_1344 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32** null, i32*** %l_1344, align 8, !tbaa !5
  %6 = bitcast i32* %l_1367 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 2050558990, i32* %l_1367, align 4, !tbaa !1
  %7 = load i32***, i32**** @g_579, align 8, !tbaa !5
  %8 = load i32**, i32*** %7, align 8, !tbaa !5
  store i32* null, i32** %8, align 8, !tbaa !5
  store i32* null, i32** %l_1302, align 8, !tbaa !5
  store i32 0, i32* @g_524, align 4, !tbaa !1
  br label %9

; <label>:9                                       ; preds = %29, %0
  %10 = load i32, i32* @g_524, align 4, !tbaa !1
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %32

; <label>:12                                      ; preds = %9
  %13 = bitcast i64***** %l_1316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64**** @g_1097, i64***** %l_1316, align 8, !tbaa !5
  %14 = bitcast i32* %l_1318 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 1717977488, i32* %l_1318, align 4, !tbaa !1
  %15 = bitcast i32*** %l_1341 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32** null, i32*** %l_1341, align 8, !tbaa !5
  %16 = bitcast i8** %l_1354 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 0, i64 1, i64 0), i8** %l_1354, align 8, !tbaa !5
  %17 = bitcast i32*** %l_1363 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32** @g_1240, i32*** %l_1363, align 8, !tbaa !5
  %18 = bitcast i32** %l_1364 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* @g_1048, i32** %l_1364, align 8, !tbaa !5
  %19 = bitcast i8** %l_1365 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8* @g_427, i8** %l_1365, align 8, !tbaa !5
  %20 = bitcast i32** %l_1366 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32* @g_221, i32** %l_1366, align 8, !tbaa !5
  %21 = bitcast i32** %l_1366 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i8** %l_1365 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32** %l_1364 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast i32*** %l_1363 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i8** %l_1354 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32*** %l_1341 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %l_1318 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i64***** %l_1316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  br label %29

; <label>:29                                      ; preds = %12
  %30 = load i32, i32* @g_524, align 4, !tbaa !1
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @g_524, align 4, !tbaa !1
  br label %9

; <label>:32                                      ; preds = %9
  %33 = load i16, i16* %2, align 2, !tbaa !10
  %34 = bitcast i32* %l_1367 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32*** %l_1344 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32** %l_1302 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  ret i16 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @func_21(i16 zeroext %p_22) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %l_37 = alloca i8, align 1
  %l_1053 = alloca i32, align 4
  %l_1054 = alloca i32, align 4
  %l_1061 = alloca i32*, align 8
  %l_1103 = alloca [10 x i32], align 16
  %l_1155 = alloca i32, align 4
  %l_1253 = alloca [6 x [4 x i32]], align 16
  %l_1263 = alloca i32, align 4
  %l_1283 = alloca i16*, align 8
  %l_1282 = alloca i16**, align 8
  %l_1290 = alloca [10 x i16*], align 16
  %l_1296 = alloca i32, align 4
  %l_1299 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_33 = alloca i32*, align 8
  %l_35 = alloca i32*, align 8
  %l_36 = alloca i32*, align 8
  %l_1077 = alloca i32, align 4
  %l_1108 = alloca i32*, align 8
  %l_1120 = alloca i16, align 2
  %l_1159 = alloca [1 x i32], align 4
  %l_1177 = alloca [7 x [3 x [1 x i16]]], align 16
  %l_1186 = alloca i32, align 4
  %l_1250 = alloca i32, align 4
  %l_1252 = alloca i32, align 4
  %l_1255 = alloca i32, align 4
  %l_1259 = alloca i32, align 4
  %l_1261 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1074 = alloca i32*, align 8
  %l_1078 = alloca i32, align 4
  %l_1239 = alloca i32*, align 8
  %l_1251 = alloca i32, align 4
  %l_1254 = alloca [8 x i8], align 1
  %l_1257 = alloca i32, align 4
  %l_1262 = alloca [9 x [4 x i32]], align 16
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %l_1062 = alloca i32*, align 8
  %l_1075 = alloca i32, align 4
  %l_1101 = alloca i64, align 8
  %l_1138 = alloca i8*, align 8
  %l_1137 = alloca i8**, align 8
  %l_1158 = alloca i32, align 4
  %l_1167 = alloca i64*, align 8
  %l_1170 = alloca i32*****, align 8
  %l_1171 = alloca i32*****, align 8
  %l_1174 = alloca i16*, align 8
  %l_1175 = alloca i64*, align 8
  %l_1176 = alloca i32*, align 8
  %l_1185 = alloca i64, align 8
  %l_1227 = alloca i64, align 8
  %l_1076 = alloca i8*, align 8
  %l_1079 = alloca [1 x i64*], align 8
  %l_1080 = alloca i64*, align 8
  %l_1100 = alloca i64***, align 8
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %k7 = alloca i32, align 4
  %3 = alloca i32
  %l_1091 = alloca i16*, align 8
  %l_1099 = alloca i64****, align 8
  %l_1102 = alloca [8 x [6 x i16*]], align 16
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %k10 = alloca i32, align 4
  %l_1113 = alloca i32, align 4
  %l_1119 = alloca i32*, align 8
  %l_1150 = alloca i16, align 2
  %l_1156 = alloca i32*, align 8
  %l_1157 = alloca [3 x i64*], align 16
  %i12 = alloca i32, align 4
  %l_1187 = alloca i64, align 8
  %l_1189 = alloca i16**, align 8
  %l_1188 = alloca i16***, align 8
  %l_1182 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %k15 = alloca i32, align 4
  %l_1191 = alloca [3 x [6 x i16***]], align 16
  %l_1190 = alloca i16****, align 8
  %l_1206 = alloca [2 x [1 x [2 x i32]]], align 16
  %l_1207 = alloca i16*, align 8
  %l_1208 = alloca [7 x [3 x i8*]], align 16
  %i16 = alloca i32, align 4
  %j17 = alloca i32, align 4
  %k18 = alloca i32, align 4
  %i21 = alloca i32, align 4
  %j22 = alloca i32, align 4
  %l_1230 = alloca i8*, align 8
  %l_1236 = alloca i32*, align 8
  %l_1235 = alloca i32**, align 8
  %l_1238 = alloca [8 x i32*], align 16
  %l_1237 = alloca i32**, align 8
  %l_1248 = alloca i8*, align 8
  %l_1256 = alloca i32, align 4
  %l_1258 = alloca i32, align 4
  %l_1260 = alloca [8 x [3 x [2 x i32]]], align 16
  %i23 = alloca i32, align 4
  %j24 = alloca i32, align 4
  %k25 = alloca i32, align 4
  %l_1266 = alloca i64*, align 8
  %l_1276 = alloca i32, align 4
  %l_1277 = alloca i8*, align 8
  %l_1287 = alloca i32, align 4
  %l_1291 = alloca [6 x [6 x i16*]], align 16
  %i28 = alloca i32, align 4
  %j29 = alloca i32, align 4
  store i16 %p_22, i16* %2, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_37) #1
  store i8 -89, i8* %l_37, align 1, !tbaa !9
  %4 = bitcast i32* %l_1053 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 241438961, i32* %l_1053, align 4, !tbaa !1
  %5 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -6, i32* %l_1054, align 4, !tbaa !1
  %6 = bitcast i32** %l_1061 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_221, i32** %l_1061, align 8, !tbaa !5
  %7 = bitcast [10 x i32]* %l_1103 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %7) #1
  %8 = bitcast [10 x i32]* %l_1103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([10 x i32]* @func_21.l_1103 to i8*), i64 40, i32 16, i1 false)
  %9 = bitcast i32* %l_1155 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1, i32* %l_1155, align 4, !tbaa !1
  %10 = bitcast [6 x [4 x i32]]* %l_1253 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %10) #1
  %11 = bitcast [6 x [4 x i32]]* %l_1253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([6 x [4 x i32]]* @func_21.l_1253 to i8*), i64 96, i32 16, i1 false)
  %12 = bitcast i32* %l_1263 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -1, i32* %l_1263, align 4, !tbaa !1
  %13 = bitcast i16** %l_1283 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16* @g_113, i16** %l_1283, align 8, !tbaa !5
  %14 = bitcast i16*** %l_1282 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16** %l_1283, i16*** %l_1282, align 8, !tbaa !5
  %15 = bitcast [10 x i16*]* %l_1290 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %15) #1
  %16 = bitcast [10 x i16*]* %l_1290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([10 x i16*]* @func_21.l_1290 to i8*), i64 80, i32 16, i1 false)
  %17 = bitcast i32* %l_1296 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %l_1296, align 4, !tbaa !1
  %18 = bitcast i16* %l_1299 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #1
  store i16 -32006, i16* %l_1299, align 2, !tbaa !10
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i16, i16* %2, align 2, !tbaa !10
  %22 = zext i16 %21 to i32
  %23 = load volatile i32*, i32** @g_29, align 8, !tbaa !5
  %24 = load i32, i32* %23, align 4, !tbaa !1
  %25 = xor i32 %24, %22
  store i32 %25, i32* %23, align 4, !tbaa !1
  store i32 -7, i32* @g_30, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %38, %0
  %27 = load i32, i32* @g_30, align 4, !tbaa !1
  %28 = icmp slt i32 %27, -27
  br i1 %28, label %29, label %41

; <label>:29                                      ; preds = %26
  %30 = bitcast i32** %l_33 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32* @g_34, i32** %l_33, align 8, !tbaa !5
  %31 = bitcast i32** %l_35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i32* @g_34, i32** %l_35, align 8, !tbaa !5
  %32 = bitcast i32** %l_36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i32* @g_34, i32** %l_36, align 8, !tbaa !5
  %33 = load i8, i8* %l_37, align 1, !tbaa !9
  %34 = add i8 %33, 1
  store i8 %34, i8* %l_37, align 1, !tbaa !9
  %35 = bitcast i32** %l_36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32** %l_35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32** %l_33 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %38

; <label>:38                                      ; preds = %29
  %39 = load i32, i32* @g_30, align 4, !tbaa !1
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @g_30, align 4, !tbaa !1
  br label %26

; <label>:41                                      ; preds = %26
  %42 = load i8, i8* @g_5, align 1, !tbaa !9
  %43 = sext i8 %42 to i32
  %44 = call i32 @func_40(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %1263

; <label>:46                                      ; preds = %41
  %47 = bitcast i32* %l_1077 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 2, i32* %l_1077, align 4, !tbaa !1
  %48 = bitcast i32** %l_1108 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i32* null, i32** %l_1108, align 8, !tbaa !5
  %49 = bitcast i16* %l_1120 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %49) #1
  store i16 9623, i16* %l_1120, align 2, !tbaa !10
  %50 = bitcast [1 x i32]* %l_1159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = bitcast [7 x [3 x [1 x i16]]]* %l_1177 to i8*
  call void @llvm.lifetime.start(i64 42, i8* %51) #1
  %52 = bitcast [7 x [3 x [1 x i16]]]* %l_1177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* bitcast ([7 x [3 x [1 x i16]]]* @func_21.l_1177 to i8*), i64 42, i32 16, i1 false)
  %53 = bitcast i32* %l_1186 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 0, i32* %l_1186, align 4, !tbaa !1
  %54 = bitcast i32* %l_1250 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  store i32 -1019758747, i32* %l_1250, align 4, !tbaa !1
  %55 = bitcast i32* %l_1252 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 -1654509009, i32* %l_1252, align 4, !tbaa !1
  %56 = bitcast i32* %l_1255 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 310393989, i32* %l_1255, align 4, !tbaa !1
  %57 = bitcast i32* %l_1259 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  store i32 5, i32* %l_1259, align 4, !tbaa !1
  %58 = bitcast i32* %l_1261 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 -802340252, i32* %l_1261, align 4, !tbaa !1
  %59 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %62

; <label>:62                                      ; preds = %69, %46
  %63 = load i32, i32* %i1, align 4, !tbaa !1
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %72

; <label>:65                                      ; preds = %62
  %66 = load i32, i32* %i1, align 4, !tbaa !1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1159, i32 0, i64 %67
  store i32 -6, i32* %68, align 4, !tbaa !1
  br label %69

; <label>:69                                      ; preds = %65
  %70 = load i32, i32* %i1, align 4, !tbaa !1
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %i1, align 4, !tbaa !1
  br label %62

; <label>:72                                      ; preds = %62
  %73 = load i32, i32* @g_111, align 4, !tbaa !1
  %74 = trunc i32 %73 to i16
  %75 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %76 = load volatile i16*, i16** %75, align 8, !tbaa !5
  %77 = load volatile i16, i16* %76, align 2, !tbaa !10
  %78 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %77)
  %79 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %74, i16 signext %78)
  %80 = sext i16 %79 to i32
  %81 = load i32, i32* %l_1053, align 4, !tbaa !1
  %82 = and i32 %81, %80
  store i32 %82, i32* %l_1053, align 4, !tbaa !1
  store i8 0, i8* @g_427, align 1, !tbaa !9
  br label %83

; <label>:83                                      ; preds = %1241, %72
  %84 = load i8, i8* @g_427, align 1, !tbaa !9
  %85 = sext i8 %84 to i32
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %1246

; <label>:87                                      ; preds = %83
  %88 = bitcast i32** %l_1074 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  store i32* @g_221, i32** %l_1074, align 8, !tbaa !5
  %89 = bitcast i32* %l_1078 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  store i32 722748161, i32* %l_1078, align 4, !tbaa !1
  %90 = bitcast i32** %l_1239 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  store i32* @g_219, i32** %l_1239, align 8, !tbaa !5
  %91 = bitcast i32* %l_1251 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 8, i32* %l_1251, align 4, !tbaa !1
  %92 = bitcast [8 x i8]* %l_1254 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = bitcast i32* %l_1257 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  store i32 1113742908, i32* %l_1257, align 4, !tbaa !1
  %94 = bitcast [9 x [4 x i32]]* %l_1262 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %94) #1
  %95 = bitcast [9 x [4 x i32]]* %l_1262 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* bitcast ([9 x [4 x i32]]* @func_21.l_1262 to i8*), i64 144, i32 16, i1 false)
  %96 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %105, %87
  %99 = load i32, i32* %i3, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 8
  br i1 %100, label %101, label %108

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %i3, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i8], [8 x i8]* %l_1254, i32 0, i64 %103
  store i8 -9, i8* %104, align 1, !tbaa !9
  br label %105

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %i3, align 4, !tbaa !1
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %i3, align 4, !tbaa !1
  br label %98

; <label>:108                                     ; preds = %98
  store i32 0, i32* %l_1053, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %1069, %108
  %110 = load i32, i32* %l_1053, align 4, !tbaa !1
  %111 = icmp sle i32 %110, 3
  br i1 %111, label %112, label %1072

; <label>:112                                     ; preds = %109
  %113 = bitcast i32** %l_1062 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  store i32* @g_221, i32** %l_1062, align 8, !tbaa !5
  %114 = bitcast i32* %l_1075 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  store i32 -137417894, i32* %l_1075, align 4, !tbaa !1
  %115 = bitcast i64* %l_1101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  store i64 -5328995589340623004, i64* %l_1101, align 8, !tbaa !7
  %116 = bitcast i8** %l_1138 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 0, i64 1, i64 0), i8** %l_1138, align 8, !tbaa !5
  %117 = bitcast i8*** %l_1137 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  store i8** %l_1138, i8*** %l_1137, align 8, !tbaa !5
  %118 = bitcast i32* %l_1158 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  store i32 -1, i32* %l_1158, align 4, !tbaa !1
  %119 = bitcast i64** %l_1167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  store i64* @g_250, i64** %l_1167, align 8, !tbaa !5
  %120 = bitcast i32****** %l_1170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  store i32***** null, i32****** %l_1170, align 8, !tbaa !5
  %121 = bitcast i32****** %l_1171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %121) #1
  store i32***** getelementptr inbounds ([6 x [4 x i32****]], [6 x [4 x i32****]]* @g_578, i32 0, i64 5, i64 2), i32****** %l_1171, align 8, !tbaa !5
  %122 = bitcast i16** %l_1174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %122) #1
  store i16* @g_28, i16** %l_1174, align 8, !tbaa !5
  %123 = bitcast i64** %l_1175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  store i64* getelementptr inbounds ([6 x [9 x [1 x i64]]], [6 x [9 x [1 x i64]]]* @g_158, i32 0, i64 0, i64 4, i64 0), i64** %l_1175, align 8, !tbaa !5
  %124 = bitcast i32** %l_1176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %124) #1
  store i32* @g_72, i32** %l_1176, align 8, !tbaa !5
  %125 = bitcast i64* %l_1185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %125) #1
  store i64 1, i64* %l_1185, align 8, !tbaa !7
  %126 = bitcast i64* %l_1227 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %126) #1
  store i64 -3056940833536197634, i64* %l_1227, align 8, !tbaa !7
  store i64 0, i64* @g_94, align 8, !tbaa !7
  br label %127

; <label>:127                                     ; preds = %447, %112
  %128 = load i64, i64* @g_94, align 8, !tbaa !7
  %129 = icmp ule i64 %128, 6
  br i1 %129, label %130, label %450

; <label>:130                                     ; preds = %127
  %131 = bitcast i8** %l_1076 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i8* @g_627, i8** %l_1076, align 8, !tbaa !5
  %132 = bitcast [1 x i64*]* %l_1079 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = bitcast i64** %l_1080 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  store i64* getelementptr inbounds ([6 x [9 x [1 x i64]]], [6 x [9 x [1 x i64]]]* @g_158, i32 0, i64 5, i64 3, i64 0), i64** %l_1080, align 8, !tbaa !5
  %134 = bitcast i64**** %l_1100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i64*** @g_1098, i64**** %l_1100, align 8, !tbaa !5
  %135 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %138

; <label>:138                                     ; preds = %145, %130
  %139 = load i32, i32* %i5, align 4, !tbaa !1
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %141, label %148

; <label>:141                                     ; preds = %138
  %142 = load i32, i32* %i5, align 4, !tbaa !1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [1 x i64*], [1 x i64*]* %l_1079, i32 0, i64 %143
  store i64* null, i64** %144, align 8, !tbaa !5
  br label %145

; <label>:145                                     ; preds = %141
  %146 = load i32, i32* %i5, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i5, align 4, !tbaa !1
  br label %138

; <label>:148                                     ; preds = %138
  %149 = load i16, i16* %2, align 2, !tbaa !10
  %150 = icmp ne i16 %149, 0
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %148
  store i32 17, i32* %3
  br label %438

; <label>:152                                     ; preds = %148
  %153 = load i16, i16* %2, align 2, !tbaa !10
  %154 = zext i16 %153 to i32
  store i32 %154, i32* %l_1054, align 4, !tbaa !1
  %155 = load i32*, i32** %l_1061, align 8, !tbaa !5
  %156 = load i32*, i32** %l_1062, align 8, !tbaa !5
  %157 = icmp ne i32* %155, %156
  %158 = zext i1 %157 to i32
  %159 = load i16, i16* %2, align 2, !tbaa !10
  %160 = zext i16 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %209

; <label>:162                                     ; preds = %152
  %163 = load i16, i16* %2, align 2, !tbaa !10
  %164 = zext i16 %163 to i32
  %165 = load i16, i16* %2, align 2, !tbaa !10
  %166 = load i16, i16* %2, align 2, !tbaa !10
  %167 = zext i16 %166 to i32
  %168 = xor i32 %164, %167
  %169 = load i32*, i32** %l_1074, align 8, !tbaa !5
  %170 = bitcast i32* %169 to i8*
  %171 = icmp eq i8* null, %170
  %172 = zext i1 %171 to i32
  %173 = load i32, i32* %l_1075, align 4, !tbaa !1
  %174 = or i32 %172, %173
  %175 = zext i32 %174 to i64
  %176 = xor i64 %175, 0
  %177 = trunc i64 %176 to i8
  %178 = load i8*, i8** %l_1076, align 8, !tbaa !5
  store i8 %177, i8* %178, align 1, !tbaa !9
  %179 = sext i8 %177 to i64
  %180 = icmp eq i64 %179, 248
  %181 = zext i1 %180 to i32
  %182 = load i16, i16* %2, align 2, !tbaa !10
  %183 = zext i16 %182 to i32
  %184 = icmp sge i32 %181, %183
  %185 = zext i1 %184 to i32
  %186 = trunc i32 %185 to i16
  %187 = load i32, i32* %l_1077, align 4, !tbaa !1
  %188 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %186, i32 %187)
  %189 = load i16, i16* %2, align 2, !tbaa !10
  %190 = zext i16 %189 to i32
  %191 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %188, i32 %190)
  %192 = zext i16 %191 to i64
  %193 = call i64 @safe_sub_func_int64_t_s_s(i64 1, i64 %192)
  %194 = trunc i64 %193 to i16
  %195 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext 19034, i16 zeroext %194)
  %196 = trunc i16 %195 to i8
  %197 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %196, i8 signext 8)
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = load i16, i16* %2, align 2, !tbaa !10
  %202 = zext i16 %201 to i32
  %203 = or i32 %200, %202
  %204 = load i32, i32* %l_1078, align 4, !tbaa !1
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %207

; <label>:206                                     ; preds = %162
  br label %207

; <label>:207                                     ; preds = %206, %162
  %208 = phi i1 [ false, %162 ], [ true, %206 ]
  br label %209

; <label>:209                                     ; preds = %207, %152
  %210 = phi i1 [ false, %152 ], [ %208, %207 ]
  %211 = zext i1 %210 to i32
  %212 = sext i32 %211 to i64
  %213 = icmp ule i64 %212, 4294967295
  %214 = zext i1 %213 to i32
  %215 = icmp sge i32 %158, 1
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %l_1053, align 4, !tbaa !1
  %218 = or i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = call i64 @safe_mod_func_int64_t_s_s(i64 %219, i64 1)
  %221 = icmp eq i64 %220, 5
  %222 = zext i1 %221 to i32
  %223 = sext i32 %222 to i64
  store i64 %223, i64* @g_116, align 8, !tbaa !7
  %224 = load i16, i16* %2, align 2, !tbaa !10
  %225 = zext i16 %224 to i64
  %226 = call i64 @safe_div_func_uint64_t_u_u(i64 %223, i64 %225)
  %227 = load i64*, i64** %l_1080, align 8, !tbaa !5
  %228 = load i64, i64* %227, align 8, !tbaa !7
  %229 = xor i64 %228, %226
  store i64 %229, i64* %227, align 8, !tbaa !7
  %230 = load i16, i16* %2, align 2, !tbaa !10
  %231 = zext i16 %230 to i64
  %232 = call i64 @safe_mod_func_int64_t_s_s(i64 %229, i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %367

; <label>:234                                     ; preds = %209
  %235 = bitcast i16** %l_1091 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %235) #1
  store i16* @g_113, i16** %l_1091, align 8, !tbaa !5
  %236 = bitcast i64***** %l_1099 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #1
  store i64**** @g_1097, i64***** %l_1099, align 8, !tbaa !5
  %237 = bitcast [8 x [6 x i16*]]* %l_1102 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %237) #1
  %238 = bitcast [8 x [6 x i16*]]* %l_1102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* bitcast ([8 x [6 x i16*]]* @func_21.l_1102 to i8*), i64 384, i32 16, i1 false)
  %239 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %239) #1
  %240 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %240) #1
  %241 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %241) #1
  %242 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %243 = load volatile i16*, i16** %242, align 8, !tbaa !5
  %244 = load volatile i16, i16* %243, align 2, !tbaa !10
  %245 = zext i16 %244 to i32
  %246 = load i16, i16* %2, align 2, !tbaa !10
  %247 = zext i16 %246 to i64
  %248 = load i16*, i16** %l_1091, align 8, !tbaa !5
  store i16 0, i16* %248, align 2, !tbaa !10
  %249 = load i32, i32* @g_321, align 4, !tbaa !1
  %250 = and i32 0, %249
  %251 = zext i32 %250 to i64
  %252 = call i64 @safe_sub_func_int64_t_s_s(i64 %247, i64 %251)
  %253 = load i8, i8* @g_427, align 1, !tbaa !9
  %254 = sext i8 %253 to i32
  %255 = add nsw i32 %254, 3
  %256 = sext i32 %255 to i64
  %257 = load i32, i32* %l_1053, align 4, !tbaa !1
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* @g_94, align 8, !tbaa !7
  %260 = getelementptr inbounds [7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 %259
  %261 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %260, i32 0, i64 %258
  %262 = getelementptr inbounds [4 x i8], [4 x i8]* %261, i32 0, i64 %256
  %263 = load i8, i8* %262, align 1, !tbaa !9
  %264 = zext i8 %263 to i64
  %265 = and i64 %264, %252
  %266 = trunc i64 %265 to i8
  store i8 %266, i8* %262, align 1, !tbaa !9
  %267 = icmp ne i8 %266, 0
  %268 = xor i1 %267, true
  %269 = zext i1 %268 to i32
  %270 = load i32, i32* %l_1077, align 4, !tbaa !1
  %271 = trunc i32 %270 to i16
  %272 = load i32, i32* @g_30, align 4, !tbaa !1
  %273 = load i32*, i32** %l_1074, align 8, !tbaa !5
  store i32 %272, i32* %273, align 4, !tbaa !1
  %274 = zext i32 %272 to i64
  %275 = icmp sgt i64 1113230643, %274
  %276 = zext i1 %275 to i32
  %277 = load i16, i16* %2, align 2, !tbaa !10
  %278 = zext i16 %277 to i32
  %279 = icmp sgt i32 %276, %278
  br i1 %279, label %280, label %285

; <label>:280                                     ; preds = %234
  %281 = load i64***, i64**** @g_1097, align 8, !tbaa !5
  %282 = load i64****, i64***** %l_1099, align 8, !tbaa !5
  store i64*** %281, i64**** %282, align 8, !tbaa !5
  %283 = load i64***, i64**** %l_1100, align 8, !tbaa !5
  %284 = icmp ne i64*** %281, %283
  br i1 %284, label %286, label %285

; <label>:285                                     ; preds = %280, %234
  br label %286

; <label>:286                                     ; preds = %285, %280
  %287 = phi i1 [ true, %280 ], [ true, %285 ]
  %288 = zext i1 %287 to i32
  %289 = load i16, i16* @g_310, align 2, !tbaa !10
  %290 = sext i16 %289 to i32
  store i32 %290, i32* %l_1054, align 4, !tbaa !1
  %291 = sext i32 %290 to i64
  %292 = or i64 %291, -5328995589340623004
  %293 = trunc i64 %292 to i16
  %294 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %293, i32 10)
  %295 = zext i16 %294 to i32
  %296 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %295)
  %297 = trunc i32 %296 to i16
  %298 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %271, i16 zeroext %297)
  %299 = zext i16 %298 to i32
  %300 = load i16, i16* %2, align 2, !tbaa !10
  %301 = zext i16 %300 to i32
  %302 = icmp ne i32 %299, %301
  %303 = zext i1 %302 to i32
  %304 = icmp ne i32 %269, %303
  %305 = zext i1 %304 to i32
  %306 = load i32, i32* @g_1048, align 4, !tbaa !1
  %307 = icmp ne i32 %305, %306
  %308 = zext i1 %307 to i32
  %309 = sext i32 %308 to i64
  %310 = icmp sge i64 %309, 2377443375
  %311 = zext i1 %310 to i32
  %312 = trunc i32 %311 to i8
  %313 = load i16, i16* %2, align 2, !tbaa !10
  %314 = zext i16 %313 to i32
  %315 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %312, i32 %314)
  %316 = zext i8 %315 to i32
  %317 = load i32, i32* @g_524, align 4, !tbaa !1
  %318 = icmp slt i32 %316, %317
  %319 = zext i1 %318 to i32
  %320 = sext i32 %319 to i64
  %321 = icmp ne i64 %320, 1
  %322 = zext i1 %321 to i32
  %323 = load i8, i8* %l_37, align 1, !tbaa !9
  %324 = zext i8 %323 to i32
  %325 = icmp slt i32 %322, %324
  %326 = zext i1 %325 to i32
  %327 = trunc i32 %326 to i16
  store i16 %327, i16* @g_310, align 2, !tbaa !10
  %328 = sext i16 %327 to i32
  %329 = load i16, i16* %2, align 2, !tbaa !10
  %330 = zext i16 %329 to i32
  %331 = and i32 %328, %330
  %332 = trunc i32 %331 to i16
  %333 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %332, i16 signext -28828)
  %334 = sext i16 %333 to i32
  %335 = icmp sle i32 %245, %334
  br i1 %335, label %336, label %340

; <label>:336                                     ; preds = %286
  %337 = load i16, i16* %2, align 2, !tbaa !10
  %338 = zext i16 %337 to i32
  %339 = icmp ne i32 %338, 0
  br label %340

; <label>:340                                     ; preds = %336, %286
  %341 = phi i1 [ false, %286 ], [ %339, %336 ]
  %342 = zext i1 %341 to i32
  %343 = trunc i32 %342 to i8
  %344 = load i16, i16* %2, align 2, !tbaa !10
  %345 = trunc i16 %344 to i8
  %346 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %343, i8 signext %345)
  %347 = icmp ne i8 %346, 0
  %348 = xor i1 %347, true
  %349 = zext i1 %348 to i32
  %350 = load i16, i16* %2, align 2, !tbaa !10
  %351 = zext i16 %350 to i32
  %352 = icmp ne i32 %349, %351
  %353 = zext i1 %352 to i32
  %354 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 4
  store i32 %353, i32* %354, align 4, !tbaa !1
  %355 = load i16, i16* %2, align 2, !tbaa !10
  %356 = zext i16 %355 to i32
  %357 = icmp ne i32 %353, %356
  %358 = zext i1 %357 to i32
  %359 = load i32**, i32*** @g_144, align 8, !tbaa !5
  %360 = load i32*, i32** %359, align 8, !tbaa !5
  store volatile i32 %358, i32* %360, align 4, !tbaa !1
  %361 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #1
  %363 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
  %364 = bitcast [8 x [6 x i16*]]* %l_1102 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %364) #1
  %365 = bitcast i64***** %l_1099 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %365) #1
  %366 = bitcast i16** %l_1091 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %366) #1
  br label %437

; <label>:367                                     ; preds = %209
  %368 = bitcast i32* %l_1113 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %368) #1
  store i32 1, i32* %l_1113, align 4, !tbaa !1
  %369 = bitcast i32** %l_1119 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %369) #1
  store i32* @g_221, i32** %l_1119, align 8, !tbaa !5
  %370 = load i32*, i32** %l_1108, align 8, !tbaa !5
  %371 = icmp ne i32* null, %370
  %372 = zext i1 %371 to i32
  %373 = load i16, i16* %2, align 2, !tbaa !10
  %374 = zext i16 %373 to i64
  %375 = load i32, i32* %l_1113, align 4, !tbaa !1
  %376 = sext i32 %375 to i64
  %377 = call i64 @safe_mod_func_int64_t_s_s(i64 %374, i64 %376)
  %378 = trunc i64 %377 to i8
  %379 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %378, i32 3)
  %380 = zext i8 %379 to i32
  %381 = icmp slt i32 %372, %380
  %382 = zext i1 %381 to i32
  %383 = sext i32 %382 to i64
  %384 = load i8**, i8*** @g_351, align 8, !tbaa !5
  %385 = load i8*, i8** %384, align 8, !tbaa !5
  %386 = load volatile i8, i8* %385, align 1, !tbaa !9
  %387 = load i16, i16* %2, align 2, !tbaa !10
  %388 = trunc i16 %387 to i8
  %389 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %386, i8 signext %388)
  %390 = sext i8 %389 to i32
  %391 = load i32*, i32** %l_1119, align 8, !tbaa !5
  %392 = load i32*, i32** %l_1108, align 8, !tbaa !5
  %393 = icmp eq i32* %391, %392
  br i1 %393, label %394, label %398

; <label>:394                                     ; preds = %367
  %395 = load i16, i16* %2, align 2, !tbaa !10
  %396 = zext i16 %395 to i32
  %397 = icmp ne i32 %396, 0
  br label %398

; <label>:398                                     ; preds = %394, %367
  %399 = phi i1 [ false, %367 ], [ %397, %394 ]
  %400 = xor i1 %399, true
  %401 = zext i1 %400 to i32
  %402 = load i16, i16* %2, align 2, !tbaa !10
  %403 = load i16, i16* %l_1120, align 2, !tbaa !10
  %404 = sext i16 %403 to i32
  %405 = and i32 %390, %404
  %406 = load i16, i16* %2, align 2, !tbaa !10
  %407 = zext i16 %406 to i32
  %408 = load i16, i16* %2, align 2, !tbaa !10
  %409 = zext i16 %408 to i32
  %410 = call i32 @safe_mod_func_uint32_t_u_u(i32 %407, i32 %409)
  %411 = zext i32 %410 to i64
  %412 = call i64 @safe_add_func_int64_t_s_s(i64 %383, i64 %411)
  %413 = icmp sle i64 %412, 2551193103
  %414 = zext i1 %413 to i32
  %415 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 4
  %416 = load i32, i32* %415, align 4, !tbaa !1
  %417 = load i8, i8* %l_37, align 1, !tbaa !9
  %418 = zext i8 %417 to i32
  %419 = or i32 %416, %418
  %420 = trunc i32 %419 to i16
  %421 = load i16, i16* @g_28, align 2, !tbaa !10
  %422 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %420, i16 signext %421)
  %423 = sext i16 %422 to i32
  %424 = load i32*, i32** @g_145, align 8, !tbaa !5
  store volatile i32 %423, i32* %424, align 4, !tbaa !1
  %425 = load i32, i32* %l_1078, align 4, !tbaa !1
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %428

; <label>:427                                     ; preds = %398
  store i32 19, i32* %3
  br label %433

; <label>:428                                     ; preds = %398
  %429 = load i32, i32* %l_1078, align 4, !tbaa !1
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %432

; <label>:431                                     ; preds = %428
  store i32 17, i32* %3
  br label %433

; <label>:432                                     ; preds = %428
  store i32 0, i32* %3
  br label %433

; <label>:433                                     ; preds = %432, %431, %427
  %434 = bitcast i32** %l_1119 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %434) #1
  %435 = bitcast i32* %l_1113 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %435) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %438 [
    i32 0, label %436
  ]

; <label>:436                                     ; preds = %433
  br label %437

; <label>:437                                     ; preds = %436, %340
  store i32 0, i32* %3
  br label %438

; <label>:438                                     ; preds = %437, %433, %151
  %439 = bitcast i32* %k7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %439) #1
  %440 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  %441 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #1
  %442 = bitcast i64**** %l_1100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %442) #1
  %443 = bitcast i64** %l_1080 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %443) #1
  %444 = bitcast [1 x i64*]* %l_1079 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = bitcast i8** %l_1076 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %445) #1
  %cleanup.dest.11 = load i32, i32* %3
  switch i32 %cleanup.dest.11, label %1443 [
    i32 0, label %446
    i32 17, label %450
    i32 19, label %447
  ]

; <label>:446                                     ; preds = %438
  br label %447

; <label>:447                                     ; preds = %446, %438
  %448 = load i64, i64* @g_94, align 8, !tbaa !7
  %449 = add i64 %448, 1
  store i64 %449, i64* @g_94, align 8, !tbaa !7
  br label %127

; <label>:450                                     ; preds = %438, %127
  store i16 6, i16* @g_310, align 2, !tbaa !10
  br label %451

; <label>:451                                     ; preds = %577, %450
  %452 = load i16, i16* @g_310, align 2, !tbaa !10
  %453 = sext i16 %452 to i32
  %454 = icmp sge i32 %453, 0
  br i1 %454, label %455, label %582

; <label>:455                                     ; preds = %451
  %456 = bitcast i16* %l_1150 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %456) #1
  store i16 -91, i16* %l_1150, align 2, !tbaa !10
  %457 = bitcast i32** %l_1156 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %457) #1
  store i32* %l_1054, i32** %l_1156, align 8, !tbaa !5
  %458 = bitcast [3 x i64*]* %l_1157 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %458) #1
  %459 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %459) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %460

; <label>:460                                     ; preds = %467, %455
  %461 = load i32, i32* %i12, align 4, !tbaa !1
  %462 = icmp slt i32 %461, 3
  br i1 %462, label %463, label %470

; <label>:463                                     ; preds = %460
  %464 = load i32, i32* %i12, align 4, !tbaa !1
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [3 x i64*], [3 x i64*]* %l_1157, i32 0, i64 %465
  store i64* @g_250, i64** %466, align 8, !tbaa !5
  br label %467

; <label>:467                                     ; preds = %463
  %468 = load i32, i32* %i12, align 4, !tbaa !1
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %i12, align 4, !tbaa !1
  br label %460

; <label>:470                                     ; preds = %460
  %471 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %472 = load volatile i16*, i16** %471, align 8, !tbaa !5
  %473 = load volatile i16, i16* %472, align 2, !tbaa !10
  %474 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %473, i32 0)
  %475 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 4
  %476 = load i32, i32* %475, align 4, !tbaa !1
  %477 = load i8**, i8*** %l_1137, align 8, !tbaa !5
  %478 = icmp ne i8** null, %477
  %479 = zext i1 %478 to i32
  %480 = load i16, i16* %l_1150, align 2, !tbaa !10
  %481 = zext i16 %480 to i32
  %482 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext -103)
  %483 = load i8, i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 0, i64 1, i64 0), align 1, !tbaa !9
  %484 = zext i8 %483 to i16
  %485 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %482, i16 zeroext %484)
  %486 = zext i16 %485 to i32
  %487 = xor i32 %481, %486
  %488 = load i32, i32* %l_1155, align 4, !tbaa !1
  %489 = call i32 @safe_sub_func_int32_t_s_s(i32 %487, i32 %488)
  %490 = sext i32 %489 to i64
  %491 = icmp sge i64 %490, 1693635120
  %492 = zext i1 %491 to i32
  %493 = load i32*, i32** %l_1061, align 8, !tbaa !5
  %494 = load i32, i32* %493, align 4, !tbaa !1
  %495 = xor i32 %494, %492
  store i32 %495, i32* %493, align 4, !tbaa !1
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %501, label %497

; <label>:497                                     ; preds = %470
  %498 = load i16, i16* %2, align 2, !tbaa !10
  %499 = zext i16 %498 to i32
  %500 = icmp ne i32 %499, 0
  br label %501

; <label>:501                                     ; preds = %497, %470
  %502 = phi i1 [ true, %470 ], [ %500, %497 ]
  %503 = zext i1 %502 to i32
  %504 = load i8*, i8** @g_352, align 8, !tbaa !5
  %505 = load volatile i8, i8* %504, align 1, !tbaa !9
  %506 = sext i8 %505 to i32
  %507 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext -16, i32 %506)
  %508 = sext i8 %507 to i64
  %509 = load i16, i16* %2, align 2, !tbaa !10
  %510 = zext i16 %509 to i64
  %511 = call i64 @safe_sub_func_int64_t_s_s(i64 %508, i64 %510)
  %512 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 0
  %513 = load i32, i32* %512, align 4, !tbaa !1
  %514 = sext i32 %513 to i64
  %515 = or i64 15573, %514
  %516 = icmp eq i64 %515, -1
  %517 = zext i1 %516 to i32
  %518 = sext i32 %517 to i64
  %519 = icmp slt i64 %518, 0
  %520 = xor i1 %519, true
  %521 = zext i1 %520 to i32
  %522 = trunc i32 %521 to i8
  %523 = load i16, i16* %2, align 2, !tbaa !10
  %524 = zext i16 %523 to i32
  %525 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %522, i32 %524)
  %526 = sext i8 %525 to i32
  %527 = load i16, i16* %2, align 2, !tbaa !10
  %528 = zext i16 %527 to i32
  %529 = icmp sgt i32 %526, %528
  %530 = zext i1 %529 to i32
  %531 = xor i32 %530, -1
  %532 = load i32*, i32** @g_145, align 8, !tbaa !5
  %533 = load volatile i32, i32* %532, align 4, !tbaa !1
  %534 = load i32*, i32** %l_1156, align 8, !tbaa !5
  %535 = load i32, i32* %534, align 4, !tbaa !1
  %536 = xor i32 %535, %533
  store i32 %536, i32* %534, align 4, !tbaa !1
  %537 = call i32 @safe_unary_minus_func_int32_t_s(i32 %536)
  %538 = icmp ne i32 %479, %537
  %539 = zext i1 %538 to i32
  %540 = trunc i32 %539 to i16
  %541 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %540)
  %542 = sext i16 %541 to i64
  %543 = icmp ne i64 %542, 51
  %544 = zext i1 %543 to i32
  %545 = trunc i32 %544 to i8
  %546 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -122, i8 zeroext %545)
  %547 = zext i8 %546 to i32
  store i32 %547, i32* %l_1158, align 4, !tbaa !1
  %548 = sext i32 %547 to i64
  %549 = icmp sge i64 %548, 0
  %550 = zext i1 %549 to i32
  %551 = xor i32 %476, %550
  %552 = call i32 @safe_div_func_int32_t_s_s(i32 %551, i32 -407203996)
  %553 = trunc i32 %552 to i16
  %554 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %553, i16 signext 10476)
  %555 = load i32, i32* %l_1078, align 4, !tbaa !1
  %556 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %554, i32 %555)
  %557 = zext i16 %556 to i32
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %560, label %559

; <label>:559                                     ; preds = %501
  br label %560

; <label>:560                                     ; preds = %559, %501
  %561 = phi i1 [ true, %501 ], [ true, %559 ]
  %562 = zext i1 %561 to i32
  %563 = trunc i32 %562 to i8
  %564 = load i16, i16* %2, align 2, !tbaa !10
  %565 = trunc i16 %564 to i8
  %566 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %563, i8 zeroext %565)
  %567 = icmp ne i8 %566, 0
  %568 = xor i1 %567, true
  %569 = zext i1 %568 to i32
  %570 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1159, i32 0, i64 0
  %571 = load i32, i32* %570, align 4, !tbaa !1
  %572 = and i32 %571, %569
  store i32 %572, i32* %570, align 4, !tbaa !1
  %573 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %573) #1
  %574 = bitcast [3 x i64*]* %l_1157 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %574) #1
  %575 = bitcast i32** %l_1156 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %575) #1
  %576 = bitcast i16* %l_1150 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %576) #1
  br label %577

; <label>:577                                     ; preds = %560
  %578 = load i16, i16* @g_310, align 2, !tbaa !10
  %579 = sext i16 %578 to i32
  %580 = sub nsw i32 %579, 1
  %581 = trunc i32 %580 to i16
  store i16 %581, i16* @g_310, align 2, !tbaa !10
  br label %451

; <label>:582                                     ; preds = %451
  %583 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %584 = load volatile i16*, i16** %583, align 8, !tbaa !5
  %585 = load volatile i16, i16* %584, align 2, !tbaa !10
  %586 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %585, i32 5)
  %587 = zext i16 %586 to i64
  %588 = and i64 147, %587
  %589 = load i32, i32* %l_1078, align 4, !tbaa !1
  %590 = sext i32 %589 to i64
  %591 = load i64*, i64** %l_1167, align 8, !tbaa !5
  store i64 %590, i64* %591, align 8, !tbaa !7
  %592 = load i32, i32* @g_1048, align 4, !tbaa !1
  %593 = load i32, i32* %l_1158, align 4, !tbaa !1
  %594 = load i32*****, i32****** %l_1171, align 8, !tbaa !5
  store i32**** @g_579, i32***** %594, align 8, !tbaa !5
  %595 = icmp sgt i32 %593, 0
  %596 = zext i1 %595 to i32
  %597 = trunc i32 %596 to i16
  %598 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %597, i32 4)
  %599 = zext i16 %598 to i32
  %600 = xor i32 %592, %599
  %601 = load i32*, i32** %l_1074, align 8, !tbaa !5
  store i32 %600, i32* %601, align 4, !tbaa !1
  %602 = load i16, i16* %2, align 2, !tbaa !10
  %603 = load i32, i32* @g_321, align 4, !tbaa !1
  %604 = load i32, i32* @g_699, align 4, !tbaa !1
  %605 = icmp ule i32 %603, %604
  %606 = zext i1 %605 to i32
  %607 = trunc i32 %606 to i8
  %608 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %607, i32 5)
  %609 = load i32, i32* @g_34, align 4, !tbaa !1
  %610 = sext i32 %609 to i64
  %611 = icmp sge i64 39981, %610
  br i1 %611, label %615, label %612

; <label>:612                                     ; preds = %582
  %613 = load i32, i32* @g_219, align 4, !tbaa !1
  %614 = icmp ne i32 %613, 0
  br label %615

; <label>:615                                     ; preds = %612, %582
  %616 = phi i1 [ true, %582 ], [ %614, %612 ]
  %617 = zext i1 %616 to i32
  %618 = icmp uge i32 %600, %617
  %619 = zext i1 %618 to i32
  %620 = sext i32 %619 to i64
  %621 = icmp sge i64 %620, 223
  %622 = zext i1 %621 to i32
  %623 = load i32, i32* %l_1053, align 4, !tbaa !1
  %624 = and i32 %622, %623
  %625 = load i16*, i16** %l_1174, align 8, !tbaa !5
  %626 = load i16, i16* %625, align 2, !tbaa !10
  %627 = zext i16 %626 to i32
  %628 = xor i32 %627, %624
  %629 = trunc i32 %628 to i16
  store i16 %629, i16* %625, align 2, !tbaa !10
  %630 = zext i16 %629 to i32
  %631 = load i32, i32* @g_30, align 4, !tbaa !1
  %632 = icmp sgt i32 %630, %631
  %633 = zext i1 %632 to i32
  %634 = sext i32 %633 to i64
  %635 = load i64*, i64** %l_1175, align 8, !tbaa !5
  %636 = load i64, i64* %635, align 8, !tbaa !7
  %637 = xor i64 %636, %634
  store i64 %637, i64* %635, align 8, !tbaa !7
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %643, label %639

; <label>:639                                     ; preds = %615
  %640 = load i16, i16* %2, align 2, !tbaa !10
  %641 = zext i16 %640 to i32
  %642 = icmp ne i32 %641, 0
  br label %643

; <label>:643                                     ; preds = %639, %615
  %644 = phi i1 [ true, %615 ], [ %642, %639 ]
  %645 = zext i1 %644 to i32
  %646 = trunc i32 %645 to i16
  %647 = load i16, i16* %2, align 2, !tbaa !10
  %648 = zext i16 %647 to i32
  %649 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %646, i32 %648)
  %650 = zext i16 %649 to i64
  %651 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %650)
  %652 = trunc i64 %651 to i8
  %653 = load i16, i16* %2, align 2, !tbaa !10
  %654 = trunc i16 %653 to i8
  %655 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %652, i8 zeroext %654)
  %656 = icmp ule i64 %588, -2
  %657 = zext i1 %656 to i32
  %658 = sext i32 %657 to i64
  %659 = and i64 %658, 1
  %660 = load i32*, i32** %l_1176, align 8, !tbaa !5
  %661 = load i32, i32* %660, align 4, !tbaa !1
  %662 = sext i32 %661 to i64
  %663 = and i64 %662, %659
  %664 = trunc i64 %663 to i32
  store i32 %664, i32* %660, align 4, !tbaa !1
  store i16 4, i16* %l_1120, align 2, !tbaa !10
  br label %665

; <label>:665                                     ; preds = %675, %643
  %666 = load i16, i16* %l_1120, align 2, !tbaa !10
  %667 = sext i16 %666 to i32
  %668 = icmp sge i32 %667, 1
  br i1 %668, label %669, label %680

; <label>:669                                     ; preds = %665
  %670 = getelementptr inbounds [7 x [3 x [1 x i16]]], [7 x [3 x [1 x i16]]]* %l_1177, i32 0, i64 5
  %671 = getelementptr inbounds [3 x [1 x i16]], [3 x [1 x i16]]* %670, i32 0, i64 0
  %672 = getelementptr inbounds [1 x i16], [1 x i16]* %671, i32 0, i64 0
  %673 = load i16, i16* %672, align 2, !tbaa !10
  %674 = zext i16 %673 to i32
  store i32 %674, i32* %1
  store i32 1, i32* %3
  br label %1053
                                                  ; No predecessors!
  %676 = load i16, i16* %l_1120, align 2, !tbaa !10
  %677 = sext i16 %676 to i32
  %678 = sub nsw i32 %677, 1
  %679 = trunc i32 %678 to i16
  store i16 %679, i16* %l_1120, align 2, !tbaa !10
  br label %665

; <label>:680                                     ; preds = %665
  store i32 0, i32* @g_69, align 4, !tbaa !1
  br label %681

; <label>:681                                     ; preds = %1049, %680
  %682 = load i32, i32* @g_69, align 4, !tbaa !1
  %683 = icmp sle i32 %682, 6
  br i1 %683, label %684, label %1052

; <label>:684                                     ; preds = %681
  %685 = bitcast i64* %l_1187 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %685) #1
  store i64 -8354709232488619183, i64* %l_1187, align 8, !tbaa !7
  %686 = bitcast i16*** %l_1189 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %686) #1
  store i16** %l_1174, i16*** %l_1189, align 8, !tbaa !5
  %687 = bitcast i16**** %l_1188 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %687) #1
  store i16*** %l_1189, i16**** %l_1188, align 8, !tbaa !5
  %688 = load i16, i16* %2, align 2, !tbaa !10
  %689 = zext i16 %688 to i32
  %690 = load i32*, i32** %l_1176, align 8, !tbaa !5
  store i32 %689, i32* %690, align 4, !tbaa !1
  %691 = icmp ne i32 %689, 0
  br i1 %691, label %692, label %779

; <label>:692                                     ; preds = %684
  %693 = bitcast i32* %l_1182 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %693) #1
  store i32 0, i32* %l_1182, align 4, !tbaa !1
  %694 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %694) #1
  %695 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %695) #1
  %696 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %696) #1
  %697 = load i32, i32* %l_1182, align 4, !tbaa !1
  %698 = load i16, i16* %2, align 2, !tbaa !10
  %699 = load i16, i16* %2, align 2, !tbaa !10
  %700 = zext i16 %699 to i32
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %730, label %702

; <label>:702                                     ; preds = %692
  %703 = load i32***, i32**** @g_143, align 8, !tbaa !5
  %704 = load i32**, i32*** %703, align 8, !tbaa !5
  %705 = load i32*, i32** %704, align 8, !tbaa !5
  %706 = load i32, i32* %l_1053, align 4, !tbaa !1
  %707 = sext i32 %706 to i64
  %708 = load i8, i8* @g_427, align 1, !tbaa !9
  %709 = sext i8 %708 to i64
  %710 = load i32, i32* @g_69, align 4, !tbaa !1
  %711 = add nsw i32 %710, 1
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [10 x [1 x [4 x i32*]]], [10 x [1 x [4 x i32*]]]* @g_507, i32 0, i64 %712
  %714 = getelementptr inbounds [1 x [4 x i32*]], [1 x [4 x i32*]]* %713, i32 0, i64 %709
  %715 = getelementptr inbounds [4 x i32*], [4 x i32*]* %714, i32 0, i64 %707
  store i32* %l_1053, i32** %715, align 8, !tbaa !5
  %716 = icmp ne i32* %705, %l_1053
  %717 = zext i1 %716 to i32
  %718 = sext i32 %717 to i64
  %719 = load i64**, i64*** @g_1098, align 8, !tbaa !5
  %720 = load i64*, i64** %719, align 8, !tbaa !5
  %721 = load i64, i64* %720, align 8, !tbaa !7
  %722 = load i64*, i64** @g_1026, align 8, !tbaa !5
  %723 = load i64, i64* %722, align 8, !tbaa !7
  %724 = or i64 %721, %723
  %725 = icmp eq i64 %718, %724
  %726 = zext i1 %725 to i32
  %727 = load i16, i16* %2, align 2, !tbaa !10
  %728 = zext i16 %727 to i32
  %729 = icmp ne i32 %728, 0
  br label %730

; <label>:730                                     ; preds = %702, %692
  %731 = phi i1 [ true, %692 ], [ %729, %702 ]
  %732 = zext i1 %731 to i32
  %733 = sext i32 %732 to i64
  %734 = load i16, i16* %2, align 2, !tbaa !10
  %735 = load i16*, i16** @g_661, align 8, !tbaa !5
  %736 = load volatile i16, i16* %735, align 2, !tbaa !10
  %737 = load i32, i32* %l_1078, align 4, !tbaa !1
  %738 = sext i32 %737 to i64
  %739 = icmp uge i64 5, %738
  %740 = zext i1 %739 to i32
  %741 = sext i32 %740 to i64
  %742 = load i64*, i64** %l_1175, align 8, !tbaa !5
  store i64 %741, i64* %742, align 8, !tbaa !7
  %743 = call i64 @safe_add_func_int64_t_s_s(i64 %733, i64 %741)
  %744 = trunc i64 %743 to i16
  %745 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %698, i16 signext %744)
  %746 = trunc i16 %745 to i8
  %747 = load i32, i32* %l_1053, align 4, !tbaa !1
  %748 = sext i32 %747 to i64
  %749 = load i8, i8* @g_427, align 1, !tbaa !9
  %750 = sext i8 %749 to i64
  %751 = load i32, i32* @g_69, align 4, !tbaa !1
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds [7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 %752
  %754 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* %753, i32 0, i64 %750
  %755 = getelementptr inbounds [4 x i8], [4 x i8]* %754, i32 0, i64 %748
  store i8 %746, i8* %755, align 1, !tbaa !9
  %756 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %746, i32 1)
  %757 = load i16, i16* %2, align 2, !tbaa !10
  %758 = zext i16 %757 to i64
  %759 = or i64 5384, %758
  %760 = load i16, i16* %2, align 2, !tbaa !10
  %761 = zext i16 %760 to i32
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %763, label %766

; <label>:763                                     ; preds = %730
  %764 = load i64, i64* %l_1185, align 8, !tbaa !7
  %765 = icmp ne i64 %764, 0
  br label %766

; <label>:766                                     ; preds = %763, %730
  %767 = phi i1 [ false, %730 ], [ %765, %763 ]
  %768 = zext i1 %767 to i32
  %769 = load i32, i32* %l_1186, align 4, !tbaa !1
  %770 = icmp ult i32 %768, %769
  %771 = zext i1 %770 to i32
  %772 = sext i32 %771 to i64
  %773 = load i64, i64* %l_1187, align 8, !tbaa !7
  %774 = or i64 %773, %772
  store i64 %774, i64* %l_1187, align 8, !tbaa !7
  %775 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %775) #1
  %776 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %776) #1
  %777 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %777) #1
  %778 = bitcast i32* %l_1182 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %778) #1
  br label %781

; <label>:779                                     ; preds = %684
  %780 = load volatile i32, i32* @g_146, align 4, !tbaa !1
  store i32 %780, i32* %1
  store i32 1, i32* %3
  br label %1044

; <label>:781                                     ; preds = %766
  %782 = load i32***, i32**** @g_143, align 8, !tbaa !5
  %783 = load i32**, i32*** %782, align 8, !tbaa !5
  %784 = load i32*, i32** %783, align 8, !tbaa !5
  %785 = load volatile i32, i32* %784, align 4, !tbaa !1
  %786 = icmp ne i32 %785, 0
  br i1 %786, label %787, label %788

; <label>:787                                     ; preds = %781
  store i32 34, i32* %3
  br label %1044

; <label>:788                                     ; preds = %781
  store i16 0, i16* @g_113, align 2, !tbaa !10
  br label %789

; <label>:789                                     ; preds = %1038, %788
  %790 = load i16, i16* @g_113, align 2, !tbaa !10
  %791 = zext i16 %790 to i32
  %792 = icmp sle i32 %791, 0
  br i1 %792, label %793, label %1043

; <label>:793                                     ; preds = %789
  %794 = bitcast [3 x [6 x i16***]]* %l_1191 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %794) #1
  %795 = getelementptr inbounds [3 x [6 x i16***]], [3 x [6 x i16***]]* %l_1191, i64 0, i64 0
  %796 = getelementptr inbounds [6 x i16***], [6 x i16***]* %795, i64 0, i64 0
  store i16*** %l_1189, i16**** %796, !tbaa !5
  %797 = getelementptr inbounds i16***, i16**** %796, i64 1
  store i16*** %l_1189, i16**** %797, !tbaa !5
  %798 = getelementptr inbounds i16***, i16**** %797, i64 1
  store i16*** null, i16**** %798, !tbaa !5
  %799 = getelementptr inbounds i16***, i16**** %798, i64 1
  store i16*** null, i16**** %799, !tbaa !5
  %800 = getelementptr inbounds i16***, i16**** %799, i64 1
  store i16*** %l_1189, i16**** %800, !tbaa !5
  %801 = getelementptr inbounds i16***, i16**** %800, i64 1
  store i16*** %l_1189, i16**** %801, !tbaa !5
  %802 = getelementptr inbounds [6 x i16***], [6 x i16***]* %795, i64 1
  %803 = getelementptr inbounds [6 x i16***], [6 x i16***]* %802, i64 0, i64 0
  store i16*** %l_1189, i16**** %803, !tbaa !5
  %804 = getelementptr inbounds i16***, i16**** %803, i64 1
  store i16*** null, i16**** %804, !tbaa !5
  %805 = getelementptr inbounds i16***, i16**** %804, i64 1
  store i16*** null, i16**** %805, !tbaa !5
  %806 = getelementptr inbounds i16***, i16**** %805, i64 1
  store i16*** %l_1189, i16**** %806, !tbaa !5
  %807 = getelementptr inbounds i16***, i16**** %806, i64 1
  store i16*** %l_1189, i16**** %807, !tbaa !5
  %808 = getelementptr inbounds i16***, i16**** %807, i64 1
  store i16*** null, i16**** %808, !tbaa !5
  %809 = getelementptr inbounds [6 x i16***], [6 x i16***]* %802, i64 1
  %810 = getelementptr inbounds [6 x i16***], [6 x i16***]* %809, i64 0, i64 0
  store i16*** %l_1189, i16**** %810, !tbaa !5
  %811 = getelementptr inbounds i16***, i16**** %810, i64 1
  store i16*** %l_1189, i16**** %811, !tbaa !5
  %812 = getelementptr inbounds i16***, i16**** %811, i64 1
  store i16*** null, i16**** %812, !tbaa !5
  %813 = getelementptr inbounds i16***, i16**** %812, i64 1
  store i16*** null, i16**** %813, !tbaa !5
  %814 = getelementptr inbounds i16***, i16**** %813, i64 1
  store i16*** %l_1189, i16**** %814, !tbaa !5
  %815 = getelementptr inbounds i16***, i16**** %814, i64 1
  store i16*** %l_1189, i16**** %815, !tbaa !5
  %816 = bitcast i16***** %l_1190 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %816) #1
  %817 = getelementptr inbounds [3 x [6 x i16***]], [3 x [6 x i16***]]* %l_1191, i32 0, i64 2
  %818 = getelementptr inbounds [6 x i16***], [6 x i16***]* %817, i32 0, i64 2
  store i16**** %818, i16***** %l_1190, align 8, !tbaa !5
  %819 = bitcast [2 x [1 x [2 x i32]]]* %l_1206 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %819) #1
  %820 = bitcast [2 x [1 x [2 x i32]]]* %l_1206 to i8*
  call void @llvm.memset.p0i8.i64(i8* %820, i8 0, i64 16, i32 16, i1 false)
  %821 = bitcast i16** %l_1207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %821) #1
  store i16* @g_228, i16** %l_1207, align 8, !tbaa !5
  %822 = bitcast [7 x [3 x i8*]]* %l_1208 to i8*
  call void @llvm.lifetime.start(i64 168, i8* %822) #1
  %823 = getelementptr inbounds [7 x [3 x i8*]], [7 x [3 x i8*]]* %l_1208, i64 0, i64 0
  %824 = getelementptr inbounds [3 x i8*], [3 x i8*]* %823, i64 0, i64 0
  store i8* %l_37, i8** %824, !tbaa !5
  %825 = getelementptr inbounds i8*, i8** %824, i64 1
  store i8* %l_37, i8** %825, !tbaa !5
  %826 = getelementptr inbounds i8*, i8** %825, i64 1
  store i8* %l_37, i8** %826, !tbaa !5
  %827 = getelementptr inbounds [3 x i8*], [3 x i8*]* %823, i64 1
  %828 = getelementptr inbounds [3 x i8*], [3 x i8*]* %827, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %828, !tbaa !5
  %829 = getelementptr inbounds i8*, i8** %828, i64 1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %829, !tbaa !5
  %830 = getelementptr inbounds i8*, i8** %829, i64 1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %830, !tbaa !5
  %831 = getelementptr inbounds [3 x i8*], [3 x i8*]* %827, i64 1
  %832 = getelementptr inbounds [3 x i8*], [3 x i8*]* %831, i64 0, i64 0
  store i8* %l_37, i8** %832, !tbaa !5
  %833 = getelementptr inbounds i8*, i8** %832, i64 1
  store i8* %l_37, i8** %833, !tbaa !5
  %834 = getelementptr inbounds i8*, i8** %833, i64 1
  store i8* %l_37, i8** %834, !tbaa !5
  %835 = getelementptr inbounds [3 x i8*], [3 x i8*]* %831, i64 1
  %836 = getelementptr inbounds [3 x i8*], [3 x i8*]* %835, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %836, !tbaa !5
  %837 = getelementptr inbounds i8*, i8** %836, i64 1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %837, !tbaa !5
  %838 = getelementptr inbounds i8*, i8** %837, i64 1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %838, !tbaa !5
  %839 = getelementptr inbounds [3 x i8*], [3 x i8*]* %835, i64 1
  %840 = getelementptr inbounds [3 x i8*], [3 x i8*]* %839, i64 0, i64 0
  store i8* %l_37, i8** %840, !tbaa !5
  %841 = getelementptr inbounds i8*, i8** %840, i64 1
  store i8* %l_37, i8** %841, !tbaa !5
  %842 = getelementptr inbounds i8*, i8** %841, i64 1
  store i8* %l_37, i8** %842, !tbaa !5
  %843 = getelementptr inbounds [3 x i8*], [3 x i8*]* %839, i64 1
  %844 = getelementptr inbounds [3 x i8*], [3 x i8*]* %843, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %844, !tbaa !5
  %845 = getelementptr inbounds i8*, i8** %844, i64 1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %845, !tbaa !5
  %846 = getelementptr inbounds i8*, i8** %845, i64 1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 5, i64 1, i64 3), i8** %846, !tbaa !5
  %847 = getelementptr inbounds [3 x i8*], [3 x i8*]* %843, i64 1
  %848 = getelementptr inbounds [3 x i8*], [3 x i8*]* %847, i64 0, i64 0
  store i8* %l_37, i8** %848, !tbaa !5
  %849 = getelementptr inbounds i8*, i8** %848, i64 1
  store i8* %l_37, i8** %849, !tbaa !5
  %850 = getelementptr inbounds i8*, i8** %849, i64 1
  store i8* %l_37, i8** %850, !tbaa !5
  %851 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %851) #1
  %852 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %852) #1
  %853 = bitcast i32* %k18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %853) #1
  %854 = load i16***, i16**** %l_1188, align 8, !tbaa !5
  %855 = load i16****, i16***** %l_1190, align 8, !tbaa !5
  store i16*** %854, i16**** %855, align 8, !tbaa !5
  %856 = load i16, i16* %2, align 2, !tbaa !10
  %857 = zext i16 %856 to i32
  %858 = load i16, i16* %2, align 2, !tbaa !10
  %859 = zext i16 %858 to i32
  %860 = load i16, i16* %2, align 2, !tbaa !10
  %861 = load i16, i16* %2, align 2, !tbaa !10
  %862 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %863 = load volatile i16*, i16** %862, align 8, !tbaa !5
  %864 = icmp eq i16* %863, %2
  %865 = zext i1 %864 to i32
  %866 = trunc i32 %865 to i16
  %867 = load i16, i16* %2, align 2, !tbaa !10
  %868 = zext i16 %867 to i32
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %870, label %874

; <label>:870                                     ; preds = %793
  %871 = load i16, i16* %2, align 2, !tbaa !10
  %872 = zext i16 %871 to i32
  %873 = icmp ne i32 %872, 0
  br label %874

; <label>:874                                     ; preds = %870, %793
  %875 = phi i1 [ false, %793 ], [ %873, %870 ]
  %876 = zext i1 %875 to i32
  %877 = getelementptr inbounds [2 x [1 x [2 x i32]]], [2 x [1 x [2 x i32]]]* %l_1206, i32 0, i64 1
  %878 = getelementptr inbounds [1 x [2 x i32]], [1 x [2 x i32]]* %877, i32 0, i64 0
  %879 = getelementptr inbounds [2 x i32], [2 x i32]* %878, i32 0, i64 1
  %880 = load i32, i32* %879, align 4, !tbaa !1
  %881 = icmp ne i32 %880, 0
  br i1 %881, label %882, label %883

; <label>:882                                     ; preds = %874
  br label %883

; <label>:883                                     ; preds = %882, %874
  %884 = phi i1 [ false, %874 ], [ true, %882 ]
  %885 = zext i1 %884 to i32
  %886 = icmp slt i32 0, %885
  %887 = zext i1 %886 to i32
  %888 = trunc i32 %887 to i16
  %889 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %866, i16 zeroext %888)
  %890 = zext i16 %889 to i32
  %891 = load i16*, i16** %l_1207, align 8, !tbaa !5
  %892 = load i16, i16* %891, align 2, !tbaa !10
  %893 = sext i16 %892 to i32
  %894 = or i32 %893, %890
  %895 = trunc i32 %894 to i16
  store i16 %895, i16* %891, align 2, !tbaa !10
  %896 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %895, i16 signext -8)
  %897 = icmp ne i16 %896, 0
  %898 = xor i1 %897, true
  %899 = zext i1 %898 to i32
  %900 = call i32 @safe_sub_func_int32_t_s_s(i32 %859, i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %901, i8 signext 67)
  %903 = sext i8 %902 to i16
  %904 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %903, i32 0)
  %905 = sext i16 %904 to i32
  %906 = load i32*, i32** %l_1176, align 8, !tbaa !5
  %907 = load i32, i32* %906, align 4, !tbaa !1
  %908 = icmp eq i32 %905, %907
  %909 = zext i1 %908 to i32
  store i32 1, i32* %l_1054, align 4, !tbaa !1
  %910 = load i64, i64* %l_1187, align 8, !tbaa !7
  %911 = icmp ult i64 1, %910
  %912 = zext i1 %911 to i32
  %913 = sext i32 %912 to i64
  %914 = icmp sle i64 %913, 1
  %915 = zext i1 %914 to i32
  %916 = xor i32 %857, %915
  %917 = call i32 @safe_mod_func_int32_t_s_s(i32 -8, i32 %916)
  %918 = load i32, i32* %l_1078, align 4, !tbaa !1
  %919 = load i32*, i32** %l_1176, align 8, !tbaa !5
  store i32 %918, i32* %919, align 4, !tbaa !1
  %920 = load i16, i16* %2, align 2, !tbaa !10
  %921 = zext i16 %920 to i32
  %922 = load i16, i16* %2, align 2, !tbaa !10
  %923 = zext i16 %922 to i32
  %924 = load i32*, i32** %l_1061, align 8, !tbaa !5
  %925 = icmp eq i32* null, %924
  %926 = zext i1 %925 to i32
  %927 = load i16, i16* %2, align 2, !tbaa !10
  %928 = zext i16 %927 to i32
  store i32 451239116, i32* %l_1054, align 4, !tbaa !1
  %929 = or i32 %928, 451239116
  %930 = load i16, i16* %2, align 2, !tbaa !10
  %931 = zext i16 %930 to i32
  %932 = icmp ne i32 0, %931
  %933 = zext i1 %932 to i32
  %934 = trunc i32 %933 to i8
  %935 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %934, i32 6)
  %936 = sext i8 %935 to i16
  %937 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %938 = load volatile i16*, i16** %937, align 8, !tbaa !5
  %939 = load volatile i16, i16* %938, align 2, !tbaa !10
  %940 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %936, i16 zeroext %939)
  %941 = zext i16 %940 to i32
  %942 = icmp sge i32 %929, %941
  %943 = zext i1 %942 to i32
  %944 = sext i32 %943 to i64
  %945 = icmp ne i64 %944, -7
  %946 = zext i1 %945 to i32
  %947 = load i16, i16* %2, align 2, !tbaa !10
  %948 = zext i16 %947 to i32
  %949 = or i32 %946, %948
  %950 = or i32 %923, %949
  %951 = load i32, i32* %l_1078, align 4, !tbaa !1
  %952 = icmp ne i32 %950, %951
  br i1 %952, label %953, label %956

; <label>:953                                     ; preds = %883
  %954 = load i64, i64* %l_1187, align 8, !tbaa !7
  %955 = icmp ne i64 %954, 0
  br i1 %955, label %963, label %956

; <label>:956                                     ; preds = %953, %883
  %957 = load i64, i64* %l_1187, align 8, !tbaa !7
  %958 = icmp ne i64 %957, 0
  br i1 %958, label %963, label %959

; <label>:959                                     ; preds = %956
  %960 = load i32*, i32** %l_1176, align 8, !tbaa !5
  %961 = load i32, i32* %960, align 4, !tbaa !1
  %962 = icmp ne i32 %961, 0
  br label %963

; <label>:963                                     ; preds = %959, %956, %953
  %964 = phi i1 [ true, %956 ], [ true, %953 ], [ %962, %959 ]
  %965 = zext i1 %964 to i32
  %966 = trunc i32 %965 to i8
  %967 = load i64, i64* %l_1227, align 8, !tbaa !7
  %968 = trunc i64 %967 to i8
  %969 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %966, i8 signext %968)
  %970 = sext i8 %969 to i32
  %971 = icmp sle i32 %921, %970
  %972 = zext i1 %971 to i32
  %973 = trunc i32 %972 to i16
  %974 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %973, i32 5)
  %975 = trunc i16 %974 to i8
  %976 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %975, i32 2)
  %977 = zext i8 %976 to i32
  %978 = load i32, i32* %l_1078, align 4, !tbaa !1
  %979 = xor i32 %977, %978
  %980 = trunc i32 %979 to i16
  %981 = load i8, i8* @g_130, align 1, !tbaa !9
  %982 = zext i8 %981 to i16
  %983 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %980, i16 signext %982)
  %984 = getelementptr inbounds [2 x [1 x [2 x i32]]], [2 x [1 x [2 x i32]]]* %l_1206, i32 0, i64 0
  %985 = getelementptr inbounds [1 x [2 x i32]], [1 x [2 x i32]]* %984, i32 0, i64 0
  %986 = getelementptr inbounds [2 x i32], [2 x i32]* %985, i32 0, i64 0
  %987 = load i32, i32* %986, align 4, !tbaa !1
  %988 = trunc i32 %987 to i16
  %989 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %988, i16 signext -1)
  %990 = sext i16 %989 to i32
  %991 = icmp ne i32 %990, 0
  br i1 %991, label %996, label %992

; <label>:992                                     ; preds = %963
  %993 = load i16, i16* %2, align 2, !tbaa !10
  %994 = zext i16 %993 to i32
  %995 = icmp ne i32 %994, 0
  br label %996

; <label>:996                                     ; preds = %992, %963
  %997 = phi i1 [ true, %963 ], [ %995, %992 ]
  %998 = zext i1 %997 to i32
  %999 = trunc i32 %998 to i8
  %1000 = load i8, i8* %l_37, align 1, !tbaa !9
  %1001 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %999, i8 signext %1000)
  %1002 = sext i8 %1001 to i32
  %1003 = icmp ne i32 %1002, 0
  br i1 %1003, label %1004, label %1005

; <label>:1004                                    ; preds = %996
  br label %1005

; <label>:1005                                    ; preds = %1004, %996
  %1006 = phi i1 [ false, %996 ], [ true, %1004 ]
  %1007 = zext i1 %1006 to i32
  %1008 = sext i32 %1007 to i64
  %1009 = and i64 %1008, 1699586081
  %1010 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 4
  %1011 = load i32, i32* %1010, align 4, !tbaa !1
  %1012 = sext i32 %1011 to i64
  %1013 = or i64 %1012, %1009
  %1014 = trunc i64 %1013 to i32
  store i32 %1014, i32* %1010, align 4, !tbaa !1
  %1015 = load volatile i32**, i32*** @g_506, align 8, !tbaa !5
  %1016 = load i32*, i32** %1015, align 8, !tbaa !5
  %1017 = load i8, i8* @g_427, align 1, !tbaa !9
  %1018 = sext i8 %1017 to i32
  %1019 = add nsw i32 %1018, 3
  %1020 = sext i32 %1019 to i64
  %1021 = load i16, i16* @g_113, align 2, !tbaa !10
  %1022 = zext i16 %1021 to i64
  %1023 = load i8, i8* @g_427, align 1, !tbaa !9
  %1024 = sext i8 %1023 to i32
  %1025 = add nsw i32 %1024, 9
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [10 x [1 x [4 x i32*]]], [10 x [1 x [4 x i32*]]]* @g_507, i32 0, i64 %1026
  %1028 = getelementptr inbounds [1 x [4 x i32*]], [1 x [4 x i32*]]* %1027, i32 0, i64 %1022
  %1029 = getelementptr inbounds [4 x i32*], [4 x i32*]* %1028, i32 0, i64 %1020
  store i32* %1016, i32** %1029, align 8, !tbaa !5
  %1030 = bitcast i32* %k18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1030) #1
  %1031 = bitcast i32* %j17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1031) #1
  %1032 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1032) #1
  %1033 = bitcast [7 x [3 x i8*]]* %l_1208 to i8*
  call void @llvm.lifetime.end(i64 168, i8* %1033) #1
  %1034 = bitcast i16** %l_1207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1034) #1
  %1035 = bitcast [2 x [1 x [2 x i32]]]* %l_1206 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1035) #1
  %1036 = bitcast i16***** %l_1190 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1036) #1
  %1037 = bitcast [3 x [6 x i16***]]* %l_1191 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %1037) #1
  br label %1038

; <label>:1038                                    ; preds = %1005
  %1039 = load i16, i16* @g_113, align 2, !tbaa !10
  %1040 = zext i16 %1039 to i32
  %1041 = add nsw i32 %1040, 1
  %1042 = trunc i32 %1041 to i16
  store i16 %1042, i16* @g_113, align 2, !tbaa !10
  br label %789

; <label>:1043                                    ; preds = %789
  store i32 0, i32* %3
  br label %1044

; <label>:1044                                    ; preds = %1043, %787, %779
  %1045 = bitcast i16**** %l_1188 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1045) #1
  %1046 = bitcast i16*** %l_1189 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1046) #1
  %1047 = bitcast i64* %l_1187 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1047) #1
  %cleanup.dest.19 = load i32, i32* %3
  switch i32 %cleanup.dest.19, label %1053 [
    i32 0, label %1048
    i32 34, label %1049
  ]

; <label>:1048                                    ; preds = %1044
  br label %1049

; <label>:1049                                    ; preds = %1048, %1044
  %1050 = load i32, i32* @g_69, align 4, !tbaa !1
  %1051 = add nsw i32 %1050, 1
  store i32 %1051, i32* @g_69, align 4, !tbaa !1
  br label %681

; <label>:1052                                    ; preds = %681
  store i32 0, i32* %3
  br label %1053

; <label>:1053                                    ; preds = %1052, %1044, %669
  %1054 = bitcast i64* %l_1227 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1054) #1
  %1055 = bitcast i64* %l_1185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1055) #1
  %1056 = bitcast i32** %l_1176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1056) #1
  %1057 = bitcast i64** %l_1175 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1057) #1
  %1058 = bitcast i16** %l_1174 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1058) #1
  %1059 = bitcast i32****** %l_1171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1059) #1
  %1060 = bitcast i32****** %l_1170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1060) #1
  %1061 = bitcast i64** %l_1167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1061) #1
  %1062 = bitcast i32* %l_1158 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1062) #1
  %1063 = bitcast i8*** %l_1137 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1063) #1
  %1064 = bitcast i8** %l_1138 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1064) #1
  %1065 = bitcast i64* %l_1101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1065) #1
  %1066 = bitcast i32* %l_1075 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1066) #1
  %1067 = bitcast i32** %l_1062 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1067) #1
  %cleanup.dest.20 = load i32, i32* %3
  switch i32 %cleanup.dest.20, label %1230 [
    i32 0, label %1068
  ]

; <label>:1068                                    ; preds = %1053
  br label %1069

; <label>:1069                                    ; preds = %1068
  %1070 = load i32, i32* %l_1053, align 4, !tbaa !1
  %1071 = add nsw i32 %1070, 1
  store i32 %1071, i32* %l_1053, align 4, !tbaa !1
  br label %109

; <label>:1072                                    ; preds = %109
  %1073 = load i32, i32* %l_1155, align 4, !tbaa !1
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1075, label %1076

; <label>:1075                                    ; preds = %1072
  store i32 8, i32* %3
  br label %1230

; <label>:1076                                    ; preds = %1072
  store i32 6, i32* @g_75, align 4, !tbaa !1
  br label %1077

; <label>:1077                                    ; preds = %1226, %1076
  %1078 = load i32, i32* @g_75, align 4, !tbaa !1
  %1079 = icmp sge i32 %1078, 0
  br i1 %1079, label %1080, label %1229

; <label>:1080                                    ; preds = %1077
  %1081 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1081) #1
  %1082 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1082) #1
  store i16 1, i16* @g_113, align 2, !tbaa !10
  br label %1083

; <label>:1083                                    ; preds = %1215, %1080
  %1084 = load i16, i16* @g_113, align 2, !tbaa !10
  %1085 = zext i16 %1084 to i32
  %1086 = icmp sle i32 %1085, 4
  br i1 %1086, label %1087, label %1220

; <label>:1087                                    ; preds = %1083
  %1088 = bitcast i8** %l_1230 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1088) #1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 3, i64 0, i64 1), i8** %l_1230, align 8, !tbaa !5
  %1089 = bitcast i32** %l_1236 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1089) #1
  store i32* null, i32** %l_1236, align 8, !tbaa !5
  %1090 = bitcast i32*** %l_1235 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1090) #1
  store i32** %l_1236, i32*** %l_1235, align 8, !tbaa !5
  %1091 = bitcast [8 x i32*]* %l_1238 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1091) #1
  %1092 = bitcast [8 x i32*]* %l_1238 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1092, i8 0, i64 64, i32 16, i1 false)
  %1093 = bitcast i32*** %l_1237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1093) #1
  %1094 = getelementptr inbounds [8 x i32*], [8 x i32*]* %l_1238, i32 0, i64 0
  store i32** %1094, i32*** %l_1237, align 8, !tbaa !5
  %1095 = bitcast i8** %l_1248 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1095) #1
  store i8* @g_627, i8** %l_1248, align 8, !tbaa !5
  %1096 = bitcast i32* %l_1256 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1096) #1
  store i32 0, i32* %l_1256, align 4, !tbaa !1
  %1097 = bitcast i32* %l_1258 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1097) #1
  store i32 1626450191, i32* %l_1258, align 4, !tbaa !1
  %1098 = bitcast [8 x [3 x [2 x i32]]]* %l_1260 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %1098) #1
  %1099 = bitcast [8 x [3 x [2 x i32]]]* %l_1260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1099, i8* bitcast ([8 x [3 x [2 x i32]]]* @func_21.l_1260 to i8*), i64 192, i32 16, i1 false)
  %1100 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1100) #1
  %1101 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1101) #1
  %1102 = bitcast i32* %k25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1102) #1
  %1103 = load i8*, i8** %l_1230, align 8, !tbaa !5
  %1104 = load i8, i8* %1103, align 1, !tbaa !9
  %1105 = zext i8 %1104 to i64
  %1106 = or i64 %1105, 2
  %1107 = trunc i64 %1106 to i8
  store i8 %1107, i8* %1103, align 1, !tbaa !9
  %1108 = zext i8 %1107 to i32
  %1109 = load i32*, i32** %l_1061, align 8, !tbaa !5
  %1110 = load i32**, i32*** %l_1235, align 8, !tbaa !5
  store i32* %1109, i32** %1110, align 8, !tbaa !5
  %1111 = load i32**, i32*** %l_1237, align 8, !tbaa !5
  store i32* %1109, i32** %1111, align 8, !tbaa !5
  %1112 = load i32*, i32** %l_1239, align 8, !tbaa !5
  store i32* %1112, i32** @g_1240, align 8, !tbaa !5
  %1113 = icmp ne i32* %1109, %1112
  %1114 = zext i1 %1113 to i32
  %1115 = load i32, i32* @g_75, align 4, !tbaa !1
  %1116 = add nsw i32 %1115, 2
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 %1117
  %1119 = load i32, i32* %1118, align 4, !tbaa !1
  %1120 = sext i32 %1119 to i64
  %1121 = icmp ne i64 %1120, 0
  %1122 = zext i1 %1121 to i32
  %1123 = load i32, i32* @g_75, align 4, !tbaa !1
  %1124 = add nsw i32 %1123, 1
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 %1125
  %1127 = load i32, i32* %1126, align 4, !tbaa !1
  %1128 = icmp sge i32 %1122, %1127
  %1129 = zext i1 %1128 to i32
  %1130 = load i32*****, i32****** getelementptr inbounds ([9 x [6 x i32*****]], [9 x [6 x i32*****]]* @func_21.l_1247, i32 0, i64 8, i64 0), align 8, !tbaa !5
  %1131 = icmp eq i32***** null, %1130
  %1132 = zext i1 %1131 to i32
  %1133 = trunc i32 %1132 to i16
  %1134 = load i8, i8* @g_427, align 1, !tbaa !9
  %1135 = sext i8 %1134 to i32
  %1136 = add nsw i32 %1135, 9
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 %1137
  %1139 = load i32, i32* %1138, align 4, !tbaa !1
  %1140 = trunc i32 %1139 to i16
  %1141 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1133, i16 zeroext %1140)
  %1142 = zext i16 %1141 to i32
  %1143 = and i32 %1129, %1142
  %1144 = load i16, i16* @g_113, align 2, !tbaa !10
  %1145 = zext i16 %1144 to i64
  %1146 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 %1145
  %1147 = load i32, i32* %1146, align 4, !tbaa !1
  %1148 = icmp eq i32 %1143, %1147
  %1149 = zext i1 %1148 to i32
  %1150 = trunc i32 %1149 to i8
  %1151 = load i16, i16* @g_113, align 2, !tbaa !10
  %1152 = zext i16 %1151 to i32
  %1153 = add nsw i32 %1152, 4
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 %1154
  %1156 = load i32, i32* %1155, align 4, !tbaa !1
  %1157 = trunc i32 %1156 to i8
  %1158 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1150, i8 zeroext %1157)
  %1159 = zext i8 %1158 to i32
  %1160 = load i16, i16* %2, align 2, !tbaa !10
  %1161 = zext i16 %1160 to i32
  %1162 = icmp slt i32 %1159, %1161
  %1163 = zext i1 %1162 to i32
  %1164 = load i16, i16* @g_28, align 2, !tbaa !10
  %1165 = zext i16 %1164 to i32
  %1166 = and i32 %1165, %1163
  %1167 = trunc i32 %1166 to i16
  store i16 %1167, i16* @g_28, align 2, !tbaa !10
  %1168 = load i8*, i8** %l_1248, align 8, !tbaa !5
  store i8 0, i8* %1168, align 1, !tbaa !9
  %1169 = load i16, i16* %2, align 2, !tbaa !10
  %1170 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1169, i32 15)
  %1171 = sext i16 %1170 to i32
  %1172 = icmp sgt i32 %1114, %1171
  %1173 = zext i1 %1172 to i32
  %1174 = load i16, i16* @g_113, align 2, !tbaa !10
  %1175 = zext i16 %1174 to i64
  %1176 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 %1175
  %1177 = load i32, i32* %1176, align 4, !tbaa !1
  %1178 = trunc i32 %1177 to i8
  %1179 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1178, i32 0)
  %1180 = sext i8 %1179 to i16
  %1181 = load i32, i32* %l_1054, align 4, !tbaa !1
  %1182 = trunc i32 %1181 to i16
  %1183 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1180, i16 signext %1182)
  %1184 = sext i16 %1183 to i32
  %1185 = load i16, i16* %2, align 2, !tbaa !10
  %1186 = zext i16 %1185 to i32
  %1187 = icmp eq i32 %1184, %1186
  %1188 = zext i1 %1187 to i32
  %1189 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_1249, i32 0, i64 5), align 4, !tbaa !1
  %1190 = xor i32 %1189, %1188
  store i32 %1190, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_1249, i32 0, i64 5), align 4, !tbaa !1
  %1191 = icmp sle i32 %1108, %1190
  %1192 = zext i1 %1191 to i32
  %1193 = load i32, i32* %l_1078, align 4, !tbaa !1
  %1194 = call i32 @safe_add_func_uint32_t_u_u(i32 %1192, i32 %1193)
  %1195 = load i16, i16* @g_113, align 2, !tbaa !10
  %1196 = zext i16 %1195 to i32
  %1197 = add nsw i32 %1196, 3
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 %1198
  store i32 %1194, i32* %1199, align 4, !tbaa !1
  %1200 = load i32*, i32** @g_145, align 8, !tbaa !5
  store volatile i32 7, i32* %1200, align 4, !tbaa !1
  %1201 = load i32, i32* %l_1263, align 4, !tbaa !1
  %1202 = add i32 %1201, -1
  store i32 %1202, i32* %l_1263, align 4, !tbaa !1
  %1203 = bitcast i32* %k25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1203) #1
  %1204 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1204) #1
  %1205 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1205) #1
  %1206 = bitcast [8 x [3 x [2 x i32]]]* %l_1260 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %1206) #1
  %1207 = bitcast i32* %l_1258 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1207) #1
  %1208 = bitcast i32* %l_1256 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1208) #1
  %1209 = bitcast i8** %l_1248 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1209) #1
  %1210 = bitcast i32*** %l_1237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1210) #1
  %1211 = bitcast [8 x i32*]* %l_1238 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1211) #1
  %1212 = bitcast i32*** %l_1235 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1212) #1
  %1213 = bitcast i32** %l_1236 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1213) #1
  %1214 = bitcast i8** %l_1230 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1214) #1
  br label %1215

; <label>:1215                                    ; preds = %1087
  %1216 = load i16, i16* @g_113, align 2, !tbaa !10
  %1217 = zext i16 %1216 to i32
  %1218 = add nsw i32 %1217, 1
  %1219 = trunc i32 %1218 to i16
  store i16 %1219, i16* @g_113, align 2, !tbaa !10
  br label %1083

; <label>:1220                                    ; preds = %1083
  %1221 = getelementptr inbounds [8 x i8], [8 x i8]* %l_1254, i32 0, i64 6
  %1222 = load i8, i8* %1221, align 1, !tbaa !9
  %1223 = sext i8 %1222 to i32
  store i32 %1223, i32* %1
  store i32 1, i32* %3
  %1224 = bitcast i32* %j22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1224) #1
  %1225 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1225) #1
  br label %1230
                                                  ; No predecessors!
  %1227 = load i32, i32* @g_75, align 4, !tbaa !1
  %1228 = sub nsw i32 %1227, 1
  store i32 %1228, i32* @g_75, align 4, !tbaa !1
  br label %1077

; <label>:1229                                    ; preds = %1077
  store i32 0, i32* %3
  br label %1230

; <label>:1230                                    ; preds = %1229, %1220, %1075, %1053
  %1231 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1231) #1
  %1232 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1232) #1
  %1233 = bitcast [9 x [4 x i32]]* %l_1262 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %1233) #1
  %1234 = bitcast i32* %l_1257 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1234) #1
  %1235 = bitcast [8 x i8]* %l_1254 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1235) #1
  %1236 = bitcast i32* %l_1251 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1236) #1
  %1237 = bitcast i32** %l_1239 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1237) #1
  %1238 = bitcast i32* %l_1078 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1238) #1
  %1239 = bitcast i32** %l_1074 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1239) #1
  %cleanup.dest.26 = load i32, i32* %3
  switch i32 %cleanup.dest.26, label %1247 [
    i32 0, label %1240
    i32 8, label %1246
  ]

; <label>:1240                                    ; preds = %1230
  br label %1241

; <label>:1241                                    ; preds = %1240
  %1242 = load i8, i8* @g_427, align 1, !tbaa !9
  %1243 = sext i8 %1242 to i32
  %1244 = add nsw i32 %1243, 1
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* @g_427, align 1, !tbaa !9
  br label %83

; <label>:1246                                    ; preds = %1230, %83
  store i32 0, i32* %3
  br label %1247

; <label>:1247                                    ; preds = %1246, %1230
  %1248 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1248) #1
  %1249 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1249) #1
  %1250 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1250) #1
  %1251 = bitcast i32* %l_1261 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1251) #1
  %1252 = bitcast i32* %l_1259 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1252) #1
  %1253 = bitcast i32* %l_1255 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1253) #1
  %1254 = bitcast i32* %l_1252 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1254) #1
  %1255 = bitcast i32* %l_1250 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1255) #1
  %1256 = bitcast i32* %l_1186 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1256) #1
  %1257 = bitcast [7 x [3 x [1 x i16]]]* %l_1177 to i8*
  call void @llvm.lifetime.end(i64 42, i8* %1257) #1
  %1258 = bitcast [1 x i32]* %l_1159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1258) #1
  %1259 = bitcast i16* %l_1120 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1259) #1
  %1260 = bitcast i32** %l_1108 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1260) #1
  %1261 = bitcast i32* %l_1077 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1261) #1
  %cleanup.dest.27 = load i32, i32* %3
  switch i32 %cleanup.dest.27, label %1427 [
    i32 0, label %1262
  ]

; <label>:1262                                    ; preds = %1247
  br label %1423

; <label>:1263                                    ; preds = %41
  %1264 = bitcast i64** %l_1266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1264) #1
  store i64* getelementptr inbounds ([6 x [9 x [1 x i64]]], [6 x [9 x [1 x i64]]]* @g_158, i32 0, i64 0, i64 4, i64 0), i64** %l_1266, align 8, !tbaa !5
  %1265 = bitcast i32* %l_1276 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1265) #1
  store i32 -7, i32* %l_1276, align 4, !tbaa !1
  %1266 = bitcast i8** %l_1277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1266) #1
  store i8* @g_627, i8** %l_1277, align 8, !tbaa !5
  %1267 = bitcast i32* %l_1287 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1267) #1
  store i32 -1147424008, i32* %l_1287, align 4, !tbaa !1
  %1268 = bitcast [6 x [6 x i16*]]* %l_1291 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %1268) #1
  %1269 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1269) #1
  %1270 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1270) #1
  store i32 0, i32* %i28, align 4, !tbaa !1
  br label %1271

; <label>:1271                                    ; preds = %1289, %1263
  %1272 = load i32, i32* %i28, align 4, !tbaa !1
  %1273 = icmp slt i32 %1272, 6
  br i1 %1273, label %1274, label %1292

; <label>:1274                                    ; preds = %1271
  store i32 0, i32* %j29, align 4, !tbaa !1
  br label %1275

; <label>:1275                                    ; preds = %1285, %1274
  %1276 = load i32, i32* %j29, align 4, !tbaa !1
  %1277 = icmp slt i32 %1276, 6
  br i1 %1277, label %1278, label %1288

; <label>:1278                                    ; preds = %1275
  %1279 = load i32, i32* %j29, align 4, !tbaa !1
  %1280 = sext i32 %1279 to i64
  %1281 = load i32, i32* %i28, align 4, !tbaa !1
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds [6 x [6 x i16*]], [6 x [6 x i16*]]* %l_1291, i32 0, i64 %1282
  %1284 = getelementptr inbounds [6 x i16*], [6 x i16*]* %1283, i32 0, i64 %1280
  store i16* @g_228, i16** %1284, align 8, !tbaa !5
  br label %1285

; <label>:1285                                    ; preds = %1278
  %1286 = load i32, i32* %j29, align 4, !tbaa !1
  %1287 = add nsw i32 %1286, 1
  store i32 %1287, i32* %j29, align 4, !tbaa !1
  br label %1275

; <label>:1288                                    ; preds = %1275
  br label %1289

; <label>:1289                                    ; preds = %1288
  %1290 = load i32, i32* %i28, align 4, !tbaa !1
  %1291 = add nsw i32 %1290, 1
  store i32 %1291, i32* %i28, align 4, !tbaa !1
  br label %1271

; <label>:1292                                    ; preds = %1271
  %1293 = load i32, i32* %l_1053, align 4, !tbaa !1
  %1294 = load i64*, i64** %l_1266, align 8, !tbaa !5
  %1295 = load i64*, i64** %l_1266, align 8, !tbaa !5
  %1296 = icmp ne i64* %1294, %1295
  %1297 = zext i1 %1296 to i32
  %1298 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 5
  store i32 %1297, i32* %1298, align 4, !tbaa !1
  %1299 = load i32**, i32*** @g_144, align 8, !tbaa !5
  %1300 = load i32*, i32** %1299, align 8, !tbaa !5
  store volatile i32 %1297, i32* %1300, align 4, !tbaa !1
  %1301 = load i32*, i32** %l_1061, align 8, !tbaa !5
  %1302 = load i32, i32* %1301, align 4, !tbaa !1
  %1303 = add i32 %1302, -1
  store i32 %1303, i32* %1301, align 4, !tbaa !1
  %1304 = load i16, i16* %2, align 2, !tbaa !10
  %1305 = zext i16 %1304 to i64
  %1306 = load i8, i8* @g_627, align 1, !tbaa !9
  %1307 = sext i8 %1306 to i32
  %1308 = load i32, i32* %l_1276, align 4, !tbaa !1
  %1309 = icmp slt i32 %1307, %1308
  %1310 = zext i1 %1309 to i32
  %1311 = trunc i32 %1310 to i8
  %1312 = load i8*, i8** %l_1277, align 8, !tbaa !5
  store i8 %1311, i8* %1312, align 1, !tbaa !9
  %1313 = load i16, i16* %2, align 2, !tbaa !10
  %1314 = zext i16 %1313 to i64
  %1315 = load i16, i16* %2, align 2, !tbaa !10
  %1316 = zext i16 %1315 to i64
  %1317 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1314, i64 %1316)
  %1318 = getelementptr inbounds [10 x i32], [10 x i32]* %l_1103, i32 0, i64 4
  %1319 = load i32, i32* %1318, align 4, !tbaa !1
  %1320 = trunc i32 %1319 to i8
  %1321 = load i16**, i16*** %l_1282, align 8, !tbaa !5
  %1322 = icmp eq i16** null, %1321
  %1323 = zext i1 %1322 to i32
  %1324 = load i16, i16* %2, align 2, !tbaa !10
  %1325 = zext i16 %1324 to i32
  %1326 = load i16, i16* %2, align 2, !tbaa !10
  %1327 = zext i16 %1326 to i32
  %1328 = icmp sle i32 %1325, %1327
  br i1 %1328, label %1332, label %1329

; <label>:1329                                    ; preds = %1292
  %1330 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @g_1249, i32 0, i64 5), align 4, !tbaa !1
  %1331 = icmp ne i32 %1330, 0
  br label %1332

; <label>:1332                                    ; preds = %1329, %1292
  %1333 = phi i1 [ true, %1292 ], [ %1331, %1329 ]
  %1334 = zext i1 %1333 to i32
  %1335 = trunc i32 %1334 to i16
  %1336 = load volatile i8, i8* @g_353, align 1, !tbaa !9
  %1337 = sext i8 %1336 to i32
  %1338 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1335, i32 %1337)
  %1339 = zext i16 %1338 to i64
  %1340 = icmp slt i64 %1339, 13376
  %1341 = zext i1 %1340 to i32
  %1342 = trunc i32 %1341 to i8
  %1343 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1320, i8 zeroext %1342)
  %1344 = zext i8 %1343 to i32
  %1345 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* %l_1253, i32 0, i64 5
  %1346 = getelementptr inbounds [4 x i32], [4 x i32]* %1345, i32 0, i64 2
  %1347 = load i32, i32* %1346, align 4, !tbaa !1
  %1348 = icmp eq i32 %1344, %1347
  %1349 = zext i1 %1348 to i32
  %1350 = sext i32 %1349 to i64
  %1351 = icmp eq i64 %1317, %1350
  %1352 = zext i1 %1351 to i32
  %1353 = load i32, i32* %l_1287, align 4, !tbaa !1
  %1354 = icmp ne i32 %1352, %1353
  %1355 = zext i1 %1354 to i32
  %1356 = sext i32 %1355 to i64
  %1357 = and i64 %1356, 3
  %1358 = load i32, i32* %l_1276, align 4, !tbaa !1
  %1359 = sext i32 %1358 to i64
  %1360 = call i64 @safe_div_func_uint64_t_u_u(i64 %1357, i64 %1359)
  %1361 = xor i64 %1360, 8419655118468961627
  %1362 = icmp ule i64 %1305, %1361
  %1363 = zext i1 %1362 to i32
  %1364 = call i32 @safe_div_func_uint32_t_u_u(i32 %1363, i32 199337205)
  %1365 = trunc i32 %1364 to i8
  %1366 = load i16, i16* %2, align 2, !tbaa !10
  %1367 = trunc i16 %1366 to i8
  %1368 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1365, i8 signext %1367)
  %1369 = sext i8 %1368 to i32
  %1370 = load i16, i16* %2, align 2, !tbaa !10
  %1371 = zext i16 %1370 to i32
  %1372 = icmp sle i32 %1369, %1371
  br i1 %1372, label %1374, label %1373

; <label>:1373                                    ; preds = %1332
  br label %1374

; <label>:1374                                    ; preds = %1373, %1332
  %1375 = phi i1 [ true, %1332 ], [ false, %1373 ]
  %1376 = zext i1 %1375 to i32
  %1377 = sext i32 %1376 to i64
  %1378 = icmp ult i64 %1377, 4294967294
  %1379 = zext i1 %1378 to i32
  %1380 = load i32***, i32**** @g_143, align 8, !tbaa !5
  %1381 = load i32**, i32*** %1380, align 8, !tbaa !5
  %1382 = load i32*, i32** %1381, align 8, !tbaa !5
  store volatile i32 %1379, i32* %1382, align 4, !tbaa !1
  %1383 = getelementptr inbounds [10 x i16*], [10 x i16*]* %l_1290, i32 0, i64 7
  store i16* @g_310, i16** %1383, align 8, !tbaa !5
  %1384 = getelementptr inbounds [6 x [6 x i16*]], [6 x [6 x i16*]]* %l_1291, i32 0, i64 5
  %1385 = getelementptr inbounds [6 x i16*], [6 x i16*]* %1384, i32 0, i64 0
  %1386 = load i16*, i16** %1385, align 8, !tbaa !5
  %1387 = icmp eq i16* @g_310, %1386
  %1388 = zext i1 %1387 to i32
  %1389 = load i32, i32* %l_1054, align 4, !tbaa !1
  store i32 %1389, i32* %l_1054, align 4, !tbaa !1
  %1390 = sext i32 %1389 to i64
  %1391 = load i16, i16* %2, align 2, !tbaa !10
  %1392 = zext i16 %1391 to i64
  %1393 = load i32, i32* %l_1263, align 4, !tbaa !1
  %1394 = trunc i32 %1393 to i8
  %1395 = load i32, i32* %l_1296, align 4, !tbaa !1
  %1396 = trunc i32 %1395 to i8
  %1397 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1394, i8 signext %1396)
  %1398 = sext i8 %1397 to i64
  %1399 = call i64 @safe_div_func_int64_t_s_s(i64 %1392, i64 %1398)
  %1400 = load i64*, i64** %l_1266, align 8, !tbaa !5
  store i64 %1399, i64* %1400, align 8, !tbaa !7
  %1401 = load i16, i16* %2, align 2, !tbaa !10
  %1402 = load i16, i16* %l_1299, align 2, !tbaa !10
  %1403 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %1401, i16 zeroext %1402)
  %1404 = zext i16 %1403 to i64
  %1405 = and i64 %1399, %1404
  %1406 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1390, i64 %1405)
  %1407 = load i16, i16* %2, align 2, !tbaa !10
  %1408 = trunc i16 %1407 to i8
  %1409 = load i16, i16* %2, align 2, !tbaa !10
  %1410 = trunc i16 %1409 to i8
  %1411 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1408, i8 zeroext %1410)
  %1412 = zext i8 %1411 to i32
  %1413 = load i32*, i32** @g_145, align 8, !tbaa !5
  %1414 = load volatile i32, i32* %1413, align 4, !tbaa !1
  %1415 = and i32 %1414, %1412
  store volatile i32 %1415, i32* %1413, align 4, !tbaa !1
  %1416 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1416) #1
  %1417 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1417) #1
  %1418 = bitcast [6 x [6 x i16*]]* %l_1291 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %1418) #1
  %1419 = bitcast i32* %l_1287 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1419) #1
  %1420 = bitcast i8** %l_1277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1420) #1
  %1421 = bitcast i32* %l_1276 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1421) #1
  %1422 = bitcast i64** %l_1266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1422) #1
  br label %1423

; <label>:1423                                    ; preds = %1374, %1262
  %1424 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* %l_1253, i32 0, i64 5
  %1425 = getelementptr inbounds [4 x i32], [4 x i32]* %1424, i32 0, i64 2
  %1426 = load i32, i32* %1425, align 4, !tbaa !1
  store i32 %1426, i32* %1
  store i32 1, i32* %3
  br label %1427

; <label>:1427                                    ; preds = %1423, %1247
  %1428 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1428) #1
  %1429 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1429) #1
  %1430 = bitcast i16* %l_1299 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1430) #1
  %1431 = bitcast i32* %l_1296 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1431) #1
  %1432 = bitcast [10 x i16*]* %l_1290 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1432) #1
  %1433 = bitcast i16*** %l_1282 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1433) #1
  %1434 = bitcast i16** %l_1283 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1434) #1
  %1435 = bitcast i32* %l_1263 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1435) #1
  %1436 = bitcast [6 x [4 x i32]]* %l_1253 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %1436) #1
  %1437 = bitcast i32* %l_1155 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1437) #1
  %1438 = bitcast [10 x i32]* %l_1103 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1438) #1
  %1439 = bitcast i32** %l_1061 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1439) #1
  %1440 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1440) #1
  %1441 = bitcast i32* %l_1053 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1441) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_37) #1
  %1442 = load i32, i32* %1
  ret i32 %1442

; <label>:1443                                    ; preds = %438
  unreachable
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal i32 @func_40(i32 %p_41) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %l_55 = alloca [10 x [2 x [8 x i64]]], align 16
  %l_56 = alloca i32, align 4
  %l_1016 = alloca i16*, align 8
  %l_1025 = alloca i64*, align 8
  %l_1028 = alloca i64*, align 8
  %l_1027 = alloca i64**, align 8
  %l_1029 = alloca i8*, align 8
  %l_1030 = alloca [2 x i8*], align 16
  %l_1031 = alloca i32, align 4
  %l_1032 = alloca i8, align 1
  %l_1033 = alloca [5 x [3 x [7 x i32*]]], align 16
  %l_1034 = alloca i16, align 2
  %l_1040 = alloca i8**, align 8
  %l_1042 = alloca i8*, align 8
  %l_1041 = alloca i8**, align 8
  %l_1047 = alloca i32, align 4
  %l_1049 = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_57 = alloca i16, align 2
  %l_1011 = alloca [1 x [9 x [1 x i32]]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_53 = alloca i8, align 1
  %l_54 = alloca [3 x [3 x i32]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_50 = alloca i32*, align 8
  %l_51 = alloca i32*, align 8
  %l_52 = alloca [9 x [7 x i32*]], align 16
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_66 = alloca i32*, align 8
  %3 = alloca i32
  store i32 %p_41, i32* %2, align 4, !tbaa !1
  %4 = bitcast [10 x [2 x [8 x i64]]]* %l_55 to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %4) #1
  %5 = bitcast [10 x [2 x [8 x i64]]]* %l_55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([10 x [2 x [8 x i64]]]* @func_40.l_55 to i8*), i64 1280, i32 16, i1 false)
  %6 = bitcast i32* %l_56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 8, i32* %l_56, align 4, !tbaa !1
  %7 = bitcast i16** %l_1016 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16* @g_113, i16** %l_1016, align 8, !tbaa !5
  %8 = bitcast i64** %l_1025 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64* @g_94, i64** %l_1025, align 8, !tbaa !5
  %9 = bitcast i64** %l_1028 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64* @g_116, i64** %l_1028, align 8, !tbaa !5
  %10 = bitcast i64*** %l_1027 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64** %l_1028, i64*** %l_1027, align 8, !tbaa !5
  %11 = bitcast i8** %l_1029 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8* getelementptr inbounds ([7 x [4 x [4 x i8]]], [7 x [4 x [4 x i8]]]* @g_140, i32 0, i64 0, i64 1, i64 0), i8** %l_1029, align 8, !tbaa !5
  %12 = bitcast [2 x i8*]* %l_1030 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  %13 = bitcast i32* %l_1031 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1117348314, i32* %l_1031, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1032) #1
  store i8 -101, i8* %l_1032, align 1, !tbaa !9
  %14 = bitcast [5 x [3 x [7 x i32*]]]* %l_1033 to i8*
  call void @llvm.lifetime.start(i64 840, i8* %14) #1
  %15 = bitcast [5 x [3 x [7 x i32*]]]* %l_1033 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([5 x [3 x [7 x i32*]]]* @func_40.l_1033 to i8*), i64 840, i32 16, i1 false)
  %16 = bitcast i16* %l_1034 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #1
  store i16 6, i16* %l_1034, align 2, !tbaa !10
  %17 = bitcast i8*** %l_1040 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %l_1030, i32 0, i64 1
  store i8** %18, i8*** %l_1040, align 8, !tbaa !5
  %19 = bitcast i8** %l_1042 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8* @g_5, i8** %l_1042, align 8, !tbaa !5
  %20 = bitcast i8*** %l_1041 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i8** %l_1042, i8*** %l_1041, align 8, !tbaa !5
  %21 = bitcast i32* %l_1047 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 1, i32* %l_1047, align 4, !tbaa !1
  %22 = bitcast [5 x i8]* %l_1049 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:26                                      ; preds = %33, %0
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %l_1030, i32 0, i64 %31
  store i8* @g_627, i8** %32, align 8, !tbaa !5
  br label %33

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:36                                      ; preds = %26
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %37

; <label>:37                                      ; preds = %44, %36
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = icmp slt i32 %38, 5
  br i1 %39, label %40, label %47

; <label>:40                                      ; preds = %37
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %l_1049, i32 0, i64 %42
  store i8 -8, i8* %43, align 1, !tbaa !9
  br label %44

; <label>:44                                      ; preds = %40
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %i, align 4, !tbaa !1
  br label %37

; <label>:47                                      ; preds = %37
  store i32 0, i32* %2, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %183, %47
  %49 = load i32, i32* %2, align 4, !tbaa !1
  %50 = icmp sle i32 %49, 2
  br i1 %50, label %51, label %186

; <label>:51                                      ; preds = %48
  %52 = bitcast i16* %l_57 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %52) #1
  store i16 14739, i16* %l_57, align 2, !tbaa !10
  %53 = bitcast [1 x [9 x [1 x i32]]]* %l_1011 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %53) #1
  %54 = bitcast [1 x [9 x [1 x i32]]]* %l_1011 to i8*
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 36, i32 16, i1 false)
  %55 = bitcast i8* %54 to [1 x [9 x [1 x i32]]]*
  %56 = getelementptr [1 x [9 x [1 x i32]]], [1 x [9 x [1 x i32]]]* %55, i32 0, i32 0
  %57 = getelementptr [9 x [1 x i32]], [9 x [1 x i32]]* %56, i32 0, i32 0
  %58 = getelementptr [1 x i32], [1 x i32]* %57, i32 0, i32 0
  store i32 -8, i32* %58
  %59 = getelementptr [9 x [1 x i32]], [9 x [1 x i32]]* %56, i32 0, i32 2
  %60 = getelementptr [1 x i32], [1 x i32]* %59, i32 0, i32 0
  store i32 -8, i32* %60
  %61 = getelementptr [9 x [1 x i32]], [9 x [1 x i32]]* %56, i32 0, i32 4
  %62 = getelementptr [1 x i32], [1 x i32]* %61, i32 0, i32 0
  store i32 -8, i32* %62
  %63 = getelementptr [9 x [1 x i32]], [9 x [1 x i32]]* %56, i32 0, i32 6
  %64 = getelementptr [1 x i32], [1 x i32]* %63, i32 0, i32 0
  store i32 -8, i32* %64
  %65 = getelementptr [9 x [1 x i32]], [9 x [1 x i32]]* %56, i32 0, i32 8
  %66 = getelementptr [1 x i32], [1 x i32]* %65, i32 0, i32 0
  store i32 -8, i32* %66
  %67 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  store i16 0, i16* @g_28, align 2, !tbaa !10
  br label %70

; <label>:70                                      ; preds = %168, %51
  %71 = load i16, i16* @g_28, align 2, !tbaa !10
  %72 = zext i16 %71 to i32
  %73 = icmp sle i32 %72, 55
  br i1 %73, label %74, label %173

; <label>:74                                      ; preds = %70
  store i32 0, i32* @g_34, align 4, !tbaa !1
  br label %75

; <label>:75                                      ; preds = %164, %74
  %76 = load i32, i32* @g_34, align 4, !tbaa !1
  %77 = icmp sge i32 %76, -9
  br i1 %77, label %78, label %167

; <label>:78                                      ; preds = %75
  call void @llvm.lifetime.start(i64 1, i8* %l_53) #1
  store i8 7, i8* %l_53, align 1, !tbaa !9
  %79 = bitcast [3 x [3 x i32]]* %l_54 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %79) #1
  %80 = bitcast [3 x [3 x i32]]* %l_54 to i8*
  call void @llvm.memset.p0i8.i64(i8* %80, i8 0, i64 36, i32 16, i1 false)
  %81 = bitcast i8* %80 to [3 x [3 x i32]]*
  %82 = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %81, i32 0, i32 1
  %83 = getelementptr [3 x i32], [3 x i32]* %82, i32 0, i32 0
  store i32 1337447542, i32* %83
  %84 = getelementptr [3 x i32], [3 x i32]* %82, i32 0, i32 1
  store i32 1337447542, i32* %84
  %85 = getelementptr [3 x i32], [3 x i32]* %82, i32 0, i32 2
  store i32 1337447542, i32* %85
  %86 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 21, i32* @g_30, align 4, !tbaa !1
  br label %88

; <label>:88                                      ; preds = %156, %78
  %89 = load i32, i32* @g_30, align 4, !tbaa !1
  %90 = icmp sge i32 %89, -10
  br i1 %90, label %91, label %159

; <label>:91                                      ; preds = %88
  %92 = bitcast i32** %l_50 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i32* null, i32** %l_50, align 8, !tbaa !5
  %93 = bitcast i32** %l_51 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i32* null, i32** %l_51, align 8, !tbaa !5
  %94 = bitcast [9 x [7 x i32*]]* %l_52 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %94) #1
  %95 = bitcast [9 x [7 x i32*]]* %l_52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* bitcast ([9 x [7 x i32*]]* @func_40.l_52 to i8*), i64 504, i32 16, i1 false)
  %96 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = load i16, i16* %l_57, align 2, !tbaa !10
  %99 = add i16 %98, -1
  store i16 %99, i16* %l_57, align 2, !tbaa !10
  store i16 -26, i16* %l_57, align 2, !tbaa !10
  br label %100

; <label>:100                                     ; preds = %141, %91
  %101 = load i16, i16* %l_57, align 2, !tbaa !10
  %102 = zext i16 %101 to i32
  %103 = icmp eq i32 %102, 14
  br i1 %103, label %104, label %144

; <label>:104                                     ; preds = %100
  %105 = bitcast i32** %l_66 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %l_54, i32 0, i64 1
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %106, i32 0, i64 0
  store i32* %107, i32** %l_66, align 8, !tbaa !5
  %108 = load i32, i32* %2, align 4, !tbaa !1
  %109 = getelementptr inbounds [10 x [2 x [8 x i64]]], [10 x [2 x [8 x i64]]]* %l_55, i32 0, i64 1
  %110 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %109, i32 0, i64 0
  %111 = getelementptr inbounds [8 x i64], [8 x i64]* %110, i32 0, i64 1
  %112 = load i64, i64* %111, align 8, !tbaa !7
  %113 = load i32*, i32** %l_66, align 8, !tbaa !5
  %114 = icmp ne i32* @g_30, %113
  %115 = zext i1 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = call i64 @safe_add_func_int64_t_s_s(i64 %112, i64 %116)
  %118 = load i32, i32* @g_30, align 4, !tbaa !1
  %119 = icmp slt i32 %108, %118
  %120 = zext i1 %119 to i32
  %121 = trunc i32 %120 to i8
  %122 = call signext i8 @func_67(i16* @g_28)
  %123 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %121, i8 signext %122)
  %124 = load i8**, i8*** @g_351, align 8, !tbaa !5
  %125 = load i8*, i8** %124, align 8, !tbaa !5
  %126 = load volatile i8, i8* %125, align 1, !tbaa !9
  %127 = sext i8 %126 to i32
  %128 = load i16, i16* %l_57, align 2, !tbaa !10
  %129 = zext i16 %128 to i32
  %130 = icmp sgt i32 %127, %129
  %131 = zext i1 %130 to i32
  %132 = load i32***, i32**** @g_143, align 8, !tbaa !5
  %133 = load i32**, i32*** %132, align 8, !tbaa !5
  %134 = load i32*, i32** %133, align 8, !tbaa !5
  store volatile i32 %131, i32* %134, align 4, !tbaa !1
  %135 = load i32, i32* %2, align 4, !tbaa !1
  %136 = load i32, i32* %2, align 4, !tbaa !1
  %137 = getelementptr inbounds [1 x [9 x [1 x i32]]], [1 x [9 x [1 x i32]]]* %l_1011, i32 0, i64 0
  %138 = getelementptr inbounds [9 x [1 x i32]], [9 x [1 x i32]]* %137, i32 0, i64 0
  %139 = getelementptr inbounds [1 x i32], [1 x i32]* %138, i32 0, i64 0
  store i32 %136, i32* %139, align 4, !tbaa !1
  %140 = bitcast i32** %l_66 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  br label %141

; <label>:141                                     ; preds = %104
  %142 = load i16, i16* %l_57, align 2, !tbaa !10
  %143 = add i16 %142, 1
  store i16 %143, i16* %l_57, align 2, !tbaa !10
  br label %100

; <label>:144                                     ; preds = %100
  %145 = load i32, i32* %2, align 4, !tbaa !1
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %144
  store i32 17, i32* %3
  br label %149

; <label>:148                                     ; preds = %144
  store i32 0, i32* %3
  br label %149

; <label>:149                                     ; preds = %148, %147
  %150 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast [9 x [7 x i32*]]* %l_52 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %152) #1
  %153 = bitcast i32** %l_51 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32** %l_50 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %364 [
    i32 0, label %155
    i32 17, label %159
  ]

; <label>:155                                     ; preds = %149
  br label %156

; <label>:156                                     ; preds = %155
  %157 = load i32, i32* @g_30, align 4, !tbaa !1
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* @g_30, align 4, !tbaa !1
  br label %88

; <label>:159                                     ; preds = %149, %88
  %160 = load i32, i32* %2, align 4, !tbaa !1
  store i32 %160, i32* %1
  store i32 1, i32* %3
  %161 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast [3 x [3 x i32]]* %l_54 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %163) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_53) #1
  br label %177
                                                  ; No predecessors!
  %165 = load i32, i32* @g_34, align 4, !tbaa !1
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* @g_34, align 4, !tbaa !1
  br label %75

; <label>:167                                     ; preds = %75
  br label %168

; <label>:168                                     ; preds = %167
  %169 = load i16, i16* @g_28, align 2, !tbaa !10
  %170 = zext i16 %169 to i32
  %171 = call i32 @safe_add_func_uint32_t_u_u(i32 %170, i32 4)
  %172 = trunc i32 %171 to i16
  store i16 %172, i16* @g_28, align 2, !tbaa !10
  br label %70

; <label>:173                                     ; preds = %70
  %174 = load i32**, i32*** @g_144, align 8, !tbaa !5
  %175 = load i32*, i32** %174, align 8, !tbaa !5
  %176 = load volatile i32, i32* %175, align 4, !tbaa !1
  store i32 %176, i32* %1
  store i32 1, i32* %3
  br label %177

; <label>:177                                     ; preds = %173, %159
  %178 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast [1 x [9 x [1 x i32]]]* %l_1011 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %181) #1
  %182 = bitcast i16* %l_57 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %182) #1
  br label %343
                                                  ; No predecessors!
  %184 = load i32, i32* %2, align 4, !tbaa !1
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %2, align 4, !tbaa !1
  br label %48

; <label>:186                                     ; preds = %48
  %187 = load i32, i32* %2, align 4, !tbaa !1
  %188 = getelementptr inbounds [10 x [2 x [8 x i64]]], [10 x [2 x [8 x i64]]]* %l_55, i32 0, i64 1
  %189 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %188, i32 0, i64 0
  %190 = getelementptr inbounds [8 x i64], [8 x i64]* %189, i32 0, i64 4
  %191 = load i64, i64* %190, align 8, !tbaa !7
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

; <label>:193                                     ; preds = %186
  %194 = load i32, i32* %2, align 4, !tbaa !1
  %195 = icmp ne i32 %194, 0
  br label %196

; <label>:196                                     ; preds = %193, %186
  %197 = phi i1 [ false, %186 ], [ %195, %193 ]
  %198 = zext i1 %197 to i32
  %199 = load i16**, i16*** @g_660, align 8, !tbaa !5
  %200 = load volatile i16*, i16** %199, align 8, !tbaa !5
  %201 = load volatile i16, i16* %200, align 2, !tbaa !10
  %202 = zext i16 %201 to i32
  %203 = load i16*, i16** %l_1016, align 8, !tbaa !5
  %204 = load i16, i16* %203, align 2, !tbaa !10
  %205 = zext i16 %204 to i32
  %206 = or i32 %205, %202
  %207 = trunc i32 %206 to i16
  store i16 %207, i16* %203, align 2, !tbaa !10
  %208 = zext i16 %207 to i32
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %258, label %210

; <label>:210                                     ; preds = %196
  %211 = getelementptr inbounds [10 x [2 x [8 x i64]]], [10 x [2 x [8 x i64]]]* %l_55, i32 0, i64 1
  %212 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %211, i32 0, i64 0
  %213 = getelementptr inbounds [8 x i64], [8 x i64]* %212, i32 0, i64 4
  %214 = load i64, i64* %213, align 8, !tbaa !7
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %234, label %216

; <label>:216                                     ; preds = %210
  %217 = load i64*, i64** %l_1025, align 8, !tbaa !5
  store i64* %217, i64** @g_1026, align 8, !tbaa !5
  %218 = load i64*, i64** %l_1025, align 8, !tbaa !5
  %219 = load i64**, i64*** %l_1027, align 8, !tbaa !5
  store i64* %218, i64** %219, align 8, !tbaa !5
  %220 = icmp ne i64* %217, %218
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %l_56, align 4, !tbaa !1
  %223 = or i32 %222, %221
  store i32 %223, i32* %l_56, align 4, !tbaa !1
  %224 = trunc i32 %223 to i8
  %225 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %224, i8 signext 71)
  %226 = sext i8 %225 to i64
  %227 = xor i64 %226, 37895
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %234, label %229

; <label>:229                                     ; preds = %216
  %230 = load i16*, i16** @g_661, align 8, !tbaa !5
  %231 = load volatile i16, i16* %230, align 2, !tbaa !10
  %232 = zext i16 %231 to i32
  %233 = icmp ne i32 %232, 0
  br label %234

; <label>:234                                     ; preds = %229, %216, %210
  %235 = phi i1 [ true, %216 ], [ true, %210 ], [ %233, %229 ]
  %236 = zext i1 %235 to i32
  %237 = load i8*, i8** %l_1029, align 8, !tbaa !5
  %238 = load i8, i8* %237, align 1, !tbaa !9
  %239 = zext i8 %238 to i32
  %240 = or i32 %239, %236
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %237, align 1, !tbaa !9
  %242 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %241, i32 3)
  %243 = zext i8 %242 to i32
  %244 = load i32, i32* %l_1031, align 4, !tbaa !1
  %245 = and i32 %244, %243
  store i32 %245, i32* %l_1031, align 4, !tbaa !1
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds [10 x [2 x [8 x i64]]], [10 x [2 x [8 x i64]]]* %l_55, i32 0, i64 3
  %248 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %247, i32 0, i64 1
  %249 = getelementptr inbounds [8 x i64], [8 x i64]* %248, i32 0, i64 2
  %250 = load i64, i64* %249, align 8, !tbaa !7
  %251 = trunc i64 %250 to i8
  %252 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %246, i8 signext %251)
  %253 = sext i8 %252 to i64
  %254 = icmp eq i64 %253, 1
  %255 = zext i1 %254 to i32
  %256 = call i32 @safe_div_func_int32_t_s_s(i32 %255, i32 1)
  %257 = icmp ne i32 %256, 0
  br label %258

; <label>:258                                     ; preds = %234, %196
  %259 = phi i1 [ true, %196 ], [ %257, %234 ]
  %260 = zext i1 %259 to i32
  %261 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 43, i32 %260)
  %262 = sext i8 %261 to i32
  %263 = load i32, i32* %2, align 4, !tbaa !1
  %264 = icmp ne i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = icmp eq i64 33, %266
  %268 = zext i1 %267 to i32
  %269 = load i8, i8* %l_1032, align 1, !tbaa !9
  %270 = zext i8 %269 to i32
  %271 = icmp sge i32 %268, %270
  %272 = zext i1 %271 to i32
  %273 = icmp slt i32 %198, %272
  %274 = zext i1 %273 to i32
  %275 = icmp sle i32 %187, %274
  %276 = zext i1 %275 to i32
  %277 = load i16, i16* %l_1034, align 2, !tbaa !10
  %278 = sext i16 %277 to i32
  %279 = and i32 %278, %276
  %280 = trunc i32 %279 to i16
  store i16 %280, i16* %l_1034, align 2, !tbaa !10
  %281 = load i32, i32* %2, align 4, !tbaa !1
  %282 = load volatile i32*, i32** @g_29, align 8, !tbaa !5
  %283 = load i32, i32* %282, align 4, !tbaa !1
  %284 = xor i32 %283, %281
  store i32 %284, i32* %282, align 4, !tbaa !1
  %285 = load i8*, i8** %l_1029, align 8, !tbaa !5
  %286 = load i8, i8* %285, align 1, !tbaa !9
  %287 = add i8 %286, 1
  store i8 %287, i8* %285, align 1, !tbaa !9
  %288 = zext i8 %286 to i32
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %316, label %290

; <label>:290                                     ; preds = %258
  %291 = getelementptr inbounds [2 x i8*], [2 x i8*]* %l_1030, i32 0, i64 1
  %292 = load i8*, i8** %291, align 8, !tbaa !5
  %293 = load i8**, i8*** %l_1040, align 8, !tbaa !5
  store i8* %292, i8** %293, align 8, !tbaa !5
  %294 = load i8*, i8** %l_1029, align 8, !tbaa !5
  %295 = load i8**, i8*** %l_1041, align 8, !tbaa !5
  store i8* %294, i8** %295, align 8, !tbaa !5
  %296 = icmp eq i8* %292, %294
  %297 = zext i1 %296 to i32
  %298 = load i32, i32* %2, align 4, !tbaa !1
  %299 = trunc i32 %298 to i8
  %300 = load i32, i32* %2, align 4, !tbaa !1
  %301 = trunc i32 %300 to i8
  %302 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %299, i8 zeroext %301)
  %303 = zext i8 %302 to i32
  %304 = icmp sgt i32 %297, %303
  br i1 %304, label %305, label %314

; <label>:305                                     ; preds = %290
  %306 = load i32, i32* %2, align 4, !tbaa !1
  %307 = icmp ne i32 %306, 0
  %308 = zext i1 %307 to i32
  %309 = load i32, i32* %l_1047, align 4, !tbaa !1
  %310 = load i32, i32* %2, align 4, !tbaa !1
  %311 = sext i32 %310 to i64
  %312 = call i64 @safe_sub_func_int64_t_s_s(i64 %311, i64 0)
  %313 = icmp ne i64 %312, 0
  br label %314

; <label>:314                                     ; preds = %305, %290
  %315 = phi i1 [ false, %290 ], [ %313, %305 ]
  br label %316

; <label>:316                                     ; preds = %314, %258
  %317 = phi i1 [ true, %258 ], [ %315, %314 ]
  %318 = zext i1 %317 to i32
  %319 = sext i32 %318 to i64
  %320 = load i32, i32* @g_1048, align 4, !tbaa !1
  %321 = zext i32 %320 to i64
  %322 = call i64 @safe_mod_func_int64_t_s_s(i64 %319, i64 %321)
  %323 = load i32, i32* %2, align 4, !tbaa !1
  %324 = sext i32 %323 to i64
  %325 = icmp sgt i64 %322, %324
  %326 = zext i1 %325 to i32
  %327 = sext i32 %326 to i64
  %328 = icmp eq i64 %327, 3043991319829004981
  %329 = zext i1 %328 to i32
  %330 = or i32 %284, %329
  %331 = sext i32 %330 to i64
  %332 = icmp sle i64 %331, 50979
  %333 = zext i1 %332 to i32
  %334 = trunc i32 %333 to i16
  %335 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %334)
  %336 = zext i16 %335 to i32
  %337 = getelementptr inbounds [5 x i8], [5 x i8]* %l_1049, i32 0, i64 3
  %338 = load i8, i8* %337, align 1, !tbaa !9
  %339 = sext i8 %338 to i32
  %340 = and i32 %339, %336
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %337, align 1, !tbaa !9
  %342 = load i32, i32* %2, align 4, !tbaa !1
  store i32 %342, i32* %1
  store i32 1, i32* %3
  br label %343

; <label>:343                                     ; preds = %316, %177
  %344 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #1
  %345 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  %347 = bitcast [5 x i8]* %l_1049 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %347) #1
  %348 = bitcast i32* %l_1047 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #1
  %349 = bitcast i8*** %l_1041 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %349) #1
  %350 = bitcast i8** %l_1042 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %350) #1
  %351 = bitcast i8*** %l_1040 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %351) #1
  %352 = bitcast i16* %l_1034 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %352) #1
  %353 = bitcast [5 x [3 x [7 x i32*]]]* %l_1033 to i8*
  call void @llvm.lifetime.end(i64 840, i8* %353) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1032) #1
  %354 = bitcast i32* %l_1031 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast [2 x i8*]* %l_1030 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %355) #1
  %356 = bitcast i8** %l_1029 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %356) #1
  %357 = bitcast i64*** %l_1027 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast i64** %l_1028 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %358) #1
  %359 = bitcast i64** %l_1025 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %360 = bitcast i16** %l_1016 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %360) #1
  %361 = bitcast i32* %l_56 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast [10 x [2 x [8 x i64]]]* %l_55 to i8*
  call void @llvm.lifetime.end(i64 1280, i8* %362) #1
  %363 = load i32, i32* %1
  ret i32 %363

; <label>:364                                     ; preds = %149
  unreachable
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %ui) #0 {
  %1 = alloca i16, align 2
  store i16 %ui, i16* %1, align 2, !tbaa !10
  %2 = load i16, i16* %1, align 2, !tbaa !10
  %3 = zext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
define internal signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %si) #0 {
  %1 = alloca i16, align 2
  store i16 %si, i16* %1, align 2, !tbaa !10
  %2 = load i16, i16* %1, align 2, !tbaa !10
  %3 = sext i16 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i16
  ret i16 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @safe_unary_minus_func_int32_t_s(i32 %si) #0 {
  %1 = alloca i32, align 4
  store i32 %si, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = icmp eq i32 %2, -2147483648
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %1, align 4, !tbaa !1
  br label %9

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %1, align 4, !tbaa !1
  %8 = sub nsw i32 0, %7
  br label %9

; <label>:9                                       ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  ret i32 %10
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
define internal i64 @safe_unary_minus_func_uint64_t_u(i64 %ui) #0 {
  %1 = alloca i64, align 8
  store i64 %ui, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = sub i64 0, %2
  ret i64 %3
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal signext i8 @func_67(i16* %p_68) #0 {
  %1 = alloca i16*, align 8
  %l_103 = alloca i32, align 4
  %l_742 = alloca i32, align 4
  %l_744 = alloca i8, align 1
  %l_754 = alloca i32, align 4
  %l_756 = alloca i32, align 4
  %l_759 = alloca i32, align 4
  %l_785 = alloca i32, align 4
  %l_786 = alloca i32, align 4
  %l_787 = alloca i32, align 4
  %l_792 = alloca i32, align 4
  %l_862 = alloca i32*, align 8
  %l_872 = alloca i16, align 2
  %l_917 = alloca i8*, align 8
  %l_916 = alloca [3 x i8**], align 16
  %l_936 = alloca [4 x i64*], align 16
  %l_946 = alloca i64**, align 8
  %l_989 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_78 = alloca i32*, align 8
  %l_106 = alloca i16*, align 8
  %l_114 = alloca i16*, align 8
  %l_745 = alloca i32, align 4
  %l_746 = alloca i16, align 2
  %l_755 = alloca i32, align 4
  %l_758 = alloca i32, align 4
  %l_760 = alloca i32, align 4
  %l_763 = alloca i32, align 4
  %l_773 = alloca i32, align 4
  %l_788 = alloca i32, align 4
  %l_791 = alloca [6 x [6 x [7 x i32]]], align 16
  %l_826 = alloca [6 x i64], align 16
  %l_849 = alloca i16, align 2
  %l_855 = alloca [9 x [2 x i64*]], align 16
  %l_854 = alloca i64**, align 8
  %l_863 = alloca i8, align 1
  %l_908 = alloca i32*, align 8
  %l_935 = alloca i16, align 2
  %l_972 = alloca i64**, align 8
  %l_999 = alloca [1 x i32*], align 8
  %l_998 = alloca i32**, align 8
  %l_997 = alloca i32***, align 8
  %l_1008 = alloca [2 x [2 x [4 x i16]]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  store i16* %p_68, i16** %1, align 8, !tbaa !5
  %2 = bitcast i32* %l_103 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 2, i32* %l_103, align 4, !tbaa !1
  %3 = bitcast i32* %l_742 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -8, i32* %l_742, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_744) #1
  store i8 17, i8* %l_744, align 1, !tbaa !9
  %4 = bitcast i32* %l_754 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -9, i32* %l_754, align 4, !tbaa !1
  %5 = bitcast i32* %l_756 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 6, i32* %l_756, align 4, !tbaa !1
  %6 = bitcast i32* %l_759 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 2085564867, i32* %l_759, align 4, !tbaa !1
  %7 = bitcast i32* %l_785 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1605035944, i32* %l_785, align 4, !tbaa !1
  %8 = bitcast i32* %l_786 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 1, i32* %l_786, align 4, !tbaa !1
  %9 = bitcast i32* %l_787 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 1, i32* %l_787, align 4, !tbaa !1
  %10 = bitcast i32* %l_792 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %l_792, align 4, !tbaa !1
  %11 = bitcast i32** %l_862 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* %l_754, i32** %l_862, align 8, !tbaa !5
  %12 = bitcast i16* %l_872 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  store i16 -1, i16* %l_872, align 2, !tbaa !10
  %13 = bitcast i8** %l_917 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i8* @g_5, i8** %l_917, align 8, !tbaa !5
  %14 = bitcast [3 x i8**]* %l_916 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #1
  %15 = bitcast [4 x i64*]* %l_936 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #1
  %16 = bitcast [4 x i64*]* %l_936 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([4 x i64*]* @func_67.l_936 to i8*), i64 32, i32 16, i1 false)
  %17 = bitcast i64*** %l_946 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64** @g_859, i64*** %l_946, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_989) #1
  store i8 1, i8* %l_989, align 1, !tbaa !9
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %27, %0
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %20
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i8**], [3 x i8**]* %l_916, i32 0, i64 %25
  store i8** %l_917, i8*** %26, align 8, !tbaa !5
  br label %27

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:30                                      ; preds = %20
  store i32 -21, i32* @g_69, align 4, !tbaa !1
  br label %31

; <label>:31                                      ; preds = %113, %30
  %32 = load i32, i32* @g_69, align 4, !tbaa !1
  %33 = icmp slt i32 %32, 27
  br i1 %33, label %34, label %116

; <label>:34                                      ; preds = %31
  %35 = bitcast i32** %l_78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i32* @g_69, i32** %l_78, align 8, !tbaa !5
  %36 = bitcast i16** %l_106 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i16* @g_28, i16** %l_106, align 8, !tbaa !5
  %37 = bitcast i16** %l_114 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i16* @g_28, i16** %l_114, align 8, !tbaa !5
  %38 = bitcast i32* %l_745 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 -821742678, i32* %l_745, align 4, !tbaa !1
  %39 = bitcast i16* %l_746 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %39) #1
  store i16 0, i16* %l_746, align 2, !tbaa !10
  %40 = bitcast i32* %l_755 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  store i32 375672136, i32* %l_755, align 4, !tbaa !1
  %41 = bitcast i32* %l_758 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 1106409561, i32* %l_758, align 4, !tbaa !1
  %42 = bitcast i32* %l_760 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 1838348384, i32* %l_760, align 4, !tbaa !1
  %43 = bitcast i32* %l_763 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 -1625082501, i32* %l_763, align 4, !tbaa !1
  %44 = bitcast i32* %l_773 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 -1824583373, i32* %l_773, align 4, !tbaa !1
  %45 = bitcast i32* %l_788 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 7, i32* %l_788, align 4, !tbaa !1
  %46 = bitcast [6 x [6 x [7 x i32]]]* %l_791 to i8*
  call void @llvm.lifetime.start(i64 1008, i8* %46) #1
  %47 = bitcast [6 x [6 x [7 x i32]]]* %l_791 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([6 x [6 x [7 x i32]]]* @func_67.l_791 to i8*), i64 1008, i32 16, i1 false)
  %48 = bitcast [6 x i64]* %l_826 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %48) #1
  %49 = bitcast [6 x i64]* %l_826 to i8*
  call void @llvm.memset.p0i8.i64(i8* %49, i8 0, i64 48, i32 16, i1 false)
  %50 = bitcast i8* %49 to [6 x i64]*
  %51 = getelementptr [6 x i64], [6 x i64]* %50, i32 0, i32 0
  store i64 -1, i64* %51
  %52 = getelementptr [6 x i64], [6 x i64]* %50, i32 0, i32 1
  store i64 4918400425898069724, i64* %52
  %53 = getelementptr [6 x i64], [6 x i64]* %50, i32 0, i32 2
  store i64 4918400425898069724, i64* %53
  %54 = getelementptr [6 x i64], [6 x i64]* %50, i32 0, i32 3
  store i64 -1, i64* %54
  %55 = getelementptr [6 x i64], [6 x i64]* %50, i32 0, i32 4
  store i64 4918400425898069724, i64* %55
  %56 = getelementptr [6 x i64], [6 x i64]* %50, i32 0, i32 5
  store i64 4918400425898069724, i64* %56
  %57 = bitcast i16* %l_849 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %57) #1
  store i16 -24978, i16* %l_849, align 2, !tbaa !10
  %58 = bitcast [9 x [2 x i64*]]* %l_855 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %58) #1
  %59 = bitcast [9 x [2 x i64*]]* %l_855 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast ([9 x [2 x i64*]]* @func_67.l_855 to i8*), i64 144, i32 16, i1 false)
  %60 = bitcast i64*** %l_854 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %61 = getelementptr inbounds [9 x [2 x i64*]], [9 x [2 x i64*]]* %l_855, i32 0, i64 8
  %62 = getelementptr inbounds [2 x i64*], [2 x i64*]* %61, i32 0, i64 1
  store i64** %62, i64*** %l_854, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_863) #1
  store i8 7, i8* %l_863, align 1, !tbaa !9
  %63 = bitcast i32** %l_908 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  store i32* null, i32** %l_908, align 8, !tbaa !5
  %64 = bitcast i16* %l_935 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %64) #1
  store i16 3, i16* %l_935, align 2, !tbaa !10
  %65 = bitcast i64*** %l_972 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %66 = getelementptr inbounds [4 x i64*], [4 x i64*]* %l_936, i32 0, i64 2
  store i64** %66, i64*** %l_972, align 8, !tbaa !5
  %67 = bitcast [1 x i32*]* %l_999 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = bitcast i32*** %l_998 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_999, i32 0, i64 0
  store i32** %69, i32*** %l_998, align 8, !tbaa !5
  %70 = bitcast i32**** %l_997 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i32*** %l_998, i32**** %l_997, align 8, !tbaa !5
  %71 = bitcast [2 x [2 x [4 x i16]]]* %l_1008 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %71) #1
  %72 = bitcast [2 x [2 x [4 x i16]]]* %l_1008 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* bitcast ([2 x [2 x [4 x i16]]]* @func_67.l_1008 to i8*), i64 32, i32 16, i1 false)
  %73 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %76

; <label>:76                                      ; preds = %83, %34
  %77 = load i32, i32* %i1, align 4, !tbaa !1
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %86

; <label>:79                                      ; preds = %76
  %80 = load i32, i32* %i1, align 4, !tbaa !1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_999, i32 0, i64 %81
  store i32* %l_103, i32** %82, align 8, !tbaa !5
  br label %83

; <label>:83                                      ; preds = %79
  %84 = load i32, i32* %i1, align 4, !tbaa !1
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %i1, align 4, !tbaa !1
  br label %76

; <label>:86                                      ; preds = %76
  %87 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast [2 x [2 x [4 x i16]]]* %l_1008 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %90) #1
  %91 = bitcast i32**** %l_997 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i32*** %l_998 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast [1 x i32*]* %l_999 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i64*** %l_972 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i16* %l_935 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %95) #1
  %96 = bitcast i32** %l_908 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_863) #1
  %97 = bitcast i64*** %l_854 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast [9 x [2 x i64*]]* %l_855 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %98) #1
  %99 = bitcast i16* %l_849 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %99) #1
  %100 = bitcast [6 x i64]* %l_826 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %100) #1
  %101 = bitcast [6 x [6 x [7 x i32]]]* %l_791 to i8*
  call void @llvm.lifetime.end(i64 1008, i8* %101) #1
  %102 = bitcast i32* %l_788 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %l_773 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %l_763 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %l_760 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %l_758 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %l_755 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i16* %l_746 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %108) #1
  %109 = bitcast i32* %l_745 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i16** %l_114 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i16** %l_106 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32** %l_78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  br label %113

; <label>:113                                     ; preds = %86
  %114 = load i32, i32* @g_69, align 4, !tbaa !1
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @g_69, align 4, !tbaa !1
  br label %31

; <label>:116                                     ; preds = %31
  %117 = load i8*, i8** @g_493, align 8, !tbaa !5
  %118 = load i8, i8* %117, align 1, !tbaa !9
  %119 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_989) #1
  %121 = bitcast i64*** %l_946 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast [4 x i64*]* %l_936 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %122) #1
  %123 = bitcast [3 x i8**]* %l_916 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %123) #1
  %124 = bitcast i8** %l_917 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast i16* %l_872 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %125) #1
  %126 = bitcast i32** %l_862 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i32* %l_792 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %l_787 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %l_786 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %l_785 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %l_759 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %l_756 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %l_754 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_744) #1
  %134 = bitcast i32* %l_742 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %l_103 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  ret i8 %118
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
