; ModuleID = '00215.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_10 = internal global [8 x [5 x [1 x i32]]] [[5 x [1 x i32]] [[1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1], [1 x i32] [i32 924303007], [1 x i32] [i32 -1]]], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"g_10[i][j][k]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_18 = internal global i32 -7, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_18\00", align 1
@g_25 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_25\00", align 1
@g_31 = internal global i32 8, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_31\00", align 1
@g_42 = internal global i16 9166, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_42\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_65.f0\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"g_69.f0\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"g_69.f1\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"g_69.f2\00", align 1
@g_75 = internal global i8 -1, align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_80 = internal global i16 9, align 2
@.str.12 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"g_90.f0\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"g_104[i][j].f0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_106 = internal global i64 -6684730125068525949, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"g_106\00", align 1
@g_114 = internal global [4 x [9 x [1 x i32]]] [[9 x [1 x i32]] [[1 x i32] [i32 -1867370706], [1 x i32] [i32 713278958], [1 x i32] [i32 713278958], [1 x i32] [i32 -432017759], [1 x i32] [i32 997105947], [1 x i32] [i32 -660225911], [1 x i32] [i32 997105947], [1 x i32] [i32 -432017759], [1 x i32] [i32 713278958]], [9 x [1 x i32]] [[1 x i32] [i32 1195317506], [1 x i32] [i32 3], [1 x i32] [i32 3], [1 x i32] [i32 1195317506], [1 x i32] [i32 713278958], [1 x i32] [i32 -432017759], [1 x i32] [i32 997105947], [1 x i32] [i32 -660225911], [1 x i32] [i32 997105947]], [9 x [1 x i32]] [[1 x i32] [i32 -432017759], [1 x i32] [i32 713278958], [1 x i32] [i32 1195317506], [1 x i32] [i32 3], [1 x i32] [i32 3], [1 x i32] [i32 1195317506], [1 x i32] [i32 713278958], [1 x i32] [i32 -432017759], [1 x i32] [i32 997105947]], [9 x [1 x i32]] [[1 x i32] [i32 -660225911], [1 x i32] [i32 997105947], [1 x i32] [i32 -432017759], [1 x i32] [i32 713278958], [1 x i32] [i32 1195317506], [1 x i32] [i32 3], [1 x i32] [i32 3], [1 x i32] [i32 1195317506], [1 x i32] [i32 713278958]]], align 16
@.str.17 = private unnamed_addr constant [15 x i8] c"g_114[i][j][k]\00", align 1
@g_116 = internal global i32 -5, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_116\00", align 1
@g_122 = internal global i64 4660224354404579677, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"g_122\00", align 1
@g_158 = internal global [6 x [6 x [5 x i16]]] [[6 x [5 x i16]] [[5 x i16] [i16 25987, i16 -29936, i16 -29936, i16 25987, i16 -29936], [5 x i16] [i16 -1181, i16 -1, i16 4582, i16 -1, i16 -1181], [5 x i16] [i16 -29936, i16 25987, i16 -29936, i16 -29936, i16 25987], [5 x i16] [i16 -1181, i16 1, i16 -5, i16 -1, i16 -5], [5 x i16] [i16 25987, i16 25987, i16 0, i16 25987, i16 25987], [5 x i16] [i16 -5, i16 -1, i16 -5, i16 1, i16 -1181]], [6 x [5 x i16]] [[5 x i16] [i16 25987, i16 -29936, i16 -29936, i16 25987, i16 -29936], [5 x i16] [i16 -1181, i16 -1, i16 4582, i16 -1, i16 -1181], [5 x i16] [i16 -29936, i16 25987, i16 -29936, i16 -29936, i16 25987], [5 x i16] [i16 -1181, i16 1, i16 -5, i16 -1, i16 -5], [5 x i16] [i16 25987, i16 25987, i16 0, i16 25987, i16 25987], [5 x i16] [i16 -5, i16 -1, i16 -5, i16 1, i16 -1181]], [6 x [5 x i16]] [[5 x i16] [i16 25987, i16 -29936, i16 -29936, i16 25987, i16 -29936], [5 x i16] [i16 -1181, i16 -1, i16 4582, i16 -1, i16 -1181], [5 x i16] [i16 -29936, i16 25987, i16 -29936, i16 -29936, i16 25987], [5 x i16] [i16 -1181, i16 1, i16 -5, i16 -1, i16 -5], [5 x i16] [i16 25987, i16 25987, i16 0, i16 25987, i16 25987], [5 x i16] [i16 -5, i16 -1, i16 -5, i16 1, i16 -1181]], [6 x [5 x i16]] [[5 x i16] [i16 25987, i16 -29936, i16 -29936, i16 25987, i16 -29936], [5 x i16] [i16 -1181, i16 -1, i16 4582, i16 -1, i16 -1181], [5 x i16] [i16 -29936, i16 25987, i16 -29936, i16 -29936, i16 25987], [5 x i16] [i16 -1181, i16 1, i16 -5, i16 -1, i16 -5], [5 x i16] [i16 25987, i16 25987, i16 0, i16 25987, i16 25987], [5 x i16] [i16 -5, i16 -1, i16 -5, i16 1, i16 -1181]], [6 x [5 x i16]] [[5 x i16] [i16 25987, i16 -29936, i16 -29936, i16 25987, i16 -29936], [5 x i16] [i16 -1181, i16 -1, i16 4582, i16 -1, i16 -1181], [5 x i16] [i16 -29936, i16 25987, i16 -29936, i16 -29936, i16 25987], [5 x i16] [i16 -1181, i16 1, i16 -5, i16 -1, i16 -5], [5 x i16] [i16 25987, i16 25987, i16 0, i16 25987, i16 25987], [5 x i16] [i16 -5, i16 -1, i16 -5, i16 1, i16 -1181]], [6 x [5 x i16]] [[5 x i16] [i16 25987, i16 -29936, i16 -29936, i16 25987, i16 -29936], [5 x i16] [i16 -1181, i16 -1, i16 -1181, i16 1, i16 -5], [5 x i16] [i16 0, i16 -29936, i16 0, i16 0, i16 -29936], [5 x i16] [i16 -5, i16 -8335, i16 4582, i16 1, i16 4582], [5 x i16] [i16 -29936, i16 -29936, i16 25987, i16 -29936, i16 -29936], [5 x i16] [i16 4582, i16 1, i16 4582, i16 -8335, i16 -5]]], align 16
@.str.20 = private unnamed_addr constant [15 x i8] c"g_158[i][j][k]\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"g_172.f0\00", align 1
@g_182 = internal global i64 -6160434643620547748, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_182\00", align 1
@g_188 = internal global i8 64, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_188\00", align 1
@g_213 = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_213\00", align 1
@g_253 = internal global i16 22957, align 2
@.str.25 = private unnamed_addr constant [6 x i8] c"g_253\00", align 1
@g_340 = internal global i16 1, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_340\00", align 1
@g_345 = internal global i16 -1504, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_345\00", align 1
@g_361 = internal global i8 34, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_361\00", align 1
@g_396 = internal global i32 -950633714, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_396\00", align 1
@g_399 = internal global i32 1492809233, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_399\00", align 1
@g_462 = internal global i32 -497548849, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_462\00", align 1
@g_463 = internal global i16 8525, align 2
@.str.32 = private unnamed_addr constant [6 x i8] c"g_463\00", align 1
@g_466 = internal global i32 -1, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_466\00", align 1
@g_469 = internal global i8 1, align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_469\00", align 1
@g_481 = internal global i32 2, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_481\00", align 1
@g_482 = internal global i32 -1, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_482\00", align 1
@g_483 = internal global i16 -1, align 2
@.str.37 = private unnamed_addr constant [6 x i8] c"g_483\00", align 1
@g_486 = internal global i32 0, align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"g_486\00", align 1
@g_499 = internal global i8 3, align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"g_499\00", align 1
@g_564 = internal global i32 0, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"g_564\00", align 1
@g_567 = internal global i8 35, align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"g_567\00", align 1
@g_568 = internal global i32 -980904769, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_568\00", align 1
@g_575 = internal global i16 -1, align 2
@.str.43 = private unnamed_addr constant [6 x i8] c"g_575\00", align 1
@g_663 = internal global [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], align 16
@.str.44 = private unnamed_addr constant [9 x i8] c"g_663[i]\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_724 = internal global i64 -7730849948777990315, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"g_724\00", align 1
@g_750 = internal global i16 4012, align 2
@.str.47 = private unnamed_addr constant [6 x i8] c"g_750\00", align 1
@g_772 = internal global i64 9, align 8
@.str.48 = private unnamed_addr constant [6 x i8] c"g_772\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"g_807.f0\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"g_890[i].f0\00", align 1
@g_988 = internal global i32 1000022631, align 4
@.str.51 = private unnamed_addr constant [6 x i8] c"g_988\00", align 1
@g_1171 = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1171\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1199\00", align 1
@g_1289 = internal global i8 104, align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1289\00", align 1
@g_1415 = internal global i16 1, align 2
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1415\00", align 1
@g_1592 = internal global i32 7, align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1592\00", align 1
@g_1655 = internal global i64 8085794844804149771, align 8
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1655\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"g_1794[i].f0\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"g_1841.f0\00", align 1
@g_1922 = internal global i64 3027570481575383554, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1922\00", align 1
@g_1960 = internal global i8 36, align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1960\00", align 1
@g_2006 = internal global i8 -101, align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"g_2006\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_17 = private unnamed_addr constant [8 x [1 x i32*]] [[1 x i32*] [i32* @g_18], [1 x i32*] [i32* @g_18], [1 x i32*] [i32* @g_18], [1 x i32*] [i32* @g_18], [1 x i32*] [i32* @g_18], [1 x i32*] [i32* @g_18], [1 x i32*] [i32* @g_18], [1 x i32*] [i32* @g_18]], align 16
@g_30 = internal constant i32* @g_31, align 8
@g_1232 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [9 x [1 x i32]]]* @g_114 to i8*), i64 36) to i32*), align 8
@g_2009 = internal global i32* @g_481, align 8
@func_26.l_2003 = private unnamed_addr constant [7 x [4 x i32]] [[4 x i32] [i32 6, i32 1206488877, i32 792379544, i32 -1705425997], [4 x i32] [i32 1206488877, i32 -337212592, i32 -1726261666, i32 6], [4 x i32] [i32 1, i32 -1, i32 -1, i32 1], [4 x i32] [i32 1, i32 -1705425997, i32 -1726261666, i32 -1482826656], [4 x i32] [i32 1206488877, i32 1, i32 792379544, i32 -1638518689], [4 x i32] [i32 6, i32 1, i32 6, i32 -1638518689], [4 x i32] [i32 792379544, i32 1, i32 1206488877, i32 -1482826656]], align 16
@g_2001 = internal global i64*** @g_2002, align 8
@g_2002 = internal global i64** null, align 8
@g_1205 = internal global i64**** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [10 x i64***]]* @g_1206 to i8*), i64 104) to i64****), align 8
@g_1379 = internal global i32*** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32**]* @g_1380 to i8*), i64 64) to i32***), align 8
@func_32.l_1942 = private unnamed_addr constant [2 x [10 x i32]] [[10 x i32] [i32 -136715056, i32 810294574, i32 -136715056, i32 810294574, i32 -136715056, i32 810294574, i32 -136715056, i32 810294574, i32 -136715056, i32 810294574], [10 x i32] [i32 -1219423844, i32 810294574, i32 -1219423844, i32 810294574, i32 -1219423844, i32 810294574, i32 -1219423844, i32 810294574, i32 -1219423844, i32 810294574]], align 16
@func_32.l_1994 = private unnamed_addr constant [9 x [10 x [2 x i32*]]] [[10 x [2 x i32*]] [[2 x i32*] [i32* @g_462, i32* null], [2 x i32*] zeroinitializer, [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]], [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25], [2 x i32*] [i32* null, i32* @g_25], [2 x i32*] [i32* @g_25, i32* null], [2 x i32*] [i32* @g_462, i32* @g_462], [2 x i32*] [i32* @g_462, i32* null], [2 x i32*] [i32* @g_25, i32* @g_25]]], align 16
@g_802 = internal global i16** @g_344, align 8
@func_32.l_1897 = private unnamed_addr constant [8 x [2 x i16*]] [[2 x i16*] [i16* @g_253, i16* @g_253], [2 x i16*] [i16* @g_253, i16* @g_253], [2 x i16*] [i16* @g_253, i16* @g_1415], [2 x i16*] [i16* @g_1415, i16* @g_253], [2 x i16*] [i16* @g_253, i16* @g_253], [2 x i16*] [i16* @g_253, i16* @g_253], [2 x i16*] [i16* @g_1415, i16* @g_1415], [2 x i16*] [i16* @g_253, i16* @g_253]], align 16
@g_1424 = internal global i64*** @g_1425, align 8
@g_537 = internal constant i8* @g_499, align 8
@func_32.l_1941 = private unnamed_addr constant [6 x [4 x [3 x i32]]] [[4 x [3 x i32]] [[3 x i32] [i32 -400724108, i32 1, i32 1], [3 x i32] [i32 -400724108, i32 -400724108, i32 1], [3 x i32] [i32 -1, i32 1, i32 1], [3 x i32] [i32 1, i32 -1, i32 1]], [4 x [3 x i32]] [[3 x i32] [i32 -1, i32 -1, i32 -1], [3 x i32] [i32 -400724108, i32 1, i32 1], [3 x i32] [i32 -400724108, i32 -400724108, i32 1], [3 x i32] [i32 -1, i32 1, i32 1]], [4 x [3 x i32]] [[3 x i32] [i32 1, i32 -1, i32 1], [3 x i32] [i32 -1, i32 -1, i32 -1], [3 x i32] [i32 -400724108, i32 1, i32 1], [3 x i32] [i32 -400724108, i32 -400724108, i32 1]], [4 x [3 x i32]] [[3 x i32] [i32 -1, i32 1, i32 1], [3 x i32] [i32 1, i32 -1, i32 1], [3 x i32] [i32 -1, i32 -1, i32 -1], [3 x i32] [i32 -400724108, i32 1, i32 1]], [4 x [3 x i32]] [[3 x i32] [i32 -400724108, i32 -400724108, i32 1], [3 x i32] [i32 -1, i32 1, i32 1], [3 x i32] [i32 1, i32 -1, i32 1], [3 x i32] [i32 -1, i32 -1, i32 -1]], [4 x [3 x i32]] [[3 x i32] [i32 -400724108, i32 1, i32 1], [3 x i32] [i32 -400724108, i32 -400724108, i32 1], [3 x i32] [i32 -1, i32 1, i32 1], [3 x i32] [i32 1, i32 -1, i32 1]]], align 16
@func_32.l_1965 = private unnamed_addr constant [1 x [2 x [4 x i8*]]] [[2 x [4 x i8*]] [[4 x i8*] [i8* @g_567, i8* @g_567, i8* @g_567, i8* @g_567], [4 x i8*] [i8* @g_567, i8* @g_1289, i8* @g_1289, i8* @g_567]]], align 16
@func_32.l_1921 = private unnamed_addr constant [9 x i32] [i32 2021175082, i32 -1, i32 2021175082, i32 -1, i32 2021175082, i32 -1, i32 2021175082, i32 -1, i32 2021175082], align 16
@g_1559 = internal global i16**** getelementptr inbounds ([3 x i16***], [3 x i16***]* @g_1560, i32 0, i32 0), align 8
@g_788 = internal global i8* @g_567, align 8
@g_635 = internal global i16*** @g_636, align 8
@g_344 = internal global i16* @g_345, align 8
@g_1426 = internal global i64* @g_122, align 8
@g_1206 = internal global [3 x [10 x i64***]] [[10 x i64***] [i64*** null, i64*** @g_761, i64*** @g_761, i64*** null, i64*** @g_761, i64*** @g_761, i64*** null, i64*** @g_761, i64*** @g_761, i64*** @g_761], [10 x i64***] [i64*** null, i64*** @g_761, i64*** @g_761, i64*** @g_761, i64*** @g_761, i64*** @g_761, i64*** @g_761, i64*** null, i64*** @g_761, i64*** @g_761], [10 x i64***] [i64*** @g_761, i64*** @g_761, i64*** null, i64*** @g_761, i64*** @g_761, i64*** @g_761, i64*** null, i64*** @g_761, i64*** @g_761, i64*** @g_761]], align 16
@g_761 = internal global i64** null, align 8
@g_1380 = internal global [10 x i32**] [i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**), i32** bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32*]* @g_1145 to i8*), i64 8) to i32**)], align 16
@g_1145 = internal global [4 x i32*] zeroinitializer, align 16
@g_1425 = internal global i64** @g_1426, align 8
@g_1560 = internal global [3 x i16***] [i16*** @g_1561, i16*** @g_1561, i16*** @g_1561], align 16
@g_1561 = internal global i16** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i16*]* @g_1562 to i8*), i64 8) to i16**), align 8
@g_1562 = internal global [2 x i16*] zeroinitializer, align 16
@g_636 = internal global i16** @g_637, align 8
@g_637 = internal global i16* @g_345, align 8
@g_1199 = internal constant i32 1934278204, align 4
@g_1849 = internal global [8 x [10 x i32*]] [[10 x i32*] [i32* @g_116, i32* @g_1199, i32* @g_396, i32* null, i32* null, i32* @g_396, i32* @g_1199, i32* @g_116, i32* @g_396, i32* @g_116], [10 x i32*] [i32* null, i32* @g_116, i32* @g_25, i32* null, i32* @g_25, i32* @g_116, i32* null, i32* @g_25, i32* @g_25, i32* null], [10 x i32*] [i32* @g_25, i32* @g_116, i32* @g_25, i32* @g_25, i32* @g_116, i32* @g_25, i32* @g_116, i32* @g_116, i32* @g_116, i32* @g_25], [10 x i32*] [i32* @g_1199, i32* @g_116, i32* @g_396, i32* @g_116, i32* @g_1199, i32* @g_396, i32* null, i32* null, i32* @g_396, i32* @g_1199], [10 x i32*] [i32* @g_1199, i32* @g_116, i32* @g_116, i32* @g_1199, i32* @g_25, i32* @g_25, i32* @g_1199, i32* @g_25, i32* @g_25, i32* @g_1199], [10 x i32*] [i32* @g_25, i32* @g_1199, i32* @g_25, i32* @g_25, i32* @g_1199, i32* @g_116, i32* @g_116, i32* @g_1199, i32* @g_25, i32* @g_25], [10 x i32*] [i32* null, i32* null, i32* @g_396, i32* @g_1199, i32* @g_116, i32* @g_396, i32* @g_116, i32* @g_1199, i32* @g_396, i32* null], [10 x i32*] [i32* @g_116, i32* @g_116, i32* @g_25, i32* @g_116, i32* @g_25, i32* @g_25, i32* @g_116, i32* @g_25, i32* @g_116, i32* @g_116]], align 16
@func_52.l_651 = private unnamed_addr constant [4 x [7 x [3 x i64*]]] [[7 x [3 x i64*]] [[3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)]], [7 x [3 x i64*]] [[3 x i64*] [i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* null], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* null], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)]], [7 x [3 x i64*]] [[3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* null], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)]], [7 x [3 x i64*]] [[3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* null], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)], [3 x i64*] [i64* null, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0)]]], align 16
@g_786 = internal global [7 x i8***] [i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [5 x i8**]]* @g_787 to i8*), i64 144) to i8***), i8*** null, i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [5 x i8**]]* @g_787 to i8*), i64 144) to i8***), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [5 x i8**]]* @g_787 to i8*), i64 144) to i8***), i8*** null, i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [5 x i8**]]* @g_787 to i8*), i64 144) to i8***), i8*** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x [5 x i8**]]* @g_787 to i8*), i64 144) to i8***)], align 16
@func_52.l_1169 = private unnamed_addr constant [5 x [10 x i32]] [[10 x i32] [i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567], [10 x i32] [i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567], [10 x i32] [i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567], [10 x i32] [i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567], [10 x i32] [i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567, i32 -1258133567]], align 16
@func_52.l_1244 = private unnamed_addr constant [5 x [9 x [5 x i16]]] [[9 x [5 x i16]] [[5 x i16] [i16 0, i16 1, i16 -11852, i16 -3908, i16 0], [5 x i16] [i16 -4, i16 5, i16 -10, i16 -6, i16 14288], [5 x i16] [i16 -17966, i16 -10, i16 19536, i16 -1606, i16 -6], [5 x i16] [i16 0, i16 -7, i16 -6, i16 8057, i16 -10], [5 x i16] [i16 19536, i16 -2, i16 6661, i16 7, i16 -1127], [5 x i16] [i16 -5, i16 -4, i16 -1, i16 1, i16 -1], [5 x i16] [i16 -9, i16 -14426, i16 -17966, i16 1, i16 -10], [5 x i16] [i16 -9, i16 13953, i16 -1606, i16 -2, i16 0], [5 x i16] [i16 -5, i16 -24646, i16 -1, i16 -6, i16 -1]], [9 x [5 x i16]] [[5 x i16] [i16 19536, i16 -10765, i16 -14426, i16 -10, i16 28117], [5 x i16] [i16 0, i16 0, i16 -1, i16 4565, i16 -6], [5 x i16] [i16 -17966, i16 1, i16 15593, i16 -30258, i16 15593], [5 x i16] [i16 -4, i16 -4, i16 -30860, i16 0, i16 -1], [5 x i16] [i16 0, i16 -9, i16 19536, i16 -3, i16 -4044], [5 x i16] [i16 -3, i16 -1, i16 -1606, i16 -3908, i16 -10], [5 x i16] [i16 2, i16 -9, i16 -2, i16 28117, i16 -6], [5 x i16] [i16 -14426, i16 -4, i16 5, i16 -10, i16 -6], [5 x i16] [i16 0, i16 1, i16 -30773, i16 1, i16 14533]], [9 x [5 x i16]] [[5 x i16] [i16 16433, i16 0, i16 -4044, i16 13953, i16 15593], [5 x i16] [i16 -5, i16 -10765, i16 -18005, i16 -10, i16 -7512], [5 x i16] [i16 -1, i16 -24646, i16 -14426, i16 1, i16 -10765], [5 x i16] [i16 -3, i16 13953, i16 -11852, i16 31825, i16 -6], [5 x i16] [i16 6661, i16 -14426, i16 -11852, i16 19523, i16 -1], [5 x i16] [i16 5, i16 -4, i16 -14426, i16 -1606, i16 14288], [5 x i16] [i16 13953, i16 -2, i16 -18005, i16 -3, i16 0], [5 x i16] [i16 -1, i16 -7, i16 -4044, i16 -30258, i16 -1127], [5 x i16] [i16 2, i16 -10, i16 -30773, i16 7, i16 0]], [9 x [5 x i16]] [[5 x i16] [i16 1, i16 5, i16 5, i16 1, i16 -4044], [5 x i16] [i16 -9, i16 1, i16 -2, i16 -1, i16 14533], [5 x i16] [i16 15593, i16 -17966, i16 -1606, i16 -30773, i16 -1], [5 x i16] [i16 -14426, i16 -10765, i16 19536, i16 -1, i16 -1], [5 x i16] [i16 -26548, i16 -14426, i16 -4, i16 5, i16 -10], [5 x i16] [i16 7, i16 -1, i16 21492, i16 -10, i16 0], [5 x i16] [i16 9, i16 -7512, i16 2, i16 -2, i16 -1], [5 x i16] [i16 0, i16 -30258, i16 -6, i16 -24646, i16 -1], [5 x i16] [i16 -1, i16 -11852, i16 -6, i16 28117, i16 31825]], [9 x [5 x i16]] [[5 x i16] [i16 1, i16 -10, i16 28117, i16 6661, i16 -10], [5 x i16] [i16 0, i16 -1, i16 -1, i16 -30860, i16 -10], [5 x i16] [i16 -11446, i16 0, i16 -7976, i16 5, i16 31825], [5 x i16] [i16 -26548, i16 5, i16 9, i16 -27408, i16 -1], [5 x i16] [i16 21492, i16 9, i16 -10765, i16 -15785, i16 -1], [5 x i16] [i16 5, i16 1, i16 0, i16 -9, i16 0], [5 x i16] [i16 -1, i16 -10, i16 -1, i16 -1, i16 -10], [5 x i16] [i16 1, i16 -1, i16 -18005, i16 -5, i16 -7976], [5 x i16] [i16 -1, i16 -7512, i16 -26548, i16 -30773, i16 2]]], align 16
@g_1231 = internal global i32** @g_1232, align 8
@g_801 = internal global i16*** @g_802, align 8
@g_787 = internal global [9 x [5 x i8**]] [[5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788], [5 x i8**] [i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788, i8** @g_788]], align 16
@func_58.l_85 = private unnamed_addr constant [9 x i32] [i32 -855307967, i32 -855307967, i32 -855307967, i32 -855307967, i32 -855307967, i32 -855307967, i32 -855307967, i32 -855307967, i32 -855307967], align 16
@g_169 = internal global %union.U0*** @g_170, align 8
@func_58.l_191 = private unnamed_addr constant [5 x %union.U0****] [%union.U0**** @g_169, %union.U0**** @g_169, %union.U0**** @g_169, %union.U0**** @g_169, %union.U0**** @g_169], align 16
@func_58.l_252 = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 -217515949, i32 1, i32 1, i32 -217515949, i32 1], align 16
@g_102 = internal global %union.U0** @g_103, align 8
@g_170 = internal global %union.U0** @g_171, align 8
@g_171 = internal global %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), align 8
@g_103 = internal global %union.U0* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds (<{ <{ { i8, [7 x i8] }, { i8, [7 x i8] } }>, <{ { i8, [7 x i8] }, { i8, [7 x i8] } }> }>, <{ <{ { i8, [7 x i8] }, { i8, [7 x i8] } }>, <{ { i8, [7 x i8] }, { i8, [7 x i8] } }> }>* @g_104, i32 0, i32 0, i32 0, i32 0), i64 8) to %union.U0*), align 8
@.str.63 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_65 = internal global { i8, [7 x i8] } { i8 -110, [7 x i8] undef }, align 8
@g_69 = internal global { i8, [7 x i8] } { i8 -67, [7 x i8] undef }, align 8
@g_90 = internal global { i8, [7 x i8] } { i8 -8, [7 x i8] undef }, align 8
@g_104 = internal global <{ <{ { i8, [7 x i8] }, { i8, [7 x i8] } }>, <{ { i8, [7 x i8] }, { i8, [7 x i8] } }> }> <{ <{ { i8, [7 x i8] }, { i8, [7 x i8] } }> <{ { i8, [7 x i8] } { i8 119, [7 x i8] undef }, { i8, [7 x i8] } { i8 119, [7 x i8] undef } }>, <{ { i8, [7 x i8] }, { i8, [7 x i8] } }> <{ { i8, [7 x i8] } { i8 119, [7 x i8] undef }, { i8, [7 x i8] } { i8 119, [7 x i8] undef } }> }>, align 16
@g_172 = internal global { i8, [7 x i8] } { i8 -1, [7 x i8] undef }, align 8
@g_807 = internal global { i8, [7 x i8] } { i8 4, [7 x i8] undef }, align 8
@g_890 = internal global <{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }> <{ { i8, [7 x i8] } { i8 1, [7 x i8] undef }, { i8, [7 x i8] } { i8 1, [7 x i8] undef }, { i8, [7 x i8] } { i8 -1, [7 x i8] undef }, { i8, [7 x i8] } { i8 1, [7 x i8] undef }, { i8, [7 x i8] } { i8 1, [7 x i8] undef }, { i8, [7 x i8] } { i8 -1, [7 x i8] undef }, { i8, [7 x i8] } { i8 1, [7 x i8] undef }, { i8, [7 x i8] } { i8 1, [7 x i8] undef } }>, align 16
@g_1794 = internal global <{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }> <{ { i8, [7 x i8] } { i8 -8, [7 x i8] undef }, { i8, [7 x i8] } { i8 -8, [7 x i8] undef }, { i8, [7 x i8] } { i8 -8, [7 x i8] undef }, { i8, [7 x i8] } { i8 -8, [7 x i8] undef }, { i8, [7 x i8] } { i8 -8, [7 x i8] undef } }>, align 16
@g_1841 = internal global { i8, [7 x i8] } { i8 -1, [7 x i8] undef }, align 8
@.str.64 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %131, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %134

