; ModuleID = '00311.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_3 = internal global i32 -950707332, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_4 = internal global [3 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"g_4[i]\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_5 = internal global i32 1005816840, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global [1 x [4 x i32]] [[4 x i32] [i32 1292011942, i32 1292011942, i32 1292011942, i32 1292011942]], align 16
@.str.5 = private unnamed_addr constant [10 x i8] c"g_6[i][j]\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_7 = internal global [4 x i32] [i32 -1325290780, i32 -1325290780, i32 -1325290780, i32 -1325290780], align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"g_7[i]\00", align 1
@g_10 = internal global [8 x [7 x [1 x i32]]] [[7 x [1 x i32]] [[1 x i32] [i32 1448561504], [1 x i32] [i32 -1], [1 x i32] [i32 -63504806], [1 x i32] zeroinitializer, [1 x i32] [i32 -1437339437], [1 x i32] [i32 1], [1 x i32] [i32 -1]], [7 x [1 x i32]] [[1 x i32] [i32 -1090887780], [1 x i32] [i32 -1], [1 x i32] [i32 732387929], [1 x i32] [i32 -8], [1 x i32] [i32 -1], [1 x i32] [i32 -8], [1 x i32] [i32 732387929]], [7 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -1090887780], [1 x i32] [i32 -1], [1 x i32] [i32 1], [1 x i32] [i32 -1437339437], [1 x i32] zeroinitializer, [1 x i32] [i32 -63504806]], [7 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 1448561504], [1 x i32] [i32 1448561504], [1 x i32] [i32 -1], [1 x i32] [i32 -63504806], [1 x i32] zeroinitializer, [1 x i32] [i32 -1437339437]], [7 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 -1], [1 x i32] [i32 -1090887780], [1 x i32] [i32 -1], [1 x i32] [i32 732387929], [1 x i32] [i32 -8], [1 x i32] [i32 -1]], [7 x [1 x i32]] [[1 x i32] [i32 -63504806], [1 x i32] [i32 -957427231], [1 x i32] [i32 2027963868], [1 x i32] [i32 732387929], [1 x i32] [i32 1], [1 x i32] [i32 -8], [1 x i32] [i32 9]], [7 x [1 x i32]] [[1 x i32] [i32 1448561504], [1 x i32] [i32 -1], [1 x i32] [i32 -494683109], [1 x i32] [i32 1853138664], [1 x i32] [i32 1853138664], [1 x i32] [i32 -494683109], [1 x i32] [i32 -1]], [7 x [1 x i32]] [[1 x i32] [i32 1448561504], [1 x i32] [i32 9], [1 x i32] [i32 -8], [1 x i32] [i32 1], [1 x i32] [i32 732387929], [1 x i32] [i32 2027963868], [1 x i32] [i32 -957427231]]], align 16
@.str.8 = private unnamed_addr constant [14 x i8] c"g_10[i][j][k]\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_11 = internal global i32 4, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_11\00", align 1
@g_64 = internal global i32 -1970072837, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_64\00", align 1
@g_66 = internal global i32 -1944545609, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_66\00", align 1
@g_67 = internal global i32 -527347216, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"g_67\00", align 1
@g_78 = internal global i32 -699691173, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"g_78\00", align 1
@g_119 = internal global [2 x i8] c"II", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_119[i]\00", align 1
@g_122 = internal global i32 5701106, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_122\00", align 1
@g_131 = internal global i32 -919218022, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_131\00", align 1
@g_136 = internal global i32 319225671, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_136\00", align 1
@g_137 = internal global i32 1, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_137\00", align 1
@g_151 = internal global i32 -940461479, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_151\00", align 1
@g_172 = internal global [1 x [6 x i64]] [[6 x i64] [i64 -6, i64 -6, i64 -6, i64 -6, i64 -6, i64 -6]], align 16
@.str.21 = private unnamed_addr constant [12 x i8] c"g_172[i][j]\00", align 1
@g_197 = internal global i16 -23876, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_197\00", align 1
@g_223 = internal global i16 5, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_223\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_233\00", align 1
@g_245 = internal global i32 3, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_245\00", align 1
@g_249 = internal global [8 x i8] c"\C3\FF\C3\FF\C3\FF\C3\FF", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_249[i]\00", align 1
@g_424 = internal global i16 -1, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_424\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_432\00", align 1
@g_461 = internal global [1 x [8 x [6 x i8]]] [[8 x [6 x i8]] [[6 x i8] c"\09q\09\D2\B5\E9", [6 x i8] c"\09a\01\09\09\01", [6 x i8] c"\FF\FF\98\09a\D2", [6 x i8] c"\09\98\E9\D2\E9\98", [6 x i8] c"\09\09\E9#\FF\D2", [6 x i8] c"\01#\98\98#\01", [6 x i8] c"\98#\01\B5\FF\E9", [6 x i8] c"\E9\09\09\09\E9#"]], align 16
@.str.29 = private unnamed_addr constant [15 x i8] c"g_461[i][j][k]\00", align 1
@g_507 = internal global i64 532535885999091790, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"g_507\00", align 1
@g_652 = internal global i64 0, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_652\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_741\00", align 1
@g_742 = internal constant [6 x [6 x [6 x i32]]] [[6 x [6 x i32]] [[6 x i32] [i32 -509150281, i32 -1, i32 -1946727202, i32 1810823911, i32 -1593644046, i32 2004840196], [6 x i32] [i32 -1, i32 -449435701, i32 -1, i32 -8, i32 -1593644046, i32 -13551274], [6 x i32] [i32 1, i32 -1, i32 715404150, i32 -1381415915, i32 -1, i32 1], [6 x i32] [i32 -561383088, i32 -6, i32 -5, i32 -1, i32 -449435701, i32 0], [6 x i32] [i32 999807212, i32 2123820413, i32 514994849, i32 -1946727202, i32 2101188138, i32 1719961501], [6 x i32] [i32 2004840196, i32 -681781639, i32 -1946727202, i32 -1, i32 0, i32 1719961501]], [6 x [6 x i32]] [[6 x i32] [i32 -13551274, i32 -449435701, i32 514994849, i32 715404150, i32 5, i32 0], [6 x i32] [i32 1, i32 6, i32 -5, i32 -5, i32 6, i32 1], [6 x i32] [i32 0, i32 5, i32 715404150, i32 514994849, i32 -449435701, i32 -13551274], [6 x i32] [i32 1719961501, i32 0, i32 -1, i32 -1946727202, i32 -681781639, i32 2004840196], [6 x i32] [i32 1719961501, i32 2101188138, i32 -1946727202, i32 514994849, i32 2123820413, i32 999807212], [6 x i32] [i32 0, i32 -449435701, i32 -1, i32 -5, i32 -6, i32 -561383088]], [6 x [6 x i32]] [[6 x i32] [i32 1, i32 -1, i32 -1381415915, i32 715404150, i32 -1, i32 1], [6 x i32] [i32 -13551274, i32 -1593644046, i32 -8, i32 -1, i32 -449435701, i32 -1], [6 x i32] [i32 2004840196, i32 -1593644046, i32 1810823911, i32 -1946727202, i32 -1, i32 -509150281], [6 x i32] [i32 999807212, i32 -1, i32 -1946727202, i32 -1, i32 -6, i32 -1946727202], [6 x i32] [i32 -561383088, i32 -449435701, i32 1, i32 -1381415915, i32 2123820413, i32 1116607908], [6 x i32] [i32 1, i32 2101188138, i32 -1, i32 -8, i32 -681781639, i32 1]], [6 x [6 x i32]] [[6 x i32] [i32 -1, i32 0, i32 -1, i32 1810823911, i32 -449435701, i32 1116607908], [6 x i32] [i32 -509150281, i32 5, i32 1, i32 -1946727202, i32 6, i32 -1946727202], [6 x i32] [i32 -1946727202, i32 6, i32 -1946727202, i32 1, i32 5, i32 -509150281], [6 x i32] [i32 1116607908, i32 -449435701, i32 1810823911, i32 -1, i32 0, i32 -1], [6 x i32] [i32 1, i32 -681781639, i32 -8, i32 -1, i32 2101188138, i32 1], [6 x i32] [i32 1116607908, i32 2123820413, i32 -1381415915, i32 1, i32 -449435701, i32 -561383088]], [6 x [6 x i32]] [[6 x i32] [i32 -1946727202, i32 -6, i32 -1, i32 -1946727202, i32 -1, i32 999807212], [6 x i32] [i32 -509150281, i32 -1, i32 -1946727202, i32 1810823911, i32 -1593644046, i32 2004840196], [6 x i32] [i32 -1, i32 -449435701, i32 -1, i32 -8, i32 -1593644046, i32 -13551274], [6 x i32] [i32 1, i32 -1, i32 715404150, i32 -1381415915, i32 -1, i32 1], [6 x i32] [i32 -561383088, i32 -6, i32 -5, i32 -1, i32 -449435701, i32 0], [6 x i32] [i32 999807212, i32 2123820413, i32 514994849, i32 -1946727202, i32 2101188138, i32 1719961501]], [6 x [6 x i32]] [[6 x i32] [i32 2004840196, i32 -681781639, i32 -1946727202, i32 -1, i32 2004840196, i32 -261567679], [6 x i32] [i32 -832306911, i32 1, i32 0, i32 -611744423, i32 999807212, i32 -3], [6 x i32] [i32 0, i32 -561383088, i32 1459639543, i32 1459639543, i32 -561383088, i32 0], [6 x i32] [i32 -3, i32 999807212, i32 -611744423, i32 0, i32 1, i32 -832306911], [6 x i32] [i32 -261567679, i32 2004840196, i32 0, i32 755634852, i32 -1, i32 1], [6 x i32] [i32 -261567679, i32 -13551274, i32 755634852, i32 0, i32 -509150281, i32 4]]], align 16
@.str.33 = private unnamed_addr constant [15 x i8] c"g_742[i][j][k]\00", align 1
@g_746 = internal global i8 -30, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_746\00", align 1
@g_869 = internal global [9 x [9 x [3 x i8]]] [[9 x [3 x i8]] [[3 x i8] c"ii\01", [3 x i8] c"\B7\00\00", [3 x i8] c"\01\01\AE", [3 x i8] c"\B7\FF\B7", [3 x i8] c"i\01\AE", [3 x i8] c"\0B\0B\00", [3 x i8] c"\06\01\01", [3 x i8] c"\00\FF\18", [3 x i8] c"\06\01\06"], [9 x [3 x i8]] [[3 x i8] c"\0B\00\18", [3 x i8] c"ii\01", [3 x i8] c"\B7\00\00", [3 x i8] c"\01\01\AE", [3 x i8] c"\B7\FF\B7", [3 x i8] c"i\01\AE", [3 x i8] c"\0B\0B\00", [3 x i8] c"\06\01\01", [3 x i8] c"\00\FF\18"], [9 x [3 x i8]] [[3 x i8] c"\06\01\06", [3 x i8] c"\0B\00\18", [3 x i8] c"ii\01", [3 x i8] c"\B7\00\00", [3 x i8] c"\01\01\AE", [3 x i8] c"\B7\FF\B7", [3 x i8] c"i\01\AE", [3 x i8] c"\0B\0B\00", [3 x i8] c"\06\01\01"], [9 x [3 x i8]] [[3 x i8] c"\00\FF\18", [3 x i8] c"\06\01\06", [3 x i8] c"\0B\00\18", [3 x i8] c"ii\01", [3 x i8] c"\B7\00\00", [3 x i8] c"\01\01\AE", [3 x i8] c"\B7\FF\B7", [3 x i8] c"i\01\AE", [3 x i8] c"\0B\0B\00"], [9 x [3 x i8]] [[3 x i8] c"\06\01\01", [3 x i8] c"\00\FF\18", [3 x i8] c"\06\01\06", [3 x i8] c"\0B\00\18", [3 x i8] c"ii\01", [3 x i8] c"\B7\00\00", [3 x i8] c"\01\01\AE", [3 x i8] c"\B7\FF\B7", [3 x i8] c"i\01\AE"], [9 x [3 x i8]] [[3 x i8] c"\0B\0B\00", [3 x i8] c"\06\01\01", [3 x i8] c"\00\FF\18", [3 x i8] c"\06\01\06", [3 x i8] c"\0B\00\18", [3 x i8] c"ii\01", [3 x i8] c"\B7\00\00", [3 x i8] c"\01\01\AE", [3 x i8] c"\18\0B\18"], [9 x [3 x i8]] [[3 x i8] c"\01\06\01", [3 x i8] c"\00\00\B7", [3 x i8] c"\AE\06\06", [3 x i8] c"\B7\0B\FF", [3 x i8] c"\AEi\AE", [3 x i8] c"\00\B7\FF", [3 x i8] c"\01\01\06", [3 x i8] c"\18\B7\B7", [3 x i8] c"\06i\01"], [9 x [3 x i8]] [[3 x i8] c"\18\0B\18", [3 x i8] c"\01\06\01", [3 x i8] c"\00\00\B7", [3 x i8] c"\AE\06\06", [3 x i8] c"\B7\0B\FF", [3 x i8] c"\AEi\AE", [3 x i8] c"\00\B7\FF", [3 x i8] c"\01\01\06", [3 x i8] c"\18\B7\B7"], [9 x [3 x i8]] [[3 x i8] c"\06i\01", [3 x i8] c"\18\0B\18", [3 x i8] c"\01\06\01", [3 x i8] c"\00\00\B7", [3 x i8] c"\AE\06\06", [3 x i8] c"\B7\0B\FF", [3 x i8] c"\AEi\AE", [3 x i8] c"\00\B7\FF", [3 x i8] c"\01\01\06"]], align 16
@.str.35 = private unnamed_addr constant [15 x i8] c"g_869[i][j][k]\00", align 1
@g_898 = internal global [2 x i32] [i32 -1, i32 -1], align 4
@.str.36 = private unnamed_addr constant [9 x i8] c"g_898[i]\00", align 1
@g_1165 = internal global i32 1, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1165\00", align 1
@g_1275 = internal global i64 -1, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1275\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"g_1338.f0\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"g_1338.f4\00", align 1
@g_1395 = internal global i32 -307225049, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1395\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"g_1401[i].f0\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"g_1401[i].f4\00", align 1
@g_1433 = internal global i32 -7, align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1433\00", align 1
@g_1539 = internal global i64 -4791035809016950969, align 8
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1539\00", align 1
@g_1692 = internal global i32 -1, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1692\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"g_1765.f0\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"g_1765.f4\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"g_1783[i].f0\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"g_1783[i].f4\00", align 1
@g_1923 = internal global i8 -3, align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1923\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"g_1939[i].f0\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"g_1939[i].f4\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"g_1975.f0\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"g_1975.f4\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"g_2053\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"g_2176.f0\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"g_2176.f4\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_2248.f0\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"g_2248.f4\00", align 1
@g_2313 = internal global i8 113, align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"g_2313\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_33 = private unnamed_addr constant [4 x i8] c"====", align 1
@func_1.l_2315 = private unnamed_addr constant [6 x i16] [i16 -1, i16 3121, i16 3121, i16 -1, i16 3121, i16 3121], align 2
@func_1.l_2326 = private unnamed_addr constant [1 x [5 x [8 x i32]]] [[5 x [8 x i32]] [[8 x i32] [i32 1086731706, i32 3, i32 3, i32 1086731706, i32 1335402647, i32 -678571949, i32 -1759416656, i32 3], [8 x i32] [i32 -1759416656, i32 0, i32 1808488489, i32 940694938, i32 0, i32 1, i32 0, i32 940694938], [8 x i32] [i32 -678571949, i32 0, i32 -678571949, i32 3, i32 -1759416656, i32 -678571949, i32 1335402647, i32 1086731706], [8 x i32] [i32 -2, i32 3, i32 7, i32 -1759416656, i32 -1, i32 -1, i32 -1759416656, i32 7], [8 x i32] [i32 -2, i32 -2, i32 1, i32 940694938, i32 -1759416656, i32 -1, i32 -2, i32 -1759416656]]], align 16
@func_1.l_25 = private unnamed_addr constant [10 x i32] [i32 -389762989, i32 -376989038, i32 -389762989, i32 -389762989, i32 -376989038, i32 -389762989, i32 -389762989, i32 -376989038, i32 0, i32 0], align 16
@g_113 = internal global i32** @g_114, align 8
@func_1.l_2321 = private unnamed_addr constant [4 x [4 x i32*]] [[4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [7 x [1 x i32]]]* @g_10 to i8*), i64 152) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*)], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*)], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x [7 x [1 x i32]]]* @g_10 to i8*), i64 152) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([1 x [4 x i32]]* @g_6 to i8*), i64 12) to i32*)]], align 16
@g_1163 = internal constant i32** @g_1164, align 8
@g_114 = internal global i32* @g_3, align 8
@g_1164 = internal global i32* @g_1165, align 8
@.str.62 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_1338 = internal global { i8, [7 x i8] } { i8 6, [7 x i8] undef }, align 8
@g_1401 = internal global <{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }> <{ { i8, [7 x i8] } { i8 -33, [7 x i8] undef }, { i8, [7 x i8] } { i8 -33, [7 x i8] undef }, { i8, [7 x i8] } { i8 -33, [7 x i8] undef }, { i8, [7 x i8] } { i8 -33, [7 x i8] undef } }>, align 16
@g_1765 = internal global { i8, [7 x i8] } { i8 86, [7 x i8] undef }, align 8
@g_1783 = internal global <{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }> <{ { i8, [7 x i8] } { i8 6, [7 x i8] undef }, { i8, [7 x i8] } { i8 6, [7 x i8] undef }, { i8, [7 x i8] } { i8 6, [7 x i8] undef }, { i8, [7 x i8] } { i8 6, [7 x i8] undef }, { i8, [7 x i8] } { i8 6, [7 x i8] undef } }>, align 16
@g_1939 = internal global <{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }> <{ { i8, [7 x i8] } { i8 -32, [7 x i8] undef }, { i8, [7 x i8] } { i8 -32, [7 x i8] undef }, { i8, [7 x i8] } { i8 -32, [7 x i8] undef }, { i8, [7 x i8] } { i8 -32, [7 x i8] undef }, { i8, [7 x i8] } { i8 -32, [7 x i8] undef } }>, align 16
@g_1975 = internal global { i8, [7 x i8] } { i8 115, [7 x i8] undef }, align 8
@g_2176 = internal global { i8, [7 x i8] } { i8 -76, [7 x i8] undef }, align 8
@g_2248 = internal global { i8, [7 x i8] } { i8 9, [7 x i8] undef }, align 8
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
  %90 = call i32 @func_1()
  %91 = load i32, i32* @g_3, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:94                                      ; preds = %110, %89
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %113

