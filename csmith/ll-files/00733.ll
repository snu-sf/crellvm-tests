; ModuleID = '00733.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i16, [2 x i8] }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global [4 x i32] [i32 -728709928, i32 -728709928, i32 -728709928, i32 -728709928], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"g_3[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_11 = internal global [5 x i32] [i32 -878022834, i32 -878022834, i32 -878022834, i32 -878022834, i32 -878022834], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"g_11[i]\00", align 1
@g_14 = internal global i8 0, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"g_14\00", align 1
@g_30 = internal global [6 x [2 x [4 x i8]]] [[2 x [4 x i8]] [[4 x i8] c"))@\F3", [4 x i8] c"\F6\FA\F6@"], [2 x [4 x i8]] [[4 x i8] c"\F6@@\F6", [4 x i8] c")@\F3@"], [2 x [4 x i8]] [[4 x i8] c"@\FA\F3\F3", [4 x i8] c"))@\F3"], [2 x [4 x i8]] [[4 x i8] c"\F6\FA\F6@", [4 x i8] c"\F6@@\F6"], [2 x [4 x i8]] [[4 x i8] c")@\F3@", [4 x i8] c"@)\FA\FA"], [2 x [4 x i8]] [[4 x i8] c"@@\F6\FA", [4 x i8] c"\F3)\F3\F6"]], align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"g_30[i][j][k]\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_44 = internal global [8 x i64] [i64 5624869261633082764, i64 5624869261633082764, i64 5624869261633082764, i64 5624869261633082764, i64 5624869261633082764, i64 5624869261633082764, i64 5624869261633082764, i64 5624869261633082764], align 16
@.str.7 = private unnamed_addr constant [8 x i8] c"g_44[i]\00", align 1
@g_48 = internal global i64 798538669993752918, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"g_48\00", align 1
@g_50 = internal global i8 -9, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_50\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"g_61.f0\00", align 1
@g_69 = internal global i32 825800590, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_69\00", align 1
@g_70 = internal global i32 8, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_70\00", align 1
@g_72 = internal global i32 1765207607, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"g_72\00", align 1
@g_97 = internal global i32 1, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"g_97\00", align 1
@g_100 = internal global i8 -29, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_102 = internal global i64 -3561767382373448120, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_102\00", align 1
@g_123 = internal global i64 -1768391239094805402, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"g_123\00", align 1
@g_163 = internal global i16 -23717, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_163\00", align 1
@g_171 = internal constant i16 15729, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_171\00", align 1
@g_290 = internal global i16 26245, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_290\00", align 1
@g_305 = internal global i16 -9863, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_305\00", align 1
@g_330 = internal global i32 -957667974, align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"g_330\00", align 1
@g_347 = internal global i8 1, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_347\00", align 1
@g_375 = internal global i8 0, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_375\00", align 1
@g_414 = internal global i16 7, align 2
@.str.25 = private unnamed_addr constant [6 x i8] c"g_414\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_501.f0\00", align 1
@g_561 = internal global i32 7, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_561\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"g_569.f0\00", align 1
@g_651 = internal global [9 x i8] c"\1B\1B\1B\1B\1B\1B\1B\1B\1B", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"g_651[i]\00", align 1
@g_666 = internal global [2 x [2 x i32]] [[2 x i32] [i32 1452774642, i32 1452774642], [2 x i32] [i32 1452774642, i32 1452774642]], align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"g_666[i][j]\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_719 = internal global i16 -13301, align 2
@.str.32 = private unnamed_addr constant [6 x i8] c"g_719\00", align 1
@g_720 = internal global i16 0, align 2
@.str.33 = private unnamed_addr constant [6 x i8] c"g_720\00", align 1
@g_902 = internal global i8 0, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_902\00", align 1
@g_938 = internal global i32 916461710, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_938\00", align 1
@g_1074 = internal global i16 -31992, align 2
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1074\00", align 1
@g_1195 = internal global i64 -10, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1195\00", align 1
@g_1349 = internal global [9 x i32] [i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1], align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"g_1349[i]\00", align 1
@g_1354 = internal global i16 -5, align 2
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1354\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"g_1363.f0\00", align 1
@g_1379 = internal global i32 1439673759, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1379\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1387\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1427\00", align 1
@g_1451 = internal global i32 4, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1451\00", align 1
@g_1489 = internal global i16 -26613, align 2
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1489\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"g_1598.f0\00", align 1
@g_1744 = internal global [2 x i8] c"\09\09", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"g_1744[i]\00", align 1
@g_1769 = internal global i32 -3, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1769\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1880\00", align 1
@g_1882 = internal constant [5 x [2 x [10 x i8]]] [[2 x [10 x i8]] [[10 x i8] c"\01\01\01\B7\01\00\00\CC\06\FB", [10 x i8] c"\00\7F\01G\00\7F\FF\00\00\CC"], [2 x [10 x i8]] [[10 x i8] c"\FB\00\01\DB\01\01\DB\7F\00\00", [10 x i8] c"\00G\FF\CC\01\01\CC\FFG\00"], [2 x [10 x i8]] [[10 x i8] c"\FB\01\01\FF\00\7F\01G\00\B1", [10 x i8] c"\DB\B7\00\01\00\01\00\B7\DB\00"], [2 x [10 x i8]] [[10 x i8] c"\00\01\DB\01\01\DB\7F\00\00\00", [10 x i8] c"\DB\06G\01\01G\06\DB\DB\CC"], [2 x [10 x i8]] [[10 x i8] c"\06\00z\01\FF\00\FB\01\00\01", [10 x i8] c"\01\01z\FFz\01\01\DBG\B7"]], align 16
@.str.50 = private unnamed_addr constant [16 x i8] c"g_1882[i][j][k]\00", align 1
@g_1899 = internal global i64 6258879089264011066, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1899\00", align 1
@g_1987 = internal global i64 3433219388354210213, align 8
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1987\00", align 1
@g_2259 = internal global i32 -9, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_2259\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"g_2290.f0\00", align 1
@g_2343 = internal global i32 -9, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"g_2343\00", align 1
@g_2564 = internal global [9 x i32] [i32 -1594222090, i32 9, i32 9, i32 -1594222090, i32 9, i32 9, i32 -1594222090, i32 9, i32 9], align 16
@.str.56 = private unnamed_addr constant [10 x i8] c"g_2564[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_5 = private unnamed_addr constant [9 x i32*] [i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_3, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_3 to i8*), i64 12) to i32*), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_3, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_3 to i8*), i64 12) to i32*), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_3, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_3 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_3 to i8*), i64 12) to i32*)], align 16
@func_1.l_8 = private unnamed_addr constant [4 x [10 x [6 x i32]]] [[10 x [6 x i32]] [[6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1]], [10 x [6 x i32]] [[6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1]], [10 x [6 x i32]] [[6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1]], [10 x [6 x i32]] [[6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1], [6 x i32] [i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1, i32 356774767], [6 x i32] [i32 -1, i32 -1, i32 356774767, i32 356774767, i32 -1, i32 -1]]], align 16
@g_951 = internal global i32**** @g_952, align 8
@func_1.l_2121 = private unnamed_addr constant [10 x i32*****] [i32***** @g_951, i32***** @g_951, i32***** @g_951, i32***** @g_951, i32***** @g_951, i32***** @g_951, i32***** @g_951, i32***** @g_951, i32***** @g_951, i32***** @g_951], align 16
@func_1.l_2134 = private unnamed_addr constant [10 x [3 x i64*]] [[3 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_44 to i8*), i64 56) to i64*), i64* null, i64* null], [3 x i64*] [i64* @g_48, i64* @g_48, i64* null], [3 x i64*] [i64* @g_48, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_44 to i8*), i64 56) to i64*), i64* null], [3 x i64*] [i64* @g_48, i64* @g_48, i64* null], [3 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_44 to i8*), i64 56) to i64*), i64* @g_48, i64* @g_1195], [3 x i64*] [i64* @g_48, i64* @g_48, i64* @g_48], [3 x i64*] [i64* null, i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_44 to i8*), i64 56) to i64*), i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_44, i32 0, i32 0)], [3 x i64*] [i64* @g_1195, i64* @g_48, i64* @g_48], [3 x i64*] [i64* getelementptr inbounds ([8 x i64], [8 x i64]* @g_44, i32 0, i32 0), i64* null, i64* @g_1195], [3 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_44 to i8*), i64 8) to i64*), i64* @g_1195, i64* null]], align 16
@func_1.l_2169 = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 -2, i8 28, [2 x i8] undef }, align 4
@g_1585 = internal global i64*** @g_1586, align 8
@func_1.l_2238 = private unnamed_addr constant [3 x [3 x [6 x i16]]] [[3 x [6 x i16]] [[6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0], [6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0], [6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0]], [3 x [6 x i16]] [[6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0], [6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0], [6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0]], [3 x [6 x i16]] [[6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0], [6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0], [6 x i16] [i16 0, i16 -21610, i16 0, i16 0, i16 -21610, i16 0]]], align 16
@g_2421 = internal global i32*** @g_2422, align 8
@g_952 = internal global i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i32**]]* @g_953 to i8*), i64 8) to i32***), align 8
@g_953 = internal global [3 x [5 x i32**]] [[5 x i32**] [i32** @g_137, i32** @g_137, i32** @g_137, i32** @g_137, i32** @g_137], [5 x i32**] [i32** @g_137, i32** @g_137, i32** @g_137, i32** @g_137, i32** @g_137], [5 x i32**] [i32** @g_137, i32** @g_137, i32** @g_137, i32** @g_137, i32** @g_137]], align 16
@g_137 = internal global i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_3, i32 0, i32 0), align 8
@g_1586 = internal global i64** @g_1140, align 8
@g_1140 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i64]* @g_44 to i8*), i64 24) to i64*), align 8
@g_2422 = internal global i32** @g_1183, align 8
@g_1183 = internal global i32* @g_330, align 8
@.str.57 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_61 = internal global { i8, i8, [2 x i8] } { i8 99, i8 41, [2 x i8] undef }, align 4
@g_501 = internal global { i8, i8, [2 x i8] } { i8 -125, i8 32, [2 x i8] undef }, align 4
@g_569 = internal global { i8, i8, [2 x i8] } { i8 96, i8 7, [2 x i8] undef }, align 4
@g_1363 = internal global { i8, i8, [2 x i8] } { i8 0, i8 0, [2 x i8] undef }, align 4
@g_1598 = internal global { i8, i8, [2 x i8] } { i8 -58, i8 29, [2 x i8] undef }, align 4
@g_2290 = internal constant { i8, i8, [2 x i8] } { i8 4, i8 1, [2 x i8] undef }, align 4
@.str.58 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %90 = call zeroext i16 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* @g_3, i32 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %100)
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %94
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %104)
  br label %106