; <label>:94                                      ; preds = %91
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %95

; <label>:95                                      ; preds = %127, %94
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = icmp slt i32 %96, 5
  br i1 %97, label %98, label %130

; <label>:98                                      ; preds = %95
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %99

; <label>:99                                      ; preds = %123, %98
  %100 = load i32, i32* %k, align 4, !tbaa !1
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %126

; <label>:102                                     ; preds = %99
  %103 = load i32, i32* %k, align 4, !tbaa !1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %i, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x [5 x [1 x i32]]], [8 x [5 x [1 x i32]]]* @g_10, i32 0, i64 %108
  %110 = getelementptr inbounds [5 x [1 x i32]], [5 x [1 x i32]]* %109, i32 0, i64 %106
  %111 = getelementptr inbounds [1 x i32], [1 x i32]* %110, i32 0, i64 %104
  %112 = load volatile i32, i32* %111, align 4, !tbaa !1
  %113 = zext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %114)
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
  %135 = load i32, i32* @g_18, align 4, !tbaa !1
  %136 = zext i32 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %137)
  %138 = load i32, i32* @g_25, align 4, !tbaa !1
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %140)
  %141 = load i32, i32* @g_31, align 4, !tbaa !1
  %142 = zext i32 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %143)
  %144 = load i16, i16* @g_42, align 2, !tbaa !10
  %145 = sext i16 %144 to i64
  %146 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %146)
  %147 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_65, i32 0, i32 0), align 1, !tbaa !9
  %148 = sext i8 %147 to i64
  %149 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %149)
  %150 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_69, i32 0, i32 0), align 1, !tbaa !9
  %151 = sext i8 %150 to i64
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %152)
  %153 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %154)
  %155 = load volatile i32, i32* bitcast ({ i8, [7 x i8] }* @g_69 to i32*), align 4, !tbaa !1
  %156 = zext i32 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 %157)
  %158 = load i8, i8* @g_75, align 1, !tbaa !9
  %159 = zext i8 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %160)
  %161 = load i16, i16* @g_80, align 2, !tbaa !10
  %162 = zext i16 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %163)
  %164 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_90, i32 0, i32 0), align 1, !tbaa !9
  %165 = sext i8 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %166)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:167                                     ; preds = %196, %134
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %170, label %199

; <label>:170                                     ; preds = %167
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:171                                     ; preds = %192, %170
  %172 = load i32, i32* %j, align 4, !tbaa !1
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %195

; <label>:174                                     ; preds = %171
  %175 = load i32, i32* %j, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x [2 x %union.U0]], [2 x [2 x %union.U0]]* bitcast (<{ <{ { i8, [7 x i8] }, { i8, [7 x i8] } }>, <{ { i8, [7 x i8] }, { i8, [7 x i8] } }> }>* @g_104 to [2 x [2 x %union.U0]]*), i32 0, i64 %178
  %180 = getelementptr inbounds [2 x %union.U0], [2 x %union.U0]* %179, i32 0, i64 %176
  %181 = bitcast %union.U0* %180 to i8*
  %182 = load volatile i8, i8* %181, align 1, !tbaa !9
  %183 = sext i8 %182 to i64
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %184)
  %185 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