; <label>:97                                      ; preds = %94
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* @g_4, i32 0, i64 %99
  %101 = load volatile i32, i32* %100, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 %103)
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %97
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %107)
  br label %109

; <label>:109                                     ; preds = %106, %97
  br label %110

; <label>:110                                     ; preds = %109
  %111 = load i32, i32* %i, align 4, !tbaa !1
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %i, align 4, !tbaa !1
  br label %94

; <label>:113                                     ; preds = %94
  %114 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %116)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %117

; <label>:117                                     ; preds = %145, %113
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %148

; <label>:120                                     ; preds = %117
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %121

; <label>:121                                     ; preds = %141, %120
  %122 = load i32, i32* %j, align 4, !tbaa !1
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %144

; <label>:124                                     ; preds = %121
  %125 = load i32, i32* %j, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [1 x [4 x i32]], [1 x [4 x i32]]* @g_6, i32 0, i64 %128
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %129, i32 0, i64 %126
  %131 = load i32, i32* %130, align 4, !tbaa !1
  %132 = sext i32 %131 to i64
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 %133)
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

; <label>:136                                     ; preds = %124
  %137 = load i32, i32* %i, align 4, !tbaa !1
  %138 = load i32, i32* %j, align 4, !tbaa !1
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %137, i32 %138)
  br label %140