; <label>:106                                     ; preds = %103, %94
  br label %107

; <label>:107                                     ; preds = %106
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:110                                     ; preds = %91
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:111                                     ; preds = %127, %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 5
  br i1 %113, label %114, label %130

; <label>:114                                     ; preds = %111
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* @g_11, i32 0, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !1
  %119 = zext i32 %118 to i64
  %120 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %120)
  %121 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

; <label>:123                                     ; preds = %114
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %124)
  br label %126

; <label>:126                                     ; preds = %123, %114
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:130                                     ; preds = %111
  %131 = load i8, i8* @g_14, align 1, !tbaa !9
  %132 = zext i8 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %133)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:134                                     ; preds = %174, %130
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = icmp slt i32 %135, 6
  br i1 %136, label %137, label %177

; <label>:137                                     ; preds = %134
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %138

; <label>:138                                     ; preds = %170, %137
  %139 = load i32, i32* %j, align 4, !tbaa !1
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %141, label %173

; <label>:141                                     ; preds = %138
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %142

; <label>:142                                     ; preds = %166, %141
  %143 = load i32, i32* %k, align 4, !tbaa !1
  %144 = icmp slt i32 %143, 4
  br i1 %144, label %145, label %169

; <label>:145                                     ; preds = %142
  %146 = load i32, i32* %k, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %j, align 4, !tbaa !1
  %149 = sext i32 %148 to i64
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [6 x [2 x [4 x i8]]], [6 x [2 x [4 x i8]]]* @g_30, i32 0, i64 %151
  %153 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* %152, i32 0, i64 %149
  %154 = getelementptr inbounds [4 x i8], [4 x i8]* %153, i32 0, i64 %147
  %155 = load i8, i8* %154, align 1, !tbaa !9
  %156 = sext i8 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %157)
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