; <label>:187                                     ; preds = %174
  %188 = load i32, i32* %i, align 4, !tbaa !1
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i32 %188, i32 %189)
  br label %191

; <label>:191                                     ; preds = %187, %174
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %j, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %j, align 4, !tbaa !1
  br label %171

; <label>:195                                     ; preds = %171
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4, !tbaa !1
  br label %167

; <label>:199                                     ; preds = %167
  %200 = load i64, i64* @g_106, align 8, !tbaa !7
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %201)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %202

; <label>:202                                     ; preds = %242, %199
  %203 = load i32, i32* %i, align 4, !tbaa !1
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %205, label %245

; <label>:205                                     ; preds = %202
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %206

; <label>:206                                     ; preds = %238, %205
  %207 = load i32, i32* %j, align 4, !tbaa !1
  %208 = icmp slt i32 %207, 9
  br i1 %208, label %209, label %241

; <label>:209                                     ; preds = %206
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %210

; <label>:210                                     ; preds = %234, %209
  %211 = load i32, i32* %k, align 4, !tbaa !1
  %212 = icmp slt i32 %211, 1
  br i1 %212, label %213, label %237

; <label>:213                                     ; preds = %210
  %214 = load i32, i32* %k, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = load i32, i32* %j, align 4, !tbaa !1
  %217 = sext i32 %216 to i64
  %218 = load i32, i32* %i, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x [9 x [1 x i32]]], [4 x [9 x [1 x i32]]]* @g_114, i32 0, i64 %219
  %221 = getelementptr inbounds [9 x [1 x i32]], [9 x [1 x i32]]* %220, i32 0, i64 %217
  %222 = getelementptr inbounds [1 x i32], [1 x i32]* %221, i32 0, i64 %215
  %223 = load i32, i32* %222, align 4, !tbaa !1
  %224 = sext i32 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 %225)
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

; <label>:228                                     ; preds = %213
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = load i32, i32* %j, align 4, !tbaa !1
  %231 = load i32, i32* %k, align 4, !tbaa !1
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %229, i32 %230, i32 %231)
  br label %233

; <label>:233                                     ; preds = %228, %213
  br label %234

; <label>:234                                     ; preds = %233
  %235 = load i32, i32* %k, align 4, !tbaa !1
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %k, align 4, !tbaa !1
  br label %210

; <label>:237                                     ; preds = %210
  br label %238

; <label>:238                                     ; preds = %237
  %239 = load i32, i32* %j, align 4, !tbaa !1
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %j, align 4, !tbaa !1
  br label %206

; <label>:241                                     ; preds = %206
  br label %242

; <label>:242                                     ; preds = %241
  %243 = load i32, i32* %i, align 4, !tbaa !1
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %i, align 4, !tbaa !1
  br label %202

; <label>:245                                     ; preds = %202
  %246 = load i32, i32* @g_116, align 4, !tbaa !1
  %247 = sext i32 %246 to i64
  %248 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %248)
  %249 = load i64, i64* @g_122, align 8, !tbaa !7
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %250)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:251                                     ; preds = %291, %245
  %252 = load i32, i32* %i, align 4, !tbaa !1
  %253 = icmp slt i32 %252, 6
  br i1 %253, label %254, label %294

; <label>:254                                     ; preds = %251
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %255

; <label>:255                                     ; preds = %287, %254
  %256 = load i32, i32* %j, align 4, !tbaa !1
  %257 = icmp slt i32 %256, 6
  br i1 %257, label %258, label %290

; <label>:258                                     ; preds = %255
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %259

; <label>:259                                     ; preds = %283, %258
  %260 = load i32, i32* %k, align 4, !tbaa !1
  %261 = icmp slt i32 %260, 5
  br i1 %261, label %262, label %286

; <label>:262                                     ; preds = %259
  %263 = load i32, i32* %k, align 4, !tbaa !1
  %264 = sext i32 %263 to i64
  %265 = load i32, i32* %j, align 4, !tbaa !1
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* %i, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [6 x [6 x [5 x i16]]], [6 x [6 x [5 x i16]]]* @g_158, i32 0, i64 %268
  %270 = getelementptr inbounds [6 x [5 x i16]], [6 x [5 x i16]]* %269, i32 0, i64 %266
  %271 = getelementptr inbounds [5 x i16], [5 x i16]* %270, i32 0, i64 %264
  %272 = load i16, i16* %271, align 2, !tbaa !10
  %273 = sext i16 %272 to i64
  %274 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %273, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 %274)
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

; <label>:277                                     ; preds = %262
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = load i32, i32* %j, align 4, !tbaa !1
  %280 = load i32, i32* %k, align 4, !tbaa !1
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %278, i32 %279, i32 %280)
  br label %282

; <label>:282                                     ; preds = %277, %262
  br label %283

; <label>:283                                     ; preds = %282
  %284 = load i32, i32* %k, align 4, !tbaa !1
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %k, align 4, !tbaa !1
  br label %259

; <label>:286                                     ; preds = %259
  br label %287

; <label>:287                                     ; preds = %286
  %288 = load i32, i32* %j, align 4, !tbaa !1
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %j, align 4, !tbaa !1
  br label %255

; <label>:290                                     ; preds = %255
  br label %291

; <label>:291                                     ; preds = %290
  %292 = load i32, i32* %i, align 4, !tbaa !1
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:294                                     ; preds = %251
  %295 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_172, i32 0, i32 0), align 1, !tbaa !9
  %296 = sext i8 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %297)
  %298 = load volatile i64, i64* @g_182, align 8, !tbaa !7
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %299)
  %300 = load i8, i8* @g_188, align 1, !tbaa !9
  %301 = sext i8 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %302)
  %303 = load i32, i32* @g_213, align 4, !tbaa !1
  %304 = zext i32 %303 to i64
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %305)
  %306 = load i16, i16* @g_253, align 2, !tbaa !10
  %307 = zext i16 %306 to i64
  %308 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %307, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %308)
  %309 = load i16, i16* @g_340, align 2, !tbaa !10
  %310 = sext i16 %309 to i64
  %311 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %310, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %311)
  %312 = load i16, i16* @g_345, align 2, !tbaa !10
  %313 = sext i16 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %314)
  %315 = load i8, i8* @g_361, align 1, !tbaa !9
  %316 = zext i8 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* @g_396, align 4, !tbaa !1
  %319 = sext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %320)
  %321 = load i32, i32* @g_399, align 4, !tbaa !1
  %322 = zext i32 %321 to i64
  %323 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %322, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %323)
  %324 = load i32, i32* @g_462, align 4, !tbaa !1
  %325 = sext i32 %324 to i64
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %326)
  %327 = load i16, i16* @g_463, align 2, !tbaa !10
  %328 = zext i16 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %329)
  %330 = load i32, i32* @g_466, align 4, !tbaa !1
  %331 = zext i32 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %332)
  %333 = load i8, i8* @g_469, align 1, !tbaa !9
  %334 = zext i8 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %335)
  %336 = load i32, i32* @g_481, align 4, !tbaa !1
  %337 = sext i32 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %338)
  %339 = load i32, i32* @g_482, align 4, !tbaa !1
  %340 = sext i32 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %341)
  %342 = load i16, i16* @g_483, align 2, !tbaa !10
  %343 = zext i16 %342 to i64
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %344)
  %345 = load i32, i32* @g_486, align 4, !tbaa !1
  %346 = zext i32 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %347)
  %348 = load i8, i8* @g_499, align 1, !tbaa !9
  %349 = sext i8 %348 to i64
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %350)
  %351 = load i32, i32* @g_564, align 4, !tbaa !1
  %352 = zext i32 %351 to i64
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %353)
  %354 = load i8, i8* @g_567, align 1, !tbaa !9
  %355 = sext i8 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %356)
  %357 = load i32, i32* @g_568, align 4, !tbaa !1
  %358 = zext i32 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %359)
  %360 = load i16, i16* @g_575, align 2, !tbaa !10
  %361 = zext i16 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %362)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %363

; <label>:363                                     ; preds = %379, %294
  %364 = load i32, i32* %i, align 4, !tbaa !1
  %365 = icmp slt i32 %364, 4
  br i1 %365, label %366, label %382

; <label>:366                                     ; preds = %363
  %367 = load i32, i32* %i, align 4, !tbaa !1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [4 x i32], [4 x i32]* @g_663, i32 0, i64 %368
  %370 = load i32, i32* %369, align 4, !tbaa !1
  %371 = zext i32 %370 to i64
  %372 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %371, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %372)
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

; <label>:375                                     ; preds = %366
  %376 = load i32, i32* %i, align 4, !tbaa !1
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32 %376)
  br label %378

; <label>:378                                     ; preds = %375, %366
  br label %379

; <label>:379                                     ; preds = %378
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %i, align 4, !tbaa !1
  br label %363

; <label>:382                                     ; preds = %363
  %383 = load i64, i64* @g_724, align 8, !tbaa !7
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %383, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %384)
  %385 = load i16, i16* @g_750, align 2, !tbaa !10
  %386 = sext i16 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %387)
  %388 = load volatile i64, i64* @g_772, align 8, !tbaa !7
  %389 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %389)
  %390 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_807, i32 0, i32 0), align 1, !tbaa !9
  %391 = sext i8 %390 to i64
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %391, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 %392)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %410, %382
  %394 = load i32, i32* %i, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 8
  br i1 %395, label %396, label %413

; <label>:396                                     ; preds = %393
  %397 = load i32, i32* %i, align 4, !tbaa !1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_890 to [8 x %union.U0]*), i32 0, i64 %398
  %400 = bitcast %union.U0* %399 to i8*
  %401 = load volatile i8, i8* %400, align 1, !tbaa !9
  %402 = sext i8 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 %403)
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

; <label>:406                                     ; preds = %396
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32 %407)
  br label %409

; <label>:409                                     ; preds = %406, %396
  br label %410

; <label>:410                                     ; preds = %409
  %411 = load i32, i32* %i, align 4, !tbaa !1
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %i, align 4, !tbaa !1
  br label %393

; <label>:413                                     ; preds = %393
  %414 = load i32, i32* @g_988, align 4, !tbaa !1
  %415 = zext i32 %414 to i64
  %416 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %415, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 %416)
  %417 = load i32, i32* @g_1171, align 4, !tbaa !1
  %418 = zext i32 %417 to i64
  %419 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %419)
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1934278204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %420)
  %421 = load i8, i8* @g_1289, align 1, !tbaa !9
  %422 = sext i8 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %423)
  %424 = load i16, i16* @g_1415, align 2, !tbaa !10
  %425 = zext i16 %424 to i64
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %426)
  %427 = load i32, i32* @g_1592, align 4, !tbaa !1
  %428 = sext i32 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %429)
  %430 = load i64, i64* @g_1655, align 8, !tbaa !7
  %431 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %430, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %431)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %432

; <label>:432                                     ; preds = %449, %413
  %433 = load i32, i32* %i, align 4, !tbaa !1
  %434 = icmp slt i32 %433, 5
  br i1 %434, label %435, label %452

; <label>:435                                     ; preds = %432
  %436 = load i32, i32* %i, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [5 x %union.U0], [5 x %union.U0]* bitcast (<{ { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] }, { i8, [7 x i8] } }>* @g_1794 to [5 x %union.U0]*), i32 0, i64 %437
  %439 = bitcast %union.U0* %438 to i8*
  %440 = load volatile i8, i8* %439, align 1, !tbaa !9
  %441 = sext i8 %440 to i64
  %442 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %441, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i32 %442)
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

; <label>:445                                     ; preds = %435
  %446 = load i32, i32* %i, align 4, !tbaa !1
  %447 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32 %446)
  br label %448

; <label>:448                                     ; preds = %445, %435
  br label %449

; <label>:449                                     ; preds = %448
  %450 = load i32, i32* %i, align 4, !tbaa !1
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %i, align 4, !tbaa !1
  br label %432