; <label>:140                                     ; preds = %136, %124
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load i32, i32* %j, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %j, align 4, !tbaa !1
  br label %121

; <label>:144                                     ; preds = %121
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load i32, i32* %i, align 4, !tbaa !1
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %i, align 4, !tbaa !1
  br label %117

; <label>:148                                     ; preds = %117
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:149                                     ; preds = %165, %148
  %150 = load i32, i32* %i, align 4, !tbaa !1
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %168

; <label>:152                                     ; preds = %149
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* @g_7, i32 0, i64 %154
  %156 = load i32, i32* %155, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 %158)
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

; <label>:161                                     ; preds = %152
  %162 = load i32, i32* %i, align 4, !tbaa !1
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %162)
  br label %164

; <label>:164                                     ; preds = %161, %152
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load i32, i32* %i, align 4, !tbaa !1
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %i, align 4, !tbaa !1
  br label %149

; <label>:168                                     ; preds = %149
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %169

; <label>:169                                     ; preds = %209, %168
  %170 = load i32, i32* %i, align 4, !tbaa !1
  %171 = icmp slt i32 %170, 8
  br i1 %171, label %172, label %212

; <label>:172                                     ; preds = %169
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %173

; <label>:173                                     ; preds = %205, %172
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = icmp slt i32 %174, 7
  br i1 %175, label %176, label %208

; <label>:176                                     ; preds = %173
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %177

; <label>:177                                     ; preds = %201, %176
  %178 = load i32, i32* %k, align 4, !tbaa !1
  %179 = icmp slt i32 %178, 1
  br i1 %179, label %180, label %204

; <label>:180                                     ; preds = %177
  %181 = load i32, i32* %k, align 4, !tbaa !1
  %182 = sext i32 %181 to i64
  %183 = load i32, i32* %j, align 4, !tbaa !1
  %184 = sext i32 %183 to i64
  %185 = load i32, i32* %i, align 4, !tbaa !1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [8 x [7 x [1 x i32]]], [8 x [7 x [1 x i32]]]* @g_10, i32 0, i64 %186
  %188 = getelementptr inbounds [7 x [1 x i32]], [7 x [1 x i32]]* %187, i32 0, i64 %184
  %189 = getelementptr inbounds [1 x i32], [1 x i32]* %188, i32 0, i64 %182
  %190 = load i32, i32* %189, align 4, !tbaa !1
  %191 = sext i32 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %192)
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

; <label>:195                                     ; preds = %180
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = load i32, i32* %j, align 4, !tbaa !1
  %198 = load i32, i32* %k, align 4, !tbaa !1
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %196, i32 %197, i32 %198)
  br label %200

