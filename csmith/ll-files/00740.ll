; ModuleID = '00740.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_5 = internal global i32 -5, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_36 = internal global i64 -5338409568836083150, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"g_36\00", align 1
@g_38 = internal global i16 -6, align 2
@.str.3 = private unnamed_addr constant [5 x i8] c"g_38\00", align 1
@g_52 = internal global i16 30214, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_52\00", align 1
@g_54 = internal global i32 1210466863, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_54\00", align 1
@g_59 = internal global i64 7, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"g_59\00", align 1
@g_61 = internal global i64 5989411777422538849, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_61\00", align 1
@g_63 = internal global i32 1019791857, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_63\00", align 1
@g_115 = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"g_115\00", align 1
@g_126 = internal global i32 1548809311, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_126\00", align 1
@g_167 = internal global [7 x i8] c"VVVVVVV", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"g_167[i]\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_230 = internal global i8 -9, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"g_230\00", align 1
@g_266 = internal global [7 x [5 x [1 x i64]]] [[5 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -10], [1 x i64] [i64 4369205542704307153], [1 x i64] [i64 -7422309981227635625], [1 x i64] [i64 4369205542704307153]], [5 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -10], [1 x i64] [i64 4369205542704307153], [1 x i64] [i64 -7422309981227635625], [1 x i64] [i64 4369205542704307153]], [5 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -10], [1 x i64] [i64 4369205542704307153], [1 x i64] [i64 -7422309981227635625], [1 x i64] [i64 4369205542704307153]], [5 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -10], [1 x i64] [i64 4369205542704307153], [1 x i64] [i64 -7422309981227635625], [1 x i64] [i64 4369205542704307153]], [5 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -10], [1 x i64] [i64 4369205542704307153], [1 x i64] [i64 -7422309981227635625], [1 x i64] [i64 4369205542704307153]], [5 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -10], [1 x i64] [i64 4369205542704307153], [1 x i64] [i64 -7422309981227635625], [1 x i64] [i64 4369205542704307153]], [5 x [1 x i64]] [[1 x i64] [i64 -10], [1 x i64] [i64 -10], [1 x i64] [i64 4369205542704307153], [1 x i64] [i64 -7422309981227635625], [1 x i64] [i64 4369205542704307153]]], align 16
@.str.14 = private unnamed_addr constant [15 x i8] c"g_266[i][j][k]\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_301 = internal global i32 -7, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_301\00", align 1
@g_305 = internal global i32 -1581706625, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_305\00", align 1
@g_306 = internal global i16 -1, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_306\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_311\00", align 1
@g_406 = internal global i8 1, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_406\00", align 1
@g_433 = internal global i16 -6120, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_433\00", align 1
@g_479 = internal global i16 1, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_479\00", align 1
@g_482 = internal global i8 3, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_482\00", align 1
@g_505 = internal global i32 -52911444, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_505\00", align 1
@g_546 = internal global i32 -9, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_546\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_559\00", align 1
@g_578 = internal global [4 x [8 x [7 x i32]]] [[8 x [7 x i32]] [[7 x i32] [i32 1, i32 1, i32 0, i32 233165809, i32 1412707783, i32 -827684972, i32 -1254137614], [7 x i32] [i32 0, i32 1, i32 1, i32 1412707783, i32 237795663, i32 -1234741589, i32 1], [7 x i32] [i32 1, i32 -1, i32 1, i32 -1, i32 1357823228, i32 1, i32 -614992552], [7 x i32] [i32 5, i32 -874011762, i32 0, i32 -1687148352, i32 233165809, i32 2, i32 -1], [7 x i32] [i32 1, i32 -1, i32 1, i32 1835265145, i32 462105543, i32 -6, i32 1], [7 x i32] [i32 1, i32 -1687148352, i32 933659521, i32 1, i32 1, i32 8, i32 -1], [7 x i32] [i32 1357823228, i32 6, i32 1629970333, i32 1638997223, i32 1638997223, i32 1629970333, i32 6], [7 x i32] [i32 0, i32 -1234741589, i32 -1, i32 -1, i32 1505152326, i32 -6, i32 1638997223]], [8 x [7 x i32]] [[7 x i32] [i32 -1234741589, i32 -1, i32 1, i32 -5, i32 -1, i32 1, i32 1], [7 x i32] [i32 1835265145, i32 -3, i32 1, i32 -1, i32 -6, i32 1678240408, i32 -1184221449], [7 x i32] [i32 1, i32 1, i32 -1834329275, i32 1638997223, i32 -1, i32 -1234741589, i32 0], [7 x i32] [i32 1, i32 1357823228, i32 1, i32 1, i32 9, i32 -614992552, i32 462105543], [7 x i32] [i32 -6, i32 -3, i32 5, i32 1835265145, i32 0, i32 9, i32 -2138363192], [7 x i32] [i32 -2138363192, i32 2066485753, i32 -1, i32 -1687148352, i32 -1658935580, i32 1, i32 1554225498], [7 x i32] [i32 1, i32 1, i32 1, i32 -1, i32 -1687148352, i32 -1, i32 -1], [7 x i32] [i32 -1184221449, i32 6, i32 -9, i32 1412707783, i32 -1687148352, i32 5, i32 -1184221449]], [8 x [7 x i32]] [[7 x i32] [i32 1554225498, i32 -699621399, i32 -2, i32 233165809, i32 -1658935580, i32 1, i32 1357823228], [7 x i32] [i32 -1, i32 9, i32 237795663, i32 1505152326, i32 0, i32 1, i32 1], [7 x i32] [i32 -1, i32 -874011762, i32 1, i32 1, i32 9, i32 -65791171, i32 6], [7 x i32] [i32 -1254137614, i32 -1, i32 -699621399, i32 -3, i32 -1, i32 -1, i32 -3], [7 x i32] [i32 1, i32 5, i32 1, i32 -6, i32 -6, i32 462105543, i32 1], [7 x i32] [i32 -1, i32 1, i32 -25540577, i32 0, i32 -1, i32 -1499846118, i32 -1], [7 x i32] [i32 -1, i32 7, i32 -1, i32 -2138363192, i32 1505152326, i32 462105543, i32 976295286], [7 x i32] [i32 -1598958434, i32 -980825019, i32 5, i32 -9, i32 237795663, i32 0, i32 2]], [8 x [7 x i32]] [[7 x i32] [i32 -1, i32 -1834329275, i32 -1687148352, i32 -699621399, i32 -1834329275, i32 -1, i32 1037468877], [7 x i32] [i32 -1, i32 -1045542456, i32 1835066035, i32 -1658935580, i32 -1598958434, i32 5, i32 933659521], [7 x i32] [i32 -1, i32 1, i32 1476642266, i32 0, i32 1505152326, i32 1, i32 -25540577], [7 x i32] [i32 933659521, i32 -1, i32 0, i32 -1, i32 1, i32 -1, i32 1], [7 x i32] [i32 1, i32 -592694865, i32 825069599, i32 -1, i32 -1107746016, i32 2062789329, i32 1], [7 x i32] [i32 1, i32 -980825019, i32 -1, i32 2, i32 1, i32 9, i32 -25540577], [7 x i32] [i32 788284963, i32 -6, i32 -238159801, i32 -1, i32 7, i32 6, i32 933659521], [7 x i32] [i32 1, i32 9, i32 -827684972, i32 1505152326, i32 825069599, i32 0, i32 1037468877]]], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"g_578[i][j][k]\00", align 1
@g_780 = internal global i32 -7, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_780\00", align 1
@g_790 = internal global i32 641694875, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_790\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1067\00", align 1
@g_1115 = internal global i32 1817993981, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1115\00", align 1
@g_1328 = internal global i64 1498358995973216869, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1328\00", align 1
@g_1460 = internal global i64 -2406397696977494977, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1460\00", align 1
@g_1471 = internal global i64 -1, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1471\00", align 1
@g_1654 = internal global i8 -68, align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1654\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1746\00", align 1
@g_1751 = internal global [9 x i32] [i32 -369762102, i32 -369762102, i32 -369762102, i32 -369762102, i32 -369762102, i32 -369762102, i32 -369762102, i32 -369762102, i32 -369762102], align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"g_1751[i]\00", align 1
@g_1775 = internal global i16 -25469, align 2
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1775\00", align 1
@g_1856 = internal global i32 2130070801, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1856\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_2013 = private unnamed_addr constant [4 x [10 x [6 x i32*]]] [[10 x [6 x i32*]] [[6 x i32*] [i32* @g_5, i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_126, i32* @g_780, i32* @g_5, i32* @g_5, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_780, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_5, i32* @g_780], [6 x i32*] [i32* @g_5, i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_126, i32* @g_780, i32* @g_5, i32* @g_5, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_780, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_5, i32* @g_780]], [10 x [6 x i32*]] [[6 x i32*] [i32* @g_5, i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_126, i32* @g_780, i32* @g_5, i32* @g_5, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_780, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_5, i32* @g_780], [6 x i32*] [i32* @g_5, i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_126, i32* @g_780, i32* @g_5, i32* @g_5, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_780, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_5, i32* @g_780]], [10 x [6 x i32*]] [[6 x i32*] [i32* @g_5, i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_126, i32* @g_780, i32* @g_5, i32* @g_5, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_780, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_5, i32* @g_780], [6 x i32*] [i32* @g_5, i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_126, i32* @g_780, i32* @g_5, i32* @g_5, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_780, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* @g_126, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 12) to i32*)], [6 x i32*] [i32* @g_126, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* @g_5]], [10 x [6 x i32*]] [[6 x i32*] [i32* @g_5, i32* null, i32* @g_5, i32* null, i32* @g_5, i32* @g_126], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 28) to i32*), i32* null, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*)], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_5, i32* null, i32* null, i32* @g_126], [6 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* @g_5, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* @g_5], [6 x i32*] [i32* @g_5, i32* null, i32* @g_5, i32* null, i32* @g_5, i32* @g_126], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 28) to i32*), i32* null, i32* @g_5, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*)], [6 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 28) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 4) to i32*)], [6 x i32*] [i32* @g_5, i32* @g_5, i32* @g_5, i32* null, i32* null, i32* @g_126], [6 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* @g_5, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i32]* @g_1751 to i8*), i64 24) to i32*), i32* @g_5]]], align 16
@g_1733 = internal global i32* @g_5, align 8
@func_17.l_2009 = private unnamed_addr constant [6 x [3 x i32*]] [[3 x i32*] [i32* @g_5, i32* null, i32* null], [3 x i32*] [i32* @g_115, i32* @g_115, i32* null], [3 x i32*] [i32* null, i32* @g_5, i32* null], [3 x i32*] [i32* @g_5, i32* null, i32* null], [3 x i32*] [i32* @g_115, i32* @g_115, i32* null], [3 x i32*] [i32* null, i32* @g_5, i32* null]], align 16
@g_587 = internal global i32** @g_124, align 8
@g_669 = internal global i16*** @g_343, align 8
@g_124 = internal global i32* @g_115, align 8
@g_343 = internal global i16** @g_282, align 8
@g_282 = internal global i16* @g_38, align 8
@g_800 = internal global i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [6 x i64**]]* @g_801 to i8*), i64 96) to i64***), align 8
@func_23.l_1340 = private unnamed_addr constant [6 x i32] [i32 -1, i32 1864041371, i32 1864041371, i32 -1, i32 1864041371, i32 1864041371], align 16
@g_819 = internal global i8** @g_820, align 8
@g_164 = internal global i32* @g_115, align 8
@func_23.l_1161 = private unnamed_addr constant [4 x i32] [i32 461893600, i32 461893600, i32 461893600, i32 461893600], align 16
@g_724 = internal global i16*** null, align 8
@g_1067 = internal constant i8 0, align 1
@g_315 = internal global i64* @g_61, align 8
@func_23.l_1591 = private unnamed_addr constant [4 x [1 x [8 x i64]]] [[1 x [8 x i64]] [[8 x i64] [i64 1, i64 322886251692047808, i64 1, i64 1, i64 322886251692047808, i64 1, i64 1, i64 322886251692047808]], [1 x [8 x i64]] [[8 x i64] [i64 322886251692047808, i64 1, i64 1, i64 322886251692047808, i64 1, i64 1, i64 322886251692047808, i64 1]], [1 x [8 x i64]] [[8 x i64] [i64 322886251692047808, i64 322886251692047808, i64 -7470373386069502678, i64 322886251692047808, i64 322886251692047808, i64 -7470373386069502678, i64 322886251692047808, i64 322886251692047808]], [1 x [8 x i64]] [[8 x i64] [i64 1, i64 322886251692047808, i64 1, i64 1, i64 322886251692047808, i64 1, i64 1, i64 322886251692047808]]], align 16
@func_23.l_1675 = private unnamed_addr constant [7 x [10 x [3 x i64]]] [[10 x [3 x i64]] [[3 x i64] [i64 -8, i64 -5894834476274008181, i64 6], [3 x i64] [i64 0, i64 -1, i64 1], [3 x i64] [i64 -8, i64 2, i64 0], [3 x i64] [i64 -1, i64 0, i64 -4608057102393898161], [3 x i64] [i64 -1, i64 2, i64 -1], [3 x i64] [i64 -3068778241316986325, i64 -1, i64 5800869722996398364], [3 x i64] [i64 2666789480406669823, i64 -5894834476274008181, i64 -1], [3 x i64] [i64 5800869722996398364, i64 -3068778241316986325, i64 -4608057102393898161], [3 x i64] [i64 4, i64 -3, i64 0], [3 x i64] [i64 5800869722996398364, i64 5800869722996398364, i64 1]], [10 x [3 x i64]] [[3 x i64] [i64 2666789480406669823, i64 -7, i64 6], [3 x i64] [i64 -3068778241316986325, i64 5800869722996398364, i64 -3068778241316986325], [3 x i64] [i64 -1, i64 -3, i64 -8], [3 x i64] [i64 -1, i64 -3068778241316986325, i64 -3068778241316986325], [3 x i64] [i64 -8, i64 -5894834476274008181, i64 6], [3 x i64] [i64 0, i64 -1, i64 1], [3 x i64] [i64 -8, i64 2, i64 0], [3 x i64] [i64 -1, i64 0, i64 -4608057102393898161], [3 x i64] [i64 -1, i64 2, i64 -1], [3 x i64] [i64 -3068778241316986325, i64 -1, i64 -5562425921211642211]], [10 x [3 x i64]] [[3 x i64] [i64 -1, i64 -7, i64 4], [3 x i64] [i64 -5562425921211642211, i64 0, i64 1], [3 x i64] [i64 6, i64 -5894834476274008181, i64 -8], [3 x i64] [i64 -5562425921211642211, i64 -5562425921211642211, i64 5800869722996398364], [3 x i64] [i64 -1, i64 -4482302663610110362, i64 0], [3 x i64] [i64 0, i64 -5562425921211642211, i64 0], [3 x i64] [i64 4, i64 -5894834476274008181, i64 7447264027609052025], [3 x i64] [i64 -3068778241316986325, i64 0, i64 0], [3 x i64] [i64 7447264027609052025, i64 -7, i64 0], [3 x i64] [i64 -4608057102393898161, i64 -3068778241316986325, i64 5800869722996398364]], [10 x [3 x i64]] [[3 x i64] [i64 7447264027609052025, i64 3092235778284304903, i64 -8], [3 x i64] [i64 -3068778241316986325, i64 -4608057102393898161, i64 1], [3 x i64] [i64 4, i64 3092235778284304903, i64 4], [3 x i64] [i64 0, i64 -3068778241316986325, i64 -5562425921211642211], [3 x i64] [i64 -1, i64 -7, i64 4], [3 x i64] [i64 -5562425921211642211, i64 0, i64 1], [3 x i64] [i64 6, i64 -5894834476274008181, i64 -8], [3 x i64] [i64 -5562425921211642211, i64 -5562425921211642211, i64 5800869722996398364], [3 x i64] [i64 -1, i64 -4482302663610110362, i64 0], [3 x i64] [i64 0, i64 -5562425921211642211, i64 0]], [10 x [3 x i64]] [[3 x i64] [i64 4, i64 -5894834476274008181, i64 7447264027609052025], [3 x i64] [i64 -3068778241316986325, i64 0, i64 0], [3 x i64] [i64 7447264027609052025, i64 -7, i64 0], [3 x i64] [i64 -4608057102393898161, i64 -3068778241316986325, i64 5800869722996398364], [3 x i64] [i64 7447264027609052025, i64 3092235778284304903, i64 -8], [3 x i64] [i64 -3068778241316986325, i64 -4608057102393898161, i64 1], [3 x i64] [i64 4, i64 3092235778284304903, i64 4], [3 x i64] [i64 0, i64 -3068778241316986325, i64 -5562425921211642211], [3 x i64] [i64 -1, i64 -7, i64 4], [3 x i64] [i64 -5562425921211642211, i64 0, i64 1]], [10 x [3 x i64]] [[3 x i64] [i64 6, i64 -5894834476274008181, i64 -8], [3 x i64] [i64 -5562425921211642211, i64 -5562425921211642211, i64 5800869722996398364], [3 x i64] [i64 -1, i64 -4482302663610110362, i64 0], [3 x i64] [i64 0, i64 -5562425921211642211, i64 0], [3 x i64] [i64 4, i64 -5894834476274008181, i64 7447264027609052025], [3 x i64] [i64 -3068778241316986325, i64 0, i64 0], [3 x i64] [i64 7447264027609052025, i64 -7, i64 0], [3 x i64] [i64 -4608057102393898161, i64 -3068778241316986325, i64 5800869722996398364], [3 x i64] [i64 7447264027609052025, i64 3092235778284304903, i64 -8], [3 x i64] [i64 -3068778241316986325, i64 -4608057102393898161, i64 1]], [10 x [3 x i64]] [[3 x i64] [i64 4, i64 3092235778284304903, i64 4], [3 x i64] [i64 0, i64 -3068778241316986325, i64 -5562425921211642211], [3 x i64] [i64 -1, i64 -7, i64 4], [3 x i64] [i64 -5562425921211642211, i64 0, i64 1], [3 x i64] [i64 6, i64 -5894834476274008181, i64 -8], [3 x i64] [i64 -5562425921211642211, i64 -5562425921211642211, i64 5800869722996398364], [3 x i64] [i64 -1, i64 -4482302663610110362, i64 0], [3 x i64] [i64 0, i64 -5562425921211642211, i64 0], [3 x i64] [i64 4, i64 -5894834476274008181, i64 7447264027609052025], [3 x i64] [i64 -3068778241316986325, i64 0, i64 0]]], align 16
@func_23.l_1907 = private unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"V\FF", [2 x i8] c"VV", [2 x i8] c"\FFV", [2 x i8] c"V\FF", [2 x i8] c"VV", [2 x i8] c"\FFV", [2 x i8] c"V\FF", [2 x i8] c"VV"], align 16
@func_23.l_1982 = internal constant [1 x i64] zeroinitializer, align 8
@g_634 = internal global i32**** @g_635, align 8
@g_1819 = internal global i16* @g_433, align 8
@g_668 = internal global i16**** @g_669, align 8
@g_820 = internal global i8* @g_406, align 8
@g_1186 = internal global i32** @g_124, align 8
@g_123 = internal global i32** @g_124, align 8
@g_801 = internal global [7 x [6 x i64**]] [[6 x i64**] [i64** @g_313, i64** null, i64** @g_315, i64** @g_313, i64** @g_313, i64** @g_313], [6 x i64**] [i64** @g_313, i64** @g_315, i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_313], [6 x i64**] [i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_315, i64** @g_313], [6 x i64**] [i64** @g_315, i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_315], [6 x i64**] [i64** null, i64** @g_313, i64** @g_313, i64** @g_315, i64** @g_313, i64** null], [6 x i64**] [i64** @g_315, i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_315, i64** @g_315], [6 x i64**] [i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_313, i64** @g_313, i64** null]], align 16
@g_313 = internal global i64* @g_61, align 8
@g_635 = internal global i32*** @g_633, align 8
@g_633 = internal global i32** @g_504, align 8
@g_504 = internal global i32* @g_505, align 8
@func_28.l_62 = private unnamed_addr constant [7 x [9 x [4 x i32*]]] [[9 x [4 x i32*]] [[4 x i32*] [i32* @g_63, i32* @g_5, i32* null, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_63], [4 x i32*] [i32* null, i32* @g_63, i32* @g_5, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_5, i32* @g_63, i32* null, i32* @g_63], [4 x i32*] [i32* @g_63, i32* null, i32* @g_5, i32* @g_63]], [9 x [4 x i32*]] [[4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* null], [4 x i32*] [i32* null, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_5, i32* @g_5, i32* null, i32* @g_63], [4 x i32*] [i32* @g_5, i32* @g_5, i32* @g_5, i32* @g_5]], [9 x [4 x i32*]] [[4 x i32*] [i32* null, i32* @g_63, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* null], [4 x i32*] [i32* @g_63, i32* @g_63, i32* null, i32* null], [4 x i32*] [i32* @g_5, i32* null, i32* @g_5, i32* null]], [9 x [4 x i32*]] [[4 x i32*] [i32* @g_63, i32* null, i32* @g_5, i32* null], [4 x i32*] [i32* null, i32* @g_63, i32* @g_63, i32* null], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_5, i32* @g_63, i32* null, i32* @g_63], [4 x i32*] [i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [4 x i32*] [i32* null, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_5]], [9 x [4 x i32*]] [[4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* null], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_5], [4 x i32*] [i32* null, i32* @g_63, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_5, i32* @g_63, i32* null, i32* @g_5], [4 x i32*] [i32* @g_5, i32* @g_5, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_63]], [9 x [4 x i32*]] [[4 x i32*] [i32* @g_63, i32* null, i32* @g_63, i32* @g_63], [4 x i32*] [i32* null, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_5, i32* @g_63, i32* null, i32* @g_63], [4 x i32*] [i32* @g_63, i32* null, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_63]], [9 x [4 x i32*]] [[4 x i32*] [i32* null, i32* @g_5, i32* null, i32* @g_5], [4 x i32*] [i32* @g_5, i32* @g_5, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_5, i32* @g_63, i32* @g_63], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_5, i32* @g_5], [4 x i32*] [i32* @g_5, i32* @g_63, i32* null, i32* @g_63], [4 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_5], [4 x i32*] [i32* @g_63, i32* @g_63, i32* @g_63, i32* @g_5]]], align 16
@func_28.l_88 = internal constant [8 x [5 x i32*]] [[5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5], [5 x i32*] [i32* null, i32* @g_5, i32* @g_63, i32* @g_63, i32* @g_5]], align 16
@g_967 = internal global i32** @g_124, align 8
@g_822 = internal global i8**** @g_823, align 8
@g_1134 = internal constant i32* @g_301, align 8
@g_823 = internal global i8*** null, align 8
@func_78.l_596 = private unnamed_addr constant [10 x i16] [i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2], align 16
@func_78.l_777 = private unnamed_addr constant [8 x [4 x [1 x i32]]] [[4 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1436875480], [1 x i32] [i32 -1]], [4 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 -2139466547], [1 x i32] [i32 -2026449765], [1 x i32] [i32 1436875480]], [4 x [1 x i32]] [[1 x i32] [i32 1436875480], [1 x i32] [i32 -2026449765], [1 x i32] [i32 -2139466547], [1 x i32] [i32 1]], [4 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 1436875480], [1 x i32] [i32 1], [1 x i32] [i32 1]], [4 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1436875480], [1 x i32] [i32 -1], [1 x i32] [i32 1]], [4 x [1 x i32]] [[1 x i32] [i32 -2139466547], [1 x i32] [i32 -2026449765], [1 x i32] [i32 1436875480], [1 x i32] [i32 1436875480]], [4 x [1 x i32]] [[1 x i32] [i32 -2026449765], [1 x i32] [i32 -2139466547], [1 x i32] [i32 1], [1 x i32] [i32 -1]], [4 x [1 x i32]] [[1 x i32] [i32 1436875480], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 1]]], align 16
@func_78.l_785 = private unnamed_addr constant [9 x i8] c"777777777", align 1
@g_336 = internal global i64* @g_61, align 8
@g_723 = internal global i16**** @g_724, align 8
@func_78.l_988 = private unnamed_addr constant [10 x [4 x i32**]] [[4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504], [4 x i32**] [i32** @g_504, i32** @g_504, i32** @g_504, i32** @g_504]], align 16
@func_78.l_593 = private unnamed_addr constant [8 x i32*] [i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126, i32* @g_126], align 16
@func_78.l_655 = internal constant [8 x i64] [i64 -8, i64 0, i64 -8, i64 0, i64 -8, i64 0, i64 -8, i64 0], align 16
@func_78.l_913 = private unnamed_addr constant [7 x [9 x i32]] [[9 x i32] [i32 391532956, i32 659299599, i32 774959276, i32 659299599, i32 391532956, i32 5, i32 1, i32 -1, i32 -1], [9 x i32] [i32 -333974151, i32 -552491476, i32 1, i32 1076770655, i32 3, i32 1076770655, i32 1, i32 -552491476, i32 -333974151], [9 x i32] [i32 0, i32 0, i32 -4, i32 391532956, i32 -1, i32 5, i32 -1725735067, i32 5, i32 -1], [9 x i32] [i32 -146576294, i32 0, i32 0, i32 -146576294, i32 1076770655, i32 1866030233, i32 -37246055, i32 -1, i32 1958015352], [9 x i32] [i32 0, i32 -1, i32 -1725735067, i32 1608163202, i32 1608163202, i32 -1725735067, i32 -1, i32 0, i32 774959276], [9 x i32] [i32 -333974151, i32 1, i32 1958015352, i32 -614921815, i32 1076770655, i32 -1, i32 -1, i32 1076770655, i32 -614921815], [9 x i32] [i32 391532956, i32 1, i32 391532956, i32 0, i32 -1, i32 1608163202, i32 1, i32 774959276, i32 774959276]], align 16
@g_334 = internal global i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [6 x i64**]]* @g_335 to i8*), i64 32) to i64***), align 8
@g_503 = internal global i32** @g_504, align 8
@func_78.l_654 = private unnamed_addr constant [2 x [6 x i16***]] [[6 x i16***] [i16*** @g_343, i16*** null, i16*** null, i16*** @g_343, i16*** null, i16*** null], [6 x i16***] [i16*** @g_343, i16*** null, i16*** null, i16*** @g_343, i16*** null, i16*** null]], align 16
@g_632 = internal constant i32*** @g_633, align 8
@func_78.l_673 = private unnamed_addr constant [5 x i16*] [i16* @g_306, i16* @g_306, i16* @g_306, i16* @g_306, i16* @g_306], align 16
@func_78.l_693 = private unnamed_addr constant [8 x [9 x [3 x i32**]]] [[9 x [3 x i32**]] [[3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** null, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** null, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124]], [9 x [3 x i32**]] [[3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** null, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** null, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null]], [9 x [3 x i32**]] [[3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** null, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** null, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] zeroinitializer, [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124]], [9 x [3 x i32**]] [[3 x i32**] [i32** null, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** null, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124]], [9 x [3 x i32**]] [[3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** null, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** null, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null]], [9 x [3 x i32**]] [[3 x i32**] [i32** null, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** null, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] zeroinitializer, [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** null, i32** @g_124, i32** @g_124]], [9 x [3 x i32**]] [[3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** null], [3 x i32**] [i32** null, i32** @g_124, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124]], [9 x [3 x i32**]] [[3 x i32**] [i32** @g_124, i32** null, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** null, i32** @g_124], [3 x i32**] [i32** @g_124, i32** null, i32** null], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124], [3 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124]]], align 16
@g_229 = internal global i8* @g_230, align 8
@g_818 = internal global i8*** @g_819, align 8
@func_78.l_883 = private unnamed_addr constant [6 x [2 x [9 x i32]]] [[2 x [9 x i32]] [[9 x i32] [i32 6, i32 1, i32 0, i32 0, i32 1, i32 6, i32 -1, i32 -1, i32 429476538], [9 x i32] [i32 -3, i32 -758618182, i32 741736412, i32 -135628016, i32 -9, i32 1, i32 -1111485906, i32 -10, i32 -10]], [2 x [9 x i32]] [[9 x i32] [i32 -1, i32 1254980172, i32 -8, i32 -1, i32 -8, i32 1254980172, i32 -1, i32 0, i32 -1309623674], [9 x i32] [i32 0, i32 -10, i32 1, i32 0, i32 790202644, i32 -1, i32 -9, i32 -3333708, i32 -8]], [2 x [9 x i32]] [[9 x i32] [i32 0, i32 -7, i32 -1309623674, i32 1254980172, i32 1254980172, i32 -1309623674, i32 -7, i32 0, i32 0], [9 x i32] [i32 -74511552, i32 -741730811, i32 -1111485906, i32 -3333708, i32 -3, i32 -1839433982, i32 -758618182, i32 -10, i32 -1]], [2 x [9 x i32]] [[9 x i32] [i32 0, i32 -1, i32 1, i32 -1, i32 429476538, i32 -1, i32 1, i32 -1, i32 0], [9 x i32] [i32 -9, i32 0, i32 -3, i32 790202644, i32 -74511552, i32 -758618182, i32 -741730811, i32 741736412, i32 -8]], [2 x [9 x i32]] [[9 x i32] [i32 905827440, i32 -1309623674, i32 -1, i32 1256442861, i32 -1009333, i32 -1009333, i32 1256442861, i32 -1, i32 -1309623674], [9 x i32] [i32 -9, i32 -74511552, i32 -741730811, i32 -1111485906, i32 -3333708, i32 -3, i32 -1839433982, i32 -758618182, i32 -10]], [2 x [9 x i32]] [[9 x i32] [i32 0, i32 1256442861, i32 429476538, i32 6, i32 -1, i32 1, i32 -1, i32 6, i32 429476538], [9 x i32] [i32 -74511552, i32 -74511552, i32 -9, i32 -741730811, i32 0, i32 741736412, i32 -1111485906, i32 0, i32 -3333708]]], align 16
@func_78.l_932 = private unnamed_addr constant [3 x [1 x [9 x i32**]]] [[1 x [9 x i32**]] [[9 x i32**] [i32** @g_124, i32** @g_124, i32** null, i32** @g_124, i32** @g_124, i32** @g_124, i32** null, i32** @g_124, i32** @g_124]], [1 x [9 x i32**]] [[9 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124]], [1 x [9 x i32**]] [[9 x i32**] [i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124, i32** @g_124]]], align 16
@func_78.l_964 = internal constant [6 x [10 x i8]] [[10 x i8] c"\004$\FE\84#4\F6\F1k", [10 x i8] c"\01\C0$\84\FD\F6\C0\F6\FD\84", [10 x i8] c"$\07$\F1\FE\00\07\F6k\FD", [10 x i8] c"#\D9$\FD\F1\01\D9\F6\FE\FE", [10 x i8] c"\F6S$kk$S\F6\84\F1", [10 x i8] c"\004$\FE\84#4\F6\F1k"], align 16
@func_78.l_1042 = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@g_1064 = internal global i8** null, align 8
@g_1073 = internal global i16*** @g_343, align 8
@g_335 = internal global [2 x [6 x i64**]] [[6 x i64**] [i64** @g_336, i64** @g_336, i64** @g_336, i64** @g_336, i64** @g_336, i64** @g_336], [6 x i64**] [i64** @g_336, i64** @g_336, i64** @g_336, i64** @g_336, i64** @g_336, i64** @g_336]], align 16
@func_84.l_113 = private unnamed_addr constant [8 x [8 x [1 x i8]]] [[8 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7"], [8 x [1 x i8]] [[1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7"], [8 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5"], [8 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7"], [8 x [1 x i8]] [[1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7"], [8 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5"], [8 x [1 x i8]] [[1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7"], [8 x [1 x i8]] [[1 x i8] c"\06", [1 x i8] c"\C7", [1 x i8] zeroinitializer, [1 x i8] c"\D5", [1 x i8] zeroinitializer, [1 x i8] c"\C7", [1 x i8] c"\06", [1 x i8] c"\C7"]], align 16
@func_84.l_171 = private unnamed_addr constant [9 x [3 x [8 x i32]]] [[3 x [8 x i32]] [[8 x i32] [i32 -1, i32 -1197198140, i32 380242339, i32 907912615, i32 -800709805, i32 -839138063, i32 -1197198140, i32 0], [8 x i32] [i32 -1, i32 907912615, i32 0, i32 -800709805, i32 -1332336802, i32 -1332336802, i32 -800709805, i32 0], [8 x i32] [i32 -1332336802, i32 -1332336802, i32 -800709805, i32 0, i32 907912615, i32 -1, i32 827014782, i32 837955576]], [3 x [8 x i32]] [[8 x i32] [i32 -839138063, i32 -800709805, i32 907912615, i32 -1296920195, i32 -1628507964, i32 0, i32 380242339, i32 -839138063], [8 x i32] [i32 -1, i32 -1, i32 -1197198140, i32 1, i32 827014782, i32 -1, i32 827014782, i32 1], [8 x i32] [i32 -1296920195, i32 -1332336802, i32 -1296920195, i32 -1, i32 0, i32 1, i32 -1332336802, i32 -1410858588]], [3 x [8 x i32]] [[8 x i32] [i32 907912615, i32 -839138063, i32 0, i32 -1, i32 -800709805, i32 837955576, i32 0, i32 0], [8 x i32] [i32 907912615, i32 -800709805, i32 -839138063, i32 -1197198140, i32 0, i32 -916276107, i32 -916276107, i32 0], [8 x i32] [i32 -1296920195, i32 380242339, i32 380242339, i32 -1296920195, i32 827014782, i32 -1410858588, i32 -839138063, i32 -1]], [3 x [8 x i32]] [[8 x i32] [i32 -1, i32 1093158042, i32 1, i32 0, i32 -1628507964, i32 -1, i32 -1, i32 -1197198140], [8 x i32] [i32 2093282038, i32 1093158042, i32 -1296920195, i32 -839138063, i32 -1, i32 -1410858588, i32 1093158042, i32 -1410858588], [8 x i32] [i32 -800709805, i32 380242339, i32 149522529, i32 380242339, i32 -800709805, i32 -916276107, i32 -1, i32 149522529]], [3 x [8 x i32]] [[8 x i32] [i32 1, i32 -800709805, i32 0, i32 1, i32 -1, i32 837955576, i32 -916276107, i32 380242339], [8 x i32] [i32 0, i32 -839138063, i32 0, i32 -1296920195, i32 -1, i32 1, i32 -1, i32 -1], [8 x i32] [i32 -1, i32 -1332336802, i32 149522529, i32 149522529, i32 -1332336802, i32 -1, i32 1093158042, i32 1]], [3 x [8 x i32]] [[8 x i32] [i32 1, i32 -1, i32 -1296920195, i32 0, i32 -839138063, i32 0, i32 -1, i32 -1410858588], [8 x i32] [i32 837955576, i32 -1, i32 1, i32 0, i32 -800709805, i32 1, i32 -839138063, i32 1], [8 x i32] [i32 -916276107, i32 -800709805, i32 380242339, i32 149522529, i32 380242339, i32 -800709805, i32 -916276107, i32 -1]], [3 x [8 x i32]] [[8 x i32] [i32 -1410858588, i32 -1, i32 -839138063, i32 -1296920195, i32 1093158042, i32 2093282038, i32 0, i32 380242339], [8 x i32] [i32 -1, i32 -1628507964, i32 0, i32 1, i32 1093158042, i32 -1, i32 -1332336802, i32 149522529], [8 x i32] [i32 -1410858588, i32 827014782, i32 -1296920195, i32 380242339, i32 380242339, i32 -1296920195, i32 827014782, i32 -1410858588]], [3 x [8 x i32]] [[8 x i32] [i32 -916276107, i32 0, i32 -1197198140, i32 -839138063, i32 -800709805, i32 907912615, i32 380242339, i32 -1197198140], [8 x i32] [i32 837955576, i32 -800709805, i32 -1, i32 0, i32 -839138063, i32 907912615, i32 -916276107, i32 -1], [8 x i32] [i32 1, i32 0, i32 -1, i32 -1296920195, i32 -1332336802, i32 -1296920195, i32 -1, i32 0]], [3 x [8 x i32]] [[8 x i32] [i32 -1, i32 827014782, i32 1, i32 -1197198140, i32 -1, i32 -1, i32 -1628507964, i32 0], [8 x i32] [i32 0, i32 -1628507964, i32 -1296920195, i32 -1, i32 -1, i32 2093282038, i32 -1628507964, i32 -1410858588], [8 x i32] [i32 1, i32 -1, i32 1, i32 -1, i32 -800709805, i32 -800709805, i32 -1, i32 1]]], align 16
@.str.40 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
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
  %91 = load i32, i32* @g_5, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i64, i64* @g_36, align 8, !tbaa !7
  %95 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %95)
  %96 = load i16, i16* @g_38, align 2, !tbaa !10
  %97 = sext i16 %96 to i64
  %98 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %98)
  %99 = load i16, i16* @g_52, align 2, !tbaa !10
  %100 = sext i16 %99 to i64
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  %102 = load i32, i32* @g_54, align 4, !tbaa !1
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %104)
  %105 = load i64, i64* @g_59, align 8, !tbaa !7
  %106 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %106)
  %107 = load i64, i64* @g_61, align 8, !tbaa !7
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* @g_63, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* @g_115, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %114)
  %115 = load i32, i32* @g_126, align 4, !tbaa !1
  %116 = sext i32 %115 to i64
  %117 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %117)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %118

; <label>:118                                     ; preds = %134, %89
  %119 = load i32, i32* %i, align 4, !tbaa !1
  %120 = icmp slt i32 %119, 7
  br i1 %120, label %121, label %137

; <label>:121                                     ; preds = %118
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [7 x i8], [7 x i8]* @g_167, i32 0, i64 %123
  %125 = load i8, i8* %124, align 1, !tbaa !9
  %126 = zext i8 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %127)
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

; <label>:130                                     ; preds = %121
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %131)
  br label %133

; <label>:133                                     ; preds = %130, %121
  br label %134

; <label>:134                                     ; preds = %133
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %i, align 4, !tbaa !1
  br label %118

; <label>:137                                     ; preds = %118
  %138 = load volatile i8, i8* @g_230, align 1, !tbaa !9
  %139 = sext i8 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %140)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:141                                     ; preds = %180, %137
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = icmp slt i32 %142, 7
  br i1 %143, label %144, label %183

; <label>:144                                     ; preds = %141
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %145

; <label>:145                                     ; preds = %176, %144
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = icmp slt i32 %146, 5
  br i1 %147, label %148, label %179

; <label>:148                                     ; preds = %145
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %149

; <label>:149                                     ; preds = %172, %148
  %150 = load i32, i32* %k, align 4, !tbaa !1
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %152, label %175

; <label>:152                                     ; preds = %149
  %153 = load i32, i32* %k, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = load i32, i32* %j, align 4, !tbaa !1
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %i, align 4, !tbaa !1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [7 x [5 x [1 x i64]]], [7 x [5 x [1 x i64]]]* @g_266, i32 0, i64 %158
  %160 = getelementptr inbounds [5 x [1 x i64]], [5 x [1 x i64]]* %159, i32 0, i64 %156
  %161 = getelementptr inbounds [1 x i64], [1 x i64]* %160, i32 0, i64 %154
  %162 = load i64, i64* %161, align 8, !tbaa !7
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %163)
  %164 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

; <label>:166                                     ; preds = %152
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = load i32, i32* %j, align 4, !tbaa !1
  %169 = load i32, i32* %k, align 4, !tbaa !1
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %167, i32 %168, i32 %169)
  br label %171

; <label>:171                                     ; preds = %166, %152
  br label %172

; <label>:172                                     ; preds = %171
  %173 = load i32, i32* %k, align 4, !tbaa !1
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %k, align 4, !tbaa !1
  br label %149

; <label>:175                                     ; preds = %149
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load i32, i32* %j, align 4, !tbaa !1
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %j, align 4, !tbaa !1
  br label %145

; <label>:179                                     ; preds = %145
  br label %180

; <label>:180                                     ; preds = %179
  %181 = load i32, i32* %i, align 4, !tbaa !1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %i, align 4, !tbaa !1
  br label %141

; <label>:183                                     ; preds = %141
  %184 = load i32, i32* @g_301, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %185, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %186)
  %187 = load volatile i32, i32* @g_305, align 4, !tbaa !1
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %189)
  %190 = load i16, i16* @g_306, align 2, !tbaa !10
  %191 = zext i16 %190 to i64
  %192 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %192)
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %193)
  %194 = load i8, i8* @g_406, align 1, !tbaa !9
  %195 = sext i8 %194 to i64
  %196 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %196)
  %197 = load i16, i16* @g_433, align 2, !tbaa !10
  %198 = zext i16 %197 to i64
  %199 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %199)
  %200 = load i16, i16* @g_479, align 2, !tbaa !10
  %201 = zext i16 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %202)
  %203 = load volatile i8, i8* @g_482, align 1, !tbaa !9
  %204 = zext i8 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* @g_505, align 4, !tbaa !1
  %207 = zext i32 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %208)
  %209 = load i32, i32* @g_546, align 4, !tbaa !1
  %210 = zext i32 %209 to i64
  %211 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %211)
  %212 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 31818, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %212)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %213

; <label>:213                                     ; preds = %253, %183
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = icmp slt i32 %214, 4
  br i1 %215, label %216, label %256

; <label>:216                                     ; preds = %213
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %217

; <label>:217                                     ; preds = %249, %216
  %218 = load i32, i32* %j, align 4, !tbaa !1
  %219 = icmp slt i32 %218, 8
  br i1 %219, label %220, label %252

; <label>:220                                     ; preds = %217
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %221

; <label>:221                                     ; preds = %245, %220
  %222 = load i32, i32* %k, align 4, !tbaa !1
  %223 = icmp slt i32 %222, 7
  br i1 %223, label %224, label %248

; <label>:224                                     ; preds = %221
  %225 = load i32, i32* %k, align 4, !tbaa !1
  %226 = sext i32 %225 to i64
  %227 = load i32, i32* %j, align 4, !tbaa !1
  %228 = sext i32 %227 to i64
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [4 x [8 x [7 x i32]]], [4 x [8 x [7 x i32]]]* @g_578, i32 0, i64 %230
  %232 = getelementptr inbounds [8 x [7 x i32]], [8 x [7 x i32]]* %231, i32 0, i64 %228
  %233 = getelementptr inbounds [7 x i32], [7 x i32]* %232, i32 0, i64 %226
  %234 = load volatile i32, i32* %233, align 4, !tbaa !1
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 %236)
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

; <label>:239                                     ; preds = %224
  %240 = load i32, i32* %i, align 4, !tbaa !1
  %241 = load i32, i32* %j, align 4, !tbaa !1
  %242 = load i32, i32* %k, align 4, !tbaa !1
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %240, i32 %241, i32 %242)
  br label %244

; <label>:244                                     ; preds = %239, %224
  br label %245

; <label>:245                                     ; preds = %244
  %246 = load i32, i32* %k, align 4, !tbaa !1
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %k, align 4, !tbaa !1
  br label %221

; <label>:248                                     ; preds = %221
  br label %249

; <label>:249                                     ; preds = %248
  %250 = load i32, i32* %j, align 4, !tbaa !1
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %j, align 4, !tbaa !1
  br label %217

; <label>:252                                     ; preds = %217
  br label %253

; <label>:253                                     ; preds = %252
  %254 = load i32, i32* %i, align 4, !tbaa !1
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %i, align 4, !tbaa !1
  br label %213

; <label>:256                                     ; preds = %213
  %257 = load i32, i32* @g_780, align 4, !tbaa !1
  %258 = sext i32 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %259)
  %260 = load i32, i32* @g_790, align 4, !tbaa !1
  %261 = zext i32 %260 to i64
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %262)
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %263)
  %264 = load i32, i32* @g_1115, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %266)
  %267 = load i64, i64* @g_1328, align 8, !tbaa !7
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %268)
  %269 = load i64, i64* @g_1460, align 8, !tbaa !7
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %270)
  %271 = load i64, i64* @g_1471, align 8, !tbaa !7
  %272 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %271, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %272)
  %273 = load i8, i8* @g_1654, align 1, !tbaa !9
  %274 = sext i8 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1031019627, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %276)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %277

; <label>:277                                     ; preds = %293, %256
  %278 = load i32, i32* %i, align 4, !tbaa !1
  %279 = icmp slt i32 %278, 9
  br i1 %279, label %280, label %296

; <label>:280                                     ; preds = %277
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [9 x i32], [9 x i32]* @g_1751, i32 0, i64 %282
  %284 = load i32, i32* %283, align 4, !tbaa !1
  %285 = sext i32 %284 to i64
  %286 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %285, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 %286)
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

; <label>:289                                     ; preds = %280
  %290 = load i32, i32* %i, align 4, !tbaa !1
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 %290)
  br label %292

; <label>:292                                     ; preds = %289, %280
  br label %293

; <label>:293                                     ; preds = %292
  %294 = load i32, i32* %i, align 4, !tbaa !1
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %i, align 4, !tbaa !1
  br label %277

; <label>:296                                     ; preds = %277
  %297 = load i16, i16* @g_1775, align 2, !tbaa !10
  %298 = zext i16 %297 to i64
  %299 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %298, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %299)
  %300 = load i32, i32* @g_1856, align 4, !tbaa !1
  %301 = zext i32 %300 to i64
  %302 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %301, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %302)
  %303 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %304 = zext i32 %303 to i64
  %305 = xor i64 %304, 4294967295
  %306 = trunc i64 %305 to i32
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %306, i32 %307)
  %308 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
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
  %l_2 = alloca i32, align 4
  %l_3 = alloca i32*, align 8
  %l_4 = alloca i32*, align 8
  %l_27 = alloca i32, align 4
  %l_1147 = alloca i32, align 4
  %l_1148 = alloca i16*, align 8
  %l_2013 = alloca [4 x [10 x [6 x i32*]]], align 16
  %l_2014 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32* %l_2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -658219813, i32* %l_2, align 4, !tbaa !1
  %2 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* null, i32** %l_3, align 8, !tbaa !5
  %3 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32* @g_5, i32** %l_4, align 8, !tbaa !5
  %4 = bitcast i32* %l_27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %l_27, align 4, !tbaa !1
  %5 = bitcast i32* %l_1147 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %l_1147, align 4, !tbaa !1
  %6 = bitcast i16** %l_1148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_479, i16** %l_1148, align 8, !tbaa !5
  %7 = bitcast [4 x [10 x [6 x i32*]]]* %l_2013 to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %7) #1
  %8 = bitcast [4 x [10 x [6 x i32*]]]* %l_2013 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([4 x [10 x [6 x i32*]]]* @func_1.l_2013 to i8*), i64 1920, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_2014) #1
  store i8 -118, i8* %l_2014, align 1, !tbaa !9
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %l_2, align 4, !tbaa !1
  %13 = load i32*, i32** %l_4, align 8, !tbaa !5
  store i32 %12, i32* %13, align 4, !tbaa !1
  %14 = load i32*, i32** %l_4, align 8, !tbaa !5
  %15 = load i32, i32* %14, align 4, !tbaa !1
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* @g_5, align 4, !tbaa !1
  %18 = load i32, i32* @g_5, align 4, !tbaa !1
  %19 = load i32, i32* %l_27, align 4, !tbaa !1
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* @g_5, align 4, !tbaa !1
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* @g_5, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = call i32 @func_28(i64 %24)
  %26 = sext i32 %25 to i64
  %27 = load i32*, i32** %l_4, align 8, !tbaa !5
  %28 = load i32, i32* %27, align 4, !tbaa !1
  %29 = load i32, i32* %l_1147, align 4, !tbaa !1
  %30 = sext i32 %29 to i64
  %31 = and i64 65528, %30
  %32 = trunc i64 %31 to i16
  %33 = load i16*, i16** %l_1148, align 8, !tbaa !5
  store i16 %32, i16* %33, align 2, !tbaa !10
  %34 = zext i16 %32 to i32
  %35 = and i32 %28, %34
  br i1 true, label %39, label %36

; <label>:36                                      ; preds = %0
  %37 = load i32, i32* @g_546, align 4, !tbaa !1
  %38 = icmp ne i32 %37, 0
  br label %39

; <label>:39                                      ; preds = %36, %0
  %40 = phi i1 [ true, %0 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %l_4, align 8, !tbaa !5
  %43 = load i32, i32* %42, align 4, !tbaa !1
  %44 = icmp sgt i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = call i64 @safe_mod_func_int64_t_s_s(i64 %46, i64 -7741018786257104908)
  %48 = or i64 %47, 1
  %49 = icmp eq i64 %26, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @g_1115, align 4, !tbaa !1
  %52 = icmp sgt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32* @func_23(i64 %20, i8 signext %22, i32 %53)
  %55 = load i32*, i32** %l_4, align 8, !tbaa !5
  %56 = load i32*, i32** %l_4, align 8, !tbaa !5
  %57 = load i32, i32* %56, align 4, !tbaa !1
  %58 = sext i32 %57 to i64
  %59 = load i16, i16* @g_1775, align 2, !tbaa !10
  %60 = zext i16 %59 to i32
  %61 = call signext i16 @func_17(i32* %54, i32* %55, i64 %58, i32 %60, i32* @g_5)
  %62 = load i32*, i32** %l_4, align 8, !tbaa !5
  %63 = load i32, i32* %62, align 4, !tbaa !1
  %64 = trunc i32 %63 to i16
  %65 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %61, i16 signext %64)
  %66 = sext i16 %65 to i64
  %67 = load i32*, i32** %l_4, align 8, !tbaa !5
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = sext i32 %68 to i64
  %70 = call i64 @safe_add_func_int64_t_s_s(i64 %66, i64 %69)
  %71 = xor i64 %16, %70
  %72 = xor i64 %71, -1
  %73 = load i32*, i32** @g_1733, align 8, !tbaa !5
  %74 = load i32, i32* %73, align 4, !tbaa !1
  %75 = sext i32 %74 to i64
  %76 = xor i64 %72, %75
  %77 = trunc i64 %76 to i8
  %78 = load i32*, i32** %l_4, align 8, !tbaa !5
  %79 = load i32, i32* %78, align 4, !tbaa !1
  %80 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %77, i32 %79)
  %81 = load i32*, i32** %l_4, align 8, !tbaa !5
  %82 = load i32, i32* %81, align 4, !tbaa !1
  %83 = trunc i32 %82 to i16
  %84 = load i32*, i32** %l_4, align 8, !tbaa !5
  %85 = load i32, i32* %84, align 4, !tbaa !1
  %86 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %83, i32 %85)
  %87 = zext i16 %86 to i32
  %88 = load i32*, i32** %l_4, align 8, !tbaa !5
  %89 = load i32, i32* %88, align 4, !tbaa !1
  %90 = or i32 %87, %89
  %91 = sext i32 %90 to i64
  %92 = load i32*, i32** %l_4, align 8, !tbaa !5
  %93 = load i32, i32* %92, align 4, !tbaa !1
  %94 = sext i32 %93 to i64
  %95 = call i64 @safe_sub_func_int64_t_s_s(i64 %91, i64 %94)
  %96 = load i32*, i32** %l_4, align 8, !tbaa !5
  %97 = load i32, i32* %96, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %95, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* @g_126, align 4, !tbaa !1
  %102 = or i32 %101, %100
  store i32 %102, i32* @g_126, align 4, !tbaa !1
  %103 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2014) #1
  %106 = bitcast [4 x [10 x [6 x i32*]]]* %l_2013 to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %106) #1
  %107 = bitcast i16** %l_1148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i32* %l_1147 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %l_27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32** %l_4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast i32** %l_3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %l_2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  ret i32 -118
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
define internal signext i16 @func_17(i32* %p_18, i32* %p_19, i64 %p_20, i32 %p_21, i32* %p_22) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %l_2005 = alloca i32*, align 8
  %l_2006 = alloca i32, align 4
  %l_2007 = alloca i32*, align 8
  %l_2008 = alloca i32*, align 8
  %l_2009 = alloca [6 x [3 x i32*]], align 16
  %l_2010 = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %p_18, i32** %1, align 8, !tbaa !5
  store i32* %p_19, i32** %2, align 8, !tbaa !5
  store i64 %p_20, i64* %3, align 8, !tbaa !7
  store i32 %p_21, i32* %4, align 4, !tbaa !1
  store i32* %p_22, i32** %5, align 8, !tbaa !5
  %6 = bitcast i32** %l_2005 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_301, i32** %l_2005, align 8, !tbaa !5
  %7 = bitcast i32* %l_2006 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1986537709, i32* %l_2006, align 4, !tbaa !1
  %8 = bitcast i32** %l_2007 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* %l_2006, i32** %l_2007, align 8, !tbaa !5
  %9 = bitcast i32** %l_2008 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_126, i32** %l_2008, align 8, !tbaa !5
  %10 = bitcast [6 x [3 x i32*]]* %l_2009 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %10) #1
  %11 = bitcast [6 x [3 x i32*]]* %l_2009 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([6 x [3 x i32*]]* @func_17.l_2009 to i8*), i64 144, i32 16, i1 false)
  %12 = bitcast [1 x i32]* %l_2010 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %22, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %l_2010, i32 0, i64 %20
  store i32 62563723, i32* %21, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:25                                      ; preds = %15
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %l_2010, i32 0, i64 0
  %27 = load i32, i32* %26, align 4, !tbaa !1
  %28 = add i32 %27, -1
  store i32 %28, i32* %26, align 4, !tbaa !1
  %29 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %30 = load i32*, i32** %29, align 8, !tbaa !5
  store i32 -1792721353, i32* %30, align 4, !tbaa !1
  %31 = load i16***, i16**** @g_669, align 8, !tbaa !5
  %32 = load volatile i16**, i16*** %31, align 8, !tbaa !5
  %33 = load i16*, i16** %32, align 8, !tbaa !5
  %34 = load i16, i16* %33, align 2, !tbaa !10
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast [1 x i32]* %l_2010 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast [6 x [3 x i32*]]* %l_2009 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %38) #1
  %39 = bitcast i32** %l_2008 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32** %l_2007 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %l_2006 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32** %l_2005 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  ret i16 %34
}

; Function Attrs: nounwind uwtable
define internal i32* @func_23(i64 %p_24, i8 signext %p_25, i32 %p_26) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %l_1149 = alloca i32*, align 8
  %l_1153 = alloca i64****, align 8
  %l_1152 = alloca [10 x i64*****], align 16
  %l_1177 = alloca i16****, align 8
  %l_1192 = alloca i32, align 4
  %l_1213 = alloca i32, align 4
  %l_1215 = alloca i32, align 4
  %l_1224 = alloca i32, align 4
  %l_1225 = alloca i32, align 4
  %l_1226 = alloca i32, align 4
  %l_1304 = alloca i32, align 4
  %l_1337 = alloca i32, align 4
  %l_1339 = alloca i32, align 4
  %l_1340 = alloca [6 x i32], align 16
  %l_1373 = alloca i8, align 1
  %l_1374 = alloca i64, align 8
  %l_1439 = alloca i8***, align 8
  %l_1470 = alloca i64*, align 8
  %l_1469 = alloca i64**, align 8
  %l_1581 = alloca i8, align 1
  %l_1621 = alloca i32, align 4
  %l_1667 = alloca [3 x i32*], align 16
  %l_1717 = alloca i16, align 2
  %l_1843 = alloca i8***, align 8
  %l_1860 = alloca i32, align 4
  %l_2004 = alloca [2 x i32*], align 16
  %i = alloca i32, align 4
  %l_1160 = alloca i64*, align 8
  %l_1161 = alloca [4 x i32], align 16
  %l_1179 = alloca i16****, align 8
  %l_1197 = alloca i32, align 4
  %l_1273 = alloca i8*, align 8
  %l_1272 = alloca [4 x i8**], align 16
  %l_1341 = alloca i64, align 8
  %l_1342 = alloca i32, align 4
  %l_1452 = alloca i16*, align 8
  %l_1467 = alloca i64**, align 8
  %l_1481 = alloca i8***, align 8
  %l_1480 = alloca i8****, align 8
  %l_1533 = alloca [7 x i32*], align 16
  %l_1532 = alloca i32**, align 8
  %l_1591 = alloca [4 x [1 x [8 x i64]]], align 16
  %l_1661 = alloca i64, align 8
  %l_1668 = alloca i32*, align 8
  %l_1675 = alloca [7 x [10 x [3 x i64]]], align 16
  %l_1678 = alloca i8*, align 8
  %l_1683 = alloca i16*, align 8
  %l_1684 = alloca i8*, align 8
  %l_1853 = alloca i32*, align 8
  %l_1852 = alloca i32**, align 8
  %l_1870 = alloca i32, align 4
  %l_1880 = alloca i8, align 1
  %l_1907 = alloca [8 x [2 x i8]], align 16
  %l_1973 = alloca i16, align 2
  %l_1987 = alloca i32*****, align 8
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1995 = alloca i16*, align 8
  %l_1996 = alloca i16*, align 8
  %l_2003 = alloca i8*, align 8
  store i64 %p_24, i64* %1, align 8, !tbaa !7
  store i8 %p_25, i8* %2, align 1, !tbaa !9
  store i32 %p_26, i32* %3, align 4, !tbaa !1
  %4 = bitcast i32** %l_1149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_505, i32** %l_1149, align 8, !tbaa !5
  %5 = bitcast i64***** %l_1153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64**** @g_800, i64***** %l_1153, align 8, !tbaa !5
  %6 = bitcast [10 x i64*****]* %l_1152 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %6) #1
  %7 = getelementptr inbounds [10 x i64*****], [10 x i64*****]* %l_1152, i64 0, i64 0
  store i64***** %l_1153, i64****** %7, !tbaa !5
  %8 = getelementptr inbounds i64*****, i64****** %7, i64 1
  store i64***** %l_1153, i64****** %8, !tbaa !5
  %9 = getelementptr inbounds i64*****, i64****** %8, i64 1
  store i64***** %l_1153, i64****** %9, !tbaa !5
  %10 = getelementptr inbounds i64*****, i64****** %9, i64 1
  store i64***** %l_1153, i64****** %10, !tbaa !5
  %11 = getelementptr inbounds i64*****, i64****** %10, i64 1
  store i64***** %l_1153, i64****** %11, !tbaa !5
  %12 = getelementptr inbounds i64*****, i64****** %11, i64 1
  store i64***** %l_1153, i64****** %12, !tbaa !5
  %13 = getelementptr inbounds i64*****, i64****** %12, i64 1
  store i64***** %l_1153, i64****** %13, !tbaa !5
  %14 = getelementptr inbounds i64*****, i64****** %13, i64 1
  store i64***** %l_1153, i64****** %14, !tbaa !5
  %15 = getelementptr inbounds i64*****, i64****** %14, i64 1
  store i64***** %l_1153, i64****** %15, !tbaa !5
  %16 = getelementptr inbounds i64*****, i64****** %15, i64 1
  store i64***** %l_1153, i64****** %16, !tbaa !5
  %17 = bitcast i16***** %l_1177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i16**** null, i16***** %l_1177, align 8, !tbaa !5
  %18 = bitcast i32* %l_1192 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -246911461, i32* %l_1192, align 4, !tbaa !1
  %19 = bitcast i32* %l_1213 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 138813528, i32* %l_1213, align 4, !tbaa !1
  %20 = bitcast i32* %l_1215 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 1237375089, i32* %l_1215, align 4, !tbaa !1
  %21 = bitcast i32* %l_1224 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 1825862164, i32* %l_1224, align 4, !tbaa !1
  %22 = bitcast i32* %l_1225 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 4, i32* %l_1225, align 4, !tbaa !1
  %23 = bitcast i32* %l_1226 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 -4, i32* %l_1226, align 4, !tbaa !1
  %24 = bitcast i32* %l_1304 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %l_1304, align 4, !tbaa !1
  %25 = bitcast i32* %l_1337 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 -1773921011, i32* %l_1337, align 4, !tbaa !1
  %26 = bitcast i32* %l_1339 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %l_1339, align 4, !tbaa !1
  %27 = bitcast [6 x i32]* %l_1340 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27) #1
  %28 = bitcast [6 x i32]* %l_1340 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast ([6 x i32]* @func_23.l_1340 to i8*), i64 24, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1373) #1
  store i8 -19, i8* %l_1373, align 1, !tbaa !9
  %29 = bitcast i64* %l_1374 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i64 2638354930499443689, i64* %l_1374, align 8, !tbaa !7
  %30 = bitcast i8**** %l_1439 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i8*** @g_819, i8**** %l_1439, align 8, !tbaa !5
  %31 = bitcast i64** %l_1470 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i64* @g_1471, i64** %l_1470, align 8, !tbaa !5
  %32 = bitcast i64*** %l_1469 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  store i64** %l_1470, i64*** %l_1469, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1581) #1
  store i8 -16, i8* %l_1581, align 1, !tbaa !9
  %33 = bitcast i32* %l_1621 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 5, i32* %l_1621, align 4, !tbaa !1
  %34 = bitcast [3 x i32*]* %l_1667 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %34) #1
  %35 = bitcast i16* %l_1717 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %35) #1
  store i16 9921, i16* %l_1717, align 2, !tbaa !10
  %36 = bitcast i8**** %l_1843 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i8*** @g_819, i8**** %l_1843, align 8, !tbaa !5
  %37 = bitcast i32* %l_1860 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 -56673483, i32* %l_1860, align 4, !tbaa !1
  %38 = bitcast [2 x i32*]* %l_2004 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %38) #1
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %40

; <label>:40                                      ; preds = %48, %0
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %51

; <label>:43                                      ; preds = %40
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1340, i32 0, i64 2
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_1667, i32 0, i64 %46
  store i32* %44, i32** %47, align 8, !tbaa !5
  br label %48

; <label>:48                                      ; preds = %43
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4, !tbaa !1
  br label %40

; <label>:51                                      ; preds = %40
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %52

; <label>:52                                      ; preds = %59, %51
  %53 = load i32, i32* %i, align 4, !tbaa !1
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %62

; <label>:55                                      ; preds = %52
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_2004, i32 0, i64 %57
  store i32* @g_301, i32** %58, align 8, !tbaa !5
  br label %59

; <label>:59                                      ; preds = %55
  %60 = load i32, i32* %i, align 4, !tbaa !1
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %i, align 4, !tbaa !1
  br label %52

; <label>:62                                      ; preds = %52
  %63 = load volatile i32*, i32** @g_164, align 8, !tbaa !5
  %64 = load i32, i32* %63, align 4, !tbaa !1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %154

; <label>:66                                      ; preds = %62
  %67 = bitcast i64** %l_1160 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  store i64* getelementptr inbounds ([7 x [5 x [1 x i64]]], [7 x [5 x [1 x i64]]]* @g_266, i32 0, i64 2, i64 3, i64 0), i64** %l_1160, align 8, !tbaa !5
  %68 = bitcast [4 x i32]* %l_1161 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %68) #1
  %69 = bitcast [4 x i32]* %l_1161 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* bitcast ([4 x i32]* @func_23.l_1161 to i8*), i64 16, i32 16, i1 false)
  %70 = bitcast i16***** %l_1179 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  store i16**** @g_724, i16***** %l_1179, align 8, !tbaa !5
  %71 = bitcast i32* %l_1197 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 -2060089599, i32* %l_1197, align 4, !tbaa !1
  %72 = bitcast i8** %l_1273 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  store i8* @g_1067, i8** %l_1273, align 8, !tbaa !5
  %73 = bitcast [4 x i8**]* %l_1272 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %73) #1
  %74 = bitcast i64* %l_1341 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  store i64 -1, i64* %l_1341, align 8, !tbaa !7
  %75 = bitcast i32* %l_1342 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  store i32 -1957095900, i32* %l_1342, align 4, !tbaa !1
  %76 = bitcast i16** %l_1452 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  store i16* null, i16** %l_1452, align 8, !tbaa !5
  %77 = bitcast i64*** %l_1467 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  store i64** @g_315, i64*** %l_1467, align 8, !tbaa !5
  %78 = bitcast i8**** %l_1481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  store i8*** @g_819, i8**** %l_1481, align 8, !tbaa !5
  %79 = bitcast i8***** %l_1480 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  store i8**** %l_1481, i8***** %l_1480, align 8, !tbaa !5
  %80 = bitcast [7 x i32*]* %l_1533 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %80) #1
  %81 = bitcast i32*** %l_1532 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_1533, i32 0, i64 6
  store i32** %82, i32*** %l_1532, align 8, !tbaa !5
  %83 = bitcast [4 x [1 x [8 x i64]]]* %l_1591 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %83) #1
  %84 = bitcast [4 x [1 x [8 x i64]]]* %l_1591 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* bitcast ([4 x [1 x [8 x i64]]]* @func_23.l_1591 to i8*), i64 256, i32 16, i1 false)
  %85 = bitcast i64* %l_1661 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  store i64 8, i64* %l_1661, align 8, !tbaa !7
  %86 = bitcast i32** %l_1668 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %86) #1
  store i32* @g_54, i32** %l_1668, align 8, !tbaa !5
  %87 = bitcast [7 x [10 x [3 x i64]]]* %l_1675 to i8*
  call void @llvm.lifetime.start(i64 1680, i8* %87) #1
  %88 = bitcast [7 x [10 x [3 x i64]]]* %l_1675 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* bitcast ([7 x [10 x [3 x i64]]]* @func_23.l_1675 to i8*), i64 1680, i32 16, i1 false)
  %89 = bitcast i8** %l_1678 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 5), i8** %l_1678, align 8, !tbaa !5
  %90 = bitcast i16** %l_1683 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #1
  store i16* @g_306, i16** %l_1683, align 8, !tbaa !5
  %91 = bitcast i8** %l_1684 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  store i8* %l_1581, i8** %l_1684, align 8, !tbaa !5
  %92 = bitcast i32** %l_1853 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  store i32* @g_1115, i32** %l_1853, align 8, !tbaa !5
  %93 = bitcast i32*** %l_1852 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  store i32** %l_1853, i32*** %l_1852, align 8, !tbaa !5
  %94 = bitcast i32* %l_1870 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  store i32 9, i32* %l_1870, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1880) #1
  store i8 52, i8* %l_1880, align 1, !tbaa !9
  %95 = bitcast [8 x [2 x i8]]* %l_1907 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %95) #1
  %96 = bitcast [8 x [2 x i8]]* %l_1907 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* getelementptr inbounds ([8 x [2 x i8]], [8 x [2 x i8]]* @func_23.l_1907, i32 0, i32 0, i32 0), i64 16, i32 16, i1 false)
  %97 = bitcast i16* %l_1973 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %97) #1
  store i16 1, i16* %l_1973, align 2, !tbaa !10
  %98 = bitcast i32****** %l_1987 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  store i32***** @g_634, i32****** %l_1987, align 8, !tbaa !5
  %99 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  %101 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %109, %66
  %103 = load i32, i32* %i1, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %112

; <label>:105                                     ; preds = %102
  %106 = load i32, i32* %i1, align 4, !tbaa !1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8**], [4 x i8**]* %l_1272, i32 0, i64 %107
  store i8** %l_1273, i8*** %108, align 8, !tbaa !5
  br label %109

; <label>:109                                     ; preds = %105
  %110 = load i32, i32* %i1, align 4, !tbaa !1
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %i1, align 4, !tbaa !1
  br label %102

; <label>:112                                     ; preds = %102
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %120, %112
  %114 = load i32, i32* %i1, align 4, !tbaa !1
  %115 = icmp slt i32 %114, 7
  br i1 %115, label %116, label %123

; <label>:116                                     ; preds = %113
  %117 = load i32, i32* %i1, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [7 x i32*], [7 x i32*]* %l_1533, i32 0, i64 %118
  store i32* @g_546, i32** %119, align 8, !tbaa !5
  br label %120

; <label>:120                                     ; preds = %116
  %121 = load i32, i32* %i1, align 4, !tbaa !1
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %i1, align 4, !tbaa !1
  br label %113

; <label>:123                                     ; preds = %113
  %124 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32****** %l_1987 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i16* %l_1973 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %128) #1
  %129 = bitcast [8 x [2 x i8]]* %l_1907 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %129) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1880) #1
  %130 = bitcast i32* %l_1870 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32*** %l_1852 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i32** %l_1853 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i8** %l_1684 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i16** %l_1683 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i8** %l_1678 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast [7 x [10 x [3 x i64]]]* %l_1675 to i8*
  call void @llvm.lifetime.end(i64 1680, i8* %136) #1
  %137 = bitcast i32** %l_1668 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i64* %l_1661 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast [4 x [1 x [8 x i64]]]* %l_1591 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %139) #1
  %140 = bitcast i32*** %l_1532 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast [7 x i32*]* %l_1533 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %141) #1
  %142 = bitcast i8***** %l_1480 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i8**** %l_1481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i64*** %l_1467 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i16** %l_1452 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32* %l_1342 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i64* %l_1341 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast [4 x i8**]* %l_1272 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %148) #1
  %149 = bitcast i8** %l_1273 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i32* %l_1197 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i16***** %l_1179 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast [4 x i32]* %l_1161 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %152) #1
  %153 = bitcast i64** %l_1160 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  br label %211

; <label>:154                                     ; preds = %62
  %155 = bitcast i16** %l_1995 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  store i16* null, i16** %l_1995, align 8, !tbaa !5
  %156 = bitcast i16** %l_1996 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  store i16* @g_52, i16** %l_1996, align 8, !tbaa !5
  %157 = bitcast i8** %l_2003 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 1), i8** %l_2003, align 8, !tbaa !5
  %158 = load i64, i64* %1, align 8, !tbaa !7
  %159 = trunc i64 %158 to i8
  %160 = load i16*, i16** @g_1819, align 8, !tbaa !5
  %161 = load i16, i16* %160, align 2, !tbaa !10
  %162 = load i16***, i16**** @g_669, align 8, !tbaa !5
  %163 = load volatile i16**, i16*** %162, align 8, !tbaa !5
  %164 = load i16*, i16** %163, align 8, !tbaa !5
  %165 = load i16, i16* %164, align 2, !tbaa !10
  %166 = sext i16 %165 to i64
  %167 = icmp ne i64 65535, %166
  %168 = zext i1 %167 to i32
  %169 = load i16*, i16** %l_1996, align 8, !tbaa !5
  store i16 0, i16* %169, align 2, !tbaa !10
  %170 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext 0)
  %171 = zext i16 %170 to i32
  %172 = or i32 %168, %171
  %173 = trunc i32 %172 to i16
  %174 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %161, i16 zeroext %173)
  %175 = trunc i16 %174 to i8
  %176 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %159, i8 zeroext %175)
  %177 = zext i8 %176 to i32
  %178 = load i64, i64* %1, align 8, !tbaa !7
  %179 = trunc i64 %178 to i32
  %180 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext -9, i32 %179)
  %181 = load i8, i8* %2, align 1, !tbaa !9
  %182 = sext i8 %181 to i32
  %183 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %180, i32 %182)
  %184 = trunc i16 %183 to i8
  %185 = load i8*, i8** %l_2003, align 8, !tbaa !5
  store i8 %184, i8* %185, align 1, !tbaa !9
  %186 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %184, i32 31818)
  %187 = zext i8 %186 to i32
  %188 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %189 = load i16***, i16**** %188, align 8, !tbaa !5
  %190 = load volatile i16**, i16*** %189, align 8, !tbaa !5
  %191 = load i16*, i16** %190, align 8, !tbaa !5
  %192 = load i16, i16* %191, align 2, !tbaa !10
  %193 = sext i16 %192 to i32
  %194 = icmp sgt i32 %187, %193
  %195 = zext i1 %194 to i32
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** @g_820, align 8, !tbaa !5
  store i8 %196, i8* %197, align 1, !tbaa !9
  %198 = sext i8 %196 to i64
  %199 = icmp slt i64 %198, 221
  %200 = zext i1 %199 to i32
  %201 = icmp sge i32 %177, %200
  %202 = zext i1 %201 to i32
  %203 = load volatile i32**, i32*** @g_1186, align 8, !tbaa !5
  %204 = load i32*, i32** %203, align 8, !tbaa !5
  %205 = load i32, i32* %204, align 4, !tbaa !1
  %206 = load volatile i32**, i32*** @g_123, align 8, !tbaa !5
  %207 = load i32*, i32** %206, align 8, !tbaa !5
  store i32 %205, i32* %207, align 4, !tbaa !1
  %208 = bitcast i8** %l_2003 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i16** %l_1996 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i16** %l_1995 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  br label %211

; <label>:211                                     ; preds = %154, %123
  %212 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_2004, i32 0, i64 1
  %213 = load i32*, i32** %212, align 8, !tbaa !5
  %214 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast [2 x i32*]* %l_2004 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %215) #1
  %216 = bitcast i32* %l_1860 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i8**** %l_1843 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i16* %l_1717 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %218) #1
  %219 = bitcast [3 x i32*]* %l_1667 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %219) #1
  %220 = bitcast i32* %l_1621 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1581) #1
  %221 = bitcast i64*** %l_1469 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  %222 = bitcast i64** %l_1470 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast i8**** %l_1439 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i64* %l_1374 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1373) #1
  %225 = bitcast [6 x i32]* %l_1340 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %225) #1
  %226 = bitcast i32* %l_1339 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %l_1337 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32* %l_1304 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %l_1226 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast i32* %l_1225 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #1
  %231 = bitcast i32* %l_1224 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %l_1215 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %l_1213 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %l_1192 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i16***** %l_1177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #1
  %236 = bitcast [10 x i64*****]* %l_1152 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %236) #1
  %237 = bitcast i64***** %l_1153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast i32** %l_1149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  ret i32* %213
}

; Function Attrs: nounwind uwtable
define internal i32 @func_28(i64 %p_29) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %l_34 = alloca i8, align 1
  %l_35 = alloca i64*, align 8
  %l_37 = alloca i16*, align 8
  %l_51 = alloca i16*, align 8
  %l_53 = alloca i32*, align 8
  %l_55 = alloca i16*, align 8
  %l_56 = alloca i16*, align 8
  %l_57 = alloca i16*, align 8
  %l_58 = alloca i64, align 8
  %l_60 = alloca [5 x i64*], align 16
  %l_62 = alloca [7 x [9 x [4 x i32*]]], align 16
  %l_1144 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %3 = alloca i32
  %l_97 = alloca i64*, align 8
  %l_109 = alloca i8, align 1
  %l_590 = alloca i16*, align 8
  %l_1135 = alloca i32**, align 8
  store i64 %p_29, i64* %2, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_34) #1
  store i8 91, i8* %l_34, align 1, !tbaa !9
  %4 = bitcast i64** %l_35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64* @g_36, i64** %l_35, align 8, !tbaa !5
  %5 = bitcast i16** %l_37 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_38, i16** %l_37, align 8, !tbaa !5
  %6 = bitcast i16** %l_51 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i16* @g_52, i16** %l_51, align 8, !tbaa !5
  %7 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_54, i32** %l_53, align 8, !tbaa !5
  %8 = bitcast i16** %l_55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i16* null, i16** %l_55, align 8, !tbaa !5
  %9 = bitcast i16** %l_56 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i16* null, i16** %l_56, align 8, !tbaa !5
  %10 = bitcast i16** %l_57 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16* null, i16** %l_57, align 8, !tbaa !5
  %11 = bitcast i64* %l_58 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 -6, i64* %l_58, align 8, !tbaa !7
  %12 = bitcast [5 x i64*]* %l_60 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #1
  %13 = bitcast [7 x [9 x [4 x i32*]]]* %l_62 to i8*
  call void @llvm.lifetime.start(i64 2016, i8* %13) #1
  %14 = bitcast [7 x [9 x [4 x i32*]]]* %l_62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast ([7 x [9 x [4 x i32*]]]* @func_28.l_62 to i8*), i64 2016, i32 16, i1 false)
  %15 = bitcast i64* %l_1144 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64 8197679617529159740, i64* %l_1144, align 8, !tbaa !7
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
  %25 = getelementptr inbounds [5 x i64*], [5 x i64*]* %l_60, i32 0, i64 %24
  store i64* null, i64** %25, align 8, !tbaa !5
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:29                                      ; preds = %19
  %30 = load i32, i32* @g_5, align 4, !tbaa !1
  %31 = load i8, i8* %l_34, align 1, !tbaa !9
  %32 = zext i8 %31 to i64
  %33 = load i64, i64* %2, align 8, !tbaa !7
  %34 = icmp sle i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = xor i32 %30, %35
  %37 = sext i32 %36 to i64
  %38 = load i64*, i64** %l_35, align 8, !tbaa !5
  store i64 %37, i64* %38, align 8, !tbaa !7
  %39 = load i8, i8* %l_34, align 1, !tbaa !9
  %40 = zext i8 %39 to i64
  %41 = call i64 @safe_mod_func_int64_t_s_s(i64 %37, i64 %40)
  %42 = trunc i64 %41 to i16
  %43 = load i16*, i16** %l_37, align 8, !tbaa !5
  store i16 %42, i16* %43, align 2, !tbaa !10
  %44 = load i8, i8* %l_34, align 1, !tbaa !9
  %45 = zext i8 %44 to i32
  %46 = load i64, i64* %2, align 8, !tbaa !7
  %47 = trunc i64 %46 to i32
  %48 = load i64, i64* %2, align 8, !tbaa !7
  %49 = load i64, i64* %2, align 8, !tbaa !7
  %50 = load i16*, i16** %l_51, align 8, !tbaa !5
  %51 = load i16, i16* %50, align 2, !tbaa !10
  %52 = sext i16 %51 to i64
  %53 = or i64 %52, %49
  %54 = trunc i64 %53 to i16
  store i16 %54, i16* %50, align 2, !tbaa !10
  %55 = load i32, i32* @g_5, align 4, !tbaa !1
  %56 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %54, i32 %55)
  %57 = sext i16 %56 to i32
  %58 = call i32 @safe_sub_func_uint32_t_u_u(i32 %47, i32 %57)
  %59 = load i64, i64* %2, align 8, !tbaa !7
  %60 = and i64 249, %59
  %61 = load i32*, i32** %l_53, align 8, !tbaa !5
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %63 = sext i32 %62 to i64
  %64 = or i64 %63, %60
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4, !tbaa !1
  %66 = or i32 %45, %65
  %67 = trunc i32 %66 to i16
  %68 = load i64, i64* %2, align 8, !tbaa !7
  %69 = trunc i64 %68 to i16
  %70 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %67, i16 signext %69)
  %71 = sext i16 %70 to i64
  %72 = and i64 %71, -7139328149022210453
  %73 = load i64, i64* %l_58, align 8, !tbaa !7
  %74 = or i64 %73, %72
  store i64 %74, i64* %l_58, align 8, !tbaa !7
  store i64 %74, i64* @g_59, align 8, !tbaa !7
  %75 = trunc i64 %74 to i16
  %76 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %75, i32 11)
  %77 = sext i16 %76 to i32
  %78 = load i32, i32* @g_5, align 4, !tbaa !1
  %79 = icmp ne i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = trunc i32 %80 to i16
  %82 = load i8, i8* %l_34, align 1, !tbaa !9
  %83 = zext i8 %82 to i16
  %84 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %81, i16 signext %83)
  %85 = sext i16 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

; <label>:87                                      ; preds = %29
  %88 = load i64, i64* %2, align 8, !tbaa !7
  %89 = icmp ne i64 %88, 0
  br label %90

; <label>:90                                      ; preds = %87, %29
  %91 = phi i1 [ true, %29 ], [ %89, %87 ]
  %92 = zext i1 %91 to i32
  %93 = sext i32 %92 to i64
  store i64 %93, i64* @g_61, align 8, !tbaa !7
  %94 = load i32, i32* @g_5, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = icmp ule i64 %93, %95
  %97 = zext i1 %96 to i32
  %98 = trunc i32 %97 to i8
  %99 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %98, i8 zeroext 1)
  %100 = zext i8 %99 to i16
  %101 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %42, i16 signext %100)
  %102 = sext i16 %101 to i32
  %103 = load i32, i32* @g_5, align 4, !tbaa !1
  %104 = xor i32 %102, %103
  store i32 %104, i32* @g_63, align 4, !tbaa !1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %90
  %107 = load i64, i64* @g_59, align 8, !tbaa !7
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %1
  store i32 1, i32* %3
  br label %207

; <label>:109                                     ; preds = %90
  %110 = bitcast i64** %l_97 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  store i64* @g_61, i64** %l_97, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_109) #1
  store i8 77, i8* %l_109, align 1, !tbaa !9
  %111 = bitcast i16** %l_590 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  store i16* @g_52, i16** %l_590, align 8, !tbaa !5
  %112 = bitcast i32*** %l_1135 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  store i32** %l_53, i32*** %l_1135, align 8, !tbaa !5
  %113 = load i64, i64* @g_59, align 8, !tbaa !7
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %l_53, align 8, !tbaa !5
  store i32 %114, i32* %115, align 4, !tbaa !1
  %116 = load i32, i32* @g_63, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = load i32*, i32** getelementptr inbounds ([8 x [5 x i32*]], [8 x [5 x i32*]]* @func_28.l_88, i32 0, i64 4, i64 3), align 8, !tbaa !5
  %119 = load i32, i32* @g_5, align 4, !tbaa !1
  %120 = call i32 @func_93(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %146

; <label>:122                                     ; preds = %109
  %123 = load i64*, i64** %l_97, align 8, !tbaa !5
  %124 = load i64, i64* %123, align 8, !tbaa !7
  %125 = add i64 %124, -1
  store i64 %125, i64* %123, align 8, !tbaa !7
  %126 = load i64, i64* @g_61, align 8, !tbaa !7
  %127 = trunc i64 %126 to i8
  %128 = load i8, i8* %l_109, align 1, !tbaa !9
  %129 = sext i8 %128 to i64
  %130 = icmp sle i64 %129, -8
  %131 = zext i1 %130 to i32
  %132 = trunc i32 %131 to i8
  %133 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %132)
  %134 = load i64, i64* %2, align 8, !tbaa !7
  %135 = trunc i64 %134 to i8
  %136 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %133, i8 signext %135)
  %137 = sext i8 %136 to i16
  %138 = load i64, i64* %2, align 8, !tbaa !7
  %139 = trunc i64 %138 to i32
  %140 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %137, i32 %139)
  %141 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %140, i16 signext -29131)
  %142 = trunc i16 %141 to i8
  %143 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %127, i8 zeroext %142)
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br label %146

; <label>:146                                     ; preds = %122, %109
  %147 = phi i1 [ false, %109 ], [ %145, %122 ]
  %148 = zext i1 %147 to i32
  %149 = trunc i32 %148 to i16
  %150 = load i16, i16* @g_38, align 2, !tbaa !10
  %151 = sext i16 %150 to i32
  %152 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %149, i32 %151)
  %153 = load i8, i8* %l_109, align 1, !tbaa !9
  %154 = sext i8 %153 to i16
  %155 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %152, i16 signext %154)
  %156 = sext i16 %155 to i32
  %157 = call i32* @func_84(i32* %118, i16* @g_52, i32 %156)
  %158 = load i16*, i16** %l_590, align 8, !tbaa !5
  %159 = getelementptr inbounds [7 x [9 x [4 x i32*]]], [7 x [9 x [4 x i32*]]]* %l_62, i32 0, i64 0
  %160 = getelementptr inbounds [9 x [4 x i32*]], [9 x [4 x i32*]]* %159, i32 0, i64 7
  %161 = getelementptr inbounds [4 x i32*], [4 x i32*]* %160, i32 0, i64 3
  %162 = load i32*, i32** %161, align 8, !tbaa !5
  %163 = load i16*, i16** %l_57, align 8, !tbaa !5
  %164 = call i16* @func_78(i32* %157, i16* %158, i32* @g_63, i32* %162, i16* %163)
  %165 = load i64, i64* %2, align 8, !tbaa !7
  %166 = trunc i64 %165 to i16
  %167 = load i64, i64* %2, align 8, !tbaa !7
  %168 = trunc i64 %167 to i8
  %169 = call i16* @func_74(i16* %164, i16 signext %166, i8 zeroext %168)
  %170 = load i32*, i32** %l_53, align 8, !tbaa !5
  %171 = load i8, i8* %l_109, align 1, !tbaa !9
  %172 = sext i8 %171 to i16
  %173 = load i32, i32* @g_5, align 4, !tbaa !1
  %174 = call i32 @func_68(i64 %117, i16* %169, i32* %170, i16 signext %172, i32 %173)
  %175 = call i32 @func_64(i32 %114, i32 %174, i64* %l_58)
  %176 = load i32*, i32** %l_53, align 8, !tbaa !5
  store i32 %175, i32* %176, align 4, !tbaa !1
  %177 = load i32*, i32** getelementptr inbounds ([8 x [5 x i32*]], [8 x [5 x i32*]]* @func_28.l_88, i32 0, i64 1, i64 1), align 8, !tbaa !5
  %178 = load i32**, i32*** %l_1135, align 8, !tbaa !5
  store i32* %177, i32** %178, align 8, !tbaa !5
  %179 = load i16*, i16** %l_590, align 8, !tbaa !5
  %180 = load i64, i64* %2, align 8, !tbaa !7
  %181 = trunc i64 %180 to i32
  %182 = load volatile i32**, i32*** @g_967, align 8, !tbaa !5
  %183 = load i32*, i32** %182, align 8, !tbaa !5
  %184 = load i32, i32* %183, align 4, !tbaa !1
  %185 = load i32*, i32** @g_124, align 8, !tbaa !5
  store i32 %184, i32* %185, align 4, !tbaa !1
  %186 = call i32 @safe_add_func_int32_t_s_s(i32 %181, i32 %184)
  %187 = trunc i32 %186 to i16
  %188 = load i16, i16* @g_52, align 2, !tbaa !10
  %189 = load i64, i64* %2, align 8, !tbaa !7
  %190 = trunc i64 %189 to i16
  %191 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %190, i32 10)
  %192 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %187, i16 zeroext 9)
  %193 = zext i16 %192 to i32
  %194 = call i32 @safe_mod_func_uint32_t_u_u(i32 0, i32 %193)
  %195 = trunc i32 %194 to i16
  %196 = load i8, i8* %l_109, align 1, !tbaa !9
  %197 = call i16* @func_74(i16* %179, i16 signext %195, i8 zeroext %196)
  %198 = load i64, i64* %l_1144, align 8, !tbaa !7
  %199 = trunc i64 %198 to i32
  %200 = call i32* @func_84(i32* %177, i16* %197, i32 %199)
  %201 = load i32**, i32*** %l_1135, align 8, !tbaa !5
  store i32* %200, i32** %201, align 8, !tbaa !5
  %202 = load volatile i32*, i32** @g_164, align 8, !tbaa !5
  %203 = load i32, i32* %202, align 4, !tbaa !1
  store i32 %203, i32* %1
  store i32 1, i32* %3
  %204 = bitcast i32*** %l_1135 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i16** %l_590 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_109) #1
  %206 = bitcast i64** %l_97 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  br label %207

; <label>:207                                     ; preds = %146, %106
  %208 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i64* %l_1144 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %212 = bitcast [7 x [9 x [4 x i32*]]]* %l_62 to i8*
  call void @llvm.lifetime.end(i64 2016, i8* %212) #1
  %213 = bitcast [5 x i64*]* %l_60 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %213) #1
  %214 = bitcast i64* %l_58 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i16** %l_57 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i16** %l_56 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #1
  %217 = bitcast i16** %l_55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %218) #1
  %219 = bitcast i16** %l_51 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i16** %l_37 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast i64** %l_35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_34) #1
  %222 = load i32, i32* %1
  ret i32 %222
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
define internal i32 @func_64(i32 %p_65, i32 %p_66, i64* %p_67) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %l_1128 = alloca i64****, align 8
  %l_1127 = alloca i64*****, align 8
  %l_1131 = alloca i32, align 4
  store i32 %p_65, i32* %1, align 4, !tbaa !1
  store i32 %p_66, i32* %2, align 4, !tbaa !1
  store i64* %p_67, i64** %3, align 8, !tbaa !5
  %4 = bitcast i64***** %l_1128 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64**** null, i64***** %l_1128, align 8, !tbaa !5
  %5 = bitcast i64****** %l_1127 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64***** %l_1128, i64****** %l_1127, align 8, !tbaa !5
  %6 = bitcast i32* %l_1131 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 2003127109, i32* %l_1131, align 4, !tbaa !1
  %7 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext -5)
  %8 = zext i8 %7 to i32
  %9 = load i32*, i32** @g_124, align 8, !tbaa !5
  store i32 %8, i32* %9, align 4, !tbaa !1
  %10 = load i64*****, i64****** %l_1127, align 8, !tbaa !5
  store i64***** %10, i64****** %l_1127, align 8, !tbaa !5
  %11 = icmp eq i64***** %10, %l_1128
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = phi i1 [ false, %0 ], [ true, %12 ]
  %15 = zext i1 %14 to i32
  %16 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext 6, i32 %15)
  %17 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext -1, i32 8)
  %18 = sext i16 %17 to i32
  %19 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext 19269, i32 %18)
  %20 = sext i16 %19 to i32
  %21 = load i32, i32* %1, align 4, !tbaa !1
  %22 = and i32 %21, 2003127109
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %13
  %25 = load i32, i32* %1, align 4, !tbaa !1
  %26 = icmp ne i32 %25, 0
  br label %27

; <label>:27                                      ; preds = %24, %13
  %28 = phi i1 [ true, %13 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = icmp sgt i32 %20, %29
  %31 = zext i1 %30 to i32
  %32 = icmp ne i32 %31, 2003127109
  %33 = zext i1 %32 to i32
  %34 = load i32*, i32** @g_124, align 8, !tbaa !5
  store i32 -1211549679, i32* %34, align 4, !tbaa !1
  %35 = load volatile i32*, i32** @g_1134, align 8, !tbaa !5
  %36 = load i32, i32* %35, align 4, !tbaa !1
  %37 = and i32 %36, -1211549679
  store i32 %37, i32* %35, align 4, !tbaa !1
  %38 = load i32, i32* %1, align 4, !tbaa !1
  %39 = bitcast i32* %l_1131 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i64****** %l_1127 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i64***** %l_1128 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @func_68(i64 %p_69, i16* %p_70, i32* %p_71, i16 signext %p_72, i32 %p_73) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %l_1106 = alloca [6 x i32], align 16
  %l_1111 = alloca i8*, align 8
  %l_1112 = alloca i32, align 4
  %l_1113 = alloca i32, align 4
  %l_1114 = alloca i32, align 4
  %l_1116 = alloca i8*****, align 8
  %l_1122 = alloca i32, align 4
  %l_1123 = alloca i16, align 2
  %i = alloca i32, align 4
  store i64 %p_69, i64* %1, align 8, !tbaa !7
  store i16* %p_70, i16** %2, align 8, !tbaa !5
  store i32* %p_71, i32** %3, align 8, !tbaa !5
  store i16 %p_72, i16* %4, align 2, !tbaa !10
  store i32 %p_73, i32* %5, align 4, !tbaa !1
  %6 = bitcast [6 x i32]* %l_1106 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast i8** %l_1111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8* @g_406, i8** %l_1111, align 8, !tbaa !5
  %8 = bitcast i32* %l_1112 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 1783219998, i32* %l_1112, align 4, !tbaa !1
  %9 = bitcast i32* %l_1113 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -4, i32* %l_1113, align 4, !tbaa !1
  %10 = bitcast i32* %l_1114 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 9, i32* %l_1114, align 4, !tbaa !1
  %11 = bitcast i8****** %l_1116 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i8***** @g_822, i8****** %l_1116, align 8, !tbaa !5
  %12 = bitcast i32* %l_1122 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %l_1122, align 4, !tbaa !1
  %13 = bitcast i16* %l_1123 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %13) #1
  store i16 -10, i16* %l_1123, align 2, !tbaa !10
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %22, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %15
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1106, i32 0, i64 %20
  store i32 -9, i32* %21, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %18
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:25                                      ; preds = %15
  %26 = load i32, i32* @g_546, align 4, !tbaa !1
  %27 = zext i32 %26 to i64
  %28 = icmp slt i64 28423, %27
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 7, %30
  %32 = zext i1 %31 to i32
  %33 = trunc i32 %32 to i16
  %34 = load i32***, i32**** @g_635, align 8, !tbaa !5
  %35 = load volatile i32**, i32*** %34, align 8, !tbaa !5
  %36 = load i32*, i32** %35, align 8, !tbaa !5
  %37 = load i32, i32* %36, align 4, !tbaa !1
  %38 = add i32 %37, -1
  store i32 %38, i32* %36, align 4, !tbaa !1
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1106, i32 0, i64 0
  store i32 %37, i32* %39, align 4, !tbaa !1
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1106, i32 0, i64 4
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %42 = load volatile i32, i32* @g_305, align 4, !tbaa !1
  %43 = load i8*, i8** %l_1111, align 8, !tbaa !5
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @safe_add_func_int32_t_s_s(i32 %45, i32 0)
  %47 = trunc i32 %46 to i8
  %48 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext 74, i8 zeroext %47)
  %49 = zext i8 %48 to i32
  %50 = xor i32 %42, %49
  %51 = getelementptr inbounds [6 x i32], [6 x i32]* %l_1106, i32 0, i64 0
  %52 = load i32, i32* %51, align 4, !tbaa !1
  %53 = icmp slt i32 %50, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %l_1112, align 4, !tbaa !1
  %55 = icmp sgt i32 %41, %54
  %56 = zext i1 %55 to i32
  %57 = trunc i32 %56 to i16
  %58 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %59 = load i16***, i16**** %58, align 8, !tbaa !5
  %60 = load volatile i16**, i16*** %59, align 8, !tbaa !5
  %61 = load i16*, i16** %60, align 8, !tbaa !5
  store i16 %57, i16* %61, align 2, !tbaa !10
  %62 = load i64, i64* %1, align 8, !tbaa !7
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

; <label>:64                                      ; preds = %25
  %65 = load i32, i32* @g_63, align 4, !tbaa !1
  %66 = icmp ne i32 %65, 0
  br label %67

; <label>:67                                      ; preds = %64, %25
  %68 = phi i1 [ false, %25 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  %70 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %33, i32 %69)
  %71 = sext i16 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

; <label>:73                                      ; preds = %67
  %74 = load i16, i16* %4, align 2, !tbaa !10
  %75 = sext i16 %74 to i32
  %76 = icmp ne i32 %75, 0
  br label %77

; <label>:77                                      ; preds = %73, %67
  %78 = phi i1 [ false, %67 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %l_1113, align 4, !tbaa !1
  %81 = and i32 %79, %80
  store i32 %81, i32* %l_1113, align 4, !tbaa !1
  %82 = load i32, i32* %l_1114, align 4, !tbaa !1
  %83 = xor i32 %81, %82
  %84 = load i32, i32* @g_1115, align 4, !tbaa !1
  %85 = trunc i32 %84 to i16
  %86 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext 1, i16 zeroext %85)
  %87 = zext i16 %86 to i32
  %88 = load i32*, i32** @g_124, align 8, !tbaa !5
  store i32 %87, i32* %88, align 4, !tbaa !1
  store i8***** @g_822, i8****** %l_1116, align 8, !tbaa !5
  %89 = load i32*, i32** @g_124, align 8, !tbaa !5
  store i32 1274626141, i32* %89, align 4, !tbaa !1
  store i64 -1794174072950600969, i64* getelementptr inbounds ([7 x [5 x [1 x i64]]], [7 x [5 x [1 x i64]]]* @g_266, i32 0, i64 6, i64 4, i64 0), align 8, !tbaa !7
  %90 = call i64 @safe_div_func_uint64_t_u_u(i64 1, i64 -1794174072950600969)
  %91 = trunc i64 %90 to i16
  %92 = load i16, i16* %l_1123, align 2, !tbaa !10
  %93 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %91, i16 zeroext %92)
  %94 = zext i16 %93 to i32
  %95 = load i32*, i32** @g_124, align 8, !tbaa !5
  %96 = load i32, i32* %95, align 4, !tbaa !1
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4, !tbaa !1
  %98 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %99 = load i32*, i32** %98, align 8, !tbaa !5
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i16* %l_1123 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %102) #1
  %103 = bitcast i32* %l_1122 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i8****** %l_1116 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i32* %l_1114 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %l_1113 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %l_1112 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i8** %l_1111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast [6 x i32]* %l_1106 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %109) #1
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define internal i16* @func_74(i16* %p_75, i16 signext %p_76, i8 zeroext %p_77) #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %l_1075 = alloca i16*, align 8
  %l_1083 = alloca i32, align 4
  %l_1098 = alloca i32*, align 8
  %l_1099 = alloca i16*, align 8
  store i16* %p_75, i16** %1, align 8, !tbaa !5
  store i16 %p_76, i16* %2, align 2, !tbaa !10
  store i8 %p_77, i8* %3, align 1, !tbaa !9
  %4 = bitcast i16** %l_1075 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16* @g_52, i16** %l_1075, align 8, !tbaa !5
  %5 = bitcast i32* %l_1083 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -1101239617, i32* %l_1083, align 4, !tbaa !1
  %6 = bitcast i32** %l_1098 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* @g_301, i32** %l_1098, align 8, !tbaa !5
  %7 = bitcast i16** %l_1099 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16* null, i16** %l_1099, align 8, !tbaa !5
  %8 = load volatile i32**, i32*** @g_123, align 8, !tbaa !5
  %9 = load i32*, i32** %8, align 8, !tbaa !5
  %10 = load i16*, i16** %l_1075, align 8, !tbaa !5
  %11 = load i32, i32* %l_1083, align 4, !tbaa !1
  %12 = trunc i32 %11 to i16
  %13 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %12, i32 4)
  %14 = sext i16 %13 to i32
  %15 = call i32 @safe_unary_minus_func_int32_t_s(i32 %14)
  %16 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %17 = load i16***, i16**** %16, align 8, !tbaa !5
  %18 = icmp ne i16*** null, %17
  %19 = zext i1 %18 to i32
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* %l_1083, align 4, !tbaa !1
  %22 = xor i32 %21, -1
  %23 = trunc i32 %22 to i8
  %24 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %20, i8 signext %23)
  %25 = sext i8 %24 to i16
  %26 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %25, i32 6)
  %27 = load i8, i8* %3, align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %l_1083, align 4, !tbaa !1
  %30 = trunc i32 %29 to i8
  %31 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext -16, i8 signext %30)
  %32 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %31, i32 1)
  %33 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %32, i32 3)
  %34 = sext i8 %33 to i32
  %35 = call i32 @safe_mod_func_int32_t_s_s(i32 %34, i32 1941612044)
  %36 = trunc i32 %35 to i8
  %37 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %36, i8 signext 86)
  %38 = load i32, i32* %l_1083, align 4, !tbaa !1
  %39 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %37, i32 %38)
  %40 = zext i8 %39 to i32
  %41 = xor i32 %40, -1
  %42 = load i64, i64* @g_59, align 8, !tbaa !7
  %43 = load i32, i32* %l_1083, align 4, !tbaa !1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %0
  br label %46

; <label>:46                                      ; preds = %45, %0
  %47 = phi i1 [ false, %0 ], [ true, %45 ]
  %48 = zext i1 %47 to i32
  %49 = load i8, i8* %3, align 1, !tbaa !9
  %50 = zext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = xor i32 %28, %51
  %53 = call i32* @func_84(i32* %9, i16* %10, i32 491450462)
  store i32* %53, i32** %l_1098, align 8, !tbaa !5
  %54 = load i16*, i16** %l_1099, align 8, !tbaa !5
  %55 = bitcast i16** %l_1099 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i32** %l_1098 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %l_1083 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i16** %l_1075 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  ret i16* %54
}

; Function Attrs: nounwind uwtable
define internal i16* @func_78(i32* %p_79, i16* %p_80, i32* %p_81, i32* %p_82, i16* %p_83) #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i16*, align 8
  %l_596 = alloca [10 x i16], align 16
  %l_603 = alloca i32, align 4
  %l_712 = alloca i32, align 4
  %l_713 = alloca [3 x [5 x [2 x i32]]], align 16
  %l_777 = alloca [8 x [4 x [1 x i32]]], align 16
  %l_785 = alloca [9 x i8], align 1
  %l_795 = alloca i32, align 4
  %l_809 = alloca i64**, align 8
  %l_810 = alloca i64**, align 8
  %l_888 = alloca i16, align 2
  %l_933 = alloca [4 x [5 x i32*]], align 16
  %l_976 = alloca i16*****, align 8
  %l_988 = alloca [10 x [4 x i32**]], align 16
  %l_987 = alloca i32***, align 8
  %l_1025 = alloca i16, align 2
  %l_1063 = alloca i8, align 1
  %l_1070 = alloca [5 x i64], align 16
  %l_1071 = alloca [7 x [7 x i32**]], align 16
  %l_1072 = alloca i16***, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_593 = alloca [8 x i32*], align 16
  %i1 = alloca i32, align 4
  %7 = alloca i32
  %l_617 = alloca i8, align 1
  %l_661 = alloca i32, align 4
  %l_688 = alloca i32, align 4
  %l_691 = alloca i64**, align 8
  %l_736 = alloca i8*, align 8
  %l_783 = alloca i32, align 4
  %l_784 = alloca i32, align 4
  %l_786 = alloca i32, align 4
  %l_787 = alloca i32, align 4
  %l_788 = alloca i32, align 4
  %l_789 = alloca i32, align 4
  %l_812 = alloca i64*, align 8
  %l_811 = alloca i64**, align 8
  %l_873 = alloca i16**, align 8
  %l_935 = alloca [3 x i16*], align 16
  %l_965 = alloca i8, align 1
  %l_1014 = alloca [9 x i32*], align 16
  %l_1015 = alloca i16, align 2
  %l_1046 = alloca [1 x i32], align 4
  %l_1066 = alloca i8*, align 8
  %l_1065 = alloca i8**, align 8
  %i2 = alloca i32, align 4
  %l_608 = alloca [9 x i64], align 16
  %l_629 = alloca i32, align 4
  %l_694 = alloca i32*, align 8
  %l_714 = alloca i32, align 4
  %l_737 = alloca [3 x i32], align 4
  %l_781 = alloca i32*, align 8
  %l_782 = alloca [7 x [10 x [3 x i32*]]], align 16
  %l_802 = alloca i64****, align 8
  %l_804 = alloca [10 x i64***], align 16
  %l_803 = alloca i64****, align 8
  %l_828 = alloca i64, align 8
  %l_860 = alloca [4 x i16**], align 16
  %l_891 = alloca i32, align 4
  %l_907 = alloca [9 x i8*], align 16
  %l_908 = alloca i64, align 8
  %l_913 = alloca [7 x [9 x i32]], align 16
  %l_922 = alloca i32, align 4
  %l_923 = alloca i8, align 1
  %l_924 = alloca i16*, align 8
  %l_925 = alloca i64, align 8
  %l_926 = alloca i32**, align 8
  %l_927 = alloca i8, align 1
  %l_929 = alloca i32**, align 8
  %l_928 = alloca i32***, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %l_626 = alloca i8, align 1
  %l_674 = alloca i32, align 4
  %l_689 = alloca [4 x [1 x i32]], align 16
  %l_778 = alloca [1 x i16*], align 8
  %l_779 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_612 = alloca i8, align 1
  %l_628 = alloca i32**, align 8
  %l_627 = alloca i32***, align 8
  %l_715 = alloca i64, align 8
  %l_611 = alloca i16, align 2
  %l_625 = alloca i8*, align 8
  %l_642 = alloca [3 x i16], align 2
  %l_652 = alloca i16***, align 8
  %l_651 = alloca i16****, align 8
  %l_654 = alloca [2 x [6 x i16***]], align 16
  %l_653 = alloca i16****, align 8
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %l_660 = alloca i64*, align 8
  %l_672 = alloca i32, align 4
  %l_673 = alloca [5 x i16*], align 16
  %l_677 = alloca [6 x i32*], align 16
  %l_685 = alloca i8*, align 8
  %i10 = alloca i32, align 4
  %l_690 = alloca i32, align 4
  %l_692 = alloca i32**, align 8
  %l_693 = alloca [8 x [9 x [3 x i32**]]], align 16
  %i11 = alloca i32, align 4
  %j12 = alloca i32, align 4
  %k13 = alloca i32, align 4
  %l_703 = alloca i16, align 2
  %l_704 = alloca i32*, align 8
  %l_705 = alloca i32*, align 8
  %l_706 = alloca i32*, align 8
  %l_707 = alloca i32*, align 8
  %l_708 = alloca i32*, align 8
  %l_709 = alloca i32*, align 8
  %l_710 = alloca i32*, align 8
  %l_711 = alloca [9 x [5 x i32*]], align 16
  %i14 = alloca i32, align 4
  %j15 = alloca i32, align 4
  %l_718 = alloca i32, align 4
  %l_725 = alloca i16*****, align 8
  %l_726 = alloca i16****, align 8
  %l_739 = alloca i32, align 4
  %l_748 = alloca i64*, align 8
  %l_749 = alloca i32*, align 8
  %l_752 = alloca [1 x [10 x i8*]], align 16
  %l_762 = alloca i32, align 4
  %l_763 = alloca i32, align 4
  %i18 = alloca i32, align 4
  %j19 = alloca i32, align 4
  %l_817 = alloca i16, align 2
  %l_843 = alloca i64**, align 8
  %l_854 = alloca i32, align 4
  %l_859 = alloca i16**, align 8
  %l_881 = alloca i32, align 4
  %l_882 = alloca i32, align 4
  %l_884 = alloca i32, align 4
  %l_885 = alloca i32, align 4
  %l_886 = alloca i32, align 4
  %l_887 = alloca i32, align 4
  %l_821 = alloca i8****, align 8
  %l_844 = alloca i64, align 8
  %l_851 = alloca i32, align 4
  %l_850 = alloca i16, align 2
  %l_852 = alloca i32**, align 8
  %l_853 = alloca i32**, align 8
  %l_855 = alloca i8, align 1
  %l_858 = alloca i16**, align 8
  %l_861 = alloca [8 x i16***], align 16
  %l_874 = alloca i32, align 4
  %l_880 = alloca i32, align 4
  %l_883 = alloca [6 x [2 x [9 x i32]]], align 16
  %i23 = alloca i32, align 4
  %j24 = alloca i32, align 4
  %k25 = alloca i32, align 4
  %l_879 = alloca i32**, align 8
  %l_932 = alloca [3 x [1 x [9 x i32**]]], align 16
  %i29 = alloca i32, align 4
  %j30 = alloca i32, align 4
  %k31 = alloca i32, align 4
  %l_961 = alloca [7 x i32], align 16
  %l_963 = alloca i32, align 4
  %l_966 = alloca i32, align 4
  %l_977 = alloca i8**, align 8
  %l_1004 = alloca i8, align 1
  %l_1024 = alloca i64*, align 8
  %l_1037 = alloca i32, align 4
  %l_1038 = alloca i32, align 4
  %l_1039 = alloca i32, align 4
  %l_1042 = alloca [6 x i32], align 16
  %l_1049 = alloca i64, align 8
  %i32 = alloca i32, align 4
  %j33 = alloca i32, align 4
  store i32* %p_79, i32** %2, align 8, !tbaa !5
  store i16* %p_80, i16** %3, align 8, !tbaa !5
  store i32* %p_81, i32** %4, align 8, !tbaa !5
  store i32* %p_82, i32** %5, align 8, !tbaa !5
  store i16* %p_83, i16** %6, align 8, !tbaa !5
  %8 = bitcast [10 x i16]* %l_596 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %8) #1
  %9 = bitcast [10 x i16]* %l_596 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([10 x i16]* @func_78.l_596 to i8*), i64 20, i32 16, i1 false)
  %10 = bitcast i32* %l_603 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -1166840491, i32* %l_603, align 4, !tbaa !1
  %11 = bitcast i32* %l_712 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -538507385, i32* %l_712, align 4, !tbaa !1
  %12 = bitcast [3 x [5 x [2 x i32]]]* %l_713 to i8*
  call void @llvm.lifetime.start(i64 120, i8* %12) #1
  %13 = bitcast [3 x [5 x [2 x i32]]]* %l_713 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 120, i32 16, i1 false)
  %14 = bitcast [8 x [4 x [1 x i32]]]* %l_777 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %14) #1
  %15 = bitcast [8 x [4 x [1 x i32]]]* %l_777 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([8 x [4 x [1 x i32]]]* @func_78.l_777 to i8*), i64 128, i32 16, i1 false)
  %16 = bitcast [9 x i8]* %l_785 to i8*
  call void @llvm.lifetime.start(i64 9, i8* %16) #1
  %17 = bitcast [9 x i8]* %l_785 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @func_78.l_785, i32 0, i32 0), i64 9, i32 1, i1 false)
  %18 = bitcast i32* %l_795 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -2076062992, i32* %l_795, align 4, !tbaa !1
  %19 = bitcast i64*** %l_809 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64** @g_313, i64*** %l_809, align 8, !tbaa !5
  %20 = bitcast i64*** %l_810 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64** @g_336, i64*** %l_810, align 8, !tbaa !5
  %21 = bitcast i16* %l_888 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %21) #1
  store i16 4, i16* %l_888, align 2, !tbaa !10
  %22 = bitcast [4 x [5 x i32*]]* %l_933 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %22) #1
  %23 = bitcast i16****** %l_976 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i16***** @g_723, i16****** %l_976, align 8, !tbaa !5
  %24 = bitcast [10 x [4 x i32**]]* %l_988 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %24) #1
  %25 = bitcast [10 x [4 x i32**]]* %l_988 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([10 x [4 x i32**]]* @func_78.l_988 to i8*), i64 320, i32 16, i1 false)
  %26 = bitcast i32**** %l_987 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = getelementptr inbounds [10 x [4 x i32**]], [10 x [4 x i32**]]* %l_988, i32 0, i64 3
  %28 = getelementptr inbounds [4 x i32**], [4 x i32**]* %27, i32 0, i64 2
  store i32*** %28, i32**** %l_987, align 8, !tbaa !5
  %29 = bitcast i16* %l_1025 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  store i16 12693, i16* %l_1025, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1063) #1
  store i8 -27, i8* %l_1063, align 1, !tbaa !9
  %30 = bitcast [5 x i64]* %l_1070 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %30) #1
  %31 = bitcast [7 x [7 x i32**]]* %l_1071 to i8*
  call void @llvm.lifetime.start(i64 392, i8* %31) #1
  %32 = getelementptr inbounds [7 x [7 x i32**]], [7 x [7 x i32**]]* %l_1071, i64 0, i64 0
  %33 = getelementptr inbounds [7 x i32**], [7 x i32**]* %32, i64 0, i64 0
  %34 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %35 = getelementptr inbounds [5 x i32*], [5 x i32*]* %34, i32 0, i64 3
  store i32** %35, i32*** %33, !tbaa !5
  %36 = getelementptr inbounds i32**, i32*** %33, i64 1
  store i32** null, i32*** %36, !tbaa !5
  %37 = getelementptr inbounds i32**, i32*** %36, i64 1
  %38 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %39 = getelementptr inbounds [5 x i32*], [5 x i32*]* %38, i32 0, i64 3
  store i32** %39, i32*** %37, !tbaa !5
  %40 = getelementptr inbounds i32**, i32*** %37, i64 1
  %41 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %42 = getelementptr inbounds [5 x i32*], [5 x i32*]* %41, i32 0, i64 3
  store i32** %42, i32*** %40, !tbaa !5
  %43 = getelementptr inbounds i32**, i32*** %40, i64 1
  store i32** null, i32*** %43, !tbaa !5
  %44 = getelementptr inbounds i32**, i32*** %43, i64 1
  %45 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %46 = getelementptr inbounds [5 x i32*], [5 x i32*]* %45, i32 0, i64 3
  store i32** %46, i32*** %44, !tbaa !5
  %47 = getelementptr inbounds i32**, i32*** %44, i64 1
  %48 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %49 = getelementptr inbounds [5 x i32*], [5 x i32*]* %48, i32 0, i64 3
  store i32** %49, i32*** %47, !tbaa !5
  %50 = getelementptr inbounds [7 x i32**], [7 x i32**]* %32, i64 1
  %51 = getelementptr inbounds [7 x i32**], [7 x i32**]* %50, i64 0, i64 0
  store i32** null, i32*** %51, !tbaa !5
  %52 = getelementptr inbounds i32**, i32*** %51, i64 1
  store i32** null, i32*** %52, !tbaa !5
  %53 = getelementptr inbounds i32**, i32*** %52, i64 1
  %54 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 0
  %55 = getelementptr inbounds [5 x i32*], [5 x i32*]* %54, i32 0, i64 0
  store i32** %55, i32*** %53, !tbaa !5
  %56 = getelementptr inbounds i32**, i32*** %53, i64 1
  store i32** null, i32*** %56, !tbaa !5
  %57 = getelementptr inbounds i32**, i32*** %56, i64 1
  store i32** null, i32*** %57, !tbaa !5
  %58 = getelementptr inbounds i32**, i32*** %57, i64 1
  %59 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 0
  %60 = getelementptr inbounds [5 x i32*], [5 x i32*]* %59, i32 0, i64 0
  store i32** %60, i32*** %58, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %58, i64 1
  store i32** null, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds [7 x i32**], [7 x i32**]* %50, i64 1
  %63 = getelementptr inbounds [7 x i32**], [7 x i32**]* %62, i64 0, i64 0
  store i32** null, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  %65 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %66 = getelementptr inbounds [5 x i32*], [5 x i32*]* %65, i32 0, i64 3
  store i32** %66, i32*** %64, !tbaa !5
  %67 = getelementptr inbounds i32**, i32*** %64, i64 1
  %68 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %69 = getelementptr inbounds [5 x i32*], [5 x i32*]* %68, i32 0, i64 3
  store i32** %69, i32*** %67, !tbaa !5
  %70 = getelementptr inbounds i32**, i32*** %67, i64 1
  store i32** null, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  %72 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %73 = getelementptr inbounds [5 x i32*], [5 x i32*]* %72, i32 0, i64 3
  store i32** %73, i32*** %71, !tbaa !5
  %74 = getelementptr inbounds i32**, i32*** %71, i64 1
  %75 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %76 = getelementptr inbounds [5 x i32*], [5 x i32*]* %75, i32 0, i64 3
  store i32** %76, i32*** %74, !tbaa !5
  %77 = getelementptr inbounds i32**, i32*** %74, i64 1
  store i32** null, i32*** %77, !tbaa !5
  %78 = getelementptr inbounds [7 x i32**], [7 x i32**]* %62, i64 1
  %79 = getelementptr inbounds [7 x i32**], [7 x i32**]* %78, i64 0, i64 0
  %80 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %81 = getelementptr inbounds [5 x i32*], [5 x i32*]* %80, i32 0, i64 3
  store i32** %81, i32*** %79, !tbaa !5
  %82 = getelementptr inbounds i32**, i32*** %79, i64 1
  store i32** null, i32*** %82, !tbaa !5
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  %84 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %85 = getelementptr inbounds [5 x i32*], [5 x i32*]* %84, i32 0, i64 3
  store i32** %85, i32*** %83, !tbaa !5
  %86 = getelementptr inbounds i32**, i32*** %83, i64 1
  %87 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %88 = getelementptr inbounds [5 x i32*], [5 x i32*]* %87, i32 0, i64 3
  store i32** %88, i32*** %86, !tbaa !5
  %89 = getelementptr inbounds i32**, i32*** %86, i64 1
  store i32** null, i32*** %89, !tbaa !5
  %90 = getelementptr inbounds i32**, i32*** %89, i64 1
  %91 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %92 = getelementptr inbounds [5 x i32*], [5 x i32*]* %91, i32 0, i64 3
  store i32** %92, i32*** %90, !tbaa !5
  %93 = getelementptr inbounds i32**, i32*** %90, i64 1
  %94 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %95 = getelementptr inbounds [5 x i32*], [5 x i32*]* %94, i32 0, i64 3
  store i32** %95, i32*** %93, !tbaa !5
  %96 = getelementptr inbounds [7 x i32**], [7 x i32**]* %78, i64 1
  %97 = getelementptr inbounds [7 x i32**], [7 x i32**]* %96, i64 0, i64 0
  store i32** null, i32*** %97, !tbaa !5
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  store i32** null, i32*** %98, !tbaa !5
  %99 = getelementptr inbounds i32**, i32*** %98, i64 1
  %100 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 0
  %101 = getelementptr inbounds [5 x i32*], [5 x i32*]* %100, i32 0, i64 0
  store i32** %101, i32*** %99, !tbaa !5
  %102 = getelementptr inbounds i32**, i32*** %99, i64 1
  store i32** null, i32*** %102, !tbaa !5
  %103 = getelementptr inbounds i32**, i32*** %102, i64 1
  store i32** null, i32*** %103, !tbaa !5
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  %105 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 0
  %106 = getelementptr inbounds [5 x i32*], [5 x i32*]* %105, i32 0, i64 0
  store i32** %106, i32*** %104, !tbaa !5
  %107 = getelementptr inbounds i32**, i32*** %104, i64 1
  store i32** null, i32*** %107, !tbaa !5
  %108 = getelementptr inbounds [7 x i32**], [7 x i32**]* %96, i64 1
  %109 = getelementptr inbounds [7 x i32**], [7 x i32**]* %108, i64 0, i64 0
  store i32** null, i32*** %109, !tbaa !5
  %110 = getelementptr inbounds i32**, i32*** %109, i64 1
  %111 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %112 = getelementptr inbounds [5 x i32*], [5 x i32*]* %111, i32 0, i64 3
  store i32** %112, i32*** %110, !tbaa !5
  %113 = getelementptr inbounds i32**, i32*** %110, i64 1
  %114 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %115 = getelementptr inbounds [5 x i32*], [5 x i32*]* %114, i32 0, i64 3
  store i32** %115, i32*** %113, !tbaa !5
  %116 = getelementptr inbounds i32**, i32*** %113, i64 1
  store i32** null, i32*** %116, !tbaa !5
  %117 = getelementptr inbounds i32**, i32*** %116, i64 1
  %118 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %119 = getelementptr inbounds [5 x i32*], [5 x i32*]* %118, i32 0, i64 3
  store i32** %119, i32*** %117, !tbaa !5
  %120 = getelementptr inbounds i32**, i32*** %117, i64 1
  %121 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %122 = getelementptr inbounds [5 x i32*], [5 x i32*]* %121, i32 0, i64 3
  store i32** %122, i32*** %120, !tbaa !5
  %123 = getelementptr inbounds i32**, i32*** %120, i64 1
  store i32** null, i32*** %123, !tbaa !5
  %124 = getelementptr inbounds [7 x i32**], [7 x i32**]* %108, i64 1
  %125 = getelementptr inbounds [7 x i32**], [7 x i32**]* %124, i64 0, i64 0
  %126 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %127 = getelementptr inbounds [5 x i32*], [5 x i32*]* %126, i32 0, i64 3
  store i32** %127, i32*** %125, !tbaa !5
  %128 = getelementptr inbounds i32**, i32*** %125, i64 1
  store i32** null, i32*** %128, !tbaa !5
  %129 = getelementptr inbounds i32**, i32*** %128, i64 1
  %130 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %131 = getelementptr inbounds [5 x i32*], [5 x i32*]* %130, i32 0, i64 3
  store i32** %131, i32*** %129, !tbaa !5
  %132 = getelementptr inbounds i32**, i32*** %129, i64 1
  %133 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %134 = getelementptr inbounds [5 x i32*], [5 x i32*]* %133, i32 0, i64 3
  store i32** %134, i32*** %132, !tbaa !5
  %135 = getelementptr inbounds i32**, i32*** %132, i64 1
  store i32** null, i32*** %135, !tbaa !5
  %136 = getelementptr inbounds i32**, i32*** %135, i64 1
  %137 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %138 = getelementptr inbounds [5 x i32*], [5 x i32*]* %137, i32 0, i64 3
  store i32** %138, i32*** %136, !tbaa !5
  %139 = getelementptr inbounds i32**, i32*** %136, i64 1
  %140 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 3
  %141 = getelementptr inbounds [5 x i32*], [5 x i32*]* %140, i32 0, i64 3
  store i32** %141, i32*** %139, !tbaa !5
  %142 = bitcast i16**** %l_1072 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  store i16*** @g_343, i16**** %l_1072, align 8, !tbaa !5
  %143 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:146                                     ; preds = %164, %0
  %147 = load i32, i32* %i, align 4, !tbaa !1
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %167

; <label>:149                                     ; preds = %146
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %150

; <label>:150                                     ; preds = %160, %149
  %151 = load i32, i32* %j, align 4, !tbaa !1
  %152 = icmp slt i32 %151, 5
  br i1 %152, label %153, label %163

; <label>:153                                     ; preds = %150
  %154 = load i32, i32* %j, align 4, !tbaa !1
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 %157
  %159 = getelementptr inbounds [5 x i32*], [5 x i32*]* %158, i32 0, i64 %155
  store i32* %l_603, i32** %159, align 8, !tbaa !5
  br label %160

; <label>:160                                     ; preds = %153
  %161 = load i32, i32* %j, align 4, !tbaa !1
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %j, align 4, !tbaa !1
  br label %150

; <label>:163                                     ; preds = %150
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %i, align 4, !tbaa !1
  br label %146

; <label>:167                                     ; preds = %146
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %168

; <label>:168                                     ; preds = %175, %167
  %169 = load i32, i32* %i, align 4, !tbaa !1
  %170 = icmp slt i32 %169, 5
  br i1 %170, label %171, label %178

; <label>:171                                     ; preds = %168
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [5 x i64], [5 x i64]* %l_1070, i32 0, i64 %173
  store i64 -4549147585356154547, i64* %174, align 8, !tbaa !7
  br label %175

; <label>:175                                     ; preds = %171
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %i, align 4, !tbaa !1
  br label %168

; <label>:178                                     ; preds = %168
  %179 = load i32, i32* @g_505, align 4, !tbaa !1
  %180 = trunc i32 %179 to i16
  %181 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %180, i16 zeroext -9733)
  %182 = icmp ne i16 %181, 0
  br i1 %182, label %183, label %204

; <label>:183                                     ; preds = %178
  %184 = bitcast [8 x i32*]* %l_593 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %184) #1
  %185 = bitcast [8 x i32*]* %l_593 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* bitcast ([8 x i32*]* @func_78.l_593 to i8*), i64 64, i32 16, i1 false)
  %186 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = getelementptr inbounds [8 x i32*], [8 x i32*]* %l_593, i32 0, i64 2
  store i32* null, i32** %187, align 8, !tbaa !5
  store i32 -13, i32* @g_505, align 4, !tbaa !1
  br label %188

; <label>:188                                     ; preds = %194, %183
  %189 = load i32, i32* @g_505, align 4, !tbaa !1
  %190 = icmp eq i32 %189, 47
  br i1 %190, label %191, label %199

; <label>:191                                     ; preds = %188
  %192 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %193 = load i16*, i16** %192, align 8, !tbaa !5
  store i16* %193, i16** %1
  store i32 1, i32* %7
  br label %200
                                                  ; No predecessors!
  %195 = load i32, i32* @g_505, align 4, !tbaa !1
  %196 = zext i32 %195 to i64
  %197 = call i64 @safe_add_func_int64_t_s_s(i64 %196, i64 1)
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* @g_505, align 4, !tbaa !1
  br label %188

; <label>:199                                     ; preds = %188
  store i32 0, i32* %7
  br label %200

; <label>:200                                     ; preds = %199, %191
  %201 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast [8 x i32*]* %l_593 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %202) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %2373 [
    i32 0, label %203
  ]

; <label>:203                                     ; preds = %200
  br label %2330

; <label>:204                                     ; preds = %178
  call void @llvm.lifetime.start(i64 1, i8* %l_617) #1
  store i8 -8, i8* %l_617, align 1, !tbaa !9
  %205 = bitcast i32* %l_661 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #1
  store i32 141216813, i32* %l_661, align 4, !tbaa !1
  %206 = bitcast i32* %l_688 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #1
  store i32 1, i32* %l_688, align 4, !tbaa !1
  %207 = bitcast i64*** %l_691 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %207) #1
  store i64** @g_315, i64*** %l_691, align 8, !tbaa !5
  %208 = bitcast i8** %l_736 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %208) #1
  store i8* @g_406, i8** %l_736, align 8, !tbaa !5
  %209 = bitcast i32* %l_783 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  store i32 6, i32* %l_783, align 4, !tbaa !1
  %210 = bitcast i32* %l_784 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  store i32 4, i32* %l_784, align 4, !tbaa !1
  %211 = bitcast i32* %l_786 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  store i32 0, i32* %l_786, align 4, !tbaa !1
  %212 = bitcast i32* %l_787 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  store i32 -410178567, i32* %l_787, align 4, !tbaa !1
  %213 = bitcast i32* %l_788 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %213) #1
  store i32 0, i32* %l_788, align 4, !tbaa !1
  %214 = bitcast i32* %l_789 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  store i32 1, i32* %l_789, align 4, !tbaa !1
  %215 = bitcast i64** %l_812 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %215) #1
  store i64* getelementptr inbounds ([7 x [5 x [1 x i64]]], [7 x [5 x [1 x i64]]]* @g_266, i32 0, i64 6, i64 4, i64 0), i64** %l_812, align 8, !tbaa !5
  %216 = bitcast i64*** %l_811 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %216) #1
  store i64** %l_812, i64*** %l_811, align 8, !tbaa !5
  %217 = bitcast i16*** %l_873 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %217) #1
  store i16** @g_282, i16*** %l_873, align 8, !tbaa !5
  %218 = bitcast [3 x i16*]* %l_935 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %218) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_965) #1
  store i8 109, i8* %l_965, align 1, !tbaa !9
  %219 = bitcast [9 x i32*]* %l_1014 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %219) #1
  %220 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_1014, i64 0, i64 0
  %221 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %222 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %221, i32 0, i64 4
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %222, i32 0, i64 0
  store i32* %223, i32** %220, !tbaa !5
  %224 = getelementptr inbounds i32*, i32** %220, i64 1
  store i32* null, i32** %224, !tbaa !5
  %225 = getelementptr inbounds i32*, i32** %224, i64 1
  %226 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %227 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %226, i32 0, i64 4
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %227, i32 0, i64 0
  store i32* %228, i32** %225, !tbaa !5
  %229 = getelementptr inbounds i32*, i32** %225, i64 1
  %230 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %231 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %230, i32 0, i64 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %231, i32 0, i64 0
  store i32* %232, i32** %229, !tbaa !5
  %233 = getelementptr inbounds i32*, i32** %229, i64 1
  store i32* null, i32** %233, !tbaa !5
  %234 = getelementptr inbounds i32*, i32** %233, i64 1
  %235 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %236 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %235, i32 0, i64 4
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %236, i32 0, i64 0
  store i32* %237, i32** %234, !tbaa !5
  %238 = getelementptr inbounds i32*, i32** %234, i64 1
  %239 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %240 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %239, i32 0, i64 4
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %240, i32 0, i64 0
  store i32* %241, i32** %238, !tbaa !5
  %242 = getelementptr inbounds i32*, i32** %238, i64 1
  store i32* null, i32** %242, !tbaa !5
  %243 = getelementptr inbounds i32*, i32** %242, i64 1
  %244 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %245 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %244, i32 0, i64 4
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %245, i32 0, i64 0
  store i32* %246, i32** %243, !tbaa !5
  %247 = bitcast i16* %l_1015 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %247) #1
  store i16 -1, i16* %l_1015, align 2, !tbaa !10
  %248 = bitcast [1 x i32]* %l_1046 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  %249 = bitcast i8** %l_1066 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %249) #1
  store i8* @g_1067, i8** %l_1066, align 8, !tbaa !5
  %250 = bitcast i8*** %l_1065 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %250) #1
  store i8** %l_1066, i8*** %l_1065, align 8, !tbaa !5
  %251 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %251) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %252

; <label>:252                                     ; preds = %260, %204
  %253 = load i32, i32* %i2, align 4, !tbaa !1
  %254 = icmp slt i32 %253, 3
  br i1 %254, label %255, label %263

; <label>:255                                     ; preds = %252
  %256 = getelementptr inbounds [10 x i16], [10 x i16]* %l_596, i32 0, i64 1
  %257 = load i32, i32* %i2, align 4, !tbaa !1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [3 x i16*], [3 x i16*]* %l_935, i32 0, i64 %258
  store i16* %256, i16** %259, align 8, !tbaa !5
  br label %260

; <label>:260                                     ; preds = %255
  %261 = load i32, i32* %i2, align 4, !tbaa !1
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %i2, align 4, !tbaa !1
  br label %252

; <label>:263                                     ; preds = %252
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %271, %263
  %265 = load i32, i32* %i2, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 1
  br i1 %266, label %267, label %274

; <label>:267                                     ; preds = %264
  %268 = load i32, i32* %i2, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [1 x i32], [1 x i32]* %l_1046, i32 0, i64 %269
  store i32 0, i32* %270, align 4, !tbaa !1
  br label %271

; <label>:271                                     ; preds = %267
  %272 = load i32, i32* %i2, align 4, !tbaa !1
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %i2, align 4, !tbaa !1
  br label %264

; <label>:274                                     ; preds = %264
  %275 = getelementptr inbounds [10 x i16], [10 x i16]* %l_596, i32 0, i64 1
  %276 = load i16, i16* %275, align 2, !tbaa !10
  %277 = icmp ne i16 %276, 0
  br i1 %277, label %278, label %2183

; <label>:278                                     ; preds = %274
  %279 = bitcast [9 x i64]* %l_608 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %279) #1
  %280 = bitcast i32* %l_629 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %280) #1
  store i32 1189458635, i32* %l_629, align 4, !tbaa !1
  %281 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %281) #1
  store i32* null, i32** %l_694, align 8, !tbaa !5
  %282 = bitcast i32* %l_714 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %282) #1
  store i32 1055365233, i32* %l_714, align 4, !tbaa !1
  %283 = bitcast [3 x i32]* %l_737 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %283) #1
  %284 = bitcast i32** %l_781 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %284) #1
  store i32* %l_712, i32** %l_781, align 8, !tbaa !5
  %285 = bitcast [7 x [10 x [3 x i32*]]]* %l_782 to i8*
  call void @llvm.lifetime.start(i64 1680, i8* %285) #1
  %286 = getelementptr inbounds [7 x [10 x [3 x i32*]]], [7 x [10 x [3 x i32*]]]* %l_782, i64 0, i64 0
  %287 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %286, i64 0, i64 0
  %288 = getelementptr inbounds [3 x i32*], [3 x i32*]* %287, i64 0, i64 0
  store i32* @g_115, i32** %288, !tbaa !5
  %289 = getelementptr inbounds i32*, i32** %288, i64 1
  store i32* @g_63, i32** %289, !tbaa !5
  %290 = getelementptr inbounds i32*, i32** %289, i64 1
  store i32* %l_714, i32** %290, !tbaa !5
  %291 = getelementptr inbounds [3 x i32*], [3 x i32*]* %287, i64 1
  %292 = getelementptr inbounds [3 x i32*], [3 x i32*]* %291, i64 0, i64 0
  store i32* %l_712, i32** %292, !tbaa !5
  %293 = getelementptr inbounds i32*, i32** %292, i64 1
  store i32* @g_5, i32** %293, !tbaa !5
  %294 = getelementptr inbounds i32*, i32** %293, i64 1
  store i32* %l_603, i32** %294, !tbaa !5
  %295 = getelementptr inbounds [3 x i32*], [3 x i32*]* %291, i64 1
  %296 = getelementptr inbounds [3 x i32*], [3 x i32*]* %295, i64 0, i64 0
  store i32* @g_115, i32** %296, !tbaa !5
  %297 = getelementptr inbounds i32*, i32** %296, i64 1
  store i32* %l_712, i32** %297, !tbaa !5
  %298 = getelementptr inbounds i32*, i32** %297, i64 1
  store i32* @g_115, i32** %298, !tbaa !5
  %299 = getelementptr inbounds [3 x i32*], [3 x i32*]* %295, i64 1
  %300 = getelementptr inbounds [3 x i32*], [3 x i32*]* %299, i64 0, i64 0
  store i32* null, i32** %300, !tbaa !5
  %301 = getelementptr inbounds i32*, i32** %300, i64 1
  %302 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %303 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %302, i32 0, i64 4
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %303, i32 0, i64 1
  store i32* %304, i32** %301, !tbaa !5
  %305 = getelementptr inbounds i32*, i32** %301, i64 1
  store i32* @g_63, i32** %305, !tbaa !5
  %306 = getelementptr inbounds [3 x i32*], [3 x i32*]* %299, i64 1
  %307 = getelementptr inbounds [3 x i32*], [3 x i32*]* %306, i64 0, i64 0
  store i32* @g_63, i32** %307, !tbaa !5
  %308 = getelementptr inbounds i32*, i32** %307, i64 1
  store i32* @g_115, i32** %308, !tbaa !5
  %309 = getelementptr inbounds i32*, i32** %308, i64 1
  store i32* @g_780, i32** %309, !tbaa !5
  %310 = getelementptr inbounds [3 x i32*], [3 x i32*]* %306, i64 1
  %311 = getelementptr inbounds [3 x i32*], [3 x i32*]* %310, i64 0, i64 0
  store i32* %l_603, i32** %311, !tbaa !5
  %312 = getelementptr inbounds i32*, i32** %311, i64 1
  %313 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 2
  %314 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %313, i32 0, i64 1
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %314, i32 0, i64 1
  store i32* %315, i32** %312, !tbaa !5
  %316 = getelementptr inbounds i32*, i32** %312, i64 1
  store i32* @g_5, i32** %316, !tbaa !5
  %317 = getelementptr inbounds [3 x i32*], [3 x i32*]* %310, i64 1
  %318 = getelementptr inbounds [3 x i32*], [3 x i32*]* %317, i64 0, i64 0
  store i32* null, i32** %318, !tbaa !5
  %319 = getelementptr inbounds i32*, i32** %318, i64 1
  %320 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %321 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %320, i32 0, i64 4
  %322 = getelementptr inbounds [2 x i32], [2 x i32]* %321, i32 0, i64 0
  store i32* %322, i32** %319, !tbaa !5
  %323 = getelementptr inbounds i32*, i32** %319, i64 1
  store i32* %l_603, i32** %323, !tbaa !5
  %324 = getelementptr inbounds [3 x i32*], [3 x i32*]* %317, i64 1
  %325 = getelementptr inbounds [3 x i32*], [3 x i32*]* %324, i64 0, i64 0
  store i32* %l_603, i32** %325, !tbaa !5
  %326 = getelementptr inbounds i32*, i32** %325, i64 1
  store i32* %l_603, i32** %326, !tbaa !5
  %327 = getelementptr inbounds i32*, i32** %326, i64 1
  store i32* %l_714, i32** %327, !tbaa !5
  %328 = getelementptr inbounds [3 x i32*], [3 x i32*]* %324, i64 1
  %329 = getelementptr inbounds [3 x i32*], [3 x i32*]* %328, i64 0, i64 0
  store i32* @g_63, i32** %329, !tbaa !5
  %330 = getelementptr inbounds i32*, i32** %329, i64 1
  store i32* null, i32** %330, !tbaa !5
  %331 = getelementptr inbounds i32*, i32** %330, i64 1
  %332 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 1
  %333 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %332, i32 0, i64 1
  %334 = getelementptr inbounds [2 x i32], [2 x i32]* %333, i32 0, i64 1
  store i32* %334, i32** %331, !tbaa !5
  %335 = getelementptr inbounds [3 x i32*], [3 x i32*]* %328, i64 1
  %336 = getelementptr inbounds [3 x i32*], [3 x i32*]* %335, i64 0, i64 0
  store i32* null, i32** %336, !tbaa !5
  %337 = getelementptr inbounds i32*, i32** %336, i64 1
  store i32* @g_115, i32** %337, !tbaa !5
  %338 = getelementptr inbounds i32*, i32** %337, i64 1
  store i32* @g_115, i32** %338, !tbaa !5
  %339 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %286, i64 1
  %340 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %339, i64 0, i64 0
  %341 = getelementptr inbounds [3 x i32*], [3 x i32*]* %340, i64 0, i64 0
  store i32* @g_115, i32** %341, !tbaa !5
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  store i32* null, i32** %342, !tbaa !5
  %343 = getelementptr inbounds i32*, i32** %342, i64 1
  store i32* @g_115, i32** %343, !tbaa !5
  %344 = getelementptr inbounds [3 x i32*], [3 x i32*]* %340, i64 1
  %345 = getelementptr inbounds [3 x i32*], [3 x i32*]* %344, i64 0, i64 0
  store i32* %l_712, i32** %345, !tbaa !5
  %346 = getelementptr inbounds i32*, i32** %345, i64 1
  store i32* @g_5, i32** %346, !tbaa !5
  %347 = getelementptr inbounds i32*, i32** %346, i64 1
  store i32* @g_5, i32** %347, !tbaa !5
  %348 = getelementptr inbounds [3 x i32*], [3 x i32*]* %344, i64 1
  %349 = getelementptr inbounds [3 x i32*], [3 x i32*]* %348, i64 0, i64 0
  store i32* @g_115, i32** %349, !tbaa !5
  %350 = getelementptr inbounds i32*, i32** %349, i64 1
  store i32* @g_115, i32** %350, !tbaa !5
  %351 = getelementptr inbounds i32*, i32** %350, i64 1
  store i32* @g_63, i32** %351, !tbaa !5
  %352 = getelementptr inbounds [3 x i32*], [3 x i32*]* %348, i64 1
  %353 = getelementptr inbounds [3 x i32*], [3 x i32*]* %352, i64 0, i64 0
  store i32* @g_63, i32** %353, !tbaa !5
  %354 = getelementptr inbounds i32*, i32** %353, i64 1
  store i32* %l_661, i32** %354, !tbaa !5
  %355 = getelementptr inbounds i32*, i32** %354, i64 1
  store i32* %l_712, i32** %355, !tbaa !5
  %356 = getelementptr inbounds [3 x i32*], [3 x i32*]* %352, i64 1
  %357 = getelementptr inbounds [3 x i32*], [3 x i32*]* %356, i64 0, i64 0
  store i32* null, i32** %357, !tbaa !5
  %358 = getelementptr inbounds i32*, i32** %357, i64 1
  store i32* @g_115, i32** %358, !tbaa !5
  %359 = getelementptr inbounds i32*, i32** %358, i64 1
  store i32* @g_301, i32** %359, !tbaa !5
  %360 = getelementptr inbounds [3 x i32*], [3 x i32*]* %356, i64 1
  %361 = getelementptr inbounds [3 x i32*], [3 x i32*]* %360, i64 0, i64 0
  store i32* null, i32** %361, !tbaa !5
  %362 = getelementptr inbounds i32*, i32** %361, i64 1
  store i32* %l_712, i32** %362, !tbaa !5
  %363 = getelementptr inbounds i32*, i32** %362, i64 1
  store i32* null, i32** %363, !tbaa !5
  %364 = getelementptr inbounds [3 x i32*], [3 x i32*]* %360, i64 1
  %365 = getelementptr inbounds [3 x i32*], [3 x i32*]* %364, i64 0, i64 0
  %366 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %367 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %366, i32 0, i64 4
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %367, i32 0, i64 0
  store i32* %368, i32** %365, !tbaa !5
  %369 = getelementptr inbounds i32*, i32** %365, i64 1
  store i32* null, i32** %369, !tbaa !5
  %370 = getelementptr inbounds i32*, i32** %369, i64 1
  store i32* @g_301, i32** %370, !tbaa !5
  %371 = getelementptr inbounds [3 x i32*], [3 x i32*]* %364, i64 1
  %372 = getelementptr inbounds [3 x i32*], [3 x i32*]* %371, i64 0, i64 0
  store i32* @g_5, i32** %372, !tbaa !5
  %373 = getelementptr inbounds i32*, i32** %372, i64 1
  store i32* %l_603, i32** %373, !tbaa !5
  %374 = getelementptr inbounds i32*, i32** %373, i64 1
  store i32* %l_712, i32** %374, !tbaa !5
  %375 = getelementptr inbounds [3 x i32*], [3 x i32*]* %371, i64 1
  %376 = getelementptr inbounds [3 x i32*], [3 x i32*]* %375, i64 0, i64 0
  store i32* @g_63, i32** %376, !tbaa !5
  %377 = getelementptr inbounds i32*, i32** %376, i64 1
  store i32* null, i32** %377, !tbaa !5
  %378 = getelementptr inbounds i32*, i32** %377, i64 1
  store i32* @g_63, i32** %378, !tbaa !5
  %379 = getelementptr inbounds [3 x i32*], [3 x i32*]* %375, i64 1
  %380 = getelementptr inbounds [3 x i32*], [3 x i32*]* %379, i64 0, i64 0
  store i32* %l_661, i32** %380, !tbaa !5
  %381 = getelementptr inbounds i32*, i32** %380, i64 1
  store i32* @g_63, i32** %381, !tbaa !5
  %382 = getelementptr inbounds i32*, i32** %381, i64 1
  store i32* @g_5, i32** %382, !tbaa !5
  %383 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %339, i64 1
  %384 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %383, i64 0, i64 0
  %385 = getelementptr inbounds [3 x i32*], [3 x i32*]* %384, i64 0, i64 0
  store i32* @g_301, i32** %385, !tbaa !5
  %386 = getelementptr inbounds i32*, i32** %385, i64 1
  store i32* @g_115, i32** %386, !tbaa !5
  %387 = getelementptr inbounds i32*, i32** %386, i64 1
  store i32* @g_115, i32** %387, !tbaa !5
  %388 = getelementptr inbounds [3 x i32*], [3 x i32*]* %384, i64 1
  %389 = getelementptr inbounds [3 x i32*], [3 x i32*]* %388, i64 0, i64 0
  store i32* %l_629, i32** %389, !tbaa !5
  %390 = getelementptr inbounds i32*, i32** %389, i64 1
  store i32* @g_115, i32** %390, !tbaa !5
  %391 = getelementptr inbounds i32*, i32** %390, i64 1
  store i32* @g_115, i32** %391, !tbaa !5
  %392 = getelementptr inbounds [3 x i32*], [3 x i32*]* %388, i64 1
  %393 = getelementptr inbounds [3 x i32*], [3 x i32*]* %392, i64 0, i64 0
  store i32* @g_63, i32** %393, !tbaa !5
  %394 = getelementptr inbounds i32*, i32** %393, i64 1
  store i32* %l_714, i32** %394, !tbaa !5
  %395 = getelementptr inbounds i32*, i32** %394, i64 1
  %396 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 1
  %397 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %396, i32 0, i64 1
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %397, i32 0, i64 1
  store i32* %398, i32** %395, !tbaa !5
  %399 = getelementptr inbounds [3 x i32*], [3 x i32*]* %392, i64 1
  %400 = getelementptr inbounds [3 x i32*], [3 x i32*]* %399, i64 0, i64 0
  store i32* @g_115, i32** %400, !tbaa !5
  %401 = getelementptr inbounds i32*, i32** %400, i64 1
  %402 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %403 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %402, i32 0, i64 4
  %404 = getelementptr inbounds [2 x i32], [2 x i32]* %403, i32 0, i64 0
  store i32* %404, i32** %401, !tbaa !5
  %405 = getelementptr inbounds i32*, i32** %401, i64 1
  store i32* %l_714, i32** %405, !tbaa !5
  %406 = getelementptr inbounds [3 x i32*], [3 x i32*]* %399, i64 1
  %407 = getelementptr inbounds [3 x i32*], [3 x i32*]* %406, i64 0, i64 0
  store i32* null, i32** %407, !tbaa !5
  %408 = getelementptr inbounds i32*, i32** %407, i64 1
  %409 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %410 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %409, i32 0, i64 4
  %411 = getelementptr inbounds [2 x i32], [2 x i32]* %410, i32 0, i64 0
  store i32* %411, i32** %408, !tbaa !5
  %412 = getelementptr inbounds i32*, i32** %408, i64 1
  store i32* %l_603, i32** %412, !tbaa !5
  %413 = getelementptr inbounds [3 x i32*], [3 x i32*]* %406, i64 1
  %414 = getelementptr inbounds [3 x i32*], [3 x i32*]* %413, i64 0, i64 0
  store i32* @g_780, i32** %414, !tbaa !5
  %415 = getelementptr inbounds i32*, i32** %414, i64 1
  store i32* @g_780, i32** %415, !tbaa !5
  %416 = getelementptr inbounds i32*, i32** %415, i64 1
  store i32* @g_5, i32** %416, !tbaa !5
  %417 = getelementptr inbounds [3 x i32*], [3 x i32*]* %413, i64 1
  %418 = getelementptr inbounds [3 x i32*], [3 x i32*]* %417, i64 0, i64 0
  store i32* %l_629, i32** %418, !tbaa !5
  %419 = getelementptr inbounds i32*, i32** %418, i64 1
  %420 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %421 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %420, i32 0, i64 4
  %422 = getelementptr inbounds [2 x i32], [2 x i32]* %421, i32 0, i64 0
  store i32* %422, i32** %419, !tbaa !5
  %423 = getelementptr inbounds i32*, i32** %419, i64 1
  store i32* @g_780, i32** %423, !tbaa !5
  %424 = getelementptr inbounds [3 x i32*], [3 x i32*]* %417, i64 1
  %425 = getelementptr inbounds [3 x i32*], [3 x i32*]* %424, i64 0, i64 0
  %426 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 2
  %427 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %426, i32 0, i64 1
  %428 = getelementptr inbounds [2 x i32], [2 x i32]* %427, i32 0, i64 1
  store i32* %428, i32** %425, !tbaa !5
  %429 = getelementptr inbounds i32*, i32** %425, i64 1
  %430 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %431 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %430, i32 0, i64 4
  %432 = getelementptr inbounds [2 x i32], [2 x i32]* %431, i32 0, i64 0
  store i32* %432, i32** %429, !tbaa !5
  %433 = getelementptr inbounds i32*, i32** %429, i64 1
  store i32* @g_63, i32** %433, !tbaa !5
  %434 = getelementptr inbounds [3 x i32*], [3 x i32*]* %424, i64 1
  %435 = getelementptr inbounds [3 x i32*], [3 x i32*]* %434, i64 0, i64 0
  %436 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %437 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %436, i32 0, i64 4
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %437, i32 0, i64 0
  store i32* %438, i32** %435, !tbaa !5
  %439 = getelementptr inbounds i32*, i32** %435, i64 1
  store i32* %l_714, i32** %439, !tbaa !5
  %440 = getelementptr inbounds i32*, i32** %439, i64 1
  store i32* @g_115, i32** %440, !tbaa !5
  %441 = getelementptr inbounds [3 x i32*], [3 x i32*]* %434, i64 1
  %442 = getelementptr inbounds [3 x i32*], [3 x i32*]* %441, i64 0, i64 0
  store i32* @g_115, i32** %442, !tbaa !5
  %443 = getelementptr inbounds i32*, i32** %442, i64 1
  store i32* @g_115, i32** %443, !tbaa !5
  %444 = getelementptr inbounds i32*, i32** %443, i64 1
  store i32* %l_603, i32** %444, !tbaa !5
  %445 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %383, i64 1
  %446 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %445, i64 0, i64 0
  %447 = getelementptr inbounds [3 x i32*], [3 x i32*]* %446, i64 0, i64 0
  %448 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %449 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %448, i32 0, i64 4
  %450 = getelementptr inbounds [2 x i32], [2 x i32]* %449, i32 0, i64 0
  store i32* %450, i32** %447, !tbaa !5
  %451 = getelementptr inbounds i32*, i32** %447, i64 1
  store i32* @g_115, i32** %451, !tbaa !5
  %452 = getelementptr inbounds i32*, i32** %451, i64 1
  store i32* %l_714, i32** %452, !tbaa !5
  %453 = getelementptr inbounds [3 x i32*], [3 x i32*]* %446, i64 1
  %454 = getelementptr inbounds [3 x i32*], [3 x i32*]* %453, i64 0, i64 0
  %455 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %456 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %455, i32 0, i64 4
  %457 = getelementptr inbounds [2 x i32], [2 x i32]* %456, i32 0, i64 0
  store i32* %457, i32** %454, !tbaa !5
  %458 = getelementptr inbounds i32*, i32** %454, i64 1
  store i32* @g_63, i32** %458, !tbaa !5
  %459 = getelementptr inbounds i32*, i32** %458, i64 1
  %460 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %461 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %460, i32 0, i64 4
  %462 = getelementptr inbounds [2 x i32], [2 x i32]* %461, i32 0, i64 0
  store i32* %462, i32** %459, !tbaa !5
  %463 = getelementptr inbounds [3 x i32*], [3 x i32*]* %453, i64 1
  %464 = getelementptr inbounds [3 x i32*], [3 x i32*]* %463, i64 0, i64 0
  store i32* %l_714, i32** %464, !tbaa !5
  %465 = getelementptr inbounds i32*, i32** %464, i64 1
  store i32* null, i32** %465, !tbaa !5
  %466 = getelementptr inbounds i32*, i32** %465, i64 1
  %467 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %468 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %467, i32 0, i64 4
  %469 = getelementptr inbounds [2 x i32], [2 x i32]* %468, i32 0, i64 0
  store i32* %469, i32** %466, !tbaa !5
  %470 = getelementptr inbounds [3 x i32*], [3 x i32*]* %463, i64 1
  %471 = getelementptr inbounds [3 x i32*], [3 x i32*]* %470, i64 0, i64 0
  store i32* @g_63, i32** %471, !tbaa !5
  %472 = getelementptr inbounds i32*, i32** %471, i64 1
  store i32* %l_603, i32** %472, !tbaa !5
  %473 = getelementptr inbounds i32*, i32** %472, i64 1
  store i32* @g_301, i32** %473, !tbaa !5
  %474 = getelementptr inbounds [3 x i32*], [3 x i32*]* %470, i64 1
  %475 = getelementptr inbounds [3 x i32*], [3 x i32*]* %474, i64 0, i64 0
  store i32* @g_63, i32** %475, !tbaa !5
  %476 = getelementptr inbounds i32*, i32** %475, i64 1
  store i32* null, i32** %476, !tbaa !5
  %477 = getelementptr inbounds i32*, i32** %476, i64 1
  store i32* null, i32** %477, !tbaa !5
  %478 = getelementptr inbounds [3 x i32*], [3 x i32*]* %474, i64 1
  %479 = getelementptr inbounds [3 x i32*], [3 x i32*]* %478, i64 0, i64 0
  store i32* @g_780, i32** %479, !tbaa !5
  %480 = getelementptr inbounds i32*, i32** %479, i64 1
  store i32* %l_712, i32** %480, !tbaa !5
  %481 = getelementptr inbounds i32*, i32** %480, i64 1
  store i32* null, i32** %481, !tbaa !5
  %482 = getelementptr inbounds [3 x i32*], [3 x i32*]* %478, i64 1
  %483 = getelementptr inbounds [3 x i32*], [3 x i32*]* %482, i64 0, i64 0
  %484 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %485 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %484, i32 0, i64 4
  %486 = getelementptr inbounds [2 x i32], [2 x i32]* %485, i32 0, i64 0
  store i32* %486, i32** %483, !tbaa !5
  %487 = getelementptr inbounds i32*, i32** %483, i64 1
  %488 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 1
  %489 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %488, i32 0, i64 1
  %490 = getelementptr inbounds [2 x i32], [2 x i32]* %489, i32 0, i64 1
  store i32* %490, i32** %487, !tbaa !5
  %491 = getelementptr inbounds i32*, i32** %487, i64 1
  store i32* @g_301, i32** %491, !tbaa !5
  %492 = getelementptr inbounds [3 x i32*], [3 x i32*]* %482, i64 1
  %493 = getelementptr inbounds [3 x i32*], [3 x i32*]* %492, i64 0, i64 0
  store i32* @g_115, i32** %493, !tbaa !5
  %494 = getelementptr inbounds i32*, i32** %493, i64 1
  %495 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 2
  %496 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %495, i32 0, i64 1
  %497 = getelementptr inbounds [2 x i32], [2 x i32]* %496, i32 0, i64 1
  store i32* %497, i32** %494, !tbaa !5
  %498 = getelementptr inbounds i32*, i32** %494, i64 1
  store i32* @g_115, i32** %498, !tbaa !5
  %499 = getelementptr inbounds [3 x i32*], [3 x i32*]* %492, i64 1
  %500 = getelementptr inbounds [3 x i32*], [3 x i32*]* %499, i64 0, i64 0
  store i32* @g_63, i32** %500, !tbaa !5
  %501 = getelementptr inbounds i32*, i32** %500, i64 1
  store i32* %l_629, i32** %501, !tbaa !5
  %502 = getelementptr inbounds i32*, i32** %501, i64 1
  store i32* %l_629, i32** %502, !tbaa !5
  %503 = getelementptr inbounds [3 x i32*], [3 x i32*]* %499, i64 1
  %504 = getelementptr inbounds [3 x i32*], [3 x i32*]* %503, i64 0, i64 0
  store i32* %l_661, i32** %504, !tbaa !5
  %505 = getelementptr inbounds i32*, i32** %504, i64 1
  store i32* @g_780, i32** %505, !tbaa !5
  %506 = getelementptr inbounds i32*, i32** %505, i64 1
  store i32* @g_780, i32** %506, !tbaa !5
  %507 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %445, i64 1
  %508 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %507, i64 0, i64 0
  %509 = getelementptr inbounds [3 x i32*], [3 x i32*]* %508, i64 0, i64 0
  %510 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %511 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %510, i32 0, i64 4
  %512 = getelementptr inbounds [2 x i32], [2 x i32]* %511, i32 0, i64 0
  store i32* %512, i32** %509, !tbaa !5
  %513 = getelementptr inbounds i32*, i32** %509, i64 1
  store i32* null, i32** %513, !tbaa !5
  %514 = getelementptr inbounds i32*, i32** %513, i64 1
  store i32* null, i32** %514, !tbaa !5
  %515 = getelementptr inbounds [3 x i32*], [3 x i32*]* %508, i64 1
  %516 = getelementptr inbounds [3 x i32*], [3 x i32*]* %515, i64 0, i64 0
  store i32* %l_629, i32** %516, !tbaa !5
  %517 = getelementptr inbounds i32*, i32** %516, i64 1
  store i32* %l_629, i32** %517, !tbaa !5
  %518 = getelementptr inbounds i32*, i32** %517, i64 1
  store i32* %l_712, i32** %518, !tbaa !5
  %519 = getelementptr inbounds [3 x i32*], [3 x i32*]* %515, i64 1
  %520 = getelementptr inbounds [3 x i32*], [3 x i32*]* %519, i64 0, i64 0
  store i32* %l_603, i32** %520, !tbaa !5
  %521 = getelementptr inbounds i32*, i32** %520, i64 1
  store i32* null, i32** %521, !tbaa !5
  %522 = getelementptr inbounds i32*, i32** %521, i64 1
  %523 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %524 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %523, i32 0, i64 4
  %525 = getelementptr inbounds [2 x i32], [2 x i32]* %524, i32 0, i64 0
  store i32* %525, i32** %522, !tbaa !5
  %526 = getelementptr inbounds [3 x i32*], [3 x i32*]* %519, i64 1
  %527 = getelementptr inbounds [3 x i32*], [3 x i32*]* %526, i64 0, i64 0
  store i32* %l_603, i32** %527, !tbaa !5
  %528 = getelementptr inbounds i32*, i32** %527, i64 1
  store i32* @g_780, i32** %528, !tbaa !5
  %529 = getelementptr inbounds i32*, i32** %528, i64 1
  store i32* %l_603, i32** %529, !tbaa !5
  %530 = getelementptr inbounds [3 x i32*], [3 x i32*]* %526, i64 1
  %531 = getelementptr inbounds [3 x i32*], [3 x i32*]* %530, i64 0, i64 0
  store i32* @g_115, i32** %531, !tbaa !5
  %532 = getelementptr inbounds i32*, i32** %531, i64 1
  %533 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %534 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %533, i32 0, i64 4
  %535 = getelementptr inbounds [2 x i32], [2 x i32]* %534, i32 0, i64 0
  store i32* %535, i32** %532, !tbaa !5
  %536 = getelementptr inbounds i32*, i32** %532, i64 1
  store i32* @g_115, i32** %536, !tbaa !5
  %537 = getelementptr inbounds [3 x i32*], [3 x i32*]* %530, i64 1
  %538 = getelementptr inbounds [3 x i32*], [3 x i32*]* %537, i64 0, i64 0
  store i32* @g_5, i32** %538, !tbaa !5
  %539 = getelementptr inbounds i32*, i32** %538, i64 1
  store i32* %l_603, i32** %539, !tbaa !5
  %540 = getelementptr inbounds i32*, i32** %539, i64 1
  store i32* %l_603, i32** %540, !tbaa !5
  %541 = getelementptr inbounds [3 x i32*], [3 x i32*]* %537, i64 1
  %542 = getelementptr inbounds [3 x i32*], [3 x i32*]* %541, i64 0, i64 0
  store i32* null, i32** %542, !tbaa !5
  %543 = getelementptr inbounds i32*, i32** %542, i64 1
  %544 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %545 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %544, i32 0, i64 4
  %546 = getelementptr inbounds [2 x i32], [2 x i32]* %545, i32 0, i64 0
  store i32* %546, i32** %543, !tbaa !5
  %547 = getelementptr inbounds i32*, i32** %543, i64 1
  %548 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %549 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %548, i32 0, i64 4
  %550 = getelementptr inbounds [2 x i32], [2 x i32]* %549, i32 0, i64 0
  store i32* %550, i32** %547, !tbaa !5
  %551 = getelementptr inbounds [3 x i32*], [3 x i32*]* %541, i64 1
  %552 = getelementptr inbounds [3 x i32*], [3 x i32*]* %551, i64 0, i64 0
  store i32* null, i32** %552, !tbaa !5
  %553 = getelementptr inbounds i32*, i32** %552, i64 1
  store i32* %l_714, i32** %553, !tbaa !5
  %554 = getelementptr inbounds i32*, i32** %553, i64 1
  store i32* %l_712, i32** %554, !tbaa !5
  %555 = getelementptr inbounds [3 x i32*], [3 x i32*]* %551, i64 1
  %556 = getelementptr inbounds [3 x i32*], [3 x i32*]* %555, i64 0, i64 0
  store i32* %l_712, i32** %556, !tbaa !5
  %557 = getelementptr inbounds i32*, i32** %556, i64 1
  store i32* %l_714, i32** %557, !tbaa !5
  %558 = getelementptr inbounds i32*, i32** %557, i64 1
  store i32* null, i32** %558, !tbaa !5
  %559 = getelementptr inbounds [3 x i32*], [3 x i32*]* %555, i64 1
  %560 = getelementptr inbounds [3 x i32*], [3 x i32*]* %559, i64 0, i64 0
  store i32* %l_603, i32** %560, !tbaa !5
  %561 = getelementptr inbounds i32*, i32** %560, i64 1
  %562 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %563 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %562, i32 0, i64 4
  %564 = getelementptr inbounds [2 x i32], [2 x i32]* %563, i32 0, i64 1
  store i32* %564, i32** %561, !tbaa !5
  %565 = getelementptr inbounds i32*, i32** %561, i64 1
  store i32* @g_780, i32** %565, !tbaa !5
  %566 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %507, i64 1
  %567 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %566, i64 0, i64 0
  %568 = getelementptr inbounds [3 x i32*], [3 x i32*]* %567, i64 0, i64 0
  store i32* @g_115, i32** %568, !tbaa !5
  %569 = getelementptr inbounds i32*, i32** %568, i64 1
  store i32* %l_629, i32** %569, !tbaa !5
  %570 = getelementptr inbounds i32*, i32** %569, i64 1
  store i32* %l_629, i32** %570, !tbaa !5
  %571 = getelementptr inbounds [3 x i32*], [3 x i32*]* %567, i64 1
  %572 = getelementptr inbounds [3 x i32*], [3 x i32*]* %571, i64 0, i64 0
  store i32* @g_63, i32** %572, !tbaa !5
  %573 = getelementptr inbounds i32*, i32** %572, i64 1
  %574 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %575 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %574, i32 0, i64 4
  %576 = getelementptr inbounds [2 x i32], [2 x i32]* %575, i32 0, i64 0
  store i32* %576, i32** %573, !tbaa !5
  %577 = getelementptr inbounds i32*, i32** %573, i64 1
  store i32* @g_115, i32** %577, !tbaa !5
  %578 = getelementptr inbounds [3 x i32*], [3 x i32*]* %571, i64 1
  %579 = getelementptr inbounds [3 x i32*], [3 x i32*]* %578, i64 0, i64 0
  store i32* %l_629, i32** %579, !tbaa !5
  %580 = getelementptr inbounds i32*, i32** %579, i64 1
  store i32* null, i32** %580, !tbaa !5
  %581 = getelementptr inbounds i32*, i32** %580, i64 1
  store i32* @g_301, i32** %581, !tbaa !5
  %582 = getelementptr inbounds [3 x i32*], [3 x i32*]* %578, i64 1
  %583 = getelementptr inbounds [3 x i32*], [3 x i32*]* %582, i64 0, i64 0
  store i32* @g_780, i32** %583, !tbaa !5
  %584 = getelementptr inbounds i32*, i32** %583, i64 1
  store i32* @g_5, i32** %584, !tbaa !5
  %585 = getelementptr inbounds i32*, i32** %584, i64 1
  store i32* null, i32** %585, !tbaa !5
  %586 = getelementptr inbounds [3 x i32*], [3 x i32*]* %582, i64 1
  %587 = getelementptr inbounds [3 x i32*], [3 x i32*]* %586, i64 0, i64 0
  store i32* @g_115, i32** %587, !tbaa !5
  %588 = getelementptr inbounds i32*, i32** %587, i64 1
  store i32* @g_115, i32** %588, !tbaa !5
  %589 = getelementptr inbounds i32*, i32** %588, i64 1
  store i32* null, i32** %589, !tbaa !5
  %590 = getelementptr inbounds [3 x i32*], [3 x i32*]* %586, i64 1
  %591 = getelementptr inbounds [3 x i32*], [3 x i32*]* %590, i64 0, i64 0
  store i32* %l_603, i32** %591, !tbaa !5
  %592 = getelementptr inbounds i32*, i32** %591, i64 1
  store i32* @g_5, i32** %592, !tbaa !5
  %593 = getelementptr inbounds i32*, i32** %592, i64 1
  store i32* null, i32** %593, !tbaa !5
  %594 = getelementptr inbounds [3 x i32*], [3 x i32*]* %590, i64 1
  %595 = getelementptr inbounds [3 x i32*], [3 x i32*]* %594, i64 0, i64 0
  store i32* @g_63, i32** %595, !tbaa !5
  %596 = getelementptr inbounds i32*, i32** %595, i64 1
  store i32* null, i32** %596, !tbaa !5
  %597 = getelementptr inbounds i32*, i32** %596, i64 1
  store i32* %l_603, i32** %597, !tbaa !5
  %598 = getelementptr inbounds [3 x i32*], [3 x i32*]* %594, i64 1
  %599 = getelementptr inbounds [3 x i32*], [3 x i32*]* %598, i64 0, i64 0
  store i32* null, i32** %599, !tbaa !5
  %600 = getelementptr inbounds i32*, i32** %599, i64 1
  %601 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %602 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %601, i32 0, i64 4
  %603 = getelementptr inbounds [2 x i32], [2 x i32]* %602, i32 0, i64 0
  store i32* %603, i32** %600, !tbaa !5
  %604 = getelementptr inbounds i32*, i32** %600, i64 1
  store i32* %l_661, i32** %604, !tbaa !5
  %605 = getelementptr inbounds [3 x i32*], [3 x i32*]* %598, i64 1
  %606 = getelementptr inbounds [3 x i32*], [3 x i32*]* %605, i64 0, i64 0
  store i32* %l_629, i32** %606, !tbaa !5
  %607 = getelementptr inbounds i32*, i32** %606, i64 1
  store i32* %l_629, i32** %607, !tbaa !5
  %608 = getelementptr inbounds i32*, i32** %607, i64 1
  store i32* %l_714, i32** %608, !tbaa !5
  %609 = getelementptr inbounds [3 x i32*], [3 x i32*]* %605, i64 1
  %610 = getelementptr inbounds [3 x i32*], [3 x i32*]* %609, i64 0, i64 0
  store i32* @g_63, i32** %610, !tbaa !5
  %611 = getelementptr inbounds i32*, i32** %610, i64 1
  %612 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %613 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %612, i32 0, i64 4
  %614 = getelementptr inbounds [2 x i32], [2 x i32]* %613, i32 0, i64 1
  store i32* %614, i32** %611, !tbaa !5
  %615 = getelementptr inbounds i32*, i32** %611, i64 1
  store i32* null, i32** %615, !tbaa !5
  %616 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %566, i64 1
  %617 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %616, i64 0, i64 0
  %618 = getelementptr inbounds [3 x i32*], [3 x i32*]* %617, i64 0, i64 0
  store i32* null, i32** %618, !tbaa !5
  %619 = getelementptr inbounds i32*, i32** %618, i64 1
  store i32* %l_714, i32** %619, !tbaa !5
  %620 = getelementptr inbounds i32*, i32** %619, i64 1
  store i32* null, i32** %620, !tbaa !5
  %621 = getelementptr inbounds [3 x i32*], [3 x i32*]* %617, i64 1
  %622 = getelementptr inbounds [3 x i32*], [3 x i32*]* %621, i64 0, i64 0
  store i32* @g_63, i32** %622, !tbaa !5
  %623 = getelementptr inbounds i32*, i32** %622, i64 1
  store i32* %l_714, i32** %623, !tbaa !5
  %624 = getelementptr inbounds i32*, i32** %623, i64 1
  store i32* null, i32** %624, !tbaa !5
  %625 = getelementptr inbounds [3 x i32*], [3 x i32*]* %621, i64 1
  %626 = getelementptr inbounds [3 x i32*], [3 x i32*]* %625, i64 0, i64 0
  store i32* @g_63, i32** %626, !tbaa !5
  %627 = getelementptr inbounds i32*, i32** %626, i64 1
  %628 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %629 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %628, i32 0, i64 4
  %630 = getelementptr inbounds [2 x i32], [2 x i32]* %629, i32 0, i64 0
  store i32* %630, i32** %627, !tbaa !5
  %631 = getelementptr inbounds i32*, i32** %627, i64 1
  store i32* %l_714, i32** %631, !tbaa !5
  %632 = getelementptr inbounds [3 x i32*], [3 x i32*]* %625, i64 1
  %633 = getelementptr inbounds [3 x i32*], [3 x i32*]* %632, i64 0, i64 0
  store i32* %l_712, i32** %633, !tbaa !5
  %634 = getelementptr inbounds i32*, i32** %633, i64 1
  store i32* %l_603, i32** %634, !tbaa !5
  %635 = getelementptr inbounds i32*, i32** %634, i64 1
  store i32* @g_780, i32** %635, !tbaa !5
  %636 = getelementptr inbounds [3 x i32*], [3 x i32*]* %632, i64 1
  %637 = getelementptr inbounds [3 x i32*], [3 x i32*]* %636, i64 0, i64 0
  store i32* @g_63, i32** %637, !tbaa !5
  %638 = getelementptr inbounds i32*, i32** %637, i64 1
  %639 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %640 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %639, i32 0, i64 4
  %641 = getelementptr inbounds [2 x i32], [2 x i32]* %640, i32 0, i64 0
  store i32* %641, i32** %638, !tbaa !5
  %642 = getelementptr inbounds i32*, i32** %638, i64 1
  store i32* @g_126, i32** %642, !tbaa !5
  %643 = getelementptr inbounds [3 x i32*], [3 x i32*]* %636, i64 1
  %644 = getelementptr inbounds [3 x i32*], [3 x i32*]* %643, i64 0, i64 0
  store i32* %l_712, i32** %644, !tbaa !5
  %645 = getelementptr inbounds i32*, i32** %644, i64 1
  store i32* @g_780, i32** %645, !tbaa !5
  %646 = getelementptr inbounds i32*, i32** %645, i64 1
  store i32* %l_629, i32** %646, !tbaa !5
  %647 = getelementptr inbounds [3 x i32*], [3 x i32*]* %643, i64 1
  %648 = getelementptr inbounds [3 x i32*], [3 x i32*]* %647, i64 0, i64 0
  store i32* @g_63, i32** %648, !tbaa !5
  %649 = getelementptr inbounds i32*, i32** %648, i64 1
  store i32* null, i32** %649, !tbaa !5
  %650 = getelementptr inbounds i32*, i32** %649, i64 1
  store i32* @g_115, i32** %650, !tbaa !5
  %651 = getelementptr inbounds [3 x i32*], [3 x i32*]* %647, i64 1
  %652 = getelementptr inbounds [3 x i32*], [3 x i32*]* %651, i64 0, i64 0
  store i32* @g_63, i32** %652, !tbaa !5
  %653 = getelementptr inbounds i32*, i32** %652, i64 1
  store i32* %l_629, i32** %653, !tbaa !5
  %654 = getelementptr inbounds i32*, i32** %653, i64 1
  store i32* null, i32** %654, !tbaa !5
  %655 = getelementptr inbounds [3 x i32*], [3 x i32*]* %651, i64 1
  %656 = getelementptr inbounds [3 x i32*], [3 x i32*]* %655, i64 0, i64 0
  store i32* null, i32** %656, !tbaa !5
  %657 = getelementptr inbounds i32*, i32** %656, i64 1
  store i32* null, i32** %657, !tbaa !5
  %658 = getelementptr inbounds i32*, i32** %657, i64 1
  %659 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 1
  %660 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %659, i32 0, i64 1
  %661 = getelementptr inbounds [2 x i32], [2 x i32]* %660, i32 0, i64 1
  store i32* %661, i32** %658, !tbaa !5
  %662 = getelementptr inbounds [3 x i32*], [3 x i32*]* %655, i64 1
  %663 = getelementptr inbounds [3 x i32*], [3 x i32*]* %662, i64 0, i64 0
  store i32* @g_63, i32** %663, !tbaa !5
  %664 = getelementptr inbounds i32*, i32** %663, i64 1
  store i32* @g_780, i32** %664, !tbaa !5
  %665 = getelementptr inbounds i32*, i32** %664, i64 1
  %666 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %667 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %666, i32 0, i64 4
  %668 = getelementptr inbounds [2 x i32], [2 x i32]* %667, i32 0, i64 1
  store i32* %668, i32** %665, !tbaa !5
  %669 = bitcast i64***** %l_802 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %669) #1
  store i64**** @g_800, i64***** %l_802, align 8, !tbaa !5
  %670 = bitcast [10 x i64***]* %l_804 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %670) #1
  %671 = bitcast i64***** %l_803 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %671) #1
  %672 = getelementptr inbounds [10 x i64***], [10 x i64***]* %l_804, i32 0, i64 9
  store i64**** %672, i64***** %l_803, align 8, !tbaa !5
  %673 = bitcast i64* %l_828 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %673) #1
  store i64 4812684640815126486, i64* %l_828, align 8, !tbaa !7
  %674 = bitcast [4 x i16**]* %l_860 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %674) #1
  %675 = bitcast i32* %l_891 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %675) #1
  store i32 8, i32* %l_891, align 4, !tbaa !1
  %676 = bitcast [9 x i8*]* %l_907 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %676) #1
  %677 = getelementptr inbounds [9 x i8*], [9 x i8*]* %l_907, i64 0, i64 0
  store i8* %l_617, i8** %677, !tbaa !5
  %678 = getelementptr inbounds i8*, i8** %677, i64 1
  store i8* %l_617, i8** %678, !tbaa !5
  %679 = getelementptr inbounds i8*, i8** %678, i64 1
  store i8* %l_617, i8** %679, !tbaa !5
  %680 = getelementptr inbounds i8*, i8** %679, i64 1
  store i8* %l_617, i8** %680, !tbaa !5
  %681 = getelementptr inbounds i8*, i8** %680, i64 1
  store i8* %l_617, i8** %681, !tbaa !5
  %682 = getelementptr inbounds i8*, i8** %681, i64 1
  store i8* %l_617, i8** %682, !tbaa !5
  %683 = getelementptr inbounds i8*, i8** %682, i64 1
  store i8* %l_617, i8** %683, !tbaa !5
  %684 = getelementptr inbounds i8*, i8** %683, i64 1
  store i8* %l_617, i8** %684, !tbaa !5
  %685 = getelementptr inbounds i8*, i8** %684, i64 1
  store i8* %l_617, i8** %685, !tbaa !5
  %686 = bitcast i64* %l_908 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %686) #1
  store i64 3848882842164886602, i64* %l_908, align 8, !tbaa !7
  %687 = bitcast [7 x [9 x i32]]* %l_913 to i8*
  call void @llvm.lifetime.start(i64 252, i8* %687) #1
  %688 = bitcast [7 x [9 x i32]]* %l_913 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %688, i8* bitcast ([7 x [9 x i32]]* @func_78.l_913 to i8*), i64 252, i32 16, i1 false)
  %689 = bitcast i32* %l_922 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %689) #1
  store i32 -1, i32* %l_922, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_923) #1
  store i8 5, i8* %l_923, align 1, !tbaa !9
  %690 = bitcast i16** %l_924 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %690) #1
  store i16* null, i16** %l_924, align 8, !tbaa !5
  %691 = bitcast i64* %l_925 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %691) #1
  store i64 -1, i64* %l_925, align 8, !tbaa !7
  %692 = bitcast i32*** %l_926 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %692) #1
  store i32** null, i32*** %l_926, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_927) #1
  store i8 0, i8* %l_927, align 1, !tbaa !9
  %693 = bitcast i32*** %l_929 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %693) #1
  store i32** @g_504, i32*** %l_929, align 8, !tbaa !5
  %694 = bitcast i32**** %l_928 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %694) #1
  store i32*** %l_929, i32**** %l_928, align 8, !tbaa !5
  %695 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %695) #1
  %696 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %696) #1
  %697 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %697) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %698

; <label>:698                                     ; preds = %705, %278
  %699 = load i32, i32* %i3, align 4, !tbaa !1
  %700 = icmp slt i32 %699, 9
  br i1 %700, label %701, label %708

; <label>:701                                     ; preds = %698
  %702 = load i32, i32* %i3, align 4, !tbaa !1
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [9 x i64], [9 x i64]* %l_608, i32 0, i64 %703
  store i64 5, i64* %704, align 8, !tbaa !7
  br label %705

; <label>:705                                     ; preds = %701
  %706 = load i32, i32* %i3, align 4, !tbaa !1
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %i3, align 4, !tbaa !1
  br label %698

; <label>:708                                     ; preds = %698
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %709

; <label>:709                                     ; preds = %716, %708
  %710 = load i32, i32* %i3, align 4, !tbaa !1
  %711 = icmp slt i32 %710, 3
  br i1 %711, label %712, label %719

; <label>:712                                     ; preds = %709
  %713 = load i32, i32* %i3, align 4, !tbaa !1
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [3 x i32], [3 x i32]* %l_737, i32 0, i64 %714
  store i32 -410667482, i32* %715, align 4, !tbaa !1
  br label %716

; <label>:716                                     ; preds = %712
  %717 = load i32, i32* %i3, align 4, !tbaa !1
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %i3, align 4, !tbaa !1
  br label %709

; <label>:719                                     ; preds = %709
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %720

; <label>:720                                     ; preds = %727, %719
  %721 = load i32, i32* %i3, align 4, !tbaa !1
  %722 = icmp slt i32 %721, 10
  br i1 %722, label %723, label %730

; <label>:723                                     ; preds = %720
  %724 = load i32, i32* %i3, align 4, !tbaa !1
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [10 x i64***], [10 x i64***]* %l_804, i32 0, i64 %725
  store i64*** getelementptr inbounds ([7 x [6 x i64**]], [7 x [6 x i64**]]* @g_801, i32 0, i64 0, i64 2), i64**** %726, align 8, !tbaa !5
  br label %727

; <label>:727                                     ; preds = %723
  %728 = load i32, i32* %i3, align 4, !tbaa !1
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %i3, align 4, !tbaa !1
  br label %720

; <label>:730                                     ; preds = %720
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %731

; <label>:731                                     ; preds = %738, %730
  %732 = load i32, i32* %i3, align 4, !tbaa !1
  %733 = icmp slt i32 %732, 4
  br i1 %733, label %734, label %741

; <label>:734                                     ; preds = %731
  %735 = load i32, i32* %i3, align 4, !tbaa !1
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [4 x i16**], [4 x i16**]* %l_860, i32 0, i64 %736
  store i16** @g_282, i16*** %737, align 8, !tbaa !5
  br label %738

; <label>:738                                     ; preds = %734
  %739 = load i32, i32* %i3, align 4, !tbaa !1
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %i3, align 4, !tbaa !1
  br label %731

; <label>:741                                     ; preds = %731
  br label %742

; <label>:742                                     ; preds = %1615, %741
  store i64 0, i64* @g_36, align 8, !tbaa !7
  br label %743

; <label>:743                                     ; preds = %748, %742
  %744 = load i64, i64* @g_36, align 8, !tbaa !7
  %745 = icmp sgt i64 %744, 24
  br i1 %745, label %746, label %753

; <label>:746                                     ; preds = %743
  %747 = load i16*, i16** %3, align 8, !tbaa !5
  store i16* %747, i16** %1
  store i32 1, i32* %7
  br label %2156
                                                  ; No predecessors!
  %749 = load i64, i64* @g_36, align 8, !tbaa !7
  %750 = trunc i64 %749 to i16
  %751 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %750, i16 zeroext 5)
  %752 = zext i16 %751 to i64
  store i64 %752, i64* @g_36, align 8, !tbaa !7
  br label %743

; <label>:753                                     ; preds = %743
  store i16 10, i16* @g_38, align 2, !tbaa !10
  br label %754

; <label>:754                                     ; preds = %1623, %753
  %755 = load i16, i16* @g_38, align 2, !tbaa !10
  %756 = sext i16 %755 to i32
  %757 = icmp eq i32 %756, -13
  br i1 %757, label %758, label %1626

; <label>:758                                     ; preds = %754
  call void @llvm.lifetime.start(i64 1, i8* %l_626) #1
  store i8 107, i8* %l_626, align 1, !tbaa !9
  %759 = bitcast i32* %l_674 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %759) #1
  store i32 -6, i32* %l_674, align 4, !tbaa !1
  %760 = bitcast [4 x [1 x i32]]* %l_689 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %760) #1
  %761 = bitcast [1 x i16*]* %l_778 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %761) #1
  %762 = bitcast i32* %l_779 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %762) #1
  store i32 124682542, i32* %l_779, align 4, !tbaa !1
  %763 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %763) #1
  %764 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %764) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %765

; <label>:765                                     ; preds = %783, %758
  %766 = load i32, i32* %i6, align 4, !tbaa !1
  %767 = icmp slt i32 %766, 4
  br i1 %767, label %768, label %786

; <label>:768                                     ; preds = %765
  store i32 0, i32* %j7, align 4, !tbaa !1
  br label %769

; <label>:769                                     ; preds = %779, %768
  %770 = load i32, i32* %j7, align 4, !tbaa !1
  %771 = icmp slt i32 %770, 1
  br i1 %771, label %772, label %782

; <label>:772                                     ; preds = %769
  %773 = load i32, i32* %j7, align 4, !tbaa !1
  %774 = sext i32 %773 to i64
  %775 = load i32, i32* %i6, align 4, !tbaa !1
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %l_689, i32 0, i64 %776
  %778 = getelementptr inbounds [1 x i32], [1 x i32]* %777, i32 0, i64 %774
  store i32 1450167870, i32* %778, align 4, !tbaa !1
  br label %779

; <label>:779                                     ; preds = %772
  %780 = load i32, i32* %j7, align 4, !tbaa !1
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %j7, align 4, !tbaa !1
  br label %769

; <label>:782                                     ; preds = %769
  br label %783

; <label>:783                                     ; preds = %782
  %784 = load i32, i32* %i6, align 4, !tbaa !1
  %785 = add nsw i32 %784, 1
  store i32 %785, i32* %i6, align 4, !tbaa !1
  br label %765

; <label>:786                                     ; preds = %765
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %787

; <label>:787                                     ; preds = %794, %786
  %788 = load i32, i32* %i6, align 4, !tbaa !1
  %789 = icmp slt i32 %788, 1
  br i1 %789, label %790, label %797

; <label>:790                                     ; preds = %787
  %791 = load i32, i32* %i6, align 4, !tbaa !1
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds [1 x i16*], [1 x i16*]* %l_778, i32 0, i64 %792
  store i16* @g_479, i16** %793, align 8, !tbaa !5
  br label %794

; <label>:794                                     ; preds = %790
  %795 = load i32, i32* %i6, align 4, !tbaa !1
  %796 = add nsw i32 %795, 1
  store i32 %796, i32* %i6, align 4, !tbaa !1
  br label %787

; <label>:797                                     ; preds = %787
  %798 = load i64***, i64**** @g_334, align 8, !tbaa !5
  %799 = load i64**, i64*** %798, align 8, !tbaa !5
  %800 = load i64*, i64** %799, align 8, !tbaa !5
  %801 = load i64, i64* %800, align 8, !tbaa !7
  %802 = icmp ne i64 %801, 0
  %803 = xor i1 %802, true
  %804 = zext i1 %803 to i32
  %805 = getelementptr inbounds [10 x i16], [10 x i16]* %l_596, i32 0, i64 5
  %806 = load i16, i16* %805, align 2, !tbaa !10
  %807 = sext i16 %806 to i32
  store i32 %807, i32* %l_603, align 4, !tbaa !1
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %1317, label %809

; <label>:809                                     ; preds = %797
  call void @llvm.lifetime.start(i64 1, i8* %l_612) #1
  store i8 18, i8* %l_612, align 1, !tbaa !9
  %810 = bitcast i32*** %l_628 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %810) #1
  store i32** @g_504, i32*** %l_628, align 8, !tbaa !5
  %811 = bitcast i32**** %l_627 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %811) #1
  store i32*** %l_628, i32**** %l_627, align 8, !tbaa !5
  %812 = bitcast i64* %l_715 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %812) #1
  store i64 0, i64* %l_715, align 8, !tbaa !7
  store i16 28, i16* @g_306, align 2, !tbaa !10
  br label %813

; <label>:813                                     ; preds = %906, %809
  %814 = load i16, i16* @g_306, align 2, !tbaa !10
  %815 = zext i16 %814 to i32
  %816 = icmp sle i32 %815, 19
  br i1 %816, label %817, label %909

; <label>:817                                     ; preds = %813
  %818 = bitcast i16* %l_611 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %818) #1
  store i16 1, i16* %l_611, align 2, !tbaa !10
  %819 = bitcast i8** %l_625 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %819) #1
  store i8* @g_406, i8** %l_625, align 8, !tbaa !5
  %820 = getelementptr inbounds [9 x i64], [9 x i64]* %l_608, i32 0, i64 8
  %821 = load i64, i64* %820, align 8, !tbaa !7
  %822 = trunc i64 %821 to i8
  %823 = load i16, i16* %l_611, align 2, !tbaa !10
  %824 = trunc i16 %823 to i8
  %825 = load i16, i16* %l_611, align 2, !tbaa !10
  %826 = sext i16 %825 to i32
  %827 = load i8, i8* %l_612, align 1, !tbaa !9
  %828 = zext i8 %827 to i32
  %829 = or i32 %826, %828
  %830 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %824, i32 %829)
  %831 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %822, i8 signext %830)
  %832 = sext i8 %831 to i32
  %833 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %832, i32* %833, align 4, !tbaa !1
  %834 = load i8, i8* %l_617, align 1, !tbaa !9
  %835 = zext i8 %834 to i32
  %836 = load i16*, i16** %3, align 8, !tbaa !5
  store i16 -10, i16* %836, align 2, !tbaa !10
  %837 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext 1, i16 signext -10)
  %838 = load i64*, i64** @g_313, align 8, !tbaa !5
  store i64 4595110156013932994, i64* %838, align 8, !tbaa !7
  %839 = load i8, i8* %l_612, align 1, !tbaa !9
  %840 = load i8*, i8** %l_625, align 8, !tbaa !5
  store i8 %839, i8* %840, align 1, !tbaa !9
  %841 = load i8, i8* %l_626, align 1, !tbaa !9
  %842 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %839, i8 signext %841)
  %843 = sext i8 %842 to i32
  %844 = load volatile i8, i8* @g_482, align 1, !tbaa !9
  %845 = zext i8 %844 to i32
  %846 = icmp sgt i32 %843, %845
  %847 = zext i1 %846 to i32
  %848 = load i32***, i32**** %l_627, align 8, !tbaa !5
  %849 = icmp eq i32*** @g_503, %848
  %850 = zext i1 %849 to i32
  %851 = sext i32 %850 to i64
  %852 = and i64 4595110156013932994, %851
  %853 = trunc i64 %852 to i16
  %854 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %853)
  %855 = zext i16 %854 to i64
  %856 = xor i64 -3731437589836470943, %855
  %857 = load i8, i8* %l_612, align 1, !tbaa !9
  %858 = zext i8 %857 to i64
  %859 = icmp ne i64 %856, %858
  %860 = zext i1 %859 to i32
  %861 = sext i32 %860 to i64
  %862 = icmp eq i64 %861, 3
  %863 = zext i1 %862 to i32
  %864 = call i32 @safe_sub_func_int32_t_s_s(i32 1241531995, i32 %863)
  %865 = icmp ne i32 %864, 0
  br i1 %865, label %867, label %866

; <label>:866                                     ; preds = %817
  br label %867

; <label>:867                                     ; preds = %866, %817
  %868 = phi i1 [ true, %817 ], [ false, %866 ]
  %869 = zext i1 %868 to i32
  %870 = icmp sle i32 %835, %869
  %871 = zext i1 %870 to i32
  %872 = sext i32 %871 to i64
  %873 = call i64 @safe_add_func_uint64_t_u_u(i64 -8, i64 %872)
  %874 = icmp ne i64 255, %873
  %875 = zext i1 %874 to i32
  %876 = load i16, i16* %l_611, align 2, !tbaa !10
  %877 = sext i16 %876 to i32
  %878 = icmp slt i32 %875, %877
  %879 = zext i1 %878 to i32
  %880 = load i8, i8* %l_617, align 1, !tbaa !9
  %881 = zext i8 %880 to i32
  %882 = call i32 @safe_sub_func_uint32_t_u_u(i32 %879, i32 %881)
  %883 = load i8, i8* %l_617, align 1, !tbaa !9
  %884 = zext i8 %883 to i32
  %885 = xor i32 %882, %884
  %886 = zext i32 %885 to i64
  %887 = getelementptr inbounds [9 x i64], [9 x i64]* %l_608, i32 0, i64 8
  %888 = load i64, i64* %887, align 8, !tbaa !7
  %889 = icmp eq i64 %886, %888
  %890 = zext i1 %889 to i32
  %891 = sext i32 %890 to i64
  %892 = icmp sge i64 %891, 1
  %893 = zext i1 %892 to i32
  %894 = getelementptr inbounds [10 x i16], [10 x i16]* %l_596, i32 0, i64 1
  %895 = load i16, i16* %894, align 2, !tbaa !10
  %896 = sext i16 %895 to i32
  %897 = xor i32 %893, %896
  %898 = load i16, i16* @g_433, align 2, !tbaa !10
  %899 = zext i16 %898 to i32
  %900 = icmp ne i32 %897, %899
  %901 = zext i1 %900 to i32
  %902 = load i32, i32* %l_629, align 4, !tbaa !1
  %903 = and i32 %902, %901
  store i32 %903, i32* %l_629, align 4, !tbaa !1
  %904 = bitcast i8** %l_625 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %904) #1
  %905 = bitcast i16* %l_611 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %905) #1
  br label %906

; <label>:906                                     ; preds = %867
  %907 = load i16, i16* @g_306, align 2, !tbaa !10
  %908 = add i16 %907, -1
  store i16 %908, i16* @g_306, align 2, !tbaa !10
  br label %813

; <label>:909                                     ; preds = %813
  store i32 -8, i32* @g_115, align 4, !tbaa !1
  br label %910

; <label>:910                                     ; preds = %991, %909
  %911 = load i32, i32* @g_115, align 4, !tbaa !1
  %912 = icmp slt i32 %911, -7
  br i1 %912, label %913, label %994

; <label>:913                                     ; preds = %910
  %914 = bitcast [3 x i16]* %l_642 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %914) #1
  %915 = bitcast i16**** %l_652 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %915) #1
  store i16*** null, i16**** %l_652, align 8, !tbaa !5
  %916 = bitcast i16***** %l_651 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %916) #1
  store i16**** %l_652, i16***** %l_651, align 8, !tbaa !5
  %917 = bitcast [2 x [6 x i16***]]* %l_654 to i8*
  call void @llvm.lifetime.start(i64 96, i8* %917) #1
  %918 = bitcast [2 x [6 x i16***]]* %l_654 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %918, i8* bitcast ([2 x [6 x i16***]]* @func_78.l_654 to i8*), i64 96, i32 16, i1 false)
  %919 = bitcast i16***** %l_653 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %919) #1
  %920 = getelementptr inbounds [2 x [6 x i16***]], [2 x [6 x i16***]]* %l_654, i32 0, i64 1
  %921 = getelementptr inbounds [6 x i16***], [6 x i16***]* %920, i32 0, i64 3
  store i16**** %921, i16***** %l_653, align 8, !tbaa !5
  %922 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %922) #1
  %923 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %923) #1
  store i32 0, i32* %i8, align 4, !tbaa !1
  br label %924

; <label>:924                                     ; preds = %931, %913
  %925 = load i32, i32* %i8, align 4, !tbaa !1
  %926 = icmp slt i32 %925, 3
  br i1 %926, label %927, label %934

; <label>:927                                     ; preds = %924
  %928 = load i32, i32* %i8, align 4, !tbaa !1
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds [3 x i16], [3 x i16]* %l_642, i32 0, i64 %929
  store i16 5809, i16* %930, align 2, !tbaa !10
  br label %931

; <label>:931                                     ; preds = %927
  %932 = load i32, i32* %i8, align 4, !tbaa !1
  %933 = add nsw i32 %932, 1
  store i32 %933, i32* %i8, align 4, !tbaa !1
  br label %924

; <label>:934                                     ; preds = %924
  %935 = load i32***, i32**** @g_632, align 8, !tbaa !5
  %936 = load volatile i32****, i32***** @g_634, align 8, !tbaa !5
  store i32*** %935, i32**** %936, align 8, !tbaa !5
  %937 = load i8, i8* %l_626, align 1, !tbaa !9
  %938 = sext i8 %937 to i16
  %939 = load i8, i8* %l_626, align 1, !tbaa !9
  %940 = sext i8 %939 to i16
  %941 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %938, i16 signext %940)
  %942 = sext i16 %941 to i32
  %943 = getelementptr inbounds [3 x i16], [3 x i16]* %l_642, i32 0, i64 2
  %944 = load i16, i16* %943, align 2, !tbaa !10
  %945 = zext i16 %944 to i32
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %947, label %971

; <label>:947                                     ; preds = %934
  %948 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext 22450, i32 12)
  %949 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %950 = load i32*, i32** %949, align 8, !tbaa !5
  %951 = load i32, i32* %950, align 4, !tbaa !1
  %952 = load i16****, i16***** %l_651, align 8, !tbaa !5
  store i16*** null, i16**** %952, align 8, !tbaa !5
  %953 = getelementptr inbounds [9 x i64], [9 x i64]* %l_608, i32 0, i64 8
  %954 = load i64, i64* %953, align 8, !tbaa !7
  %955 = load i16****, i16***** %l_653, align 8, !tbaa !5
  store i16*** @g_343, i16**** %955, align 8, !tbaa !5
  %956 = load i32***, i32**** %l_627, align 8, !tbaa !5
  %957 = load i32**, i32*** %956, align 8, !tbaa !5
  %958 = load i32*, i32** %957, align 8, !tbaa !5
  store i32 1, i32* %958, align 4, !tbaa !1
  %959 = call i32 @safe_sub_func_int32_t_s_s(i32 %951, i32 1)
  %960 = sext i32 %959 to i64
  %961 = load i64*, i64** @g_315, align 8, !tbaa !5
  %962 = load i64, i64* %961, align 8, !tbaa !7
  %963 = xor i64 %962, %960
  store i64 %963, i64* %961, align 8, !tbaa !7
  %964 = call i64 @safe_div_func_uint64_t_u_u(i64 %963, i64 5)
  %965 = trunc i64 %964 to i16
  %966 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @func_78.l_655, i32 0, i64 6), align 8, !tbaa !7
  %967 = trunc i64 %966 to i16
  %968 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %965, i16 signext %967)
  %969 = sext i16 %968 to i32
  %970 = icmp ne i32 %969, 0
  br label %971

; <label>:971                                     ; preds = %947, %934
  %972 = phi i1 [ false, %934 ], [ %970, %947 ]
  %973 = zext i1 %972 to i32
  %974 = load i8, i8* %l_612, align 1, !tbaa !9
  %975 = zext i8 %974 to i64
  %976 = icmp sle i64 %975, 245
  %977 = zext i1 %976 to i32
  %978 = call i32 @safe_sub_func_uint32_t_u_u(i32 %942, i32 -5)
  %979 = trunc i32 %978 to i16
  %980 = load i64, i64* getelementptr inbounds ([8 x i64], [8 x i64]* @func_78.l_655, i32 0, i64 1), align 8, !tbaa !7
  %981 = trunc i64 %980 to i16
  %982 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %979, i16 zeroext %981)
  %983 = zext i16 %982 to i32
  store i32 %983, i32* %l_629, align 4, !tbaa !1
  %984 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %984) #1
  %985 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %985) #1
  %986 = bitcast i16***** %l_653 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %986) #1
  %987 = bitcast [2 x [6 x i16***]]* %l_654 to i8*
  call void @llvm.lifetime.end(i64 96, i8* %987) #1
  %988 = bitcast i16***** %l_651 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %988) #1
  %989 = bitcast i16**** %l_652 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %989) #1
  %990 = bitcast [3 x i16]* %l_642 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %990) #1
  br label %991

; <label>:991                                     ; preds = %971
  %992 = load i32, i32* @g_115, align 4, !tbaa !1
  %993 = add nsw i32 %992, 1
  store i32 %993, i32* @g_115, align 4, !tbaa !1
  br label %910

; <label>:994                                     ; preds = %910
  %995 = load i32, i32* @g_115, align 4, !tbaa !1
  %996 = icmp ne i32 %995, 0
  br i1 %996, label %997, label %998

; <label>:997                                     ; preds = %994
  store i32 57, i32* %7
  br label %1312

; <label>:998                                     ; preds = %994
  %999 = load volatile i32**, i32*** @g_123, align 8, !tbaa !5
  %1000 = load i32*, i32** %999, align 8, !tbaa !5
  %1001 = load i32, i32* %1000, align 4, !tbaa !1
  %1002 = icmp ne i32 %1001, 0
  br i1 %1002, label %1003, label %1125

; <label>:1003                                    ; preds = %998
  %1004 = bitcast i64** %l_660 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1004) #1
  %1005 = getelementptr inbounds [9 x i64], [9 x i64]* %l_608, i32 0, i64 8
  store i64* %1005, i64** %l_660, align 8, !tbaa !5
  %1006 = bitcast i32* %l_672 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1006) #1
  store i32 -489871186, i32* %l_672, align 4, !tbaa !1
  %1007 = bitcast [5 x i16*]* %l_673 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1007) #1
  %1008 = bitcast [5 x i16*]* %l_673 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1008, i8* bitcast ([5 x i16*]* @func_78.l_673 to i8*), i64 40, i32 16, i1 false)
  %1009 = bitcast [6 x i32*]* %l_677 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1009) #1
  %1010 = bitcast i8** %l_685 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1010) #1
  store i8* %l_612, i8** %l_685, align 8, !tbaa !5
  %1011 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1011) #1
  store i32 0, i32* %i10, align 4, !tbaa !1
  br label %1012

; <label>:1012                                    ; preds = %1019, %1003
  %1013 = load i32, i32* %i10, align 4, !tbaa !1
  %1014 = icmp slt i32 %1013, 6
  br i1 %1014, label %1015, label %1022

; <label>:1015                                    ; preds = %1012
  %1016 = load i32, i32* %i10, align 4, !tbaa !1
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [6 x i32*], [6 x i32*]* %l_677, i32 0, i64 %1017
  store i32* %l_674, i32** %1018, align 8, !tbaa !5
  br label %1019

; <label>:1019                                    ; preds = %1015
  %1020 = load i32, i32* %i10, align 4, !tbaa !1
  %1021 = add nsw i32 %1020, 1
  store i32 %1021, i32* %i10, align 4, !tbaa !1
  br label %1012

; <label>:1022                                    ; preds = %1012
  %1023 = load i64*, i64** @g_315, align 8, !tbaa !5
  %1024 = load i64, i64* %1023, align 8, !tbaa !7
  %1025 = add i64 %1024, -1
  store i64 %1025, i64* %1023, align 8, !tbaa !7
  %1026 = load i64*, i64** %l_660, align 8, !tbaa !5
  store i64 %1025, i64* %1026, align 8, !tbaa !7
  %1027 = trunc i64 %1025 to i32
  store i32 %1027, i32* %l_661, align 4, !tbaa !1
  %1028 = sext i32 %1027 to i64
  %1029 = load i32*, i32** @g_504, align 8, !tbaa !5
  %1030 = load i32, i32* %1029, align 4, !tbaa !1
  %1031 = zext i32 %1030 to i64
  %1032 = and i64 %1031, 4294967288
  %1033 = trunc i64 %1032 to i32
  store i32 %1033, i32* %1029, align 4, !tbaa !1
  %1034 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %1035 = load i32*, i32** %1034, align 8, !tbaa !5
  %1036 = load i32, i32* %1035, align 4, !tbaa !1
  %1037 = icmp ult i32 %1033, %1036
  %1038 = zext i1 %1037 to i32
  %1039 = trunc i32 %1038 to i16
  %1040 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %1041 = load i16*, i16** %1040, align 8, !tbaa !5
  %1042 = load i16, i16* %1041, align 2, !tbaa !10
  %1043 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1039, i16 signext %1042)
  %1044 = sext i16 %1043 to i32
  %1045 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %1046 = icmp eq i16**** null, %1045
  %1047 = zext i1 %1046 to i32
  %1048 = load i32, i32* %l_672, align 4, !tbaa !1
  %1049 = trunc i32 %1048 to i16
  store i16 %1049, i16* @g_433, align 2, !tbaa !10
  %1050 = zext i16 %1049 to i32
  %1051 = load i8, i8* %l_612, align 1, !tbaa !9
  %1052 = zext i8 %1051 to i32
  store i32 %1052, i32* %l_674, align 4, !tbaa !1
  %1053 = icmp sle i32 %1050, %1052
  %1054 = zext i1 %1053 to i32
  %1055 = trunc i32 %1054 to i16
  %1056 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1055, i32 4)
  %1057 = zext i16 %1056 to i32
  %1058 = icmp sge i32 %1047, %1057
  %1059 = zext i1 %1058 to i32
  %1060 = sext i32 %1059 to i64
  %1061 = icmp sle i64 %1060, 234930176
  %1062 = zext i1 %1061 to i32
  %1063 = load i16*, i16** %3, align 8, !tbaa !5
  %1064 = load i16, i16* %1063, align 2, !tbaa !10
  %1065 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %1064, i16 signext 2)
  %1066 = sext i16 %1065 to i32
  store i32 %1066, i32* @g_301, align 4, !tbaa !1
  %1067 = load i32*, i32** @g_124, align 8, !tbaa !5
  %1068 = load i32, i32* %1067, align 4, !tbaa !1
  %1069 = call i32 @safe_div_func_int32_t_s_s(i32 %1066, i32 %1068)
  %1070 = trunc i32 %1069 to i16
  %1071 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1070, i32 13)
  %1072 = zext i16 %1071 to i32
  %1073 = and i32 %1044, %1072
  %1074 = sext i32 %1073 to i64
  %1075 = call i64 @safe_sub_func_uint64_t_u_u(i64 %1028, i64 %1074)
  %1076 = trunc i64 %1075 to i32
  store i32 %1076, i32* %l_629, align 4, !tbaa !1
  %1077 = load i8, i8* %l_617, align 1, !tbaa !9
  %1078 = zext i8 %1077 to i32
  %1079 = xor i32 %1076, %1078
  %1080 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %1079, i32* %1080, align 4, !tbaa !1
  %1081 = call i32 @safe_sub_func_uint32_t_u_u(i32 120557757, i32 -915226924)
  %1082 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %1081, i32* %1082, align 4, !tbaa !1
  %1083 = load volatile i32**, i32*** @g_123, align 8, !tbaa !5
  %1084 = load i32*, i32** %1083, align 8, !tbaa !5
  store i32* %1084, i32** %4, align 8, !tbaa !5
  %1085 = load volatile i8, i8* @g_482, align 1, !tbaa !9
  %1086 = zext i8 %1085 to i32
  store i32 %1086, i32* %l_674, align 4, !tbaa !1
  %1087 = sext i32 %1086 to i64
  %1088 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 6), align 1, !tbaa !9
  %1089 = zext i8 %1088 to i32
  %1090 = load i8*, i8** %l_685, align 8, !tbaa !5
  %1091 = load i8, i8* %1090, align 1, !tbaa !9
  %1092 = add i8 %1091, -1
  store i8 %1092, i8* %1090, align 1, !tbaa !9
  %1093 = zext i8 %1091 to i32
  %1094 = and i32 %1089, %1093
  %1095 = sext i32 %1094 to i64
  %1096 = call i64 @safe_div_func_int64_t_s_s(i64 %1087, i64 %1095)
  %1097 = icmp eq i8* %l_626, @g_406
  %1098 = zext i1 %1097 to i32
  %1099 = load i32, i32* %l_688, align 4, !tbaa !1
  %1100 = zext i32 %1099 to i64
  %1101 = load i64, i64* @g_59, align 8, !tbaa !7
  %1102 = load i32, i32* @g_115, align 4, !tbaa !1
  %1103 = sext i32 %1102 to i64
  %1104 = and i64 %1103, 1
  %1105 = icmp ugt i64 %1100, %1104
  %1106 = zext i1 %1105 to i32
  %1107 = icmp ne i32 %1098, %1106
  %1108 = zext i1 %1107 to i32
  %1109 = sext i32 %1108 to i64
  %1110 = icmp sle i64 %1096, %1109
  %1111 = zext i1 %1110 to i32
  %1112 = trunc i32 %1111 to i8
  %1113 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext %1112)
  %1114 = zext i8 %1113 to i32
  %1115 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %l_689, i32 0, i64 2
  %1116 = getelementptr inbounds [1 x i32], [1 x i32]* %1115, i32 0, i64 0
  %1117 = load i32, i32* %1116, align 4, !tbaa !1
  %1118 = and i32 %1117, %1114
  store i32 %1118, i32* %1116, align 4, !tbaa !1
  %1119 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1119) #1
  %1120 = bitcast i8** %l_685 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1120) #1
  %1121 = bitcast [6 x i32*]* %l_677 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %1121) #1
  %1122 = bitcast [5 x i16*]* %l_673 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1122) #1
  %1123 = bitcast i32* %l_672 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1123) #1
  %1124 = bitcast i64** %l_660 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1124) #1
  br label %1156

; <label>:1125                                    ; preds = %998
  %1126 = bitcast i32* %l_690 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1126) #1
  store i32 0, i32* %l_690, align 4, !tbaa !1
  %1127 = bitcast i32*** %l_692 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1127) #1
  store i32** null, i32*** %l_692, align 8, !tbaa !5
  %1128 = bitcast [8 x [9 x [3 x i32**]]]* %l_693 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %1128) #1
  %1129 = bitcast [8 x [9 x [3 x i32**]]]* %l_693 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1129, i8* bitcast ([8 x [9 x [3 x i32**]]]* @func_78.l_693 to i8*), i64 1728, i32 16, i1 false)
  %1130 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1130) #1
  %1131 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1131) #1
  %1132 = bitcast i32* %k13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1132) #1
  %1133 = load i16*, i16** @g_282, align 8, !tbaa !5
  %1134 = load i16, i16* %1133, align 2, !tbaa !10
  %1135 = sext i16 %1134 to i32
  %1136 = load i32, i32* %l_690, align 4, !tbaa !1
  %1137 = icmp ne i32 %1135, %1136
  %1138 = zext i1 %1137 to i32
  %1139 = load i64**, i64*** %l_691, align 8, !tbaa !5
  %1140 = icmp ne i64** %1139, null
  %1141 = zext i1 %1140 to i32
  %1142 = icmp ne i32 %1138, 1
  %1143 = zext i1 %1142 to i32
  %1144 = load i32*, i32** @g_124, align 8, !tbaa !5
  %1145 = load i32, i32* %1144, align 4, !tbaa !1
  %1146 = and i32 %1145, %1143
  store i32 %1146, i32* %1144, align 4, !tbaa !1
  store i32* null, i32** %l_694, align 8, !tbaa !5
  %1147 = load i32*, i32** %4, align 8, !tbaa !5
  %1148 = load i32, i32* %1147, align 4, !tbaa !1
  %1149 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %1148, i32* %1149, align 4, !tbaa !1
  %1150 = bitcast i32* %k13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1150) #1
  %1151 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1151) #1
  %1152 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1152) #1
  %1153 = bitcast [8 x [9 x [3 x i32**]]]* %l_693 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %1153) #1
  %1154 = bitcast i32*** %l_692 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1154) #1
  %1155 = bitcast i32* %l_690 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1155) #1
  br label %1156

; <label>:1156                                    ; preds = %1125, %1022
  store i8 0, i8* @g_406, align 1, !tbaa !9
  br label %1157

; <label>:1157                                    ; preds = %1306, %1156
  %1158 = load i8, i8* @g_406, align 1, !tbaa !9
  %1159 = sext i8 %1158 to i32
  %1160 = icmp sle i32 %1159, 0
  br i1 %1160, label %1161, label %1311

; <label>:1161                                    ; preds = %1157
  %1162 = bitcast i16* %l_703 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1162) #1
  store i16 -15454, i16* %l_703, align 2, !tbaa !10
  %1163 = bitcast i32** %l_704 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1163) #1
  store i32* %l_674, i32** %l_704, align 8, !tbaa !5
  %1164 = bitcast i32** %l_705 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1164) #1
  store i32* %l_661, i32** %l_705, align 8, !tbaa !5
  %1165 = bitcast i32** %l_706 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1165) #1
  store i32* null, i32** %l_706, align 8, !tbaa !5
  %1166 = bitcast i32** %l_707 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1166) #1
  store i32* null, i32** %l_707, align 8, !tbaa !5
  %1167 = bitcast i32** %l_708 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1167) #1
  store i32* @g_115, i32** %l_708, align 8, !tbaa !5
  %1168 = bitcast i32** %l_709 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1168) #1
  store i32* %l_661, i32** %l_709, align 8, !tbaa !5
  %1169 = bitcast i32** %l_710 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1169) #1
  store i32* @g_115, i32** %l_710, align 8, !tbaa !5
  %1170 = bitcast [9 x [5 x i32*]]* %l_711 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %1170) #1
  %1171 = getelementptr inbounds [9 x [5 x i32*]], [9 x [5 x i32*]]* %l_711, i64 0, i64 0
  %1172 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1171, i64 0, i64 0
  store i32* @g_115, i32** %1172, !tbaa !5
  %1173 = getelementptr inbounds i32*, i32** %1172, i64 1
  store i32* @g_115, i32** %1173, !tbaa !5
  %1174 = getelementptr inbounds i32*, i32** %1173, i64 1
  store i32* %l_661, i32** %1174, !tbaa !5
  %1175 = getelementptr inbounds i32*, i32** %1174, i64 1
  store i32* @g_115, i32** %1175, !tbaa !5
  %1176 = getelementptr inbounds i32*, i32** %1175, i64 1
  store i32* @g_115, i32** %1176, !tbaa !5
  %1177 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1171, i64 1
  %1178 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1177, i64 0, i64 0
  store i32* null, i32** %1178, !tbaa !5
  %1179 = getelementptr inbounds i32*, i32** %1178, i64 1
  store i32* null, i32** %1179, !tbaa !5
  %1180 = getelementptr inbounds i32*, i32** %1179, i64 1
  store i32* null, i32** %1180, !tbaa !5
  %1181 = getelementptr inbounds i32*, i32** %1180, i64 1
  store i32* @g_5, i32** %1181, !tbaa !5
  %1182 = getelementptr inbounds i32*, i32** %1181, i64 1
  store i32* %l_629, i32** %1182, !tbaa !5
  %1183 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1177, i64 1
  %1184 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1183, i64 0, i64 0
  store i32* @g_115, i32** %1184, !tbaa !5
  %1185 = getelementptr inbounds i32*, i32** %1184, i64 1
  store i32* %l_603, i32** %1185, !tbaa !5
  %1186 = getelementptr inbounds i32*, i32** %1185, i64 1
  store i32* %l_603, i32** %1186, !tbaa !5
  %1187 = getelementptr inbounds i32*, i32** %1186, i64 1
  store i32* @g_115, i32** %1187, !tbaa !5
  %1188 = getelementptr inbounds i32*, i32** %1187, i64 1
  store i32* %l_603, i32** %1188, !tbaa !5
  %1189 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1183, i64 1
  %1190 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1189, i64 0, i64 0
  store i32* %l_629, i32** %1190, !tbaa !5
  %1191 = getelementptr inbounds i32*, i32** %1190, i64 1
  store i32* null, i32** %1191, !tbaa !5
  %1192 = getelementptr inbounds i32*, i32** %1191, i64 1
  store i32* %l_661, i32** %1192, !tbaa !5
  %1193 = getelementptr inbounds i32*, i32** %1192, i64 1
  store i32* null, i32** %1193, !tbaa !5
  %1194 = getelementptr inbounds i32*, i32** %1193, i64 1
  store i32* %l_629, i32** %1194, !tbaa !5
  %1195 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1189, i64 1
  %1196 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1195, i64 0, i64 0
  store i32* %l_603, i32** %1196, !tbaa !5
  %1197 = getelementptr inbounds i32*, i32** %1196, i64 1
  store i32* @g_115, i32** %1197, !tbaa !5
  %1198 = getelementptr inbounds i32*, i32** %1197, i64 1
  store i32* %l_603, i32** %1198, !tbaa !5
  %1199 = getelementptr inbounds i32*, i32** %1198, i64 1
  store i32* %l_603, i32** %1199, !tbaa !5
  %1200 = getelementptr inbounds i32*, i32** %1199, i64 1
  store i32* @g_115, i32** %1200, !tbaa !5
  %1201 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1195, i64 1
  %1202 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1201, i64 0, i64 0
  store i32* %l_629, i32** %1202, !tbaa !5
  %1203 = getelementptr inbounds i32*, i32** %1202, i64 1
  store i32* @g_5, i32** %1203, !tbaa !5
  %1204 = getelementptr inbounds i32*, i32** %1203, i64 1
  store i32* null, i32** %1204, !tbaa !5
  %1205 = getelementptr inbounds i32*, i32** %1204, i64 1
  store i32* null, i32** %1205, !tbaa !5
  %1206 = getelementptr inbounds i32*, i32** %1205, i64 1
  store i32* null, i32** %1206, !tbaa !5
  %1207 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1201, i64 1
  %1208 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1207, i64 0, i64 0
  store i32* @g_115, i32** %1208, !tbaa !5
  %1209 = getelementptr inbounds i32*, i32** %1208, i64 1
  store i32* @g_115, i32** %1209, !tbaa !5
  %1210 = getelementptr inbounds i32*, i32** %1209, i64 1
  store i32* %l_661, i32** %1210, !tbaa !5
  %1211 = getelementptr inbounds i32*, i32** %1210, i64 1
  store i32* @g_115, i32** %1211, !tbaa !5
  %1212 = getelementptr inbounds i32*, i32** %1211, i64 1
  store i32* @g_115, i32** %1212, !tbaa !5
  %1213 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1207, i64 1
  %1214 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1213, i64 0, i64 0
  store i32* null, i32** %1214, !tbaa !5
  %1215 = getelementptr inbounds i32*, i32** %1214, i64 1
  store i32* null, i32** %1215, !tbaa !5
  %1216 = getelementptr inbounds i32*, i32** %1215, i64 1
  store i32* null, i32** %1216, !tbaa !5
  %1217 = getelementptr inbounds i32*, i32** %1216, i64 1
  store i32* @g_5, i32** %1217, !tbaa !5
  %1218 = getelementptr inbounds i32*, i32** %1217, i64 1
  store i32* %l_629, i32** %1218, !tbaa !5
  %1219 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1213, i64 1
  %1220 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1219, i64 0, i64 0
  store i32* @g_115, i32** %1220, !tbaa !5
  %1221 = getelementptr inbounds i32*, i32** %1220, i64 1
  store i32* %l_603, i32** %1221, !tbaa !5
  %1222 = getelementptr inbounds i32*, i32** %1221, i64 1
  store i32* %l_603, i32** %1222, !tbaa !5
  %1223 = getelementptr inbounds i32*, i32** %1222, i64 1
  store i32* @g_115, i32** %1223, !tbaa !5
  %1224 = getelementptr inbounds i32*, i32** %1223, i64 1
  store i32* %l_603, i32** %1224, !tbaa !5
  %1225 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1225) #1
  %1226 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1226) #1
  %1227 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 -1, i32* %1227, align 4, !tbaa !1
  %1228 = load i8, i8* %l_617, align 1, !tbaa !9
  %1229 = icmp ne i8 %1228, 0
  br i1 %1229, label %1230, label %1231

; <label>:1230                                    ; preds = %1161
  store i32 32, i32* %7
  br label %1293

; <label>:1231                                    ; preds = %1161
  %1232 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %1233 = load i32*, i32** %1232, align 8, !tbaa !5
  %1234 = icmp eq i32* %1233, null
  %1235 = zext i1 %1234 to i32
  %1236 = sext i32 %1235 to i64
  %1237 = load i16, i16* @g_433, align 2, !tbaa !10
  %1238 = zext i16 %1237 to i64
  %1239 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1236, i64 %1238)
  %1240 = load i64**, i64*** %l_691, align 8, !tbaa !5
  %1241 = load i64*, i64** %1240, align 8, !tbaa !5
  %1242 = icmp eq i64* null, %1241
  %1243 = zext i1 %1242 to i32
  %1244 = load i32*, i32** %4, align 8, !tbaa !5
  %1245 = icmp ne i32* null, %1244
  %1246 = zext i1 %1245 to i32
  %1247 = load i32***, i32**** @g_635, align 8, !tbaa !5
  %1248 = load volatile i32**, i32*** %1247, align 8, !tbaa !5
  %1249 = load i32*, i32** %1248, align 8, !tbaa !5
  %1250 = load i32, i32* %1249, align 4, !tbaa !1
  %1251 = load i32*, i32** @g_124, align 8, !tbaa !5
  %1252 = load i32, i32* %1251, align 4, !tbaa !1
  %1253 = icmp eq i32 %1250, %1252
  %1254 = zext i1 %1253 to i32
  %1255 = sext i32 %1254 to i64
  %1256 = icmp sge i64 %1255, 1946044859460350218
  %1257 = zext i1 %1256 to i32
  %1258 = load i32*, i32** @g_124, align 8, !tbaa !5
  %1259 = load i32, i32* %1258, align 4, !tbaa !1
  %1260 = call i32 @safe_sub_func_int32_t_s_s(i32 %1257, i32 %1259)
  %1261 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %1262 = load i16*, i16** %1261, align 8, !tbaa !5
  %1263 = load i16, i16* %1262, align 2, !tbaa !10
  %1264 = sext i16 %1263 to i32
  %1265 = or i32 %1260, %1264
  %1266 = trunc i32 %1265 to i16
  store i16 %1266, i16* %l_703, align 2, !tbaa !10
  %1267 = sext i16 %1266 to i32
  store i32 %1267, i32* %l_603, align 4, !tbaa !1
  %1268 = icmp ne i32 %1267, 0
  br i1 %1268, label %1270, label %1269

; <label>:1269                                    ; preds = %1231
  br label %1270

; <label>:1270                                    ; preds = %1269, %1231
  %1271 = phi i1 [ true, %1231 ], [ true, %1269 ]
  %1272 = zext i1 %1271 to i32
  %1273 = sext i32 %1272 to i64
  %1274 = icmp sge i64 %1273, 0
  %1275 = zext i1 %1274 to i32
  %1276 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext 82, i32 %1275)
  %1277 = sext i8 %1276 to i64
  %1278 = load i64, i64* getelementptr inbounds ([7 x [5 x [1 x i64]]], [7 x [5 x [1 x i64]]]* @g_266, i32 0, i64 6, i64 4, i64 0), align 8, !tbaa !7
  %1279 = icmp ne i64 %1277, %1278
  %1280 = zext i1 %1279 to i32
  %1281 = xor i32 %1246, %1280
  %1282 = icmp slt i32 %1243, %1281
  %1283 = zext i1 %1282 to i32
  %1284 = sext i32 %1283 to i64
  %1285 = icmp ne i64 %1284, 33398
  %1286 = zext i1 %1285 to i32
  %1287 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %l_689, i32 0, i64 1
  %1288 = getelementptr inbounds [1 x i32], [1 x i32]* %1287, i32 0, i64 0
  %1289 = load i32, i32* %1288, align 4, !tbaa !1
  %1290 = or i32 %1289, %1286
  store i32 %1290, i32* %1288, align 4, !tbaa !1
  %1291 = load i64, i64* %l_715, align 8, !tbaa !7
  %1292 = add i64 %1291, -1
  store i64 %1292, i64* %l_715, align 8, !tbaa !7
  store i32 0, i32* %7
  br label %1293

; <label>:1293                                    ; preds = %1270, %1230
  %1294 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1294) #1
  %1295 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1295) #1
  %1296 = bitcast [9 x [5 x i32*]]* %l_711 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %1296) #1
  %1297 = bitcast i32** %l_710 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1297) #1
  %1298 = bitcast i32** %l_709 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1298) #1
  %1299 = bitcast i32** %l_708 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1299) #1
  %1300 = bitcast i32** %l_707 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1300) #1
  %1301 = bitcast i32** %l_706 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1301) #1
  %1302 = bitcast i32** %l_705 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1302) #1
  %1303 = bitcast i32** %l_704 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1303) #1
  %1304 = bitcast i16* %l_703 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1304) #1
  %cleanup.dest.16 = load i32, i32* %7
  switch i32 %cleanup.dest.16, label %1312 [
    i32 0, label %1305
  ]

; <label>:1305                                    ; preds = %1293
  br label %1306

; <label>:1306                                    ; preds = %1305
  %1307 = load i8, i8* @g_406, align 1, !tbaa !9
  %1308 = sext i8 %1307 to i32
  %1309 = add nsw i32 %1308, 1
  %1310 = trunc i32 %1309 to i8
  store i8 %1310, i8* @g_406, align 1, !tbaa !9
  br label %1157

; <label>:1311                                    ; preds = %1157
  store i32 0, i32* %7
  br label %1312

; <label>:1312                                    ; preds = %997, %1311, %1293
  %1313 = bitcast i64* %l_715 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1313) #1
  %1314 = bitcast i32**** %l_627 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1314) #1
  %1315 = bitcast i32*** %l_628 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1315) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_612) #1
  %cleanup.dest.17 = load i32, i32* %7
  switch i32 %cleanup.dest.17, label %1615 [
    i32 0, label %1316
  ]

; <label>:1316                                    ; preds = %1312
  br label %1513

; <label>:1317                                    ; preds = %797
  %1318 = bitcast i32* %l_718 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1318) #1
  store i32 1355454992, i32* %l_718, align 4, !tbaa !1
  %1319 = bitcast i16****** %l_725 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1319) #1
  store i16***** @g_723, i16****** %l_725, align 8, !tbaa !5
  %1320 = bitcast i16***** %l_726 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1320) #1
  store i16**** null, i16***** %l_726, align 8, !tbaa !5
  %1321 = load i32, i32* %l_718, align 4, !tbaa !1
  %1322 = load i32, i32* %l_718, align 4, !tbaa !1
  %1323 = zext i32 %1322 to i64
  %1324 = load i32, i32* %l_661, align 4, !tbaa !1
  %1325 = sext i32 %1324 to i64
  %1326 = load i16****, i16***** @g_723, align 8, !tbaa !5
  %1327 = load i16*****, i16****** %l_725, align 8, !tbaa !5
  store i16**** %1326, i16***** %1327, align 8, !tbaa !5
  %1328 = load i16****, i16***** %l_726, align 8, !tbaa !5
  %1329 = icmp ne i16**** %1326, %1328
  %1330 = zext i1 %1329 to i32
  %1331 = load i32, i32* %l_603, align 4, !tbaa !1
  %1332 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %1333 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1332, i32 0, i64 4
  %1334 = getelementptr inbounds [2 x i32], [2 x i32]* %1333, i32 0, i64 0
  %1335 = load i32, i32* %1334, align 4, !tbaa !1
  %1336 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %l_689, i32 0, i64 2
  %1337 = getelementptr inbounds [1 x i32], [1 x i32]* %1336, i32 0, i64 0
  %1338 = load i32, i32* %1337, align 4, !tbaa !1
  %1339 = call i32 @safe_sub_func_int32_t_s_s(i32 %1335, i32 %1338)
  %1340 = icmp slt i32 %1331, %1339
  %1341 = zext i1 %1340 to i32
  %1342 = trunc i32 %1341 to i16
  %1343 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %1342)
  %1344 = load i16*, i16** @g_282, align 8, !tbaa !5
  %1345 = load i16, i16* %1344, align 2, !tbaa !10
  %1346 = sext i16 %1345 to i32
  %1347 = icmp ne i32 %1330, %1346
  %1348 = zext i1 %1347 to i32
  %1349 = sext i32 %1348 to i64
  %1350 = call i64 @safe_add_func_uint64_t_u_u(i64 %1349, i64 31818)
  %1351 = xor i64 %1325, %1350
  %1352 = or i64 %1323, %1351
  %1353 = trunc i64 %1352 to i8
  %1354 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1353, i32 1)
  %1355 = sext i8 %1354 to i32
  %1356 = icmp uge i32 %1321, %1355
  %1357 = zext i1 %1356 to i32
  %1358 = load i16, i16* @g_306, align 2, !tbaa !10
  %1359 = zext i16 %1358 to i32
  %1360 = xor i32 %1357, %1359
  %1361 = icmp ne i32 %1360, 0
  br i1 %1361, label %1362, label %1386

; <label>:1362                                    ; preds = %1317
  %1363 = bitcast i32* %l_739 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1363) #1
  store i32 -316428549, i32* %l_739, align 4, !tbaa !1
  %1364 = bitcast i64** %l_748 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1364) #1
  store i64* getelementptr inbounds ([7 x [5 x [1 x i64]]], [7 x [5 x [1 x i64]]]* @g_266, i32 0, i64 0, i64 4, i64 0), i64** %l_748, align 8, !tbaa !5
  %1365 = bitcast i32** %l_749 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1365) #1
  store i32* @g_301, i32** %l_749, align 8, !tbaa !5
  %1366 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 4), align 1, !tbaa !9
  %1367 = add i8 %1366, -1
  store i8 %1367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 4), align 1, !tbaa !9
  %1368 = zext i8 %1366 to i32
  %1369 = icmp sle i32 %1368, 1
  %1370 = zext i1 %1369 to i32
  %1371 = load i16*, i16** @g_282, align 8, !tbaa !5
  %1372 = load i16, i16* %1371, align 2, !tbaa !10
  %1373 = sext i16 %1372 to i32
  %1374 = icmp sgt i32 %1370, %1373
  %1375 = zext i1 %1374 to i32
  %1376 = icmp sgt i32 31818, %1375
  %1377 = zext i1 %1376 to i32
  %1378 = load i32*, i32** %l_749, align 8, !tbaa !5
  %1379 = load i32, i32* %1378, align 4, !tbaa !1
  %1380 = or i32 %1379, %1377
  store i32 %1380, i32* %1378, align 4, !tbaa !1
  %1381 = load i32*, i32** %4, align 8, !tbaa !5
  %1382 = load i32, i32* %1381, align 4, !tbaa !1
  store i32 %1382, i32* %l_661, align 4, !tbaa !1
  %1383 = bitcast i32** %l_749 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1383) #1
  %1384 = bitcast i64** %l_748 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1384) #1
  %1385 = bitcast i32* %l_739 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1385) #1
  br label %1508

; <label>:1386                                    ; preds = %1317
  %1387 = bitcast [1 x [10 x i8*]]* %l_752 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1387) #1
  %1388 = getelementptr inbounds [1 x [10 x i8*]], [1 x [10 x i8*]]* %l_752, i64 0, i64 0
  %1389 = getelementptr inbounds [10 x i8*], [10 x i8*]* %1388, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 1), i8** %1389, !tbaa !5
  %1390 = getelementptr inbounds i8*, i8** %1389, i64 1
  store i8* %l_617, i8** %1390, !tbaa !5
  %1391 = getelementptr inbounds i8*, i8** %1390, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 3), i8** %1391, !tbaa !5
  %1392 = getelementptr inbounds i8*, i8** %1391, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 3), i8** %1392, !tbaa !5
  %1393 = getelementptr inbounds i8*, i8** %1392, i64 1
  store i8* %l_617, i8** %1393, !tbaa !5
  %1394 = getelementptr inbounds i8*, i8** %1393, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 1), i8** %1394, !tbaa !5
  %1395 = getelementptr inbounds i8*, i8** %1394, i64 1
  store i8* %l_617, i8** %1395, !tbaa !5
  %1396 = getelementptr inbounds i8*, i8** %1395, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 3), i8** %1396, !tbaa !5
  %1397 = getelementptr inbounds i8*, i8** %1396, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 3), i8** %1397, !tbaa !5
  %1398 = getelementptr inbounds i8*, i8** %1397, i64 1
  store i8* %l_617, i8** %1398, !tbaa !5
  %1399 = bitcast i32* %l_762 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1399) #1
  store i32 -167064265, i32* %l_762, align 4, !tbaa !1
  %1400 = bitcast i32* %l_763 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1400) #1
  store i32 -167924659, i32* %l_763, align 4, !tbaa !1
  %1401 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1401) #1
  %1402 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1402) #1
  %1403 = load i32*, i32** %4, align 8, !tbaa !5
  %1404 = load i32, i32* %1403, align 4, !tbaa !1
  %1405 = icmp ne i32 %1404, 0
  br i1 %1405, label %1406, label %1407

; <label>:1406                                    ; preds = %1386
  store i32 36, i32* %7
  br label %1501

; <label>:1407                                    ; preds = %1386
  %1408 = load i8, i8* %l_626, align 1, !tbaa !9
  %1409 = sext i8 %1408 to i32
  %1410 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %1411 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1410, i32 0, i64 4
  %1412 = getelementptr inbounds [2 x i32], [2 x i32]* %1411, i32 0, i64 0
  store i32 52, i32* %1412, align 4, !tbaa !1
  %1413 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext 52, i32 0)
  %1414 = load i64*, i64** @g_315, align 8, !tbaa !5
  %1415 = load i64, i64* %1414, align 8, !tbaa !7
  %1416 = icmp ne i64 %1415, 0
  br i1 %1416, label %1417, label %1457

; <label>:1417                                    ; preds = %1407
  %1418 = load i64*, i64** @g_315, align 8, !tbaa !5
  %1419 = load i64, i64* %1418, align 8, !tbaa !7
  %1420 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %1421 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1420, i32 0, i64 4
  %1422 = getelementptr inbounds [2 x i32], [2 x i32]* %1421, i32 0, i64 0
  %1423 = load i32, i32* %1422, align 4, !tbaa !1
  %1424 = icmp ne i32 %1423, 0
  br i1 %1424, label %1431, label %1425

; <label>:1425                                    ; preds = %1417
  %1426 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %1427 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1426, i32 0, i64 4
  %1428 = getelementptr inbounds [2 x i32], [2 x i32]* %1427, i32 0, i64 0
  %1429 = load i32, i32* %1428, align 4, !tbaa !1
  %1430 = icmp ne i32 %1429, 0
  br label %1431

; <label>:1431                                    ; preds = %1425, %1417
  %1432 = phi i1 [ true, %1417 ], [ %1430, %1425 ]
  %1433 = zext i1 %1432 to i32
  %1434 = sext i32 %1433 to i64
  %1435 = icmp sge i64 %1434, 5861
  %1436 = zext i1 %1435 to i32
  %1437 = trunc i32 %1436 to i16
  %1438 = load i32, i32* %l_718, align 4, !tbaa !1
  %1439 = trunc i32 %1438 to i16
  %1440 = load i16*, i16** %3, align 8, !tbaa !5
  store i16 %1439, i16* %1440, align 2, !tbaa !10
  %1441 = load i8, i8* %l_617, align 1, !tbaa !9
  %1442 = zext i8 %1441 to i32
  %1443 = trunc i32 %1442 to i16
  %1444 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1439, i16 signext %1443)
  %1445 = sext i16 %1444 to i32
  %1446 = load i32***, i32**** @g_632, align 8, !tbaa !5
  %1447 = load volatile i32**, i32*** %1446, align 8, !tbaa !5
  %1448 = load i32*, i32** %1447, align 8, !tbaa !5
  %1449 = load i32, i32* %1448, align 4, !tbaa !1
  %1450 = or i32 %1449, %1445
  store i32 %1450, i32* %1448, align 4, !tbaa !1
  %1451 = load i8, i8* %l_626, align 1, !tbaa !9
  %1452 = sext i8 %1451 to i32
  %1453 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext 1, i32 %1452)
  %1454 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1437, i16 signext %1453)
  %1455 = sext i16 %1454 to i64
  %1456 = icmp ugt i64 %1419, %1455
  br label %1457

; <label>:1457                                    ; preds = %1431, %1407
  %1458 = phi i1 [ false, %1407 ], [ %1456, %1431 ]
  %1459 = zext i1 %1458 to i32
  %1460 = sext i32 %1459 to i64
  %1461 = icmp slt i64 %1460, 1422921365
  %1462 = zext i1 %1461 to i32
  %1463 = load i32*, i32** @g_124, align 8, !tbaa !5
  %1464 = load i32, i32* %1463, align 4, !tbaa !1
  %1465 = icmp slt i32 %1462, %1464
  %1466 = zext i1 %1465 to i32
  %1467 = trunc i32 %1466 to i16
  %1468 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %1469 = load i16***, i16**** %1468, align 8, !tbaa !5
  %1470 = load volatile i16**, i16*** %1469, align 8, !tbaa !5
  %1471 = load i16*, i16** %1470, align 8, !tbaa !5
  %1472 = load i16, i16* %1471, align 2, !tbaa !10
  %1473 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1467, i16 zeroext %1472)
  %1474 = zext i16 %1473 to i32
  %1475 = icmp ne i32 %1474, 0
  br i1 %1475, label %1476, label %1479

; <label>:1476                                    ; preds = %1457
  %1477 = load i32, i32* %l_688, align 4, !tbaa !1
  %1478 = icmp ne i32 %1477, 0
  br label %1479

; <label>:1479                                    ; preds = %1476, %1457
  %1480 = phi i1 [ false, %1457 ], [ %1478, %1476 ]
  %1481 = zext i1 %1480 to i32
  %1482 = icmp eq i32 %1409, %1481
  %1483 = zext i1 %1482 to i32
  store i32 %1483, i32* %l_603, align 4, !tbaa !1
  %1484 = load i64, i64* @g_59, align 8, !tbaa !7
  %1485 = load i32, i32* %l_762, align 4, !tbaa !1
  %1486 = sext i32 %1485 to i64
  %1487 = or i64 %1484, %1486
  %1488 = load i32, i32* %l_763, align 4, !tbaa !1
  %1489 = sext i32 %1488 to i64
  %1490 = xor i64 %1489, %1487
  %1491 = trunc i64 %1490 to i32
  store i32 %1491, i32* %l_763, align 4, !tbaa !1
  %1492 = load i32, i32* %l_661, align 4, !tbaa !1
  %1493 = icmp ne i32 %1492, 0
  br i1 %1493, label %1494, label %1495

; <label>:1494                                    ; preds = %1479
  store i32 64, i32* %7
  br label %1501

; <label>:1495                                    ; preds = %1479
  %1496 = load i32, i32* %l_674, align 4, !tbaa !1
  %1497 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %1498 = load i32*, i32** %1497, align 8, !tbaa !5
  %1499 = load i32, i32* %1498, align 4, !tbaa !1
  %1500 = load i32*, i32** @g_124, align 8, !tbaa !5
  store i32 %1499, i32* %1500, align 4, !tbaa !1
  store i32 0, i32* %7
  br label %1501

; <label>:1501                                    ; preds = %1494, %1495, %1406
  %1502 = bitcast i32* %j19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1502) #1
  %1503 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1503) #1
  %1504 = bitcast i32* %l_763 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1504) #1
  %1505 = bitcast i32* %l_762 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1505) #1
  %1506 = bitcast [1 x [10 x i8*]]* %l_752 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1506) #1
  %cleanup.dest.20 = load i32, i32* %7
  switch i32 %cleanup.dest.20, label %1509 [
    i32 0, label %1507
  ]

; <label>:1507                                    ; preds = %1501
  br label %1508

; <label>:1508                                    ; preds = %1507, %1362
  store i32 32, i32* %7
  br label %1509

; <label>:1509                                    ; preds = %1508, %1501
  %1510 = bitcast i16***** %l_726 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1510) #1
  %1511 = bitcast i16****** %l_725 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1511) #1
  %1512 = bitcast i32* %l_718 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1512) #1
  br label %1615

; <label>:1513                                    ; preds = %1316
  %1514 = load i32**, i32*** @g_503, align 8, !tbaa !5
  %1515 = load i32*, i32** %1514, align 8, !tbaa !5
  %1516 = load i32, i32* %1515, align 4, !tbaa !1
  %1517 = getelementptr inbounds [10 x i16], [10 x i16]* %l_596, i32 0, i64 1
  %1518 = load i16, i16* %1517, align 2, !tbaa !10
  %1519 = sext i16 %1518 to i64
  %1520 = icmp ne i64 %1519, 7
  %1521 = zext i1 %1520 to i32
  %1522 = xor i32 %1521, -1
  %1523 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %l_689, i32 0, i64 2
  %1524 = getelementptr inbounds [1 x i32], [1 x i32]* %1523, i32 0, i64 0
  %1525 = load i32, i32* %1524, align 4, !tbaa !1
  %1526 = load volatile i8*, i8** @g_229, align 8, !tbaa !5
  %1527 = load volatile i8, i8* %1526, align 1, !tbaa !9
  %1528 = sext i8 %1527 to i32
  %1529 = icmp eq i32 %1525, %1528
  %1530 = zext i1 %1529 to i32
  %1531 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %1532 = load i16*, i16** %1531, align 8, !tbaa !5
  %1533 = load i16, i16* %1532, align 2, !tbaa !10
  %1534 = sext i16 %1533 to i32
  %1535 = load i8, i8* %l_617, align 1, !tbaa !9
  %1536 = zext i8 %1535 to i32
  %1537 = icmp sgt i32 %1534, %1536
  %1538 = zext i1 %1537 to i32
  %1539 = trunc i32 %1538 to i8
  %1540 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1539, i8 zeroext 12)
  %1541 = zext i8 %1540 to i32
  %1542 = icmp sge i32 %1530, %1541
  %1543 = zext i1 %1542 to i32
  %1544 = trunc i32 %1543 to i16
  %1545 = getelementptr inbounds [8 x [4 x [1 x i32]]], [8 x [4 x [1 x i32]]]* %l_777, i32 0, i64 3
  %1546 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %1545, i32 0, i64 3
  %1547 = getelementptr inbounds [1 x i32], [1 x i32]* %1546, i32 0, i64 0
  %1548 = load i32, i32* %1547, align 4, !tbaa !1
  %1549 = trunc i32 %1548 to i16
  %1550 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %1544, i16 zeroext %1549)
  %1551 = trunc i16 %1550 to i8
  %1552 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1551, i8 signext 2)
  %1553 = sext i8 %1552 to i32
  %1554 = icmp uge i32 %1516, %1553
  %1555 = zext i1 %1554 to i32
  %1556 = load i32, i32* %l_674, align 4, !tbaa !1
  %1557 = icmp slt i32 %1555, %1556
  %1558 = zext i1 %1557 to i32
  %1559 = load i32, i32* %l_779, align 4, !tbaa !1
  %1560 = xor i32 %1559, %1558
  store i32 %1560, i32* %l_779, align 4, !tbaa !1
  %1561 = sext i32 %1560 to i64
  %1562 = icmp eq i64 -3, %1561
  %1563 = zext i1 %1562 to i32
  %1564 = sext i32 %1563 to i64
  %1565 = icmp sgt i64 %1564, 3835863348
  %1566 = zext i1 %1565 to i32
  %1567 = sext i32 %1566 to i64
  %1568 = xor i64 %1567, 65532
  %1569 = trunc i64 %1568 to i16
  %1570 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 1
  %1571 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1570, i32 0, i64 4
  %1572 = getelementptr inbounds [2 x i32], [2 x i32]* %1571, i32 0, i64 1
  %1573 = load i32, i32* %1572, align 4, !tbaa !1
  %1574 = trunc i32 %1573 to i16
  %1575 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %1569, i16 zeroext %1574)
  %1576 = zext i16 %1575 to i32
  %1577 = icmp ne i32 %1576, 0
  br i1 %1577, label %1578, label %1579

; <label>:1578                                    ; preds = %1513
  br label %1579

; <label>:1579                                    ; preds = %1578, %1513
  %1580 = phi i1 [ false, %1513 ], [ true, %1578 ]
  %1581 = zext i1 %1580 to i32
  %1582 = sext i32 %1581 to i64
  %1583 = or i64 -1, %1582
  %1584 = trunc i64 %1583 to i8
  %1585 = load i32, i32* @g_780, align 4, !tbaa !1
  %1586 = trunc i32 %1585 to i8
  %1587 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1584, i8 zeroext %1586)
  %1588 = zext i8 %1587 to i32
  %1589 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 1
  %1590 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1589, i32 0, i64 1
  %1591 = getelementptr inbounds [2 x i32], [2 x i32]* %1590, i32 0, i64 1
  %1592 = load i32, i32* %1591, align 4, !tbaa !1
  %1593 = icmp sgt i32 %1588, %1592
  %1594 = zext i1 %1593 to i32
  %1595 = load i8, i8* %l_617, align 1, !tbaa !9
  %1596 = zext i8 %1595 to i32
  %1597 = icmp sle i32 %1594, %1596
  %1598 = zext i1 %1597 to i32
  %1599 = trunc i32 %1598 to i8
  %1600 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %1599, i32 0)
  %1601 = sext i8 %1600 to i32
  %1602 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 2
  %1603 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1602, i32 0, i64 0
  %1604 = getelementptr inbounds [2 x i32], [2 x i32]* %1603, i32 0, i64 0
  %1605 = load i32, i32* %1604, align 4, !tbaa !1
  %1606 = icmp sle i32 %1601, %1605
  %1607 = zext i1 %1606 to i32
  %1608 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %1607, i32* %1608, align 4, !tbaa !1
  %1609 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %l_689, i32 0, i64 2
  %1610 = getelementptr inbounds [1 x i32], [1 x i32]* %1609, i32 0, i64 0
  %1611 = load i32, i32* %1610, align 4, !tbaa !1
  %1612 = icmp ne i32 %1611, 0
  br i1 %1612, label %1613, label %1614

; <label>:1613                                    ; preds = %1579
  store i32 36, i32* %7
  br label %1615

; <label>:1614                                    ; preds = %1579
  store i32 0, i32* %7
  br label %1615

; <label>:1615                                    ; preds = %1614, %1613, %1509, %1312
  %1616 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1616) #1
  %1617 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1617) #1
  %1618 = bitcast i32* %l_779 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1618) #1
  %1619 = bitcast [1 x i16*]* %l_778 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1619) #1
  %1620 = bitcast [4 x [1 x i32]]* %l_689 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1620) #1
  %1621 = bitcast i32* %l_674 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1621) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_626) #1
  %cleanup.dest.21 = load i32, i32* %7
  switch i32 %cleanup.dest.21, label %2156 [
    i32 0, label %1622
    i32 32, label %742
    i32 36, label %1626
    i32 64, label %2024
  ]

; <label>:1622                                    ; preds = %1615
  br label %1623

; <label>:1623                                    ; preds = %1622
  %1624 = load i16, i16* @g_38, align 2, !tbaa !10
  %1625 = add i16 %1624, -1
  store i16 %1625, i16* @g_38, align 2, !tbaa !10
  br label %754

; <label>:1626                                    ; preds = %1615, %754
  %1627 = load i32, i32* @g_790, align 4, !tbaa !1
  %1628 = add i32 %1627, -1
  store i32 %1628, i32* @g_790, align 4, !tbaa !1
  %1629 = load i32, i32* %l_784, align 4, !tbaa !1
  %1630 = load i32, i32* %l_795, align 4, !tbaa !1
  %1631 = load i64***, i64**** @g_800, align 8, !tbaa !5
  %1632 = load i64****, i64***** %l_802, align 8, !tbaa !5
  store i64*** %1631, i64**** %1632, align 8, !tbaa !5
  %1633 = load i64****, i64***** %l_803, align 8, !tbaa !5
  store i64*** getelementptr inbounds ([7 x [6 x i64**]], [7 x [6 x i64**]]* @g_801, i32 0, i64 2, i64 3), i64**** %1633, align 8, !tbaa !5
  %1634 = icmp eq i64*** %1631, getelementptr inbounds ([7 x [6 x i64**]], [7 x [6 x i64**]]* @g_801, i32 0, i64 2, i64 3)
  %1635 = zext i1 %1634 to i32
  %1636 = trunc i32 %1635 to i8
  %1637 = load i64**, i64*** %l_809, align 8, !tbaa !5
  %1638 = load i64**, i64*** %l_810, align 8, !tbaa !5
  %1639 = load i64***, i64**** @g_334, align 8, !tbaa !5
  store i64** %1638, i64*** %1639, align 8, !tbaa !5
  %1640 = icmp ne i64** %1637, %1638
  %1641 = zext i1 %1640 to i32
  %1642 = trunc i32 %1641 to i8
  %1643 = load i64**, i64*** %l_811, align 8, !tbaa !5
  %1644 = icmp ne i64** null, %1643
  %1645 = zext i1 %1644 to i32
  %1646 = load i16*, i16** %3, align 8, !tbaa !5
  %1647 = load i16, i16* %1646, align 2, !tbaa !10
  %1648 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext %1647)
  %1649 = zext i16 %1648 to i64
  %1650 = icmp eq i64 %1649, -1555126001924228711
  %1651 = zext i1 %1650 to i32
  %1652 = load i32*, i32** %2, align 8, !tbaa !5
  %1653 = load i32, i32* %1652, align 4, !tbaa !1
  %1654 = or i32 %1651, %1653
  %1655 = call i32 @safe_mod_func_uint32_t_u_u(i32 %1654, i32 1676455796)
  %1656 = and i32 %1645, %1655
  %1657 = trunc i32 %1656 to i8
  %1658 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1642, i8 zeroext %1657)
  %1659 = load i32***, i32**** @g_632, align 8, !tbaa !5
  %1660 = load volatile i32**, i32*** %1659, align 8, !tbaa !5
  %1661 = load i32*, i32** %1660, align 8, !tbaa !5
  %1662 = load i32, i32* %1661, align 4, !tbaa !1
  %1663 = zext i32 %1662 to i64
  %1664 = icmp sgt i64 %1663, 871763555
  %1665 = zext i1 %1664 to i32
  %1666 = load i32*, i32** %l_781, align 8, !tbaa !5
  %1667 = load i32, i32* %1666, align 4, !tbaa !1
  %1668 = sext i32 %1667 to i64
  %1669 = icmp ule i64 3, %1668
  %1670 = zext i1 %1669 to i32
  %1671 = trunc i32 %1670 to i16
  %1672 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %1673 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %1672, i32 0, i64 4
  %1674 = getelementptr inbounds [2 x i32], [2 x i32]* %1673, i32 0, i64 0
  %1675 = load i32, i32* %1674, align 4, !tbaa !1
  %1676 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1671, i32 %1675)
  %1677 = trunc i16 %1676 to i8
  %1678 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1636, i8 signext %1677)
  %1679 = sext i8 %1678 to i16
  %1680 = load i32*, i32** %l_781, align 8, !tbaa !5
  %1681 = load i32, i32* %1680, align 4, !tbaa !1
  %1682 = trunc i32 %1681 to i16
  %1683 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1679, i16 signext %1682)
  %1684 = sext i16 %1683 to i32
  %1685 = load i32, i32* %l_712, align 4, !tbaa !1
  %1686 = icmp eq i32 %1684, %1685
  %1687 = zext i1 %1686 to i32
  %1688 = and i32 %1630, %1687
  %1689 = icmp slt i32 %1629, %1688
  %1690 = zext i1 %1689 to i32
  %1691 = load i32*, i32** @g_124, align 8, !tbaa !5
  %1692 = load i32, i32* %1691, align 4, !tbaa !1
  %1693 = icmp ne i32 %1692, 0
  br i1 %1693, label %1694, label %2023

; <label>:1694                                    ; preds = %1626
  %1695 = bitcast i16* %l_817 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1695) #1
  store i16 -9, i16* %l_817, align 2, !tbaa !10
  %1696 = bitcast i64*** %l_843 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1696) #1
  store i64** @g_315, i64*** %l_843, align 8, !tbaa !5
  %1697 = bitcast i32* %l_854 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1697) #1
  store i32 9, i32* %l_854, align 4, !tbaa !1
  %1698 = bitcast i16*** %l_859 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1698) #1
  store i16** null, i16*** %l_859, align 8, !tbaa !5
  %1699 = bitcast i32* %l_881 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1699) #1
  store i32 -222487240, i32* %l_881, align 4, !tbaa !1
  %1700 = bitcast i32* %l_882 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1700) #1
  store i32 -1372765109, i32* %l_882, align 4, !tbaa !1
  %1701 = bitcast i32* %l_884 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1701) #1
  store i32 414330721, i32* %l_884, align 4, !tbaa !1
  %1702 = bitcast i32* %l_885 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1702) #1
  store i32 -719122091, i32* %l_885, align 4, !tbaa !1
  %1703 = bitcast i32* %l_886 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1703) #1
  store i32 6, i32* %l_886, align 4, !tbaa !1
  %1704 = bitcast i32* %l_887 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1704) #1
  store i32 -1484127556, i32* %l_887, align 4, !tbaa !1
  %1705 = load i16, i16* %l_817, align 2, !tbaa !10
  %1706 = sext i16 %1705 to i32
  store i32 %1706, i32* %l_661, align 4, !tbaa !1
  %1707 = load i32*, i32** %4, align 8, !tbaa !5
  %1708 = load i32, i32* %1707, align 4, !tbaa !1
  %1709 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %1708, i32* %1709, align 4, !tbaa !1
  %1710 = icmp ne i32 %1708, 0
  br i1 %1710, label %1711, label %1852

; <label>:1711                                    ; preds = %1694
  %1712 = bitcast i8***** %l_821 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1712) #1
  store i8**** @g_818, i8***** %l_821, align 8, !tbaa !5
  %1713 = bitcast i64* %l_844 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1713) #1
  store i64 2, i64* %l_844, align 8, !tbaa !7
  %1714 = bitcast i32* %l_851 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1714) #1
  store i32 -3, i32* %l_851, align 4, !tbaa !1
  %1715 = load i8***, i8**** @g_818, align 8, !tbaa !5
  %1716 = load i8****, i8***** %l_821, align 8, !tbaa !5
  store i8*** %1715, i8**** %1716, align 8, !tbaa !5
  %1717 = load volatile i8****, i8***** @g_822, align 8, !tbaa !5
  store i8*** %1715, i8**** %1717, align 8, !tbaa !5
  %1718 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %1719 = load i32*, i32** %1718, align 8, !tbaa !5
  %1720 = load i32, i32* %1719, align 4, !tbaa !1
  %1721 = icmp ne i32 %1720, 0
  br i1 %1721, label %1722, label %1842

; <label>:1722                                    ; preds = %1711
  %1723 = bitcast i16* %l_850 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1723) #1
  store i16 0, i16* %l_850, align 2, !tbaa !10
  %1724 = bitcast i32*** %l_852 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1724) #1
  store i32** null, i32*** %l_852, align 8, !tbaa !5
  %1725 = bitcast i32*** %l_853 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1725) #1
  %1726 = getelementptr inbounds [7 x [10 x [3 x i32*]]], [7 x [10 x [3 x i32*]]]* %l_782, i32 0, i64 2
  %1727 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %1726, i32 0, i64 5
  %1728 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1727, i32 0, i64 1
  store i32** %1728, i32*** %l_853, align 8, !tbaa !5
  %1729 = load i8, i8* %l_617, align 1, !tbaa !9
  %1730 = zext i8 %1729 to i16
  %1731 = load i64, i64* %l_828, align 8, !tbaa !7
  %1732 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %1733 = load i16*, i16** %1732, align 8, !tbaa !5
  %1734 = load i16, i16* %1733, align 2, !tbaa !10
  %1735 = getelementptr inbounds [8 x [4 x [1 x i32]]], [8 x [4 x [1 x i32]]]* %l_777, i32 0, i64 3
  %1736 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %1735, i32 0, i64 3
  %1737 = getelementptr inbounds [1 x i32], [1 x i32]* %1736, i32 0, i64 0
  %1738 = load i32, i32* %1737, align 4, !tbaa !1
  %1739 = trunc i32 %1738 to i8
  %1740 = getelementptr inbounds [10 x i16], [10 x i16]* %l_596, i32 0, i64 2
  %1741 = load i16, i16* %1740, align 2, !tbaa !10
  %1742 = load i64**, i64*** %l_810, align 8, !tbaa !5
  %1743 = load i64**, i64*** %l_843, align 8, !tbaa !5
  %1744 = load i64***, i64**** @g_800, align 8, !tbaa !5
  store i64** %1743, i64*** %1744, align 8, !tbaa !5
  %1745 = icmp eq i64** %1742, %1743
  %1746 = zext i1 %1745 to i32
  %1747 = trunc i32 %1746 to i8
  %1748 = load i32, i32* %l_783, align 4, !tbaa !1
  %1749 = load i16, i16* %l_817, align 2, !tbaa !10
  %1750 = sext i16 %1749 to i32
  %1751 = or i32 %1748, %1750
  %1752 = trunc i32 %1751 to i8
  %1753 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1747, i8 zeroext %1752)
  %1754 = zext i8 %1753 to i64
  %1755 = load i64, i64* @g_59, align 8, !tbaa !7
  %1756 = icmp ule i64 %1754, %1755
  %1757 = zext i1 %1756 to i32
  %1758 = load i16*, i16** %3, align 8, !tbaa !5
  %1759 = load i16, i16* %1758, align 2, !tbaa !10
  %1760 = load i16, i16* %l_817, align 2, !tbaa !10
  %1761 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %1759, i16 signext %1760)
  %1762 = load i32, i32* %l_783, align 4, !tbaa !1
  %1763 = trunc i32 %1762 to i16
  %1764 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1741, i16 zeroext %1763)
  %1765 = load volatile i32**, i32*** @g_123, align 8, !tbaa !5
  %1766 = load i32*, i32** %1765, align 8, !tbaa !5
  %1767 = load i32, i32* %1766, align 4, !tbaa !1
  %1768 = sext i32 %1767 to i64
  %1769 = or i64 %1768, 43715751
  %1770 = trunc i64 %1769 to i16
  %1771 = load i16*, i16** @g_282, align 8, !tbaa !5
  %1772 = load i16, i16* %1771, align 2, !tbaa !10
  %1773 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %1770, i16 zeroext %1772)
  %1774 = trunc i16 %1773 to i8
  %1775 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1739, i8 signext %1774)
  %1776 = load i16*, i16** %3, align 8, !tbaa !5
  %1777 = load i16, i16* %1776, align 2, !tbaa !10
  %1778 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %1777, i16 signext 0)
  %1779 = sext i16 %1778 to i32
  %1780 = load i32, i32* %l_788, align 4, !tbaa !1
  %1781 = icmp ne i32 %1779, %1780
  %1782 = zext i1 %1781 to i32
  %1783 = load i32, i32* %l_788, align 4, !tbaa !1
  %1784 = trunc i32 %1783 to i16
  %1785 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1734, i16 signext %1784)
  %1786 = sext i16 %1785 to i64
  %1787 = call i64 @safe_mod_func_int64_t_s_s(i64 %1731, i64 %1786)
  %1788 = load i64, i64* %l_844, align 8, !tbaa !7
  %1789 = icmp ne i64 %1787, %1788
  %1790 = zext i1 %1789 to i32
  %1791 = load i32, i32* %l_787, align 4, !tbaa !1
  %1792 = sext i32 %1791 to i64
  %1793 = icmp eq i64 2930623167, %1792
  br i1 %1793, label %1795, label %1794

; <label>:1794                                    ; preds = %1722
  br i1 true, label %1795, label %1799

; <label>:1795                                    ; preds = %1794, %1722
  %1796 = load i64*, i64** @g_315, align 8, !tbaa !5
  %1797 = load i64, i64* %1796, align 8, !tbaa !7
  %1798 = icmp ne i64 %1797, 0
  br label %1799

; <label>:1799                                    ; preds = %1795, %1794
  %1800 = phi i1 [ false, %1794 ], [ %1798, %1795 ]
  %1801 = zext i1 %1800 to i32
  %1802 = sext i32 %1801 to i64
  %1803 = and i64 %1802, 7
  %1804 = trunc i64 %1803 to i16
  %1805 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %1730, i16 signext %1804)
  %1806 = sext i16 %1805 to i32
  %1807 = load i32*, i32** %l_781, align 8, !tbaa !5
  %1808 = load i32, i32* %1807, align 4, !tbaa !1
  %1809 = or i32 %1808, %1806
  store i32 %1809, i32* %1807, align 4, !tbaa !1
  %1810 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %1811 = load i16*, i16** %1810, align 8, !tbaa !5
  %1812 = load i16, i16* %l_817, align 2, !tbaa !10
  %1813 = sext i16 %1812 to i32
  %1814 = call i32* @func_84(i32* %l_714, i16* %1811, i32 %1813)
  %1815 = load i16*, i16** %6, align 8, !tbaa !5
  %1816 = load i8*, i8** @g_820, align 8, !tbaa !5
  %1817 = load i8, i8* %1816, align 1, !tbaa !9
  %1818 = sext i8 %1817 to i32
  %1819 = load i32, i32* %l_712, align 4, !tbaa !1
  %1820 = and i32 %1819, %1818
  store i32 %1820, i32* %l_712, align 4, !tbaa !1
  %1821 = trunc i32 %1820 to i8
  %1822 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1821, i32 1)
  %1823 = sext i8 %1822 to i64
  %1824 = load i64**, i64*** %l_843, align 8, !tbaa !5
  %1825 = load i64*, i64** %1824, align 8, !tbaa !5
  %1826 = load i64, i64* %1825, align 8, !tbaa !7
  %1827 = or i64 %1826, %1823
  store i64 %1827, i64* %1825, align 8, !tbaa !7
  %1828 = load i16, i16* %l_850, align 2, !tbaa !10
  %1829 = sext i16 %1828 to i32
  %1830 = trunc i32 %1829 to i16
  store i16 %1830, i16* %l_850, align 2, !tbaa !10
  %1831 = sext i16 %1830 to i64
  %1832 = call i64 @safe_add_func_uint64_t_u_u(i64 %1831, i64 31818)
  %1833 = trunc i64 %1832 to i32
  store i32 %1833, i32* %l_851, align 4, !tbaa !1
  %1834 = zext i32 %1833 to i64
  %1835 = icmp ugt i64 %1827, %1834
  %1836 = zext i1 %1835 to i32
  %1837 = call i32* @func_84(i32* %1814, i16* %1815, i32 %1836)
  %1838 = load i32**, i32*** %l_853, align 8, !tbaa !5
  store i32* %1837, i32** %1838, align 8, !tbaa !5
  %1839 = bitcast i32*** %l_853 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1839) #1
  %1840 = bitcast i32*** %l_852 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1840) #1
  %1841 = bitcast i16* %l_850 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1841) #1
  br label %1846

; <label>:1842                                    ; preds = %1711
  call void @llvm.lifetime.start(i64 1, i8* %l_855) #1
  store i8 -1, i8* %l_855, align 1, !tbaa !9
  %1843 = load i8, i8* %l_855, align 1, !tbaa !9
  %1844 = add i8 %1843, -1
  store i8 %1844, i8* %l_855, align 1, !tbaa !9
  %1845 = load i16*, i16** %6, align 8, !tbaa !5
  store i16* %1845, i16** %1
  store i32 1, i32* %7
  call void @llvm.lifetime.end(i64 1, i8* %l_855) #1
  br label %1847

; <label>:1846                                    ; preds = %1799
  store i32 0, i32* %7
  br label %1847

; <label>:1847                                    ; preds = %1846, %1842
  %1848 = bitcast i32* %l_851 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1848) #1
  %1849 = bitcast i64* %l_844 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1849) #1
  %1850 = bitcast i8***** %l_821 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1850) #1
  %cleanup.dest.22 = load i32, i32* %7
  switch i32 %cleanup.dest.22, label %2011 [
    i32 0, label %1851
  ]

; <label>:1851                                    ; preds = %1847
  br label %2008

; <label>:1852                                    ; preds = %1694
  %1853 = bitcast i16*** %l_858 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1853) #1
  store i16** @g_282, i16*** %l_858, align 8, !tbaa !5
  %1854 = bitcast [8 x i16***]* %l_861 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1854) #1
  %1855 = bitcast [8 x i16***]* %l_861 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1855, i8 0, i64 64, i32 16, i1 false)
  %1856 = bitcast i32* %l_874 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1856) #1
  store i32 1, i32* %l_874, align 4, !tbaa !1
  %1857 = bitcast i32* %l_880 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1857) #1
  store i32 1020324080, i32* %l_880, align 4, !tbaa !1
  %1858 = bitcast [6 x [2 x [9 x i32]]]* %l_883 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %1858) #1
  %1859 = bitcast [6 x [2 x [9 x i32]]]* %l_883 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1859, i8* bitcast ([6 x [2 x [9 x i32]]]* @func_78.l_883 to i8*), i64 432, i32 16, i1 false)
  %1860 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1860) #1
  %1861 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1861) #1
  %1862 = bitcast i32* %k25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1862) #1
  %1863 = load i16**, i16*** %l_858, align 8, !tbaa !5
  store i16** %1863, i16*** %l_859, align 8, !tbaa !5
  %1864 = getelementptr inbounds [4 x i16**], [4 x i16**]* %l_860, i32 0, i64 0
  %1865 = load i16**, i16*** %1864, align 8, !tbaa !5
  store i16** %1865, i16*** @g_343, align 8, !tbaa !5
  %1866 = icmp eq i16** %1863, %1865
  br i1 %1866, label %1867, label %1872

; <label>:1867                                    ; preds = %1852
  %1868 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %1869 = load i16***, i16**** %1868, align 8, !tbaa !5
  %1870 = load volatile i16**, i16*** %1869, align 8, !tbaa !5
  %1871 = load i16*, i16** %1870, align 8, !tbaa !5
  store i16* %1871, i16** %1
  store i32 1, i32* %7
  br label %1998

; <label>:1872                                    ; preds = %1852
  %1873 = load i32, i32* %l_795, align 4, !tbaa !1
  %1874 = trunc i32 %1873 to i8
  %1875 = load i8*, i8** %l_736, align 8, !tbaa !5
  store i8 %1874, i8* %1875, align 1, !tbaa !9
  %1876 = sext i8 %1874 to i32
  %1877 = icmp ne i32 %1876, 0
  br i1 %1877, label %1961, label %1878

; <label>:1878                                    ; preds = %1872
  %1879 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %1880 = load i16***, i16**** %1879, align 8, !tbaa !5
  %1881 = load volatile i16**, i16*** %1880, align 8, !tbaa !5
  %1882 = load i16*, i16** %1881, align 8, !tbaa !5
  %1883 = load i16, i16* %1882, align 2, !tbaa !10
  %1884 = sext i16 %1883 to i32
  %1885 = load i16*, i16** %3, align 8, !tbaa !5
  %1886 = load i16, i16* %1885, align 2, !tbaa !10
  %1887 = getelementptr inbounds [8 x [4 x [1 x i32]]], [8 x [4 x [1 x i32]]]* %l_777, i32 0, i64 3
  %1888 = getelementptr inbounds [4 x [1 x i32]], [4 x [1 x i32]]* %1887, i32 0, i64 3
  %1889 = getelementptr inbounds [1 x i32], [1 x i32]* %1888, i32 0, i64 0
  %1890 = load i32, i32* %1889, align 4, !tbaa !1
  %1891 = load i64**, i64*** %l_810, align 8, !tbaa !5
  %1892 = load i64*, i64** %1891, align 8, !tbaa !5
  %1893 = load i64**, i64*** %l_809, align 8, !tbaa !5
  %1894 = load i64*, i64** %1893, align 8, !tbaa !5
  %1895 = icmp ne i64* %1892, %1894
  %1896 = zext i1 %1895 to i32
  %1897 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %1898 = load i16*, i16** %1897, align 8, !tbaa !5
  %1899 = load i16, i16* %1898, align 2, !tbaa !10
  %1900 = call i32 @safe_unary_minus_func_uint32_t_u(i32 1622740538)
  %1901 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %1899, i32 %1900)
  %1902 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %1903 = load i16***, i16**** %1902, align 8, !tbaa !5
  %1904 = load volatile i16**, i16*** %1903, align 8, !tbaa !5
  %1905 = load i16**, i16*** %l_873, align 8, !tbaa !5
  %1906 = icmp ne i16** %1904, %1905
  %1907 = zext i1 %1906 to i32
  %1908 = sext i32 %1907 to i64
  %1909 = or i64 1, %1908
  %1910 = getelementptr inbounds [10 x i16], [10 x i16]* %l_596, i32 0, i64 1
  %1911 = load i16, i16* %1910, align 2, !tbaa !10
  %1912 = sext i16 %1911 to i64
  %1913 = icmp uge i64 %1909, %1912
  %1914 = zext i1 %1913 to i32
  %1915 = load i32, i32* %l_854, align 4, !tbaa !1
  %1916 = icmp ne i32 %1896, %1915
  %1917 = zext i1 %1916 to i32
  %1918 = load i32, i32* %l_874, align 4, !tbaa !1
  %1919 = icmp eq i32 %1917, %1918
  %1920 = zext i1 %1919 to i32
  %1921 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %1886, i32 %1920)
  %1922 = sext i16 %1921 to i32
  %1923 = icmp ne i32 %1922, 0
  br i1 %1923, label %1928, label %1924

; <label>:1924                                    ; preds = %1878
  %1925 = load i32*, i32** %l_781, align 8, !tbaa !5
  %1926 = load i32, i32* %1925, align 4, !tbaa !1
  %1927 = icmp ne i32 %1926, 0
  br label %1928

; <label>:1928                                    ; preds = %1924, %1878
  %1929 = phi i1 [ true, %1878 ], [ %1927, %1924 ]
  %1930 = zext i1 %1929 to i32
  %1931 = sext i32 %1930 to i64
  %1932 = or i64 %1931, 1
  %1933 = load i32, i32* %l_874, align 4, !tbaa !1
  %1934 = sext i32 %1933 to i64
  %1935 = icmp ugt i64 %1932, %1934
  %1936 = zext i1 %1935 to i32
  %1937 = icmp sge i32 %1884, %1936
  br i1 %1937, label %1942, label %1938

; <label>:1938                                    ; preds = %1928
  %1939 = load i16, i16* %l_817, align 2, !tbaa !10
  %1940 = sext i16 %1939 to i32
  %1941 = icmp ne i32 %1940, 0
  br label %1942

; <label>:1942                                    ; preds = %1938, %1928
  %1943 = phi i1 [ true, %1928 ], [ %1941, %1938 ]
  %1944 = zext i1 %1943 to i32
  store i32 %1944, i32* %l_874, align 4, !tbaa !1
  %1945 = trunc i32 %1944 to i16
  %1946 = load i32, i32* %l_712, align 4, !tbaa !1
  %1947 = trunc i32 %1946 to i16
  %1948 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1945, i16 zeroext %1947)
  %1949 = load i16***, i16**** @g_669, align 8, !tbaa !5
  %1950 = load volatile i16**, i16*** %1949, align 8, !tbaa !5
  %1951 = load i16*, i16** %1950, align 8, !tbaa !5
  %1952 = load i16, i16* %1951, align 2, !tbaa !10
  %1953 = sext i16 %1952 to i32
  %1954 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1948, i32 %1953)
  %1955 = zext i16 %1954 to i64
  %1956 = xor i64 %1955, 3787459264998322355
  %1957 = trunc i64 %1956 to i8
  %1958 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %1957, i32 0)
  %1959 = zext i8 %1958 to i32
  %1960 = icmp ne i32 %1959, 0
  br label %1961

; <label>:1961                                    ; preds = %1942, %1872
  %1962 = phi i1 [ true, %1872 ], [ %1960, %1942 ]
  %1963 = zext i1 %1962 to i32
  %1964 = load i32*, i32** %2, align 8, !tbaa !5
  %1965 = load i32, i32* %1964, align 4, !tbaa !1
  %1966 = xor i32 %1965, %1963
  store i32 %1966, i32* %1964, align 4, !tbaa !1
  %1967 = load volatile i32**, i32*** @g_123, align 8, !tbaa !5
  %1968 = load i32*, i32** %1967, align 8, !tbaa !5
  %1969 = load i32, i32* %1968, align 4, !tbaa !1
  %1970 = load i32*, i32** %l_781, align 8, !tbaa !5
  %1971 = load i32, i32* %1970, align 4, !tbaa !1
  %1972 = xor i32 %1971, %1969
  store i32 %1972, i32* %1970, align 4, !tbaa !1
  br label %1973

; <label>:1973                                    ; preds = %1961
  store i64 -10, i64* %l_828, align 8, !tbaa !7
  br label %1974

; <label>:1974                                    ; preds = %1988, %1973
  %1975 = load i64, i64* %l_828, align 8, !tbaa !7
  %1976 = icmp slt i64 %1975, -22
  br i1 %1976, label %1977, label %1993

; <label>:1977                                    ; preds = %1974
  %1978 = bitcast i32*** %l_879 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1978) #1
  %1979 = getelementptr inbounds [7 x [10 x [3 x i32*]]], [7 x [10 x [3 x i32*]]]* %l_782, i32 0, i64 2
  %1980 = getelementptr inbounds [10 x [3 x i32*]], [10 x [3 x i32*]]* %1979, i32 0, i64 5
  %1981 = getelementptr inbounds [3 x i32*], [3 x i32*]* %1980, i32 0, i64 1
  store i32** %1981, i32*** %l_879, align 8, !tbaa !5
  %1982 = load i16, i16* @g_38, align 2, !tbaa !10
  %1983 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1982, i32 0)
  %1984 = zext i16 %1983 to i32
  %1985 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %1984, i32* %1985, align 4, !tbaa !1
  %1986 = load i32**, i32*** %l_879, align 8, !tbaa !5
  store i32* null, i32** %1986, align 8, !tbaa !5
  %1987 = bitcast i32*** %l_879 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1987) #1
  br label %1988

; <label>:1988                                    ; preds = %1977
  %1989 = load i64, i64* %l_828, align 8, !tbaa !7
  %1990 = trunc i64 %1989 to i32
  %1991 = call i32 @safe_sub_func_uint32_t_u_u(i32 %1990, i32 9)
  %1992 = zext i32 %1991 to i64
  store i64 %1992, i64* %l_828, align 8, !tbaa !7
  br label %1974

; <label>:1993                                    ; preds = %1974
  %1994 = load i16, i16* %l_888, align 2, !tbaa !10
  %1995 = add i16 %1994, -1
  store i16 %1995, i16* %l_888, align 2, !tbaa !10
  %1996 = load i32, i32* %l_891, align 4, !tbaa !1
  %1997 = add i32 %1996, 1
  store i32 %1997, i32* %l_891, align 4, !tbaa !1
  store i32 0, i32* %7
  br label %1998

; <label>:1998                                    ; preds = %1993, %1867
  %1999 = bitcast i32* %k25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1999) #1
  %2000 = bitcast i32* %j24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2000) #1
  %2001 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2001) #1
  %2002 = bitcast [6 x [2 x [9 x i32]]]* %l_883 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %2002) #1
  %2003 = bitcast i32* %l_880 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2003) #1
  %2004 = bitcast i32* %l_874 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2004) #1
  %2005 = bitcast [8 x i16***]* %l_861 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %2005) #1
  %2006 = bitcast i16*** %l_858 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2006) #1
  %cleanup.dest.26 = load i32, i32* %7
  switch i32 %cleanup.dest.26, label %2011 [
    i32 0, label %2007
  ]

; <label>:2007                                    ; preds = %1998
  br label %2008

; <label>:2008                                    ; preds = %2007, %1851
  %2009 = load volatile i32*, i32** @g_164, align 8, !tbaa !5
  %2010 = load i32, i32* %2009, align 4, !tbaa !1
  store i32 %2010, i32* %l_787, align 4, !tbaa !1
  store i32 0, i32* %7
  br label %2011

; <label>:2011                                    ; preds = %2008, %1998, %1847
  %2012 = bitcast i32* %l_887 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2012) #1
  %2013 = bitcast i32* %l_886 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2013) #1
  %2014 = bitcast i32* %l_885 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2014) #1
  %2015 = bitcast i32* %l_884 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2015) #1
  %2016 = bitcast i32* %l_882 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2016) #1
  %2017 = bitcast i32* %l_881 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2017) #1
  %2018 = bitcast i16*** %l_859 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2018) #1
  %2019 = bitcast i32* %l_854 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2019) #1
  %2020 = bitcast i64*** %l_843 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2020) #1
  %2021 = bitcast i16* %l_817 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2021) #1
  %cleanup.dest.27 = load i32, i32* %7
  switch i32 %cleanup.dest.27, label %2156 [
    i32 0, label %2022
  ]

; <label>:2022                                    ; preds = %2011
  br label %2155

; <label>:2023                                    ; preds = %1626
  br label %2024

; <label>:2024                                    ; preds = %2023, %1615
  %2025 = load i32*, i32** %l_781, align 8, !tbaa !5
  %2026 = load i32, i32* %2025, align 4, !tbaa !1
  %2027 = sext i32 %2026 to i64
  %2028 = and i64 %2027, 37502
  %2029 = trunc i64 %2028 to i32
  %2030 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %2029, i32* %2030, align 4, !tbaa !1
  %2031 = load i32*, i32** @g_124, align 8, !tbaa !5
  %2032 = load i32, i32* %2031, align 4, !tbaa !1
  %2033 = sext i32 %2032 to i64
  %2034 = icmp eq i64 %2033, 0
  %2035 = zext i1 %2034 to i32
  %2036 = trunc i32 %2035 to i16
  %2037 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %2036, i32 14)
  %2038 = zext i16 %2037 to i64
  %2039 = getelementptr inbounds [3 x [5 x [2 x i32]]], [3 x [5 x [2 x i32]]]* %l_713, i32 0, i64 0
  %2040 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* %2039, i32 0, i64 4
  %2041 = getelementptr inbounds [2 x i32], [2 x i32]* %2040, i32 0, i64 0
  %2042 = load i32, i32* %2041, align 4, !tbaa !1
  %2043 = load i64, i64* %l_908, align 8, !tbaa !7
  %2044 = add i64 %2043, 1
  store i64 %2044, i64* %l_908, align 8, !tbaa !7
  %2045 = getelementptr inbounds [7 x [9 x i32]], [7 x [9 x i32]]* %l_913, i32 0, i64 5
  %2046 = getelementptr inbounds [9 x i32], [9 x i32]* %2045, i32 0, i64 1
  %2047 = load i32, i32* %2046, align 4, !tbaa !1
  %2048 = sext i32 %2047 to i64
  %2049 = or i64 %2048, 2623145797
  %2050 = trunc i64 %2049 to i32
  store i32 %2050, i32* %2046, align 4, !tbaa !1
  %2051 = load i32*, i32** %l_781, align 8, !tbaa !5
  %2052 = load i32, i32* %2051, align 4, !tbaa !1
  %2053 = trunc i32 %2052 to i16
  %2054 = icmp eq i16** %6, %3
  %2055 = zext i1 %2054 to i32
  %2056 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %2053, i32 %2055)
  %2057 = trunc i16 %2056 to i8
  %2058 = load i32***, i32**** @g_632, align 8, !tbaa !5
  %2059 = load volatile i32**, i32*** %2058, align 8, !tbaa !5
  %2060 = load i32*, i32** %2059, align 8, !tbaa !5
  %2061 = load i32, i32* %2060, align 4, !tbaa !1
  %2062 = zext i32 %2061 to i64
  %2063 = xor i64 %2062, 4294967293
  %2064 = icmp ugt i64 %2063, 0
  %2065 = zext i1 %2064 to i32
  %2066 = load i32, i32* %l_789, align 4, !tbaa !1
  %2067 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext 5, i32 %2066)
  %2068 = sext i16 %2067 to i32
  %2069 = load i16***, i16**** @g_669, align 8, !tbaa !5
  %2070 = load volatile i16**, i16*** %2069, align 8, !tbaa !5
  %2071 = load i16*, i16** %2070, align 8, !tbaa !5
  %2072 = load i16, i16* %2071, align 2, !tbaa !10
  %2073 = sext i16 %2072 to i32
  %2074 = and i32 %2073, %2068
  %2075 = trunc i32 %2074 to i16
  store i16 %2075, i16* %2071, align 2, !tbaa !10
  %2076 = load i32, i32* %l_922, align 4, !tbaa !1
  %2077 = trunc i32 %2076 to i16
  %2078 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %2075, i16 signext %2077)
  %2079 = sext i16 %2078 to i64
  %2080 = icmp sgt i64 %2079, 5657742360543247705
  %2081 = zext i1 %2080 to i32
  %2082 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %2057, i32 %2081)
  %2083 = zext i8 %2082 to i64
  %2084 = or i64 %2083, 50
  %2085 = load i32*, i32** %2, align 8, !tbaa !5
  %2086 = load i32, i32* %2085, align 4, !tbaa !1
  %2087 = sext i32 %2086 to i64
  %2088 = icmp slt i64 %2084, %2087
  %2089 = zext i1 %2088 to i32
  %2090 = sext i32 %2089 to i64
  %2091 = xor i64 %2090, 117
  %2092 = trunc i64 %2091 to i32
  %2093 = load i8, i8* %l_923, align 1, !tbaa !9
  %2094 = zext i8 %2093 to i32
  %2095 = call i32 @safe_mod_func_uint32_t_u_u(i32 %2092, i32 %2094)
  %2096 = zext i32 %2095 to i64
  %2097 = icmp ne i64 %2044, %2096
  %2098 = zext i1 %2097 to i32
  %2099 = load i16*, i16** %l_924, align 8, !tbaa !5
  %2100 = icmp ne i16* %2099, null
  %2101 = zext i1 %2100 to i32
  %2102 = sext i32 %2101 to i64
  %2103 = load i64, i64* %l_925, align 8, !tbaa !7
  %2104 = icmp ule i64 %2102, %2103
  %2105 = zext i1 %2104 to i32
  %2106 = trunc i32 %2105 to i16
  %2107 = load i16, i16* @g_306, align 2, !tbaa !10
  %2108 = zext i16 %2107 to i32
  %2109 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %2106, i32 %2108)
  %2110 = sext i16 %2109 to i64
  %2111 = icmp ugt i64 %2110, 4
  %2112 = zext i1 %2111 to i32
  %2113 = load i32*, i32** @g_124, align 8, !tbaa !5
  %2114 = load i32, i32* %2113, align 4, !tbaa !1
  %2115 = icmp eq i32 %2112, %2114
  %2116 = zext i1 %2115 to i32
  %2117 = trunc i32 %2116 to i8
  %2118 = load i8***, i8**** @g_818, align 8, !tbaa !5
  %2119 = load i8**, i8*** %2118, align 8, !tbaa !5
  %2120 = load i8*, i8** %2119, align 8, !tbaa !5
  store i8 %2117, i8* %2120, align 1, !tbaa !9
  %2121 = load i32**, i32*** %l_926, align 8, !tbaa !5
  %2122 = icmp eq i32** %2121, null
  %2123 = zext i1 %2122 to i32
  %2124 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext 1, i32 0)
  %2125 = zext i16 %2124 to i32
  %2126 = load i8, i8* %l_927, align 1, !tbaa !9
  %2127 = zext i8 %2126 to i32
  %2128 = icmp sgt i32 %2125, %2127
  %2129 = zext i1 %2128 to i32
  %2130 = load i32, i32* %l_712, align 4, !tbaa !1
  %2131 = icmp sgt i32 %2129, %2130
  %2132 = zext i1 %2131 to i32
  %2133 = load i32***, i32**** %l_928, align 8, !tbaa !5
  %2134 = icmp ne i32*** %2133, null
  %2135 = zext i1 %2134 to i32
  %2136 = sext i32 %2135 to i64
  %2137 = call i64 @safe_mod_func_uint64_t_u_u(i64 %2136, i64 -1)
  %2138 = icmp ugt i64 %2038, %2137
  %2139 = zext i1 %2138 to i32
  %2140 = trunc i32 %2139 to i8
  %2141 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 1), align 1, !tbaa !9
  %2142 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %2140, i8 signext %2141)
  %2143 = sext i8 %2142 to i32
  %2144 = load i32*, i32** %4, align 8, !tbaa !5
  %2145 = load i32, i32* %2144, align 4, !tbaa !1
  %2146 = icmp slt i32 %2143, %2145
  %2147 = zext i1 %2146 to i32
  %2148 = sext i32 %2147 to i64
  %2149 = icmp sge i64 %2148, 404255432
  %2150 = zext i1 %2149 to i32
  %2151 = trunc i32 %2150 to i8
  %2152 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %2151, i8 zeroext 1)
  %2153 = zext i8 %2152 to i32
  %2154 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %2153, i32* %2154, align 4, !tbaa !1
  br label %2155

; <label>:2155                                    ; preds = %2024, %2022
  store i32 0, i32* %7
  br label %2156

; <label>:2156                                    ; preds = %2155, %2011, %1615, %746
  %2157 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2157) #1
  %2158 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2158) #1
  %2159 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2159) #1
  %2160 = bitcast i32**** %l_928 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2160) #1
  %2161 = bitcast i32*** %l_929 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2161) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_927) #1
  %2162 = bitcast i32*** %l_926 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2162) #1
  %2163 = bitcast i64* %l_925 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2163) #1
  %2164 = bitcast i16** %l_924 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2164) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_923) #1
  %2165 = bitcast i32* %l_922 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2165) #1
  %2166 = bitcast [7 x [9 x i32]]* %l_913 to i8*
  call void @llvm.lifetime.end(i64 252, i8* %2166) #1
  %2167 = bitcast i64* %l_908 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2167) #1
  %2168 = bitcast [9 x i8*]* %l_907 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2168) #1
  %2169 = bitcast i32* %l_891 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2169) #1
  %2170 = bitcast [4 x i16**]* %l_860 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %2170) #1
  %2171 = bitcast i64* %l_828 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2171) #1
  %2172 = bitcast i64***** %l_803 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2172) #1
  %2173 = bitcast [10 x i64***]* %l_804 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %2173) #1
  %2174 = bitcast i64***** %l_802 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2174) #1
  %2175 = bitcast [7 x [10 x [3 x i32*]]]* %l_782 to i8*
  call void @llvm.lifetime.end(i64 1680, i8* %2175) #1
  %2176 = bitcast i32** %l_781 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2176) #1
  %2177 = bitcast [3 x i32]* %l_737 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %2177) #1
  %2178 = bitcast i32* %l_714 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2178) #1
  %2179 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2179) #1
  %2180 = bitcast i32* %l_629 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2180) #1
  %2181 = bitcast [9 x i64]* %l_608 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2181) #1
  %cleanup.dest.28 = load i32, i32* %7
  switch i32 %cleanup.dest.28, label %2308 [
    i32 0, label %2182
    i32 57, label %2184
  ]

; <label>:2182                                    ; preds = %2156
  br label %2208

; <label>:2183                                    ; preds = %274
  br label %2184

; <label>:2184                                    ; preds = %2183, %2156
  store i32 -30, i32* @g_115, align 4, !tbaa !1
  br label %2185

; <label>:2185                                    ; preds = %2200, %2184
  %2186 = load i32, i32* @g_115, align 4, !tbaa !1
  %2187 = icmp sgt i32 %2186, -2
  br i1 %2187, label %2188, label %2203

; <label>:2188                                    ; preds = %2185
  %2189 = bitcast [3 x [1 x [9 x i32**]]]* %l_932 to i8*
  call void @llvm.lifetime.start(i64 216, i8* %2189) #1
  %2190 = bitcast [3 x [1 x [9 x i32**]]]* %l_932 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2190, i8* bitcast ([3 x [1 x [9 x i32**]]]* @func_78.l_932 to i8*), i64 216, i32 16, i1 false)
  %2191 = bitcast i32* %i29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2191) #1
  %2192 = bitcast i32* %j30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2192) #1
  %2193 = bitcast i32* %k31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2193) #1
  %2194 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_933, i32 0, i64 1
  %2195 = getelementptr inbounds [5 x i32*], [5 x i32*]* %2194, i32 0, i64 0
  store i32* null, i32** %2195, align 8, !tbaa !5
  %2196 = bitcast i32* %k31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2196) #1
  %2197 = bitcast i32* %j30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2197) #1
  %2198 = bitcast i32* %i29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2198) #1
  %2199 = bitcast [3 x [1 x [9 x i32**]]]* %l_932 to i8*
  call void @llvm.lifetime.end(i64 216, i8* %2199) #1
  br label %2200

; <label>:2200                                    ; preds = %2188
  %2201 = load i32, i32* @g_115, align 4, !tbaa !1
  %2202 = add nsw i32 %2201, 1
  store i32 %2202, i32* @g_115, align 4, !tbaa !1
  br label %2185

; <label>:2203                                    ; preds = %2185
  %2204 = load i16****, i16***** @g_668, align 8, !tbaa !5
  %2205 = load i16***, i16**** %2204, align 8, !tbaa !5
  %2206 = load volatile i16**, i16*** %2205, align 8, !tbaa !5
  %2207 = load i16*, i16** %2206, align 8, !tbaa !5
  store i16* %2207, i16** %1
  store i32 1, i32* %7
  br label %2308

; <label>:2208                                    ; preds = %2182
  store i16 0, i16* @g_433, align 2, !tbaa !10
  br label %2209

; <label>:2209                                    ; preds = %2250, %2208
  %2210 = load i16, i16* @g_433, align 2, !tbaa !10
  %2211 = zext i16 %2210 to i32
  %2212 = icmp sle i32 %2211, 6
  br i1 %2212, label %2213, label %2255

; <label>:2213                                    ; preds = %2209
  %2214 = bitcast [7 x i32]* %l_961 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %2214) #1
  %2215 = bitcast i32* %l_963 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2215) #1
  store i32 -633332343, i32* %l_963, align 4, !tbaa !1
  %2216 = bitcast i32* %l_966 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2216) #1
  store i32 432575987, i32* %l_966, align 4, !tbaa !1
  %2217 = bitcast i8*** %l_977 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2217) #1
  store i8** null, i8*** %l_977, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1004) #1
  store i8 0, i8* %l_1004, align 1, !tbaa !9
  %2218 = bitcast i64** %l_1024 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2218) #1
  store i64* null, i64** %l_1024, align 8, !tbaa !5
  %2219 = bitcast i32* %l_1037 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2219) #1
  store i32 1241228117, i32* %l_1037, align 4, !tbaa !1
  %2220 = bitcast i32* %l_1038 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2220) #1
  store i32 -1, i32* %l_1038, align 4, !tbaa !1
  %2221 = bitcast i32* %l_1039 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2221) #1
  store i32 -797465983, i32* %l_1039, align 4, !tbaa !1
  %2222 = bitcast [6 x i32]* %l_1042 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2222) #1
  %2223 = bitcast [6 x i32]* %l_1042 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2223, i8* bitcast ([6 x i32]* @func_78.l_1042 to i8*), i64 24, i32 16, i1 false)
  %2224 = bitcast i64* %l_1049 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2224) #1
  store i64 5, i64* %l_1049, align 8, !tbaa !7
  %2225 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2225) #1
  %2226 = bitcast i32* %j33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2226) #1
  store i32 0, i32* %i32, align 4, !tbaa !1
  br label %2227

; <label>:2227                                    ; preds = %2234, %2213
  %2228 = load i32, i32* %i32, align 4, !tbaa !1
  %2229 = icmp slt i32 %2228, 7
  br i1 %2229, label %2230, label %2237

; <label>:2230                                    ; preds = %2227
  %2231 = load i32, i32* %i32, align 4, !tbaa !1
  %2232 = sext i32 %2231 to i64
  %2233 = getelementptr inbounds [7 x i32], [7 x i32]* %l_961, i32 0, i64 %2232
  store i32 -4, i32* %2233, align 4, !tbaa !1
  br label %2234

; <label>:2234                                    ; preds = %2230
  %2235 = load i32, i32* %i32, align 4, !tbaa !1
  %2236 = add nsw i32 %2235, 1
  store i32 %2236, i32* %i32, align 4, !tbaa !1
  br label %2227

; <label>:2237                                    ; preds = %2227
  %2238 = bitcast i32* %j33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2238) #1
  %2239 = bitcast i32* %i32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2239) #1
  %2240 = bitcast i64* %l_1049 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2240) #1
  %2241 = bitcast [6 x i32]* %l_1042 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %2241) #1
  %2242 = bitcast i32* %l_1039 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2242) #1
  %2243 = bitcast i32* %l_1038 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2243) #1
  %2244 = bitcast i32* %l_1037 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2244) #1
  %2245 = bitcast i64** %l_1024 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2245) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1004) #1
  %2246 = bitcast i8*** %l_977 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2246) #1
  %2247 = bitcast i32* %l_966 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2247) #1
  %2248 = bitcast i32* %l_963 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2248) #1
  %2249 = bitcast [7 x i32]* %l_961 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %2249) #1
  br label %2250

; <label>:2250                                    ; preds = %2237
  %2251 = load i16, i16* @g_433, align 2, !tbaa !10
  %2252 = zext i16 %2251 to i32
  %2253 = add nsw i32 %2252, 1
  %2254 = trunc i32 %2253 to i16
  store i16 %2254, i16* @g_433, align 2, !tbaa !10
  br label %2209

; <label>:2255                                    ; preds = %2209
  %2256 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext 844, i32 12)
  %2257 = sext i16 %2256 to i32
  %2258 = load volatile i32****, i32***** @g_634, align 8, !tbaa !5
  %2259 = load i32***, i32**** %2258, align 8, !tbaa !5
  %2260 = load volatile i32**, i32*** %2259, align 8, !tbaa !5
  %2261 = load i32*, i32** %2260, align 8, !tbaa !5
  %2262 = load i32, i32* %2261, align 4, !tbaa !1
  %2263 = load i32*, i32** %2, align 8, !tbaa !5
  %2264 = load i32, i32* %2263, align 4, !tbaa !1
  %2265 = load i8, i8* @g_406, align 1, !tbaa !9
  %2266 = load i8, i8* %l_1063, align 1, !tbaa !9
  %2267 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %2265, i8 zeroext %2266)
  %2268 = zext i8 %2267 to i32
  %2269 = call i32 @safe_add_func_int32_t_s_s(i32 %2264, i32 %2268)
  %2270 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 4), align 1, !tbaa !9
  %2271 = zext i8 %2270 to i32
  %2272 = xor i32 %2269, %2271
  %2273 = load i8**, i8*** @g_1064, align 8, !tbaa !5
  store i8** %2273, i8*** %l_1065, align 8, !tbaa !5
  %2274 = load i8***, i8**** @g_818, align 8, !tbaa !5
  store i8** %l_736, i8*** %2274, align 8, !tbaa !5
  %2275 = icmp ne i8** %2273, %l_736
  br i1 %2275, label %2283, label %2276

; <label>:2276                                    ; preds = %2255
  %2277 = load i32, i32* @g_5, align 4, !tbaa !1
  %2278 = trunc i32 %2277 to i8
  %2279 = load i32, i32* @g_546, align 4, !tbaa !1
  %2280 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %2278, i32 %2279)
  %2281 = zext i8 %2280 to i32
  %2282 = icmp ne i32 %2281, 0
  br label %2283

; <label>:2283                                    ; preds = %2276, %2255
  %2284 = phi i1 [ true, %2255 ], [ %2282, %2276 ]
  %2285 = zext i1 %2284 to i32
  %2286 = or i32 %2272, %2285
  %2287 = load i16***, i16**** @g_669, align 8, !tbaa !5
  %2288 = load volatile i16**, i16*** %2287, align 8, !tbaa !5
  %2289 = load i16*, i16** %2288, align 8, !tbaa !5
  %2290 = load i16, i16* %2289, align 2, !tbaa !10
  %2291 = sext i16 %2290 to i32
  %2292 = icmp sge i32 %2286, %2291
  %2293 = zext i1 %2292 to i32
  %2294 = call i32 @safe_sub_func_uint32_t_u_u(i32 %2262, i32 %2293)
  %2295 = icmp uge i32 %2257, %2294
  br i1 %2295, label %2301, label %2296

; <label>:2296                                    ; preds = %2283
  %2297 = load i16*, i16** %3, align 8, !tbaa !5
  %2298 = load i16, i16* %2297, align 2, !tbaa !10
  %2299 = sext i16 %2298 to i32
  %2300 = icmp ne i32 %2299, 0
  br label %2301

; <label>:2301                                    ; preds = %2296, %2283
  %2302 = phi i1 [ true, %2283 ], [ %2300, %2296 ]
  %2303 = zext i1 %2302 to i32
  %2304 = load i32*, i32** %2, align 8, !tbaa !5
  store i32 %2303, i32* %2304, align 4, !tbaa !1
  %2305 = call i32 @safe_div_func_int32_t_s_s(i32 %2303, i32 31818)
  %2306 = sext i32 %2305 to i64
  %2307 = getelementptr inbounds [5 x i64], [5 x i64]* %l_1070, i32 0, i64 4
  store i64 %2306, i64* %2307, align 8, !tbaa !7
  store i32 0, i32* %7
  br label %2308

; <label>:2308                                    ; preds = %2301, %2203, %2156
  %2309 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2309) #1
  %2310 = bitcast i8*** %l_1065 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2310) #1
  %2311 = bitcast i8** %l_1066 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2311) #1
  %2312 = bitcast [1 x i32]* %l_1046 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2312) #1
  %2313 = bitcast i16* %l_1015 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2313) #1
  %2314 = bitcast [9 x i32*]* %l_1014 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2314) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_965) #1
  %2315 = bitcast [3 x i16*]* %l_935 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %2315) #1
  %2316 = bitcast i16*** %l_873 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2316) #1
  %2317 = bitcast i64*** %l_811 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2317) #1
  %2318 = bitcast i64** %l_812 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2318) #1
  %2319 = bitcast i32* %l_789 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2319) #1
  %2320 = bitcast i32* %l_788 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2320) #1
  %2321 = bitcast i32* %l_787 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2321) #1
  %2322 = bitcast i32* %l_786 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2322) #1
  %2323 = bitcast i32* %l_784 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2323) #1
  %2324 = bitcast i32* %l_783 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2324) #1
  %2325 = bitcast i8** %l_736 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2325) #1
  %2326 = bitcast i64*** %l_691 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2326) #1
  %2327 = bitcast i32* %l_688 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2327) #1
  %2328 = bitcast i32* %l_661 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2328) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_617) #1
  %cleanup.dest.34 = load i32, i32* %7
  switch i32 %cleanup.dest.34, label %2373 [
    i32 0, label %2329
  ]

; <label>:2329                                    ; preds = %2308
  br label %2330

; <label>:2330                                    ; preds = %2329, %203
  %2331 = load volatile i8*, i8** @g_229, align 8, !tbaa !5
  %2332 = load volatile i8, i8* %2331, align 1, !tbaa !9
  %2333 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %2334 = load i16*, i16** %2333, align 8, !tbaa !5
  %2335 = load volatile i32****, i32***** @g_634, align 8, !tbaa !5
  %2336 = load i32***, i32**** %2335, align 8, !tbaa !5
  %2337 = load volatile i32**, i32*** %2336, align 8, !tbaa !5
  %2338 = load i32*, i32** %2337, align 8, !tbaa !5
  %2339 = load i32, i32* %2338, align 4, !tbaa !1
  %2340 = call i32* @func_84(i32* %l_795, i16* %2334, i32 %2339)
  store i32* %2340, i32** %4, align 8, !tbaa !5
  %2341 = load i64, i64* getelementptr inbounds ([7 x [5 x [1 x i64]]], [7 x [5 x [1 x i64]]]* @g_266, i32 0, i64 0, i64 4, i64 0), align 8, !tbaa !7
  %2342 = load i16*****, i16****** %l_976, align 8, !tbaa !5
  %2343 = load i16****, i16***** %2342, align 8, !tbaa !5
  %2344 = load i16***, i16**** %2343, align 8, !tbaa !5
  %2345 = load i16****, i16***** @g_723, align 8, !tbaa !5
  %2346 = load i16***, i16**** %2345, align 8, !tbaa !5
  store i16*** %2346, i16**** %l_1072, align 8, !tbaa !5
  %2347 = load i16*****, i16****** %l_976, align 8, !tbaa !5
  %2348 = load i16****, i16***** %2347, align 8, !tbaa !5
  %2349 = load i16***, i16**** %2348, align 8, !tbaa !5
  %2350 = icmp eq i16*** %2346, %2349
  %2351 = zext i1 %2350 to i32
  store i16*** null, i16**** @g_1073, align 8, !tbaa !5
  %2352 = icmp ne i16*** %2344, null
  %2353 = zext i1 %2352 to i32
  %2354 = sext i32 %2353 to i64
  %2355 = icmp eq i16* %l_888, @g_306
  %2356 = zext i1 %2355 to i32
  %2357 = sext i32 %2356 to i64
  %2358 = call i64 @safe_unary_minus_func_int64_t_s(i64 %2357)
  %2359 = xor i64 %2354, %2358
  %2360 = icmp ne i64 %2359, 0
  br i1 %2360, label %2362, label %2361

; <label>:2361                                    ; preds = %2330
  br label %2362

; <label>:2362                                    ; preds = %2361, %2330
  %2363 = phi i1 [ true, %2330 ], [ true, %2361 ]
  %2364 = zext i1 %2363 to i32
  %2365 = sext i32 %2364 to i64
  %2366 = icmp uge i64 %2365, 7
  %2367 = zext i1 %2366 to i32
  %2368 = sext i32 %2367 to i64
  %2369 = and i64 %2341, %2368
  %2370 = load i32*, i32** %5, align 8, !tbaa !5
  store i32* %2370, i32** %4, align 8, !tbaa !5
  %2371 = load i16**, i16*** @g_343, align 8, !tbaa !5
  %2372 = load i16*, i16** %2371, align 8, !tbaa !5
  store i16* %2372, i16** %1
  store i32 1, i32* %7
  br label %2373

; <label>:2373                                    ; preds = %2362, %2308, %200
  %2374 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2374) #1
  %2375 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2375) #1
  %2376 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2376) #1
  %2377 = bitcast i16**** %l_1072 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2377) #1
  %2378 = bitcast [7 x [7 x i32**]]* %l_1071 to i8*
  call void @llvm.lifetime.end(i64 392, i8* %2378) #1
  %2379 = bitcast [5 x i64]* %l_1070 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %2379) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1063) #1
  %2380 = bitcast i16* %l_1025 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2380) #1
  %2381 = bitcast i32**** %l_987 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2381) #1
  %2382 = bitcast [10 x [4 x i32**]]* %l_988 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %2382) #1
  %2383 = bitcast i16****** %l_976 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2383) #1
  %2384 = bitcast [4 x [5 x i32*]]* %l_933 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %2384) #1
  %2385 = bitcast i16* %l_888 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2385) #1
  %2386 = bitcast i64*** %l_810 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2386) #1
  %2387 = bitcast i64*** %l_809 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2387) #1
  %2388 = bitcast i32* %l_795 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2388) #1
  %2389 = bitcast [9 x i8]* %l_785 to i8*
  call void @llvm.lifetime.end(i64 9, i8* %2389) #1
  %2390 = bitcast [8 x [4 x [1 x i32]]]* %l_777 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %2390) #1
  %2391 = bitcast [3 x [5 x [2 x i32]]]* %l_713 to i8*
  call void @llvm.lifetime.end(i64 120, i8* %2391) #1
  %2392 = bitcast i32* %l_712 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2392) #1
  %2393 = bitcast i32* %l_603 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2393) #1
  %2394 = bitcast [10 x i16]* %l_596 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %2394) #1
  %2395 = load i16*, i16** %1
  ret i16* %2395
}

; Function Attrs: nounwind uwtable
define internal i32* @func_84(i32* %p_85, i16* %p_86, i32 %p_87) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %l_111 = alloca i64*, align 8
  %l_110 = alloca i64**, align 8
  %l_112 = alloca i64***, align 8
  %l_113 = alloca [8 x [8 x [1 x i8]]], align 16
  %l_212 = alloca i32, align 4
  %l_236 = alloca i32, align 4
  %l_303 = alloca i32, align 4
  %l_304 = alloca i32, align 4
  %l_367 = alloca i32, align 4
  %l_369 = alloca i16, align 2
  %l_552 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_114 = alloca i32*, align 8
  %l_152 = alloca i64, align 8
  %l_171 = alloca [9 x [3 x [8 x i32]]], align 16
  %l_226 = alloca [7 x [5 x [4 x i64**]]], align 16
  %l_225 = alloca i64***, align 8
  %l_224 = alloca [7 x [1 x [7 x i64****]]], align 16
  %l_223 = alloca i64*****, align 8
  %l_267 = alloca i32, align 4
  %l_340 = alloca i64****, align 8
  %l_358 = alloca i64*, align 8
  %l_432 = alloca i64, align 8
  %l_481 = alloca [1 x i32*], align 8
  %l_500 = alloca i32*, align 8
  %l_499 = alloca i32**, align 8
  %l_498 = alloca i32***, align 8
  %l_548 = alloca i32, align 4
  %l_589 = alloca i32**, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  store i32* %p_85, i32** %1, align 8, !tbaa !5
  store i16* %p_86, i16** %2, align 8, !tbaa !5
  store i32 %p_87, i32* %3, align 4, !tbaa !1
  %4 = bitcast i64** %l_111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64* @g_59, i64** %l_111, align 8, !tbaa !5
  %5 = bitcast i64*** %l_110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64** %l_111, i64*** %l_110, align 8, !tbaa !5
  %6 = bitcast i64**** %l_112 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64*** %l_110, i64**** %l_112, align 8, !tbaa !5
  %7 = bitcast [8 x [8 x [1 x i8]]]* %l_113 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast [8 x [8 x [1 x i8]]]* %l_113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ([8 x [8 x [1 x i8]]], [8 x [8 x [1 x i8]]]* @func_84.l_113, i32 0, i32 0, i32 0, i32 0), i64 64, i32 16, i1 false)
  %9 = bitcast i32* %l_212 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -1476137340, i32* %l_212, align 4, !tbaa !1
  %10 = bitcast i32* %l_236 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 2074190253, i32* %l_236, align 4, !tbaa !1
  %11 = bitcast i32* %l_303 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1, i32* %l_303, align 4, !tbaa !1
  %12 = bitcast i32* %l_304 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %l_304, align 4, !tbaa !1
  %13 = bitcast i32* %l_367 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 1660711526, i32* %l_367, align 4, !tbaa !1
  %14 = bitcast i16* %l_369 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %14) #1
  store i16 -15769, i16* %l_369, align 2, !tbaa !10
  %15 = bitcast i8** %l_552 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @g_167, i32 0, i64 1), i8** %l_552, align 8, !tbaa !5
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i64**, i64*** %l_110, align 8, !tbaa !5
  %20 = load i64***, i64**** %l_112, align 8, !tbaa !5
  store i64** %19, i64*** %20, align 8, !tbaa !5
  store i32 0, i32* %3, align 4, !tbaa !1
  br label %21

; <label>:21                                      ; preds = %328, %0
  %22 = load i32, i32* %3, align 4, !tbaa !1
  %23 = icmp ule i32 %22, 0
  br i1 %23, label %24, label %331

; <label>:24                                      ; preds = %21
  %25 = bitcast i32** %l_114 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i32* @g_115, i32** %l_114, align 8, !tbaa !5
  %26 = bitcast i64* %l_152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i64 -1608725798782337795, i64* %l_152, align 8, !tbaa !7
  %27 = bitcast [9 x [3 x [8 x i32]]]* %l_171 to i8*
  call void @llvm.lifetime.start(i64 864, i8* %27) #1
  %28 = bitcast [9 x [3 x [8 x i32]]]* %l_171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* bitcast ([9 x [3 x [8 x i32]]]* @func_84.l_171 to i8*), i64 864, i32 16, i1 false)
  %29 = bitcast [7 x [5 x [4 x i64**]]]* %l_226 to i8*
  call void @llvm.lifetime.start(i64 1120, i8* %29) #1
  %30 = getelementptr inbounds [7 x [5 x [4 x i64**]]], [7 x [5 x [4 x i64**]]]* %l_226, i64 0, i64 0
  %31 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %30, i64 0, i64 0
  %32 = getelementptr inbounds [4 x i64**], [4 x i64**]* %31, i64 0, i64 0
  store i64** %l_111, i64*** %32, !tbaa !5
  %33 = getelementptr inbounds i64**, i64*** %32, i64 1
  store i64** %l_111, i64*** %33, !tbaa !5
  %34 = getelementptr inbounds i64**, i64*** %33, i64 1
  store i64** %l_111, i64*** %34, !tbaa !5
  %35 = getelementptr inbounds i64**, i64*** %34, i64 1
  store i64** %l_111, i64*** %35, !tbaa !5
  %36 = getelementptr inbounds [4 x i64**], [4 x i64**]* %31, i64 1
  %37 = getelementptr inbounds [4 x i64**], [4 x i64**]* %36, i64 0, i64 0
  store i64** %l_111, i64*** %37, !tbaa !5
  %38 = getelementptr inbounds i64**, i64*** %37, i64 1
  store i64** %l_111, i64*** %38, !tbaa !5
  %39 = getelementptr inbounds i64**, i64*** %38, i64 1
  store i64** %l_111, i64*** %39, !tbaa !5
  %40 = getelementptr inbounds i64**, i64*** %39, i64 1
  store i64** %l_111, i64*** %40, !tbaa !5
  %41 = getelementptr inbounds [4 x i64**], [4 x i64**]* %36, i64 1
  %42 = getelementptr inbounds [4 x i64**], [4 x i64**]* %41, i64 0, i64 0
  store i64** null, i64*** %42, !tbaa !5
  %43 = getelementptr inbounds i64**, i64*** %42, i64 1
  store i64** %l_111, i64*** %43, !tbaa !5
  %44 = getelementptr inbounds i64**, i64*** %43, i64 1
  store i64** %l_111, i64*** %44, !tbaa !5
  %45 = getelementptr inbounds i64**, i64*** %44, i64 1
  store i64** %l_111, i64*** %45, !tbaa !5
  %46 = getelementptr inbounds [4 x i64**], [4 x i64**]* %41, i64 1
  %47 = getelementptr inbounds [4 x i64**], [4 x i64**]* %46, i64 0, i64 0
  store i64** %l_111, i64*** %47, !tbaa !5
  %48 = getelementptr inbounds i64**, i64*** %47, i64 1
  store i64** %l_111, i64*** %48, !tbaa !5
  %49 = getelementptr inbounds i64**, i64*** %48, i64 1
  store i64** %l_111, i64*** %49, !tbaa !5
  %50 = getelementptr inbounds i64**, i64*** %49, i64 1
  store i64** %l_111, i64*** %50, !tbaa !5
  %51 = getelementptr inbounds [4 x i64**], [4 x i64**]* %46, i64 1
  %52 = getelementptr inbounds [4 x i64**], [4 x i64**]* %51, i64 0, i64 0
  store i64** %l_111, i64*** %52, !tbaa !5
  %53 = getelementptr inbounds i64**, i64*** %52, i64 1
  store i64** %l_111, i64*** %53, !tbaa !5
  %54 = getelementptr inbounds i64**, i64*** %53, i64 1
  store i64** %l_111, i64*** %54, !tbaa !5
  %55 = getelementptr inbounds i64**, i64*** %54, i64 1
  store i64** %l_111, i64*** %55, !tbaa !5
  %56 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %30, i64 1
  %57 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %56, i64 0, i64 0
  %58 = getelementptr inbounds [4 x i64**], [4 x i64**]* %57, i64 0, i64 0
  store i64** %l_111, i64*** %58, !tbaa !5
  %59 = getelementptr inbounds i64**, i64*** %58, i64 1
  store i64** null, i64*** %59, !tbaa !5
  %60 = getelementptr inbounds i64**, i64*** %59, i64 1
  store i64** %l_111, i64*** %60, !tbaa !5
  %61 = getelementptr inbounds i64**, i64*** %60, i64 1
  store i64** null, i64*** %61, !tbaa !5
  %62 = getelementptr inbounds [4 x i64**], [4 x i64**]* %57, i64 1
  %63 = getelementptr inbounds [4 x i64**], [4 x i64**]* %62, i64 0, i64 0
  store i64** null, i64*** %63, !tbaa !5
  %64 = getelementptr inbounds i64**, i64*** %63, i64 1
  store i64** %l_111, i64*** %64, !tbaa !5
  %65 = getelementptr inbounds i64**, i64*** %64, i64 1
  store i64** %l_111, i64*** %65, !tbaa !5
  %66 = getelementptr inbounds i64**, i64*** %65, i64 1
  store i64** null, i64*** %66, !tbaa !5
  %67 = getelementptr inbounds [4 x i64**], [4 x i64**]* %62, i64 1
  %68 = getelementptr inbounds [4 x i64**], [4 x i64**]* %67, i64 0, i64 0
  store i64** %l_111, i64*** %68, !tbaa !5
  %69 = getelementptr inbounds i64**, i64*** %68, i64 1
  store i64** null, i64*** %69, !tbaa !5
  %70 = getelementptr inbounds i64**, i64*** %69, i64 1
  store i64** %l_111, i64*** %70, !tbaa !5
  %71 = getelementptr inbounds i64**, i64*** %70, i64 1
  store i64** %l_111, i64*** %71, !tbaa !5
  %72 = getelementptr inbounds [4 x i64**], [4 x i64**]* %67, i64 1
  %73 = getelementptr inbounds [4 x i64**], [4 x i64**]* %72, i64 0, i64 0
  store i64** %l_111, i64*** %73, !tbaa !5
  %74 = getelementptr inbounds i64**, i64*** %73, i64 1
  store i64** %l_111, i64*** %74, !tbaa !5
  %75 = getelementptr inbounds i64**, i64*** %74, i64 1
  store i64** %l_111, i64*** %75, !tbaa !5
  %76 = getelementptr inbounds i64**, i64*** %75, i64 1
  store i64** %l_111, i64*** %76, !tbaa !5
  %77 = getelementptr inbounds [4 x i64**], [4 x i64**]* %72, i64 1
  %78 = getelementptr inbounds [4 x i64**], [4 x i64**]* %77, i64 0, i64 0
  store i64** %l_111, i64*** %78, !tbaa !5
  %79 = getelementptr inbounds i64**, i64*** %78, i64 1
  store i64** %l_111, i64*** %79, !tbaa !5
  %80 = getelementptr inbounds i64**, i64*** %79, i64 1
  store i64** %l_111, i64*** %80, !tbaa !5
  %81 = getelementptr inbounds i64**, i64*** %80, i64 1
  store i64** %l_111, i64*** %81, !tbaa !5
  %82 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %56, i64 1
  %83 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %82, i64 0, i64 0
  %84 = getelementptr inbounds [4 x i64**], [4 x i64**]* %83, i64 0, i64 0
  store i64** %l_111, i64*** %84, !tbaa !5
  %85 = getelementptr inbounds i64**, i64*** %84, i64 1
  store i64** %l_111, i64*** %85, !tbaa !5
  %86 = getelementptr inbounds i64**, i64*** %85, i64 1
  store i64** %l_111, i64*** %86, !tbaa !5
  %87 = getelementptr inbounds i64**, i64*** %86, i64 1
  store i64** %l_111, i64*** %87, !tbaa !5
  %88 = getelementptr inbounds [4 x i64**], [4 x i64**]* %83, i64 1
  %89 = getelementptr inbounds [4 x i64**], [4 x i64**]* %88, i64 0, i64 0
  store i64** null, i64*** %89, !tbaa !5
  %90 = getelementptr inbounds i64**, i64*** %89, i64 1
  store i64** %l_111, i64*** %90, !tbaa !5
  %91 = getelementptr inbounds i64**, i64*** %90, i64 1
  store i64** %l_111, i64*** %91, !tbaa !5
  %92 = getelementptr inbounds i64**, i64*** %91, i64 1
  store i64** %l_111, i64*** %92, !tbaa !5
  %93 = getelementptr inbounds [4 x i64**], [4 x i64**]* %88, i64 1
  %94 = getelementptr inbounds [4 x i64**], [4 x i64**]* %93, i64 0, i64 0
  store i64** %l_111, i64*** %94, !tbaa !5
  %95 = getelementptr inbounds i64**, i64*** %94, i64 1
  store i64** %l_111, i64*** %95, !tbaa !5
  %96 = getelementptr inbounds i64**, i64*** %95, i64 1
  store i64** %l_111, i64*** %96, !tbaa !5
  %97 = getelementptr inbounds i64**, i64*** %96, i64 1
  store i64** %l_111, i64*** %97, !tbaa !5
  %98 = getelementptr inbounds [4 x i64**], [4 x i64**]* %93, i64 1
  %99 = getelementptr inbounds [4 x i64**], [4 x i64**]* %98, i64 0, i64 0
  store i64** %l_111, i64*** %99, !tbaa !5
  %100 = getelementptr inbounds i64**, i64*** %99, i64 1
  store i64** %l_111, i64*** %100, !tbaa !5
  %101 = getelementptr inbounds i64**, i64*** %100, i64 1
  store i64** %l_111, i64*** %101, !tbaa !5
  %102 = getelementptr inbounds i64**, i64*** %101, i64 1
  store i64** %l_111, i64*** %102, !tbaa !5
  %103 = getelementptr inbounds [4 x i64**], [4 x i64**]* %98, i64 1
  %104 = getelementptr inbounds [4 x i64**], [4 x i64**]* %103, i64 0, i64 0
  store i64** %l_111, i64*** %104, !tbaa !5
  %105 = getelementptr inbounds i64**, i64*** %104, i64 1
  store i64** null, i64*** %105, !tbaa !5
  %106 = getelementptr inbounds i64**, i64*** %105, i64 1
  store i64** %l_111, i64*** %106, !tbaa !5
  %107 = getelementptr inbounds i64**, i64*** %106, i64 1
  store i64** null, i64*** %107, !tbaa !5
  %108 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %82, i64 1
  %109 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %108, i64 0, i64 0
  %110 = getelementptr inbounds [4 x i64**], [4 x i64**]* %109, i64 0, i64 0
  store i64** null, i64*** %110, !tbaa !5
  %111 = getelementptr inbounds i64**, i64*** %110, i64 1
  store i64** %l_111, i64*** %111, !tbaa !5
  %112 = getelementptr inbounds i64**, i64*** %111, i64 1
  store i64** %l_111, i64*** %112, !tbaa !5
  %113 = getelementptr inbounds i64**, i64*** %112, i64 1
  store i64** null, i64*** %113, !tbaa !5
  %114 = getelementptr inbounds [4 x i64**], [4 x i64**]* %109, i64 1
  %115 = getelementptr inbounds [4 x i64**], [4 x i64**]* %114, i64 0, i64 0
  store i64** %l_111, i64*** %115, !tbaa !5
  %116 = getelementptr inbounds i64**, i64*** %115, i64 1
  store i64** null, i64*** %116, !tbaa !5
  %117 = getelementptr inbounds i64**, i64*** %116, i64 1
  store i64** %l_111, i64*** %117, !tbaa !5
  %118 = getelementptr inbounds i64**, i64*** %117, i64 1
  store i64** %l_111, i64*** %118, !tbaa !5
  %119 = getelementptr inbounds [4 x i64**], [4 x i64**]* %114, i64 1
  %120 = getelementptr inbounds [4 x i64**], [4 x i64**]* %119, i64 0, i64 0
  store i64** %l_111, i64*** %120, !tbaa !5
  %121 = getelementptr inbounds i64**, i64*** %120, i64 1
  store i64** %l_111, i64*** %121, !tbaa !5
  %122 = getelementptr inbounds i64**, i64*** %121, i64 1
  store i64** %l_111, i64*** %122, !tbaa !5
  %123 = getelementptr inbounds i64**, i64*** %122, i64 1
  store i64** %l_111, i64*** %123, !tbaa !5
  %124 = getelementptr inbounds [4 x i64**], [4 x i64**]* %119, i64 1
  %125 = getelementptr inbounds [4 x i64**], [4 x i64**]* %124, i64 0, i64 0
  store i64** %l_111, i64*** %125, !tbaa !5
  %126 = getelementptr inbounds i64**, i64*** %125, i64 1
  store i64** %l_111, i64*** %126, !tbaa !5
  %127 = getelementptr inbounds i64**, i64*** %126, i64 1
  store i64** %l_111, i64*** %127, !tbaa !5
  %128 = getelementptr inbounds i64**, i64*** %127, i64 1
  store i64** %l_111, i64*** %128, !tbaa !5
  %129 = getelementptr inbounds [4 x i64**], [4 x i64**]* %124, i64 1
  %130 = getelementptr inbounds [4 x i64**], [4 x i64**]* %129, i64 0, i64 0
  store i64** %l_111, i64*** %130, !tbaa !5
  %131 = getelementptr inbounds i64**, i64*** %130, i64 1
  store i64** %l_111, i64*** %131, !tbaa !5
  %132 = getelementptr inbounds i64**, i64*** %131, i64 1
  store i64** %l_111, i64*** %132, !tbaa !5
  %133 = getelementptr inbounds i64**, i64*** %132, i64 1
  store i64** %l_111, i64*** %133, !tbaa !5
  %134 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %108, i64 1
  %135 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %134, i64 0, i64 0
  %136 = getelementptr inbounds [4 x i64**], [4 x i64**]* %135, i64 0, i64 0
  store i64** null, i64*** %136, !tbaa !5
  %137 = getelementptr inbounds i64**, i64*** %136, i64 1
  store i64** %l_111, i64*** %137, !tbaa !5
  %138 = getelementptr inbounds i64**, i64*** %137, i64 1
  store i64** %l_111, i64*** %138, !tbaa !5
  %139 = getelementptr inbounds i64**, i64*** %138, i64 1
  store i64** %l_111, i64*** %139, !tbaa !5
  %140 = getelementptr inbounds [4 x i64**], [4 x i64**]* %135, i64 1
  %141 = getelementptr inbounds [4 x i64**], [4 x i64**]* %140, i64 0, i64 0
  store i64** %l_111, i64*** %141, !tbaa !5
  %142 = getelementptr inbounds i64**, i64*** %141, i64 1
  store i64** %l_111, i64*** %142, !tbaa !5
  %143 = getelementptr inbounds i64**, i64*** %142, i64 1
  store i64** %l_111, i64*** %143, !tbaa !5
  %144 = getelementptr inbounds i64**, i64*** %143, i64 1
  store i64** %l_111, i64*** %144, !tbaa !5
  %145 = getelementptr inbounds [4 x i64**], [4 x i64**]* %140, i64 1
  %146 = getelementptr inbounds [4 x i64**], [4 x i64**]* %145, i64 0, i64 0
  store i64** %l_111, i64*** %146, !tbaa !5
  %147 = getelementptr inbounds i64**, i64*** %146, i64 1
  store i64** %l_111, i64*** %147, !tbaa !5
  %148 = getelementptr inbounds i64**, i64*** %147, i64 1
  store i64** %l_111, i64*** %148, !tbaa !5
  %149 = getelementptr inbounds i64**, i64*** %148, i64 1
  store i64** %l_111, i64*** %149, !tbaa !5
  %150 = getelementptr inbounds [4 x i64**], [4 x i64**]* %145, i64 1
  %151 = getelementptr inbounds [4 x i64**], [4 x i64**]* %150, i64 0, i64 0
  store i64** %l_111, i64*** %151, !tbaa !5
  %152 = getelementptr inbounds i64**, i64*** %151, i64 1
  store i64** null, i64*** %152, !tbaa !5
  %153 = getelementptr inbounds i64**, i64*** %152, i64 1
  store i64** %l_111, i64*** %153, !tbaa !5
  %154 = getelementptr inbounds i64**, i64*** %153, i64 1
  store i64** null, i64*** %154, !tbaa !5
  %155 = getelementptr inbounds [4 x i64**], [4 x i64**]* %150, i64 1
  %156 = getelementptr inbounds [4 x i64**], [4 x i64**]* %155, i64 0, i64 0
  store i64** null, i64*** %156, !tbaa !5
  %157 = getelementptr inbounds i64**, i64*** %156, i64 1
  store i64** %l_111, i64*** %157, !tbaa !5
  %158 = getelementptr inbounds i64**, i64*** %157, i64 1
  store i64** %l_111, i64*** %158, !tbaa !5
  %159 = getelementptr inbounds i64**, i64*** %158, i64 1
  store i64** null, i64*** %159, !tbaa !5
  %160 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %134, i64 1
  %161 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %160, i64 0, i64 0
  %162 = getelementptr inbounds [4 x i64**], [4 x i64**]* %161, i64 0, i64 0
  store i64** %l_111, i64*** %162, !tbaa !5
  %163 = getelementptr inbounds i64**, i64*** %162, i64 1
  store i64** null, i64*** %163, !tbaa !5
  %164 = getelementptr inbounds i64**, i64*** %163, i64 1
  store i64** %l_111, i64*** %164, !tbaa !5
  %165 = getelementptr inbounds i64**, i64*** %164, i64 1
  store i64** %l_111, i64*** %165, !tbaa !5
  %166 = getelementptr inbounds [4 x i64**], [4 x i64**]* %161, i64 1
  %167 = getelementptr inbounds [4 x i64**], [4 x i64**]* %166, i64 0, i64 0
  store i64** %l_111, i64*** %167, !tbaa !5
  %168 = getelementptr inbounds i64**, i64*** %167, i64 1
  store i64** %l_111, i64*** %168, !tbaa !5
  %169 = getelementptr inbounds i64**, i64*** %168, i64 1
  store i64** %l_111, i64*** %169, !tbaa !5
  %170 = getelementptr inbounds i64**, i64*** %169, i64 1
  store i64** %l_111, i64*** %170, !tbaa !5
  %171 = getelementptr inbounds [4 x i64**], [4 x i64**]* %166, i64 1
  %172 = getelementptr inbounds [4 x i64**], [4 x i64**]* %171, i64 0, i64 0
  store i64** %l_111, i64*** %172, !tbaa !5
  %173 = getelementptr inbounds i64**, i64*** %172, i64 1
  store i64** %l_111, i64*** %173, !tbaa !5
  %174 = getelementptr inbounds i64**, i64*** %173, i64 1
  store i64** %l_111, i64*** %174, !tbaa !5
  %175 = getelementptr inbounds i64**, i64*** %174, i64 1
  store i64** %l_111, i64*** %175, !tbaa !5
  %176 = getelementptr inbounds [4 x i64**], [4 x i64**]* %171, i64 1
  %177 = getelementptr inbounds [4 x i64**], [4 x i64**]* %176, i64 0, i64 0
  store i64** %l_111, i64*** %177, !tbaa !5
  %178 = getelementptr inbounds i64**, i64*** %177, i64 1
  store i64** %l_111, i64*** %178, !tbaa !5
  %179 = getelementptr inbounds i64**, i64*** %178, i64 1
  store i64** %l_111, i64*** %179, !tbaa !5
  %180 = getelementptr inbounds i64**, i64*** %179, i64 1
  store i64** %l_111, i64*** %180, !tbaa !5
  %181 = getelementptr inbounds [4 x i64**], [4 x i64**]* %176, i64 1
  %182 = getelementptr inbounds [4 x i64**], [4 x i64**]* %181, i64 0, i64 0
  store i64** null, i64*** %182, !tbaa !5
  %183 = getelementptr inbounds i64**, i64*** %182, i64 1
  store i64** %l_111, i64*** %183, !tbaa !5
  %184 = getelementptr inbounds i64**, i64*** %183, i64 1
  store i64** %l_111, i64*** %184, !tbaa !5
  %185 = getelementptr inbounds i64**, i64*** %184, i64 1
  store i64** %l_111, i64*** %185, !tbaa !5
  %186 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %160, i64 1
  %187 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %186, i64 0, i64 0
  %188 = getelementptr inbounds [4 x i64**], [4 x i64**]* %187, i64 0, i64 0
  store i64** %l_111, i64*** %188, !tbaa !5
  %189 = getelementptr inbounds i64**, i64*** %188, i64 1
  store i64** %l_111, i64*** %189, !tbaa !5
  %190 = getelementptr inbounds i64**, i64*** %189, i64 1
  store i64** %l_111, i64*** %190, !tbaa !5
  %191 = getelementptr inbounds i64**, i64*** %190, i64 1
  store i64** %l_111, i64*** %191, !tbaa !5
  %192 = getelementptr inbounds [4 x i64**], [4 x i64**]* %187, i64 1
  %193 = getelementptr inbounds [4 x i64**], [4 x i64**]* %192, i64 0, i64 0
  store i64** %l_111, i64*** %193, !tbaa !5
  %194 = getelementptr inbounds i64**, i64*** %193, i64 1
  store i64** %l_111, i64*** %194, !tbaa !5
  %195 = getelementptr inbounds i64**, i64*** %194, i64 1
  store i64** %l_111, i64*** %195, !tbaa !5
  %196 = getelementptr inbounds i64**, i64*** %195, i64 1
  store i64** %l_111, i64*** %196, !tbaa !5
  %197 = getelementptr inbounds [4 x i64**], [4 x i64**]* %192, i64 1
  %198 = getelementptr inbounds [4 x i64**], [4 x i64**]* %197, i64 0, i64 0
  store i64** %l_111, i64*** %198, !tbaa !5
  %199 = getelementptr inbounds i64**, i64*** %198, i64 1
  store i64** null, i64*** %199, !tbaa !5
  %200 = getelementptr inbounds i64**, i64*** %199, i64 1
  store i64** %l_111, i64*** %200, !tbaa !5
  %201 = getelementptr inbounds i64**, i64*** %200, i64 1
  store i64** null, i64*** %201, !tbaa !5
  %202 = getelementptr inbounds [4 x i64**], [4 x i64**]* %197, i64 1
  %203 = getelementptr inbounds [4 x i64**], [4 x i64**]* %202, i64 0, i64 0
  store i64** null, i64*** %203, !tbaa !5
  %204 = getelementptr inbounds i64**, i64*** %203, i64 1
  store i64** %l_111, i64*** %204, !tbaa !5
  %205 = getelementptr inbounds i64**, i64*** %204, i64 1
  store i64** %l_111, i64*** %205, !tbaa !5
  %206 = getelementptr inbounds i64**, i64*** %205, i64 1
  store i64** null, i64*** %206, !tbaa !5
  %207 = getelementptr inbounds [4 x i64**], [4 x i64**]* %202, i64 1
  %208 = getelementptr inbounds [4 x i64**], [4 x i64**]* %207, i64 0, i64 0
  store i64** %l_111, i64*** %208, !tbaa !5
  %209 = getelementptr inbounds i64**, i64*** %208, i64 1
  store i64** null, i64*** %209, !tbaa !5
  %210 = getelementptr inbounds i64**, i64*** %209, i64 1
  store i64** %l_111, i64*** %210, !tbaa !5
  %211 = getelementptr inbounds i64**, i64*** %210, i64 1
  store i64** %l_111, i64*** %211, !tbaa !5
  %212 = bitcast i64**** %l_225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #1
  %213 = getelementptr inbounds [7 x [5 x [4 x i64**]]], [7 x [5 x [4 x i64**]]]* %l_226, i32 0, i64 5
  %214 = getelementptr inbounds [5 x [4 x i64**]], [5 x [4 x i64**]]* %213, i32 0, i64 3
  %215 = getelementptr inbounds [4 x i64**], [4 x i64**]* %214, i32 0, i64 0
  store i64*** %215, i64**** %l_225, align 8, !tbaa !5
  %216 = bitcast [7 x [1 x [7 x i64****]]]* %l_224 to i8*
  call void @llvm.lifetime.start(i64 392, i8* %216) #1
  %217 = getelementptr inbounds [7 x [1 x [7 x i64****]]], [7 x [1 x [7 x i64****]]]* %l_224, i64 0, i64 0
  %218 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %217, i64 0, i64 0
  %219 = getelementptr inbounds [7 x i64****], [7 x i64****]* %218, i64 0, i64 0
  store i64**** %l_225, i64***** %219, !tbaa !5
  %220 = getelementptr inbounds i64****, i64***** %219, i64 1
  store i64**** %l_225, i64***** %220, !tbaa !5
  %221 = getelementptr inbounds i64****, i64***** %220, i64 1
  store i64**** null, i64***** %221, !tbaa !5
  %222 = getelementptr inbounds i64****, i64***** %221, i64 1
  store i64**** null, i64***** %222, !tbaa !5
  %223 = getelementptr inbounds i64****, i64***** %222, i64 1
  store i64**** %l_225, i64***** %223, !tbaa !5
  %224 = getelementptr inbounds i64****, i64***** %223, i64 1
  store i64**** %l_225, i64***** %224, !tbaa !5
  %225 = getelementptr inbounds i64****, i64***** %224, i64 1
  store i64**** %l_225, i64***** %225, !tbaa !5
  %226 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %217, i64 1
  %227 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %226, i64 0, i64 0
  %228 = getelementptr inbounds [7 x i64****], [7 x i64****]* %227, i64 0, i64 0
  store i64**** %l_225, i64***** %228, !tbaa !5
  %229 = getelementptr inbounds i64****, i64***** %228, i64 1
  store i64**** %l_225, i64***** %229, !tbaa !5
  %230 = getelementptr inbounds i64****, i64***** %229, i64 1
  store i64**** %l_225, i64***** %230, !tbaa !5
  %231 = getelementptr inbounds i64****, i64***** %230, i64 1
  store i64**** %l_225, i64***** %231, !tbaa !5
  %232 = getelementptr inbounds i64****, i64***** %231, i64 1
  store i64**** %l_225, i64***** %232, !tbaa !5
  %233 = getelementptr inbounds i64****, i64***** %232, i64 1
  store i64**** %l_225, i64***** %233, !tbaa !5
  %234 = getelementptr inbounds i64****, i64***** %233, i64 1
  store i64**** %l_225, i64***** %234, !tbaa !5
  %235 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %226, i64 1
  %236 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %235, i64 0, i64 0
  %237 = getelementptr inbounds [7 x i64****], [7 x i64****]* %236, i64 0, i64 0
  store i64**** null, i64***** %237, !tbaa !5
  %238 = getelementptr inbounds i64****, i64***** %237, i64 1
  store i64**** null, i64***** %238, !tbaa !5
  %239 = getelementptr inbounds i64****, i64***** %238, i64 1
  store i64**** %l_225, i64***** %239, !tbaa !5
  %240 = getelementptr inbounds i64****, i64***** %239, i64 1
  store i64**** %l_225, i64***** %240, !tbaa !5
  %241 = getelementptr inbounds i64****, i64***** %240, i64 1
  store i64**** %l_225, i64***** %241, !tbaa !5
  %242 = getelementptr inbounds i64****, i64***** %241, i64 1
  store i64**** %l_225, i64***** %242, !tbaa !5
  %243 = getelementptr inbounds i64****, i64***** %242, i64 1
  store i64**** %l_225, i64***** %243, !tbaa !5
  %244 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %235, i64 1
  %245 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %244, i64 0, i64 0
  %246 = getelementptr inbounds [7 x i64****], [7 x i64****]* %245, i64 0, i64 0
  store i64**** %l_225, i64***** %246, !tbaa !5
  %247 = getelementptr inbounds i64****, i64***** %246, i64 1
  store i64**** %l_225, i64***** %247, !tbaa !5
  %248 = getelementptr inbounds i64****, i64***** %247, i64 1
  store i64**** %l_225, i64***** %248, !tbaa !5
  %249 = getelementptr inbounds i64****, i64***** %248, i64 1
  store i64**** %l_225, i64***** %249, !tbaa !5
  %250 = getelementptr inbounds i64****, i64***** %249, i64 1
  store i64**** %l_225, i64***** %250, !tbaa !5
  %251 = getelementptr inbounds i64****, i64***** %250, i64 1
  store i64**** null, i64***** %251, !tbaa !5
  %252 = getelementptr inbounds i64****, i64***** %251, i64 1
  store i64**** %l_225, i64***** %252, !tbaa !5
  %253 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %244, i64 1
  %254 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %253, i64 0, i64 0
  %255 = getelementptr inbounds [7 x i64****], [7 x i64****]* %254, i64 0, i64 0
  store i64**** %l_225, i64***** %255, !tbaa !5
  %256 = getelementptr inbounds i64****, i64***** %255, i64 1
  store i64**** %l_225, i64***** %256, !tbaa !5
  %257 = getelementptr inbounds i64****, i64***** %256, i64 1
  store i64**** %l_225, i64***** %257, !tbaa !5
  %258 = getelementptr inbounds i64****, i64***** %257, i64 1
  store i64**** %l_225, i64***** %258, !tbaa !5
  %259 = getelementptr inbounds i64****, i64***** %258, i64 1
  store i64**** %l_225, i64***** %259, !tbaa !5
  %260 = getelementptr inbounds i64****, i64***** %259, i64 1
  store i64**** %l_225, i64***** %260, !tbaa !5
  %261 = getelementptr inbounds i64****, i64***** %260, i64 1
  store i64**** %l_225, i64***** %261, !tbaa !5
  %262 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %253, i64 1
  %263 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %262, i64 0, i64 0
  %264 = getelementptr inbounds [7 x i64****], [7 x i64****]* %263, i64 0, i64 0
  store i64**** %l_225, i64***** %264, !tbaa !5
  %265 = getelementptr inbounds i64****, i64***** %264, i64 1
  store i64**** %l_225, i64***** %265, !tbaa !5
  %266 = getelementptr inbounds i64****, i64***** %265, i64 1
  store i64**** %l_225, i64***** %266, !tbaa !5
  %267 = getelementptr inbounds i64****, i64***** %266, i64 1
  store i64**** %l_225, i64***** %267, !tbaa !5
  %268 = getelementptr inbounds i64****, i64***** %267, i64 1
  store i64**** %l_225, i64***** %268, !tbaa !5
  %269 = getelementptr inbounds i64****, i64***** %268, i64 1
  store i64**** %l_225, i64***** %269, !tbaa !5
  %270 = getelementptr inbounds i64****, i64***** %269, i64 1
  store i64**** %l_225, i64***** %270, !tbaa !5
  %271 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %262, i64 1
  %272 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %271, i64 0, i64 0
  %273 = getelementptr inbounds [7 x i64****], [7 x i64****]* %272, i64 0, i64 0
  store i64**** %l_225, i64***** %273, !tbaa !5
  %274 = getelementptr inbounds i64****, i64***** %273, i64 1
  store i64**** %l_225, i64***** %274, !tbaa !5
  %275 = getelementptr inbounds i64****, i64***** %274, i64 1
  store i64**** %l_225, i64***** %275, !tbaa !5
  %276 = getelementptr inbounds i64****, i64***** %275, i64 1
  store i64**** %l_225, i64***** %276, !tbaa !5
  %277 = getelementptr inbounds i64****, i64***** %276, i64 1
  store i64**** null, i64***** %277, !tbaa !5
  %278 = getelementptr inbounds i64****, i64***** %277, i64 1
  store i64**** %l_225, i64***** %278, !tbaa !5
  %279 = getelementptr inbounds i64****, i64***** %278, i64 1
  store i64**** %l_225, i64***** %279, !tbaa !5
  %280 = bitcast i64****** %l_223 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %280) #1
  %281 = getelementptr inbounds [7 x [1 x [7 x i64****]]], [7 x [1 x [7 x i64****]]]* %l_224, i32 0, i64 2
  %282 = getelementptr inbounds [1 x [7 x i64****]], [1 x [7 x i64****]]* %281, i32 0, i64 0
  %283 = getelementptr inbounds [7 x i64****], [7 x i64****]* %282, i32 0, i64 1
  store i64***** %283, i64****** %l_223, align 8, !tbaa !5
  %284 = bitcast i32* %l_267 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %284) #1
  store i32 -8, i32* %l_267, align 4, !tbaa !1
  %285 = bitcast i64***** %l_340 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %285) #1
  store i64**** @g_334, i64***** %l_340, align 8, !tbaa !5
  %286 = bitcast i64** %l_358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %286) #1
  store i64* null, i64** %l_358, align 8, !tbaa !5
  %287 = bitcast i64* %l_432 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %287) #1
  store i64 7, i64* %l_432, align 8, !tbaa !7
  %288 = bitcast [1 x i32*]* %l_481 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %288) #1
  %289 = bitcast i32** %l_500 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %289) #1
  store i32* %l_236, i32** %l_500, align 8, !tbaa !5
  %290 = bitcast i32*** %l_499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %290) #1
  store i32** %l_500, i32*** %l_499, align 8, !tbaa !5
  %291 = bitcast i32**** %l_498 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %291) #1
  store i32*** %l_499, i32**** %l_498, align 8, !tbaa !5
  %292 = bitcast i32* %l_548 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %292) #1
  store i32 7, i32* %l_548, align 4, !tbaa !1
  %293 = bitcast i32*** %l_589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %293) #1
  store i32** @g_124, i32*** %l_589, align 8, !tbaa !5
  %294 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %294) #1
  %295 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %295) #1
  %296 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %296) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %297

; <label>:297                                     ; preds = %304, %24
  %298 = load i32, i32* %i1, align 4, !tbaa !1
  %299 = icmp slt i32 %298, 1
  br i1 %299, label %300, label %307

; <label>:300                                     ; preds = %297
  %301 = load i32, i32* %i1, align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_481, i32 0, i64 %302
  store i32* null, i32** %303, align 8, !tbaa !5
  br label %304

; <label>:304                                     ; preds = %300
  %305 = load i32, i32* %i1, align 4, !tbaa !1
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %i1, align 4, !tbaa !1
  br label %297

; <label>:307                                     ; preds = %297
  %308 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32*** %l_589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i32* %l_548 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32**** %l_498 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %313) #1
  %314 = bitcast i32*** %l_499 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #1
  %315 = bitcast i32** %l_500 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %315) #1
  %316 = bitcast [1 x i32*]* %l_481 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #1
  %317 = bitcast i64* %l_432 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast i64** %l_358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #1
  %319 = bitcast i64***** %l_340 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast i32* %l_267 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i64****** %l_223 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  %322 = bitcast [7 x [1 x [7 x i64****]]]* %l_224 to i8*
  call void @llvm.lifetime.end(i64 392, i8* %322) #1
  %323 = bitcast i64**** %l_225 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast [7 x [5 x [4 x i64**]]]* %l_226 to i8*
  call void @llvm.lifetime.end(i64 1120, i8* %324) #1
  %325 = bitcast [9 x [3 x [8 x i32]]]* %l_171 to i8*
  call void @llvm.lifetime.end(i64 864, i8* %325) #1
  %326 = bitcast i64* %l_152 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  %327 = bitcast i32** %l_114 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %327) #1
  br label %328

; <label>:328                                     ; preds = %307
  %329 = load i32, i32* %3, align 4, !tbaa !1
  %330 = add i32 %329, 1
  store i32 %330, i32* %3, align 4, !tbaa !1
  br label %21

; <label>:331                                     ; preds = %21
  %332 = load volatile i32**, i32*** @g_587, align 8, !tbaa !5
  %333 = load i32*, i32** %332, align 8, !tbaa !5
  %334 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %336 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i8** %l_552 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #1
  %338 = bitcast i16* %l_369 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %338) #1
  %339 = bitcast i32* %l_367 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %340 = bitcast i32* %l_304 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #1
  %341 = bitcast i32* %l_303 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %341) #1
  %342 = bitcast i32* %l_236 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast i32* %l_212 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast [8 x [8 x [1 x i8]]]* %l_113 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %344) #1
  %345 = bitcast i64**** %l_112 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i64*** %l_110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast i64** %l_111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  ret i32* %333
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
define internal i32 @func_93(i32 %p_94) #0 {
  %1 = alloca i32, align 4
  %l_95 = alloca i32*, align 8
  %l_96 = alloca i32**, align 8
  store i32 %p_94, i32* %1, align 4, !tbaa !1
  %2 = bitcast i32** %l_95 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_63, i32** %l_95, align 8, !tbaa !5
  %3 = bitcast i32*** %l_96 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32** %l_95, i32*** %l_96, align 8, !tbaa !5
  %4 = load i32*, i32** %l_95, align 8, !tbaa !5
  %5 = load i32**, i32*** %l_96, align 8, !tbaa !5
  store i32* %4, i32** %5, align 8, !tbaa !5
  %6 = load i64, i64* @g_36, align 8, !tbaa !7
  %7 = trunc i64 %6 to i32
  %8 = bitcast i32*** %l_96 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = bitcast i32** %l_95 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %7
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