; <label>:452                                     ; preds = %432
  %453 = load volatile i8, i8* getelementptr inbounds ({ i8, [7 x i8] }, { i8, [7 x i8] }* @g_1841, i32 0, i32 0), align 1, !tbaa !9
  %454 = sext i8 %453 to i64
  %455 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %454, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %455)
  %456 = load i64, i64* @g_1922, align 8, !tbaa !7
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %457)
  %458 = load i8, i8* @g_1960, align 1, !tbaa !9
  %459 = zext i8 %458 to i64
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %459, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %460)
  %461 = load i8, i8* @g_2006, align 1, !tbaa !9
  %462 = sext i8 %461 to i64
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %462, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %463)
  %464 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %465 = zext i32 %464 to i64
  %466 = xor i64 %465, 4294967295
  %467 = trunc i64 %466 to i32
  %468 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %467, i32 %468)
  %469 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  %470 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #1
  %471 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
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
  %l_16 = alloca i32*, align 8
  %l_17 = alloca [8 x [1 x i32*]], align 16
  %l_19 = alloca i32, align 4
  %l_20 = alloca i32, align 4
  %l_41 = alloca i16*, align 8
  %l_78 = alloca i16*, align 8
  %l_79 = alloca i16*, align 8
  %l_1850 = alloca i64, align 8
  %l_1996 = alloca i32**, align 8
  %l_2007 = alloca i32*, align 8
  %l_2008 = alloca i32*, align 8
  %l_2010 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32** %l_16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32* null, i32** %l_16, align 8, !tbaa !5
  %2 = bitcast [8 x [1 x i32*]]* %l_17 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [8 x [1 x i32*]]* %l_17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([8 x [1 x i32*]]* @func_1.l_17 to i8*), i64 64, i32 16, i1 false)
  %4 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %l_19, align 4, !tbaa !1
  %5 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -1969040564, i32* %l_20, align 4, !tbaa !1
  %6 = bitcast i16** %l_41 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_42, i16** %l_41, align 8, !tbaa !5
  %7 = bitcast i16** %l_78 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16* null, i16** %l_78, align 8, !tbaa !5
  %8 = bitcast i16** %l_79 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* @g_80, i16** %l_79, align 8, !tbaa !5
  %9 = bitcast i64* %l_1850 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 0, i64* %l_1850, align 8, !tbaa !7
  %10 = bitcast i32*** %l_1996 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %l_17, i32 0, i64 1
  %12 = getelementptr inbounds [1 x i32*], [1 x i32*]* %11, i32 0, i64 0
  store i32** %12, i32*** %l_1996, align 8, !tbaa !5
  %13 = bitcast i32** %l_2007 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* null, i32** %l_2007, align 8, !tbaa !5
  %14 = bitcast i32** %l_2008 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_462, i32** %l_2008, align 8, !tbaa !5
  %15 = bitcast i32* %l_2010 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 211082962, i32* %l_2010, align 4, !tbaa !1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load volatile i32, i32* getelementptr inbounds ([8 x [5 x [1 x i32]]], [8 x [5 x [1 x i32]]]* @g_10, i32 0, i64 6, i64 0, i64 0), align 4, !tbaa !1
  %19 = load i32, i32* @g_18, align 4, !tbaa !1
  %20 = add i32 %19, -1
  store i32 %20, i32* @g_18, align 4, !tbaa !1
  %21 = load i32, i32* @g_25, align 4, !tbaa !1
  %22 = trunc i32 %21 to i8
  %23 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %22, i8 zeroext -33)
  %24 = load i32*, i32** @g_30, align 8, !tbaa !5
  %25 = load i32*, i32** %l_16, align 8, !tbaa !5
  %26 = load i32, i32* @g_31, align 4, !tbaa !1
  %27 = load i16*, i16** %l_41, align 8, !tbaa !5
  %28 = load i16, i16* %27, align 2, !tbaa !10
  %29 = sext i16 %28 to i32
  %30 = or i32 %29, %26
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %27, align 2, !tbaa !10
  %32 = load i32, i32* @g_31, align 4, !tbaa !1
  %33 = load i32, i32* @g_25, align 4, !tbaa !1
  %34 = trunc i32 %33 to i8
  %35 = load i32*, i32** @g_30, align 8, !tbaa !5
  %36 = load i32, i32* %35, align 4, !tbaa !1
  %37 = call i32 @func_60(i8 zeroext %34, i32 %36)
  %38 = icmp eq i32 %32, %37
  %39 = zext i1 %38 to i32
  %40 = trunc i32 %39 to i16
  %41 = load i16*, i16** %l_79, align 8, !tbaa !5
  store i16 %40, i16* %41, align 2, !tbaa !10
  %42 = call i32 @func_58(i16 zeroext %40)
  %43 = load i16*, i16** %l_41, align 8, !tbaa !5
  %44 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %l_17, i32 0, i64 3
  %45 = getelementptr inbounds [1 x i32*], [1 x i32*]* %44, i32 0, i64 0
  %46 = load i32*, i32** %45, align 8, !tbaa !5
  %47 = call i16* @func_52(i32 0, i16* %43, i32* %46, i16* getelementptr inbounds ([6 x [6 x [5 x i16]]], [6 x [6 x [5 x i16]]]* @g_158, i32 0, i64 0, i64 5, i64 2), i16* getelementptr inbounds ([6 x [6 x [5 x i16]]], [6 x [6 x [5 x i16]]]* @g_158, i32 0, i64 2, i64 5, i64 4))
  %48 = getelementptr inbounds [8 x [1 x i32*]], [8 x [1 x i32*]]* %l_17, i32 0, i64 0
  %49 = getelementptr inbounds [1 x i32*], [1 x i32*]* %48, i32 0, i64 0
  %50 = load i32*, i32** %49, align 8, !tbaa !5
  %51 = load i32, i32* %l_20, align 4, !tbaa !1
  %52 = trunc i32 %51 to i8
  %53 = load i32, i32* %l_19, align 4, !tbaa !1
  %54 = trunc i32 %53 to i16
  %55 = call i64 @func_46(i16* %47, i32* %50, i8 zeroext %52, i32* @g_988, i16 signext %54)
  %56 = load i64, i64* %l_1850, align 8, !tbaa !7
  %57 = trunc i64 %56 to i16
  %58 = call zeroext i16 @func_43(i64 %55, i16 zeroext %57)
  %59 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %31, i16 signext %58)
  %60 = sext i16 %59 to i32
  %61 = load i32, i32* %l_20, align 4, !tbaa !1
  %62 = xor i32 %60, %61
  %63 = load i64, i64* %l_1850, align 8, !tbaa !7
  %64 = load i32, i32* %l_20, align 4, !tbaa !1
  %65 = load i32, i32* %l_20, align 4, !tbaa !1
  %66 = load i32, i32* %l_19, align 4, !tbaa !1
  %67 = sext i32 %66 to i64
  %68 = call i32* @func_32(i16 zeroext 28897, i32 %64, i32* @g_988, i32 %65, i64 %67)
  %69 = load i32**, i32*** %l_1996, align 8, !tbaa !5
  store i32* %68, i32** %69, align 8, !tbaa !5
  %70 = call i64 @func_26(i32* %24, i32* %25, i32* %68)
  %71 = load i32, i32* %l_19, align 4, !tbaa !1
  %72 = trunc i32 %71 to i8
  %73 = call i64 @func_11(i32 %19, i8 zeroext %23, i64 %70, i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %0
  br label %76

; <label>:76                                      ; preds = %75, %0
  %77 = phi i1 [ false, %0 ], [ true, %75 ]
  %78 = zext i1 %77 to i32
  %79 = xor i32 %18, %78
  %80 = zext i32 %79 to i64
  %81 = xor i64 %80, 37285
  %82 = load i32, i32* %l_19, align 4, !tbaa !1
  %83 = sext i32 %82 to i64
  %84 = icmp ne i64 %81, %83
  %85 = zext i1 %84 to i32
  %86 = load i32*, i32** @g_1232, align 8, !tbaa !5
  store i32 %85, i32* %86, align 4, !tbaa !1
  %87 = call i32 @func_8(i32 %85)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

; <label>:89                                      ; preds = %76
  br label %90

; <label>:90                                      ; preds = %89, %76
  %91 = phi i1 [ true, %76 ], [ true, %89 ]
  %92 = zext i1 %91 to i32
  %93 = trunc i32 %92 to i8
  %94 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %93, i8 signext -1)
  %95 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %94, i8 zeroext -32)
  %96 = zext i8 %95 to i64
  %97 = load i64, i64* %l_1850, align 8, !tbaa !7
  %98 = icmp ne i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = call i64 @safe_div_func_int64_t_s_s(i64 %100, i64 1)
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %l_2008, align 8, !tbaa !5
  store i32 %102, i32* %103, align 4, !tbaa !1
  %104 = load volatile i32*, i32** @g_2009, align 8, !tbaa !5
  store i32 %102, i32* %104, align 4, !tbaa !1
  %105 = load i32, i32* %l_2010, align 4, !tbaa !1
  %106 = trunc i32 %105 to i8
  %107 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %l_2010 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32** %l_2008 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32** %l_2007 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32*** %l_1996 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i64* %l_1850 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i16** %l_79 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i16** %l_78 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i16** %l_41 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast [8 x [1 x i32*]]* %l_17 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %119) #1
  %120 = bitcast i32** %l_16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  ret i8 %106
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal i32 @func_8(i32 %p_9) #0 {
  %1 = alloca i32, align 4
  store i32 %p_9, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @func_11(i32 %p_12, i8 zeroext %p_13, i64 %p_14, i8 signext %p_15) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %l_2004 = alloca [3 x i16], align 2
  %l_2005 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %p_12, i32* %1, align 4, !tbaa !1
  store i8 %p_13, i8* %2, align 1, !tbaa !9
  store i64 %p_14, i64* %3, align 8, !tbaa !7
  store i8 %p_15, i8* %4, align 1, !tbaa !9
  %5 = bitcast [3 x i16]* %l_2004 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %5) #1
  %6 = bitcast i32* %l_2005 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -1872214260, i32* %l_2005, align 4, !tbaa !1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %8

; <label>:8                                       ; preds = %15, %0
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x i16], [3 x i16]* %l_2004, i32 0, i64 %13
  store i16 -3, i16* %14, align 2, !tbaa !10
  br label %15

; <label>:15                                      ; preds = %11
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %i, align 4, !tbaa !1
  br label %8

; <label>:18                                      ; preds = %8
  %19 = getelementptr inbounds [3 x i16], [3 x i16]* %l_2004, i32 0, i64 1
  %20 = load i16, i16* %19, align 2, !tbaa !10
  %21 = sext i16 %20 to i32
  store i32 %21, i32* %l_2005, align 4, !tbaa !1
  %22 = load i8, i8* @g_2006, align 1, !tbaa !9
  %23 = sext i8 %22 to i64
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %l_2005 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast [3 x i16]* %l_2004 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %26) #1
  ret i64 %23
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
define internal i64 @func_26(i32* %p_27, i32* %p_28, i32* %p_29) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %l_1999 = alloca i64*, align 8
  %l_1998 = alloca i64**, align 8
  %l_1997 = alloca i64***, align 8
  %l_2000 = alloca [7 x i64****], align 16
  %l_2003 = alloca [7 x [4 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %p_27, i32** %1, align 8, !tbaa !5
  store i32* %p_28, i32** %2, align 8, !tbaa !5
  store i32* %p_29, i32** %3, align 8, !tbaa !5
  %4 = bitcast i64** %l_1999 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), i64** %l_1999, align 8, !tbaa !5
  %5 = bitcast i64*** %l_1998 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64** %l_1999, i64*** %l_1998, align 8, !tbaa !5
  %6 = bitcast i64**** %l_1997 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64*** %l_1998, i64**** %l_1997, align 8, !tbaa !5
  %7 = bitcast [7 x i64****]* %l_2000 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %7) #1
  %8 = getelementptr inbounds [7 x i64****], [7 x i64****]* %l_2000, i64 0, i64 0
  store i64**** %l_1997, i64***** %8, !tbaa !5
  %9 = getelementptr inbounds i64****, i64***** %8, i64 1
  store i64**** %l_1997, i64***** %9, !tbaa !5
  %10 = getelementptr inbounds i64****, i64***** %9, i64 1
  store i64**** %l_1997, i64***** %10, !tbaa !5
  %11 = getelementptr inbounds i64****, i64***** %10, i64 1
  store i64**** %l_1997, i64***** %11, !tbaa !5
  %12 = getelementptr inbounds i64****, i64***** %11, i64 1
  store i64**** %l_1997, i64***** %12, !tbaa !5
  %13 = getelementptr inbounds i64****, i64***** %12, i64 1
  store i64**** %l_1997, i64***** %13, !tbaa !5
  %14 = getelementptr inbounds i64****, i64***** %13, i64 1
  store i64**** %l_1997, i64***** %14, !tbaa !5
  %15 = bitcast [7 x [4 x i32]]* %l_2003 to i8*
  call void @llvm.lifetime.start(i64 112, i8* %15) #1
  %16 = bitcast [7 x [4 x i32]]* %l_2003 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([7 x [4 x i32]]* @func_26.l_2003 to i8*), i64 112, i32 16, i1 false)
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i64***, i64**** %l_1997, align 8, !tbaa !5
  store i64*** %19, i64**** @g_2001, align 8, !tbaa !5
  %20 = getelementptr inbounds [7 x [4 x i32]], [7 x [4 x i32]]* %l_2003, i32 0, i64 1
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i32 0, i64 1
  %22 = load i32, i32* %21, align 4, !tbaa !1
  %23 = sext i32 %22 to i64
  %24 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast [7 x [4 x i32]]* %l_2003 to i8*
  call void @llvm.lifetime.end(i64 112, i8* %26) #1
  %27 = bitcast [7 x i64****]* %l_2000 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %27) #1
  %28 = bitcast i64**** %l_1997 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i64*** %l_1998 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i64** %l_1999 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define internal i32* @func_32(i16 zeroext %p_33, i32 %p_34, i32* %p_35, i32 %p_36, i64 %p_37) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %l_1857 = alloca i32*, align 8
  %l_1863 = alloca i32*, align 8
  %l_1862 = alloca i32**, align 8
  %l_1864 = alloca i32**, align 8
  %l_1865 = alloca i32, align 4
  %l_1938 = alloca [1 x i64*****], align 8
  %l_1992 = alloca i8, align 1
  %l_1995 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_1886 = alloca i64, align 8
  %l_1942 = alloca [2 x [10 x i32]], align 16
  %l_1993 = alloca i16*, align 8
  %l_1994 = alloca [9 x [10 x [2 x i32*]]], align 16
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1893 = alloca i16***, align 8
  %l_1896 = alloca i64*, align 8
  %l_1897 = alloca [8 x [2 x i16*]], align 16
  %l_1898 = alloca i64*, align 8
  %l_1899 = alloca [1 x i32], align 4
  %l_1901 = alloca %union.U0***, align 8
  %l_1917 = alloca i32, align 4
  %l_1920 = alloca i32, align 4
  %l_1964 = alloca i32, align 4
  %l_1968 = alloca i8*, align 8
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %l_1924 = alloca i16, align 2
  %l_1940 = alloca i32, align 4
  %l_1941 = alloca [6 x [4 x [3 x i32]]], align 16
  %l_1965 = alloca [1 x [2 x [4 x i8*]]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %l_1900 = alloca i32, align 4
  %l_1902 = alloca %union.U0****, align 8
  %l_1939 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %7 = alloca i32
  %l_1921 = alloca [9 x i32], align 16
  %l_1923 = alloca i8*, align 8
  %l_1925 = alloca i32*, align 8
  %l_1961 = alloca i64*, align 8
  %l_1962 = alloca i64*, align 8
  %l_1963 = alloca i64*, align 8
  %l_1966 = alloca i8**, align 8
  %l_1967 = alloca i8**, align 8
  %l_1969 = alloca i16****, align 8
  %i8 = alloca i32, align 4
  store i16 %p_33, i16* %2, align 2, !tbaa !10
  store i32 %p_34, i32* %3, align 4, !tbaa !1
  store i32* %p_35, i32** %4, align 8, !tbaa !5
  store i32 %p_36, i32* %5, align 4, !tbaa !1
  store i64 %p_37, i64* %6, align 8, !tbaa !7
  %8 = bitcast i32** %l_1857 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_399, i32** %l_1857, align 8, !tbaa !5
  %9 = bitcast i32** %l_1863 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* getelementptr inbounds ([4 x [9 x [1 x i32]]], [4 x [9 x [1 x i32]]]* @g_114, i32 0, i64 1, i64 6, i64 0), i32** %l_1863, align 8, !tbaa !5
  %10 = bitcast i32*** %l_1862 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** %l_1863, i32*** %l_1862, align 8, !tbaa !5
  %11 = bitcast i32*** %l_1864 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32** @g_1232, i32*** %l_1864, align 8, !tbaa !5
  %12 = bitcast i32* %l_1865 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -10, i32* %l_1865, align 4, !tbaa !1
  %13 = bitcast [1 x i64*****]* %l_1938 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1992) #1
  store i8 -5, i8* %l_1992, align 1, !tbaa !9
  %14 = bitcast i32* %l_1995 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %l_1995, align 4, !tbaa !1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:16                                      ; preds = %23, %0
  %17 = load i32, i32* %i, align 4, !tbaa !1
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1 x i64*****], [1 x i64*****]* %l_1938, i32 0, i64 %21
  store i64***** @g_1205, i64****** %22, align 8, !tbaa !5
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4, !tbaa !1
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i, align 4, !tbaa !1
  br label %16

; <label>:26                                      ; preds = %16
  %27 = load i32*, i32** %l_1857, align 8, !tbaa !5
  %28 = load i32*, i32** %l_1857, align 8, !tbaa !5
  %29 = icmp eq i32* %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i16, i16* %2, align 2, !tbaa !10
  %32 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %31, i16 signext 8)
  %33 = load i8, i8* @g_75, align 1, !tbaa !9
  %34 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %33, i8 zeroext 88)
  %35 = load i32**, i32*** %l_1862, align 8, !tbaa !5
  %36 = load i32**, i32*** %l_1864, align 8, !tbaa !5
  store i32** %36, i32*** %l_1864, align 8, !tbaa !5
  %37 = icmp ne i32** %35, %36
  br i1 %37, label %41, label %38

; <label>:38                                      ; preds = %26
  %39 = load i32, i32* %l_1865, align 4, !tbaa !1
  %40 = icmp ne i32 %39, 0
  br label %41