; <label>:200                                     ; preds = %195, %180
  br label %201

; <label>:201                                     ; preds = %200
  %202 = load i32, i32* %k, align 4, !tbaa !1
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %k, align 4, !tbaa !1
  br label %177

; <label>:204                                     ; preds = %177
  br label %205

; <label>:205                                     ; preds = %204
  %206 = load i32, i32* %j, align 4, !tbaa !1
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %j, align 4, !tbaa !1
  br label %173

; <label>:208                                     ; preds = %173
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load i32, i32* %i, align 4, !tbaa !1
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %i, align 4, !tbaa !1
  br label %169

; <label>:212                                     ; preds = %169
  %213 = load i32, i32* @g_11, align 4, !tbaa !1
  %214 = sext i32 %213 to i64
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %215)
  %216 = load volatile i32, i32* @g_64, align 4, !tbaa !1
  %217 = sext i32 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %218)
  %219 = load volatile i32, i32* @g_66, align 4, !tbaa !1
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %221)
  %222 = load volatile i32, i32* @g_67, align 4, !tbaa !1
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %224)
  %225 = load i32, i32* @g_78, align 4, !tbaa !1
  %226 = sext i32 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %227)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %228

; <label>:228                                     ; preds = %244, %212
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = icmp slt i32 %229, 2
  br i1 %230, label %231, label %247

; <label>:231                                     ; preds = %228
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [2 x i8], [2 x i8]* @g_119, i32 0, i64 %233
  %235 = load i8, i8* %234, align 1, !tbaa !9
  %236 = zext i8 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %237)
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

; <label>:240                                     ; preds = %231
  %241 = load i32, i32* %i, align 4, !tbaa !1
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %241)
  br label %243

; <label>:243                                     ; preds = %240, %231
  br label %244

; <label>:244                                     ; preds = %243
  %245 = load i32, i32* %i, align 4, !tbaa !1
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %i, align 4, !tbaa !1
  br label %228

; <label>:247                                     ; preds = %228
  %248 = load i32, i32* @g_122, align 4, !tbaa !1
  %249 = zext i32 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %250)
  %251 = load i32, i32* @g_131, align 4, !tbaa !1
  %252 = zext i32 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %253)
  %254 = load i32, i32* @g_136, align 4, !tbaa !1
  %255 = sext i32 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %256)
  %257 = load i32, i32* @g_137, align 4, !tbaa !1
  %258 = zext i32 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %259)
  %260 = load i32, i32* @g_151, align 4, !tbaa !1
  %261 = zext i32 %260 to i64
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %262)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %290, %247
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 1
  br i1 %265, label %266, label %293

; <label>:266                                     ; preds = %263
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %267

; <label>:267                                     ; preds = %286, %266
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = icmp slt i32 %268, 6
  br i1 %269, label %270, label %289

; <label>:270                                     ; preds = %267
  %271 = load i32, i32* %j, align 4, !tbaa !1
  %272 = sext i32 %271 to i64
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [1 x [6 x i64]], [1 x [6 x i64]]* @g_172, i32 0, i64 %274
  %276 = getelementptr inbounds [6 x i64], [6 x i64]* %275, i32 0, i64 %272
  %277 = load i64, i64* %276, align 8, !tbaa !7
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %277, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 %278)
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

; <label>:281                                     ; preds = %270
  %282 = load i32, i32* %i, align 4, !tbaa !1
  %283 = load i32, i32* %j, align 4, !tbaa !1
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %282, i32 %283)
  br label %285

; <label>:285                                     ; preds = %281, %270
  br label %286

; <label>:286                                     ; preds = %285
  %287 = load i32, i32* %j, align 4, !tbaa !1
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %j, align 4, !tbaa !1
  br label %267

; <label>:289                                     ; preds = %267
  br label %290

; <label>:290                                     ; preds = %289
  %291 = load i32, i32* %i, align 4, !tbaa !1
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %i, align 4, !tbaa !1
  br label %263

; <label>:293                                     ; preds = %263
  %294 = load i16, i16* @g_197, align 2, !tbaa !10
  %295 = sext i16 %294 to i64
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %296)
  %297 = load i16, i16* @g_223, align 2, !tbaa !10
  %298 = zext i16 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %299)
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %300)
  %301 = load volatile i32, i32* @g_245, align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %303)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %304

; <label>:304                                     ; preds = %320, %293
  %305 = load i32, i32* %i, align 4, !tbaa !1
  %306 = icmp slt i32 %305, 8
  br i1 %306, label %307, label %323

; <label>:307                                     ; preds = %304
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [8 x i8], [8 x i8]* @g_249, i32 0, i64 %309
  %311 = load i8, i8* %310, align 1, !tbaa !9
  %312 = sext i8 %311 to i64
  %313 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %313)
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

; <label>:316                                     ; preds = %307
  %317 = load i32, i32* %i, align 4, !tbaa !1
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %317)
  br label %319

; <label>:319                                     ; preds = %316, %307
  br label %320

; <label>:320                                     ; preds = %319
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %i, align 4, !tbaa !1
  br label %304

; <label>:323                                     ; preds = %304
  %324 = load i16, i16* @g_424, align 2, !tbaa !10
  %325 = sext i16 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %327)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %328

; <label>:328                                     ; preds = %368, %323
  %329 = load i32, i32* %i, align 4, !tbaa !1
  %330 = icmp slt i32 %329, 1
  br i1 %330, label %331, label %371

; <label>:331                                     ; preds = %328
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %332

; <label>:332                                     ; preds = %364, %331
  %333 = load i32, i32* %j, align 4, !tbaa !1
  %334 = icmp slt i32 %333, 8
  br i1 %334, label %335, label %367

; <label>:335                                     ; preds = %332
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %336

; <label>:336                                     ; preds = %360, %335
  %337 = load i32, i32* %k, align 4, !tbaa !1
  %338 = icmp slt i32 %337, 6
  br i1 %338, label %339, label %363

; <label>:339                                     ; preds = %336
  %340 = load i32, i32* %k, align 4, !tbaa !1
  %341 = sext i32 %340 to i64
  %342 = load i32, i32* %j, align 4, !tbaa !1
  %343 = sext i32 %342 to i64
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [1 x [8 x [6 x i8]]], [1 x [8 x [6 x i8]]]* @g_461, i32 0, i64 %345
  %347 = getelementptr inbounds [8 x [6 x i8]], [8 x [6 x i8]]* %346, i32 0, i64 %343
  %348 = getelementptr inbounds [6 x i8], [6 x i8]* %347, i32 0, i64 %341
  %349 = load i8, i8* %348, align 1, !tbaa !9
  %350 = sext i8 %349 to i64
  %351 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %350, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i32 %351)
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %359

; <label>:354                                     ; preds = %339
  %355 = load i32, i32* %i, align 4, !tbaa !1
  %356 = load i32, i32* %j, align 4, !tbaa !1
  %357 = load i32, i32* %k, align 4, !tbaa !1
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %355, i32 %356, i32 %357)
  br label %359

; <label>:359                                     ; preds = %354, %339
  br label %360

; <label>:360                                     ; preds = %359
  %361 = load i32, i32* %k, align 4, !tbaa !1
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %k, align 4, !tbaa !1
  br label %336

; <label>:363                                     ; preds = %336
  br label %364

; <label>:364                                     ; preds = %363
  %365 = load i32, i32* %j, align 4, !tbaa !1
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %j, align 4, !tbaa !1
  br label %332

; <label>:367                                     ; preds = %332
  br label %368

; <label>:368                                     ; preds = %367
  %369 = load i32, i32* %i, align 4, !tbaa !1
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %i, align 4, !tbaa !1
  br label %328