; <label>:160                                     ; preds = %145
  %161 = load i32, i32* %i, align 4, !tbaa !1
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = load i32, i32* %k, align 4, !tbaa !1
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %161, i32 %162, i32 %163)
  br label %165

; <label>:165                                     ; preds = %160, %145
  br label %166

; <label>:166                                     ; preds = %165
  %167 = load i32, i32* %k, align 4, !tbaa !1
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %k, align 4, !tbaa !1
  br label %142

; <label>:169                                     ; preds = %142
  br label %170

; <label>:170                                     ; preds = %169
  %171 = load i32, i32* %j, align 4, !tbaa !1
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %j, align 4, !tbaa !1
  br label %138

; <label>:173                                     ; preds = %138
  br label %174

; <label>:174                                     ; preds = %173
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %i, align 4, !tbaa !1
  br label %134

; <label>:177                                     ; preds = %134
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %178

; <label>:178                                     ; preds = %193, %177
  %179 = load i32, i32* %i, align 4, !tbaa !1
  %180 = icmp slt i32 %179, 8
  br i1 %180, label %181, label %196

; <label>:181                                     ; preds = %178
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [8 x i64], [8 x i64]* @g_44, i32 0, i64 %183
  %185 = load i64, i64* %184, align 8, !tbaa !7
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %186)
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