; <label>:41                                      ; preds = %38, %26
  %42 = phi i1 [ true, %26 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** @g_30, align 8, !tbaa !5
  %45 = load i32, i32* %44, align 4, !tbaa !1
  %46 = xor i32 %45, %43
  store i32 %46, i32* %44, align 4, !tbaa !1
  %47 = load i16, i16* %2, align 2, !tbaa !10
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = and i32 %30, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4, !tbaa !1
  store i8 0, i8* @g_499, align 1, !tbaa !9
  br label %54

; <label>:54                                      ; preds = %61, %41
  %55 = load i8, i8* @g_499, align 1, !tbaa !9
  %56 = sext i8 %55 to i32
  %57 = icmp sle i32 %56, -26
  br i1 %57, label %58, label %64

; <label>:58                                      ; preds = %54
  %59 = load i32***, i32**** @g_1379, align 8, !tbaa !5
  %60 = load i32**, i32*** %59, align 8, !tbaa !5
  store i32* %3, i32** %60, align 8, !tbaa !5
  br label %61

; <label>:61                                      ; preds = %58
  %62 = load i8, i8* @g_499, align 1, !tbaa !9
  %63 = add i8 %62, -1
  store i8 %63, i8* @g_499, align 1, !tbaa !9
  br label %54

; <label>:64                                      ; preds = %54
  store i8 25, i8* @g_499, align 1, !tbaa !9
  br label %65

; <label>:65                                      ; preds = %652, %64
  %66 = load i8, i8* @g_499, align 1, !tbaa !9
  %67 = sext i8 %66 to i32
  %68 = icmp sgt i32 %67, -13
  br i1 %68, label %69, label %655

; <label>:69                                      ; preds = %65
  %70 = bitcast i64* %l_1886 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i64 7650316528502461879, i64* %l_1886, align 8, !tbaa !7
  %71 = bitcast [2 x [10 x i32]]* %l_1942 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %71) #1
  %72 = bitcast [2 x [10 x i32]]* %l_1942 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* bitcast ([2 x [10 x i32]]* @func_32.l_1942 to i8*), i64 80, i32 16, i1 false)
  %73 = bitcast i16** %l_1993 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  store i16* @g_80, i16** %l_1993, align 8, !tbaa !5
  %74 = bitcast [9 x [10 x [2 x i32*]]]* %l_1994 to i8*
  call void @llvm.lifetime.start(i64 1440, i8* %74) #1
  %75 = bitcast [9 x [10 x [2 x i32*]]]* %l_1994 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* bitcast ([9 x [10 x [2 x i32*]]]* @func_32.l_1994 to i8*), i64 1440, i32 16, i1 false)
  %76 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  store i64 0, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_807 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  br label %79

; <label>:79                                      ; preds = %566, %69
  %80 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_807 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  %81 = icmp uge i64 %80, 38
  br i1 %81, label %82, label %569

; <label>:82                                      ; preds = %79
  %83 = bitcast i16**** %l_1893 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  store i16*** @g_802, i16**** %l_1893, align 8, !tbaa !5
  %84 = bitcast i64** %l_1896 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %84) #1
  store i64* @g_1655, i64** %l_1896, align 8, !tbaa !5
  %85 = bitcast [8 x [2 x i16*]]* %l_1897 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %85) #1
  %86 = bitcast [8 x [2 x i16*]]* %l_1897 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* bitcast ([8 x [2 x i16*]]* @func_32.l_1897 to i8*), i64 128, i32 16, i1 false)
  %87 = bitcast i64** %l_1898 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  store i64* @g_106, i64** %l_1898, align 8, !tbaa !5
  %88 = bitcast [1 x i32]* %l_1899 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = bitcast %union.U0**** %l_1901 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  store %union.U0*** null, %union.U0**** %l_1901, align 8, !tbaa !5
  %90 = bitcast i32* %l_1917 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  store i32 1, i32* %l_1917, align 4, !tbaa !1
  %91 = bitcast i32* %l_1920 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  store i32 -677204291, i32* %l_1920, align 4, !tbaa !1
  %92 = bitcast i32* %l_1964 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  store i32 -2082457919, i32* %l_1964, align 4, !tbaa !1
  %93 = bitcast i8** %l_1968 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i8* @g_188, i8** %l_1968, align 8, !tbaa !5
  %94 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %96

; <label>:96                                      ; preds = %103, %82
  %97 = load i32, i32* %i2, align 4, !tbaa !1
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %99, label %106

; <label>:99                                      ; preds = %96
  %100 = load i32, i32* %i2, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 %101
  store i32 667465655, i32* %102, align 4, !tbaa !1
  br label %103

; <label>:103                                     ; preds = %99
  %104 = load i32, i32* %i2, align 4, !tbaa !1
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %i2, align 4, !tbaa !1
  br label %96

; <label>:106                                     ; preds = %96
  %107 = load i64, i64* %l_1886, align 8, !tbaa !7
  %108 = load i32, i32* %l_1865, align 4, !tbaa !1
  %109 = sext i32 %108 to i64
  %110 = and i64 %107, %109
  %111 = load i64***, i64**** @g_1424, align 8, !tbaa !5
  %112 = load i64**, i64*** %111, align 8, !tbaa !5
  %113 = load i64*, i64** %112, align 8, !tbaa !5
  store i64 %110, i64* %113, align 8, !tbaa !7
  %114 = load i16***, i16**** %l_1893, align 8, !tbaa !5
  %115 = load i16***, i16**** %l_1893, align 8, !tbaa !5
  %116 = icmp ne i16*** %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %6, align 8, !tbaa !7
  %119 = trunc i64 %118 to i8
  %120 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %119, i8 signext -83)
  %121 = sext i8 %120 to i64
  %122 = load i64*, i64** %l_1896, align 8, !tbaa !5
  store i64 %121, i64* %122, align 8, !tbaa !7
  %123 = load i32, i32* %l_1865, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = or i64 %121, %124
  %126 = load i16, i16* @g_1415, align 2, !tbaa !10
  %127 = zext i16 %126 to i64
  %128 = or i64 %127, %125
  %129 = trunc i64 %128 to i16
  store i16 %129, i16* @g_1415, align 2, !tbaa !10
  %130 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %129, i16 zeroext -1)
  %131 = trunc i16 %130 to i8
  %132 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %131, i32 0)
  %133 = sext i8 %132 to i32
  %134 = load i32, i32* %l_1865, align 4, !tbaa !1
  %135 = icmp sgt i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = trunc i32 %136 to i16
  %138 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext %137)
  %139 = zext i16 %138 to i32
  %140 = load i32, i32* %l_1865, align 4, !tbaa !1
  %141 = icmp sgt i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = icmp sle i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = sext i32 %145 to i64
  %147 = load i64*, i64** %l_1898, align 8, !tbaa !5
  %148 = load i64, i64* %147, align 8, !tbaa !7
  %149 = and i64 %148, %146
  store i64 %149, i64* %147, align 8, !tbaa !7
  %150 = icmp sge i64 %110, %149
  %151 = zext i1 %150 to i32
  %152 = trunc i32 %151 to i16
  %153 = load i16, i16* %2, align 2, !tbaa !10
  %154 = zext i16 %153 to i32
  %155 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %152, i32 %154)
  %156 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %155, i16 signext -1)
  %157 = sext i16 %156 to i32
  %158 = load i32*, i32** %4, align 8, !tbaa !5
  %159 = load i32, i32* %158, align 4, !tbaa !1
  %160 = and i32 %157, %159
  %161 = load i8*, i8** @g_537, align 8, !tbaa !5
  %162 = load i8, i8* %161, align 1, !tbaa !9
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %169

; <label>:165                                     ; preds = %106
  %166 = load i32*, i32** %4, align 8, !tbaa !5
  %167 = load i32, i32* %166, align 4, !tbaa !1
  %168 = icmp ne i32 %167, 0
  br label %169

; <label>:169                                     ; preds = %165, %106
  %170 = phi i1 [ false, %106 ], [ %168, %165 ]
  %171 = zext i1 %170 to i32
  %172 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 0
  %173 = load i32, i32* %172, align 4, !tbaa !1
  %174 = icmp slt i32 %171, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* @g_106, align 8, !tbaa !7
  %177 = and i64 %176, 20224
  %178 = load i64, i64* %6, align 8, !tbaa !7
  %179 = trunc i64 %178 to i16
  store i16 %179, i16* %2, align 2, !tbaa !10
  %180 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %179, i32 13)
  %181 = zext i16 %180 to i64
  %182 = load i32, i32* %3, align 4, !tbaa !1
  %183 = sext i32 %182 to i64
  %184 = call i64 @safe_sub_func_int64_t_s_s(i64 %181, i64 %183)
  %185 = trunc i64 %184 to i8
  %186 = load i32, i32* %5, align 4, !tbaa !1
  %187 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %185, i32 %186)
  %188 = load i64, i64* %6, align 8, !tbaa !7
  %189 = call i64 @safe_mod_func_uint64_t_u_u(i64 5090661226139888473, i64 %188)
  %190 = load i32, i32* %3, align 4, !tbaa !1
  %191 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext 0, i32 %190)
  %192 = sext i16 %191 to i32
  %193 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 0
  store i32 %192, i32* %193, align 4, !tbaa !1
  store i64 0, i64* %6, align 8, !tbaa !7
  br label %194

; <label>:194                                     ; preds = %544, %169
  %195 = load i64, i64* %6, align 8, !tbaa !7
  %196 = icmp ule i64 %195, 1
  br i1 %196, label %197, label %547

; <label>:197                                     ; preds = %194
  %198 = bitcast i16* %l_1924 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %198) #1
  store i16 0, i16* %l_1924, align 2, !tbaa !10
  %199 = bitcast i32* %l_1940 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  store i32 -1720798154, i32* %l_1940, align 4, !tbaa !1
  %200 = bitcast [6 x [4 x [3 x i32]]]* %l_1941 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %200) #1
  %201 = bitcast [6 x [4 x [3 x i32]]]* %l_1941 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %201, i8* bitcast ([6 x [4 x [3 x i32]]]* @func_32.l_1941 to i8*), i64 288, i32 16, i1 false)
  %202 = bitcast [1 x [2 x [4 x i8*]]]* %l_1965 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %202) #1
  %203 = bitcast [1 x [2 x [4 x i8*]]]* %l_1965 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %203, i8* bitcast ([1 x [2 x [4 x i8*]]]* @func_32.l_1965 to i8*), i64 64, i32 16, i1 false)
  %204 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  %205 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #1
  %206 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #1
  store i32 1, i32* @g_1592, align 4, !tbaa !1
  br label %207

; <label>:207                                     ; preds = %531, %197
  %208 = load i32, i32* @g_1592, align 4, !tbaa !1
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %534

; <label>:210                                     ; preds = %207
  %211 = bitcast i32* %l_1900 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  store i32 1211465864, i32* %l_1900, align 4, !tbaa !1
  %212 = bitcast %union.U0***** %l_1902 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #1
  store %union.U0**** %l_1901, %union.U0***** %l_1902, align 8, !tbaa !5
  %213 = bitcast i32* %l_1939 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  store i32 0, i32* %l_1939, align 4, !tbaa !1
  %214 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  store i32 -1, i32* %l_1900, align 4, !tbaa !1
  %215 = load %union.U0***, %union.U0**** %l_1901, align 8, !tbaa !5
  %216 = load %union.U0****, %union.U0***** %l_1902, align 8, !tbaa !5
  store %union.U0*** %215, %union.U0**** %216, align 8, !tbaa !5
  %217 = load i32, i32* @g_1592, align 4, !tbaa !1
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* @g_663, i32 0, i64 %219
  %221 = load i32, i32* %220, align 4, !tbaa !1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %210
  store i32 20, i32* %7
  br label %525

; <label>:224                                     ; preds = %210
  %225 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 0
  %226 = load i32, i32* %225, align 4, !tbaa !1
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %522

; <label>:228                                     ; preds = %224
  %229 = bitcast [9 x i32]* %l_1921 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %229) #1
  %230 = bitcast [9 x i32]* %l_1921 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %230, i8* bitcast ([9 x i32]* @func_32.l_1921 to i8*), i64 36, i32 16, i1 false)
  %231 = bitcast i8** %l_1923 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %231) #1
  store i8* @g_361, i8** %l_1923, align 8, !tbaa !5
  %232 = bitcast i32** %l_1925 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %232) #1
  store i32* @g_396, i32** %l_1925, align 8, !tbaa !5
  %233 = bitcast i64** %l_1961 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #1
  store i64* null, i64** %l_1961, align 8, !tbaa !5
  %234 = bitcast i64** %l_1962 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %234) #1
  store i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_90 to %union.U0*), i32 0, i32 0), i64** %l_1962, align 8, !tbaa !5
  %235 = bitcast i64** %l_1963 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %235) #1
  store i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_172 to %union.U0*), i32 0, i32 0), i64** %l_1963, align 8, !tbaa !5
  %236 = bitcast i8*** %l_1966 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #1
  store i8** null, i8*** %l_1966, align 8, !tbaa !5
  %237 = bitcast i8*** %l_1967 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %237) #1
  %238 = getelementptr inbounds [1 x [2 x [4 x i8*]]], [1 x [2 x [4 x i8*]]]* %l_1965, i32 0, i64 0
  %239 = getelementptr inbounds [2 x [4 x i8*]], [2 x [4 x i8*]]* %238, i32 0, i64 1
  %240 = getelementptr inbounds [4 x i8*], [4 x i8*]* %239, i32 0, i64 3
  store i8** %240, i8*** %l_1967, align 8, !tbaa !5
  %241 = bitcast i16***** %l_1969 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %241) #1
  store i16**** %l_1893, i16***** %l_1969, align 8, !tbaa !5
  %242 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %242) #1
  %243 = load i32, i32* @g_31, align 4, !tbaa !1
  %244 = load i64, i64* %l_1886, align 8, !tbaa !7
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

; <label>:246                                     ; preds = %228
  %247 = load i64, i64* %6, align 8, !tbaa !7
  %248 = icmp uge i64 0, %247
  %249 = zext i1 %248 to i32
  %250 = load i32, i32* %5, align 4, !tbaa !1
  %251 = icmp ne i32 %250, 0
  br label %252

; <label>:252                                     ; preds = %246, %228
  %253 = phi i1 [ false, %228 ], [ %251, %246 ]
  %254 = zext i1 %253 to i32
  %255 = trunc i32 %254 to i16
  %256 = load i32, i32* %l_1917, align 4, !tbaa !1
  %257 = load i32, i32* %5, align 4, !tbaa !1
  %258 = load i32, i32* %5, align 4, !tbaa !1
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i32, i32* %l_1920, align 4, !tbaa !1
  %262 = icmp ult i32 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load i32, i32* %3, align 4, !tbaa !1
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1921, i32 0, i64 4
  %268 = load i32, i32* %267, align 4, !tbaa !1
  %269 = icmp sge i32 %266, %268
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %l_1865, align 4, !tbaa !1
  %272 = call i32 @safe_sub_func_int32_t_s_s(i32 %270, i32 %271)
  %273 = load i32, i32* %l_1920, align 4, !tbaa !1
  %274 = zext i32 %273 to i64
  %275 = load i64, i64* @g_1922, align 8, !tbaa !7
  %276 = icmp ule i64 %274, %275
  %277 = zext i1 %276 to i32
  %278 = sext i32 %277 to i64
  %279 = xor i64 %278, 25
  %280 = trunc i64 %279 to i16
  %281 = load i16**, i16*** @g_802, align 8, !tbaa !5
  %282 = load i16*, i16** %281, align 8, !tbaa !5
  store i16 %280, i16* %282, align 2, !tbaa !10
  %283 = sext i16 %280 to i32
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %289, label %285

; <label>:285                                     ; preds = %252
  %286 = load i16, i16* %2, align 2, !tbaa !10
  %287 = zext i16 %286 to i32
  %288 = icmp ne i32 %287, 0
  br label %289