; <label>:371                                     ; preds = %328
  %372 = load i64, i64* @g_507, align 8, !tbaa !7
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %373)
  %374 = load i64, i64* @g_652, align 8, !tbaa !7
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %375)
  %376 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -796049140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %376)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %377

; <label>:377                                     ; preds = %417, %371
  %378 = load i32, i32* %i, align 4, !tbaa !1
  %379 = icmp slt i32 %378, 6
  br i1 %379, label %380, label %420

; <label>:380                                     ; preds = %377
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %381

; <label>:381                                     ; preds = %413, %380
  %382 = load i32, i32* %j, align 4, !tbaa !1
  %383 = icmp slt i32 %382, 6
  br i1 %383, label %384, label %416

; <label>:384                                     ; preds = %381
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %385

; <label>:385                                     ; preds = %409, %384
  %386 = load i32, i32* %k, align 4, !tbaa !1
  %387 = icmp slt i32 %386, 6
  br i1 %387, label %388, label %412

; <label>:388                                     ; preds = %385
  %389 = load i32, i32* %k, align 4, !tbaa !1
  %390 = sext i32 %389 to i64
  %391 = load i32, i32* %j, align 4, !tbaa !1
  %392 = sext i32 %391 to i64
  %393 = load i32, i32* %i, align 4, !tbaa !1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [6 x [6 x [6 x i32]]], [6 x [6 x [6 x i32]]]* @g_742, i32 0, i64 %394
  %396 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* %395, i32 0, i64 %392
  %397 = getelementptr inbounds [6 x i32], [6 x i32]* %396, i32 0, i64 %390
  %398 = load i32, i32* %397, align 4, !tbaa !1
  %399 = sext i32 %398 to i64
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %400)
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %408

; <label>:403                                     ; preds = %388
  %404 = load i32, i32* %i, align 4, !tbaa !1
  %405 = load i32, i32* %j, align 4, !tbaa !1
  %406 = load i32, i32* %k, align 4, !tbaa !1
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %404, i32 %405, i32 %406)
  br label %408

; <label>:408                                     ; preds = %403, %388
  br label %409

; <label>:409                                     ; preds = %408
  %410 = load i32, i32* %k, align 4, !tbaa !1
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %k, align 4, !tbaa !1
  br label %385

; <label>:412                                     ; preds = %385
  br label %413

; <label>:413                                     ; preds = %412
  %414 = load i32, i32* %j, align 4, !tbaa !1
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %j, align 4, !tbaa !1
  br label %381

; <label>:416                                     ; preds = %381
  br label %417

; <label>:417                                     ; preds = %416
  %418 = load i32, i32* %i, align 4, !tbaa !1
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %i, align 4, !tbaa !1
  br label %377

; <label>:420                                     ; preds = %377
  %421 = load volatile i8, i8* @g_746, align 1, !tbaa !9
  %422 = sext i8 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %423)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %424

; <label>:424                                     ; preds = %464, %420
  %425 = load i32, i32* %i, align 4, !tbaa !1
  %426 = icmp slt i32 %425, 9
  br i1 %426, label %427, label %467

; <label>:427                                     ; preds = %424
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %428

; <label>:428                                     ; preds = %460, %427
  %429 = load i32, i32* %j, align 4, !tbaa !1
  %430 = icmp slt i32 %429, 9
  br i1 %430, label %431, label %463

; <label>:431                                     ; preds = %428
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %432

; <label>:432                                     ; preds = %456, %431
  %433 = load i32, i32* %k, align 4, !tbaa !1
  %434 = icmp slt i32 %433, 3
  br i1 %434, label %435, label %459

; <label>:435                                     ; preds = %432
  %436 = load i32, i32* %k, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = load i32, i32* %j, align 4, !tbaa !1
  %439 = sext i32 %438 to i64
  %440 = load i32, i32* %i, align 4, !tbaa !1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [9 x [9 x [3 x i8]]], [9 x [9 x [3 x i8]]]* @g_869, i32 0, i64 %441
  %443 = getelementptr inbounds [9 x [3 x i8]], [9 x [3 x i8]]* %442, i32 0, i64 %439
  %444 = getelementptr inbounds [3 x i8], [3 x i8]* %443, i32 0, i64 %437
  %445 = load i8, i8* %444, align 1, !tbaa !9
  %446 = zext i8 %445 to i64
  %447 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %446, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 %447)
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %455

; <label>:450                                     ; preds = %435
  %451 = load i32, i32* %i, align 4, !tbaa !1
  %452 = load i32, i32* %j, align 4, !tbaa !1
  %453 = load i32, i32* %k, align 4, !tbaa !1
  %454 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 %451, i32 %452, i32 %453)
  br label %455

; <label>:455                                     ; preds = %450, %435
  br label %456

; <label>:456                                     ; preds = %455
  %457 = load i32, i32* %k, align 4, !tbaa !1
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %k, align 4, !tbaa !1
  br label %432

; <label>:459                                     ; preds = %432
  br label %460

; <label>:460                                     ; preds = %459
  %461 = load i32, i32* %j, align 4, !tbaa !1
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %j, align 4, !tbaa !1
  br label %428

; <label>:463                                     ; preds = %428
  br label %464

; <label>:464                                     ; preds = %463
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %i, align 4, !tbaa !1
  br label %424

; <label>:467                                     ; preds = %424
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %468

; <label>:468                                     ; preds = %484, %467
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %470 = icmp slt i32 %469, 2
  br i1 %470, label %471, label %487

; <label>:471                                     ; preds = %468
  %472 = load i32, i32* %i, align 4, !tbaa !1
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [2 x i32], [2 x i32]* @g_898, i32 0, i64 %473
  %475 = load i32, i32* %474, align 4, !tbaa !1
  %476 = sext i32 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %477)
  %478 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %483

; <label>:480                                     ; preds = %471
  %481 = load i32, i32* %i, align 4, !tbaa !1
  %482 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %481)
  br label %483

; <label>:483                                     ; preds = %480, %471
  br label %484

; <label>:484                                     ; preds = %483
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %i, align 4, !tbaa !1
  br label %468

; <label>:487                                     ; preds = %468
  %488 = load volatile i32, i32* @g_1165, align 4, !tbaa !1
  %489 = zext i32 %488 to i64
  %490 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %489, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %490)
  %491 = load i64, i64* @g_1275, align 8, !tbaa !7
  %492 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %491, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %492)
  %493 = load i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_1338, i32 0, i32 0), align 1, !tbaa !9
  %494 = sext i8 %493 to i64
  %495 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %494, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %495)
  %496 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_1338, i32 0, i32 0), align 1, !tbaa !9
  %497 = sext i8 %496 to i64
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %497, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 %498)
  %499 = load volatile i32, i32* @g_1395, align 4, !tbaa !1
  %500 = sext i32 %499 to i64
  %501 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %501)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %502

; <label>:502                                     ; preds = %526, %487
  %503 = load i32, i32* %i, align 4, !tbaa !1
  %504 = icmp slt i32 %503, 4
  br i1 %504, label %505, label %529

; <label>:505                                     ; preds = %502
  %506 = load i32, i32* %i, align 4, !tbaa !1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_1401 to [4 x %union.U0]*), i32 0, i64 %507
  %509 = bitcast %union.U0* %508 to i8*
  %510 = load i8, i8* %509, align 1, !tbaa !9
  %511 = sext i8 %510 to i64
  %512 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %511, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i32 %512)
  %513 = load i32, i32* %i, align 4, !tbaa !1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [4 x %union.U0], [4 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_1401 to [4 x %union.U0]*), i32 0, i64 %514
  %516 = bitcast %union.U0* %515 to i8*
  %517 = load volatile i8, i8* %516, align 1, !tbaa !9
  %518 = sext i8 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 %519)
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %525