; <label>:189                                     ; preds = %181
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %190)
  br label %192

; <label>:192                                     ; preds = %189, %181
  br label %193

; <label>:193                                     ; preds = %192
  %194 = load i32, i32* %i, align 4, !tbaa !1
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %i, align 4, !tbaa !1
  br label %178

; <label>:196                                     ; preds = %178
  %197 = load i64, i64* @g_48, align 8, !tbaa !7
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %198)
  %199 = load i8, i8* @g_50, align 1, !tbaa !9
  %200 = sext i8 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %201)
  %202 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_61 to %union.U0*), i32 0, i32 0), align 4
  %203 = and i16 %202, 16383
  %204 = zext i16 %203 to i32
  %205 = zext i32 %204 to i64
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %206)
  %207 = load volatile i32, i32* @g_69, align 4, !tbaa !1
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %209)
  %210 = load i32, i32* @g_70, align 4, !tbaa !1
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %212)
  %213 = load i32, i32* @g_72, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %215)
  %216 = load i32, i32* @g_97, align 4, !tbaa !1
  %217 = zext i32 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %218)
  %219 = load i8, i8* @g_100, align 1, !tbaa !9
  %220 = sext i8 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %221)
  %222 = load i64, i64* @g_102, align 8, !tbaa !7
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %223)
  %224 = load i64, i64* @g_123, align 8, !tbaa !7
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %225)
  %226 = load i16, i16* @g_163, align 2, !tbaa !10
  %227 = zext i16 %226 to i64
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %228)
  %229 = load volatile i16, i16* @g_171, align 2, !tbaa !10
  %230 = sext i16 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %231)
  %232 = load i16, i16* @g_290, align 2, !tbaa !10
  %233 = zext i16 %232 to i64
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %234)
  %235 = load i16, i16* @g_305, align 2, !tbaa !10
  %236 = sext i16 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %237)
  %238 = load i32, i32* @g_330, align 4, !tbaa !1
  %239 = sext i32 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %240)
  %241 = load i8, i8* @g_347, align 1, !tbaa !9
  %242 = zext i8 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %243)
  %244 = load i8, i8* @g_375, align 1, !tbaa !9
  %245 = sext i8 %244 to i64
  %246 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %246)
  %247 = load volatile i16, i16* @g_414, align 2, !tbaa !10
  %248 = zext i16 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %249)
  %250 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_501 to %union.U0*), i32 0, i32 0), align 4
  %251 = and i16 %250, 16383
  %252 = zext i16 %251 to i32
  %253 = zext i32 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* @g_561, align 4, !tbaa !1
  %256 = zext i32 %255 to i64
  %257 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %257)
  %258 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_569 to %union.U0*), i32 0, i32 0), align 4
  %259 = and i16 %258, 16383
  %260 = zext i16 %259 to i32
  %261 = zext i32 %260 to i64
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %262)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %279, %196
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 9
  br i1 %265, label %266, label %282

; <label>:266                                     ; preds = %263
  %267 = load i32, i32* %i, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [9 x i8], [9 x i8]* @g_651, i32 0, i64 %268
  %270 = load i8, i8* %269, align 1, !tbaa !9
  %271 = sext i8 %270 to i64
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 %272)
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

; <label>:275                                     ; preds = %266
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %276)
  br label %278

; <label>:278                                     ; preds = %275, %266
  br label %279

; <label>:279                                     ; preds = %278
  %280 = load i32, i32* %i, align 4, !tbaa !1
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:282                                     ; preds = %263
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %283

; <label>:283                                     ; preds = %311, %282
  %284 = load i32, i32* %i, align 4, !tbaa !1
  %285 = icmp slt i32 %284, 2
  br i1 %285, label %286, label %314

; <label>:286                                     ; preds = %283
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %287

; <label>:287                                     ; preds = %307, %286
  %288 = load i32, i32* %j, align 4, !tbaa !1
  %289 = icmp slt i32 %288, 2
  br i1 %289, label %290, label %310