; <label>:289                                     ; preds = %285, %252
  %290 = phi i1 [ true, %252 ], [ %288, %285 ]
  %291 = zext i1 %290 to i32
  %292 = icmp ne i32 %256, %291
  %293 = zext i1 %292 to i32
  %294 = sext i32 %293 to i64
  %295 = icmp eq i64 %294, -1
  %296 = zext i1 %295 to i32
  %297 = load i32*, i32** %4, align 8, !tbaa !5
  store i32 %296, i32* %297, align 4, !tbaa !1
  store i32 8, i32* %3, align 4, !tbaa !1
  %298 = load i16, i16* %2, align 2, !tbaa !10
  %299 = zext i16 %298 to i32
  %300 = icmp ne i32 8, %299
  %301 = zext i1 %300 to i32
  %302 = trunc i32 %301 to i16
  %303 = load i8, i8* @g_567, align 1, !tbaa !9
  %304 = sext i8 %303 to i32
  %305 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %302, i32 %304)
  %306 = load i32, i32* @g_213, align 4, !tbaa !1
  %307 = trunc i32 %306 to i16
  %308 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %305, i16 zeroext %307)
  %309 = zext i16 %308 to i64
  %310 = load i64, i64* %6, align 8, !tbaa !7
  %311 = call i64 @safe_add_func_int64_t_s_s(i64 %309, i64 %310)
  %312 = trunc i64 %311 to i8
  %313 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1921, i32 0, i64 3
  %314 = load i32, i32* %313, align 4, !tbaa !1
  %315 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %312, i32 %314)
  %316 = sext i8 %315 to i32
  %317 = load i32, i32* %l_1900, align 4, !tbaa !1
  %318 = icmp ugt i32 %316, %317
  br i1 %318, label %319, label %322

; <label>:319                                     ; preds = %289
  %320 = load i32, i32* %5, align 4, !tbaa !1
  %321 = icmp ne i32 %320, 0
  br label %322

; <label>:322                                     ; preds = %319, %289
  %323 = phi i1 [ false, %289 ], [ %321, %319 ]
  %324 = zext i1 %323 to i32
  %325 = trunc i32 %324 to i16
  %326 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %255, i16 zeroext %325)
  %327 = trunc i16 %326 to i8
  %328 = load i16, i16* %2, align 2, !tbaa !10
  %329 = trunc i16 %328 to i8
  %330 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %327, i8 zeroext %329)
  %331 = zext i8 %330 to i32
  %332 = load i32*, i32** @g_30, align 8, !tbaa !5
  %333 = load i32, i32* %332, align 4, !tbaa !1
  %334 = or i32 %333, %331
  store i32 %334, i32* %332, align 4, !tbaa !1
  %335 = load i32, i32* %l_1917, align 4, !tbaa !1
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %340, label %337

; <label>:337                                     ; preds = %322
  %338 = load i32, i32* @g_1592, align 4, !tbaa !1
  %339 = icmp ne i32 %338, 0
  br label %340

; <label>:340                                     ; preds = %337, %322
  %341 = phi i1 [ true, %322 ], [ %339, %337 ]
  %342 = zext i1 %341 to i32
  %343 = load i8*, i8** %l_1923, align 8, !tbaa !5
  %344 = load i8, i8* %343, align 1, !tbaa !9
  %345 = zext i8 %344 to i32
  %346 = and i32 %345, %342
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %343, align 1, !tbaa !9
  %348 = zext i8 %347 to i32
  %349 = getelementptr inbounds [9 x i32], [9 x i32]* %l_1921, i32 0, i64 5
  %350 = load i32, i32* %349, align 4, !tbaa !1
  %351 = and i32 %348, %350
  %352 = load i32, i32* %3, align 4, !tbaa !1
  %353 = load i32, i32* %5, align 4, !tbaa !1
  %354 = load i64, i64* %6, align 8, !tbaa !7
  %355 = trunc i64 %354 to i32
  %356 = call i32 @safe_sub_func_uint32_t_u_u(i32 -1, i32 %355)
  %357 = zext i32 %356 to i64
  %358 = icmp slt i64 20735, %357
  %359 = zext i1 %358 to i32
  %360 = trunc i32 %359 to i16
  store i16 %360, i16* @g_483, align 2, !tbaa !10
  %361 = zext i16 %360 to i32
  %362 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 0
  %363 = load i32, i32* %362, align 4, !tbaa !1
  %364 = icmp sgt i32 %361, %363
  %365 = zext i1 %364 to i32
  %366 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 0
  store i32 %365, i32* %366, align 4, !tbaa !1
  %367 = load i16, i16* %l_1924, align 2, !tbaa !10
  %368 = sext i16 %367 to i32
  %369 = icmp sgt i32 %365, %368
  %370 = zext i1 %369 to i32
  %371 = load i32, i32* @g_1592, align 4, !tbaa !1
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* @g_663, i32 0, i64 %373
  %375 = load i32, i32* %374, align 4, !tbaa !1
  %376 = and i32 %370, %375
  %377 = load i16, i16* @g_1415, align 2, !tbaa !10
  %378 = zext i16 %377 to i32
  %379 = icmp ugt i32 %376, %378
  %380 = zext i1 %379 to i32
  %381 = load i32, i32* %l_1865, align 4, !tbaa !1
  %382 = icmp ne i32 %380, %381
  %383 = zext i1 %382 to i32
  %384 = load i32*, i32** %l_1925, align 8, !tbaa !5
  %385 = load i32, i32* %384, align 4, !tbaa !1
  %386 = and i32 %385, %383
  store i32 %386, i32* %384, align 4, !tbaa !1
  %387 = load i16, i16* %2, align 2, !tbaa !10
  %388 = getelementptr inbounds [1 x i64*****], [1 x i64*****]* %l_1938, i32 0, i64 0
  store i64***** null, i64****** %388, align 8, !tbaa !5
  %389 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext 1, i32 3)
  %390 = zext i8 %389 to i16
  %391 = load i16, i16* @g_575, align 2, !tbaa !10
  %392 = add i16 %391, -1
  store i16 %392, i16* @g_575, align 2, !tbaa !10
  %393 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %390, i16 signext %392)
  %394 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 0
  %395 = load i32, i32* %394, align 4, !tbaa !1
  %396 = trunc i32 %395 to i16
  %397 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %398 = getelementptr inbounds [10 x i32], [10 x i32]* %397, i32 0, i64 0
  %399 = load i32, i32* %398, align 4, !tbaa !1
  %400 = trunc i32 %399 to i16
  %401 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %400, i32 12)
  %402 = sext i16 %401 to i32
  %403 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %396, i32 %402)
  %404 = zext i16 %403 to i64
  %405 = load i8*, i8** %l_1923, align 8, !tbaa !5
  %406 = load i8, i8* %405, align 1, !tbaa !9
  %407 = zext i8 %406 to i64
  %408 = or i64 %407, 1
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %405, align 1, !tbaa !9
  %410 = zext i8 %409 to i32
  %411 = load i32, i32* %5, align 4, !tbaa !1
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* @g_1960, align 1, !tbaa !9
  %413 = zext i8 %412 to i32
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

; <label>:415                                     ; preds = %340
  br label %416

; <label>:416                                     ; preds = %415, %340
  %417 = phi i1 [ true, %340 ], [ false, %415 ]
  %418 = zext i1 %417 to i32
  %419 = load i32*, i32** @g_30, align 8, !tbaa !5
  %420 = load i32, i32* %419, align 4, !tbaa !1
  %421 = icmp ugt i32 %418, %420
  %422 = zext i1 %421 to i32
  %423 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %424 = getelementptr inbounds [10 x i32], [10 x i32]* %423, i32 0, i64 2
  %425 = load i32, i32* %424, align 4, !tbaa !1
  %426 = trunc i32 %425 to i16
  %427 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %426, i32 11)
  %428 = sext i16 %427 to i32
  %429 = icmp sle i32 %410, %428
  %430 = zext i1 %429 to i32
  %431 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %432 = getelementptr inbounds [10 x i32], [10 x i32]* %431, i32 0, i64 2
  %433 = load i32, i32* %432, align 4, !tbaa !1
  %434 = call i32 @safe_mod_func_uint32_t_u_u(i32 %430, i32 %433)
  %435 = load i32, i32* %l_1964, align 4, !tbaa !1
  %436 = xor i32 %435, %434
  store i32 %436, i32* %l_1964, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = and i64 %437, -4
  %439 = xor i64 %404, %438
  %440 = trunc i64 %439 to i16
  %441 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1899, i32 0, i64 0
  %442 = load i32, i32* %441, align 4, !tbaa !1
  %443 = trunc i32 %442 to i16
  %444 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %440, i16 zeroext %443)
  %445 = trunc i16 %444 to i8
  %446 = load i8*, i8** @g_788, align 8, !tbaa !5
  store i8 %445, i8* %446, align 1, !tbaa !9
  %447 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %445, i8 signext -27)
  %448 = sext i8 %447 to i32
  %449 = load i32*, i32** %l_1925, align 8, !tbaa !5
  store i32 %448, i32* %449, align 4, !tbaa !1
  %450 = sext i32 %448 to i64
  %451 = icmp sgt i64 %450, 230
  %452 = zext i1 %451 to i32
  %453 = call i32 @safe_mod_func_int32_t_s_s(i32 %452, i32 653497583)
  %454 = trunc i32 %453 to i16
  %455 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %393, i16 signext %454)
  %456 = sext i16 %455 to i32
  %457 = load i32, i32* @g_462, align 4, !tbaa !1
  %458 = or i32 %456, %457
  %459 = sext i32 %458 to i64
  %460 = icmp slt i64 %459, 3220578012
  %461 = zext i1 %460 to i32
  %462 = trunc i32 %461 to i8
  %463 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %462, i8 zeroext -2)
  %464 = zext i8 %463 to i16
  %465 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %464, i32 15)
  %466 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %387, i16 zeroext %465)
  %467 = zext i16 %466 to i32
  %468 = load i32, i32* %3, align 4, !tbaa !1
  %469 = xor i32 %468, %467
  store i32 %469, i32* %3, align 4, !tbaa !1
  %470 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %471 = getelementptr inbounds [10 x i32], [10 x i32]* %470, i32 0, i64 1
  %472 = load i32, i32* %471, align 4, !tbaa !1
  %473 = load i32, i32* %l_1865, align 4, !tbaa !1
  %474 = getelementptr inbounds [1 x [2 x [4 x i8*]]], [1 x [2 x [4 x i8*]]]* %l_1965, i32 0, i64 0
  %475 = getelementptr inbounds [2 x [4 x i8*]], [2 x [4 x i8*]]* %474, i32 0, i64 1
  %476 = getelementptr inbounds [4 x i8*], [4 x i8*]* %475, i32 0, i64 3
  %477 = load i8*, i8** %476, align 8, !tbaa !5
  %478 = load i8**, i8*** %l_1967, align 8, !tbaa !5
  store i8* %477, i8** %478, align 8, !tbaa !5
  %479 = load i8*, i8** %l_1968, align 8, !tbaa !5
  %480 = icmp eq i8* %477, %479
  %481 = zext i1 %480 to i32
  %482 = load i16****, i16***** %l_1969, align 8, !tbaa !5
  %483 = load i16***, i16**** @g_635, align 8, !tbaa !5
  %484 = load volatile i16**, i16*** %483, align 8, !tbaa !5
  %485 = load i16*, i16** %484, align 8, !tbaa !5
  %486 = load i16, i16* %485, align 2, !tbaa !10
  %487 = load i16*, i16** @g_344, align 8, !tbaa !5
  store i16 %486, i16* %487, align 2, !tbaa !10
  %488 = load i16, i16* %l_1924, align 2, !tbaa !10
  %489 = load i32, i32* %l_1920, align 4, !tbaa !1
  %490 = zext i32 %489 to i64
  %491 = load i32, i32* %5, align 4, !tbaa !1
  %492 = sext i32 %491 to i64
  %493 = call i64 @safe_sub_func_int64_t_s_s(i64 %490, i64 %492)
  %494 = trunc i64 %493 to i8
  %495 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %496 = getelementptr inbounds [10 x i32], [10 x i32]* %495, i32 0, i64 9
  %497 = load i32, i32* %496, align 4, !tbaa !1
  %498 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %494, i32 %497)
  %499 = sext i8 %498 to i64
  %500 = icmp eq i64 34873, %499
  %501 = zext i1 %500 to i32
  %502 = trunc i32 %501 to i16
  %503 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %486, i16 signext %502)
  %504 = icmp eq i16**** %482, null
  %505 = zext i1 %504 to i32
  %506 = icmp slt i32 %473, %505
  %507 = zext i1 %506 to i32
  %508 = icmp sge i32 %472, %507
  %509 = zext i1 %508 to i32
  %510 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %511 = getelementptr inbounds [10 x i32], [10 x i32]* %510, i32 0, i64 2
  store i32 %509, i32* %511, align 4, !tbaa !1
  %512 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %512) #1
  %513 = bitcast i16***** %l_1969 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %513) #1
  %514 = bitcast i8*** %l_1967 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %514) #1
  %515 = bitcast i8*** %l_1966 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %515) #1
  %516 = bitcast i64** %l_1963 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %516) #1
  %517 = bitcast i64** %l_1962 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %517) #1
  %518 = bitcast i64** %l_1961 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %518) #1
  %519 = bitcast i32** %l_1925 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %519) #1
  %520 = bitcast i8** %l_1923 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %520) #1
  %521 = bitcast [9 x i32]* %l_1921 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %521) #1
  br label %524

; <label>:522                                     ; preds = %224
  %523 = load i32*, i32** %4, align 8, !tbaa !5
  store i32* %523, i32** %1
  store i32 1, i32* %7
  br label %525

; <label>:524                                     ; preds = %416
  store i32 0, i32* %7
  br label %525

; <label>:525                                     ; preds = %524, %522, %223
  %526 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #1
  %527 = bitcast i32* %l_1939 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast %union.U0***** %l_1902 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %528) #1
  %529 = bitcast i32* %l_1900 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %535 [
    i32 0, label %530
    i32 20, label %534
  ]

; <label>:530                                     ; preds = %525
  br label %531

; <label>:531                                     ; preds = %530
  %532 = load i32, i32* @g_1592, align 4, !tbaa !1
  %533 = sub nsw i32 %532, 1
  store i32 %533, i32* @g_1592, align 4, !tbaa !1
  br label %207

; <label>:534                                     ; preds = %525, %207
  store i32 0, i32* %7
  br label %535

; <label>:535                                     ; preds = %534, %525
  %536 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %536) #1
  %537 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %537) #1
  %538 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %538) #1
  %539 = bitcast [1 x [2 x [4 x i8*]]]* %l_1965 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %539) #1
  %540 = bitcast [6 x [4 x [3 x i32]]]* %l_1941 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %540) #1
  %541 = bitcast i32* %l_1940 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %541) #1
  %542 = bitcast i16* %l_1924 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %542) #1
  %cleanup.dest.9 = load i32, i32* %7
  switch i32 %cleanup.dest.9, label %552 [
    i32 0, label %543
  ]

; <label>:543                                     ; preds = %535
  br label %544

; <label>:544                                     ; preds = %543
  %545 = load i64, i64* %6, align 8, !tbaa !7
  %546 = add i64 %545, 1
  store i64 %546, i64* %6, align 8, !tbaa !7
  br label %194

; <label>:547                                     ; preds = %194
  %548 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 1
  %549 = getelementptr inbounds [10 x i32], [10 x i32]* %548, i32 0, i64 9
  %550 = load i32***, i32**** @g_1379, align 8, !tbaa !5
  %551 = load i32**, i32*** %550, align 8, !tbaa !5
  store i32* %549, i32** %551, align 8, !tbaa !5
  store i32 0, i32* %7
  br label %552

; <label>:552                                     ; preds = %547, %535
  %553 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %553) #1
  %554 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %554) #1
  %555 = bitcast i8** %l_1968 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %555) #1
  %556 = bitcast i32* %l_1964 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #1
  %557 = bitcast i32* %l_1920 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %557) #1
  %558 = bitcast i32* %l_1917 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %558) #1
  %559 = bitcast %union.U0**** %l_1901 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %559) #1
  %560 = bitcast [1 x i32]* %l_1899 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %560) #1
  %561 = bitcast i64** %l_1898 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %561) #1
  %562 = bitcast [8 x [2 x i16*]]* %l_1897 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %562) #1
  %563 = bitcast i64** %l_1896 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %563) #1
  %564 = bitcast i16**** %l_1893 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %564) #1
  %cleanup.dest.10 = load i32, i32* %7
  switch i32 %cleanup.dest.10, label %643 [
    i32 0, label %565
  ]

