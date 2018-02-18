; ModuleID = '00842.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_15 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"g_15\00", align 1
@g_17 = internal global i8 -46, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_65 = internal global i32 -4, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_65\00", align 1
@g_77 = internal global i64 2927929197097333783, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_84 = internal global [4 x [1 x [1 x i64]]] [[1 x [1 x i64]] [[1 x i64] [i64 -1]], [1 x [1 x i64]] [[1 x i64] [i64 9]], [1 x [1 x i64]] [[1 x i64] [i64 -1]], [1 x [1 x i64]] [[1 x i64] [i64 9]]], align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"g_84[i][j][k]\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_92 = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_92\00", align 1
@g_104 = internal global i16 -1, align 2
@.str.8 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_187 = internal global i64 5646289705909578443, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"g_187\00", align 1
@g_191 = internal global [4 x [8 x i32]] [[8 x i32] [i32 -524690907, i32 -524690907, i32 -379952684, i32 0, i32 -379952684, i32 -524690907, i32 -524690907, i32 -379952684], [8 x i32] [i32 1, i32 -379952684, i32 -379952684, i32 1, i32 -1107403151, i32 1, i32 -379952684, i32 -379952684], [8 x i32] [i32 -379952684, i32 -1107403151, i32 0, i32 0, i32 -1107403151, i32 -379952684, i32 -1107403151, i32 0], [8 x i32] [i32 1, i32 -1107403151, i32 1, i32 -379952684, i32 -379952684, i32 1, i32 -1107403151, i32 1]], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"g_191[i][j]\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_226 = internal global i32 -1703329799, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_226\00", align 1
@g_234 = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_234\00", align 1
@g_235 = internal global i16 -1, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_235\00", align 1
@g_245 = internal global [2 x i32] [i32 379840482, i32 379840482], align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"g_245[i]\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_262 = internal global i16 1, align 2
@.str.17 = private unnamed_addr constant [6 x i8] c"g_262\00", align 1
@g_297 = internal global i64 -10, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_297\00", align 1
@g_302 = internal global i8 -55, align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"g_302\00", align 1
@g_365 = internal global i8 1, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_365\00", align 1
@g_378 = internal global i16 -2, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_378\00", align 1
@g_500 = internal global i8 -2, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_500\00", align 1
@g_509 = internal global i64 -5843637596730740662, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_509\00", align 1
@g_511 = internal global i64 2457164729011094522, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_511\00", align 1
@g_516 = internal global i8 -1, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_516\00", align 1
@g_566 = internal global i32 1827870703, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"g_566\00", align 1
@g_616 = internal global i64 1, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_616\00", align 1
@g_641 = internal constant [7 x i64] [i64 -4370772220267707926, i64 -4370772220267707926, i64 -4370772220267707926, i64 -4370772220267707926, i64 -4370772220267707926, i64 -4370772220267707926, i64 -4370772220267707926], align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"g_641[i]\00", align 1
@g_643 = internal global i16 -1, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_643\00", align 1
@g_645 = internal global [1 x [7 x i16]] [[7 x i16] [i16 -1551, i16 -1551, i16 -1551, i16 -1551, i16 -1551, i16 -1551, i16 -1551]], align 2
@.str.30 = private unnamed_addr constant [12 x i8] c"g_645[i][j]\00", align 1
@g_650 = internal global [2 x i8] c"\C6\C6", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_650[i]\00", align 1
@g_662 = internal global i32 1, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_662\00", align 1
@g_701 = internal global [3 x [1 x i32]] [[1 x i32] [i32 -1389131161], [1 x i32] [i32 -1389131161], [1 x i32] [i32 -1389131161]], align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"g_701[i][j]\00", align 1
@g_907 = internal global i64 -7555952149394526751, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"g_907\00", align 1
@g_938 = internal global [4 x [10 x i8]] [[10 x i8] c"\1A\1A4\1A\1A4\1A\1A4\1A", [10 x i8] c"\1Akk\1Akk\1Akk\1A", [10 x i8] c"k\1Akk\1Akk\1Akk", [10 x i8] c"\1A\1A4\1A\1A4\1A\1A4\1A"], align 16
@.str.35 = private unnamed_addr constant [12 x i8] c"g_938[i][j]\00", align 1
@g_940 = internal global i8 -105, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"g_940\00", align 1
@g_1074 = internal global [1 x [4 x [3 x i8]]] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"g_1074[i][j][k]\00", align 1
@g_1087 = internal global [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"g_1087[i]\00", align 1
@g_1209 = internal global i64 8809069642846013497, align 8
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1209\00", align 1
@g_1228 = internal global i32 1109929975, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1228\00", align 1
@g_1239 = internal global i16 8231, align 2
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1239\00", align 1
@g_1386 = internal global [10 x i8] c"\02\02\02\02\02\02\02\02\02\02", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"g_1386[i]\00", align 1
@g_1411 = internal global i16 -7, align 2
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1411\00", align 1
@g_1413 = internal global [8 x i32] [i32 2113810288, i32 -10, i32 2113810288, i32 -10, i32 2113810288, i32 -10, i32 2113810288, i32 -10], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"g_1413[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_16 = private unnamed_addr constant [7 x [4 x [2 x i8*]]] [[4 x [2 x i8*]] [[2 x i8*] [i8* @g_17, i8* @g_17], [2 x i8*] [i8* null, i8* @g_17], [2 x i8*] [i8* @g_17, i8* @g_17], [2 x i8*] [i8* @g_17, i8* @g_17]], [4 x [2 x i8*]] [[2 x i8*] [i8* null, i8* @g_17], [2 x i8*] [i8* @g_17, i8* @g_17], [2 x i8*] [i8* null, i8* @g_17], [2 x i8*] [i8* @g_17, i8* @g_17]], [4 x [2 x i8*]] [[2 x i8*] [i8* @g_17, i8* null], [2 x i8*] [i8* null, i8* @g_17], [2 x i8*] [i8* null, i8* @g_17], [2 x i8*] zeroinitializer], [4 x [2 x i8*]] [[2 x i8*] [i8* @g_17, i8* @g_17], [2 x i8*] [i8* @g_17, i8* null], [2 x i8*] [i8* null, i8* @g_17], [2 x i8*] [i8* null, i8* @g_17]], [4 x [2 x i8*]] [[2 x i8*] zeroinitializer, [2 x i8*] [i8* @g_17, i8* @g_17], [2 x i8*] [i8* @g_17, i8* null], [2 x i8*] [i8* null, i8* @g_17]], [4 x [2 x i8*]] [[2 x i8*] [i8* null, i8* @g_17], [2 x i8*] zeroinitializer, [2 x i8*] [i8* @g_17, i8* @g_17], [2 x i8*] [i8* @g_17, i8* null]], [4 x [2 x i8*]] [[2 x i8*] [i8* null, i8* @g_17], [2 x i8*] [i8* null, i8* @g_17], [2 x i8*] zeroinitializer, [2 x i8*] [i8* @g_17, i8* @g_17]]], align 16
@func_1.l_996 = private unnamed_addr constant [3 x [9 x [5 x i8]]] [[9 x [5 x i8]] [[5 x i8] c"\C0\FFf\02f", [5 x i8] c"ff\F6\AF(", [5 x i8] c"f\00(?{", [5 x i8] c"\C0\FF\06\05\93", [5 x i8] c"\FF\00\00\FF\00", [5 x i8] c"\04f\00(?", [5 x i8] c"(\FF\06\C0\00", [5 x i8] c"\FF\04((\04", [5 x i8] c"{\02\F6\FF\04"], [9 x [5 x i8]] [[5 x i8] c"\FF\93f\05\00", [5 x i8] c"\02\05\AF??", [5 x i8] c"\FF\F6\FF\AF\00", [5 x i8] c"{\F6\C0\02\93", [5 x i8] c"\FF\05?f{", [5 x i8] c"(\93\C0\93(", [5 x i8] c"\04\02\FF\93f", [5 x i8] c"\FF\04\AFf\06", [5 x i8] c"\C0\FFf\02f"], [9 x [5 x i8]] [[5 x i8] c"ff\F6\AF(", [5 x i8] c"f\00(?{", [5 x i8] c"\C0\FF\06\05\93", [5 x i8] c"\FF\00\00\FF\00", [5 x i8] c"\04f\00(?", [5 x i8] c"(\FF\06\C0\00", [5 x i8] c"\FF\04((\04", [5 x i8] c"{\02\F6\FF\04", [5 x i8] c"\FF\93f\05\00"]], align 16
@func_1.l_1355 = private unnamed_addr constant [7 x i32] [i32 -72802594, i32 -1, i32 -72802594, i32 -72802594, i32 -1, i32 -72802594, i32 -72802594], align 16
@g_296 = internal global [3 x i64*] [i64* @g_297, i64* @g_297, i64* @g_297], align 16
@g_546 = internal global i64** @g_547, align 8
@func_1.l_742 = private unnamed_addr constant [10 x [2 x i64*]] [[2 x i64*] [i64* null, i64* @g_77], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* @g_187], [2 x i64*] [i64* @g_77, i64* @g_187], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* @g_77], [2 x i64*] zeroinitializer, [2 x i64*] [i64* null, i64* @g_77], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* @g_187], [2 x i64*] [i64* @g_77, i64* @g_187], [2 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* @g_77], [2 x i64*] zeroinitializer], align 16
@func_1.l_745 = private unnamed_addr constant [3 x [7 x i8]] [[7 x i8] c"\AC\03\AC\AC\03\AC\AC", [7 x i8] c"\FD\FD\B3\FD\FD\B3\FD", [7 x i8] c"\03\AC\AC\03\AC\AC\03"], align 16
@func_1.l_772 = private unnamed_addr constant [5 x i16] [i16 29546, i16 29546, i16 29546, i16 29546, i16 29546], align 2
@func_1.l_1111 = private unnamed_addr constant [2 x [3 x [5 x i16]]] [[3 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -6, i16 -26989, i16 6990], [5 x i16] [i16 19269, i16 24298, i16 24298, i16 19269, i16 6990], [5 x i16] [i16 24298, i16 5975, i16 -6, i16 -6, i16 5975]], [3 x [5 x i16]] [[5 x i16] [i16 6990, i16 -26989, i16 -6, i16 -1, i16 -1], [5 x i16] [i16 -26989, i16 6990, i16 -26989, i16 -6, i16 -1], [5 x i16] [i16 5975, i16 24298, i16 -1, i16 24298, i16 5975]]], align 16
@func_1.l_1436 = private unnamed_addr constant [2 x [5 x i64]] [[5 x i64] [i64 4959138166389526091, i64 -7030772843757497776, i64 -7030772843757497776, i64 4959138166389526091, i64 -7030772843757497776], [5 x i64] [i64 4959138166389526091, i64 4959138166389526091, i64 0, i64 4959138166389526091, i64 4959138166389526091]], align 16
@g_236 = internal global i32* @g_65, align 8
@g_230 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x i32*]* @g_231 to i8*), i64 56) to i32**), align 8
@g_1409 = internal global i16** @g_1410, align 8
@g_1325 = internal global i32* @g_65, align 8
@g_1493 = internal global [5 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_1413 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_1413 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_1413 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_1413 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_1413 to i8*), i64 20) to i32*)], align 16
@g_544 = internal global i64**** @g_545, align 8
@g_925 = internal global i8** @g_926, align 8
@g_1508 = internal global i32***** @g_1509, align 8
@g_547 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), align 8
@func_21.l_388 = private unnamed_addr constant [9 x i32*] [i32* null, i32* @g_234, i32* null, i32* null, i32* @g_234, i32* null, i32* null, i32* @g_234, i32* null], align 16
@func_21.l_532 = private unnamed_addr constant [5 x i16*] [i16* @g_378, i16* @g_378, i16* @g_378, i16* @g_378, i16* @g_378], align 16
@func_21.l_599 = private unnamed_addr constant [10 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248]], [3 x [3 x i32]] [[3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8]], [3 x [3 x i32]] [[3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248]], [3 x [3 x i32]] [[3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8]], [3 x [3 x i32]] [[3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248]], [3 x [3 x i32]] [[3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8]], [3 x [3 x i32]] [[3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248]], [3 x [3 x i32]] [[3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8]], [3 x [3 x i32]] [[3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248]], [3 x [3 x i32]] [[3 x i32] [i32 -8, i32 -8, i32 -8], [3 x i32] [i32 1572393248, i32 0, i32 1572393248], [3 x i32] [i32 -8, i32 -8, i32 -8]]], align 16
@func_21.l_435 = private unnamed_addr constant [8 x [7 x i8*]] [[7 x i8*] [i8* @g_302, i8* @g_302, i8* null, i8* @g_302, i8* @g_302, i8* null, i8* @g_302], [7 x i8*] zeroinitializer, [7 x i8*] zeroinitializer, [7 x i8*] [i8* null, i8* null, i8* @g_302, i8* null, i8* null, i8* @g_302, i8* null], [7 x i8*] zeroinitializer, [7 x i8*] zeroinitializer, [7 x i8*] [i8* null, i8* null, i8* @g_302, i8* null, i8* null, i8* @g_302, i8* null], [7 x i8*] zeroinitializer], align 16
@g_219 = internal global i64** null, align 8
@func_21.l_466 = private unnamed_addr constant [6 x [8 x i16*]] [[8 x i16*] [i16* @g_235, i16* @g_235, i16* @g_235, i16* null, i16* null, i16* null, i16* @g_235, i16* @g_235], [8 x i16*] [i16* null, i16* null, i16* @g_235, i16* @g_235, i16* @g_235, i16* null, i16* null, i16* null], [8 x i16*] [i16* null, i16* @g_235, i16* null, i16* @g_235, i16* null, i16* null, i16* null, i16* @g_235], [8 x i16*] [i16* @g_235, i16* @g_235, i16* @g_235, i16* null, i16* null, i16* null, i16* @g_235, i16* @g_235], [8 x i16*] [i16* null, i16* null, i16* @g_235, i16* @g_235, i16* @g_235, i16* null, i16* null, i16* null], [8 x i16*] [i16* null, i16* @g_235, i16* null, i16* @g_235, i16* null, i16* null, i16* null, i16* @g_235]], align 16
@func_21.l_512 = private unnamed_addr constant [6 x [4 x i32**]] [[4 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236, i32** @g_236], [4 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236, i32** @g_236], [4 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236, i32** @g_236], [4 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236, i32** @g_236], [4 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236, i32** @g_236], [4 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236, i32** @g_236]], align 16
@func_21.l_508 = private unnamed_addr constant [5 x [7 x i64*]] [[7 x i64*] [i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509], [7 x i64*] [i64* null, i64* null, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509], [7 x i64*] [i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509], [7 x i64*] [i64* null, i64* null, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509], [7 x i64*] [i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509, i64* @g_509]], align 16
@func_21.l_572 = private unnamed_addr constant [8 x i8] c"\A0\FE\FE\A0\FE\FE\A0\FE", align 1
@func_21.l_617 = private unnamed_addr constant [10 x [8 x [3 x i32]]] [[8 x [3 x i32]] [[3 x i32] [i32 2105141257, i32 1, i32 1], [3 x i32] [i32 0, i32 0, i32 -1], [3 x i32] [i32 -5, i32 -541028185, i32 -1], [3 x i32] [i32 1, i32 0, i32 -426762290], [3 x i32] [i32 1, i32 764808626, i32 -347069619], [3 x i32] [i32 1297836191, i32 924523983, i32 0], [3 x i32] [i32 -347069619, i32 -1, i32 -5], [3 x i32] [i32 -799371050, i32 6, i32 0]], [8 x [3 x i32]] [[3 x i32] [i32 796941870, i32 -960947454, i32 -347069619], [3 x i32] [i32 0, i32 -2003920625, i32 0], [3 x i32] [i32 242615570, i32 -1, i32 449532875], [3 x i32] [i32 -426762290, i32 -5, i32 -1678922141], [3 x i32] [i32 -1, i32 -541028185, i32 2105141257], [3 x i32] [i32 1, i32 -1327552465, i32 0], [3 x i32] [i32 -1, i32 1537713452, i32 -5], [3 x i32] [i32 -426762290, i32 0, i32 1]], [8 x [3 x i32]] [[3 x i32] [i32 242615570, i32 2105141257, i32 1], [3 x i32] [i32 0, i32 -689419563, i32 1297836191], [3 x i32] [i32 0, i32 -386504407, i32 -347069619], [3 x i32] [i32 -1954512921, i32 0, i32 -799371050], [3 x i32] [i32 -1, i32 -386504407, i32 796941870], [3 x i32] [i32 1, i32 -689419563, i32 -426762290], [3 x i32] [i32 2105141257, i32 2105141257, i32 -386504407], [3 x i32] [i32 -799371050, i32 0, i32 301133328]], [8 x [3 x i32]] [[3 x i32] [i32 -541028185, i32 1537713452, i32 -1452028074], [3 x i32] [i32 301133328, i32 -1327552465, i32 1], [3 x i32] [i32 -1, i32 -541028185, i32 -1452028074], [3 x i32] [i32 900523968, i32 -5, i32 301133328], [3 x i32] [i32 -386504407, i32 -1, i32 -386504407], [3 x i32] [i32 -9, i32 -2003920625, i32 -426762290], [3 x i32] [i32 449532875, i32 1, i32 796941870], [3 x i32] [i32 -1, i32 0, i32 -799371050]], [8 x [3 x i32]] [[3 x i32] [i32 764808626, i32 796941870, i32 -347069619], [3 x i32] [i32 -1, i32 -1678259252, i32 1297836191], [3 x i32] [i32 449532875, i32 1, i32 1], [3 x i32] [i32 -9, i32 4, i32 1], [3 x i32] [i32 -386504407, i32 764808626, i32 -5], [3 x i32] [i32 900523968, i32 0, i32 0], [3 x i32] [i32 -1, i32 -1, i32 2105141257], [3 x i32] [i32 301133328, i32 0, i32 -1678922141]], [8 x [3 x i32]] [[3 x i32] [i32 -541028185, i32 764808626, i32 449532875], [3 x i32] [i32 -799371050, i32 4, i32 0], [3 x i32] [i32 2105141257, i32 1, i32 -1], [3 x i32] [i32 1, i32 -1678259252, i32 1606104240], [3 x i32] [i32 -1, i32 796941870, i32 -541028185], [3 x i32] [i32 -1954512921, i32 0, i32 1606104240], [3 x i32] [i32 0, i32 1, i32 -1], [3 x i32] [i32 0, i32 -2003920625, i32 0]], [8 x [3 x i32]] [[3 x i32] [i32 242615570, i32 -1, i32 449532875], [3 x i32] [i32 -426762290, i32 -5, i32 -1678922141], [3 x i32] [i32 -1, i32 -541028185, i32 2105141257], [3 x i32] [i32 1, i32 -1327552465, i32 0], [3 x i32] [i32 -1, i32 1537713452, i32 -5], [3 x i32] [i32 -426762290, i32 0, i32 1], [3 x i32] [i32 242615570, i32 2105141257, i32 1], [3 x i32] [i32 0, i32 -689419563, i32 1297836191]], [8 x [3 x i32]] [[3 x i32] [i32 0, i32 -386504407, i32 -347069619], [3 x i32] [i32 -1954512921, i32 0, i32 -799371050], [3 x i32] [i32 -1, i32 -386504407, i32 796941870], [3 x i32] [i32 1, i32 -689419563, i32 -426762290], [3 x i32] [i32 2105141257, i32 2105141257, i32 -386504407], [3 x i32] [i32 -799371050, i32 0, i32 301133328], [3 x i32] [i32 -541028185, i32 1537713452, i32 -1452028074], [3 x i32] [i32 301133328, i32 -1327552465, i32 1]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 -541028185, i32 -1452028074], [3 x i32] [i32 900523968, i32 -5, i32 301133328], [3 x i32] [i32 -386504407, i32 -1, i32 -386504407], [3 x i32] [i32 -9, i32 -2003920625, i32 -426762290], [3 x i32] [i32 449532875, i32 1, i32 796941870], [3 x i32] [i32 -1, i32 0, i32 -799371050], [3 x i32] [i32 764808626, i32 796941870, i32 -347069619], [3 x i32] [i32 -1, i32 -1678259252, i32 1297836191]], [8 x [3 x i32]] [[3 x i32] [i32 449532875, i32 1, i32 2105141257], [3 x i32] [i32 -577554994, i32 1, i32 -799371050], [3 x i32] [i32 242615570, i32 1, i32 -541028185], [3 x i32] [i32 0, i32 924523983, i32 301133328], [3 x i32] [i32 -960947454, i32 -1452028074, i32 -1], [3 x i32] [i32 -426762290, i32 924523983, i32 900523968], [3 x i32] [i32 764808626, i32 1, i32 -386504407], [3 x i32] [i32 -1954512921, i32 1, i32 -9]]], align 16
@func_27.l_324 = private unnamed_addr constant [4 x i32*] [i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i32 0)], align 16
@func_27.l_343 = private unnamed_addr constant [8 x [8 x i32]] [[8 x i32] [i32 -10, i32 -1, i32 -5, i32 -2, i32 0, i32 1505949347, i32 1505949347, i32 0], [8 x i32] [i32 -10, i32 -1974519541, i32 -1974519541, i32 -10, i32 1505949347, i32 -2, i32 8, i32 -66506642], [8 x i32] [i32 252136082, i32 8, i32 8, i32 -66506642, i32 0, i32 0, i32 8, i32 0], [8 x i32] [i32 252136082, i32 -2, i32 1304398096, i32 -2, i32 252136082, i32 8, i32 0, i32 -10], [8 x i32] [i32 8, i32 0, i32 252136082, i32 1, i32 -5, i32 -1, i32 -2, i32 -2], [8 x i32] [i32 8, i32 -1974519541, i32 252136082, i32 252136082, i32 -1974519541, i32 8, i32 0, i32 -5], [8 x i32] [i32 -5, i32 0, i32 1304398096, i32 -10, i32 -2, i32 1, i32 8, i32 8], [8 x i32] [i32 1304398096, i32 1505949347, i32 8, i32 -10, i32 8, i32 1505949347, i32 1304398096, i32 -5]], align 16
@func_33.l_313 = private unnamed_addr constant [5 x i32] [i32 1151979248, i32 1151979248, i32 1151979248, i32 1151979248, i32 1151979248], align 16
@func_33.l_314 = private unnamed_addr constant [9 x [8 x [3 x i32**]]] [[8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236]], [8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236]], [8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** null, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** null]], [8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** null, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null]], [8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** null, i32** null, i32** @g_236], [3 x i32**] [i32** null, i32** @g_236, i32** @g_236], [3 x i32**] [i32** null, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** null, i32** null, i32** @g_236]], [8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** null, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236]], [8 x [3 x i32**]] [[3 x i32**] [i32** null, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** null, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236]], [8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** null, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** null, i32** @g_236, i32** null], [3 x i32**] [i32** null, i32** @g_236, i32** null], [3 x i32**] [i32** @g_236, i32** null, i32** null], [3 x i32**] [i32** null, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236]], [8 x [3 x i32**]] [[3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** null], [3 x i32**] [i32** null, i32** @g_236, i32** @g_236], [3 x i32**] [i32** @g_236, i32** @g_236, i32** @g_236], [3 x i32**] [i32** null, i32** @g_236, i32** null], [3 x i32**] [i32** null, i32** @g_236, i32** @g_236]]], align 16
@func_33.l_323 = internal constant [10 x [2 x [10 x i64]]] [[2 x [10 x i64]] [[10 x i64] [i64 0, i64 -7, i64 1, i64 -5325365545636305020, i64 -5325365545636305020, i64 1, i64 -7, i64 0, i64 1, i64 0], [10 x i64] [i64 -5325365545636305020, i64 -1, i64 1, i64 -5325365545636305020, i64 1, i64 -1, i64 -5325365545636305020, i64 -9, i64 -9, i64 -5325365545636305020]], [2 x [10 x i64]] [[10 x i64] [i64 -9, i64 0, i64 1, i64 1, i64 0, i64 -9, i64 -1, i64 0, i64 -1, i64 -9], [10 x i64] [i64 -7, i64 0, i64 1, i64 0, i64 -7, i64 1, i64 -5325365545636305020, i64 -5325365545636305020, i64 1, i64 -7]], [2 x [10 x i64]] [[10 x i64] [i64 -7, i64 -1, i64 -1, i64 -7, i64 1, i64 -9, i64 -7, i64 -9, i64 1, i64 -7], [10 x i64] [i64 -9, i64 -7, i64 -9, i64 1, i64 -7, i64 -1, i64 -1, i64 -7, i64 1, i64 -9]], [2 x [10 x i64]] [[10 x i64] [i64 -5325365545636305020, i64 -5325365545636305020, i64 1, i64 -7, i64 0, i64 1, i64 0, i64 -7, i64 1, i64 -5325365545636305020], [10 x i64] [i64 0, i64 -1, i64 -9, i64 0, i64 1, i64 1, i64 0, i64 -9, i64 -1, i64 0]], [2 x [10 x i64]] [[10 x i64] [i64 -9, i64 -5325365545636305020, i64 -1, i64 1, i64 -5325365545636305020, i64 1, i64 -1, i64 -5325365545636305020, i64 -9, i64 -9], [10 x i64] [i64 0, i64 -7, i64 1, i64 -5325365545636305020, i64 -5325365545636305020, i64 1, i64 -7, i64 0, i64 1, i64 0]], [2 x [10 x i64]] [[10 x i64] [i64 -5325365545636305020, i64 -1, i64 1, i64 -5325365545636305020, i64 1, i64 -1, i64 -5325365545636305020, i64 -9, i64 -9, i64 -5325365545636305020], [10 x i64] [i64 -9, i64 0, i64 1, i64 1, i64 0, i64 8848942171125001015, i64 1, i64 1, i64 1, i64 8848942171125001015]], [2 x [10 x i64]] [[10 x i64] [i64 -1, i64 1, i64 -5325365545636305020, i64 1, i64 -1, i64 -5325365545636305020, i64 -9, i64 -9, i64 -5325365545636305020, i64 -1], [10 x i64] [i64 -1, i64 1, i64 1, i64 -1, i64 1101309711638220626, i64 8848942171125001015, i64 -1, i64 8848942171125001015, i64 1101309711638220626, i64 -1]], [2 x [10 x i64]] [[10 x i64] [i64 8848942171125001015, i64 -1, i64 8848942171125001015, i64 1101309711638220626, i64 -1, i64 1, i64 1, i64 -1, i64 1101309711638220626, i64 8848942171125001015], [10 x i64] [i64 -9, i64 -9, i64 -5325365545636305020, i64 -1, i64 1, i64 -5325365545636305020, i64 1, i64 -1, i64 -5325365545636305020, i64 -9]], [2 x [10 x i64]] [[10 x i64] [i64 1, i64 1, i64 8848942171125001015, i64 1, i64 1101309711638220626, i64 1101309711638220626, i64 1, i64 8848942171125001015, i64 1, i64 1], [10 x i64] [i64 8848942171125001015, i64 -9, i64 1, i64 1101309711638220626, i64 -9, i64 1101309711638220626, i64 1, i64 -9, i64 8848942171125001015, i64 8848942171125001015]], [2 x [10 x i64]] [[10 x i64] [i64 1, i64 -1, i64 -5325365545636305020, i64 -9, i64 -9, i64 -5325365545636305020, i64 -1, i64 1, i64 -5325365545636305020, i64 1], [10 x i64] [i64 -9, i64 1, i64 1101309711638220626, i64 -9, i64 1101309711638220626, i64 1, i64 -9, i64 8848942171125001015, i64 8848942171125001015, i64 -9]]], align 16
@func_39.l_190 = private unnamed_addr constant [8 x i32*] [i32* @g_92, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [8 x i32]]* @g_191 to i8*), i64 96) to i32*), i32* @g_92, i32* @g_92, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [8 x i32]]* @g_191 to i8*), i64 96) to i32*), i32* @g_92, i32* @g_92, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [8 x i32]]* @g_191 to i8*), i64 96) to i32*)], align 16
@g_223 = internal global [1 x i8**] zeroinitializer, align 8
@func_39.l_258 = private unnamed_addr constant [10 x [1 x i32]] [[1 x i32] [i32 340705448], [1 x i32] [i32 -1495253598], [1 x i32] [i32 340705448], [1 x i32] [i32 -1495253598], [1 x i32] [i32 340705448], [1 x i32] [i32 -1495253598], [1 x i32] [i32 340705448], [1 x i32] [i32 -1495253598], [1 x i32] [i32 340705448], [1 x i32] [i32 -1495253598]], align 16
@func_39.l_237 = private unnamed_addr constant [10 x i64] [i64 -1, i64 -7, i64 -1, i64 -7, i64 -1, i64 -7, i64 -1, i64 -7, i64 -1, i64 -7], align 16
@func_48.l_111 = private unnamed_addr constant [5 x [8 x i8*]] [[8 x i8*] [i8* @g_17, i8* null, i8* @g_17, i8* null, i8* null, i8* @g_17, i8* null, i8* @g_17], [8 x i8*] [i8* @g_17, i8* null, i8* @g_17, i8* null, i8* @g_17, i8* @g_17, i8* null, i8* @g_17], [8 x i8*] [i8* @g_17, i8* @g_17, i8* null, i8* @g_17, i8* null, i8* @g_17, i8* @g_17, i8* null], [8 x i8*] [i8* @g_17, i8* null, i8* null, i8* @g_17, i8* null, i8* @g_17, i8* null, i8* null], [8 x i8*] [i8* null, i8* null, i8* @g_17, i8* @g_17, i8* null, i8* null, i8* null, i8* @g_17]], align 16
@func_50.l_82 = private unnamed_addr constant [1 x [10 x [1 x i32]]] [[10 x [1 x i32]] [[1 x i32] [i32 -2], [1 x i32] [i32 -2], [1 x i32] [i32 1873026368], [1 x i32] [i32 -2], [1 x i32] [i32 -2], [1 x i32] [i32 1873026368], [1 x i32] [i32 -2], [1 x i32] [i32 -2], [1 x i32] [i32 1873026368], [1 x i32] [i32 -2]]], align 16
@func_50.l_83 = internal constant [5 x i64*] [i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*)], align 16
@g_231 = internal global [10 x i32*] [i32* @g_65, i32* @g_65, i32* @g_65, i32* @g_65, i32* @g_65, i32* @g_65, i32* @g_65, i32* @g_65, i32* @g_65, i32* @g_65], align 16
@g_1410 = internal global i16* @g_1411, align 8
@g_545 = internal global i64*** @g_546, align 8
@g_926 = internal global i8* @g_500, align 8
@g_1509 = internal global i32**** @g_1510, align 8
@g_1510 = internal global i32*** @g_1511, align 8
@g_1511 = internal global i32** null, align 8
@.str.45 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load volatile i32, i32* @g_15, align 4, !tbaa !1
  %92 = zext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i8, i8* @g_17, align 1, !tbaa !9
  %95 = zext i8 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_65, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i64, i64* @g_77, align 8, !tbaa !7
  %101 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %101)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:102                                     ; preds = %141, %89
  %103 = load i32, i32* %i, align 4, !tbaa !1
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %144

; <label>:105                                     ; preds = %102
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %106

; <label>:106                                     ; preds = %137, %105
  %107 = load i32, i32* %j, align 4, !tbaa !1
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %140

; <label>:109                                     ; preds = %106
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %110

; <label>:110                                     ; preds = %133, %109
  %111 = load i32, i32* %k, align 4, !tbaa !1
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %136

; <label>:113                                     ; preds = %110
  %114 = load i32, i32* %k, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = load i32, i32* %i, align 4, !tbaa !1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 %119
  %121 = getelementptr inbounds [1 x [1 x i64]], [1 x [1 x i64]]* %120, i32 0, i64 %117
  %122 = getelementptr inbounds [1 x i64], [1 x i64]* %121, i32 0, i64 %115
  %123 = load i64, i64* %122, align 8, !tbaa !7
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %124)
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

; <label>:127                                     ; preds = %113
  %128 = load i32, i32* %i, align 4, !tbaa !1
  %129 = load i32, i32* %j, align 4, !tbaa !1
  %130 = load i32, i32* %k, align 4, !tbaa !1
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %128, i32 %129, i32 %130)
  br label %132

; <label>:132                                     ; preds = %127, %113
  br label %133

; <label>:133                                     ; preds = %132
  %134 = load i32, i32* %k, align 4, !tbaa !1
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %k, align 4, !tbaa !1
  br label %110

; <label>:136                                     ; preds = %110
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load i32, i32* %j, align 4, !tbaa !1
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %j, align 4, !tbaa !1
  br label %106

; <label>:140                                     ; preds = %106
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load i32, i32* %i, align 4, !tbaa !1
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %i, align 4, !tbaa !1
  br label %102

; <label>:144                                     ; preds = %102
  %145 = load i32, i32* @g_92, align 4, !tbaa !1
  %146 = zext i32 %145 to i64
  %147 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %147)
  %148 = load i16, i16* @g_104, align 2, !tbaa !10
  %149 = zext i16 %148 to i64
  %150 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %150)
  %151 = load i64, i64* @g_187, align 8, !tbaa !7
  %152 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %152)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:153                                     ; preds = %181, %144
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %184

; <label>:156                                     ; preds = %153
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %157

; <label>:157                                     ; preds = %177, %156
  %158 = load i32, i32* %j, align 4, !tbaa !1
  %159 = icmp slt i32 %158, 8
  br i1 %159, label %160, label %180

; <label>:160                                     ; preds = %157
  %161 = load i32, i32* %j, align 4, !tbaa !1
  %162 = sext i32 %161 to i64
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 %164
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %165, i32 0, i64 %162
  %167 = load i32, i32* %166, align 4, !tbaa !1
  %168 = zext i32 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %169)
  %170 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

; <label>:172                                     ; preds = %160
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %173, i32 %174)
  br label %176

; <label>:176                                     ; preds = %172, %160
  br label %177

; <label>:177                                     ; preds = %176
  %178 = load i32, i32* %j, align 4, !tbaa !1
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %j, align 4, !tbaa !1
  br label %157

; <label>:180                                     ; preds = %157
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32, i32* %i, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %i, align 4, !tbaa !1
  br label %153

; <label>:184                                     ; preds = %153
  %185 = load i32, i32* @g_226, align 4, !tbaa !1
  %186 = zext i32 %185 to i64
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %187)
  %188 = load i32, i32* @g_234, align 4, !tbaa !1
  %189 = sext i32 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %190)
  %191 = load i16, i16* @g_235, align 2, !tbaa !10
  %192 = zext i16 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %193)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:194                                     ; preds = %210, %184
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %197, label %213

; <label>:197                                     ; preds = %194
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* @g_245, i32 0, i64 %199
  %201 = load i32, i32* %200, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %203)
  %204 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

; <label>:206                                     ; preds = %197
  %207 = load i32, i32* %i, align 4, !tbaa !1
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %207)
  br label %209

; <label>:209                                     ; preds = %206, %197
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %i, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:213                                     ; preds = %194
  %214 = load i16, i16* @g_262, align 2, !tbaa !10
  %215 = zext i16 %214 to i64
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %216)
  %217 = load volatile i64, i64* @g_297, align 8, !tbaa !7
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %218)
  %219 = load i8, i8* @g_302, align 1, !tbaa !9
  %220 = sext i8 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %221)
  %222 = load i8, i8* @g_365, align 1, !tbaa !9
  %223 = zext i8 %222 to i64
  %224 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %224)
  %225 = load i16, i16* @g_378, align 2, !tbaa !10
  %226 = sext i16 %225 to i64
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %227)
  %228 = load i8, i8* @g_500, align 1, !tbaa !9
  %229 = zext i8 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %230)
  %231 = load i64, i64* @g_509, align 8, !tbaa !7
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %231, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %232)
  %233 = load i64, i64* @g_511, align 8, !tbaa !7
  %234 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %234)
  %235 = load i8, i8* @g_516, align 1, !tbaa !9
  %236 = sext i8 %235 to i64
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %237)
  %238 = load i32, i32* @g_566, align 4, !tbaa !1
  %239 = zext i32 %238 to i64
  %240 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %240)
  %241 = load i64, i64* @g_616, align 8, !tbaa !7
  %242 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %242)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %243

; <label>:243                                     ; preds = %258, %213
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = icmp slt i32 %244, 7
  br i1 %245, label %246, label %261

; <label>:246                                     ; preds = %243
  %247 = load i32, i32* %i, align 4, !tbaa !1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [7 x i64], [7 x i64]* @g_641, i32 0, i64 %248
  %250 = load i64, i64* %249, align 8, !tbaa !7
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %251)
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

; <label>:254                                     ; preds = %246
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %255)
  br label %257

; <label>:257                                     ; preds = %254, %246
  br label %258

; <label>:258                                     ; preds = %257
  %259 = load i32, i32* %i, align 4, !tbaa !1
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %i, align 4, !tbaa !1
  br label %243

; <label>:261                                     ; preds = %243
  %262 = load i16, i16* @g_643, align 2, !tbaa !10
  %263 = zext i16 %262 to i64
  %264 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %263, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %264)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %265

; <label>:265                                     ; preds = %293, %261
  %266 = load i32, i32* %i, align 4, !tbaa !1
  %267 = icmp slt i32 %266, 1
  br i1 %267, label %268, label %296

; <label>:268                                     ; preds = %265
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %269

; <label>:269                                     ; preds = %289, %268
  %270 = load i32, i32* %j, align 4, !tbaa !1
  %271 = icmp slt i32 %270, 7
  br i1 %271, label %272, label %292

; <label>:272                                     ; preds = %269
  %273 = load i32, i32* %j, align 4, !tbaa !1
  %274 = sext i32 %273 to i64
  %275 = load i32, i32* %i, align 4, !tbaa !1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [1 x [7 x i16]], [1 x [7 x i16]]* @g_645, i32 0, i64 %276
  %278 = getelementptr inbounds [7 x i16], [7 x i16]* %277, i32 0, i64 %274
  %279 = load i16, i16* %278, align 2, !tbaa !10
  %280 = zext i16 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 %281)
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

; <label>:284                                     ; preds = %272
  %285 = load i32, i32* %i, align 4, !tbaa !1
  %286 = load i32, i32* %j, align 4, !tbaa !1
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %285, i32 %286)
  br label %288

; <label>:288                                     ; preds = %284, %272
  br label %289

; <label>:289                                     ; preds = %288
  %290 = load i32, i32* %j, align 4, !tbaa !1
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %j, align 4, !tbaa !1
  br label %269

; <label>:292                                     ; preds = %269
  br label %293

; <label>:293                                     ; preds = %292
  %294 = load i32, i32* %i, align 4, !tbaa !1
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %i, align 4, !tbaa !1
  br label %265

; <label>:296                                     ; preds = %265
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %297

; <label>:297                                     ; preds = %313, %296
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = icmp slt i32 %298, 2
  br i1 %299, label %300, label %316

; <label>:300                                     ; preds = %297
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [2 x i8], [2 x i8]* @g_650, i32 0, i64 %302
  %304 = load i8, i8* %303, align 1, !tbaa !9
  %305 = sext i8 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %306)
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

; <label>:309                                     ; preds = %300
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %310)
  br label %312

; <label>:312                                     ; preds = %309, %300
  br label %313

; <label>:313                                     ; preds = %312
  %314 = load i32, i32* %i, align 4, !tbaa !1
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %i, align 4, !tbaa !1
  br label %297

; <label>:316                                     ; preds = %297
  %317 = load i32, i32* @g_662, align 4, !tbaa !1
  %318 = sext i32 %317 to i64
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %319)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %320

; <label>:320                                     ; preds = %348, %316
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = icmp slt i32 %321, 3
  br i1 %322, label %323, label %351

; <label>:323                                     ; preds = %320
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %324

; <label>:324                                     ; preds = %344, %323
  %325 = load i32, i32* %j, align 4, !tbaa !1
  %326 = icmp slt i32 %325, 1
  br i1 %326, label %327, label %347

; <label>:327                                     ; preds = %324
  %328 = load i32, i32* %j, align 4, !tbaa !1
  %329 = sext i32 %328 to i64
  %330 = load i32, i32* %i, align 4, !tbaa !1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* @g_701, i32 0, i64 %331
  %333 = getelementptr inbounds [1 x i32], [1 x i32]* %332, i32 0, i64 %329
  %334 = load i32, i32* %333, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 %336)
  %337 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %343

; <label>:339                                     ; preds = %327
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = load i32, i32* %j, align 4, !tbaa !1
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %340, i32 %341)
  br label %343

; <label>:343                                     ; preds = %339, %327
  br label %344

; <label>:344                                     ; preds = %343
  %345 = load i32, i32* %j, align 4, !tbaa !1
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %j, align 4, !tbaa !1
  br label %324

; <label>:347                                     ; preds = %324
  br label %348

; <label>:348                                     ; preds = %347
  %349 = load i32, i32* %i, align 4, !tbaa !1
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %i, align 4, !tbaa !1
  br label %320

; <label>:351                                     ; preds = %320
  %352 = load i64, i64* @g_907, align 8, !tbaa !7
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %353)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %354

; <label>:354                                     ; preds = %382, %351
  %355 = load i32, i32* %i, align 4, !tbaa !1
  %356 = icmp slt i32 %355, 4
  br i1 %356, label %357, label %385

; <label>:357                                     ; preds = %354
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %358

; <label>:358                                     ; preds = %378, %357
  %359 = load i32, i32* %j, align 4, !tbaa !1
  %360 = icmp slt i32 %359, 10
  br i1 %360, label %361, label %381

; <label>:361                                     ; preds = %358
  %362 = load i32, i32* %j, align 4, !tbaa !1
  %363 = sext i32 %362 to i64
  %364 = load i32, i32* %i, align 4, !tbaa !1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [4 x [10 x i8]], [4 x [10 x i8]]* @g_938, i32 0, i64 %365
  %367 = getelementptr inbounds [10 x i8], [10 x i8]* %366, i32 0, i64 %363
  %368 = load i8, i8* %367, align 1, !tbaa !9
  %369 = zext i8 %368 to i64
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %369, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %370)
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

; <label>:373                                     ; preds = %361
  %374 = load i32, i32* %i, align 4, !tbaa !1
  %375 = load i32, i32* %j, align 4, !tbaa !1
  %376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 %374, i32 %375)
  br label %377

; <label>:377                                     ; preds = %373, %361
  br label %378

; <label>:378                                     ; preds = %377
  %379 = load i32, i32* %j, align 4, !tbaa !1
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %j, align 4, !tbaa !1
  br label %358

; <label>:381                                     ; preds = %358
  br label %382

; <label>:382                                     ; preds = %381
  %383 = load i32, i32* %i, align 4, !tbaa !1
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %i, align 4, !tbaa !1
  br label %354

; <label>:385                                     ; preds = %354
  %386 = load i8, i8* @g_940, align 1, !tbaa !9
  %387 = zext i8 %386 to i64
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %387, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %388)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %389

; <label>:389                                     ; preds = %429, %385
  %390 = load i32, i32* %i, align 4, !tbaa !1
  %391 = icmp slt i32 %390, 1
  br i1 %391, label %392, label %432

; <label>:392                                     ; preds = %389
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %393

; <label>:393                                     ; preds = %425, %392
  %394 = load i32, i32* %j, align 4, !tbaa !1
  %395 = icmp slt i32 %394, 4
  br i1 %395, label %396, label %428

; <label>:396                                     ; preds = %393
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %397

; <label>:397                                     ; preds = %421, %396
  %398 = load i32, i32* %k, align 4, !tbaa !1
  %399 = icmp slt i32 %398, 3
  br i1 %399, label %400, label %424

; <label>:400                                     ; preds = %397
  %401 = load i32, i32* %k, align 4, !tbaa !1
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %j, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [1 x [4 x [3 x i8]]], [1 x [4 x [3 x i8]]]* @g_1074, i32 0, i64 %406
  %408 = getelementptr inbounds [4 x [3 x i8]], [4 x [3 x i8]]* %407, i32 0, i64 %404
  %409 = getelementptr inbounds [3 x i8], [3 x i8]* %408, i32 0, i64 %402
  %410 = load i8, i8* %409, align 1, !tbaa !9
  %411 = zext i8 %410 to i64
  %412 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %411, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i32 %412)
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %420

; <label>:415                                     ; preds = %400
  %416 = load i32, i32* %i, align 4, !tbaa !1
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = load i32, i32* %k, align 4, !tbaa !1
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %416, i32 %417, i32 %418)
  br label %420

; <label>:420                                     ; preds = %415, %400
  br label %421

; <label>:421                                     ; preds = %420
  %422 = load i32, i32* %k, align 4, !tbaa !1
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %k, align 4, !tbaa !1
  br label %397

; <label>:424                                     ; preds = %397
  br label %425

; <label>:425                                     ; preds = %424
  %426 = load i32, i32* %j, align 4, !tbaa !1
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %j, align 4, !tbaa !1
  br label %393

; <label>:428                                     ; preds = %393
  br label %429

; <label>:429                                     ; preds = %428
  %430 = load i32, i32* %i, align 4, !tbaa !1
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %i, align 4, !tbaa !1
  br label %389

; <label>:432                                     ; preds = %389
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %433

; <label>:433                                     ; preds = %449, %432
  %434 = load i32, i32* %i, align 4, !tbaa !1
  %435 = icmp slt i32 %434, 4
  br i1 %435, label %436, label %452

; <label>:436                                     ; preds = %433
  %437 = load i32, i32* %i, align 4, !tbaa !1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [4 x i32], [4 x i32]* @g_1087, i32 0, i64 %438
  %440 = load volatile i32, i32* %439, align 4, !tbaa !1
  %441 = sext i32 %440 to i64
  %442 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %441, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 %442)
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

; <label>:445                                     ; preds = %436
  %446 = load i32, i32* %i, align 4, !tbaa !1
  %447 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %446)
  br label %448

; <label>:448                                     ; preds = %445, %436
  br label %449

; <label>:449                                     ; preds = %448
  %450 = load i32, i32* %i, align 4, !tbaa !1
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %i, align 4, !tbaa !1
  br label %433

; <label>:452                                     ; preds = %433
  %453 = load volatile i64, i64* @g_1209, align 8, !tbaa !7
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %454)
  %455 = load i32, i32* @g_1228, align 4, !tbaa !1
  %456 = sext i32 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %457)
  %458 = load volatile i16, i16* @g_1239, align 2, !tbaa !10
  %459 = zext i16 %458 to i64
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %459, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %460)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %461

; <label>:461                                     ; preds = %477, %452
  %462 = load i32, i32* %i, align 4, !tbaa !1
  %463 = icmp slt i32 %462, 10
  br i1 %463, label %464, label %480

; <label>:464                                     ; preds = %461
  %465 = load i32, i32* %i, align 4, !tbaa !1
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [10 x i8], [10 x i8]* @g_1386, i32 0, i64 %466
  %468 = load i8, i8* %467, align 1, !tbaa !9
  %469 = sext i8 %468 to i64
  %470 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %469, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 %470)
  %471 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

; <label>:473                                     ; preds = %464
  %474 = load i32, i32* %i, align 4, !tbaa !1
  %475 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %474)
  br label %476

; <label>:476                                     ; preds = %473, %464
  br label %477

; <label>:477                                     ; preds = %476
  %478 = load i32, i32* %i, align 4, !tbaa !1
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %i, align 4, !tbaa !1
  br label %461

; <label>:480                                     ; preds = %461
  %481 = load volatile i16, i16* @g_1411, align 2, !tbaa !10
  %482 = sext i16 %481 to i64
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %483)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:484                                     ; preds = %500, %480
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = icmp slt i32 %485, 8
  br i1 %486, label %487, label %503

; <label>:487                                     ; preds = %484
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [8 x i32], [8 x i32]* @g_1413, i32 0, i64 %489
  %491 = load i32, i32* %490, align 4, !tbaa !1
  %492 = zext i32 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %499

; <label>:496                                     ; preds = %487
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %497)
  br label %499

; <label>:499                                     ; preds = %496, %487
  br label %500

; <label>:500                                     ; preds = %499
  %501 = load i32, i32* %i, align 4, !tbaa !1
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:503                                     ; preds = %484
  %504 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %505 = zext i32 %504 to i64
  %506 = xor i64 %505, 4294967295
  %507 = trunc i64 %506 to i32
  %508 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %507, i32 %508)
  %509 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %509) #1
  %510 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %510) #1
  %511 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %511) #1
  %512 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %512) #1
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
  %l_10 = alloca i32, align 4
  %l_16 = alloca [7 x [4 x [2 x i8*]]], align 16
  %l_18 = alloca i16, align 2
  %l_63 = alloca i32, align 4
  %l_699 = alloca i32*, align 8
  %l_700 = alloca i32*, align 8
  %l_743 = alloca i64, align 8
  %l_788 = alloca i32, align 4
  %l_818 = alloca i32, align 4
  %l_869 = alloca i32, align 4
  %l_879 = alloca i32, align 4
  %l_880 = alloca i32, align 4
  %l_881 = alloca i32, align 4
  %l_884 = alloca i32, align 4
  %l_918 = alloca i32, align 4
  %l_928 = alloca [8 x i8**], align 16
  %l_939 = alloca i8**, align 8
  %l_996 = alloca [3 x [9 x [5 x i8]]], align 16
  %l_1011 = alloca i32, align 4
  %l_1026 = alloca i8, align 1
  %l_1034 = alloca i64, align 8
  %l_1043 = alloca i32, align 4
  %l_1081 = alloca [7 x i64***], align 16
  %l_1118 = alloca [5 x i64], align 16
  %l_1131 = alloca i8, align 1
  %l_1236 = alloca i32, align 4
  %l_1272 = alloca [9 x [10 x i8*]], align 16
  %l_1307 = alloca i16, align 2
  %l_1354 = alloca i8, align 1
  %l_1355 = alloca [7 x i32], align 16
  %l_1358 = alloca i64, align 8
  %l_1361 = alloca i32, align 4
  %l_1432 = alloca i32, align 4
  %l_1433 = alloca i32, align 4
  %l_1438 = alloca i64**, align 8
  %l_1437 = alloca i64***, align 8
  %l_1445 = alloca i16*, align 8
  %l_1454 = alloca i64*, align 8
  %l_1469 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_711 = alloca i32*, align 8
  %l_710 = alloca i32**, align 8
  %l_716 = alloca i32, align 4
  %l_724 = alloca i32*, align 8
  %l_742 = alloca [10 x [2 x i64*]], align 16
  %l_745 = alloca [3 x [7 x i8]], align 16
  %l_772 = alloca [5 x i16], align 2
  %l_810 = alloca [10 x i32], align 16
  %l_811 = alloca [6 x [2 x [1 x i32]]], align 16
  %l_905 = alloca i64, align 8
  %l_999 = alloca i8, align 1
  %l_1110 = alloca [9 x [4 x i8]], align 16
  %l_1111 = alloca [2 x [3 x [5 x i16]]], align 16
  %l_1260 = alloca i16, align 2
  %l_1270 = alloca i64***, align 8
  %l_1356 = alloca i16, align 2
  %l_1387 = alloca [2 x i32], align 4
  %l_1427 = alloca i64*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_1436 = alloca [2 x [5 x i64]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %2 = alloca i32
  %l_1459 = alloca i32, align 4
  %l_1470 = alloca i16*, align 8
  %l_1471 = alloca i8***, align 8
  %l_1473 = alloca i64, align 8
  %l_1495 = alloca i32, align 4
  %l_1501 = alloca i16*, align 8
  %l_1474 = alloca i64, align 8
  %l_1494 = alloca i32, align 4
  %l_1496 = alloca i64, align 8
  %l_1502 = alloca i32*, align 8
  %l_1507 = alloca i32*, align 8
  %l_1506 = alloca i32**, align 8
  %l_1505 = alloca [2 x [4 x i32***]], align 16
  %l_1504 = alloca i32****, align 8
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %3 = bitcast i32* %l_10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1126501997, i32* %l_10, align 4, !tbaa !1
  %4 = bitcast [7 x [4 x [2 x i8*]]]* %l_16 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %4) #1
  %5 = bitcast [7 x [4 x [2 x i8*]]]* %l_16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([7 x [4 x [2 x i8*]]]* @func_1.l_16 to i8*), i64 448, i32 16, i1 false)
  %6 = bitcast i16* %l_18 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 1, i16* %l_18, align 2, !tbaa !10
  %7 = bitcast i32* %l_63 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 624276912, i32* %l_63, align 4, !tbaa !1
  %8 = bitcast i32** %l_699 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* null, i32** %l_699, align 8, !tbaa !5
  %9 = bitcast i32** %l_700 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* getelementptr inbounds ([3 x [1 x i32]], [3 x [1 x i32]]* @g_701, i32 0, i64 0, i64 0), i32** %l_700, align 8, !tbaa !5
  %10 = bitcast i64* %l_743 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 -4755225794351448966, i64* %l_743, align 8, !tbaa !7
  %11 = bitcast i32* %l_788 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -593112382, i32* %l_788, align 4, !tbaa !1
  %12 = bitcast i32* %l_818 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -8, i32* %l_818, align 4, !tbaa !1
  %13 = bitcast i32* %l_869 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 59579631, i32* %l_869, align 4, !tbaa !1
  %14 = bitcast i32* %l_879 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -260395219, i32* %l_879, align 4, !tbaa !1
  %15 = bitcast i32* %l_880 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %l_880, align 4, !tbaa !1
  %16 = bitcast i32* %l_881 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 -223376003, i32* %l_881, align 4, !tbaa !1
  %17 = bitcast i32* %l_884 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 486171319, i32* %l_884, align 4, !tbaa !1
  %18 = bitcast i32* %l_918 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 1, i32* %l_918, align 4, !tbaa !1
  %19 = bitcast [8 x i8**]* %l_928 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %19) #1
  %20 = getelementptr inbounds [8 x i8**], [8 x i8**]* %l_928, i64 0, i64 0
  %21 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %22 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %21, i32 0, i64 1
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i32 0, i64 0
  store i8** %23, i8*** %20, !tbaa !5
  %24 = getelementptr inbounds i8**, i8*** %20, i64 1
  %25 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %26 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %25, i32 0, i64 1
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %26, i32 0, i64 0
  store i8** %27, i8*** %24, !tbaa !5
  %28 = getelementptr inbounds i8**, i8*** %24, i64 1
  %29 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %30 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %29, i32 0, i64 1
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %30, i32 0, i64 0
  store i8** %31, i8*** %28, !tbaa !5
  %32 = getelementptr inbounds i8**, i8*** %28, i64 1
  %33 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %34 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %33, i32 0, i64 1
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %34, i32 0, i64 0
  store i8** %35, i8*** %32, !tbaa !5
  %36 = getelementptr inbounds i8**, i8*** %32, i64 1
  %37 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %38 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %37, i32 0, i64 1
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %38, i32 0, i64 0
  store i8** %39, i8*** %36, !tbaa !5
  %40 = getelementptr inbounds i8**, i8*** %36, i64 1
  %41 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %42 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %41, i32 0, i64 1
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %42, i32 0, i64 0
  store i8** %43, i8*** %40, !tbaa !5
  %44 = getelementptr inbounds i8**, i8*** %40, i64 1
  %45 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %46 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %45, i32 0, i64 1
  %47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %46, i32 0, i64 0
  store i8** %47, i8*** %44, !tbaa !5
  %48 = getelementptr inbounds i8**, i8*** %44, i64 1
  %49 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %50 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %49, i32 0, i64 1
  %51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %50, i32 0, i64 0
  store i8** %51, i8*** %48, !tbaa !5
  %52 = bitcast i8*** %l_939 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 0
  %54 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %53, i32 0, i64 1
  %55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %54, i32 0, i64 0
  store i8** %55, i8*** %l_939, align 8, !tbaa !5
  %56 = bitcast [3 x [9 x [5 x i8]]]* %l_996 to i8*
  call void @llvm.lifetime.start(i64 135, i8* %56) #1
  %57 = bitcast [3 x [9 x [5 x i8]]]* %l_996 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* getelementptr inbounds ([3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* @func_1.l_996, i32 0, i32 0, i32 0, i32 0), i64 135, i32 16, i1 false)
  %58 = bitcast i32* %l_1011 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 787371539, i32* %l_1011, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1026) #1
  store i8 9, i8* %l_1026, align 1, !tbaa !9
  %59 = bitcast i64* %l_1034 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  store i64 -8776595518974941234, i64* %l_1034, align 8, !tbaa !7
  %60 = bitcast i32* %l_1043 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 -1390285805, i32* %l_1043, align 4, !tbaa !1
  %61 = bitcast [7 x i64***]* %l_1081 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %61) #1
  %62 = bitcast [5 x i64]* %l_1118 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %62) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_1131) #1
  store i8 2, i8* %l_1131, align 1, !tbaa !9
  %63 = bitcast i32* %l_1236 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  store i32 1582177541, i32* %l_1236, align 4, !tbaa !1
  %64 = bitcast [9 x [10 x i8*]]* %l_1272 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %64) #1
  %65 = getelementptr inbounds [9 x [10 x i8*]], [9 x [10 x i8*]]* %l_1272, i64 0, i64 0
  %66 = getelementptr inbounds [10 x i8*], [10 x i8*]* %65, i64 0, i64 0
  %67 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %68 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %67, i32 0, i64 4
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %68, i32 0, i64 3
  store i8* %69, i8** %66, !tbaa !5
  %70 = getelementptr inbounds i8*, i8** %66, i64 1
  store i8* @g_302, i8** %70, !tbaa !5
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %73 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %72, i32 0, i64 5
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %73, i32 0, i64 4
  store i8* %74, i8** %71, !tbaa !5
  %75 = getelementptr inbounds i8*, i8** %71, i64 1
  %76 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %77 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %76, i32 0, i64 2
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %77, i32 0, i64 4
  store i8* %78, i8** %75, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %75, i64 1
  %80 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %81 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %80, i32 0, i64 5
  %82 = getelementptr inbounds [5 x i8], [5 x i8]* %81, i32 0, i64 4
  store i8* %82, i8** %79, !tbaa !5
  %83 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* @g_302, i8** %83, !tbaa !5
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %86 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %85, i32 0, i64 4
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %86, i32 0, i64 3
  store i8* %87, i8** %84, !tbaa !5
  %88 = getelementptr inbounds i8*, i8** %84, i64 1
  %89 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %90 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %89, i32 0, i64 2
  %91 = getelementptr inbounds [5 x i8], [5 x i8]* %90, i32 0, i64 4
  store i8* %91, i8** %88, !tbaa !5
  %92 = getelementptr inbounds i8*, i8** %88, i64 1
  %93 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %94 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %93, i32 0, i64 4
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %94, i32 0, i64 3
  store i8* %95, i8** %92, !tbaa !5
  %96 = getelementptr inbounds i8*, i8** %92, i64 1
  store i8* @g_302, i8** %96, !tbaa !5
  %97 = getelementptr inbounds [10 x i8*], [10 x i8*]* %65, i64 1
  %98 = getelementptr inbounds [10 x i8*], [10 x i8*]* %97, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %98, !tbaa !5
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %101 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %100, i32 0, i64 2
  %102 = getelementptr inbounds [5 x i8], [5 x i8]* %101, i32 0, i64 4
  store i8* %102, i8** %99, !tbaa !5
  %103 = getelementptr inbounds i8*, i8** %99, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 0), i8** %103, !tbaa !5
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %106 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %105, i32 0, i64 2
  %107 = getelementptr inbounds [5 x i8], [5 x i8]* %106, i32 0, i64 4
  store i8* %107, i8** %104, !tbaa !5
  %108 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %108, !tbaa !5
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %111 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %110, i32 0, i64 3
  %112 = getelementptr inbounds [5 x i8], [5 x i8]* %111, i32 0, i64 1
  store i8* %112, i8** %109, !tbaa !5
  %113 = getelementptr inbounds i8*, i8** %109, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 0), i8** %113, !tbaa !5
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %116 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %115, i32 0, i64 3
  %117 = getelementptr inbounds [5 x i8], [5 x i8]* %116, i32 0, i64 1
  store i8* %117, i8** %114, !tbaa !5
  %118 = getelementptr inbounds i8*, i8** %114, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %118, !tbaa !5
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %121 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %120, i32 0, i64 2
  %122 = getelementptr inbounds [5 x i8], [5 x i8]* %121, i32 0, i64 4
  store i8* %122, i8** %119, !tbaa !5
  %123 = getelementptr inbounds [10 x i8*], [10 x i8*]* %97, i64 1
  %124 = getelementptr inbounds [10 x i8*], [10 x i8*]* %123, i64 0, i64 0
  %125 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %126 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %125, i32 0, i64 5
  %127 = getelementptr inbounds [5 x i8], [5 x i8]* %126, i32 0, i64 4
  store i8* %127, i8** %124, !tbaa !5
  %128 = getelementptr inbounds i8*, i8** %124, i64 1
  %129 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %130 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %129, i32 0, i64 2
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %130, i32 0, i64 4
  store i8* %131, i8** %128, !tbaa !5
  %132 = getelementptr inbounds i8*, i8** %128, i64 1
  %133 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %134 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %133, i32 0, i64 5
  %135 = getelementptr inbounds [5 x i8], [5 x i8]* %134, i32 0, i64 4
  store i8* %135, i8** %132, !tbaa !5
  %136 = getelementptr inbounds i8*, i8** %132, i64 1
  store i8* @g_302, i8** %136, !tbaa !5
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  %138 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %139 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %138, i32 0, i64 4
  %140 = getelementptr inbounds [5 x i8], [5 x i8]* %139, i32 0, i64 3
  store i8* %140, i8** %137, !tbaa !5
  %141 = getelementptr inbounds i8*, i8** %137, i64 1
  %142 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %143 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %142, i32 0, i64 2
  %144 = getelementptr inbounds [5 x i8], [5 x i8]* %143, i32 0, i64 4
  store i8* %144, i8** %141, !tbaa !5
  %145 = getelementptr inbounds i8*, i8** %141, i64 1
  %146 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %147 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %146, i32 0, i64 4
  %148 = getelementptr inbounds [5 x i8], [5 x i8]* %147, i32 0, i64 3
  store i8* %148, i8** %145, !tbaa !5
  %149 = getelementptr inbounds i8*, i8** %145, i64 1
  store i8* @g_302, i8** %149, !tbaa !5
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %152 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %151, i32 0, i64 5
  %153 = getelementptr inbounds [5 x i8], [5 x i8]* %152, i32 0, i64 4
  store i8* %153, i8** %150, !tbaa !5
  %154 = getelementptr inbounds i8*, i8** %150, i64 1
  %155 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %156 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %155, i32 0, i64 2
  %157 = getelementptr inbounds [5 x i8], [5 x i8]* %156, i32 0, i64 4
  store i8* %157, i8** %154, !tbaa !5
  %158 = getelementptr inbounds [10 x i8*], [10 x i8*]* %123, i64 1
  %159 = getelementptr inbounds [10 x i8*], [10 x i8*]* %158, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %159, !tbaa !5
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  store i8* @g_302, i8** %160, !tbaa !5
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  store i8* @g_302, i8** %161, !tbaa !5
  %162 = getelementptr inbounds i8*, i8** %161, i64 1
  store i8* null, i8** %162, !tbaa !5
  %163 = getelementptr inbounds i8*, i8** %162, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %163, !tbaa !5
  %164 = getelementptr inbounds i8*, i8** %163, i64 1
  store i8* null, i8** %164, !tbaa !5
  %165 = getelementptr inbounds i8*, i8** %164, i64 1
  store i8* @g_302, i8** %165, !tbaa !5
  %166 = getelementptr inbounds i8*, i8** %165, i64 1
  store i8* @g_302, i8** %166, !tbaa !5
  %167 = getelementptr inbounds i8*, i8** %166, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %167, !tbaa !5
  %168 = getelementptr inbounds i8*, i8** %167, i64 1
  store i8* @g_302, i8** %168, !tbaa !5
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %158, i64 1
  %170 = getelementptr inbounds [10 x i8*], [10 x i8*]* %169, i64 0, i64 0
  %171 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %172 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %171, i32 0, i64 4
  %173 = getelementptr inbounds [5 x i8], [5 x i8]* %172, i32 0, i64 3
  store i8* %173, i8** %170, !tbaa !5
  %174 = getelementptr inbounds i8*, i8** %170, i64 1
  store i8* null, i8** %174, !tbaa !5
  %175 = getelementptr inbounds i8*, i8** %174, i64 1
  %176 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %177 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %176, i32 0, i64 5
  %178 = getelementptr inbounds [5 x i8], [5 x i8]* %177, i32 0, i64 4
  store i8* %178, i8** %175, !tbaa !5
  %179 = getelementptr inbounds i8*, i8** %175, i64 1
  %180 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %181 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %180, i32 0, i64 3
  %182 = getelementptr inbounds [5 x i8], [5 x i8]* %181, i32 0, i64 1
  store i8* %182, i8** %179, !tbaa !5
  %183 = getelementptr inbounds i8*, i8** %179, i64 1
  %184 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %185 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %184, i32 0, i64 5
  %186 = getelementptr inbounds [5 x i8], [5 x i8]* %185, i32 0, i64 4
  store i8* %186, i8** %183, !tbaa !5
  %187 = getelementptr inbounds i8*, i8** %183, i64 1
  store i8* null, i8** %187, !tbaa !5
  %188 = getelementptr inbounds i8*, i8** %187, i64 1
  %189 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %190 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %189, i32 0, i64 4
  %191 = getelementptr inbounds [5 x i8], [5 x i8]* %190, i32 0, i64 3
  store i8* %191, i8** %188, !tbaa !5
  %192 = getelementptr inbounds i8*, i8** %188, i64 1
  %193 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %194 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %193, i32 0, i64 3
  %195 = getelementptr inbounds [5 x i8], [5 x i8]* %194, i32 0, i64 1
  store i8* %195, i8** %192, !tbaa !5
  %196 = getelementptr inbounds i8*, i8** %192, i64 1
  %197 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %198 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %197, i32 0, i64 4
  %199 = getelementptr inbounds [5 x i8], [5 x i8]* %198, i32 0, i64 3
  store i8* %199, i8** %196, !tbaa !5
  %200 = getelementptr inbounds i8*, i8** %196, i64 1
  store i8* null, i8** %200, !tbaa !5
  %201 = getelementptr inbounds [10 x i8*], [10 x i8*]* %169, i64 1
  %202 = getelementptr inbounds [10 x i8*], [10 x i8*]* %201, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %202, !tbaa !5
  %203 = getelementptr inbounds i8*, i8** %202, i64 1
  %204 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %205 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %204, i32 0, i64 3
  %206 = getelementptr inbounds [5 x i8], [5 x i8]* %205, i32 0, i64 1
  store i8* %206, i8** %203, !tbaa !5
  %207 = getelementptr inbounds i8*, i8** %203, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 0), i8** %207, !tbaa !5
  %208 = getelementptr inbounds i8*, i8** %207, i64 1
  %209 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %210 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %209, i32 0, i64 3
  %211 = getelementptr inbounds [5 x i8], [5 x i8]* %210, i32 0, i64 1
  store i8* %211, i8** %208, !tbaa !5
  %212 = getelementptr inbounds i8*, i8** %208, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %212, !tbaa !5
  %213 = getelementptr inbounds i8*, i8** %212, i64 1
  %214 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %215 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %214, i32 0, i64 2
  %216 = getelementptr inbounds [5 x i8], [5 x i8]* %215, i32 0, i64 4
  store i8* %216, i8** %213, !tbaa !5
  %217 = getelementptr inbounds i8*, i8** %213, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 0), i8** %217, !tbaa !5
  %218 = getelementptr inbounds i8*, i8** %217, i64 1
  %219 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %220 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %219, i32 0, i64 2
  %221 = getelementptr inbounds [5 x i8], [5 x i8]* %220, i32 0, i64 4
  store i8* %221, i8** %218, !tbaa !5
  %222 = getelementptr inbounds i8*, i8** %218, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %222, !tbaa !5
  %223 = getelementptr inbounds i8*, i8** %222, i64 1
  %224 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %225 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %224, i32 0, i64 3
  %226 = getelementptr inbounds [5 x i8], [5 x i8]* %225, i32 0, i64 1
  store i8* %226, i8** %223, !tbaa !5
  %227 = getelementptr inbounds [10 x i8*], [10 x i8*]* %201, i64 1
  %228 = getelementptr inbounds [10 x i8*], [10 x i8*]* %227, i64 0, i64 0
  %229 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %230 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %229, i32 0, i64 5
  %231 = getelementptr inbounds [5 x i8], [5 x i8]* %230, i32 0, i64 4
  store i8* %231, i8** %228, !tbaa !5
  %232 = getelementptr inbounds i8*, i8** %228, i64 1
  %233 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %234 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %233, i32 0, i64 3
  %235 = getelementptr inbounds [5 x i8], [5 x i8]* %234, i32 0, i64 1
  store i8* %235, i8** %232, !tbaa !5
  %236 = getelementptr inbounds i8*, i8** %232, i64 1
  %237 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %238 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %237, i32 0, i64 5
  %239 = getelementptr inbounds [5 x i8], [5 x i8]* %238, i32 0, i64 4
  store i8* %239, i8** %236, !tbaa !5
  %240 = getelementptr inbounds i8*, i8** %236, i64 1
  store i8* null, i8** %240, !tbaa !5
  %241 = getelementptr inbounds i8*, i8** %240, i64 1
  %242 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %243 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %242, i32 0, i64 4
  %244 = getelementptr inbounds [5 x i8], [5 x i8]* %243, i32 0, i64 3
  store i8* %244, i8** %241, !tbaa !5
  %245 = getelementptr inbounds i8*, i8** %241, i64 1
  %246 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %247 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %246, i32 0, i64 3
  %248 = getelementptr inbounds [5 x i8], [5 x i8]* %247, i32 0, i64 1
  store i8* %248, i8** %245, !tbaa !5
  %249 = getelementptr inbounds i8*, i8** %245, i64 1
  %250 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %251 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %250, i32 0, i64 4
  %252 = getelementptr inbounds [5 x i8], [5 x i8]* %251, i32 0, i64 3
  store i8* %252, i8** %249, !tbaa !5
  %253 = getelementptr inbounds i8*, i8** %249, i64 1
  store i8* null, i8** %253, !tbaa !5
  %254 = getelementptr inbounds i8*, i8** %253, i64 1
  %255 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %256 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %255, i32 0, i64 5
  %257 = getelementptr inbounds [5 x i8], [5 x i8]* %256, i32 0, i64 4
  store i8* %257, i8** %254, !tbaa !5
  %258 = getelementptr inbounds i8*, i8** %254, i64 1
  %259 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %260 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %259, i32 0, i64 3
  %261 = getelementptr inbounds [5 x i8], [5 x i8]* %260, i32 0, i64 1
  store i8* %261, i8** %258, !tbaa !5
  %262 = getelementptr inbounds [10 x i8*], [10 x i8*]* %227, i64 1
  %263 = getelementptr inbounds [10 x i8*], [10 x i8*]* %262, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %263, !tbaa !5
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  store i8* null, i8** %264, !tbaa !5
  %265 = getelementptr inbounds i8*, i8** %264, i64 1
  store i8* @g_302, i8** %265, !tbaa !5
  %266 = getelementptr inbounds i8*, i8** %265, i64 1
  store i8* @g_302, i8** %266, !tbaa !5
  %267 = getelementptr inbounds i8*, i8** %266, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %267, !tbaa !5
  %268 = getelementptr inbounds i8*, i8** %267, i64 1
  store i8* @g_302, i8** %268, !tbaa !5
  %269 = getelementptr inbounds i8*, i8** %268, i64 1
  store i8* @g_302, i8** %269, !tbaa !5
  %270 = getelementptr inbounds i8*, i8** %269, i64 1
  store i8* null, i8** %270, !tbaa !5
  %271 = getelementptr inbounds i8*, i8** %270, i64 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 1), i8** %271, !tbaa !5
  %272 = getelementptr inbounds i8*, i8** %271, i64 1
  store i8* null, i8** %272, !tbaa !5
  %273 = getelementptr inbounds [10 x i8*], [10 x i8*]* %262, i64 1
  %274 = getelementptr inbounds [10 x i8*], [10 x i8*]* %273, i64 0, i64 0
  %275 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %276 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %275, i32 0, i64 4
  %277 = getelementptr inbounds [5 x i8], [5 x i8]* %276, i32 0, i64 3
  store i8* %277, i8** %274, !tbaa !5
  %278 = getelementptr inbounds i8*, i8** %274, i64 1
  store i8* @g_302, i8** %278, !tbaa !5
  %279 = getelementptr inbounds i8*, i8** %278, i64 1
  %280 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %281 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %280, i32 0, i64 5
  %282 = getelementptr inbounds [5 x i8], [5 x i8]* %281, i32 0, i64 4
  store i8* %282, i8** %279, !tbaa !5
  %283 = getelementptr inbounds i8*, i8** %279, i64 1
  %284 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %285 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %284, i32 0, i64 2
  %286 = getelementptr inbounds [5 x i8], [5 x i8]* %285, i32 0, i64 4
  store i8* %286, i8** %283, !tbaa !5
  %287 = getelementptr inbounds i8*, i8** %283, i64 1
  %288 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 1
  %289 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %288, i32 0, i64 5
  %290 = getelementptr inbounds [5 x i8], [5 x i8]* %289, i32 0, i64 4
  store i8* %290, i8** %287, !tbaa !5
  %291 = getelementptr inbounds i8*, i8** %287, i64 1
  store i8* @g_302, i8** %291, !tbaa !5
  %292 = getelementptr inbounds i8*, i8** %291, i64 1
  %293 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %294 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %293, i32 0, i64 4
  %295 = getelementptr inbounds [5 x i8], [5 x i8]* %294, i32 0, i64 3
  store i8* %295, i8** %292, !tbaa !5
  %296 = getelementptr inbounds i8*, i8** %292, i64 1
  %297 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %298 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %297, i32 0, i64 2
  %299 = getelementptr inbounds [5 x i8], [5 x i8]* %298, i32 0, i64 4
  store i8* %299, i8** %296, !tbaa !5
  %300 = getelementptr inbounds i8*, i8** %296, i64 1
  %301 = getelementptr inbounds [3 x [9 x [5 x i8]]], [3 x [9 x [5 x i8]]]* %l_996, i32 0, i64 0
  %302 = getelementptr inbounds [9 x [5 x i8]], [9 x [5 x i8]]* %301, i32 0, i64 4
  %303 = getelementptr inbounds [5 x i8], [5 x i8]* %302, i32 0, i64 3
  store i8* %303, i8** %300, !tbaa !5
  %304 = getelementptr inbounds i8*, i8** %300, i64 1
  store i8* @g_302, i8** %304, !tbaa !5
  %305 = bitcast i16* %l_1307 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %305) #1
  store i16 -13067, i16* %l_1307, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1354) #1
  store i8 -1, i8* %l_1354, align 1, !tbaa !9
  %306 = bitcast [7 x i32]* %l_1355 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %306) #1
  %307 = bitcast [7 x i32]* %l_1355 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %307, i8* bitcast ([7 x i32]* @func_1.l_1355 to i8*), i64 28, i32 16, i1 false)
  %308 = bitcast i64* %l_1358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #1
  store i64 -581483102448433636, i64* %l_1358, align 8, !tbaa !7
  %309 = bitcast i32* %l_1361 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %309) #1
  store i32 -1375846256, i32* %l_1361, align 4, !tbaa !1
  %310 = bitcast i32* %l_1432 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %310) #1
  store i32 5, i32* %l_1432, align 4, !tbaa !1
  %311 = bitcast i32* %l_1433 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %311) #1
  store i32 1940712686, i32* %l_1433, align 4, !tbaa !1
  %312 = bitcast i64*** %l_1438 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #1
  store i64** getelementptr inbounds ([3 x i64*], [3 x i64*]* @g_296, i32 0, i64 2), i64*** %l_1438, align 8, !tbaa !5
  %313 = bitcast i64**** %l_1437 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #1
  store i64*** %l_1438, i64**** %l_1437, align 8, !tbaa !5
  %314 = bitcast i16** %l_1445 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %314) #1
  store i16* @g_378, i16** %l_1445, align 8, !tbaa !5
  %315 = bitcast i64** %l_1454 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #1
  store i64* @g_511, i64** %l_1454, align 8, !tbaa !5
  %316 = bitcast i16* %l_1469 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %316) #1
  store i16 -2736, i16* %l_1469, align 2, !tbaa !10
  %317 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  %318 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %318) #1
  %319 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %319) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %320

; <label>:320                                     ; preds = %327, %0
  %321 = load i32, i32* %i, align 4, !tbaa !1
  %322 = icmp slt i32 %321, 7
  br i1 %322, label %323, label %330

; <label>:323                                     ; preds = %320
  %324 = load i32, i32* %i, align 4, !tbaa !1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [7 x i64***], [7 x i64***]* %l_1081, i32 0, i64 %325
  store i64*** @g_546, i64**** %326, align 8, !tbaa !5
  br label %327

; <label>:327                                     ; preds = %323
  %328 = load i32, i32* %i, align 4, !tbaa !1
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %i, align 4, !tbaa !1
  br label %320

; <label>:330                                     ; preds = %320
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %331

; <label>:331                                     ; preds = %338, %330
  %332 = load i32, i32* %i, align 4, !tbaa !1
  %333 = icmp slt i32 %332, 5
  br i1 %333, label %334, label %341

; <label>:334                                     ; preds = %331
  %335 = load i32, i32* %i, align 4, !tbaa !1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [5 x i64], [5 x i64]* %l_1118, i32 0, i64 %336
  store i64 -3228223722881902175, i64* %337, align 8, !tbaa !7
  br label %338

; <label>:338                                     ; preds = %334
  %339 = load i32, i32* %i, align 4, !tbaa !1
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %i, align 4, !tbaa !1
  br label %331

; <label>:341                                     ; preds = %331
  %342 = load volatile i32, i32* @g_15, align 4, !tbaa !1
  %343 = trunc i32 %342 to i8
  %344 = load i16, i16* %l_18, align 2, !tbaa !10
  %345 = add i16 %344, 1
  store i16 %345, i16* %l_18, align 2, !tbaa !10
  %346 = trunc i16 %344 to i8
  %347 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %343, i8 zeroext %346)
  %348 = zext i8 %347 to i64
  %349 = load i8, i8* @g_17, align 1, !tbaa !9
  %350 = zext i8 %349 to i32
  %351 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext -7)
  %352 = trunc i16 %351 to i8
  %353 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %352)
  %354 = zext i8 %353 to i32
  store i32 %354, i32* %l_63, align 4, !tbaa !1
  %355 = trunc i32 %354 to i8
  %356 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %355, i32 2)
  %357 = zext i8 %356 to i16
  %358 = call i8* @func_55(i16 signext %357)
  %359 = load i32, i32* @g_65, align 4, !tbaa !1
  %360 = sext i32 %359 to i64
  %361 = call i8* @func_50(i32 %350, i8* %358, i8 zeroext 109, i64 %360)
  %362 = call i8* @func_48(i8* %361)
  %363 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 3, i64 0, i64 0), align 8, !tbaa !7
  %364 = trunc i64 %363 to i32
  %365 = call i32 @func_43(i8* %362, i8 signext 109, i32 %364, i8* @g_17)
  %366 = sext i32 %365 to i64
  %367 = xor i64 %366, 346282418
  %368 = icmp ne i64 %367, 0
  %369 = zext i1 %368 to i32
  %370 = sext i32 %369 to i64
  %371 = icmp ne i64 %370, 3208988292165006903
  %372 = zext i1 %371 to i32
  %373 = load i32, i32* @g_65, align 4, !tbaa !1
  %374 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %375 = trunc i64 %374 to i32
  %376 = call i8* @func_39(i32 %373, i32 %375, i64 1126501997)
  %377 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 1, i64 0, i64 0), align 8, !tbaa !7
  %378 = trunc i64 %377 to i16
  %379 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 1, i64 0, i64 0), align 8, !tbaa !7
  %380 = trunc i64 %379 to i32
  %381 = call i8* @func_33(i8* %376, i16 signext %378, i32 %380, i64 1126501997, i32 1126501997)
  %382 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 2
  %383 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %382, i32 0, i64 2
  %384 = getelementptr inbounds [2 x i8*], [2 x i8*]* %383, i32 0, i64 1
  %385 = load i8*, i8** %384, align 8, !tbaa !5
  %386 = load i32, i32* @g_226, align 4, !tbaa !1
  %387 = load i32, i32* @g_226, align 4, !tbaa !1
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 1
  %390 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %389, i32 0, i64 3
  %391 = getelementptr inbounds [2 x i8*], [2 x i8*]* %390, i32 0, i64 1
  %392 = load i8*, i8** %391, align 8, !tbaa !5
  %393 = call i32 @func_27(i8* %381, i8* %385, i32 %386, i64 %388, i8* %392)
  %394 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %395 = trunc i64 %394 to i32
  %396 = call i32 @safe_add_func_int32_t_s_s(i32 %393, i32 %395)
  %397 = getelementptr inbounds [7 x [4 x [2 x i8*]]], [7 x [4 x [2 x i8*]]]* %l_16, i32 0, i64 3
  %398 = getelementptr inbounds [4 x [2 x i8*]], [4 x [2 x i8*]]* %397, i32 0, i64 3
  %399 = getelementptr inbounds [2 x i8*], [2 x i8*]* %398, i32 0, i64 0
  %400 = load i8*, i8** %399, align 8, !tbaa !5
  %401 = icmp eq i8* @g_17, %400
  %402 = zext i1 %401 to i32
  %403 = icmp ult i32 %402, 1126501997
  %404 = zext i1 %403 to i32
  %405 = icmp eq i32 0, %404
  %406 = zext i1 %405 to i32
  %407 = trunc i32 %406 to i16
  %408 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %407, i16 zeroext 3693)
  %409 = call i32 @func_21(i8* @g_365)
  %410 = load i32*, i32** %l_700, align 8, !tbaa !5
  %411 = load i32, i32* %410, align 4, !tbaa !1
  %412 = xor i32 %411, %409
  store i32 %412, i32* %410, align 4, !tbaa !1
  %413 = sext i32 %412 to i64
  %414 = load i64, i64* @g_511, align 8, !tbaa !7
  %415 = xor i64 %413, %414
  %416 = and i64 %348, %415
  %417 = trunc i64 %416 to i8
  %418 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %417, i32 2)
  %419 = sext i8 %418 to i32
  %420 = load i32, i32* @g_662, align 4, !tbaa !1
  %421 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @g_641, i32 0, i64 2), align 8, !tbaa !7
  %422 = trunc i64 %421 to i16
  %423 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @g_641, i32 0, i64 5), align 8, !tbaa !7
  %424 = trunc i64 %423 to i32
  %425 = call zeroext i8 @func_4(i64 1126501997, i32 %419, i32 %420, i16 signext %422, i32 %424)
  %426 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %425, i8 zeroext -105)
  %427 = zext i8 %426 to i32
  %428 = icmp ult i32 %427, 1126501997
  br i1 %428, label %429, label %517

; <label>:429                                     ; preds = %341
  %430 = bitcast i32** %l_711 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %430) #1
  store i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), i32** %l_711, align 8, !tbaa !5
  %431 = bitcast i32*** %l_710 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %431) #1
  store i32** %l_711, i32*** %l_710, align 8, !tbaa !5
  %432 = bitcast i32* %l_716 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %432) #1
  store i32 0, i32* %l_716, align 4, !tbaa !1
  %433 = bitcast i32** %l_724 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %433) #1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %l_724, align 8, !tbaa !5
  %434 = bitcast [10 x [2 x i64*]]* %l_742 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %434) #1
  %435 = bitcast [10 x [2 x i64*]]* %l_742 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %435, i8* bitcast ([10 x [2 x i64*]]* @func_1.l_742 to i8*), i64 160, i32 16, i1 false)
  %436 = bitcast [3 x [7 x i8]]* %l_745 to i8*
  call void @llvm.lifetime.start(i64 21, i8* %436) #1
  %437 = bitcast [3 x [7 x i8]]* %l_745 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %437, i8* getelementptr inbounds ([3 x [7 x i8]], [3 x [7 x i8]]* @func_1.l_745, i32 0, i32 0, i32 0), i64 21, i32 16, i1 false)
  %438 = bitcast [5 x i16]* %l_772 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %438) #1
  %439 = bitcast [5 x i16]* %l_772 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %439, i8* bitcast ([5 x i16]* @func_1.l_772 to i8*), i64 10, i32 2, i1 false)
  %440 = bitcast [10 x i32]* %l_810 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %440) #1
  %441 = bitcast [6 x [2 x [1 x i32]]]* %l_811 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %441) #1
  %442 = bitcast [6 x [2 x [1 x i32]]]* %l_811 to i8*
  call void @llvm.memset.p0i8.i64(i8* %442, i8 0, i64 48, i32 16, i1 false)
  %443 = bitcast i8* %442 to [6 x [2 x [1 x i32]]]*
  %444 = getelementptr [6 x [2 x [1 x i32]]], [6 x [2 x [1 x i32]]]* %443, i32 0, i32 0
  %445 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %444, i32 0, i32 1
  %446 = getelementptr [1 x i32], [1 x i32]* %445, i32 0, i32 0
  store i32 1, i32* %446
  %447 = getelementptr [6 x [2 x [1 x i32]]], [6 x [2 x [1 x i32]]]* %443, i32 0, i32 1
  %448 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %447, i32 0, i32 1
  %449 = getelementptr [1 x i32], [1 x i32]* %448, i32 0, i32 0
  store i32 1, i32* %449
  %450 = getelementptr [6 x [2 x [1 x i32]]], [6 x [2 x [1 x i32]]]* %443, i32 0, i32 2
  %451 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %450, i32 0, i32 1
  %452 = getelementptr [1 x i32], [1 x i32]* %451, i32 0, i32 0
  store i32 1, i32* %452
  %453 = getelementptr [6 x [2 x [1 x i32]]], [6 x [2 x [1 x i32]]]* %443, i32 0, i32 3
  %454 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %453, i32 0, i32 1
  %455 = getelementptr [1 x i32], [1 x i32]* %454, i32 0, i32 0
  store i32 1, i32* %455
  %456 = getelementptr [6 x [2 x [1 x i32]]], [6 x [2 x [1 x i32]]]* %443, i32 0, i32 4
  %457 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %456, i32 0, i32 1
  %458 = getelementptr [1 x i32], [1 x i32]* %457, i32 0, i32 0
  store i32 1, i32* %458
  %459 = getelementptr [6 x [2 x [1 x i32]]], [6 x [2 x [1 x i32]]]* %443, i32 0, i32 5
  %460 = getelementptr [2 x [1 x i32]], [2 x [1 x i32]]* %459, i32 0, i32 1
  %461 = getelementptr [1 x i32], [1 x i32]* %460, i32 0, i32 0
  store i32 1, i32* %461
  %462 = bitcast i64* %l_905 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %462) #1
  store i64 1, i64* %l_905, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_999) #1
  store i8 0, i8* %l_999, align 1, !tbaa !9
  %463 = bitcast [9 x [4 x i8]]* %l_1110 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %463) #1
  %464 = bitcast [9 x [4 x i8]]* %l_1110 to i8*
  call void @llvm.memset.p0i8.i64(i8* %464, i8 0, i64 36, i32 16, i1 false)
  %465 = bitcast [2 x [3 x [5 x i16]]]* %l_1111 to i8*
  call void @llvm.lifetime.start(i64 60, i8* %465) #1
  %466 = bitcast [2 x [3 x [5 x i16]]]* %l_1111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %466, i8* bitcast ([2 x [3 x [5 x i16]]]* @func_1.l_1111 to i8*), i64 60, i32 16, i1 false)
  %467 = bitcast i16* %l_1260 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %467) #1
  store i16 -31629, i16* %l_1260, align 2, !tbaa !10
  %468 = bitcast i64**** %l_1270 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %468) #1
  store i64*** null, i64**** %l_1270, align 8, !tbaa !5
  %469 = bitcast i16* %l_1356 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %469) #1
  store i16 -1, i16* %l_1356, align 2, !tbaa !10
  %470 = bitcast [2 x i32]* %l_1387 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %470) #1
  %471 = bitcast i64** %l_1427 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %471) #1
  store i64* null, i64** %l_1427, align 8, !tbaa !5
  %472 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %472) #1
  %473 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %473) #1
  %474 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %474) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %475

; <label>:475                                     ; preds = %482, %429
  %476 = load i32, i32* %i1, align 4, !tbaa !1
  %477 = icmp slt i32 %476, 10
  br i1 %477, label %478, label %485

; <label>:478                                     ; preds = %475
  %479 = load i32, i32* %i1, align 4, !tbaa !1
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [10 x i32], [10 x i32]* %l_810, i32 0, i64 %480
  store i32 -686826895, i32* %481, align 4, !tbaa !1
  br label %482

; <label>:482                                     ; preds = %478
  %483 = load i32, i32* %i1, align 4, !tbaa !1
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %i1, align 4, !tbaa !1
  br label %475

; <label>:485                                     ; preds = %475
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %486

; <label>:486                                     ; preds = %493, %485
  %487 = load i32, i32* %i1, align 4, !tbaa !1
  %488 = icmp slt i32 %487, 2
  br i1 %488, label %489, label %496

; <label>:489                                     ; preds = %486
  %490 = load i32, i32* %i1, align 4, !tbaa !1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [2 x i32], [2 x i32]* %l_1387, i32 0, i64 %491
  store i32 1, i32* %492, align 4, !tbaa !1
  br label %493

; <label>:493                                     ; preds = %489
  %494 = load i32, i32* %i1, align 4, !tbaa !1
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %i1, align 4, !tbaa !1
  br label %486

; <label>:496                                     ; preds = %486
  %497 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %497) #1
  %498 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i64** %l_1427 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %500) #1
  %501 = bitcast [2 x i32]* %l_1387 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %501) #1
  %502 = bitcast i16* %l_1356 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %502) #1
  %503 = bitcast i64**** %l_1270 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %503) #1
  %504 = bitcast i16* %l_1260 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %504) #1
  %505 = bitcast [2 x [3 x [5 x i16]]]* %l_1111 to i8*
  call void @llvm.lifetime.end(i64 60, i8* %505) #1
  %506 = bitcast [9 x [4 x i8]]* %l_1110 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %506) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_999) #1
  %507 = bitcast i64* %l_905 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %507) #1
  %508 = bitcast [6 x [2 x [1 x i32]]]* %l_811 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %508) #1
  %509 = bitcast [10 x i32]* %l_810 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %509) #1
  %510 = bitcast [5 x i16]* %l_772 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %510) #1
  %511 = bitcast [3 x [7 x i8]]* %l_745 to i8*
  call void @llvm.lifetime.end(i64 21, i8* %511) #1
  %512 = bitcast [10 x [2 x i64*]]* %l_742 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %512) #1
  %513 = bitcast i32** %l_724 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %513) #1
  %514 = bitcast i32* %l_716 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %514) #1
  %515 = bitcast i32*** %l_710 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %515) #1
  %516 = bitcast i32** %l_711 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %516) #1
  br label %540

; <label>:517                                     ; preds = %341
  %518 = bitcast [2 x [5 x i64]]* %l_1436 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %518) #1
  %519 = bitcast [2 x [5 x i64]]* %l_1436 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %519, i8* bitcast ([2 x [5 x i64]]* @func_1.l_1436 to i8*), i64 80, i32 16, i1 false)
  %520 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %520) #1
  %521 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %521) #1
  store i32 0, i32* %l_918, align 4, !tbaa !1
  br label %522

; <label>:522                                     ; preds = %530, %517
  %523 = load i32, i32* %l_918, align 4, !tbaa !1
  %524 = icmp ugt i32 %523, 45
  br i1 %524, label %525, label %533

; <label>:525                                     ; preds = %522
  %526 = getelementptr inbounds [2 x [5 x i64]], [2 x [5 x i64]]* %l_1436, i32 0, i64 1
  %527 = getelementptr inbounds [5 x i64], [5 x i64]* %526, i32 0, i64 4
  %528 = load i64, i64* %527, align 8, !tbaa !7
  %529 = trunc i64 %528 to i32
  store i32 %529, i32* %1
  store i32 1, i32* %2
  br label %536
                                                  ; No predecessors!
  %531 = load i32, i32* %l_918, align 4, !tbaa !1
  %532 = add i32 %531, 1
  store i32 %532, i32* %l_918, align 4, !tbaa !1
  br label %522

; <label>:533                                     ; preds = %522
  %534 = load i32*, i32** %l_700, align 8, !tbaa !5
  %535 = load i32, i32* %534, align 4, !tbaa !1
  store i32 %535, i32* %1
  store i32 1, i32* %2
  br label %536

; <label>:536                                     ; preds = %533, %525
  %537 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %537) #1
  %538 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %538) #1
  %539 = bitcast [2 x [5 x i64]]* %l_1436 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %539) #1
  br label %874

; <label>:540                                     ; preds = %496
  %541 = load i64***, i64**** %l_1437, align 8, !tbaa !5
  store i64** getelementptr inbounds ([3 x i64*], [3 x i64*]* @g_296, i32 0, i64 1), i64*** %541, align 8, !tbaa !5
  %542 = load i64*, i64** %l_1454, align 8, !tbaa !5
  store i64 1, i64* %542, align 8, !tbaa !7
  %543 = load i64**, i64*** @g_546, align 8, !tbaa !5
  %544 = load i64*, i64** %543, align 8, !tbaa !5
  %545 = load i64, i64* %544, align 8, !tbaa !7
  %546 = icmp ult i64 1, %545
  %547 = zext i1 %546 to i32
  %548 = load i32*, i32** @g_236, align 8, !tbaa !5
  store i32 %547, i32* %548, align 4, !tbaa !1
  br i1 %546, label %549, label %671

; <label>:549                                     ; preds = %540
  %550 = bitcast i32* %l_1459 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %550) #1
  store i32 -3, i32* %l_1459, align 4, !tbaa !1
  %551 = bitcast i16** %l_1470 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %551) #1
  store i16* %l_1307, i16** %l_1470, align 8, !tbaa !5
  %552 = bitcast i8**** %l_1471 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %552) #1
  store i8*** %l_939, i8**** %l_1471, align 8, !tbaa !5
  %553 = load i32**, i32*** @g_230, align 8, !tbaa !5
  %554 = load volatile i32*, i32** %553, align 8, !tbaa !5
  %555 = load i32, i32* %554, align 4, !tbaa !1
  %556 = sext i32 %555 to i64
  %557 = xor i64 %556, 3016196120
  %558 = trunc i64 %557 to i32
  store i32 %558, i32* %554, align 4, !tbaa !1
  %559 = load i32, i32* %l_1459, align 4, !tbaa !1
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %564, label %561

; <label>:561                                     ; preds = %549
  %562 = load i32, i32* %l_1459, align 4, !tbaa !1
  %563 = icmp ne i32 %562, 0
  br label %564

; <label>:564                                     ; preds = %561, %549
  %565 = phi i1 [ true, %549 ], [ %563, %561 ]
  %566 = zext i1 %565 to i32
  %567 = load i16**, i16*** @g_1409, align 8, !tbaa !5
  %568 = load volatile i16*, i16** %567, align 8, !tbaa !5
  %569 = load volatile i16, i16* %568, align 2, !tbaa !10
  %570 = load i32, i32* @g_566, align 4, !tbaa !1
  %571 = trunc i32 %570 to i16
  %572 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %569, i16 signext %571)
  %573 = sext i16 %572 to i64
  %574 = icmp ule i64 %573, -1
  %575 = zext i1 %574 to i32
  %576 = trunc i32 %575 to i8
  %577 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %576, i32 0)
  %578 = zext i8 %577 to i32
  %579 = load i32*, i32** %l_700, align 8, !tbaa !5
  %580 = load i32, i32* %579, align 4, !tbaa !1
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %585

; <label>:582                                     ; preds = %564
  %583 = load i32, i32* %l_1459, align 4, !tbaa !1
  %584 = icmp ne i32 %583, 0
  br label %585

; <label>:585                                     ; preds = %582, %564
  %586 = phi i1 [ false, %564 ], [ %584, %582 ]
  %587 = zext i1 %586 to i32
  %588 = load i32, i32* getelementptr inbounds ([3 x [1 x i32]], [3 x [1 x i32]]* @g_701, i32 0, i64 0, i64 0), align 4, !tbaa !1
  %589 = load i16, i16* %l_1469, align 2, !tbaa !10
  %590 = sext i16 %589 to i32
  %591 = icmp ne i32 %588, %590
  %592 = zext i1 %591 to i32
  %593 = icmp sle i32 %578, %592
  %594 = zext i1 %593 to i32
  %595 = load i32, i32* @g_92, align 4, !tbaa !1
  %596 = trunc i32 %595 to i16
  %597 = load i16*, i16** %l_1470, align 8, !tbaa !5
  store i16 %596, i16* %597, align 2, !tbaa !10
  %598 = load i64, i64* @g_509, align 8, !tbaa !7
  %599 = load i64, i64* @g_509, align 8, !tbaa !7
  %600 = icmp sle i64 %598, %599
  br i1 %600, label %601, label %605

; <label>:601                                     ; preds = %585
  %602 = load i32*, i32** %l_700, align 8, !tbaa !5
  %603 = load i32, i32* %602, align 4, !tbaa !1
  %604 = icmp ne i32 %603, 0
  br label %605

; <label>:605                                     ; preds = %601, %585
  %606 = phi i1 [ false, %585 ], [ %604, %601 ]
  %607 = zext i1 %606 to i32
  %608 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %609 = sext i32 %608 to i64
  %610 = icmp eq i64 90, %609
  %611 = zext i1 %610 to i32
  %612 = load i32, i32* @g_92, align 4, !tbaa !1
  %613 = or i32 %611, %612
  %614 = trunc i32 %613 to i8
  %615 = load i8, i8* getelementptr inbounds ([4 x [10 x i8]], [4 x [10 x i8]]* @g_938, i32 0, i64 2, i64 2), align 1, !tbaa !9
  %616 = zext i8 %615 to i32
  %617 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %614, i32 %616)
  %618 = zext i8 %617 to i32
  %619 = call i32 @safe_sub_func_uint32_t_u_u(i32 %566, i32 %618)
  %620 = zext i32 %619 to i64
  %621 = icmp eq i64 4002522652185447738, %620
  %622 = zext i1 %621 to i32
  %623 = trunc i32 %622 to i16
  %624 = load i32, i32* %l_1459, align 4, !tbaa !1
  %625 = trunc i32 %624 to i16
  %626 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %623, i16 signext %625)
  %627 = sext i16 %626 to i64
  %628 = icmp sle i64 %627, 75
  %629 = zext i1 %628 to i32
  %630 = load i32*, i32** %l_700, align 8, !tbaa !5
  %631 = load i32, i32* %630, align 4, !tbaa !1
  %632 = icmp sgt i32 %629, %631
  %633 = zext i1 %632 to i32
  %634 = load i32*, i32** @g_236, align 8, !tbaa !5
  %635 = load i32, i32* %634, align 4, !tbaa !1
  %636 = or i32 %633, %635
  %637 = load i64**, i64*** @g_546, align 8, !tbaa !5
  %638 = load i64*, i64** %637, align 8, !tbaa !5
  %639 = load i64, i64* %638, align 8, !tbaa !7
  %640 = load i8***, i8**** %l_1471, align 8, !tbaa !5
  store i8** null, i8*** %640, align 8, !tbaa !5
  store i32 0, i32* %l_879, align 4, !tbaa !1
  br label %641

; <label>:641                                     ; preds = %662, %605
  %642 = load i32, i32* %l_879, align 4, !tbaa !1
  %643 = icmp slt i32 %642, 3
  br i1 %643, label %644, label %665

; <label>:644                                     ; preds = %641
  store volatile i16 0, i16* @g_1239, align 2, !tbaa !10
  br label %645

; <label>:645                                     ; preds = %656, %644
  %646 = load volatile i16, i16* @g_1239, align 2, !tbaa !10
  %647 = zext i16 %646 to i32
  %648 = icmp slt i32 %647, 1
  br i1 %648, label %649, label %661

; <label>:649                                     ; preds = %645
  %650 = load volatile i16, i16* @g_1239, align 2, !tbaa !10
  %651 = zext i16 %650 to i64
  %652 = load i32, i32* %l_879, align 4, !tbaa !1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [3 x [1 x i32]], [3 x [1 x i32]]* @g_701, i32 0, i64 %653
  %655 = getelementptr inbounds [1 x i32], [1 x i32]* %654, i32 0, i64 %651
  store i32 -554764426, i32* %655, align 4, !tbaa !1
  br label %656

; <label>:656                                     ; preds = %649
  %657 = load volatile i16, i16* @g_1239, align 2, !tbaa !10
  %658 = zext i16 %657 to i32
  %659 = add nsw i32 %658, 1
  %660 = trunc i32 %659 to i16
  store volatile i16 %660, i16* @g_1239, align 2, !tbaa !10
  br label %645

; <label>:661                                     ; preds = %645
  br label %662

; <label>:662                                     ; preds = %661
  %663 = load i32, i32* %l_879, align 4, !tbaa !1
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %l_879, align 4, !tbaa !1
  br label %641

; <label>:665                                     ; preds = %641
  %666 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_1386, i32 0, i64 3), align 1, !tbaa !9
  %667 = sext i8 %666 to i32
  store i32 %667, i32* %1
  store i32 1, i32* %2
  %668 = bitcast i8**** %l_1471 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %668) #1
  %669 = bitcast i16** %l_1470 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %669) #1
  %670 = bitcast i32* %l_1459 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %670) #1
  br label %874

; <label>:671                                     ; preds = %540
  %672 = bitcast i64* %l_1473 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %672) #1
  store i64 4, i64* %l_1473, align 8, !tbaa !7
  %673 = bitcast i32* %l_1495 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %673) #1
  store i32 -1, i32* %l_1495, align 4, !tbaa !1
  %674 = bitcast i16** %l_1501 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %674) #1
  store i16* @g_104, i16** %l_1501, align 8, !tbaa !5
  %675 = call i32 @safe_unary_minus_func_uint32_t_u(i32 0)
  %676 = load i32*, i32** %l_700, align 8, !tbaa !5
  store i32 %675, i32* %676, align 4, !tbaa !1
  %677 = sext i32 %675 to i64
  store i64 %677, i64* %l_1473, align 8, !tbaa !7
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %726

; <label>:679                                     ; preds = %671
  store i64 0, i64* @g_187, align 8, !tbaa !7
  br label %680

; <label>:680                                     ; preds = %722, %679
  %681 = load i64, i64* @g_187, align 8, !tbaa !7
  %682 = icmp ule i64 %681, 0
  br i1 %682, label %683, label %725

; <label>:683                                     ; preds = %680
  %684 = bitcast i64* %l_1474 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %684) #1
  store i64 6871063516287788574, i64* %l_1474, align 8, !tbaa !7
  store i16 0, i16* @g_262, align 2, !tbaa !10
  br label %685

; <label>:685                                     ; preds = %694, %683
  %686 = load i16, i16* @g_262, align 2, !tbaa !10
  %687 = zext i16 %686 to i32
  %688 = icmp sle i32 %687, 0
  br i1 %688, label %689, label %699

; <label>:689                                     ; preds = %685
  %690 = load i64, i64* %l_1474, align 8, !tbaa !7
  %691 = icmp ne i64 %690, 0
  br i1 %691, label %692, label %693

; <label>:692                                     ; preds = %689
  br label %699

; <label>:693                                     ; preds = %689
  br label %694

; <label>:694                                     ; preds = %693
  %695 = load i16, i16* @g_262, align 2, !tbaa !10
  %696 = zext i16 %695 to i32
  %697 = add nsw i32 %696, 1
  %698 = trunc i32 %697 to i16
  store i16 %698, i16* @g_262, align 2, !tbaa !10
  br label %685

; <label>:699                                     ; preds = %692, %685
  %700 = load i32*, i32** %l_700, align 8, !tbaa !5
  %701 = load i32, i32* %700, align 4, !tbaa !1
  %702 = sext i32 %701 to i64
  %703 = and i64 %702, 5
  %704 = trunc i64 %703 to i32
  store i32 %704, i32* %700, align 4, !tbaa !1
  store i32 0, i32* %l_881, align 4, !tbaa !1
  br label %705

; <label>:705                                     ; preds = %717, %699
  %706 = load i32, i32* %l_881, align 4, !tbaa !1
  %707 = icmp sge i32 %706, 0
  br i1 %707, label %708, label %720

; <label>:708                                     ; preds = %705
  %709 = load volatile i32*, i32** @g_1325, align 8, !tbaa !5
  %710 = load i32, i32* %709, align 4, !tbaa !1
  %711 = load i32*, i32** @g_236, align 8, !tbaa !5
  %712 = load i32, i32* %711, align 4, !tbaa !1
  %713 = or i32 %712, %710
  store i32 %713, i32* %711, align 4, !tbaa !1
  %714 = load i32**, i32*** @g_230, align 8, !tbaa !5
  %715 = load volatile i32*, i32** %714, align 8, !tbaa !5
  %716 = load i32**, i32*** @g_230, align 8, !tbaa !5
  store volatile i32* %715, i32** %716, align 8, !tbaa !5
  br label %717

; <label>:717                                     ; preds = %708
  %718 = load i32, i32* %l_881, align 4, !tbaa !1
  %719 = sub nsw i32 %718, 1
  store i32 %719, i32* %l_881, align 4, !tbaa !1
  br label %705

; <label>:720                                     ; preds = %705
  %721 = bitcast i64* %l_1474 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %721) #1
  br label %722

; <label>:722                                     ; preds = %720
  %723 = load i64, i64* @g_187, align 8, !tbaa !7
  %724 = add i64 %723, 1
  store i64 %724, i64* @g_187, align 8, !tbaa !7
  br label %680

; <label>:725                                     ; preds = %680
  br label %867

; <label>:726                                     ; preds = %671
  %727 = bitcast i32* %l_1494 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %727) #1
  store i32 0, i32* %l_1494, align 4, !tbaa !1
  %728 = bitcast i64* %l_1496 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %728) #1
  store i64 2517853513129734435, i64* %l_1496, align 8, !tbaa !7
  %729 = bitcast i32** %l_1502 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %729) #1
  store i32* %l_880, i32** %l_1502, align 8, !tbaa !5
  %730 = bitcast i32** %l_1507 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %730) #1
  store i32* @g_92, i32** %l_1507, align 8, !tbaa !5
  %731 = bitcast i32*** %l_1506 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %731) #1
  store i32** %l_1507, i32*** %l_1506, align 8, !tbaa !5
  %732 = bitcast [2 x [4 x i32***]]* %l_1505 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %732) #1
  %733 = bitcast i32***** %l_1504 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %733) #1
  %734 = getelementptr inbounds [2 x [4 x i32***]], [2 x [4 x i32***]]* %l_1505, i32 0, i64 0
  %735 = getelementptr inbounds [4 x i32***], [4 x i32***]* %734, i32 0, i64 0
  store i32**** %735, i32***** %l_1504, align 8, !tbaa !5
  %736 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %736) #1
  %737 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %737) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %738

; <label>:738                                     ; preds = %756, %726
  %739 = load i32, i32* %i6, align 4, !tbaa !1
  %740 = icmp slt i32 %739, 2
  br i1 %740, label %741, label %759

; <label>:741                                     ; preds = %738
  store i32 0, i32* %j7, align 4, !tbaa !1
  br label %742

; <label>:742                                     ; preds = %752, %741
  %743 = load i32, i32* %j7, align 4, !tbaa !1
  %744 = icmp slt i32 %743, 4
  br i1 %744, label %745, label %755

; <label>:745                                     ; preds = %742
  %746 = load i32, i32* %j7, align 4, !tbaa !1
  %747 = sext i32 %746 to i64
  %748 = load i32, i32* %i6, align 4, !tbaa !1
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [2 x [4 x i32***]], [2 x [4 x i32***]]* %l_1505, i32 0, i64 %749
  %751 = getelementptr inbounds [4 x i32***], [4 x i32***]* %750, i32 0, i64 %747
  store i32*** %l_1506, i32**** %751, align 8, !tbaa !5
  br label %752

; <label>:752                                     ; preds = %745
  %753 = load i32, i32* %j7, align 4, !tbaa !1
  %754 = add nsw i32 %753, 1
  store i32 %754, i32* %j7, align 4, !tbaa !1
  br label %742

; <label>:755                                     ; preds = %742
  br label %756

; <label>:756                                     ; preds = %755
  %757 = load i32, i32* %i6, align 4, !tbaa !1
  %758 = add nsw i32 %757, 1
  store i32 %758, i32* %i6, align 4, !tbaa !1
  br label %738

; <label>:759                                     ; preds = %738
  %760 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext -1, i32 15)
  %761 = load volatile i32, i32* @g_15, align 4, !tbaa !1
  %762 = zext i32 %761 to i64
  %763 = load i64**, i64*** @g_546, align 8, !tbaa !5
  %764 = load i64*, i64** %763, align 8, !tbaa !5
  %765 = load i64, i64* %764, align 8, !tbaa !7
  store i32* %l_1432, i32** getelementptr inbounds ([5 x i32*], [5 x i32*]* @g_1493, i32 0, i64 2), align 8, !tbaa !5
  %766 = icmp eq i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_1413, i32 0, i64 5), %l_1432
  %767 = zext i1 %766 to i32
  %768 = sext i32 %767 to i64
  %769 = load i64****, i64***** @g_544, align 8, !tbaa !5
  %770 = load i64***, i64**** %769, align 8, !tbaa !5
  %771 = load i64**, i64*** %770, align 8, !tbaa !5
  %772 = load i64*, i64** %771, align 8, !tbaa !5
  %773 = load i64, i64* %772, align 8, !tbaa !7
  %774 = call i64 @safe_add_func_uint64_t_u_u(i64 %768, i64 %773)
  %775 = trunc i64 %774 to i8
  %776 = load i8**, i8*** @g_925, align 8, !tbaa !5
  %777 = load i8*, i8** %776, align 8, !tbaa !5
  %778 = load i8, i8* %777, align 1, !tbaa !9
  %779 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %775, i8 signext %778)
  %780 = sext i8 %779 to i16
  %781 = load i32, i32* %l_1494, align 4, !tbaa !1
  %782 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %780, i32 %781)
  %783 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext %782)
  %784 = zext i16 %783 to i32
  %785 = load i16, i16* getelementptr inbounds ([1 x [7 x i16]], [1 x [7 x i16]]* @g_645, i32 0, i64 0, i64 6), align 2, !tbaa !10
  %786 = zext i16 %785 to i32
  %787 = icmp sgt i32 %784, %786
  %788 = zext i1 %787 to i32
  %789 = load i32, i32* %l_1495, align 4, !tbaa !1
  %790 = or i32 %789, %788
  store i32 %790, i32* %l_1495, align 4, !tbaa !1
  %791 = sext i32 %790 to i64
  %792 = call i64 @safe_add_func_uint64_t_u_u(i64 %765, i64 %791)
  %793 = icmp ne i64 0, %792
  %794 = zext i1 %793 to i32
  %795 = trunc i32 %794 to i16
  %796 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %795, i32 1)
  %797 = zext i16 %796 to i32
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %803, label %799

; <label>:799                                     ; preds = %759
  %800 = load i8, i8* @g_365, align 1, !tbaa !9
  %801 = zext i8 %800 to i32
  %802 = icmp ne i32 %801, 0
  br label %803

; <label>:803                                     ; preds = %799, %759
  %804 = phi i1 [ true, %759 ], [ %802, %799 ]
  %805 = zext i1 %804 to i32
  %806 = sext i32 %805 to i64
  %807 = load i64, i64* %l_1496, align 8, !tbaa !7
  %808 = xor i64 %806, %807
  %809 = icmp eq i64 %762, %808
  %810 = zext i1 %809 to i32
  %811 = trunc i32 %810 to i16
  %812 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), align 4, !tbaa !1
  %813 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %811, i32 %812)
  %814 = zext i16 %813 to i32
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %817

; <label>:816                                     ; preds = %803
  br label %817

; <label>:817                                     ; preds = %816, %803
  %818 = phi i1 [ false, %803 ], [ true, %816 ]
  %819 = zext i1 %818 to i32
  %820 = trunc i32 %819 to i8
  %821 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -71, i8 signext %820)
  %822 = sext i8 %821 to i32
  %823 = load i32**, i32*** @g_230, align 8, !tbaa !5
  %824 = load volatile i32*, i32** %823, align 8, !tbaa !5
  store i32 %822, i32* %824, align 4, !tbaa !1
  %825 = load i8, i8* @g_516, align 1, !tbaa !9
  %826 = icmp ne i8 %825, 0
  br i1 %826, label %827, label %828

; <label>:827                                     ; preds = %817
  br label %829

; <label>:828                                     ; preds = %817
  br label %829

; <label>:829                                     ; preds = %828, %827
  %830 = load i32, i32* %l_1494, align 4, !tbaa !1
  %831 = sext i32 %830 to i64
  %832 = load i32*, i32** %l_700, align 8, !tbaa !5
  %833 = load i32, i32* %832, align 4, !tbaa !1
  %834 = trunc i32 %833 to i8
  %835 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 10, i8 zeroext %834)
  %836 = zext i8 %835 to i64
  %837 = call i64 @safe_mod_func_int64_t_s_s(i64 %831, i64 %836)
  %838 = load i16*, i16** %l_1501, align 8, !tbaa !5
  %839 = icmp ne i16* %838, @g_235
  %840 = zext i1 %839 to i32
  %841 = sext i32 %840 to i64
  %842 = load i64, i64* %l_1473, align 8, !tbaa !7
  %843 = icmp uge i64 %841, %842
  %844 = zext i1 %843 to i32
  %845 = sext i32 %844 to i64
  %846 = icmp slt i64 %837, %845
  %847 = zext i1 %846 to i32
  %848 = icmp sgt i32 %847, 1
  %849 = zext i1 %848 to i32
  %850 = load i32*, i32** %l_1502, align 8, !tbaa !5
  %851 = load i32, i32* %850, align 4, !tbaa !1
  %852 = xor i32 %851, %849
  store i32 %852, i32* %850, align 4, !tbaa !1
  %853 = load i32****, i32***** %l_1504, align 8, !tbaa !5
  %854 = load volatile i32*****, i32****** @g_1508, align 8, !tbaa !5
  store i32**** %853, i32***** %854, align 8, !tbaa !5
  %855 = load i32**, i32*** @g_230, align 8, !tbaa !5
  %856 = load volatile i32*, i32** %855, align 8, !tbaa !5
  %857 = load i32**, i32*** @g_230, align 8, !tbaa !5
  store volatile i32* %856, i32** %857, align 8, !tbaa !5
  %858 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %858) #1
  %859 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %859) #1
  %860 = bitcast i32***** %l_1504 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %860) #1
  %861 = bitcast [2 x [4 x i32***]]* %l_1505 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %861) #1
  %862 = bitcast i32*** %l_1506 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %862) #1
  %863 = bitcast i32** %l_1507 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %863) #1
  %864 = bitcast i32** %l_1502 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %864) #1
  %865 = bitcast i64* %l_1496 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %865) #1
  %866 = bitcast i32* %l_1494 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %866) #1
  br label %867

; <label>:867                                     ; preds = %829, %725
  %868 = bitcast i16** %l_1501 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %868) #1
  %869 = bitcast i32* %l_1495 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %869) #1
  %870 = bitcast i64* %l_1473 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %870) #1
  br label %871

; <label>:871                                     ; preds = %867
  %872 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_1386, i32 0, i64 3), align 1, !tbaa !9
  %873 = sext i8 %872 to i32
  store i32 %873, i32* %1
  store i32 1, i32* %2
  br label %874

; <label>:874                                     ; preds = %871, %665, %536
  %875 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %875) #1
  %876 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %876) #1
  %877 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %877) #1
  %878 = bitcast i16* %l_1469 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %878) #1
  %879 = bitcast i64** %l_1454 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %879) #1
  %880 = bitcast i16** %l_1445 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %880) #1
  %881 = bitcast i64**** %l_1437 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %881) #1
  %882 = bitcast i64*** %l_1438 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %882) #1
  %883 = bitcast i32* %l_1433 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %883) #1
  %884 = bitcast i32* %l_1432 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %884) #1
  %885 = bitcast i32* %l_1361 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %885) #1
  %886 = bitcast i64* %l_1358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %886) #1
  %887 = bitcast [7 x i32]* %l_1355 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %887) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1354) #1
  %888 = bitcast i16* %l_1307 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %888) #1
  %889 = bitcast [9 x [10 x i8*]]* %l_1272 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %889) #1
  %890 = bitcast i32* %l_1236 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %890) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1131) #1
  %891 = bitcast [5 x i64]* %l_1118 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %891) #1
  %892 = bitcast [7 x i64***]* %l_1081 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %892) #1
  %893 = bitcast i32* %l_1043 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %893) #1
  %894 = bitcast i64* %l_1034 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %894) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1026) #1
  %895 = bitcast i32* %l_1011 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %895) #1
  %896 = bitcast [3 x [9 x [5 x i8]]]* %l_996 to i8*
  call void @llvm.lifetime.end(i64 135, i8* %896) #1
  %897 = bitcast i8*** %l_939 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %897) #1
  %898 = bitcast [8 x i8**]* %l_928 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %898) #1
  %899 = bitcast i32* %l_918 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %899) #1
  %900 = bitcast i32* %l_884 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %900) #1
  %901 = bitcast i32* %l_881 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %901) #1
  %902 = bitcast i32* %l_880 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %902) #1
  %903 = bitcast i32* %l_879 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %903) #1
  %904 = bitcast i32* %l_869 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %904) #1
  %905 = bitcast i32* %l_818 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %905) #1
  %906 = bitcast i32* %l_788 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %906) #1
  %907 = bitcast i64* %l_743 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %907) #1
  %908 = bitcast i32** %l_700 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %908) #1
  %909 = bitcast i32** %l_699 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %909) #1
  %910 = bitcast i32* %l_63 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %910) #1
  %911 = bitcast i16* %l_18 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %911) #1
  %912 = bitcast [7 x [4 x [2 x i8*]]]* %l_16 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %912) #1
  %913 = bitcast i32* %l_10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %913) #1
  %914 = load i32, i32* %1
  ret i32 %914
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
define internal zeroext i8 @func_4(i64 %p_5, i32 %p_6, i32 %p_7, i16 signext %p_8, i32 %p_9) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %l_702 = alloca i32*, align 8
  %l_703 = alloca [9 x [6 x i32**]], align 16
  %l_704 = alloca i32*, align 8
  %l_705 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %p_5, i64* %1, align 8, !tbaa !7
  store i32 %p_6, i32* %2, align 4, !tbaa !1
  store i32 %p_7, i32* %3, align 4, !tbaa !1
  store i16 %p_8, i16* %4, align 2, !tbaa !10
  store i32 %p_9, i32* %5, align 4, !tbaa !1
  %6 = bitcast i32** %l_702 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([3 x [1 x i32]], [3 x [1 x i32]]* @g_701, i32 0, i64 0, i64 0), i32** %l_702, align 8, !tbaa !5
  %7 = bitcast [9 x [6 x i32**]]* %l_703 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %7) #1
  %8 = getelementptr inbounds [9 x [6 x i32**]], [9 x [6 x i32**]]* %l_703, i64 0, i64 0
  %9 = getelementptr inbounds [6 x i32**], [6 x i32**]* %8, i64 0, i64 0
  store i32** %l_702, i32*** %9, !tbaa !5
  %10 = getelementptr inbounds i32**, i32*** %9, i64 1
  store i32** null, i32*** %10, !tbaa !5
  %11 = getelementptr inbounds i32**, i32*** %10, i64 1
  store i32** @g_236, i32*** %11, !tbaa !5
  %12 = getelementptr inbounds i32**, i32*** %11, i64 1
  store i32** %l_702, i32*** %12, !tbaa !5
  %13 = getelementptr inbounds i32**, i32*** %12, i64 1
  store i32** %l_702, i32*** %13, !tbaa !5
  %14 = getelementptr inbounds i32**, i32*** %13, i64 1
  store i32** @g_236, i32*** %14, !tbaa !5
  %15 = getelementptr inbounds [6 x i32**], [6 x i32**]* %8, i64 1
  %16 = getelementptr inbounds [6 x i32**], [6 x i32**]* %15, i64 0, i64 0
  store i32** %l_702, i32*** %16, !tbaa !5
  %17 = getelementptr inbounds i32**, i32*** %16, i64 1
  store i32** %l_702, i32*** %17, !tbaa !5
  %18 = getelementptr inbounds i32**, i32*** %17, i64 1
  store i32** @g_236, i32*** %18, !tbaa !5
  %19 = getelementptr inbounds i32**, i32*** %18, i64 1
  store i32** null, i32*** %19, !tbaa !5
  %20 = getelementptr inbounds i32**, i32*** %19, i64 1
  store i32** %l_702, i32*** %20, !tbaa !5
  %21 = getelementptr inbounds i32**, i32*** %20, i64 1
  store i32** %l_702, i32*** %21, !tbaa !5
  %22 = getelementptr inbounds [6 x i32**], [6 x i32**]* %15, i64 1
  %23 = getelementptr inbounds [6 x i32**], [6 x i32**]* %22, i64 0, i64 0
  store i32** %l_702, i32*** %23, !tbaa !5
  %24 = getelementptr inbounds i32**, i32*** %23, i64 1
  store i32** null, i32*** %24, !tbaa !5
  %25 = getelementptr inbounds i32**, i32*** %24, i64 1
  store i32** null, i32*** %25, !tbaa !5
  %26 = getelementptr inbounds i32**, i32*** %25, i64 1
  store i32** %l_702, i32*** %26, !tbaa !5
  %27 = getelementptr inbounds i32**, i32*** %26, i64 1
  store i32** %l_702, i32*** %27, !tbaa !5
  %28 = getelementptr inbounds i32**, i32*** %27, i64 1
  store i32** @g_236, i32*** %28, !tbaa !5
  %29 = getelementptr inbounds [6 x i32**], [6 x i32**]* %22, i64 1
  %30 = getelementptr inbounds [6 x i32**], [6 x i32**]* %29, i64 0, i64 0
  store i32** %l_702, i32*** %30, !tbaa !5
  %31 = getelementptr inbounds i32**, i32*** %30, i64 1
  store i32** %l_702, i32*** %31, !tbaa !5
  %32 = getelementptr inbounds i32**, i32*** %31, i64 1
  store i32** null, i32*** %32, !tbaa !5
  %33 = getelementptr inbounds i32**, i32*** %32, i64 1
  store i32** null, i32*** %33, !tbaa !5
  %34 = getelementptr inbounds i32**, i32*** %33, i64 1
  store i32** %l_702, i32*** %34, !tbaa !5
  %35 = getelementptr inbounds i32**, i32*** %34, i64 1
  store i32** %l_702, i32*** %35, !tbaa !5
  %36 = getelementptr inbounds [6 x i32**], [6 x i32**]* %29, i64 1
  %37 = getelementptr inbounds [6 x i32**], [6 x i32**]* %36, i64 0, i64 0
  store i32** %l_702, i32*** %37, !tbaa !5
  %38 = getelementptr inbounds i32**, i32*** %37, i64 1
  store i32** null, i32*** %38, !tbaa !5
  %39 = getelementptr inbounds i32**, i32*** %38, i64 1
  store i32** @g_236, i32*** %39, !tbaa !5
  %40 = getelementptr inbounds i32**, i32*** %39, i64 1
  store i32** %l_702, i32*** %40, !tbaa !5
  %41 = getelementptr inbounds i32**, i32*** %40, i64 1
  store i32** %l_702, i32*** %41, !tbaa !5
  %42 = getelementptr inbounds i32**, i32*** %41, i64 1
  store i32** @g_236, i32*** %42, !tbaa !5
  %43 = getelementptr inbounds [6 x i32**], [6 x i32**]* %36, i64 1
  %44 = getelementptr inbounds [6 x i32**], [6 x i32**]* %43, i64 0, i64 0
  store i32** %l_702, i32*** %44, !tbaa !5
  %45 = getelementptr inbounds i32**, i32*** %44, i64 1
  store i32** %l_702, i32*** %45, !tbaa !5
  %46 = getelementptr inbounds i32**, i32*** %45, i64 1
  store i32** @g_236, i32*** %46, !tbaa !5
  %47 = getelementptr inbounds i32**, i32*** %46, i64 1
  store i32** null, i32*** %47, !tbaa !5
  %48 = getelementptr inbounds i32**, i32*** %47, i64 1
  store i32** %l_702, i32*** %48, !tbaa !5
  %49 = getelementptr inbounds i32**, i32*** %48, i64 1
  store i32** %l_702, i32*** %49, !tbaa !5
  %50 = getelementptr inbounds [6 x i32**], [6 x i32**]* %43, i64 1
  %51 = getelementptr inbounds [6 x i32**], [6 x i32**]* %50, i64 0, i64 0
  store i32** %l_702, i32*** %51, !tbaa !5
  %52 = getelementptr inbounds i32**, i32*** %51, i64 1
  store i32** null, i32*** %52, !tbaa !5
  %53 = getelementptr inbounds i32**, i32*** %52, i64 1
  store i32** null, i32*** %53, !tbaa !5
  %54 = getelementptr inbounds i32**, i32*** %53, i64 1
  store i32** %l_702, i32*** %54, !tbaa !5
  %55 = getelementptr inbounds i32**, i32*** %54, i64 1
  store i32** %l_702, i32*** %55, !tbaa !5
  %56 = getelementptr inbounds i32**, i32*** %55, i64 1
  store i32** @g_236, i32*** %56, !tbaa !5
  %57 = getelementptr inbounds [6 x i32**], [6 x i32**]* %50, i64 1
  %58 = getelementptr inbounds [6 x i32**], [6 x i32**]* %57, i64 0, i64 0
  store i32** %l_702, i32*** %58, !tbaa !5
  %59 = getelementptr inbounds i32**, i32*** %58, i64 1
  store i32** %l_702, i32*** %59, !tbaa !5
  %60 = getelementptr inbounds i32**, i32*** %59, i64 1
  store i32** null, i32*** %60, !tbaa !5
  %61 = getelementptr inbounds i32**, i32*** %60, i64 1
  store i32** null, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  store i32** %l_702, i32*** %62, !tbaa !5
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  store i32** %l_702, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds [6 x i32**], [6 x i32**]* %57, i64 1
  %65 = getelementptr inbounds [6 x i32**], [6 x i32**]* %64, i64 0, i64 0
  store i32** %l_702, i32*** %65, !tbaa !5
  %66 = getelementptr inbounds i32**, i32*** %65, i64 1
  store i32** null, i32*** %66, !tbaa !5
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  store i32** @g_236, i32*** %67, !tbaa !5
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  store i32** %l_702, i32*** %68, !tbaa !5
  %69 = getelementptr inbounds i32**, i32*** %68, i64 1
  store i32** %l_702, i32*** %69, !tbaa !5
  %70 = getelementptr inbounds i32**, i32*** %69, i64 1
  store i32** @g_236, i32*** %70, !tbaa !5
  %71 = bitcast i32** %l_704 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  store volatile i32* getelementptr inbounds ([3 x [1 x i32]], [3 x [1 x i32]]* @g_701, i32 0, i64 2, i64 0), i32** %l_704, align 8, !tbaa !5
  %72 = bitcast i16* %l_705 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %72) #1
  store i16 -22259, i16* %l_705, align 2, !tbaa !10
  %73 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32*, i32** %l_702, align 8, !tbaa !5
  store i32* %75, i32** @g_236, align 8, !tbaa !5
  %76 = load i32**, i32*** @g_230, align 8, !tbaa !5
  store volatile i32* %75, i32** %76, align 8, !tbaa !5
  %77 = load i32**, i32*** @g_230, align 8, !tbaa !5
  %78 = load volatile i32*, i32** %77, align 8, !tbaa !5
  store volatile i32* %78, i32** %l_704, align 8, !tbaa !5
  %79 = load i16, i16* %l_705, align 2, !tbaa !10
  %80 = add i16 %79, 1
  store i16 %80, i16* %l_705, align 2, !tbaa !10
  %81 = load i32*, i32** %l_702, align 8, !tbaa !5
  %82 = load i32, i32* %81, align 4, !tbaa !1
  %83 = trunc i32 %82 to i8
  %84 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i16* %l_705 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %86) #1
  %87 = bitcast i32** %l_704 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast [9 x [6 x i32**]]* %l_703 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %88) #1
  %89 = bitcast i32** %l_702 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  ret i8 %83
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
define internal i32 @func_21(i8* %p_22) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %l_382 = alloca i32**, align 8
  %l_383 = alloca i32, align 4
  %l_388 = alloca [9 x i32*], align 16
  %l_393 = alloca [5 x i64*], align 16
  %l_392 = alloca i64**, align 8
  %l_391 = alloca i64***, align 8
  %l_532 = alloca [5 x i16*], align 16
  %l_531 = alloca i16**, align 8
  %l_553 = alloca i32, align 4
  %l_584 = alloca i32, align 4
  %l_598 = alloca i32, align 4
  %l_599 = alloca [10 x [3 x [3 x i32]]], align 16
  %l_647 = alloca i16, align 2
  %l_653 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_395 = alloca i32, align 4
  %l_436 = alloca i32, align 4
  %l_487 = alloca i16*, align 8
  %l_510 = alloca i32, align 4
  %l_517 = alloca i32, align 4
  %l_552 = alloca i32, align 4
  %l_602 = alloca i32, align 4
  %l_603 = alloca i32, align 4
  %l_605 = alloca i32, align 4
  %l_640 = alloca [5 x i64*], align 16
  %i1 = alloca i32, align 4
  %l_394 = alloca i64****, align 8
  %l_404 = alloca i8, align 1
  %l_427 = alloca i32, align 4
  %l_437 = alloca i32, align 4
  %l_465 = alloca i16*, align 8
  %l_483 = alloca i16, align 2
  %l_526 = alloca i32*, align 8
  %l_588 = alloca i32, align 4
  %l_606 = alloca i32, align 4
  %l_607 = alloca i32, align 4
  %l_608 = alloca i32, align 4
  %l_615 = alloca i16, align 2
  %l_639 = alloca i64*, align 8
  %l_659 = alloca i32*, align 8
  %l_411 = alloca [5 x [9 x [4 x i64***]]], align 16
  %l_413 = alloca i32, align 4
  %l_429 = alloca i32**, align 8
  %l_435 = alloca [8 x [7 x i8*]], align 16
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %l_412 = alloca i32, align 4
  %l_414 = alloca i32*, align 8
  %l_428 = alloca i32**, align 8
  %i5 = alloca i32, align 4
  %j6 = alloca i32, align 4
  %3 = alloca i32
  %l_440 = alloca i32, align 4
  %l_447 = alloca i32*, align 8
  %l_457 = alloca i16*, align 8
  %l_464 = alloca i16*, align 8
  %l_466 = alloca [6 x [8 x i16*]], align 16
  %l_484 = alloca i32, align 4
  %l_512 = alloca [6 x [4 x i32**]], align 16
  %l_539 = alloca i8*, align 8
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %l_463 = alloca i16**, align 8
  %l_467 = alloca i32*, align 8
  %l_488 = alloca i16**, align 8
  %l_489 = alloca i16**, align 8
  %l_497 = alloca i8*, align 8
  %l_508 = alloca [5 x [7 x i64*]], align 16
  %l_513 = alloca i64, align 8
  %l_514 = alloca i8*, align 8
  %l_515 = alloca i8*, align 8
  %l_527 = alloca i32, align 4
  %l_528 = alloca i32, align 4
  %i9 = alloca i32, align 4
  %j10 = alloca i32, align 4
  %l_554 = alloca i32*, align 8
  %l_555 = alloca i32*, align 8
  %l_556 = alloca i8, align 1
  %l_591 = alloca i32*, align 8
  %l_592 = alloca i32, align 4
  %l_593 = alloca [3 x i32], align 4
  %l_609 = alloca [1 x [8 x [4 x i64]]], align 16
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  %l_572 = alloca [8 x i8], align 1
  %l_585 = alloca i32, align 4
  %l_589 = alloca i32*, align 8
  %l_590 = alloca i32*, align 8
  %i15 = alloca i32, align 4
  %l_594 = alloca i32, align 4
  %l_597 = alloca [4 x i64], align 16
  %l_600 = alloca i32, align 4
  %l_601 = alloca [4 x i32], align 16
  %l_604 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %l_614 = alloca i64, align 8
  %l_617 = alloca [10 x [8 x [3 x i32]]], align 16
  %l_642 = alloca i16*, align 8
  %l_644 = alloca i16*, align 8
  %l_646 = alloca i8*, align 8
  %l_648 = alloca i8*, align 8
  %l_649 = alloca i8*, align 8
  %l_651 = alloca [1 x [7 x i32]], align 16
  %l_652 = alloca [7 x [8 x i16*]], align 16
  %l_654 = alloca i32, align 4
  %l_655 = alloca i32*, align 8
  %l_656 = alloca i32*, align 8
  %i20 = alloca i32, align 4
  %j21 = alloca i32, align 4
  %k22 = alloca i32, align 4
  %l_671 = alloca i16, align 2
  %l_690 = alloca i32*, align 8
  %l_665 = alloca i64, align 8
  %l_666 = alloca i32*, align 8
  %l_667 = alloca [2 x i32*], align 16
  %l_668 = alloca [1 x [1 x i32]], align 4
  %i24 = alloca i32, align 4
  %j25 = alloca i32, align 4
  %l_691 = alloca i64, align 8
  %l_692 = alloca i32*, align 8
  %l_693 = alloca i32*, align 8
  %l_694 = alloca i32*, align 8
  %l_695 = alloca [9 x [2 x [5 x i32*]]], align 16
  %l_696 = alloca i8, align 1
  %i28 = alloca i32, align 4
  %j29 = alloca i32, align 4
  %k30 = alloca i32, align 4
  store i8* %p_22, i8** %2, align 8, !tbaa !5
  %4 = bitcast i32*** %l_382 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32** null, i32*** %l_382, align 8, !tbaa !5
  %5 = bitcast i32* %l_383 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 2099183527, i32* %l_383, align 4, !tbaa !1
  %6 = bitcast [9 x i32*]* %l_388 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #1
  %7 = bitcast [9 x i32*]* %l_388 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([9 x i32*]* @func_21.l_388 to i8*), i64 72, i32 16, i1 false)
  %8 = bitcast [5 x i64*]* %l_393 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast [5 x i64*]* %l_393 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 40, i32 16, i1 false)
  %10 = bitcast i8* %9 to [5 x i64*]*
  %11 = getelementptr [5 x i64*], [5 x i64*]* %10, i32 0, i32 0
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64** %11
  %12 = getelementptr [5 x i64*], [5 x i64*]* %10, i32 0, i32 1
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64** %12
  %13 = getelementptr [5 x i64*], [5 x i64*]* %10, i32 0, i32 2
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64** %13
  %14 = getelementptr [5 x i64*], [5 x i64*]* %10, i32 0, i32 3
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64** %14
  %15 = getelementptr [5 x i64*], [5 x i64*]* %10, i32 0, i32 4
  store i64* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x [1 x [1 x i64]]]* @g_84 to i8*), i64 16) to i64*), i64** %15
  %16 = bitcast i64*** %l_392 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = getelementptr inbounds [5 x i64*], [5 x i64*]* %l_393, i32 0, i64 2
  store i64** %17, i64*** %l_392, align 8, !tbaa !5
  %18 = bitcast i64**** %l_391 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64*** %l_392, i64**** %l_391, align 8, !tbaa !5
  %19 = bitcast [5 x i16*]* %l_532 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %19) #1
  %20 = bitcast [5 x i16*]* %l_532 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast ([5 x i16*]* @func_21.l_532 to i8*), i64 40, i32 16, i1 false)
  %21 = bitcast i16*** %l_531 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = getelementptr inbounds [5 x i16*], [5 x i16*]* %l_532, i32 0, i64 2
  store i16** %22, i16*** %l_531, align 8, !tbaa !5
  %23 = bitcast i32* %l_553 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 1876876967, i32* %l_553, align 4, !tbaa !1
  %24 = bitcast i32* %l_584 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 434504842, i32* %l_584, align 4, !tbaa !1
  %25 = bitcast i32* %l_598 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 1704199709, i32* %l_598, align 4, !tbaa !1
  %26 = bitcast [10 x [3 x [3 x i32]]]* %l_599 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %26) #1
  %27 = bitcast [10 x [3 x [3 x i32]]]* %l_599 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([10 x [3 x [3 x i32]]]* @func_21.l_599 to i8*), i64 360, i32 16, i1 false)
  %28 = bitcast i16* %l_647 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %28) #1
  store i16 -6, i16* %l_647, align 2, !tbaa !10
  %29 = bitcast i16* %l_653 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  store i16 4, i16* %l_653, align 2, !tbaa !10
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i64, i64* @g_187, align 8, !tbaa !7
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %0
  %36 = load i32**, i32*** %l_382, align 8, !tbaa !5
  %37 = icmp ne i32** %36, @g_236
  br label %38

; <label>:38                                      ; preds = %35, %0
  %39 = phi i1 [ true, %0 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %l_383, align 4, !tbaa !1
  %43 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %41, i32 %42)
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %1822

; <label>:46                                      ; preds = %38
  %47 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 1, i64 0, i64 0), align 8, !tbaa !7
  br i1 true, label %57, label %48

; <label>:48                                      ; preds = %46
  %49 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_388, i32 0, i64 6
  %50 = load i32*, i32** %49, align 8, !tbaa !5
  %51 = icmp ne i32* null, %50
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %55 = call i64 @safe_sub_func_int64_t_s_s(i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br label %57

; <label>:57                                      ; preds = %48, %46
  %58 = phi i1 [ true, %46 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @g_92, align 4, !tbaa !1
  %61 = zext i32 %60 to i64
  %62 = call i64 @safe_div_func_int64_t_s_s(i64 8564754390934594654, i64 %61)
  %63 = icmp slt i64 0, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %l_383, align 4, !tbaa !1
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 0, %66
  br i1 %67, label %68, label %1822

; <label>:68                                      ; preds = %57
  %69 = bitcast i32* %l_395 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  store i32 1931746887, i32* %l_395, align 4, !tbaa !1
  %70 = bitcast i32* %l_436 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  store i32 1076872359, i32* %l_436, align 4, !tbaa !1
  %71 = bitcast i16** %l_487 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %71) #1
  store i16* @g_262, i16** %l_487, align 8, !tbaa !5
  %72 = bitcast i32* %l_510 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 0, i32* %l_510, align 4, !tbaa !1
  %73 = bitcast i32* %l_517 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  store i32 -1, i32* %l_517, align 4, !tbaa !1
  %74 = bitcast i32* %l_552 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 0, i32* %l_552, align 4, !tbaa !1
  %75 = bitcast i32* %l_602 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  store i32 0, i32* %l_602, align 4, !tbaa !1
  %76 = bitcast i32* %l_603 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  store i32 0, i32* %l_603, align 4, !tbaa !1
  %77 = bitcast i32* %l_605 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  store i32 6, i32* %l_605, align 4, !tbaa !1
  %78 = bitcast [5 x i64*]* %l_640 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %78) #1
  %79 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %80

; <label>:80                                      ; preds = %87, %68
  %81 = load i32, i32* %i1, align 4, !tbaa !1
  %82 = icmp slt i32 %81, 5
  br i1 %82, label %83, label %90

; <label>:83                                      ; preds = %80
  %84 = load i32, i32* %i1, align 4, !tbaa !1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x i64*], [5 x i64*]* %l_640, i32 0, i64 %85
  store i64* getelementptr inbounds ([7 x i64], [7 x i64]* @g_641, i32 0, i64 5), i64** %86, align 8, !tbaa !5
  br label %87

; <label>:87                                      ; preds = %83
  %88 = load i32, i32* %i1, align 4, !tbaa !1
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %i1, align 4, !tbaa !1
  br label %80

; <label>:90                                      ; preds = %80
  store i16 0, i16* @g_235, align 2, !tbaa !10
  br label %91

; <label>:91                                      ; preds = %1803, %90
  %92 = load i16, i16* @g_235, align 2, !tbaa !10
  %93 = zext i16 %92 to i32
  %94 = icmp ne i32 %93, 28
  br i1 %94, label %95, label %1808

; <label>:95                                      ; preds = %91
  %96 = bitcast i64***** %l_394 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  store i64**** %l_391, i64***** %l_394, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_404) #1
  store i8 -1, i8* %l_404, align 1, !tbaa !9
  %97 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  store i32 4, i32* %l_427, align 4, !tbaa !1
  %98 = bitcast i32* %l_437 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #1
  store i32 7, i32* %l_437, align 4, !tbaa !1
  %99 = bitcast i16** %l_465 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  store i16* @g_378, i16** %l_465, align 8, !tbaa !5
  %100 = bitcast i16* %l_483 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %100) #1
  store i16 8744, i16* %l_483, align 2, !tbaa !10
  %101 = bitcast i32** %l_526 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  store i32* null, i32** %l_526, align 8, !tbaa !5
  %102 = bitcast i32* %l_588 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  store i32 -1155728406, i32* %l_588, align 4, !tbaa !1
  %103 = bitcast i32* %l_606 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  store i32 1402987485, i32* %l_606, align 4, !tbaa !1
  %104 = bitcast i32* %l_607 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #1
  store i32 0, i32* %l_607, align 4, !tbaa !1
  %105 = bitcast i32* %l_608 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  store i32 -1, i32* %l_608, align 4, !tbaa !1
  %106 = bitcast i16* %l_615 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %106) #1
  store i16 -6175, i16* %l_615, align 2, !tbaa !10
  %107 = bitcast i64** %l_639 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  store i64* @g_509, i64** %l_639, align 8, !tbaa !5
  %108 = bitcast i32** %l_659 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  store i32* %l_517, i32** %l_659, align 8, !tbaa !5
  %109 = load i64***, i64**** %l_391, align 8, !tbaa !5
  %110 = load i64****, i64***** %l_394, align 8, !tbaa !5
  store i64*** %109, i64**** %110, align 8, !tbaa !5
  %111 = load i32, i32* %l_395, align 4, !tbaa !1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %561

; <label>:113                                     ; preds = %95
  %114 = bitcast [5 x [9 x [4 x i64***]]]* %l_411 to i8*
  call void @llvm.lifetime.start(i64 1440, i8* %114) #1
  %115 = getelementptr inbounds [5 x [9 x [4 x i64***]]], [5 x [9 x [4 x i64***]]]* %l_411, i64 0, i64 0
  %116 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %115, i64 0, i64 0
  %117 = getelementptr inbounds [4 x i64***], [4 x i64***]* %116, i64 0, i64 0
  store i64*** %l_392, i64**** %117, !tbaa !5
  %118 = getelementptr inbounds i64***, i64**** %117, i64 1
  store i64*** %l_392, i64**** %118, !tbaa !5
  %119 = getelementptr inbounds i64***, i64**** %118, i64 1
  store i64*** %l_392, i64**** %119, !tbaa !5
  %120 = getelementptr inbounds i64***, i64**** %119, i64 1
  store i64*** null, i64**** %120, !tbaa !5
  %121 = getelementptr inbounds [4 x i64***], [4 x i64***]* %116, i64 1
  %122 = getelementptr inbounds [4 x i64***], [4 x i64***]* %121, i64 0, i64 0
  store i64*** null, i64**** %122, !tbaa !5
  %123 = getelementptr inbounds i64***, i64**** %122, i64 1
  store i64*** %l_392, i64**** %123, !tbaa !5
  %124 = getelementptr inbounds i64***, i64**** %123, i64 1
  store i64*** %l_392, i64**** %124, !tbaa !5
  %125 = getelementptr inbounds i64***, i64**** %124, i64 1
  store i64*** null, i64**** %125, !tbaa !5
  %126 = getelementptr inbounds [4 x i64***], [4 x i64***]* %121, i64 1
  %127 = getelementptr inbounds [4 x i64***], [4 x i64***]* %126, i64 0, i64 0
  store i64*** %l_392, i64**** %127, !tbaa !5
  %128 = getelementptr inbounds i64***, i64**** %127, i64 1
  store i64*** %l_392, i64**** %128, !tbaa !5
  %129 = getelementptr inbounds i64***, i64**** %128, i64 1
  store i64*** %l_392, i64**** %129, !tbaa !5
  %130 = getelementptr inbounds i64***, i64**** %129, i64 1
  store i64*** %l_392, i64**** %130, !tbaa !5
  %131 = getelementptr inbounds [4 x i64***], [4 x i64***]* %126, i64 1
  %132 = getelementptr inbounds [4 x i64***], [4 x i64***]* %131, i64 0, i64 0
  store i64*** null, i64**** %132, !tbaa !5
  %133 = getelementptr inbounds i64***, i64**** %132, i64 1
  store i64*** %l_392, i64**** %133, !tbaa !5
  %134 = getelementptr inbounds i64***, i64**** %133, i64 1
  store i64*** %l_392, i64**** %134, !tbaa !5
  %135 = getelementptr inbounds i64***, i64**** %134, i64 1
  store i64*** null, i64**** %135, !tbaa !5
  %136 = getelementptr inbounds [4 x i64***], [4 x i64***]* %131, i64 1
  %137 = getelementptr inbounds [4 x i64***], [4 x i64***]* %136, i64 0, i64 0
  store i64*** %l_392, i64**** %137, !tbaa !5
  %138 = getelementptr inbounds i64***, i64**** %137, i64 1
  store i64*** %l_392, i64**** %138, !tbaa !5
  %139 = getelementptr inbounds i64***, i64**** %138, i64 1
  store i64*** %l_392, i64**** %139, !tbaa !5
  %140 = getelementptr inbounds i64***, i64**** %139, i64 1
  store i64*** null, i64**** %140, !tbaa !5
  %141 = getelementptr inbounds [4 x i64***], [4 x i64***]* %136, i64 1
  %142 = getelementptr inbounds [4 x i64***], [4 x i64***]* %141, i64 0, i64 0
  store i64*** %l_392, i64**** %142, !tbaa !5
  %143 = getelementptr inbounds i64***, i64**** %142, i64 1
  store i64*** %l_392, i64**** %143, !tbaa !5
  %144 = getelementptr inbounds i64***, i64**** %143, i64 1
  store i64*** %l_392, i64**** %144, !tbaa !5
  %145 = getelementptr inbounds i64***, i64**** %144, i64 1
  store i64*** %l_392, i64**** %145, !tbaa !5
  %146 = getelementptr inbounds [4 x i64***], [4 x i64***]* %141, i64 1
  %147 = getelementptr inbounds [4 x i64***], [4 x i64***]* %146, i64 0, i64 0
  store i64*** null, i64**** %147, !tbaa !5
  %148 = getelementptr inbounds i64***, i64**** %147, i64 1
  store i64*** null, i64**** %148, !tbaa !5
  %149 = getelementptr inbounds i64***, i64**** %148, i64 1
  store i64*** %l_392, i64**** %149, !tbaa !5
  %150 = getelementptr inbounds i64***, i64**** %149, i64 1
  store i64*** %l_392, i64**** %150, !tbaa !5
  %151 = getelementptr inbounds [4 x i64***], [4 x i64***]* %146, i64 1
  %152 = getelementptr inbounds [4 x i64***], [4 x i64***]* %151, i64 0, i64 0
  store i64*** %l_392, i64**** %152, !tbaa !5
  %153 = getelementptr inbounds i64***, i64**** %152, i64 1
  store i64*** %l_392, i64**** %153, !tbaa !5
  %154 = getelementptr inbounds i64***, i64**** %153, i64 1
  store i64*** %l_392, i64**** %154, !tbaa !5
  %155 = getelementptr inbounds i64***, i64**** %154, i64 1
  store i64*** null, i64**** %155, !tbaa !5
  %156 = getelementptr inbounds [4 x i64***], [4 x i64***]* %151, i64 1
  %157 = getelementptr inbounds [4 x i64***], [4 x i64***]* %156, i64 0, i64 0
  store i64*** %l_392, i64**** %157, !tbaa !5
  %158 = getelementptr inbounds i64***, i64**** %157, i64 1
  store i64*** null, i64**** %158, !tbaa !5
  %159 = getelementptr inbounds i64***, i64**** %158, i64 1
  store i64*** %l_392, i64**** %159, !tbaa !5
  %160 = getelementptr inbounds i64***, i64**** %159, i64 1
  store i64*** %l_392, i64**** %160, !tbaa !5
  %161 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %115, i64 1
  %162 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %161, i64 0, i64 0
  %163 = getelementptr inbounds [4 x i64***], [4 x i64***]* %162, i64 0, i64 0
  store i64*** %l_392, i64**** %163, !tbaa !5
  %164 = getelementptr inbounds i64***, i64**** %163, i64 1
  store i64*** %l_392, i64**** %164, !tbaa !5
  %165 = getelementptr inbounds i64***, i64**** %164, i64 1
  store i64*** %l_392, i64**** %165, !tbaa !5
  %166 = getelementptr inbounds i64***, i64**** %165, i64 1
  store i64*** %l_392, i64**** %166, !tbaa !5
  %167 = getelementptr inbounds [4 x i64***], [4 x i64***]* %162, i64 1
  %168 = getelementptr inbounds [4 x i64***], [4 x i64***]* %167, i64 0, i64 0
  store i64*** null, i64**** %168, !tbaa !5
  %169 = getelementptr inbounds i64***, i64**** %168, i64 1
  store i64*** %l_392, i64**** %169, !tbaa !5
  %170 = getelementptr inbounds i64***, i64**** %169, i64 1
  store i64*** %l_392, i64**** %170, !tbaa !5
  %171 = getelementptr inbounds i64***, i64**** %170, i64 1
  store i64*** null, i64**** %171, !tbaa !5
  %172 = getelementptr inbounds [4 x i64***], [4 x i64***]* %167, i64 1
  %173 = getelementptr inbounds [4 x i64***], [4 x i64***]* %172, i64 0, i64 0
  store i64*** %l_392, i64**** %173, !tbaa !5
  %174 = getelementptr inbounds i64***, i64**** %173, i64 1
  store i64*** null, i64**** %174, !tbaa !5
  %175 = getelementptr inbounds i64***, i64**** %174, i64 1
  store i64*** %l_392, i64**** %175, !tbaa !5
  %176 = getelementptr inbounds i64***, i64**** %175, i64 1
  store i64*** %l_392, i64**** %176, !tbaa !5
  %177 = getelementptr inbounds [4 x i64***], [4 x i64***]* %172, i64 1
  %178 = getelementptr inbounds [4 x i64***], [4 x i64***]* %177, i64 0, i64 0
  store i64*** %l_392, i64**** %178, !tbaa !5
  %179 = getelementptr inbounds i64***, i64**** %178, i64 1
  store i64*** %l_392, i64**** %179, !tbaa !5
  %180 = getelementptr inbounds i64***, i64**** %179, i64 1
  store i64*** %l_392, i64**** %180, !tbaa !5
  %181 = getelementptr inbounds i64***, i64**** %180, i64 1
  store i64*** %l_392, i64**** %181, !tbaa !5
  %182 = getelementptr inbounds [4 x i64***], [4 x i64***]* %177, i64 1
  %183 = getelementptr inbounds [4 x i64***], [4 x i64***]* %182, i64 0, i64 0
  store i64*** null, i64**** %183, !tbaa !5
  %184 = getelementptr inbounds i64***, i64**** %183, i64 1
  store i64*** %l_392, i64**** %184, !tbaa !5
  %185 = getelementptr inbounds i64***, i64**** %184, i64 1
  store i64*** %l_392, i64**** %185, !tbaa !5
  %186 = getelementptr inbounds i64***, i64**** %185, i64 1
  store i64*** %l_392, i64**** %186, !tbaa !5
  %187 = getelementptr inbounds [4 x i64***], [4 x i64***]* %182, i64 1
  %188 = getelementptr inbounds [4 x i64***], [4 x i64***]* %187, i64 0, i64 0
  store i64*** %l_392, i64**** %188, !tbaa !5
  %189 = getelementptr inbounds i64***, i64**** %188, i64 1
  store i64*** %l_392, i64**** %189, !tbaa !5
  %190 = getelementptr inbounds i64***, i64**** %189, i64 1
  store i64*** %l_392, i64**** %190, !tbaa !5
  %191 = getelementptr inbounds i64***, i64**** %190, i64 1
  store i64*** %l_392, i64**** %191, !tbaa !5
  %192 = getelementptr inbounds [4 x i64***], [4 x i64***]* %187, i64 1
  %193 = bitcast [4 x i64***]* %192 to i8*
  call void @llvm.memset.p0i8.i64(i8* %193, i8 0, i64 32, i32 8, i1 false)
  %194 = getelementptr inbounds [4 x i64***], [4 x i64***]* %192, i64 0, i64 0
  %195 = getelementptr inbounds i64***, i64**** %194, i64 1
  %196 = getelementptr inbounds i64***, i64**** %195, i64 1
  store i64*** %l_392, i64**** %196, !tbaa !5
  %197 = getelementptr inbounds i64***, i64**** %196, i64 1
  %198 = getelementptr inbounds [4 x i64***], [4 x i64***]* %192, i64 1
  %199 = getelementptr inbounds [4 x i64***], [4 x i64***]* %198, i64 0, i64 0
  store i64*** %l_392, i64**** %199, !tbaa !5
  %200 = getelementptr inbounds i64***, i64**** %199, i64 1
  store i64*** %l_392, i64**** %200, !tbaa !5
  %201 = getelementptr inbounds i64***, i64**** %200, i64 1
  store i64*** %l_392, i64**** %201, !tbaa !5
  %202 = getelementptr inbounds i64***, i64**** %201, i64 1
  store i64*** %l_392, i64**** %202, !tbaa !5
  %203 = getelementptr inbounds [4 x i64***], [4 x i64***]* %198, i64 1
  %204 = getelementptr inbounds [4 x i64***], [4 x i64***]* %203, i64 0, i64 0
  store i64*** %l_392, i64**** %204, !tbaa !5
  %205 = getelementptr inbounds i64***, i64**** %204, i64 1
  store i64*** %l_392, i64**** %205, !tbaa !5
  %206 = getelementptr inbounds i64***, i64**** %205, i64 1
  store i64*** %l_392, i64**** %206, !tbaa !5
  %207 = getelementptr inbounds i64***, i64**** %206, i64 1
  store i64*** %l_392, i64**** %207, !tbaa !5
  %208 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %161, i64 1
  %209 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %208, i64 0, i64 0
  %210 = getelementptr inbounds [4 x i64***], [4 x i64***]* %209, i64 0, i64 0
  store i64*** %l_392, i64**** %210, !tbaa !5
  %211 = getelementptr inbounds i64***, i64**** %210, i64 1
  store i64*** null, i64**** %211, !tbaa !5
  %212 = getelementptr inbounds i64***, i64**** %211, i64 1
  store i64*** %l_392, i64**** %212, !tbaa !5
  %213 = getelementptr inbounds i64***, i64**** %212, i64 1
  store i64*** null, i64**** %213, !tbaa !5
  %214 = getelementptr inbounds [4 x i64***], [4 x i64***]* %209, i64 1
  %215 = getelementptr inbounds [4 x i64***], [4 x i64***]* %214, i64 0, i64 0
  store i64*** %l_392, i64**** %215, !tbaa !5
  %216 = getelementptr inbounds i64***, i64**** %215, i64 1
  store i64*** %l_392, i64**** %216, !tbaa !5
  %217 = getelementptr inbounds i64***, i64**** %216, i64 1
  store i64*** %l_392, i64**** %217, !tbaa !5
  %218 = getelementptr inbounds i64***, i64**** %217, i64 1
  store i64*** %l_392, i64**** %218, !tbaa !5
  %219 = getelementptr inbounds [4 x i64***], [4 x i64***]* %214, i64 1
  %220 = getelementptr inbounds [4 x i64***], [4 x i64***]* %219, i64 0, i64 0
  store i64*** %l_392, i64**** %220, !tbaa !5
  %221 = getelementptr inbounds i64***, i64**** %220, i64 1
  store i64*** null, i64**** %221, !tbaa !5
  %222 = getelementptr inbounds i64***, i64**** %221, i64 1
  store i64*** %l_392, i64**** %222, !tbaa !5
  %223 = getelementptr inbounds i64***, i64**** %222, i64 1
  store i64*** %l_392, i64**** %223, !tbaa !5
  %224 = getelementptr inbounds [4 x i64***], [4 x i64***]* %219, i64 1
  %225 = getelementptr inbounds [4 x i64***], [4 x i64***]* %224, i64 0, i64 0
  store i64*** %l_392, i64**** %225, !tbaa !5
  %226 = getelementptr inbounds i64***, i64**** %225, i64 1
  store i64*** %l_392, i64**** %226, !tbaa !5
  %227 = getelementptr inbounds i64***, i64**** %226, i64 1
  store i64*** %l_392, i64**** %227, !tbaa !5
  %228 = getelementptr inbounds i64***, i64**** %227, i64 1
  store i64*** null, i64**** %228, !tbaa !5
  %229 = getelementptr inbounds [4 x i64***], [4 x i64***]* %224, i64 1
  %230 = getelementptr inbounds [4 x i64***], [4 x i64***]* %229, i64 0, i64 0
  store i64*** null, i64**** %230, !tbaa !5
  %231 = getelementptr inbounds i64***, i64**** %230, i64 1
  store i64*** %l_392, i64**** %231, !tbaa !5
  %232 = getelementptr inbounds i64***, i64**** %231, i64 1
  store i64*** %l_392, i64**** %232, !tbaa !5
  %233 = getelementptr inbounds i64***, i64**** %232, i64 1
  store i64*** null, i64**** %233, !tbaa !5
  %234 = getelementptr inbounds [4 x i64***], [4 x i64***]* %229, i64 1
  %235 = getelementptr inbounds [4 x i64***], [4 x i64***]* %234, i64 0, i64 0
  store i64*** %l_392, i64**** %235, !tbaa !5
  %236 = getelementptr inbounds i64***, i64**** %235, i64 1
  store i64*** %l_392, i64**** %236, !tbaa !5
  %237 = getelementptr inbounds i64***, i64**** %236, i64 1
  store i64*** %l_392, i64**** %237, !tbaa !5
  %238 = getelementptr inbounds i64***, i64**** %237, i64 1
  store i64*** %l_392, i64**** %238, !tbaa !5
  %239 = getelementptr inbounds [4 x i64***], [4 x i64***]* %234, i64 1
  %240 = getelementptr inbounds [4 x i64***], [4 x i64***]* %239, i64 0, i64 0
  store i64*** null, i64**** %240, !tbaa !5
  %241 = getelementptr inbounds i64***, i64**** %240, i64 1
  store i64*** %l_392, i64**** %241, !tbaa !5
  %242 = getelementptr inbounds i64***, i64**** %241, i64 1
  store i64*** %l_392, i64**** %242, !tbaa !5
  %243 = getelementptr inbounds i64***, i64**** %242, i64 1
  store i64*** null, i64**** %243, !tbaa !5
  %244 = getelementptr inbounds [4 x i64***], [4 x i64***]* %239, i64 1
  %245 = getelementptr inbounds [4 x i64***], [4 x i64***]* %244, i64 0, i64 0
  store i64*** %l_392, i64**** %245, !tbaa !5
  %246 = getelementptr inbounds i64***, i64**** %245, i64 1
  store i64*** %l_392, i64**** %246, !tbaa !5
  %247 = getelementptr inbounds i64***, i64**** %246, i64 1
  store i64*** %l_392, i64**** %247, !tbaa !5
  %248 = getelementptr inbounds i64***, i64**** %247, i64 1
  store i64*** null, i64**** %248, !tbaa !5
  %249 = getelementptr inbounds [4 x i64***], [4 x i64***]* %244, i64 1
  %250 = getelementptr inbounds [4 x i64***], [4 x i64***]* %249, i64 0, i64 0
  store i64*** %l_392, i64**** %250, !tbaa !5
  %251 = getelementptr inbounds i64***, i64**** %250, i64 1
  store i64*** %l_392, i64**** %251, !tbaa !5
  %252 = getelementptr inbounds i64***, i64**** %251, i64 1
  store i64*** %l_392, i64**** %252, !tbaa !5
  %253 = getelementptr inbounds i64***, i64**** %252, i64 1
  store i64*** %l_392, i64**** %253, !tbaa !5
  %254 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %208, i64 1
  %255 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %254, i64 0, i64 0
  %256 = getelementptr inbounds [4 x i64***], [4 x i64***]* %255, i64 0, i64 0
  store i64*** null, i64**** %256, !tbaa !5
  %257 = getelementptr inbounds i64***, i64**** %256, i64 1
  store i64*** null, i64**** %257, !tbaa !5
  %258 = getelementptr inbounds i64***, i64**** %257, i64 1
  store i64*** %l_392, i64**** %258, !tbaa !5
  %259 = getelementptr inbounds i64***, i64**** %258, i64 1
  store i64*** %l_392, i64**** %259, !tbaa !5
  %260 = getelementptr inbounds [4 x i64***], [4 x i64***]* %255, i64 1
  %261 = getelementptr inbounds [4 x i64***], [4 x i64***]* %260, i64 0, i64 0
  store i64*** %l_392, i64**** %261, !tbaa !5
  %262 = getelementptr inbounds i64***, i64**** %261, i64 1
  store i64*** %l_392, i64**** %262, !tbaa !5
  %263 = getelementptr inbounds i64***, i64**** %262, i64 1
  store i64*** %l_392, i64**** %263, !tbaa !5
  %264 = getelementptr inbounds i64***, i64**** %263, i64 1
  store i64*** null, i64**** %264, !tbaa !5
  %265 = getelementptr inbounds [4 x i64***], [4 x i64***]* %260, i64 1
  %266 = getelementptr inbounds [4 x i64***], [4 x i64***]* %265, i64 0, i64 0
  store i64*** %l_392, i64**** %266, !tbaa !5
  %267 = getelementptr inbounds i64***, i64**** %266, i64 1
  store i64*** null, i64**** %267, !tbaa !5
  %268 = getelementptr inbounds i64***, i64**** %267, i64 1
  store i64*** %l_392, i64**** %268, !tbaa !5
  %269 = getelementptr inbounds i64***, i64**** %268, i64 1
  store i64*** %l_392, i64**** %269, !tbaa !5
  %270 = getelementptr inbounds [4 x i64***], [4 x i64***]* %265, i64 1
  %271 = getelementptr inbounds [4 x i64***], [4 x i64***]* %270, i64 0, i64 0
  store i64*** %l_392, i64**** %271, !tbaa !5
  %272 = getelementptr inbounds i64***, i64**** %271, i64 1
  store i64*** %l_392, i64**** %272, !tbaa !5
  %273 = getelementptr inbounds i64***, i64**** %272, i64 1
  store i64*** %l_392, i64**** %273, !tbaa !5
  %274 = getelementptr inbounds i64***, i64**** %273, i64 1
  store i64*** %l_392, i64**** %274, !tbaa !5
  %275 = getelementptr inbounds [4 x i64***], [4 x i64***]* %270, i64 1
  %276 = getelementptr inbounds [4 x i64***], [4 x i64***]* %275, i64 0, i64 0
  store i64*** null, i64**** %276, !tbaa !5
  %277 = getelementptr inbounds i64***, i64**** %276, i64 1
  store i64*** %l_392, i64**** %277, !tbaa !5
  %278 = getelementptr inbounds i64***, i64**** %277, i64 1
  store i64*** %l_392, i64**** %278, !tbaa !5
  %279 = getelementptr inbounds i64***, i64**** %278, i64 1
  store i64*** null, i64**** %279, !tbaa !5
  %280 = getelementptr inbounds [4 x i64***], [4 x i64***]* %275, i64 1
  %281 = getelementptr inbounds [4 x i64***], [4 x i64***]* %280, i64 0, i64 0
  store i64*** %l_392, i64**** %281, !tbaa !5
  %282 = getelementptr inbounds i64***, i64**** %281, i64 1
  store i64*** null, i64**** %282, !tbaa !5
  %283 = getelementptr inbounds i64***, i64**** %282, i64 1
  store i64*** %l_392, i64**** %283, !tbaa !5
  %284 = getelementptr inbounds i64***, i64**** %283, i64 1
  store i64*** %l_392, i64**** %284, !tbaa !5
  %285 = getelementptr inbounds [4 x i64***], [4 x i64***]* %280, i64 1
  %286 = getelementptr inbounds [4 x i64***], [4 x i64***]* %285, i64 0, i64 0
  store i64*** %l_392, i64**** %286, !tbaa !5
  %287 = getelementptr inbounds i64***, i64**** %286, i64 1
  store i64*** %l_392, i64**** %287, !tbaa !5
  %288 = getelementptr inbounds i64***, i64**** %287, i64 1
  store i64*** %l_392, i64**** %288, !tbaa !5
  %289 = getelementptr inbounds i64***, i64**** %288, i64 1
  store i64*** %l_392, i64**** %289, !tbaa !5
  %290 = getelementptr inbounds [4 x i64***], [4 x i64***]* %285, i64 1
  %291 = getelementptr inbounds [4 x i64***], [4 x i64***]* %290, i64 0, i64 0
  store i64*** null, i64**** %291, !tbaa !5
  %292 = getelementptr inbounds i64***, i64**** %291, i64 1
  store i64*** %l_392, i64**** %292, !tbaa !5
  %293 = getelementptr inbounds i64***, i64**** %292, i64 1
  store i64*** %l_392, i64**** %293, !tbaa !5
  %294 = getelementptr inbounds i64***, i64**** %293, i64 1
  store i64*** %l_392, i64**** %294, !tbaa !5
  %295 = getelementptr inbounds [4 x i64***], [4 x i64***]* %290, i64 1
  %296 = getelementptr inbounds [4 x i64***], [4 x i64***]* %295, i64 0, i64 0
  store i64*** %l_392, i64**** %296, !tbaa !5
  %297 = getelementptr inbounds i64***, i64**** %296, i64 1
  store i64*** %l_392, i64**** %297, !tbaa !5
  %298 = getelementptr inbounds i64***, i64**** %297, i64 1
  store i64*** %l_392, i64**** %298, !tbaa !5
  %299 = getelementptr inbounds i64***, i64**** %298, i64 1
  store i64*** %l_392, i64**** %299, !tbaa !5
  %300 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %254, i64 1
  %301 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %300, i64 0, i64 0
  %302 = bitcast [4 x i64***]* %301 to i8*
  call void @llvm.memset.p0i8.i64(i8* %302, i8 0, i64 32, i32 8, i1 false)
  %303 = getelementptr inbounds [4 x i64***], [4 x i64***]* %301, i64 0, i64 0
  %304 = getelementptr inbounds i64***, i64**** %303, i64 1
  %305 = getelementptr inbounds i64***, i64**** %304, i64 1
  store i64*** %l_392, i64**** %305, !tbaa !5
  %306 = getelementptr inbounds i64***, i64**** %305, i64 1
  %307 = getelementptr inbounds [4 x i64***], [4 x i64***]* %301, i64 1
  %308 = getelementptr inbounds [4 x i64***], [4 x i64***]* %307, i64 0, i64 0
  store i64*** %l_392, i64**** %308, !tbaa !5
  %309 = getelementptr inbounds i64***, i64**** %308, i64 1
  store i64*** %l_392, i64**** %309, !tbaa !5
  %310 = getelementptr inbounds i64***, i64**** %309, i64 1
  store i64*** %l_392, i64**** %310, !tbaa !5
  %311 = getelementptr inbounds i64***, i64**** %310, i64 1
  store i64*** %l_392, i64**** %311, !tbaa !5
  %312 = getelementptr inbounds [4 x i64***], [4 x i64***]* %307, i64 1
  %313 = getelementptr inbounds [4 x i64***], [4 x i64***]* %312, i64 0, i64 0
  store i64*** %l_392, i64**** %313, !tbaa !5
  %314 = getelementptr inbounds i64***, i64**** %313, i64 1
  store i64*** %l_392, i64**** %314, !tbaa !5
  %315 = getelementptr inbounds i64***, i64**** %314, i64 1
  store i64*** %l_392, i64**** %315, !tbaa !5
  %316 = getelementptr inbounds i64***, i64**** %315, i64 1
  store i64*** %l_392, i64**** %316, !tbaa !5
  %317 = getelementptr inbounds [4 x i64***], [4 x i64***]* %312, i64 1
  %318 = getelementptr inbounds [4 x i64***], [4 x i64***]* %317, i64 0, i64 0
  store i64*** %l_392, i64**** %318, !tbaa !5
  %319 = getelementptr inbounds i64***, i64**** %318, i64 1
  store i64*** null, i64**** %319, !tbaa !5
  %320 = getelementptr inbounds i64***, i64**** %319, i64 1
  store i64*** %l_392, i64**** %320, !tbaa !5
  %321 = getelementptr inbounds i64***, i64**** %320, i64 1
  store i64*** null, i64**** %321, !tbaa !5
  %322 = getelementptr inbounds [4 x i64***], [4 x i64***]* %317, i64 1
  %323 = getelementptr inbounds [4 x i64***], [4 x i64***]* %322, i64 0, i64 0
  store i64*** %l_392, i64**** %323, !tbaa !5
  %324 = getelementptr inbounds i64***, i64**** %323, i64 1
  store i64*** %l_392, i64**** %324, !tbaa !5
  %325 = getelementptr inbounds i64***, i64**** %324, i64 1
  store i64*** %l_392, i64**** %325, !tbaa !5
  %326 = getelementptr inbounds i64***, i64**** %325, i64 1
  store i64*** %l_392, i64**** %326, !tbaa !5
  %327 = getelementptr inbounds [4 x i64***], [4 x i64***]* %322, i64 1
  %328 = getelementptr inbounds [4 x i64***], [4 x i64***]* %327, i64 0, i64 0
  store i64*** %l_392, i64**** %328, !tbaa !5
  %329 = getelementptr inbounds i64***, i64**** %328, i64 1
  store i64*** null, i64**** %329, !tbaa !5
  %330 = getelementptr inbounds i64***, i64**** %329, i64 1
  store i64*** %l_392, i64**** %330, !tbaa !5
  %331 = getelementptr inbounds i64***, i64**** %330, i64 1
  store i64*** %l_392, i64**** %331, !tbaa !5
  %332 = getelementptr inbounds [4 x i64***], [4 x i64***]* %327, i64 1
  %333 = getelementptr inbounds [4 x i64***], [4 x i64***]* %332, i64 0, i64 0
  store i64*** %l_392, i64**** %333, !tbaa !5
  %334 = getelementptr inbounds i64***, i64**** %333, i64 1
  store i64*** %l_392, i64**** %334, !tbaa !5
  %335 = getelementptr inbounds i64***, i64**** %334, i64 1
  store i64*** %l_392, i64**** %335, !tbaa !5
  %336 = getelementptr inbounds i64***, i64**** %335, i64 1
  store i64*** null, i64**** %336, !tbaa !5
  %337 = getelementptr inbounds [4 x i64***], [4 x i64***]* %332, i64 1
  %338 = getelementptr inbounds [4 x i64***], [4 x i64***]* %337, i64 0, i64 0
  store i64*** null, i64**** %338, !tbaa !5
  %339 = getelementptr inbounds i64***, i64**** %338, i64 1
  store i64*** %l_392, i64**** %339, !tbaa !5
  %340 = getelementptr inbounds i64***, i64**** %339, i64 1
  store i64*** %l_392, i64**** %340, !tbaa !5
  %341 = getelementptr inbounds i64***, i64**** %340, i64 1
  store i64*** null, i64**** %341, !tbaa !5
  %342 = getelementptr inbounds [4 x i64***], [4 x i64***]* %337, i64 1
  %343 = getelementptr inbounds [4 x i64***], [4 x i64***]* %342, i64 0, i64 0
  store i64*** %l_392, i64**** %343, !tbaa !5
  %344 = getelementptr inbounds i64***, i64**** %343, i64 1
  store i64*** %l_392, i64**** %344, !tbaa !5
  %345 = getelementptr inbounds i64***, i64**** %344, i64 1
  store i64*** %l_392, i64**** %345, !tbaa !5
  %346 = getelementptr inbounds i64***, i64**** %345, i64 1
  store i64*** %l_392, i64**** %346, !tbaa !5
  %347 = bitcast i32* %l_413 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %347) #1
  store i32 4, i32* %l_413, align 4, !tbaa !1
  %348 = bitcast i32*** %l_429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #1
  store i32** @g_236, i32*** %l_429, align 8, !tbaa !5
  %349 = bitcast [8 x [7 x i8*]]* %l_435 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %349) #1
  %350 = bitcast [8 x [7 x i8*]]* %l_435 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %350, i8* bitcast ([8 x [7 x i8*]]* @func_21.l_435 to i8*), i64 448, i32 16, i1 false)
  %351 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %351) #1
  %352 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %352) #1
  %353 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %353) #1
  store i16 0, i16* @g_378, align 2, !tbaa !10
  br label %354

; <label>:354                                     ; preds = %529, %113
  %355 = load i16, i16* @g_378, align 2, !tbaa !10
  %356 = sext i16 %355 to i32
  %357 = icmp sle i32 %356, 3
  br i1 %357, label %358, label %534

; <label>:358                                     ; preds = %354
  %359 = bitcast i32* %l_412 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %359) #1
  store i32 -707305482, i32* %l_412, align 4, !tbaa !1
  %360 = bitcast i32** %l_414 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %360) #1
  store i32* %l_383, i32** %l_414, align 8, !tbaa !5
  %361 = bitcast i32*** %l_428 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %361) #1
  store i32** %l_414, i32*** %l_428, align 8, !tbaa !5
  %362 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %362) #1
  %363 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %363) #1
  %364 = load i16, i16* @g_378, align 2, !tbaa !10
  %365 = sext i16 %364 to i32
  %366 = add nsw i32 %365, 3
  %367 = sext i32 %366 to i64
  %368 = load i16, i16* @g_378, align 2, !tbaa !10
  %369 = sext i16 %368 to i64
  %370 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 %369
  %371 = getelementptr inbounds [8 x i32], [8 x i32]* %370, i32 0, i64 %367
  %372 = load i32, i32* %371, align 4, !tbaa !1
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %375

; <label>:374                                     ; preds = %358
  store i32 8, i32* %3
  br label %522

; <label>:375                                     ; preds = %358
  %376 = load i16, i16* @g_378, align 2, !tbaa !10
  %377 = sext i16 %376 to i32
  %378 = add nsw i32 %377, 3
  %379 = sext i32 %378 to i64
  %380 = load i16, i16* @g_378, align 2, !tbaa !10
  %381 = sext i16 %380 to i64
  %382 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 %381
  %383 = getelementptr inbounds [8 x i32], [8 x i32]* %382, i32 0, i64 %379
  %384 = load i32, i32* %383, align 4, !tbaa !1
  %385 = load i8, i8* %l_404, align 1, !tbaa !9
  %386 = zext i8 %385 to i32
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %413

; <label>:388                                     ; preds = %375
  %389 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), align 4, !tbaa !1
  %390 = load i8, i8* %l_404, align 1, !tbaa !9
  %391 = getelementptr inbounds [5 x [9 x [4 x i64***]]], [5 x [9 x [4 x i64***]]]* %l_411, i32 0, i64 4
  %392 = getelementptr inbounds [9 x [4 x i64***]], [9 x [4 x i64***]]* %391, i32 0, i64 8
  %393 = getelementptr inbounds [4 x i64***], [4 x i64***]* %392, i32 0, i64 1
  %394 = load i64***, i64**** %393, align 8, !tbaa !5
  %395 = load i64****, i64***** %l_394, align 8, !tbaa !5
  store i64*** %394, i64**** %395, align 8, !tbaa !5
  %396 = icmp ne i64*** @g_219, %394
  %397 = zext i1 %396 to i32
  %398 = load i32, i32* %l_412, align 4, !tbaa !1
  %399 = icmp sgt i32 %397, %398
  br i1 %399, label %401, label %400

; <label>:400                                     ; preds = %388
  br label %401

; <label>:401                                     ; preds = %400, %388
  %402 = phi i1 [ true, %388 ], [ false, %400 ]
  %403 = zext i1 %402 to i32
  %404 = call i32 @safe_div_func_uint32_t_u_u(i32 %403, i32 -1175287494)
  %405 = load i8, i8* %l_404, align 1, !tbaa !9
  %406 = zext i8 %405 to i32
  %407 = call i32 @safe_mod_func_int32_t_s_s(i32 %404, i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %408, i32 1)
  %410 = sext i8 %409 to i64
  %411 = and i64 %410, 5865163057817476802
  %412 = icmp ne i64 %411, 0
  br label %413

; <label>:413                                     ; preds = %401, %375
  %414 = phi i1 [ false, %375 ], [ %412, %401 ]
  %415 = zext i1 %414 to i32
  %416 = sext i32 %415 to i64
  %417 = icmp ugt i64 %416, -4167636458761987827
  %418 = zext i1 %417 to i32
  %419 = icmp ule i32 %384, %418
  %420 = zext i1 %419 to i32
  %421 = trunc i32 %420 to i8
  %422 = load i8*, i8** %2, align 8, !tbaa !5
  %423 = load i8, i8* %422, align 1, !tbaa !9
  %424 = zext i8 %423 to i32
  %425 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %421, i32 %424)
  %426 = sext i8 %425 to i32
  %427 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext 2414, i32 %426)
  %428 = load i32, i32* %l_395, align 4, !tbaa !1
  %429 = call i32 @safe_add_func_int32_t_s_s(i32 1, i32 %428)
  %430 = load i32, i32* %l_413, align 4, !tbaa !1
  %431 = sext i32 %430 to i64
  %432 = load i8, i8* @g_302, align 1, !tbaa !9
  %433 = sext i8 %432 to i64
  %434 = call i64 @safe_sub_func_int64_t_s_s(i64 %431, i64 %433)
  %435 = load i64, i64* @g_187, align 8, !tbaa !7
  %436 = icmp ule i64 %434, %435
  %437 = zext i1 %436 to i32
  %438 = load i32*, i32** %l_414, align 8, !tbaa !5
  %439 = load i32, i32* %438, align 4, !tbaa !1
  %440 = and i32 %439, %437
  store i32 %440, i32* %438, align 4, !tbaa !1
  %441 = load i32, i32* %l_413, align 4, !tbaa !1
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

; <label>:443                                     ; preds = %413
  store i32 8, i32* %3
  br label %522

; <label>:444                                     ; preds = %413
  %445 = load i32*, i32** %l_414, align 8, !tbaa !5
  %446 = load i32, i32* %445, align 4, !tbaa !1
  %447 = sext i32 %446 to i64
  %448 = load i32, i32* @g_234, align 4, !tbaa !1
  %449 = sext i32 %448 to i64
  %450 = call i64 @safe_add_func_uint64_t_u_u(i64 %447, i64 %449)
  %451 = trunc i64 %450 to i16
  %452 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %451, i32 6)
  %453 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %452, i32 6)
  %454 = zext i16 %453 to i32
  %455 = load i64*, i64** getelementptr inbounds ([3 x i64*], [3 x i64*]* @g_296, i32 0, i64 1), align 8, !tbaa !5
  %456 = icmp eq i64* null, %455
  %457 = zext i1 %456 to i32
  %458 = load i8, i8* %l_404, align 1, !tbaa !9
  %459 = zext i8 %458 to i64
  %460 = or i64 0, %459
  %461 = icmp eq i8** %2, %2
  %462 = zext i1 %461 to i32
  %463 = call i32 @safe_add_func_int32_t_s_s(i32 %462, i32 463380308)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %469

; <label>:465                                     ; preds = %444
  %466 = load i32*, i32** %l_414, align 8, !tbaa !5
  %467 = load i32, i32* %466, align 4, !tbaa !1
  %468 = icmp ne i32 %467, 0
  br label %469

; <label>:469                                     ; preds = %465, %444
  %470 = phi i1 [ false, %444 ], [ %468, %465 ]
  %471 = zext i1 %470 to i32
  %472 = trunc i32 %471 to i16
  %473 = load i32*, i32** %l_414, align 8, !tbaa !5
  %474 = load i32, i32* %473, align 4, !tbaa !1
  %475 = trunc i32 %474 to i16
  %476 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %472, i16 zeroext %475)
  %477 = zext i16 %476 to i64
  %478 = icmp sge i64 164, %477
  %479 = zext i1 %478 to i32
  %480 = load i8, i8* %l_404, align 1, !tbaa !9
  %481 = zext i8 %480 to i32
  %482 = xor i32 %479, %481
  %483 = sext i32 %482 to i64
  %484 = icmp ule i64 %460, %483
  br i1 %484, label %485, label %486

; <label>:485                                     ; preds = %469
  br label %486

; <label>:486                                     ; preds = %485, %469
  %487 = phi i1 [ false, %469 ], [ true, %485 ]
  %488 = zext i1 %487 to i32
  %489 = load i8, i8* @g_17, align 1, !tbaa !9
  %490 = zext i8 %489 to i32
  %491 = and i32 %488, %490
  %492 = sext i32 %491 to i64
  %493 = icmp sgt i64 %492, 2
  %494 = zext i1 %493 to i32
  %495 = load i32*, i32** %l_414, align 8, !tbaa !5
  %496 = load i32, i32* %495, align 4, !tbaa !1
  %497 = or i32 %494, %496
  %498 = load i16, i16* @g_378, align 2, !tbaa !10
  %499 = sext i16 %498 to i32
  %500 = xor i32 %497, %499
  %501 = trunc i32 %500 to i8
  %502 = load i8*, i8** %2, align 8, !tbaa !5
  %503 = load i8, i8* %502, align 1, !tbaa !9
  %504 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %501, i8 signext %503)
  %505 = sext i8 %504 to i32
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %508

; <label>:507                                     ; preds = %486
  br label %508

; <label>:508                                     ; preds = %507, %486
  %509 = phi i1 [ false, %486 ], [ true, %507 ]
  %510 = zext i1 %509 to i32
  %511 = load i32, i32* %l_427, align 4, !tbaa !1
  %512 = icmp sle i32 %510, %511
  %513 = zext i1 %512 to i32
  %514 = icmp sgt i32 %457, %513
  %515 = zext i1 %514 to i32
  %516 = and i32 %454, %515
  %517 = load i8*, i8** %2, align 8, !tbaa !5
  %518 = load i8, i8* %517, align 1, !tbaa !9
  %519 = zext i8 %518 to i32
  %520 = or i32 %516, %519
  %521 = load i32**, i32*** %l_428, align 8, !tbaa !5
  store i32* %l_412, i32** %521, align 8, !tbaa !5
  store i32 0, i32* %3
  br label %522

; <label>:522                                     ; preds = %508, %443, %374
  %523 = bitcast i32* %j6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #1
  %524 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #1
  %525 = bitcast i32*** %l_428 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %525) #1
  %526 = bitcast i32** %l_414 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %526) #1
  %527 = bitcast i32* %l_412 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %cleanup.dest = load i32, i32* %3
  switch i32 %cleanup.dest, label %1991 [
    i32 0, label %528
    i32 8, label %534
  ]

; <label>:528                                     ; preds = %522
  br label %529

; <label>:529                                     ; preds = %528
  %530 = load i16, i16* @g_378, align 2, !tbaa !10
  %531 = sext i16 %530 to i32
  %532 = add nsw i32 %531, 1
  %533 = trunc i32 %532 to i16
  store i16 %533, i16* @g_378, align 2, !tbaa !10
  br label %354

; <label>:534                                     ; preds = %522, %354
  %535 = load i32**, i32*** %l_429, align 8, !tbaa !5
  store i32* %l_413, i32** %535, align 8, !tbaa !5
  %536 = load i32**, i32*** %l_429, align 8, !tbaa !5
  %537 = load i32*, i32** %536, align 8, !tbaa !5
  %538 = load i32, i32* %537, align 4, !tbaa !1
  %539 = sext i32 %538 to i64
  %540 = load i64**, i64*** %l_392, align 8, !tbaa !5
  %541 = load i64*, i64** %540, align 8, !tbaa !5
  store i64 %539, i64* %541, align 8, !tbaa !7
  %542 = load i32**, i32*** %l_429, align 8, !tbaa !5
  %543 = load i32*, i32** %542, align 8, !tbaa !5
  %544 = load i32, i32* %543, align 4, !tbaa !1
  store i32 %544, i32* %l_436, align 4, !tbaa !1
  %545 = trunc i32 %544 to i8
  %546 = load i8*, i8** %2, align 8, !tbaa !5
  %547 = load i8, i8* %546, align 1, !tbaa !9
  %548 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %545, i8 signext %547)
  %549 = sext i8 %548 to i32
  store i32 %549, i32* %l_427, align 4, !tbaa !1
  %550 = sext i32 %549 to i64
  %551 = call i64 @safe_sub_func_uint64_t_u_u(i64 %539, i64 %550)
  %552 = trunc i64 %551 to i32
  store i32 %552, i32* %l_383, align 4, !tbaa !1
  %553 = load i32, i32* %l_437, align 4, !tbaa !1
  store i32 %553, i32* %1
  store i32 1, i32* %3
  %554 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %554) #1
  %555 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %555) #1
  %556 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %556) #1
  %557 = bitcast [8 x [7 x i8*]]* %l_435 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %557) #1
  %558 = bitcast i32*** %l_429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %558) #1
  %559 = bitcast i32* %l_413 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %559) #1
  %560 = bitcast [5 x [9 x [4 x i64***]]]* %l_411 to i8*
  call void @llvm.lifetime.end(i64 1440, i8* %560) #1
  br label %1788

; <label>:561                                     ; preds = %95
  %562 = bitcast i32* %l_440 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %562) #1
  store i32 -1426463616, i32* %l_440, align 4, !tbaa !1
  %563 = bitcast i32** %l_447 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %563) #1
  store i32* %l_395, i32** %l_447, align 8, !tbaa !5
  %564 = bitcast i16** %l_457 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %564) #1
  store i16* @g_378, i16** %l_457, align 8, !tbaa !5
  %565 = bitcast i16** %l_464 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %565) #1
  store i16* @g_378, i16** %l_464, align 8, !tbaa !5
  %566 = bitcast [6 x [8 x i16*]]* %l_466 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %566) #1
  %567 = bitcast [6 x [8 x i16*]]* %l_466 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %567, i8* bitcast ([6 x [8 x i16*]]* @func_21.l_466 to i8*), i64 384, i32 16, i1 false)
  %568 = bitcast i32* %l_484 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %568) #1
  store i32 533853002, i32* %l_484, align 4, !tbaa !1
  %569 = bitcast [6 x [4 x i32**]]* %l_512 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %569) #1
  %570 = bitcast [6 x [4 x i32**]]* %l_512 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %570, i8* bitcast ([6 x [4 x i32**]]* @func_21.l_512 to i8*), i64 192, i32 16, i1 false)
  %571 = bitcast i8** %l_539 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %571) #1
  store i8* @g_302, i8** %l_539, align 8, !tbaa !5
  %572 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %572) #1
  %573 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %573) #1
  %574 = load i32, i32* %l_427, align 4, !tbaa !1
  %575 = load i32, i32* %l_440, align 4, !tbaa !1
  %576 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %577 = icmp ule i64 1, %576
  %578 = zext i1 %577 to i32
  %579 = load i32*, i32** %l_447, align 8, !tbaa !5
  %580 = load i32, i32* %579, align 4, !tbaa !1
  %581 = add i32 %580, 1
  store i32 %581, i32* %579, align 4, !tbaa !1
  %582 = load i32, i32* %l_440, align 4, !tbaa !1
  %583 = load i32, i32* %l_436, align 4, !tbaa !1
  %584 = icmp ule i32 %582, %583
  %585 = zext i1 %584 to i32
  %586 = trunc i32 %585 to i16
  %587 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %586, i32 9)
  %588 = load i32, i32* @g_226, align 4, !tbaa !1
  %589 = or i32 -2, %588
  %590 = load i32, i32* %l_427, align 4, !tbaa !1
  %591 = or i32 %589, %590
  %592 = load i32, i32* %l_437, align 4, !tbaa !1
  %593 = icmp ne i32 %591, %592
  %594 = zext i1 %593 to i32
  %595 = load i32, i32* %l_437, align 4, !tbaa !1
  %596 = trunc i32 %595 to i16
  %597 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %598 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %596, i32 %597)
  %599 = trunc i16 %598 to i8
  %600 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %601 = trunc i64 %600 to i8
  %602 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %599, i8 signext %601)
  %603 = sext i8 %602 to i32
  %604 = load i32, i32* %l_440, align 4, !tbaa !1
  %605 = icmp ne i32 %603, %604
  %606 = zext i1 %605 to i32
  %607 = load i16, i16* @g_235, align 2, !tbaa !10
  %608 = zext i16 %607 to i32
  %609 = or i32 %606, %608
  %610 = sext i32 %609 to i64
  %611 = icmp slt i64 %610, -2
  %612 = zext i1 %611 to i32
  %613 = load i8, i8* @g_365, align 1, !tbaa !9
  %614 = zext i8 %613 to i32
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %619, label %616

; <label>:616                                     ; preds = %561
  %617 = load i32, i32* %l_395, align 4, !tbaa !1
  %618 = icmp ne i32 %617, 0
  br label %619

; <label>:619                                     ; preds = %616, %561
  %620 = phi i1 [ true, %561 ], [ %618, %616 ]
  %621 = zext i1 %620 to i32
  %622 = load i32, i32* %l_440, align 4, !tbaa !1
  %623 = xor i32 %621, %622
  %624 = zext i32 %623 to i64
  %625 = or i64 %624, -1
  %626 = icmp ult i64 %625, -5345771282810198408
  %627 = zext i1 %626 to i32
  %628 = load i32, i32* %l_436, align 4, !tbaa !1
  %629 = icmp eq i32 %627, %628
  %630 = zext i1 %629 to i32
  %631 = icmp slt i32 %578, %630
  %632 = zext i1 %631 to i32
  %633 = trunc i32 %632 to i8
  %634 = load i32, i32* %l_427, align 4, !tbaa !1
  %635 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %633, i32 %634)
  %636 = zext i8 %635 to i32
  %637 = load i32, i32* %l_436, align 4, !tbaa !1
  %638 = and i32 %636, %637
  %639 = trunc i32 %638 to i16
  %640 = load i16*, i16** %l_457, align 8, !tbaa !5
  store i16 %639, i16* %640, align 2, !tbaa !10
  %641 = sext i16 %639 to i64
  %642 = load i64, i64* @g_77, align 8, !tbaa !7
  %643 = or i64 %641, %642
  %644 = icmp ult i64 %643, -795471972487272186
  %645 = zext i1 %644 to i32
  %646 = sext i32 %645 to i64
  %647 = load i8, i8* @g_17, align 1, !tbaa !9
  %648 = zext i8 %647 to i64
  %649 = call i64 @safe_add_func_int64_t_s_s(i64 %646, i64 %648)
  %650 = load i8, i8* @g_17, align 1, !tbaa !9
  %651 = zext i8 %650 to i64
  %652 = load i64, i64* @g_187, align 8, !tbaa !7
  %653 = xor i64 %651, %652
  %654 = trunc i64 %653 to i8
  %655 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %654, i32 2)
  %656 = zext i8 %655 to i32
  %657 = load i32, i32* %l_436, align 4, !tbaa !1
  %658 = xor i32 %656, %657
  %659 = sext i32 %658 to i64
  %660 = icmp ult i64 3, %659
  %661 = zext i1 %660 to i32
  %662 = trunc i32 %661 to i8
  store i8 %662, i8* @g_302, align 1, !tbaa !9
  %663 = sext i8 %662 to i32
  %664 = icmp ne i32 %574, %663
  br i1 %664, label %665, label %752

; <label>:665                                     ; preds = %619
  %666 = bitcast i16*** %l_463 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %666) #1
  store i16** %l_457, i16*** %l_463, align 8, !tbaa !5
  %667 = bitcast i32** %l_467 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %667) #1
  store i32* %l_427, i32** %l_467, align 8, !tbaa !5
  store i32 -189, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), align 4, !tbaa !1
  %668 = load i32, i32* @g_92, align 4, !tbaa !1
  %669 = load i32, i32* %l_440, align 4, !tbaa !1
  %670 = load i16**, i16*** %l_463, align 8, !tbaa !5
  store i16* @g_378, i16** %670, align 8, !tbaa !5
  store i16* @g_378, i16** %l_464, align 8, !tbaa !5
  %671 = load i16*, i16** %l_465, align 8, !tbaa !5
  %672 = icmp eq i16* @g_378, %671
  %673 = zext i1 %672 to i32
  %674 = icmp ult i32 %668, %673
  %675 = zext i1 %674 to i32
  %676 = load i32, i32* %l_436, align 4, !tbaa !1
  %677 = sext i32 %676 to i64
  %678 = icmp sge i64 %677, 0
  %679 = zext i1 %678 to i32
  %680 = sext i32 %679 to i64
  %681 = call i64 @safe_mul_func_uint64_t_u_u(i64 0, i64 %680)
  %682 = getelementptr inbounds [6 x [8 x i16*]], [6 x [8 x i16*]]* %l_466, i32 0, i64 4
  %683 = getelementptr inbounds [8 x i16*], [8 x i16*]* %682, i32 0, i64 6
  %684 = load i16*, i16** %683, align 8, !tbaa !5
  %685 = icmp eq i16* %684, null
  %686 = zext i1 %685 to i32
  %687 = sext i32 %686 to i64
  %688 = icmp ne i64 %681, %687
  %689 = zext i1 %688 to i32
  %690 = sext i32 %689 to i64
  %691 = icmp eq i64 -1, %690
  %692 = zext i1 %691 to i32
  %693 = call i32 @safe_div_func_uint32_t_u_u(i32 %692, i32 906941026)
  %694 = load i32, i32* %l_383, align 4, !tbaa !1
  store i32 %694, i32* %l_436, align 4, !tbaa !1
  %695 = load i32*, i32** %l_467, align 8, !tbaa !5
  %696 = load i32, i32* %695, align 4, !tbaa !1
  %697 = and i32 %696, %694
  store i32 %697, i32* %695, align 4, !tbaa !1
  %698 = load i32, i32* @g_65, align 4, !tbaa !1
  %699 = sext i32 %698 to i64
  %700 = load i8*, i8** %2, align 8, !tbaa !5
  %701 = load i8, i8* %700, align 1, !tbaa !9
  %702 = add i8 %701, -1
  store i8 %702, i8* %700, align 1, !tbaa !9
  %703 = zext i8 %701 to i32
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %744

; <label>:705                                     ; preds = %665
  %706 = load i8, i8* @g_17, align 1, !tbaa !9
  %707 = zext i8 %706 to i32
  %708 = load i32, i32* %l_395, align 4, !tbaa !1
  %709 = trunc i32 %708 to i16
  %710 = load i32, i32* @g_92, align 4, !tbaa !1
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %721

; <label>:712                                     ; preds = %705
  %713 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), align 4, !tbaa !1
  %714 = load i32, i32* @g_226, align 4, !tbaa !1
  %715 = load i8, i8* %l_404, align 1, !tbaa !9
  %716 = zext i8 %715 to i32
  %717 = icmp ult i32 %714, %716
  %718 = zext i1 %717 to i32
  %719 = or i32 %713, %718
  %720 = icmp ne i32 %719, 0
  br label %721

; <label>:721                                     ; preds = %712, %705
  %722 = phi i1 [ false, %705 ], [ %720, %712 ]
  %723 = zext i1 %722 to i32
  %724 = load i64****, i64***** %l_394, align 8, !tbaa !5
  %725 = icmp ne i64**** %l_391, %724
  %726 = zext i1 %725 to i32
  %727 = trunc i32 %726 to i8
  %728 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %727)
  %729 = zext i8 %728 to i16
  %730 = load i16, i16* %l_483, align 2, !tbaa !10
  %731 = sext i16 %730 to i32
  %732 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %729, i32 %731)
  %733 = zext i16 %732 to i64
  %734 = icmp ne i64 %733, 0
  %735 = zext i1 %734 to i32
  %736 = load i32*, i32** %l_467, align 8, !tbaa !5
  %737 = bitcast i32* %736 to i8*
  %738 = icmp ne i8* null, %737
  %739 = zext i1 %738 to i32
  %740 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %709, i32 %739)
  %741 = zext i16 %740 to i32
  %742 = call i32 @safe_mod_func_uint32_t_u_u(i32 %707, i32 %741)
  %743 = icmp ne i32 %742, 0
  br label %744

; <label>:744                                     ; preds = %721, %665
  %745 = phi i1 [ false, %665 ], [ %743, %721 ]
  %746 = zext i1 %745 to i32
  %747 = sext i32 %746 to i64
  %748 = call i64 @safe_add_func_uint64_t_u_u(i64 %699, i64 %747)
  %749 = trunc i64 %748 to i32
  store i32 %749, i32* %l_484, align 4, !tbaa !1
  %750 = bitcast i32** %l_467 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %750) #1
  %751 = bitcast i16*** %l_463 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %751) #1
  br label %932

; <label>:752                                     ; preds = %619
  %753 = bitcast i16*** %l_488 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %753) #1
  store i16** null, i16*** %l_488, align 8, !tbaa !5
  %754 = bitcast i16*** %l_489 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %754) #1
  store i16** %l_487, i16*** %l_489, align 8, !tbaa !5
  %755 = bitcast i8** %l_497 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %755) #1
  store i8* @g_302, i8** %l_497, align 8, !tbaa !5
  %756 = bitcast [5 x [7 x i64*]]* %l_508 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %756) #1
  %757 = bitcast [5 x [7 x i64*]]* %l_508 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %757, i8* bitcast ([5 x [7 x i64*]]* @func_21.l_508 to i8*), i64 280, i32 16, i1 false)
  %758 = bitcast i64* %l_513 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %758) #1
  store i64 9, i64* %l_513, align 8, !tbaa !7
  %759 = bitcast i8** %l_514 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %759) #1
  store i8* null, i8** %l_514, align 8, !tbaa !5
  %760 = bitcast i8** %l_515 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %760) #1
  store i8* @g_516, i8** %l_515, align 8, !tbaa !5
  %761 = bitcast i32* %l_527 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %761) #1
  store i32 1, i32* %l_527, align 4, !tbaa !1
  %762 = bitcast i32* %l_528 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %762) #1
  store i32 1, i32* %l_528, align 4, !tbaa !1
  %763 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %763) #1
  %764 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %764) #1
  %765 = load i16*, i16** %l_487, align 8, !tbaa !5
  %766 = load i16**, i16*** %l_489, align 8, !tbaa !5
  store i16* %765, i16** %766, align 8, !tbaa !5
  %767 = icmp ne i16* @g_235, %765
  %768 = zext i1 %767 to i32
  %769 = trunc i32 %768 to i8
  %770 = load i32, i32* %l_436, align 4, !tbaa !1
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %775, label %772

; <label>:772                                     ; preds = %752
  %773 = load i64, i64* @g_187, align 8, !tbaa !7
  %774 = icmp ne i64 %773, 0
  br label %775

; <label>:775                                     ; preds = %772, %752
  %776 = phi i1 [ true, %752 ], [ %774, %772 ]
  %777 = zext i1 %776 to i32
  %778 = trunc i32 %777 to i8
  %779 = load i32, i32* %l_440, align 4, !tbaa !1
  %780 = load i8*, i8** %l_497, align 8, !tbaa !5
  %781 = load i8, i8* %780, align 1, !tbaa !9
  %782 = sext i8 %781 to i32
  %783 = or i32 %782, %779
  %784 = trunc i32 %783 to i8
  store i8 %784, i8* %780, align 1, !tbaa !9
  %785 = sext i8 %784 to i32
  %786 = load i16*, i16** %l_457, align 8, !tbaa !5
  store i16 9, i16* %786, align 2, !tbaa !10
  store i8 9, i8* @g_500, align 1, !tbaa !9
  %787 = load i64, i64* @g_77, align 8, !tbaa !7
  %788 = trunc i64 %787 to i16
  %789 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 9, i16 signext %788)
  %790 = sext i16 %789 to i32
  %791 = icmp sge i32 %785, %790
  %792 = zext i1 %791 to i32
  %793 = trunc i32 %792 to i16
  %794 = load i16, i16* %l_483, align 2, !tbaa !10
  %795 = sext i16 %794 to i32
  %796 = load i8*, i8** %2, align 8, !tbaa !5
  %797 = load i8, i8* %796, align 1, !tbaa !9
  %798 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %797, i32 6)
  %799 = zext i8 %798 to i64
  %800 = icmp sgt i64 %799, 36
  %801 = zext i1 %800 to i32
  %802 = load i16, i16* %l_483, align 2, !tbaa !10
  %803 = sext i16 %802 to i32
  %804 = icmp sgt i32 %801, %803
  %805 = zext i1 %804 to i32
  store i32 %805, i32* %l_510, align 4, !tbaa !1
  %806 = load i32, i32* %l_436, align 4, !tbaa !1
  %807 = or i32 %805, %806
  %808 = sext i32 %807 to i64
  %809 = load i64, i64* @g_511, align 8, !tbaa !7
  %810 = xor i64 %808, %809
  %811 = trunc i64 %810 to i32
  %812 = load i32, i32* %l_395, align 4, !tbaa !1
  %813 = call i32 @safe_mod_func_int32_t_s_s(i32 %811, i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %814, i8 signext 9)
  %816 = sext i8 %815 to i32
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %821

; <label>:818                                     ; preds = %775
  %819 = load i32, i32* @g_226, align 4, !tbaa !1
  %820 = icmp ne i32 %819, 0
  br label %821

; <label>:821                                     ; preds = %818, %775
  %822 = phi i1 [ false, %775 ], [ %820, %818 ]
  %823 = zext i1 %822 to i32
  %824 = getelementptr inbounds [6 x [4 x i32**]], [6 x [4 x i32**]]* %l_512, i32 0, i64 3
  %825 = getelementptr inbounds [4 x i32**], [4 x i32**]* %824, i32 0, i64 1
  %826 = load i32**, i32*** %825, align 8, !tbaa !5
  %827 = icmp ne i32** %826, null
  %828 = zext i1 %827 to i32
  %829 = sext i32 %828 to i64
  %830 = load i64, i64* %l_513, align 8, !tbaa !7
  %831 = xor i64 %829, %830
  %832 = load i64, i64* @g_509, align 8, !tbaa !7
  %833 = icmp sge i64 %831, %832
  %834 = zext i1 %833 to i32
  %835 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 2, i64 2), align 4, !tbaa !1
  %836 = icmp ne i32 %795, %835
  %837 = zext i1 %836 to i32
  %838 = trunc i32 %837 to i16
  %839 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %793, i16 zeroext %838)
  %840 = zext i16 %839 to i32
  store i32 %840, i32* %l_383, align 4, !tbaa !1
  %841 = sext i32 %840 to i64
  %842 = icmp ult i64 %841, 2
  %843 = zext i1 %842 to i32
  %844 = sext i32 %843 to i64
  %845 = icmp eq i64 %844, 1
  %846 = zext i1 %845 to i32
  %847 = xor i32 %846, -1
  %848 = trunc i32 %847 to i8
  %849 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %778, i8 signext %848)
  %850 = sext i8 %849 to i32
  %851 = load i8*, i8** %l_515, align 8, !tbaa !5
  %852 = load i8, i8* %851, align 1, !tbaa !9
  %853 = sext i8 %852 to i32
  %854 = and i32 %853, %850
  %855 = trunc i32 %854 to i8
  store i8 %855, i8* %851, align 1, !tbaa !9
  %856 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %855, i32 4)
  %857 = load i32, i32* %l_437, align 4, !tbaa !1
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %859, label %863

; <label>:859                                     ; preds = %821
  %860 = load i16, i16* @g_378, align 2, !tbaa !10
  %861 = sext i16 %860 to i32
  %862 = icmp ne i32 %861, 0
  br label %863

; <label>:863                                     ; preds = %859, %821
  %864 = phi i1 [ false, %821 ], [ %862, %859 ]
  %865 = zext i1 %864 to i32
  %866 = trunc i32 %865 to i8
  %867 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %769, i8 signext %866)
  %868 = sext i8 %867 to i32
  %869 = load i16, i16* @g_235, align 2, !tbaa !10
  %870 = zext i16 %869 to i32
  %871 = icmp eq i32 %868, %870
  %872 = zext i1 %871 to i32
  %873 = load i32, i32* %l_517, align 4, !tbaa !1
  %874 = xor i32 %873, %872
  store i32 %874, i32* %l_517, align 4, !tbaa !1
  %875 = load i64, i64* %l_513, align 8, !tbaa !7
  %876 = trunc i64 %875 to i32
  store i32 %876, i32* %l_427, align 4, !tbaa !1
  %877 = load i32*, i32** %l_526, align 8, !tbaa !5
  %878 = icmp ne i32* null, %877
  %879 = zext i1 %878 to i32
  %880 = sext i32 %879 to i64
  %881 = load i32, i32* @g_65, align 4, !tbaa !1
  %882 = sext i32 %881 to i64
  %883 = call i64 @safe_div_func_int64_t_s_s(i64 %880, i64 %882)
  %884 = load i8, i8* @g_17, align 1, !tbaa !9
  %885 = zext i8 %884 to i32
  store i32 %885, i32* %l_527, align 4, !tbaa !1
  %886 = icmp eq i32* %l_527, null
  %887 = zext i1 %886 to i32
  %888 = sext i32 %887 to i64
  %889 = icmp slt i64 %883, %888
  %890 = zext i1 %889 to i32
  %891 = trunc i32 %890 to i8
  %892 = load i8*, i8** %2, align 8, !tbaa !5
  %893 = load i8, i8* %892, align 1, !tbaa !9
  %894 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %891, i8 signext %893)
  %895 = sext i8 %894 to i16
  %896 = load i8, i8* @g_516, align 1, !tbaa !9
  %897 = sext i8 %896 to i32
  %898 = load i8, i8* %l_404, align 1, !tbaa !9
  %899 = zext i8 %898 to i32
  %900 = xor i32 %897, %899
  %901 = trunc i32 %900 to i16
  %902 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %895, i16 signext %901)
  %903 = sext i16 %902 to i32
  store i32 %903, i32* %l_436, align 4, !tbaa !1
  %904 = trunc i32 %903 to i8
  %905 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %904, i32 5)
  %906 = zext i8 %905 to i32
  %907 = load i8*, i8** %2, align 8, !tbaa !5
  %908 = load i8, i8* %907, align 1, !tbaa !9
  %909 = zext i8 %908 to i32
  %910 = and i32 %906, %909
  %911 = load i32, i32* %l_527, align 4, !tbaa !1
  %912 = sext i32 %911 to i64
  %913 = load i64, i64* @g_509, align 8, !tbaa !7
  %914 = or i64 %913, %912
  store i64 %914, i64* @g_509, align 8, !tbaa !7
  %915 = load i32, i32* %l_437, align 4, !tbaa !1
  %916 = zext i32 %915 to i64
  %917 = icmp ne i64 %914, %916
  %918 = zext i1 %917 to i32
  %919 = load i32, i32* %l_510, align 4, !tbaa !1
  %920 = and i32 %919, %918
  store i32 %920, i32* %l_510, align 4, !tbaa !1
  store i32 %920, i32* %l_528, align 4, !tbaa !1
  %921 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %921) #1
  %922 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %922) #1
  %923 = bitcast i32* %l_528 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %923) #1
  %924 = bitcast i32* %l_527 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %924) #1
  %925 = bitcast i8** %l_515 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %925) #1
  %926 = bitcast i8** %l_514 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %926) #1
  %927 = bitcast i64* %l_513 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %927) #1
  %928 = bitcast [5 x [7 x i64*]]* %l_508 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %928) #1
  %929 = bitcast i8** %l_497 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %929) #1
  %930 = bitcast i16*** %l_489 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %930) #1
  %931 = bitcast i16*** %l_488 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %931) #1
  br label %932

; <label>:932                                     ; preds = %863, %744
  %933 = load i16**, i16*** %l_531, align 8, !tbaa !5
  %934 = icmp ne i16** null, %933
  %935 = zext i1 %934 to i32
  %936 = trunc i32 %935 to i16
  %937 = load i32, i32* %l_437, align 4, !tbaa !1
  %938 = load i8*, i8** %l_539, align 8, !tbaa !5
  store i8 1, i8* %938, align 1, !tbaa !9
  %939 = load i8*, i8** %2, align 8, !tbaa !5
  %940 = load i8, i8* %939, align 1, !tbaa !9
  %941 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %940, i32 1)
  %942 = zext i8 %941 to i32
  %943 = load i64****, i64***** @g_544, align 8, !tbaa !5
  store i64**** %943, i64***** @g_544, align 8, !tbaa !5
  %944 = load i32, i32* %l_395, align 4, !tbaa !1
  %945 = load i8*, i8** %2, align 8, !tbaa !5
  %946 = load i8, i8* %945, align 1, !tbaa !9
  %947 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -1, i8 signext %946)
  %948 = load i32, i32* @g_226, align 4, !tbaa !1
  %949 = trunc i32 %948 to i16
  %950 = load i16, i16* %l_483, align 2, !tbaa !10
  %951 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %949, i16 zeroext %950)
  %952 = zext i16 %951 to i32
  %953 = xor i32 %944, %952
  %954 = icmp ne i64**** %943, null
  %955 = zext i1 %954 to i32
  %956 = load i8, i8* %l_404, align 1, !tbaa !9
  %957 = zext i8 %956 to i32
  %958 = icmp eq i32 %955, %957
  %959 = zext i1 %958 to i32
  %960 = xor i32 %942, %959
  %961 = load i32, i32* %l_437, align 4, !tbaa !1
  %962 = icmp eq i32 %960, %961
  %963 = zext i1 %962 to i32
  %964 = trunc i32 %963 to i8
  %965 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %964, i8 zeroext -69)
  %966 = zext i8 %965 to i32
  %967 = or i32 1, %966
  %968 = load i8*, i8** %2, align 8, !tbaa !5
  %969 = load i8, i8* %968, align 1, !tbaa !9
  %970 = zext i8 %969 to i32
  %971 = icmp ne i32 %967, %970
  %972 = zext i1 %971 to i32
  %973 = sext i32 %972 to i64
  %974 = or i64 -4694611251114271725, %973
  %975 = load i32, i32* %l_517, align 4, !tbaa !1
  %976 = sext i32 %975 to i64
  %977 = icmp ule i64 %974, %976
  %978 = zext i1 %977 to i32
  %979 = load i32, i32* %l_552, align 4, !tbaa !1
  %980 = load i32, i32* %l_427, align 4, !tbaa !1
  %981 = or i32 %980, %979
  store i32 %981, i32* %l_427, align 4, !tbaa !1
  %982 = icmp ne i32 %981, 0
  br i1 %982, label %986, label %983

; <label>:983                                     ; preds = %932
  %984 = load i32, i32* %l_383, align 4, !tbaa !1
  %985 = icmp ne i32 %984, 0
  br label %986

; <label>:986                                     ; preds = %983, %932
  %987 = phi i1 [ true, %932 ], [ %985, %983 ]
  %988 = zext i1 %987 to i32
  %989 = sext i32 %988 to i64
  %990 = load i64*, i64** @g_547, align 8, !tbaa !5
  %991 = load i64, i64* %990, align 8, !tbaa !7
  %992 = icmp ne i64 %989, %991
  %993 = zext i1 %992 to i32
  %994 = trunc i32 %993 to i16
  %995 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %994, i32 13)
  %996 = sext i16 %995 to i32
  %997 = icmp ne i32 %996, 0
  br i1 %997, label %998, label %999

; <label>:998                                     ; preds = %986
  br label %999

; <label>:999                                     ; preds = %998, %986
  %1000 = phi i1 [ false, %986 ], [ true, %998 ]
  %1001 = zext i1 %1000 to i32
  %1002 = load i32, i32* %l_383, align 4, !tbaa !1
  %1003 = icmp sle i32 %1001, %1002
  %1004 = zext i1 %1003 to i32
  %1005 = sext i32 %1004 to i64
  %1006 = and i64 %1005, 0
  %1007 = load i32, i32* @g_65, align 4, !tbaa !1
  %1008 = sext i32 %1007 to i64
  %1009 = xor i64 %1006, %1008
  %1010 = load i32, i32* %l_553, align 4, !tbaa !1
  %1011 = zext i32 %1010 to i64
  %1012 = icmp ne i64 %1009, %1011
  %1013 = zext i1 %1012 to i32
  %1014 = trunc i32 %1013 to i8
  %1015 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), align 4, !tbaa !1
  %1016 = trunc i32 %1015 to i8
  %1017 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1014, i8 signext %1016)
  %1018 = sext i8 %1017 to i32
  %1019 = icmp ule i32 %937, %1018
  %1020 = zext i1 %1019 to i32
  %1021 = trunc i32 %1020 to i8
  %1022 = load i32, i32* %l_553, align 4, !tbaa !1
  %1023 = trunc i32 %1022 to i8
  %1024 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1021, i8 signext %1023)
  %1025 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %1026 = trunc i64 %1025 to i16
  store i16 %1026, i16* @g_378, align 2, !tbaa !10
  %1027 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %936, i16 signext %1026)
  %1028 = sext i16 %1027 to i32
  %1029 = load i32, i32* %l_510, align 4, !tbaa !1
  %1030 = icmp sgt i32 %1028, %1029
  %1031 = zext i1 %1030 to i32
  %1032 = load i16, i16* %l_483, align 2, !tbaa !10
  %1033 = sext i16 %1032 to i64
  %1034 = icmp sle i64 %1033, 1681
  br i1 %1034, label %1035, label %1054

; <label>:1035                                    ; preds = %999
  %1036 = bitcast i32** %l_554 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1036) #1
  store i32* %l_510, i32** %l_554, align 8, !tbaa !5
  store i32* %l_427, i32** %l_554, align 8, !tbaa !5
  store i32 0, i32* %l_440, align 4, !tbaa !1
  br label %1037

; <label>:1037                                    ; preds = %1043, %1035
  %1038 = load i32, i32* %l_440, align 4, !tbaa !1
  %1039 = icmp ule i32 %1038, 8
  br i1 %1039, label %1040, label %1046

; <label>:1040                                    ; preds = %1037
  %1041 = bitcast i32** %l_555 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1041) #1
  store i32* %l_517, i32** %l_555, align 8, !tbaa !5
  store i32* null, i32** %l_555, align 8, !tbaa !5
  %1042 = bitcast i32** %l_555 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1042) #1
  br label %1043

; <label>:1043                                    ; preds = %1040
  %1044 = load i32, i32* %l_440, align 4, !tbaa !1
  %1045 = add i32 %1044, 1
  store i32 %1045, i32* %l_440, align 4, !tbaa !1
  br label %1037

; <label>:1046                                    ; preds = %1037
  %1047 = load i32, i32* %l_436, align 4, !tbaa !1
  %1048 = icmp ne i32 %1047, 0
  br i1 %1048, label %1049, label %1050

; <label>:1049                                    ; preds = %1046
  store i32 5, i32* %3
  br label %1051

; <label>:1050                                    ; preds = %1046
  store i32 0, i32* %3
  br label %1051

; <label>:1051                                    ; preds = %1050, %1049
  %1052 = bitcast i32** %l_554 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1052) #1
  %cleanup.dest.11 = load i32, i32* %3
  switch i32 %cleanup.dest.11, label %1334 [
    i32 0, label %1053
  ]

; <label>:1053                                    ; preds = %1051
  br label %1333

; <label>:1054                                    ; preds = %999
  call void @llvm.lifetime.start(i64 1, i8* %l_556) #1
  store i8 9, i8* %l_556, align 1, !tbaa !9
  %1055 = bitcast i32** %l_591 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1055) #1
  store i32* %l_484, i32** %l_591, align 8, !tbaa !5
  %1056 = bitcast i32* %l_592 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1056) #1
  store i32 0, i32* %l_592, align 4, !tbaa !1
  %1057 = bitcast [3 x i32]* %l_593 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %1057) #1
  %1058 = bitcast [1 x [8 x [4 x i64]]]* %l_609 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1058) #1
  %1059 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1059) #1
  %1060 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1060) #1
  %1061 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1061) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %1062

; <label>:1062                                    ; preds = %1069, %1054
  %1063 = load i32, i32* %i12, align 4, !tbaa !1
  %1064 = icmp slt i32 %1063, 3
  br i1 %1064, label %1065, label %1072

; <label>:1065                                    ; preds = %1062
  %1066 = load i32, i32* %i12, align 4, !tbaa !1
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds [3 x i32], [3 x i32]* %l_593, i32 0, i64 %1067
  store i32 1271368090, i32* %1068, align 4, !tbaa !1
  br label %1069

; <label>:1069                                    ; preds = %1065
  %1070 = load i32, i32* %i12, align 4, !tbaa !1
  %1071 = add nsw i32 %1070, 1
  store i32 %1071, i32* %i12, align 4, !tbaa !1
  br label %1062

; <label>:1072                                    ; preds = %1062
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %1073

; <label>:1073                                    ; preds = %1102, %1072
  %1074 = load i32, i32* %i12, align 4, !tbaa !1
  %1075 = icmp slt i32 %1074, 1
  br i1 %1075, label %1076, label %1105

; <label>:1076                                    ; preds = %1073
  store i32 0, i32* %j13, align 4, !tbaa !1
  br label %1077

; <label>:1077                                    ; preds = %1098, %1076
  %1078 = load i32, i32* %j13, align 4, !tbaa !1
  %1079 = icmp slt i32 %1078, 8
  br i1 %1079, label %1080, label %1101

; <label>:1080                                    ; preds = %1077
  store i32 0, i32* %k14, align 4, !tbaa !1
  br label %1081

; <label>:1081                                    ; preds = %1094, %1080
  %1082 = load i32, i32* %k14, align 4, !tbaa !1
  %1083 = icmp slt i32 %1082, 4
  br i1 %1083, label %1084, label %1097

; <label>:1084                                    ; preds = %1081
  %1085 = load i32, i32* %k14, align 4, !tbaa !1
  %1086 = sext i32 %1085 to i64
  %1087 = load i32, i32* %j13, align 4, !tbaa !1
  %1088 = sext i32 %1087 to i64
  %1089 = load i32, i32* %i12, align 4, !tbaa !1
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds [1 x [8 x [4 x i64]]], [1 x [8 x [4 x i64]]]* %l_609, i32 0, i64 %1090
  %1092 = getelementptr inbounds [8 x [4 x i64]], [8 x [4 x i64]]* %1091, i32 0, i64 %1088
  %1093 = getelementptr inbounds [4 x i64], [4 x i64]* %1092, i32 0, i64 %1086
  store i64 1, i64* %1093, align 8, !tbaa !7
  br label %1094

; <label>:1094                                    ; preds = %1084
  %1095 = load i32, i32* %k14, align 4, !tbaa !1
  %1096 = add nsw i32 %1095, 1
  store i32 %1096, i32* %k14, align 4, !tbaa !1
  br label %1081

; <label>:1097                                    ; preds = %1081
  br label %1098

; <label>:1098                                    ; preds = %1097
  %1099 = load i32, i32* %j13, align 4, !tbaa !1
  %1100 = add nsw i32 %1099, 1
  store i32 %1100, i32* %j13, align 4, !tbaa !1
  br label %1077

; <label>:1101                                    ; preds = %1077
  br label %1102

; <label>:1102                                    ; preds = %1101
  %1103 = load i32, i32* %i12, align 4, !tbaa !1
  %1104 = add nsw i32 %1103, 1
  store i32 %1104, i32* %i12, align 4, !tbaa !1
  br label %1073

; <label>:1105                                    ; preds = %1073
  %1106 = load i32, i32* %l_383, align 4, !tbaa !1
  %1107 = sext i32 %1106 to i64
  %1108 = trunc i64 %1107 to i32
  store i32 %1108, i32* %l_383, align 4, !tbaa !1
  %1109 = load i8, i8* %l_556, align 1, !tbaa !9
  %1110 = sext i8 %1109 to i32
  %1111 = load i32, i32* @g_226, align 4, !tbaa !1
  %1112 = trunc i32 %1111 to i8
  %1113 = load i8, i8* %l_404, align 1, !tbaa !9
  %1114 = zext i8 %1113 to i32
  %1115 = load i32, i32* @g_65, align 4, !tbaa !1
  %1116 = icmp ne i32 %1115, 0
  br i1 %1116, label %1117, label %1120

; <label>:1117                                    ; preds = %1105
  %1118 = load i32, i32* %l_510, align 4, !tbaa !1
  %1119 = icmp ne i32 %1118, 0
  br label %1120

; <label>:1120                                    ; preds = %1117, %1105
  %1121 = phi i1 [ false, %1105 ], [ %1119, %1117 ]
  %1122 = zext i1 %1121 to i32
  %1123 = load i32, i32* %l_383, align 4, !tbaa !1
  %1124 = call i32 @safe_sub_func_uint32_t_u_u(i32 0, i32 %1123)
  %1125 = and i32 %1122, %1124
  %1126 = zext i32 %1125 to i64
  %1127 = load i64, i64* @g_509, align 8, !tbaa !7
  %1128 = icmp ne i64 %1126, %1127
  %1129 = zext i1 %1128 to i32
  %1130 = and i32 %1114, %1129
  %1131 = load i32, i32* @g_566, align 4, !tbaa !1
  %1132 = zext i32 %1131 to i64
  %1133 = xor i64 9, %1132
  %1134 = load i32, i32* %l_427, align 4, !tbaa !1
  %1135 = sext i32 %1134 to i64
  %1136 = icmp ne i64 %1133, %1135
  %1137 = zext i1 %1136 to i32
  %1138 = load i8, i8* %l_556, align 1, !tbaa !9
  %1139 = sext i8 %1138 to i32
  %1140 = call i32 @safe_div_func_uint32_t_u_u(i32 %1137, i32 %1139)
  %1141 = trunc i32 %1140 to i8
  %1142 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1112, i8 signext %1141)
  %1143 = sext i8 %1142 to i32
  store i32 %1143, i32* %l_510, align 4, !tbaa !1
  %1144 = sext i32 %1143 to i64
  %1145 = call i64 @safe_sub_func_int64_t_s_s(i64 -1, i64 %1144)
  %1146 = xor i64 %1145, -1
  %1147 = icmp sle i32 %1110, 0
  br i1 %1147, label %1148, label %1252

; <label>:1148                                    ; preds = %1120
  %1149 = bitcast [8 x i8]* %l_572 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1149) #1
  %1150 = bitcast [8 x i8]* %l_572 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @func_21.l_572, i32 0, i32 0), i64 8, i32 1, i1 false)
  %1151 = bitcast i32* %l_585 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1151) #1
  store i32 0, i32* %l_585, align 4, !tbaa !1
  %1152 = bitcast i32** %l_589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1152) #1
  store i32* null, i32** %l_589, align 8, !tbaa !5
  %1153 = bitcast i32** %l_590 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1153) #1
  store i32* %l_440, i32** %l_590, align 8, !tbaa !5
  %1154 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1154) #1
  %1155 = getelementptr inbounds [8 x i8], [8 x i8]* %l_572, i32 0, i64 3
  %1156 = load i8, i8* %1155, align 1, !tbaa !9
  %1157 = getelementptr inbounds [8 x i8], [8 x i8]* %l_572, i32 0, i64 0
  %1158 = load i8, i8* %1157, align 1, !tbaa !9
  %1159 = zext i8 %1158 to i64
  %1160 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext -4, i32 4)
  %1161 = getelementptr inbounds [8 x i8], [8 x i8]* %l_572, i32 0, i64 3
  %1162 = load i8, i8* %1161, align 1, !tbaa !9
  %1163 = zext i8 %1162 to i32
  %1164 = load i32, i32* %l_584, align 4, !tbaa !1
  %1165 = icmp sgt i32 %1163, %1164
  %1166 = zext i1 %1165 to i32
  store i32 %1166, i32* %l_585, align 4, !tbaa !1
  %1167 = load i32, i32* %l_436, align 4, !tbaa !1
  %1168 = load i32, i32* @g_226, align 4, !tbaa !1
  %1169 = load i8, i8* %l_556, align 1, !tbaa !9
  %1170 = sext i8 %1169 to i32
  %1171 = call i32 @safe_sub_func_uint32_t_u_u(i32 %1168, i32 %1170)
  %1172 = or i32 %1166, %1171
  %1173 = load i8, i8* %l_404, align 1, !tbaa !9
  %1174 = zext i8 %1173 to i32
  %1175 = icmp ne i32 1, %1174
  %1176 = zext i1 %1175 to i32
  %1177 = trunc i32 %1176 to i8
  %1178 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1160, i8 zeroext %1177)
  %1179 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1178, i8 signext 100)
  %1180 = sext i8 %1179 to i64
  %1181 = call i64 @safe_div_func_int64_t_s_s(i64 %1159, i64 %1180)
  %1182 = load i32, i32* @g_226, align 4, !tbaa !1
  %1183 = zext i32 %1182 to i64
  %1184 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1181, i64 %1183)
  %1185 = icmp ne i64 %1184, 0
  %1186 = xor i1 %1185, true
  %1187 = zext i1 %1186 to i32
  %1188 = load i16*, i16** %l_487, align 8, !tbaa !5
  %1189 = load i16, i16* %1188, align 2, !tbaa !10
  %1190 = zext i16 %1189 to i32
  %1191 = and i32 %1190, %1187
  %1192 = trunc i32 %1191 to i16
  store i16 %1192, i16* %1188, align 2, !tbaa !10
  %1193 = zext i16 %1192 to i64
  %1194 = icmp ne i64 -1, %1193
  %1195 = zext i1 %1194 to i32
  %1196 = load i16**, i16*** %l_531, align 8, !tbaa !5
  %1197 = load i16*, i16** %1196, align 8, !tbaa !5
  %1198 = icmp ne i16* %1197, null
  %1199 = zext i1 %1198 to i32
  %1200 = sext i32 %1199 to i64
  %1201 = or i64 %1200, 59626
  %1202 = load i32, i32* %l_588, align 4, !tbaa !1
  %1203 = sext i32 %1202 to i64
  %1204 = xor i64 %1203, %1201
  %1205 = trunc i64 %1204 to i32
  store i32 %1205, i32* %l_588, align 4, !tbaa !1
  %1206 = load i32*, i32** %l_590, align 8, !tbaa !5
  store i32 %1205, i32* %1206, align 4, !tbaa !1
  %1207 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %1205)
  %1208 = icmp ne i32 %1207, 0
  br i1 %1208, label %1213, label %1209

; <label>:1209                                    ; preds = %1148
  %1210 = load i8, i8* %l_556, align 1, !tbaa !9
  %1211 = sext i8 %1210 to i32
  %1212 = icmp ne i32 %1211, 0
  br label %1213

; <label>:1213                                    ; preds = %1209, %1148
  %1214 = phi i1 [ true, %1148 ], [ %1212, %1209 ]
  %1215 = zext i1 %1214 to i32
  %1216 = trunc i32 %1215 to i16
  %1217 = load i32, i32* %l_436, align 4, !tbaa !1
  %1218 = trunc i32 %1217 to i16
  %1219 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1216, i16 zeroext %1218)
  %1220 = zext i16 %1219 to i32
  %1221 = icmp ne i32 %1220, 0
  br i1 %1221, label %1222, label %1223

; <label>:1222                                    ; preds = %1213
  br label %1223

; <label>:1223                                    ; preds = %1222, %1213
  %1224 = phi i1 [ false, %1213 ], [ true, %1222 ]
  %1225 = zext i1 %1224 to i32
  %1226 = trunc i32 %1225 to i16
  %1227 = load i32, i32* %l_427, align 4, !tbaa !1
  %1228 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %1226, i32 %1227)
  %1229 = zext i16 %1228 to i32
  %1230 = load i8, i8* %l_556, align 1, !tbaa !9
  %1231 = sext i8 %1230 to i32
  %1232 = icmp slt i32 %1229, %1231
  %1233 = zext i1 %1232 to i32
  %1234 = load i32, i32* %l_517, align 4, !tbaa !1
  %1235 = sext i32 %1234 to i64
  %1236 = xor i64 %1235, -1
  %1237 = trunc i64 %1236 to i32
  store i32 %1237, i32* %l_517, align 4, !tbaa !1
  %1238 = load i8, i8* @g_516, align 1, !tbaa !9
  store i32* %l_510, i32** %l_591, align 8, !tbaa !5
  %1239 = load i32*, i32** %l_591, align 8, !tbaa !5
  %1240 = load i32, i32* %1239, align 4, !tbaa !1
  %1241 = sext i32 %1240 to i64
  %1242 = xor i64 %1241, 0
  %1243 = trunc i64 %1242 to i32
  store i32 %1243, i32* %1239, align 4, !tbaa !1
  %1244 = getelementptr inbounds [8 x i8], [8 x i8]* %l_572, i32 0, i64 7
  %1245 = load i8, i8* %1244, align 1, !tbaa !9
  %1246 = zext i8 %1245 to i32
  store i32 %1246, i32* %1
  store i32 1, i32* %3
  %1247 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1247) #1
  %1248 = bitcast i32** %l_590 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1248) #1
  %1249 = bitcast i32** %l_589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1249) #1
  %1250 = bitcast i32* %l_585 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1250) #1
  %1251 = bitcast [8 x i8]* %l_572 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1251) #1
  br label %1324

; <label>:1252                                    ; preds = %1120
  %1253 = bitcast i32* %l_594 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1253) #1
  store i32 -1, i32* %l_594, align 4, !tbaa !1
  %1254 = bitcast [4 x i64]* %l_597 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1254) #1
  %1255 = bitcast i32* %l_600 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1255) #1
  store i32 1, i32* %l_600, align 4, !tbaa !1
  %1256 = bitcast [4 x i32]* %l_601 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1256) #1
  %1257 = bitcast i32* %l_604 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1257) #1
  store i32 -4, i32* %l_604, align 4, !tbaa !1
  %1258 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1258) #1
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %1259

; <label>:1259                                    ; preds = %1266, %1252
  %1260 = load i32, i32* %i16, align 4, !tbaa !1
  %1261 = icmp slt i32 %1260, 4
  br i1 %1261, label %1262, label %1269

; <label>:1262                                    ; preds = %1259
  %1263 = load i32, i32* %i16, align 4, !tbaa !1
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds [4 x i64], [4 x i64]* %l_597, i32 0, i64 %1264
  store i64 3121349363480799651, i64* %1265, align 8, !tbaa !7
  br label %1266

; <label>:1266                                    ; preds = %1262
  %1267 = load i32, i32* %i16, align 4, !tbaa !1
  %1268 = add nsw i32 %1267, 1
  store i32 %1268, i32* %i16, align 4, !tbaa !1
  br label %1259

; <label>:1269                                    ; preds = %1259
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %1270

; <label>:1270                                    ; preds = %1277, %1269
  %1271 = load i32, i32* %i16, align 4, !tbaa !1
  %1272 = icmp slt i32 %1271, 4
  br i1 %1272, label %1273, label %1280

; <label>:1273                                    ; preds = %1270
  %1274 = load i32, i32* %i16, align 4, !tbaa !1
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds [4 x i32], [4 x i32]* %l_601, i32 0, i64 %1275
  store i32 -366204352, i32* %1276, align 4, !tbaa !1
  br label %1277

; <label>:1277                                    ; preds = %1273
  %1278 = load i32, i32* %i16, align 4, !tbaa !1
  %1279 = add nsw i32 %1278, 1
  store i32 %1279, i32* %i16, align 4, !tbaa !1
  br label %1270

; <label>:1280                                    ; preds = %1270
  %1281 = load i32, i32* %l_594, align 4, !tbaa !1
  %1282 = add i32 %1281, -1
  store i32 %1282, i32* %l_594, align 4, !tbaa !1
  %1283 = load i32*, i32** %l_591, align 8, !tbaa !5
  %1284 = load i32, i32* %1283, align 4, !tbaa !1
  %1285 = icmp ne i32 %1284, 0
  br i1 %1285, label %1286, label %1287

; <label>:1286                                    ; preds = %1280
  store i32 7, i32* %3
  br label %1293

; <label>:1287                                    ; preds = %1280
  %1288 = getelementptr inbounds [1 x [8 x [4 x i64]]], [1 x [8 x [4 x i64]]]* %l_609, i32 0, i64 0
  %1289 = getelementptr inbounds [8 x [4 x i64]], [8 x [4 x i64]]* %1288, i32 0, i64 6
  %1290 = getelementptr inbounds [4 x i64], [4 x i64]* %1289, i32 0, i64 2
  %1291 = load i64, i64* %1290, align 8, !tbaa !7
  %1292 = add i64 %1291, -1
  store i64 %1292, i64* %1290, align 8, !tbaa !7
  store i32 0, i32* %3
  br label %1293

; <label>:1293                                    ; preds = %1287, %1286
  %1294 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1294) #1
  %1295 = bitcast i32* %l_604 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1295) #1
  %1296 = bitcast [4 x i32]* %l_601 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1296) #1
  %1297 = bitcast i32* %l_600 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1297) #1
  %1298 = bitcast [4 x i64]* %l_597 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1298) #1
  %1299 = bitcast i32* %l_594 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1299) #1
  %cleanup.dest.17 = load i32, i32* %3
  switch i32 %cleanup.dest.17, label %1324 [
    i32 0, label %1300
  ]

; <label>:1300                                    ; preds = %1293
  br label %1301

; <label>:1301                                    ; preds = %1300
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), i32** @g_236, align 8, !tbaa !5
  store i32 0, i32* %l_584, align 4, !tbaa !1
  br label %1302

; <label>:1302                                    ; preds = %1318, %1301
  %1303 = load i32, i32* %l_584, align 4, !tbaa !1
  %1304 = icmp sle i32 %1303, 25
  br i1 %1304, label %1305, label %1323

; <label>:1305                                    ; preds = %1302
  %1306 = bitcast i64* %l_614 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1306) #1
  store i64 1, i64* %l_614, align 8, !tbaa !7
  %1307 = load i64, i64* %l_614, align 8, !tbaa !7
  %1308 = load i16, i16* %l_615, align 2, !tbaa !10
  %1309 = sext i16 %1308 to i64
  %1310 = xor i64 %1309, %1307
  %1311 = trunc i64 %1310 to i16
  store i16 %1311, i16* %l_615, align 2, !tbaa !10
  %1312 = load i32*, i32** %l_591, align 8, !tbaa !5
  %1313 = load i32, i32* %1312, align 4, !tbaa !1
  %1314 = sext i32 %1313 to i64
  %1315 = load i64, i64* @g_616, align 8, !tbaa !7
  %1316 = or i64 %1315, %1314
  store i64 %1316, i64* @g_616, align 8, !tbaa !7
  %1317 = bitcast i64* %l_614 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1317) #1
  br label %1318

; <label>:1318                                    ; preds = %1305
  %1319 = load i32, i32* %l_584, align 4, !tbaa !1
  %1320 = trunc i32 %1319 to i16
  %1321 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %1320, i16 signext 3)
  %1322 = sext i16 %1321 to i32
  store i32 %1322, i32* %l_584, align 4, !tbaa !1
  br label %1302

; <label>:1323                                    ; preds = %1302
  store i32 0, i32* %3
  br label %1324

; <label>:1324                                    ; preds = %1323, %1293, %1223
  %1325 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1325) #1
  %1326 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1326) #1
  %1327 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1327) #1
  %1328 = bitcast [1 x [8 x [4 x i64]]]* %l_609 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %1328) #1
  %1329 = bitcast [3 x i32]* %l_593 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1329) #1
  %1330 = bitcast i32* %l_592 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1330) #1
  %1331 = bitcast i32** %l_591 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1331) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_556) #1
  %cleanup.dest.18 = load i32, i32* %3
  switch i32 %cleanup.dest.18, label %1334 [
    i32 0, label %1332
  ]

; <label>:1332                                    ; preds = %1324
  br label %1333

; <label>:1333                                    ; preds = %1332, %1053
  store i32 0, i32* %3
  br label %1334

; <label>:1334                                    ; preds = %1333, %1324, %1051
  %1335 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1335) #1
  %1336 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1336) #1
  %1337 = bitcast i8** %l_539 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1337) #1
  %1338 = bitcast [6 x [4 x i32**]]* %l_512 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %1338) #1
  %1339 = bitcast i32* %l_484 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1339) #1
  %1340 = bitcast [6 x [8 x i16*]]* %l_466 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %1340) #1
  %1341 = bitcast i16** %l_464 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1341) #1
  %1342 = bitcast i16** %l_457 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1342) #1
  %1343 = bitcast i32** %l_447 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1343) #1
  %1344 = bitcast i32* %l_440 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1344) #1
  %cleanup.dest.19 = load i32, i32* %3
  switch i32 %cleanup.dest.19, label %1788 [
    i32 0, label %1345
  ]

; <label>:1345                                    ; preds = %1334
  br label %1346

; <label>:1346                                    ; preds = %1345
  store i16 0, i16* @g_104, align 2, !tbaa !10
  br label %1347

; <label>:1347                                    ; preds = %1622, %1346
  %1348 = load i16, i16* @g_104, align 2, !tbaa !10
  %1349 = zext i16 %1348 to i32
  %1350 = icmp sle i32 %1349, 0
  br i1 %1350, label %1351, label %1627

; <label>:1351                                    ; preds = %1347
  %1352 = bitcast [10 x [8 x [3 x i32]]]* %l_617 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %1352) #1
  %1353 = bitcast [10 x [8 x [3 x i32]]]* %l_617 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1353, i8* bitcast ([10 x [8 x [3 x i32]]]* @func_21.l_617 to i8*), i64 960, i32 16, i1 false)
  %1354 = bitcast i16** %l_642 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1354) #1
  store i16* @g_643, i16** %l_642, align 8, !tbaa !5
  %1355 = bitcast i16** %l_644 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1355) #1
  store i16* getelementptr inbounds ([1 x [7 x i16]], [1 x [7 x i16]]* @g_645, i32 0, i64 0, i64 0), i16** %l_644, align 8, !tbaa !5
  %1356 = bitcast i8** %l_646 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1356) #1
  store i8* null, i8** %l_646, align 8, !tbaa !5
  %1357 = bitcast i8** %l_648 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1357) #1
  store i8* @g_516, i8** %l_648, align 8, !tbaa !5
  %1358 = bitcast i8** %l_649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1358) #1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @g_650, i32 0, i64 0), i8** %l_649, align 8, !tbaa !5
  %1359 = bitcast [1 x [7 x i32]]* %l_651 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %1359) #1
  %1360 = bitcast [7 x [8 x i16*]]* %l_652 to i8*
  call void @llvm.lifetime.start(i64 448, i8* %1360) #1
  %1361 = getelementptr inbounds [7 x [8 x i16*]], [7 x [8 x i16*]]* %l_652, i64 0, i64 0
  %1362 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1361, i64 0, i64 0
  store i16* %l_647, i16** %1362, !tbaa !5
  %1363 = getelementptr inbounds i16*, i16** %1362, i64 1
  store i16* %l_647, i16** %1363, !tbaa !5
  %1364 = getelementptr inbounds i16*, i16** %1363, i64 1
  store i16* null, i16** %1364, !tbaa !5
  %1365 = getelementptr inbounds i16*, i16** %1364, i64 1
  store i16* %l_647, i16** %1365, !tbaa !5
  %1366 = getelementptr inbounds i16*, i16** %1365, i64 1
  store i16* %l_647, i16** %1366, !tbaa !5
  %1367 = getelementptr inbounds i16*, i16** %1366, i64 1
  store i16* null, i16** %1367, !tbaa !5
  %1368 = getelementptr inbounds i16*, i16** %1367, i64 1
  store i16* %l_647, i16** %1368, !tbaa !5
  %1369 = getelementptr inbounds i16*, i16** %1368, i64 1
  store i16* %l_647, i16** %1369, !tbaa !5
  %1370 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1361, i64 1
  %1371 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1370, i64 0, i64 0
  store i16* null, i16** %1371, !tbaa !5
  %1372 = getelementptr inbounds i16*, i16** %1371, i64 1
  store i16* %l_647, i16** %1372, !tbaa !5
  %1373 = getelementptr inbounds i16*, i16** %1372, i64 1
  store i16* null, i16** %1373, !tbaa !5
  %1374 = getelementptr inbounds i16*, i16** %1373, i64 1
  store i16* null, i16** %1374, !tbaa !5
  %1375 = getelementptr inbounds i16*, i16** %1374, i64 1
  store i16* %l_647, i16** %1375, !tbaa !5
  %1376 = getelementptr inbounds i16*, i16** %1375, i64 1
  store i16* null, i16** %1376, !tbaa !5
  %1377 = getelementptr inbounds i16*, i16** %1376, i64 1
  store i16* null, i16** %1377, !tbaa !5
  %1378 = getelementptr inbounds i16*, i16** %1377, i64 1
  store i16* %l_647, i16** %1378, !tbaa !5
  %1379 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1370, i64 1
  %1380 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1379, i64 0, i64 0
  store i16* %l_647, i16** %1380, !tbaa !5
  %1381 = getelementptr inbounds i16*, i16** %1380, i64 1
  store i16* null, i16** %1381, !tbaa !5
  %1382 = getelementptr inbounds i16*, i16** %1381, i64 1
  store i16* null, i16** %1382, !tbaa !5
  %1383 = getelementptr inbounds i16*, i16** %1382, i64 1
  store i16* %l_647, i16** %1383, !tbaa !5
  %1384 = getelementptr inbounds i16*, i16** %1383, i64 1
  store i16* null, i16** %1384, !tbaa !5
  %1385 = getelementptr inbounds i16*, i16** %1384, i64 1
  store i16* null, i16** %1385, !tbaa !5
  %1386 = getelementptr inbounds i16*, i16** %1385, i64 1
  store i16* %l_647, i16** %1386, !tbaa !5
  %1387 = getelementptr inbounds i16*, i16** %1386, i64 1
  store i16* null, i16** %1387, !tbaa !5
  %1388 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1379, i64 1
  %1389 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1388, i64 0, i64 0
  store i16* %l_647, i16** %1389, !tbaa !5
  %1390 = getelementptr inbounds i16*, i16** %1389, i64 1
  store i16* %l_647, i16** %1390, !tbaa !5
  %1391 = getelementptr inbounds i16*, i16** %1390, i64 1
  store i16* null, i16** %1391, !tbaa !5
  %1392 = getelementptr inbounds i16*, i16** %1391, i64 1
  store i16* %l_647, i16** %1392, !tbaa !5
  %1393 = getelementptr inbounds i16*, i16** %1392, i64 1
  store i16* %l_647, i16** %1393, !tbaa !5
  %1394 = getelementptr inbounds i16*, i16** %1393, i64 1
  store i16* null, i16** %1394, !tbaa !5
  %1395 = getelementptr inbounds i16*, i16** %1394, i64 1
  store i16* %l_647, i16** %1395, !tbaa !5
  %1396 = getelementptr inbounds i16*, i16** %1395, i64 1
  store i16* %l_647, i16** %1396, !tbaa !5
  %1397 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1388, i64 1
  %1398 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1397, i64 0, i64 0
  store i16* null, i16** %1398, !tbaa !5
  %1399 = getelementptr inbounds i16*, i16** %1398, i64 1
  store i16* %l_647, i16** %1399, !tbaa !5
  %1400 = getelementptr inbounds i16*, i16** %1399, i64 1
  store i16* null, i16** %1400, !tbaa !5
  %1401 = getelementptr inbounds i16*, i16** %1400, i64 1
  store i16* null, i16** %1401, !tbaa !5
  %1402 = getelementptr inbounds i16*, i16** %1401, i64 1
  store i16* %l_647, i16** %1402, !tbaa !5
  %1403 = getelementptr inbounds i16*, i16** %1402, i64 1
  store i16* null, i16** %1403, !tbaa !5
  %1404 = getelementptr inbounds i16*, i16** %1403, i64 1
  store i16* null, i16** %1404, !tbaa !5
  %1405 = getelementptr inbounds i16*, i16** %1404, i64 1
  store i16* %l_647, i16** %1405, !tbaa !5
  %1406 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1397, i64 1
  %1407 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1406, i64 0, i64 0
  store i16* %l_647, i16** %1407, !tbaa !5
  %1408 = getelementptr inbounds i16*, i16** %1407, i64 1
  store i16* null, i16** %1408, !tbaa !5
  %1409 = getelementptr inbounds i16*, i16** %1408, i64 1
  store i16* null, i16** %1409, !tbaa !5
  %1410 = getelementptr inbounds i16*, i16** %1409, i64 1
  store i16* %l_647, i16** %1410, !tbaa !5
  %1411 = getelementptr inbounds i16*, i16** %1410, i64 1
  store i16* null, i16** %1411, !tbaa !5
  %1412 = getelementptr inbounds i16*, i16** %1411, i64 1
  store i16* null, i16** %1412, !tbaa !5
  %1413 = getelementptr inbounds i16*, i16** %1412, i64 1
  store i16* %l_647, i16** %1413, !tbaa !5
  %1414 = getelementptr inbounds i16*, i16** %1413, i64 1
  store i16* null, i16** %1414, !tbaa !5
  %1415 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1406, i64 1
  %1416 = getelementptr inbounds [8 x i16*], [8 x i16*]* %1415, i64 0, i64 0
  store i16* %l_647, i16** %1416, !tbaa !5
  %1417 = getelementptr inbounds i16*, i16** %1416, i64 1
  store i16* %l_647, i16** %1417, !tbaa !5
  %1418 = getelementptr inbounds i16*, i16** %1417, i64 1
  store i16* null, i16** %1418, !tbaa !5
  %1419 = getelementptr inbounds i16*, i16** %1418, i64 1
  store i16* %l_647, i16** %1419, !tbaa !5
  %1420 = getelementptr inbounds i16*, i16** %1419, i64 1
  store i16* %l_647, i16** %1420, !tbaa !5
  %1421 = getelementptr inbounds i16*, i16** %1420, i64 1
  store i16* null, i16** %1421, !tbaa !5
  %1422 = getelementptr inbounds i16*, i16** %1421, i64 1
  store i16* %l_647, i16** %1422, !tbaa !5
  %1423 = getelementptr inbounds i16*, i16** %1422, i64 1
  store i16* %l_647, i16** %1423, !tbaa !5
  %1424 = bitcast i32* %l_654 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1424) #1
  store i32 -2, i32* %l_654, align 4, !tbaa !1
  %1425 = bitcast i32** %l_655 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1425) #1
  store i32* null, i32** %l_655, align 8, !tbaa !5
  %1426 = bitcast i32** %l_656 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1426) #1
  store i32* %l_383, i32** %l_656, align 8, !tbaa !5
  %1427 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1427) #1
  %1428 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1428) #1
  %1429 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1429) #1
  store i32 0, i32* %i20, align 4, !tbaa !1
  br label %1430

; <label>:1430                                    ; preds = %1448, %1351
  %1431 = load i32, i32* %i20, align 4, !tbaa !1
  %1432 = icmp slt i32 %1431, 1
  br i1 %1432, label %1433, label %1451

; <label>:1433                                    ; preds = %1430
  store i32 0, i32* %j21, align 4, !tbaa !1
  br label %1434

; <label>:1434                                    ; preds = %1444, %1433
  %1435 = load i32, i32* %j21, align 4, !tbaa !1
  %1436 = icmp slt i32 %1435, 7
  br i1 %1436, label %1437, label %1447

; <label>:1437                                    ; preds = %1434
  %1438 = load i32, i32* %j21, align 4, !tbaa !1
  %1439 = sext i32 %1438 to i64
  %1440 = load i32, i32* %i20, align 4, !tbaa !1
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_651, i32 0, i64 %1441
  %1443 = getelementptr inbounds [7 x i32], [7 x i32]* %1442, i32 0, i64 %1439
  store i32 1, i32* %1443, align 4, !tbaa !1
  br label %1444

; <label>:1444                                    ; preds = %1437
  %1445 = load i32, i32* %j21, align 4, !tbaa !1
  %1446 = add nsw i32 %1445, 1
  store i32 %1446, i32* %j21, align 4, !tbaa !1
  br label %1434

; <label>:1447                                    ; preds = %1434
  br label %1448

; <label>:1448                                    ; preds = %1447
  %1449 = load i32, i32* %i20, align 4, !tbaa !1
  %1450 = add nsw i32 %1449, 1
  store i32 %1450, i32* %i20, align 4, !tbaa !1
  br label %1430

; <label>:1451                                    ; preds = %1430
  store i32 0, i32* @g_92, align 4, !tbaa !1
  br label %1452

; <label>:1452                                    ; preds = %1459, %1451
  %1453 = load i32, i32* @g_92, align 4, !tbaa !1
  %1454 = icmp ult i32 %1453, 5
  br i1 %1454, label %1455, label %1462

; <label>:1455                                    ; preds = %1452
  %1456 = load i32, i32* @g_92, align 4, !tbaa !1
  %1457 = zext i32 %1456 to i64
  %1458 = getelementptr inbounds [5 x i64*], [5 x i64*]* %l_393, i32 0, i64 %1457
  store i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), i64** %1458, align 8, !tbaa !5
  br label %1459

; <label>:1459                                    ; preds = %1455
  %1460 = load i32, i32* @g_92, align 4, !tbaa !1
  %1461 = add i32 %1460, 1
  store i32 %1461, i32* @g_92, align 4, !tbaa !1
  br label %1452

; <label>:1462                                    ; preds = %1452
  %1463 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* %l_617, i32 0, i64 6
  %1464 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %1463, i32 0, i64 6
  %1465 = getelementptr inbounds [3 x i32], [3 x i32]* %1464, i32 0, i64 0
  %1466 = load i32, i32* %1465, align 4, !tbaa !1
  %1467 = icmp ne i32 %1466, 0
  br i1 %1467, label %1468, label %1469

; <label>:1468                                    ; preds = %1462
  store i32 35, i32* %3
  br label %1606

; <label>:1469                                    ; preds = %1462
  %1470 = load i32, i32* %l_603, align 4, !tbaa !1
  %1471 = icmp ne i32 %1470, 0
  br i1 %1471, label %1472, label %1473

; <label>:1472                                    ; preds = %1469
  store i32 37, i32* %3
  br label %1606

; <label>:1473                                    ; preds = %1469
  %1474 = load i16*, i16** %l_487, align 8, !tbaa !5
  store i16 9, i16* %1474, align 2, !tbaa !10
  %1475 = load i16, i16* %l_483, align 2, !tbaa !10
  %1476 = sext i16 %1475 to i32
  %1477 = load i32, i32* %l_606, align 4, !tbaa !1
  %1478 = load i32, i32* %l_606, align 4, !tbaa !1
  store i32 %1478, i32* %l_608, align 4, !tbaa !1
  %1479 = and i32 %1477, %1478
  %1480 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* %l_617, i32 0, i64 9
  %1481 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %1480, i32 0, i64 6
  %1482 = getelementptr inbounds [3 x i32], [3 x i32]* %1481, i32 0, i64 2
  %1483 = load i32, i32* %1482, align 4, !tbaa !1
  %1484 = zext i32 %1483 to i64
  %1485 = xor i64 0, %1484
  %1486 = icmp ne i64 %1485, 0
  br i1 %1486, label %1571, label %1487

; <label>:1487                                    ; preds = %1473
  %1488 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* %l_617, i32 0, i64 6
  %1489 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %1488, i32 0, i64 6
  %1490 = getelementptr inbounds [3 x i32], [3 x i32]* %1489, i32 0, i64 0
  %1491 = load i32, i32* %1490, align 4, !tbaa !1
  %1492 = load i64*, i64** %l_639, align 8, !tbaa !5
  %1493 = getelementptr inbounds [5 x i64*], [5 x i64*]* %l_640, i32 0, i64 2
  store i64* %1492, i64** %1493, align 8, !tbaa !5
  %1494 = icmp ne i64* %1492, getelementptr inbounds ([7 x i64], [7 x i64]* @g_641, i32 0, i64 4)
  %1495 = zext i1 %1494 to i32
  %1496 = trunc i32 %1495 to i16
  %1497 = load i16*, i16** %l_642, align 8, !tbaa !5
  store i16 %1496, i16* %1497, align 2, !tbaa !10
  %1498 = load i16*, i16** %l_644, align 8, !tbaa !5
  store i16 %1496, i16* %1498, align 2, !tbaa !10
  %1499 = getelementptr inbounds [10 x [8 x [3 x i32]]], [10 x [8 x [3 x i32]]]* %l_617, i32 0, i64 9
  %1500 = getelementptr inbounds [8 x [3 x i32]], [8 x [3 x i32]]* %1499, i32 0, i64 5
  %1501 = getelementptr inbounds [3 x i32], [3 x i32]* %1500, i32 0, i64 1
  %1502 = load i32, i32* %1501, align 4, !tbaa !1
  %1503 = trunc i32 %1502 to i16
  %1504 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1496, i16 zeroext %1503)
  %1505 = zext i16 %1504 to i32
  %1506 = load i8, i8* @g_302, align 1, !tbaa !9
  %1507 = sext i8 %1506 to i32
  %1508 = xor i32 %1507, %1505
  %1509 = trunc i32 %1508 to i8
  store i8 %1509, i8* @g_302, align 1, !tbaa !9
  %1510 = load i16, i16* %l_647, align 2, !tbaa !10
  %1511 = trunc i16 %1510 to i8
  %1512 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1509, i8 signext %1511)
  %1513 = sext i8 %1512 to i32
  %1514 = call i32 @safe_mod_func_uint32_t_u_u(i32 %1513, i32 1)
  %1515 = load i8*, i8** %2, align 8, !tbaa !5
  %1516 = icmp ne i8* @g_516, %1515
  %1517 = zext i1 %1516 to i32
  %1518 = load i8*, i8** %2, align 8, !tbaa !5
  %1519 = load i8, i8* %1518, align 1, !tbaa !9
  %1520 = zext i8 %1519 to i32
  %1521 = icmp sgt i32 %1517, %1520
  %1522 = zext i1 %1521 to i32
  %1523 = load i8*, i8** %l_648, align 8, !tbaa !5
  %1524 = load i8, i8* %1523, align 1, !tbaa !9
  %1525 = sext i8 %1524 to i32
  %1526 = or i32 %1525, %1522
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %1523, align 1, !tbaa !9
  %1528 = icmp ne i8 %1527, 0
  %1529 = xor i1 %1528, true
  %1530 = zext i1 %1529 to i32
  %1531 = trunc i32 %1530 to i16
  %1532 = load i32, i32* %l_602, align 4, !tbaa !1
  %1533 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1531, i32 %1532)
  %1534 = zext i16 %1533 to i64
  %1535 = load i32, i32* %l_436, align 4, !tbaa !1
  %1536 = sext i32 %1535 to i64
  %1537 = xor i64 %1534, %1536
  %1538 = icmp ne i64 %1537, 5
  %1539 = zext i1 %1538 to i32
  %1540 = load i32, i32* %l_437, align 4, !tbaa !1
  %1541 = icmp ugt i32 %1539, %1540
  %1542 = zext i1 %1541 to i32
  %1543 = load i32, i32* @g_92, align 4, !tbaa !1
  %1544 = zext i32 %1543 to i64
  %1545 = or i64 %1544, 2489
  %1546 = xor i64 %1545, -1
  %1547 = load i64, i64* @g_77, align 8, !tbaa !7
  %1548 = load i8*, i8** %l_649, align 8, !tbaa !5
  %1549 = load i8, i8* %1548, align 1, !tbaa !9
  %1550 = sext i8 %1549 to i64
  %1551 = or i64 %1550, %1547
  %1552 = trunc i64 %1551 to i8
  store i8 %1552, i8* %1548, align 1, !tbaa !9
  %1553 = sext i8 %1552 to i32
  %1554 = icmp ne i32 %1553, 0
  br i1 %1554, label %1555, label %1558

; <label>:1555                                    ; preds = %1487
  %1556 = load i32, i32* %l_607, align 4, !tbaa !1
  %1557 = icmp ne i32 %1556, 0
  br label %1558

; <label>:1558                                    ; preds = %1555, %1487
  %1559 = phi i1 [ false, %1487 ], [ %1557, %1555 ]
  %1560 = zext i1 %1559 to i32
  store i32 %1560, i32* %l_603, align 4, !tbaa !1
  %1561 = load i16, i16* %l_615, align 2, !tbaa !10
  %1562 = sext i16 %1561 to i32
  %1563 = icmp sle i32 %1560, %1562
  %1564 = zext i1 %1563 to i32
  %1565 = trunc i32 %1564 to i8
  %1566 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1565, i8 signext -12)
  %1567 = sext i8 %1566 to i16
  %1568 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1567, i16 zeroext -1)
  %1569 = zext i16 %1568 to i32
  %1570 = icmp ne i32 %1569, 0
  br label %1571

; <label>:1571                                    ; preds = %1558, %1473
  %1572 = phi i1 [ true, %1473 ], [ %1570, %1558 ]
  %1573 = zext i1 %1572 to i32
  %1574 = call i32 @safe_mod_func_uint32_t_u_u(i32 %1479, i32 %1573)
  %1575 = getelementptr inbounds [1 x [7 x i32]], [1 x [7 x i32]]* %l_651, i32 0, i64 0
  %1576 = getelementptr inbounds [7 x i32], [7 x i32]* %1575, i32 0, i64 1
  %1577 = load i32, i32* %1576, align 4, !tbaa !1
  %1578 = or i32 %1577, %1574
  store i32 %1578, i32* %1576, align 4, !tbaa !1
  %1579 = trunc i32 %1578 to i8
  %1580 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext -43, i8 signext %1579)
  %1581 = sext i8 %1580 to i16
  %1582 = load i32, i32* %l_436, align 4, !tbaa !1
  %1583 = trunc i32 %1582 to i16
  %1584 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %1581, i16 zeroext %1583)
  %1585 = zext i16 %1584 to i32
  %1586 = icmp sgt i32 %1476, %1585
  %1587 = zext i1 %1586 to i32
  %1588 = sext i32 %1587 to i64
  %1589 = or i64 %1588, 92
  %1590 = icmp eq i64 9, %1589
  %1591 = zext i1 %1590 to i32
  store i32 %1591, i32* %l_517, align 4, !tbaa !1
  %1592 = load i16, i16* %l_653, align 2, !tbaa !10
  %1593 = zext i16 %1592 to i32
  %1594 = icmp ne i32 %1593, 0
  br i1 %1594, label %1595, label %1598

; <label>:1595                                    ; preds = %1571
  %1596 = load i32, i32* %l_437, align 4, !tbaa !1
  %1597 = icmp ne i32 %1596, 0
  br label %1598

; <label>:1598                                    ; preds = %1595, %1571
  %1599 = phi i1 [ false, %1571 ], [ %1597, %1595 ]
  %1600 = zext i1 %1599 to i32
  %1601 = sext i32 %1600 to i64
  %1602 = icmp sgt i64 %1601, 5880650727490214926
  %1603 = zext i1 %1602 to i32
  store i32 %1603, i32* %l_654, align 4, !tbaa !1
  %1604 = load i32, i32* %l_654, align 4, !tbaa !1
  %1605 = load i32*, i32** %l_656, align 8, !tbaa !5
  store i32 %1604, i32* %1605, align 4, !tbaa !1
  store i32 0, i32* %3
  br label %1606

; <label>:1606                                    ; preds = %1598, %1472, %1468
  %1607 = bitcast i32* %k22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1607) #1
  %1608 = bitcast i32* %j21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1608) #1
  %1609 = bitcast i32* %i20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1609) #1
  %1610 = bitcast i32** %l_656 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1610) #1
  %1611 = bitcast i32** %l_655 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1611) #1
  %1612 = bitcast i32* %l_654 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1612) #1
  %1613 = bitcast [7 x [8 x i16*]]* %l_652 to i8*
  call void @llvm.lifetime.end(i64 448, i8* %1613) #1
  %1614 = bitcast [1 x [7 x i32]]* %l_651 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %1614) #1
  %1615 = bitcast i8** %l_649 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1615) #1
  %1616 = bitcast i8** %l_648 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1616) #1
  %1617 = bitcast i8** %l_646 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1617) #1
  %1618 = bitcast i16** %l_644 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1618) #1
  %1619 = bitcast i16** %l_642 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1619) #1
  %1620 = bitcast [10 x [8 x [3 x i32]]]* %l_617 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %1620) #1
  %cleanup.dest.23 = load i32, i32* %3
  switch i32 %cleanup.dest.23, label %1991 [
    i32 0, label %1621
    i32 35, label %1627
    i32 37, label %1622
  ]

; <label>:1621                                    ; preds = %1606
  br label %1622

; <label>:1622                                    ; preds = %1621, %1606
  %1623 = load i16, i16* @g_104, align 2, !tbaa !10
  %1624 = zext i16 %1623 to i32
  %1625 = add nsw i32 %1624, 1
  %1626 = trunc i32 %1625 to i16
  store i16 %1626, i16* @g_104, align 2, !tbaa !10
  br label %1347

; <label>:1627                                    ; preds = %1606, %1347
  %1628 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @g_641, i32 0, i64 5), align 8, !tbaa !7
  %1629 = load i32, i32* %l_608, align 4, !tbaa !1
  %1630 = sext i32 %1629 to i64
  %1631 = call i64 @safe_add_func_int64_t_s_s(i64 1285328808658581960, i64 %1630)
  %1632 = trunc i64 %1631 to i32
  %1633 = load i32*, i32** %l_659, align 8, !tbaa !5
  store i32 %1632, i32* %1633, align 4, !tbaa !1
  %1634 = icmp ne i32 %1632, 0
  br i1 %1634, label %1635, label %1649

; <label>:1635                                    ; preds = %1627
  store i64 0, i64* @g_509, align 8, !tbaa !7
  br label %1636

; <label>:1636                                    ; preds = %1641, %1635
  %1637 = load i64, i64* @g_509, align 8, !tbaa !7
  %1638 = icmp ne i64 %1637, 24
  br i1 %1638, label %1639, label %1644

; <label>:1639                                    ; preds = %1636
  %1640 = load i32, i32* @g_662, align 4, !tbaa !1
  store i32 %1640, i32* %1
  store i32 1, i32* %3
  br label %1788
                                                  ; No predecessors!
  %1642 = load i64, i64* @g_509, align 8, !tbaa !7
  %1643 = call i64 @safe_add_func_int64_t_s_s(i64 %1642, i64 6)
  store i64 %1643, i64* @g_509, align 8, !tbaa !7
  br label %1636

; <label>:1644                                    ; preds = %1636
  %1645 = load i32, i32* %l_510, align 4, !tbaa !1
  %1646 = icmp ne i32 %1645, 0
  br i1 %1646, label %1647, label %1648

; <label>:1647                                    ; preds = %1644
  store i32 7, i32* %3
  br label %1788

; <label>:1648                                    ; preds = %1644
  br label %1787

; <label>:1649                                    ; preds = %1627
  %1650 = bitcast i16* %l_671 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1650) #1
  store i16 1437, i16* %l_671, align 2, !tbaa !10
  %1651 = bitcast i32** %l_690 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1651) #1
  store i32* null, i32** %l_690, align 8, !tbaa !5
  store i32 3, i32* %l_427, align 4, !tbaa !1
  br label %1652

; <label>:1652                                    ; preds = %1705, %1649
  %1653 = load i32, i32* %l_427, align 4, !tbaa !1
  %1654 = icmp sge i32 %1653, -22
  br i1 %1654, label %1655, label %1710

; <label>:1655                                    ; preds = %1652
  %1656 = bitcast i64* %l_665 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1656) #1
  store i64 -6794899137693259704, i64* %l_665, align 8, !tbaa !7
  %1657 = bitcast i32** %l_666 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1657) #1
  store i32* %l_602, i32** %l_666, align 8, !tbaa !5
  %1658 = bitcast [2 x i32*]* %l_667 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1658) #1
  %1659 = bitcast [1 x [1 x i32]]* %l_668 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1659) #1
  %1660 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1660) #1
  %1661 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1661) #1
  store i32 0, i32* %i24, align 4, !tbaa !1
  br label %1662

; <label>:1662                                    ; preds = %1669, %1655
  %1663 = load i32, i32* %i24, align 4, !tbaa !1
  %1664 = icmp slt i32 %1663, 2
  br i1 %1664, label %1665, label %1672

; <label>:1665                                    ; preds = %1662
  %1666 = load i32, i32* %i24, align 4, !tbaa !1
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_667, i32 0, i64 %1667
  store i32* %l_436, i32** %1668, align 8, !tbaa !5
  br label %1669

; <label>:1669                                    ; preds = %1665
  %1670 = load i32, i32* %i24, align 4, !tbaa !1
  %1671 = add nsw i32 %1670, 1
  store i32 %1671, i32* %i24, align 4, !tbaa !1
  br label %1662

; <label>:1672                                    ; preds = %1662
  store i32 0, i32* %i24, align 4, !tbaa !1
  br label %1673

; <label>:1673                                    ; preds = %1691, %1672
  %1674 = load i32, i32* %i24, align 4, !tbaa !1
  %1675 = icmp slt i32 %1674, 1
  br i1 %1675, label %1676, label %1694

; <label>:1676                                    ; preds = %1673
  store i32 0, i32* %j25, align 4, !tbaa !1
  br label %1677

; <label>:1677                                    ; preds = %1687, %1676
  %1678 = load i32, i32* %j25, align 4, !tbaa !1
  %1679 = icmp slt i32 %1678, 1
  br i1 %1679, label %1680, label %1690

; <label>:1680                                    ; preds = %1677
  %1681 = load i32, i32* %j25, align 4, !tbaa !1
  %1682 = sext i32 %1681 to i64
  %1683 = load i32, i32* %i24, align 4, !tbaa !1
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_668, i32 0, i64 %1684
  %1686 = getelementptr inbounds [1 x i32], [1 x i32]* %1685, i32 0, i64 %1682
  store i32 -820260885, i32* %1686, align 4, !tbaa !1
  br label %1687

; <label>:1687                                    ; preds = %1680
  %1688 = load i32, i32* %j25, align 4, !tbaa !1
  %1689 = add nsw i32 %1688, 1
  store i32 %1689, i32* %j25, align 4, !tbaa !1
  br label %1677

; <label>:1690                                    ; preds = %1677
  br label %1691

; <label>:1691                                    ; preds = %1690
  %1692 = load i32, i32* %i24, align 4, !tbaa !1
  %1693 = add nsw i32 %1692, 1
  store i32 %1693, i32* %i24, align 4, !tbaa !1
  br label %1673

; <label>:1694                                    ; preds = %1673
  %1695 = getelementptr inbounds [1 x [1 x i32]], [1 x [1 x i32]]* %l_668, i32 0, i64 0
  %1696 = getelementptr inbounds [1 x i32], [1 x i32]* %1695, i32 0, i64 0
  %1697 = load i32, i32* %1696, align 4, !tbaa !1
  %1698 = add i32 %1697, -1
  store i32 %1698, i32* %1696, align 4, !tbaa !1
  %1699 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1699) #1
  %1700 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1700) #1
  %1701 = bitcast [1 x [1 x i32]]* %l_668 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1701) #1
  %1702 = bitcast [2 x i32*]* %l_667 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1702) #1
  %1703 = bitcast i32** %l_666 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1703) #1
  %1704 = bitcast i64* %l_665 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1704) #1
  br label %1705

; <label>:1705                                    ; preds = %1694
  %1706 = load i32, i32* %l_427, align 4, !tbaa !1
  %1707 = trunc i32 %1706 to i8
  %1708 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1707, i8 signext 1)
  %1709 = sext i8 %1708 to i32
  store i32 %1709, i32* %l_427, align 4, !tbaa !1
  br label %1652

; <label>:1710                                    ; preds = %1652
  %1711 = load i16, i16* %l_671, align 2, !tbaa !10
  %1712 = zext i16 %1711 to i32
  %1713 = load i16*, i16** %l_487, align 8, !tbaa !5
  store i16 5, i16* %1713, align 2, !tbaa !10
  %1714 = load i16, i16* %l_671, align 2, !tbaa !10
  %1715 = zext i16 %1714 to i32
  %1716 = icmp ne i32 %1715, 0
  br i1 %1716, label %1770, label %1717

; <label>:1717                                    ; preds = %1710
  %1718 = load i32*, i32** %l_659, align 8, !tbaa !5
  %1719 = load i32, i32* %1718, align 4, !tbaa !1
  %1720 = load i8*, i8** %2, align 8, !tbaa !5
  %1721 = load i8, i8* %1720, align 1, !tbaa !9
  %1722 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %1721, i32 7)
  %1723 = load i8*, i8** %2, align 8, !tbaa !5
  %1724 = load i8, i8* %1723, align 1, !tbaa !9
  %1725 = load i8*, i8** %2, align 8, !tbaa !5
  %1726 = load i8, i8* %1725, align 1, !tbaa !9
  %1727 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1724, i8 zeroext %1726)
  %1728 = zext i8 %1727 to i32
  %1729 = load i32*, i32** %l_659, align 8, !tbaa !5
  %1730 = load i32, i32* %1729, align 4, !tbaa !1
  %1731 = load i8*, i8** %2, align 8, !tbaa !5
  %1732 = load i8, i8* %1731, align 1, !tbaa !9
  %1733 = zext i8 %1732 to i32
  store i32 %1733, i32* %l_517, align 4, !tbaa !1
  %1734 = trunc i32 %1733 to i8
  %1735 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %1734, i32 7)
  %1736 = zext i8 %1735 to i32
  %1737 = load i16*, i16** %l_487, align 8, !tbaa !5
  %1738 = load i16, i16* %1737, align 2, !tbaa !10
  %1739 = zext i16 %1738 to i32
  %1740 = and i32 %1739, %1736
  %1741 = trunc i32 %1740 to i16
  store i16 %1741, i16* %1737, align 2, !tbaa !10
  %1742 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1741, i16 zeroext 3)
  %1743 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %1742, i32 4)
  %1744 = sext i16 %1743 to i32
  %1745 = xor i32 %1744, -1
  %1746 = load i32*, i32** %l_659, align 8, !tbaa !5
  %1747 = load i32, i32* %1746, align 4, !tbaa !1
  %1748 = load i8, i8* @g_500, align 1, !tbaa !9
  %1749 = zext i8 %1748 to i32
  %1750 = icmp slt i32 %1747, %1749
  %1751 = zext i1 %1750 to i32
  %1752 = icmp sgt i32 %1728, %1751
  %1753 = zext i1 %1752 to i32
  %1754 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @g_641, i32 0, i64 6), align 8, !tbaa !7
  %1755 = icmp eq i64 1372193584, %1754
  %1756 = zext i1 %1755 to i32
  %1757 = trunc i32 %1756 to i16
  %1758 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), align 4, !tbaa !1
  %1759 = trunc i32 %1758 to i16
  %1760 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1757, i16 zeroext %1759)
  %1761 = zext i16 %1760 to i32
  %1762 = xor i32 %1761, -1
  %1763 = sext i32 %1762 to i64
  %1764 = load i64****, i64***** %l_394, align 8, !tbaa !5
  %1765 = load i64***, i64**** %1764, align 8, !tbaa !5
  %1766 = load i64**, i64*** %1765, align 8, !tbaa !5
  %1767 = load i64*, i64** %1766, align 8, !tbaa !5
  store i64 %1763, i64* %1767, align 8, !tbaa !7
  %1768 = icmp ne i64 %1763, 0
  %1769 = xor i1 %1768, true
  br label %1770

; <label>:1770                                    ; preds = %1717, %1710
  %1771 = phi i1 [ true, %1710 ], [ %1769, %1717 ]
  %1772 = zext i1 %1771 to i32
  %1773 = sext i32 %1772 to i64
  %1774 = icmp sle i64 %1773, 49734
  %1775 = zext i1 %1774 to i32
  %1776 = trunc i32 %1775 to i16
  %1777 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1776, i16 zeroext 16671)
  %1778 = icmp ne i16 %1777, 0
  %1779 = xor i1 %1778, true
  %1780 = zext i1 %1779 to i32
  %1781 = xor i32 %1712, %1780
  %1782 = load i32, i32* %l_510, align 4, !tbaa !1
  %1783 = icmp sge i32 0, %1782
  %1784 = zext i1 %1783 to i32
  store i32 %1784, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %1785 = bitcast i32** %l_690 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1785) #1
  %1786 = bitcast i16* %l_671 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1786) #1
  br label %1787

; <label>:1787                                    ; preds = %1770, %1648
  store i32 0, i32* %3
  br label %1788

; <label>:1788                                    ; preds = %1787, %1647, %1639, %1334, %534
  %1789 = bitcast i32** %l_659 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1789) #1
  %1790 = bitcast i64** %l_639 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1790) #1
  %1791 = bitcast i16* %l_615 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1791) #1
  %1792 = bitcast i32* %l_608 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1792) #1
  %1793 = bitcast i32* %l_607 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1793) #1
  %1794 = bitcast i32* %l_606 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1794) #1
  %1795 = bitcast i32* %l_588 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1795) #1
  %1796 = bitcast i32** %l_526 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1796) #1
  %1797 = bitcast i16* %l_483 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1797) #1
  %1798 = bitcast i16** %l_465 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1798) #1
  %1799 = bitcast i32* %l_437 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1799) #1
  %1800 = bitcast i32* %l_427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1800) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_404) #1
  %1801 = bitcast i64***** %l_394 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1801) #1
  %cleanup.dest.26 = load i32, i32* %3
  switch i32 %cleanup.dest.26, label %1809 [
    i32 0, label %1802
    i32 5, label %1808
    i32 7, label %1803
  ]

; <label>:1802                                    ; preds = %1788
  br label %1803

; <label>:1803                                    ; preds = %1802, %1788
  %1804 = load i16, i16* @g_235, align 2, !tbaa !10
  %1805 = zext i16 %1804 to i64
  %1806 = call i64 @safe_add_func_uint64_t_u_u(i64 %1805, i64 7)
  %1807 = trunc i64 %1806 to i16
  store i16 %1807, i16* @g_235, align 2, !tbaa !10
  br label %91

; <label>:1808                                    ; preds = %1788, %91
  store i32 0, i32* %3
  br label %1809

; <label>:1809                                    ; preds = %1808, %1788
  %1810 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1810) #1
  %1811 = bitcast [5 x i64*]* %l_640 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1811) #1
  %1812 = bitcast i32* %l_605 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1812) #1
  %1813 = bitcast i32* %l_603 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1813) #1
  %1814 = bitcast i32* %l_602 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1814) #1
  %1815 = bitcast i32* %l_552 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1815) #1
  %1816 = bitcast i32* %l_517 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1816) #1
  %1817 = bitcast i32* %l_510 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1817) #1
  %1818 = bitcast i16** %l_487 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1818) #1
  %1819 = bitcast i32* %l_436 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1819) #1
  %1820 = bitcast i32* %l_395 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1820) #1
  %cleanup.dest.27 = load i32, i32* %3
  switch i32 %cleanup.dest.27, label %1972 [
    i32 0, label %1821
  ]

; <label>:1821                                    ; preds = %1809
  br label %1970

; <label>:1822                                    ; preds = %57, %38
  %1823 = bitcast i64* %l_691 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1823) #1
  store i64 -1, i64* %l_691, align 8, !tbaa !7
  %1824 = bitcast i32** %l_692 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1824) #1
  %1825 = getelementptr inbounds [10 x [3 x [3 x i32]]], [10 x [3 x [3 x i32]]]* %l_599, i32 0, i64 9
  %1826 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %1825, i32 0, i64 1
  %1827 = getelementptr inbounds [3 x i32], [3 x i32]* %1826, i32 0, i64 1
  store i32* %1827, i32** %l_692, align 8, !tbaa !5
  %1828 = bitcast i32** %l_693 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1828) #1
  store i32* %l_598, i32** %l_693, align 8, !tbaa !5
  %1829 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1829) #1
  store i32* null, i32** %l_694, align 8, !tbaa !5
  %1830 = bitcast [9 x [2 x [5 x i32*]]]* %l_695 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %1830) #1
  %1831 = getelementptr inbounds [9 x [2 x [5 x i32*]]], [9 x [2 x [5 x i32*]]]* %l_695, i64 0, i64 0
  %1832 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1831, i64 0, i64 0
  %1833 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1832, i64 0, i64 0
  store i32* %l_598, i32** %1833, !tbaa !5
  %1834 = getelementptr inbounds i32*, i32** %1833, i64 1
  store i32* null, i32** %1834, !tbaa !5
  %1835 = getelementptr inbounds i32*, i32** %1834, i64 1
  store i32* null, i32** %1835, !tbaa !5
  %1836 = getelementptr inbounds i32*, i32** %1835, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1836, !tbaa !5
  %1837 = getelementptr inbounds i32*, i32** %1836, i64 1
  store i32* @g_65, i32** %1837, !tbaa !5
  %1838 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1832, i64 1
  %1839 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1838, i64 0, i64 0
  store i32* %l_383, i32** %1839, !tbaa !5
  %1840 = getelementptr inbounds i32*, i32** %1839, i64 1
  store i32* %l_598, i32** %1840, !tbaa !5
  %1841 = getelementptr inbounds i32*, i32** %1840, i64 1
  store i32* %l_383, i32** %1841, !tbaa !5
  %1842 = getelementptr inbounds i32*, i32** %1841, i64 1
  store i32* @g_65, i32** %1842, !tbaa !5
  %1843 = getelementptr inbounds i32*, i32** %1842, i64 1
  store i32* null, i32** %1843, !tbaa !5
  %1844 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1831, i64 1
  %1845 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1844, i64 0, i64 0
  %1846 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1845, i64 0, i64 0
  store i32* @g_65, i32** %1846, !tbaa !5
  %1847 = getelementptr inbounds i32*, i32** %1846, i64 1
  store i32* %l_383, i32** %1847, !tbaa !5
  %1848 = getelementptr inbounds i32*, i32** %1847, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), i32** %1848, !tbaa !5
  %1849 = getelementptr inbounds i32*, i32** %1848, i64 1
  store i32* %l_598, i32** %1849, !tbaa !5
  %1850 = getelementptr inbounds i32*, i32** %1849, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1850, !tbaa !5
  %1851 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1845, i64 1
  %1852 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1851, i64 0, i64 0
  store i32* %l_383, i32** %1852, !tbaa !5
  %1853 = getelementptr inbounds i32*, i32** %1852, i64 1
  store i32* %l_598, i32** %1853, !tbaa !5
  %1854 = getelementptr inbounds i32*, i32** %1853, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), i32** %1854, !tbaa !5
  %1855 = getelementptr inbounds i32*, i32** %1854, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), i32** %1855, !tbaa !5
  %1856 = getelementptr inbounds i32*, i32** %1855, i64 1
  store i32* %l_598, i32** %1856, !tbaa !5
  %1857 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1844, i64 1
  %1858 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1857, i64 0, i64 0
  %1859 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1858, i64 0, i64 0
  store i32* %l_598, i32** %1859, !tbaa !5
  %1860 = getelementptr inbounds i32*, i32** %1859, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1860, !tbaa !5
  %1861 = getelementptr inbounds i32*, i32** %1860, i64 1
  store i32* %l_383, i32** %1861, !tbaa !5
  %1862 = getelementptr inbounds i32*, i32** %1861, i64 1
  store i32* %l_383, i32** %1862, !tbaa !5
  %1863 = getelementptr inbounds i32*, i32** %1862, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1863, !tbaa !5
  %1864 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1858, i64 1
  %1865 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1864, i64 0, i64 0
  store i32* null, i32** %1865, !tbaa !5
  %1866 = getelementptr inbounds i32*, i32** %1865, i64 1
  store i32* %l_598, i32** %1866, !tbaa !5
  %1867 = getelementptr inbounds i32*, i32** %1866, i64 1
  store i32* null, i32** %1867, !tbaa !5
  %1868 = getelementptr inbounds i32*, i32** %1867, i64 1
  store i32* %l_598, i32** %1868, !tbaa !5
  %1869 = getelementptr inbounds i32*, i32** %1868, i64 1
  store i32* null, i32** %1869, !tbaa !5
  %1870 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1857, i64 1
  %1871 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1870, i64 0, i64 0
  %1872 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1871, i64 0, i64 0
  store i32* %l_383, i32** %1872, !tbaa !5
  %1873 = getelementptr inbounds i32*, i32** %1872, i64 1
  store i32* %l_598, i32** %1873, !tbaa !5
  %1874 = getelementptr inbounds i32*, i32** %1873, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1874, !tbaa !5
  %1875 = getelementptr inbounds i32*, i32** %1874, i64 1
  store i32* @g_65, i32** %1875, !tbaa !5
  %1876 = getelementptr inbounds i32*, i32** %1875, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1876, !tbaa !5
  %1877 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1871, i64 1
  %1878 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1877, i64 0, i64 0
  store i32* %l_598, i32** %1878, !tbaa !5
  %1879 = getelementptr inbounds i32*, i32** %1878, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1879, !tbaa !5
  %1880 = getelementptr inbounds i32*, i32** %1879, i64 1
  store i32* %l_383, i32** %1880, !tbaa !5
  %1881 = getelementptr inbounds i32*, i32** %1880, i64 1
  store i32* %l_598, i32** %1881, !tbaa !5
  %1882 = getelementptr inbounds i32*, i32** %1881, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), i32** %1882, !tbaa !5
  %1883 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1870, i64 1
  %1884 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1883, i64 0, i64 0
  %1885 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1884, i64 0, i64 0
  store i32* %l_383, i32** %1885, !tbaa !5
  %1886 = getelementptr inbounds i32*, i32** %1885, i64 1
  store i32* @g_65, i32** %1886, !tbaa !5
  %1887 = getelementptr inbounds i32*, i32** %1886, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1887, !tbaa !5
  %1888 = getelementptr inbounds i32*, i32** %1887, i64 1
  store i32* @g_65, i32** %1888, !tbaa !5
  %1889 = getelementptr inbounds i32*, i32** %1888, i64 1
  store i32* %l_598, i32** %1889, !tbaa !5
  %1890 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1884, i64 1
  %1891 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1890, i64 0, i64 0
  store i32* null, i32** %1891, !tbaa !5
  %1892 = getelementptr inbounds i32*, i32** %1891, i64 1
  store i32* @g_65, i32** %1892, !tbaa !5
  %1893 = getelementptr inbounds i32*, i32** %1892, i64 1
  store i32* %l_598, i32** %1893, !tbaa !5
  %1894 = getelementptr inbounds i32*, i32** %1893, i64 1
  store i32* null, i32** %1894, !tbaa !5
  %1895 = getelementptr inbounds i32*, i32** %1894, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1895, !tbaa !5
  %1896 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1883, i64 1
  %1897 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1896, i64 0, i64 0
  %1898 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1897, i64 0, i64 0
  store i32* %l_598, i32** %1898, !tbaa !5
  %1899 = getelementptr inbounds i32*, i32** %1898, i64 1
  store i32* %l_383, i32** %1899, !tbaa !5
  %1900 = getelementptr inbounds i32*, i32** %1899, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1900, !tbaa !5
  %1901 = getelementptr inbounds i32*, i32** %1900, i64 1
  store i32* %l_598, i32** %1901, !tbaa !5
  %1902 = getelementptr inbounds i32*, i32** %1901, i64 1
  store i32* @g_65, i32** %1902, !tbaa !5
  %1903 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1897, i64 1
  %1904 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1903, i64 0, i64 0
  store i32* %l_383, i32** %1904, !tbaa !5
  %1905 = getelementptr inbounds i32*, i32** %1904, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1905, !tbaa !5
  %1906 = getelementptr inbounds i32*, i32** %1905, i64 1
  store i32* %l_598, i32** %1906, !tbaa !5
  %1907 = getelementptr inbounds i32*, i32** %1906, i64 1
  store i32* %l_598, i32** %1907, !tbaa !5
  %1908 = getelementptr inbounds i32*, i32** %1907, i64 1
  store i32* @g_65, i32** %1908, !tbaa !5
  %1909 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1896, i64 1
  %1910 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1909, i64 0, i64 0
  %1911 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1910, i64 0, i64 0
  store i32* @g_65, i32** %1911, !tbaa !5
  %1912 = getelementptr inbounds i32*, i32** %1911, i64 1
  store i32* %l_598, i32** %1912, !tbaa !5
  %1913 = getelementptr inbounds i32*, i32** %1912, i64 1
  store i32* %l_598, i32** %1913, !tbaa !5
  %1914 = getelementptr inbounds i32*, i32** %1913, i64 1
  store i32* null, i32** %1914, !tbaa !5
  %1915 = getelementptr inbounds i32*, i32** %1914, i64 1
  store i32* %l_598, i32** %1915, !tbaa !5
  %1916 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1910, i64 1
  %1917 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1916, i64 0, i64 0
  store i32* %l_383, i32** %1917, !tbaa !5
  %1918 = getelementptr inbounds i32*, i32** %1917, i64 1
  store i32* %l_383, i32** %1918, !tbaa !5
  %1919 = getelementptr inbounds i32*, i32** %1918, i64 1
  store i32* null, i32** %1919, !tbaa !5
  %1920 = getelementptr inbounds i32*, i32** %1919, i64 1
  store i32* @g_65, i32** %1920, !tbaa !5
  %1921 = getelementptr inbounds i32*, i32** %1920, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1921, !tbaa !5
  %1922 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1909, i64 1
  %1923 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1922, i64 0, i64 0
  %1924 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1923, i64 0, i64 0
  store i32* %l_598, i32** %1924, !tbaa !5
  %1925 = getelementptr inbounds i32*, i32** %1924, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1925, !tbaa !5
  %1926 = getelementptr inbounds i32*, i32** %1925, i64 1
  store i32* @g_65, i32** %1926, !tbaa !5
  %1927 = getelementptr inbounds i32*, i32** %1926, i64 1
  store i32* %l_598, i32** %1927, !tbaa !5
  %1928 = getelementptr inbounds i32*, i32** %1927, i64 1
  store i32* null, i32** %1928, !tbaa !5
  %1929 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1923, i64 1
  %1930 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1929, i64 0, i64 0
  store i32* %l_598, i32** %1930, !tbaa !5
  %1931 = getelementptr inbounds i32*, i32** %1930, i64 1
  %1932 = getelementptr inbounds [10 x [3 x [3 x i32]]], [10 x [3 x [3 x i32]]]* %l_599, i32 0, i64 6
  %1933 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %1932, i32 0, i64 2
  %1934 = getelementptr inbounds [3 x i32], [3 x i32]* %1933, i32 0, i64 2
  store i32* %1934, i32** %1931, !tbaa !5
  %1935 = getelementptr inbounds i32*, i32** %1931, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1935, !tbaa !5
  %1936 = getelementptr inbounds i32*, i32** %1935, i64 1
  store i32* @g_65, i32** %1936, !tbaa !5
  %1937 = getelementptr inbounds i32*, i32** %1936, i64 1
  store i32* %l_383, i32** %1937, !tbaa !5
  %1938 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1922, i64 1
  %1939 = getelementptr inbounds [2 x [5 x i32*]], [2 x [5 x i32*]]* %1938, i64 0, i64 0
  %1940 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1939, i64 0, i64 0
  store i32* @g_65, i32** %1940, !tbaa !5
  %1941 = getelementptr inbounds i32*, i32** %1940, i64 1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %1941, !tbaa !5
  %1942 = getelementptr inbounds i32*, i32** %1941, i64 1
  store i32* %l_383, i32** %1942, !tbaa !5
  %1943 = getelementptr inbounds i32*, i32** %1942, i64 1
  store i32* %l_598, i32** %1943, !tbaa !5
  %1944 = getelementptr inbounds i32*, i32** %1943, i64 1
  store i32* %l_598, i32** %1944, !tbaa !5
  %1945 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1939, i64 1
  %1946 = getelementptr inbounds [5 x i32*], [5 x i32*]* %1945, i64 0, i64 0
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), i32** %1946, !tbaa !5
  %1947 = getelementptr inbounds i32*, i32** %1946, i64 1
  store i32* %l_383, i32** %1947, !tbaa !5
  %1948 = getelementptr inbounds i32*, i32** %1947, i64 1
  store i32* %l_598, i32** %1948, !tbaa !5
  %1949 = getelementptr inbounds i32*, i32** %1948, i64 1
  store i32* %l_383, i32** %1949, !tbaa !5
  %1950 = getelementptr inbounds i32*, i32** %1949, i64 1
  store i32* @g_65, i32** %1950, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_696) #1
  store i8 -4, i8* %l_696, align 1, !tbaa !9
  %1951 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1951) #1
  %1952 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1952) #1
  %1953 = bitcast i32* %k30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1953) #1
  %1954 = load i64, i64* %l_691, align 8, !tbaa !7
  %1955 = trunc i64 %1954 to i32
  %1956 = load i32*, i32** %l_692, align 8, !tbaa !5
  store i32 %1955, i32* %1956, align 4, !tbaa !1
  %1957 = load i32*, i32** %l_692, align 8, !tbaa !5
  %1958 = load i32, i32* %1957, align 4, !tbaa !1
  %1959 = load i32*, i32** %l_692, align 8, !tbaa !5
  store i32 %1958, i32* %1959, align 4, !tbaa !1
  %1960 = load i8, i8* %l_696, align 1, !tbaa !9
  %1961 = add i8 %1960, -1
  store i8 %1961, i8* %l_696, align 1, !tbaa !9
  %1962 = bitcast i32* %k30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1962) #1
  %1963 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1963) #1
  %1964 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1964) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_696) #1
  %1965 = bitcast [9 x [2 x [5 x i32*]]]* %l_695 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %1965) #1
  %1966 = bitcast i32** %l_694 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1966) #1
  %1967 = bitcast i32** %l_693 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1967) #1
  %1968 = bitcast i32** %l_692 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1968) #1
  %1969 = bitcast i64* %l_691 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1969) #1
  br label %1970

; <label>:1970                                    ; preds = %1822, %1821
  %1971 = load i32, i32* %l_553, align 4, !tbaa !1
  store i32 %1971, i32* %1
  store i32 1, i32* %3
  br label %1972

; <label>:1972                                    ; preds = %1970, %1809
  %1973 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1973) #1
  %1974 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1974) #1
  %1975 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1975) #1
  %1976 = bitcast i16* %l_653 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1976) #1
  %1977 = bitcast i16* %l_647 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1977) #1
  %1978 = bitcast [10 x [3 x [3 x i32]]]* %l_599 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %1978) #1
  %1979 = bitcast i32* %l_598 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1979) #1
  %1980 = bitcast i32* %l_584 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1980) #1
  %1981 = bitcast i32* %l_553 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1981) #1
  %1982 = bitcast i16*** %l_531 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1982) #1
  %1983 = bitcast [5 x i16*]* %l_532 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1983) #1
  %1984 = bitcast i64**** %l_391 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1984) #1
  %1985 = bitcast i64*** %l_392 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1985) #1
  %1986 = bitcast [5 x i64*]* %l_393 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1986) #1
  %1987 = bitcast [9 x i32*]* %l_388 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %1987) #1
  %1988 = bitcast i32* %l_383 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1988) #1
  %1989 = bitcast i32*** %l_382 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1989) #1
  %1990 = load i32, i32* %1
  ret i32 %1990

; <label>:1991                                    ; preds = %1606, %522
  unreachable
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
define internal i32 @func_27(i8* %p_28, i8* %p_29, i32 %p_30, i64 %p_31, i8* %p_32) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %l_324 = alloca [4 x i32*], align 16
  %l_325 = alloca i16, align 2
  %l_356 = alloca i8, align 1
  %l_364 = alloca i8*, align 8
  %l_372 = alloca i32, align 4
  %l_375 = alloca i16*, align 8
  %l_376 = alloca i16*, align 8
  %l_377 = alloca i16*, align 8
  %l_379 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_338 = alloca i16*, align 8
  %l_343 = alloca [8 x [8 x i32]], align 16
  %l_357 = alloca i8, align 1
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %6 = alloca i32
  store i8* %p_28, i8** %1, align 8, !tbaa !5
  store i8* %p_29, i8** %2, align 8, !tbaa !5
  store i32 %p_30, i32* %3, align 4, !tbaa !1
  store i64 %p_31, i64* %4, align 8, !tbaa !7
  store i8* %p_32, i8** %5, align 8, !tbaa !5
  %7 = bitcast [4 x i32*]* %l_324 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #1
  %8 = bitcast [4 x i32*]* %l_324 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([4 x i32*]* @func_27.l_324 to i8*), i64 32, i32 16, i1 false)
  %9 = bitcast i16* %l_325 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #1
  store i16 -7778, i16* %l_325, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_356) #1
  store i8 -68, i8* %l_356, align 1, !tbaa !9
  %10 = bitcast i8** %l_364 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* @g_365, i8** %l_364, align 8, !tbaa !5
  %11 = bitcast i32* %l_372 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 555005655, i32* %l_372, align 4, !tbaa !1
  %12 = bitcast i16** %l_375 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i16* null, i16** %l_375, align 8, !tbaa !5
  %13 = bitcast i16** %l_376 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16* null, i16** %l_376, align 8, !tbaa !5
  %14 = bitcast i16** %l_377 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16* @g_378, i16** %l_377, align 8, !tbaa !5
  %15 = bitcast i32* %l_379 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -1, i32* %l_379, align 4, !tbaa !1
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i16, i16* %l_325, align 2, !tbaa !10
  %18 = add i16 %17, 1
  store i16 %18, i16* %l_325, align 2, !tbaa !10
  store i32 26, i32* @g_234, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %138, %0
  %20 = load i32, i32* @g_234, align 4, !tbaa !1
  %21 = icmp sge i32 %20, -18
  br i1 %21, label %22, label %141

; <label>:22                                      ; preds = %19
  %23 = bitcast i16** %l_338 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i16* %l_325, i16** %l_338, align 8, !tbaa !5
  %24 = bitcast [8 x [8 x i32]]* %l_343 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %24) #1
  %25 = bitcast [8 x [8 x i32]]* %l_343 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast ([8 x [8 x i32]]* @func_27.l_343 to i8*), i64 256, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_357) #1
  store i8 6, i8* %l_357, align 1, !tbaa !9
  %26 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 1, i32* @g_65, align 4, !tbaa !1
  %28 = load i16*, i16** %l_338, align 8, !tbaa !5
  %29 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %30 = trunc i32 %29 to i16
  %31 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %30, i32 14)
  %32 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %l_343, i32 0, i64 1
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i32 0, i64 6
  %34 = load i32, i32* %33, align 4, !tbaa !1
  %35 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %36 = trunc i32 %35 to i16
  %37 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %36, i32 11)
  %38 = trunc i16 %37 to i8
  %39 = load i8*, i8** %1, align 8, !tbaa !5
  store i8 %38, i8* %39, align 1, !tbaa !9
  %40 = load i8, i8* @g_302, align 1, !tbaa !9
  %41 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %40, i32 1)
  %42 = load i32, i32* %3, align 4, !tbaa !1
  %43 = trunc i32 %42 to i8
  %44 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %38, i8 zeroext %43)
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

; <label>:47                                      ; preds = %22
  br label %48

; <label>:48                                      ; preds = %47, %22
  %49 = phi i1 [ true, %22 ], [ true, %47 ]
  %50 = zext i1 %49 to i32
  %51 = trunc i32 %50 to i16
  %52 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %51, i16 signext 8189)
  %53 = sext i16 %52 to i64
  %54 = icmp eq i64 %53, 2118689474
  %55 = zext i1 %54 to i32
  store i32 %55, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 0, i64 1), align 4, !tbaa !1
  br i1 %54, label %61, label %56

; <label>:56                                      ; preds = %48
  %57 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %l_343, i32 0, i64 1
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i32 0, i64 6
  %59 = load i32, i32* %58, align 4, !tbaa !1
  %60 = icmp ne i32 %59, 0
  br label %61

; <label>:61                                      ; preds = %56, %48
  %62 = phi i1 [ true, %48 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = trunc i32 %63 to i16
  %65 = load i32, i32* @g_226, align 4, !tbaa !1
  %66 = trunc i32 %65 to i16
  %67 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %64, i16 zeroext %66)
  %68 = zext i16 %67 to i32
  %69 = call i32 @safe_sub_func_int32_t_s_s(i32 0, i32 %68)
  %70 = load i8, i8* %l_356, align 1, !tbaa !9
  %71 = sext i8 %70 to i32
  %72 = and i32 %69, %71
  %73 = load i64**, i64*** @g_219, align 8, !tbaa !5
  %74 = bitcast i64** %73 to i8*
  %75 = icmp ne i8* null, %74
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %l_343, i32 0, i64 1
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %77, i32 0, i64 6
  %79 = load i32, i32* %78, align 4, !tbaa !1
  %80 = icmp slt i32 %76, %79
  %81 = zext i1 %80 to i32
  %82 = or i32 %34, %81
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i64 0, %83
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %4, align 8, !tbaa !7
  %88 = call i64 @safe_div_func_uint64_t_u_u(i64 %86, i64 %87)
  %89 = load i32, i32* @g_92, align 4, !tbaa !1
  %90 = zext i32 %89 to i64
  %91 = xor i64 %88, %90
  %92 = load i16*, i16** %l_338, align 8, !tbaa !5
  %93 = icmp ne i16* %28, %92
  %94 = zext i1 %93 to i32
  %95 = trunc i32 %94 to i16
  %96 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %95, i16 signext -3554)
  %97 = sext i16 %96 to i32
  %98 = load i32, i32* @g_234, align 4, !tbaa !1
  %99 = icmp ne i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = trunc i32 %100 to i16
  %102 = load i32, i32* %3, align 4, !tbaa !1
  %103 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %101, i32 %102)
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %l_343, i32 0, i64 4
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %105, i32 0, i64 2
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = icmp ne i32 %104, %107
  %109 = zext i1 %108 to i32
  %110 = trunc i32 %109 to i8
  %111 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %110, i32 5)
  %112 = zext i8 %111 to i64
  %113 = and i64 %112, 34188
  %114 = trunc i64 %113 to i16
  %115 = load i32, i32* @g_234, align 4, !tbaa !1
  %116 = trunc i32 %115 to i16
  %117 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %114, i16 zeroext %116)
  %118 = zext i16 %117 to i32
  %119 = load i8, i8* %l_357, align 1, !tbaa !9
  %120 = zext i8 %119 to i32
  %121 = or i32 %120, %118
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %l_357, align 1, !tbaa !9
  %123 = load i64, i64* %4, align 8, !tbaa !7
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %61
  store i32 4, i32* %6
  br label %132

; <label>:126                                     ; preds = %61
  %127 = load i32, i32* %3, align 4, !tbaa !1
  %128 = load i32, i32* @g_65, align 4, !tbaa !1
  %129 = or i32 %128, %127
  store i32 %129, i32* @g_65, align 4, !tbaa !1
  %130 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %l_343, i32 0, i64 1
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %130, i32 0, i64 6
  store i32 %129, i32* %131, align 4, !tbaa !1
  store i32 0, i32* %6
  br label %132

; <label>:132                                     ; preds = %126, %125
  %133 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_357) #1
  %135 = bitcast [8 x [8 x i32]]* %l_343 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %135) #1
  %136 = bitcast i16** %l_338 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %214 [
    i32 0, label %137
    i32 4, label %138
  ]

; <label>:137                                     ; preds = %132
  br label %138

; <label>:138                                     ; preds = %137, %132
  %139 = load i32, i32* @g_234, align 4, !tbaa !1
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* @g_234, align 4, !tbaa !1
  br label %19

; <label>:141                                     ; preds = %19
  %142 = load i8*, i8** %1, align 8, !tbaa !5
  %143 = load i8, i8* %142, align 1, !tbaa !9
  %144 = load i8*, i8** %1, align 8, !tbaa !5
  store i8 %143, i8* %144, align 1, !tbaa !9
  %145 = load i8*, i8** %l_364, align 8, !tbaa !5
  store i8 %143, i8* %145, align 1, !tbaa !9
  %146 = load i32, i32* @g_65, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %4, align 8, !tbaa !7
  %149 = trunc i64 %148 to i16
  %150 = load i32, i32* %l_372, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* @g_234, align 4, !tbaa !1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

; <label>:154                                     ; preds = %141
  %155 = load i32, i32* @g_92, align 4, !tbaa !1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %168, label %157

; <label>:157                                     ; preds = %154, %141
  %158 = load i64, i64* %4, align 8, !tbaa !7
  %159 = load i16*, i16** %l_377, align 8, !tbaa !5
  %160 = load i16, i16* %159, align 2, !tbaa !10
  %161 = sext i16 %160 to i64
  %162 = and i64 %161, %158
  %163 = trunc i64 %162 to i16
  store i16 %163, i16* %159, align 2, !tbaa !10
  %164 = sext i16 %163 to i32
  %165 = load i32, i32* @g_234, align 4, !tbaa !1
  %166 = xor i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br label %168

; <label>:168                                     ; preds = %157, %154
  %169 = phi i1 [ true, %154 ], [ %167, %157 ]
  %170 = zext i1 %169 to i32
  %171 = trunc i32 %170 to i16
  %172 = load i32, i32* %3, align 4, !tbaa !1
  %173 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %171, i32 %172)
  %174 = sext i16 %173 to i64
  %175 = call i64 @safe_sub_func_uint64_t_u_u(i64 %151, i64 %174)
  %176 = trunc i64 %175 to i16
  %177 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %149, i16 signext %176)
  %178 = load i32, i32* %l_379, align 4, !tbaa !1
  %179 = call i64 @safe_sub_func_int64_t_s_s(i64 %147, i64 -8560444418200885336)
  %180 = load i32, i32* %3, align 4, !tbaa !1
  %181 = zext i32 %180 to i64
  %182 = icmp sgt i64 %179, %181
  br i1 %182, label %184, label %183

; <label>:183                                     ; preds = %168
  br label %184

; <label>:184                                     ; preds = %183, %168
  %185 = phi i1 [ true, %168 ], [ true, %183 ]
  %186 = zext i1 %185 to i32
  %187 = trunc i32 %186 to i8
  %188 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %143, i8 zeroext %187)
  %189 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %188)
  %190 = zext i8 %189 to i32
  %191 = load i32, i32* %3, align 4, !tbaa !1
  %192 = icmp ult i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = trunc i32 %193 to i8
  %195 = load i16, i16* @g_262, align 2, !tbaa !10
  %196 = trunc i16 %195 to i8
  %197 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %194, i8 signext %196)
  %198 = sext i8 %197 to i32
  %199 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), align 4, !tbaa !1
  %200 = xor i32 %198, %199
  %201 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %202 = or i32 %201, %200
  store i32 %202, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %203 = load i64, i64* %4, align 8, !tbaa !7
  %204 = trunc i64 %203 to i32
  store i32 1, i32* %6
  %205 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %l_379 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i16** %l_377 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i16** %l_376 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %208) #1
  %209 = bitcast i16** %l_375 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  %210 = bitcast i32* %l_372 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i8** %l_364 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_356) #1
  %212 = bitcast i16* %l_325 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %212) #1
  %213 = bitcast [4 x i32*]* %l_324 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %213) #1
  ret i32 %204

; <label>:214                                     ; preds = %132
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i8* @func_33(i8* %p_34, i16 signext %p_35, i32 %p_36, i64 %p_37, i32 %p_38) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %l_311 = alloca i8, align 1
  %l_315 = alloca i32*, align 8
  %l_316 = alloca i32*, align 8
  %l_318 = alloca i32, align 4
  %l_312 = alloca i32, align 4
  %l_313 = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  %l_300 = alloca i32*, align 8
  %l_301 = alloca i8*, align 8
  %l_310 = alloca i64*, align 8
  %i1 = alloca i32, align 4
  %7 = alloca i32
  %l_314 = alloca [9 x [8 x [3 x i32**]]], align 16
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i3 = alloca i32, align 4
  %l_317 = alloca i8, align 1
  %l_322 = alloca [3 x i32*], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %l_319 = alloca i64, align 8
  store i8* %p_34, i8** %2, align 8, !tbaa !5
  store i16 %p_35, i16* %3, align 2, !tbaa !10
  store i32 %p_36, i32* %4, align 4, !tbaa !1
  store i64 %p_37, i64* %5, align 8, !tbaa !7
  store i32 %p_38, i32* %6, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_311) #1
  store i8 -8, i8* %l_311, align 1, !tbaa !9
  %8 = bitcast i32** %l_315 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i32* null, i32** %l_315, align 8, !tbaa !5
  %9 = bitcast i32** %l_316 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %l_316, align 8, !tbaa !5
  %10 = bitcast i32* %l_318 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 2, i32* %l_318, align 4, !tbaa !1
  store i16 0, i16* @g_235, align 2, !tbaa !10
  br label %11

; <label>:11                                      ; preds = %108, %0
  %12 = load i16, i16* @g_235, align 2, !tbaa !10
  %13 = zext i16 %12 to i32
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %113

; <label>:15                                      ; preds = %11
  %16 = bitcast i32* %l_312 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 5, i32* %l_312, align 4, !tbaa !1
  %17 = bitcast [5 x i32]* %l_313 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %17) #1
  %18 = bitcast [5 x i32]* %l_313 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* bitcast ([5 x i32]* @func_33.l_313 to i8*), i64 20, i32 16, i1 false)
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 1, i32* %6, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %101, %15
  %21 = load i32, i32* %6, align 4, !tbaa !1
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %104

; <label>:23                                      ; preds = %20
  %24 = bitcast i32** %l_300 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32* null, i32** %l_300, align 8, !tbaa !5
  %25 = bitcast i8** %l_301 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  store i8* @g_302, i8** %l_301, align 8, !tbaa !5
  %26 = bitcast i64** %l_310 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i64* @g_187, i64** %l_310, align 8, !tbaa !5
  %27 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %6, align 4, !tbaa !1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* @g_245, i32 0, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !1
  %32 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -18278, i32 %31)
  %33 = zext i16 %32 to i32
  %34 = load i32, i32* %6, align 4, !tbaa !1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* @g_245, i32 0, i64 %35
  %37 = load i32, i32* %36, align 4, !tbaa !1
  %38 = trunc i32 %37 to i16
  %39 = load i64*, i64** getelementptr inbounds ([3 x i64*], [3 x i64*]* @g_296, i32 0, i64 1), align 8, !tbaa !5
  %40 = icmp eq i64* null, %39
  %41 = zext i1 %40 to i32
  %42 = trunc i32 %41 to i8
  store i32 -113742717, i32* %4, align 4, !tbaa !1
  %43 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext -5, i32 1)
  %44 = zext i8 %43 to i32
  %45 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %42, i32 %44)
  %46 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %45, i32 3)
  %47 = load i8*, i8** %l_301, align 8, !tbaa !5
  store i8 %46, i8* %47, align 1, !tbaa !9
  %48 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 0, i64 0, i64 0), align 8, !tbaa !7
  %49 = load i64*, i64** %l_310, align 8, !tbaa !5
  store i64 %48, i64* %49, align 8, !tbaa !7
  %50 = load i32, i32* %6, align 4, !tbaa !1
  %51 = sext i32 %50 to i64
  %52 = and i64 %48, %51
  %53 = trunc i64 %52 to i8
  %54 = load i8, i8* %l_311, align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %53, i32 %55)
  %57 = load i32, i32* %6, align 4, !tbaa !1
  %58 = trunc i32 %57 to i8
  %59 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %56, i8 signext %58)
  %60 = icmp ne i8 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  br i1 true, label %66, label %63

; <label>:63                                      ; preds = %23
  %64 = load i32, i32* %6, align 4, !tbaa !1
  %65 = icmp ne i32 %64, 0
  br label %66

; <label>:66                                      ; preds = %63, %23
  %67 = phi i1 [ true, %23 ], [ %65, %63 ]
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @safe_unary_minus_func_uint64_t_u(i64 -7)
  %71 = trunc i64 %70 to i8
  %72 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %46, i8 signext %71)
  %73 = sext i8 %72 to i32
  %74 = load i32, i32* %l_312, align 4, !tbaa !1
  %75 = and i32 %73, %74
  %76 = load i8, i8* %l_311, align 1, !tbaa !9
  %77 = zext i8 %76 to i32
  %78 = icmp ugt i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %l_312, align 4, !tbaa !1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

; <label>:82                                      ; preds = %66
  %83 = load i32, i32* %l_312, align 4, !tbaa !1
  %84 = icmp ne i32 %83, 0
  br label %85

; <label>:85                                      ; preds = %82, %66
  %86 = phi i1 [ false, %66 ], [ %84, %82 ]
  %87 = zext i1 %86 to i32
  %88 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %38, i32 %87)
  %89 = icmp ne i16 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), align 4, !tbaa !1
  %93 = icmp ule i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = or i32 %33, %94
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %l_313, i32 0, i64 0
  store i32 361972072, i32* %96, align 4, !tbaa !1
  %97 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i64** %l_310 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i8** %l_301 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32** %l_300 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  br label %101

; <label>:101                                     ; preds = %85
  %102 = load i32, i32* %6, align 4, !tbaa !1
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %6, align 4, !tbaa !1
  br label %20

; <label>:104                                     ; preds = %20
  store i8* @g_17, i8** %1
  store i32 1, i32* %7
  %105 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast [5 x i32]* %l_313 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %106) #1
  %107 = bitcast i32* %l_312 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  br label %220
                                                  ; No predecessors!
  %109 = load i16, i16* @g_235, align 2, !tbaa !10
  %110 = zext i16 %109 to i32
  %111 = add nsw i32 %110, 1
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* @g_235, align 2, !tbaa !10
  br label %11

; <label>:113                                     ; preds = %11
  store i32 0, i32* @g_65, align 4, !tbaa !1
  br label %114

; <label>:114                                     ; preds = %216, %113
  %115 = load i32, i32* @g_65, align 4, !tbaa !1
  %116 = icmp sle i32 %115, 2
  br i1 %116, label %117, label %219

; <label>:117                                     ; preds = %114
  %118 = bitcast [9 x [8 x [3 x i32**]]]* %l_314 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %118) #1
  %119 = bitcast [9 x [8 x [3 x i32**]]]* %l_314 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* bitcast ([9 x [8 x [3 x i32**]]]* @func_33.l_314 to i8*), i64 1728, i32 16, i1 false)
  %120 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  %122 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = load i8, i8* %l_311, align 1, !tbaa !9
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %l_315, align 8, !tbaa !5
  store i16 0, i16* @g_262, align 2, !tbaa !10
  br label %124

; <label>:124                                     ; preds = %206, %117
  %125 = load i16, i16* @g_262, align 2, !tbaa !10
  %126 = zext i16 %125 to i32
  %127 = icmp sle i32 %126, 1
  br i1 %127, label %128, label %211

; <label>:128                                     ; preds = %124
  %129 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = load i16, i16* @g_262, align 2, !tbaa !10
  %131 = zext i16 %130 to i64
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* @g_245, i32 0, i64 %131
  %133 = load i32, i32* %132, align 4, !tbaa !1
  %134 = load i32*, i32** %l_315, align 8, !tbaa !5
  store i32 %133, i32* %134, align 4, !tbaa !1
  store i8 0, i8* @g_302, align 1, !tbaa !9
  br label %135

; <label>:135                                     ; preds = %199, %128
  %136 = load i8, i8* @g_302, align 1, !tbaa !9
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 2
  br i1 %138, label %139, label %204

; <label>:139                                     ; preds = %135
  call void @llvm.lifetime.start(i64 1, i8* %l_317) #1
  store i8 -7, i8* %l_317, align 1, !tbaa !9
  %140 = bitcast [3 x i32*]* %l_322 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %140) #1
  %141 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %144

; <label>:144                                     ; preds = %151, %139
  %145 = load i32, i32* %i4, align 4, !tbaa !1
  %146 = icmp slt i32 %145, 3
  br i1 %146, label %147, label %154

; <label>:147                                     ; preds = %144
  %148 = load i32, i32* %i4, align 4, !tbaa !1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_322, i32 0, i64 %149
  store i32* %l_318, i32** %150, align 8, !tbaa !5
  br label %151

; <label>:151                                     ; preds = %147
  %152 = load i32, i32* %i4, align 4, !tbaa !1
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i4, align 4, !tbaa !1
  br label %144

; <label>:154                                     ; preds = %144
  %155 = load i32*, i32** %l_316, align 8, !tbaa !5
  store i32* %155, i32** %l_315, align 8, !tbaa !5
  %156 = load i64, i64* %5, align 8, !tbaa !7
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %183

; <label>:158                                     ; preds = %154
  %159 = bitcast i64* %l_319 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  store i64 7460890738089923286, i64* %l_319, align 8, !tbaa !7
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** @g_236, align 8, !tbaa !5
  store i16 0, i16* @g_104, align 2, !tbaa !10
  br label %160

; <label>:160                                     ; preds = %165, %158
  %161 = load i16, i16* @g_104, align 2, !tbaa !10
  %162 = zext i16 %161 to i32
  %163 = icmp sle i32 %162, 2
  br i1 %163, label %164, label %170

; <label>:164                                     ; preds = %160
  store i32* %4, i32** @g_236, align 8, !tbaa !5
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load i16, i16* @g_104, align 2, !tbaa !10
  %167 = zext i16 %166 to i32
  %168 = add nsw i32 %167, 1
  %169 = trunc i32 %168 to i16
  store i16 %169, i16* @g_104, align 2, !tbaa !10
  br label %160

; <label>:170                                     ; preds = %160
  store i64 0, i64* %5, align 8, !tbaa !7
  br label %171

; <label>:171                                     ; preds = %178, %170
  %172 = load i64, i64* %5, align 8, !tbaa !7
  %173 = icmp ule i64 %172, 2
  br i1 %173, label %174, label %181

; <label>:174                                     ; preds = %171
  %175 = load i64, i64* %l_319, align 8, !tbaa !7
  %176 = add i64 %175, -1
  store i64 %176, i64* %l_319, align 8, !tbaa !7
  %177 = getelementptr inbounds [3 x i32*], [3 x i32*]* %l_322, i32 0, i64 1
  store i32* %4, i32** %177, align 8, !tbaa !5
  br label %178

; <label>:178                                     ; preds = %174
  %179 = load i64, i64* %5, align 8, !tbaa !7
  %180 = add i64 %179, 1
  store i64 %180, i64* %5, align 8, !tbaa !7
  br label %171

; <label>:181                                     ; preds = %171
  %182 = bitcast i64* %l_319 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  br label %188

; <label>:183                                     ; preds = %154
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 1), i32** @g_236, align 8, !tbaa !5
  %184 = load i64, i64* getelementptr inbounds ([10 x [2 x [10 x i64]]], [10 x [2 x [10 x i64]]]* @func_33.l_323, i32 0, i64 5, i64 0, i64 2), align 8, !tbaa !7
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

; <label>:186                                     ; preds = %183
  store i32 16, i32* %7
  br label %193

; <label>:187                                     ; preds = %183
  br label %188

; <label>:188                                     ; preds = %187, %181
  %189 = load i32, i32* %6, align 4, !tbaa !1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %188
  store i32 16, i32* %7
  br label %193

; <label>:192                                     ; preds = %188
  store i32 0, i32* %7
  br label %193

; <label>:193                                     ; preds = %192, %191, %186
  %194 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast [3 x i32*]* %l_322 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %197) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_317) #1
  %cleanup.dest = load i32, i32* %7
  switch i32 %cleanup.dest, label %225 [
    i32 0, label %198
    i32 16, label %199
  ]

; <label>:198                                     ; preds = %193
  br label %199

; <label>:199                                     ; preds = %198, %193
  %200 = load i8, i8* @g_302, align 1, !tbaa !9
  %201 = sext i8 %200 to i32
  %202 = add nsw i32 %201, 1
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* @g_302, align 1, !tbaa !9
  br label %135

; <label>:204                                     ; preds = %135
  %205 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  br label %206

; <label>:206                                     ; preds = %204
  %207 = load i16, i16* @g_262, align 2, !tbaa !10
  %208 = zext i16 %207 to i32
  %209 = add nsw i32 %208, 1
  %210 = trunc i32 %209 to i16
  store i16 %210, i16* @g_262, align 2, !tbaa !10
  br label %124

; <label>:211                                     ; preds = %124
  store i32* %4, i32** %l_315, align 8, !tbaa !5
  %212 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast [9 x [8 x [3 x i32**]]]* %l_314 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %215) #1
  br label %216

; <label>:216                                     ; preds = %211
  %217 = load i32, i32* @g_65, align 4, !tbaa !1
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* @g_65, align 4, !tbaa !1
  br label %114

; <label>:219                                     ; preds = %114
  store i8* @g_17, i8** %1
  store i32 1, i32* %7
  br label %220

; <label>:220                                     ; preds = %219, %104
  %221 = bitcast i32* %l_318 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32** %l_316 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast i32** %l_315 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_311) #1
  %224 = load i8*, i8** %1
  ret i8* %224

; <label>:225                                     ; preds = %193
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i8* @func_39(i32 %p_40, i32 %p_41, i64 %p_42) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %l_132 = alloca i64*, align 8
  %l_138 = alloca i32, align 4
  %l_139 = alloca [4 x i32], align 16
  %l_168 = alloca i8, align 1
  %l_260 = alloca i64, align 8
  %l_284 = alloca i8*, align 8
  %i = alloca i32, align 4
  %l_116 = alloca i32*, align 8
  %5 = alloca i32
  %l_125 = alloca i8*, align 8
  %l_137 = alloca i32*, align 8
  %l_140 = alloca i32*, align 8
  %l_158 = alloca i16, align 2
  %l_178 = alloca i16, align 2
  %l_218 = alloca i32, align 4
  %l_222 = alloca [9 x [5 x i64**]], align 16
  %l_259 = alloca i8, align 1
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %l_169 = alloca i32**, align 8
  %l_170 = alloca i32**, align 8
  %l_176 = alloca i16, align 2
  %l_177 = alloca [1 x i32], align 4
  %l_196 = alloca i32*, align 8
  %l_195 = alloca i32**, align 8
  %l_197 = alloca i32, align 4
  %l_198 = alloca i32, align 4
  %l_199 = alloca i32, align 4
  %l_265 = alloca i64*, align 8
  %i3 = alloca i32, align 4
  %l_171 = alloca i32*, align 8
  %l_172 = alloca i32*, align 8
  %l_173 = alloca i32*, align 8
  %l_174 = alloca i32*, align 8
  %l_175 = alloca [3 x [1 x [7 x i32*]]], align 16
  %l_190 = alloca [8 x i32*], align 16
  %l_194 = alloca i16*, align 8
  %l_202 = alloca i8*, align 8
  %l_203 = alloca i8**, align 8
  %l_216 = alloca i16*, align 8
  %l_217 = alloca i16*, align 8
  %l_255 = alloca i64*, align 8
  %l_257 = alloca i64*, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_220 = alloca i64***, align 8
  %l_221 = alloca [4 x i64***], align 16
  %l_233 = alloca i32*, align 8
  %i6 = alloca i32, align 4
  %l_258 = alloca [10 x [1 x i32]], align 16
  %l_263 = alloca i32, align 4
  %l_264 = alloca i8*, align 8
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %l_237 = alloca [10 x i64], align 16
  %l_256 = alloca i64**, align 8
  %l_261 = alloca [7 x [5 x i64*]], align 16
  %i9 = alloca i32, align 4
  %j10 = alloca i32, align 4
  %l_276 = alloca i16, align 2
  %l_277 = alloca i32*, align 8
  %l_278 = alloca i32*, align 8
  %l_279 = alloca [2 x i32*], align 16
  %l_280 = alloca i16, align 2
  %l_283 = alloca i8*, align 8
  %i15 = alloca i32, align 4
  store i32 %p_40, i32* %2, align 4, !tbaa !1
  store i32 %p_41, i32* %3, align 4, !tbaa !1
  store i64 %p_42, i64* %4, align 8, !tbaa !7
  %6 = bitcast i64** %l_132 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64* @g_77, i64** %l_132, align 8, !tbaa !5
  %7 = bitcast i32* %l_138 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %l_138, align 4, !tbaa !1
  %8 = bitcast [4 x i32]* %l_139 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  call void @llvm.lifetime.start(i64 1, i8* %l_168) #1
  store i8 -2, i8* %l_168, align 1, !tbaa !9
  %9 = bitcast i64* %l_260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 -5, i64* %l_260, align 8, !tbaa !7
  %10 = bitcast i8** %l_284 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* @g_17, i8** %l_284, align 8, !tbaa !5
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %19, %0
  %13 = load i32, i32* %i, align 4, !tbaa !1
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %22

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %17
  store i32 542986926, i32* %18, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4, !tbaa !1
  br label %12

; <label>:22                                      ; preds = %12
  store i32 0, i32* %2, align 4, !tbaa !1
  br label %23

; <label>:23                                      ; preds = %39, %22
  %24 = load i32, i32* %2, align 4, !tbaa !1
  %25 = icmp eq i32 %24, 35
  br i1 %25, label %26, label %44

; <label>:26                                      ; preds = %23
  %27 = bitcast i32** %l_116 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i32* @g_65, i32** %l_116, align 8, !tbaa !5
  store i32* @g_65, i32** %l_116, align 8, !tbaa !5
  store i64 0, i64* %4, align 8, !tbaa !7
  br label %28

; <label>:28                                      ; preds = %32, %26
  %29 = load i64, i64* %4, align 8, !tbaa !7
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %35

; <label>:31                                      ; preds = %28
  store i8* @g_17, i8** %1
  store i32 1, i32* %5
  br label %36
                                                  ; No predecessors!
  %33 = load i64, i64* %4, align 8, !tbaa !7
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %4, align 8, !tbaa !7
  br label %28

; <label>:35                                      ; preds = %28
  store i32 0, i32* %5
  br label %36

; <label>:36                                      ; preds = %35, %31
  %37 = bitcast i32** %l_116 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %847 [
    i32 0, label %38
  ]

; <label>:38                                      ; preds = %36
  br label %39

; <label>:39                                      ; preds = %38
  %40 = load i32, i32* %2, align 4, !tbaa !1
  %41 = trunc i32 %40 to i8
  %42 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %41, i8 zeroext 9)
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %2, align 4, !tbaa !1
  br label %23

; <label>:44                                      ; preds = %23
  store i32 0, i32* @g_92, align 4, !tbaa !1
  br label %45

; <label>:45                                      ; preds = %804, %44
  %46 = load i32, i32* @g_92, align 4, !tbaa !1
  %47 = icmp ne i32 %46, 10
  br i1 %47, label %48, label %809

; <label>:48                                      ; preds = %45
  %49 = bitcast i8** %l_125 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i8* @g_17, i8** %l_125, align 8, !tbaa !5
  %50 = bitcast i32** %l_137 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i32* null, i32** %l_137, align 8, !tbaa !5
  %51 = bitcast i32** %l_140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 2
  store i32* %52, i32** %l_140, align 8, !tbaa !5
  %53 = bitcast i16* %l_158 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %53) #1
  store i16 1, i16* %l_158, align 2, !tbaa !10
  %54 = bitcast i16* %l_178 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %54) #1
  store i16 7, i16* %l_178, align 2, !tbaa !10
  %55 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 1, i32* %l_218, align 4, !tbaa !1
  %56 = bitcast [9 x [5 x i64**]]* %l_222 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %56) #1
  %57 = bitcast [9 x [5 x i64**]]* %l_222 to i8*
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 360, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_259) #1
  store i8 -5, i8* %l_259, align 1, !tbaa !9
  %58 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i8*, i8** %l_125, align 8, !tbaa !5
  %61 = load i8, i8* %60, align 1, !tbaa !9
  %62 = add i8 %61, -1
  store i8 %62, i8* %60, align 1, !tbaa !9
  %63 = zext i8 %62 to i32
  %64 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %65 = trunc i64 %64 to i16
  %66 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %65, i32 1)
  %67 = sext i16 %66 to i32
  %68 = xor i32 %63, %67
  %69 = trunc i32 %68 to i16
  %70 = load i32, i32* %2, align 4, !tbaa !1
  %71 = trunc i32 %70 to i16
  %72 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %69, i16 signext %71)
  %73 = sext i16 %72 to i32
  %74 = load i64*, i64** %l_132, align 8, !tbaa !5
  %75 = icmp ne i64* null, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %3, align 4, !tbaa !1
  store i32 %77, i32* %l_138, align 4, !tbaa !1
  %78 = load i32, i32* %l_138, align 4, !tbaa !1
  %79 = load i32, i32* @g_65, align 4, !tbaa !1
  %80 = icmp sge i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = icmp ule i64 %82, -8443244226260774502
  %84 = zext i1 %83 to i32
  %85 = trunc i32 %84 to i16
  %86 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %85, i16 signext -9)
  %87 = sext i16 %86 to i64
  %88 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %89 = icmp uge i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = trunc i32 %90 to i16
  %92 = load i32, i32* @g_92, align 4, !tbaa !1
  %93 = trunc i32 %92 to i16
  %94 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %91, i16 signext %93)
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 2
  %97 = load i32, i32* %96, align 4, !tbaa !1
  %98 = or i32 %95, %97
  %99 = or i32 %76, %98
  %100 = sext i32 %99 to i64
  %101 = icmp sge i64 %100, 7
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = and i64 %103, 4294967291
  %105 = trunc i64 %104 to i16
  %106 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %105, i16 signext -1)
  %107 = sext i16 %106 to i32
  %108 = icmp slt i32 %73, %107
  %109 = zext i1 %108 to i32
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %110, 10892
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %l_138, align 4, !tbaa !1
  %114 = trunc i32 %113 to i8
  %115 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext -1, i8 zeroext %114)
  %116 = zext i8 %115 to i16
  %117 = load i32, i32* @g_65, align 4, !tbaa !1
  %118 = trunc i32 %117 to i16
  %119 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %116, i16 signext %118)
  %120 = sext i16 %119 to i32
  %121 = load i32*, i32** %l_140, align 8, !tbaa !5
  store i32 %120, i32* %121, align 4, !tbaa !1
  %122 = load i32, i32* %3, align 4, !tbaa !1
  %123 = load i32, i32* %2, align 4, !tbaa !1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %173, label %125

; <label>:125                                     ; preds = %48
  %126 = load i32*, i32** %l_140, align 8, !tbaa !5
  %127 = icmp ne i32* %126, @g_65
  %128 = zext i1 %127 to i32
  %129 = trunc i32 %128 to i16
  %130 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext 0)
  %131 = zext i8 %130 to i32
  %132 = xor i32 %131, -1
  %133 = load i64*, i64** %l_132, align 8, !tbaa !5
  %134 = load i64, i64* %133, align 8, !tbaa !7
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8, !tbaa !7
  %136 = call i64 @safe_div_func_uint64_t_u_u(i64 %134, i64 1)
  %137 = trunc i64 %136 to i16
  %138 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %129, i16 signext %137)
  %139 = sext i16 %138 to i64
  %140 = and i64 %139, 1
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %166

; <label>:142                                     ; preds = %125
  %143 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %144 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %145 = icmp ne i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = trunc i32 %146 to i8
  %148 = load i32, i32* %3, align 4, !tbaa !1
  %149 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %147, i32 %148)
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 2
  %151 = load i32, i32* %150, align 4, !tbaa !1
  %152 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %149, i32 %151)
  %153 = sext i8 %152 to i32
  %154 = load i32, i32* @g_92, align 4, !tbaa !1
  %155 = icmp uge i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = trunc i32 %156 to i8
  %158 = load i32, i32* %2, align 4, !tbaa !1
  %159 = trunc i32 %158 to i8
  %160 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %157, i8 signext %159)
  %161 = load i8, i8* %l_168, align 1, !tbaa !9
  %162 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %160, i8 zeroext %161)
  %163 = zext i8 %162 to i32
  %164 = xor i32 %163, -1
  %165 = icmp ne i32 %164, 0
  br label %166

; <label>:166                                     ; preds = %142, %125
  %167 = phi i1 [ false, %125 ], [ %165, %142 ]
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* @g_92, align 4, !tbaa !1
  %170 = load i8, i8* @g_17, align 1, !tbaa !9
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %169, %171
  br label %173

; <label>:173                                     ; preds = %166, %48
  %174 = phi i1 [ true, %48 ], [ %172, %166 ]
  %175 = zext i1 %174 to i32
  %176 = icmp ult i32 %122, %175
  %177 = zext i1 %176 to i32
  %178 = trunc i32 %177 to i8
  %179 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %180 = trunc i64 %179 to i8
  %181 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %178, i8 zeroext %180)
  %182 = zext i8 %181 to i16
  %183 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %182, i16 zeroext 11634)
  %184 = zext i16 %183 to i64
  %185 = load i64, i64* %4, align 8, !tbaa !7
  %186 = icmp sge i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i8, i8* %l_168, align 1, !tbaa !9
  %189 = sext i8 %188 to i32
  %190 = and i32 %187, %189
  %191 = trunc i32 %190 to i16
  %192 = load i16, i16* @g_104, align 2, !tbaa !10
  %193 = zext i16 %192 to i32
  %194 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %191, i32 %193)
  %195 = trunc i16 %194 to i8
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 2
  %197 = load i32, i32* %196, align 4, !tbaa !1
  %198 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %195, i32 %197)
  %199 = icmp ne i8 %198, 0
  br i1 %199, label %200, label %213

; <label>:200                                     ; preds = %173
  %201 = bitcast i32*** %l_169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #1
  store i32** null, i32*** %l_169, align 8, !tbaa !5
  %202 = bitcast i32*** %l_170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %202) #1
  store i32** %l_140, i32*** %l_170, align 8, !tbaa !5
  %203 = load i32**, i32*** %l_170, align 8, !tbaa !5
  store i32* @g_65, i32** %203, align 8, !tbaa !5
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 0
  %205 = load i32, i32* %204, align 4, !tbaa !1
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

; <label>:207                                     ; preds = %200
  store i32 11, i32* %5
  br label %209

; <label>:208                                     ; preds = %200
  store i32 0, i32* %5
  br label %209

; <label>:209                                     ; preds = %208, %207
  %210 = bitcast i32*** %l_170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #1
  %211 = bitcast i32*** %l_169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %211) #1
  %cleanup.dest.2 = load i32, i32* %5
  switch i32 %cleanup.dest.2, label %793 [
    i32 0, label %212
  ]

; <label>:212                                     ; preds = %209
  br label %788

; <label>:213                                     ; preds = %173
  %214 = bitcast i16* %l_176 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %214) #1
  store i16 -8, i16* %l_176, align 2, !tbaa !10
  %215 = bitcast [1 x i32]* %l_177 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %215) #1
  %216 = bitcast i32** %l_196 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %216) #1
  store i32* %l_138, i32** %l_196, align 8, !tbaa !5
  %217 = bitcast i32*** %l_195 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %217) #1
  store i32** %l_196, i32*** %l_195, align 8, !tbaa !5
  %218 = bitcast i32* %l_197 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  store i32 524206558, i32* %l_197, align 4, !tbaa !1
  %219 = bitcast i32* %l_198 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  store i32 -2029955437, i32* %l_198, align 4, !tbaa !1
  %220 = bitcast i32* %l_199 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %220) #1
  store i32 4, i32* %l_199, align 4, !tbaa !1
  %221 = bitcast i64** %l_265 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #1
  store i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 0, i64 0, i64 0), i64** %l_265, align 8, !tbaa !5
  %222 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %223

; <label>:223                                     ; preds = %230, %213
  %224 = load i32, i32* %i3, align 4, !tbaa !1
  %225 = icmp slt i32 %224, 1
  br i1 %225, label %226, label %233

; <label>:226                                     ; preds = %223
  %227 = load i32, i32* %i3, align 4, !tbaa !1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [1 x i32], [1 x i32]* %l_177, i32 0, i64 %228
  store i32 -10, i32* %229, align 4, !tbaa !1
  br label %230

; <label>:230                                     ; preds = %226
  %231 = load i32, i32* %i3, align 4, !tbaa !1
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %i3, align 4, !tbaa !1
  br label %223

; <label>:233                                     ; preds = %223
  store i64 0, i64* @g_77, align 8, !tbaa !7
  br label %234

; <label>:234                                     ; preds = %773, %233
  %235 = load i64, i64* @g_77, align 8, !tbaa !7
  %236 = icmp ule i64 %235, 0
  br i1 %236, label %237, label %776

; <label>:237                                     ; preds = %234
  %238 = bitcast i32** %l_171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %238) #1
  store i32* @g_65, i32** %l_171, align 8, !tbaa !5
  %239 = bitcast i32** %l_172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  store i32* null, i32** %l_172, align 8, !tbaa !5
  %240 = bitcast i32** %l_173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #1
  store i32* @g_65, i32** %l_173, align 8, !tbaa !5
  %241 = bitcast i32** %l_174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %241) #1
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 1
  store i32* %242, i32** %l_174, align 8, !tbaa !5
  %243 = bitcast [3 x [1 x [7 x i32*]]]* %l_175 to i8*
  call void @llvm.lifetime.start(i64 168, i8* %243) #1
  %244 = getelementptr inbounds [3 x [1 x [7 x i32*]]], [3 x [1 x [7 x i32*]]]* %l_175, i64 0, i64 0
  %245 = getelementptr inbounds [1 x [7 x i32*]], [1 x [7 x i32*]]* %244, i64 0, i64 0
  %246 = getelementptr inbounds [7 x i32*], [7 x i32*]* %245, i64 0, i64 0
  %247 = load i64, i64* @g_77, align 8, !tbaa !7
  %248 = add i64 %247, 2
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %248
  store i32* %249, i32** %246, !tbaa !5
  %250 = getelementptr inbounds i32*, i32** %246, i64 1
  store i32* null, i32** %250, !tbaa !5
  %251 = getelementptr inbounds i32*, i32** %250, i64 1
  %252 = load i64, i64* @g_77, align 8, !tbaa !7
  %253 = add i64 %252, 2
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %253
  store i32* %254, i32** %251, !tbaa !5
  %255 = getelementptr inbounds i32*, i32** %251, i64 1
  %256 = load i64, i64* @g_77, align 8, !tbaa !7
  %257 = add i64 %256, 2
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %257
  store i32* %258, i32** %255, !tbaa !5
  %259 = getelementptr inbounds i32*, i32** %255, i64 1
  store i32* null, i32** %259, !tbaa !5
  %260 = getelementptr inbounds i32*, i32** %259, i64 1
  %261 = load i64, i64* @g_77, align 8, !tbaa !7
  %262 = add i64 %261, 2
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %262
  store i32* %263, i32** %260, !tbaa !5
  %264 = getelementptr inbounds i32*, i32** %260, i64 1
  %265 = load i64, i64* @g_77, align 8, !tbaa !7
  %266 = add i64 %265, 2
  %267 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %266
  store i32* %267, i32** %264, !tbaa !5
  %268 = getelementptr inbounds [1 x [7 x i32*]], [1 x [7 x i32*]]* %244, i64 1
  %269 = getelementptr inbounds [1 x [7 x i32*]], [1 x [7 x i32*]]* %268, i64 0, i64 0
  %270 = getelementptr inbounds [7 x i32*], [7 x i32*]* %269, i64 0, i64 0
  store i32* null, i32** %270, !tbaa !5
  %271 = getelementptr inbounds i32*, i32** %270, i64 1
  store i32* null, i32** %271, !tbaa !5
  %272 = getelementptr inbounds i32*, i32** %271, i64 1
  %273 = load i64, i64* @g_77, align 8, !tbaa !7
  %274 = add i64 %273, 2
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %274
  store i32* %275, i32** %272, !tbaa !5
  %276 = getelementptr inbounds i32*, i32** %272, i64 1
  store i32* null, i32** %276, !tbaa !5
  %277 = getelementptr inbounds i32*, i32** %276, i64 1
  store i32* null, i32** %277, !tbaa !5
  %278 = getelementptr inbounds i32*, i32** %277, i64 1
  %279 = load i64, i64* @g_77, align 8, !tbaa !7
  %280 = add i64 %279, 2
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %280
  store i32* %281, i32** %278, !tbaa !5
  %282 = getelementptr inbounds i32*, i32** %278, i64 1
  store i32* null, i32** %282, !tbaa !5
  %283 = getelementptr inbounds [1 x [7 x i32*]], [1 x [7 x i32*]]* %268, i64 1
  %284 = getelementptr inbounds [1 x [7 x i32*]], [1 x [7 x i32*]]* %283, i64 0, i64 0
  %285 = getelementptr inbounds [7 x i32*], [7 x i32*]* %284, i64 0, i64 0
  store i32* null, i32** %285, !tbaa !5
  %286 = getelementptr inbounds i32*, i32** %285, i64 1
  %287 = load i64, i64* @g_77, align 8, !tbaa !7
  %288 = add i64 %287, 2
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %288
  store i32* %289, i32** %286, !tbaa !5
  %290 = getelementptr inbounds i32*, i32** %286, i64 1
  %291 = load i64, i64* @g_77, align 8, !tbaa !7
  %292 = add i64 %291, 2
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %292
  store i32* %293, i32** %290, !tbaa !5
  %294 = getelementptr inbounds i32*, i32** %290, i64 1
  store i32* null, i32** %294, !tbaa !5
  %295 = getelementptr inbounds i32*, i32** %294, i64 1
  %296 = load i64, i64* @g_77, align 8, !tbaa !7
  %297 = add i64 %296, 2
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %297
  store i32* %298, i32** %295, !tbaa !5
  %299 = getelementptr inbounds i32*, i32** %295, i64 1
  %300 = load i64, i64* @g_77, align 8, !tbaa !7
  %301 = add i64 %300, 2
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %301
  store i32* %302, i32** %299, !tbaa !5
  %303 = getelementptr inbounds i32*, i32** %299, i64 1
  store i32* null, i32** %303, !tbaa !5
  %304 = bitcast [8 x i32*]* %l_190 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %304) #1
  %305 = bitcast [8 x i32*]* %l_190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %305, i8* bitcast ([8 x i32*]* @func_39.l_190 to i8*), i64 64, i32 16, i1 false)
  %306 = bitcast i16** %l_194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %306) #1
  store i16* %l_176, i16** %l_194, align 8, !tbaa !5
  %307 = bitcast i8** %l_202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %307) #1
  store i8* @g_17, i8** %l_202, align 8, !tbaa !5
  %308 = bitcast i8*** %l_203 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #1
  store i8** %l_202, i8*** %l_203, align 8, !tbaa !5
  %309 = bitcast i16** %l_216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309) #1
  store i16* null, i16** %l_216, align 8, !tbaa !5
  %310 = bitcast i16** %l_217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  store i16* %l_178, i16** %l_217, align 8, !tbaa !5
  %311 = bitcast i64** %l_255 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %311) #1
  store i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 1, i64 0, i64 0), i64** %l_255, align 8, !tbaa !5
  %312 = bitcast i64** %l_257 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #1
  store i64* null, i64** %l_257, align 8, !tbaa !5
  %313 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %313) #1
  %314 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %314) #1
  %315 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315) #1
  %316 = load i16, i16* %l_178, align 2, !tbaa !10
  %317 = add i16 %316, -1
  store i16 %317, i16* %l_178, align 2, !tbaa !10
  %318 = load i64, i64* @g_77, align 8, !tbaa !7
  %319 = add i64 %318, 3
  %320 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %319
  %321 = load i32, i32* %320, align 4, !tbaa !1
  %322 = load i64, i64* @g_187, align 8, !tbaa !7
  %323 = add i64 %322, 1
  store i64 %323, i64* @g_187, align 8, !tbaa !7
  %324 = trunc i64 %322 to i32
  store i32 %324, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 3, i64 0), align 4, !tbaa !1
  %325 = zext i32 %324 to i64
  %326 = icmp ne i64 %325, 4294967294
  %327 = zext i1 %326 to i32
  %328 = or i32 %321, %327
  %329 = trunc i32 %328 to i8
  %330 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %329, i32 0)
  %331 = sext i8 %330 to i64
  %332 = load i64, i64* %4, align 8, !tbaa !7
  %333 = icmp sge i64 %331, %332
  %334 = zext i1 %333 to i32
  %335 = trunc i32 %334 to i16
  %336 = load i16, i16* @g_104, align 2, !tbaa !10
  %337 = zext i16 %336 to i32
  %338 = load i32, i32* %l_138, align 4, !tbaa !1
  %339 = icmp sle i32 %337, %338
  %340 = zext i1 %339 to i32
  %341 = icmp ne i32** null, %l_172
  %342 = zext i1 %341 to i32
  %343 = getelementptr inbounds [1 x i32], [1 x i32]* %l_177, i32 0, i64 0
  %344 = load i32, i32* %343, align 4, !tbaa !1
  %345 = load i16, i16* %l_176, align 2, !tbaa !10
  %346 = trunc i16 %345 to i8
  %347 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -95, i8 signext %346)
  %348 = sext i8 %347 to i16
  %349 = load i16*, i16** %l_194, align 8, !tbaa !5
  store i16 %348, i16* %349, align 2, !tbaa !10
  %350 = load i32**, i32*** %l_195, align 8, !tbaa !5
  %351 = icmp ne i32** %350, %l_174
  %352 = zext i1 %351 to i32
  %353 = load i32, i32* %l_197, align 4, !tbaa !1
  %354 = or i32 %353, %352
  store i32 %354, i32* %l_197, align 4, !tbaa !1
  %355 = or i32 %344, %354
  %356 = load i32, i32* %l_198, align 4, !tbaa !1
  %357 = icmp ule i32 %355, %356
  %358 = zext i1 %357 to i32
  %359 = load i32*, i32** %l_196, align 8, !tbaa !5
  %360 = load i32, i32* %359, align 4, !tbaa !1
  %361 = icmp slt i32 %358, %360
  %362 = zext i1 %361 to i32
  %363 = icmp slt i32 %342, %362
  %364 = zext i1 %363 to i32
  %365 = xor i32 %340, %364
  %366 = trunc i32 %365 to i16
  %367 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %335, i16 signext %366)
  %368 = sext i16 %367 to i32
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

; <label>:370                                     ; preds = %237
  %371 = load i32, i32* @g_92, align 4, !tbaa !1
  %372 = icmp ne i32 %371, 0
  br label %373

; <label>:373                                     ; preds = %370, %237
  %374 = phi i1 [ false, %237 ], [ %372, %370 ]
  %375 = zext i1 %374 to i32
  %376 = load i32, i32* %l_199, align 4, !tbaa !1
  %377 = xor i32 %376, %375
  store i32 %377, i32* %l_199, align 4, !tbaa !1
  %378 = trunc i32 %377 to i8
  %379 = load i32*, i32** %l_140, align 8, !tbaa !5
  %380 = load i32, i32* %379, align 4, !tbaa !1
  %381 = trunc i32 %380 to i8
  %382 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %378, i8 zeroext %381)
  %383 = zext i8 %382 to i32
  %384 = load i32, i32* @g_65, align 4, !tbaa !1
  %385 = xor i32 %384, %383
  store i32 %385, i32* @g_65, align 4, !tbaa !1
  %386 = load i8*, i8** %l_125, align 8, !tbaa !5
  %387 = load i8*, i8** %l_202, align 8, !tbaa !5
  %388 = call i8* @func_48(i8* %387)
  %389 = load i8**, i8*** %l_203, align 8, !tbaa !5
  store i8* %388, i8** %389, align 8, !tbaa !5
  %390 = icmp ne i8* %386, %388
  %391 = zext i1 %390 to i32
  %392 = trunc i32 %391 to i16
  %393 = load i64, i64* @g_187, align 8, !tbaa !7
  %394 = load i64, i64* @g_187, align 8, !tbaa !7
  %395 = trunc i64 %394 to i16
  %396 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %395, i32 7)
  %397 = zext i16 %396 to i64
  %398 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 2
  %399 = load i32, i32* %398, align 4, !tbaa !1
  %400 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 1, i64 3), align 4, !tbaa !1
  %401 = trunc i32 %400 to i16
  %402 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %401, i32 12)
  %403 = load i16*, i16** %l_217, align 8, !tbaa !5
  store i16 %402, i16* %403, align 2, !tbaa !10
  %404 = zext i16 %402 to i32
  %405 = load i32, i32* %2, align 4, !tbaa !1
  %406 = and i32 %404, %405
  %407 = trunc i32 %406 to i8
  %408 = load i32, i32* @g_92, align 4, !tbaa !1
  %409 = trunc i32 %408 to i8
  %410 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %407, i8 zeroext %409)
  %411 = zext i8 %410 to i64
  %412 = xor i64 %411, 151
  %413 = load i32, i32* %2, align 4, !tbaa !1
  %414 = zext i32 %413 to i64
  %415 = xor i64 %412, %414
  %416 = icmp slt i64 %397, %415
  %417 = xor i1 %416, true
  %418 = zext i1 %417 to i32
  %419 = sext i32 %418 to i64
  %420 = load i32*, i32** %l_140, align 8, !tbaa !5
  store i32 -669365036, i32* %420, align 4, !tbaa !1
  %421 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext -64, i8 signext -1)
  %422 = sext i8 %421 to i32
  %423 = load i32, i32* %l_218, align 4, !tbaa !1
  %424 = icmp eq i32 %422, %423
  %425 = zext i1 %424 to i32
  %426 = sext i32 %425 to i64
  %427 = xor i64 %393, %426
  %428 = trunc i64 %427 to i16
  %429 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %428, i32 11)
  %430 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %392, i16 zeroext %429)
  %431 = icmp ne i16 %430, 0
  br i1 %431, label %432, label %527

; <label>:432                                     ; preds = %373
  %433 = bitcast i64**** %l_220 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %433) #1
  store i64*** null, i64**** %l_220, align 8, !tbaa !5
  %434 = bitcast [4 x i64***]* %l_221 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %434) #1
  %435 = bitcast i32** %l_233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %435) #1
  store i32* @g_234, i32** %l_233, align 8, !tbaa !5
  %436 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %436) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %437

; <label>:437                                     ; preds = %444, %432
  %438 = load i32, i32* %i6, align 4, !tbaa !1
  %439 = icmp slt i32 %438, 4
  br i1 %439, label %440, label %447

; <label>:440                                     ; preds = %437
  %441 = load i32, i32* %i6, align 4, !tbaa !1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [4 x i64***], [4 x i64***]* %l_221, i32 0, i64 %442
  store i64*** @g_219, i64**** %443, align 8, !tbaa !5
  br label %444

; <label>:444                                     ; preds = %440
  %445 = load i32, i32* %i6, align 4, !tbaa !1
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %i6, align 4, !tbaa !1
  br label %437

; <label>:447                                     ; preds = %437
  store i16 0, i16* %l_178, align 2, !tbaa !10
  br label %448

; <label>:448                                     ; preds = %457, %447
  %449 = load i16, i16* %l_178, align 2, !tbaa !10
  %450 = zext i16 %449 to i32
  %451 = icmp sle i32 %450, 0
  br i1 %451, label %452, label %462

; <label>:452                                     ; preds = %448
  %453 = load i32, i32* %3, align 4, !tbaa !1
  %454 = load i32*, i32** %l_173, align 8, !tbaa !5
  %455 = load i32, i32* %454, align 4, !tbaa !1
  %456 = xor i32 %455, %453
  store i32 %456, i32* %454, align 4, !tbaa !1
  br label %457

; <label>:457                                     ; preds = %452
  %458 = load i16, i16* %l_178, align 2, !tbaa !10
  %459 = zext i16 %458 to i32
  %460 = add nsw i32 %459, 1
  %461 = trunc i32 %460 to i16
  store i16 %461, i16* %l_178, align 2, !tbaa !10
  br label %448

; <label>:462                                     ; preds = %448
  %463 = load i32*, i32** %l_174, align 8, !tbaa !5
  %464 = load i32, i32* %463, align 4, !tbaa !1
  %465 = sext i32 %464 to i64
  %466 = or i64 %465, -1
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %463, align 4, !tbaa !1
  %468 = load i64**, i64*** @g_219, align 8, !tbaa !5
  %469 = getelementptr inbounds [9 x [5 x i64**]], [9 x [5 x i64**]]* %l_222, i32 0, i64 4
  %470 = getelementptr inbounds [5 x i64**], [5 x i64**]* %469, i32 0, i64 2
  store i64** %468, i64*** %470, align 8, !tbaa !5
  %471 = load i8**, i8*** getelementptr inbounds ([1 x i8**], [1 x i8**]* @g_223, i32 0, i64 0), align 8, !tbaa !5
  %472 = icmp eq i8** null, %471
  br i1 %472, label %473, label %512

; <label>:473                                     ; preds = %462
  %474 = load i32, i32* @g_226, align 4, !tbaa !1
  %475 = trunc i32 %474 to i16
  %476 = load i32, i32* %2, align 4, !tbaa !1
  %477 = load i32**, i32*** @g_230, align 8, !tbaa !5
  %478 = load i32, i32* getelementptr inbounds ([4 x [8 x i32]], [4 x [8 x i32]]* @g_191, i32 0, i64 2, i64 4), align 4, !tbaa !1
  %479 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext -12821)
  %480 = zext i16 %479 to i32
  %481 = icmp ult i32 %478, %480
  %482 = zext i1 %481 to i32
  %483 = load i32*, i32** %l_233, align 8, !tbaa !5
  %484 = load i32, i32* %483, align 4, !tbaa !1
  %485 = and i32 %484, %482
  store i32 %485, i32* %483, align 4, !tbaa !1
  %486 = icmp eq i32** %477, %l_196
  %487 = zext i1 %486 to i32
  %488 = trunc i32 %487 to i16
  %489 = load i32, i32* %l_138, align 4, !tbaa !1
  %490 = trunc i32 %489 to i16
  %491 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %488, i16 signext %490)
  %492 = sext i16 %491 to i32
  %493 = icmp ugt i32 %476, %492
  %494 = zext i1 %493 to i32
  %495 = load i32, i32* %2, align 4, !tbaa !1
  %496 = icmp ugt i32 %494, %495
  %497 = xor i1 %496, true
  %498 = zext i1 %497 to i32
  %499 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %475, i32 %498)
  %500 = zext i16 %499 to i64
  %501 = or i64 %500, 64442
  %502 = load i32, i32* %3, align 4, !tbaa !1
  %503 = zext i32 %502 to i64
  %504 = icmp slt i64 %501, %503
  %505 = zext i1 %504 to i32
  %506 = trunc i32 %505 to i16
  store i16 %506, i16* @g_235, align 2, !tbaa !10
  %507 = zext i16 %506 to i64
  %508 = icmp ugt i64 %507, 0
  %509 = zext i1 %508 to i32
  %510 = load i32, i32* %3, align 4, !tbaa !1
  %511 = icmp eq i32 %509, %510
  br label %512

; <label>:512                                     ; preds = %473, %462
  %513 = phi i1 [ false, %462 ], [ %511, %473 ]
  %514 = zext i1 %513 to i32
  %515 = sext i32 %514 to i64
  %516 = and i64 %515, 1
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %519, label %518

; <label>:518                                     ; preds = %512
  br label %519

; <label>:519                                     ; preds = %518, %512
  %520 = phi i1 [ true, %512 ], [ false, %518 ]
  %521 = zext i1 %520 to i32
  %522 = load i32*, i32** %l_174, align 8, !tbaa !5
  store i32 %521, i32* %522, align 4, !tbaa !1
  %523 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #1
  %524 = bitcast i32** %l_233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %524) #1
  %525 = bitcast [4 x i64***]* %l_221 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %525) #1
  %526 = bitcast i64**** %l_220 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %526) #1
  br label %702

; <label>:527                                     ; preds = %373
  %528 = bitcast [10 x [1 x i32]]* %l_258 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %528) #1
  %529 = bitcast [10 x [1 x i32]]* %l_258 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %529, i8* bitcast ([10 x [1 x i32]]* @func_39.l_258 to i8*), i64 40, i32 16, i1 false)
  %530 = bitcast i32* %l_263 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %530) #1
  store i32 -378497370, i32* %l_263, align 4, !tbaa !1
  %531 = bitcast i8** %l_264 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %531) #1
  store i8* @g_17, i8** %l_264, align 8, !tbaa !5
  %532 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %532) #1
  %533 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %533) #1
  store i16 0, i16* @g_235, align 2, !tbaa !10
  br label %534

; <label>:534                                     ; preds = %690, %527
  %535 = load i16, i16* @g_235, align 2, !tbaa !10
  %536 = zext i16 %535 to i32
  %537 = icmp sle i32 %536, 0
  br i1 %537, label %538, label %695

; <label>:538                                     ; preds = %534
  %539 = bitcast [10 x i64]* %l_237 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %539) #1
  %540 = bitcast [10 x i64]* %l_237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %540, i8* bitcast ([10 x i64]* @func_39.l_237 to i8*), i64 80, i32 16, i1 false)
  %541 = bitcast i64*** %l_256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %541) #1
  store i64** %l_255, i64*** %l_256, align 8, !tbaa !5
  %542 = bitcast [7 x [5 x i64*]]* %l_261 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %542) #1
  %543 = getelementptr inbounds [7 x [5 x i64*]], [7 x [5 x i64*]]* %l_261, i64 0, i64 0
  %544 = getelementptr inbounds [5 x i64*], [5 x i64*]* %543, i64 0, i64 0
  %545 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %545, i64** %544, !tbaa !5
  %546 = getelementptr inbounds i64*, i64** %544, i64 1
  %547 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 7
  store i64* %547, i64** %546, !tbaa !5
  %548 = getelementptr inbounds i64*, i64** %546, i64 1
  %549 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %549, i64** %548, !tbaa !5
  %550 = getelementptr inbounds i64*, i64** %548, i64 1
  store i64* null, i64** %550, !tbaa !5
  %551 = getelementptr inbounds i64*, i64** %550, i64 1
  store i64* null, i64** %551, !tbaa !5
  %552 = getelementptr inbounds [5 x i64*], [5 x i64*]* %543, i64 1
  %553 = getelementptr inbounds [5 x i64*], [5 x i64*]* %552, i64 0, i64 0
  %554 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %554, i64** %553, !tbaa !5
  %555 = getelementptr inbounds i64*, i64** %553, i64 1
  %556 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 7
  store i64* %556, i64** %555, !tbaa !5
  %557 = getelementptr inbounds i64*, i64** %555, i64 1
  %558 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %558, i64** %557, !tbaa !5
  %559 = getelementptr inbounds i64*, i64** %557, i64 1
  store i64* null, i64** %559, !tbaa !5
  %560 = getelementptr inbounds i64*, i64** %559, i64 1
  store i64* null, i64** %560, !tbaa !5
  %561 = getelementptr inbounds [5 x i64*], [5 x i64*]* %552, i64 1
  %562 = getelementptr inbounds [5 x i64*], [5 x i64*]* %561, i64 0, i64 0
  %563 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %563, i64** %562, !tbaa !5
  %564 = getelementptr inbounds i64*, i64** %562, i64 1
  store i64* null, i64** %564, !tbaa !5
  %565 = getelementptr inbounds i64*, i64** %564, i64 1
  store i64* null, i64** %565, !tbaa !5
  %566 = getelementptr inbounds i64*, i64** %565, i64 1
  %567 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %567, i64** %566, !tbaa !5
  %568 = getelementptr inbounds i64*, i64** %566, i64 1
  %569 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %569, i64** %568, !tbaa !5
  %570 = getelementptr inbounds [5 x i64*], [5 x i64*]* %561, i64 1
  %571 = getelementptr inbounds [5 x i64*], [5 x i64*]* %570, i64 0, i64 0
  store i64* null, i64** %571, !tbaa !5
  %572 = getelementptr inbounds i64*, i64** %571, i64 1
  store i64* null, i64** %572, !tbaa !5
  %573 = getelementptr inbounds i64*, i64** %572, i64 1
  store i64* null, i64** %573, !tbaa !5
  %574 = getelementptr inbounds i64*, i64** %573, i64 1
  %575 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %575, i64** %574, !tbaa !5
  %576 = getelementptr inbounds i64*, i64** %574, i64 1
  %577 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %577, i64** %576, !tbaa !5
  %578 = getelementptr inbounds [5 x i64*], [5 x i64*]* %570, i64 1
  %579 = getelementptr inbounds [5 x i64*], [5 x i64*]* %578, i64 0, i64 0
  store i64* null, i64** %579, !tbaa !5
  %580 = getelementptr inbounds i64*, i64** %579, i64 1
  store i64* null, i64** %580, !tbaa !5
  %581 = getelementptr inbounds i64*, i64** %580, i64 1
  store i64* null, i64** %581, !tbaa !5
  %582 = getelementptr inbounds i64*, i64** %581, i64 1
  %583 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %583, i64** %582, !tbaa !5
  %584 = getelementptr inbounds i64*, i64** %582, i64 1
  %585 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %585, i64** %584, !tbaa !5
  %586 = getelementptr inbounds [5 x i64*], [5 x i64*]* %578, i64 1
  %587 = getelementptr inbounds [5 x i64*], [5 x i64*]* %586, i64 0, i64 0
  store i64* null, i64** %587, !tbaa !5
  %588 = getelementptr inbounds i64*, i64** %587, i64 1
  store i64* null, i64** %588, !tbaa !5
  %589 = getelementptr inbounds i64*, i64** %588, i64 1
  store i64* null, i64** %589, !tbaa !5
  %590 = getelementptr inbounds i64*, i64** %589, i64 1
  %591 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %591, i64** %590, !tbaa !5
  %592 = getelementptr inbounds i64*, i64** %590, i64 1
  %593 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %593, i64** %592, !tbaa !5
  %594 = getelementptr inbounds [5 x i64*], [5 x i64*]* %586, i64 1
  %595 = getelementptr inbounds [5 x i64*], [5 x i64*]* %594, i64 0, i64 0
  store i64* null, i64** %595, !tbaa !5
  %596 = getelementptr inbounds i64*, i64** %595, i64 1
  store i64* null, i64** %596, !tbaa !5
  %597 = getelementptr inbounds i64*, i64** %596, i64 1
  store i64* null, i64** %597, !tbaa !5
  %598 = getelementptr inbounds i64*, i64** %597, i64 1
  %599 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %599, i64** %598, !tbaa !5
  %600 = getelementptr inbounds i64*, i64** %598, i64 1
  %601 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  store i64* %601, i64** %600, !tbaa !5
  %602 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %602) #1
  %603 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %603) #1
  %604 = getelementptr inbounds [1 x i32], [1 x i32]* %l_177, i32 0, i64 0
  store i32* %604, i32** @g_236, align 8, !tbaa !5
  %605 = load i32**, i32*** %l_195, align 8, !tbaa !5
  store i32* %604, i32** %605, align 8, !tbaa !5
  %606 = load i32**, i32*** %l_195, align 8, !tbaa !5
  store i32* @g_65, i32** %606, align 8, !tbaa !5
  %607 = getelementptr inbounds [10 x i64], [10 x i64]* %l_237, i32 0, i64 1
  %608 = load i64, i64* %607, align 8, !tbaa !7
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %611

; <label>:610                                     ; preds = %538
  store i32 26, i32* %5
  br label %683

; <label>:611                                     ; preds = %538
  %612 = load i32, i32* %3, align 4, !tbaa !1
  %613 = load i32, i32* %2, align 4, !tbaa !1
  %614 = zext i32 %613 to i64
  %615 = icmp sgt i64 26890, %614
  %616 = zext i1 %615 to i32
  %617 = trunc i32 %616 to i16
  %618 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 2
  %619 = load i32, i32* %618, align 4, !tbaa !1
  %620 = trunc i32 %619 to i16
  %621 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %617, i16 zeroext %620)
  store i32 25739, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), align 4, !tbaa !1
  %622 = load i32, i32* %3, align 4, !tbaa !1
  %623 = load i64*, i64** %l_255, align 8, !tbaa !5
  %624 = load i64**, i64*** %l_256, align 8, !tbaa !5
  store i64* %623, i64** %624, align 8, !tbaa !5
  %625 = load i64*, i64** %l_257, align 8, !tbaa !5
  %626 = icmp eq i64* %623, %625
  %627 = zext i1 %626 to i32
  %628 = load i8, i8* %l_168, align 1, !tbaa !9
  %629 = sext i8 %628 to i32
  %630 = xor i32 %629, -1
  %631 = load i8, i8* @g_17, align 1, !tbaa !9
  %632 = zext i8 %631 to i32
  %633 = icmp sgt i32 %630, %632
  %634 = zext i1 %633 to i32
  %635 = xor i32 %634, -1
  %636 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %l_258, i32 0, i64 4
  %637 = getelementptr inbounds [1 x i32], [1 x i32]* %636, i32 0, i64 0
  %638 = load i32, i32* %637, align 4, !tbaa !1
  %639 = icmp uge i32 %635, %638
  %640 = zext i1 %639 to i32
  %641 = icmp uge i32 %622, %640
  %642 = zext i1 %641 to i32
  %643 = load i32*, i32** %l_173, align 8, !tbaa !5
  %644 = load i32, i32* %643, align 4, !tbaa !1
  %645 = sext i32 %644 to i64
  %646 = or i64 %645, 127777949
  %647 = trunc i64 %646 to i32
  store i32 %647, i32* %643, align 4, !tbaa !1
  %648 = icmp slt i32 0, %647
  %649 = zext i1 %648 to i32
  %650 = sext i32 %649 to i64
  %651 = call i64 @safe_sub_func_int64_t_s_s(i64 %650, i64 -5)
  %652 = trunc i64 %651 to i8
  %653 = load i64, i64* %4, align 8, !tbaa !7
  %654 = trunc i64 %653 to i32
  %655 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %652, i32 %654)
  %656 = sext i8 %655 to i64
  %657 = icmp eq i64 %656, 0
  %658 = zext i1 %657 to i32
  %659 = trunc i32 %658 to i8
  %660 = load i8*, i8** %l_125, align 8, !tbaa !5
  store i8 %659, i8* %660, align 1, !tbaa !9
  %661 = load i64, i64* %l_260, align 8, !tbaa !7
  %662 = trunc i64 %661 to i8
  %663 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %659, i8 zeroext %662)
  %664 = zext i8 %663 to i64
  %665 = icmp sgt i64 %664, 55601
  %666 = zext i1 %665 to i32
  %667 = sext i32 %666 to i64
  %668 = and i64 %667, 116
  %669 = icmp sgt i64 1, %668
  %670 = zext i1 %669 to i32
  %671 = trunc i32 %670 to i16
  store i16 %671, i16* @g_262, align 2, !tbaa !10
  %672 = zext i16 %671 to i32
  store i32 %672, i32* %l_263, align 4, !tbaa !1
  %673 = trunc i32 %672 to i8
  %674 = load i32, i32* %2, align 4, !tbaa !1
  %675 = trunc i32 %674 to i8
  %676 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %673, i8 zeroext %675)
  %677 = zext i8 %676 to i16
  %678 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %621, i16 zeroext %677)
  %679 = zext i16 %678 to i64
  %680 = xor i64 %679, 25297
  %681 = trunc i64 %680 to i32
  %682 = load i32*, i32** %l_140, align 8, !tbaa !5
  store i32 %681, i32* %682, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %683

; <label>:683                                     ; preds = %611, %610
  %684 = bitcast i32* %j10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %684) #1
  %685 = bitcast i32* %i9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %685) #1
  %686 = bitcast [7 x [5 x i64*]]* %l_261 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %686) #1
  %687 = bitcast i64*** %l_256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %687) #1
  %688 = bitcast [10 x i64]* %l_237 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %688) #1
  %cleanup.dest.11 = load i32, i32* %5
  switch i32 %cleanup.dest.11, label %855 [
    i32 0, label %689
    i32 26, label %695
  ]

; <label>:689                                     ; preds = %683
  br label %690

; <label>:690                                     ; preds = %689
  %691 = load i16, i16* @g_235, align 2, !tbaa !10
  %692 = zext i16 %691 to i32
  %693 = add nsw i32 %692, 1
  %694 = trunc i32 %693 to i16
  store i16 %694, i16* @g_235, align 2, !tbaa !10
  br label %534

; <label>:695                                     ; preds = %683, %534
  %696 = load i8*, i8** %l_264, align 8, !tbaa !5
  store i8* %696, i8** %1
  store i32 1, i32* %5
  %697 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %697) #1
  %698 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  %699 = bitcast i8** %l_264 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %699) #1
  %700 = bitcast i32* %l_263 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %700) #1
  %701 = bitcast [10 x [1 x i32]]* %l_258 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %701) #1
  br label %755

; <label>:702                                     ; preds = %519
  %703 = load i32**, i32*** %l_195, align 8, !tbaa !5
  store i32* %l_218, i32** %703, align 8, !tbaa !5
  store i32 0, i32* %l_218, align 4, !tbaa !1
  br label %704

; <label>:704                                     ; preds = %751, %702
  %705 = load i32, i32* %l_218, align 4, !tbaa !1
  %706 = icmp sle i32 %705, 0
  br i1 %706, label %707, label %754

; <label>:707                                     ; preds = %704
  %708 = bitcast i16* %l_276 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %708) #1
  store i16 1, i16* %l_276, align 2, !tbaa !10
  %709 = load i64*, i64** %l_265, align 8, !tbaa !5
  %710 = icmp eq i64* null, %709
  %711 = zext i1 %710 to i32
  %712 = load i16, i16* @g_104, align 2, !tbaa !10
  %713 = load i32, i32* %3, align 4, !tbaa !1
  %714 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %712, i32 %713)
  %715 = zext i16 %714 to i64
  %716 = load i32, i32* %2, align 4, !tbaa !1
  %717 = zext i32 %716 to i64
  %718 = xor i64 %717, 152
  %719 = icmp ne i64 %718, 0
  br i1 %719, label %723, label %720

; <label>:720                                     ; preds = %707
  %721 = load i64, i64* %4, align 8, !tbaa !7
  %722 = icmp ne i64 %721, 0
  br label %723

; <label>:723                                     ; preds = %720, %707
  %724 = phi i1 [ true, %707 ], [ %722, %720 ]
  %725 = zext i1 %724 to i32
  %726 = load i32, i32* %2, align 4, !tbaa !1
  %727 = icmp ule i32 %725, %726
  %728 = zext i1 %727 to i32
  %729 = trunc i32 %728 to i16
  %730 = load i32, i32* %3, align 4, !tbaa !1
  %731 = load i16*, i16** %l_217, align 8, !tbaa !5
  %732 = load i16, i16* %731, align 2, !tbaa !10
  %733 = zext i16 %732 to i32
  %734 = and i32 %733, %730
  %735 = trunc i32 %734 to i16
  store i16 %735, i16* %731, align 2, !tbaa !10
  %736 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %735, i32 3)
  %737 = zext i16 %736 to i32
  %738 = call i32 @safe_div_func_uint32_t_u_u(i32 %737, i32 -1)
  %739 = trunc i32 %738 to i16
  %740 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %729, i16 signext %739)
  %741 = sext i16 %740 to i64
  %742 = call i64 @safe_mod_func_int64_t_s_s(i64 %715, i64 %741)
  %743 = load i64, i64* %l_260, align 8, !tbaa !7
  %744 = icmp slt i64 %742, %743
  %745 = zext i1 %744 to i32
  %746 = xor i32 %711, %745
  %747 = load i32*, i32** @g_236, align 8, !tbaa !5
  store i32 %746, i32* %747, align 4, !tbaa !1
  %748 = load i32*, i32** %l_174, align 8, !tbaa !5
  store i32 %746, i32* %748, align 4, !tbaa !1
  %749 = trunc i32 %746 to i16
  store i16 %749, i16* %l_276, align 2, !tbaa !10
  %750 = bitcast i16* %l_276 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %750) #1
  br label %751

; <label>:751                                     ; preds = %723
  %752 = load i32, i32* %l_218, align 4, !tbaa !1
  %753 = add nsw i32 %752, 1
  store i32 %753, i32* %l_218, align 4, !tbaa !1
  br label %704

; <label>:754                                     ; preds = %704
  store i32 0, i32* %5
  br label %755

; <label>:755                                     ; preds = %754, %695
  %756 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %756) #1
  %757 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %757) #1
  %758 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %758) #1
  %759 = bitcast i64** %l_257 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %759) #1
  %760 = bitcast i64** %l_255 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %760) #1
  %761 = bitcast i16** %l_217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %761) #1
  %762 = bitcast i16** %l_216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %762) #1
  %763 = bitcast i8*** %l_203 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %763) #1
  %764 = bitcast i8** %l_202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %764) #1
  %765 = bitcast i16** %l_194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %765) #1
  %766 = bitcast [8 x i32*]* %l_190 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %766) #1
  %767 = bitcast [3 x [1 x [7 x i32*]]]* %l_175 to i8*
  call void @llvm.lifetime.end(i64 168, i8* %767) #1
  %768 = bitcast i32** %l_174 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %768) #1
  %769 = bitcast i32** %l_173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %769) #1
  %770 = bitcast i32** %l_172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %770) #1
  %771 = bitcast i32** %l_171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %771) #1
  %cleanup.dest.12 = load i32, i32* %5
  switch i32 %cleanup.dest.12, label %777 [
    i32 0, label %772
  ]

; <label>:772                                     ; preds = %755
  br label %773

; <label>:773                                     ; preds = %772
  %774 = load i64, i64* @g_77, align 8, !tbaa !7
  %775 = add i64 %774, 1
  store i64 %775, i64* @g_77, align 8, !tbaa !7
  br label %234

; <label>:776                                     ; preds = %234
  store i32 0, i32* %5
  br label %777

; <label>:777                                     ; preds = %776, %755
  %778 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %778) #1
  %779 = bitcast i64** %l_265 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %779) #1
  %780 = bitcast i32* %l_199 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %780) #1
  %781 = bitcast i32* %l_198 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %781) #1
  %782 = bitcast i32* %l_197 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %782) #1
  %783 = bitcast i32*** %l_195 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %783) #1
  %784 = bitcast i32** %l_196 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %784) #1
  %785 = bitcast [1 x i32]* %l_177 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %785) #1
  %786 = bitcast i16* %l_176 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %786) #1
  %cleanup.dest.13 = load i32, i32* %5
  switch i32 %cleanup.dest.13, label %793 [
    i32 0, label %787
  ]

; <label>:787                                     ; preds = %777
  br label %788

; <label>:788                                     ; preds = %787, %212
  %789 = load i64, i64* %4, align 8, !tbaa !7
  %790 = icmp ne i64 %789, 0
  br i1 %790, label %791, label %792

; <label>:791                                     ; preds = %788
  store i32 11, i32* %5
  br label %793

; <label>:792                                     ; preds = %788
  store i32 0, i32* %5
  br label %793

; <label>:793                                     ; preds = %792, %791, %777, %209
  %794 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %794) #1
  %795 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %795) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_259) #1
  %796 = bitcast [9 x [5 x i64**]]* %l_222 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %796) #1
  %797 = bitcast i32* %l_218 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %797) #1
  %798 = bitcast i16* %l_178 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %798) #1
  %799 = bitcast i16* %l_158 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %799) #1
  %800 = bitcast i32** %l_140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %800) #1
  %801 = bitcast i32** %l_137 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %801) #1
  %802 = bitcast i8** %l_125 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %802) #1
  %cleanup.dest.14 = load i32, i32* %5
  switch i32 %cleanup.dest.14, label %847 [
    i32 0, label %803
    i32 11, label %809
  ]

; <label>:803                                     ; preds = %793
  br label %804

; <label>:804                                     ; preds = %803
  %805 = load i32, i32* @g_92, align 4, !tbaa !1
  %806 = zext i32 %805 to i64
  %807 = call i64 @safe_add_func_int64_t_s_s(i64 %806, i64 5)
  %808 = trunc i64 %807 to i32
  store i32 %808, i32* @g_92, align 4, !tbaa !1
  br label %45

; <label>:809                                     ; preds = %793, %45
  store i64 0, i64* @g_187, align 8, !tbaa !7
  br label %810

; <label>:810                                     ; preds = %842, %809
  %811 = load i64, i64* @g_187, align 8, !tbaa !7
  %812 = icmp ule i64 %811, 3
  br i1 %812, label %813, label %845

; <label>:813                                     ; preds = %810
  %814 = bitcast i32** %l_277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %814) #1
  %815 = load i64, i64* @g_187, align 8, !tbaa !7
  %816 = getelementptr inbounds [4 x i32], [4 x i32]* %l_139, i32 0, i64 %815
  store i32* %816, i32** %l_277, align 8, !tbaa !5
  %817 = bitcast i32** %l_278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %817) #1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_245, i32 0, i64 0), i32** %l_278, align 8, !tbaa !5
  %818 = bitcast [2 x i32*]* %l_279 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %818) #1
  %819 = bitcast i16* %l_280 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %819) #1
  store i16 -23059, i16* %l_280, align 2, !tbaa !10
  %820 = bitcast i8** %l_283 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %820) #1
  store i8* null, i8** %l_283, align 8, !tbaa !5
  %821 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %821) #1
  store i32 0, i32* %i15, align 4, !tbaa !1
  br label %822

; <label>:822                                     ; preds = %829, %813
  %823 = load i32, i32* %i15, align 4, !tbaa !1
  %824 = icmp slt i32 %823, 2
  br i1 %824, label %825, label %832

; <label>:825                                     ; preds = %822
  %826 = load i32, i32* %i15, align 4, !tbaa !1
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_279, i32 0, i64 %827
  store i32* @g_65, i32** %828, align 8, !tbaa !5
  br label %829

; <label>:829                                     ; preds = %825
  %830 = load i32, i32* %i15, align 4, !tbaa !1
  %831 = add nsw i32 %830, 1
  store i32 %831, i32* %i15, align 4, !tbaa !1
  br label %822

; <label>:832                                     ; preds = %822
  %833 = load i16, i16* %l_280, align 2, !tbaa !10
  %834 = add i16 %833, -1
  store i16 %834, i16* %l_280, align 2, !tbaa !10
  %835 = load i8*, i8** %l_283, align 8, !tbaa !5
  store i8* %835, i8** %1
  store i32 1, i32* %5
  %836 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %836) #1
  %837 = bitcast i8** %l_283 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %837) #1
  %838 = bitcast i16* %l_280 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %838) #1
  %839 = bitcast [2 x i32*]* %l_279 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %839) #1
  %840 = bitcast i32** %l_278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %840) #1
  %841 = bitcast i32** %l_277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %841) #1
  br label %847
                                                  ; No predecessors!
  %843 = load i64, i64* @g_187, align 8, !tbaa !7
  %844 = add i64 %843, 1
  store i64 %844, i64* @g_187, align 8, !tbaa !7
  br label %810

; <label>:845                                     ; preds = %810
  %846 = load i8*, i8** %l_284, align 8, !tbaa !5
  store i8* %846, i8** %1
  store i32 1, i32* %5
  br label %847

; <label>:847                                     ; preds = %845, %832, %793, %36
  %848 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %848) #1
  %849 = bitcast i8** %l_284 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %849) #1
  %850 = bitcast i64* %l_260 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %850) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_168) #1
  %851 = bitcast [4 x i32]* %l_139 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %851) #1
  %852 = bitcast i32* %l_138 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %852) #1
  %853 = bitcast i64** %l_132 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %853) #1
  %854 = load i8*, i8** %1
  ret i8* %854

; <label>:855                                     ; preds = %683
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @func_43(i8* %p_44, i8 signext %p_45, i32 %p_46, i8* %p_47) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %l_112 = alloca [10 x i32], align 16
  %l_113 = alloca [5 x [8 x i32*]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %p_44, i8** %1, align 8, !tbaa !5
  store i8 %p_45, i8* %2, align 1, !tbaa !9
  store i32 %p_46, i32* %3, align 4, !tbaa !1
  store i8* %p_47, i8** %4, align 8, !tbaa !5
  %5 = bitcast [10 x i32]* %l_112 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %5) #1
  %6 = bitcast [10 x i32]* %l_112 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 40, i32 16, i1 false)
  %7 = bitcast [5 x [8 x i32*]]* %l_113 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %7) #1
  %8 = getelementptr inbounds [5 x [8 x i32*]], [5 x [8 x i32*]]* %l_113, i64 0, i64 0
  %9 = getelementptr inbounds [8 x i32*], [8 x i32*]* %8, i64 0, i64 0
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %10, i32** %9, !tbaa !5
  %11 = getelementptr inbounds i32*, i32** %9, i64 1
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %12, i32** %11, !tbaa !5
  %13 = getelementptr inbounds i32*, i32** %11, i64 1
  store i32* @g_65, i32** %13, !tbaa !5
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %15, i32** %14, !tbaa !5
  %16 = getelementptr inbounds i32*, i32** %14, i64 1
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %17, i32** %16, !tbaa !5
  %18 = getelementptr inbounds i32*, i32** %16, i64 1
  store i32* @g_65, i32** %18, !tbaa !5
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %20, i32** %19, !tbaa !5
  %21 = getelementptr inbounds i32*, i32** %19, i64 1
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %22, i32** %21, !tbaa !5
  %23 = getelementptr inbounds [8 x i32*], [8 x i32*]* %8, i64 1
  %24 = getelementptr inbounds [8 x i32*], [8 x i32*]* %23, i64 0, i64 0
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %25, i32** %24, !tbaa !5
  %26 = getelementptr inbounds i32*, i32** %24, i64 1
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %27, i32** %26, !tbaa !5
  %28 = getelementptr inbounds i32*, i32** %26, i64 1
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %29, i32** %28, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %28, i64 1
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %31, i32** %30, !tbaa !5
  %32 = getelementptr inbounds i32*, i32** %30, i64 1
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %33, i32** %32, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %32, i64 1
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %35, i32** %34, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %34, i64 1
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %37, i32** %36, !tbaa !5
  %38 = getelementptr inbounds i32*, i32** %36, i64 1
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %39, i32** %38, !tbaa !5
  %40 = getelementptr inbounds [8 x i32*], [8 x i32*]* %23, i64 1
  %41 = getelementptr inbounds [8 x i32*], [8 x i32*]* %40, i64 0, i64 0
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %42, i32** %41, !tbaa !5
  %43 = getelementptr inbounds i32*, i32** %41, i64 1
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %44, i32** %43, !tbaa !5
  %45 = getelementptr inbounds i32*, i32** %43, i64 1
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %46, i32** %45, !tbaa !5
  %47 = getelementptr inbounds i32*, i32** %45, i64 1
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %48, i32** %47, !tbaa !5
  %49 = getelementptr inbounds i32*, i32** %47, i64 1
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %50, i32** %49, !tbaa !5
  %51 = getelementptr inbounds i32*, i32** %49, i64 1
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %52, i32** %51, !tbaa !5
  %53 = getelementptr inbounds i32*, i32** %51, i64 1
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %54, i32** %53, !tbaa !5
  %55 = getelementptr inbounds i32*, i32** %53, i64 1
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %56, i32** %55, !tbaa !5
  %57 = getelementptr inbounds [8 x i32*], [8 x i32*]* %40, i64 1
  %58 = getelementptr inbounds [8 x i32*], [8 x i32*]* %57, i64 0, i64 0
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %59, i32** %58, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %58, i64 1
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %61, i32** %60, !tbaa !5
  %62 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* @g_65, i32** %62, !tbaa !5
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %64, i32** %63, !tbaa !5
  %65 = getelementptr inbounds i32*, i32** %63, i64 1
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %66, i32** %65, !tbaa !5
  %67 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* @g_65, i32** %67, !tbaa !5
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %69, i32** %68, !tbaa !5
  %70 = getelementptr inbounds i32*, i32** %68, i64 1
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %71, i32** %70, !tbaa !5
  %72 = getelementptr inbounds [8 x i32*], [8 x i32*]* %57, i64 1
  %73 = getelementptr inbounds [8 x i32*], [8 x i32*]* %72, i64 0, i64 0
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %74, i32** %73, !tbaa !5
  %75 = getelementptr inbounds i32*, i32** %73, i64 1
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %76, i32** %75, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %75, i64 1
  %78 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %78, i32** %77, !tbaa !5
  %79 = getelementptr inbounds i32*, i32** %77, i64 1
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %80, i32** %79, !tbaa !5
  %81 = getelementptr inbounds i32*, i32** %79, i64 1
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %82, i32** %81, !tbaa !5
  %83 = getelementptr inbounds i32*, i32** %81, i64 1
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %84, i32** %83, !tbaa !5
  %85 = getelementptr inbounds i32*, i32** %83, i64 1
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %86, i32** %85, !tbaa !5
  %87 = getelementptr inbounds i32*, i32** %85, i64 1
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32* %88, i32** %87, !tbaa !5
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #1
  %90 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i32, i32* @g_65, align 4, !tbaa !1
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  store i32 %91, i32* %92, align 4, !tbaa !1
  %93 = getelementptr inbounds [10 x i32], [10 x i32]* %l_112, i32 0, i64 7
  %94 = getelementptr inbounds [5 x [8 x i32*]], [5 x [8 x i32*]]* %l_113, i32 0, i64 0
  %95 = getelementptr inbounds [8 x i32*], [8 x i32*]* %94, i32 0, i64 5
  store i32* %93, i32** %95, align 8, !tbaa !5
  %96 = load i16, i16* @g_104, align 2, !tbaa !10
  %97 = zext i16 %96 to i32
  %98 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast [5 x [8 x i32*]]* %l_113 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %100) #1
  %101 = bitcast [10 x i32]* %l_112 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %101) #1
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal i8* @func_48(i8* %p_49) #0 {
  %1 = alloca i8*, align 8
  %l_95 = alloca [10 x i32*], align 16
  %l_96 = alloca i32, align 4
  %l_103 = alloca i16*, align 8
  %l_107 = alloca i64, align 8
  %l_110 = alloca i32*, align 8
  %l_111 = alloca [5 x [8 x i8*]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %p_49, i8** %1, align 8, !tbaa !5
  %2 = bitcast [10 x i32*]* %l_95 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %2) #1
  %3 = bitcast [10 x i32*]* %l_95 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 80, i32 16, i1 false)
  %4 = bitcast i32* %l_96 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -806082813, i32* %l_96, align 4, !tbaa !1
  %5 = bitcast i16** %l_103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_104, i16** %l_103, align 8, !tbaa !5
  %6 = bitcast i64* %l_107 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 3, i64* %l_107, align 8, !tbaa !7
  %7 = bitcast i32** %l_110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* @g_65, i32** %l_110, align 8, !tbaa !5
  %8 = bitcast [5 x [8 x i8*]]* %l_111 to i8*
  call void @llvm.lifetime.start(i64 320, i8* %8) #1
  %9 = bitcast [5 x [8 x i8*]]* %l_111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([5 x [8 x i8*]]* @func_48.l_111 to i8*), i64 320, i32 16, i1 false)
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = getelementptr inbounds [10 x i32*], [10 x i32*]* %l_95, i32 0, i64 9
  %13 = load i32*, i32** %12, align 8, !tbaa !5
  %14 = icmp eq i32* null, %13
  %15 = zext i1 %14 to i32
  %16 = trunc i32 %15 to i16
  %17 = load i32, i32* %l_96, align 4, !tbaa !1
  %18 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 3, i64 0, i64 0), align 8, !tbaa !7
  %19 = load i32, i32* @g_92, align 4, !tbaa !1
  %20 = load i64, i64* %l_107, align 8, !tbaa !7
  %21 = call i64 @safe_sub_func_int64_t_s_s(i64 0, i64 %20)
  %22 = trunc i64 %21 to i16
  %23 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %22, i16 zeroext 0)
  %24 = trunc i16 %23 to i8
  %25 = load i32, i32* %l_96, align 4, !tbaa !1
  %26 = trunc i32 %25 to i16
  %27 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %26, i32 4)
  %28 = trunc i16 %27 to i8
  %29 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %24, i8 signext %28)
  %30 = sext i8 %29 to i64
  %31 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 1, i64 0, i64 0), align 8, !tbaa !7
  %32 = icmp ule i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @g_92, align 4, !tbaa !1
  %35 = icmp ult i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %l_107, align 8, !tbaa !7
  %39 = icmp slt i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ule i64 %18, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %l_96, align 4, !tbaa !1
  %45 = icmp slt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = icmp sge i32 %17, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %l_96, align 4, !tbaa !1
  %50 = or i32 %48, %49
  %51 = trunc i32 %50 to i16
  %52 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %16, i16 zeroext %51)
  %53 = zext i16 %52 to i32
  %54 = load i32*, i32** %l_110, align 8, !tbaa !5
  %55 = load i32, i32* %54, align 4, !tbaa !1
  %56 = xor i32 %55, %53
  store i32 %56, i32* %54, align 4, !tbaa !1
  %57 = getelementptr inbounds [5 x [8 x i8*]], [5 x [8 x i8*]]* %l_111, i32 0, i64 4
  %58 = getelementptr inbounds [8 x i8*], [8 x i8*]* %57, i32 0, i64 4
  %59 = load i8*, i8** %58, align 8, !tbaa !5
  %60 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast [5 x [8 x i8*]]* %l_111 to i8*
  call void @llvm.lifetime.end(i64 320, i8* %62) #1
  %63 = bitcast i32** %l_110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i64* %l_107 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i16** %l_103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i32* %l_96 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast [10 x i32*]* %l_95 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %67) #1
  ret i8* %59
}

; Function Attrs: nounwind uwtable
define internal i8* @func_50(i32 %p_51, i8* %p_52, i8 zeroext %p_53, i64 %p_54) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %l_76 = alloca i64*, align 8
  %l_82 = alloca [1 x [10 x [1 x i32]]], align 16
  %l_86 = alloca i64*, align 8
  %l_85 = alloca i64**, align 8
  %l_90 = alloca i64*, align 8
  %l_89 = alloca i64**, align 8
  %l_91 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_51, i32* %1, align 4, !tbaa !1
  store i8* %p_52, i8** %2, align 8, !tbaa !5
  store i8 %p_53, i8* %3, align 1, !tbaa !9
  store i64 %p_54, i64* %4, align 8, !tbaa !7
  %5 = bitcast i64** %l_76 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64* @g_77, i64** %l_76, align 8, !tbaa !5
  %6 = bitcast [1 x [10 x [1 x i32]]]* %l_82 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %6) #1
  %7 = bitcast [1 x [10 x [1 x i32]]]* %l_82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([1 x [10 x [1 x i32]]]* @func_50.l_82 to i8*), i64 40, i32 16, i1 false)
  %8 = bitcast i64** %l_86 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), i64** %l_86, align 8, !tbaa !5
  %9 = bitcast i64*** %l_85 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64** %l_86, i64*** %l_85, align 8, !tbaa !5
  %10 = bitcast i64** %l_90 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), i64** %l_90, align 8, !tbaa !5
  %11 = bitcast i64*** %l_89 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64** %l_90, i64*** %l_89, align 8, !tbaa !5
  %12 = bitcast i32** %l_91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* @g_92, i32** %l_91, align 8, !tbaa !5
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i64, i64* %4, align 8, !tbaa !7
  %17 = load i64*, i64** %l_76, align 8, !tbaa !5
  %18 = load i64, i64* %17, align 8, !tbaa !7
  %19 = add i64 %18, -1
  store i64 %19, i64* %17, align 8, !tbaa !7
  %20 = load i8, i8* @g_17, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds [1 x [10 x [1 x i32]]], [1 x [10 x [1 x i32]]]* %l_82, i32 0, i64 0
  %23 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %22, i32 0, i64 0
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %23, i32 0, i64 0
  %25 = load i32, i32* %24, align 4, !tbaa !1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  br label %28

; <label>:28                                      ; preds = %27, %0
  %29 = phi i1 [ false, %0 ], [ false, %27 ]
  %30 = zext i1 %29 to i32
  %31 = load i64*, i64** getelementptr inbounds ([5 x i64*], [5 x i64*]* @func_50.l_83, i32 0, i64 0), align 8, !tbaa !5
  %32 = load i64*, i64** %l_76, align 8, !tbaa !5
  %33 = load i64**, i64*** %l_85, align 8, !tbaa !5
  store i64* %32, i64** %33, align 8, !tbaa !5
  %34 = icmp eq i64* %31, %32
  %35 = zext i1 %34 to i32
  %36 = or i32 %30, %35
  %37 = icmp ne i32 %21, %36
  %38 = zext i1 %37 to i32
  %39 = trunc i32 %38 to i16
  %40 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 0, i64 0, i64 0), align 8, !tbaa !7
  %41 = trunc i64 %40 to i32
  %42 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %39, i32 %41)
  %43 = zext i16 %42 to i32
  %44 = load i64**, i64*** %l_89, align 8, !tbaa !5
  store i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), i64** %44, align 8, !tbaa !5
  br i1 false, label %45, label %48

; <label>:45                                      ; preds = %28
  %46 = load i32, i32* @g_65, align 4, !tbaa !1
  %47 = icmp ne i32 %46, 0
  br label %48

; <label>:48                                      ; preds = %45, %28
  %49 = phi i1 [ false, %28 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = trunc i32 %50 to i16
  %52 = load i8, i8* @g_17, align 1, !tbaa !9
  %53 = zext i8 %52 to i16
  %54 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %51, i16 signext %53)
  %55 = sext i16 %54 to i32
  %56 = getelementptr inbounds [1 x [10 x [1 x i32]]], [1 x [10 x [1 x i32]]]* %l_82, i32 0, i64 0
  %57 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %56, i32 0, i64 0
  %58 = getelementptr inbounds [1 x i32], [1 x i32]* %57, i32 0, i64 0
  %59 = load i32, i32* %58, align 4, !tbaa !1
  %60 = icmp ne i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 158
  %64 = zext i1 %63 to i32
  %65 = load i32*, i32** %l_91, align 8, !tbaa !5
  store i32 %64, i32* %65, align 4, !tbaa !1
  %66 = icmp ult i32 %43, %64
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = call i64 @safe_sub_func_uint64_t_u_u(i64 %18, i64 %68)
  %70 = icmp ne i64 %16, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* @g_65, align 4, !tbaa !1
  %73 = and i32 %71, %72
  %74 = trunc i32 %73 to i8
  %75 = load i64, i64* getelementptr inbounds ([4 x [1 x [1 x i64]]], [4 x [1 x [1 x i64]]]* @g_84, i32 0, i64 2, i64 0, i64 0), align 8, !tbaa !7
  %76 = trunc i64 %75 to i8
  %77 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %74, i8 zeroext %76)
  %78 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %77, i8 zeroext -1)
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %1, align 4, !tbaa !1
  %81 = icmp ule i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = trunc i32 %82 to i8
  %84 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %83, i8 zeroext 63)
  %85 = getelementptr inbounds [1 x [10 x [1 x i32]]], [1 x [10 x [1 x i32]]]* %l_82, i32 0, i64 0
  %86 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %85, i32 0, i64 0
  %87 = getelementptr inbounds [1 x i32], [1 x i32]* %86, i32 0, i64 0
  %88 = load i32, i32* %87, align 4, !tbaa !1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %48
  br label %91

; <label>:91                                      ; preds = %90, %48
  %92 = phi i1 [ false, %48 ], [ true, %90 ]
  %93 = zext i1 %92 to i32
  %94 = trunc i32 %93 to i16
  %95 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %94, i16 zeroext 31577)
  %96 = zext i16 %95 to i32
  store i32 %96, i32* @g_65, align 4, !tbaa !1
  %97 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32** %l_91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i64*** %l_89 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i64** %l_90 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i64*** %l_85 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i64** %l_86 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast [1 x [10 x [1 x i32]]]* %l_82 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %105) #1
  %106 = bitcast i64** %l_76 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  ret i8* @g_17
}

; Function Attrs: nounwind uwtable
define internal i8* @func_55(i16 signext %p_56) #0 {
  %1 = alloca i16, align 2
  %l_64 = alloca i32*, align 8
  store i16 %p_56, i16* %1, align 2, !tbaa !10
  %2 = bitcast i32** %l_64 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_65, i32** %l_64, align 8, !tbaa !5
  %3 = load i32*, i32** %l_64, align 8, !tbaa !5
  store i32* %3, i32** %l_64, align 8, !tbaa !5
  %4 = bitcast i32** %l_64 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret i8* @g_17
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
define internal i64 @safe_mul_func_uint64_t_u_u(i64 %ui1, i64 %ui2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %ui1, i64* %1, align 8, !tbaa !7
  store i64 %ui2, i64* %2, align 8, !tbaa !7
  %3 = load i64, i64* %1, align 8, !tbaa !7
  %4 = load i64, i64* %2, align 8, !tbaa !7
  %5 = mul i64 %3, %4
  ret i64 %5
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
define internal i64 @safe_unary_minus_func_uint64_t_u(i64 %ui) #0 {
  %1 = alloca i64, align 8
  store i64 %ui, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = sub i64 0, %2
  ret i64 %3
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