; <label>:290                                     ; preds = %287
  %291 = load i32, i32* %j, align 4, !tbaa !1
  %292 = sext i32 %291 to i64
  %293 = load i32, i32* %i, align 4, !tbaa !1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @g_666, i32 0, i64 %294
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %295, i32 0, i64 %292
  %297 = load i32, i32* %296, align 4, !tbaa !1
  %298 = sext i32 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %299)
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

; <label>:302                                     ; preds = %290
  %303 = load i32, i32* %i, align 4, !tbaa !1
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), i32 %303, i32 %304)
  br label %306

; <label>:306                                     ; preds = %302, %290
  br label %307

; <label>:307                                     ; preds = %306
  %308 = load i32, i32* %j, align 4, !tbaa !1
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %j, align 4, !tbaa !1
  br label %287

; <label>:310                                     ; preds = %287
  br label %311

; <label>:311                                     ; preds = %310
  %312 = load i32, i32* %i, align 4, !tbaa !1
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %i, align 4, !tbaa !1
  br label %283

; <label>:314                                     ; preds = %283
  %315 = load i16, i16* @g_719, align 2, !tbaa !10
  %316 = zext i16 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %317)
  %318 = load volatile i16, i16* @g_720, align 2, !tbaa !10
  %319 = sext i16 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %320)
  %321 = load i8, i8* @g_902, align 1, !tbaa !9
  %322 = sext i8 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %323)
  %324 = load volatile i32, i32* @g_938, align 4, !tbaa !1
  %325 = zext i32 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %326)
  %327 = load volatile i16, i16* @g_1074, align 2, !tbaa !10
  %328 = sext i16 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %329)
  %330 = load i64, i64* @g_1195, align 8, !tbaa !7
  %331 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %330, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %331)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:332                                     ; preds = %348, %314
  %333 = load i32, i32* %i, align 4, !tbaa !1
  %334 = icmp slt i32 %333, 9
  br i1 %334, label %335, label %351

; <label>:335                                     ; preds = %332
  %336 = load i32, i32* %i, align 4, !tbaa !1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [9 x i32], [9 x i32]* @g_1349, i32 0, i64 %337
  %339 = load volatile i32, i32* %338, align 4, !tbaa !1
  %340 = sext i32 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

; <label>:344                                     ; preds = %335
  %345 = load i32, i32* %i, align 4, !tbaa !1
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %345)
  br label %347

; <label>:347                                     ; preds = %344, %335
  br label %348

; <label>:348                                     ; preds = %347
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %i, align 4, !tbaa !1
  br label %332

; <label>:351                                     ; preds = %332
  %352 = load volatile i16, i16* @g_1354, align 2, !tbaa !10
  %353 = sext i16 %352 to i64
  %354 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %354)
  %355 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_1363 to %union.U0*), i32 0, i32 0), align 4
  %356 = and i16 %355, 16383
  %357 = zext i16 %356 to i32
  %358 = zext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 %359)
  %360 = load volatile i32, i32* @g_1379, align 4, !tbaa !1
  %361 = sext i32 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %362)
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %363)
  %364 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %364)
  %365 = load volatile i32, i32* @g_1451, align 4, !tbaa !1
  %366 = zext i32 %365 to i64
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %367)
  %368 = load i16, i16* @g_1489, align 2, !tbaa !10
  %369 = zext i16 %368 to i64
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %369, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %370)
  %371 = load volatile i16, i16* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_1598 to %union.U0*), i32 0, i32 0), align 4
  %372 = and i16 %371, 16383
  %373 = zext i16 %372 to i32
  %374 = zext i32 %373 to i64
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i32 %375)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %376

; <label>:376                                     ; preds = %392, %351
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = icmp slt i32 %377, 2
  br i1 %378, label %379, label %395

; <label>:379                                     ; preds = %376
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [2 x i8], [2 x i8]* @g_1744, i32 0, i64 %381
  %383 = load volatile i8, i8* %382, align 1, !tbaa !9
  %384 = zext i8 %383 to i64
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %385)
  %386 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

; <label>:388                                     ; preds = %379
  %389 = load i32, i32* %i, align 4, !tbaa !1
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %389)
  br label %391

; <label>:391                                     ; preds = %388, %379
  br label %392

; <label>:392                                     ; preds = %391
  %393 = load i32, i32* %i, align 4, !tbaa !1
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %i, align 4, !tbaa !1
  br label %376

; <label>:395                                     ; preds = %376
  %396 = load i32, i32* @g_1769, align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %397, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %398)
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %399)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %400