; <label>:565                                     ; preds = %552
  br label %566

; <label>:566                                     ; preds = %565
  %567 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_807 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  %568 = add i64 %567, 1
  store i64 %568, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_807 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  br label %79

; <label>:569                                     ; preds = %79
  %570 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 1
  %571 = getelementptr inbounds [10 x i32], [10 x i32]* %570, i32 0, i64 6
  %572 = load i32, i32* %571, align 4, !tbaa !1
  %573 = sext i32 %572 to i64
  %574 = icmp sge i64 76, %573
  br i1 %574, label %575, label %578

; <label>:575                                     ; preds = %569
  %576 = load i32, i32* %5, align 4, !tbaa !1
  %577 = icmp ne i32 %576, 0
  br label %578

; <label>:578                                     ; preds = %575, %569
  %579 = phi i1 [ false, %569 ], [ %577, %575 ]
  %580 = zext i1 %579 to i32
  %581 = load i64, i64* %l_1886, align 8, !tbaa !7
  %582 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %583 = getelementptr inbounds [10 x i32], [10 x i32]* %582, i32 0, i64 2
  %584 = load i32, i32* %583, align 4, !tbaa !1
  %585 = sext i32 %584 to i64
  %586 = xor i64 %581, %585
  %587 = load i16, i16* %2, align 2, !tbaa !10
  %588 = load i32, i32* %l_1865, align 4, !tbaa !1
  %589 = trunc i32 %588 to i8
  %590 = load i16, i16* @g_253, align 2, !tbaa !10
  %591 = zext i16 %590 to i64
  %592 = load i8, i8* %l_1992, align 1, !tbaa !9
  %593 = zext i8 %592 to i16
  %594 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 0, i16 signext %593)
  %595 = sext i16 %594 to i32
  %596 = load i8, i8* %l_1992, align 1, !tbaa !9
  %597 = zext i8 %596 to i32
  %598 = icmp slt i32 %595, %597
  %599 = zext i1 %598 to i32
  %600 = sext i32 %599 to i64
  %601 = load i64*, i64** @g_1426, align 8, !tbaa !5
  %602 = load i64, i64* %601, align 8, !tbaa !7
  %603 = call i64 @safe_add_func_uint64_t_u_u(i64 %600, i64 %602)
  %604 = or i64 %591, %603
  %605 = load i64***, i64**** @g_1424, align 8, !tbaa !5
  %606 = load i64**, i64*** %605, align 8, !tbaa !5
  %607 = load i64*, i64** %606, align 8, !tbaa !5
  %608 = load i64, i64* %607, align 8, !tbaa !7
  %609 = call i64 @safe_sub_func_int64_t_s_s(i64 %604, i64 %608)
  %610 = xor i64 %609, -1
  %611 = trunc i64 %610 to i16
  %612 = load i32, i32* %l_1865, align 4, !tbaa !1
  %613 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %611, i32 %612)
  %614 = load i16, i16* %2, align 2, !tbaa !10
  %615 = zext i16 %614 to i64
  %616 = and i64 47727, %615
  %617 = trunc i64 %616 to i16
  %618 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %617, i32 13)
  %619 = zext i16 %618 to i32
  %620 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %589, i32 %619)
  %621 = sext i8 %620 to i32
  %622 = load i8, i8* %l_1992, align 1, !tbaa !9
  %623 = zext i8 %622 to i32
  %624 = icmp sge i32 %621, %623
  %625 = zext i1 %624 to i32
  %626 = load i8, i8* %l_1992, align 1, !tbaa !9
  %627 = zext i8 %626 to i32
  %628 = and i32 %625, %627
  %629 = trunc i32 %628 to i8
  %630 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %l_1942, i32 0, i64 0
  %631 = getelementptr inbounds [10 x i32], [10 x i32]* %630, i32 0, i64 7
  %632 = load i32, i32* %631, align 4, !tbaa !1
  %633 = trunc i32 %632 to i8
  %634 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %629, i8 signext %633)
  %635 = sext i8 %634 to i64
  %636 = load i64, i64* %6, align 8, !tbaa !7
  %637 = and i64 %635, %636
  %638 = trunc i64 %637 to i16
  %639 = load i16*, i16** %l_1993, align 8, !tbaa !5
  store i16 %638, i16* %639, align 2, !tbaa !10
  %640 = zext i16 %638 to i32
  %641 = load i32, i32* %l_1995, align 4, !tbaa !1
  %642 = and i32 %641, %640
  store i32 %642, i32* %l_1995, align 4, !tbaa !1
  store i32 0, i32* %7
  br label %643

; <label>:643                                     ; preds = %578, %552
  %644 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %644) #1
  %645 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %645) #1
  %646 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %646) #1
  %647 = bitcast [9 x [10 x [2 x i32*]]]* %l_1994 to i8*
  call void @llvm.lifetime.end(i64 1440, i8* %647) #1
  %648 = bitcast i16** %l_1993 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %648) #1
  %649 = bitcast [2 x [10 x i32]]* %l_1942 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %649) #1
  %650 = bitcast i64* %l_1886 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %650) #1
  %cleanup.dest.11 = load i32, i32* %7
  switch i32 %cleanup.dest.11, label %656 [
    i32 0, label %651
  ]

; <label>:651                                     ; preds = %643
  br label %652

; <label>:652                                     ; preds = %651
  %653 = load i8, i8* @g_499, align 1, !tbaa !9
  %654 = add i8 %653, -1
  store i8 %654, i8* @g_499, align 1, !tbaa !9
  br label %65

; <label>:655                                     ; preds = %65
  store i32* @g_988, i32** %1
  store i32 1, i32* %7
  br label %656

; <label>:656                                     ; preds = %655, %643
  %657 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %657) #1
  %658 = bitcast i32* %l_1995 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %658) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1992) #1
  %659 = bitcast [1 x i64*****]* %l_1938 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %659) #1
  %660 = bitcast i32* %l_1865 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %660) #1
  %661 = bitcast i32*** %l_1864 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %661) #1
  %662 = bitcast i32*** %l_1862 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %662) #1
  %663 = bitcast i32** %l_1863 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %663) #1
  %664 = bitcast i32** %l_1857 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %664) #1
  %665 = load i32*, i32** %1
  ret i32* %665
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
define internal zeroext i16 @func_43(i64 %p_44, i16 zeroext %p_45) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i16, align 2
  %l_1851 = alloca i32*, align 8
  %l_1852 = alloca [2 x i32*], align 16
  %l_1853 = alloca i16, align 2
  %i = alloca i32, align 4
  store i64 %p_44, i64* %1, align 8, !tbaa !7
  store i16 %p_45, i16* %2, align 2, !tbaa !10
  %3 = bitcast i32** %l_1851 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_1851, align 8, !tbaa !5
  %4 = bitcast [2 x i32*]* %l_1852 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i16* %l_1853 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 1, i16* %l_1853, align 2, !tbaa !10
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:7                                       ; preds = %14, %0
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %17

; <label>:10                                      ; preds = %7
  %11 = load i32, i32* %i, align 4, !tbaa !1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1852, i32 0, i64 %12
  store i32* @g_462, i32** %13, align 8, !tbaa !5
  br label %14

; <label>:14                                      ; preds = %10
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %i, align 4, !tbaa !1
  br label %7

; <label>:17                                      ; preds = %7
  %18 = load i16, i16* %l_1853, align 2, !tbaa !10
  %19 = add i16 %18, -1
  store i16 %19, i16* %l_1853, align 2, !tbaa !10
  %20 = load i64, i64* %1, align 8, !tbaa !7
  %21 = trunc i64 %20 to i16
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i16* %l_1853 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #1
  %24 = bitcast [2 x i32*]* %l_1852 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #1
  %25 = bitcast i32** %l_1851 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i16 %21
}

; Function Attrs: nounwind uwtable
define internal i64 @func_46(i16* %p_47, i32* %p_48, i8 zeroext %p_49, i32* %p_50, i16 signext %p_51) #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %l_1848 = alloca i32*, align 8
  %l_1847 = alloca i32**, align 8
  store i16* %p_47, i16** %1, align 8, !tbaa !5
  store i32* %p_48, i32** %2, align 8, !tbaa !5
  store i8 %p_49, i8* %3, align 1, !tbaa !9
  store i32* %p_50, i32** %4, align 8, !tbaa !5
  store i16 %p_51, i16* %5, align 2, !tbaa !10
  %6 = bitcast i32** %l_1848 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_1199, i32** %l_1848, align 8, !tbaa !5
  %7 = bitcast i32*** %l_1847 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32** %l_1848, i32*** %l_1847, align 8, !tbaa !5
  %8 = load i32*, i32** %4, align 8, !tbaa !5
  %9 = load i32**, i32*** %l_1847, align 8, !tbaa !5
  store i32* %8, i32** %9, align 8, !tbaa !5
  store i32* %8, i32** getelementptr inbounds ([8 x [10 x i32*]], [8 x [10 x i32*]]* @g_1849, i32 0, i64 7, i64 9), align 8, !tbaa !5
  %10 = load i64**, i64*** @g_1425, align 8, !tbaa !5
  %11 = load i64*, i64** %10, align 8, !tbaa !5
  %12 = load i64, i64* %11, align 8, !tbaa !7
  %13 = bitcast i32*** %l_1847 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32** %l_1848 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal i16* @func_52(i32 %p_53, i16* %p_54, i32* %p_55, i16* %p_56, i16* %p_57) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %l_305 = alloca %union.U0***, align 8
  %l_306 = alloca %union.U0****, align 8
  %l_307 = alloca i32*, align 8
  %l_318 = alloca i8*, align 8
  %l_333 = alloca i32, align 4
  %l_385 = alloca %union.U0**, align 8
  %l_395 = alloca i32, align 4
  %l_398 = alloca i32, align 4
  %l_479 = alloca i16**, align 8
  %l_561 = alloca i32, align 4
  %l_562 = alloca i32, align 4
  %l_651 = alloca [4 x [7 x [3 x i64*]]], align 16
  %l_650 = alloca i64**, align 8
  %l_694 = alloca i8, align 1
  %l_774 = alloca i64*, align 8
  %l_773 = alloca i64**, align 8
  %l_888 = alloca i8****, align 8
  %l_951 = alloca i16*, align 8
  %l_1168 = alloca i64, align 8
  %l_1169 = alloca [5 x [10 x i32]], align 16
  %l_1209 = alloca i64***, align 8
  %l_1208 = alloca i64****, align 8
  %l_1244 = alloca [5 x [9 x [5 x i16]]], align 16
  %l_1268 = alloca i32, align 4
  %l_1269 = alloca i8, align 1
  %l_1270 = alloca [4 x i8*], align 16
  %l_1271 = alloca i64*, align 8
  %l_1290 = alloca i16, align 2
  %l_1296 = alloca i32***, align 8
  %l_1469 = alloca i32, align 4
  %l_1490 = alloca i8****, align 8
  %l_1548 = alloca i16, align 2
  %l_1603 = alloca i32, align 4
  %l_1622 = alloca i8, align 1
  %l_1845 = alloca i32, align 4
  %l_1846 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_53, i32* %1, align 4, !tbaa !1
  store i16* %p_54, i16** %2, align 8, !tbaa !5
  store i32* %p_55, i32** %3, align 8, !tbaa !5
  store i16* %p_56, i16** %4, align 8, !tbaa !5
  store i16* %p_57, i16** %5, align 8, !tbaa !5
  %6 = bitcast %union.U0**** %l_305 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %union.U0*** null, %union.U0**** %l_305, align 8, !tbaa !5
  %7 = bitcast %union.U0***** %l_306 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %union.U0**** %l_305, %union.U0***** %l_306, align 8, !tbaa !5
  %8 = bitcast i32** %l_307 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* @g_116, i32** %l_307, align 8, !tbaa !5
  %9 = bitcast i8** %l_318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8* @g_188, i8** %l_318, align 8, !tbaa !5
  %10 = bitcast i32* %l_333 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 1388243728, i32* %l_333, align 4, !tbaa !1
  %11 = bitcast %union.U0*** %l_385 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store %union.U0** null, %union.U0*** %l_385, align 8, !tbaa !5
  %12 = bitcast i32* %l_395 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 2032546940, i32* %l_395, align 4, !tbaa !1
  %13 = bitcast i32* %l_398 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 -7, i32* %l_398, align 4, !tbaa !1
  %14 = bitcast i16*** %l_479 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16** @g_344, i16*** %l_479, align 8, !tbaa !5
  %15 = bitcast i32* %l_561 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -2, i32* %l_561, align 4, !tbaa !1
  %16 = bitcast i32* %l_562 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 -1, i32* %l_562, align 4, !tbaa !1
  %17 = bitcast [4 x [7 x [3 x i64*]]]* %l_651 to i8*
  call void @llvm.lifetime.start(i64 672, i8* %17) #1
  %18 = bitcast [4 x [7 x [3 x i64*]]]* %l_651 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([4 x [7 x [3 x i64*]]]* @func_52.l_651 to i8*), i64 672, i32 16, i1 false)
  %19 = bitcast i64*** %l_650 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = getelementptr inbounds [4 x [7 x [3 x i64*]]], [4 x [7 x [3 x i64*]]]* %l_651, i32 0, i64 3
  %21 = getelementptr inbounds [7 x [3 x i64*]], [7 x [3 x i64*]]* %20, i32 0, i64 2
  %22 = getelementptr inbounds [3 x i64*], [3 x i64*]* %21, i32 0, i64 0
  store i64** %22, i64*** %l_650, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_694) #1
  store i8 35, i8* %l_694, align 1, !tbaa !9
  %23 = bitcast i64** %l_774 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i64* @g_106, i64** %l_774, align 8, !tbaa !5
  %24 = bitcast i64*** %l_773 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i64** %l_774, i64*** %l_773, align 8, !tbaa !5
  %25 = bitcast i8***** %l_888 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i8**** getelementptr inbounds ([7 x i8***], [7 x i8***]* @g_786, i32 0, i64 0), i8***** %l_888, align 8, !tbaa !5
  %26 = bitcast i16** %l_951 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i16* @g_253, i16** %l_951, align 8, !tbaa !5
  %27 = bitcast i64* %l_1168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i64 8, i64* %l_1168, align 8, !tbaa !7
  %28 = bitcast [5 x [10 x i32]]* %l_1169 to i8*
  call void @llvm.lifetime.start(i64 200, i8* %28) #1
  %29 = bitcast [5 x [10 x i32]]* %l_1169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* bitcast ([5 x [10 x i32]]* @func_52.l_1169 to i8*), i64 200, i32 16, i1 false)
  %30 = bitcast i64**** %l_1209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i64*** @g_761, i64**** %l_1209, align 8, !tbaa !5
  %31 = bitcast i64***** %l_1208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i64**** %l_1209, i64***** %l_1208, align 8, !tbaa !5
  %32 = bitcast [5 x [9 x [5 x i16]]]* %l_1244 to i8*
  call void @llvm.lifetime.start(i64 450, i8* %32) #1
  %33 = bitcast [5 x [9 x [5 x i16]]]* %l_1244 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast ([5 x [9 x [5 x i16]]]* @func_52.l_1244 to i8*), i64 450, i32 16, i1 false)
  %34 = bitcast i32* %l_1268 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 -867951867, i32* %l_1268, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1269) #1
  store i8 15, i8* %l_1269, align 1, !tbaa !9
  %35 = bitcast [4 x i8*]* %l_1270 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %35) #1
  %36 = bitcast i64** %l_1271 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64* @g_724, i64** %l_1271, align 8, !tbaa !5
  %37 = bitcast i16* %l_1290 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %37) #1
  store i16 -13031, i16* %l_1290, align 2, !tbaa !10
  %38 = bitcast i32**** %l_1296 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i32*** @g_1231, i32**** %l_1296, align 8, !tbaa !5
  %39 = bitcast i32* %l_1469 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 1874885440, i32* %l_1469, align 4, !tbaa !1
  %40 = bitcast i8***** %l_1490 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  store i8**** getelementptr inbounds ([7 x i8***], [7 x i8***]* @g_786, i32 0, i64 3), i8***** %l_1490, align 8, !tbaa !5
  %41 = bitcast i16* %l_1548 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %41) #1
  store i16 -13867, i16* %l_1548, align 2, !tbaa !10
  %42 = bitcast i32* %l_1603 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  store i32 -1261851630, i32* %l_1603, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1622) #1
  store i8 -31, i8* %l_1622, align 1, !tbaa !9
  %43 = bitcast i32* %l_1845 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 1219727076, i32* %l_1845, align 4, !tbaa !1
  %44 = bitcast i32** %l_1846 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i32* @g_116, i32** %l_1846, align 8, !tbaa !5
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %55, %0
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %48
  %52 = load i32, i32* %i, align 4, !tbaa !1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8*], [4 x i8*]* %l_1270, i32 0, i64 %53
  store i8* @g_75, i8** %54, align 8, !tbaa !5
  br label %55