; <label>:522                                     ; preds = %505
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %523)
  br label %525

; <label>:525                                     ; preds = %522, %505
  br label %526

; <label>:526                                     ; preds = %525
  %527 = load i32, i32* %i, align 4, !tbaa !1
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %i, align 4, !tbaa !1
  br label %502

; <label>:529                                     ; preds = %502
  %530 = load i32, i32* @g_1433, align 4, !tbaa !1
  %531 = zext i32 %530 to i64
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %532)
  %533 = load i64, i64* @g_1539, align 8, !tbaa !7
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %533, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %534)
  %535 = load i32, i32* @g_1692, align 4, !tbaa !1
  %536 = sext i32 %535 to i64
  %537 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %536, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %537)
  %538 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_1765, i32 0, i32 0), align 1, !tbaa !9
  %539 = sext i8 %538 to i64
  %540 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %539, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 %540)
  %541 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_1765, i32 0, i32 0), align 1, !tbaa !9
  %542 = sext i8 %541 to i64
  %543 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %542, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 %543)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %544

; <label>:544                                     ; preds = %568, %529
  %545 = load i32, i32* %i, align 4, !tbaa !1
  %546 = icmp slt i32 %545, 5
  br i1 %546, label %547, label %571

; <label>:547                                     ; preds = %544
  %548 = load i32, i32* %i, align 4, !tbaa !1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_1783 to [5 x %union.U0]*), i32 0, i64 %549
  %551 = bitcast %union.U0* %550 to i8*
  %552 = load volatile i8, i8* %551, align 1, !tbaa !9
  %553 = sext i8 %552 to i64
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i32 0, i32 0), i32 %554)
  %555 = load i32, i32* %i, align 4, !tbaa !1
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_1783 to [5 x %union.U0]*), i32 0, i64 %556
  %558 = bitcast %union.U0* %557 to i8*
  %559 = load volatile i8, i8* %558, align 1, !tbaa !9
  %560 = sext i8 %559 to i64
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %560, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i32 %561)
  %562 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %567

; <label>:564                                     ; preds = %547
  %565 = load i32, i32* %i, align 4, !tbaa !1
  %566 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %565)
  br label %567

; <label>:567                                     ; preds = %564, %547
  br label %568

; <label>:568                                     ; preds = %567
  %569 = load i32, i32* %i, align 4, !tbaa !1
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %i, align 4, !tbaa !1
  br label %544

; <label>:571                                     ; preds = %544
  %572 = load i8, i8* @g_1923, align 1, !tbaa !9
  %573 = zext i8 %572 to i64
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %573, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %574)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %575

; <label>:575                                     ; preds = %599, %571
  %576 = load i32, i32* %i, align 4, !tbaa !1
  %577 = icmp slt i32 %576, 5
  br i1 %577, label %578, label %602

; <label>:578                                     ; preds = %575
  %579 = load i32, i32* %i, align 4, !tbaa !1
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_1939 to [5 x %union.U0]*), i32 0, i64 %580
  %582 = bitcast %union.U0* %581 to i8*
  %583 = load i8, i8* %582, align 1, !tbaa !9
  %584 = sext i8 %583 to i64
  %585 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %584, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i32 0, i32 0), i32 %585)
  %586 = load i32, i32* %i, align 4, !tbaa !1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_1939 to [5 x %union.U0]*), i32 0, i64 %587
  %589 = bitcast %union.U0* %588 to i8*
  %590 = load volatile i8, i8* %589, align 1, !tbaa !9
  %591 = sext i8 %590 to i64
  %592 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %591, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i32 %592)
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %598

; <label>:595                                     ; preds = %578
  %596 = load i32, i32* %i, align 4, !tbaa !1
  %597 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %596)
  br label %598

; <label>:598                                     ; preds = %595, %578
  br label %599

; <label>:599                                     ; preds = %598
  %600 = load i32, i32* %i, align 4, !tbaa !1
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %i, align 4, !tbaa !1
  br label %575

; <label>:602                                     ; preds = %575
  %603 = load i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_1975, i32 0, i32 0), align 1, !tbaa !9
  %604 = sext i8 %603 to i64
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %604, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 %605)
  %606 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_1975, i32 0, i32 0), align 1, !tbaa !9
  %607 = sext i8 %606 to i64
  %608 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %607, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 %608)
  %609 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %609)
  %610 = load i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_2176, i32 0, i32 0), align 1, !tbaa !9
  %611 = sext i8 %610 to i64
  %612 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %611, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 %612)
  %613 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_2176, i32 0, i32 0), align 1, !tbaa !9
  %614 = sext i8 %613 to i64
  %615 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %614, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 %615)
  %616 = load i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_2248, i32 0, i32 0), align 1, !tbaa !9
  %617 = sext i8 %616 to i64
  %618 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %617, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %618)
  %619 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_2248, i32 0, i32 0), align 1, !tbaa !9
  %620 = sext i8 %619 to i64
  %621 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %620, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 %621)
  %622 = load i8, i8* @g_2313, align 1, !tbaa !9
  %623 = sext i8 %622 to i64
  %624 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %623, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %624)
  %625 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %626 = zext i32 %625 to i64
  %627 = xor i64 %626, 4294967295
  %628 = trunc i64 %627 to i32
  %629 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %628, i32 %629)
  %630 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %630) #1
  %631 = bitcast i32* %k to i8*
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
define internal i32 @func_1() #0 {
  %1 = alloca i32, align 4
  %l_2 = alloca [3 x i32], align 4
  %l_27 = alloca i32, align 4
  %l_28 = alloca i32, align 4
  %l_33 = alloca [4 x i8], align 1
  %l_2315 = alloca [6 x i16], align 2
  %l_2322 = alloca i16, align 2
  %l_2323 = alloca i32, align 4
  %l_2324 = alloca i32, align 4
  %l_2325 = alloca i32, align 4
  %l_2326 = alloca [1 x [5 x [8 x i32]]], align 16
  %l_2327 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_19 = alloca i64, align 8
  %l_21 = alloca i32, align 4
  %l_23 = alloca i32, align 4
  %l_24 = alloca i32, align 4
  %l_25 = alloca [10 x i32], align 16
  %l_26 = alloca i64, align 8
  %l_34 = alloca i32, align 4
  %l_47 = alloca i32*, align 8
  %i1 = alloca i32, align 4
  %l_13 = alloca i32, align 4
  %l_20 = alloca i8, align 1
  %l_22 = alloca [4 x i32], align 16
  %l_29 = alloca i16, align 2
  %l_30 = alloca i8, align 1
  %l_1720 = alloca [2 x [5 x [3 x i32*]]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %l_9 = alloca i32*, align 8
  %i5 = alloca i32, align 4
  %l_12 = alloca i32*, align 8
  %i6 = alloca i32, align 4
  %2 = alloca i32
  %l_2316 = alloca i16, align 2
  %l_2317 = alloca i32*, align 8
  %l_2318 = alloca i32*, align 8
  %l_2319 = alloca i32*, align 8
  %l_2320 = alloca i32, align 4
  %l_2321 = alloca [4 x [4 x i32*]], align 16
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %3 = bitcast [3 x i32]* %l_2 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #1
  %4 = bitcast i32* %l_27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %l_27, align 4, !tbaa !1
  %5 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -10, i32* %l_28, align 4, !tbaa !1
  %6 = bitcast [4 x i8]* %l_33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast [4 x i8]* %l_33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @func_1.l_33, i32 0, i32 0), i64 4, i32 1, i1 false)
  %8 = bitcast [6 x i16]* %l_2315 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %8) #1
  %9 = bitcast [6 x i16]* %l_2315 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([6 x i16]* @func_1.l_2315 to i8*), i64 12, i32 2, i1 false)
  %10 = bitcast i16* %l_2322 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  store i16 -8, i16* %l_2322, align 2, !tbaa !10
  %11 = bitcast i32* %l_2323 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -5, i32* %l_2323, align 4, !tbaa !1
  %12 = bitcast i32* %l_2324 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1169714675, i32* %l_2324, align 4, !tbaa !1
  %13 = bitcast i32* %l_2325 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %l_2325, align 4, !tbaa !1
  %14 = bitcast [1 x [5 x [8 x i32]]]* %l_2326 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %14) #1
  %15 = bitcast [1 x [5 x [8 x i32]]]* %l_2326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([1 x [5 x [8 x i32]]]* @func_1.l_2326 to i8*), i64 160, i32 16, i1 false)
  %16 = bitcast i16* %l_2327 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %16) #1
  store i16 -1, i16* %l_2327, align 2, !tbaa !10
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %k to i8*
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
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %l_2, i32 0, i64 %25
  store i32 -3, i32* %26, align 4, !tbaa !1
  br label %27