; <label>:400                                     ; preds = %440, %395
  %401 = load i32, i32* %i, align 4, !tbaa !1
  %402 = icmp slt i32 %401, 5
  br i1 %402, label %403, label %443

; <label>:403                                     ; preds = %400
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %404

; <label>:404                                     ; preds = %436, %403
  %405 = load i32, i32* %j, align 4, !tbaa !1
  %406 = icmp slt i32 %405, 2
  br i1 %406, label %407, label %439

; <label>:407                                     ; preds = %404
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %408

; <label>:408                                     ; preds = %432, %407
  %409 = load i32, i32* %k, align 4, !tbaa !1
  %410 = icmp slt i32 %409, 10
  br i1 %410, label %411, label %435

; <label>:411                                     ; preds = %408
  %412 = load i32, i32* %k, align 4, !tbaa !1
  %413 = sext i32 %412 to i64
  %414 = load i32, i32* %j, align 4, !tbaa !1
  %415 = sext i32 %414 to i64
  %416 = load i32, i32* %i, align 4, !tbaa !1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [5 x [2 x [10 x i8]]], [5 x [2 x [10 x i8]]]* @g_1882, i32 0, i64 %417
  %419 = getelementptr inbounds [2 x [10 x i8]], [2 x [10 x i8]]* %418, i32 0, i64 %415
  %420 = getelementptr inbounds [10 x i8], [10 x i8]* %419, i32 0, i64 %413
  %421 = load i8, i8* %420, align 1, !tbaa !9
  %422 = sext i8 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i32 %423)
  %424 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %431

; <label>:426                                     ; preds = %411
  %427 = load i32, i32* %i, align 4, !tbaa !1
  %428 = load i32, i32* %j, align 4, !tbaa !1
  %429 = load i32, i32* %k, align 4, !tbaa !1
  %430 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %427, i32 %428, i32 %429)
  br label %431

; <label>:431                                     ; preds = %426, %411
  br label %432

; <label>:432                                     ; preds = %431
  %433 = load i32, i32* %k, align 4, !tbaa !1
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %k, align 4, !tbaa !1
  br label %408

; <label>:435                                     ; preds = %408
  br label %436

; <label>:436                                     ; preds = %435
  %437 = load i32, i32* %j, align 4, !tbaa !1
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %j, align 4, !tbaa !1
  br label %404

; <label>:439                                     ; preds = %404
  br label %440

; <label>:440                                     ; preds = %439
  %441 = load i32, i32* %i, align 4, !tbaa !1
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %i, align 4, !tbaa !1
  br label %400

; <label>:443                                     ; preds = %400
  %444 = load i64, i64* @g_1899, align 8, !tbaa !7
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %444, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %445)
  %446 = load i64, i64* @g_1987, align 8, !tbaa !7
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %447)
  %448 = load i32, i32* @g_2259, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %449, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %450)
  %451 = load i16, i16* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, i8, [2 x i8] }* @g_2290 to %union.U0*), i32 0, i32 0), align 4
  %452 = and i16 %451, 16383
  %453 = zext i16 %452 to i32
  %454 = zext i32 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %455)
  %456 = load i32, i32* @g_2343, align 4, !tbaa !1
  %457 = zext i32 %456 to i64
  %458 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %457, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %458)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %459

; <label>:459                                     ; preds = %475, %443
  %460 = load i32, i32* %i, align 4, !tbaa !1
  %461 = icmp slt i32 %460, 9
  br i1 %461, label %462, label %478

; <label>:462                                     ; preds = %459
  %463 = load i32, i32* %i, align 4, !tbaa !1
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [9 x i32], [9 x i32]* @g_2564, i32 0, i64 %464
  %466 = load i32, i32* %465, align 4, !tbaa !1
  %467 = sext i32 %466 to i64
  %468 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %467, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 %468)
  %469 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %474

; <label>:471                                     ; preds = %462
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %472)
  br label %474

; <label>:474                                     ; preds = %471, %462
  br label %475

; <label>:475                                     ; preds = %474
  %476 = load i32, i32* %i, align 4, !tbaa !1
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %i, align 4, !tbaa !1
  br label %459