; <label>:55                                      ; preds = %51
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %i, align 4, !tbaa !1
  br label %48

; <label>:58                                      ; preds = %48
  %59 = load i16***, i16**** @g_801, align 8, !tbaa !5
  %60 = load i16**, i16*** %59, align 8, !tbaa !5
  %61 = load i16*, i16** %60, align 8, !tbaa !5
  %62 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32** %l_1846 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %l_1845 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1622) #1
  %67 = bitcast i32* %l_1603 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i16* %l_1548 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %68) #1
  %69 = bitcast i8***** %l_1490 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %l_1469 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32**** %l_1296 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i16* %l_1290 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %72) #1
  %73 = bitcast i64** %l_1271 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast [4 x i8*]* %l_1270 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %74) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1269) #1
  %75 = bitcast i32* %l_1268 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast [5 x [9 x [5 x i16]]]* %l_1244 to i8*
  call void @llvm.lifetime.end(i64 450, i8* %76) #1
  %77 = bitcast i64***** %l_1208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast i64**** %l_1209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast [5 x [10 x i32]]* %l_1169 to i8*
  call void @llvm.lifetime.end(i64 200, i8* %79) #1
  %80 = bitcast i64* %l_1168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i16** %l_951 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i8***** %l_888 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i64*** %l_773 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64** %l_774 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_694) #1
  %85 = bitcast i64*** %l_650 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast [4 x [7 x [3 x i64*]]]* %l_651 to i8*
  call void @llvm.lifetime.end(i64 672, i8* %86) #1
  %87 = bitcast i32* %l_562 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %l_561 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i16*** %l_479 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %l_398 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %l_395 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast %union.U0*** %l_385 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast i32* %l_333 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i8** %l_318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast i32** %l_307 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %union.U0***** %l_306 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %union.U0**** %l_305 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  ret i16* %61
}

; Function Attrs: nounwind uwtable
define internal i32 @func_58(i16 zeroext %p_59) #0 {
  %1 = alloca i16, align 2
  %l_85 = alloca [9 x i32], align 16
  %l_89 = alloca [6 x %union.U0*], align 16
  %l_101 = alloca i32, align 4
  %l_105 = alloca i16, align 2
  %l_191 = alloca [5 x %union.U0****], align 16
  %l_252 = alloca [7 x i32], align 16
  %l_262 = alloca %union.U0***, align 8
  %l_266 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_86 = alloca i64, align 8
  %l_107 = alloca [7 x %union.U0*], align 16
  %l_123 = alloca i32, align 4
  %l_155 = alloca i32, align 4
  %l_176 = alloca %union.U0***, align 8
  %l_214 = alloca i8*, align 8
  %l_226 = alloca i16, align 2
  %l_227 = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i16 %p_59, i16* %1, align 2, !tbaa !10
  %2 = bitcast [9 x i32]* %l_85 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #1
  %3 = bitcast [9 x i32]* %l_85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([9 x i32]* @func_58.l_85 to i8*), i64 36, i32 16, i1 false)
  %4 = bitcast [6 x %union.U0*]* %l_89 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %4) #1
  %5 = bitcast [6 x %union.U0*]* %l_89 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 48, i32 16, i1 false)
  %6 = bitcast i32* %l_101 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 451400978, i32* %l_101, align 4, !tbaa !1
  %7 = bitcast i16* %l_105 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 5, i16* %l_105, align 2, !tbaa !10
  %8 = bitcast [5 x %union.U0****]* %l_191 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast [5 x %union.U0****]* %l_191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([5 x %union.U0****]* @func_58.l_191 to i8*), i64 40, i32 16, i1 false)
  %10 = bitcast [7 x i32]* %l_252 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast [7 x i32]* %l_252 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([7 x i32]* @func_58.l_252 to i8*), i64 28, i32 16, i1 false)
  %12 = bitcast %union.U0**** %l_262 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %union.U0*** @g_102, %union.U0**** %l_262, align 8, !tbaa !5
  %13 = bitcast i32** %l_266 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* null, i32** %l_266, align 8, !tbaa !5
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i64 0, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  br label %15

; <label>:15                                      ; preds = %127, %0
  %16 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  %17 = icmp eq i64 %16, 45
  br i1 %17, label %18, label %132

; <label>:18                                      ; preds = %15
  %19 = bitcast i64* %l_86 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 -6339561581450342420, i64* %l_86, align 8, !tbaa !7
  %20 = bitcast [7 x %union.U0*]* %l_107 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %20) #1
  %21 = bitcast i32* %l_123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 -164805941, i32* %l_123, align 4, !tbaa !1
  %22 = bitcast i32* %l_155 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1405256942, i32* %l_155, align 4, !tbaa !1
  %23 = bitcast %union.U0**** %l_176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store %union.U0*** @g_102, %union.U0**** %l_176, align 8, !tbaa !5
  %24 = bitcast i8** %l_214 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i8* @g_188, i8** %l_214, align 8, !tbaa !5
  %25 = bitcast i16* %l_226 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %25) #1
  store i16 0, i16* %l_226, align 2, !tbaa !10
  %26 = bitcast i32* %l_227 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 -1581446239, i32* %l_227, align 4, !tbaa !1
  %27 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %35, %18
  %29 = load i32, i32* %i1, align 4, !tbaa !1
  %30 = icmp slt i32 %29, 7
  br i1 %30, label %31, label %38

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %i1, align 4, !tbaa !1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %l_107, i32 0, i64 %33
  store %union.U0* null, %union.U0** %34, align 8, !tbaa !5
  br label %35

; <label>:35                                      ; preds = %31
  %36 = load i32, i32* %i1, align 4, !tbaa !1
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %i1, align 4, !tbaa !1
  br label %28

; <label>:38                                      ; preds = %28
  %39 = load i16, i16* %1, align 2, !tbaa !10
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds [9 x i32], [9 x i32]* %l_85, i32 0, i64 4
  store i32 %40, i32* %41, align 4, !tbaa !1
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %47, label %43

; <label>:43                                      ; preds = %38
  %44 = load i8, i8* @g_75, align 1, !tbaa !9
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br label %47

; <label>:47                                      ; preds = %43, %38
  %48 = phi i1 [ true, %38 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %l_86, align 8, !tbaa !7
  %51 = getelementptr inbounds [6 x %union.U0*], [6 x %union.U0*]* %l_89, i32 0, i64 2
  %52 = load %union.U0*, %union.U0** %51, align 8, !tbaa !5
  %53 = icmp ne %union.U0* null, %52
  %54 = zext i1 %53 to i32
  %55 = trunc i32 %54 to i16
  %56 = load i64, i64* %l_86, align 8, !tbaa !7
  %57 = trunc i64 %56 to i16
  %58 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %55, i16 signext %57)
  %59 = sext i16 %58 to i64
  %60 = icmp sge i64 %50, %59
  %61 = zext i1 %60 to i32
  %62 = xor i32 %49, %61
  %63 = trunc i32 %62 to i8
  %64 = load i16, i16* %1, align 2, !tbaa !10
  %65 = zext i16 %64 to i32
  %66 = load i16, i16* %1, align 2, !tbaa !10
  %67 = zext i16 %66 to i64
  %68 = load i64, i64* %l_86, align 8, !tbaa !7
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %l_86, align 8, !tbaa !7
  %72 = or i64 -10, %71
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = trunc i32 %74 to i16
  %76 = load i32, i32* %l_101, align 4, !tbaa !1
  %77 = trunc i32 %76 to i16
  %78 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %75, i16 signext %77)
  %79 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %78, i32 3)
  %80 = zext i16 %79 to i32
  %81 = icmp slt i32 %65, %80
  %82 = zext i1 %81 to i32
  %83 = load %union.U0**, %union.U0*** @g_102, align 8, !tbaa !5
  %84 = bitcast %union.U0** %83 to i8*
  %85 = icmp ne i8* null, %84
  br i1 %85, label %90, label %86

; <label>:86                                      ; preds = %47
  %87 = load i16, i16* %l_105, align 2, !tbaa !10
  %88 = zext i16 %87 to i32
  %89 = icmp ne i32 %88, 0
  br label %90

; <label>:90                                      ; preds = %86, %47
  %91 = phi i1 [ true, %47 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = load i16, i16* @g_80, align 2, !tbaa !10
  %94 = zext i16 %93 to i32
  %95 = icmp sle i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = load i16, i16* %1, align 2, !tbaa !10
  %98 = trunc i16 %97 to i8
  %99 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %98, i32 1)
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

; <label>:102                                     ; preds = %90
  %103 = load i32, i32* @g_25, align 4, !tbaa !1
  %104 = icmp ne i32 %103, 0
  br label %105

; <label>:105                                     ; preds = %102, %90
  %106 = phi i1 [ false, %90 ], [ %104, %102 ]
  %107 = zext i1 %106 to i32
  %108 = load i32*, i32** @g_30, align 8, !tbaa !5
  %109 = load i32, i32* %108, align 4, !tbaa !1
  %110 = call i32 @safe_sub_func_uint32_t_u_u(i32 %107, i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %111, i32 0)
  %113 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %63, i8 zeroext %112)
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = sext i32 %116 to i64
  store i64 %117, i64* @g_106, align 8, !tbaa !7
  %118 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %l_227 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i16* %l_226 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %120) #1
  %121 = bitcast i8** %l_214 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %union.U0**** %l_176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %l_155 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %l_123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast [7 x %union.U0*]* %l_107 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %125) #1
  %126 = bitcast i64* %l_86 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  br label %127

; <label>:127                                     ; preds = %105
  %128 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  %129 = trunc i64 %128 to i8
  %130 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %129, i8 zeroext 5)
  %131 = zext i8 %130 to i64
  store i64 %131, i64* getelementptr inbounds (%union.U0, %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), i32 0, i32 0), align 8, !tbaa !7
  br label %15

; <label>:132                                     ; preds = %15
  %133 = load i16, i16* %1, align 2, !tbaa !10
  %134 = zext i16 %133 to i32
  %135 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32** %l_266 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast %union.U0**** %l_262 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast [7 x i32]* %l_252 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %138) #1
  %139 = bitcast [5 x %union.U0****]* %l_191 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %139) #1
  %140 = bitcast i16* %l_105 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %140) #1
  %141 = bitcast i32* %l_101 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast [6 x %union.U0*]* %l_89 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %142) #1
  %143 = bitcast [9 x i32]* %l_85 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %143) #1
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define internal i32 @func_60(i8 zeroext %p_61, i32 %p_62) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %l_63 = alloca i32*, align 8
  %l_64 = alloca [7 x %union.U0*], align 16
  %l_66 = alloca %union.U0**, align 8
  %l_68 = alloca %union.U0*, align 8
  %l_67 = alloca %union.U0**, align 8
  %l_70 = alloca i32**, align 8
  %l_71 = alloca i32**, align 8
  %l_72 = alloca i32**, align 8
  %l_73 = alloca i32**, align 8
  %l_74 = alloca i32**, align 8
  %i = alloca i32, align 4
  store i8 %p_61, i8* %1, align 1, !tbaa !9
  store i32 %p_62, i32* %2, align 4, !tbaa !1
  %3 = bitcast i32** %l_63 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* null, i32** %l_63, align 8, !tbaa !5
  %4 = bitcast [7 x %union.U0*]* %l_64 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #1
  %5 = bitcast %union.U0*** %l_66 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %l_64, i32 0, i64 4
  store %union.U0** %6, %union.U0*** %l_66, align 8, !tbaa !5
  %7 = bitcast %union.U0** %l_68 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store %union.U0* bitcast ({ i8, [7 x i8] }* @g_69 to %union.U0*), %union.U0** %l_68, align 8, !tbaa !5
  %8 = bitcast %union.U0*** %l_67 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %union.U0** %l_68, %union.U0*** %l_67, align 8, !tbaa !5
  %9 = bitcast i32*** %l_70 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32** null, i32*** %l_70, align 8, !tbaa !5
  %10 = bitcast i32*** %l_71 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32** null, i32*** %l_71, align 8, !tbaa !5
  %11 = bitcast i32*** %l_72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32** null, i32*** %l_72, align 8, !tbaa !5
  %12 = bitcast i32*** %l_73 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** null, i32*** %l_73, align 8, !tbaa !5
  %13 = bitcast i32*** %l_74 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32** %l_63, i32*** %l_74, align 8, !tbaa !5
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %22, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %l_64, i32 0, i64 %20
  store %union.U0* bitcast ({ i8, [7 x i8] }* @g_65 to %union.U0*), %union.U0** %21, align 8, !tbaa !5
  br label %22

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:25                                      ; preds = %15
  %26 = load i32*, i32** %l_63, align 8, !tbaa !5
  store i32* %26, i32** %l_63, align 8, !tbaa !5
  %27 = getelementptr inbounds [7 x %union.U0*], [7 x %union.U0*]* %l_64, i32 0, i64 4
  %28 = load %union.U0*, %union.U0** %27, align 8, !tbaa !5
  %29 = load %union.U0**, %union.U0*** %l_66, align 8, !tbaa !5
  store %union.U0* %28, %union.U0** %29, align 8, !tbaa !5
  %30 = load %union.U0**, %union.U0*** %l_67, align 8, !tbaa !5
  store %union.U0* %28, %union.U0** %30, align 8, !tbaa !5
  %31 = load i32*, i32** %l_63, align 8, !tbaa !5
  %32 = load i32**, i32*** %l_74, align 8, !tbaa !5
  store i32* %31, i32** %32, align 8, !tbaa !5
  %33 = load i8, i8* @g_75, align 1, !tbaa !9
  %34 = add i8 %33, -1
  store i8 %34, i8* @g_75, align 1, !tbaa !9
  %35 = load i32, i32* @g_31, align 4, !tbaa !1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32*** %l_74 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32*** %l_73 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i32*** %l_72 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32*** %l_71 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32*** %l_70 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %union.U0*** %l_67 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %union.U0** %l_68 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %union.U0*** %l_66 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast [7 x %union.U0*]* %l_64 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %45) #1
  %46 = bitcast i32** %l_63 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  ret i32 %35
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