; <label>:27                                      ; preds = %23
  %28 = load i32, i32* %i, align 4, !tbaa !1
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:30                                      ; preds = %20
  store i32 0, i32* @g_3, align 4, !tbaa !1
  br label %31

; <label>:31                                      ; preds = %165, %30
  %32 = load i32, i32* @g_3, align 4, !tbaa !1
  %33 = icmp sle i32 %32, 2
  br i1 %33, label %34, label %168

; <label>:34                                      ; preds = %31
  %35 = bitcast i64* %l_19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  store i64 8367945512731776725, i64* %l_19, align 8, !tbaa !7
  %36 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 8750744, i32* %l_21, align 4, !tbaa !1
  %37 = bitcast i32* %l_23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 1, i32* %l_23, align 4, !tbaa !1
  %38 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  store i32 -1387037041, i32* %l_24, align 4, !tbaa !1
  %39 = bitcast [10 x i32]* %l_25 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %39) #1
  %40 = bitcast [10 x i32]* %l_25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* bitcast ([10 x i32]* @func_1.l_25 to i8*), i64 40, i32 16, i1 false)
  %41 = bitcast i64* %l_26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i64 -5456114030513627242, i64* %l_26, align 8, !tbaa !7
  %42 = bitcast i32* %l_34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 1, i32* %l_34, align 4, !tbaa !1
  %43 = bitcast i32** %l_47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_7, i32 0, i64 3), i32** %l_47, align 8, !tbaa !5
  %44 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 0, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_6, i32 0, i64 0, i64 1), align 4, !tbaa !1
  br label %45

; <label>:45                                      ; preds = %149, %34
  %46 = load i32, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_6, i32 0, i64 0, i64 1), align 4, !tbaa !1
  %47 = icmp sle i32 %46, 2
  br i1 %47, label %48, label %152

; <label>:48                                      ; preds = %45
  %49 = bitcast i32* %l_13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 1, i32* %l_13, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_20) #1
  store i8 -82, i8* %l_20, align 1, !tbaa !9
  %50 = bitcast [4 x i32]* %l_22 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %51) #1
  store i16 31619, i16* %l_29, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_30) #1
  store i8 74, i8* %l_30, align 1, !tbaa !9
  %52 = bitcast [2 x [5 x [3 x i32*]]]* %l_1720 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %52) #1
  %53 = getelementptr inbounds [2 x [5 x [3 x i32*]]], [2 x [5 x [3 x i32*]]]* %l_1720, i64 0, i64 0
  %54 = getelementptr inbounds [5 x [3 x i32*]], [5 x [3 x i32*]]* %53, i64 0, i64 0
  %55 = getelementptr inbounds [3 x i32*], [3 x i32*]* %54, i64 0, i64 0
  store i32* null, i32** %55, !tbaa !5
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* %l_23, i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* null, i32** %57, !tbaa !5
  %58 = getelementptr inbounds [3 x i32*], [3 x i32*]* %54, i64 1
  %59 = getelementptr inbounds [3 x i32*], [3 x i32*]* %58, i64 0, i64 0
  store i32* %l_28, i32** %59, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* null, i32** %60, !tbaa !5
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* @g_1692, i32** %61, !tbaa !5
  %62 = getelementptr inbounds [3 x i32*], [3 x i32*]* %58, i64 1
  %63 = getelementptr inbounds [3 x i32*], [3 x i32*]* %62, i64 0, i64 0
  store i32* @g_1692, i32** %63, !tbaa !5
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  store i32* %l_21, i32** %64, !tbaa !5
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_898, i32 0, i64 0), i32** %65, !tbaa !5
  %66 = getelementptr inbounds [3 x i32*], [3 x i32*]* %62, i64 1
  %67 = getelementptr inbounds [3 x i32*], [3 x i32*]* %66, i64 0, i64 0
  store i32* null, i32** %67, !tbaa !5
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* null, i32** %68, !tbaa !5
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  store i32* %l_21, i32** %69, !tbaa !5
  %70 = getelementptr inbounds [3 x i32*], [3 x i32*]* %66, i64 1
  %71 = getelementptr inbounds [3 x i32*], [3 x i32*]* %70, i64 0, i64 0
  store i32* null, i32** %71, !tbaa !5
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  store i32* %l_23, i32** %72, !tbaa !5
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32* null, i32** %73, !tbaa !5
  %74 = getelementptr inbounds [5 x [3 x i32*]], [5 x [3 x i32*]]* %53, i64 1
  %75 = getelementptr inbounds [5 x [3 x i32*]], [5 x [3 x i32*]]* %74, i64 0, i64 0
  %76 = getelementptr inbounds [3 x i32*], [3 x i32*]* %75, i64 0, i64 0
  store i32* null, i32** %76, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  store i32* @g_1692, i32** %77, !tbaa !5
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* @g_1692, i32** %78, !tbaa !5
  %79 = getelementptr inbounds [3 x i32*], [3 x i32*]* %75, i64 1
  %80 = getelementptr inbounds [3 x i32*], [3 x i32*]* %79, i64 0, i64 0
  store i32* null, i32** %80, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  store i32* @g_1692, i32** %81, !tbaa !5
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  store i32* %l_23, i32** %82, !tbaa !5
  %83 = getelementptr inbounds [3 x i32*], [3 x i32*]* %79, i64 1
  %84 = getelementptr inbounds [3 x i32*], [3 x i32*]* %83, i64 0, i64 0
  store i32* @g_1692, i32** %84, !tbaa !5
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  store i32* null, i32** %85, !tbaa !5
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  store i32* @g_1692, i32** %86, !tbaa !5
  %87 = getelementptr inbounds [3 x i32*], [3 x i32*]* %83, i64 1
  %88 = getelementptr inbounds [3 x i32*], [3 x i32*]* %87, i64 0, i64 0
  store i32* %l_28, i32** %88, !tbaa !5
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  store i32* null, i32** %89, !tbaa !5
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* null, i32** %90, !tbaa !5
  %91 = getelementptr inbounds [3 x i32*], [3 x i32*]* %87, i64 1
  %92 = getelementptr inbounds [3 x i32*], [3 x i32*]* %91, i64 0, i64 0
  store i32* null, i32** %92, !tbaa !5
  %93 = getelementptr inbounds i32*, i32** %92, i64 1
  store i32* null, i32** %93, !tbaa !5
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  store i32* %l_21, i32** %94, !tbaa !5
  %95 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %98