; <label>:478                                     ; preds = %459
  %479 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %480 = zext i32 %479 to i64
  %481 = xor i64 %480, 4294967295
  %482 = trunc i64 %481 to i32
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %482, i32 %483)
  %484 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %484) #1
  %485 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
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
define internal zeroext i16 @func_1() #0 {
  %l_2 = alloca i32*, align 8
  %l_4 = alloca i32*, align 8
  %l_5 = alloca [9 x i32*], align 16
  %l_6 = alloca i8, align 1
  %l_7 = alloca i32, align 4
  %l_8 = alloca [4 x [10 x [6 x i32]]], align 16
  %l_2121 = alloca [10 x i32*****], align 16
  %l_2134 = alloca [10 x [3 x i64*]], align 16
  %l_2158 = alloca i32, align 4
  %l_2169 = alloca %union.U0, align 4
  %l_2171 = alloca i16, align 2
  %l_2185 = alloca i64****, align 8
  %l_2197 = alloca [3 x %union.U0*], align 16
  %l_2209 = alloca i32, align 4
  %l_2221 = alloca i32, align 4
  %l_2238 = alloca [3 x [3 x [6 x i16]]], align 16
  %l_2318 = alloca i8, align 1
  %l_2330 = alloca i32, align 4
  %l_2352 = alloca i32*, align 8
  %l_2351 = alloca i32**, align 8
  %l_2350 = alloca i32***, align 8
  %l_2349 = alloca [8 x i32****], align 16
  %l_2408 = alloca i8, align 1
  %l_2554 = alloca i8, align 1
  %l_2592 = alloca i32, align 4
  %l_2602 = alloca i16, align 2
  %l_2608 = alloca i32****, align 8
  %l_2613 = alloca i16, align 2
  %l_2619 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_3, i32 0, i64 0), i32** %l_2, align 8, !tbaa !5
  %2 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_3, i32 0, i64 0), i32** %l_4, align 8, !tbaa !5
  %3 = bitcast [9 x i32*]* %l_5 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast [9 x i32*]* %l_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([9 x i32*]* @func_1.l_5 to i8*), i64 72, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_6) #1
  store i8 -123, i8* %l_6, align 1, !tbaa !9
  %5 = bitcast i32* %l_7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %l_7, align 4, !tbaa !1
  %6 = bitcast [4 x [10 x [6 x i32]]]* %l_8 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %6) #1
  %7 = bitcast [4 x [10 x [6 x i32]]]* %l_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([4 x [10 x [6 x i32]]]* @func_1.l_8 to i8*), i64 960, i32 16, i1 false)
  %8 = bitcast [10 x i32*****]* %l_2121 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %8) #1
  %9 = bitcast [10 x i32*****]* %l_2121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([10 x i32*****]* @func_1.l_2121 to i8*), i64 80, i32 16, i1 false)
  %10 = bitcast [10 x [3 x i64*]]* %l_2134 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %10) #1
  %11 = bitcast [10 x [3 x i64*]]* %l_2134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([10 x [3 x i64*]]* @func_1.l_2134 to i8*), i64 240, i32 16, i1 false)
  %12 = bitcast i32* %l_2158 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -176641529, i32* %l_2158, align 4, !tbaa !1
  %13 = bitcast %union.U0* %l_2169 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %union.U0* %l_2169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* getelementptr inbounds ({ i8, i8, [2 x i8] }, { i8, i8, [2 x i8] }* @func_1.l_2169, i32 0, i32 0), i64 4, i32 4, i1 false)
  %15 = bitcast i16* %l_2171 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #1
  store i16 1, i16* %l_2171, align 2, !tbaa !10
  %16 = bitcast i64***** %l_2185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64**** @g_1585, i64***** %l_2185, align 8, !tbaa !5
  %17 = bitcast [3 x %union.U0*]* %l_2197 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %17) #1
  %18 = bitcast i32* %l_2209 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1697943131, i32* %l_2209, align 4, !tbaa !1
  %19 = bitcast i32* %l_2221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 1, i32* %l_2221, align 4, !tbaa !1
  %20 = bitcast [3 x [3 x [6 x i16]]]* %l_2238 to i8*
  call void @llvm.lifetime.start(i64 108, i8* %20) #1
  %21 = bitcast [3 x [3 x [6 x i16]]]* %l_2238 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([3 x [3 x [6 x i16]]]* @func_1.l_2238 to i8*), i64 108, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_2318) #1
  store i8 89, i8* %l_2318, align 1, !tbaa !9
  %22 = bitcast i32* %l_2330 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1, i32* %l_2330, align 4, !tbaa !1
  %23 = bitcast i32** %l_2352 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* @g_72, i32** %l_2352, align 8, !tbaa !5
  %24 = bitcast i32*** %l_2351 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32** %l_2352, i32*** %l_2351, align 8, !tbaa !5
  %25 = bitcast i32**** %l_2350 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32*** %l_2351, i32**** %l_2350, align 8, !tbaa !5
  %26 = bitcast [8 x i32****]* %l_2349 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %26) #1
  %27 = getelementptr inbounds [8 x i32****], [8 x i32****]* %l_2349, i64 0, i64 0
  store i32**** %l_2350, i32***** %27, !tbaa !5
  %28 = getelementptr inbounds i32****, i32***** %27, i64 1
  store i32**** %l_2350, i32***** %28, !tbaa !5
  %29 = getelementptr inbounds i32****, i32***** %28, i64 1
  store i32**** %l_2350, i32***** %29, !tbaa !5
  %30 = getelementptr inbounds i32****, i32***** %29, i64 1
  store i32**** %l_2350, i32***** %30, !tbaa !5
  %31 = getelementptr inbounds i32****, i32***** %30, i64 1
  store i32**** %l_2350, i32***** %31, !tbaa !5
  %32 = getelementptr inbounds i32****, i32***** %31, i64 1
  store i32**** %l_2350, i32***** %32, !tbaa !5
  %33 = getelementptr inbounds i32****, i32***** %32, i64 1
  store i32**** %l_2350, i32***** %33, !tbaa !5
  %34 = getelementptr inbounds i32****, i32***** %33, i64 1
  store i32**** %l_2350, i32***** %34, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2408) #1
  store i8 -1, i8* %l_2408, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_2554) #1
  store i8 46, i8* %l_2554, align 1, !tbaa !9
  %35 = bitcast i32* %l_2592 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 -1, i32* %l_2592, align 4, !tbaa !1
  %36 = bitcast i16* %l_2602 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %36) #1
  store i16 -16287, i16* %l_2602, align 2, !tbaa !10
  %37 = bitcast i32***** %l_2608 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  store i32**** @g_2421, i32***** %l_2608, align 8, !tbaa !5
  %38 = bitcast i16* %l_2613 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %38) #1
  store i16 7493, i16* %l_2613, align 2, !tbaa !10
  %39 = bitcast i32* %l_2619 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 7, i32* %l_2619, align 4, !tbaa !1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %43

