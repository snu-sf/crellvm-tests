; ModuleID = '00957.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i24 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_15 = internal global i64 -5711817771852341348, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"g_15\00", align 1
@g_16 = internal global i64 6510283591276958378, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_18 = internal global [5 x i8] c"ZZZZZ", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"g_18[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_66 = internal global [5 x [8 x [6 x i8]]] [[8 x [6 x i8]] [[6 x i8] c"\08\01\A9]\00\01", [6 x i8] c"\01\01\84\01H\D2", [6 x i8] c"\00\03\FA\04\0F&", [6 x i8] c"\00\FA\0F\01\07\01", [6 x i8] c"\01\FA\00\FF\0F\0F", [6 x i8] c"\FC\03\03\FCH\DB", [6 x i8] c"\01\01\0F\08\00\09", [6 x i8] c"\BE\FF\89\0F\02\D6"], [8 x [6 x i8]] [[6 x i8] c"\01\03\C1\FA\F8\FF", [6 x i8] c"\1F\FF\FF\84\02\09", [6 x i8] c"\07\C1\06\A9\01\02", [6 x i8] c"\01\C1\FF\8F\02\06", [6 x i8] c"\00\FF\03\00\F8\FF", [6 x i8] c"\A9\03\06\BE\02\FF", [6 x i8] c"\03\FF\09\8F\02\FF", [6 x i8] c"\DB\03\F8&\F8\03"], [8 x [6 x i8]] [[6 x i8] c"\07\FF\89H\02\FF", [6 x i8] c"T\C1\05\FA\01`", [6 x i8] c"\DB\C1\03v\02\05", [6 x i8] c"\BE\FF\F7\BE\F8\02", [6 x i8] c"\FA\03\05\03\02\89", [6 x i8] c"\00\FF\FFv\02\03", [6 x i8] c"\00\03\01\A9\F8\D6", [6 x i8] c"T\FF\09\FA\02\89"], [8 x [6 x i8]] [[6 x i8] c"\1F\C1\02&\01\FF", [6 x i8] c"\00\C1\F7\0F\02\02", [6 x i8] c"\03\FF\FF\03\F8`", [6 x i8] c"&\03\02\00\02\09", [6 x i8] c"\BE\FF\89\0F\02\D6", [6 x i8] c"\01\03\C1\FA\F8\FF", [6 x i8] c"\1F\FF\FF\84\02\09", [6 x i8] c"\07\C1\06\A9\01\02"], [8 x [6 x i8]] [[6 x i8] c"\01\C1\FF\8F\02\06", [6 x i8] c"\00\FF\03\00\F8\FF", [6 x i8] c"\A9\03\06\BE\02\FF", [6 x i8] c"\03\FF\09\8F\02\FF", [6 x i8] c"\DB\03\F8&\F8\03", [6 x i8] c"\07\FF\89H\02\FF", [6 x i8] c"T\C1\05\FA\FC\FF", [6 x i8] c"`\08#\06\FF\C4"]], align 16
@.str.6 = private unnamed_addr constant [14 x i8] c"g_66[i][j][k]\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"g_71[i].f0\00", align 1
@g_74 = internal global i8 0, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_74\00", align 1
@g_76 = internal global i8 -58, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"g_76\00", align 1
@g_81 = internal global i32 167379108, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_100 = internal global i8 -10, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"g_100\00", align 1
@g_106 = internal global i32 1599041032, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_131 = internal global i32 -1324184552, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_131\00", align 1
@g_185 = internal global i16 -4, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_185\00", align 1
@g_209 = internal global [3 x i64] [i64 4, i64 4, i64 4], align 16
@.str.16 = private unnamed_addr constant [9 x i8] c"g_209[i]\00", align 1
@g_211 = internal global i32 -37457944, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_211\00", align 1
@g_268 = internal global i8 -30, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_268\00", align 1
@g_269 = internal global i32 415999521, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_269\00", align 1
@g_299 = internal global i8 -5, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_299\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_320\00", align 1
@g_334 = internal global i8 14, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_334\00", align 1
@g_363 = internal global i16 31679, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_363\00", align 1
@g_383 = internal global i64 -1, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_383\00", align 1
@g_460 = internal global i64 0, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_460\00", align 1
@g_501 = internal global [2 x [7 x [5 x i16]]] [[7 x [5 x i16]] [[5 x i16] [i16 6, i16 0, i16 -14528, i16 -23237, i16 -23237], [5 x i16] [i16 -23237, i16 0, i16 -23237, i16 -22594, i16 -5], [5 x i16] [i16 -14528, i16 0, i16 6, i16 8, i16 -5], [5 x i16] [i16 0, i16 -5233, i16 -5233, i16 0, i16 -23237], [5 x i16] [i16 11604, i16 0, i16 6, i16 -5, i16 0], [5 x i16] [i16 11604, i16 6, i16 -23237, i16 6, i16 11604], [5 x i16] [i16 0, i16 8, i16 -14528, i16 -5, i16 -5233]], [7 x [5 x i16]] [[5 x i16] [i16 -14528, i16 8, i16 0, i16 0, i16 8], [5 x i16] [i16 -23237, i16 6, i16 11604, i16 8, i16 -5233], [5 x i16] [i16 6, i16 0, i16 11604, i16 -22594, i16 11604], [5 x i16] [i16 -5233, i16 -5233, i16 0, i16 -23237, i16 0], [5 x i16] [i16 6, i16 0, i16 -14528, i16 -23237, i16 -23237], [5 x i16] [i16 -23237, i16 0, i16 -23237, i16 -22594, i16 -5], [5 x i16] [i16 -14528, i16 0, i16 6, i16 8, i16 -5]]], align 16
@.str.26 = private unnamed_addr constant [15 x i8] c"g_501[i][j][k]\00", align 1
@g_503 = internal global i16 -245, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_503\00", align 1
@g_505 = internal global i16 -29430, align 2
@.str.28 = private unnamed_addr constant [6 x i8] c"g_505\00", align 1
@g_508 = internal global i64 -9, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_508\00", align 1
@g_531 = internal global [1 x [2 x [8 x i64]]] [[2 x [8 x i64]] [[8 x i64] [i64 -1276138727132606292, i64 -3, i64 -1276138727132606292, i64 1, i64 1, i64 -1276138727132606292, i64 -3, i64 -1276138727132606292], [8 x i64] [i64 -4388972542317587085, i64 1, i64 2437804580773190627, i64 1, i64 -4388972542317587085, i64 -4388972542317587085, i64 1, i64 2437804580773190627]]], align 16
@.str.30 = private unnamed_addr constant [15 x i8] c"g_531[i][j][k]\00", align 1
@g_533 = internal global [3 x [3 x [3 x i8]]] [[3 x [3 x i8]] [[3 x i8] c"\FB\FB\84", [3 x i8] c"\01\84\84", [3 x i8] c"\84\01\88"], [3 x [3 x i8]] [[3 x i8] c"\01\01\01", [3 x i8] c"\FB\84\88", [3 x i8] c"\FB\FB\84"], [3 x [3 x i8]] [[3 x i8] c"\01\84\84", [3 x i8] c"\84\01\01", [3 x i8] c"\88\FB\88"]], align 16
@.str.31 = private unnamed_addr constant [15 x i8] c"g_533[i][j][k]\00", align 1
@g_661 = internal global i32 1895480203, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_661\00", align 1
@g_684 = internal global i8 98, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_684\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"g_691[i][j].f0\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_714 = internal global i8 -33, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_714\00", align 1
@g_764 = internal global i16 -1, align 2
@.str.37 = private unnamed_addr constant [6 x i8] c"g_764\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_79 = internal global i32* null, align 8
@g_242 = internal constant i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 2), align 8
@g_105 = internal constant i32* @g_106, align 8
@g_580 = internal global i32** @g_581, align 8
@g_765 = internal global i32** @g_766, align 8
@func_11.l_713 = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@func_11.l_753 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 -1, i8 -1, i8 1, i8 undef }, align 4
@g_361 = internal global i16** @g_362, align 8
@g_464 = internal global i32** @g_465, align 8
@g_240 = internal global i64* @g_16, align 8
@g_563 = internal global i16*** @g_561, align 8
@g_362 = internal global i16* @g_363, align 8
@g_465 = internal global i32* @g_211, align 8
@g_561 = internal global i16** null, align 8
@func_25.l_706 = private unnamed_addr constant [3 x [5 x i32*]] [[5 x i32*] [i32* @g_106, i32* @g_81, i32* @g_106, i32* @g_106, i32* @g_81], [5 x i32*] [i32* @g_81, i32* @g_106, i32* @g_106, i32* @g_81, i32* @g_106], [5 x i32*] [i32* @g_81, i32* @g_81, i32* @g_81, i32* @g_81, i32* @g_81]], align 16
@g_226 = internal global i32** @g_79, align 8
@func_31.l_660 = private unnamed_addr constant [5 x [7 x i16*]] [[7 x i16*] [i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505], [7 x i16*] [i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505], [7 x i16*] [i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505], [7 x i16*] [i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505], [7 x i16*] [i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505, i16* @g_505]], align 16
@func_31.l_686 = private unnamed_addr constant [4 x [10 x i16*]] [[10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_503, i16* @g_503, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_185, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_185, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_185, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_503, i16* @g_503, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_185, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*)], [10 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 78) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 78) to i16*), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_503, i16* null, i16* @g_503, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* null, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 78) to i16*)], [10 x i16*] [i16* @g_503, i16* @g_503, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_503, i16* @g_185, i16* @g_185, i16* @g_503, i16* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [7 x [5 x i16]]]* @g_501 to i8*), i64 64) to i16*), i16* @g_503, i16* @g_503]], align 16
@func_31.l_586 = private unnamed_addr constant [1 x [6 x [6 x i32*]]] [[6 x [6 x i32*]] [[6 x i32*] [i32* @g_81, i32* @g_81, i32* @g_106, i32* @g_81, i32* @g_106, i32* @g_81], [6 x i32*] [i32* @g_106, i32* @g_81, i32* @g_3, i32* @g_106, i32* @g_106, i32* @g_106], [6 x i32*] [i32* @g_81, i32* @g_81, i32* @g_81, i32* @g_81, i32* @g_106, i32* @g_3], [6 x i32*] [i32* @g_81, i32* @g_81, i32* null, i32* @g_3, i32* null, i32* @g_81], [6 x i32*] [i32* @g_106, i32* @g_81, i32* null, i32* @g_106, i32* null, i32* null], [6 x i32*] [i32* @g_81, i32* @g_81, i32* @g_81, i32* @g_81, i32* null, i32* null]]], align 16
@g_381 = internal constant i64** @g_382, align 8
@g_380 = internal global i64*** @g_381, align 8
@g_382 = internal global i64* @g_383, align 8
@func_43.l_285 = private unnamed_addr constant [1 x [7 x i8]] [[7 x i8] c"\A1\A1\A1\A1\A1\A1\A1"], align 1
@func_43.l_295 = private unnamed_addr constant [1 x [5 x i32]] [[5 x i32] [i32 182518928, i32 182518928, i32 182518928, i32 182518928, i32 182518928]], align 16
@func_43.l_300 = private unnamed_addr constant [10 x [9 x [2 x i32]]] [[9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561], [2 x i32] [i32 1235126561, i32 -265785421], [2 x i32] [i32 1235126561, i32 1235126561], [2 x i32] [i32 -265785421, i32 1235126561]], [9 x [2 x i32]] [[2 x i32] [i32 -265785421, i32 269641518], [2 x i32] [i32 -265785421, i32 -265785421], [2 x i32] [i32 269641518, i32 -265785421], [2 x i32] [i32 -265785421, i32 269641518], [2 x i32] [i32 -265785421, i32 -265785421], [2 x i32] [i32 269641518, i32 -265785421], [2 x i32] [i32 -265785421, i32 269641518], [2 x i32] [i32 -265785421, i32 -265785421], [2 x i32] [i32 269641518, i32 -265785421]]], align 16
@func_43.l_519 = internal constant [2 x i32***] [i32*** @g_464, i32*** @g_464], align 16
@func_43.l_301 = private unnamed_addr constant [8 x i64] [i64 -275620119272341141, i64 -275620119272341141, i64 -275620119272341141, i64 -275620119272341141, i64 -275620119272341141, i64 -275620119272341141, i64 -275620119272341141, i64 -275620119272341141], align 16
@g_425 = internal global i32** @g_79, align 8
@func_47.l_77 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 -39, i8 -24, i8 1, i8 undef }, align 4
@func_47.l_110 = private unnamed_addr constant [4 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] zeroinitializer, [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], [5 x i32] zeroinitializer], align 16
@func_47.l_236 = private unnamed_addr constant [9 x i32] [i32 179220702, i32 179220702, i32 179220702, i32 179220702, i32 179220702, i32 179220702, i32 179220702, i32 179220702, i32 179220702], align 16
@g_104 = internal global i32** @g_105, align 8
@func_47.l_130 = private unnamed_addr constant [6 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@func_47.l_115 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 1, i8 0, i8 0, i8 undef }, align 4
@func_47.l_139 = private unnamed_addr constant { i8, i8, i8, i8 } { i8 -6, i8 -1, i8 1, i8 undef }, align 4
@func_47.l_149 = private unnamed_addr constant [8 x [5 x i8*]] [[5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* @g_74, i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135)], [5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 217), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* null], [5 x i8*] [i8* null, i8* null, i8* @g_74, i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 2)], [5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 217), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 217), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* null], [5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* @g_76, i8* @g_76, i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135)], [5 x i8*] [i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 217), i8* @g_76, i8* @g_74, i8* @g_74], [5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 217), i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 217), i8* @g_76, i8* @g_74], [5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* @g_74, i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135), i8* getelementptr (i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i32 0, i32 0, i32 0), i64 135)]], align 16
@func_47.l_184 = private unnamed_addr constant [1 x [2 x [6 x i16*]]] [[2 x [6 x i16*]] [[6 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [6 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185]]], align 16
@func_47.l_219 = private unnamed_addr constant [5 x [6 x [7 x i16*]]] [[6 x [7 x i16*]] [[7 x i16*] [i16* @g_185, i16* null, i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185]], [6 x [7 x i16*]] [[7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* null, i16* @g_185], [7 x i16*] [i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* null, i16* null, i16* @g_185, i16* @g_185, i16* null], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* @g_185], [7 x i16*] [i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* @g_185], [7 x i16*] [i16* null, i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185]], [6 x [7 x i16*]] [[7 x i16*] [i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* @g_185], [7 x i16*] [i16* @g_185, i16* null, i16* null, i16* @g_185, i16* null, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* null, i16* null, i16* null, i16* @g_185, i16* @g_185, i16* null], [7 x i16*] [i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185]], [6 x [7 x i16*]] [[7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* null], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185]], [6 x [7 x i16*]] [[7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* null, i16* null], [7 x i16*] [i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* null], [7 x i16*] [i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* null, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185, i16* @g_185], [7 x i16*] [i16* @g_185, i16* null, i16* @g_185, i16* @g_185, i16* null, i16* @g_185, i16* null]]], align 16
@func_47.l_225 = private unnamed_addr constant [6 x [5 x i32**]] [[5 x i32**] [i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79], [5 x i32**] [i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79], [5 x i32**] [i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79], [5 x i32**] [i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79], [5 x i32**] [i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79], [5 x i32**] [i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79, i32** @g_79]], align 16
@func_60.l_89 = private unnamed_addr constant [10 x [5 x i64*]] [[5 x i64*] [i64* @g_16, i64* @g_16, i64* @g_16, i64* @g_15, i64* @g_15], [5 x i64*] [i64* @g_15, i64* @g_15, i64* @g_15, i64* @g_16, i64* @g_15], [5 x i64*] [i64* null, i64* null, i64* @g_15, i64* null, i64* null], [5 x i64*] [i64* @g_15, i64* null, i64* @g_15, i64* @g_15, i64* @g_15], [5 x i64*] [i64* @g_16, i64* @g_16, i64* @g_15, i64* null, i64* @g_15], [5 x i64*] [i64* null, i64* @g_15, i64* @g_15, i64* null, i64* @g_15], [5 x i64*] [i64* null, i64* null, i64* @g_16, i64* @g_16, i64* null], [5 x i64*] [i64* @g_15, i64* @g_15, i64* @g_16, i64* @g_15, i64* @g_15], [5 x i64*] [i64* @g_16, i64* @g_16, i64* @g_16, i64* @g_16, i64* @g_15], [5 x i64*] [i64* @g_15, i64* null, i64* @g_15, i64* null, i64* @g_15]], align 16
@g_581 = internal global i32* null, align 8
@g_766 = internal global i32* @g_106, align 8
@.str.38 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_71 = internal global <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 8, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 8, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 8, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 8, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 8, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 8, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 8, i8 0, i8 0, i8 undef } }>, align 16
@g_691 = internal constant <{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }> <{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> <{ { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 73, i8 -70, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 5, i8 0, i8 0, i8 undef } }> }>, align 16
@.str.39 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i64, i64* @g_15, align 8, !tbaa !7
  %95 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %95)
  %96 = load i64, i64* @g_16, align 8, !tbaa !7
  %97 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %97)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %114, %89
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 5
  br i1 %100, label %101, label %117

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [5 x i8], [5 x i8]* @g_18, i32 0, i64 %103
  %105 = load i8, i8* %104, align 1, !tbaa !9
  %106 = sext i8 %105 to i64
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %107)
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

; <label>:110                                     ; preds = %101
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %111)
  br label %113

; <label>:113                                     ; preds = %110, %101
  br label %114

; <label>:114                                     ; preds = %113
  %115 = load i32, i32* %i, align 4, !tbaa !1
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %i, align 4, !tbaa !1
  br label %98

; <label>:117                                     ; preds = %98
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %118

; <label>:118                                     ; preds = %158, %117
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = icmp slt i32 %119, 5
  br i1 %120, label %121, label %161

; <label>:121                                     ; preds = %118
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %122

; <label>:122                                     ; preds = %154, %121
  %123 = load i32, i32* %j, align 4, !tbaa !1
  %124 = icmp slt i32 %123, 8
  br i1 %124, label %125, label %157

; <label>:125                                     ; preds = %122
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %126

; <label>:126                                     ; preds = %150, %125
  %127 = load i32, i32* %k, align 4, !tbaa !1
  %128 = icmp slt i32 %127, 6
  br i1 %128, label %129, label %153

; <label>:129                                     ; preds = %126
  %130 = load i32, i32* %k, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %j, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %i, align 4, !tbaa !1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 %135
  %137 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %136, i32 0, i64 %133
  %138 = getelementptr inbounds [6 x i8], [6 x i8]* %137, i32 0, i64 %131
  %139 = load i8, i8* %138, align 1, !tbaa !9
  %140 = sext i8 %139 to i64
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %141)
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

; <label>:144                                     ; preds = %129
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = load i32, i32* %k, align 4, !tbaa !1
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %145, i32 %146, i32 %147)
  br label %149

; <label>:149                                     ; preds = %144, %129
  br label %150

; <label>:150                                     ; preds = %149
  %151 = load i32, i32* %k, align 4, !tbaa !1
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %k, align 4, !tbaa !1
  br label %126

; <label>:153                                     ; preds = %126
  br label %154

; <label>:154                                     ; preds = %153
  %155 = load i32, i32* %j, align 4, !tbaa !1
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %j, align 4, !tbaa !1
  br label %122

; <label>:157                                     ; preds = %122
  br label %158

; <label>:158                                     ; preds = %157
  %159 = load i32, i32* %i, align 4, !tbaa !1
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %i, align 4, !tbaa !1
  br label %118

; <label>:161                                     ; preds = %118
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %162

; <label>:162                                     ; preds = %181, %161
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = icmp slt i32 %163, 7
  br i1 %164, label %165, label %184

; <label>:165                                     ; preds = %162
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [7 x %union.U0], [7 x %union.U0]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_71 to [7 x %union.U0]*), i32 0, i64 %167
  %169 = bitcast %union.U0* %168 to i32*
  %170 = load volatile i32, i32* %169, align 4
  %171 = shl i32 %170, 15
  %172 = ashr i32 %171, 15
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %174)
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

; <label>:177                                     ; preds = %165
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %178)
  br label %180

; <label>:180                                     ; preds = %177, %165
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i, align 4, !tbaa !1
  br label %162

; <label>:184                                     ; preds = %162
  %185 = load i8, i8* @g_74, align 1, !tbaa !9
  %186 = sext i8 %185 to i64
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %187)
  %188 = load i8, i8* @g_76, align 1, !tbaa !9
  %189 = sext i8 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %190)
  %191 = load i32, i32* @g_81, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %193)
  %194 = load i8, i8* @g_100, align 1, !tbaa !9
  %195 = zext i8 %194 to i64
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %196)
  %197 = load i32, i32* @g_106, align 4, !tbaa !1
  %198 = sext i32 %197 to i64
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %199)
  %200 = load volatile i32, i32* @g_131, align 4, !tbaa !1
  %201 = zext i32 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %202)
  %203 = load i16, i16* @g_185, align 2, !tbaa !10
  %204 = zext i16 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %205)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %206

; <label>:206                                     ; preds = %221, %184
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = icmp slt i32 %207, 3
  br i1 %208, label %209, label %224

; <label>:209                                     ; preds = %206
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [3 x i64], [3 x i64]* @g_209, i32 0, i64 %211
  %213 = load i64, i64* %212, align 8, !tbaa !7
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %214)
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

; <label>:217                                     ; preds = %209
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %218)
  br label %220

; <label>:220                                     ; preds = %217, %209
  br label %221

; <label>:221                                     ; preds = %220
  %222 = load i32, i32* %i, align 4, !tbaa !1
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %i, align 4, !tbaa !1
  br label %206

; <label>:224                                     ; preds = %206
  %225 = load i32, i32* @g_211, align 4, !tbaa !1
  %226 = zext i32 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %227)
  %228 = load volatile i8, i8* @g_268, align 1, !tbaa !9
  %229 = sext i8 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %230)
  %231 = load i32, i32* @g_269, align 4, !tbaa !1
  %232 = zext i32 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %233)
  %234 = load i8, i8* @g_299, align 1, !tbaa !9
  %235 = sext i8 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %236)
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %237)
  %238 = load i8, i8* @g_334, align 1, !tbaa !9
  %239 = zext i8 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %240)
  %241 = load volatile i16, i16* @g_363, align 2, !tbaa !10
  %242 = zext i16 %241 to i64
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %243)
  %244 = load volatile i64, i64* @g_383, align 8, !tbaa !7
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %245)
  %246 = load i64, i64* @g_460, align 8, !tbaa !7
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %247)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %248

; <label>:248                                     ; preds = %288, %224
  %249 = load i32, i32* %i, align 4, !tbaa !1
  %250 = icmp slt i32 %249, 2
  br i1 %250, label %251, label %291

; <label>:251                                     ; preds = %248
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %252

; <label>:252                                     ; preds = %284, %251
  %253 = load i32, i32* %j, align 4, !tbaa !1
  %254 = icmp slt i32 %253, 7
  br i1 %254, label %255, label %287

; <label>:255                                     ; preds = %252
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %256

; <label>:256                                     ; preds = %280, %255
  %257 = load i32, i32* %k, align 4, !tbaa !1
  %258 = icmp slt i32 %257, 5
  br i1 %258, label %259, label %283

; <label>:259                                     ; preds = %256
  %260 = load i32, i32* %k, align 4, !tbaa !1
  %261 = sext i32 %260 to i64
  %262 = load i32, i32* %j, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [2 x [7 x [5 x i16]]], [2 x [7 x [5 x i16]]]* @g_501, i32 0, i64 %265
  %267 = getelementptr inbounds [7 x [5 x i16]], [7 x [5 x i16]]* %266, i32 0, i64 %263
  %268 = getelementptr inbounds [5 x i16], [5 x i16]* %267, i32 0, i64 %261
  %269 = load i16, i16* %268, align 2, !tbaa !10
  %270 = zext i16 %269 to i64
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 %271)
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

; <label>:274                                     ; preds = %259
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = load i32, i32* %j, align 4, !tbaa !1
  %277 = load i32, i32* %k, align 4, !tbaa !1
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %275, i32 %276, i32 %277)
  br label %279

; <label>:279                                     ; preds = %274, %259
  br label %280

; <label>:280                                     ; preds = %279
  %281 = load i32, i32* %k, align 4, !tbaa !1
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %k, align 4, !tbaa !1
  br label %256

; <label>:283                                     ; preds = %256
  br label %284

; <label>:284                                     ; preds = %283
  %285 = load i32, i32* %j, align 4, !tbaa !1
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %j, align 4, !tbaa !1
  br label %252

; <label>:287                                     ; preds = %252
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %i, align 4, !tbaa !1
  br label %248

; <label>:291                                     ; preds = %248
  %292 = load i16, i16* @g_503, align 2, !tbaa !10
  %293 = zext i16 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %294)
  %295 = load i16, i16* @g_505, align 2, !tbaa !10
  %296 = sext i16 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %297)
  %298 = load i64, i64* @g_508, align 8, !tbaa !7
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %299)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %300

; <label>:300                                     ; preds = %339, %291
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = icmp slt i32 %301, 1
  br i1 %302, label %303, label %342

; <label>:303                                     ; preds = %300
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %304

; <label>:304                                     ; preds = %335, %303
  %305 = load i32, i32* %j, align 4, !tbaa !1
  %306 = icmp slt i32 %305, 2
  br i1 %306, label %307, label %338

; <label>:307                                     ; preds = %304
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %308

; <label>:308                                     ; preds = %331, %307
  %309 = load i32, i32* %k, align 4, !tbaa !1
  %310 = icmp slt i32 %309, 8
  br i1 %310, label %311, label %334

; <label>:311                                     ; preds = %308
  %312 = load i32, i32* %k, align 4, !tbaa !1
  %313 = sext i32 %312 to i64
  %314 = load i32, i32* %j, align 4, !tbaa !1
  %315 = sext i32 %314 to i64
  %316 = load i32, i32* %i, align 4, !tbaa !1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [1 x [2 x [8 x i64]]], [1 x [2 x [8 x i64]]]* @g_531, i32 0, i64 %317
  %319 = getelementptr inbounds [2 x [8 x i64]], [2 x [8 x i64]]* %318, i32 0, i64 %315
  %320 = getelementptr inbounds [8 x i64], [8 x i64]* %319, i32 0, i64 %313
  %321 = load volatile i64, i64* %320, align 8, !tbaa !7
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i32 %322)
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

; <label>:325                                     ; preds = %311
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = load i32, i32* %j, align 4, !tbaa !1
  %328 = load i32, i32* %k, align 4, !tbaa !1
  %329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %326, i32 %327, i32 %328)
  br label %330

; <label>:330                                     ; preds = %325, %311
  br label %331

; <label>:331                                     ; preds = %330
  %332 = load i32, i32* %k, align 4, !tbaa !1
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %k, align 4, !tbaa !1
  br label %308

; <label>:334                                     ; preds = %308
  br label %335

; <label>:335                                     ; preds = %334
  %336 = load i32, i32* %j, align 4, !tbaa !1
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %j, align 4, !tbaa !1
  br label %304

; <label>:338                                     ; preds = %304
  br label %339

; <label>:339                                     ; preds = %338
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %i, align 4, !tbaa !1
  br label %300

; <label>:342                                     ; preds = %300
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:343                                     ; preds = %383, %342
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = icmp slt i32 %344, 3
  br i1 %345, label %346, label %386

; <label>:346                                     ; preds = %343
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %347

; <label>:347                                     ; preds = %379, %346
  %348 = load i32, i32* %j, align 4, !tbaa !1
  %349 = icmp slt i32 %348, 3
  br i1 %349, label %350, label %382

; <label>:350                                     ; preds = %347
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %351

; <label>:351                                     ; preds = %375, %350
  %352 = load i32, i32* %k, align 4, !tbaa !1
  %353 = icmp slt i32 %352, 3
  br i1 %353, label %354, label %378

; <label>:354                                     ; preds = %351
  %355 = load i32, i32* %k, align 4, !tbaa !1
  %356 = sext i32 %355 to i64
  %357 = load i32, i32* %j, align 4, !tbaa !1
  %358 = sext i32 %357 to i64
  %359 = load i32, i32* %i, align 4, !tbaa !1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [3 x [3 x [3 x i8]]], [3 x [3 x [3 x i8]]]* @g_533, i32 0, i64 %360
  %362 = getelementptr inbounds [3 x [3 x i8]], [3 x [3 x i8]]* %361, i32 0, i64 %358
  %363 = getelementptr inbounds [3 x i8], [3 x i8]* %362, i32 0, i64 %356
  %364 = load i8, i8* %363, align 1, !tbaa !9
  %365 = zext i8 %364 to i64
  %366 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %365, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i32 %366)
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

; <label>:369                                     ; preds = %354
  %370 = load i32, i32* %i, align 4, !tbaa !1
  %371 = load i32, i32* %j, align 4, !tbaa !1
  %372 = load i32, i32* %k, align 4, !tbaa !1
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %370, i32 %371, i32 %372)
  br label %374

; <label>:374                                     ; preds = %369, %354
  br label %375

; <label>:375                                     ; preds = %374
  %376 = load i32, i32* %k, align 4, !tbaa !1
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %k, align 4, !tbaa !1
  br label %351

; <label>:378                                     ; preds = %351
  br label %379

; <label>:379                                     ; preds = %378
  %380 = load i32, i32* %j, align 4, !tbaa !1
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %j, align 4, !tbaa !1
  br label %347

; <label>:382                                     ; preds = %347
  br label %383

; <label>:383                                     ; preds = %382
  %384 = load i32, i32* %i, align 4, !tbaa !1
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:386                                     ; preds = %343
  %387 = load i32, i32* @g_661, align 4, !tbaa !1
  %388 = zext i32 %387 to i64
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %389)
  %390 = load i8, i8* @g_684, align 1, !tbaa !9
  %391 = zext i8 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %392)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %424, %386
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 4
  br i1 %395, label %396, label %427

; <label>:396                                     ; preds = %393
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %397

; <label>:397                                     ; preds = %420, %396
  %398 = load i32, i32* %j, align 4, !tbaa !1
  %399 = icmp slt i32 %398, 10
  br i1 %399, label %400, label %423

; <label>:400                                     ; preds = %397
  %401 = load i32, i32* %j, align 4, !tbaa !1
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %i, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [4 x [10 x %union.U0]], [4 x [10 x %union.U0]]* bitcast (<{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }>* @g_691 to [4 x [10 x %union.U0]]*), i32 0, i64 %404
  %406 = getelementptr inbounds [10 x %union.U0], [10 x %union.U0]* %405, i32 0, i64 %402
  %407 = bitcast %union.U0* %406 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = shl i32 %408, 15
  %410 = ashr i32 %409, 15
  %411 = sext i32 %410 to i64
  %412 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %411, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 %412)
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %419

; <label>:415                                     ; preds = %400
  %416 = load i32, i32* %i, align 4, !tbaa !1
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 %416, i32 %417)
  br label %419

; <label>:419                                     ; preds = %415, %400
  br label %420

; <label>:420                                     ; preds = %419
  %421 = load i32, i32* %j, align 4, !tbaa !1
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %j, align 4, !tbaa !1
  br label %397

; <label>:423                                     ; preds = %397
  br label %424

; <label>:424                                     ; preds = %423
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %i, align 4, !tbaa !1
  br label %393

; <label>:427                                     ; preds = %393
  %428 = load i8, i8* @g_714, align 1, !tbaa !9
  %429 = zext i8 %428 to i64
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %429, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %430)
  %431 = load i16, i16* @g_764, align 2, !tbaa !10
  %432 = sext i16 %431 to i64
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %432, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %433)
  %434 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %435 = zext i32 %434 to i64
  %436 = xor i64 %435, 4294967295
  %437 = trunc i64 %436 to i32
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %437, i32 %438)
  %439 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %439) #1
  %440 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %440) #1
  %441 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #1
  %442 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #1
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
  %l_2 = alloca i32*, align 8
  %l_10 = alloca i32**, align 8
  %l_14 = alloca i64*, align 8
  %l_17 = alloca i8*, align 8
  %l_49 = alloca i16, align 2
  %l_577 = alloca i32***, align 8
  %l_579 = alloca i32**, align 8
  %l_578 = alloca i32***, align 8
  %l_710 = alloca i64, align 8
  %l_711 = alloca i32, align 4
  %1 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* @g_3, i32** %l_2, align 8, !tbaa !5
  %2 = bitcast i32*** %l_10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32** %l_2, i32*** %l_10, align 8, !tbaa !5
  %3 = bitcast i64** %l_14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64* @g_15, i64** %l_14, align 8, !tbaa !5
  %4 = bitcast i8** %l_17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 2), i8** %l_17, align 8, !tbaa !5
  %5 = bitcast i16* %l_49 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 0, i16* %l_49, align 2, !tbaa !10
  %6 = bitcast i32**** %l_577 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32*** null, i32**** %l_577, align 8, !tbaa !5
  %7 = bitcast i32*** %l_579 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32** @g_79, i32*** %l_579, align 8, !tbaa !5
  %8 = bitcast i32**** %l_578 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32*** %l_579, i32**** %l_578, align 8, !tbaa !5
  %9 = bitcast i64* %l_710 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 1004841253890064002, i64* %l_710, align 8, !tbaa !7
  %10 = bitcast i32* %l_711 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 3, i32* %l_711, align 4, !tbaa !1
  %11 = load i32*, i32** %l_2, align 8, !tbaa !5
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = sext i32 %12 to i64
  %14 = or i64 %13, 3347662849
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4, !tbaa !1
  %16 = load i32*, i32** %l_2, align 8, !tbaa !5
  %17 = load i32, i32* %16, align 4, !tbaa !1
  store i32 %17, i32* @g_3, align 4, !tbaa !1
  %18 = load i32*, i32** %l_2, align 8, !tbaa !5
  %19 = load i32, i32* %18, align 4, !tbaa !1
  %20 = load i32**, i32*** %l_10, align 8, !tbaa !5
  store i32* null, i32** %20, align 8, !tbaa !5
  %21 = load i32, i32* @g_3, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* @g_3, align 4, !tbaa !1
  %24 = trunc i32 %23 to i8
  %25 = load i64*, i64** %l_14, align 8, !tbaa !5
  store i64 -5069025804266719802, i64* %25, align 8, !tbaa !7
  %26 = load i64, i64* @g_16, align 8, !tbaa !7
  %27 = or i64 %26, -5069025804266719802
  store i64 %27, i64* @g_16, align 8, !tbaa !7
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %88

; <label>:29                                      ; preds = %0
  %30 = load i8*, i8** %l_17, align 8, !tbaa !5
  %31 = load i8, i8* %30, align 1, !tbaa !9
  %32 = sext i8 %31 to i64
  %33 = trunc i64 %32 to i8
  store i8 %33, i8* %30, align 1, !tbaa !9
  %34 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 2), align 1, !tbaa !9
  %35 = sext i8 %34 to i32
  %36 = load i16, i16* %l_49, align 2, !tbaa !10
  %37 = zext i16 %36 to i64
  %38 = call i64* @func_47(i64 %37)
  %39 = load i8*, i8** @g_242, align 8, !tbaa !5
  %40 = load i16, i16* @g_185, align 2, !tbaa !10
  %41 = zext i16 %40 to i32
  %42 = call i32** @func_43(i64* %38, i8* %39, i32 %41)
  %43 = load i32***, i32**** %l_578, align 8, !tbaa !5
  store i32** %42, i32*** %43, align 8, !tbaa !5
  %44 = icmp eq i32** %42, @g_105
  %45 = zext i1 %44 to i32
  %46 = load i64*, i64** %l_14, align 8, !tbaa !5
  %47 = bitcast i64* %46 to i8*
  %48 = icmp eq i8* null, %47
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = call i64 @safe_mod_func_uint64_t_u_u(i64 %50, i64 -1)
  %52 = trunc i64 %51 to i8
  %53 = load i16, i16* %l_49, align 2, !tbaa !10
  %54 = trunc i16 %53 to i8
  %55 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %52, i8 signext %54)
  %56 = load i8*, i8** @g_242, align 8, !tbaa !5
  %57 = load i8, i8* %56, align 1, !tbaa !9
  %58 = sext i8 %57 to i32
  %59 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %55, i32 %58)
  %60 = zext i8 %59 to i32
  %61 = load i32**, i32*** @g_580, align 8, !tbaa !5
  %62 = load i64*, i64** %l_14, align 8, !tbaa !5
  %63 = load i64, i64* @g_460, align 8, !tbaa !7
  %64 = trunc i64 %63 to i16
  %65 = call i64* @func_31(i32 %35, i32 %60, i32** %61, i64* %62, i16 zeroext %64)
  %66 = load i32**, i32*** @g_580, align 8, !tbaa !5
  %67 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 2), align 1, !tbaa !9
  %68 = sext i8 %67 to i64
  %69 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 1), align 1, !tbaa !9
  %70 = sext i8 %69 to i64
  %71 = load i32, i32* bitcast (%union.U0* getelementptr inbounds ([4 x [10 x %union.U0]], [4 x [10 x %union.U0]]* bitcast (<{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }>* @g_691 to [4 x [10 x %union.U0]]*), i32 0, i64 0, i64 2) to i32*), align 4
  %72 = call signext i8 @func_25(i64* %65, i32** %66, i64 %68, i32 %71, i64 %70)
  %73 = call zeroext i8 @func_23(i8 signext %72)
  %74 = load i64, i64* %l_710, align 8, !tbaa !7
  %75 = trunc i64 %74 to i32
  %76 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %73, i32 %75)
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* @g_269, align 4, !tbaa !1
  %79 = call i32 @safe_sub_func_uint32_t_u_u(i32 %77, i32 %78)
  %80 = zext i32 %79 to i64
  %81 = icmp eq i64 %80, 65528
  %82 = zext i1 %81 to i32
  %83 = load i16, i16* %l_49, align 2, !tbaa !10
  %84 = zext i16 %83 to i32
  %85 = load i32, i32* %l_711, align 4, !tbaa !1
  %86 = xor i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br label %88

; <label>:88                                      ; preds = %29, %0
  %89 = phi i1 [ false, %0 ], [ %87, %29 ]
  %90 = zext i1 %89 to i32
  %91 = trunc i32 %90 to i8
  %92 = call i32* @func_11(i8 zeroext %24, i8 signext %91)
  %93 = call i32* @func_4(i32* null, i32* @g_3, i64 %22, i32* %92, i32* @g_3)
  %94 = load volatile i32**, i32*** @g_765, align 8, !tbaa !5
  store i32* %93, i32** %94, align 8, !tbaa !5
  %95 = load i8, i8* @g_714, align 1, !tbaa !9
  %96 = zext i8 %95 to i32
  %97 = bitcast i32* %l_711 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i64* %l_710 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32**** %l_578 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32*** %l_579 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32**** %l_577 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i16* %l_49 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %102) #1
  %103 = bitcast i8** %l_17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i64** %l_14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i32*** %l_10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast i32** %l_2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  ret i32 %96
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32* @func_4(i32* %p_5, i32* %p_6, i64 %p_7, i32* %p_8, i32* %p_9) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %p_5, i32** %1, align 8, !tbaa !5
  store i32* %p_6, i32** %2, align 8, !tbaa !5
  store i64 %p_7, i64* %3, align 8, !tbaa !7
  store i32* %p_8, i32** %4, align 8, !tbaa !5
  store i32* %p_9, i32** %5, align 8, !tbaa !5
  %6 = load i32*, i32** %1, align 8, !tbaa !5
  ret i32* %6
}

; Function Attrs: nounwind uwtable
define internal i32* @func_11(i8 zeroext %p_12, i8 signext %p_13) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %l_713 = alloca [8 x i32], align 16
  %l_726 = alloca i32****, align 8
  %l_728 = alloca i32***, align 8
  %l_727 = alloca i32****, align 8
  %l_729 = alloca [4 x i32], align 16
  %l_730 = alloca i32*, align 8
  %l_731 = alloca i32, align 4
  %l_734 = alloca i16**, align 8
  %l_735 = alloca i16***, align 8
  %l_753 = alloca %union.U0, align 4
  %l_754 = alloca i64*, align 8
  %l_755 = alloca i64*, align 8
  %l_756 = alloca [10 x i64*], align 16
  %l_759 = alloca [1 x [3 x i8]], align 1
  %l_760 = alloca [4 x i16*], align 16
  %l_761 = alloca i16*, align 8
  %l_762 = alloca i8*, align 8
  %l_763 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8 %p_12, i8* %1, align 1, !tbaa !9
  store i8 %p_13, i8* %2, align 1, !tbaa !9
  %3 = bitcast [8 x i32]* %l_713 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast [8 x i32]* %l_713 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* bitcast ([8 x i32]* @func_11.l_713 to i8*), i64 32, i32 16, i1 false)
  %5 = bitcast i32***** %l_726 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32**** null, i32***** %l_726, align 8, !tbaa !5
  %6 = bitcast i32**** %l_728 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32*** @g_580, i32**** %l_728, align 8, !tbaa !5
  %7 = bitcast i32***** %l_727 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32**** %l_728, i32***** %l_727, align 8, !tbaa !5
  %8 = bitcast [4 x i32]* %l_729 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast i32** %l_730 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_81, i32** %l_730, align 8, !tbaa !5
  %10 = bitcast i32* %l_731 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 17100813, i32* %l_731, align 4, !tbaa !1
  %11 = bitcast i16*** %l_734 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16** null, i16*** %l_734, align 8, !tbaa !5
  %12 = bitcast i16**** %l_735 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i16*** %l_734, i16**** %l_735, align 8, !tbaa !5
  %13 = bitcast %union.U0* %l_753 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %union.U0* %l_753 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_11.l_753, i32 0, i32 0), i64 4, i32 4, i1 false)
  %15 = bitcast i64** %l_754 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64* null, i64** %l_754, align 8, !tbaa !5
  %16 = bitcast i64** %l_755 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64* null, i64** %l_755, align 8, !tbaa !5
  %17 = bitcast [10 x i64*]* %l_756 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %17) #1
  %18 = bitcast [10 x i64*]* %l_756 to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 80, i32 16, i1 false)
  %19 = bitcast i8* %18 to [10 x i64*]*
  %20 = getelementptr [10 x i64*], [10 x i64*]* %19, i32 0, i32 0
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i32 0), i64** %20
  %21 = getelementptr [10 x i64*], [10 x i64*]* %19, i32 0, i32 1
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i32 0), i64** %21
  %22 = getelementptr [10 x i64*], [10 x i64*]* %19, i32 0, i32 3
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i64]* @g_209 to i8*), i64 16) to i64*), i64** %22
  %23 = getelementptr [10 x i64*], [10 x i64*]* %19, i32 0, i32 5
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i32 0), i64** %23
  %24 = getelementptr [10 x i64*], [10 x i64*]* %19, i32 0, i32 6
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i32 0), i64** %24
  %25 = getelementptr [10 x i64*], [10 x i64*]* %19, i32 0, i32 8
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i64]* @g_209 to i8*), i64 16) to i64*), i64** %25
  %26 = bitcast [1 x [3 x i8]]* %l_759 to i8*
  call void @llvm.lifetime.start(i64 3, i8* %26) #1
  %27 = bitcast [4 x i16*]* %l_760 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %27) #1
  %28 = bitcast i16** %l_761 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i16* @g_505, i16** %l_761, align 8, !tbaa !5
  %29 = bitcast i8** %l_762 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i8* null, i8** %l_762, align 8, !tbaa !5
  %30 = bitcast i8** %l_763 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i8* @g_74, i8** %l_763, align 8, !tbaa !5
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %40, %0
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %33
  %37 = load i32, i32* %i, align 4, !tbaa !1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %l_729, i32 0, i64 %38
  store i32 1540504625, i32* %39, align 4, !tbaa !1
  br label %40

; <label>:40                                      ; preds = %36
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %i, align 4, !tbaa !1
  br label %33

; <label>:43                                      ; preds = %33
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:44                                      ; preds = %62, %43
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %65

; <label>:47                                      ; preds = %44
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %58, %47
  %49 = load i32, i32* %j, align 4, !tbaa !1
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %61

; <label>:51                                      ; preds = %48
  %52 = load i32, i32* %j, align 4, !tbaa !1
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1 x [3 x i8]], [1 x [3 x i8]]* %l_759, i32 0, i64 %55
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %56, i32 0, i64 %53
  store i8 -68, i8* %57, align 1, !tbaa !9
  br label %58

; <label>:58                                      ; preds = %51
  %59 = load i32, i32* %j, align 4, !tbaa !1
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %j, align 4, !tbaa !1
  br label %48

; <label>:61                                      ; preds = %48
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load i32, i32* %i, align 4, !tbaa !1
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %i, align 4, !tbaa !1
  br label %44

; <label>:65                                      ; preds = %44
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %66

; <label>:66                                      ; preds = %73, %65
  %67 = load i32, i32* %i, align 4, !tbaa !1
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %76

; <label>:69                                      ; preds = %66
  %70 = load i32, i32* %i, align 4, !tbaa !1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i16*], [4 x i16*]* %l_760, i32 0, i64 %71
  store i16* @g_185, i16** %72, align 8, !tbaa !5
  br label %73

; <label>:73                                      ; preds = %69
  %74 = load i32, i32* %i, align 4, !tbaa !1
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %i, align 4, !tbaa !1
  br label %66

; <label>:76                                      ; preds = %66
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %l_713, i32 0, i64 2
  %78 = load i32, i32* %77, align 4, !tbaa !1
  %79 = load i8, i8* @g_714, align 1, !tbaa !9
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, %78
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* @g_714, align 1, !tbaa !9
  %83 = zext i8 %82 to i64
  %84 = call i64 @safe_unary_minus_func_int64_t_s(i64 %83)
  %85 = load i32****, i32***** %l_727, align 8, !tbaa !5
  store i32*** @g_580, i32**** %85, align 8, !tbaa !5
  %86 = load volatile i16**, i16*** @g_361, align 8, !tbaa !5
  %87 = load i16*, i16** %86, align 8, !tbaa !5
  %88 = load volatile i16, i16* %87, align 2, !tbaa !10
  %89 = zext i16 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

; <label>:91                                      ; preds = %76
  %92 = load i32**, i32*** @g_464, align 8, !tbaa !5
  %93 = load i32*, i32** %92, align 8, !tbaa !5
  %94 = icmp eq i32* null, %93
  br label %95

; <label>:95                                      ; preds = %91, %76
  %96 = phi i1 [ false, %76 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = load i8, i8* %2, align 1, !tbaa !9
  %99 = sext i8 %98 to i32
  %100 = icmp slt i32 %97, %99
  %101 = zext i1 %100 to i32
  %102 = load i64*, i64** @g_240, align 8, !tbaa !5
  %103 = load i64, i64* %102, align 8, !tbaa !7
  %104 = call i64 @safe_add_func_uint64_t_u_u(i64 -1674331236951997731, i64 %103)
  %105 = load i8, i8* %1, align 1, !tbaa !9
  %106 = zext i8 %105 to i64
  %107 = icmp ne i64 %104, %106
  %108 = zext i1 %107 to i32
  %109 = trunc i32 %108 to i16
  %110 = call signext i16 @safe_unary_minus_func_int16_t_s(i16 signext %109)
  %111 = sext i16 %110 to i32
  %112 = load i8, i8* %1, align 1, !tbaa !9
  %113 = zext i8 %112 to i32
  %114 = and i32 %111, %113
  %115 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %114, i32* %115, align 4, !tbaa !1
  %116 = call i32 @safe_add_func_int32_t_s_s(i32 -9, i32 %114)
  %117 = sext i32 %116 to i64
  %118 = call i64 @safe_sub_func_int64_t_s_s(i64 %117, i64 6)
  %119 = trunc i64 %118 to i32
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %l_729, i32 0, i64 0
  store i32 %119, i32* %120, align 4, !tbaa !1
  %121 = load i32*, i32** %l_730, align 8, !tbaa !5
  store i32 %119, i32* %121, align 4, !tbaa !1
  %122 = load i8, i8* %1, align 1, !tbaa !9
  %123 = zext i8 %122 to i32
  %124 = call i32 @safe_mod_func_int32_t_s_s(i32 %119, i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = load i8, i8* %1, align 1, !tbaa !9
  %127 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %125, i8 zeroext %126)
  %128 = zext i8 %127 to i64
  %129 = icmp uge i64 %128, 249
  %130 = zext i1 %129 to i32
  %131 = load i8, i8* %2, align 1, !tbaa !9
  %132 = sext i8 %131 to i32
  %133 = and i32 %130, %132
  store i32 %133, i32* %l_731, align 4, !tbaa !1
  %134 = load i8, i8* %1, align 1, !tbaa !9
  %135 = load i16**, i16*** %l_734, align 8, !tbaa !5
  %136 = load i16***, i16**** %l_735, align 8, !tbaa !5
  store i16** %135, i16*** %136, align 8, !tbaa !5
  %137 = load volatile i16***, i16**** @g_563, align 8, !tbaa !5
  %138 = load volatile i16**, i16*** %137, align 8, !tbaa !5
  %139 = icmp ne i16** %135, %138
  %140 = zext i1 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = icmp sge i64 23757, %141
  br i1 %142, label %147, label %143

; <label>:143                                     ; preds = %95
  %144 = load i8, i8* %2, align 1, !tbaa !9
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br label %147

; <label>:147                                     ; preds = %143, %95
  %148 = phi i1 [ true, %95 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %134, i32 %149)
  %151 = zext i8 %150 to i32
  %152 = load i32*, i32** @g_105, align 8, !tbaa !5
  %153 = load i32, i32* %152, align 4, !tbaa !1
  %154 = and i32 %153, %151
  store i32 %154, i32* %152, align 4, !tbaa !1
  %155 = load i8*, i8** @g_242, align 8, !tbaa !5
  %156 = load i8, i8* %155, align 1, !tbaa !9
  %157 = sext i8 %156 to i32
  %158 = load i8, i8* %2, align 1, !tbaa !9
  %159 = load i32*, i32** %l_730, align 8, !tbaa !5
  store i32 -1, i32* %159, align 4, !tbaa !1
  %160 = getelementptr inbounds [1 x [3 x i8]], [1 x [3 x i8]]* %l_759, i32 0, i64 0
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %160, i32 0, i64 1
  store i8 98, i8* %161, align 1, !tbaa !9
  %162 = load volatile i16**, i16*** @g_361, align 8, !tbaa !5
  %163 = load i16*, i16** %162, align 8, !tbaa !5
  %164 = getelementptr inbounds [4 x i16*], [4 x i16*]* %l_760, i32 0, i64 1
  %165 = load i16*, i16** %164, align 8, !tbaa !5
  %166 = icmp eq i16* %163, %165
  %167 = zext i1 %166 to i32
  %168 = trunc i32 %167 to i16
  %169 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %168, i32 15)
  store i64 0, i64* @g_460, align 8, !tbaa !7
  %170 = load i8, i8* %1, align 1, !tbaa !9
  %171 = zext i8 %170 to i64
  %172 = icmp ne i64 8707487628313084966, %171
  %173 = zext i1 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = icmp ne i64 %174, 122
  %176 = zext i1 %175 to i32
  %177 = load i16*, i16** %l_761, align 8, !tbaa !5
  %178 = load i16, i16* %177, align 2, !tbaa !10
  %179 = sext i16 %178 to i32
  %180 = xor i32 %179, %176
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %177, align 2, !tbaa !10
  %182 = sext i16 %181 to i32
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = icmp sge i32 -1, %184
  %186 = zext i1 %185 to i32
  %187 = load i8*, i8** %l_763, align 8, !tbaa !5
  %188 = load i8, i8* %187, align 1, !tbaa !9
  %189 = sext i8 %188 to i32
  %190 = or i32 %189, %186
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %187, align 1, !tbaa !9
  store i8 %191, i8* %2, align 1, !tbaa !9
  %192 = load i16, i16* @g_764, align 2, !tbaa !10
  %193 = trunc i16 %192 to i8
  %194 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %191, i8 signext %193)
  %195 = sext i8 %194 to i32
  %196 = load i32, i32* bitcast (%union.U0* getelementptr inbounds ([4 x [10 x %union.U0]], [4 x [10 x %union.U0]]* bitcast (<{ <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>, <{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }> }>* @g_691 to [4 x [10 x %union.U0]]*), i32 0, i64 0, i64 2) to i32*), align 4
  %197 = shl i32 %196, 15
  %198 = ashr i32 %197, 15
  %199 = icmp eq i32 %195, %198
  %200 = zext i1 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = icmp sgt i64 %201, 863308009
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* @g_3, align 4, !tbaa !1
  %205 = or i32 %203, %204
  %206 = load i8, i8* %2, align 1, !tbaa !9
  %207 = sext i8 %206 to i64
  %208 = icmp ne i64 %207, 4294967295
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* @g_106, align 4, !tbaa !1
  %211 = or i32 %209, %210
  %212 = trunc i32 %211 to i16
  %213 = load i8, i8* %1, align 1, !tbaa !9
  %214 = zext i8 %213 to i32
  %215 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %212, i32 %214)
  %216 = zext i16 %215 to i32
  %217 = load i8, i8* %1, align 1, !tbaa !9
  %218 = zext i8 %217 to i32
  %219 = icmp sge i32 %216, %218
  %220 = zext i1 %219 to i32
  %221 = call i32 @safe_div_func_uint32_t_u_u(i32 %220, i32 -171042530)
  %222 = load i8, i8* %1, align 1, !tbaa !9
  %223 = zext i8 %222 to i32
  %224 = xor i32 %221, %223
  %225 = trunc i32 %224 to i8
  %226 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %225, i8 signext -24)
  %227 = sext i8 %226 to i32
  %228 = load i8, i8* %1, align 1, !tbaa !9
  %229 = zext i8 %228 to i32
  %230 = or i32 %227, %229
  %231 = load i8, i8* %1, align 1, !tbaa !9
  %232 = zext i8 %231 to i32
  %233 = load i8, i8* @g_334, align 1, !tbaa !9
  %234 = zext i8 %233 to i32
  %235 = or i32 %232, %234
  %236 = sext i32 %235 to i64
  %237 = call i64 @safe_unary_minus_func_int64_t_s(i64 %236)
  %238 = trunc i64 %237 to i8
  %239 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %238, i8 zeroext -52)
  %240 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 113, i8 zeroext %239)
  %241 = zext i8 %240 to i32
  %242 = or i32 %157, %241
  %243 = trunc i32 %242 to i16
  %244 = load i8, i8* @g_684, align 1, !tbaa !9
  %245 = zext i8 %244 to i16
  %246 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %243, i16 signext %245)
  %247 = sext i16 %246 to i64
  %248 = icmp ne i64 %247, 2126543864
  %249 = zext i1 %248 to i32
  %250 = call i32 @safe_sub_func_int32_t_s_s(i32 %249, i32 1545654704)
  %251 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %250, i32* %251, align 4, !tbaa !1
  %252 = load i32****, i32***** %l_727, align 8, !tbaa !5
  %253 = load i32***, i32**** %252, align 8, !tbaa !5
  %254 = load i32**, i32*** %253, align 8, !tbaa !5
  %255 = load i32*, i32** %254, align 8, !tbaa !5
  %256 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i8** %l_763 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i8** %l_762 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i16** %l_761 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %260) #1
  %261 = bitcast [4 x i16*]* %l_760 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %261) #1
  %262 = bitcast [1 x [3 x i8]]* %l_759 to i8*
  call void @llvm.lifetime.end(i64 3, i8* %262) #1
  %263 = bitcast [10 x i64*]* %l_756 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %263) #1
  %264 = bitcast i64** %l_755 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i64** %l_754 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast %union.U0* %l_753 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i16**** %l_735 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %267) #1
  %268 = bitcast i16*** %l_734 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast i32* %l_731 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast i32** %l_730 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %270) #1
  %271 = bitcast [4 x i32]* %l_729 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %271) #1
  %272 = bitcast i32***** %l_727 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast i32**** %l_728 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #1
  %274 = bitcast i32***** %l_726 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast [8 x i32]* %l_713 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %275) #1
  ret i32* %255
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
define internal zeroext i8 @func_23(i8 signext %p_24) #0 {
  %1 = alloca i8, align 1
  store i8 %p_24, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal signext i8 @func_25(i64* %p_26, i32** %p_27, i64 %p_28, i32 %p_29.coerce, i64 %p_30) #0 {
  %p_29 = alloca %union.U0, align 4
  %1 = alloca i64*, align 8
  %2 = alloca i32**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %l_694 = alloca i32, align 4
  %l_695 = alloca i32, align 4
  %l_696 = alloca i8, align 1
  %l_703 = alloca i16*, align 8
  %l_704 = alloca i16*, align 8
  %l_705 = alloca i64, align 8
  %l_706 = alloca [3 x [5 x i32*]], align 16
  %l_707 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %5 = bitcast %union.U0* %p_29 to i32*
  store i32 %p_29.coerce, i32* %5, align 4
  store i64* %p_26, i64** %1, align 8, !tbaa !5
  store i32** %p_27, i32*** %2, align 8, !tbaa !5
  store i64 %p_28, i64* %3, align 8, !tbaa !7
  store i64 %p_30, i64* %4, align 8, !tbaa !7
  %6 = bitcast i32* %l_694 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -1, i32* %l_694, align 4, !tbaa !1
  %7 = bitcast i32* %l_695 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1, i32* %l_695, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_696) #1
  store i8 18, i8* %l_696, align 1, !tbaa !9
  %8 = bitcast i16** %l_703 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* null, i16** %l_703, align 8, !tbaa !5
  %9 = bitcast i16** %l_704 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16* null, i16** %l_704, align 8, !tbaa !5
  %10 = bitcast i64* %l_705 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 -1, i64* %l_705, align 8, !tbaa !7
  %11 = bitcast [3 x [5 x i32*]]* %l_706 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %11) #1
  %12 = bitcast [3 x [5 x i32*]]* %l_706 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([3 x [5 x i32*]]* @func_25.l_706 to i8*), i64 120, i32 16, i1 false)
  %13 = bitcast i32* %l_707 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -6, i32* %l_707, align 4, !tbaa !1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i16 29, i16* @g_505, align 2, !tbaa !10
  br label %16

; <label>:16                                      ; preds = %25, %0
  %17 = load i16, i16* @g_505, align 2, !tbaa !10
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %30

; <label>:20                                      ; preds = %16
  %21 = load i32, i32* %l_694, align 4, !tbaa !1
  store i32 %21, i32* %l_695, align 4, !tbaa !1
  %22 = load volatile i32**, i32*** @g_226, align 8, !tbaa !5
  %23 = load i32*, i32** %22, align 8, !tbaa !5
  %24 = load i32**, i32*** @g_580, align 8, !tbaa !5
  store i32* %23, i32** %24, align 8, !tbaa !5
  br label %25

; <label>:25                                      ; preds = %20
  %26 = load i16, i16* @g_505, align 2, !tbaa !10
  %27 = sext i16 %26 to i32
  %28 = call i32 @safe_sub_func_int32_t_s_s(i32 %27, i32 8)
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* @g_505, align 2, !tbaa !10
  br label %16

; <label>:30                                      ; preds = %16
  %31 = load i8, i8* %l_696, align 1, !tbaa !9
  %32 = sext i8 %31 to i32
  %33 = bitcast %union.U0* %p_29 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 15
  %36 = ashr i32 %35, 15
  %37 = trunc i32 %36 to i16
  %38 = load i32, i32* %l_695, align 4, !tbaa !1
  %39 = zext i32 %38 to i64
  %40 = load i32, i32* %l_695, align 4, !tbaa !1
  %41 = zext i32 %40 to i64
  %42 = xor i64 -5919843379089892786, %41
  %43 = icmp ult i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 -1, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %l_695, align 4, !tbaa !1
  %49 = xor i32 %47, %48
  %50 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %37, i16 signext 0)
  %51 = sext i16 %50 to i32
  %52 = load i32*, i32** @g_105, align 8, !tbaa !5
  %53 = load i32, i32* %52, align 4, !tbaa !1
  %54 = icmp ne i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = icmp sgt i64 %56, 3358057825
  %58 = zext i1 %57 to i32
  %59 = trunc i32 %58 to i16
  %60 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %59, i16 signext 1)
  %61 = sext i16 %60 to i64
  %62 = load i64, i64* %l_705, align 8, !tbaa !7
  %63 = xor i64 %62, %61
  store i64 %63, i64* %l_705, align 8, !tbaa !7
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = trunc i32 %65 to i16
  %67 = load i8, i8* @g_299, align 1, !tbaa !9
  %68 = sext i8 %67 to i16
  %69 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %66, i16 signext %68)
  %70 = sext i16 %69 to i32
  %71 = icmp sgt i32 %32, %70
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = and i64 %73, 5
  %75 = load volatile i16**, i16*** @g_361, align 8, !tbaa !5
  %76 = load i16*, i16** %75, align 8, !tbaa !5
  %77 = load volatile i16, i16* %76, align 2, !tbaa !10
  %78 = zext i16 %77 to i64
  %79 = xor i64 %74, %78
  %80 = load i32, i32* @g_81, align 4, !tbaa !1
  %81 = sext i32 %80 to i64
  %82 = xor i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* @g_81, align 4, !tbaa !1
  %84 = load i32, i32* %l_707, align 4, !tbaa !1
  %85 = add i32 %84, -1
  store i32 %85, i32* %l_707, align 4, !tbaa !1
  %86 = load i8*, i8** @g_242, align 8, !tbaa !5
  %87 = load i8, i8* %86, align 1, !tbaa !9
  %88 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %l_707 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast [3 x [5 x i32*]]* %l_706 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %91) #1
  %92 = bitcast i64* %l_705 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i16** %l_704 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast i16** %l_703 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_696) #1
  %95 = bitcast i32* %l_695 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %l_694 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  ret i8 %87
}

; Function Attrs: nounwind uwtable
define internal i64* @func_31(i32 %p_32, i32 %p_33, i32** %p_34, i64* %p_35, i16 zeroext %p_36) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i16, align 2
  %l_591 = alloca i8, align 1
  %l_655 = alloca i8*, align 8
  %l_656 = alloca i32, align 4
  %l_659 = alloca i8, align 1
  %l_660 = alloca [5 x [7 x i16*]], align 16
  %l_682 = alloca i64*, align 8
  %l_683 = alloca i32, align 4
  %l_686 = alloca [4 x [10 x i16*]], align 16
  %l_685 = alloca [2 x [10 x i16**]], align 16
  %l_687 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_587 = alloca i8, align 1
  %l_588 = alloca i32, align 4
  %l_590 = alloca i32, align 4
  %l_610 = alloca i64**, align 8
  %l_609 = alloca i64***, align 8
  %l_623 = alloca i32, align 4
  %7 = alloca i32
  %l_586 = alloca [1 x [6 x [6 x i32*]]], align 16
  %l_589 = alloca i64, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_613 = alloca i8, align 1
  %l_648 = alloca i32, align 4
  %l_620 = alloca i64, align 8
  %l_622 = alloca i32, align 4
  %l_639 = alloca i16*, align 8
  %l_638 = alloca i16**, align 8
  %l_637 = alloca [10 x i16***], align 16
  %i3 = alloca i32, align 4
  %l_606 = alloca i64*, align 8
  %l_621 = alloca i64*, align 8
  %l_642 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %l_647 = alloca i16*, align 8
  %l_690 = alloca i16, align 2
  store i32 %p_32, i32* %2, align 4, !tbaa !1
  store i32 %p_33, i32* %3, align 4, !tbaa !1
  store i32** %p_34, i32*** %4, align 8, !tbaa !5
  store i64* %p_35, i64** %5, align 8, !tbaa !5
  store i16 %p_36, i16* %6, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_591) #1
  store i8 -6, i8* %l_591, align 1, !tbaa !9
  %8 = bitcast i8** %l_655 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* getelementptr inbounds ([3 x [3 x [3 x i8]]], [3 x [3 x [3 x i8]]]* @g_533, i32 0, i64 2, i64 1, i64 0), i8** %l_655, align 8, !tbaa !5
  %9 = bitcast i32* %l_656 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1, i32* %l_656, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_659) #1
  store i8 101, i8* %l_659, align 1, !tbaa !9
  %10 = bitcast [5 x [7 x i16*]]* %l_660 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %10) #1
  %11 = bitcast [5 x [7 x i16*]]* %l_660 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([5 x [7 x i16*]]* @func_31.l_660 to i8*), i64 280, i32 16, i1 false)
  %12 = bitcast i64** %l_682 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64* @g_460, i64** %l_682, align 8, !tbaa !5
  %13 = bitcast i32* %l_683 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -1631745612, i32* %l_683, align 4, !tbaa !1
  %14 = bitcast [4 x [10 x i16*]]* %l_686 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %14) #1
  %15 = bitcast [4 x [10 x i16*]]* %l_686 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([4 x [10 x i16*]]* @func_31.l_686 to i8*), i64 320, i32 16, i1 false)
  %16 = bitcast [2 x [10 x i16**]]* %l_685 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %16) #1
  %17 = getelementptr inbounds [2 x [10 x i16**]], [2 x [10 x i16**]]* %l_685, i64 0, i64 0
  %18 = getelementptr inbounds [10 x i16**], [10 x i16**]* %17, i64 0, i64 0
  %19 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %20 = getelementptr inbounds [10 x i16*], [10 x i16*]* %19, i32 0, i64 7
  store i16** %20, i16*** %18, !tbaa !5
  %21 = getelementptr inbounds i16**, i16*** %18, i64 1
  %22 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %23 = getelementptr inbounds [10 x i16*], [10 x i16*]* %22, i32 0, i64 7
  store i16** %23, i16*** %21, !tbaa !5
  %24 = getelementptr inbounds i16**, i16*** %21, i64 1
  %25 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %26 = getelementptr inbounds [10 x i16*], [10 x i16*]* %25, i32 0, i64 7
  store i16** %26, i16*** %24, !tbaa !5
  %27 = getelementptr inbounds i16**, i16*** %24, i64 1
  %28 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %29 = getelementptr inbounds [10 x i16*], [10 x i16*]* %28, i32 0, i64 7
  store i16** %29, i16*** %27, !tbaa !5
  %30 = getelementptr inbounds i16**, i16*** %27, i64 1
  %31 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %32 = getelementptr inbounds [10 x i16*], [10 x i16*]* %31, i32 0, i64 7
  store i16** %32, i16*** %30, !tbaa !5
  %33 = getelementptr inbounds i16**, i16*** %30, i64 1
  %34 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %35 = getelementptr inbounds [10 x i16*], [10 x i16*]* %34, i32 0, i64 7
  store i16** %35, i16*** %33, !tbaa !5
  %36 = getelementptr inbounds i16**, i16*** %33, i64 1
  %37 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %38 = getelementptr inbounds [10 x i16*], [10 x i16*]* %37, i32 0, i64 7
  store i16** %38, i16*** %36, !tbaa !5
  %39 = getelementptr inbounds i16**, i16*** %36, i64 1
  %40 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %41 = getelementptr inbounds [10 x i16*], [10 x i16*]* %40, i32 0, i64 7
  store i16** %41, i16*** %39, !tbaa !5
  %42 = getelementptr inbounds i16**, i16*** %39, i64 1
  %43 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %44 = getelementptr inbounds [10 x i16*], [10 x i16*]* %43, i32 0, i64 7
  store i16** %44, i16*** %42, !tbaa !5
  %45 = getelementptr inbounds i16**, i16*** %42, i64 1
  %46 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %47 = getelementptr inbounds [10 x i16*], [10 x i16*]* %46, i32 0, i64 7
  store i16** %47, i16*** %45, !tbaa !5
  %48 = getelementptr inbounds [10 x i16**], [10 x i16**]* %17, i64 1
  %49 = getelementptr inbounds [10 x i16**], [10 x i16**]* %48, i64 0, i64 0
  %50 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %51 = getelementptr inbounds [10 x i16*], [10 x i16*]* %50, i32 0, i64 7
  store i16** %51, i16*** %49, !tbaa !5
  %52 = getelementptr inbounds i16**, i16*** %49, i64 1
  %53 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %54 = getelementptr inbounds [10 x i16*], [10 x i16*]* %53, i32 0, i64 7
  store i16** %54, i16*** %52, !tbaa !5
  %55 = getelementptr inbounds i16**, i16*** %52, i64 1
  %56 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %57 = getelementptr inbounds [10 x i16*], [10 x i16*]* %56, i32 0, i64 7
  store i16** %57, i16*** %55, !tbaa !5
  %58 = getelementptr inbounds i16**, i16*** %55, i64 1
  %59 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %60 = getelementptr inbounds [10 x i16*], [10 x i16*]* %59, i32 0, i64 7
  store i16** %60, i16*** %58, !tbaa !5
  %61 = getelementptr inbounds i16**, i16*** %58, i64 1
  %62 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %63 = getelementptr inbounds [10 x i16*], [10 x i16*]* %62, i32 0, i64 7
  store i16** %63, i16*** %61, !tbaa !5
  %64 = getelementptr inbounds i16**, i16*** %61, i64 1
  %65 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %66 = getelementptr inbounds [10 x i16*], [10 x i16*]* %65, i32 0, i64 7
  store i16** %66, i16*** %64, !tbaa !5
  %67 = getelementptr inbounds i16**, i16*** %64, i64 1
  %68 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %69 = getelementptr inbounds [10 x i16*], [10 x i16*]* %68, i32 0, i64 7
  store i16** %69, i16*** %67, !tbaa !5
  %70 = getelementptr inbounds i16**, i16*** %67, i64 1
  %71 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %72 = getelementptr inbounds [10 x i16*], [10 x i16*]* %71, i32 0, i64 7
  store i16** %72, i16*** %70, !tbaa !5
  %73 = getelementptr inbounds i16**, i16*** %70, i64 1
  %74 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %75 = getelementptr inbounds [10 x i16*], [10 x i16*]* %74, i32 0, i64 7
  store i16** %75, i16*** %73, !tbaa !5
  %76 = getelementptr inbounds i16**, i16*** %73, i64 1
  %77 = getelementptr inbounds [4 x [10 x i16*]], [4 x [10 x i16*]]* %l_686, i32 0, i64 3
  %78 = getelementptr inbounds [10 x i16*], [10 x i16*]* %77, i32 0, i64 7
  store i16** %78, i16*** %76, !tbaa !5
  %79 = bitcast i64* %l_687 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i64 1, i64* %l_687, align 8, !tbaa !7
  %80 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  store i16 1, i16* @g_185, align 2, !tbaa !10
  br label %82

; <label>:82                                      ; preds = %432, %0
  %83 = load i16, i16* @g_185, align 2, !tbaa !10
  %84 = zext i16 %83 to i32
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %86, label %435

; <label>:86                                      ; preds = %82
  call void @llvm.lifetime.start(i64 1, i8* %l_587) #1
  store i8 -125, i8* %l_587, align 1, !tbaa !9
  %87 = bitcast i32* %l_588 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 6, i32* %l_588, align 4, !tbaa !1
  %88 = bitcast i32* %l_590 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  store i32 4, i32* %l_590, align 4, !tbaa !1
  %89 = bitcast i64*** %l_610 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  store i64** @g_240, i64*** %l_610, align 8, !tbaa !5
  %90 = bitcast i64**** %l_609 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  store i64*** %l_610, i64**** %l_609, align 8, !tbaa !5
  %91 = bitcast i32* %l_623 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 1123499323, i32* %l_623, align 4, !tbaa !1
  %92 = load i32*, i32** @g_105, align 8, !tbaa !5
  %93 = load i32, i32* %92, align 4, !tbaa !1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %86
  store i32 2, i32* %7
  br label %425

; <label>:96                                      ; preds = %86
  store i8 -30, i8* @g_76, align 1, !tbaa !9
  br label %97

; <label>:97                                      ; preds = %116, %96
  %98 = load i8, i8* @g_76, align 1, !tbaa !9
  %99 = sext i8 %98 to i32
  %100 = icmp sgt i32 %99, -9
  br i1 %100, label %101, label %119

; <label>:101                                     ; preds = %97
  %102 = bitcast [1 x [6 x [6 x i32*]]]* %l_586 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %102) #1
  %103 = bitcast [1 x [6 x [6 x i32*]]]* %l_586 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* bitcast ([1 x [6 x [6 x i32*]]]* @func_31.l_586 to i8*), i64 288, i32 16, i1 false)
  %104 = bitcast i64* %l_589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  store i64 0, i64* %l_589, align 8, !tbaa !7
  %105 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = load i8, i8* %l_591, align 1, !tbaa !9
  %109 = add i8 %108, 1
  store i8 %109, i8* %l_591, align 1, !tbaa !9
  %110 = load i64*, i64** %5, align 8, !tbaa !5
  store i64* %110, i64** %1
  store i32 1, i32* %7
  %111 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i64* %l_589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast [1 x [6 x [6 x i32*]]]* %l_586 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %115) #1
  br label %425
                                                  ; No predecessors!
  %117 = load i8, i8* @g_76, align 1, !tbaa !9
  %118 = add i8 %117, 1
  store i8 %118, i8* @g_76, align 1, !tbaa !9
  br label %97

; <label>:119                                     ; preds = %97
  store i8 12, i8* @g_74, align 1, !tbaa !9
  br label %120

; <label>:120                                     ; preds = %416, %119
  %121 = load i8, i8* @g_74, align 1, !tbaa !9
  %122 = sext i8 %121 to i32
  %123 = icmp sle i32 %122, 16
  br i1 %123, label %124, label %419

; <label>:124                                     ; preds = %120
  call void @llvm.lifetime.start(i64 1, i8* %l_613) #1
  store i8 50, i8* %l_613, align 1, !tbaa !9
  %125 = bitcast i32* %l_648 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  store i32 -1, i32* %l_648, align 4, !tbaa !1
  store i16 0, i16* %6, align 2, !tbaa !10
  br label %126

; <label>:126                                     ; preds = %399, %124
  %127 = load i16, i16* %6, align 2, !tbaa !10
  %128 = zext i16 %127 to i32
  %129 = icmp sle i32 %128, 4
  br i1 %129, label %130, label %404

; <label>:130                                     ; preds = %126
  %131 = bitcast i64* %l_620 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %131) #1
  store i64 8, i64* %l_620, align 8, !tbaa !7
  %132 = bitcast i32* %l_622 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  store i32 1325714893, i32* %l_622, align 4, !tbaa !1
  %133 = bitcast i16** %l_639 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  store i16* @g_505, i16** %l_639, align 8, !tbaa !5
  %134 = bitcast i16*** %l_638 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i16** %l_639, i16*** %l_638, align 8, !tbaa !5
  %135 = bitcast [10 x i16***]* %l_637 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %135) #1
  %136 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %137

; <label>:137                                     ; preds = %144, %130
  %138 = load i32, i32* %i3, align 4, !tbaa !1
  %139 = icmp slt i32 %138, 10
  br i1 %139, label %140, label %147

; <label>:140                                     ; preds = %137
  %141 = load i32, i32* %i3, align 4, !tbaa !1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [10 x i16***], [10 x i16***]* %l_637, i32 0, i64 %142
  store i16*** %l_638, i16**** %143, align 8, !tbaa !5
  br label %144

; <label>:144                                     ; preds = %140
  %145 = load i32, i32* %i3, align 4, !tbaa !1
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %i3, align 4, !tbaa !1
  br label %137

; <label>:147                                     ; preds = %137
  %148 = load i32, i32* %l_588, align 4, !tbaa !1
  store i32 %148, i32* %l_590, align 4, !tbaa !1
  store i8 4, i8* @g_76, align 1, !tbaa !9
  br label %149

; <label>:149                                     ; preds = %370, %147
  %150 = load i8, i8* @g_76, align 1, !tbaa !9
  %151 = sext i8 %150 to i32
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %375

; <label>:153                                     ; preds = %149
  %154 = bitcast i64** %l_606 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 0), i64** %l_606, align 8, !tbaa !5
  %155 = bitcast i64** %l_621 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  store i64* @g_460, i64** %l_621, align 8, !tbaa !5
  %156 = bitcast i32* %l_642 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %156) #1
  store i32 61300263, i32* %l_642, align 4, !tbaa !1
  %157 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #1
  %158 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  %159 = load i16, i16* getelementptr inbounds ([2 x [7 x [5 x i16]]], [2 x [7 x [5 x i16]]]* @g_501, i32 0, i64 0, i64 6, i64 2), align 2, !tbaa !10
  %160 = zext i16 %159 to i64
  %161 = load i64*, i64** %l_606, align 8, !tbaa !5
  %162 = load i64, i64* %161, align 8, !tbaa !7
  %163 = and i64 %162, %160
  store i64 %163, i64* %161, align 8, !tbaa !7
  %164 = load i64***, i64**** %l_609, align 8, !tbaa !5
  %165 = icmp eq i64*** @g_381, %164
  %166 = zext i1 %165 to i32
  %167 = load i8, i8* %l_587, align 1, !tbaa !9
  %168 = sext i8 %167 to i16
  %169 = load i8, i8* %l_613, align 1, !tbaa !9
  %170 = zext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %200, label %172

; <label>:172                                     ; preds = %153
  %173 = load i32, i32* %2, align 4, !tbaa !1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

; <label>:175                                     ; preds = %172
  %176 = load i8, i8* %l_613, align 1, !tbaa !9
  %177 = zext i8 %176 to i64
  %178 = load i64, i64* %l_620, align 8, !tbaa !7
  %179 = icmp ult i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = sext i32 %180 to i64
  %182 = load i64*, i64** %5, align 8, !tbaa !5
  %183 = load i64, i64* %182, align 8, !tbaa !7
  %184 = call i64 @safe_mod_func_int64_t_s_s(i64 %181, i64 %183)
  %185 = icmp ne i64 %184, 0
  br label %186

; <label>:186                                     ; preds = %175, %172
  %187 = phi i1 [ true, %172 ], [ %185, %175 ]
  %188 = zext i1 %187 to i32
  %189 = trunc i32 %188 to i8
  %190 = load i32, i32* %l_588, align 4, !tbaa !1
  %191 = trunc i32 %190 to i8
  %192 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %189, i8 signext %191)
  %193 = sext i8 %192 to i16
  %194 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %193, i32 3)
  %195 = zext i16 %194 to i32
  %196 = load i32, i32* %2, align 4, !tbaa !1
  %197 = or i32 %195, %196
  %198 = zext i32 %197 to i64
  %199 = icmp sgt i64 215, %198
  br label %200

; <label>:200                                     ; preds = %186, %153
  %201 = phi i1 [ true, %153 ], [ %199, %186 ]
  %202 = zext i1 %201 to i32
  %203 = sext i32 %202 to i64
  %204 = and i64 %203, 4294967293
  %205 = load volatile i64***, i64**** @g_380, align 8, !tbaa !5
  %206 = load i64**, i64*** %205, align 8, !tbaa !5
  %207 = load volatile i64*, i64** %206, align 8, !tbaa !5
  %208 = load volatile i64, i64* %207, align 8, !tbaa !7
  %209 = load i64*, i64** %5, align 8, !tbaa !5
  store i64 %208, i64* %209, align 8, !tbaa !7
  %210 = load i8, i8* %l_613, align 1, !tbaa !9
  %211 = zext i8 %210 to i64
  %212 = icmp uge i64 %208, %211
  %213 = zext i1 %212 to i32
  %214 = load i32, i32* %3, align 4, !tbaa !1
  %215 = trunc i32 %214 to i16
  %216 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %168, i16 zeroext %215)
  %217 = zext i16 %216 to i32
  %218 = xor i32 %166, %217
  %219 = load i16, i16* %6, align 2, !tbaa !10
  %220 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %219, i32 13)
  %221 = zext i16 %220 to i32
  %222 = load i32**, i32*** @g_464, align 8, !tbaa !5
  %223 = load i32*, i32** %222, align 8, !tbaa !5
  %224 = load i32, i32* %223, align 4, !tbaa !1
  %225 = xor i32 %224, %221
  store i32 %225, i32* %223, align 4, !tbaa !1
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

; <label>:227                                     ; preds = %200
  br label %228

; <label>:228                                     ; preds = %227, %200
  %229 = phi i1 [ false, %200 ], [ true, %227 ]
  %230 = zext i1 %229 to i32
  %231 = sext i32 %230 to i64
  %232 = load i64*, i64** %l_621, align 8, !tbaa !5
  %233 = load i64, i64* %232, align 8, !tbaa !7
  %234 = xor i64 %233, %231
  store i64 %234, i64* %232, align 8, !tbaa !7
  %235 = icmp slt i64 %163, %234
  %236 = zext i1 %235 to i32
  %237 = trunc i32 %236 to i16
  %238 = load i32, i32* %2, align 4, !tbaa !1
  %239 = trunc i32 %238 to i16
  %240 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %237, i16 zeroext %239)
  %241 = load i64, i64* @g_16, align 8, !tbaa !7
  %242 = trunc i64 %241 to i32
  %243 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %240, i32 %242)
  %244 = zext i16 %243 to i32
  %245 = load i8, i8* @g_100, align 1, !tbaa !9
  %246 = zext i8 %245 to i32
  %247 = xor i32 %244, %246
  %248 = trunc i32 %247 to i8
  %249 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %248, i8 zeroext 0)
  %250 = zext i8 %249 to i64
  %251 = and i64 6, %250
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

; <label>:253                                     ; preds = %228
  br label %254

; <label>:254                                     ; preds = %253, %228
  %255 = phi i1 [ false, %228 ], [ true, %253 ]
  %256 = zext i1 %255 to i32
  %257 = load i32, i32* %l_622, align 4, !tbaa !1
  %258 = xor i32 %257, %256
  store i32 %258, i32* %l_622, align 4, !tbaa !1
  %259 = trunc i32 %258 to i8
  %260 = load i8, i8* %l_613, align 1, !tbaa !9
  %261 = zext i8 %260 to i32
  %262 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %259, i32 %261)
  %263 = zext i8 %262 to i32
  %264 = load i32, i32* %l_623, align 4, !tbaa !1
  %265 = icmp sle i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = trunc i32 %266 to i16
  %268 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %267, i16 signext -1)
  %269 = sext i16 %268 to i32
  %270 = load i32*, i32** @g_105, align 8, !tbaa !5
  %271 = load i32, i32* %270, align 4, !tbaa !1
  %272 = xor i32 %271, %269
  store i32 %272, i32* %270, align 4, !tbaa !1
  store i32 %272, i32* %l_588, align 4, !tbaa !1
  %273 = load i32**, i32*** @g_580, align 8, !tbaa !5
  store i32* null, i32** %273, align 8, !tbaa !5
  store i64 0, i64* @g_508, align 8, !tbaa !7
  br label %274

; <label>:274                                     ; preds = %361, %254
  %275 = load i64, i64* @g_508, align 8, !tbaa !7
  %276 = icmp ule i64 %275, 4
  br i1 %276, label %277, label %364

; <label>:277                                     ; preds = %274
  %278 = bitcast i16** %l_647 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %278) #1
  store i16* getelementptr inbounds ([2 x [7 x [5 x i16]]], [2 x [7 x [5 x i16]]]* @g_501, i32 0, i64 0, i64 6, i64 2), i16** %l_647, align 8, !tbaa !5
  %279 = load i8*, i8** @g_242, align 8, !tbaa !5
  %280 = load i8, i8* %279, align 1, !tbaa !9
  %281 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -1, i8 zeroext %280)
  %282 = getelementptr inbounds [10 x i16***], [10 x i16***]* %l_637, i32 0, i64 7
  %283 = load i16***, i16**** %282, align 8, !tbaa !5
  %284 = icmp ne i16*** null, %283
  %285 = zext i1 %284 to i32
  %286 = sext i32 %285 to i64
  %287 = icmp eq i64 8, %286
  br i1 %287, label %288, label %289

; <label>:288                                     ; preds = %277
  br label %289

; <label>:289                                     ; preds = %288, %277
  %290 = phi i1 [ false, %277 ], [ true, %288 ]
  %291 = zext i1 %290 to i32
  %292 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext -111, i32 %291)
  %293 = sext i8 %292 to i32
  %294 = load i16, i16* %6, align 2, !tbaa !10
  %295 = load i16, i16* %6, align 2, !tbaa !10
  %296 = load i8, i8* %l_587, align 1, !tbaa !9
  %297 = sext i8 %296 to i32
  %298 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %295, i32 %297)
  %299 = zext i16 %298 to i32
  %300 = load i16, i16* %6, align 2, !tbaa !10
  %301 = zext i16 %300 to i32
  %302 = and i32 %299, %301
  %303 = icmp eq i32 %293, %302
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* %3, align 4, !tbaa !1
  %306 = icmp ne i32 %304, %305
  %307 = zext i1 %306 to i32
  %308 = trunc i32 %307 to i8
  %309 = load i32, i32* %2, align 4, !tbaa !1
  %310 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %308, i32 %309)
  %311 = sext i8 %310 to i64
  %312 = icmp slt i64 %311, 50
  %313 = zext i1 %312 to i32
  %314 = trunc i32 %313 to i8
  %315 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %314)
  %316 = zext i8 %315 to i16
  %317 = load i32, i32* %l_642, align 4, !tbaa !1
  %318 = trunc i32 %317 to i16
  %319 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %316, i16 zeroext %318)
  %320 = zext i16 %319 to i64
  %321 = load i64*, i64** %5, align 8, !tbaa !5
  %322 = load i64, i64* %321, align 8, !tbaa !7
  %323 = call i64 @safe_sub_func_int64_t_s_s(i64 %320, i64 %322)
  %324 = xor i64 %323, -1
  %325 = load i8, i8* getelementptr inbounds ([3 x [3 x [3 x i8]]], [3 x [3 x [3 x i8]]]* @g_533, i32 0, i64 2, i64 1, i64 2), align 1, !tbaa !9
  %326 = zext i8 %325 to i64
  %327 = and i64 %324, %326
  %328 = and i64 %327, -2162415663253041826
  %329 = load i16, i16* %6, align 2, !tbaa !10
  %330 = zext i16 %329 to i32
  %331 = load i16*, i16** @g_362, align 8, !tbaa !5
  %332 = load volatile i16, i16* %331, align 2, !tbaa !10
  %333 = zext i16 %332 to i32
  %334 = icmp slt i32 %330, %333
  %335 = zext i1 %334 to i32
  %336 = load i32, i32* %l_642, align 4, !tbaa !1
  %337 = icmp sgt i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %338, i32* %339, align 4, !tbaa !1
  %340 = load i32, i32* %2, align 4, !tbaa !1
  %341 = load i32, i32* %3, align 4, !tbaa !1
  %342 = trunc i32 %341 to i8
  %343 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %342)
  %344 = zext i8 %343 to i64
  %345 = load i64*, i64** %l_606, align 8, !tbaa !5
  store i64 %344, i64* %345, align 8, !tbaa !7
  %346 = load i32, i32* %3, align 4, !tbaa !1
  %347 = load i16, i16* %6, align 2, !tbaa !10
  %348 = load i16*, i16** %l_647, align 8, !tbaa !5
  store i16 %347, i16* %348, align 2, !tbaa !10
  %349 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %347, i16 zeroext 7987)
  %350 = zext i16 %349 to i32
  %351 = icmp uge i32 %340, %350
  %352 = zext i1 %351 to i32
  %353 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %352, i32* %353, align 4, !tbaa !1
  %354 = load i32, i32* %l_642, align 4, !tbaa !1
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

; <label>:356                                     ; preds = %289
  store i32 22, i32* %7
  br label %358

; <label>:357                                     ; preds = %289
  store i32 0, i32* %7
  br label %358

; <label>:358                                     ; preds = %357, %356
  %359 = bitcast i16** %l_647 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %628 [
    i32 0, label %360
    i32 22, label %361
  ]

; <label>:360                                     ; preds = %358
  br label %361

; <label>:361                                     ; preds = %360, %358
  %362 = load i64, i64* @g_508, align 8, !tbaa !7
  %363 = add i64 %362, 1
  store i64 %363, i64* @g_508, align 8, !tbaa !7
  br label %274

; <label>:364                                     ; preds = %274
  %365 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %366) #1
  %367 = bitcast i32* %l_642 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %367) #1
  %368 = bitcast i64** %l_621 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %368) #1
  %369 = bitcast i64** %l_606 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %369) #1
  br label %370

; <label>:370                                     ; preds = %364
  %371 = load i8, i8* @g_76, align 1, !tbaa !9
  %372 = sext i8 %371 to i32
  %373 = sub nsw i32 %372, 1
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* @g_76, align 1, !tbaa !9
  br label %149

; <label>:375                                     ; preds = %149
  %376 = load i16, i16* %6, align 2, !tbaa !10
  %377 = icmp ne i16 %376, 0
  br i1 %377, label %378, label %379

; <label>:378                                     ; preds = %375
  store i32 13, i32* %7
  br label %391

; <label>:379                                     ; preds = %375
  store volatile i32 0, i32* @g_131, align 4, !tbaa !1
  br label %380

; <label>:380                                     ; preds = %387, %379
  %381 = load volatile i32, i32* @g_131, align 4, !tbaa !1
  %382 = icmp ult i32 %381, 3
  br i1 %382, label %383, label %390

; <label>:383                                     ; preds = %380
  %384 = load volatile i32, i32* @g_131, align 4, !tbaa !1
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds [3 x i64], [3 x i64]* @g_209, i32 0, i64 %385
  store i64 4363700718826689689, i64* %386, align 8, !tbaa !7
  br label %387

; <label>:387                                     ; preds = %383
  %388 = load volatile i32, i32* @g_131, align 4, !tbaa !1
  %389 = add i32 %388, 1
  store volatile i32 %389, i32* @g_131, align 4, !tbaa !1
  br label %380

; <label>:390                                     ; preds = %380
  store i32 0, i32* %7
  br label %391

; <label>:391                                     ; preds = %390, %378
  %392 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #1
  %393 = bitcast [10 x i16***]* %l_637 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %393) #1
  %394 = bitcast i16*** %l_638 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %394) #1
  %395 = bitcast i16** %l_639 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #1
  %396 = bitcast i32* %l_622 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #1
  %397 = bitcast i64* %l_620 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %397) #1
  %cleanup.dest.6 = load i32, i32* %7
  switch i32 %cleanup.dest.6, label %628 [
    i32 0, label %398
    i32 13, label %399
  ]

; <label>:398                                     ; preds = %391
  br label %399

; <label>:399                                     ; preds = %398, %391
  %400 = load i16, i16* %6, align 2, !tbaa !10
  %401 = zext i16 %400 to i32
  %402 = add nsw i32 %401, 1
  %403 = trunc i32 %402 to i16
  store i16 %403, i16* %6, align 2, !tbaa !10
  br label %126

; <label>:404                                     ; preds = %126
  %405 = load i32, i32* %l_590, align 4, !tbaa !1
  %406 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %405, i32* %406, align 4, !tbaa !1
  %407 = load i32, i32* %l_648, align 4, !tbaa !1
  %408 = or i32 %407, %405
  store i32 %408, i32* %l_648, align 4, !tbaa !1
  %409 = load i32, i32* %l_588, align 4, !tbaa !1
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %412

; <label>:411                                     ; preds = %404
  store i32 10, i32* %7
  br label %413

; <label>:412                                     ; preds = %404
  store i32 0, i32* %7
  br label %413

; <label>:413                                     ; preds = %412, %411
  %414 = bitcast i32* %l_648 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %414) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_613) #1
  %cleanup.dest.7 = load i32, i32* %7
  switch i32 %cleanup.dest.7, label %628 [
    i32 0, label %415
    i32 10, label %416
  ]

; <label>:415                                     ; preds = %413
  br label %416

; <label>:416                                     ; preds = %415, %413
  %417 = load i8, i8* @g_74, align 1, !tbaa !9
  %418 = add i8 %417, 1
  store i8 %418, i8* @g_74, align 1, !tbaa !9
  br label %120

; <label>:419                                     ; preds = %120
  %420 = load i32*, i32** @g_105, align 8, !tbaa !5
  %421 = load i32, i32* %420, align 4, !tbaa !1
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %424

; <label>:423                                     ; preds = %419
  store i32 2, i32* %7
  br label %425

; <label>:424                                     ; preds = %419
  store i32 0, i32* %7
  br label %425

; <label>:425                                     ; preds = %424, %423, %101, %95
  %426 = bitcast i32* %l_623 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #1
  %427 = bitcast i64**** %l_609 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %427) #1
  %428 = bitcast i64*** %l_610 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %428) #1
  %429 = bitcast i32* %l_590 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %429) #1
  %430 = bitcast i32* %l_588 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_587) #1
  %cleanup.dest.8 = load i32, i32* %7
  switch i32 %cleanup.dest.8, label %616 [
    i32 0, label %431
    i32 2, label %435
  ]

; <label>:431                                     ; preds = %425
  br label %432

; <label>:432                                     ; preds = %431
  %433 = load i16, i16* @g_185, align 2, !tbaa !10
  %434 = add i16 %433, 1
  store i16 %434, i16* @g_185, align 2, !tbaa !10
  br label %82

; <label>:435                                     ; preds = %425, %82
  %436 = load i8, i8* %l_591, align 1, !tbaa !9
  %437 = load i32, i32* %3, align 4, !tbaa !1
  %438 = load i8, i8* %l_591, align 1, !tbaa !9
  %439 = zext i8 %438 to i32
  %440 = load i16*, i16** @g_362, align 8, !tbaa !5
  %441 = load volatile i16, i16* %440, align 2, !tbaa !10
  %442 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %441, i32 0)
  %443 = zext i16 %442 to i32
  %444 = load i8, i8* %l_591, align 1, !tbaa !9
  %445 = zext i8 %444 to i32
  %446 = icmp ne i32 %443, %445
  %447 = zext i1 %446 to i32
  %448 = trunc i32 %447 to i8
  %449 = load i8*, i8** %l_655, align 8, !tbaa !5
  store i8 %448, i8* %449, align 1, !tbaa !9
  %450 = zext i8 %448 to i32
  %451 = or i32 %439, %450
  %452 = icmp eq i32 %437, %451
  %453 = zext i1 %452 to i32
  %454 = sext i32 %453 to i64
  %455 = xor i64 %454, -5602287647709991280
  %456 = trunc i64 %455 to i32
  store i32 %456, i32* %l_656, align 4, !tbaa !1
  %457 = load i8, i8* %l_591, align 1, !tbaa !9
  %458 = zext i8 %457 to i64
  %459 = load i8, i8* %l_659, align 1, !tbaa !9
  %460 = sext i8 %459 to i16
  store i16 %460, i16* @g_505, align 2, !tbaa !10
  %461 = sext i16 %460 to i32
  %462 = load i32, i32* @g_661, align 4, !tbaa !1
  %463 = and i32 %462, %461
  store i32 %463, i32* @g_661, align 4, !tbaa !1
  %464 = load i32, i32* %3, align 4, !tbaa !1
  %465 = icmp uge i32 %463, %464
  %466 = zext i1 %465 to i32
  %467 = sext i32 %466 to i64
  %468 = load i8, i8* %l_659, align 1, !tbaa !9
  %469 = sext i8 %468 to i64
  %470 = call i64 @safe_mod_func_int64_t_s_s(i64 %467, i64 %469)
  %471 = icmp ne i64 %458, %470
  %472 = zext i1 %471 to i32
  %473 = sext i32 %472 to i64
  %474 = icmp ule i64 %473, -2934122078580573565
  %475 = zext i1 %474 to i32
  %476 = icmp sge i32 %456, %475
  %477 = zext i1 %476 to i32
  %478 = load i16, i16* %6, align 2, !tbaa !10
  %479 = zext i16 %478 to i32
  %480 = icmp sge i32 %477, %479
  br i1 %480, label %485, label %481

; <label>:481                                     ; preds = %435
  %482 = load i16, i16* %6, align 2, !tbaa !10
  %483 = zext i16 %482 to i32
  %484 = icmp ne i32 %483, 0
  br label %485

; <label>:485                                     ; preds = %481, %435
  %486 = phi i1 [ true, %435 ], [ %484, %481 ]
  %487 = zext i1 %486 to i32
  %488 = sext i32 %487 to i64
  %489 = icmp slt i64 %488, 1412
  %490 = zext i1 %489 to i32
  %491 = call i32 @safe_div_func_uint32_t_u_u(i32 %490, i32 1294139471)
  %492 = load i8, i8* %l_659, align 1, !tbaa !9
  %493 = sext i8 %492 to i32
  %494 = icmp ugt i32 %491, %493
  %495 = zext i1 %494 to i32
  %496 = sext i32 %495 to i64
  %497 = icmp slt i64 %496, 750661598
  %498 = zext i1 %497 to i32
  %499 = trunc i32 %498 to i16
  %500 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %499, i32 5)
  %501 = zext i16 %500 to i32
  store i32 %501, i32* %3, align 4, !tbaa !1
  %502 = load i8, i8* %l_591, align 1, !tbaa !9
  %503 = zext i8 %502 to i16
  %504 = load i32, i32* %3, align 4, !tbaa !1
  %505 = trunc i32 %504 to i16
  %506 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %503, i16 zeroext %505)
  %507 = zext i16 %506 to i32
  %508 = load i32, i32* %2, align 4, !tbaa !1
  %509 = load i32, i32* %2, align 4, !tbaa !1
  %510 = zext i32 %509 to i64
  %511 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 0), align 8, !tbaa !7
  %512 = xor i64 %511, %510
  store i64 %512, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 0), align 8, !tbaa !7
  %513 = load i32, i32* %3, align 4, !tbaa !1
  %514 = trunc i32 %513 to i8
  %515 = load volatile i64***, i64**** @g_380, align 8, !tbaa !5
  %516 = load i64**, i64*** %515, align 8, !tbaa !5
  %517 = load volatile i64*, i64** %516, align 8, !tbaa !5
  %518 = load volatile i64, i64* %517, align 8, !tbaa !7
  %519 = load i64*, i64** %l_682, align 8, !tbaa !5
  %520 = load i64, i64* %519, align 8, !tbaa !7
  %521 = or i64 %520, 1
  store i64 %521, i64* %519, align 8, !tbaa !7
  %522 = trunc i64 %521 to i32
  store i32 %522, i32* %l_656, align 4, !tbaa !1
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %527

; <label>:524                                     ; preds = %485
  %525 = load i32, i32* %l_656, align 4, !tbaa !1
  %526 = icmp ne i32 %525, 0
  br label %527

; <label>:527                                     ; preds = %524, %485
  %528 = phi i1 [ false, %485 ], [ %526, %524 ]
  %529 = zext i1 %528 to i32
  %530 = load i32*, i32** @g_465, align 8, !tbaa !5
  %531 = load i32, i32* %530, align 4, !tbaa !1
  %532 = call i32 @safe_div_func_int32_t_s_s(i32 %529, i32 %531)
  %533 = trunc i32 %532 to i16
  %534 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %533, i32 9)
  %535 = sext i16 %534 to i64
  %536 = icmp sle i64 %535, 32397
  %537 = zext i1 %536 to i32
  %538 = sext i32 %537 to i64
  %539 = icmp ule i64 %518, %538
  %540 = zext i1 %539 to i32
  %541 = load i32*, i32** @g_105, align 8, !tbaa !5
  %542 = load i32, i32* %541, align 4, !tbaa !1
  %543 = call i32 @safe_sub_func_int32_t_s_s(i32 %540, i32 %542)
  store i32 %543, i32* %l_683, align 4, !tbaa !1
  %544 = trunc i32 %543 to i16
  %545 = load i8, i8* @g_684, align 1, !tbaa !9
  %546 = zext i8 %545 to i16
  %547 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %544, i16 signext %546)
  %548 = sext i16 %547 to i32
  %549 = load i32*, i32** @g_465, align 8, !tbaa !5
  %550 = load i32, i32* %549, align 4, !tbaa !1
  %551 = call i32 @safe_add_func_int32_t_s_s(i32 %548, i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %514, i8 zeroext %552)
  %554 = zext i8 %553 to i32
  %555 = load i16, i16* %6, align 2, !tbaa !10
  %556 = zext i16 %555 to i32
  %557 = call i32 @safe_sub_func_int32_t_s_s(i32 %554, i32 %556)
  %558 = sext i32 %557 to i64
  %559 = icmp ule i64 %558, 9
  %560 = zext i1 %559 to i32
  %561 = trunc i32 %560 to i8
  %562 = load i8*, i8** @g_242, align 8, !tbaa !5
  %563 = load i8, i8* %562, align 1, !tbaa !9
  %564 = sext i8 %563 to i32
  %565 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %561, i32 %564)
  %566 = zext i8 %565 to i64
  %567 = icmp slt i64 %566, 231
  %568 = zext i1 %567 to i32
  %569 = sext i32 %568 to i64
  %570 = icmp sgt i64 %569, 1
  %571 = zext i1 %570 to i32
  %572 = sext i32 %571 to i64
  %573 = icmp sge i64 %572, -7
  %574 = zext i1 %573 to i32
  %575 = trunc i32 %574 to i16
  %576 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %575, i16 signext -30046)
  %577 = sext i16 %576 to i64
  %578 = icmp ne i64 %512, %577
  %579 = zext i1 %578 to i32
  %580 = load i16, i16* %6, align 2, !tbaa !10
  %581 = zext i16 %580 to i32
  %582 = icmp eq i32 %507, %581
  %583 = zext i1 %582 to i32
  %584 = getelementptr inbounds [2 x [10 x i16**]], [2 x [10 x i16**]]* %l_685, i32 0, i64 1
  %585 = getelementptr inbounds [10 x i16**], [10 x i16**]* %584, i32 0, i64 5
  %586 = load i16**, i16*** %585, align 8, !tbaa !5
  %587 = icmp ne i16** @g_362, %586
  %588 = zext i1 %587 to i32
  %589 = load i8, i8* %l_591, align 1, !tbaa !9
  %590 = zext i8 %589 to i32
  %591 = icmp slt i32 %588, %590
  br i1 %591, label %593, label %592

; <label>:592                                     ; preds = %527
  br label %593

; <label>:593                                     ; preds = %592, %527
  %594 = phi i1 [ true, %527 ], [ true, %592 ]
  %595 = zext i1 %594 to i32
  %596 = sext i32 %595 to i64
  %597 = load i64, i64* %l_687, align 8, !tbaa !7
  %598 = icmp sle i64 %596, %597
  %599 = zext i1 %598 to i32
  %600 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %599, i32* %600, align 4, !tbaa !1
  store i16 0, i16* @g_185, align 2, !tbaa !10
  br label %601

; <label>:601                                     ; preds = %611, %593
  %602 = load i16, i16* @g_185, align 2, !tbaa !10
  %603 = zext i16 %602 to i32
  %604 = icmp sle i32 %603, 59
  br i1 %604, label %605, label %614

; <label>:605                                     ; preds = %601
  %606 = bitcast i16* %l_690 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %606) #1
  store i16 -10357, i16* %l_690, align 2, !tbaa !10
  %607 = load i16, i16* %l_690, align 2, !tbaa !10
  %608 = zext i16 %607 to i32
  %609 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %608, i32* %609, align 4, !tbaa !1
  %610 = bitcast i16* %l_690 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %610) #1
  br label %611

; <label>:611                                     ; preds = %605
  %612 = load i16, i16* @g_185, align 2, !tbaa !10
  %613 = add i16 %612, 1
  store i16 %613, i16* @g_185, align 2, !tbaa !10
  br label %601

; <label>:614                                     ; preds = %601
  %615 = load i64*, i64** %l_682, align 8, !tbaa !5
  store i64* %615, i64** %1
  store i32 1, i32* %7
  br label %616

; <label>:616                                     ; preds = %614, %425
  %617 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %617) #1
  %618 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  %619 = bitcast i64* %l_687 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %619) #1
  %620 = bitcast [2 x [10 x i16**]]* %l_685 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %620) #1
  %621 = bitcast [4 x [10 x i16*]]* %l_686 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %621) #1
  %622 = bitcast i32* %l_683 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast i64** %l_682 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %623) #1
  %624 = bitcast [5 x [7 x i16*]]* %l_660 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %624) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_659) #1
  %625 = bitcast i32* %l_656 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #1
  %626 = bitcast i8** %l_655 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %626) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_591) #1
  %627 = load i64*, i64** %1
  ret i64* %627

; <label>:628                                     ; preds = %413, %391, %358
  unreachable
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
define internal i32** @func_43(i64* %p_44, i8* %p_45, i32 %p_46) #0 {
  %1 = alloca i32**, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %l_245 = alloca i32*, align 8
  %l_285 = alloca [1 x [7 x i8]], align 1
  %l_295 = alloca [1 x [5 x i32]], align 16
  %l_300 = alloca [10 x [9 x [2 x i32]]], align 16
  %l_302 = alloca i32, align 4
  %l_318 = alloca i64*, align 8
  %l_442 = alloca i8*, align 8
  %l_570 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_246 = alloca i32**, align 8
  %l_257 = alloca i32*, align 8
  %l_294 = alloca [2 x i64*], align 16
  %l_297 = alloca i64**, align 8
  %l_298 = alloca [2 x i8*], align 16
  %l_301 = alloca [8 x i64], align 16
  %i1 = alloca i32, align 4
  %l_319 = alloca i8*, align 8
  %l_321 = alloca i32, align 4
  %l_332 = alloca i32, align 4
  %l_347 = alloca i16*, align 8
  %l_393 = alloca i32**, align 8
  %l_410 = alloca i64*, align 8
  %l_423 = alloca i32*, align 8
  %l_424 = alloca i32**, align 8
  %l_443 = alloca i8**, align 8
  %l_451 = alloca i8*, align 8
  %l_452 = alloca i8*, align 8
  %l_527 = alloca i8, align 1
  %l_528 = alloca i32, align 4
  %l_529 = alloca [5 x i32], align 16
  %l_536 = alloca i32****, align 8
  %i2 = alloca i32, align 4
  %5 = alloca i32
  store i64* %p_44, i64** %2, align 8, !tbaa !5
  store i8* %p_45, i8** %3, align 8, !tbaa !5
  store i32 %p_46, i32* %4, align 4, !tbaa !1
  %6 = bitcast i32** %l_245 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_3, i32** %l_245, align 8, !tbaa !5
  %7 = bitcast [1 x [7 x i8]]* %l_285 to i8*
  call void @llvm.lifetime.start(i64 7, i8* %7) #1
  %8 = bitcast [1 x [7 x i8]]* %l_285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ([1 x [7 x i8]], [1 x [7 x i8]]* @func_43.l_285, i32 0, i32 0, i32 0), i64 7, i32 1, i1 false)
  %9 = bitcast [1 x [5 x i32]]* %l_295 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %9) #1
  %10 = bitcast [1 x [5 x i32]]* %l_295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([1 x [5 x i32]]* @func_43.l_295 to i8*), i64 20, i32 16, i1 false)
  %11 = bitcast [10 x [9 x [2 x i32]]]* %l_300 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %11) #1
  %12 = bitcast [10 x [9 x [2 x i32]]]* %l_300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([10 x [9 x [2 x i32]]]* @func_43.l_300 to i8*), i64 720, i32 16, i1 false)
  %13 = bitcast i32* %l_302 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 2035183427, i32* %l_302, align 4, !tbaa !1
  %14 = bitcast i64** %l_318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 0), i64** %l_318, align 8, !tbaa !5
  %15 = bitcast i8** %l_442 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* @g_100, i8** %l_442, align 8, !tbaa !5
  %16 = bitcast i32*** %l_570 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32** null, i32*** %l_570, align 8, !tbaa !5
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* @g_106, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %63, %0
  %21 = load i32, i32* @g_106, align 4, !tbaa !1
  %22 = icmp slt i32 %21, -11
  br i1 %22, label %23, label %66

; <label>:23                                      ; preds = %20
  %24 = bitcast i32*** %l_246 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32** %l_245, i32*** %l_246, align 8, !tbaa !5
  %25 = bitcast i32** %l_257 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32* @g_81, i32** %l_257, align 8, !tbaa !5
  %26 = bitcast [2 x i64*]* %l_294 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %26) #1
  %27 = bitcast i64*** %l_297 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i64** @g_240, i64*** %l_297, align 8, !tbaa !5
  %28 = bitcast [2 x i8*]* %l_298 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %28) #1
  %29 = bitcast [8 x i64]* %l_301 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %29) #1
  %30 = bitcast [8 x i64]* %l_301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* bitcast ([8 x i64]* @func_43.l_301 to i8*), i64 64, i32 16, i1 false)
  %31 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %32

; <label>:32                                      ; preds = %39, %23
  %33 = load i32, i32* %i1, align 4, !tbaa !1
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %42

; <label>:35                                      ; preds = %32
  %36 = load i32, i32* %i1, align 4, !tbaa !1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i64*], [2 x i64*]* %l_294, i32 0, i64 %37
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 1), i64** %38, align 8, !tbaa !5
  br label %39

; <label>:39                                      ; preds = %35
  %40 = load i32, i32* %i1, align 4, !tbaa !1
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %i1, align 4, !tbaa !1
  br label %32

; <label>:42                                      ; preds = %32
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %43

; <label>:43                                      ; preds = %50, %42
  %44 = load i32, i32* %i1, align 4, !tbaa !1
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %53

; <label>:46                                      ; preds = %43
  %47 = load i32, i32* %i1, align 4, !tbaa !1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %l_298, i32 0, i64 %48
  store i8* @g_74, i8** %49, align 8, !tbaa !5
  br label %50

; <label>:50                                      ; preds = %46
  %51 = load i32, i32* %i1, align 4, !tbaa !1
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %i1, align 4, !tbaa !1
  br label %43

; <label>:53                                      ; preds = %43
  %54 = load i32*, i32** %l_245, align 8, !tbaa !5
  %55 = load i32**, i32*** %l_246, align 8, !tbaa !5
  store i32* %54, i32** %55, align 8, !tbaa !5
  %56 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast [8 x i64]* %l_301 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %57) #1
  %58 = bitcast [2 x i8*]* %l_298 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  %59 = bitcast i64*** %l_297 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast [2 x i64*]* %l_294 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast i32** %l_257 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32*** %l_246 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  br label %63

; <label>:63                                      ; preds = %53
  %64 = load i32, i32* @g_106, align 4, !tbaa !1
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @g_106, align 4, !tbaa !1
  br label %20

; <label>:66                                      ; preds = %20
  store i8 10, i8* @g_299, align 1, !tbaa !9
  br label %67

; <label>:67                                      ; preds = %84, %66
  %68 = load i8, i8* @g_299, align 1, !tbaa !9
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 28
  br i1 %70, label %71, label %87

; <label>:71                                      ; preds = %67
  %72 = bitcast i8** %l_319 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  store i8* @g_100, i8** %l_319, align 8, !tbaa !5
  %73 = bitcast i32* %l_321 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  store i32 -9, i32* %l_321, align 4, !tbaa !1
  %74 = bitcast i32* %l_332 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 -2, i32* %l_332, align 4, !tbaa !1
  %75 = bitcast i16** %l_347 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  store i16* null, i16** %l_347, align 8, !tbaa !5
  %76 = bitcast i32*** %l_393 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  store i32** @g_79, i32*** %l_393, align 8, !tbaa !5
  %77 = bitcast i64** %l_410 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  store i64* null, i64** %l_410, align 8, !tbaa !5
  %78 = bitcast i64** %l_410 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast i32*** %l_393 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = bitcast i16** %l_347 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i32* %l_332 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %l_321 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i8** %l_319 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  br label %84

; <label>:84                                      ; preds = %71
  %85 = load i8, i8* @g_299, align 1, !tbaa !9
  %86 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %85, i8 zeroext 7)
  store i8 %86, i8* @g_299, align 1, !tbaa !9
  br label %67

; <label>:87                                      ; preds = %67
  store i16 29, i16* @g_185, align 2, !tbaa !10
  br label %88

; <label>:88                                      ; preds = %195, %87
  %89 = load i16, i16* @g_185, align 2, !tbaa !10
  %90 = zext i16 %89 to i32
  %91 = icmp sle i32 %90, 50
  br i1 %91, label %92, label %198

; <label>:92                                      ; preds = %88
  %93 = bitcast i32** %l_423 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i32* null, i32** %l_423, align 8, !tbaa !5
  %94 = bitcast i32*** %l_424 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  store i32** %l_423, i32*** %l_424, align 8, !tbaa !5
  %95 = bitcast i8*** %l_443 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  store i8** %l_442, i8*** %l_443, align 8, !tbaa !5
  %96 = bitcast i8** %l_451 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i8* null, i8** %l_451, align 8, !tbaa !5
  %97 = bitcast i8** %l_452 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #1
  store i8* @g_334, i8** %l_452, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_527) #1
  store i8 0, i8* %l_527, align 1, !tbaa !9
  %98 = bitcast i32* %l_528 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  store i32 -729779432, i32* %l_528, align 4, !tbaa !1
  %99 = bitcast [5 x i32]* %l_529 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %99) #1
  %100 = bitcast i32***** %l_536 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  store i32**** null, i32***** %l_536, align 8, !tbaa !5
  %101 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %109, %92
  %103 = load i32, i32* %i2, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 5
  br i1 %104, label %105, label %112

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %i2, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %l_529, i32 0, i64 %107
  store i32 -2, i32* %108, align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %105
  %110 = load i32, i32* %i2, align 4, !tbaa !1
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i2, align 4, !tbaa !1
  br label %102

; <label>:112                                     ; preds = %102
  %113 = load i32*, i32** %l_423, align 8, !tbaa !5
  %114 = load i32**, i32*** %l_424, align 8, !tbaa !5
  store i32* %113, i32** %114, align 8, !tbaa !5
  %115 = load volatile i32**, i32*** @g_425, align 8, !tbaa !5
  store i32* %113, i32** %115, align 8, !tbaa !5
  %116 = load i32*, i32** %l_245, align 8, !tbaa !5
  %117 = load i32, i32* %116, align 4, !tbaa !1
  %118 = load i32, i32* %4, align 4, !tbaa !1
  %119 = load i8*, i8** %l_442, align 8, !tbaa !5
  %120 = load i8**, i8*** %l_443, align 8, !tbaa !5
  store i8* %119, i8** %120, align 8, !tbaa !5
  %121 = load i8*, i8** %3, align 8, !tbaa !5
  %122 = icmp eq i8* %119, %121
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %112
  br label %124

; <label>:124                                     ; preds = %123, %112
  %125 = phi i1 [ false, %112 ], [ true, %123 ]
  %126 = zext i1 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = load i64*, i64** @g_382, align 8, !tbaa !5
  %129 = load volatile i64, i64* %128, align 8, !tbaa !7
  %130 = icmp ugt i64 %127, %129
  %131 = zext i1 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = load i8*, i8** @g_242, align 8, !tbaa !5
  %134 = load i8, i8* %133, align 1, !tbaa !9
  %135 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %134)
  %136 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %135, i32 3)
  %137 = zext i8 %136 to i32
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %l_452, align 8, !tbaa !5
  %140 = load i8, i8* %139, align 1, !tbaa !9
  %141 = add i8 %140, 1
  store i8 %141, i8* %139, align 1, !tbaa !9
  %142 = zext i8 %140 to i32
  %143 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %138, i32 %142)
  %144 = zext i8 %143 to i64
  %145 = call i64 @safe_div_func_int64_t_s_s(i64 %132, i64 %144)
  %146 = trunc i64 %145 to i32
  %147 = call i32 @safe_mod_func_uint32_t_u_u(i32 %118, i32 %146)
  %148 = trunc i32 %147 to i16
  %149 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %148, i16 signext -9)
  %150 = sext i16 %149 to i64
  %151 = load i32, i32* %4, align 4, !tbaa !1
  %152 = load i32*, i32** %l_245, align 8, !tbaa !5
  %153 = load i32, i32* %152, align 4, !tbaa !1
  %154 = icmp ult i32 %151, %153
  %155 = zext i1 %154 to i32
  %156 = trunc i32 %155 to i8
  %157 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 0), align 8, !tbaa !7
  %158 = trunc i64 %157 to i8
  %159 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %156, i8 zeroext %158)
  %160 = zext i8 %159 to i64
  %161 = call i64 @safe_div_func_int64_t_s_s(i64 %150, i64 %160)
  %162 = trunc i64 %161 to i8
  %163 = load i32, i32* %4, align 4, !tbaa !1
  %164 = trunc i32 %163 to i8
  %165 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %162, i8 zeroext %164)
  %166 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %165, i32 0)
  %167 = sext i8 %166 to i32
  %168 = or i32 %117, %167
  %169 = trunc i32 %168 to i8
  %170 = load i32, i32* @g_269, align 4, !tbaa !1
  %171 = trunc i32 %170 to i8
  %172 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %169, i8 zeroext %171)
  %173 = load i8*, i8** @g_242, align 8, !tbaa !5
  %174 = load i8, i8* %173, align 1, !tbaa !9
  %175 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %172, i8 signext %174)
  %176 = sext i8 %175 to i32
  %177 = load i32*, i32** @g_105, align 8, !tbaa !5
  %178 = load i32, i32* %177, align 4, !tbaa !1
  %179 = xor i32 %178, %176
  store i32 %179, i32* %177, align 4, !tbaa !1
  %180 = load i32, i32* %4, align 4, !tbaa !1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %124
  store i32 14, i32* %5
  br label %184

; <label>:183                                     ; preds = %124
  store i32 0, i32* %5
  br label %184

; <label>:184                                     ; preds = %183, %182
  %185 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32***** %l_536 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast [5 x i32]* %l_529 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %187) #1
  %188 = bitcast i32* %l_528 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_527) #1
  %189 = bitcast i8** %l_452 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i8** %l_451 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i8*** %l_443 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32*** %l_424 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i32** %l_423 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %221 [
    i32 0, label %194
    i32 14, label %198
  ]

; <label>:194                                     ; preds = %184
  br label %195

; <label>:195                                     ; preds = %194
  %196 = load i16, i16* @g_185, align 2, !tbaa !10
  %197 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %196, i16 signext 1)
  store i16 %197, i16* @g_185, align 2, !tbaa !10
  br label %88

; <label>:198                                     ; preds = %184, %88
  store i32 17, i32* @g_106, align 4, !tbaa !1
  br label %199

; <label>:199                                     ; preds = %203, %198
  %200 = load i32, i32* @g_106, align 4, !tbaa !1
  %201 = icmp sle i32 %200, -1
  br i1 %201, label %202, label %206

; <label>:202                                     ; preds = %199
  store i32** @g_79, i32*** %1
  store i32 1, i32* %5
  br label %208
                                                  ; No predecessors!
  %204 = load i32, i32* @g_106, align 4, !tbaa !1
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* @g_106, align 4, !tbaa !1
  br label %199

; <label>:206                                     ; preds = %199
  %207 = load i32**, i32*** %l_570, align 8, !tbaa !5
  store i32** %207, i32*** %1
  store i32 1, i32* %5
  br label %208

; <label>:208                                     ; preds = %206, %202
  %209 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32*** %l_570 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = bitcast i8** %l_442 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = bitcast i64** %l_318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32* %l_302 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast [10 x [9 x [2 x i32]]]* %l_300 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %216) #1
  %217 = bitcast [1 x [5 x i32]]* %l_295 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %217) #1
  %218 = bitcast [1 x [7 x i8]]* %l_285 to i8*
  call void @llvm.lifetime.end(i64 7, i8* %218) #1
  %219 = bitcast i32** %l_245 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = load i32**, i32*** %1
  ret i32** %220

; <label>:221                                     ; preds = %184
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64* @func_47(i64 %p_48) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %l_52 = alloca [9 x i64], align 16
  %l_77 = alloca %union.U0, align 4
  %l_109 = alloca i8, align 1
  %l_110 = alloca [4 x [5 x i32]], align 16
  %l_236 = alloca [9 x i32], align 16
  %l_237 = alloca i64*, align 8
  %l_238 = alloca i64**, align 8
  %l_239 = alloca [3 x i64**], align 16
  %l_241 = alloca i64*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_55 = alloca i64, align 8
  %l_65 = alloca i8*, align 8
  %l_72 = alloca i32, align 4
  %l_73 = alloca i8*, align 8
  %l_75 = alloca i8*, align 8
  %l_103 = alloca i32*, align 8
  %l_102 = alloca i32**, align 8
  %l_101 = alloca [1 x i32***], align 8
  %l_108 = alloca i16, align 2
  %i1 = alloca i32, align 4
  %3 = alloca %union.U0, align 4
  %4 = alloca i32
  %l_140 = alloca i8*, align 8
  %l_141 = alloca [3 x i32], align 4
  %l_145 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %l_122 = alloca i64, align 8
  %l_129 = alloca i32, align 4
  %l_130 = alloca [6 x i32], align 16
  %l_134 = alloca [3 x i64*], align 16
  %i3 = alloca i32, align 4
  %l_115 = alloca %union.U0, align 4
  %l_123 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_124 = alloca i32*, align 8
  %l_125 = alloca i32*, align 8
  %l_126 = alloca i32*, align 8
  %l_127 = alloca i32*, align 8
  %l_128 = alloca [8 x [3 x [3 x i32*]]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_139 = alloca %union.U0, align 4
  %l_149 = alloca [8 x [5 x i8*]], align 16
  %l_160 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %j12 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %j14 = alloca i32, align 4
  %k15 = alloca i32, align 4
  %l_148 = alloca i8, align 1
  %l_166 = alloca i64*, align 8
  %l_189 = alloca i32, align 4
  %l_144 = alloca [4 x i32*], align 16
  %l_143 = alloca i32**, align 8
  %l_142 = alloca i32***, align 8
  %l_222 = alloca [8 x i32], align 16
  %i17 = alloca i32, align 4
  %j18 = alloca i32, align 4
  %k19 = alloca i32, align 4
  %i20 = alloca i32, align 4
  %j21 = alloca i32, align 4
  %k22 = alloca i32, align 4
  %i24 = alloca i32, align 4
  %j25 = alloca i32, align 4
  %l_184 = alloca [1 x [2 x [6 x i16*]]], align 16
  %l_186 = alloca i32, align 4
  %l_187 = alloca i16**, align 8
  %l_188 = alloca [5 x [4 x i8*]], align 16
  %i27 = alloca i32, align 4
  %j28 = alloca i32, align 4
  %k29 = alloca i32, align 4
  %l_206 = alloca i64, align 8
  %l_210 = alloca i32*, align 8
  %l_219 = alloca [5 x [6 x [7 x i16*]]], align 16
  %l_220 = alloca i32, align 4
  %l_221 = alloca i64*, align 8
  %i30 = alloca i32, align 4
  %j31 = alloca i32, align 4
  %k32 = alloca i32, align 4
  %5 = alloca %union.U0, align 4
  %l_224 = alloca i64**, align 8
  %l_223 = alloca i64***, align 8
  %l_225 = alloca [6 x [5 x i32**]], align 16
  %i35 = alloca i32, align 4
  %j36 = alloca i32, align 4
  store i64 %p_48, i64* %2, align 8, !tbaa !7
  %6 = bitcast [9 x i64]* %l_52 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #1
  %7 = bitcast %union.U0* %l_77 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %union.U0* %l_77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_47.l_77, i32 0, i32 0), i64 4, i32 4, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_109) #1
  store i8 1, i8* %l_109, align 1, !tbaa !9
  %9 = bitcast [4 x [5 x i32]]* %l_110 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %9) #1
  %10 = bitcast [4 x [5 x i32]]* %l_110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([4 x [5 x i32]]* @func_47.l_110 to i8*), i64 80, i32 16, i1 false)
  %11 = bitcast [9 x i32]* %l_236 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %11) #1
  %12 = bitcast [9 x i32]* %l_236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([9 x i32]* @func_47.l_236 to i8*), i64 36, i32 16, i1 false)
  %13 = bitcast i64** %l_237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64* @g_15, i64** %l_237, align 8, !tbaa !5
  %14 = bitcast i64*** %l_238 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64** null, i64*** %l_238, align 8, !tbaa !5
  %15 = bitcast [3 x i64**]* %l_239 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #1
  %16 = bitcast i64** %l_241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64* null, i64** %l_241, align 8, !tbaa !5
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %26, %0
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 9
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i64], [9 x i64]* %l_52, i32 0, i64 %24
  store i64 8367945512731776725, i64* %25, align 8, !tbaa !7
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:29                                      ; preds = %19
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %37, %29
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i64**], [3 x i64**]* %l_239, i32 0, i64 %35
  store i64** %l_237, i64*** %36, align 8, !tbaa !5
  br label %37

; <label>:37                                      ; preds = %33
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4, !tbaa !1
  br label %30

; <label>:40                                      ; preds = %30
  br label %41

; <label>:41                                      ; preds = %1287, %40
  store i64 0, i64* @g_15, align 8, !tbaa !7
  br label %42

; <label>:42                                      ; preds = %157, %41
  %43 = load i64, i64* @g_15, align 8, !tbaa !7
  %44 = icmp ult i64 %43, 3
  br i1 %44, label %45, label %162

; <label>:45                                      ; preds = %42
  %46 = bitcast i64* %l_55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  store i64 -9, i64* %l_55, align 8, !tbaa !7
  %47 = bitcast i8** %l_65 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 2, i64 6, i64 3), i8** %l_65, align 8, !tbaa !5
  %48 = bitcast i32* %l_72 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  store i32 1908357429, i32* %l_72, align 4, !tbaa !1
  %49 = bitcast i8** %l_73 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i8* @g_74, i8** %l_73, align 8, !tbaa !5
  %50 = bitcast i8** %l_75 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i8* @g_76, i8** %l_75, align 8, !tbaa !5
  %51 = bitcast i32** %l_103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  store i32* null, i32** %l_103, align 8, !tbaa !5
  %52 = bitcast i32*** %l_102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i32** %l_103, i32*** %l_102, align 8, !tbaa !5
  %53 = bitcast [1 x i32***]* %l_101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = bitcast i16* %l_108 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %54) #1
  store i16 -1, i16* %l_108, align 2, !tbaa !10
  %55 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %56

; <label>:56                                      ; preds = %63, %45
  %57 = load i32, i32* %i1, align 4, !tbaa !1
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %66

; <label>:59                                      ; preds = %56
  %60 = load i32, i32* %i1, align 4, !tbaa !1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1 x i32***], [1 x i32***]* %l_101, i32 0, i64 %61
  store i32*** %l_102, i32**** %62, align 8, !tbaa !5
  br label %63

; <label>:63                                      ; preds = %59
  %64 = load i32, i32* %i1, align 4, !tbaa !1
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %i1, align 4, !tbaa !1
  br label %56

; <label>:66                                      ; preds = %56
  %67 = getelementptr inbounds [9 x i64], [9 x i64]* %l_52, i32 0, i64 5
  %68 = load i64, i64* %67, align 8, !tbaa !7
  %69 = load i64, i64* %l_55, align 8, !tbaa !7
  %70 = load i8*, i8** %l_65, align 8, !tbaa !5
  store i8 -1, i8* %70, align 1, !tbaa !9
  %71 = load i32, i32* @g_3, align 4, !tbaa !1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %100

; <label>:73                                      ; preds = %66
  %74 = bitcast %union.U0* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* bitcast (%union.U0* getelementptr inbounds ([7 x %union.U0], [7 x %union.U0]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_71 to [7 x %union.U0]*), i32 0, i64 5) to i8*), i64 4, i32 4, i1 true), !tbaa.struct !12
  %75 = load i64, i64* %2, align 8, !tbaa !7
  %76 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 2), align 1, !tbaa !9
  %77 = sext i8 %76 to i32
  %78 = icmp sgt i32 0, %77
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %2, align 8, !tbaa !7
  %82 = or i64 %80, %81
  %83 = icmp eq i64 %82, 1086524028505725874
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %l_72, align 4, !tbaa !1
  %85 = sext i32 %84 to i64
  %86 = xor i64 %85, 85
  %87 = icmp uge i64 %86, 65535
  %88 = zext i1 %87 to i32
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, 1677
  %91 = icmp sge i64 0, %90
  %92 = zext i1 %91 to i32
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds [9 x i64], [9 x i64]* %l_52, i32 0, i64 4
  %95 = load i64, i64* %94, align 8, !tbaa !7
  %96 = trunc i64 %95 to i32
  %97 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %93, i32 %96)
  %98 = sext i16 %97 to i32
  %99 = icmp ne i32 %98, 0
  br label %100

; <label>:100                                     ; preds = %73, %66
  %101 = phi i1 [ false, %66 ], [ %99, %73 ]
  %102 = zext i1 %101 to i32
  %103 = load i8*, i8** %l_73, align 8, !tbaa !5
  %104 = load i8, i8* %103, align 1, !tbaa !9
  %105 = sext i8 %104 to i32
  %106 = or i32 %105, %102
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %103, align 1, !tbaa !9
  %108 = load i64, i64* %l_55, align 8, !tbaa !7
  %109 = trunc i64 %108 to i8
  %110 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %107, i8 signext %109)
  %111 = load i8*, i8** %l_75, align 8, !tbaa !5
  store i8 %110, i8* %111, align 1, !tbaa !9
  %112 = sext i8 %110 to i32
  %113 = icmp slt i32 -1, %112
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* @g_16, align 8, !tbaa !7
  %116 = trunc i64 %115 to i8
  %117 = bitcast %union.U0* %l_77 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = call i32** @func_60(i32 %114, i32 %118, i64* @g_15, i8 signext %116)
  store i32** %119, i32*** @g_104, align 8, !tbaa !5
  %120 = call i64 @func_58(i32** %119)
  %121 = load i16, i16* %l_108, align 2, !tbaa !10
  %122 = zext i16 %121 to i64
  %123 = call i64 @safe_div_func_int64_t_s_s(i64 %120, i64 %122)
  %124 = trunc i64 %123 to i8
  %125 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %124, i8 zeroext 2)
  %126 = load i8, i8* %l_109, align 1, !tbaa !9
  %127 = zext i8 %126 to i64
  %128 = icmp sle i64 %68, %127
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %131 = getelementptr inbounds [5 x i32], [5 x i32]* %130, i32 0, i64 2
  %132 = load i32, i32* %131, align 4, !tbaa !1
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4, !tbaa !1
  %134 = load i8, i8* @g_76, align 1, !tbaa !9
  %135 = sext i8 %134 to i16
  %136 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %135, i32 3)
  %137 = sext i16 %136 to i32
  %138 = load i32*, i32** @g_105, align 8, !tbaa !5
  %139 = load i32, i32* %138, align 4, !tbaa !1
  %140 = xor i32 %139, %137
  store i32 %140, i32* %138, align 4, !tbaa !1
  %141 = load i64, i64* %2, align 8, !tbaa !7
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

; <label>:143                                     ; preds = %100
  store i32 9, i32* %4
  br label %145

; <label>:144                                     ; preds = %100
  store i32 0, i32* %4
  br label %145

; <label>:145                                     ; preds = %144, %143
  %146 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i16* %l_108 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %147) #1
  %148 = bitcast [1 x i32***]* %l_101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32*** %l_102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i32** %l_103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i8** %l_75 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i8** %l_73 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i32* %l_72 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i8** %l_65 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i64* %l_55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %1367 [
    i32 0, label %156
    i32 9, label %162
  ]

; <label>:156                                     ; preds = %145
  br label %157

; <label>:157                                     ; preds = %156
  %158 = load i64, i64* @g_15, align 8, !tbaa !7
  %159 = trunc i64 %158 to i32
  %160 = call i32 @safe_add_func_int32_t_s_s(i32 %159, i32 9)
  %161 = sext i32 %160 to i64
  store i64 %161, i64* @g_15, align 8, !tbaa !7
  br label %42

; <label>:162                                     ; preds = %145, %42
  store i8 1, i8* %l_109, align 1, !tbaa !9
  br label %163

; <label>:163                                     ; preds = %1293, %162
  %164 = load i8, i8* %l_109, align 1, !tbaa !9
  %165 = zext i8 %164 to i32
  %166 = icmp sle i32 %165, 4
  br i1 %166, label %167, label %1298

; <label>:167                                     ; preds = %163
  %168 = bitcast i8** %l_140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %168) #1
  store i8* @g_74, i8** %l_140, align 8, !tbaa !5
  %169 = bitcast [3 x i32]* %l_141 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %169) #1
  %170 = bitcast i32* %l_145 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %170) #1
  store i32 107814971, i32* %l_145, align 4, !tbaa !1
  %171 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %172

; <label>:172                                     ; preds = %179, %167
  %173 = load i32, i32* %i2, align 4, !tbaa !1
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %182

; <label>:175                                     ; preds = %172
  %176 = load i32, i32* %i2, align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %l_141, i32 0, i64 %177
  store i32 -6, i32* %178, align 4, !tbaa !1
  br label %179

; <label>:179                                     ; preds = %175
  %180 = load i32, i32* %i2, align 4, !tbaa !1
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %i2, align 4, !tbaa !1
  br label %172

; <label>:182                                     ; preds = %172
  store i32 0, i32* @g_81, align 4, !tbaa !1
  br label %183

; <label>:183                                     ; preds = %660, %182
  %184 = load i32, i32* @g_81, align 4, !tbaa !1
  %185 = icmp sle i32 %184, 4
  br i1 %185, label %186, label %663

; <label>:186                                     ; preds = %183
  %187 = bitcast i64* %l_122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  store i64 -1, i64* %l_122, align 8, !tbaa !7
  %188 = bitcast i32* %l_129 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %188) #1
  store i32 1344039408, i32* %l_129, align 4, !tbaa !1
  %189 = bitcast [6 x i32]* %l_130 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %189) #1
  %190 = bitcast [6 x i32]* %l_130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* bitcast ([6 x i32]* @func_47.l_130 to i8*), i64 24, i32 16, i1 false)
  %191 = bitcast [3 x i64*]* %l_134 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %191) #1
  %192 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %193

; <label>:193                                     ; preds = %200, %186
  %194 = load i32, i32* %i3, align 4, !tbaa !1
  %195 = icmp slt i32 %194, 3
  br i1 %195, label %196, label %203

; <label>:196                                     ; preds = %193
  %197 = load i32, i32* %i3, align 4, !tbaa !1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x i64*], [3 x i64*]* %l_134, i32 0, i64 %198
  store i64* null, i64** %199, align 8, !tbaa !5
  br label %200

; <label>:200                                     ; preds = %196
  %201 = load i32, i32* %i3, align 4, !tbaa !1
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %i3, align 4, !tbaa !1
  br label %193

; <label>:203                                     ; preds = %193
  store i64 0, i64* @g_15, align 8, !tbaa !7
  br label %204

; <label>:204                                     ; preds = %286, %203
  %205 = load i64, i64* @g_15, align 8, !tbaa !7
  %206 = icmp ule i64 %205, 3
  br i1 %206, label %207, label %289

; <label>:207                                     ; preds = %204
  %208 = bitcast %union.U0* %l_115 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %208) #1
  %209 = bitcast %union.U0* %l_115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %209, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_47.l_115, i32 0, i32 0), i64 4, i32 4, i1 false)
  %210 = bitcast i32* %l_123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  store i32 -518317707, i32* %l_123, align 4, !tbaa !1
  %211 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  %214 = load i32, i32* @g_81, align 4, !tbaa !1
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = load i8, i8* %l_109, align 1, !tbaa !9
  %218 = zext i8 %217 to i64
  %219 = load i8, i8* %l_109, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds [5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 %220
  %222 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %221, i32 0, i64 %218
  %223 = getelementptr inbounds [6 x i8], [6 x i8]* %222, i32 0, i64 %216
  %224 = load i8, i8* %223, align 1, !tbaa !9
  %225 = sext i8 %224 to i32
  %226 = load i32, i32* @g_81, align 4, !tbaa !1
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* @g_15, align 8, !tbaa !7
  %230 = add i64 %229, 4
  %231 = load i32, i32* @g_81, align 4, !tbaa !1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 %232
  %234 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %233, i32 0, i64 %230
  %235 = getelementptr inbounds [6 x i8], [6 x i8]* %234, i32 0, i64 %228
  %236 = load i8, i8* %235, align 1, !tbaa !9
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %225, %237
  %239 = zext i1 %238 to i32
  %240 = trunc i32 %239 to i16
  %241 = load i32, i32* @g_81, align 4, !tbaa !1
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* @g_15, align 8, !tbaa !7
  %244 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %243
  %245 = getelementptr inbounds [5 x i32], [5 x i32]* %244, i32 0, i64 %242
  %246 = load i32, i32* %245, align 4, !tbaa !1
  %247 = load i64, i64* %2, align 8, !tbaa !7
  %248 = load i64, i64* %l_122, align 8, !tbaa !7
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %l_123, align 4, !tbaa !1
  %250 = trunc i32 %249 to i8
  %251 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %250, i32 0)
  %252 = load i64, i64* %2, align 8, !tbaa !7
  %253 = icmp uge i64 0, %252
  %254 = zext i1 %253 to i32
  %255 = sext i32 %254 to i64
  %256 = and i64 %255, 93
  %257 = icmp ne i64 %256, 142
  %258 = zext i1 %257 to i32
  %259 = trunc i32 %258 to i8
  %260 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext -1, i8 zeroext %259)
  %261 = zext i8 %260 to i32
  %262 = icmp eq i32 %246, %261
  %263 = zext i1 %262 to i32
  %264 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext 4, i32 %263)
  %265 = zext i16 %264 to i64
  %266 = or i64 %265, -8
  %267 = trunc i64 %266 to i16
  %268 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %240, i16 zeroext %267)
  %269 = zext i16 %268 to i32
  %270 = load i32, i32* @g_81, align 4, !tbaa !1
  %271 = sext i32 %270 to i64
  %272 = load i64, i64* @g_15, align 8, !tbaa !7
  %273 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %272
  %274 = getelementptr inbounds [5 x i32], [5 x i32]* %273, i32 0, i64 %271
  store i32 %269, i32* %274, align 4, !tbaa !1
  %275 = load i64, i64* %l_122, align 8, !tbaa !7
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

; <label>:277                                     ; preds = %207
  store i32 29, i32* %4
  br label %279

; <label>:278                                     ; preds = %207
  store i32 0, i32* %4
  br label %279

; <label>:279                                     ; preds = %278, %277
  %280 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %l_123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast %union.U0* %l_115 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %cleanup.dest.6 = load i32, i32* %4
  switch i32 %cleanup.dest.6, label %1367 [
    i32 0, label %285
    i32 29, label %286
  ]

; <label>:285                                     ; preds = %279
  br label %286

; <label>:286                                     ; preds = %285, %279
  %287 = load i64, i64* @g_15, align 8, !tbaa !7
  %288 = add i64 %287, 1
  store i64 %288, i64* @g_15, align 8, !tbaa !7
  br label %204

; <label>:289                                     ; preds = %204
  store i8 3, i8* @g_76, align 1, !tbaa !9
  br label %290

; <label>:290                                     ; preds = %647, %289
  %291 = load i8, i8* @g_76, align 1, !tbaa !9
  %292 = sext i8 %291 to i32
  %293 = icmp sge i32 %292, 0
  br i1 %293, label %294, label %652

; <label>:294                                     ; preds = %290
  %295 = bitcast i32** %l_124 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %295) #1
  %296 = load i32, i32* @g_81, align 4, !tbaa !1
  %297 = sext i32 %296 to i64
  %298 = load i8, i8* @g_76, align 1, !tbaa !9
  %299 = sext i8 %298 to i64
  %300 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %299
  %301 = getelementptr inbounds [5 x i32], [5 x i32]* %300, i32 0, i64 %297
  store i32* %301, i32** %l_124, align 8, !tbaa !5
  %302 = bitcast i32** %l_125 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %302) #1
  store i32* @g_106, i32** %l_125, align 8, !tbaa !5
  %303 = bitcast i32** %l_126 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %303) #1
  %304 = load i8, i8* %l_109, align 1, !tbaa !9
  %305 = zext i8 %304 to i64
  %306 = load i8, i8* @g_76, align 1, !tbaa !9
  %307 = sext i8 %306 to i64
  %308 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %307
  %309 = getelementptr inbounds [5 x i32], [5 x i32]* %308, i32 0, i64 %305
  store i32* %309, i32** %l_126, align 8, !tbaa !5
  %310 = bitcast i32** %l_127 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  %311 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 1
  %312 = getelementptr inbounds [5 x i32], [5 x i32]* %311, i32 0, i64 0
  store i32* %312, i32** %l_127, align 8, !tbaa !5
  %313 = bitcast [8 x [3 x [3 x i32*]]]* %l_128 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %313) #1
  %314 = getelementptr inbounds [8 x [3 x [3 x i32*]]], [8 x [3 x [3 x i32*]]]* %l_128, i64 0, i64 0
  %315 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %314, i64 0, i64 0
  %316 = getelementptr inbounds [3 x i32*], [3 x i32*]* %315, i64 0, i64 0
  store i32* null, i32** %316, !tbaa !5
  %317 = getelementptr inbounds i32*, i32** %316, i64 1
  store i32* @g_3, i32** %317, !tbaa !5
  %318 = getelementptr inbounds i32*, i32** %317, i64 1
  store i32* null, i32** %318, !tbaa !5
  %319 = getelementptr inbounds [3 x i32*], [3 x i32*]* %315, i64 1
  %320 = getelementptr inbounds [3 x i32*], [3 x i32*]* %319, i64 0, i64 0
  %321 = load i8, i8* @g_76, align 1, !tbaa !9
  %322 = sext i8 %321 to i64
  %323 = load i8, i8* @g_76, align 1, !tbaa !9
  %324 = sext i8 %323 to i64
  %325 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %324
  %326 = getelementptr inbounds [5 x i32], [5 x i32]* %325, i32 0, i64 %322
  store i32* %326, i32** %320, !tbaa !5
  %327 = getelementptr inbounds i32*, i32** %320, i64 1
  %328 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 1
  %329 = getelementptr inbounds [5 x i32], [5 x i32]* %328, i32 0, i64 1
  store i32* %329, i32** %327, !tbaa !5
  %330 = getelementptr inbounds i32*, i32** %327, i64 1
  store i32* null, i32** %330, !tbaa !5
  %331 = getelementptr inbounds [3 x i32*], [3 x i32*]* %319, i64 1
  %332 = getelementptr inbounds [3 x i32*], [3 x i32*]* %331, i64 0, i64 0
  store i32* @g_106, i32** %332, !tbaa !5
  %333 = getelementptr inbounds i32*, i32** %332, i64 1
  %334 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %335 = getelementptr inbounds [5 x i32], [5 x i32]* %334, i32 0, i64 2
  store i32* %335, i32** %333, !tbaa !5
  %336 = getelementptr inbounds i32*, i32** %333, i64 1
  %337 = load i8, i8* @g_76, align 1, !tbaa !9
  %338 = sext i8 %337 to i64
  %339 = load i8, i8* @g_76, align 1, !tbaa !9
  %340 = sext i8 %339 to i64
  %341 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %340
  %342 = getelementptr inbounds [5 x i32], [5 x i32]* %341, i32 0, i64 %338
  store i32* %342, i32** %336, !tbaa !5
  %343 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %314, i64 1
  %344 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %343, i64 0, i64 0
  %345 = getelementptr inbounds [3 x i32*], [3 x i32*]* %344, i64 0, i64 0
  %346 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %347 = getelementptr inbounds [5 x i32], [5 x i32]* %346, i32 0, i64 2
  store i32* %347, i32** %345, !tbaa !5
  %348 = getelementptr inbounds i32*, i32** %345, i64 1
  %349 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 1
  %350 = getelementptr inbounds [5 x i32], [5 x i32]* %349, i32 0, i64 1
  store i32* %350, i32** %348, !tbaa !5
  %351 = getelementptr inbounds i32*, i32** %348, i64 1
  store i32* null, i32** %351, !tbaa !5
  %352 = getelementptr inbounds [3 x i32*], [3 x i32*]* %344, i64 1
  %353 = getelementptr inbounds [3 x i32*], [3 x i32*]* %352, i64 0, i64 0
  %354 = load i32, i32* @g_81, align 4, !tbaa !1
  %355 = sext i32 %354 to i64
  %356 = load i8, i8* @g_76, align 1, !tbaa !9
  %357 = sext i8 %356 to i64
  %358 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %357
  %359 = getelementptr inbounds [5 x i32], [5 x i32]* %358, i32 0, i64 %355
  store i32* %359, i32** %353, !tbaa !5
  %360 = getelementptr inbounds i32*, i32** %353, i64 1
  store i32* @g_3, i32** %360, !tbaa !5
  %361 = getelementptr inbounds i32*, i32** %360, i64 1
  %362 = load i8, i8* %l_109, align 1, !tbaa !9
  %363 = zext i8 %362 to i64
  %364 = load i8, i8* @g_76, align 1, !tbaa !9
  %365 = sext i8 %364 to i64
  %366 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %365
  %367 = getelementptr inbounds [5 x i32], [5 x i32]* %366, i32 0, i64 %363
  store i32* %367, i32** %361, !tbaa !5
  %368 = getelementptr inbounds [3 x i32*], [3 x i32*]* %352, i64 1
  %369 = getelementptr inbounds [3 x i32*], [3 x i32*]* %368, i64 0, i64 0
  %370 = load i8, i8* %l_109, align 1, !tbaa !9
  %371 = zext i8 %370 to i64
  %372 = load i8, i8* @g_76, align 1, !tbaa !9
  %373 = sext i8 %372 to i64
  %374 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %373
  %375 = getelementptr inbounds [5 x i32], [5 x i32]* %374, i32 0, i64 %371
  store i32* %375, i32** %369, !tbaa !5
  %376 = getelementptr inbounds i32*, i32** %369, i64 1
  %377 = load i8, i8* %l_109, align 1, !tbaa !9
  %378 = zext i8 %377 to i64
  %379 = load i8, i8* @g_76, align 1, !tbaa !9
  %380 = sext i8 %379 to i64
  %381 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %380
  %382 = getelementptr inbounds [5 x i32], [5 x i32]* %381, i32 0, i64 %378
  store i32* %382, i32** %376, !tbaa !5
  %383 = getelementptr inbounds i32*, i32** %376, i64 1
  store i32* @g_81, i32** %383, !tbaa !5
  %384 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %343, i64 1
  %385 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %384, i64 0, i64 0
  %386 = getelementptr inbounds [3 x i32*], [3 x i32*]* %385, i64 0, i64 0
  store i32* null, i32** %386, !tbaa !5
  %387 = getelementptr inbounds i32*, i32** %386, i64 1
  %388 = load i32, i32* @g_81, align 4, !tbaa !1
  %389 = sext i32 %388 to i64
  %390 = load i8, i8* @g_76, align 1, !tbaa !9
  %391 = sext i8 %390 to i64
  %392 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %391
  %393 = getelementptr inbounds [5 x i32], [5 x i32]* %392, i32 0, i64 %389
  store i32* %393, i32** %387, !tbaa !5
  %394 = getelementptr inbounds i32*, i32** %387, i64 1
  %395 = load i32, i32* @g_81, align 4, !tbaa !1
  %396 = sext i32 %395 to i64
  %397 = load i8, i8* @g_76, align 1, !tbaa !9
  %398 = sext i8 %397 to i64
  %399 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %398
  %400 = getelementptr inbounds [5 x i32], [5 x i32]* %399, i32 0, i64 %396
  store i32* %400, i32** %394, !tbaa !5
  %401 = getelementptr inbounds [3 x i32*], [3 x i32*]* %385, i64 1
  %402 = getelementptr inbounds [3 x i32*], [3 x i32*]* %401, i64 0, i64 0
  %403 = load i32, i32* @g_81, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = load i8, i8* @g_76, align 1, !tbaa !9
  %406 = sext i8 %405 to i64
  %407 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %406
  %408 = getelementptr inbounds [5 x i32], [5 x i32]* %407, i32 0, i64 %404
  store i32* %408, i32** %402, !tbaa !5
  %409 = getelementptr inbounds i32*, i32** %402, i64 1
  store i32* null, i32** %409, !tbaa !5
  %410 = getelementptr inbounds i32*, i32** %409, i64 1
  %411 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %412 = getelementptr inbounds [5 x i32], [5 x i32]* %411, i32 0, i64 2
  store i32* %412, i32** %410, !tbaa !5
  %413 = getelementptr inbounds [3 x i32*], [3 x i32*]* %401, i64 1
  %414 = getelementptr inbounds [3 x i32*], [3 x i32*]* %413, i64 0, i64 0
  %415 = load i32, i32* @g_81, align 4, !tbaa !1
  %416 = sext i32 %415 to i64
  %417 = load i8, i8* @g_76, align 1, !tbaa !9
  %418 = sext i8 %417 to i64
  %419 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %418
  %420 = getelementptr inbounds [5 x i32], [5 x i32]* %419, i32 0, i64 %416
  store i32* %420, i32** %414, !tbaa !5
  %421 = getelementptr inbounds i32*, i32** %414, i64 1
  %422 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %423 = getelementptr inbounds [5 x i32], [5 x i32]* %422, i32 0, i64 2
  store i32* %423, i32** %421, !tbaa !5
  %424 = getelementptr inbounds i32*, i32** %421, i64 1
  %425 = load i8, i8* %l_109, align 1, !tbaa !9
  %426 = zext i8 %425 to i64
  %427 = load i8, i8* @g_76, align 1, !tbaa !9
  %428 = sext i8 %427 to i64
  %429 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %428
  %430 = getelementptr inbounds [5 x i32], [5 x i32]* %429, i32 0, i64 %426
  store i32* %430, i32** %424, !tbaa !5
  %431 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %384, i64 1
  %432 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %431, i64 0, i64 0
  %433 = getelementptr inbounds [3 x i32*], [3 x i32*]* %432, i64 0, i64 0
  store i32* null, i32** %433, !tbaa !5
  %434 = getelementptr inbounds i32*, i32** %433, i64 1
  store i32* null, i32** %434, !tbaa !5
  %435 = getelementptr inbounds i32*, i32** %434, i64 1
  store i32* @g_106, i32** %435, !tbaa !5
  %436 = getelementptr inbounds [3 x i32*], [3 x i32*]* %432, i64 1
  %437 = getelementptr inbounds [3 x i32*], [3 x i32*]* %436, i64 0, i64 0
  %438 = load i8, i8* %l_109, align 1, !tbaa !9
  %439 = zext i8 %438 to i64
  %440 = load i8, i8* @g_76, align 1, !tbaa !9
  %441 = sext i8 %440 to i64
  %442 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %441
  %443 = getelementptr inbounds [5 x i32], [5 x i32]* %442, i32 0, i64 %439
  store i32* %443, i32** %437, !tbaa !5
  %444 = getelementptr inbounds i32*, i32** %437, i64 1
  store i32* @g_3, i32** %444, !tbaa !5
  %445 = getelementptr inbounds i32*, i32** %444, i64 1
  store i32* null, i32** %445, !tbaa !5
  %446 = getelementptr inbounds [3 x i32*], [3 x i32*]* %436, i64 1
  %447 = getelementptr inbounds [3 x i32*], [3 x i32*]* %446, i64 0, i64 0
  %448 = load i32, i32* @g_81, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = load i8, i8* @g_76, align 1, !tbaa !9
  %451 = sext i8 %450 to i64
  %452 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %451
  %453 = getelementptr inbounds [5 x i32], [5 x i32]* %452, i32 0, i64 %449
  store i32* %453, i32** %447, !tbaa !5
  %454 = getelementptr inbounds i32*, i32** %447, i64 1
  %455 = load i32, i32* @g_81, align 4, !tbaa !1
  %456 = sext i32 %455 to i64
  %457 = load i8, i8* @g_76, align 1, !tbaa !9
  %458 = sext i8 %457 to i64
  %459 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %458
  %460 = getelementptr inbounds [5 x i32], [5 x i32]* %459, i32 0, i64 %456
  store i32* %460, i32** %454, !tbaa !5
  %461 = getelementptr inbounds i32*, i32** %454, i64 1
  %462 = load i32, i32* @g_81, align 4, !tbaa !1
  %463 = sext i32 %462 to i64
  %464 = load i8, i8* @g_76, align 1, !tbaa !9
  %465 = sext i8 %464 to i64
  %466 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %465
  %467 = getelementptr inbounds [5 x i32], [5 x i32]* %466, i32 0, i64 %463
  store i32* %467, i32** %461, !tbaa !5
  %468 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %431, i64 1
  %469 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %468, i64 0, i64 0
  %470 = getelementptr inbounds [3 x i32*], [3 x i32*]* %469, i64 0, i64 0
  %471 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %472 = getelementptr inbounds [5 x i32], [5 x i32]* %471, i32 0, i64 2
  store i32* %472, i32** %470, !tbaa !5
  %473 = getelementptr inbounds i32*, i32** %470, i64 1
  %474 = load i32, i32* @g_81, align 4, !tbaa !1
  %475 = sext i32 %474 to i64
  %476 = load i8, i8* @g_76, align 1, !tbaa !9
  %477 = sext i8 %476 to i64
  %478 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %477
  %479 = getelementptr inbounds [5 x i32], [5 x i32]* %478, i32 0, i64 %475
  store i32* %479, i32** %473, !tbaa !5
  %480 = getelementptr inbounds i32*, i32** %473, i64 1
  %481 = load i8, i8* @g_76, align 1, !tbaa !9
  %482 = sext i8 %481 to i64
  %483 = load i8, i8* @g_76, align 1, !tbaa !9
  %484 = sext i8 %483 to i64
  %485 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %484
  %486 = getelementptr inbounds [5 x i32], [5 x i32]* %485, i32 0, i64 %482
  store i32* %486, i32** %480, !tbaa !5
  %487 = getelementptr inbounds [3 x i32*], [3 x i32*]* %469, i64 1
  %488 = getelementptr inbounds [3 x i32*], [3 x i32*]* %487, i64 0, i64 0
  store i32* @g_106, i32** %488, !tbaa !5
  %489 = getelementptr inbounds i32*, i32** %488, i64 1
  %490 = load i32, i32* @g_81, align 4, !tbaa !1
  %491 = sext i32 %490 to i64
  %492 = load i8, i8* @g_76, align 1, !tbaa !9
  %493 = sext i8 %492 to i64
  %494 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %493
  %495 = getelementptr inbounds [5 x i32], [5 x i32]* %494, i32 0, i64 %491
  store i32* %495, i32** %489, !tbaa !5
  %496 = getelementptr inbounds i32*, i32** %489, i64 1
  %497 = load i32, i32* @g_81, align 4, !tbaa !1
  %498 = sext i32 %497 to i64
  %499 = load i8, i8* @g_76, align 1, !tbaa !9
  %500 = sext i8 %499 to i64
  %501 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %500
  %502 = getelementptr inbounds [5 x i32], [5 x i32]* %501, i32 0, i64 %498
  store i32* %502, i32** %496, !tbaa !5
  %503 = getelementptr inbounds [3 x i32*], [3 x i32*]* %487, i64 1
  %504 = getelementptr inbounds [3 x i32*], [3 x i32*]* %503, i64 0, i64 0
  %505 = load i8, i8* @g_76, align 1, !tbaa !9
  %506 = sext i8 %505 to i64
  %507 = load i8, i8* @g_76, align 1, !tbaa !9
  %508 = sext i8 %507 to i64
  %509 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %508
  %510 = getelementptr inbounds [5 x i32], [5 x i32]* %509, i32 0, i64 %506
  store i32* %510, i32** %504, !tbaa !5
  %511 = getelementptr inbounds i32*, i32** %504, i64 1
  %512 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 3
  %513 = getelementptr inbounds [5 x i32], [5 x i32]* %512, i32 0, i64 3
  store i32* %513, i32** %511, !tbaa !5
  %514 = getelementptr inbounds i32*, i32** %511, i64 1
  store i32* null, i32** %514, !tbaa !5
  %515 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %468, i64 1
  %516 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %515, i64 0, i64 0
  %517 = getelementptr inbounds [3 x i32*], [3 x i32*]* %516, i64 0, i64 0
  store i32* null, i32** %517, !tbaa !5
  %518 = getelementptr inbounds i32*, i32** %517, i64 1
  store i32* @g_81, i32** %518, !tbaa !5
  %519 = getelementptr inbounds i32*, i32** %518, i64 1
  store i32* @g_106, i32** %519, !tbaa !5
  %520 = getelementptr inbounds [3 x i32*], [3 x i32*]* %516, i64 1
  %521 = getelementptr inbounds [3 x i32*], [3 x i32*]* %520, i64 0, i64 0
  store i32* null, i32** %521, !tbaa !5
  %522 = getelementptr inbounds i32*, i32** %521, i64 1
  store i32* null, i32** %522, !tbaa !5
  %523 = getelementptr inbounds i32*, i32** %522, i64 1
  %524 = load i8, i8* %l_109, align 1, !tbaa !9
  %525 = zext i8 %524 to i64
  %526 = load i8, i8* @g_76, align 1, !tbaa !9
  %527 = sext i8 %526 to i64
  %528 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %527
  %529 = getelementptr inbounds [5 x i32], [5 x i32]* %528, i32 0, i64 %525
  store i32* %529, i32** %523, !tbaa !5
  %530 = getelementptr inbounds [3 x i32*], [3 x i32*]* %520, i64 1
  %531 = getelementptr inbounds [3 x i32*], [3 x i32*]* %530, i64 0, i64 0
  %532 = load i8, i8* @g_76, align 1, !tbaa !9
  %533 = sext i8 %532 to i64
  %534 = load i8, i8* @g_76, align 1, !tbaa !9
  %535 = sext i8 %534 to i64
  %536 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %535
  %537 = getelementptr inbounds [5 x i32], [5 x i32]* %536, i32 0, i64 %533
  store i32* %537, i32** %531, !tbaa !5
  %538 = getelementptr inbounds i32*, i32** %531, i64 1
  %539 = load i8, i8* %l_109, align 1, !tbaa !9
  %540 = zext i8 %539 to i64
  %541 = load i8, i8* @g_76, align 1, !tbaa !9
  %542 = sext i8 %541 to i64
  %543 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %542
  %544 = getelementptr inbounds [5 x i32], [5 x i32]* %543, i32 0, i64 %540
  store i32* %544, i32** %538, !tbaa !5
  %545 = getelementptr inbounds i32*, i32** %538, i64 1
  %546 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %547 = getelementptr inbounds [5 x i32], [5 x i32]* %546, i32 0, i64 2
  store i32* %547, i32** %545, !tbaa !5
  %548 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %515, i64 1
  %549 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %548, i64 0, i64 0
  %550 = getelementptr inbounds [3 x i32*], [3 x i32*]* %549, i64 0, i64 0
  store i32* @g_3, i32** %550, !tbaa !5
  %551 = getelementptr inbounds i32*, i32** %550, i64 1
  %552 = load i8, i8* %l_109, align 1, !tbaa !9
  %553 = zext i8 %552 to i64
  %554 = load i8, i8* @g_76, align 1, !tbaa !9
  %555 = sext i8 %554 to i64
  %556 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %555
  %557 = getelementptr inbounds [5 x i32], [5 x i32]* %556, i32 0, i64 %553
  store i32* %557, i32** %551, !tbaa !5
  %558 = getelementptr inbounds i32*, i32** %551, i64 1
  %559 = load i32, i32* @g_81, align 4, !tbaa !1
  %560 = sext i32 %559 to i64
  %561 = load i8, i8* @g_76, align 1, !tbaa !9
  %562 = sext i8 %561 to i64
  %563 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %562
  %564 = getelementptr inbounds [5 x i32], [5 x i32]* %563, i32 0, i64 %560
  store i32* %564, i32** %558, !tbaa !5
  %565 = getelementptr inbounds [3 x i32*], [3 x i32*]* %549, i64 1
  %566 = getelementptr inbounds [3 x i32*], [3 x i32*]* %565, i64 0, i64 0
  store i32* @g_81, i32** %566, !tbaa !5
  %567 = getelementptr inbounds i32*, i32** %566, i64 1
  store i32* null, i32** %567, !tbaa !5
  %568 = getelementptr inbounds i32*, i32** %567, i64 1
  store i32* @g_81, i32** %568, !tbaa !5
  %569 = getelementptr inbounds [3 x i32*], [3 x i32*]* %565, i64 1
  %570 = getelementptr inbounds [3 x i32*], [3 x i32*]* %569, i64 0, i64 0
  %571 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 1
  %572 = getelementptr inbounds [5 x i32], [5 x i32]* %571, i32 0, i64 0
  store i32* %572, i32** %570, !tbaa !5
  %573 = getelementptr inbounds i32*, i32** %570, i64 1
  store i32* @g_81, i32** %573, !tbaa !5
  %574 = getelementptr inbounds i32*, i32** %573, i64 1
  %575 = load i8, i8* %l_109, align 1, !tbaa !9
  %576 = zext i8 %575 to i64
  %577 = load i8, i8* @g_76, align 1, !tbaa !9
  %578 = sext i8 %577 to i64
  %579 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %578
  %580 = getelementptr inbounds [5 x i32], [5 x i32]* %579, i32 0, i64 %576
  store i32* %580, i32** %574, !tbaa !5
  %581 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %548, i64 1
  %582 = getelementptr inbounds [3 x [3 x i32*]], [3 x [3 x i32*]]* %581, i64 0, i64 0
  %583 = getelementptr inbounds [3 x i32*], [3 x i32*]* %582, i64 0, i64 0
  %584 = load i8, i8* @g_76, align 1, !tbaa !9
  %585 = sext i8 %584 to i64
  %586 = load i8, i8* @g_76, align 1, !tbaa !9
  %587 = sext i8 %586 to i64
  %588 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %587
  %589 = getelementptr inbounds [5 x i32], [5 x i32]* %588, i32 0, i64 %585
  store i32* %589, i32** %583, !tbaa !5
  %590 = getelementptr inbounds i32*, i32** %583, i64 1
  %591 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 3
  %592 = getelementptr inbounds [5 x i32], [5 x i32]* %591, i32 0, i64 3
  store i32* %592, i32** %590, !tbaa !5
  %593 = getelementptr inbounds i32*, i32** %590, i64 1
  store i32* null, i32** %593, !tbaa !5
  %594 = getelementptr inbounds [3 x i32*], [3 x i32*]* %582, i64 1
  %595 = getelementptr inbounds [3 x i32*], [3 x i32*]* %594, i64 0, i64 0
  %596 = load i8, i8* %l_109, align 1, !tbaa !9
  %597 = zext i8 %596 to i64
  %598 = load i8, i8* @g_76, align 1, !tbaa !9
  %599 = sext i8 %598 to i64
  %600 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %599
  %601 = getelementptr inbounds [5 x i32], [5 x i32]* %600, i32 0, i64 %597
  store i32* %601, i32** %595, !tbaa !5
  %602 = getelementptr inbounds i32*, i32** %595, i64 1
  %603 = load i32, i32* @g_81, align 4, !tbaa !1
  %604 = sext i32 %603 to i64
  %605 = load i8, i8* @g_76, align 1, !tbaa !9
  %606 = sext i8 %605 to i64
  %607 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %606
  %608 = getelementptr inbounds [5 x i32], [5 x i32]* %607, i32 0, i64 %604
  store i32* %608, i32** %602, !tbaa !5
  %609 = getelementptr inbounds i32*, i32** %602, i64 1
  %610 = load i8, i8* @g_76, align 1, !tbaa !9
  %611 = sext i8 %610 to i64
  %612 = load i8, i8* @g_76, align 1, !tbaa !9
  %613 = sext i8 %612 to i64
  %614 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %613
  %615 = getelementptr inbounds [5 x i32], [5 x i32]* %614, i32 0, i64 %611
  store i32* %615, i32** %609, !tbaa !5
  %616 = getelementptr inbounds [3 x i32*], [3 x i32*]* %594, i64 1
  %617 = getelementptr inbounds [3 x i32*], [3 x i32*]* %616, i64 0, i64 0
  %618 = load i8, i8* %l_109, align 1, !tbaa !9
  %619 = zext i8 %618 to i64
  %620 = load i8, i8* @g_76, align 1, !tbaa !9
  %621 = sext i8 %620 to i64
  %622 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %621
  %623 = getelementptr inbounds [5 x i32], [5 x i32]* %622, i32 0, i64 %619
  store i32* %623, i32** %617, !tbaa !5
  %624 = getelementptr inbounds i32*, i32** %617, i64 1
  %625 = load i32, i32* @g_81, align 4, !tbaa !1
  %626 = sext i32 %625 to i64
  %627 = load i8, i8* @g_76, align 1, !tbaa !9
  %628 = sext i8 %627 to i64
  %629 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %628
  %630 = getelementptr inbounds [5 x i32], [5 x i32]* %629, i32 0, i64 %626
  store i32* %630, i32** %624, !tbaa !5
  %631 = getelementptr inbounds i32*, i32** %624, i64 1
  store i32* null, i32** %631, !tbaa !5
  %632 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %632) #1
  %633 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %633) #1
  %634 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %634) #1
  %635 = load volatile i32, i32* @g_131, align 4, !tbaa !1
  %636 = add i32 %635, -1
  store volatile i32 %636, i32* @g_131, align 4, !tbaa !1
  %637 = getelementptr inbounds [3 x i64*], [3 x i64*]* %l_134, i32 0, i64 1
  %638 = load i64*, i64** %637, align 8, !tbaa !5
  store i64* %638, i64** %1
  store i32 1, i32* %4
  %639 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %639) #1
  %640 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %640) #1
  %641 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %641) #1
  %642 = bitcast [8 x [3 x [3 x i32*]]]* %l_128 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %642) #1
  %643 = bitcast i32** %l_127 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %643) #1
  %644 = bitcast i32** %l_126 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %644) #1
  %645 = bitcast i32** %l_125 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %645) #1
  %646 = bitcast i32** %l_124 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %646) #1
  br label %653
                                                  ; No predecessors!
  %648 = load i8, i8* @g_76, align 1, !tbaa !9
  %649 = sext i8 %648 to i32
  %650 = sub nsw i32 %649, 1
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* @g_76, align 1, !tbaa !9
  br label %290

; <label>:652                                     ; preds = %290
  store i32 0, i32* %4
  br label %653

; <label>:653                                     ; preds = %652, %294
  %654 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %654) #1
  %655 = bitcast [3 x i64*]* %l_134 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %655) #1
  %656 = bitcast [6 x i32]* %l_130 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %656) #1
  %657 = bitcast i32* %l_129 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %657) #1
  %658 = bitcast i64* %l_122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %658) #1
  %cleanup.dest.10 = load i32, i32* %4
  switch i32 %cleanup.dest.10, label %1287 [
    i32 0, label %659
  ]

; <label>:659                                     ; preds = %653
  br label %660

; <label>:660                                     ; preds = %659
  %661 = load i32, i32* @g_81, align 4, !tbaa !1
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* @g_81, align 4, !tbaa !1
  br label %183

; <label>:663                                     ; preds = %183
  store i8 0, i8* @g_100, align 1, !tbaa !9
  br label %664

; <label>:664                                     ; preds = %1281, %663
  %665 = load i8, i8* @g_100, align 1, !tbaa !9
  %666 = zext i8 %665 to i32
  %667 = icmp sle i32 %666, 4
  br i1 %667, label %668, label %1286

; <label>:668                                     ; preds = %664
  %669 = bitcast %union.U0* %l_139 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %669) #1
  %670 = bitcast %union.U0* %l_139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %670, i8* getelementptr inbounds ({ i8, i8, i8, i8 }, { i8, i8, i8, i8 }* @func_47.l_139, i32 0, i32 0), i64 4, i32 4, i1 false)
  %671 = bitcast [8 x [5 x i8*]]* %l_149 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %671) #1
  %672 = bitcast [8 x [5 x i8*]]* %l_149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %672, i8* bitcast ([8 x [5 x i8*]]* @func_47.l_149 to i8*), i64 320, i32 16, i1 false)
  %673 = bitcast i32* %l_160 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %673) #1
  store i32 1, i32* %l_160, align 4, !tbaa !1
  %674 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %674) #1
  %675 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %675) #1
  store i32 0, i32* @g_81, align 4, !tbaa !1
  br label %676

; <label>:676                                     ; preds = %748, %668
  %677 = load i32, i32* @g_81, align 4, !tbaa !1
  %678 = icmp sle i32 %677, 3
  br i1 %678, label %679, label %751

; <label>:679                                     ; preds = %676
  store i8 0, i8* @g_76, align 1, !tbaa !9
  br label %680

; <label>:680                                     ; preds = %742, %679
  %681 = load i8, i8* @g_76, align 1, !tbaa !9
  %682 = sext i8 %681 to i32
  %683 = icmp sle i32 %682, 3
  br i1 %683, label %684, label %747

; <label>:684                                     ; preds = %680
  store i8 0, i8* @g_74, align 1, !tbaa !9
  br label %685

; <label>:685                                     ; preds = %736, %684
  %686 = load i8, i8* @g_74, align 1, !tbaa !9
  %687 = sext i8 %686 to i32
  %688 = icmp sle i32 %687, 3
  br i1 %688, label %689, label %741

; <label>:689                                     ; preds = %685
  %690 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %690) #1
  %691 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %691) #1
  %692 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %692) #1
  %693 = load i32, i32* @g_81, align 4, !tbaa !1
  %694 = add nsw i32 %693, 2
  %695 = sext i32 %694 to i64
  %696 = load i8, i8* @g_74, align 1, !tbaa !9
  %697 = sext i8 %696 to i32
  %698 = add nsw i32 %697, 1
  %699 = sext i32 %698 to i64
  %700 = load i8, i8* %l_109, align 1, !tbaa !9
  %701 = zext i8 %700 to i64
  %702 = getelementptr inbounds [5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 %701
  %703 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %702, i32 0, i64 %699
  %704 = getelementptr inbounds [6 x i8], [6 x i8]* %703, i32 0, i64 %695
  %705 = load i8, i8* %704, align 1, !tbaa !9
  %706 = load i32, i32* @g_81, align 4, !tbaa !1
  %707 = add nsw i32 %706, 1
  %708 = sext i32 %707 to i64
  %709 = load i8, i8* @g_76, align 1, !tbaa !9
  %710 = sext i8 %709 to i64
  %711 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %710
  %712 = getelementptr inbounds [5 x i32], [5 x i32]* %711, i32 0, i64 %708
  %713 = load i32, i32* %712, align 4, !tbaa !1
  %714 = load i8, i8* @g_74, align 1, !tbaa !9
  %715 = sext i8 %714 to i32
  %716 = add nsw i32 %715, 1
  %717 = sext i32 %716 to i64
  %718 = load i8, i8* @g_76, align 1, !tbaa !9
  %719 = sext i8 %718 to i64
  %720 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %719
  %721 = getelementptr inbounds [5 x i32], [5 x i32]* %720, i32 0, i64 %717
  store i32 %713, i32* %721, align 4, !tbaa !1
  %722 = load i8, i8* @g_100, align 1, !tbaa !9
  %723 = zext i8 %722 to i32
  %724 = add nsw i32 %723, 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [9 x i64], [9 x i64]* %l_52, i32 0, i64 %725
  %727 = load i64, i64* %726, align 8, !tbaa !7
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %730

; <label>:729                                     ; preds = %689
  store i32 42, i32* %4
  br label %731

; <label>:730                                     ; preds = %689
  store i32 0, i32* %4
  br label %731

; <label>:731                                     ; preds = %730, %729
  %732 = bitcast i32* %k15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %732) #1
  %733 = bitcast i32* %j14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %733) #1
  %734 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %734) #1
  %cleanup.dest.16 = load i32, i32* %4
  switch i32 %cleanup.dest.16, label %1367 [
    i32 0, label %735
    i32 42, label %741
  ]

; <label>:735                                     ; preds = %731
  br label %736

; <label>:736                                     ; preds = %735
  %737 = load i8, i8* @g_74, align 1, !tbaa !9
  %738 = sext i8 %737 to i32
  %739 = add nsw i32 %738, 1
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* @g_74, align 1, !tbaa !9
  br label %685

; <label>:741                                     ; preds = %731, %685
  br label %742

; <label>:742                                     ; preds = %741
  %743 = load i8, i8* @g_76, align 1, !tbaa !9
  %744 = sext i8 %743 to i32
  %745 = add nsw i32 %744, 1
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* @g_76, align 1, !tbaa !9
  br label %680

; <label>:747                                     ; preds = %680
  br label %748

; <label>:748                                     ; preds = %747
  %749 = load i32, i32* @g_81, align 4, !tbaa !1
  %750 = add nsw i32 %749, 1
  store i32 %750, i32* @g_81, align 4, !tbaa !1
  br label %676

; <label>:751                                     ; preds = %676
  store i64 0, i64* @g_15, align 8, !tbaa !7
  br label %752

; <label>:752                                     ; preds = %1270, %751
  %753 = load i64, i64* @g_15, align 8, !tbaa !7
  %754 = icmp ule i64 %753, 4
  br i1 %754, label %755, label %1273

; <label>:755                                     ; preds = %752
  call void @llvm.lifetime.start(i64 1, i8* %l_148) #1
  store i8 -51, i8* %l_148, align 1, !tbaa !9
  %756 = bitcast i64** %l_166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %756) #1
  store i64* @g_16, i64** %l_166, align 8, !tbaa !5
  %757 = bitcast i32* %l_189 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %757) #1
  store i32 -455532311, i32* %l_189, align 4, !tbaa !1
  store i32 3, i32* @g_81, align 4, !tbaa !1
  br label %758

; <label>:758                                     ; preds = %1217, %755
  %759 = load i32, i32* @g_81, align 4, !tbaa !1
  %760 = icmp sge i32 %759, 0
  br i1 %760, label %761, label %1220

; <label>:761                                     ; preds = %758
  %762 = bitcast [4 x i32*]* %l_144 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %762) #1
  %763 = bitcast i32*** %l_143 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %763) #1
  %764 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_144, i32 0, i64 0
  store i32** %764, i32*** %l_143, align 8, !tbaa !5
  %765 = bitcast i32**** %l_142 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %765) #1
  store i32*** %l_143, i32**** %l_142, align 8, !tbaa !5
  %766 = bitcast [8 x i32]* %l_222 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %766) #1
  %767 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %767) #1
  %768 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %768) #1
  %769 = bitcast i32* %k19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %769) #1
  store i32 0, i32* %i17, align 4, !tbaa !1
  br label %770

; <label>:770                                     ; preds = %779, %761
  %771 = load i32, i32* %i17, align 4, !tbaa !1
  %772 = icmp slt i32 %771, 4
  br i1 %772, label %773, label %782

; <label>:773                                     ; preds = %770
  %774 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %775 = getelementptr inbounds [5 x i32], [5 x i32]* %774, i32 0, i64 2
  %776 = load i32, i32* %i17, align 4, !tbaa !1
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_144, i32 0, i64 %777
  store i32* %775, i32** %778, align 8, !tbaa !5
  br label %779

; <label>:779                                     ; preds = %773
  %780 = load i32, i32* %i17, align 4, !tbaa !1
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %i17, align 4, !tbaa !1
  br label %770

; <label>:782                                     ; preds = %770
  store i32 0, i32* %i17, align 4, !tbaa !1
  br label %783

; <label>:783                                     ; preds = %790, %782
  %784 = load i32, i32* %i17, align 4, !tbaa !1
  %785 = icmp slt i32 %784, 8
  br i1 %785, label %786, label %793

; <label>:786                                     ; preds = %783
  %787 = load i32, i32* %i17, align 4, !tbaa !1
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [8 x i32], [8 x i32]* %l_222, i32 0, i64 %788
  store i32 4, i32* %789, align 4, !tbaa !1
  br label %790

; <label>:790                                     ; preds = %786
  %791 = load i32, i32* %i17, align 4, !tbaa !1
  %792 = add nsw i32 %791, 1
  store i32 %792, i32* %i17, align 4, !tbaa !1
  br label %783

; <label>:793                                     ; preds = %783
  %794 = load i8, i8* @g_100, align 1, !tbaa !9
  %795 = zext i8 %794 to i64
  %796 = load i64, i64* @g_15, align 8, !tbaa !7
  %797 = add i64 %796, 1
  %798 = load i32, i32* @g_81, align 4, !tbaa !1
  %799 = add nsw i32 %798, 1
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds [5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 %800
  %802 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %801, i32 0, i64 %797
  %803 = getelementptr inbounds [6 x i8], [6 x i8]* %802, i32 0, i64 %795
  %804 = load i8, i8* %803, align 1, !tbaa !9
  %805 = icmp ne i8 %804, 0
  br i1 %805, label %806, label %830

; <label>:806                                     ; preds = %793
  %807 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %807) #1
  %808 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %808) #1
  %809 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %809) #1
  %810 = load i64, i64* @g_15, align 8, !tbaa !7
  %811 = add i64 %810, 1
  %812 = load i8, i8* @g_100, align 1, !tbaa !9
  %813 = zext i8 %812 to i32
  %814 = add nsw i32 %813, 3
  %815 = sext i32 %814 to i64
  %816 = load i8, i8* @g_100, align 1, !tbaa !9
  %817 = zext i8 %816 to i64
  %818 = getelementptr inbounds [5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 %817
  %819 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %818, i32 0, i64 %815
  %820 = getelementptr inbounds [6 x i8], [6 x i8]* %819, i32 0, i64 %811
  %821 = load i8, i8* %820, align 1, !tbaa !9
  %822 = icmp ne i8 %821, 0
  br i1 %822, label %823, label %824

; <label>:823                                     ; preds = %806
  store i32 48, i32* %4
  br label %825

; <label>:824                                     ; preds = %806
  store i32 0, i32* %4
  br label %825

; <label>:825                                     ; preds = %824, %823
  %826 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %826) #1
  %827 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %827) #1
  %828 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %828) #1
  %cleanup.dest.23 = load i32, i32* %4
  switch i32 %cleanup.dest.23, label %1208 [
    i32 0, label %829
  ]

; <label>:829                                     ; preds = %825
  br label %907

; <label>:830                                     ; preds = %793
  %831 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %831) #1
  %832 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %832) #1
  %833 = load i8, i8* %l_109, align 1, !tbaa !9
  %834 = zext i8 %833 to i64
  %835 = load i32, i32* @g_81, align 4, !tbaa !1
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %836
  %838 = getelementptr inbounds [5 x i32], [5 x i32]* %837, i32 0, i64 %834
  %839 = load i32, i32* %838, align 4, !tbaa !1
  %840 = load i8, i8* %l_109, align 1, !tbaa !9
  %841 = zext i8 %840 to i64
  %842 = load i32, i32* @g_81, align 4, !tbaa !1
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 %843
  %845 = getelementptr inbounds [5 x i32], [5 x i32]* %844, i32 0, i64 %841
  %846 = load i32, i32* %845, align 4, !tbaa !1
  %847 = icmp ne i32 %846, 0
  %848 = xor i1 %847, true
  %849 = zext i1 %848 to i32
  %850 = load i64, i64* %2, align 8, !tbaa !7
  %851 = trunc i64 %850 to i16
  %852 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %851, i32 14)
  %853 = sext i16 %852 to i32
  %854 = load i8, i8* @g_100, align 1, !tbaa !9
  %855 = zext i8 %854 to i64
  %856 = load i64, i64* @g_15, align 8, !tbaa !7
  %857 = add i64 %856, 1
  %858 = load i32, i32* @g_81, align 4, !tbaa !1
  %859 = add nsw i32 %858, 1
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 %860
  %862 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %861, i32 0, i64 %857
  %863 = getelementptr inbounds [6 x i8], [6 x i8]* %862, i32 0, i64 %855
  %864 = load i8, i8* %863, align 1, !tbaa !9
  %865 = sext i8 %864 to i64
  %866 = or i64 %865, 49
  %867 = load i64, i64* %2, align 8, !tbaa !7
  %868 = or i64 1, %867
  %869 = icmp ne i64 %868, 0
  br i1 %869, label %871, label %870

; <label>:870                                     ; preds = %830
  br label %871

; <label>:871                                     ; preds = %870, %830
  %872 = phi i1 [ true, %830 ], [ true, %870 ]
  %873 = zext i1 %872 to i32
  %874 = sext i32 %873 to i64
  %875 = load i64, i64* %2, align 8, !tbaa !7
  %876 = icmp sle i64 %874, %875
  %877 = zext i1 %876 to i32
  %878 = icmp sge i32 %853, %877
  %879 = xor i1 %878, true
  %880 = zext i1 %879 to i32
  %881 = load volatile i32, i32* @g_131, align 4, !tbaa !1
  %882 = icmp ne i32 %839, %881
  %883 = zext i1 %882 to i32
  %884 = sext i32 %883 to i64
  %885 = icmp sgt i64 %884, 1
  %886 = zext i1 %885 to i32
  %887 = getelementptr inbounds [3 x i32], [3 x i32]* %l_141, i32 0, i64 1
  %888 = load i32, i32* %887, align 4, !tbaa !1
  %889 = xor i32 %886, %888
  %890 = load i32***, i32**** %l_142, align 8, !tbaa !5
  %891 = bitcast i32*** %890 to i8*
  %892 = icmp ne i8* null, %891
  %893 = zext i1 %892 to i32
  %894 = load i32, i32* %l_145, align 4, !tbaa !1
  %895 = and i32 %894, %893
  store i32 %895, i32* %l_145, align 4, !tbaa !1
  %896 = load i32***, i32**** %l_142, align 8, !tbaa !5
  %897 = load i32**, i32*** %896, align 8, !tbaa !5
  %898 = load i32*, i32** %897, align 8, !tbaa !5
  %899 = load i32, i32* %898, align 4, !tbaa !1
  %900 = icmp ne i32 %899, 0
  br i1 %900, label %901, label %902

; <label>:901                                     ; preds = %871
  store i32 50, i32* %4
  br label %903

; <label>:902                                     ; preds = %871
  store i32 0, i32* %4
  br label %903

; <label>:903                                     ; preds = %902, %901
  %904 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %904) #1
  %905 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %905) #1
  %cleanup.dest.26 = load i32, i32* %4
  switch i32 %cleanup.dest.26, label %1208 [
    i32 0, label %906
  ]

; <label>:906                                     ; preds = %903
  br label %907

; <label>:907                                     ; preds = %906, %829
  store i8 0, i8* @g_76, align 1, !tbaa !9
  br label %908

; <label>:908                                     ; preds = %1095, %907
  %909 = load i8, i8* @g_76, align 1, !tbaa !9
  %910 = sext i8 %909 to i32
  %911 = icmp sle i32 %910, 4
  br i1 %911, label %912, label %1100

; <label>:912                                     ; preds = %908
  %913 = bitcast [1 x [2 x [6 x i16*]]]* %l_184 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %913) #1
  %914 = bitcast [1 x [2 x [6 x i16*]]]* %l_184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %914, i8* bitcast ([1 x [2 x [6 x i16*]]]* @func_47.l_184 to i8*), i64 96, i32 16, i1 false)
  %915 = bitcast i32* %l_186 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %915) #1
  store i32 -466172726, i32* %l_186, align 4, !tbaa !1
  %916 = bitcast i16*** %l_187 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %916) #1
  %917 = getelementptr inbounds [1 x [2 x [6 x i16*]]], [1 x [2 x [6 x i16*]]]* %l_184, i32 0, i64 0
  %918 = getelementptr inbounds [2 x [6 x i16*]], [2 x [6 x i16*]]* %917, i32 0, i64 1
  %919 = getelementptr inbounds [6 x i16*], [6 x i16*]* %918, i32 0, i64 5
  store i16** %919, i16*** %l_187, align 8, !tbaa !5
  %920 = bitcast [5 x [4 x i8*]]* %l_188 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %920) #1
  %921 = getelementptr inbounds [5 x [4 x i8*]], [5 x [4 x i8*]]* %l_188, i64 0, i64 0
  %922 = getelementptr inbounds [4 x i8*], [4 x i8*]* %921, i64 0, i64 0
  store i8* null, i8** %922, !tbaa !5
  %923 = getelementptr inbounds i8*, i8** %922, i64 1
  store i8* %l_109, i8** %923, !tbaa !5
  %924 = getelementptr inbounds i8*, i8** %923, i64 1
  store i8* %l_109, i8** %924, !tbaa !5
  %925 = getelementptr inbounds i8*, i8** %924, i64 1
  store i8* %l_109, i8** %925, !tbaa !5
  %926 = getelementptr inbounds [4 x i8*], [4 x i8*]* %921, i64 1
  %927 = getelementptr inbounds [4 x i8*], [4 x i8*]* %926, i64 0, i64 0
  store i8* null, i8** %927, !tbaa !5
  %928 = getelementptr inbounds i8*, i8** %927, i64 1
  store i8* null, i8** %928, !tbaa !5
  %929 = getelementptr inbounds i8*, i8** %928, i64 1
  store i8* @g_100, i8** %929, !tbaa !5
  %930 = getelementptr inbounds i8*, i8** %929, i64 1
  store i8* %l_148, i8** %930, !tbaa !5
  %931 = getelementptr inbounds [4 x i8*], [4 x i8*]* %926, i64 1
  %932 = getelementptr inbounds [4 x i8*], [4 x i8*]* %931, i64 0, i64 0
  store i8* null, i8** %932, !tbaa !5
  %933 = getelementptr inbounds i8*, i8** %932, i64 1
  store i8* %l_148, i8** %933, !tbaa !5
  %934 = getelementptr inbounds i8*, i8** %933, i64 1
  store i8* @g_100, i8** %934, !tbaa !5
  %935 = getelementptr inbounds i8*, i8** %934, i64 1
  store i8* null, i8** %935, !tbaa !5
  %936 = getelementptr inbounds [4 x i8*], [4 x i8*]* %931, i64 1
  %937 = getelementptr inbounds [4 x i8*], [4 x i8*]* %936, i64 0, i64 0
  store i8* %l_109, i8** %937, !tbaa !5
  %938 = getelementptr inbounds i8*, i8** %937, i64 1
  store i8* %l_148, i8** %938, !tbaa !5
  %939 = getelementptr inbounds i8*, i8** %938, i64 1
  store i8* %l_109, i8** %939, !tbaa !5
  %940 = getelementptr inbounds i8*, i8** %939, i64 1
  store i8* @g_100, i8** %940, !tbaa !5
  %941 = getelementptr inbounds [4 x i8*], [4 x i8*]* %936, i64 1
  %942 = getelementptr inbounds [4 x i8*], [4 x i8*]* %941, i64 0, i64 0
  store i8* %l_109, i8** %942, !tbaa !5
  %943 = getelementptr inbounds i8*, i8** %942, i64 1
  store i8* %l_148, i8** %943, !tbaa !5
  %944 = getelementptr inbounds i8*, i8** %943, i64 1
  store i8* @g_100, i8** %944, !tbaa !5
  %945 = getelementptr inbounds i8*, i8** %944, i64 1
  store i8* null, i8** %945, !tbaa !5
  %946 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %946) #1
  %947 = bitcast i32* %j28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %947) #1
  %948 = bitcast i32* %k29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %948) #1
  %949 = load i64, i64* %2, align 8, !tbaa !7
  %950 = load i8, i8* %l_148, align 1, !tbaa !9
  %951 = zext i8 %950 to i64
  %952 = icmp sge i64 %949, %951
  br i1 %952, label %958, label %953

; <label>:953                                     ; preds = %912
  %954 = getelementptr inbounds [8 x [5 x i8*]], [8 x [5 x i8*]]* %l_149, i32 0, i64 3
  %955 = getelementptr inbounds [5 x i8*], [5 x i8*]* %954, i32 0, i64 4
  %956 = load i8*, i8** %955, align 8, !tbaa !5
  %957 = icmp eq i8* null, %956
  br label %958

; <label>:958                                     ; preds = %953, %912
  %959 = phi i1 [ true, %912 ], [ %957, %953 ]
  %960 = zext i1 %959 to i32
  %961 = trunc i32 %960 to i8
  %962 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %961, i32 6)
  %963 = sext i8 %962 to i32
  %964 = load i8, i8* %l_148, align 1, !tbaa !9
  %965 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %964)
  %966 = zext i8 %965 to i16
  %967 = load i64, i64* %2, align 8, !tbaa !7
  %968 = trunc i64 %967 to i16
  %969 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %966, i16 signext %968)
  %970 = sext i16 %969 to i32
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %972, label %973

; <label>:972                                     ; preds = %958
  br label %973

; <label>:973                                     ; preds = %972, %958
  %974 = phi i1 [ false, %958 ], [ true, %972 ]
  %975 = zext i1 %974 to i32
  %976 = load i32, i32* @g_81, align 4, !tbaa !1
  %977 = trunc i32 %976 to i8
  %978 = load i64, i64* %2, align 8, !tbaa !7
  %979 = trunc i64 %978 to i8
  %980 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %977, i8 zeroext %979)
  %981 = zext i8 %980 to i32
  %982 = and i32 %975, %981
  %983 = sext i32 %982 to i64
  %984 = load i64, i64* %2, align 8, !tbaa !7
  %985 = and i64 %983, %984
  %986 = load i64, i64* %2, align 8, !tbaa !7
  %987 = call i64 @safe_mod_func_uint64_t_u_u(i64 %985, i64 %986)
  %988 = load i8, i8* @g_76, align 1, !tbaa !9
  %989 = sext i8 %988 to i64
  %990 = or i64 %987, %989
  %991 = load i64, i64* %2, align 8, !tbaa !7
  %992 = icmp eq i64 %990, %991
  %993 = zext i1 %992 to i32
  %994 = xor i32 %963, %993
  %995 = load i32*, i32** @g_105, align 8, !tbaa !5
  %996 = load i32, i32* %995, align 4, !tbaa !1
  %997 = xor i32 %996, %994
  store i32 %997, i32* %995, align 4, !tbaa !1
  %998 = load i64, i64* @g_16, align 8, !tbaa !7
  %999 = trunc i64 %998 to i16
  %1000 = getelementptr inbounds [8 x [5 x i8*]], [8 x [5 x i8*]]* %l_149, i32 0, i64 3
  %1001 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1000, i32 0, i64 4
  %1002 = load i8*, i8** %1001, align 8, !tbaa !5
  %1003 = icmp eq i8* %1002, @g_100
  %1004 = zext i1 %1003 to i32
  %1005 = load i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 0, i64 7, i64 5), align 1, !tbaa !9
  %1006 = sext i8 %1005 to i32
  %1007 = icmp slt i32 %1004, %1006
  %1008 = zext i1 %1007 to i32
  %1009 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %999, i32 %1008)
  %1010 = sext i16 %1009 to i32
  store i32 %1010, i32* %l_160, align 4, !tbaa !1
  %1011 = load i32, i32* %l_160, align 4, !tbaa !1
  %1012 = load i32**, i32*** @g_104, align 8, !tbaa !5
  %1013 = load i32*, i32** %1012, align 8, !tbaa !5
  %1014 = icmp eq i32* %1013, null
  %1015 = zext i1 %1014 to i32
  %1016 = trunc i32 %1015 to i16
  %1017 = load i64*, i64** %l_166, align 8, !tbaa !5
  %1018 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 1), align 1, !tbaa !9
  %1019 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1018, i32 3)
  %1020 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %1019, i32 4)
  %1021 = zext i8 %1020 to i64
  %1022 = load i64, i64* %2, align 8, !tbaa !7
  %1023 = icmp sle i64 %1021, %1022
  %1024 = zext i1 %1023 to i32
  %1025 = load i64, i64* %2, align 8, !tbaa !7
  %1026 = trunc i64 %1025 to i32
  %1027 = call i32 @safe_mod_func_uint32_t_u_u(i32 %1024, i32 %1026)
  %1028 = zext i32 %1027 to i64
  %1029 = load i64, i64* %2, align 8, !tbaa !7
  %1030 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1028, i64 %1029)
  %1031 = trunc i64 %1030 to i32
  store i32 %1031, i32* %l_186, align 4, !tbaa !1
  %1032 = getelementptr inbounds [1 x [2 x [6 x i16*]]], [1 x [2 x [6 x i16*]]]* %l_184, i32 0, i64 0
  %1033 = getelementptr inbounds [2 x [6 x i16*]], [2 x [6 x i16*]]* %1032, i32 0, i64 0
  %1034 = getelementptr inbounds [6 x i16*], [6 x i16*]* %1033, i32 0, i64 3
  %1035 = load i16*, i16** %1034, align 8, !tbaa !5
  %1036 = load i16**, i16*** %l_187, align 8, !tbaa !5
  store i16* %1035, i16** %1036, align 8, !tbaa !5
  %1037 = icmp ne i16* %1035, null
  %1038 = zext i1 %1037 to i32
  %1039 = or i32 %1031, %1038
  store i32 %1039, i32* %l_189, align 4, !tbaa !1
  %1040 = trunc i32 %1039 to i8
  %1041 = load i8, i8* @g_100, align 1, !tbaa !9
  %1042 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1040, i8 zeroext %1041)
  %1043 = zext i8 %1042 to i32
  %1044 = load i16, i16* @g_185, align 2, !tbaa !10
  %1045 = zext i16 %1044 to i32
  %1046 = icmp sge i32 %1043, %1045
  %1047 = zext i1 %1046 to i32
  %1048 = trunc i32 %1047 to i8
  %1049 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1048, i32 0)
  %1050 = sext i8 %1049 to i32
  %1051 = load i32, i32* %l_145, align 4, !tbaa !1
  %1052 = icmp slt i32 %1050, %1051
  %1053 = zext i1 %1052 to i32
  %1054 = trunc i32 %1053 to i8
  %1055 = load i64, i64* %2, align 8, !tbaa !7
  %1056 = trunc i64 %1055 to i8
  %1057 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1054, i8 signext %1056)
  %1058 = sext i8 %1057 to i64
  %1059 = load i64, i64* @g_16, align 8, !tbaa !7
  %1060 = icmp ule i64 %1058, %1059
  %1061 = zext i1 %1060 to i32
  %1062 = trunc i32 %1061 to i8
  %1063 = load i64, i64* %2, align 8, !tbaa !7
  %1064 = trunc i64 %1063 to i8
  %1065 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1062, i8 signext %1064)
  %1066 = icmp eq i64* %1017, @g_16
  %1067 = zext i1 %1066 to i32
  %1068 = sext i32 %1067 to i64
  %1069 = call i64 @safe_div_func_uint64_t_u_u(i64 %1068, i64 4252431901551615115)
  %1070 = trunc i64 %1069 to i32
  %1071 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1016, i32 %1070)
  %1072 = icmp ne i16 %1071, 0
  %1073 = xor i1 %1072, true
  %1074 = zext i1 %1073 to i32
  %1075 = icmp eq i32 %1011, %1074
  %1076 = zext i1 %1075 to i32
  %1077 = sext i32 %1076 to i64
  %1078 = load i64, i64* %2, align 8, !tbaa !7
  %1079 = or i64 %1077, %1078
  %1080 = icmp ne i64 %1079, 0
  br i1 %1080, label %1081, label %1084

; <label>:1081                                    ; preds = %973
  %1082 = load i64, i64* %2, align 8, !tbaa !7
  %1083 = icmp ne i64 %1082, 0
  br label %1084

; <label>:1084                                    ; preds = %1081, %973
  %1085 = phi i1 [ false, %973 ], [ %1083, %1081 ]
  %1086 = zext i1 %1085 to i32
  %1087 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %1086, i32* %1087, align 4, !tbaa !1
  %1088 = bitcast i32* %k29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1088) #1
  %1089 = bitcast i32* %j28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1089) #1
  %1090 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1090) #1
  %1091 = bitcast [5 x [4 x i8*]]* %l_188 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1091) #1
  %1092 = bitcast i16*** %l_187 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1092) #1
  %1093 = bitcast i32* %l_186 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1093) #1
  %1094 = bitcast [1 x [2 x [6 x i16*]]]* %l_184 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %1094) #1
  br label %1095

; <label>:1095                                    ; preds = %1084
  %1096 = load i8, i8* @g_76, align 1, !tbaa !9
  %1097 = sext i8 %1096 to i32
  %1098 = add nsw i32 %1097, 1
  %1099 = trunc i32 %1098 to i8
  store i8 %1099, i8* @g_76, align 1, !tbaa !9
  br label %908

; <label>:1100                                    ; preds = %908
  store i32 0, i32* %l_145, align 4, !tbaa !1
  br label %1101

; <label>:1101                                    ; preds = %1204, %1100
  %1102 = load i32, i32* %l_145, align 4, !tbaa !1
  %1103 = icmp sle i32 %1102, 4
  br i1 %1103, label %1104, label %1207

; <label>:1104                                    ; preds = %1101
  %1105 = bitcast i64* %l_206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1105) #1
  store i64 -7725509760003925779, i64* %l_206, align 8, !tbaa !7
  %1106 = bitcast i32** %l_210 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1106) #1
  store i32* @g_211, i32** %l_210, align 8, !tbaa !5
  %1107 = bitcast [5 x [6 x [7 x i16*]]]* %l_219 to i8*
  call void @llvm.lifetime.start(i64 1680, i8* %1107) #1
  %1108 = bitcast [5 x [6 x [7 x i16*]]]* %l_219 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1108, i8* bitcast ([5 x [6 x [7 x i16*]]]* @func_47.l_219 to i8*), i64 1680, i32 16, i1 false)
  %1109 = bitcast i32* %l_220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1109) #1
  store i32 0, i32* %l_220, align 4, !tbaa !1
  %1110 = bitcast i64** %l_221 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1110) #1
  store i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 0), i64** %l_221, align 8, !tbaa !5
  %1111 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1111) #1
  %1112 = bitcast i32* %j31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1112) #1
  %1113 = bitcast i32* %k32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1113) #1
  %1114 = load i32, i32* %l_189, align 4, !tbaa !1
  %1115 = icmp ne i32 %1114, 0
  br i1 %1115, label %1116, label %1117

; <label>:1116                                    ; preds = %1104
  store i32 60, i32* %4
  br label %1194

; <label>:1117                                    ; preds = %1104
  %1118 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %1119 = getelementptr inbounds [5 x i32], [5 x i32]* %1118, i32 0, i64 2
  store i32 -1, i32* %1119, align 4, !tbaa !1
  %1120 = load i32, i32* %l_189, align 4, !tbaa !1
  %1121 = trunc i32 %1120 to i16
  %1122 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1121, i32 3)
  %1123 = sext i16 %1122 to i32
  %1124 = bitcast %union.U0* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1124, i8* bitcast (%union.U0* getelementptr inbounds ([7 x %union.U0], [7 x %union.U0]* bitcast (<{ { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 }, { i8, i8, i8, i8 } }>* @g_71 to [7 x %union.U0]*), i32 0, i64 4) to i8*), i64 4, i32 4, i1 true), !tbaa.struct !12
  %1125 = load i64, i64* %l_206, align 8, !tbaa !7
  %1126 = trunc i64 %1125 to i16
  %1127 = load i64, i64* %2, align 8, !tbaa !7
  %1128 = trunc i64 %1127 to i16
  %1129 = load i32*, i32** %l_210, align 8, !tbaa !5
  %1130 = load i32, i32* %1129, align 4, !tbaa !1
  %1131 = add i32 %1130, 1
  store i32 %1131, i32* %1129, align 4, !tbaa !1
  %1132 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext 80, i32 5)
  %1133 = load i64, i64* %2, align 8, !tbaa !7
  %1134 = icmp ne i64 %1133, 0
  br i1 %1134, label %1141, label %1135

; <label>:1135                                    ; preds = %1117
  %1136 = load i32***, i32**** %l_142, align 8, !tbaa !5
  %1137 = load i32**, i32*** %1136, align 8, !tbaa !5
  %1138 = load i32*, i32** %1137, align 8, !tbaa !5
  %1139 = load i32, i32* %1138, align 4, !tbaa !1
  %1140 = icmp ne i32 %1139, 0
  br label %1141

; <label>:1141                                    ; preds = %1135, %1117
  %1142 = phi i1 [ true, %1117 ], [ %1140, %1135 ]
  %1143 = zext i1 %1142 to i32
  %1144 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1132, i32 %1143)
  %1145 = sext i8 %1144 to i32
  %1146 = xor i32 %1145, -1
  %1147 = sext i32 %1146 to i64
  %1148 = icmp uge i64 %1147, 1
  %1149 = zext i1 %1148 to i32
  %1150 = sext i32 %1149 to i64
  %1151 = icmp ult i64 %1150, 1
  %1152 = zext i1 %1151 to i32
  %1153 = xor i32 %1130, %1152
  %1154 = trunc i32 %1153 to i16
  %1155 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1128, i16 zeroext %1154)
  %1156 = zext i16 %1155 to i32
  %1157 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1126, i32 %1156)
  %1158 = icmp ne i32* %l_160, null
  %1159 = zext i1 %1158 to i32
  store i32 %1159, i32* %l_220, align 4, !tbaa !1
  %1160 = trunc i32 %1159 to i16
  %1161 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext 5, i16 signext %1160)
  %1162 = sext i16 %1161 to i64
  %1163 = load i64, i64* %2, align 8, !tbaa !7
  %1164 = icmp slt i64 %1162, %1163
  %1165 = zext i1 %1164 to i32
  %1166 = trunc i32 %1165 to i8
  %1167 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @g_209, i32 0, i64 0), align 8, !tbaa !7
  %1168 = trunc i64 %1167 to i8
  %1169 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1166, i8 signext %1168)
  %1170 = load i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 2, i64 4, i64 4), align 1, !tbaa !9
  %1171 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1169, i8 signext %1170)
  %1172 = load i16, i16* @g_185, align 2, !tbaa !10
  %1173 = trunc i16 %1172 to i8
  %1174 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1171, i8 signext %1173)
  %1175 = sext i8 %1174 to i64
  %1176 = load i64*, i64** %l_221, align 8, !tbaa !5
  store i64 %1175, i64* %1176, align 8, !tbaa !7
  %1177 = bitcast %union.U0* %l_139 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = shl i32 %1178, 15
  %1180 = ashr i32 %1179, 15
  %1181 = sext i32 %1180 to i64
  %1182 = icmp ne i64 %1175, %1181
  %1183 = zext i1 %1182 to i32
  %1184 = sext i32 %1183 to i64
  %1185 = xor i64 159197091, %1184
  %1186 = trunc i64 %1185 to i16
  %1187 = load i64, i64* %2, align 8, !tbaa !7
  %1188 = trunc i64 %1187 to i16
  %1189 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1186, i16 zeroext %1188)
  %1190 = call i32 @safe_sub_func_int32_t_s_s(i32 %1123, i32 1602673059)
  %1191 = icmp ne i32 %1190, 0
  %1192 = zext i1 %1191 to i32
  %1193 = getelementptr inbounds [8 x i32], [8 x i32]* %l_222, i32 0, i64 6
  store i32 %1192, i32* %1193, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1194

; <label>:1194                                    ; preds = %1141, %1116
  %1195 = bitcast i32* %k32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1195) #1
  %1196 = bitcast i32* %j31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1196) #1
  %1197 = bitcast i32* %i30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1197) #1
  %1198 = bitcast i64** %l_221 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1198) #1
  %1199 = bitcast i32* %l_220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1199) #1
  %1200 = bitcast [5 x [6 x [7 x i16*]]]* %l_219 to i8*
  call void @llvm.lifetime.end(i64 1680, i8* %1200) #1
  %1201 = bitcast i32** %l_210 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1201) #1
  %1202 = bitcast i64* %l_206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1202) #1
  %cleanup.dest.33 = load i32, i32* %4
  switch i32 %cleanup.dest.33, label %1367 [
    i32 0, label %1203
    i32 60, label %1207
  ]

; <label>:1203                                    ; preds = %1194
  br label %1204

; <label>:1204                                    ; preds = %1203
  %1205 = load i32, i32* %l_145, align 4, !tbaa !1
  %1206 = add nsw i32 %1205, 1
  store i32 %1206, i32* %l_145, align 4, !tbaa !1
  br label %1101

; <label>:1207                                    ; preds = %1194, %1101
  store i32 0, i32* %4
  br label %1208

; <label>:1208                                    ; preds = %1207, %903, %825
  %1209 = bitcast i32* %k19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1209) #1
  %1210 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1210) #1
  %1211 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1211) #1
  %1212 = bitcast [8 x i32]* %l_222 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1212) #1
  %1213 = bitcast i32**** %l_142 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1213) #1
  %1214 = bitcast i32*** %l_143 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1214) #1
  %1215 = bitcast [4 x i32*]* %l_144 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1215) #1
  %cleanup.dest.34 = load i32, i32* %4
  switch i32 %cleanup.dest.34, label %1367 [
    i32 0, label %1216
    i32 48, label %1220
    i32 50, label %1217
  ]

; <label>:1216                                    ; preds = %1208
  br label %1217

; <label>:1217                                    ; preds = %1216, %1208
  %1218 = load i32, i32* @g_81, align 4, !tbaa !1
  %1219 = sub nsw i32 %1218, 1
  store i32 %1219, i32* @g_81, align 4, !tbaa !1
  br label %758

; <label>:1220                                    ; preds = %1208, %758
  store i32 0, i32* %l_145, align 4, !tbaa !1
  br label %1221

; <label>:1221                                    ; preds = %1251, %1220
  %1222 = load i32, i32* %l_145, align 4, !tbaa !1
  %1223 = icmp sle i32 %1222, 4
  br i1 %1223, label %1224, label %1254

; <label>:1224                                    ; preds = %1221
  %1225 = bitcast i64*** %l_224 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1225) #1
  store i64** %l_166, i64*** %l_224, align 8, !tbaa !5
  %1226 = bitcast i64**** %l_223 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1226) #1
  store i64*** %l_224, i64**** %l_223, align 8, !tbaa !5
  %1227 = bitcast [6 x [5 x i32**]]* %l_225 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %1227) #1
  %1228 = bitcast [6 x [5 x i32**]]* %l_225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1228, i8* bitcast ([6 x [5 x i32**]]* @func_47.l_225 to i8*), i64 240, i32 16, i1 false)
  %1229 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1229) #1
  %1230 = bitcast i32* %j36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1230) #1
  %1231 = load i64***, i64**** %l_223, align 8, !tbaa !5
  store i64** null, i64*** %1231, align 8, !tbaa !5
  %1232 = load i32**, i32*** @g_104, align 8, !tbaa !5
  %1233 = load i32*, i32** %1232, align 8, !tbaa !5
  %1234 = load volatile i32**, i32*** @g_226, align 8, !tbaa !5
  store i32* %1233, i32** %1234, align 8, !tbaa !5
  %1235 = load i64, i64* %2, align 8, !tbaa !7
  %1236 = icmp ne i64 %1235, 0
  br i1 %1236, label %1237, label %1238

; <label>:1237                                    ; preds = %1224
  store i32 8, i32* %4
  br label %1244

; <label>:1238                                    ; preds = %1224
  %1239 = bitcast %union.U0* %l_139 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = shl i32 %1240, 15
  %1242 = ashr i32 %1241, 15
  %1243 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %1242, i32* %1243, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1244

; <label>:1244                                    ; preds = %1238, %1237
  %1245 = bitcast i32* %j36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1245) #1
  %1246 = bitcast i32* %i35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1246) #1
  %1247 = bitcast [6 x [5 x i32**]]* %l_225 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %1247) #1
  %1248 = bitcast i64**** %l_223 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1248) #1
  %1249 = bitcast i64*** %l_224 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1249) #1
  %cleanup.dest.37 = load i32, i32* %4
  switch i32 %cleanup.dest.37, label %1266 [
    i32 0, label %1250
  ]

; <label>:1250                                    ; preds = %1244
  br label %1251

; <label>:1251                                    ; preds = %1250
  %1252 = load i32, i32* %l_145, align 4, !tbaa !1
  %1253 = add nsw i32 %1252, 1
  store i32 %1253, i32* %l_145, align 4, !tbaa !1
  br label %1221

; <label>:1254                                    ; preds = %1221
  %1255 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %1256 = getelementptr inbounds [5 x i32], [5 x i32]* %1255, i32 0, i64 2
  %1257 = load i32, i32* %1256, align 4, !tbaa !1
  %1258 = icmp ne i32 %1257, 0
  br i1 %1258, label %1259, label %1260

; <label>:1259                                    ; preds = %1254
  store i32 45, i32* %4
  br label %1266

; <label>:1260                                    ; preds = %1254
  %1261 = load i32*, i32** @g_105, align 8, !tbaa !5
  %1262 = load i32, i32* %1261, align 4, !tbaa !1
  %1263 = sext i32 %1262 to i64
  %1264 = or i64 %1263, 3567275305
  %1265 = trunc i64 %1264 to i32
  store i32 %1265, i32* %1261, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1266

; <label>:1266                                    ; preds = %1260, %1259, %1244
  %1267 = bitcast i32* %l_189 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1267) #1
  %1268 = bitcast i64** %l_166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1268) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_148) #1
  %cleanup.dest.38 = load i32, i32* %4
  switch i32 %cleanup.dest.38, label %1274 [
    i32 0, label %1269
    i32 45, label %1273
  ]

; <label>:1269                                    ; preds = %1266
  br label %1270

; <label>:1270                                    ; preds = %1269
  %1271 = load i64, i64* @g_15, align 8, !tbaa !7
  %1272 = add i64 %1271, 1
  store i64 %1272, i64* @g_15, align 8, !tbaa !7
  br label %752

; <label>:1273                                    ; preds = %1266, %752
  store i32 0, i32* %4
  br label %1274

; <label>:1274                                    ; preds = %1273, %1266
  %1275 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1275) #1
  %1276 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1276) #1
  %1277 = bitcast i32* %l_160 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1277) #1
  %1278 = bitcast [8 x [5 x i8*]]* %l_149 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %1278) #1
  %1279 = bitcast %union.U0* %l_139 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1279) #1
  %cleanup.dest.39 = load i32, i32* %4
  switch i32 %cleanup.dest.39, label %1287 [
    i32 0, label %1280
  ]

; <label>:1280                                    ; preds = %1274
  br label %1281

; <label>:1281                                    ; preds = %1280
  %1282 = load i8, i8* @g_100, align 1, !tbaa !9
  %1283 = zext i8 %1282 to i32
  %1284 = add nsw i32 %1283, 1
  %1285 = trunc i32 %1284 to i8
  store i8 %1285, i8* @g_100, align 1, !tbaa !9
  br label %664

; <label>:1286                                    ; preds = %664
  store i32 0, i32* %4
  br label %1287

; <label>:1287                                    ; preds = %1286, %1274, %653
  %1288 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1288) #1
  %1289 = bitcast i32* %l_145 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1289) #1
  %1290 = bitcast [3 x i32]* %l_141 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1290) #1
  %1291 = bitcast i8** %l_140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1291) #1
  %cleanup.dest.40 = load i32, i32* %4
  switch i32 %cleanup.dest.40, label %1355 [
    i32 0, label %1292
    i32 8, label %41
  ]

; <label>:1292                                    ; preds = %1287
  br label %1293

; <label>:1293                                    ; preds = %1292
  %1294 = load i8, i8* %l_109, align 1, !tbaa !9
  %1295 = zext i8 %1294 to i32
  %1296 = add nsw i32 %1295, 1
  %1297 = trunc i32 %1296 to i8
  store i8 %1297, i8* %l_109, align 1, !tbaa !9
  br label %163

; <label>:1298                                    ; preds = %163
  %1299 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %1300 = getelementptr inbounds [5 x i32], [5 x i32]* %1299, i32 0, i64 2
  %1301 = load i32, i32* %1300, align 4, !tbaa !1
  %1302 = load i64, i64* %2, align 8, !tbaa !7
  %1303 = bitcast %union.U0* %l_77 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = shl i32 %1304, 15
  %1306 = ashr i32 %1305, 15
  %1307 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 2
  %1308 = getelementptr inbounds [5 x i32], [5 x i32]* %1307, i32 0, i64 2
  %1309 = icmp eq i32* %1308, null
  %1310 = zext i1 %1309 to i32
  %1311 = trunc i32 %1310 to i16
  %1312 = getelementptr inbounds [9 x i32], [9 x i32]* %l_236, i32 0, i64 1
  store i32 1, i32* %1312, align 4, !tbaa !1
  %1313 = load i64, i64* %2, align 8, !tbaa !7
  %1314 = load i64*, i64** %l_237, align 8, !tbaa !5
  store i64* %1314, i64** @g_240, align 8, !tbaa !5
  store i64* %1314, i64** %l_241, align 8, !tbaa !5
  %1315 = icmp ne i64* %1314, @g_16
  %1316 = zext i1 %1315 to i32
  %1317 = sext i32 %1316 to i64
  %1318 = load i64, i64* %2, align 8, !tbaa !7
  %1319 = xor i64 %1317, %1318
  %1320 = or i64 %1313, %1319
  %1321 = load i64, i64* %2, align 8, !tbaa !7
  %1322 = icmp ne i64 1, %1321
  %1323 = zext i1 %1322 to i32
  %1324 = call i32 @safe_div_func_int32_t_s_s(i32 %1323, i32 -8)
  %1325 = trunc i32 %1324 to i16
  %1326 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1311, i16 signext %1325)
  %1327 = sext i16 %1326 to i64
  %1328 = or i64 %1327, -7249704146829331030
  %1329 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext 1)
  %1330 = zext i8 %1329 to i64
  %1331 = icmp slt i64 %1330, 8
  %1332 = zext i1 %1331 to i32
  %1333 = xor i32 %1306, %1332
  %1334 = icmp ne i32 %1333, 0
  br i1 %1334, label %1339, label %1335

; <label>:1335                                    ; preds = %1298
  %1336 = getelementptr inbounds [9 x i64], [9 x i64]* %l_52, i32 0, i64 5
  %1337 = load i64, i64* %1336, align 8, !tbaa !7
  %1338 = icmp ne i64 %1337, 0
  br label %1339

; <label>:1339                                    ; preds = %1335, %1298
  %1340 = phi i1 [ true, %1298 ], [ %1338, %1335 ]
  %1341 = zext i1 %1340 to i32
  %1342 = load i8, i8* @g_100, align 1, !tbaa !9
  %1343 = zext i8 %1342 to i32
  %1344 = icmp slt i32 %1341, %1343
  %1345 = zext i1 %1344 to i32
  %1346 = icmp sge i32 %1301, %1345
  %1347 = zext i1 %1346 to i32
  %1348 = trunc i32 %1347 to i8
  %1349 = load i8, i8* @g_76, align 1, !tbaa !9
  %1350 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1348, i8 zeroext %1349)
  %1351 = getelementptr inbounds [4 x [5 x i32]], [4 x [5 x i32]]* %l_110, i32 0, i64 0
  %1352 = getelementptr inbounds [5 x i32], [5 x i32]* %1351, i32 0, i64 2
  %1353 = load i32, i32* %1352, align 4, !tbaa !1
  %1354 = load i32*, i32** @g_105, align 8, !tbaa !5
  store i32 %1353, i32* %1354, align 4, !tbaa !1
  store i64* @g_16, i64** %1
  store i32 1, i32* %4
  br label %1355

; <label>:1355                                    ; preds = %1339, %1287
  %1356 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1356) #1
  %1357 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1357) #1
  %1358 = bitcast i64** %l_241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1358) #1
  %1359 = bitcast [3 x i64**]* %l_239 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1359) #1
  %1360 = bitcast i64*** %l_238 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1360) #1
  %1361 = bitcast i64** %l_237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1361) #1
  %1362 = bitcast [9 x i32]* %l_236 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %1362) #1
  %1363 = bitcast [4 x [5 x i32]]* %l_110 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1363) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_109) #1
  %1364 = bitcast %union.U0* %l_77 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1364) #1
  %1365 = bitcast [9 x i64]* %l_52 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1365) #1
  %1366 = load i64*, i64** %1
  ret i64* %1366

; <label>:1367                                    ; preds = %1208, %1194, %731, %279, %145
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %si) #0 {
  %1 = alloca i8, align 1
  store i8 %si, i8* %1, align 1, !tbaa !9
  %2 = load i8, i8* %1, align 1, !tbaa !9
  %3 = sext i8 %2 to i32
  %4 = sub nsw i32 0, %3
  %5 = trunc i32 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @func_58(i32** %p_59) #0 {
  %1 = alloca i32**, align 8
  %l_107 = alloca i32, align 4
  store i32** %p_59, i32*** %1, align 8, !tbaa !5
  %2 = bitcast i32* %l_107 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -1, i32* %l_107, align 4, !tbaa !1
  %3 = load i32, i32* %l_107, align 4, !tbaa !1
  %4 = sext i32 %3 to i64
  %5 = bitcast i32* %l_107 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal i32** @func_60(i32 %p_61, i32 %p_62.coerce, i64* %p_63, i8 signext %p_64) #0 {
  %p_62 = alloca %union.U0, align 4
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca i8, align 1
  %l_78 = alloca i32*, align 8
  %l_80 = alloca i32*, align 8
  %l_88 = alloca i64*, align 8
  %l_89 = alloca [10 x [5 x i64*]], align 16
  %l_92 = alloca i32**, align 8
  %l_91 = alloca i32***, align 8
  %l_99 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %4 = bitcast %union.U0* %p_62 to i32*
  store i32 %p_62.coerce, i32* %4, align 4
  store i32 %p_61, i32* %1, align 4, !tbaa !1
  store i64* %p_63, i64** %2, align 8, !tbaa !5
  store i8 %p_64, i8* %3, align 1, !tbaa !9
  %5 = bitcast i32** %l_78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_3, i32** %l_78, align 8, !tbaa !5
  %6 = bitcast i32** %l_80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_81, i32** %l_80, align 8, !tbaa !5
  %7 = bitcast i64** %l_88 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64* null, i64** %l_88, align 8, !tbaa !5
  %8 = bitcast [10 x [5 x i64*]]* %l_89 to i8*
  call void @llvm.lifetime.start(i64 400, i8* %8) #1
  %9 = bitcast [10 x [5 x i64*]]* %l_89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([10 x [5 x i64*]]* @func_60.l_89 to i8*), i64 400, i32 16, i1 false)
  %10 = bitcast i32*** %l_92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** %l_78, i32*** %l_92, align 8, !tbaa !5
  %11 = bitcast i32**** %l_91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32*** %l_92, i32**** %l_91, align 8, !tbaa !5
  %12 = bitcast i8** %l_99 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i8* @g_100, i8** %l_99, align 8, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32*, i32** %l_78, align 8, !tbaa !5
  store i32* %15, i32** @g_79, align 8, !tbaa !5
  %16 = load i32*, i32** %l_80, align 8, !tbaa !5
  store i32 1846427478, i32* %16, align 4, !tbaa !1
  %17 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @g_18, i32 0, i64 0), align 1, !tbaa !9
  %18 = sext i8 %17 to i64
  %19 = load i32*, i32** %l_78, align 8, !tbaa !5
  %20 = load i32, i32* %19, align 4, !tbaa !1
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @g_16, align 8, !tbaa !7
  %23 = or i64 %22, %21
  store i64 %23, i64* @g_16, align 8, !tbaa !7
  %24 = load i32***, i32**** %l_91, align 8, !tbaa !5
  store i32** %l_80, i32*** %24, align 8, !tbaa !5
  %25 = load i8, i8* %3, align 1, !tbaa !9
  %26 = sext i8 %25 to i32
  %27 = xor i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = load i32*, i32** @g_79, align 8, !tbaa !5
  %30 = load i32, i32* %29, align 4, !tbaa !1
  %31 = load i8, i8* getelementptr inbounds ([5 x [8 x [6 x i8]]], [5 x [8 x [6 x i8]]]* @g_66, i32 0, i64 0, i64 5, i64 5), align 1, !tbaa !9
  %32 = load i8*, i8** %l_99, align 8, !tbaa !5
  store i8 %31, i8* %32, align 1, !tbaa !9
  %33 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %31, i32 1)
  %34 = zext i8 %33 to i32
  %35 = or i32 %30, %34
  %36 = sext i32 %35 to i64
  %37 = call i64 @safe_div_func_int64_t_s_s(i64 %28, i64 %36)
  %38 = load i8, i8* %3, align 1, !tbaa !9
  %39 = sext i8 %38 to i16
  %40 = load i32*, i32** %l_80, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = trunc i32 %41 to i16
  %43 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %39, i16 zeroext %42)
  %44 = icmp eq i32** %l_80, %l_80
  %45 = zext i1 %44 to i32
  %46 = xor i32 0, %45
  %47 = load i32, i32* %1, align 4, !tbaa !1
  %48 = and i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = call i64 @safe_add_func_uint64_t_u_u(i64 %23, i64 %49)
  %51 = trunc i64 %50 to i8
  %52 = load i8, i8* %3, align 1, !tbaa !9
  %53 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %51, i8 zeroext %52)
  %54 = zext i8 %53 to i64
  %55 = call i64 @safe_div_func_int64_t_s_s(i64 %18, i64 %54)
  %56 = trunc i64 %55 to i32
  %57 = load i32*, i32** %l_80, align 8, !tbaa !5
  store i32 %56, i32* %57, align 4, !tbaa !1
  %58 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %l_99 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32**** %l_91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast i32*** %l_92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast [10 x [5 x i64*]]* %l_89 to i8*
  call void @llvm.lifetime.end(i64 400, i8* %63) #1
  %64 = bitcast i64** %l_88 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32** %l_80 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32** %l_78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  ret i32** @g_79
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
!12 = !{i64 0, i64 4, !1}