; <label>:98                                      ; preds = %105, %48
  %99 = load i32, i32* %i2, align 4, !tbaa !1
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %108

; <label>:101                                     ; preds = %98
  %102 = load i32, i32* %i2, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %l_22, i32 0, i64 %103
  store i32 1, i32* %104, align 4, !tbaa !1
  br label %105

; <label>:105                                     ; preds = %101
  %106 = load i32, i32* %i2, align 4, !tbaa !1
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %i2, align 4, !tbaa !1
  br label %98

; <label>:108                                     ; preds = %98
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_7, i32 0, i64 3), align 4, !tbaa !1
  br label %109

; <label>:109                                     ; preds = %124, %108
  %110 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_7, i32 0, i64 3), align 4, !tbaa !1
  %111 = icmp sle i32 %110, 2
  br i1 %111, label %112, label %127

; <label>:112                                     ; preds = %109
  %113 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  store i32* getelementptr inbounds ([8 x [7 x [1 x i32]]], [8 x [7 x [1 x i32]]]* @g_10, i32 0, i64 7, i64 6, i64 0), i32** %l_9, align 8, !tbaa !5
  %114 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_7, i32 0, i64 3), align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %l_2, i32 0, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !1
  %119 = load i32*, i32** %l_9, align 8, !tbaa !5
  %120 = load i32, i32* %119, align 4, !tbaa !1
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4, !tbaa !1
  %122 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32** %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  br label %124

; <label>:124                                     ; preds = %112
  %125 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_7, i32 0, i64 3), align 4, !tbaa !1
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_7, i32 0, i64 3), align 4, !tbaa !1
  br label %109

; <label>:127                                     ; preds = %109
  store i32 2, i32* @g_11, align 4, !tbaa !1
  br label %128

; <label>:128                                     ; preds = %138, %127
  %129 = load i32, i32* @g_11, align 4, !tbaa !1
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %141

; <label>:131                                     ; preds = %128
  %132 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  store i32* getelementptr inbounds ([8 x [7 x [1 x i32]]], [8 x [7 x [1 x i32]]]* @g_10, i32 0, i64 0, i64 0, i64 0), i32** %l_12, align 8, !tbaa !5
  %133 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  %134 = load i32, i32* %l_13, align 4, !tbaa !1
  %135 = add i32 %134, -1
  store i32 %135, i32* %l_13, align 4, !tbaa !1
  %136 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32** %l_12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  br label %138

; <label>:138                                     ; preds = %131
  %139 = load i32, i32* @g_11, align 4, !tbaa !1
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* @g_11, align 4, !tbaa !1
  br label %128

; <label>:141                                     ; preds = %128
  %142 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast [2 x [5 x [3 x i32*]]]* %l_1720 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %145) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_30) #1
  %146 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %146) #1
  %147 = bitcast [4 x i32]* %l_22 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %147) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_20) #1
  %148 = bitcast i32* %l_13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  br label %149

; <label>:149                                     ; preds = %141
  %150 = load i32, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_6, i32 0, i64 0, i64 1), align 4, !tbaa !1
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* getelementptr inbounds ([1 x [4 x i32]], [1 x [4 x i32]]* @g_6, i32 0, i64 0, i64 1), align 4, !tbaa !1
  br label %45

; <label>:152                                     ; preds = %45
  %153 = getelementptr inbounds [6 x i16], [6 x i16]* %l_2315, i32 0, i64 3
  %154 = load i16, i16* %153, align 2, !tbaa !10
  %155 = zext i16 %154 to i32
  store i32 %155, i32* %1
  store i32 1, i32* %2
  %156 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32** %l_47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32* %l_34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i64* %l_26 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast [10 x i32]* %l_25 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %160) #1
  %161 = bitcast i32* %l_24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %l_23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i64* %l_19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  br label %205
                                                  ; No predecessors!
  %166 = load i32, i32* @g_3, align 4, !tbaa !1
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @g_3, align 4, !tbaa !1
  br label %31

; <label>:168                                     ; preds = %31
  %169 = load i32, i32* %l_27, align 4, !tbaa !1
  %170 = load i32**, i32*** @g_113, align 8, !tbaa !5
  %171 = load i32*, i32** %170, align 8, !tbaa !5
  store i32 1755978371, i32* %171, align 4, !tbaa !1
  store i64 0, i64* @g_1539, align 8, !tbaa !7
  br label %172

; <label>:172                                     ; preds = %198, %168
  %173 = load i64, i64* @g_1539, align 8, !tbaa !7
  %174 = icmp ule i64 %173, 2
  br i1 %174, label %175, label %201

; <label>:175                                     ; preds = %172
  %176 = bitcast i16* %l_2316 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %176) #1
  store i16 4, i16* %l_2316, align 2, !tbaa !10
  %177 = bitcast i32** %l_2317 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  store i32* null, i32** %l_2317, align 8, !tbaa !5
  %178 = bitcast i32** %l_2318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  store i32* @g_1692, i32** %l_2318, align 8, !tbaa !5
  %179 = bitcast i32** %l_2319 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #1
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_7, i32 0, i64 3), i32** %l_2319, align 8, !tbaa !5
  %180 = bitcast i32* %l_2320 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  store i32 -1, i32* %l_2320, align 4, !tbaa !1
  %181 = bitcast [4 x [4 x i32*]]* %l_2321 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %181) #1
  %182 = bitcast [4 x [4 x i32*]]* %l_2321 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* bitcast ([4 x [4 x i32*]]* @func_1.l_2321 to i8*), i64 128, i32 16, i1 false)
  %183 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  %184 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  store i16 -17438, i16* %l_2316, align 2, !tbaa !10
  %185 = load i16, i16* %l_2327, align 2, !tbaa !10
  %186 = add i16 %185, -1
  store i16 %186, i16* %l_2327, align 2, !tbaa !10
  %187 = getelementptr inbounds [4 x i8], [4 x i8]* %l_33, i32 0, i64 0
  %188 = load i8, i8* %187, align 1, !tbaa !9
  %189 = sext i8 %188 to i32
  store i32 %189, i32* %1
  store i32 1, i32* %2
  %190 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast [4 x [4 x i32*]]* %l_2321 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %192) #1
  %193 = bitcast i32* %l_2320 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32** %l_2319 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i32** %l_2318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i32** %l_2317 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i16* %l_2316 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %197) #1
  br label %205
                                                  ; No predecessors!
  %199 = load i64, i64* @g_1539, align 8, !tbaa !7
  %200 = add i64 %199, 1
  store i64 %200, i64* @g_1539, align 8, !tbaa !7
  br label %172

; <label>:201                                     ; preds = %172
  %202 = load i32**, i32*** @g_1163, align 8, !tbaa !5
  %203 = load i32*, i32** %202, align 8, !tbaa !5
  %204 = load volatile i32, i32* %203, align 4, !tbaa !1
  store i32 %204, i32* %1
  store i32 1, i32* %2
  br label %205

; <label>:205                                     ; preds = %201, %175, %152
  %206 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i16* %l_2327 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %209) #1
  %210 = bitcast [1 x [5 x [8 x i32]]]* %l_2326 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %210) #1
  %211 = bitcast i32* %l_2325 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %l_2324 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %l_2323 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i16* %l_2322 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %214) #1
  %215 = bitcast [6 x i16]* %l_2315 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %215) #1
  %216 = bitcast [4 x i8]* %l_33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %l_28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %l_27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast [3 x i32]* %l_2 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %219) #1
  %220 = load i32, i32* %1
  ret i32 %220
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