; <label>:43                                      ; preds = %50, %0
  %44 = load i32, i32* %i, align 4, !tbaa !1
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %53

; <label>:46                                      ; preds = %43
  %47 = load i32, i32* %i, align 4, !tbaa !1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x %union.U0*], [3 x %union.U0*]* %l_2197, i32 0, i64 %48
  store %union.U0* null, %union.U0** %49, align 8, !tbaa !5
  br label %50

; <label>:50                                      ; preds = %46
  %51 = load i32, i32* %i, align 4, !tbaa !1
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %i, align 4, !tbaa !1
  br label %43

; <label>:53                                      ; preds = %43
  %54 = getelementptr inbounds [4 x [10 x [6 x i32]]], [4 x [10 x [6 x i32]]]* %l_8, i32 0, i64 0
  %55 = getelementptr inbounds [10 x [6 x i32]], [10 x [6 x i32]]* %54, i32 0, i64 2
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %55, i32 0, i64 0
  %57 = load i32, i32* %56, align 4, !tbaa !1
  %58 = add i32 %57, 1
  store i32 %58, i32* %56, align 4, !tbaa !1
  %59 = load i16, i16* @g_1489, align 2, !tbaa !10
  %60 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %l_2619 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i16* %l_2613 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %64) #1
  %65 = bitcast i32***** %l_2608 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i16* %l_2602 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %66) #1
  %67 = bitcast i32* %l_2592 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2554) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2408) #1
  %68 = bitcast [8 x i32****]* %l_2349 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %68) #1
  %69 = bitcast i32**** %l_2350 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32*** %l_2351 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32** %l_2352 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %l_2330 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2318) #1
  %73 = bitcast [3 x [3 x [6 x i16]]]* %l_2238 to i8*
  call void @llvm.lifetime.end(i64 108, i8* %73) #1
  %74 = bitcast i32* %l_2221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %l_2209 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast [3 x %union.U0*]* %l_2197 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %76) #1
  %77 = bitcast i64***** %l_2185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i16* %l_2171 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %78) #1
  %79 = bitcast %union.U0* %l_2169 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %l_2158 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast [10 x [3 x i64*]]* %l_2134 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %81) #1
  %82 = bitcast [10 x i32*****]* %l_2121 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %82) #1
  %83 = bitcast [4 x [10 x [6 x i32]]]* %l_8 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %83) #1
  %84 = bitcast i32* %l_7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_6) #1
  %85 = bitcast [9 x i32*]* %l_5 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %85) #1
  %86 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  ret i16 %59
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0), i32 %3)
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
