; ModuleID = '00316.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_5 = internal global i32 -8, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_5\00", align 1
@g_6 = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_6\00", align 1
@g_7 = internal global [6 x i32] [i32 0, i32 1, i32 0, i32 0, i32 1, i32 0], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"g_7[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_11 = internal global i32 3, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_11\00", align 1
@g_45 = internal global i64 1, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_45\00", align 1
@g_73 = internal global [10 x [2 x i16]] [[2 x i16] [i16 -2, i16 11761], [2 x i16] [i16 11761, i16 -2], [2 x i16] [i16 11761, i16 11761], [2 x i16] [i16 -2, i16 11761], [2 x i16] [i16 11761, i16 -2], [2 x i16] [i16 11761, i16 11761], [2 x i16] [i16 -2, i16 11761], [2 x i16] [i16 11761, i16 -2], [2 x i16] [i16 11761, i16 11761], [2 x i16] [i16 -2, i16 11761]], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"g_73[i][j]\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_81 = internal global [4 x [8 x i8]] [[8 x i8] c"\F7\F7\F7\F7\F7\F7\F7\F7", [8 x i8] c"\F7\F7\F7\F7\F7\F7\F7\F7", [8 x i8] c"\F7\F7\F7\F7\F7\F7\F7\F7", [8 x i8] c"\F7\F7\F7\F7\F7\F7\F7\F7"], align 16
@.str.10 = private unnamed_addr constant [11 x i8] c"g_81[i][j]\00", align 1
@g_82 = internal global i32 2105983950, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"g_82\00", align 1
@g_83 = internal global i32 1552933644, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_83\00", align 1
@g_97 = internal global i16 -6423, align 2
@.str.13 = private unnamed_addr constant [5 x i8] c"g_97\00", align 1
@g_100 = internal global [7 x [7 x [4 x i8]]] [[7 x [4 x i8]] [[4 x i8] c"\FF%4\FF", [4 x i8] c"\02\C4\00}", [4 x i8] c"\C6\09\00\DD", [4 x i8] c"\00\01}\D3", [4 x i8] c"\FF\00\00\FF", [4 x i8] c"\00\01\FF\A0", [4 x i8] c"\FE\00\A9\FF"], [7 x [4 x i8]] [[4 x i8] c"\FF\07\08\FF", [4 x i8] c"\01\00\84\FE", [4 x i8] c"\06\00\08\F9", [4 x i8] c"\FB\01\F7\FF", [4 x i8] c"\08/\06\C4", [4 x i8] c"\01\02\00\01", [4 x i8] c"\00\0A\07\F8"], [7 x [4 x i8]] [[4 x i8] c"\00\C6%\00", [4 x i8] c"\C4\00\09\01", [4 x i8] c"\01\BF/+", [4 x i8] c"\07\00\04\01", [4 x i8] c"\09\E8\FF\94", [4 x i8] c"\F6\01\FF[", [4 x i8] c":\F9[\09"], [7 x [4 x i8]] [[4 x i8] c"\A0%\F9w", [4 x i8] c"\01\F7\01\F6", [4 x i8] c"/\FF\FC\01", [4 x i8] c"\00\07\C7\FF", [4 x i8] c"\F7+\C7\84", [4 x i8] c"\00\00\FC\DD", [4 x i8] c"/\FF\01\C7"], [7 x [4 x i8]] [[4 x i8] c"\01\C7\F9\FF", [4 x i8] c"\A0\01[\09", [4 x i8] c":\FF\FF\07", [4 x i8] c"\F6\84\FF\F0", [4 x i8] c"\09\FF\04\FF", [4 x i8] c"\07:/\00", [4 x i8] c"\01\83\09\05"], [7 x [4 x i8]] [[4 x i8] c"\C4\FF%4", [4 x i8] c"\00\01\07\01", [4 x i8] c"\00\F6\00\A0", [4 x i8] c"\01\D3\06\83", [4 x i8] c"\08\09\F7\F7", [4 x i8] c"\FB\FB\08\A9", [4 x i8] c"\06\96\FF\00"], [7 x [4 x i8]] [[4 x i8] c"\FCw:\FF", [4 x i8] c"4w\01\00", [4 x i8] c"w\96+\A9", [4 x i8] c"\FF\FB\01\F7", [4 x i8] c"\F9\09\01\83", [4 x i8] c"\09\D3\FB\A0", [4 x i8] c"\E2\F6\09\01"]], align 16
@.str.14 = private unnamed_addr constant [15 x i8] c"g_100[i][j][k]\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_102 = internal global i32 1191207445, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_102\00", align 1
@g_217 = internal global [6 x i32] [i32 -1169990802, i32 -1169990802, i32 -1169990802, i32 -1169990802, i32 -1169990802, i32 -1169990802], align 16
@.str.17 = private unnamed_addr constant [9 x i8] c"g_217[i]\00", align 1
@g_248 = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_248\00", align 1
@g_278 = internal global i32 -4, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_278\00", align 1
@g_312 = internal global i8 105, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_312\00", align 1
@g_313 = internal global i8 -1, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_313\00", align 1
@g_314 = internal global i8 2, align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"g_314\00", align 1
@g_334 = internal global i8 67, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"g_334\00", align 1
@g_346 = internal global i64 1, align 8
@.str.24 = private unnamed_addr constant [6 x i8] c"g_346\00", align 1
@g_355 = internal global [5 x i16] [i16 21630, i16 21630, i16 21630, i16 21630, i16 21630], align 2
@.str.25 = private unnamed_addr constant [9 x i8] c"g_355[i]\00", align 1
@g_494 = internal global [5 x i16] [i16 2, i16 2, i16 2, i16 2, i16 2], align 2
@.str.26 = private unnamed_addr constant [9 x i8] c"g_494[i]\00", align 1
@g_552 = internal global i64 5520179763014177134, align 8
@.str.27 = private unnamed_addr constant [6 x i8] c"g_552\00", align 1
@g_577 = internal global i32 -1, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"g_577\00", align 1
@g_581 = internal global i32 9, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_581\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"g_626\00", align 1
@g_629 = internal global i64 7364998130982160016, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"g_629\00", align 1
@g_808 = internal global i16 -27877, align 2
@.str.32 = private unnamed_addr constant [6 x i8] c"g_808\00", align 1
@g_867 = internal global i16 4, align 2
@.str.33 = private unnamed_addr constant [6 x i8] c"g_867\00", align 1
@g_871 = internal global i16 30760, align 2
@.str.34 = private unnamed_addr constant [6 x i8] c"g_871\00", align 1
@g_912 = internal global i8 7, align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"g_912\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_981 = private unnamed_addr constant [9 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*)], align 16
@g_101 = internal global i32* @g_102, align 8
@g_580 = internal global i32* null, align 8
@g_911 = internal global i64* @g_45, align 8
@g_668 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), align 8
@g_983 = internal global i32** @g_580, align 8
@func_13.l_909 = private unnamed_addr constant [7 x i64*] [i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45], align 16
@func_13.l_857 = private unnamed_addr constant [4 x i64*] [i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45], align 16
@g_864 = internal global i16** @g_865, align 8
@func_13.l_889 = private unnamed_addr constant [8 x i8*] [i8* @g_334, i8* @g_334, i8* @g_334, i8* @g_334, i8* @g_334, i8* @g_334, i8* @g_334, i8* @g_334], align 16
@func_13.l_963 = private unnamed_addr constant [6 x i16] [i16 -11189, i16 0, i16 -11189, i16 -11189, i16 0, i16 -11189], align 2
@func_13.l_972 = private unnamed_addr constant [6 x [5 x i32**]] [[5 x i32**] [i32** @g_101, i32** null, i32** @g_101, i32** @g_101, i32** null], [5 x i32**] [i32** @g_580, i32** @g_101, i32** @g_101, i32** @g_580, i32** @g_101], [5 x i32**] [i32** null, i32** null, i32** @g_101, i32** null, i32** null], [5 x i32**] [i32** @g_101, i32** @g_580, i32** @g_101, i32** @g_101, i32** @g_580], [5 x i32**] [i32** null, i32** @g_101, i32** @g_101, i32** null, i32** @g_101], [5 x i32**] [i32** @g_580, i32** @g_580, i32** null, i32** @g_580, i32** @g_580]], align 16
@g_820 = internal global i16* @g_808, align 8
@g_976 = internal global i32* @g_11, align 8
@g_865 = internal constant i16* null, align 8
@func_16.l_26 = private unnamed_addr constant [10 x i64] [i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752, i64 -2689535002195366752], align 16
@g_626 = internal constant i32 8, align 4
@g_653 = internal global [2 x i32*] [i32* @g_83, i32* @g_83], align 16
@func_16.l_638 = private unnamed_addr constant [4 x i32] [i32 -531289345, i32 -531289345, i32 -531289345, i32 -531289345], align 16
@g_493 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x i16]* @g_494 to i8*), i64 6) to i16*), align 8
@g_492 = internal global i16** @g_493, align 8
@g_671 = internal global i16** @g_93, align 8
@g_631 = internal global i32* null, align 8
@g_93 = internal global i16* null, align 8
@g_670 = internal global i16*** @g_671, align 8
@func_16.l_712 = private unnamed_addr constant [3 x [7 x [6 x i16]]] [[7 x [6 x i16]] [[6 x i16] [i16 -1, i16 -21545, i16 2, i16 -21545, i16 -1, i16 0], [6 x i16] [i16 -965, i16 14417, i16 -8441, i16 0, i16 1, i16 -21545], [6 x i16] [i16 -22376, i16 -21545, i16 -8, i16 14417, i16 -8, i16 -21545], [6 x i16] [i16 -1947, i16 1, i16 -8441, i16 -10022, i16 6, i16 0], [6 x i16] [i16 -8, i16 1502, i16 2, i16 14417, i16 11010, i16 14417], [6 x i16] [i16 -15188, i16 1502, i16 -15188, i16 0, i16 6, i16 -10022], [6 x i16] [i16 0, i16 1, i16 -22376, i16 -21545, i16 -8, i16 14417]], [7 x [6 x i16]] [[6 x i16] [i16 1, i16 -21545, i16 6, i16 -21545, i16 1, i16 0], [6 x i16] [i16 0, i16 14417, i16 -25668, i16 0, i16 -1, i16 -21545], [6 x i16] [i16 -15188, i16 -21545, i16 -1947, i16 14417, i16 -1947, i16 -21545], [6 x i16] [i16 -8, i16 1, i16 -25668, i16 -10022, i16 2, i16 0], [6 x i16] [i16 -1947, i16 1502, i16 6, i16 14417, i16 9570, i16 14417], [6 x i16] [i16 -22376, i16 1502, i16 -22376, i16 0, i16 2, i16 -10022], [6 x i16] [i16 -965, i16 1, i16 -15188, i16 -21545, i16 -1947, i16 14417]], [7 x [6 x i16]] [[6 x i16] [i16 -1, i16 -21545, i16 2, i16 1, i16 -25668, i16 -10022], [6 x i16] [i16 -15188, i16 0, i16 6, i16 -10022, i16 -8441, i16 1], [6 x i16] [i16 -1, i16 1, i16 11010, i16 0, i16 11010, i16 1], [6 x i16] [i16 9570, i16 14417, i16 6, i16 1502, i16 -1947, i16 -10022], [6 x i16] [i16 11010, i16 -9, i16 -8, i16 0, i16 0, i16 0], [6 x i16] [i16 1, i16 -9, i16 1, i16 -10022, i16 -1947, i16 1502], [6 x i16] [i16 -22376, i16 14417, i16 -1, i16 1, i16 11010, i16 0]]], align 16
@func_16.l_720 = private unnamed_addr constant [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_11, i32* null, i32* null, i32* @g_11, i32* null, i32* null], [7 x i32*] [i32* @g_11, i32* @g_11, i32* @g_11, i32* @g_11, i32* @g_11, i32* @g_11, i32* @g_11], [7 x i32*] [i32* @g_11, i32* null, i32* null, i32* @g_11, i32* null, i32* null, i32* @g_11], [7 x i32*] [i32* null, i32* @g_11, i32* null, i32* null, i32* @g_11, i32* null, i32* null]], align 16
@func_16.l_742 = private unnamed_addr constant [3 x [9 x [1 x i32]]] [[9 x [1 x i32]] [[1 x i32] [i32 5], [1 x i32] [i32 5], [1 x i32] [i32 5], [1 x i32] [i32 1044894140], [1 x i32] [i32 -1], [1 x i32] [i32 -1217515070], [1 x i32] [i32 1164063831], [1 x i32] [i32 1853331963], [1 x i32] [i32 1164063831]], [9 x [1 x i32]] [[1 x i32] [i32 -1217515070], [1 x i32] [i32 -1], [1 x i32] [i32 1044894140], [1 x i32] [i32 5], [1 x i32] [i32 5], [1 x i32] [i32 5], [1 x i32] [i32 5], [1 x i32] [i32 1044894140], [1 x i32] [i32 -1]], [9 x [1 x i32]] [[1 x i32] [i32 -1217515070], [1 x i32] [i32 1164063831], [1 x i32] [i32 1853331963], [1 x i32] [i32 1164063831], [1 x i32] [i32 -1217515070], [1 x i32] [i32 -1], [1 x i32] [i32 1044894140], [1 x i32] [i32 5], [1 x i32] [i32 5]]], align 16
@g_272 = internal global i64** null, align 8
@g_763 = internal global i16*** null, align 8
@g_10 = internal global [3 x [6 x [8 x i32*]]] [[6 x [8 x i32*]] [[8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_2, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [8 x i32*] [i32* @g_2, i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* @g_11, i32* @g_2], [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* @g_11], [8 x i32*] [i32* @g_11, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* @g_11, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*)]], [6 x [8 x i32*]] [[8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* @g_2], [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* @g_2, i32* @g_2, i32* null, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* @g_2], [8 x i32*] [i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_2, i32* @g_11, i32* @g_11, i32* @g_11, i32* @g_2], [8 x i32*] [i32* null, i32* @g_11, i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*)], [8 x i32*] [i32* @g_11, i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* null, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11], [8 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_11]], [6 x [8 x i32*]] [[8 x i32*] [i32* null, i32* @g_2, i32* @g_11, i32* @g_2, i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*)], [8 x i32*] [i32* @g_2, i32* @g_2, i32* null, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* @g_2, i32* @g_11, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*)], [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11, i32* @g_2, i32* @g_11, i32* @g_2], [8 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_11, i32* null, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i32 0), i32* null], [8 x i32*] [i32* @g_11, i32* @g_11, i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 12) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11]]], align 16
@g_794 = internal constant i8** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [5 x i8*]]* @g_795 to i8*), i64 96) to i8**), align 8
@func_39.l_609 = private unnamed_addr constant [10 x [4 x [4 x i32*]]] [[4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]], [4 x [4 x i32*]] [[4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* null], [4 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [4 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [4 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_217 to i8*), i64 8) to i32*), i32* null]]], align 16
@func_55.l_590 = private unnamed_addr constant [5 x i64*] [i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45], align 16
@func_104.l_126 = private unnamed_addr constant [6 x i16] [i16 27696, i16 27696, i16 27696, i16 27696, i16 27696, i16 27696], align 2
@func_104.l_131 = private unnamed_addr constant [7 x [6 x [5 x i8]]] [[6 x [5 x i8]] [[5 x i8] c"\FE\FE\05\00\FE", [5 x i8] c"\F5\F7\11\11\F7", [5 x i8] c"\FE\D5\FE\FE\1B", [5 x i8] c"\97\F7\BC\F7\97", [5 x i8] c"\FE\FE\D5\1B\FE", [5 x i8] c"\97\07\07\97\11"], [6 x [5 x i8]] [[5 x i8] c"\FE\00\05\FE\FE", [5 x i8] c"\F5\97\F5\11\97", [5 x i8] c"\FE\D5\1B\FE\1B", [5 x i8] c"NN\BC\97\F7", [5 x i8] c"\FE\FE\1B\1B\FE", [5 x i8] c"\F7\07\F5\F7\11"], [6 x [5 x i8]] [[5 x i8] c"\00\FE\05\FE\00", [5 x i8] c"\F5N\07\11N", [5 x i8] c"\00\D5\D5\00\1B", [5 x i8] c"\F7\97\BCNN", [5 x i8] c"\FE\00\FE\1B\00", [5 x i8] c"N\07\11N\11"], [6 x [5 x i8]] [[5 x i8] c"\FE\FE\05\00\FE", [5 x i8] c"\F5\F7\11\11\11", [5 x i8] c"\1B\05\F7\1B\08", [5 x i8] c"\07\11N\11\07", [5 x i8] c"\F7\FE\05\08\FE", [5 x i8] c"\07\BC\BC\07\00"], [6 x [5 x i8]] [[5 x i8] c"\1B\D5\FE\FE\FE", [5 x i8] c"\FA\07\FA\00\07", [5 x i8] c"\FE\05\08\FE\08", [5 x i8] c"\F5\F5N\07\11", [5 x i8] c"\F7\1B\08\08\1B", [5 x i8] c"\11\BC\FA\11\00"], [6 x [5 x i8]] [[5 x i8] c"\D5\1B\FE\1B\D5", [5 x i8] c"\FA\F5\BC\00\F5", [5 x i8] c"\D5\05\05\D5\08", [5 x i8] c"\11\07N\F5\F5", [5 x i8] c"\F7\D5\F7\08\D5", [5 x i8] c"\F5\BC\00\F5\00"], [6 x [5 x i8]] [[5 x i8] c"\FE\FE\FE\D5\1B", [5 x i8] c"\FA\11\00\00\11", [5 x i8] c"\1B\05\F7\1B\08", [5 x i8] c"\07\11N\11\07", [5 x i8] c"\F7\FE\05\08\FE", [5 x i8] c"\07\BC\BC\07\00"]], align 16
@func_104.l_141 = private unnamed_addr constant [8 x i16*] [i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97], align 16
@func_104.l_142 = private unnamed_addr constant [9 x [1 x [7 x i16*]]] [[1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* null, i16* @g_97, i16* @g_97]], [1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* null, i16* @g_97, i16* null, i16* @g_97, i16* null, i16* null]], [1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* @g_97, i16* @g_97, i16* null, i16* @g_97, i16* @g_97, i16* @g_97]], [1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97]], [1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* null, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* null]], [1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97]], [1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* null, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97]], [1 x [7 x i16*]] [[7 x i16*] [i16* @g_97, i16* @g_97, i16* @g_97, i16* null, i16* null, i16* @g_97, i16* @g_97]], [1 x [7 x i16*]] [[7 x i16*] [i16* null, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97, i16* @g_97]]], align 16
@func_104.l_268 = private unnamed_addr constant [5 x [7 x [1 x i16]]] [[7 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 -1], [1 x i16] [i16 14643], [1 x i16] [i16 -1], [1 x i16] [i16 14643], [1 x i16] [i16 -1], [1 x i16] zeroinitializer], [7 x [1 x i16]] [[1 x i16] [i16 -1], [1 x i16] zeroinitializer, [1 x i16] [i16 15050], [1 x i16] zeroinitializer, [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -1]], [7 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 15050], [1 x i16] zeroinitializer, [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] zeroinitializer], [7 x [1 x i16]] [[1 x i16] [i16 15050], [1 x i16] zeroinitializer, [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] zeroinitializer, [1 x i16] [i16 15050]], [7 x [1 x i16]] [[1 x i16] zeroinitializer, [1 x i16] [i16 -1], [1 x i16] [i16 1], [1 x i16] [i16 -1], [1 x i16] zeroinitializer, [1 x i16] [i16 15050], [1 x i16] zeroinitializer]], align 16
@func_104.l_365 = private unnamed_addr constant [10 x i64*] [i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45, i64* @g_45], align 16
@func_104.l_213 = private unnamed_addr constant [2 x [7 x [4 x i32]]] [[7 x [4 x i32]] [[4 x i32] [i32 1256121076, i32 -1043098736, i32 -1095310962, i32 -1168107790], [4 x i32] [i32 1, i32 0, i32 -899078551, i32 0], [4 x i32] [i32 0, i32 -1095310962, i32 1256121076, i32 0], [4 x i32] [i32 1256121076, i32 0, i32 -1168107790, i32 -1168107790], [4 x i32] [i32 -1043098736, i32 -1043098736, i32 -899078551, i32 1], [4 x i32] [i32 -1043098736, i32 -1095310962, i32 -1168107790, i32 -1043098736], [4 x i32] [i32 1256121076, i32 1, i32 1256121076, i32 -1168107790]], [7 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 -899078551, i32 -1043098736], [4 x i32] [i32 1, i32 -1095310962, i32 -1095310962, i32 1], [4 x i32] [i32 1256121076, i32 -1043098736, i32 -1095310962, i32 -1168107790], [4 x i32] [i32 1, i32 0, i32 -899078551, i32 0], [4 x i32] [i32 0, i32 -1095310962, i32 1256121076, i32 0], [4 x i32] [i32 1256121076, i32 0, i32 -1168107790, i32 -1168107790], [4 x i32] [i32 -1043098736, i32 -1043098736, i32 -899078551, i32 1]]], align 16
@func_104.l_230 = private unnamed_addr constant [8 x [4 x [8 x i32]]] [[4 x [8 x i32]] [[8 x i32] [i32 -1688853454, i32 -661892735, i32 125925539, i32 -640040151, i32 132239641, i32 -5, i32 -7, i32 1762465289], [8 x i32] [i32 956986839, i32 4, i32 1762465289, i32 1478797933, i32 -712833989, i32 1478797933, i32 1762465289, i32 4], [8 x i32] [i32 1762465289, i32 1, i32 9, i32 652797751, i32 -953895845, i32 1762465289, i32 8, i32 -640040151], [8 x i32] [i32 1455132715, i32 8, i32 1478797933, i32 125925539, i32 1762465289, i32 -2051195680, i32 8, i32 -972983810]], [4 x [8 x i32]] [[8 x i32] [i32 0, i32 125925539, i32 9, i32 1762465289, i32 -661892735, i32 -661892735, i32 1762465289, i32 9], [8 x i32] [i32 -661892735, i32 -661892735, i32 1762465289, i32 9, i32 125925539, i32 0, i32 -7, i32 132239641], [8 x i32] [i32 -2051195680, i32 1762465289, i32 125925539, i32 1478797933, i32 8, i32 1455132715, i32 1083896207, i32 132239641], [8 x i32] [i32 1762465289, i32 -953895845, i32 652797751, i32 9, i32 1, i32 1762465289, i32 1, i32 9]], [4 x [8 x i32]] [[8 x i32] [i32 1478797933, i32 -712833989, i32 1478797933, i32 1762465289, i32 4, i32 956986839, i32 -712833989, i32 -972983810], [8 x i32] [i32 -5, i32 -2051195680, i32 1, i32 956986839, i32 1762465289, i32 132239641, i32 -972983810, i32 1], [8 x i32] [i32 125925539, i32 1762465289, i32 -2051195680, i32 8, i32 -972983810, i32 4, i32 4, i32 -972983810], [8 x i32] [i32 -640040151, i32 1478797933, i32 1478797933, i32 -640040151, i32 -7, i32 652797751, i32 -2051195680, i32 1455132715]], [4 x [8 x i32]] [[8 x i32] [i32 1455132715, i32 -5, i32 -953895845, i32 1, i32 -1688853454, i32 1455132715, i32 0, i32 8], [8 x i32] [i32 0, i32 -5, i32 -640040151, i32 -2051195680, i32 956986839, i32 652797751, i32 -5, i32 652797751], [8 x i32] [i32 1762465289, i32 1478797933, i32 -712833989, i32 1478797933, i32 1762465289, i32 4, i32 956986839, i32 -712833989], [8 x i32] [i32 1083896207, i32 1762465289, i32 -972983810, i32 -953895845, i32 1455132715, i32 132239641, i32 4, i32 1478797933]], [4 x [8 x i32]] [[8 x i32] [i32 9, i32 -2051195680, i32 -972983810, i32 -640040151, i32 0, i32 350906975, i32 956986839, i32 956986839], [8 x i32] [i32 1455132715, i32 -661892735, i32 -712833989, i32 -712833989, i32 -661892735, i32 1455132715, i32 -5, i32 -953895845], [8 x i32] [i32 350906975, i32 0, i32 -640040151, i32 -972983810, i32 -2051195680, i32 9, i32 0, i32 652797751], [8 x i32] [i32 132239641, i32 1455132715, i32 -953895845, i32 -972983810, i32 1762465289, i32 1083896207, i32 -2051195680, i32 -953895845]], [4 x [8 x i32]] [[8 x i32] [i32 4, i32 1762465289, i32 1478797933, i32 -712833989, i32 1478797933, i32 1762465289, i32 4, i32 956986839], [8 x i32] [i32 652797751, i32 956986839, i32 -2051195680, i32 -640040151, i32 -5, i32 0, i32 -972983810, i32 1478797933], [8 x i32] [i32 1455132715, i32 -1688853454, i32 1, i32 -953895845, i32 -5, i32 1455132715, i32 -661892735, i32 -712833989], [8 x i32] [i32 652797751, i32 -7, i32 -640040151, i32 1478797933, i32 1478797933, i32 -640040151, i32 -7, i32 652797751]], [4 x [8 x i32]] [[8 x i32] [i32 4, i32 -972983810, i32 8, i32 -2051195680, i32 1762465289, i32 125925539, i32 1478797933, i32 8], [8 x i32] [i32 132239641, i32 1762465289, i32 956986839, i32 1, i32 -2051195680, i32 125925539, i32 4, i32 1455132715], [8 x i32] [i32 350906975, i32 -972983810, i32 1455132715, i32 -640040151, i32 -661892735, i32 -640040151, i32 1455132715, i32 -972983810], [8 x i32] [i32 1455132715, i32 -7, i32 1943232456, i32 8, i32 0, i32 1455132715, i32 -1688853454, i32 1]], [4 x [8 x i32]] [[8 x i32] [i32 9, i32 -1688853454, i32 -640040151, i32 956986839, i32 1455132715, i32 0, i32 -1688853454, i32 652797751], [8 x i32] [i32 1083896207, i32 956986839, i32 1943232456, i32 1455132715, i32 1762465289, i32 1762465289, i32 1455132715, i32 1943232456], [8 x i32] [i32 1762465289, i32 1762465289, i32 1455132715, i32 1943232456, i32 956986839, i32 1083896207, i32 4, i32 -2051195680], [8 x i32] [i32 0, i32 1455132715, i32 956986839, i32 -640040151, i32 -1688853454, i32 9, i32 1478797933, i32 -2051195680]]], align 16
@func_104.l_218 = private unnamed_addr constant [8 x i32] [i32 -1289670366, i32 -1289670366, i32 -1289670366, i32 -1289670366, i32 -1289670366, i32 -1289670366, i32 -1289670366, i32 -1289670366], align 16
@func_104.l_150 = private unnamed_addr constant [10 x [8 x [3 x i32*]]] [[8 x [3 x i32*]] [[3 x i32*] [i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* null], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*)], [3 x i32*] [i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*)], [3 x i32*] [i32* @g_102, i32* @g_102, i32* @g_102], [3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* @g_2], [3 x i32*] [i32* null, i32* @g_11, i32* @g_11]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11], [3 x i32*] [i32* @g_102, i32* @g_102, i32* null], [3 x i32*] [i32* null, i32* @g_102, i32* @g_102], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* @g_102], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_102, i32* @g_11], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11], [3 x i32*] [i32* @g_102, i32* @g_11, i32* @g_102]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* @g_2, i32* @g_102, i32* @g_2], [3 x i32*] [i32* @g_102, i32* @g_2, i32* @g_102], [3 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11], [3 x i32*] [i32* @g_102, i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* @g_2, i32* @g_102, i32* @g_102], [3 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* null], [3 x i32*] [i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_2, i32* null, i32* null], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11, i32* @g_102], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_2, i32* @g_11], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* @g_102], [3 x i32*] [i32* null, i32* @g_11, i32* @g_2], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* @g_11, i32* null, i32* @g_102]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_11, i32* @g_102, i32* @g_11], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null, i32* @g_11], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* @g_102], [3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102], [3 x i32*] [i32* @g_11, i32* @g_102, i32* null], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11, i32* @g_11], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* @g_11]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_2], [3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*)], [3 x i32*] [i32* null, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_102, i32* null], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102, i32* null], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_2, i32* null]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102], [3 x i32*] [i32* null, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* null, i32* @g_102, i32* @g_11], [3 x i32*] [i32* @g_2, i32* @g_102, i32* @g_102], [3 x i32*] [i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* null, i32* @g_2, i32* null], [3 x i32*] [i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [3 x i32*] [i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* @g_102, i32* @g_102, i32* @g_11], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_11, i32* @g_2], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_102, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* null, i32* @g_102, i32* @g_2], [3 x i32*] [i32* @g_102, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)]], [8 x [3 x i32*]] [[3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* @g_11], [3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_11], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [3 x i32*] [i32* @g_11, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*)], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)]], [8 x [3 x i32*]] [[3 x i32*] [i32* null, i32* @g_2, i32* @g_2], [3 x i32*] [i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 4) to i32*), i32* null], [3 x i32*] [i32* null, i32* @g_102, i32* null], [3 x i32*] [i32* @g_11, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_2], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_102], [3 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 16) to i32*), i32* @g_2, i32* null], [3 x i32*] [i32* @g_11, i32* @g_102, i32* @g_102], [3 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* @g_2]]], align 16
@func_104.l_208 = private unnamed_addr constant [10 x [2 x i32*]] [[2 x i32*] [i32* null, i32* @g_2], [2 x i32*] [i32* null, i32* @g_2], [2 x i32*] zeroinitializer, [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null], [2 x i32*] [i32* null, i32* @g_2], [2 x i32*] [i32* null, i32* @g_2], [2 x i32*] zeroinitializer, [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*)], [2 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_7 to i8*), i64 8) to i32*), i32* null]], align 16
@func_104.l_291 = private unnamed_addr constant [4 x i8] c"\01\01\01\01", align 1
@g_795 = internal global [3 x [5 x i8*]] [[5 x i8*] [i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 19), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 19)], [5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15), i8* null, i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15)], [5 x i8*] [i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 19), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 19), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 19), i8* getelementptr (i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i32 0, i32 0), i64 15)]], align 16
@.str.36 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %116, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 6
  br i1 %102, label %103, label %119

; <label>:103                                     ; preds = %100
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* @g_7, i32 0, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !1
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %109)
  %110 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %103
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %113)
  br label %115

; <label>:115                                     ; preds = %112, %103
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:119                                     ; preds = %100
  %120 = load i32, i32* @g_11, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  %123 = load i64, i64* @g_45, align 8, !tbaa !7
  %124 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %124)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:125                                     ; preds = %153, %119
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = icmp slt i32 %126, 10
  br i1 %127, label %128, label %156

; <label>:128                                     ; preds = %125
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %129

; <label>:129                                     ; preds = %149, %128
  %130 = load i32, i32* %j, align 4, !tbaa !1
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %152

; <label>:132                                     ; preds = %129
  %133 = load i32, i32* %j, align 4, !tbaa !1
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* %i, align 4, !tbaa !1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 %136
  %138 = getelementptr inbounds [2 x i16], [2 x i16]* %137, i32 0, i64 %134
  %139 = load i16, i16* %138, align 2, !tbaa !10
  %140 = zext i16 %139 to i64
  %141 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i32 %141)
  %142 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

; <label>:144                                     ; preds = %132
  %145 = load i32, i32* %i, align 4, !tbaa !1
  %146 = load i32, i32* %j, align 4, !tbaa !1
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %145, i32 %146)
  br label %148

; <label>:148                                     ; preds = %144, %132
  br label %149

; <label>:149                                     ; preds = %148
  %150 = load i32, i32* %j, align 4, !tbaa !1
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %j, align 4, !tbaa !1
  br label %129

; <label>:152                                     ; preds = %129
  br label %153

; <label>:153                                     ; preds = %152
  %154 = load i32, i32* %i, align 4, !tbaa !1
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %i, align 4, !tbaa !1
  br label %125

; <label>:156                                     ; preds = %125
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %157

; <label>:157                                     ; preds = %185, %156
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %188

; <label>:160                                     ; preds = %157
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %181, %160
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %184

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %j, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 %168
  %170 = getelementptr inbounds [8 x i8], [8 x i8]* %169, i32 0, i64 %166
  %171 = load i8, i8* %170, align 1, !tbaa !9
  %172 = sext i8 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 %173)
  %174 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

; <label>:176                                     ; preds = %164
  %177 = load i32, i32* %i, align 4, !tbaa !1
  %178 = load i32, i32* %j, align 4, !tbaa !1
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %177, i32 %178)
  br label %180

; <label>:180                                     ; preds = %176, %164
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load i32, i32* %j, align 4, !tbaa !1
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %j, align 4, !tbaa !1
  br label %161

; <label>:184                                     ; preds = %161
  br label %185

; <label>:185                                     ; preds = %184
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %i, align 4, !tbaa !1
  br label %157

; <label>:188                                     ; preds = %157
  %189 = load i32, i32* @g_82, align 4, !tbaa !1
  %190 = zext i32 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %191)
  %192 = load i32, i32* @g_83, align 4, !tbaa !1
  %193 = sext i32 %192 to i64
  %194 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %194)
  %195 = load i16, i16* @g_97, align 2, !tbaa !10
  %196 = sext i16 %195 to i64
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %197)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %198

; <label>:198                                     ; preds = %238, %188
  %199 = load i32, i32* %i, align 4, !tbaa !1
  %200 = icmp slt i32 %199, 7
  br i1 %200, label %201, label %241

; <label>:201                                     ; preds = %198
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %202

; <label>:202                                     ; preds = %234, %201
  %203 = load i32, i32* %j, align 4, !tbaa !1
  %204 = icmp slt i32 %203, 7
  br i1 %204, label %205, label %237

; <label>:205                                     ; preds = %202
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %206

; <label>:206                                     ; preds = %230, %205
  %207 = load i32, i32* %k, align 4, !tbaa !1
  %208 = icmp slt i32 %207, 4
  br i1 %208, label %209, label %233

; <label>:209                                     ; preds = %206
  %210 = load i32, i32* %k, align 4, !tbaa !1
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %j, align 4, !tbaa !1
  %213 = sext i32 %212 to i64
  %214 = load i32, i32* %i, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 %215
  %217 = getelementptr inbounds [7 x [4 x i8]], [7 x [4 x i8]]* %216, i32 0, i64 %213
  %218 = getelementptr inbounds [4 x i8], [4 x i8]* %217, i32 0, i64 %211
  %219 = load i8, i8* %218, align 1, !tbaa !9
  %220 = zext i8 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 %221)
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

; <label>:224                                     ; preds = %209
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %226 = load i32, i32* %j, align 4, !tbaa !1
  %227 = load i32, i32* %k, align 4, !tbaa !1
  %228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i32 %225, i32 %226, i32 %227)
  br label %229

; <label>:229                                     ; preds = %224, %209
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load i32, i32* %k, align 4, !tbaa !1
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %k, align 4, !tbaa !1
  br label %206

; <label>:233                                     ; preds = %206
  br label %234

; <label>:234                                     ; preds = %233
  %235 = load i32, i32* %j, align 4, !tbaa !1
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %j, align 4, !tbaa !1
  br label %202

; <label>:237                                     ; preds = %202
  br label %238

; <label>:238                                     ; preds = %237
  %239 = load i32, i32* %i, align 4, !tbaa !1
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %i, align 4, !tbaa !1
  br label %198

; <label>:241                                     ; preds = %198
  %242 = load i32, i32* @g_102, align 4, !tbaa !1
  %243 = sext i32 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %244)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %245

; <label>:245                                     ; preds = %261, %241
  %246 = load i32, i32* %i, align 4, !tbaa !1
  %247 = icmp slt i32 %246, 6
  br i1 %247, label %248, label %264

; <label>:248                                     ; preds = %245
  %249 = load i32, i32* %i, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [6 x i32], [6 x i32]* @g_217, i32 0, i64 %250
  %252 = load i32, i32* %251, align 4, !tbaa !1
  %253 = sext i32 %252 to i64
  %254 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %253, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %254)
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

; <label>:257                                     ; preds = %248
  %258 = load i32, i32* %i, align 4, !tbaa !1
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %258)
  br label %260

; <label>:260                                     ; preds = %257, %248
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load i32, i32* %i, align 4, !tbaa !1
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %i, align 4, !tbaa !1
  br label %245

; <label>:264                                     ; preds = %245
  %265 = load i32, i32* @g_248, align 4, !tbaa !1
  %266 = zext i32 %265 to i64
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %267)
  %268 = load i32, i32* @g_278, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %270)
  %271 = load volatile i8, i8* @g_312, align 1, !tbaa !9
  %272 = zext i8 %271 to i64
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %273)
  %274 = load volatile i8, i8* @g_313, align 1, !tbaa !9
  %275 = zext i8 %274 to i64
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %276)
  %277 = load volatile i8, i8* @g_314, align 1, !tbaa !9
  %278 = zext i8 %277 to i64
  %279 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %279)
  %280 = load i8, i8* @g_334, align 1, !tbaa !9
  %281 = zext i8 %280 to i64
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %281, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %282)
  %283 = load i64, i64* @g_346, align 8, !tbaa !7
  %284 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %284)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %285

; <label>:285                                     ; preds = %301, %264
  %286 = load i32, i32* %i, align 4, !tbaa !1
  %287 = icmp slt i32 %286, 5
  br i1 %287, label %288, label %304

; <label>:288                                     ; preds = %285
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [5 x i16], [5 x i16]* @g_355, i32 0, i64 %290
  %292 = load i16, i16* %291, align 2, !tbaa !10
  %293 = zext i16 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %294)
  %295 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

; <label>:297                                     ; preds = %288
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %298)
  br label %300

; <label>:300                                     ; preds = %297, %288
  br label %301

; <label>:301                                     ; preds = %300
  %302 = load i32, i32* %i, align 4, !tbaa !1
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %i, align 4, !tbaa !1
  br label %285

; <label>:304                                     ; preds = %285
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %305

; <label>:305                                     ; preds = %321, %304
  %306 = load i32, i32* %i, align 4, !tbaa !1
  %307 = icmp slt i32 %306, 5
  br i1 %307, label %308, label %324

; <label>:308                                     ; preds = %305
  %309 = load i32, i32* %i, align 4, !tbaa !1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [5 x i16], [5 x i16]* @g_494, i32 0, i64 %310
  %312 = load volatile i16, i16* %311, align 2, !tbaa !10
  %313 = sext i16 %312 to i64
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %314)
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

; <label>:317                                     ; preds = %308
  %318 = load i32, i32* %i, align 4, !tbaa !1
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %318)
  br label %320

; <label>:320                                     ; preds = %317, %308
  br label %321

; <label>:321                                     ; preds = %320
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %i, align 4, !tbaa !1
  br label %305

; <label>:324                                     ; preds = %305
  %325 = load i64, i64* @g_552, align 8, !tbaa !7
  %326 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %326)
  %327 = load i32, i32* @g_577, align 4, !tbaa !1
  %328 = zext i32 %327 to i64
  %329 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %328, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %329)
  %330 = load i32, i32* @g_581, align 4, !tbaa !1
  %331 = zext i32 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %332)
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %333)
  %334 = load i64, i64* @g_629, align 8, !tbaa !7
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %335)
  %336 = load i16, i16* @g_808, align 2, !tbaa !10
  %337 = sext i16 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %338)
  %339 = load i16, i16* @g_867, align 2, !tbaa !10
  %340 = zext i16 %339 to i64
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %341)
  %342 = load volatile i16, i16* @g_871, align 2, !tbaa !10
  %343 = sext i16 %342 to i64
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %344)
  %345 = load i8, i8* @g_912, align 1, !tbaa !9
  %346 = sext i8 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %347)
  %348 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %349 = zext i32 %348 to i64
  %350 = xor i64 %349, 4294967295
  %351 = trunc i64 %350 to i32
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %351, i32 %352)
  %353 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %353) #1
  %354 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %354) #1
  %355 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %355) #1
  %356 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %356) #1
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
  %l_824 = alloca i64, align 8
  %l_978 = alloca i32, align 4
  %l_981 = alloca [9 x i32*], align 16
  %l_982 = alloca i32**, align 8
  %i = alloca i32, align 4
  %l_19 = alloca i8, align 1
  %l_12 = alloca i8, align 1
  %l_977 = alloca i32**, align 8
  %1 = alloca i32
  %2 = bitcast i64* %l_824 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i64 -9, i64* %l_824, align 8, !tbaa !7
  %3 = bitcast i32* %l_978 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -1, i32* %l_978, align 4, !tbaa !1
  %4 = bitcast [9 x i32*]* %l_981 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast [9 x i32*]* %l_981 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([9 x i32*]* @func_1.l_981 to i8*), i64 72, i32 16, i1 false)
  %6 = bitcast i32*** %l_982 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32** @g_101, i32*** %l_982, align 8, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -27, i32* @g_2, align 4, !tbaa !1
  br label %8

; <label>:8                                       ; preds = %44, %0
  %9 = load i32, i32* @g_2, align 4, !tbaa !1
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %49

; <label>:11                                      ; preds = %8
  call void @llvm.lifetime.start(i64 1, i8* %l_19) #1
  store i8 1, i8* %l_19, align 1, !tbaa !9
  store i32 -12, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %32, %11
  %13 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %14 = icmp sle i32 %13, 21
  br i1 %14, label %15, label %37

; <label>:15                                      ; preds = %12
  call void @llvm.lifetime.start(i64 1, i8* %l_12) #1
  store i8 -1, i8* %l_12, align 1, !tbaa !9
  %16 = bitcast i32*** %l_977 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32** @g_580, i32*** %l_977, align 8, !tbaa !5
  %17 = load i32, i32* @g_2, align 4, !tbaa !1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %l_12, align 1, !tbaa !9
  %19 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %20 = trunc i32 %19 to i8
  %21 = load i8, i8* %l_19, align 1, !tbaa !9
  %22 = call zeroext i16 @func_16(i8 zeroext %20, i8 zeroext %21)
  %23 = load i8, i8* %l_12, align 1, !tbaa !9
  %24 = zext i8 %23 to i64
  %25 = load i64, i64* %l_824, align 8, !tbaa !7
  %26 = and i64 %25, %24
  store i64 %26, i64* %l_824, align 8, !tbaa !7
  %27 = trunc i64 %26 to i8
  %28 = call i32* @func_13(i16 zeroext %22, i8 signext %27)
  %29 = load i32**, i32*** %l_977, align 8, !tbaa !5
  store i32* %28, i32** %29, align 8, !tbaa !5
  %30 = load i32**, i32*** %l_977, align 8, !tbaa !5
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 5), i32** %30, align 8, !tbaa !5
  %31 = bitcast i32*** %l_977 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_12) #1
  br label %32

; <label>:32                                      ; preds = %15
  %33 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %34 = sext i32 %33 to i64
  %35 = call i64 @safe_add_func_int64_t_s_s(i64 %34, i64 6)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  br label %12

; <label>:37                                      ; preds = %12
  %38 = load i64, i64* %l_824, align 8, !tbaa !7
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %37
  store i32 4, i32* %1
  br label %42

; <label>:41                                      ; preds = %37
  store i32 0, i32* %1
  br label %42

; <label>:42                                      ; preds = %41, %40
  call void @llvm.lifetime.end(i64 1, i8* %l_19) #1
  %cleanup.dest = load i32, i32* %1
  switch i32 %cleanup.dest, label %70 [
    i32 0, label %43
    i32 4, label %44
  ]

; <label>:43                                      ; preds = %42
  br label %44

; <label>:44                                      ; preds = %43, %42
  %45 = load i32, i32* @g_2, align 4, !tbaa !1
  %46 = trunc i32 %45 to i8
  %47 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %46, i8 signext 2)
  %48 = sext i8 %47 to i32
  store i32 %48, i32* @g_2, align 4, !tbaa !1
  br label %8

; <label>:49                                      ; preds = %8
  %50 = load i32, i32* %l_978, align 4, !tbaa !1
  %51 = zext i32 %50 to i64
  %52 = load i8, i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 3, i64 3, i64 3), align 1, !tbaa !9
  %53 = zext i8 %52 to i64
  %54 = load i64*, i64** @g_911, align 8, !tbaa !5
  %55 = load i64, i64* %54, align 8, !tbaa !7
  %56 = call i64 @safe_mod_func_int64_t_s_s(i64 %53, i64 %55)
  %57 = icmp eq i64 %51, %56
  %58 = zext i1 %57 to i32
  %59 = load volatile i32*, i32** @g_668, align 8, !tbaa !5
  store i32 %58, i32* %59, align 4, !tbaa !1
  %60 = load i32**, i32*** %l_982, align 8, !tbaa !5
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), i32** %60, align 8, !tbaa !5
  %61 = load volatile i32**, i32*** @g_983, align 8, !tbaa !5
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), i32** %61, align 8, !tbaa !5
  %62 = load i32**, i32*** %l_982, align 8, !tbaa !5
  %63 = load i32*, i32** %62, align 8, !tbaa !5
  %64 = load i32, i32* %63, align 4, !tbaa !1
  store i32 1, i32* %1
  %65 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32*** %l_982 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast [9 x i32*]* %l_981 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %67) #1
  %68 = bitcast i32* %l_978 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i64* %l_824 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  ret i32 %64

; <label>:70                                      ; preds = %42
  unreachable
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32* @func_13(i16 zeroext %p_14, i8 signext %p_15) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8, align 1
  %l_861 = alloca i16**, align 8
  %l_860 = alloca i16***, align 8
  %l_868 = alloca i16, align 2
  %l_901 = alloca [2 x [1 x i32]], align 4
  %l_902 = alloca i32, align 4
  %l_909 = alloca [7 x i64*], align 16
  %l_908 = alloca i64**, align 8
  %l_940 = alloca i32**, align 8
  %l_975 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_829 = alloca i16*, align 8
  %l_830 = alloca [3 x i16*], align 16
  %l_833 = alloca i32, align 4
  %l_847 = alloca i64*, align 8
  %l_848 = alloca i64*, align 8
  %l_857 = alloca [4 x i64*], align 16
  %l_862 = alloca [9 x [2 x i16****]], align 16
  %l_866 = alloca i16***, align 8
  %l_869 = alloca i32, align 4
  %l_870 = alloca i32, align 4
  %l_888 = alloca i8*, align 8
  %l_889 = alloca [8 x i8*], align 16
  %l_962 = alloca i32, align 4
  %l_963 = alloca [6 x i16], align 2
  %l_972 = alloca [6 x [5 x i32**]], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  store i16 %p_14, i16* %1, align 2, !tbaa !10
  store i8 %p_15, i8* %2, align 1, !tbaa !9
  %3 = bitcast i16*** %l_861 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16** null, i16*** %l_861, align 8, !tbaa !5
  %4 = bitcast i16**** %l_860 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i16*** %l_861, i16**** %l_860, align 8, !tbaa !5
  %5 = bitcast i16* %l_868 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #1
  store i16 -1, i16* %l_868, align 2, !tbaa !10
  %6 = bitcast [2 x [1 x i32]]* %l_901 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %l_902 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1070454523, i32* %l_902, align 4, !tbaa !1
  %8 = bitcast [7 x i64*]* %l_909 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %8) #1
  %9 = bitcast [7 x i64*]* %l_909 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([7 x i64*]* @func_13.l_909 to i8*), i64 56, i32 16, i1 false)
  %10 = bitcast i64*** %l_908 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = getelementptr inbounds [7 x i64*], [7 x i64*]* %l_909, i32 0, i64 2
  store i64** %11, i64*** %l_908, align 8, !tbaa !5
  %12 = bitcast i32*** %l_940 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** @g_101, i32*** %l_940, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_975) #1
  store i8 -40, i8* %l_975, align 1, !tbaa !9
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:15                                      ; preds = %33, %0
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %36

; <label>:18                                      ; preds = %15
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %29, %18
  %20 = load i32, i32* %j, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %32

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %j, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %i, align 4, !tbaa !1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %l_901, i32 0, i64 %26
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %27, i32 0, i64 %24
  store i32 1588330888, i32* %28, align 4, !tbaa !1
  br label %29

; <label>:29                                      ; preds = %22
  %30 = load i32, i32* %j, align 4, !tbaa !1
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %j, align 4, !tbaa !1
  br label %19

; <label>:32                                      ; preds = %19
  br label %33

; <label>:33                                      ; preds = %32
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %15

; <label>:36                                      ; preds = %15
  store i32 0, i32* @g_248, align 4, !tbaa !1
  br label %37

; <label>:37                                      ; preds = %112, %36
  %38 = load i32, i32* @g_248, align 4, !tbaa !1
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %117

; <label>:40                                      ; preds = %37
  %41 = bitcast i16** %l_829 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  store i16* null, i16** %l_829, align 8, !tbaa !5
  %42 = bitcast [3 x i16*]* %l_830 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %42) #1
  %43 = bitcast i32* %l_833 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 4, i32* %l_833, align 4, !tbaa !1
  %44 = bitcast i64** %l_847 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i64* null, i64** %l_847, align 8, !tbaa !5
  %45 = bitcast i64** %l_848 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store i64* @g_552, i64** %l_848, align 8, !tbaa !5
  %46 = bitcast [4 x i64*]* %l_857 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %46) #1
  %47 = bitcast [4 x i64*]* %l_857 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([4 x i64*]* @func_13.l_857 to i8*), i64 32, i32 16, i1 false)
  %48 = bitcast [9 x [2 x i16****]]* %l_862 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %48) #1
  %49 = bitcast i16**** %l_866 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  store i16*** @g_864, i16**** %l_866, align 8, !tbaa !5
  %50 = bitcast i32* %l_869 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  store i32 -2146981817, i32* %l_869, align 4, !tbaa !1
  %51 = bitcast i32* %l_870 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 -444000402, i32* %l_870, align 4, !tbaa !1
  %52 = bitcast i8** %l_888 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 6), i8** %l_888, align 8, !tbaa !5
  %53 = bitcast [8 x i8*]* %l_889 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %53) #1
  %54 = bitcast [8 x i8*]* %l_889 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast ([8 x i8*]* @func_13.l_889 to i8*), i64 64, i32 16, i1 false)
  %55 = bitcast i32* %l_962 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  store i32 -1244189006, i32* %l_962, align 4, !tbaa !1
  %56 = bitcast [6 x i16]* %l_963 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %56) #1
  %57 = bitcast [6 x i16]* %l_963 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* bitcast ([6 x i16]* @func_13.l_963 to i8*), i64 12, i32 2, i1 false)
  %58 = bitcast [6 x [5 x i32**]]* %l_972 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %58) #1
  %59 = bitcast [6 x [5 x i32**]]* %l_972 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast ([6 x [5 x i32**]]* @func_13.l_972 to i8*), i64 240, i32 16, i1 false)
  %60 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %62

; <label>:62                                      ; preds = %69, %40
  %63 = load i32, i32* %i1, align 4, !tbaa !1
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %72

; <label>:65                                      ; preds = %62
  %66 = load i32, i32* %i1, align 4, !tbaa !1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i16*], [3 x i16*]* %l_830, i32 0, i64 %67
  store i16* null, i16** %68, align 8, !tbaa !5
  br label %69

; <label>:69                                      ; preds = %65
  %70 = load i32, i32* %i1, align 4, !tbaa !1
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %i1, align 4, !tbaa !1
  br label %62

; <label>:72                                      ; preds = %62
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %73

; <label>:73                                      ; preds = %91, %72
  %74 = load i32, i32* %i1, align 4, !tbaa !1
  %75 = icmp slt i32 %74, 9
  br i1 %75, label %76, label %94

; <label>:76                                      ; preds = %73
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %77

; <label>:77                                      ; preds = %87, %76
  %78 = load i32, i32* %j2, align 4, !tbaa !1
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %90

; <label>:80                                      ; preds = %77
  %81 = load i32, i32* %j2, align 4, !tbaa !1
  %82 = sext i32 %81 to i64
  %83 = load i32, i32* %i1, align 4, !tbaa !1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [9 x [2 x i16****]], [9 x [2 x i16****]]* %l_862, i32 0, i64 %84
  %86 = getelementptr inbounds [2 x i16****], [2 x i16****]* %85, i32 0, i64 %82
  store i16**** %l_860, i16***** %86, align 8, !tbaa !5
  br label %87

; <label>:87                                      ; preds = %80
  %88 = load i32, i32* %j2, align 4, !tbaa !1
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %j2, align 4, !tbaa !1
  br label %77

; <label>:90                                      ; preds = %77
  br label %91

; <label>:91                                      ; preds = %90
  %92 = load i32, i32* %i1, align 4, !tbaa !1
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %i1, align 4, !tbaa !1
  br label %73

; <label>:94                                      ; preds = %73
  %95 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast [6 x [5 x i32**]]* %l_972 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %97) #1
  %98 = bitcast [6 x i16]* %l_963 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %98) #1
  %99 = bitcast i32* %l_962 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast [8 x i8*]* %l_889 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %100) #1
  %101 = bitcast i8** %l_888 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %l_870 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %l_869 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i16**** %l_866 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast [9 x [2 x i16****]]* %l_862 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %105) #1
  %106 = bitcast [4 x i64*]* %l_857 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %106) #1
  %107 = bitcast i64** %l_848 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i64** %l_847 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32* %l_833 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast [3 x i16*]* %l_830 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %110) #1
  %111 = bitcast i16** %l_829 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  br label %112

; <label>:112                                     ; preds = %94
  %113 = load i32, i32* @g_248, align 4, !tbaa !1
  %114 = trunc i32 %113 to i8
  %115 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %114, i8 zeroext 5)
  %116 = zext i8 %115 to i32
  store i32 %116, i32* @g_248, align 4, !tbaa !1
  br label %37

; <label>:117                                     ; preds = %37
  %118 = load i16, i16* %1, align 2, !tbaa !10
  %119 = load i16*, i16** @g_820, align 8, !tbaa !5
  store i16 %118, i16* %119, align 2, !tbaa !10
  %120 = load i8, i8* %l_975, align 1, !tbaa !9
  %121 = sext i8 %120 to i16
  %122 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %118, i16 signext %121)
  %123 = sext i16 %122 to i32
  %124 = load volatile i32*, i32** @g_976, align 8, !tbaa !5
  store i32 %123, i32* %124, align 4, !tbaa !1
  %125 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_975) #1
  %127 = bitcast i32*** %l_940 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i64*** %l_908 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast [7 x i64*]* %l_909 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %129) #1
  %130 = bitcast i32* %l_902 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast [2 x [1 x i32]]* %l_901 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast i16* %l_868 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %132) #1
  %133 = bitcast i16**** %l_860 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast i16*** %l_861 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  ret i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 5)
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @func_16(i8 zeroext %p_17, i8 zeroext %p_18) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %l_26 = alloca [10 x i64], align 16
  %l_29 = alloca i16, align 2
  %l_44 = alloca i64*, align 8
  %l_604 = alloca i32*, align 8
  %l_605 = alloca i16*, align 8
  %l_606 = alloca i16*, align 8
  %l_607 = alloca i16*, align 8
  %l_624 = alloca [4 x i32**], align 16
  %l_625 = alloca i32*, align 8
  %l_627 = alloca i32, align 4
  %l_628 = alloca i64*, align 8
  %l_630 = alloca i16*, align 8
  %l_632 = alloca i32*, align 8
  %l_654 = alloca i32**, align 8
  %l_655 = alloca i8*, align 8
  %l_656 = alloca i8*, align 8
  %l_657 = alloca i32, align 4
  %l_696 = alloca i16**, align 8
  %l_695 = alloca i16***, align 8
  %l_724 = alloca [3 x i32], align 4
  %l_725 = alloca i64, align 8
  %l_729 = alloca i64, align 8
  %l_821 = alloca i16, align 2
  %i = alloca i32, align 4
  %l_635 = alloca i32, align 4
  %4 = alloca i32
  %l_638 = alloca [4 x i32], align 16
  %l_639 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %l_662 = alloca [3 x i32], align 4
  %l_672 = alloca i16*, align 8
  %l_688 = alloca i16***, align 8
  %l_714 = alloca [4 x [4 x i32]], align 16
  %i2 = alloca i32, align 4
  %j = alloca i32, align 4
  %l_660 = alloca i32*, align 8
  %l_661 = alloca i8, align 1
  %l_667 = alloca i32*, align 8
  %l_686 = alloca i16**, align 8
  %l_713 = alloca i64, align 8
  %l_721 = alloca i32, align 4
  %l_722 = alloca i32, align 4
  %l_733 = alloca i16*, align 8
  %l_752 = alloca i32*, align 8
  %l_764 = alloca i32, align 4
  %l_677 = alloca i16, align 2
  %l_687 = alloca i32*, align 8
  %l_697 = alloca i16***, align 8
  %l_723 = alloca i32, align 4
  %l_728 = alloca i8, align 1
  %l_669 = alloca i16**, align 8
  %l_690 = alloca i16**, align 8
  %l_689 = alloca [10 x i16***], align 16
  %l_698 = alloca i16****, align 8
  %i3 = alloca i32, align 4
  %l_712 = alloca [3 x [7 x [6 x i16]]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k = alloca i32, align 4
  %l_719 = alloca i32*, align 8
  %l_720 = alloca [4 x [7 x i32*]], align 16
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %l_741 = alloca i32, align 4
  %l_742 = alloca [3 x [9 x [1 x i32]]], align 16
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %k10 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %j12 = alloca i32, align 4
  %l_748 = alloca [10 x i32], align 16
  %l_751 = alloca i32*, align 8
  %l_815 = alloca i64***, align 8
  %i16 = alloca i32, align 4
  %l_747 = alloca i32*, align 8
  %l_782 = alloca i32, align 4
  %l_807 = alloca i16*, align 8
  %l_806 = alloca i16**, align 8
  %l_805 = alloca i16***, align 8
  %l_816 = alloca i32, align 4
  store i8 %p_17, i8* %2, align 1, !tbaa !9
  store i8 %p_18, i8* %3, align 1, !tbaa !9
  %5 = bitcast [10 x i64]* %l_26 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %5) #1
  %6 = bitcast [10 x i64]* %l_26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast ([10 x i64]* @func_16.l_26 to i8*), i64 80, i32 16, i1 false)
  %7 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 1, i16* %l_29, align 2, !tbaa !10
  %8 = bitcast i64** %l_44 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64* @g_45, i64** %l_44, align 8, !tbaa !5
  %9 = bitcast i32** %l_604 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* @g_278, i32** %l_604, align 8, !tbaa !5
  %10 = bitcast i16** %l_605 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @g_355, i32 0, i64 1), i16** %l_605, align 8, !tbaa !5
  %11 = bitcast i16** %l_606 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i16* null, i16** %l_606, align 8, !tbaa !5
  %12 = bitcast i16** %l_607 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i16* getelementptr inbounds ([10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 0, i64 0), i16** %l_607, align 8, !tbaa !5
  %13 = bitcast [4 x i32**]* %l_624 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %13) #1
  %14 = bitcast i32** %l_625 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32* @g_626, i32** %l_625, align 8, !tbaa !5
  %15 = bitcast i32* %l_627 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -7, i32* %l_627, align 4, !tbaa !1
  %16 = bitcast i64** %l_628 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64* @g_629, i64** %l_628, align 8, !tbaa !5
  %17 = bitcast i16** %l_630 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i16* %l_29, i16** %l_630, align 8, !tbaa !5
  %18 = bitcast i32** %l_632 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32* @g_102, i32** %l_632, align 8, !tbaa !5
  %19 = bitcast i32*** %l_654 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @g_653, i32 0, i64 1), i32*** %l_654, align 8, !tbaa !5
  %20 = bitcast i8** %l_655 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 7), i8** %l_655, align 8, !tbaa !5
  %21 = bitcast i8** %l_656 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i8* @g_334, i8** %l_656, align 8, !tbaa !5
  %22 = bitcast i32* %l_657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 -1659372993, i32* %l_657, align 4, !tbaa !1
  %23 = bitcast i16*** %l_696 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i16** %l_630, i16*** %l_696, align 8, !tbaa !5
  %24 = bitcast i16**** %l_695 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i16*** %l_696, i16**** %l_695, align 8, !tbaa !5
  %25 = bitcast [3 x i32]* %l_724 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %25) #1
  %26 = bitcast i64* %l_725 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i64 -3, i64* %l_725, align 8, !tbaa !7
  %27 = bitcast i64* %l_729 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i64 -1621897728454443662, i64* %l_729, align 8, !tbaa !7
  %28 = bitcast i16* %l_821 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %28) #1
  store i16 -18125, i16* %l_821, align 2, !tbaa !10
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %30

; <label>:30                                      ; preds = %37, %0
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %30
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32**], [4 x i32**]* %l_624, i32 0, i64 %35
  store i32** null, i32*** %36, align 8, !tbaa !5
  br label %37

; <label>:37                                      ; preds = %33
  %38 = load i32, i32* %i, align 4, !tbaa !1
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %i, align 4, !tbaa !1
  br label %30

; <label>:40                                      ; preds = %30
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %41

; <label>:41                                      ; preds = %48, %40
  %42 = load i32, i32* %i, align 4, !tbaa !1
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %51

; <label>:44                                      ; preds = %41
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %l_724, i32 0, i64 %46
  store i32 -1852198618, i32* %47, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %44
  %49 = load i32, i32* %i, align 4, !tbaa !1
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4, !tbaa !1
  br label %41

; <label>:51                                      ; preds = %41
  %52 = load volatile i32, i32* @g_5, align 4, !tbaa !1
  %53 = trunc i32 %52 to i16
  %54 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %53, i32 1)
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds [10 x i64], [10 x i64]* %l_26, i32 0, i64 8
  %57 = load i64, i64* %56, align 8, !tbaa !7
  %58 = trunc i64 %57 to i8
  %59 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %58, i32 4)
  %60 = sext i8 %59 to i32
  %61 = load i16, i16* %l_29, align 2, !tbaa !10
  %62 = trunc i16 %61 to i8
  %63 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 5), align 4, !tbaa !1
  %64 = trunc i32 %63 to i8
  %65 = load i32, i32* @g_11, align 4, !tbaa !1
  %66 = trunc i32 %65 to i16
  %67 = load i64*, i64** %l_44, align 8, !tbaa !5
  %68 = load i64, i64* %67, align 8, !tbaa !7
  %69 = add i64 %68, -1
  store i64 %69, i64* %67, align 8, !tbaa !7
  %70 = load i8, i8* %2, align 1, !tbaa !9
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %104, label %73

; <label>:73                                      ; preds = %51
  %74 = load i32, i32* @g_2, align 4, !tbaa !1
  %75 = load i64*, i64** %l_44, align 8, !tbaa !5
  %76 = icmp eq i64* null, %75
  %77 = zext i1 %76 to i32
  %78 = trunc i32 %77 to i16
  %79 = call i32* @func_57(i16 zeroext %78)
  %80 = call i64* @func_55(i32* %79)
  %81 = load i64*, i64** %l_44, align 8, !tbaa !5
  %82 = call zeroext i16 @func_52(i64* %80, i64* %81)
  %83 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %82, i32 13)
  %84 = getelementptr inbounds [10 x i64], [10 x i64]* %l_26, i32 0, i64 0
  %85 = load i64, i64* %84, align 8, !tbaa !7
  %86 = load i32*, i32** %l_604, align 8, !tbaa !5
  %87 = load i32, i32* %86, align 4, !tbaa !1
  %88 = sext i32 %87 to i64
  %89 = xor i64 %88, %85
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4, !tbaa !1
  %91 = load i16, i16* %l_29, align 2, !tbaa !10
  %92 = sext i16 %91 to i32
  %93 = icmp ne i32 %74, %92
  %94 = zext i1 %93 to i32
  %95 = trunc i32 %94 to i16
  %96 = load i16*, i16** %l_605, align 8, !tbaa !5
  store i16 %95, i16* %96, align 2, !tbaa !10
  %97 = load i16*, i16** %l_607, align 8, !tbaa !5
  store i16 %95, i16* %97, align 2, !tbaa !10
  %98 = getelementptr inbounds [10 x i64], [10 x i64]* %l_26, i32 0, i64 2
  %99 = load i64, i64* %98, align 8, !tbaa !7
  %100 = trunc i64 %99 to i16
  %101 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %95, i16 zeroext %100)
  %102 = zext i16 %101 to i32
  %103 = icmp ne i32 %102, 0
  br label %104

; <label>:104                                     ; preds = %73, %51
  %105 = phi i1 [ true, %51 ], [ %103, %73 ]
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %l_604, align 8, !tbaa !5
  %108 = call i32* @func_39(i16 signext %66, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32* %107, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 3))
  store i32* %108, i32** %l_625, align 8, !tbaa !5
  %109 = icmp eq i32* %108, @g_11
  %110 = zext i1 %109 to i32
  %111 = trunc i32 %110 to i8
  %112 = load i8, i8* %2, align 1, !tbaa !9
  %113 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %111, i8 signext %112)
  %114 = sext i8 %113 to i16
  %115 = call signext i8 @func_34(i16 signext %114, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2))
  %116 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %64, i8 signext %115)
  %117 = sext i8 %116 to i64
  %118 = icmp ne i64 %117, 5
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = load i64*, i64** %l_44, align 8, !tbaa !5
  store i64 %120, i64* %121, align 8, !tbaa !7
  %122 = load i8, i8* %3, align 1, !tbaa !9
  %123 = zext i8 %122 to i64
  %124 = call i64 @safe_add_func_uint64_t_u_u(i64 %120, i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

; <label>:126                                     ; preds = %104
  %127 = load i8, i8* %3, align 1, !tbaa !9
  %128 = zext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br label %130

; <label>:130                                     ; preds = %126, %104
  %131 = phi i1 [ false, %104 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = trunc i32 %132 to i8
  %134 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %62, i8 signext %133)
  %135 = sext i8 %134 to i32
  %136 = icmp slt i32 %60, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %l_627, align 4, !tbaa !1
  %139 = load i8, i8* %3, align 1, !tbaa !9
  %140 = zext i8 %139 to i32
  %141 = icmp ne i32 %138, %140
  %142 = zext i1 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = load i64*, i64** %l_628, align 8, !tbaa !5
  %145 = load i64, i64* %144, align 8, !tbaa !7
  %146 = and i64 %145, %143
  store i64 %146, i64* %144, align 8, !tbaa !7
  %147 = icmp eq i64 %55, %146
  %148 = zext i1 %147 to i32
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %149, 8
  %151 = zext i1 %150 to i32
  %152 = xor i32 %151, 8
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %153, -5
  %155 = zext i1 %154 to i32
  br i1 true, label %156, label %160

; <label>:156                                     ; preds = %130
  %157 = load i32*, i32** %l_625, align 8, !tbaa !5
  %158 = load i32, i32* %157, align 4, !tbaa !1
  %159 = icmp ne i32 %158, 0
  br label %160

; <label>:160                                     ; preds = %156, %130
  %161 = phi i1 [ false, %130 ], [ %159, %156 ]
  %162 = zext i1 %161 to i32
  %163 = trunc i32 %162 to i8
  %164 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %163, i32 8)
  %165 = sext i8 %164 to i16
  %166 = load i16*, i16** %l_630, align 8, !tbaa !5
  store i16 %165, i16* %166, align 2, !tbaa !10
  %167 = sext i16 %165 to i64
  %168 = and i64 8388, %167
  %169 = load volatile i32, i32* @g_6, align 4, !tbaa !1
  %170 = load i8, i8* %3, align 1, !tbaa !9
  %171 = zext i8 %170 to i32
  %172 = xor i32 %169, %171
  %173 = sext i32 %172 to i64
  %174 = icmp uge i64 %173, 1
  %175 = zext i1 %174 to i32
  %176 = load i32*, i32** %l_632, align 8, !tbaa !5
  store i32 %175, i32* %176, align 4, !tbaa !1
  store i32 26, i32* @g_83, align 4, !tbaa !1
  br label %177

; <label>:177                                     ; preds = %185, %160
  %178 = load i32, i32* @g_83, align 4, !tbaa !1
  %179 = icmp ne i32 %178, -22
  br i1 %179, label %180, label %190

; <label>:180                                     ; preds = %177
  %181 = bitcast i32* %l_635 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  store i32 2143155485, i32* %l_635, align 4, !tbaa !1
  %182 = load i32, i32* %l_635, align 4, !tbaa !1
  %183 = trunc i32 %182 to i16
  store i16 %183, i16* %1
  store i32 1, i32* %4
  %184 = bitcast i32* %l_635 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  br label %1137
                                                  ; No predecessors!
  %186 = load i32, i32* @g_83, align 4, !tbaa !1
  %187 = trunc i32 %186 to i16
  %188 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %187, i16 signext 6)
  %189 = sext i16 %188 to i32
  store i32 %189, i32* @g_83, align 4, !tbaa !1
  br label %177

; <label>:190                                     ; preds = %177
  store i32 -26, i32* @g_83, align 4, !tbaa !1
  br label %191

; <label>:191                                     ; preds = %207, %190
  %192 = load i32, i32* @g_83, align 4, !tbaa !1
  %193 = icmp ne i32 %192, 1
  br i1 %193, label %194, label %212

; <label>:194                                     ; preds = %191
  %195 = bitcast [4 x i32]* %l_638 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %195) #1
  %196 = bitcast [4 x i32]* %l_638 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %196, i8* bitcast ([4 x i32]* @func_16.l_638 to i8*), i64 16, i32 16, i1 false)
  %197 = bitcast i32* %l_639 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #1
  store i32 0, i32* %l_639, align 4, !tbaa !1
  %198 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %198) #1
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %l_638, i32 0, i64 1
  %200 = load i32, i32* %199, align 4, !tbaa !1
  %201 = or i32 1, %200
  %202 = icmp sgt i32 1, %201
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %l_639, align 4, !tbaa !1
  %204 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %l_639 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast [4 x i32]* %l_638 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %206) #1
  br label %207

; <label>:207                                     ; preds = %194
  %208 = load i32, i32* @g_83, align 4, !tbaa !1
  %209 = trunc i32 %208 to i8
  %210 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %209, i8 signext 9)
  %211 = sext i8 %210 to i32
  store i32 %211, i32* @g_83, align 4, !tbaa !1
  br label %191

; <label>:212                                     ; preds = %191
  %213 = load i8, i8* %3, align 1, !tbaa !9
  %214 = zext i8 %213 to i64
  %215 = and i64 %214, 1788650422
  %216 = load i8, i8* %2, align 1, !tbaa !9
  %217 = zext i8 %216 to i32
  %218 = icmp ne i32 %217, 1
  %219 = zext i1 %218 to i32
  %220 = load i32*, i32** %l_632, align 8, !tbaa !5
  store i32 %219, i32* %220, align 4, !tbaa !1
  %221 = load i64*, i64** %l_628, align 8, !tbaa !5
  %222 = icmp eq i64* %221, null
  %223 = zext i1 %222 to i32
  %224 = trunc i32 %223 to i8
  %225 = load i8, i8* %2, align 1, !tbaa !9
  %226 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %224, i8 signext %225)
  %227 = sext i8 %226 to i64
  %228 = or i64 %227, -1
  %229 = trunc i64 %228 to i16
  %230 = load i16*, i16** %l_605, align 8, !tbaa !5
  store i16 %229, i16* %230, align 2, !tbaa !10
  %231 = load i16**, i16*** @g_492, align 8, !tbaa !5
  %232 = load i16*, i16** %231, align 8, !tbaa !5
  %233 = load volatile i16, i16* %232, align 2, !tbaa !10
  %234 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %229, i16 zeroext %233)
  %235 = trunc i16 %234 to i8
  %236 = load i8*, i8** %l_656, align 8, !tbaa !5
  store i8 %235, i8* %236, align 1, !tbaa !9
  %237 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %235, i8 zeroext 0)
  %238 = zext i8 %237 to i64
  %239 = load i64, i64* @g_552, align 8, !tbaa !7
  %240 = icmp sgt i64 %238, %239
  %241 = zext i1 %240 to i32
  %242 = sext i32 %241 to i64
  %243 = icmp uge i64 %242, -5799380373111331302
  %244 = zext i1 %243 to i32
  %245 = load i8*, i8** %l_655, align 8, !tbaa !5
  %246 = icmp eq i8* %2, %245
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* @g_11, align 4, !tbaa !1
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

; <label>:251                                     ; preds = %212
  %252 = load i32*, i32** %l_632, align 8, !tbaa !5
  %253 = load i32, i32* %252, align 4, !tbaa !1
  %254 = sext i32 %253 to i64
  %255 = xor i64 %254, -2
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %252, align 4, !tbaa !1
  %257 = load i32, i32* %l_657, align 4, !tbaa !1
  %258 = add i32 %257, 1
  store i32 %258, i32* %l_657, align 4, !tbaa !1
  br label %1134

; <label>:259                                     ; preds = %212
  %260 = bitcast [3 x i32]* %l_662 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %260) #1
  %261 = bitcast i16** %l_672 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %261) #1
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @g_355, i32 0, i64 1), i16** %l_672, align 8, !tbaa !5
  %262 = bitcast i16**** %l_688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %262) #1
  store i16*** @g_671, i16**** %l_688, align 8, !tbaa !5
  %263 = bitcast [4 x [4 x i32]]* %l_714 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %263) #1
  %264 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %264) #1
  %265 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %265) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %266

; <label>:266                                     ; preds = %273, %259
  %267 = load i32, i32* %i2, align 4, !tbaa !1
  %268 = icmp slt i32 %267, 3
  br i1 %268, label %269, label %276

; <label>:269                                     ; preds = %266
  %270 = load i32, i32* %i2, align 4, !tbaa !1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [3 x i32], [3 x i32]* %l_662, i32 0, i64 %271
  store i32 -3, i32* %272, align 4, !tbaa !1
  br label %273

; <label>:273                                     ; preds = %269
  %274 = load i32, i32* %i2, align 4, !tbaa !1
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %i2, align 4, !tbaa !1
  br label %266

; <label>:276                                     ; preds = %266
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %277

; <label>:277                                     ; preds = %295, %276
  %278 = load i32, i32* %i2, align 4, !tbaa !1
  %279 = icmp slt i32 %278, 4
  br i1 %279, label %280, label %298

; <label>:280                                     ; preds = %277
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %281

; <label>:281                                     ; preds = %291, %280
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = icmp slt i32 %282, 4
  br i1 %283, label %284, label %294

; <label>:284                                     ; preds = %281
  %285 = load i32, i32* %j, align 4, !tbaa !1
  %286 = sext i32 %285 to i64
  %287 = load i32, i32* %i2, align 4, !tbaa !1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 %288
  %290 = getelementptr inbounds [4 x i32], [4 x i32]* %289, i32 0, i64 %286
  store i32 -1049413972, i32* %290, align 4, !tbaa !1
  br label %291

; <label>:291                                     ; preds = %284
  %292 = load i32, i32* %j, align 4, !tbaa !1
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %j, align 4, !tbaa !1
  br label %281

; <label>:294                                     ; preds = %281
  br label %295

; <label>:295                                     ; preds = %294
  %296 = load i32, i32* %i2, align 4, !tbaa !1
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %i2, align 4, !tbaa !1
  br label %277

; <label>:298                                     ; preds = %277
  %299 = load i32*, i32** %l_632, align 8, !tbaa !5
  %300 = load i32, i32* %299, align 4, !tbaa !1
  %301 = load i8*, i8** %l_656, align 8, !tbaa !5
  store i8 -118, i8* %301, align 1, !tbaa !9
  %302 = icmp slt i32 %300, 138
  br i1 %302, label %303, label %307

; <label>:303                                     ; preds = %298
  %304 = bitcast i32** %l_660 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %304) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %l_660, align 8, !tbaa !5
  %305 = load i32*, i32** %l_660, align 8, !tbaa !5
  store volatile i32* %305, i32** @g_631, align 8, !tbaa !5
  %306 = bitcast i32** %l_660 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  br label %1125

; <label>:307                                     ; preds = %298
  call void @llvm.lifetime.start(i64 1, i8* %l_661) #1
  store i8 -1, i8* %l_661, align 1, !tbaa !9
  %308 = bitcast i32** %l_667 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %308) #1
  store i32* @g_248, i32** %l_667, align 8, !tbaa !5
  %309 = bitcast i16*** %l_686 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %309) #1
  store i16** %l_605, i16*** %l_686, align 8, !tbaa !5
  %310 = bitcast i64* %l_713 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %310) #1
  store i64 -7656589482370035282, i64* %l_713, align 8, !tbaa !7
  %311 = bitcast i32* %l_721 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %311) #1
  store i32 1689265675, i32* %l_721, align 4, !tbaa !1
  %312 = bitcast i32* %l_722 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %312) #1
  store i32 1, i32* %l_722, align 4, !tbaa !1
  %313 = bitcast i16** %l_733 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #1
  store i16* %l_29, i16** %l_733, align 8, !tbaa !5
  %314 = bitcast i32** %l_752 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %314) #1
  %315 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 0
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %315, i32 0, i64 2
  store i32* %316, i32** %l_752, align 8, !tbaa !5
  %317 = bitcast i32* %l_764 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #1
  store i32 602929615, i32* %l_764, align 4, !tbaa !1
  %318 = load i8*, i8** %l_655, align 8, !tbaa !5
  store i8 -95, i8* %318, align 1, !tbaa !9
  %319 = load i8, i8* %l_661, align 1, !tbaa !9
  %320 = getelementptr inbounds [3 x i32], [3 x i32]* %l_662, i32 0, i64 2
  %321 = load i32, i32* %320, align 4, !tbaa !1
  %322 = load i32*, i32** %l_632, align 8, !tbaa !5
  store i32 %321, i32* %322, align 4, !tbaa !1
  %323 = load i8, i8* %2, align 1, !tbaa !9
  %324 = zext i8 %323 to i64
  %325 = icmp ult i64 %324, 3
  %326 = zext i1 %325 to i32
  %327 = load i64, i64* @g_629, align 8, !tbaa !7
  %328 = load i8, i8* %3, align 1, !tbaa !9
  %329 = zext i8 %328 to i64
  %330 = call i64 @safe_add_func_int64_t_s_s(i64 %327, i64 %329)
  %331 = trunc i64 %330 to i16
  %332 = load i16, i16* @g_97, align 2, !tbaa !10
  %333 = sext i16 %332 to i32
  %334 = load i8, i8* %3, align 1, !tbaa !9
  %335 = zext i8 %334 to i32
  %336 = xor i32 %333, %335
  %337 = getelementptr inbounds [3 x i32], [3 x i32]* %l_662, i32 0, i64 1
  %338 = load i32, i32* %337, align 4, !tbaa !1
  %339 = or i32 %336, %338
  %340 = load i8, i8* %2, align 1, !tbaa !9
  %341 = zext i8 %340 to i16
  %342 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %331, i16 signext %341)
  %343 = sext i16 %342 to i32
  %344 = icmp sge i32 %326, %343
  %345 = zext i1 %344 to i32
  %346 = sext i32 %345 to i64
  %347 = or i64 %346, 42551
  %348 = trunc i64 %347 to i32
  %349 = load i32*, i32** %l_667, align 8, !tbaa !5
  store i32 %348, i32* %349, align 4, !tbaa !1
  %350 = load i8, i8* %l_661, align 1, !tbaa !9
  %351 = sext i8 %350 to i32
  %352 = icmp ne i32 %348, %351
  %353 = zext i1 %352 to i32
  %354 = sext i32 %353 to i64
  %355 = icmp eq i64 1, %354
  br i1 %355, label %356, label %359

; <label>:356                                     ; preds = %307
  %357 = load i8, i8* %3, align 1, !tbaa !9
  %358 = zext i8 %357 to i16
  store i16 %358, i16* %1
  store i32 1, i32* %4
  br label %1115

; <label>:359                                     ; preds = %307
  %360 = bitcast i16* %l_677 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %360) #1
  store i16 0, i16* %l_677, align 2, !tbaa !10
  %361 = bitcast i32** %l_687 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %361) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %l_687, align 8, !tbaa !5
  %362 = bitcast i16**** %l_697 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %362) #1
  store i16*** %l_696, i16**** %l_697, align 8, !tbaa !5
  %363 = bitcast i32* %l_723 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %363) #1
  store i32 -1553664570, i32* %l_723, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_728) #1
  store i8 -107, i8* %l_728, align 1, !tbaa !9
  store i8 0, i8* %l_661, align 1, !tbaa !9
  br label %364

; <label>:364                                     ; preds = %400, %359
  %365 = load i8, i8* %l_661, align 1, !tbaa !9
  %366 = sext i8 %365 to i32
  %367 = icmp sle i32 %366, 3
  br i1 %367, label %368, label %405

; <label>:368                                     ; preds = %364
  %369 = load i32*, i32** %l_632, align 8, !tbaa !5
  %370 = load i32, i32* %369, align 4, !tbaa !1
  %371 = sext i32 %370 to i64
  %372 = xor i64 %371, 1008586642
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %369, align 4, !tbaa !1
  %374 = load volatile i32*, i32** @g_668, align 8, !tbaa !5
  store i32 %373, i32* %374, align 4, !tbaa !1
  store i64 0, i64* @g_552, align 8, !tbaa !7
  br label %375

; <label>:375                                     ; preds = %396, %368
  %376 = load i64, i64* @g_552, align 8, !tbaa !7
  %377 = icmp sle i64 %376, 3
  br i1 %377, label %378, label %399

; <label>:378                                     ; preds = %375
  %379 = bitcast i16*** %l_669 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %379) #1
  store i16** @g_93, i16*** %l_669, align 8, !tbaa !5
  %380 = load i16**, i16*** %l_669, align 8, !tbaa !5
  %381 = load volatile i16***, i16**** @g_670, align 8, !tbaa !5
  store i16** %380, i16*** %381, align 8, !tbaa !5
  %382 = load i16*, i16** %l_672, align 8, !tbaa !5
  %383 = load volatile i16***, i16**** @g_670, align 8, !tbaa !5
  %384 = load i16**, i16*** %383, align 8, !tbaa !5
  %385 = load i16*, i16** %384, align 8, !tbaa !5
  %386 = icmp eq i16* %382, %385
  %387 = zext i1 %386 to i32
  %388 = load i8, i8* %3, align 1, !tbaa !9
  %389 = zext i8 %388 to i32
  %390 = load i32*, i32** %l_632, align 8, !tbaa !5
  %391 = load i32, i32* %390, align 4, !tbaa !1
  %392 = xor i32 %391, %389
  store i32 %392, i32* %390, align 4, !tbaa !1
  %393 = load i8, i8* %2, align 1, !tbaa !9
  %394 = zext i8 %393 to i16
  store i16 %394, i16* %1
  store i32 1, i32* %4
  %395 = bitcast i16*** %l_669 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #1
  br label %800
                                                  ; No predecessors!
  %397 = load i64, i64* @g_552, align 8, !tbaa !7
  %398 = add nsw i64 %397, 1
  store i64 %398, i64* @g_552, align 8, !tbaa !7
  br label %375

; <label>:399                                     ; preds = %375
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load i8, i8* %l_661, align 1, !tbaa !9
  %402 = sext i8 %401 to i32
  %403 = add nsw i32 %402, 1
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %l_661, align 1, !tbaa !9
  br label %364

; <label>:405                                     ; preds = %364
  %406 = load i8, i8* %3, align 1, !tbaa !9
  %407 = load i16, i16* %l_677, align 2, !tbaa !10
  %408 = trunc i16 %407 to i8
  %409 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %406, i8 zeroext %408)
  %410 = zext i8 %409 to i32
  %411 = load i32*, i32** %l_632, align 8, !tbaa !5
  %412 = load i32, i32* %411, align 4, !tbaa !1
  %413 = xor i32 %412, %410
  store i32 %413, i32* %411, align 4, !tbaa !1
  %414 = trunc i32 %413 to i16
  %415 = load i8, i8* %2, align 1, !tbaa !9
  %416 = zext i8 %415 to i32
  %417 = load i8, i8* %l_661, align 1, !tbaa !9
  %418 = load i16, i16* getelementptr inbounds ([10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 9, i64 0), align 2, !tbaa !10
  %419 = load i8, i8* %3, align 1, !tbaa !9
  %420 = zext i8 %419 to i64
  %421 = load i8, i8* %2, align 1, !tbaa !9
  %422 = zext i8 %421 to i32
  %423 = load i8, i8* %3, align 1, !tbaa !9
  %424 = zext i8 %423 to i32
  %425 = icmp sgt i32 %422, %424
  %426 = zext i1 %425 to i32
  %427 = sext i32 %426 to i64
  %428 = icmp sgt i64 -1, %427
  %429 = zext i1 %428 to i32
  %430 = load i32, i32* @g_581, align 4, !tbaa !1
  %431 = icmp ult i32 %429, %430
  %432 = zext i1 %431 to i32
  %433 = trunc i32 %432 to i16
  %434 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %433, i32 1)
  %435 = call i64 @safe_sub_func_int64_t_s_s(i64 %420, i64 -5944332351192671708)
  %436 = trunc i64 %435 to i16
  %437 = load i16**, i16*** @g_492, align 8, !tbaa !5
  %438 = load i16*, i16** %437, align 8, !tbaa !5
  %439 = load volatile i16, i16* %438, align 2, !tbaa !10
  %440 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %436, i16 signext %439)
  %441 = sext i16 %440 to i64
  %442 = icmp eq i64 %441, 33217
  %443 = zext i1 %442 to i32
  %444 = or i32 %443, 8
  %445 = load i16**, i16*** %l_686, align 8, !tbaa !5
  %446 = bitcast i16** %445 to i8*
  %447 = icmp eq i8* null, %446
  %448 = zext i1 %447 to i32
  %449 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext -1, i32 %448)
  %450 = sext i16 %449 to i32
  %451 = load i8, i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 3, i64 5, i64 3), align 1, !tbaa !9
  %452 = zext i8 %451 to i32
  %453 = icmp sgt i32 %450, %452
  %454 = zext i1 %453 to i32
  %455 = load i8, i8* %3, align 1, !tbaa !9
  %456 = zext i8 %455 to i32
  %457 = and i32 %454, %456
  %458 = icmp ne i32 %416, %457
  %459 = zext i1 %458 to i32
  %460 = trunc i32 %459 to i16
  %461 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %414, i16 zeroext %460)
  %462 = load i16*, i16** %l_630, align 8, !tbaa !5
  store i16 %461, i16* %462, align 2, !tbaa !10
  %463 = sext i16 %461 to i64
  %464 = icmp ne i64 %463, 0
  %465 = zext i1 %464 to i32
  %466 = load i32*, i32** %l_687, align 8, !tbaa !5
  store i32 %465, i32* %466, align 4, !tbaa !1
  %467 = load i8, i8* %3, align 1, !tbaa !9
  %468 = icmp ne i8 %467, 0
  br i1 %468, label %469, label %636

; <label>:469                                     ; preds = %405
  %470 = bitcast i16*** %l_690 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %470) #1
  store i16** %l_606, i16*** %l_690, align 8, !tbaa !5
  %471 = bitcast [10 x i16***]* %l_689 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %471) #1
  %472 = getelementptr inbounds [10 x i16***], [10 x i16***]* %l_689, i64 0, i64 0
  store i16*** %l_690, i16**** %472, !tbaa !5
  %473 = getelementptr inbounds i16***, i16**** %472, i64 1
  store i16*** %l_690, i16**** %473, !tbaa !5
  %474 = getelementptr inbounds i16***, i16**** %473, i64 1
  store i16*** %l_690, i16**** %474, !tbaa !5
  %475 = getelementptr inbounds i16***, i16**** %474, i64 1
  store i16*** %l_690, i16**** %475, !tbaa !5
  %476 = getelementptr inbounds i16***, i16**** %475, i64 1
  store i16*** %l_690, i16**** %476, !tbaa !5
  %477 = getelementptr inbounds i16***, i16**** %476, i64 1
  store i16*** %l_690, i16**** %477, !tbaa !5
  %478 = getelementptr inbounds i16***, i16**** %477, i64 1
  store i16*** %l_690, i16**** %478, !tbaa !5
  %479 = getelementptr inbounds i16***, i16**** %478, i64 1
  store i16*** %l_690, i16**** %479, !tbaa !5
  %480 = getelementptr inbounds i16***, i16**** %479, i64 1
  store i16*** %l_690, i16**** %480, !tbaa !5
  %481 = getelementptr inbounds i16***, i16**** %480, i64 1
  store i16*** %l_690, i16**** %481, !tbaa !5
  %482 = bitcast i16***** %l_698 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %482) #1
  store i16**** %l_697, i16***** %l_698, align 8, !tbaa !5
  %483 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %483) #1
  %484 = load i16***, i16**** %l_688, align 8, !tbaa !5
  %485 = getelementptr inbounds [10 x i16***], [10 x i16***]* %l_689, i32 0, i64 5
  %486 = load i16***, i16**** %485, align 8, !tbaa !5
  %487 = icmp ne i16*** %484, %486
  %488 = zext i1 %487 to i32
  %489 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext 443, i16 signext -1)
  %490 = sext i16 %489 to i32
  %491 = load i16***, i16**** %l_695, align 8, !tbaa !5
  %492 = load i16***, i16**** %l_697, align 8, !tbaa !5
  %493 = load i16****, i16***** %l_698, align 8, !tbaa !5
  store i16*** %492, i16**** %493, align 8, !tbaa !5
  %494 = icmp eq i16*** %491, %492
  %495 = zext i1 %494 to i32
  %496 = getelementptr inbounds [10 x i64], [10 x i64]* %l_26, i32 0, i64 8
  %497 = icmp ne i64* null, %496
  %498 = zext i1 %497 to i32
  %499 = icmp slt i32 %498, 0
  %500 = zext i1 %499 to i32
  %501 = xor i32 %490, %500
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %504, label %503

; <label>:503                                     ; preds = %469
  br label %504

; <label>:504                                     ; preds = %503, %469
  %505 = phi i1 [ true, %469 ], [ true, %503 ]
  %506 = zext i1 %505 to i32
  %507 = trunc i32 %506 to i8
  %508 = load i8, i8* %2, align 1, !tbaa !9
  %509 = zext i8 %508 to i32
  %510 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %507, i32 %509)
  %511 = sext i8 %510 to i32
  %512 = icmp sle i32 %488, %511
  br i1 %512, label %513, label %618

; <label>:513                                     ; preds = %504
  %514 = bitcast [3 x [7 x [6 x i16]]]* %l_712 to i8*
  call void @llvm.lifetime.start(i64 252, i8* %514) #1
  %515 = bitcast [3 x [7 x [6 x i16]]]* %l_712 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %515, i8* bitcast ([3 x [7 x [6 x i16]]]* @func_16.l_712 to i8*), i64 252, i32 16, i1 false)
  %516 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %516) #1
  %517 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %517) #1
  %518 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %518) #1
  %519 = load i32*, i32** %l_687, align 8, !tbaa !5
  %520 = load i32, i32* %519, align 4, !tbaa !1
  %521 = load i32*, i32** %l_632, align 8, !tbaa !5
  %522 = load i32, i32* %521, align 4, !tbaa !1
  %523 = or i32 %522, %520
  store i32 %523, i32* %521, align 4, !tbaa !1
  %524 = getelementptr inbounds [3 x i32], [3 x i32]* %l_662, i32 0, i64 1
  %525 = load i32, i32* %524, align 4, !tbaa !1
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %533

; <label>:527                                     ; preds = %513
  %528 = getelementptr inbounds [3 x i32], [3 x i32]* %l_662, i32 0, i64 1
  %529 = load i32, i32* %528, align 4, !tbaa !1
  %530 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext -4429, i32 5)
  %531 = zext i16 %530 to i32
  %532 = icmp ne i32 %531, 0
  br label %533

; <label>:533                                     ; preds = %527, %513
  %534 = phi i1 [ false, %513 ], [ %532, %527 ]
  %535 = zext i1 %534 to i32
  %536 = load i32*, i32** %l_625, align 8, !tbaa !5
  %537 = load i32, i32* %536, align 4, !tbaa !1
  %538 = load i8, i8* %2, align 1, !tbaa !9
  %539 = zext i8 %538 to i32
  %540 = or i32 %537, %539
  %541 = sext i32 %540 to i64
  %542 = load i8, i8* %3, align 1, !tbaa !9
  %543 = zext i8 %542 to i32
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %546, label %545

; <label>:545                                     ; preds = %533
  br i1 true, label %546, label %550

; <label>:546                                     ; preds = %545, %533
  %547 = load i8, i8* %3, align 1, !tbaa !9
  %548 = zext i8 %547 to i32
  %549 = icmp ne i32 %548, 0
  br label %550

; <label>:550                                     ; preds = %546, %545
  %551 = phi i1 [ false, %545 ], [ %549, %546 ]
  %552 = zext i1 %551 to i32
  %553 = sext i32 %552 to i64
  %554 = load i64*, i64** %l_628, align 8, !tbaa !5
  store i64 %553, i64* %554, align 8, !tbaa !7
  %555 = icmp eq i64 %541, %553
  %556 = zext i1 %555 to i32
  %557 = sext i32 %556 to i64
  %558 = icmp eq i64 43395, %557
  %559 = zext i1 %558 to i32
  %560 = sext i32 %559 to i64
  %561 = or i64 -1122224516445286484, %560
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %570, label %563

; <label>:563                                     ; preds = %550
  %564 = getelementptr inbounds [3 x [7 x [6 x i16]]], [3 x [7 x [6 x i16]]]* %l_712, i32 0, i64 2
  %565 = getelementptr inbounds [7 x [6 x i16]], [7 x [6 x i16]]* %564, i32 0, i64 4
  %566 = getelementptr inbounds [6 x i16], [6 x i16]* %565, i32 0, i64 4
  %567 = load i16, i16* %566, align 2, !tbaa !10
  %568 = sext i16 %567 to i32
  %569 = icmp ne i32 %568, 0
  br label %570

; <label>:570                                     ; preds = %563, %550
  %571 = phi i1 [ true, %550 ], [ %569, %563 ]
  %572 = zext i1 %571 to i32
  %573 = trunc i32 %572 to i16
  %574 = load i64, i64* %l_713, align 8, !tbaa !7
  %575 = trunc i64 %574 to i16
  %576 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %573, i16 signext %575)
  %577 = trunc i16 %576 to i8
  %578 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %577, i8 zeroext 1)
  %579 = zext i8 %578 to i32
  %580 = load i8, i8* %3, align 1, !tbaa !9
  %581 = zext i8 %580 to i32
  %582 = call i32 @safe_add_func_uint32_t_u_u(i32 %579, i32 %581)
  %583 = getelementptr inbounds [3 x [7 x [6 x i16]]], [3 x [7 x [6 x i16]]]* %l_712, i32 0, i64 0
  %584 = getelementptr inbounds [7 x [6 x i16]], [7 x [6 x i16]]* %583, i32 0, i64 5
  %585 = getelementptr inbounds [6 x i16], [6 x i16]* %584, i32 0, i64 0
  %586 = load i16, i16* %585, align 2, !tbaa !10
  %587 = sext i16 %586 to i32
  %588 = and i32 %582, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %591, label %590

; <label>:590                                     ; preds = %570
  br label %591

; <label>:591                                     ; preds = %590, %570
  %592 = phi i1 [ true, %570 ], [ true, %590 ]
  %593 = zext i1 %592 to i32
  %594 = call i32 @safe_mod_func_int32_t_s_s(i32 %535, i32 %593)
  %595 = xor i32 %594, -1
  %596 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 0
  %597 = getelementptr inbounds [4 x i32], [4 x i32]* %596, i32 0, i64 2
  %598 = load i32, i32* %597, align 4, !tbaa !1
  %599 = load i32, i32* @g_83, align 4, !tbaa !1
  %600 = icmp sge i32 %598, %599
  %601 = zext i1 %600 to i32
  %602 = load i8, i8* %l_661, align 1, !tbaa !9
  %603 = sext i8 %602 to i32
  %604 = and i32 %601, %603
  %605 = trunc i32 %604 to i16
  %606 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext 0, i16 zeroext %605)
  %607 = zext i16 %606 to i32
  %608 = load i32*, i32** %l_632, align 8, !tbaa !5
  %609 = load i32, i32* %608, align 4, !tbaa !1
  %610 = or i32 %609, %607
  store i32 %610, i32* %608, align 4, !tbaa !1
  %611 = getelementptr inbounds [3 x i32], [3 x i32]* %l_662, i32 0, i64 1
  %612 = load i32, i32* %611, align 4, !tbaa !1
  %613 = trunc i32 %612 to i16
  store i16 %613, i16* %1
  store i32 1, i32* %4
  %614 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %614) #1
  %615 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %615) #1
  %616 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %616) #1
  %617 = bitcast [3 x [7 x [6 x i16]]]* %l_712 to i8*
  call void @llvm.lifetime.end(i64 252, i8* %617) #1
  br label %630

; <label>:618                                     ; preds = %504
  %619 = load i16**, i16*** @g_671, align 8, !tbaa !5
  %620 = load i16*, i16** %619, align 8, !tbaa !5
  %621 = icmp ne i16* null, %620
  %622 = zext i1 %621 to i32
  %623 = trunc i32 %622 to i16
  %624 = load i8, i8* %2, align 1, !tbaa !9
  %625 = zext i8 %624 to i16
  %626 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %623, i16 zeroext %625)
  %627 = zext i16 %626 to i32
  %628 = load i32*, i32** %l_632, align 8, !tbaa !5
  store i32 %627, i32* %628, align 4, !tbaa !1
  br label %629

; <label>:629                                     ; preds = %618
  store i32 0, i32* %4
  br label %630

; <label>:630                                     ; preds = %629, %591
  %631 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %631) #1
  %632 = bitcast i16***** %l_698 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %632) #1
  %633 = bitcast [10 x i16***]* %l_689 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %633) #1
  %634 = bitcast i16*** %l_690 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %634) #1
  %cleanup.dest = load i32, i32* %4
  switch i32 %cleanup.dest, label %800 [
    i32 0, label %635
  ]

; <label>:635                                     ; preds = %630
  br label %687

; <label>:636                                     ; preds = %405
  %637 = bitcast i32** %l_719 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %637) #1
  %638 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 0
  %639 = getelementptr inbounds [4 x i32], [4 x i32]* %638, i32 0, i64 2
  store i32* %639, i32** %l_719, align 8, !tbaa !5
  %640 = bitcast [4 x [7 x i32*]]* %l_720 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %640) #1
  %641 = bitcast [4 x [7 x i32*]]* %l_720 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %641, i8* bitcast ([4 x [7 x i32*]]* @func_16.l_720 to i8*), i64 224, i32 16, i1 false)
  %642 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %642) #1
  %643 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %643) #1
  store i32 22, i32* @g_577, align 4, !tbaa !1
  br label %644

; <label>:644                                     ; preds = %651, %636
  %645 = load i32, i32* @g_577, align 4, !tbaa !1
  %646 = icmp ule i32 %645, 58
  br i1 %646, label %647, label %656

; <label>:647                                     ; preds = %644
  %648 = load i32*, i32** %l_687, align 8, !tbaa !5
  %649 = load i32, i32* %648, align 4, !tbaa !1
  %650 = trunc i32 %649 to i16
  store i16 %650, i16* %1
  store i32 1, i32* %4
  br label %682
                                                  ; No predecessors!
  %652 = load i32, i32* @g_577, align 4, !tbaa !1
  %653 = zext i32 %652 to i64
  %654 = call i64 @safe_add_func_uint64_t_u_u(i64 %653, i64 2)
  %655 = trunc i64 %654 to i32
  store i32 %655, i32* @g_577, align 4, !tbaa !1
  br label %644

; <label>:656                                     ; preds = %644
  %657 = load i64, i64* %l_725, align 8, !tbaa !7
  %658 = add i64 %657, -1
  store i64 %658, i64* %l_725, align 8, !tbaa !7
  %659 = load i8, i8* %l_728, align 1, !tbaa !9
  %660 = zext i8 %659 to i64
  %661 = or i64 %660, -6
  %662 = trunc i64 %661 to i8
  store i8 %662, i8* %l_728, align 1, !tbaa !9
  %663 = load i8, i8* %2, align 1, !tbaa !9
  %664 = icmp ne i8 %663, 0
  %665 = xor i1 %664, true
  %666 = zext i1 %665 to i32
  %667 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 0
  %668 = getelementptr inbounds [4 x i32], [4 x i32]* %667, i32 0, i64 2
  %669 = load i32, i32* %668, align 4, !tbaa !1
  %670 = sext i32 %669 to i64
  %671 = load i8, i8* %3, align 1, !tbaa !9
  %672 = zext i8 %671 to i64
  %673 = call i64 @safe_mod_func_int64_t_s_s(i64 %670, i64 %672)
  %674 = and i64 -1621897728454443662, %673
  %675 = icmp ne i64 %674, 0
  br i1 %675, label %676, label %679

; <label>:676                                     ; preds = %656
  %677 = load i8, i8* %3, align 1, !tbaa !9
  %678 = zext i8 %677 to i16
  store i16 %678, i16* %1
  store i32 1, i32* %4
  br label %682

; <label>:679                                     ; preds = %656
  %680 = load i8, i8* %3, align 1, !tbaa !9
  %681 = zext i8 %680 to i16
  store i16 %681, i16* %1
  store i32 1, i32* %4
  br label %682

; <label>:682                                     ; preds = %679, %676, %647
  %683 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %683) #1
  %684 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %684) #1
  %685 = bitcast [4 x [7 x i32*]]* %l_720 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %685) #1
  %686 = bitcast i32** %l_719 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %686) #1
  br label %800

; <label>:687                                     ; preds = %635
  store i32 3, i32* @g_278, align 4, !tbaa !1
  br label %688

; <label>:688                                     ; preds = %796, %687
  %689 = load i32, i32* @g_278, align 4, !tbaa !1
  %690 = icmp sge i32 %689, 0
  br i1 %690, label %691, label %799

; <label>:691                                     ; preds = %688
  %692 = bitcast i32* %l_741 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %692) #1
  store i32 -1312217283, i32* %l_741, align 4, !tbaa !1
  %693 = bitcast [3 x [9 x [1 x i32]]]* %l_742 to i8*
  call void @llvm.lifetime.start(i64 108, i8* %693) #1
  %694 = bitcast [3 x [9 x [1 x i32]]]* %l_742 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %694, i8* bitcast ([3 x [9 x [1 x i32]]]* @func_16.l_742 to i8*), i64 108, i32 16, i1 false)
  %695 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %695) #1
  %696 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %696) #1
  %697 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %697) #1
  %698 = load i16*, i16** %l_733, align 8, !tbaa !5
  %699 = load i16**, i16*** %l_696, align 8, !tbaa !5
  store i16* %698, i16** %699, align 8, !tbaa !5
  %700 = icmp ne i16* %698, null
  %701 = zext i1 %700 to i32
  %702 = sext i32 %701 to i64
  %703 = or i64 5063519503132397465, %702
  %704 = icmp ne i64 %703, 0
  br i1 %704, label %705, label %748

; <label>:705                                     ; preds = %691
  %706 = load i32*, i32** %l_687, align 8, !tbaa !5
  store i32 1830185804, i32* %706, align 4, !tbaa !1
  %707 = load i8, i8* %l_661, align 1, !tbaa !9
  %708 = load i32, i32* %l_741, align 4, !tbaa !1
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %711, label %710

; <label>:710                                     ; preds = %705
  br label %711

; <label>:711                                     ; preds = %710, %705
  %712 = phi i1 [ true, %705 ], [ true, %710 ]
  %713 = zext i1 %712 to i32
  %714 = load i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 4), align 1, !tbaa !9
  %715 = sext i8 %714 to i32
  %716 = icmp ne i32 %713, %715
  %717 = zext i1 %716 to i32
  %718 = sext i32 %717 to i64
  %719 = icmp uge i64 %718, 0
  %720 = zext i1 %719 to i32
  %721 = sext i32 %720 to i64
  %722 = call i64 @safe_sub_func_uint64_t_u_u(i64 -9, i64 %721)
  %723 = load i32, i32* %l_722, align 4, !tbaa !1
  %724 = sext i32 %723 to i64
  %725 = icmp eq i64 %722, %724
  %726 = zext i1 %725 to i32
  %727 = load i32, i32* %l_722, align 4, !tbaa !1
  %728 = icmp eq i32 %726, %727
  %729 = zext i1 %728 to i32
  %730 = trunc i32 %729 to i8
  %731 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %730, i32 0)
  %732 = load i8, i8* %3, align 1, !tbaa !9
  %733 = zext i8 %732 to i32
  %734 = load i8, i8* %3, align 1, !tbaa !9
  %735 = zext i8 %734 to i32
  %736 = icmp sgt i32 %733, %735
  br i1 %736, label %741, label %737

; <label>:737                                     ; preds = %711
  %738 = load i8, i8* %3, align 1, !tbaa !9
  %739 = zext i8 %738 to i32
  %740 = icmp ne i32 %739, 0
  br label %741

; <label>:741                                     ; preds = %737, %711
  %742 = phi i1 [ true, %711 ], [ %740, %737 ]
  %743 = zext i1 %742 to i32
  %744 = load i8, i8* %2, align 1, !tbaa !9
  %745 = zext i8 %744 to i32
  %746 = call i32 @safe_div_func_int32_t_s_s(i32 %743, i32 %745)
  %747 = icmp sgt i32 -1830185805, %746
  br label %748

; <label>:748                                     ; preds = %741, %691
  %749 = phi i1 [ false, %691 ], [ %747, %741 ]
  %750 = zext i1 %749 to i32
  %751 = getelementptr inbounds [3 x [9 x [1 x i32]]], [3 x [9 x [1 x i32]]]* %l_742, i32 0, i64 1
  %752 = getelementptr inbounds [9 x [1 x i32]], [9 x [1 x i32]]* %751, i32 0, i64 7
  %753 = getelementptr inbounds [1 x i32], [1 x i32]* %752, i32 0, i64 0
  %754 = load i32, i32* %753, align 4, !tbaa !1
  %755 = or i32 %754, %750
  store i32 %755, i32* %753, align 4, !tbaa !1
  %756 = load i32*, i32** %l_632, align 8, !tbaa !5
  %757 = load i32, i32* %756, align 4, !tbaa !1
  %758 = or i32 %757, %755
  store i32 %758, i32* %756, align 4, !tbaa !1
  store i32 0, i32* %l_657, align 4, !tbaa !1
  br label %759

; <label>:759                                     ; preds = %785, %748
  %760 = load i32, i32* %l_657, align 4, !tbaa !1
  %761 = icmp ule i32 %760, 4
  br i1 %761, label %762, label %788

; <label>:762                                     ; preds = %759
  %763 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %763) #1
  %764 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %764) #1
  %765 = load i32, i32* @g_278, align 4, !tbaa !1
  %766 = sext i32 %765 to i64
  %767 = load i32, i32* @g_278, align 4, !tbaa !1
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 %768
  %770 = getelementptr inbounds [4 x i32], [4 x i32]* %769, i32 0, i64 %766
  %771 = load i32, i32* %770, align 4, !tbaa !1
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %774

; <label>:773                                     ; preds = %762
  store i32 35, i32* %4
  br label %782

; <label>:774                                     ; preds = %762
  %775 = load i64, i64* %l_713, align 8, !tbaa !7
  %776 = icmp ne i64 %775, 0
  br i1 %776, label %777, label %778

; <label>:777                                     ; preds = %774
  store i32 35, i32* %4
  br label %782

; <label>:778                                     ; preds = %774
  %779 = load i32*, i32** %l_625, align 8, !tbaa !5
  %780 = load i32, i32* %779, align 4, !tbaa !1
  %781 = trunc i32 %780 to i16
  store i16 %781, i16* %1
  store i32 1, i32* %4
  br label %782

; <label>:782                                     ; preds = %778, %777, %773
  %783 = bitcast i32* %j12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %783) #1
  %784 = bitcast i32* %i11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %784) #1
  %cleanup.dest.13 = load i32, i32* %4
  switch i32 %cleanup.dest.13, label %789 [
    i32 35, label %788
  ]
                                                  ; No predecessors!
  %786 = load i32, i32* %l_657, align 4, !tbaa !1
  %787 = add i32 %786, 1
  store i32 %787, i32* %l_657, align 4, !tbaa !1
  br label %759

; <label>:788                                     ; preds = %782, %759
  store i32 0, i32* %4
  br label %789

; <label>:789                                     ; preds = %788, %782
  %790 = bitcast i32* %k10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %790) #1
  %791 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %791) #1
  %792 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %792) #1
  %793 = bitcast [3 x [9 x [1 x i32]]]* %l_742 to i8*
  call void @llvm.lifetime.end(i64 108, i8* %793) #1
  %794 = bitcast i32* %l_741 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %794) #1
  %cleanup.dest.14 = load i32, i32* %4
  switch i32 %cleanup.dest.14, label %800 [
    i32 0, label %795
  ]

; <label>:795                                     ; preds = %789
  br label %796

; <label>:796                                     ; preds = %795
  %797 = load i32, i32* @g_278, align 4, !tbaa !1
  %798 = sub nsw i32 %797, 1
  store i32 %798, i32* @g_278, align 4, !tbaa !1
  br label %688

; <label>:799                                     ; preds = %688
  store i32 0, i32* %4
  br label %800

; <label>:800                                     ; preds = %799, %789, %682, %630, %378
  call void @llvm.lifetime.end(i64 1, i8* %l_728) #1
  %801 = bitcast i32* %l_723 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %801) #1
  %802 = bitcast i16**** %l_697 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %802) #1
  %803 = bitcast i32** %l_687 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %803) #1
  %804 = bitcast i16* %l_677 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %804) #1
  %cleanup.dest.15 = load i32, i32* %4
  switch i32 %cleanup.dest.15, label %1115 [
    i32 0, label %805
  ]

; <label>:805                                     ; preds = %800
  br label %806

; <label>:806                                     ; preds = %805
  store i32 0, i32* %l_627, align 4, !tbaa !1
  br label %807

; <label>:807                                     ; preds = %1106, %806
  %808 = load i32, i32* %l_627, align 4, !tbaa !1
  %809 = icmp uge i32 %808, 12
  br i1 %809, label %810, label %1111

; <label>:810                                     ; preds = %807
  %811 = bitcast [10 x i32]* %l_748 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %811) #1
  %812 = bitcast i32** %l_751 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %812) #1
  store i32* %l_721, i32** %l_751, align 8, !tbaa !5
  %813 = bitcast i64**** %l_815 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %813) #1
  store i64*** @g_272, i64**** %l_815, align 8, !tbaa !5
  %814 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %814) #1
  store i32 0, i32* %i16, align 4, !tbaa !1
  br label %815

; <label>:815                                     ; preds = %822, %810
  %816 = load i32, i32* %i16, align 4, !tbaa !1
  %817 = icmp slt i32 %816, 10
  br i1 %817, label %818, label %825

; <label>:818                                     ; preds = %815
  %819 = load i32, i32* %i16, align 4, !tbaa !1
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [10 x i32], [10 x i32]* %l_748, i32 0, i64 %820
  store i32 718361178, i32* %821, align 4, !tbaa !1
  br label %822

; <label>:822                                     ; preds = %818
  %823 = load i32, i32* %i16, align 4, !tbaa !1
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %i16, align 4, !tbaa !1
  br label %815

; <label>:825                                     ; preds = %815
  store i64 0, i64* @g_346, align 8, !tbaa !7
  br label %826

; <label>:826                                     ; preds = %853, %825
  %827 = load i64, i64* @g_346, align 8, !tbaa !7
  %828 = icmp ne i64 %827, 14
  br i1 %828, label %829, label %856

; <label>:829                                     ; preds = %826
  %830 = bitcast i32** %l_747 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %830) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %l_747, align 8, !tbaa !5
  store i32* %l_722, i32** %l_747, align 8, !tbaa !5
  %831 = load i8, i8* %3, align 1, !tbaa !9
  %832 = zext i8 %831 to i64
  %833 = and i64 %832, 4294967295
  %834 = trunc i64 %833 to i16
  %835 = getelementptr inbounds [10 x i32], [10 x i32]* %l_748, i32 0, i64 9
  %836 = load i32, i32* %835, align 4, !tbaa !1
  %837 = trunc i32 %836 to i16
  %838 = load i16, i16* getelementptr inbounds ([10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 3, i64 1), align 2, !tbaa !10
  %839 = trunc i16 %838 to i8
  %840 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %839, i32 5)
  %841 = sext i8 %840 to i16
  %842 = call i32* @func_57(i16 zeroext %841)
  %843 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 0
  %844 = getelementptr inbounds [4 x i32], [4 x i32]* %843, i32 0, i64 2
  %845 = call i32* @func_39(i16 signext %837, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), i32* %842, i32* %844)
  %846 = load i8, i8* %2, align 1, !tbaa !9
  %847 = zext i8 %846 to i16
  %848 = call i32* @func_57(i16 zeroext %847)
  %849 = load i32*, i32** %l_751, align 8, !tbaa !5
  %850 = call i32* @func_39(i16 signext %834, i32* %845, i32* %848, i32* %849)
  store i32* %850, i32** %l_752, align 8, !tbaa !5
  %851 = load i32*, i32** %l_747, align 8, !tbaa !5
  store i32* %851, i32** %l_751, align 8, !tbaa !5
  %852 = bitcast i32** %l_747 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %852) #1
  br label %853

; <label>:853                                     ; preds = %829
  %854 = load i64, i64* @g_346, align 8, !tbaa !7
  %855 = add nsw i64 %854, 1
  store i64 %855, i64* @g_346, align 8, !tbaa !7
  br label %826

; <label>:856                                     ; preds = %826
  %857 = load i8, i8* %2, align 1, !tbaa !9
  %858 = load i8, i8* %2, align 1, !tbaa !9
  %859 = zext i8 %858 to i32
  %860 = load i32*, i32** %l_625, align 8, !tbaa !5
  %861 = load i32, i32* %860, align 4, !tbaa !1
  %862 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 99, i32 %861)
  %863 = zext i8 %862 to i64
  %864 = load i8, i8* %3, align 1, !tbaa !9
  %865 = zext i8 %864 to i64
  %866 = load volatile i16***, i16**** @g_763, align 8, !tbaa !5
  %867 = load i32*, i32** %l_751, align 8, !tbaa !5
  %868 = load i32, i32* %867, align 4, !tbaa !1
  %869 = icmp sgt i32 0, %868
  %870 = zext i1 %869 to i32
  %871 = sext i32 %870 to i64
  %872 = icmp sge i64 %871, 34026
  %873 = zext i1 %872 to i32
  %874 = icmp eq i16*** %866, @g_671
  %875 = zext i1 %874 to i32
  %876 = sext i32 %875 to i64
  %877 = and i64 %876, 39811
  %878 = xor i64 %865, %877
  %879 = trunc i64 %878 to i8
  %880 = load i32*, i32** %l_632, align 8, !tbaa !5
  %881 = load i32, i32* %880, align 4, !tbaa !1
  %882 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %879, i32 %881)
  %883 = sext i8 %882 to i64
  store i64 %883, i64* @g_552, align 8, !tbaa !7
  %884 = call i64 @safe_add_func_int64_t_s_s(i64 %863, i64 %883)
  %885 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 0), align 4, !tbaa !1
  %886 = sext i32 %885 to i64
  %887 = icmp sle i64 %884, %886
  %888 = zext i1 %887 to i32
  %889 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %890 = and i32 %888, %889
  %891 = load i16, i16* getelementptr inbounds ([5 x i16], [5 x i16]* @g_355, i32 0, i64 1), align 2, !tbaa !10
  %892 = zext i16 %891 to i32
  %893 = and i32 %890, %892
  %894 = sext i32 %893 to i64
  %895 = icmp slt i64 66524307, %894
  %896 = zext i1 %895 to i32
  %897 = load i8, i8* %2, align 1, !tbaa !9
  %898 = zext i8 %897 to i32
  %899 = or i32 %896, %898
  %900 = trunc i32 %899 to i16
  %901 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext -2, i16 zeroext %900)
  %902 = load i32, i32* %l_764, align 4, !tbaa !1
  %903 = trunc i32 %902 to i16
  %904 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext 5, i16 zeroext %903)
  %905 = zext i16 %904 to i32
  %906 = icmp eq i32 %859, %905
  %907 = zext i1 %906 to i32
  %908 = trunc i32 %907 to i16
  %909 = getelementptr inbounds [3 x i32], [3 x i32]* %l_724, i32 0, i64 0
  %910 = load i32*, i32** %l_751, align 8, !tbaa !5
  %911 = call i32* @func_39(i16 signext %908, i32* %909, i32* %910, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 5))
  store volatile i32* %911, i32** getelementptr inbounds ([3 x [6 x [8 x i32*]]], [3 x [6 x [8 x i32*]]]* @g_10, i32 0, i64 2, i64 2, i64 3), align 8, !tbaa !5
  %912 = load i8, i8* %2, align 1, !tbaa !9
  %913 = icmp ne i8 %912, 0
  br i1 %913, label %914, label %915

; <label>:914                                     ; preds = %856
  store i32 38, i32* %4
  br label %1100

; <label>:915                                     ; preds = %856
  %916 = load i32**, i32*** %l_654, align 8, !tbaa !5
  %917 = load i32*, i32** %916, align 8, !tbaa !5
  %918 = icmp eq i32* null, %917
  %919 = zext i1 %918 to i32
  %920 = load i32*, i32** %l_751, align 8, !tbaa !5
  %921 = load i32, i32* %920, align 4, !tbaa !1
  %922 = trunc i32 %921 to i8
  %923 = load i8*, i8** %l_656, align 8, !tbaa !5
  store i8 %922, i8* %923, align 1, !tbaa !9
  %924 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %922, i32 5)
  %925 = zext i8 %924 to i32
  %926 = xor i32 %919, %925
  %927 = load i32*, i32** %l_751, align 8, !tbaa !5
  %928 = load i32, i32* %927, align 4, !tbaa !1
  %929 = trunc i32 %928 to i8
  %930 = call zeroext i8 @safe_unary_minus_func_uint8_t_u(i8 zeroext %929)
  %931 = zext i8 %930 to i64
  %932 = icmp ult i64 4294967295, %931
  %933 = zext i1 %932 to i32
  %934 = or i32 %933, 1
  %935 = sext i32 %934 to i64
  %936 = load i8, i8* %2, align 1, !tbaa !9
  %937 = zext i8 %936 to i32
  %938 = icmp ne i32 %937, 0
  br i1 %938, label %940, label %939

; <label>:939                                     ; preds = %915
  br label %940

; <label>:940                                     ; preds = %939, %915
  %941 = phi i1 [ true, %915 ], [ true, %939 ]
  %942 = zext i1 %941 to i32
  %943 = load i8, i8* %3, align 1, !tbaa !9
  %944 = zext i8 %943 to i32
  %945 = icmp sge i32 %942, %944
  %946 = zext i1 %945 to i32
  %947 = trunc i32 %946 to i16
  %948 = load i8, i8* %2, align 1, !tbaa !9
  %949 = zext i8 %948 to i32
  %950 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %947, i32 %949)
  %951 = zext i16 %950 to i64
  %952 = icmp slt i64 %951, 1
  %953 = zext i1 %952 to i32
  %954 = load i32, i32* @g_248, align 4, !tbaa !1
  %955 = icmp ugt i32 %953, %954
  %956 = zext i1 %955 to i32
  %957 = sext i32 %956 to i64
  %958 = or i64 %957, 9
  %959 = load i32*, i32** %l_751, align 8, !tbaa !5
  %960 = load i32, i32* %959, align 4, !tbaa !1
  %961 = sext i32 %960 to i64
  %962 = xor i64 %958, %961
  %963 = icmp eq i64 %935, %962
  %964 = zext i1 %963 to i32
  %965 = trunc i32 %964 to i8
  %966 = load volatile i8, i8* @g_314, align 1, !tbaa !9
  %967 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %965, i8 signext %966)
  %968 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %967, i32 1)
  %969 = zext i8 %968 to i32
  %970 = load i8, i8* %3, align 1, !tbaa !9
  %971 = zext i8 %970 to i32
  %972 = xor i32 %969, %971
  %973 = sext i32 %972 to i64
  %974 = call i64 @safe_mod_func_uint64_t_u_u(i64 %973, i64 6368887107400774084)
  %975 = or i64 %974, 3831333765
  %976 = trunc i64 %975 to i16
  %977 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %976, i16 signext 10353)
  %978 = sext i16 %977 to i64
  %979 = icmp sge i64 %978, 57000
  %980 = zext i1 %979 to i32
  %981 = icmp ne i32 %926, %980
  %982 = zext i1 %981 to i32
  %983 = trunc i32 %982 to i8
  %984 = load i8*, i8** %l_655, align 8, !tbaa !5
  store i8 %983, i8* %984, align 1, !tbaa !9
  %985 = sext i8 %983 to i32
  %986 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %l_714, i32 0, i64 0
  %987 = getelementptr inbounds [4 x i32], [4 x i32]* %986, i32 0, i64 2
  %988 = load i32, i32* %987, align 4, !tbaa !1
  %989 = icmp ne i32 %985, %988
  br i1 %989, label %991, label %990

; <label>:990                                     ; preds = %940
  br label %991

; <label>:991                                     ; preds = %990, %940
  %992 = phi i1 [ true, %940 ], [ true, %990 ]
  %993 = zext i1 %992 to i32
  %994 = load i16, i16* getelementptr inbounds ([10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 0, i64 0), align 2, !tbaa !10
  %995 = zext i16 %994 to i32
  %996 = icmp slt i32 %993, %995
  %997 = zext i1 %996 to i32
  %998 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext 0, i32 4)
  %999 = sext i16 %998 to i32
  %1000 = load i32*, i32** %l_632, align 8, !tbaa !5
  %1001 = load i32, i32* %1000, align 4, !tbaa !1
  %1002 = or i32 %1001, %999
  store i32 %1002, i32* %1000, align 4, !tbaa !1
  %1003 = icmp ne i32 %1002, 0
  %1004 = xor i1 %1003, true
  %1005 = zext i1 %1004 to i32
  %1006 = load i8, i8* %3, align 1, !tbaa !9
  %1007 = zext i8 %1006 to i32
  %1008 = xor i32 %1005, %1007
  %1009 = icmp ne i32 %1008, 0
  br i1 %1009, label %1010, label %1031

; <label>:1010                                    ; preds = %991
  %1011 = bitcast i32* %l_782 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1011) #1
  store i32 1131215960, i32* %l_782, align 4, !tbaa !1
  %1012 = load i32*, i32** %l_751, align 8, !tbaa !5
  %1013 = load i32, i32* %1012, align 4, !tbaa !1
  %1014 = icmp ne i32 %1013, 0
  br i1 %1014, label %1015, label %1016

; <label>:1015                                    ; preds = %1010
  store i32 38, i32* %4
  br label %1028

; <label>:1016                                    ; preds = %1010
  %1017 = load i32*, i32** %l_632, align 8, !tbaa !5
  %1018 = load i32, i32* %1017, align 4, !tbaa !1
  %1019 = sext i32 %1018 to i64
  %1020 = and i64 %1019, 3532543578
  %1021 = trunc i64 %1020 to i32
  store i32 %1021, i32* %1017, align 4, !tbaa !1
  %1022 = load i32*, i32** %l_751, align 8, !tbaa !5
  store i32 -2124947497, i32* %1022, align 4, !tbaa !1
  %1023 = load i32*, i32** %l_632, align 8, !tbaa !5
  %1024 = load i32, i32* %1023, align 4, !tbaa !1
  %1025 = or i32 %1024, -2124947497
  store i32 %1025, i32* %1023, align 4, !tbaa !1
  %1026 = load i32, i32* %l_782, align 4, !tbaa !1
  %1027 = add i32 %1026, 1
  store i32 %1027, i32* %l_782, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1028

; <label>:1028                                    ; preds = %1016, %1015
  %1029 = bitcast i32* %l_782 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1029) #1
  %cleanup.dest.17 = load i32, i32* %4
  switch i32 %cleanup.dest.17, label %1100 [
    i32 0, label %1030
  ]

; <label>:1030                                    ; preds = %1028
  br label %1099

; <label>:1031                                    ; preds = %991
  %1032 = bitcast i16** %l_807 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1032) #1
  store i16* @g_808, i16** %l_807, align 8, !tbaa !5
  %1033 = bitcast i16*** %l_806 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1033) #1
  store i16** %l_807, i16*** %l_806, align 8, !tbaa !5
  %1034 = bitcast i16**** %l_805 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1034) #1
  store i16*** %l_806, i16**** %l_805, align 8, !tbaa !5
  %1035 = bitcast i32* %l_816 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1035) #1
  store i32 196484939, i32* %l_816, align 4, !tbaa !1
  %1036 = load i16*, i16** %l_605, align 8, !tbaa !5
  %1037 = load i16, i16* %1036, align 2, !tbaa !10
  %1038 = add i16 %1037, 1
  store i16 %1038, i16* %1036, align 2, !tbaa !10
  %1039 = zext i16 %1038 to i32
  %1040 = load i8, i8* %2, align 1, !tbaa !9
  %1041 = zext i8 %1040 to i32
  %1042 = load i8**, i8*** @g_794, align 8, !tbaa !5
  %1043 = icmp ne i8** %1042, null
  %1044 = zext i1 %1043 to i32
  %1045 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 1), align 4, !tbaa !1
  %1046 = or i32 1, %1045
  %1047 = or i32 %1044, %1046
  %1048 = trunc i32 %1047 to i16
  %1049 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %1048, i16 signext 9)
  %1050 = sext i16 %1049 to i32
  %1051 = icmp ne i32 %1041, %1050
  %1052 = zext i1 %1051 to i32
  %1053 = icmp sle i32 %1039, %1052
  %1054 = zext i1 %1053 to i32
  %1055 = load i32*, i32** %l_751, align 8, !tbaa !5
  %1056 = load i32, i32* %1055, align 4, !tbaa !1
  %1057 = and i32 %1054, %1056
  %1058 = trunc i32 %1057 to i8
  %1059 = load i16, i16* %l_821, align 2, !tbaa !10
  %1060 = trunc i16 %1059 to i8
  %1061 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %1058, i8 signext %1060)
  %1062 = icmp ne i8 %1061, 0
  %1063 = xor i1 %1062, true
  %1064 = zext i1 %1063 to i32
  %1065 = load i32*, i32** %l_751, align 8, !tbaa !5
  %1066 = load i32, i32* %1065, align 4, !tbaa !1
  %1067 = call i32 @safe_div_func_uint32_t_u_u(i32 %1064, i32 %1066)
  %1068 = load i32*, i32** %l_667, align 8, !tbaa !5
  %1069 = load i32, i32* %1068, align 4, !tbaa !1
  %1070 = and i32 %1069, %1067
  store i32 %1070, i32* %1068, align 4, !tbaa !1
  %1071 = zext i32 %1070 to i64
  %1072 = icmp ule i64 %1071, 1
  %1073 = zext i1 %1072 to i32
  %1074 = load i32*, i32** %l_751, align 8, !tbaa !5
  %1075 = load i32, i32* %1074, align 4, !tbaa !1
  %1076 = sext i32 %1075 to i64
  %1077 = icmp sgt i64 %1076, 0
  %1078 = zext i1 %1077 to i32
  store i32* null, i32** %l_751, align 8, !tbaa !5
  store i8 26, i8* %l_661, align 1, !tbaa !9
  br label %1079

; <label>:1079                                    ; preds = %1089, %1031
  %1080 = load i8, i8* %l_661, align 1, !tbaa !9
  %1081 = sext i8 %1080 to i32
  %1082 = icmp sle i32 %1081, 29
  br i1 %1082, label %1083, label %1092

; <label>:1083                                    ; preds = %1079
  %1084 = load volatile i32*, i32** @g_668, align 8, !tbaa !5
  %1085 = load i32, i32* %1084, align 4, !tbaa !1
  %1086 = icmp ne i32 %1085, 0
  br i1 %1086, label %1087, label %1088

; <label>:1087                                    ; preds = %1083
  br label %1092

; <label>:1088                                    ; preds = %1083
  br label %1089

; <label>:1089                                    ; preds = %1088
  %1090 = load i8, i8* %l_661, align 1, !tbaa !9
  %1091 = add i8 %1090, 1
  store i8 %1091, i8* %l_661, align 1, !tbaa !9
  br label %1079

; <label>:1092                                    ; preds = %1087, %1079
  %1093 = load i8, i8* %2, align 1, !tbaa !9
  %1094 = zext i8 %1093 to i16
  store i16 %1094, i16* %1
  store i32 1, i32* %4
  %1095 = bitcast i32* %l_816 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1095) #1
  %1096 = bitcast i16**** %l_805 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1096) #1
  %1097 = bitcast i16*** %l_806 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1097) #1
  %1098 = bitcast i16** %l_807 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1098) #1
  br label %1100

; <label>:1099                                    ; preds = %1030
  store i32 0, i32* %4
  br label %1100

; <label>:1100                                    ; preds = %1099, %1092, %1028, %914
  %1101 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1101) #1
  %1102 = bitcast i64**** %l_815 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1102) #1
  %1103 = bitcast i32** %l_751 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1103) #1
  %1104 = bitcast [10 x i32]* %l_748 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %1104) #1
  %cleanup.dest.18 = load i32, i32* %4
  switch i32 %cleanup.dest.18, label %1115 [
    i32 0, label %1105
    i32 38, label %1111
  ]

; <label>:1105                                    ; preds = %1100
  br label %1106

; <label>:1106                                    ; preds = %1105
  %1107 = load i32, i32* %l_627, align 4, !tbaa !1
  %1108 = trunc i32 %1107 to i16
  %1109 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1108, i16 zeroext 2)
  %1110 = zext i16 %1109 to i32
  store i32 %1110, i32* %l_627, align 4, !tbaa !1
  br label %807

; <label>:1111                                    ; preds = %1100, %807
  %1112 = load i8, i8* %2, align 1, !tbaa !9
  %1113 = zext i8 %1112 to i32
  %1114 = load i32*, i32** %l_632, align 8, !tbaa !5
  store i32 %1113, i32* %1114, align 4, !tbaa !1
  store i32 0, i32* %4
  br label %1115

; <label>:1115                                    ; preds = %1111, %1100, %800, %356
  %1116 = bitcast i32* %l_764 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1116) #1
  %1117 = bitcast i32** %l_752 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1117) #1
  %1118 = bitcast i16** %l_733 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1118) #1
  %1119 = bitcast i32* %l_722 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1119) #1
  %1120 = bitcast i32* %l_721 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1120) #1
  %1121 = bitcast i64* %l_713 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1121) #1
  %1122 = bitcast i16*** %l_686 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1122) #1
  %1123 = bitcast i32** %l_667 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1123) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_661) #1
  %cleanup.dest.19 = load i32, i32* %4
  switch i32 %cleanup.dest.19, label %1126 [
    i32 0, label %1124
  ]

; <label>:1124                                    ; preds = %1115
  br label %1125

; <label>:1125                                    ; preds = %1124, %303
  store i32 0, i32* %4
  br label %1126

; <label>:1126                                    ; preds = %1125, %1115
  %1127 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1127) #1
  %1128 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1128) #1
  %1129 = bitcast [4 x [4 x i32]]* %l_714 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1129) #1
  %1130 = bitcast i16**** %l_688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1130) #1
  %1131 = bitcast i16** %l_672 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1131) #1
  %1132 = bitcast [3 x i32]* %l_662 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1132) #1
  %cleanup.dest.20 = load i32, i32* %4
  switch i32 %cleanup.dest.20, label %1137 [
    i32 0, label %1133
  ]

; <label>:1133                                    ; preds = %1126
  br label %1134

; <label>:1134                                    ; preds = %1133, %251
  %1135 = load i8, i8* %2, align 1, !tbaa !9
  %1136 = zext i8 %1135 to i16
  store i16 %1136, i16* %1
  store i32 1, i32* %4
  br label %1137

; <label>:1137                                    ; preds = %1134, %1126, %180
  %1138 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1138) #1
  %1139 = bitcast i16* %l_821 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1139) #1
  %1140 = bitcast i64* %l_729 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1140) #1
  %1141 = bitcast i64* %l_725 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1141) #1
  %1142 = bitcast [3 x i32]* %l_724 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1142) #1
  %1143 = bitcast i16**** %l_695 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1143) #1
  %1144 = bitcast i16*** %l_696 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1144) #1
  %1145 = bitcast i32* %l_657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1145) #1
  %1146 = bitcast i8** %l_656 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1146) #1
  %1147 = bitcast i8** %l_655 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1147) #1
  %1148 = bitcast i32*** %l_654 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1148) #1
  %1149 = bitcast i32** %l_632 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1149) #1
  %1150 = bitcast i16** %l_630 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1150) #1
  %1151 = bitcast i64** %l_628 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1151) #1
  %1152 = bitcast i32* %l_627 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1152) #1
  %1153 = bitcast i32** %l_625 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1153) #1
  %1154 = bitcast [4 x i32**]* %l_624 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1154) #1
  %1155 = bitcast i16** %l_607 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1155) #1
  %1156 = bitcast i16** %l_606 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1156) #1
  %1157 = bitcast i16** %l_605 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1157) #1
  %1158 = bitcast i32** %l_604 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1158) #1
  %1159 = bitcast i64** %l_44 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1159) #1
  %1160 = bitcast i16* %l_29 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1160) #1
  %1161 = bitcast [10 x i64]* %l_26 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1161) #1
  %1162 = load i16, i16* %1
  ret i16 %1162
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
define internal signext i8 @func_34(i16 signext %p_35, i32* %p_36) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32*, align 8
  store i16 %p_35, i16* %1, align 2, !tbaa !10
  store i32* %p_36, i32** %2, align 8, !tbaa !5
  %3 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 1), align 4, !tbaa !1
  %4 = trunc i32 %3 to i8
  ret i8 %4
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
define internal i32* @func_39(i16 signext %p_40, i32* %p_41, i32* %p_42, i32* %p_43) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %l_608 = alloca i32, align 4
  %l_609 = alloca [10 x [4 x [4 x i32*]]], align 16
  %l_610 = alloca i32, align 4
  %l_611 = alloca i32, align 4
  %l_614 = alloca [7 x [5 x [7 x i32]]], align 16
  %l_615 = alloca i32**, align 8
  %l_622 = alloca i8*, align 8
  %l_623 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i16 %p_40, i16* %1, align 2, !tbaa !10
  store i32* %p_41, i32** %2, align 8, !tbaa !5
  store i32* %p_42, i32** %3, align 8, !tbaa !5
  store i32* %p_43, i32** %4, align 8, !tbaa !5
  %5 = bitcast i32* %l_608 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 -8, i32* %l_608, align 4, !tbaa !1
  %6 = bitcast [10 x [4 x [4 x i32*]]]* %l_609 to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %6) #1
  %7 = bitcast [10 x [4 x [4 x i32*]]]* %l_609 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([10 x [4 x [4 x i32*]]]* @func_39.l_609 to i8*), i64 1280, i32 16, i1 false)
  %8 = bitcast i32* %l_610 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -976079463, i32* %l_610, align 4, !tbaa !1
  %9 = bitcast i32* %l_611 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %l_611, align 4, !tbaa !1
  %10 = bitcast [7 x [5 x [7 x i32]]]* %l_614 to i8*
  call void @llvm.lifetime.start(i64 980, i8* %10) #1
  %11 = bitcast i32*** %l_615 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = getelementptr inbounds [10 x [4 x [4 x i32*]]], [10 x [4 x [4 x i32*]]]* %l_609, i32 0, i64 4
  %13 = getelementptr inbounds [4 x [4 x i32*]], [4 x [4 x i32*]]* %12, i32 0, i64 1
  %14 = getelementptr inbounds [4 x i32*], [4 x i32*]* %13, i32 0, i64 0
  store i32** %14, i32*** %l_615, align 8, !tbaa !5
  %15 = bitcast i8** %l_622 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* null, i8** %l_622, align 8, !tbaa !5
  %16 = bitcast i8** %l_623 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 1, i64 6, i64 0), i8** %l_623, align 8, !tbaa !5
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:20                                      ; preds = %49, %0
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = icmp slt i32 %21, 7
  br i1 %22, label %23, label %52

; <label>:23                                      ; preds = %20
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %45, %23
  %25 = load i32, i32* %j, align 4, !tbaa !1
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %48

; <label>:27                                      ; preds = %24
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %28

; <label>:28                                      ; preds = %41, %27
  %29 = load i32, i32* %k, align 4, !tbaa !1
  %30 = icmp slt i32 %29, 7
  br i1 %30, label %31, label %44

; <label>:31                                      ; preds = %28
  %32 = load i32, i32* %k, align 4, !tbaa !1
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %j, align 4, !tbaa !1
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [7 x [5 x [7 x i32]]], [7 x [5 x [7 x i32]]]* %l_614, i32 0, i64 %37
  %39 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %38, i32 0, i64 %35
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %39, i32 0, i64 %33
  store i32 1036362396, i32* %40, align 4, !tbaa !1
  br label %41

; <label>:41                                      ; preds = %31
  %42 = load i32, i32* %k, align 4, !tbaa !1
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %k, align 4, !tbaa !1
  br label %28

; <label>:44                                      ; preds = %28
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i32, i32* %j, align 4, !tbaa !1
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %j, align 4, !tbaa !1
  br label %24

; <label>:48                                      ; preds = %24
  br label %49

; <label>:49                                      ; preds = %48
  %50 = load i32, i32* %i, align 4, !tbaa !1
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %i, align 4, !tbaa !1
  br label %20

; <label>:52                                      ; preds = %20
  %53 = load i32, i32* %l_611, align 4, !tbaa !1
  %54 = add i32 %53, 1
  store i32 %54, i32* %l_611, align 4, !tbaa !1
  %55 = getelementptr inbounds [7 x [5 x [7 x i32]]], [7 x [5 x [7 x i32]]]* %l_614, i32 0, i64 3
  %56 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %55, i32 0, i64 3
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %56, i32 0, i64 3
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = trunc i32 %58 to i16
  %60 = call i32* @func_57(i16 zeroext %59)
  %61 = load i32**, i32*** %l_615, align 8, !tbaa !5
  store i32* %60, i32** %61, align 8, !tbaa !5
  %62 = load i16, i16* %1, align 2, !tbaa !10
  %63 = sext i16 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %97, label %65

; <label>:65                                      ; preds = %52
  %66 = load i16, i16* %1, align 2, !tbaa !10
  %67 = load i32, i32* @g_581, align 4, !tbaa !1
  %68 = zext i32 %67 to i64
  %69 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 1), align 4, !tbaa !1
  %70 = sext i32 %69 to i64
  %71 = icmp eq i32** %3, %4
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %3, align 8, !tbaa !5
  %74 = load i32, i32* %73, align 4, !tbaa !1
  %75 = icmp sge i32 %72, %74
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = call i64 @safe_sub_func_int64_t_s_s(i64 %70, i64 %77)
  %79 = icmp sle i64 %68, %78
  %80 = zext i1 %79 to i32
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %l_623, align 8, !tbaa !5
  store i8 %81, i8* %82, align 1, !tbaa !9
  %83 = zext i8 %81 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

; <label>:85                                      ; preds = %65
  br label %86

; <label>:86                                      ; preds = %85, %65
  %87 = phi i1 [ true, %65 ], [ true, %85 ]
  %88 = zext i1 %87 to i32
  %89 = trunc i32 %88 to i16
  %90 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %66, i16 signext %89)
  %91 = trunc i16 %90 to i8
  %92 = load i16, i16* getelementptr inbounds ([5 x i16], [5 x i16]* @g_355, i32 0, i64 3), align 2, !tbaa !10
  %93 = trunc i16 %92 to i8
  %94 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %91, i8 signext %93)
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br label %97

; <label>:97                                      ; preds = %86, %52
  %98 = phi i1 [ true, %52 ], [ %96, %86 ]
  %99 = zext i1 %98 to i32
  %100 = trunc i32 %99 to i16
  %101 = call i32* @func_57(i16 zeroext %100)
  %102 = load i32**, i32*** %l_615, align 8, !tbaa !5
  store i32* %101, i32** %102, align 8, !tbaa !5
  %103 = load i32*, i32** %3, align 8, !tbaa !5
  %104 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i8** %l_623 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = bitcast i8** %l_622 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast i32*** %l_615 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast [7 x [5 x [7 x i32]]]* %l_614 to i8*
  call void @llvm.lifetime.end(i64 980, i8* %110) #1
  %111 = bitcast i32* %l_611 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %l_610 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast [10 x [4 x [4 x i32*]]]* %l_609 to i8*
  call void @llvm.lifetime.end(i64 1280, i8* %113) #1
  %114 = bitcast i32* %l_608 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  ret i32* %103
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
define internal zeroext i16 @func_52(i64* %p_53, i64* %p_54) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %l_603 = alloca i64, align 8
  store i64* %p_53, i64** %1, align 8, !tbaa !5
  store i64* %p_54, i64** %2, align 8, !tbaa !5
  %3 = bitcast i64* %l_603 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 -1125631803683602197, i64* %l_603, align 8, !tbaa !7
  %4 = load i32*, i32** @g_580, align 8, !tbaa !5
  %5 = load i32, i32* %4, align 4, !tbaa !1
  %6 = load i32*, i32** @g_580, align 8, !tbaa !5
  store i32 %5, i32* %6, align 4, !tbaa !1
  %7 = load i64, i64* %l_603, align 8, !tbaa !7
  %8 = trunc i64 %7 to i16
  %9 = bitcast i64* %l_603 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal i64* @func_55(i32* %p_56) #0 {
  %1 = alloca i32*, align 8
  %l_72 = alloca i16*, align 8
  %l_80 = alloca [1 x i8*], align 8
  %l_92 = alloca i32, align 4
  %l_96 = alloca i16*, align 8
  %l_98 = alloca i32, align 4
  %l_99 = alloca i32*, align 8
  %l_590 = alloca [5 x i64*], align 16
  %l_591 = alloca i64, align 8
  %l_594 = alloca i32**, align 8
  %l_595 = alloca i32**, align 8
  %l_596 = alloca i32**, align 8
  %l_597 = alloca i32**, align 8
  %l_598 = alloca i8*, align 8
  %l_601 = alloca i64, align 8
  %l_602 = alloca i64*, align 8
  %i = alloca i32, align 4
  store i32* %p_56, i32** %1, align 8, !tbaa !5
  %2 = bitcast i16** %l_72 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i16* getelementptr inbounds ([10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 0, i64 0), i16** %l_72, align 8, !tbaa !5
  %3 = bitcast [1 x i8*]* %l_80 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %l_92 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1, i32* %l_92, align 4, !tbaa !1
  %5 = bitcast i16** %l_96 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i16* @g_97, i16** %l_96, align 8, !tbaa !5
  %6 = bitcast i32* %l_98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 -678574118, i32* %l_98, align 4, !tbaa !1
  %7 = bitcast i32** %l_99 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i32* %l_98, i32** %l_99, align 8, !tbaa !5
  %8 = bitcast [5 x i64*]* %l_590 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast [5 x i64*]* %l_590 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([5 x i64*]* @func_55.l_590 to i8*), i64 40, i32 16, i1 false)
  %10 = bitcast i64* %l_591 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 9, i64* %l_591, align 8, !tbaa !7
  %11 = bitcast i32*** %l_594 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32** @g_101, i32*** %l_594, align 8, !tbaa !5
  %12 = bitcast i32*** %l_595 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** @g_101, i32*** %l_595, align 8, !tbaa !5
  %13 = bitcast i32*** %l_596 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32** @g_101, i32*** %l_596, align 8, !tbaa !5
  %14 = bitcast i32*** %l_597 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32** @g_580, i32*** %l_597, align 8, !tbaa !5
  %15 = bitcast i8** %l_598 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 3, i64 5, i64 1), i8** %l_598, align 8, !tbaa !5
  %16 = bitcast i64* %l_601 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i64 -7, i64* %l_601, align 8, !tbaa !7
  %17 = bitcast i64** %l_602 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64* %l_591, i64** %l_602, align 8, !tbaa !5
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:19                                      ; preds = %26, %0
  %20 = load i32, i32* %i, align 4, !tbaa !1
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %19
  %23 = load i32, i32* %i, align 4, !tbaa !1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_80, i32 0, i64 %24
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %25, align 8, !tbaa !5
  br label %26

; <label>:26                                      ; preds = %22
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %i, align 4, !tbaa !1
  br label %19

; <label>:29                                      ; preds = %19
  %30 = load i16*, i16** %l_72, align 8, !tbaa !5
  %31 = load i16, i16* %30, align 2, !tbaa !10
  %32 = add i16 %31, -1
  store i16 %32, i16* %30, align 2, !tbaa !10
  store i8 -5, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %33 = load i32, i32* @g_82, align 4, !tbaa !1
  %34 = or i32 %33, -5
  store i32 %34, i32* @g_82, align 4, !tbaa !1
  store i32 %34, i32* @g_83, align 4, !tbaa !1
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* @g_11, align 4, !tbaa !1
  %37 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %35, i32 %36)
  %38 = load i32*, i32** %1, align 8, !tbaa !5
  %39 = load i32, i32* %38, align 4, !tbaa !1
  %40 = load i32, i32* %l_92, align 4, !tbaa !1
  %41 = trunc i32 %40 to i16
  %42 = load i32, i32* %l_92, align 4, !tbaa !1
  %43 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %41, i32 %42)
  %44 = sext i16 %43 to i32
  %45 = load i16*, i16** @g_93, align 8, !tbaa !5
  %46 = load i32, i32* @g_11, align 4, !tbaa !1
  %47 = sext i32 %46 to i64
  %48 = icmp sgt i64 %47, 115
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @g_82, align 4, !tbaa !1
  %51 = call i32 @safe_div_func_int32_t_s_s(i32 %49, i32 %50)
  %52 = icmp eq i16* %45, null
  %53 = zext i1 %52 to i32
  %54 = xor i32 %44, %53
  %55 = call i32 @safe_mod_func_int32_t_s_s(i32 %39, i32 %54)
  %56 = load i32, i32* %l_92, align 4, !tbaa !1
  store i32 %56, i32* %l_92, align 4, !tbaa !1
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %58 = sext i8 %57 to i32
  %59 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 62, i32 %58)
  %60 = zext i8 %59 to i16
  %61 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %60, i32 15)
  %62 = load i32, i32* @g_83, align 4, !tbaa !1
  %63 = call i32 @safe_div_func_int32_t_s_s(i32 %62, i32 -10)
  %64 = trunc i32 %63 to i16
  %65 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %31, i16 zeroext %64)
  %66 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %65, i16 signext -1)
  %67 = load i32, i32* @g_11, align 4, !tbaa !1
  %68 = trunc i32 %67 to i16
  %69 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %66, i16 signext %68)
  %70 = load i16*, i16** %l_96, align 8, !tbaa !5
  store i16 -5, i16* %70, align 2, !tbaa !10
  %71 = load i32, i32* %l_98, align 4, !tbaa !1
  %72 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext -5, i32 %71)
  %73 = sext i16 %72 to i64
  %74 = call i64 @safe_add_func_int64_t_s_s(i64 %73, i64 -8)
  %75 = load i32, i32* %l_92, align 4, !tbaa !1
  %76 = load i32, i32* %l_98, align 4, !tbaa !1
  %77 = icmp sle i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* @g_83, align 4, !tbaa !1
  %80 = load i32*, i32** %l_99, align 8, !tbaa !5
  store i32 %79, i32* %80, align 4, !tbaa !1
  %81 = trunc i32 %79 to i8
  store i8 %81, i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 3, i64 5, i64 3), align 1, !tbaa !9
  %82 = zext i8 %81 to i32
  %83 = call signext i16 @func_59(i32 %82, i32* @g_2)
  %84 = load i32*, i32** %l_99, align 8, !tbaa !5
  %85 = load i32, i32* %84, align 4, !tbaa !1
  %86 = trunc i32 %85 to i16
  %87 = call i32* @func_57(i16 zeroext %86)
  store i32* %87, i32** @g_580, align 8, !tbaa !5
  %88 = load i32*, i32** %l_99, align 8, !tbaa !5
  %89 = load i32, i32* %88, align 4, !tbaa !1
  %90 = trunc i32 %89 to i16
  %91 = load i16*, i16** %l_96, align 8, !tbaa !5
  store i16 %90, i16* %91, align 2, !tbaa !10
  %92 = sext i16 %90 to i32
  %93 = load i32, i32* @g_581, align 4, !tbaa !1
  %94 = zext i32 %93 to i64
  %95 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 4), align 4, !tbaa !1
  %96 = trunc i32 %95 to i8
  %97 = load i64, i64* %l_591, align 8, !tbaa !7
  %98 = add i64 %97, 1
  store i64 %98, i64* %l_591, align 8, !tbaa !7
  %99 = load i32*, i32** %l_99, align 8, !tbaa !5
  %100 = load i32, i32* %99, align 4, !tbaa !1
  %101 = sext i32 %100 to i64
  %102 = icmp ne i64 %97, %101
  %103 = zext i1 %102 to i32
  %104 = trunc i32 %103 to i8
  %105 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %96, i8 signext %104)
  store i8 %105, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 6), align 1, !tbaa !9
  %106 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %105, i32 2)
  %107 = sext i8 %106 to i32
  %108 = load i32*, i32** %l_99, align 8, !tbaa !5
  %109 = load i32, i32* %108, align 4, !tbaa !1
  %110 = load i32**, i32*** %l_597, align 8, !tbaa !5
  store i32* @g_102, i32** %110, align 8, !tbaa !5
  %111 = icmp ne i32* %l_92, @g_102
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %29
  %113 = load i32, i32* @g_102, align 4, !tbaa !1
  %114 = icmp ne i32 %113, 0
  br label %115

; <label>:115                                     ; preds = %112, %29
  %116 = phi i1 [ false, %29 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = icmp sle i32 %107, %117
  %119 = zext i1 %118 to i32
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %l_598, align 8, !tbaa !5
  store i8 %120, i8* %121, align 1, !tbaa !9
  %122 = load i64, i64* @g_346, align 8, !tbaa !7
  %123 = load i32*, i32** %l_99, align 8, !tbaa !5
  %124 = load i32, i32* %123, align 4, !tbaa !1
  %125 = trunc i32 %124 to i16
  %126 = load i64, i64* @g_552, align 8, !tbaa !7
  %127 = trunc i64 %126 to i16
  %128 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %125, i16 zeroext %127)
  %129 = trunc i16 %128 to i8
  %130 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %120, i8 zeroext %129)
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

; <label>:133                                     ; preds = %115
  br label %134

; <label>:134                                     ; preds = %133, %115
  %135 = phi i1 [ true, %115 ], [ true, %133 ]
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = call i64 @safe_div_func_int64_t_s_s(i64 %137, i64 5211071719508455798)
  %139 = icmp ne i64 %94, %138
  %140 = zext i1 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = icmp ne i64 %141, -7
  %143 = zext i1 %142 to i32
  %144 = icmp slt i32 %92, %143
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %l_99, align 8, !tbaa !5
  store i32 %145, i32* %146, align 4, !tbaa !1
  %147 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i64** %l_602 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i64* %l_601 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i8** %l_598 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i32*** %l_597 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i32*** %l_596 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i32*** %l_595 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i32*** %l_594 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i64* %l_591 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast [5 x i64*]* %l_590 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %156) #1
  %157 = bitcast i32** %l_99 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32* %l_98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i16** %l_96 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %l_92 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast [1 x i8*]* %l_80 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i16** %l_72 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  ret i64* @g_45
}

; Function Attrs: nounwind uwtable
define internal i32* @func_57(i16 zeroext %p_58) #0 {
  %1 = alloca i16, align 2
  store i16 %p_58, i16* %1, align 2, !tbaa !10
  ret i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2)
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
define internal signext i16 @func_59(i32 %p_60, i32* %p_61) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %l_103 = alloca i32**, align 8
  %l_110 = alloca i8*, align 8
  %l_118 = alloca i32*, align 8
  %l_121 = alloca [1 x i8*], align 8
  %l_568 = alloca i64, align 8
  %l_569 = alloca i32, align 4
  %l_570 = alloca i32*, align 8
  %l_571 = alloca i32*, align 8
  %l_572 = alloca i32*, align 8
  %l_573 = alloca i32*, align 8
  %l_574 = alloca i32*, align 8
  %l_575 = alloca [1 x [2 x [9 x i32*]]], align 16
  %l_576 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %p_60, i32* %1, align 4, !tbaa !1
  store i32* %p_61, i32** %2, align 8, !tbaa !5
  %3 = bitcast i32*** %l_103 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i32** @g_101, i32*** %l_103, align 8, !tbaa !5
  %4 = bitcast i8** %l_110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 0), i8** %l_110, align 8, !tbaa !5
  %5 = bitcast i32** %l_118 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* @g_82, i32** %l_118, align 8, !tbaa !5
  %6 = bitcast [1 x i8*]* %l_121 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %l_568 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 3094196972472042113, i64* %l_568, align 8, !tbaa !7
  %8 = bitcast i32* %l_569 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 -9, i32* %l_569, align 4, !tbaa !1
  %9 = bitcast i32** %l_570 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %l_570, align 8, !tbaa !5
  %10 = bitcast i32** %l_571 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 5), i32** %l_571, align 8, !tbaa !5
  %11 = bitcast i32** %l_572 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %l_572, align 8, !tbaa !5
  %12 = bitcast i32** %l_573 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 1), i32** %l_573, align 8, !tbaa !5
  %13 = bitcast i32** %l_574 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i32* null, i32** %l_574, align 8, !tbaa !5
  %14 = bitcast [1 x [2 x [9 x i32*]]]* %l_575 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %14) #1
  %15 = getelementptr inbounds [1 x [2 x [9 x i32*]]], [1 x [2 x [9 x i32*]]]* %l_575, i64 0, i64 0
  %16 = getelementptr inbounds [2 x [9 x i32*]], [2 x [9 x i32*]]* %15, i64 0, i64 0
  %17 = getelementptr inbounds [9 x i32*], [9 x i32*]* %16, i64 0, i64 0
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %17, !tbaa !5
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  store i32* @g_102, i32** %18, !tbaa !5
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* @g_102, i32** %19, !tbaa !5
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %20, !tbaa !5
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), i32** %21, !tbaa !5
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* @g_102, i32** %23, !tbaa !5
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  store i32* @g_102, i32** %24, !tbaa !5
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %25, !tbaa !5
  %26 = getelementptr inbounds [9 x i32*], [9 x i32*]* %16, i64 1
  %27 = getelementptr inbounds [9 x i32*], [9 x i32*]* %26, i64 0, i64 0
  store i32* %l_569, i32** %27, !tbaa !5
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  store i32* @g_102, i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* %l_569, i32** %29, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* @g_102, i32** %30, !tbaa !5
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32* %l_569, i32** %31, !tbaa !5
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  store i32* %l_569, i32** %32, !tbaa !5
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  store i32* @g_102, i32** %33, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* %l_569, i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* @g_102, i32** %35, !tbaa !5
  %36 = bitcast i64* %l_576 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  store i64 8238312281121656942, i64* %l_576, align 8, !tbaa !7
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %40

; <label>:40                                      ; preds = %47, %0
  %41 = load i32, i32* %i, align 4, !tbaa !1
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %50

; <label>:43                                      ; preds = %40
  %44 = load i32, i32* %i, align 4, !tbaa !1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_121, i32 0, i64 %45
  store i8* null, i8** %46, align 8, !tbaa !5
  br label %47

; <label>:47                                      ; preds = %43
  %48 = load i32, i32* %i, align 4, !tbaa !1
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %i, align 4, !tbaa !1
  br label %40

; <label>:50                                      ; preds = %40
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), i32** @g_101, align 8, !tbaa !5
  %51 = load i32**, i32*** %l_103, align 8, !tbaa !5
  store i32* %1, i32** %51, align 8, !tbaa !5
  %52 = load i32, i32* %1, align 4, !tbaa !1
  %53 = sext i32 %52 to i64
  %54 = load i32*, i32** %2, align 8, !tbaa !5
  %55 = load i32, i32* %54, align 4, !tbaa !1
  %56 = load i32**, i32*** %l_103, align 8, !tbaa !5
  %57 = load i32*, i32** %56, align 8, !tbaa !5
  %58 = load i32, i32* %57, align 4, !tbaa !1
  %59 = load i8*, i8** %l_110, align 8, !tbaa !5
  %60 = icmp ne i8* %59, null
  %61 = zext i1 %60 to i32
  %62 = icmp ne i32 %55, %61
  %63 = zext i1 %62 to i32
  %64 = trunc i32 %63 to i16
  %65 = load i32, i32* %1, align 4, !tbaa !1
  %66 = load i32**, i32*** %l_103, align 8, !tbaa !5
  %67 = load i32*, i32** %66, align 8, !tbaa !5
  %68 = load i32, i32* %67, align 4, !tbaa !1
  %69 = trunc i32 %68 to i8
  %70 = load i32*, i32** %l_118, align 8, !tbaa !5
  %71 = load i32, i32* %70, align 4, !tbaa !1
  %72 = add i32 %71, -1
  store i32 %72, i32* %70, align 4, !tbaa !1
  %73 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 0, i32 7)
  %74 = zext i8 %73 to i64
  %75 = and i64 %74, 10497
  %76 = trunc i64 %75 to i8
  %77 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %69, i8 signext %76)
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

; <label>:80                                      ; preds = %50
  %81 = load i32, i32* %1, align 4, !tbaa !1
  %82 = icmp ne i32 %81, 0
  br label %83

; <label>:83                                      ; preds = %80, %50
  %84 = phi i1 [ true, %50 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = xor i32 %85, -1
  %87 = trunc i32 %86 to i16
  %88 = load i32**, i32*** %l_103, align 8, !tbaa !5
  %89 = load i32*, i32** %88, align 8, !tbaa !5
  %90 = load i32, i32* %89, align 4, !tbaa !1
  %91 = trunc i32 %90 to i16
  %92 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %87, i16 zeroext %91)
  %93 = zext i16 %92 to i64
  %94 = icmp ugt i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = icmp sgt i32 %65, %95
  %97 = zext i1 %96 to i32
  %98 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %64, i32 %97)
  %99 = zext i16 %98 to i64
  %100 = icmp sgt i64 %99, 49722
  %101 = zext i1 %100 to i32
  %102 = load i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %103 = sext i8 %102 to i32
  %104 = xor i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), align 1, !tbaa !9
  %106 = sext i8 %105 to i64
  %107 = xor i64 70, %106
  %108 = load i32, i32* %1, align 4, !tbaa !1
  %109 = load i32**, i32*** %l_103, align 8, !tbaa !5
  %110 = load i32*, i32** %109, align 8, !tbaa !5
  %111 = load i32, i32* %110, align 4, !tbaa !1
  %112 = or i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

; <label>:114                                     ; preds = %83
  %115 = load i32**, i32*** %l_103, align 8, !tbaa !5
  %116 = load i32*, i32** %115, align 8, !tbaa !5
  %117 = load i32, i32* %116, align 4, !tbaa !1
  %118 = icmp ne i32 %117, 0
  br label %119

; <label>:119                                     ; preds = %114, %83
  %120 = phi i1 [ false, %83 ], [ %118, %114 ]
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %1, align 4, !tbaa !1
  %123 = getelementptr inbounds [1 x i8*], [1 x i8*]* %l_121, i32 0, i64 0
  %124 = load i8*, i8** %123, align 8, !tbaa !5
  %125 = call signext i8 @func_104(i64 %53, i32 %122, i8* %124)
  %126 = sext i8 %125 to i64
  %127 = icmp ugt i64 %126, 3094196972472042113
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %l_569, align 4, !tbaa !1
  %130 = or i32 %129, %128
  store i32 %130, i32* %l_569, align 4, !tbaa !1
  %131 = load i32, i32* @g_577, align 4, !tbaa !1
  %132 = add i32 %131, -1
  store i32 %132, i32* @g_577, align 4, !tbaa !1
  %133 = load i32*, i32** %l_570, align 8, !tbaa !5
  %134 = load i32, i32* %133, align 4, !tbaa !1
  %135 = trunc i32 %134 to i16
  %136 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i64* %l_576 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast [1 x [2 x [9 x i32*]]]* %l_575 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %140) #1
  %141 = bitcast i32** %l_574 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32** %l_573 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32** %l_572 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32** %l_571 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast i32** %l_570 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast i32* %l_569 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i64* %l_568 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast [1 x i8*]* %l_121 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32** %l_118 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast i8** %l_110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i32*** %l_103 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  ret i16 %135
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
define internal signext i8 @func_104(i64 %p_105, i32 %p_106, i8* %p_107) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %l_126 = alloca [6 x i16], align 2
  %l_131 = alloca [7 x [6 x [5 x i8]]], align 16
  %l_141 = alloca [8 x i16*], align 16
  %l_140 = alloca i16**, align 8
  %l_142 = alloca [9 x [1 x [7 x i16*]]], align 16
  %l_143 = alloca i32*, align 8
  %l_210 = alloca i8, align 1
  %l_214 = alloca i32, align 4
  %l_216 = alloca i32, align 4
  %l_219 = alloca i32, align 4
  %l_220 = alloca i32, align 4
  %l_231 = alloca [2 x i32], align 4
  %l_235 = alloca i32, align 4
  %l_268 = alloca [5 x [7 x [1 x i16]]], align 16
  %l_365 = alloca [10 x i64*], align 16
  %l_420 = alloca i64***, align 8
  %l_421 = alloca i32, align 4
  %l_433 = alloca i16, align 2
  %l_551 = alloca i32, align 4
  %l_565 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_173 = alloca i64, align 8
  %l_213 = alloca [2 x [7 x [4 x i32]]], align 16
  %l_234 = alloca i16, align 2
  %l_270 = alloca i64*, align 8
  %l_269 = alloca i64**, align 8
  %l_300 = alloca i32, align 4
  %l_327 = alloca i8*, align 8
  %l_339 = alloca i32, align 4
  %l_344 = alloca [8 x [2 x [6 x i32]]], align 16
  %l_345 = alloca i64*, align 8
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_174 = alloca i32, align 4
  %l_182 = alloca [9 x [6 x [4 x i8*]]], align 16
  %l_221 = alloca i32, align 4
  %l_226 = alloca [6 x [1 x i32]], align 16
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %l_151 = alloca i64, align 8
  %l_156 = alloca i64, align 8
  %l_199 = alloca i8*, align 8
  %l_201 = alloca i32, align 4
  %l_209 = alloca i32, align 4
  %l_215 = alloca i32, align 4
  %l_222 = alloca i32, align 4
  %l_225 = alloca i32, align 4
  %l_227 = alloca i32, align 4
  %l_228 = alloca i32, align 4
  %l_229 = alloca i32, align 4
  %l_230 = alloca [8 x [4 x [8 x i32]]], align 16
  %l_233 = alloca i16, align 2
  %i7 = alloca i32, align 4
  %j8 = alloca i32, align 4
  %k9 = alloca i32, align 4
  %l_172 = alloca i16, align 2
  %l_200 = alloca i32, align 4
  %l_218 = alloca [8 x i32], align 16
  %l_264 = alloca i16*, align 8
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_147 = alloca i32*, align 8
  %l_148 = alloca i32*, align 8
  %l_149 = alloca i32*, align 8
  %l_150 = alloca [10 x [8 x [3 x i32*]]], align 16
  %l_161 = alloca i8*, align 8
  %l_175 = alloca [3 x i16], align 2
  %i12 = alloca i32, align 4
  %j13 = alloca i32, align 4
  %k14 = alloca i32, align 4
  %l_202 = alloca i32*, align 8
  %l_203 = alloca i32*, align 8
  %l_204 = alloca i32*, align 8
  %l_205 = alloca i32*, align 8
  %l_206 = alloca i32, align 4
  %l_207 = alloca i32*, align 8
  %l_208 = alloca [10 x [2 x i32*]], align 16
  %l_232 = alloca i8, align 1
  %l_247 = alloca i32*, align 8
  %l_249 = alloca i8**, align 8
  %l_252 = alloca i8*, align 8
  %l_253 = alloca i16*, align 8
  %l_267 = alloca i8*, align 8
  %i15 = alloca i32, align 4
  %j16 = alloca i32, align 4
  %l_271 = alloca [10 x i64***], align 16
  %i17 = alloca i32, align 4
  %5 = alloca i32
  %l_291 = alloca [4 x i8], align 1
  %l_292 = alloca i32, align 4
  %i18 = alloca i32, align 4
  %l_352 = alloca i8, align 1
  %l_353 = alloca i32, align 4
  %l_354 = alloca i32, align 4
  %l_358 = alloca i32, align 4
  %l_347 = alloca i32*, align 8
  %l_348 = alloca i32*, align 8
  %l_349 = alloca i32*, align 8
  %l_350 = alloca i32*, align 8
  %l_351 = alloca [2 x i32*], align 16
  %i21 = alloca i32, align 4
  %l_367 = alloca [2 x i64**], align 16
  %l_368 = alloca [4 x i64**], align 16
  %l_392 = alloca i32, align 4
  %l_428 = alloca i32, align 4
  %l_429 = alloca i32**, align 8
  %l_456 = alloca i64, align 8
  %l_510 = alloca i32, align 4
  %l_519 = alloca i32, align 4
  %l_555 = alloca i32, align 4
  %i23 = alloca i32, align 4
  store i64 %p_105, i64* %2, align 8, !tbaa !7
  store i32 %p_106, i32* %3, align 4, !tbaa !1
  store i8* %p_107, i8** %4, align 8, !tbaa !5
  %6 = bitcast [6 x i16]* %l_126 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %6) #1
  %7 = bitcast [6 x i16]* %l_126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast ([6 x i16]* @func_104.l_126 to i8*), i64 12, i32 2, i1 false)
  %8 = bitcast [7 x [6 x [5 x i8]]]* %l_131 to i8*
  call void @llvm.lifetime.start(i64 210, i8* %8) #1
  %9 = bitcast [7 x [6 x [5 x i8]]]* %l_131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* @func_104.l_131, i32 0, i32 0, i32 0, i32 0), i64 210, i32 16, i1 false)
  %10 = bitcast [8 x i16*]* %l_141 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %10) #1
  %11 = bitcast [8 x i16*]* %l_141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([8 x i16*]* @func_104.l_141 to i8*), i64 64, i32 16, i1 false)
  %12 = bitcast i16*** %l_140 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = getelementptr inbounds [8 x i16*], [8 x i16*]* %l_141, i32 0, i64 2
  store i16** %13, i16*** %l_140, align 8, !tbaa !5
  %14 = bitcast [9 x [1 x [7 x i16*]]]* %l_142 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %14) #1
  %15 = bitcast [9 x [1 x [7 x i16*]]]* %l_142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([9 x [1 x [7 x i16*]]]* @func_104.l_142 to i8*), i64 504, i32 16, i1 false)
  %16 = bitcast i32** %l_143 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), i32** %l_143, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_210) #1
  store i8 1, i8* %l_210, align 1, !tbaa !9
  %17 = bitcast i32* %l_214 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -1, i32* %l_214, align 4, !tbaa !1
  %18 = bitcast i32* %l_216 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -845163836, i32* %l_216, align 4, !tbaa !1
  %19 = bitcast i32* %l_219 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -8, i32* %l_219, align 4, !tbaa !1
  %20 = bitcast i32* %l_220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 7, i32* %l_220, align 4, !tbaa !1
  %21 = bitcast [2 x i32]* %l_231 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %l_235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 -7, i32* %l_235, align 4, !tbaa !1
  %23 = bitcast [5 x [7 x [1 x i16]]]* %l_268 to i8*
  call void @llvm.lifetime.start(i64 70, i8* %23) #1
  %24 = bitcast [5 x [7 x [1 x i16]]]* %l_268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast ([5 x [7 x [1 x i16]]]* @func_104.l_268 to i8*), i64 70, i32 16, i1 false)
  %25 = bitcast [10 x i64*]* %l_365 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %25) #1
  %26 = bitcast [10 x i64*]* %l_365 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast ([10 x i64*]* @func_104.l_365 to i8*), i64 80, i32 16, i1 false)
  %27 = bitcast i64**** %l_420 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i64*** null, i64**** %l_420, align 8, !tbaa !5
  %28 = bitcast i32* %l_421 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 8, i32* %l_421, align 4, !tbaa !1
  %29 = bitcast i16* %l_433 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  store i16 -19107, i16* %l_433, align 2, !tbaa !10
  %30 = bitcast i32* %l_551 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  store i32 1, i32* %l_551, align 4, !tbaa !1
  %31 = bitcast i32* %l_565 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 1, i32* %l_565, align 4, !tbaa !1
  %32 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %35

; <label>:35                                      ; preds = %42, %0
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %45

; <label>:38                                      ; preds = %35
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %l_231, i32 0, i64 %40
  store i32 3, i32* %41, align 4, !tbaa !1
  br label %42

; <label>:42                                      ; preds = %38
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4, !tbaa !1
  br label %35

; <label>:45                                      ; preds = %35
  br label %46

; <label>:46                                      ; preds = %1341, %45
  %47 = load i32, i32* %3, align 4, !tbaa !1
  %48 = load i32*, i32** @g_101, align 8, !tbaa !5
  store i32 %47, i32* %48, align 4, !tbaa !1
  %49 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 3), align 4, !tbaa !1
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [6 x i16], [6 x i16]* %l_126, i32 0, i64 4
  %52 = load i16, i16* %51, align 2, !tbaa !10
  %53 = zext i16 %52 to i64
  %54 = getelementptr inbounds [6 x i16], [6 x i16]* %l_126, i32 0, i64 4
  %55 = load i16, i16* %54, align 2, !tbaa !10
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds [6 x i16], [6 x i16]* %l_126, i32 0, i64 0
  %58 = load i16, i16* %57, align 2, !tbaa !10
  %59 = zext i16 %58 to i32
  %60 = xor i32 %56, %59
  %61 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %62 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %61, i32 0, i64 1
  %63 = getelementptr inbounds [5 x i8], [5 x i8]* %62, i32 0, i64 3
  %64 = load i8, i8* %63, align 1, !tbaa !9
  %65 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 2
  %66 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %65, i32 0, i64 0
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %66, i32 0, i64 0
  %68 = load i8, i8* %67, align 1, !tbaa !9
  %69 = sext i8 %68 to i32
  %70 = load i16**, i16*** %l_140, align 8, !tbaa !5
  store i16* @g_97, i16** %70, align 8, !tbaa !5
  %71 = getelementptr inbounds [9 x [1 x [7 x i16*]]], [9 x [1 x [7 x i16*]]]* %l_142, i32 0, i64 6
  %72 = getelementptr inbounds [1 x [7 x i16*]], [1 x [7 x i16*]]* %71, i32 0, i64 0
  %73 = getelementptr inbounds [7 x i16*], [7 x i16*]* %72, i32 0, i64 3
  %74 = load i16*, i16** %73, align 8, !tbaa !5
  %75 = icmp eq i16* @g_97, %74
  %76 = zext i1 %75 to i32
  %77 = load i32*, i32** %l_143, align 8, !tbaa !5
  %78 = bitcast i32* %77 to i8*
  %79 = icmp eq i8* null, %78
  %80 = zext i1 %79 to i32
  %81 = trunc i32 %80 to i16
  %82 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %81, i16 zeroext 0)
  %83 = trunc i16 %82 to i8
  %84 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %85 = trunc i32 %84 to i8
  %86 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %83, i8 zeroext %85)
  %87 = zext i8 %86 to i64
  %88 = load i32, i32* @g_102, align 4, !tbaa !1
  %89 = sext i32 %88 to i64
  %90 = call i64 @safe_sub_func_uint64_t_u_u(i64 %87, i64 %89)
  %91 = trunc i64 %90 to i8
  %92 = load i8, i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 3, i64 5, i64 3), align 1, !tbaa !9
  %93 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %91, i8 zeroext %92)
  %94 = zext i8 %93 to i32
  %95 = load i32, i32* @g_102, align 4, !tbaa !1
  %96 = icmp sle i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = icmp ne i32 %69, %97
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %l_143, align 8, !tbaa !5
  %101 = load i32, i32* %100, align 4, !tbaa !1
  %102 = or i32 %99, %101
  %103 = load i32*, i32** @g_101, align 8, !tbaa !5
  %104 = load i32, i32* %103, align 4, !tbaa !1
  %105 = icmp sle i32 %102, %104
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = and i64 6, %107
  %109 = load i32, i32* %3, align 4, !tbaa !1
  %110 = zext i32 %109 to i64
  %111 = and i64 %108, %110
  %112 = load i32*, i32** %l_143, align 8, !tbaa !5
  %113 = load i32, i32* %112, align 4, !tbaa !1
  %114 = sext i32 %113 to i64
  %115 = xor i64 %111, %114
  %116 = trunc i64 %115 to i16
  %117 = load i8, i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 3, i64 5, i64 3), align 1, !tbaa !9
  %118 = zext i8 %117 to i32
  %119 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %116, i32 %118)
  %120 = sext i16 %119 to i32
  %121 = icmp sge i32 %60, %120
  %122 = zext i1 %121 to i32
  %123 = load i32*, i32** %l_143, align 8, !tbaa !5
  %124 = load i32, i32* %123, align 4, !tbaa !1
  %125 = icmp eq i32 %122, %124
  %126 = zext i1 %125 to i32
  %127 = trunc i32 %126 to i8
  %128 = load i16, i16* @g_97, align 2, !tbaa !10
  %129 = trunc i16 %128 to i8
  %130 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %127, i8 zeroext %129)
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

; <label>:133                                     ; preds = %46
  %134 = load i32, i32* @g_2, align 4, !tbaa !1
  %135 = icmp ne i32 %134, 0
  br label %136

; <label>:136                                     ; preds = %133, %46
  %137 = phi i1 [ false, %46 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  %139 = sext i32 %138 to i64
  %140 = call i64 @safe_mod_func_uint64_t_u_u(i64 %53, i64 %139)
  %141 = trunc i64 %140 to i8
  %142 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %50, i8 zeroext %141)
  %143 = load i32, i32* %3, align 4, !tbaa !1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %1356

; <label>:145                                     ; preds = %136
  %146 = bitcast i64* %l_173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  store i64 0, i64* %l_173, align 8, !tbaa !7
  %147 = bitcast [2 x [7 x [4 x i32]]]* %l_213 to i8*
  call void @llvm.lifetime.start(i64 224, i8* %147) #1
  %148 = bitcast [2 x [7 x [4 x i32]]]* %l_213 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* bitcast ([2 x [7 x [4 x i32]]]* @func_104.l_213 to i8*), i64 224, i32 16, i1 false)
  %149 = bitcast i16* %l_234 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %149) #1
  store i16 -17500, i16* %l_234, align 2, !tbaa !10
  %150 = bitcast i64** %l_270 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #1
  store i64* @g_45, i64** %l_270, align 8, !tbaa !5
  %151 = bitcast i64*** %l_269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %151) #1
  store i64** %l_270, i64*** %l_269, align 8, !tbaa !5
  %152 = bitcast i32* %l_300 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #1
  store i32 -2127588596, i32* %l_300, align 4, !tbaa !1
  %153 = bitcast i8** %l_327 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %153) #1
  %154 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %155 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %154, i32 0, i64 1
  %156 = getelementptr inbounds [5 x i8], [5 x i8]* %155, i32 0, i64 3
  store i8* %156, i8** %l_327, align 8, !tbaa !5
  %157 = bitcast i32* %l_339 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #1
  store i32 0, i32* %l_339, align 4, !tbaa !1
  %158 = bitcast [8 x [2 x [6 x i32]]]* %l_344 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %158) #1
  %159 = bitcast i64** %l_345 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %159) #1
  store i64* @g_346, i64** %l_345, align 8, !tbaa !5
  %160 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %160) #1
  %161 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %163

; <label>:163                                     ; preds = %192, %145
  %164 = load i32, i32* %i1, align 4, !tbaa !1
  %165 = icmp slt i32 %164, 8
  br i1 %165, label %166, label %195

; <label>:166                                     ; preds = %163
  store i32 0, i32* %j2, align 4, !tbaa !1
  br label %167

; <label>:167                                     ; preds = %188, %166
  %168 = load i32, i32* %j2, align 4, !tbaa !1
  %169 = icmp slt i32 %168, 2
  br i1 %169, label %170, label %191

; <label>:170                                     ; preds = %167
  store i32 0, i32* %k3, align 4, !tbaa !1
  br label %171

; <label>:171                                     ; preds = %184, %170
  %172 = load i32, i32* %k3, align 4, !tbaa !1
  %173 = icmp slt i32 %172, 6
  br i1 %173, label %174, label %187

; <label>:174                                     ; preds = %171
  %175 = load i32, i32* %k3, align 4, !tbaa !1
  %176 = sext i32 %175 to i64
  %177 = load i32, i32* %j2, align 4, !tbaa !1
  %178 = sext i32 %177 to i64
  %179 = load i32, i32* %i1, align 4, !tbaa !1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x [2 x [6 x i32]]], [8 x [2 x [6 x i32]]]* %l_344, i32 0, i64 %180
  %182 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %181, i32 0, i64 %178
  %183 = getelementptr inbounds [6 x i32], [6 x i32]* %182, i32 0, i64 %176
  store i32 -1122996962, i32* %183, align 4, !tbaa !1
  br label %184

; <label>:184                                     ; preds = %174
  %185 = load i32, i32* %k3, align 4, !tbaa !1
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %k3, align 4, !tbaa !1
  br label %171

; <label>:187                                     ; preds = %171
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %j2, align 4, !tbaa !1
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %j2, align 4, !tbaa !1
  br label %167

; <label>:191                                     ; preds = %167
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %i1, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %i1, align 4, !tbaa !1
  br label %163

; <label>:195                                     ; preds = %163
  store i32 0, i32* @g_83, align 4, !tbaa !1
  br label %196

; <label>:196                                     ; preds = %1248, %195
  %197 = load i32, i32* @g_83, align 4, !tbaa !1
  %198 = icmp slt i32 %197, 22
  br i1 %198, label %199, label %1251

; <label>:199                                     ; preds = %196
  %200 = bitcast i32* %l_174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %200) #1
  store i32 0, i32* %l_174, align 4, !tbaa !1
  %201 = bitcast [9 x [6 x [4 x i8*]]]* %l_182 to i8*
  call void @llvm.lifetime.start(i64 1728, i8* %201) #1
  %202 = getelementptr inbounds [9 x [6 x [4 x i8*]]], [9 x [6 x [4 x i8*]]]* %l_182, i64 0, i64 0
  %203 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %202, i64 0, i64 0
  %204 = bitcast [4 x i8*]* %203 to i8*
  call void @llvm.memset.p0i8.i64(i8* %204, i8 0, i64 32, i32 8, i1 false)
  %205 = getelementptr inbounds [4 x i8*], [4 x i8*]* %203, i64 0, i64 0
  %206 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %207 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %206, i32 0, i64 1
  %208 = getelementptr inbounds [5 x i8], [5 x i8]* %207, i32 0, i64 3
  store i8* %208, i8** %205, !tbaa !5
  %209 = getelementptr inbounds i8*, i8** %205, i64 1
  %210 = getelementptr inbounds i8*, i8** %209, i64 1
  %211 = getelementptr inbounds i8*, i8** %210, i64 1
  %212 = getelementptr inbounds [4 x i8*], [4 x i8*]* %203, i64 1
  %213 = getelementptr inbounds [4 x i8*], [4 x i8*]* %212, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %213, !tbaa !5
  %214 = getelementptr inbounds i8*, i8** %213, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %214, !tbaa !5
  %215 = getelementptr inbounds i8*, i8** %214, i64 1
  %216 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %217 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %216, i32 0, i64 5
  %218 = getelementptr inbounds [5 x i8], [5 x i8]* %217, i32 0, i64 4
  store i8* %218, i8** %215, !tbaa !5
  %219 = getelementptr inbounds i8*, i8** %215, i64 1
  %220 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %221 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %220, i32 0, i64 1
  %222 = getelementptr inbounds [5 x i8], [5 x i8]* %221, i32 0, i64 0
  store i8* %222, i8** %219, !tbaa !5
  %223 = getelementptr inbounds [4 x i8*], [4 x i8*]* %212, i64 1
  %224 = getelementptr inbounds [4 x i8*], [4 x i8*]* %223, i64 0, i64 0
  %225 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %226 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %225, i32 0, i64 5
  %227 = getelementptr inbounds [5 x i8], [5 x i8]* %226, i32 0, i64 4
  store i8* %227, i8** %224, !tbaa !5
  %228 = getelementptr inbounds i8*, i8** %224, i64 1
  %229 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %230 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %229, i32 0, i64 1
  %231 = getelementptr inbounds [5 x i8], [5 x i8]* %230, i32 0, i64 0
  store i8* %231, i8** %228, !tbaa !5
  %232 = getelementptr inbounds i8*, i8** %228, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %232, !tbaa !5
  %233 = getelementptr inbounds i8*, i8** %232, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %233, !tbaa !5
  %234 = getelementptr inbounds [4 x i8*], [4 x i8*]* %223, i64 1
  %235 = getelementptr inbounds [4 x i8*], [4 x i8*]* %234, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %235, !tbaa !5
  %236 = getelementptr inbounds i8*, i8** %235, i64 1
  store i8* null, i8** %236, !tbaa !5
  %237 = getelementptr inbounds i8*, i8** %236, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %237, !tbaa !5
  %238 = getelementptr inbounds i8*, i8** %237, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %238, !tbaa !5
  %239 = getelementptr inbounds [4 x i8*], [4 x i8*]* %234, i64 1
  %240 = getelementptr inbounds [4 x i8*], [4 x i8*]* %239, i64 0, i64 0
  %241 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %242 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %241, i32 0, i64 5
  %243 = getelementptr inbounds [5 x i8], [5 x i8]* %242, i32 0, i64 3
  store i8* %243, i8** %240, !tbaa !5
  %244 = getelementptr inbounds i8*, i8** %240, i64 1
  store i8* null, i8** %244, !tbaa !5
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %245, !tbaa !5
  %246 = getelementptr inbounds i8*, i8** %245, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %246, !tbaa !5
  %247 = getelementptr inbounds [4 x i8*], [4 x i8*]* %239, i64 1
  %248 = getelementptr inbounds [4 x i8*], [4 x i8*]* %247, i64 0, i64 0
  store i8* null, i8** %248, !tbaa !5
  %249 = getelementptr inbounds i8*, i8** %248, i64 1
  %250 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %251 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %250, i32 0, i64 1
  %252 = getelementptr inbounds [5 x i8], [5 x i8]* %251, i32 0, i64 0
  store i8* %252, i8** %249, !tbaa !5
  %253 = getelementptr inbounds i8*, i8** %249, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %253, !tbaa !5
  %254 = getelementptr inbounds i8*, i8** %253, i64 1
  %255 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %256 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %255, i32 0, i64 1
  %257 = getelementptr inbounds [5 x i8], [5 x i8]* %256, i32 0, i64 0
  store i8* %257, i8** %254, !tbaa !5
  %258 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %202, i64 1
  %259 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %258, i64 0, i64 0
  %260 = getelementptr inbounds [4 x i8*], [4 x i8*]* %259, i64 0, i64 0
  store i8* null, i8** %260, !tbaa !5
  %261 = getelementptr inbounds i8*, i8** %260, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %261, !tbaa !5
  %262 = getelementptr inbounds i8*, i8** %261, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %262, !tbaa !5
  %263 = getelementptr inbounds i8*, i8** %262, i64 1
  store i8* null, i8** %263, !tbaa !5
  %264 = getelementptr inbounds [4 x i8*], [4 x i8*]* %259, i64 1
  %265 = getelementptr inbounds [4 x i8*], [4 x i8*]* %264, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %265, !tbaa !5
  %266 = getelementptr inbounds i8*, i8** %265, i64 1
  store i8* null, i8** %266, !tbaa !5
  %267 = getelementptr inbounds i8*, i8** %266, i64 1
  %268 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %269 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %268, i32 0, i64 5
  %270 = getelementptr inbounds [5 x i8], [5 x i8]* %269, i32 0, i64 1
  store i8* %270, i8** %267, !tbaa !5
  %271 = getelementptr inbounds i8*, i8** %267, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 0), i8** %271, !tbaa !5
  %272 = getelementptr inbounds [4 x i8*], [4 x i8*]* %264, i64 1
  %273 = getelementptr inbounds [4 x i8*], [4 x i8*]* %272, i64 0, i64 0
  store i8* null, i8** %273, !tbaa !5
  %274 = getelementptr inbounds i8*, i8** %273, i64 1
  %275 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %276 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %275, i32 0, i64 5
  %277 = getelementptr inbounds [5 x i8], [5 x i8]* %276, i32 0, i64 1
  store i8* %277, i8** %274, !tbaa !5
  %278 = getelementptr inbounds i8*, i8** %274, i64 1
  store i8* null, i8** %278, !tbaa !5
  %279 = getelementptr inbounds i8*, i8** %278, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %279, !tbaa !5
  %280 = getelementptr inbounds [4 x i8*], [4 x i8*]* %272, i64 1
  %281 = getelementptr inbounds [4 x i8*], [4 x i8*]* %280, i64 0, i64 0
  store i8* null, i8** %281, !tbaa !5
  %282 = getelementptr inbounds i8*, i8** %281, i64 1
  %283 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %284 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %283, i32 0, i64 5
  %285 = getelementptr inbounds [5 x i8], [5 x i8]* %284, i32 0, i64 4
  store i8* %285, i8** %282, !tbaa !5
  %286 = getelementptr inbounds i8*, i8** %282, i64 1
  %287 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %288 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %287, i32 0, i64 5
  %289 = getelementptr inbounds [5 x i8], [5 x i8]* %288, i32 0, i64 1
  store i8* %289, i8** %286, !tbaa !5
  %290 = getelementptr inbounds i8*, i8** %286, i64 1
  %291 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %292 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %291, i32 0, i64 5
  %293 = getelementptr inbounds [5 x i8], [5 x i8]* %292, i32 0, i64 3
  store i8* %293, i8** %290, !tbaa !5
  %294 = getelementptr inbounds [4 x i8*], [4 x i8*]* %280, i64 1
  %295 = getelementptr inbounds [4 x i8*], [4 x i8*]* %294, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %295, !tbaa !5
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %296, !tbaa !5
  %297 = getelementptr inbounds i8*, i8** %296, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %297, !tbaa !5
  %298 = getelementptr inbounds i8*, i8** %297, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %298, !tbaa !5
  %299 = getelementptr inbounds [4 x i8*], [4 x i8*]* %294, i64 1
  %300 = getelementptr inbounds [4 x i8*], [4 x i8*]* %299, i64 0, i64 0
  store i8* null, i8** %300, !tbaa !5
  %301 = getelementptr inbounds i8*, i8** %300, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %301, !tbaa !5
  %302 = getelementptr inbounds i8*, i8** %301, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %302, !tbaa !5
  %303 = getelementptr inbounds i8*, i8** %302, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %303, !tbaa !5
  %304 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %258, i64 1
  %305 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %304, i64 0, i64 0
  %306 = getelementptr inbounds [4 x i8*], [4 x i8*]* %305, i64 0, i64 0
  store i8* null, i8** %306, !tbaa !5
  %307 = getelementptr inbounds i8*, i8** %306, i64 1
  %308 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %309 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %308, i32 0, i64 5
  %310 = getelementptr inbounds [5 x i8], [5 x i8]* %309, i32 0, i64 3
  store i8* %310, i8** %307, !tbaa !5
  %311 = getelementptr inbounds i8*, i8** %307, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %311, !tbaa !5
  %312 = getelementptr inbounds i8*, i8** %311, i64 1
  %313 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %314 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %313, i32 0, i64 1
  %315 = getelementptr inbounds [5 x i8], [5 x i8]* %314, i32 0, i64 3
  store i8* %315, i8** %312, !tbaa !5
  %316 = getelementptr inbounds [4 x i8*], [4 x i8*]* %305, i64 1
  %317 = getelementptr inbounds [4 x i8*], [4 x i8*]* %316, i64 0, i64 0
  %318 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %319 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %318, i32 0, i64 5
  %320 = getelementptr inbounds [5 x i8], [5 x i8]* %319, i32 0, i64 3
  store i8* %320, i8** %317, !tbaa !5
  %321 = getelementptr inbounds i8*, i8** %317, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 0), i8** %321, !tbaa !5
  %322 = getelementptr inbounds i8*, i8** %321, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %322, !tbaa !5
  %323 = getelementptr inbounds i8*, i8** %322, i64 1
  %324 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %325 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %324, i32 0, i64 1
  %326 = getelementptr inbounds [5 x i8], [5 x i8]* %325, i32 0, i64 3
  store i8* %326, i8** %323, !tbaa !5
  %327 = getelementptr inbounds [4 x i8*], [4 x i8*]* %316, i64 1
  %328 = getelementptr inbounds [4 x i8*], [4 x i8*]* %327, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %328, !tbaa !5
  %329 = getelementptr inbounds i8*, i8** %328, i64 1
  %330 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %331 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %330, i32 0, i64 5
  %332 = getelementptr inbounds [5 x i8], [5 x i8]* %331, i32 0, i64 3
  store i8* %332, i8** %329, !tbaa !5
  %333 = getelementptr inbounds i8*, i8** %329, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %333, !tbaa !5
  %334 = getelementptr inbounds i8*, i8** %333, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %334, !tbaa !5
  %335 = getelementptr inbounds [4 x i8*], [4 x i8*]* %327, i64 1
  %336 = getelementptr inbounds [4 x i8*], [4 x i8*]* %335, i64 0, i64 0
  %337 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %338 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %337, i32 0, i64 5
  %339 = getelementptr inbounds [5 x i8], [5 x i8]* %338, i32 0, i64 4
  store i8* %339, i8** %336, !tbaa !5
  %340 = getelementptr inbounds i8*, i8** %336, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %340, !tbaa !5
  %341 = getelementptr inbounds i8*, i8** %340, i64 1
  %342 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %343 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %342, i32 0, i64 5
  %344 = getelementptr inbounds [5 x i8], [5 x i8]* %343, i32 0, i64 4
  store i8* %344, i8** %341, !tbaa !5
  %345 = getelementptr inbounds i8*, i8** %341, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %345, !tbaa !5
  %346 = getelementptr inbounds [4 x i8*], [4 x i8*]* %335, i64 1
  %347 = getelementptr inbounds [4 x i8*], [4 x i8*]* %346, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %347, !tbaa !5
  %348 = getelementptr inbounds i8*, i8** %347, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %348, !tbaa !5
  %349 = getelementptr inbounds i8*, i8** %348, i64 1
  store i8* null, i8** %349, !tbaa !5
  %350 = getelementptr inbounds i8*, i8** %349, i64 1
  %351 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %352 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %351, i32 0, i64 5
  %353 = getelementptr inbounds [5 x i8], [5 x i8]* %352, i32 0, i64 3
  store i8* %353, i8** %350, !tbaa !5
  %354 = getelementptr inbounds [4 x i8*], [4 x i8*]* %346, i64 1
  %355 = getelementptr inbounds [4 x i8*], [4 x i8*]* %354, i64 0, i64 0
  %356 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %357 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %356, i32 0, i64 1
  %358 = getelementptr inbounds [5 x i8], [5 x i8]* %357, i32 0, i64 3
  store i8* %358, i8** %355, !tbaa !5
  %359 = getelementptr inbounds i8*, i8** %355, i64 1
  %360 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %361 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %360, i32 0, i64 5
  %362 = getelementptr inbounds [5 x i8], [5 x i8]* %361, i32 0, i64 4
  store i8* %362, i8** %359, !tbaa !5
  %363 = getelementptr inbounds i8*, i8** %359, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %363, !tbaa !5
  %364 = getelementptr inbounds i8*, i8** %363, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %364, !tbaa !5
  %365 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %304, i64 1
  %366 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %365, i64 0, i64 0
  %367 = getelementptr inbounds [4 x i8*], [4 x i8*]* %366, i64 0, i64 0
  %368 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %369 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %368, i32 0, i64 1
  %370 = getelementptr inbounds [5 x i8], [5 x i8]* %369, i32 0, i64 0
  store i8* %370, i8** %367, !tbaa !5
  %371 = getelementptr inbounds i8*, i8** %367, i64 1
  %372 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %373 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %372, i32 0, i64 5
  %374 = getelementptr inbounds [5 x i8], [5 x i8]* %373, i32 0, i64 1
  store i8* %374, i8** %371, !tbaa !5
  %375 = getelementptr inbounds i8*, i8** %371, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %375, !tbaa !5
  %376 = getelementptr inbounds i8*, i8** %375, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 0), i8** %376, !tbaa !5
  %377 = getelementptr inbounds [4 x i8*], [4 x i8*]* %366, i64 1
  %378 = bitcast [4 x i8*]* %377 to i8*
  call void @llvm.memset.p0i8.i64(i8* %378, i8 0, i64 32, i32 8, i1 false)
  %379 = getelementptr inbounds [4 x i8*], [4 x i8*]* %377, i64 0, i64 0
  %380 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %381 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %380, i32 0, i64 1
  %382 = getelementptr inbounds [5 x i8], [5 x i8]* %381, i32 0, i64 3
  store i8* %382, i8** %379, !tbaa !5
  %383 = getelementptr inbounds i8*, i8** %379, i64 1
  %384 = getelementptr inbounds i8*, i8** %383, i64 1
  %385 = getelementptr inbounds i8*, i8** %384, i64 1
  %386 = getelementptr inbounds [4 x i8*], [4 x i8*]* %377, i64 1
  %387 = getelementptr inbounds [4 x i8*], [4 x i8*]* %386, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %387, !tbaa !5
  %388 = getelementptr inbounds i8*, i8** %387, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %388, !tbaa !5
  %389 = getelementptr inbounds i8*, i8** %388, i64 1
  %390 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %391 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %390, i32 0, i64 5
  %392 = getelementptr inbounds [5 x i8], [5 x i8]* %391, i32 0, i64 4
  store i8* %392, i8** %389, !tbaa !5
  %393 = getelementptr inbounds i8*, i8** %389, i64 1
  %394 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %395 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %394, i32 0, i64 1
  %396 = getelementptr inbounds [5 x i8], [5 x i8]* %395, i32 0, i64 0
  store i8* %396, i8** %393, !tbaa !5
  %397 = getelementptr inbounds [4 x i8*], [4 x i8*]* %386, i64 1
  %398 = getelementptr inbounds [4 x i8*], [4 x i8*]* %397, i64 0, i64 0
  %399 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %400 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %399, i32 0, i64 5
  %401 = getelementptr inbounds [5 x i8], [5 x i8]* %400, i32 0, i64 4
  store i8* %401, i8** %398, !tbaa !5
  %402 = getelementptr inbounds i8*, i8** %398, i64 1
  %403 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %404 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %403, i32 0, i64 1
  %405 = getelementptr inbounds [5 x i8], [5 x i8]* %404, i32 0, i64 0
  store i8* %405, i8** %402, !tbaa !5
  %406 = getelementptr inbounds i8*, i8** %402, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %406, !tbaa !5
  %407 = getelementptr inbounds i8*, i8** %406, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %407, !tbaa !5
  %408 = getelementptr inbounds [4 x i8*], [4 x i8*]* %397, i64 1
  %409 = getelementptr inbounds [4 x i8*], [4 x i8*]* %408, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %409, !tbaa !5
  %410 = getelementptr inbounds i8*, i8** %409, i64 1
  store i8* null, i8** %410, !tbaa !5
  %411 = getelementptr inbounds i8*, i8** %410, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %411, !tbaa !5
  %412 = getelementptr inbounds i8*, i8** %411, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %412, !tbaa !5
  %413 = getelementptr inbounds [4 x i8*], [4 x i8*]* %408, i64 1
  %414 = getelementptr inbounds [4 x i8*], [4 x i8*]* %413, i64 0, i64 0
  %415 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %416 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %415, i32 0, i64 5
  %417 = getelementptr inbounds [5 x i8], [5 x i8]* %416, i32 0, i64 3
  store i8* %417, i8** %414, !tbaa !5
  %418 = getelementptr inbounds i8*, i8** %414, i64 1
  store i8* null, i8** %418, !tbaa !5
  %419 = getelementptr inbounds i8*, i8** %418, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %419, !tbaa !5
  %420 = getelementptr inbounds i8*, i8** %419, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %420, !tbaa !5
  %421 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %365, i64 1
  %422 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %421, i64 0, i64 0
  %423 = getelementptr inbounds [4 x i8*], [4 x i8*]* %422, i64 0, i64 0
  store i8* null, i8** %423, !tbaa !5
  %424 = getelementptr inbounds i8*, i8** %423, i64 1
  %425 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %426 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %425, i32 0, i64 1
  %427 = getelementptr inbounds [5 x i8], [5 x i8]* %426, i32 0, i64 0
  store i8* %427, i8** %424, !tbaa !5
  %428 = getelementptr inbounds i8*, i8** %424, i64 1
  %429 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %430 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %429, i32 0, i64 5
  %431 = getelementptr inbounds [5 x i8], [5 x i8]* %430, i32 0, i64 4
  store i8* %431, i8** %428, !tbaa !5
  %432 = getelementptr inbounds i8*, i8** %428, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %432, !tbaa !5
  %433 = getelementptr inbounds [4 x i8*], [4 x i8*]* %422, i64 1
  %434 = getelementptr inbounds [4 x i8*], [4 x i8*]* %433, i64 0, i64 0
  %435 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %436 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %435, i32 0, i64 5
  %437 = getelementptr inbounds [5 x i8], [5 x i8]* %436, i32 0, i64 3
  store i8* %437, i8** %434, !tbaa !5
  %438 = getelementptr inbounds i8*, i8** %434, i64 1
  %439 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %440 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %439, i32 0, i64 5
  %441 = getelementptr inbounds [5 x i8], [5 x i8]* %440, i32 0, i64 3
  store i8* %441, i8** %438, !tbaa !5
  %442 = getelementptr inbounds i8*, i8** %438, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %442, !tbaa !5
  %443 = getelementptr inbounds i8*, i8** %442, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %443, !tbaa !5
  %444 = getelementptr inbounds [4 x i8*], [4 x i8*]* %433, i64 1
  %445 = getelementptr inbounds [4 x i8*], [4 x i8*]* %444, i64 0, i64 0
  %446 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %447 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %446, i32 0, i64 5
  %448 = getelementptr inbounds [5 x i8], [5 x i8]* %447, i32 0, i64 4
  store i8* %448, i8** %445, !tbaa !5
  %449 = getelementptr inbounds i8*, i8** %445, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 0), i8** %449, !tbaa !5
  %450 = getelementptr inbounds i8*, i8** %449, i64 1
  %451 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %452 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %451, i32 0, i64 1
  %453 = getelementptr inbounds [5 x i8], [5 x i8]* %452, i32 0, i64 3
  store i8* %453, i8** %450, !tbaa !5
  %454 = getelementptr inbounds i8*, i8** %450, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %454, !tbaa !5
  %455 = getelementptr inbounds [4 x i8*], [4 x i8*]* %444, i64 1
  %456 = getelementptr inbounds [4 x i8*], [4 x i8*]* %455, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %456, !tbaa !5
  %457 = getelementptr inbounds i8*, i8** %456, i64 1
  %458 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %459 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %458, i32 0, i64 1
  %460 = getelementptr inbounds [5 x i8], [5 x i8]* %459, i32 0, i64 3
  store i8* %460, i8** %457, !tbaa !5
  %461 = getelementptr inbounds i8*, i8** %457, i64 1
  %462 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %463 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %462, i32 0, i64 1
  %464 = getelementptr inbounds [5 x i8], [5 x i8]* %463, i32 0, i64 0
  store i8* %464, i8** %461, !tbaa !5
  %465 = getelementptr inbounds i8*, i8** %461, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %465, !tbaa !5
  %466 = getelementptr inbounds [4 x i8*], [4 x i8*]* %455, i64 1
  %467 = getelementptr inbounds [4 x i8*], [4 x i8*]* %466, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %467, !tbaa !5
  %468 = getelementptr inbounds i8*, i8** %467, i64 1
  store i8* null, i8** %468, !tbaa !5
  %469 = getelementptr inbounds i8*, i8** %468, i64 1
  %470 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %471 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %470, i32 0, i64 1
  %472 = getelementptr inbounds [5 x i8], [5 x i8]* %471, i32 0, i64 3
  store i8* %472, i8** %469, !tbaa !5
  %473 = getelementptr inbounds i8*, i8** %469, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %473, !tbaa !5
  %474 = getelementptr inbounds [4 x i8*], [4 x i8*]* %466, i64 1
  %475 = getelementptr inbounds [4 x i8*], [4 x i8*]* %474, i64 0, i64 0
  %476 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %477 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %476, i32 0, i64 5
  %478 = getelementptr inbounds [5 x i8], [5 x i8]* %477, i32 0, i64 4
  store i8* %478, i8** %475, !tbaa !5
  %479 = getelementptr inbounds i8*, i8** %475, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %479, !tbaa !5
  %480 = getelementptr inbounds i8*, i8** %479, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %480, !tbaa !5
  %481 = getelementptr inbounds i8*, i8** %480, i64 1
  %482 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %483 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %482, i32 0, i64 5
  %484 = getelementptr inbounds [5 x i8], [5 x i8]* %483, i32 0, i64 4
  store i8* %484, i8** %481, !tbaa !5
  %485 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %421, i64 1
  %486 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %485, i64 0, i64 0
  %487 = getelementptr inbounds [4 x i8*], [4 x i8*]* %486, i64 0, i64 0
  %488 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %489 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %488, i32 0, i64 5
  %490 = getelementptr inbounds [5 x i8], [5 x i8]* %489, i32 0, i64 3
  store i8* %490, i8** %487, !tbaa !5
  %491 = getelementptr inbounds i8*, i8** %487, i64 1
  %492 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %493 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %492, i32 0, i64 5
  %494 = getelementptr inbounds [5 x i8], [5 x i8]* %493, i32 0, i64 1
  store i8* %494, i8** %491, !tbaa !5
  %495 = getelementptr inbounds i8*, i8** %491, i64 1
  %496 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %497 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %496, i32 0, i64 5
  %498 = getelementptr inbounds [5 x i8], [5 x i8]* %497, i32 0, i64 4
  store i8* %498, i8** %495, !tbaa !5
  %499 = getelementptr inbounds i8*, i8** %495, i64 1
  store i8* null, i8** %499, !tbaa !5
  %500 = getelementptr inbounds [4 x i8*], [4 x i8*]* %486, i64 1
  %501 = getelementptr inbounds [4 x i8*], [4 x i8*]* %500, i64 0, i64 0
  %502 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %503 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %502, i32 0, i64 1
  %504 = getelementptr inbounds [5 x i8], [5 x i8]* %503, i32 0, i64 0
  store i8* %504, i8** %501, !tbaa !5
  %505 = getelementptr inbounds i8*, i8** %501, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %505, !tbaa !5
  %506 = getelementptr inbounds i8*, i8** %505, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %506, !tbaa !5
  %507 = getelementptr inbounds i8*, i8** %506, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %507, !tbaa !5
  %508 = getelementptr inbounds [4 x i8*], [4 x i8*]* %500, i64 1
  %509 = getelementptr inbounds [4 x i8*], [4 x i8*]* %508, i64 0, i64 0
  store i8* null, i8** %509, !tbaa !5
  %510 = getelementptr inbounds i8*, i8** %509, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %510, !tbaa !5
  %511 = getelementptr inbounds i8*, i8** %510, i64 1
  %512 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %513 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %512, i32 0, i64 5
  %514 = getelementptr inbounds [5 x i8], [5 x i8]* %513, i32 0, i64 3
  store i8* %514, i8** %511, !tbaa !5
  %515 = getelementptr inbounds i8*, i8** %511, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %515, !tbaa !5
  %516 = getelementptr inbounds [4 x i8*], [4 x i8*]* %508, i64 1
  %517 = getelementptr inbounds [4 x i8*], [4 x i8*]* %516, i64 0, i64 0
  %518 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %519 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %518, i32 0, i64 5
  %520 = getelementptr inbounds [5 x i8], [5 x i8]* %519, i32 0, i64 1
  store i8* %520, i8** %517, !tbaa !5
  %521 = getelementptr inbounds i8*, i8** %517, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %521, !tbaa !5
  %522 = getelementptr inbounds i8*, i8** %521, i64 1
  store i8* null, i8** %522, !tbaa !5
  %523 = getelementptr inbounds i8*, i8** %522, i64 1
  store i8* null, i8** %523, !tbaa !5
  %524 = getelementptr inbounds [4 x i8*], [4 x i8*]* %516, i64 1
  %525 = getelementptr inbounds [4 x i8*], [4 x i8*]* %524, i64 0, i64 0
  store i8* null, i8** %525, !tbaa !5
  %526 = getelementptr inbounds i8*, i8** %525, i64 1
  %527 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %528 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %527, i32 0, i64 5
  %529 = getelementptr inbounds [5 x i8], [5 x i8]* %528, i32 0, i64 1
  store i8* %529, i8** %526, !tbaa !5
  %530 = getelementptr inbounds i8*, i8** %526, i64 1
  store i8* null, i8** %530, !tbaa !5
  %531 = getelementptr inbounds i8*, i8** %530, i64 1
  %532 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %533 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %532, i32 0, i64 5
  %534 = getelementptr inbounds [5 x i8], [5 x i8]* %533, i32 0, i64 4
  store i8* %534, i8** %531, !tbaa !5
  %535 = getelementptr inbounds [4 x i8*], [4 x i8*]* %524, i64 1
  %536 = getelementptr inbounds [4 x i8*], [4 x i8*]* %535, i64 0, i64 0
  %537 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %538 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %537, i32 0, i64 5
  %539 = getelementptr inbounds [5 x i8], [5 x i8]* %538, i32 0, i64 3
  store i8* %539, i8** %536, !tbaa !5
  %540 = getelementptr inbounds i8*, i8** %536, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %540, !tbaa !5
  %541 = getelementptr inbounds i8*, i8** %540, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %541, !tbaa !5
  %542 = getelementptr inbounds i8*, i8** %541, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %542, !tbaa !5
  %543 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %485, i64 1
  %544 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %543, i64 0, i64 0
  %545 = getelementptr inbounds [4 x i8*], [4 x i8*]* %544, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %545, !tbaa !5
  %546 = getelementptr inbounds i8*, i8** %545, i64 1
  store i8* null, i8** %546, !tbaa !5
  %547 = getelementptr inbounds i8*, i8** %546, i64 1
  store i8* null, i8** %547, !tbaa !5
  %548 = getelementptr inbounds i8*, i8** %547, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %548, !tbaa !5
  %549 = getelementptr inbounds [4 x i8*], [4 x i8*]* %544, i64 1
  %550 = getelementptr inbounds [4 x i8*], [4 x i8*]* %549, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %550, !tbaa !5
  %551 = getelementptr inbounds i8*, i8** %550, i64 1
  %552 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %553 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %552, i32 0, i64 1
  %554 = getelementptr inbounds [5 x i8], [5 x i8]* %553, i32 0, i64 3
  store i8* %554, i8** %551, !tbaa !5
  %555 = getelementptr inbounds i8*, i8** %551, i64 1
  store i8* null, i8** %555, !tbaa !5
  %556 = getelementptr inbounds i8*, i8** %555, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %556, !tbaa !5
  %557 = getelementptr inbounds [4 x i8*], [4 x i8*]* %549, i64 1
  %558 = getelementptr inbounds [4 x i8*], [4 x i8*]* %557, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %558, !tbaa !5
  %559 = getelementptr inbounds i8*, i8** %558, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 0), i8** %559, !tbaa !5
  %560 = getelementptr inbounds i8*, i8** %559, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %560, !tbaa !5
  %561 = getelementptr inbounds i8*, i8** %560, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %561, !tbaa !5
  %562 = getelementptr inbounds [4 x i8*], [4 x i8*]* %557, i64 1
  %563 = getelementptr inbounds [4 x i8*], [4 x i8*]* %562, i64 0, i64 0
  %564 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %565 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %564, i32 0, i64 5
  %566 = getelementptr inbounds [5 x i8], [5 x i8]* %565, i32 0, i64 3
  store i8* %566, i8** %563, !tbaa !5
  %567 = getelementptr inbounds i8*, i8** %563, i64 1
  %568 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %569 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %568, i32 0, i64 5
  %570 = getelementptr inbounds [5 x i8], [5 x i8]* %569, i32 0, i64 3
  store i8* %570, i8** %567, !tbaa !5
  %571 = getelementptr inbounds i8*, i8** %567, i64 1
  store i8* null, i8** %571, !tbaa !5
  %572 = getelementptr inbounds i8*, i8** %571, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %572, !tbaa !5
  %573 = getelementptr inbounds [4 x i8*], [4 x i8*]* %562, i64 1
  %574 = getelementptr inbounds [4 x i8*], [4 x i8*]* %573, i64 0, i64 0
  store i8* null, i8** %574, !tbaa !5
  %575 = getelementptr inbounds i8*, i8** %574, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %575, !tbaa !5
  %576 = getelementptr inbounds i8*, i8** %575, i64 1
  store i8* null, i8** %576, !tbaa !5
  %577 = getelementptr inbounds i8*, i8** %576, i64 1
  %578 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %579 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %578, i32 0, i64 5
  %580 = getelementptr inbounds [5 x i8], [5 x i8]* %579, i32 0, i64 1
  store i8* %580, i8** %577, !tbaa !5
  %581 = getelementptr inbounds [4 x i8*], [4 x i8*]* %573, i64 1
  %582 = getelementptr inbounds [4 x i8*], [4 x i8*]* %581, i64 0, i64 0
  %583 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %584 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %583, i32 0, i64 5
  %585 = getelementptr inbounds [5 x i8], [5 x i8]* %584, i32 0, i64 1
  store i8* %585, i8** %582, !tbaa !5
  %586 = getelementptr inbounds i8*, i8** %582, i64 1
  %587 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %588 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %587, i32 0, i64 1
  %589 = getelementptr inbounds [5 x i8], [5 x i8]* %588, i32 0, i64 0
  store i8* %589, i8** %586, !tbaa !5
  %590 = getelementptr inbounds i8*, i8** %586, i64 1
  %591 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %592 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %591, i32 0, i64 5
  %593 = getelementptr inbounds [5 x i8], [5 x i8]* %592, i32 0, i64 3
  store i8* %593, i8** %590, !tbaa !5
  %594 = getelementptr inbounds i8*, i8** %590, i64 1
  store i8* null, i8** %594, !tbaa !5
  %595 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %543, i64 1
  %596 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %595, i64 0, i64 0
  %597 = getelementptr inbounds [4 x i8*], [4 x i8*]* %596, i64 0, i64 0
  store i8* null, i8** %597, !tbaa !5
  %598 = getelementptr inbounds i8*, i8** %597, i64 1
  %599 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %600 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %599, i32 0, i64 1
  %601 = getelementptr inbounds [5 x i8], [5 x i8]* %600, i32 0, i64 0
  store i8* %601, i8** %598, !tbaa !5
  %602 = getelementptr inbounds i8*, i8** %598, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %602, !tbaa !5
  %603 = getelementptr inbounds i8*, i8** %602, i64 1
  %604 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %605 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %604, i32 0, i64 5
  %606 = getelementptr inbounds [5 x i8], [5 x i8]* %605, i32 0, i64 1
  store i8* %606, i8** %603, !tbaa !5
  %607 = getelementptr inbounds [4 x i8*], [4 x i8*]* %596, i64 1
  %608 = getelementptr inbounds [4 x i8*], [4 x i8*]* %607, i64 0, i64 0
  %609 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %610 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %609, i32 0, i64 1
  %611 = getelementptr inbounds [5 x i8], [5 x i8]* %610, i32 0, i64 0
  store i8* %611, i8** %608, !tbaa !5
  %612 = getelementptr inbounds i8*, i8** %608, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %612, !tbaa !5
  %613 = getelementptr inbounds i8*, i8** %612, i64 1
  %614 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %615 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %614, i32 0, i64 5
  %616 = getelementptr inbounds [5 x i8], [5 x i8]* %615, i32 0, i64 4
  store i8* %616, i8** %613, !tbaa !5
  %617 = getelementptr inbounds i8*, i8** %613, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 5), i8** %617, !tbaa !5
  %618 = getelementptr inbounds [4 x i8*], [4 x i8*]* %607, i64 1
  %619 = getelementptr inbounds [4 x i8*], [4 x i8*]* %618, i64 0, i64 0
  %620 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %621 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %620, i32 0, i64 5
  %622 = getelementptr inbounds [5 x i8], [5 x i8]* %621, i32 0, i64 3
  store i8* %622, i8** %619, !tbaa !5
  %623 = getelementptr inbounds i8*, i8** %619, i64 1
  %624 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %625 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %624, i32 0, i64 5
  %626 = getelementptr inbounds [5 x i8], [5 x i8]* %625, i32 0, i64 3
  store i8* %626, i8** %623, !tbaa !5
  %627 = getelementptr inbounds i8*, i8** %623, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %627, !tbaa !5
  %628 = getelementptr inbounds i8*, i8** %627, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %628, !tbaa !5
  %629 = getelementptr inbounds [4 x i8*], [4 x i8*]* %618, i64 1
  %630 = getelementptr inbounds [4 x i8*], [4 x i8*]* %629, i64 0, i64 0
  %631 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %632 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %631, i32 0, i64 5
  %633 = getelementptr inbounds [5 x i8], [5 x i8]* %632, i32 0, i64 4
  store i8* %633, i8** %630, !tbaa !5
  %634 = getelementptr inbounds i8*, i8** %630, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 0), i8** %634, !tbaa !5
  %635 = getelementptr inbounds i8*, i8** %634, i64 1
  %636 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %637 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %636, i32 0, i64 1
  %638 = getelementptr inbounds [5 x i8], [5 x i8]* %637, i32 0, i64 3
  store i8* %638, i8** %635, !tbaa !5
  %639 = getelementptr inbounds i8*, i8** %635, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %639, !tbaa !5
  %640 = getelementptr inbounds [4 x i8*], [4 x i8*]* %629, i64 1
  %641 = getelementptr inbounds [4 x i8*], [4 x i8*]* %640, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %641, !tbaa !5
  %642 = getelementptr inbounds i8*, i8** %641, i64 1
  %643 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %644 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %643, i32 0, i64 1
  %645 = getelementptr inbounds [5 x i8], [5 x i8]* %644, i32 0, i64 3
  store i8* %645, i8** %642, !tbaa !5
  %646 = getelementptr inbounds i8*, i8** %642, i64 1
  %647 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %648 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %647, i32 0, i64 1
  %649 = getelementptr inbounds [5 x i8], [5 x i8]* %648, i32 0, i64 0
  store i8* %649, i8** %646, !tbaa !5
  %650 = getelementptr inbounds i8*, i8** %646, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %650, !tbaa !5
  %651 = getelementptr inbounds [4 x i8*], [4 x i8*]* %640, i64 1
  %652 = getelementptr inbounds [4 x i8*], [4 x i8*]* %651, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %652, !tbaa !5
  %653 = getelementptr inbounds i8*, i8** %652, i64 1
  store i8* null, i8** %653, !tbaa !5
  %654 = getelementptr inbounds i8*, i8** %653, i64 1
  %655 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 5
  %656 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %655, i32 0, i64 1
  %657 = getelementptr inbounds [5 x i8], [5 x i8]* %656, i32 0, i64 3
  store i8* %657, i8** %654, !tbaa !5
  %658 = getelementptr inbounds i8*, i8** %654, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %658, !tbaa !5
  %659 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %595, i64 1
  %660 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %659, i64 0, i64 0
  %661 = getelementptr inbounds [4 x i8*], [4 x i8*]* %660, i64 0, i64 0
  %662 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %663 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %662, i32 0, i64 5
  %664 = getelementptr inbounds [5 x i8], [5 x i8]* %663, i32 0, i64 4
  store i8* %664, i8** %661, !tbaa !5
  %665 = getelementptr inbounds i8*, i8** %661, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %665, !tbaa !5
  %666 = getelementptr inbounds i8*, i8** %665, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 3, i64 3), i8** %666, !tbaa !5
  %667 = getelementptr inbounds i8*, i8** %666, i64 1
  %668 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %669 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %668, i32 0, i64 5
  %670 = getelementptr inbounds [5 x i8], [5 x i8]* %669, i32 0, i64 4
  store i8* %670, i8** %667, !tbaa !5
  %671 = getelementptr inbounds [4 x i8*], [4 x i8*]* %660, i64 1
  %672 = getelementptr inbounds [4 x i8*], [4 x i8*]* %671, i64 0, i64 0
  %673 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %674 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %673, i32 0, i64 5
  %675 = getelementptr inbounds [5 x i8], [5 x i8]* %674, i32 0, i64 3
  store i8* %675, i8** %672, !tbaa !5
  %676 = getelementptr inbounds i8*, i8** %672, i64 1
  %677 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %678 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %677, i32 0, i64 5
  %679 = getelementptr inbounds [5 x i8], [5 x i8]* %678, i32 0, i64 1
  store i8* %679, i8** %676, !tbaa !5
  %680 = getelementptr inbounds i8*, i8** %676, i64 1
  %681 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %682 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %681, i32 0, i64 5
  %683 = getelementptr inbounds [5 x i8], [5 x i8]* %682, i32 0, i64 4
  store i8* %683, i8** %680, !tbaa !5
  %684 = getelementptr inbounds i8*, i8** %680, i64 1
  store i8* null, i8** %684, !tbaa !5
  %685 = getelementptr inbounds [4 x i8*], [4 x i8*]* %671, i64 1
  %686 = getelementptr inbounds [4 x i8*], [4 x i8*]* %685, i64 0, i64 0
  %687 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 6
  %688 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %687, i32 0, i64 1
  %689 = getelementptr inbounds [5 x i8], [5 x i8]* %688, i32 0, i64 0
  store i8* %689, i8** %686, !tbaa !5
  %690 = getelementptr inbounds i8*, i8** %686, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %690, !tbaa !5
  %691 = getelementptr inbounds i8*, i8** %690, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 0, i64 1), i8** %691, !tbaa !5
  %692 = getelementptr inbounds i8*, i8** %691, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %692, !tbaa !5
  %693 = getelementptr inbounds [4 x i8*], [4 x i8*]* %685, i64 1
  %694 = getelementptr inbounds [4 x i8*], [4 x i8*]* %693, i64 0, i64 0
  store i8* null, i8** %694, !tbaa !5
  %695 = getelementptr inbounds i8*, i8** %694, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %695, !tbaa !5
  %696 = getelementptr inbounds i8*, i8** %695, i64 1
  %697 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 0
  %698 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %697, i32 0, i64 5
  %699 = getelementptr inbounds [5 x i8], [5 x i8]* %698, i32 0, i64 3
  store i8* %699, i8** %696, !tbaa !5
  %700 = getelementptr inbounds i8*, i8** %696, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %700, !tbaa !5
  %701 = getelementptr inbounds [4 x i8*], [4 x i8*]* %693, i64 1
  %702 = getelementptr inbounds [4 x i8*], [4 x i8*]* %701, i64 0, i64 0
  %703 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %704 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %703, i32 0, i64 5
  %705 = getelementptr inbounds [5 x i8], [5 x i8]* %704, i32 0, i64 1
  store i8* %705, i8** %702, !tbaa !5
  %706 = getelementptr inbounds i8*, i8** %702, i64 1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %706, !tbaa !5
  %707 = getelementptr inbounds i8*, i8** %706, i64 1
  store i8* null, i8** %707, !tbaa !5
  %708 = getelementptr inbounds i8*, i8** %707, i64 1
  store i8* null, i8** %708, !tbaa !5
  %709 = getelementptr inbounds [4 x i8*], [4 x i8*]* %701, i64 1
  %710 = getelementptr inbounds [4 x i8*], [4 x i8*]* %709, i64 0, i64 0
  store i8* null, i8** %710, !tbaa !5
  %711 = getelementptr inbounds i8*, i8** %710, i64 1
  %712 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %713 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %712, i32 0, i64 5
  %714 = getelementptr inbounds [5 x i8], [5 x i8]* %713, i32 0, i64 1
  store i8* %714, i8** %711, !tbaa !5
  %715 = getelementptr inbounds i8*, i8** %711, i64 1
  store i8* null, i8** %715, !tbaa !5
  %716 = getelementptr inbounds i8*, i8** %715, i64 1
  %717 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 3
  %718 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %717, i32 0, i64 5
  %719 = getelementptr inbounds [5 x i8], [5 x i8]* %718, i32 0, i64 4
  store i8* %719, i8** %716, !tbaa !5
  %720 = bitcast i32* %l_221 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %720) #1
  store i32 0, i32* %l_221, align 4, !tbaa !1
  %721 = bitcast [6 x [1 x i32]]* %l_226 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %721) #1
  %722 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %722) #1
  %723 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %723) #1
  %724 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %724) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %725

; <label>:725                                     ; preds = %743, %199
  %726 = load i32, i32* %i4, align 4, !tbaa !1
  %727 = icmp slt i32 %726, 6
  br i1 %727, label %728, label %746

; <label>:728                                     ; preds = %725
  store i32 0, i32* %j5, align 4, !tbaa !1
  br label %729

; <label>:729                                     ; preds = %739, %728
  %730 = load i32, i32* %j5, align 4, !tbaa !1
  %731 = icmp slt i32 %730, 1
  br i1 %731, label %732, label %742

; <label>:732                                     ; preds = %729
  %733 = load i32, i32* %j5, align 4, !tbaa !1
  %734 = sext i32 %733 to i64
  %735 = load i32, i32* %i4, align 4, !tbaa !1
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %l_226, i32 0, i64 %736
  %738 = getelementptr inbounds [1 x i32], [1 x i32]* %737, i32 0, i64 %734
  store i32 1420801120, i32* %738, align 4, !tbaa !1
  br label %739

; <label>:739                                     ; preds = %732
  %740 = load i32, i32* %j5, align 4, !tbaa !1
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %j5, align 4, !tbaa !1
  br label %729

; <label>:742                                     ; preds = %729
  br label %743

; <label>:743                                     ; preds = %742
  %744 = load i32, i32* %i4, align 4, !tbaa !1
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %i4, align 4, !tbaa !1
  br label %725

; <label>:746                                     ; preds = %725
  store i32 0, i32* @g_82, align 4, !tbaa !1
  br label %747

; <label>:747                                     ; preds = %1219, %746
  %748 = load i32, i32* @g_82, align 4, !tbaa !1
  %749 = icmp ule i32 %748, 3
  br i1 %749, label %750, label %1222

; <label>:750                                     ; preds = %747
  %751 = bitcast i64* %l_151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %751) #1
  store i64 2452598480912471129, i64* %l_151, align 8, !tbaa !7
  %752 = bitcast i64* %l_156 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %752) #1
  store i64 -976933653589485050, i64* %l_156, align 8, !tbaa !7
  %753 = bitcast i8** %l_199 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %753) #1
  store i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 2, i64 1, i64 3), i8** %l_199, align 8, !tbaa !5
  %754 = bitcast i32* %l_201 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %754) #1
  store i32 0, i32* %l_201, align 4, !tbaa !1
  %755 = bitcast i32* %l_209 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %755) #1
  store i32 7, i32* %l_209, align 4, !tbaa !1
  %756 = bitcast i32* %l_215 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %756) #1
  store i32 -1, i32* %l_215, align 4, !tbaa !1
  %757 = bitcast i32* %l_222 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %757) #1
  store i32 410003459, i32* %l_222, align 4, !tbaa !1
  %758 = bitcast i32* %l_225 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %758) #1
  store i32 258852032, i32* %l_225, align 4, !tbaa !1
  %759 = bitcast i32* %l_227 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %759) #1
  store i32 9, i32* %l_227, align 4, !tbaa !1
  %760 = bitcast i32* %l_228 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %760) #1
  store i32 -140345857, i32* %l_228, align 4, !tbaa !1
  %761 = bitcast i32* %l_229 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %761) #1
  store i32 6, i32* %l_229, align 4, !tbaa !1
  %762 = bitcast [8 x [4 x [8 x i32]]]* %l_230 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %762) #1
  %763 = bitcast [8 x [4 x [8 x i32]]]* %l_230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %763, i8* bitcast ([8 x [4 x [8 x i32]]]* @func_104.l_230 to i8*), i64 1024, i32 16, i1 false)
  %764 = bitcast i16* %l_233 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %764) #1
  store i16 -1, i16* %l_233, align 2, !tbaa !10
  %765 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %765) #1
  %766 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %766) #1
  %767 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %767) #1
  store i64 0, i64* @g_45, align 8, !tbaa !7
  br label %768

; <label>:768                                     ; preds = %1194, %750
  %769 = load i64, i64* @g_45, align 8, !tbaa !7
  %770 = icmp ule i64 %769, 3
  br i1 %770, label %771, label %1197

; <label>:771                                     ; preds = %768
  %772 = bitcast i16* %l_172 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %772) #1
  store i16 -9, i16* %l_172, align 2, !tbaa !10
  %773 = bitcast i32* %l_200 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %773) #1
  store i32 0, i32* %l_200, align 4, !tbaa !1
  %774 = bitcast [8 x i32]* %l_218 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %774) #1
  %775 = bitcast [8 x i32]* %l_218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %775, i8* bitcast ([8 x i32]* @func_104.l_218 to i8*), i64 32, i32 16, i1 false)
  %776 = bitcast i16** %l_264 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %776) #1
  store i16* %l_234, i16** %l_264, align 8, !tbaa !5
  %777 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %777) #1
  %778 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %778) #1
  %779 = load i32, i32* %3, align 4, !tbaa !1
  %780 = load i32*, i32** @g_101, align 8, !tbaa !5
  store i32 %779, i32* %780, align 4, !tbaa !1
  store i16 3, i16* @g_97, align 2, !tbaa !10
  br label %781

; <label>:781                                     ; preds = %895, %771
  %782 = load i16, i16* @g_97, align 2, !tbaa !10
  %783 = sext i16 %782 to i32
  %784 = icmp sge i32 %783, 0
  br i1 %784, label %785, label %900

; <label>:785                                     ; preds = %781
  %786 = bitcast i32** %l_147 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %786) #1
  store i32* @g_102, i32** %l_147, align 8, !tbaa !5
  %787 = bitcast i32** %l_148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %787) #1
  store i32* @g_102, i32** %l_148, align 8, !tbaa !5
  %788 = bitcast i32** %l_149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %788) #1
  store i32* @g_102, i32** %l_149, align 8, !tbaa !5
  %789 = bitcast [10 x [8 x [3 x i32*]]]* %l_150 to i8*
  call void @llvm.lifetime.start(i64 1920, i8* %789) #1
  %790 = bitcast [10 x [8 x [3 x i32*]]]* %l_150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %790, i8* bitcast ([10 x [8 x [3 x i32*]]]* @func_104.l_150 to i8*), i64 1920, i32 16, i1 false)
  %791 = bitcast i8** %l_161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %791) #1
  store i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 3, i64 5, i64 3), i8** %l_161, align 8, !tbaa !5
  %792 = bitcast [3 x i16]* %l_175 to i8*
  call void @llvm.lifetime.start(i64 6, i8* %792) #1
  %793 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %793) #1
  %794 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %794) #1
  %795 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %795) #1
  store i32 0, i32* %i12, align 4, !tbaa !1
  br label %796

; <label>:796                                     ; preds = %803, %785
  %797 = load i32, i32* %i12, align 4, !tbaa !1
  %798 = icmp slt i32 %797, 3
  br i1 %798, label %799, label %806

; <label>:799                                     ; preds = %796
  %800 = load i32, i32* %i12, align 4, !tbaa !1
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [3 x i16], [3 x i16]* %l_175, i32 0, i64 %801
  store i16 4, i16* %802, align 2, !tbaa !10
  br label %803

; <label>:803                                     ; preds = %799
  %804 = load i32, i32* %i12, align 4, !tbaa !1
  %805 = add nsw i32 %804, 1
  store i32 %805, i32* %i12, align 4, !tbaa !1
  br label %796

; <label>:806                                     ; preds = %796
  %807 = load i64, i64* %l_151, align 8, !tbaa !7
  %808 = add i64 %807, -1
  store i64 %808, i64* %l_151, align 8, !tbaa !7
  %809 = load i64, i64* %l_156, align 8, !tbaa !7
  %810 = trunc i64 %809 to i8
  %811 = getelementptr inbounds [10 x [8 x [3 x i32*]]], [10 x [8 x [3 x i32*]]]* %l_150, i32 0, i64 6
  %812 = getelementptr inbounds [8 x [3 x i32*]], [8 x [3 x i32*]]* %811, i32 0, i64 6
  %813 = getelementptr inbounds [3 x i32*], [3 x i32*]* %812, i32 0, i64 0
  %814 = icmp eq i32** %813, null
  %815 = zext i1 %814 to i32
  %816 = load i8*, i8** %l_161, align 8, !tbaa !5
  store i8 75, i8* %816, align 1, !tbaa !9
  %817 = load i32*, i32** %l_143, align 8, !tbaa !5
  %818 = load i32, i32* %817, align 4, !tbaa !1
  store i32 %818, i32* %3, align 4, !tbaa !1
  %819 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %820 = sext i32 %819 to i64
  %821 = load i16, i16* %l_172, align 2, !tbaa !10
  %822 = zext i16 %821 to i32
  %823 = icmp sle i32 1, %822
  %824 = zext i1 %823 to i32
  %825 = trunc i32 %824 to i16
  %826 = load i64, i64* %l_173, align 8, !tbaa !7
  %827 = trunc i64 %826 to i32
  %828 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %825, i32 %827)
  %829 = load i64, i64* %l_173, align 8, !tbaa !7
  %830 = trunc i64 %829 to i8
  %831 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %830, i32 7)
  %832 = zext i8 %831 to i64
  %833 = load i16, i16* @g_97, align 2, !tbaa !10
  %834 = sext i16 %833 to i64
  %835 = call i64 @safe_sub_func_int64_t_s_s(i64 %832, i64 %834)
  %836 = icmp ne i64 %820, %835
  %837 = zext i1 %836 to i32
  %838 = sext i32 %837 to i64
  %839 = icmp eq i64 0, %838
  br i1 %839, label %840, label %844

; <label>:840                                     ; preds = %806
  %841 = load i16, i16* getelementptr inbounds ([10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 0, i64 0), align 2, !tbaa !10
  %842 = zext i16 %841 to i32
  %843 = icmp ne i32 %842, 0
  br label %844

; <label>:844                                     ; preds = %840, %806
  %845 = phi i1 [ false, %806 ], [ %843, %840 ]
  %846 = zext i1 %845 to i32
  %847 = load i32, i32* %l_174, align 4, !tbaa !1
  %848 = icmp ne i32 %818, %847
  %849 = zext i1 %848 to i32
  %850 = trunc i32 %849 to i16
  %851 = load i16, i16* %l_172, align 2, !tbaa !10
  %852 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %850, i16 zeroext %851)
  %853 = zext i16 %852 to i64
  %854 = icmp sgt i64 %853, 4858182553795745734
  %855 = zext i1 %854 to i32
  %856 = trunc i32 %855 to i8
  %857 = getelementptr inbounds [3 x i16], [3 x i16]* %l_175, i32 0, i64 0
  %858 = load i16, i16* %857, align 2, !tbaa !10
  %859 = sext i16 %858 to i32
  %860 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %856, i32 %859)
  %861 = zext i8 %860 to i16
  %862 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %861, i32 4)
  %863 = sext i16 %862 to i32
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %869

; <label>:865                                     ; preds = %844
  %866 = load i32*, i32** @g_101, align 8, !tbaa !5
  %867 = load i32, i32* %866, align 4, !tbaa !1
  %868 = icmp ne i32 %867, 0
  br label %869

; <label>:869                                     ; preds = %865, %844
  %870 = phi i1 [ false, %844 ], [ %868, %865 ]
  %871 = zext i1 %870 to i32
  %872 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 1), align 4, !tbaa !1
  %873 = xor i32 %871, %872
  %874 = or i32 %815, %873
  %875 = trunc i32 %874 to i8
  %876 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %810, i8 signext %875)
  %877 = sext i8 %876 to i32
  %878 = load i32, i32* @g_102, align 4, !tbaa !1
  %879 = xor i32 %878, %877
  store i32 %879, i32* @g_102, align 4, !tbaa !1
  %880 = load i16, i16* %l_172, align 2, !tbaa !10
  %881 = load i32*, i32** @g_101, align 8, !tbaa !5
  %882 = load i32, i32* %881, align 4, !tbaa !1
  %883 = load i32*, i32** %l_148, align 8, !tbaa !5
  %884 = load i32, i32* %883, align 4, !tbaa !1
  %885 = and i32 %884, %882
  store i32 %885, i32* %883, align 4, !tbaa !1
  %886 = bitcast i32* %k14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %886) #1
  %887 = bitcast i32* %j13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %887) #1
  %888 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %888) #1
  %889 = bitcast [3 x i16]* %l_175 to i8*
  call void @llvm.lifetime.end(i64 6, i8* %889) #1
  %890 = bitcast i8** %l_161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %890) #1
  %891 = bitcast [10 x [8 x [3 x i32*]]]* %l_150 to i8*
  call void @llvm.lifetime.end(i64 1920, i8* %891) #1
  %892 = bitcast i32** %l_149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %892) #1
  %893 = bitcast i32** %l_148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %893) #1
  %894 = bitcast i32** %l_147 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %894) #1
  br label %895

; <label>:895                                     ; preds = %869
  %896 = load i16, i16* @g_97, align 2, !tbaa !10
  %897 = sext i16 %896 to i32
  %898 = sub nsw i32 %897, 1
  %899 = trunc i32 %898 to i16
  store i16 %899, i16* @g_97, align 2, !tbaa !10
  br label %781

; <label>:900                                     ; preds = %781
  %901 = load i16, i16* getelementptr inbounds ([10 x [2 x i16]], [10 x [2 x i16]]* @g_73, i32 0, i64 2, i64 1), align 2, !tbaa !10
  %902 = getelementptr inbounds [9 x [6 x [4 x i8*]]], [9 x [6 x [4 x i8*]]]* %l_182, i32 0, i64 3
  %903 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %902, i32 0, i64 1
  %904 = getelementptr inbounds [4 x i8*], [4 x i8*]* %903, i32 0, i64 2
  %905 = load i8*, i8** %904, align 8, !tbaa !5
  %906 = icmp ne i8* %905, null
  %907 = zext i1 %906 to i32
  %908 = icmp eq i16* null, %l_172
  %909 = zext i1 %908 to i32
  %910 = load i64, i64* %2, align 8, !tbaa !7
  %911 = trunc i64 %910 to i16
  %912 = load i64, i64* %l_173, align 8, !tbaa !7
  %913 = trunc i64 %912 to i8
  %914 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext 1, i8 zeroext %913)
  %915 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %914, i32 2)
  %916 = zext i8 %915 to i64
  %917 = icmp uge i64 %916, -8855977151360463759
  %918 = zext i1 %917 to i32
  %919 = trunc i32 %918 to i8
  %920 = load i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 0), align 1, !tbaa !9
  %921 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %919, i8 zeroext %920)
  %922 = zext i8 %921 to i16
  %923 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %911, i16 zeroext %922)
  %924 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %923, i16 signext -3042)
  %925 = trunc i16 %924 to i8
  %926 = load i64, i64* @g_45, align 8, !tbaa !7
  %927 = add i64 %926, 3
  %928 = load i64, i64* @g_45, align 8, !tbaa !7
  %929 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 %928
  %930 = getelementptr inbounds [8 x i8], [8 x i8]* %929, i32 0, i64 %927
  store i8 %925, i8* %930, align 1, !tbaa !9
  %931 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %925, i8 signext 26)
  %932 = sext i8 %931 to i32
  %933 = icmp sgt i32 %909, %932
  %934 = zext i1 %933 to i32
  %935 = trunc i32 %934 to i8
  %936 = load i64, i64* %l_156, align 8, !tbaa !7
  %937 = trunc i64 %936 to i32
  %938 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %935, i32 %937)
  %939 = zext i8 %938 to i32
  %940 = load i32*, i32** %l_143, align 8, !tbaa !5
  %941 = load i32, i32* %940, align 4, !tbaa !1
  %942 = call i32 @safe_add_func_uint32_t_u_u(i32 %939, i32 %941)
  %943 = zext i32 %942 to i64
  %944 = icmp ule i64 %943, 0
  %945 = zext i1 %944 to i32
  %946 = load i32, i32* %l_174, align 4, !tbaa !1
  %947 = icmp ne i32 %945, %946
  %948 = zext i1 %947 to i32
  %949 = sext i32 %948 to i64
  %950 = icmp eq i64 2859760520, %949
  %951 = zext i1 %950 to i32
  %952 = trunc i32 %951 to i16
  %953 = load i32, i32* %3, align 4, !tbaa !1
  %954 = trunc i32 %953 to i16
  %955 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %952, i16 zeroext %954)
  %956 = zext i16 %955 to i32
  %957 = load i32, i32* @g_102, align 4, !tbaa !1
  %958 = xor i32 %956, %957
  %959 = sext i32 %958 to i64
  %960 = icmp eq i64 %959, 221
  %961 = zext i1 %960 to i32
  %962 = sext i32 %961 to i64
  %963 = and i64 %962, 1013564805
  %964 = icmp eq i64 %963, 1
  br i1 %964, label %965, label %1163

; <label>:965                                     ; preds = %900
  %966 = bitcast i32** %l_202 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %966) #1
  store i32* null, i32** %l_202, align 8, !tbaa !5
  %967 = bitcast i32** %l_203 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %967) #1
  store i32* %l_200, i32** %l_203, align 8, !tbaa !5
  %968 = bitcast i32** %l_204 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %968) #1
  store i32* null, i32** %l_204, align 8, !tbaa !5
  %969 = bitcast i32** %l_205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %969) #1
  store i32* %l_200, i32** %l_205, align 8, !tbaa !5
  %970 = bitcast i32* %l_206 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %970) #1
  store i32 513140914, i32* %l_206, align 4, !tbaa !1
  %971 = bitcast i32** %l_207 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %971) #1
  store i32* null, i32** %l_207, align 8, !tbaa !5
  %972 = bitcast [10 x [2 x i32*]]* %l_208 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %972) #1
  %973 = bitcast [10 x [2 x i32*]]* %l_208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %973, i8* bitcast ([10 x [2 x i32*]]* @func_104.l_208 to i8*), i64 160, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_232) #1
  store i8 1, i8* %l_232, align 1, !tbaa !9
  %974 = bitcast i32** %l_247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %974) #1
  store i32* @g_248, i32** %l_247, align 8, !tbaa !5
  %975 = bitcast i8*** %l_249 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %975) #1
  %976 = getelementptr inbounds [9 x [6 x [4 x i8*]]], [9 x [6 x [4 x i8*]]]* %l_182, i32 0, i64 3
  %977 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %976, i32 0, i64 1
  %978 = getelementptr inbounds [4 x i8*], [4 x i8*]* %977, i32 0, i64 2
  store i8** %978, i8*** %l_249, align 8, !tbaa !5
  %979 = bitcast i8** %l_252 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %979) #1
  store i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), i8** %l_252, align 8, !tbaa !5
  %980 = bitcast i16** %l_253 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %980) #1
  store i16* %l_172, i16** %l_253, align 8, !tbaa !5
  %981 = bitcast i8** %l_267 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %981) #1
  %982 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 4
  %983 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %982, i32 0, i64 1
  %984 = getelementptr inbounds [5 x i8], [5 x i8]* %983, i32 0, i64 0
  store i8* %984, i8** %l_267, align 8, !tbaa !5
  %985 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %985) #1
  %986 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %986) #1
  %987 = load i8, i8* %l_210, align 1, !tbaa !9
  %988 = add i8 %987, 1
  store i8 %988, i8* %l_210, align 1, !tbaa !9
  %989 = load i32, i32* %l_222, align 4, !tbaa !1
  %990 = add i32 %989, 1
  store i32 %990, i32* %l_222, align 4, !tbaa !1
  %991 = load i32, i32* %l_235, align 4, !tbaa !1
  %992 = add i32 %991, -1
  store i32 %992, i32* %l_235, align 4, !tbaa !1
  %993 = load i64, i64* %2, align 8, !tbaa !7
  %994 = trunc i64 %993 to i32
  store i32 %994, i32* %l_209, align 4, !tbaa !1
  %995 = trunc i32 %994 to i16
  %996 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %995, i32 2)
  %997 = sext i16 %996 to i32
  %998 = load i32*, i32** %l_247, align 8, !tbaa !5
  store i32 %997, i32* %998, align 4, !tbaa !1
  %999 = getelementptr inbounds [7 x [6 x [5 x i8]]], [7 x [6 x [5 x i8]]]* %l_131, i32 0, i64 1
  %1000 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* %999, i32 0, i64 1
  %1001 = getelementptr inbounds [5 x i8], [5 x i8]* %1000, i32 0, i64 0
  %1002 = getelementptr inbounds [9 x [6 x [4 x i8*]]], [9 x [6 x [4 x i8*]]]* %l_182, i32 0, i64 3
  %1003 = getelementptr inbounds [6 x [4 x i8*]], [6 x [4 x i8*]]* %1002, i32 0, i64 3
  %1004 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1003, i32 0, i64 1
  %1005 = load i8*, i8** %1004, align 8, !tbaa !5
  %1006 = load i8**, i8*** %l_249, align 8, !tbaa !5
  store i8* %1005, i8** %1006, align 8, !tbaa !5
  %1007 = icmp eq i8* %1001, %1005
  %1008 = zext i1 %1007 to i32
  %1009 = icmp eq i32 %997, %1008
  %1010 = zext i1 %1009 to i32
  %1011 = trunc i32 %1010 to i8
  %1012 = load i32*, i32** %l_143, align 8, !tbaa !5
  %1013 = load i32, i32* %1012, align 4, !tbaa !1
  %1014 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), align 4, !tbaa !1
  %1015 = load i8*, i8** %l_252, align 8, !tbaa !5
  %1016 = load i8, i8* %1015, align 1, !tbaa !9
  %1017 = sext i8 %1016 to i32
  %1018 = or i32 %1017, %1014
  %1019 = trunc i32 %1018 to i8
  store i8 %1019, i8* %1015, align 1, !tbaa !9
  %1020 = load i64, i64* %2, align 8, !tbaa !7
  %1021 = load i16*, i16** %l_253, align 8, !tbaa !5
  %1022 = load i16, i16* %1021, align 2, !tbaa !10
  %1023 = zext i16 %1022 to i64
  %1024 = and i64 %1023, %1020
  %1025 = trunc i64 %1024 to i16
  store i16 %1025, i16* %1021, align 2, !tbaa !10
  %1026 = load i16*, i16** %l_264, align 8, !tbaa !5
  %1027 = icmp eq i16* @g_97, %1026
  %1028 = zext i1 %1027 to i32
  %1029 = getelementptr inbounds [8 x [4 x [8 x i32]]], [8 x [4 x [8 x i32]]]* %l_230, i32 0, i64 2
  %1030 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %1029, i32 0, i64 1
  %1031 = getelementptr inbounds [8 x i32], [8 x i32]* %1030, i32 0, i64 2
  %1032 = getelementptr inbounds [8 x [4 x [8 x i32]]], [8 x [4 x [8 x i32]]]* %l_230, i32 0, i64 7
  %1033 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %1032, i32 0, i64 0
  %1034 = getelementptr inbounds [8 x i32], [8 x i32]* %1033, i32 0, i64 3
  %1035 = icmp eq i32* %1031, %1034
  %1036 = zext i1 %1035 to i32
  %1037 = trunc i32 %1036 to i8
  %1038 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1037, i8 signext 2)
  %1039 = sext i8 %1038 to i32
  %1040 = icmp ne i32 %1039, 0
  br i1 %1040, label %1041, label %1042

; <label>:1041                                    ; preds = %965
  br label %1042

; <label>:1042                                    ; preds = %1041, %965
  %1043 = phi i1 [ false, %965 ], [ true, %1041 ]
  %1044 = zext i1 %1043 to i32
  %1045 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %1046 = or i32 %1044, %1045
  %1047 = load i32, i32* %3, align 4, !tbaa !1
  %1048 = call i32 @safe_add_func_int32_t_s_s(i32 %1046, i32 %1047)
  %1049 = sext i32 %1048 to i64
  %1050 = xor i64 %1049, 1
  %1051 = load i16, i16* %l_172, align 2, !tbaa !10
  %1052 = zext i16 %1051 to i64
  %1053 = xor i64 %1050, %1052
  %1054 = trunc i64 %1053 to i32
  %1055 = getelementptr inbounds [8 x i32], [8 x i32]* %l_218, i32 0, i64 0
  %1056 = load i32, i32* %1055, align 4, !tbaa !1
  %1057 = call i32 @safe_add_func_int32_t_s_s(i32 %1054, i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = load i8*, i8** %l_267, align 8, !tbaa !5
  store i8 %1058, i8* %1059, align 1, !tbaa !9
  %1060 = load i16, i16* %l_234, align 2, !tbaa !10
  %1061 = trunc i16 %1060 to i8
  %1062 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1058, i8 signext %1061)
  store i8 %1062, i8* getelementptr inbounds ([7 x [7 x [4 x i8]]], [7 x [7 x [4 x i8]]]* @g_100, i32 0, i64 2, i64 4, i64 0), align 1, !tbaa !9
  %1063 = zext i8 %1062 to i32
  %1064 = icmp ne i32 %1063, 0
  br i1 %1064, label %1065, label %1068

; <label>:1065                                    ; preds = %1042
  %1066 = load i32, i32* @g_83, align 4, !tbaa !1
  %1067 = icmp ne i32 %1066, 0
  br label %1068

; <label>:1068                                    ; preds = %1065, %1042
  %1069 = phi i1 [ false, %1042 ], [ %1067, %1065 ]
  %1070 = zext i1 %1069 to i32
  %1071 = call i32 @safe_add_func_int32_t_s_s(i32 %1070, i32 4)
  %1072 = sext i32 %1071 to i64
  %1073 = icmp sle i64 %1072, 1
  %1074 = zext i1 %1073 to i32
  %1075 = sext i32 %1074 to i64
  %1076 = icmp slt i64 %1075, 39
  %1077 = zext i1 %1076 to i32
  %1078 = getelementptr inbounds [5 x [7 x [1 x i16]]], [5 x [7 x [1 x i16]]]* %l_268, i32 0, i64 2
  %1079 = getelementptr inbounds [7 x [1 x i16]], [7 x [1 x i16]]* %1078, i32 0, i64 3
  %1080 = getelementptr inbounds [1 x i16], [1 x i16]* %1079, i32 0, i64 0
  %1081 = load i16, i16* %1080, align 2, !tbaa !10
  %1082 = zext i16 %1081 to i32
  %1083 = icmp sle i32 %1077, %1082
  %1084 = zext i1 %1083 to i32
  %1085 = load i32*, i32** %l_143, align 8, !tbaa !5
  %1086 = load i32, i32* %1085, align 4, !tbaa !1
  %1087 = icmp slt i32 %1084, %1086
  %1088 = zext i1 %1087 to i32
  %1089 = sext i32 %1088 to i64
  %1090 = load i64, i64* %2, align 8, !tbaa !7
  %1091 = icmp ne i64 %1089, %1090
  br i1 %1091, label %1092, label %1096

; <label>:1092                                    ; preds = %1068
  %1093 = load i32*, i32** @g_101, align 8, !tbaa !5
  %1094 = load i32, i32* %1093, align 4, !tbaa !1
  %1095 = icmp ne i32 %1094, 0
  br label %1096

; <label>:1096                                    ; preds = %1092, %1068
  %1097 = phi i1 [ false, %1068 ], [ %1095, %1092 ]
  %1098 = zext i1 %1097 to i32
  %1099 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %l_226, i32 0, i64 2
  %1100 = getelementptr inbounds [1 x i32], [1 x i32]* %1099, i32 0, i64 0
  %1101 = icmp ne i32* %1100, null
  %1102 = zext i1 %1101 to i32
  %1103 = sext i32 %1102 to i64
  %1104 = load i32, i32* %l_229, align 4, !tbaa !1
  %1105 = sext i32 %1104 to i64
  %1106 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1103, i64 %1105)
  %1107 = trunc i64 %1106 to i32
  %1108 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %1019, i32 %1107)
  %1109 = sext i8 %1108 to i32
  %1110 = load i32, i32* %3, align 4, !tbaa !1
  %1111 = icmp ugt i32 %1109, %1110
  %1112 = zext i1 %1111 to i32
  %1113 = sext i32 %1112 to i64
  %1114 = icmp ult i64 %1113, 4
  %1115 = zext i1 %1114 to i32
  %1116 = and i32 %1013, %1115
  %1117 = sext i32 %1116 to i64
  %1118 = load i64, i64* %2, align 8, !tbaa !7
  %1119 = icmp sge i64 %1117, %1118
  %1120 = zext i1 %1119 to i32
  %1121 = trunc i32 %1120 to i8
  %1122 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %1011, i8 zeroext %1121)
  %1123 = zext i8 %1122 to i32
  %1124 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %l_226, i32 0, i64 2
  %1125 = getelementptr inbounds [1 x i32], [1 x i32]* %1124, i32 0, i64 0
  %1126 = load i32, i32* %1125, align 4, !tbaa !1
  %1127 = icmp slt i32 %1123, %1126
  %1128 = zext i1 %1127 to i32
  %1129 = sext i32 %1128 to i64
  %1130 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %1129)
  %1131 = icmp ne i64 %1130, 0
  br i1 %1131, label %1138, label %1132

; <label>:1132                                    ; preds = %1096
  %1133 = getelementptr inbounds [8 x [4 x [8 x i32]]], [8 x [4 x [8 x i32]]]* %l_230, i32 0, i64 1
  %1134 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %1133, i32 0, i64 2
  %1135 = getelementptr inbounds [8 x i32], [8 x i32]* %1134, i32 0, i64 0
  %1136 = load i32, i32* %1135, align 4, !tbaa !1
  %1137 = icmp ne i32 %1136, 0
  br label %1138

; <label>:1138                                    ; preds = %1132, %1096
  %1139 = phi i1 [ true, %1096 ], [ %1137, %1132 ]
  %1140 = zext i1 %1139 to i32
  %1141 = trunc i32 %1140 to i16
  %1142 = load i64, i64* %2, align 8, !tbaa !7
  %1143 = trunc i64 %1142 to i16
  %1144 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1141, i16 zeroext %1143)
  %1145 = zext i16 %1144 to i32
  %1146 = load i32, i32* @g_11, align 4, !tbaa !1
  %1147 = call i32 @safe_div_func_uint32_t_u_u(i32 %1145, i32 %1146)
  %1148 = load i32*, i32** @g_101, align 8, !tbaa !5
  store i32 %1147, i32* %1148, align 4, !tbaa !1
  %1149 = bitcast i32* %j16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1149) #1
  %1150 = bitcast i32* %i15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1150) #1
  %1151 = bitcast i8** %l_267 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1151) #1
  %1152 = bitcast i16** %l_253 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1152) #1
  %1153 = bitcast i8** %l_252 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1153) #1
  %1154 = bitcast i8*** %l_249 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1154) #1
  %1155 = bitcast i32** %l_247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1155) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_232) #1
  %1156 = bitcast [10 x [2 x i32*]]* %l_208 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1156) #1
  %1157 = bitcast i32** %l_207 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1157) #1
  %1158 = bitcast i32* %l_206 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1158) #1
  %1159 = bitcast i32** %l_205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1159) #1
  %1160 = bitcast i32** %l_204 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1160) #1
  %1161 = bitcast i32** %l_203 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1161) #1
  %1162 = bitcast i32** %l_202 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1162) #1
  br label %1185

; <label>:1163                                    ; preds = %900
  %1164 = bitcast [10 x i64***]* %l_271 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1164) #1
  %1165 = getelementptr inbounds [10 x i64***], [10 x i64***]* %l_271, i64 0, i64 0
  store i64*** %l_269, i64**** %1165, !tbaa !5
  %1166 = getelementptr inbounds i64***, i64**** %1165, i64 1
  store i64*** %l_269, i64**** %1166, !tbaa !5
  %1167 = getelementptr inbounds i64***, i64**** %1166, i64 1
  store i64*** %l_269, i64**** %1167, !tbaa !5
  %1168 = getelementptr inbounds i64***, i64**** %1167, i64 1
  store i64*** %l_269, i64**** %1168, !tbaa !5
  %1169 = getelementptr inbounds i64***, i64**** %1168, i64 1
  store i64*** %l_269, i64**** %1169, !tbaa !5
  %1170 = getelementptr inbounds i64***, i64**** %1169, i64 1
  store i64*** %l_269, i64**** %1170, !tbaa !5
  %1171 = getelementptr inbounds i64***, i64**** %1170, i64 1
  store i64*** %l_269, i64**** %1171, !tbaa !5
  %1172 = getelementptr inbounds i64***, i64**** %1171, i64 1
  store i64*** %l_269, i64**** %1172, !tbaa !5
  %1173 = getelementptr inbounds i64***, i64**** %1172, i64 1
  store i64*** %l_269, i64**** %1173, !tbaa !5
  %1174 = getelementptr inbounds i64***, i64**** %1173, i64 1
  store i64*** %l_269, i64**** %1174, !tbaa !5
  %1175 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1175) #1
  %1176 = load i64**, i64*** %l_269, align 8, !tbaa !5
  store i64** %1176, i64*** @g_272, align 8, !tbaa !5
  %1177 = load i32, i32* %l_235, align 4, !tbaa !1
  %1178 = icmp ne i32 %1177, 0
  br i1 %1178, label %1179, label %1180

; <label>:1179                                    ; preds = %1163
  store i32 5, i32* %5
  br label %1182

; <label>:1180                                    ; preds = %1163
  %1181 = load i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 1, i64 6), align 1, !tbaa !9
  store i8 %1181, i8* %1
  store i32 1, i32* %5
  br label %1182

; <label>:1182                                    ; preds = %1180, %1179
  %1183 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1183) #1
  %1184 = bitcast [10 x i64***]* %l_271 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1184) #1
  br label %1187

; <label>:1185                                    ; preds = %1138
  %1186 = load i8, i8* getelementptr inbounds ([4 x [8 x i8]], [4 x [8 x i8]]* @g_81, i32 0, i64 2, i64 3), align 1, !tbaa !9
  store i8 %1186, i8* %1
  store i32 1, i32* %5
  br label %1187

; <label>:1187                                    ; preds = %1185, %1182
  %1188 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1188) #1
  %1189 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1189) #1
  %1190 = bitcast i16** %l_264 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1190) #1
  %1191 = bitcast [8 x i32]* %l_218 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1191) #1
  %1192 = bitcast i32* %l_200 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1192) #1
  %1193 = bitcast i16* %l_172 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1193) #1
  br label %1201
                                                  ; No predecessors!
  %1195 = load i64, i64* @g_45, align 8, !tbaa !7
  %1196 = add i64 %1195, 1
  store i64 %1196, i64* @g_45, align 8, !tbaa !7
  br label %768

; <label>:1197                                    ; preds = %768
  %1198 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext -22, i8 signext -10)
  %1199 = sext i8 %1198 to i32
  %1200 = load i32*, i32** @g_101, align 8, !tbaa !5
  store i32 %1199, i32* %1200, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %1201

; <label>:1201                                    ; preds = %1197, %1187
  %1202 = bitcast i32* %k9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1202) #1
  %1203 = bitcast i32* %j8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1203) #1
  %1204 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1204) #1
  %1205 = bitcast i16* %l_233 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1205) #1
  %1206 = bitcast [8 x [4 x [8 x i32]]]* %l_230 to i8*
  call void @llvm.lifetime.end(i64 1024, i8* %1206) #1
  %1207 = bitcast i32* %l_229 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1207) #1
  %1208 = bitcast i32* %l_228 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1208) #1
  %1209 = bitcast i32* %l_227 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1209) #1
  %1210 = bitcast i32* %l_225 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1210) #1
  %1211 = bitcast i32* %l_222 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1211) #1
  %1212 = bitcast i32* %l_215 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1212) #1
  %1213 = bitcast i32* %l_209 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1213) #1
  %1214 = bitcast i32* %l_201 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1214) #1
  %1215 = bitcast i8** %l_199 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1215) #1
  %1216 = bitcast i64* %l_156 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1216) #1
  %1217 = bitcast i64* %l_151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1217) #1
  %cleanup.dest = load i32, i32* %5
  switch i32 %cleanup.dest, label %1239 [
    i32 0, label %1218
  ]

; <label>:1218                                    ; preds = %1201
  br label %1219

; <label>:1219                                    ; preds = %1218
  %1220 = load i32, i32* @g_82, align 4, !tbaa !1
  %1221 = add i32 %1220, 1
  store i32 %1221, i32* @g_82, align 4, !tbaa !1
  br label %747

; <label>:1222                                    ; preds = %747
  store i16 -7, i16* %l_234, align 2, !tbaa !10
  br label %1223

; <label>:1223                                    ; preds = %1235, %1222
  %1224 = load i16, i16* %l_234, align 2, !tbaa !10
  %1225 = sext i16 %1224 to i32
  %1226 = icmp slt i32 %1225, 12
  br i1 %1226, label %1227, label %1238

; <label>:1227                                    ; preds = %1223
  %1228 = bitcast [4 x i8]* %l_291 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1228) #1
  %1229 = bitcast [4 x i8]* %l_291 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @func_104.l_291, i32 0, i32 0), i64 4, i32 1, i1 false)
  %1230 = bitcast i32* %l_292 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1230) #1
  store i32 -711149571, i32* %l_292, align 4, !tbaa !1
  %1231 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1231) #1
  %1232 = bitcast i32* %i18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1232) #1
  %1233 = bitcast i32* %l_292 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1233) #1
  %1234 = bitcast [4 x i8]* %l_291 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1234) #1
  br label %1235

; <label>:1235                                    ; preds = %1227
  %1236 = load i16, i16* %l_234, align 2, !tbaa !10
  %1237 = add i16 %1236, 1
  store i16 %1237, i16* %l_234, align 2, !tbaa !10
  br label %1223

; <label>:1238                                    ; preds = %1223
  store i32 0, i32* %5
  br label %1239

; <label>:1239                                    ; preds = %1238, %1201
  %1240 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1240) #1
  %1241 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1241) #1
  %1242 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1242) #1
  %1243 = bitcast [6 x [1 x i32]]* %l_226 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1243) #1
  %1244 = bitcast i32* %l_221 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1244) #1
  %1245 = bitcast [9 x [6 x [4 x i8*]]]* %l_182 to i8*
  call void @llvm.lifetime.end(i64 1728, i8* %1245) #1
  %1246 = bitcast i32* %l_174 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1246) #1
  %cleanup.dest.19 = load i32, i32* %5
  switch i32 %cleanup.dest.19, label %1341 [
    i32 0, label %1247
  ]

; <label>:1247                                    ; preds = %1239
  br label %1248

; <label>:1248                                    ; preds = %1247
  %1249 = load i32, i32* @g_83, align 4, !tbaa !1
  %1250 = add nsw i32 %1249, 1
  store i32 %1250, i32* @g_83, align 4, !tbaa !1
  br label %196

; <label>:1251                                    ; preds = %196
  %1252 = load i64, i64* %2, align 8, !tbaa !7
  %1253 = trunc i64 %1252 to i32
  %1254 = getelementptr inbounds [2 x [7 x [4 x i32]]], [2 x [7 x [4 x i32]]]* %l_213, i32 0, i64 0
  %1255 = getelementptr inbounds [7 x [4 x i32]], [7 x [4 x i32]]* %1254, i32 0, i64 1
  %1256 = getelementptr inbounds [4 x i32], [4 x i32]* %1255, i32 0, i64 3
  store i32 %1253, i32* %1256, align 4, !tbaa !1
  %1257 = load i8, i8* @g_334, align 1, !tbaa !9
  %1258 = zext i8 %1257 to i32
  %1259 = or i32 %1258, %1253
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* @g_334, align 1, !tbaa !9
  %1261 = zext i8 %1260 to i16
  %1262 = load i64, i64* %l_173, align 8, !tbaa !7
  %1263 = trunc i64 %1262 to i32
  store i32 %1263, i32* %l_339, align 4, !tbaa !1
  %1264 = sext i32 %1263 to i64
  %1265 = xor i64 51, %1264
  %1266 = trunc i64 %1265 to i8
  %1267 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %1266, i8 zeroext 10)
  %1268 = load i32*, i32** %l_143, align 8, !tbaa !5
  %1269 = load i32, i32* %1268, align 4, !tbaa !1
  %1270 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %1267, i32 %1269)
  %1271 = load i32*, i32** %l_143, align 8, !tbaa !5
  %1272 = load i32, i32* %1271, align 4, !tbaa !1
  %1273 = trunc i32 %1272 to i16
  %1274 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1261, i16 zeroext %1273)
  %1275 = zext i16 %1274 to i32
  %1276 = load i64, i64* %2, align 8, !tbaa !7
  %1277 = load i64, i64* %2, align 8, !tbaa !7
  %1278 = load i32, i32* @g_2, align 4, !tbaa !1
  %1279 = icmp ne i32 %1278, 0
  br i1 %1279, label %1284, label %1280

; <label>:1280                                    ; preds = %1251
  %1281 = load i32*, i32** @g_101, align 8, !tbaa !5
  %1282 = load i32, i32* %1281, align 4, !tbaa !1
  %1283 = icmp ne i32 %1282, 0
  br label %1284

; <label>:1284                                    ; preds = %1280, %1251
  %1285 = phi i1 [ true, %1251 ], [ %1283, %1280 ]
  %1286 = zext i1 %1285 to i32
  %1287 = trunc i32 %1286 to i8
  %1288 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1287, i32 2)
  %1289 = sext i8 %1288 to i64
  %1290 = or i64 %1289, -1
  %1291 = icmp sge i64 %1276, %1290
  %1292 = zext i1 %1291 to i32
  %1293 = load i32*, i32** @g_101, align 8, !tbaa !5
  %1294 = load i32, i32* %1293, align 4, !tbaa !1
  %1295 = or i32 %1292, %1294
  %1296 = load i32, i32* %3, align 4, !tbaa !1
  %1297 = call i32 @safe_div_func_uint32_t_u_u(i32 %1295, i32 %1296)
  %1298 = icmp ne i32 %1297, 0
  br i1 %1298, label %1299, label %1302

; <label>:1299                                    ; preds = %1284
  %1300 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 2), align 4, !tbaa !1
  %1301 = icmp ne i32 %1300, 0
  br label %1302

; <label>:1302                                    ; preds = %1299, %1284
  %1303 = phi i1 [ false, %1284 ], [ %1301, %1299 ]
  %1304 = zext i1 %1303 to i32
  %1305 = getelementptr inbounds [8 x [2 x [6 x i32]]], [8 x [2 x [6 x i32]]]* %l_344, i32 0, i64 2
  %1306 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %1305, i32 0, i64 1
  %1307 = getelementptr inbounds [6 x i32], [6 x i32]* %1306, i32 0, i64 2
  %1308 = load i32, i32* %1307, align 4, !tbaa !1
  %1309 = or i32 %1308, %1304
  store i32 %1309, i32* %1307, align 4, !tbaa !1
  %1310 = icmp ne i32 %1309, 0
  br i1 %1310, label %1314, label %1311

; <label>:1311                                    ; preds = %1302
  %1312 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_7, i32 0, i64 5), align 4, !tbaa !1
  %1313 = icmp ne i32 %1312, 0
  br label %1314

; <label>:1314                                    ; preds = %1311, %1302
  %1315 = phi i1 [ true, %1302 ], [ %1313, %1311 ]
  %1316 = zext i1 %1315 to i32
  %1317 = icmp sgt i32 %1275, %1316
  %1318 = zext i1 %1317 to i32
  %1319 = load i64, i64* %2, align 8, !tbaa !7
  %1320 = icmp ule i64 %1319, 2
  %1321 = zext i1 %1320 to i32
  %1322 = load i32*, i32** %l_143, align 8, !tbaa !5
  %1323 = load i32, i32* %1322, align 4, !tbaa !1
  %1324 = call i32 @safe_sub_func_int32_t_s_s(i32 %1321, i32 %1323)
  %1325 = sext i32 %1324 to i64
  %1326 = icmp sle i64 %1325, 1504930072903579991
  %1327 = zext i1 %1326 to i32
  %1328 = sext i32 %1327 to i64
  %1329 = load i64*, i64** %l_345, align 8, !tbaa !5
  store i64 %1328, i64* %1329, align 8, !tbaa !7
  %1330 = load i32*, i32** %l_143, align 8, !tbaa !5
  %1331 = load i32, i32* %1330, align 4, !tbaa !1
  %1332 = sext i32 %1331 to i64
  %1333 = call i64 @safe_mod_func_int64_t_s_s(i64 %1328, i64 %1332)
  %1334 = load i64, i64* %2, align 8, !tbaa !7
  %1335 = and i64 %1333, %1334
  %1336 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 1), align 4, !tbaa !1
  %1337 = sext i32 %1336 to i64
  %1338 = icmp eq i64 %1335, %1337
  %1339 = zext i1 %1338 to i32
  %1340 = load i32*, i32** @g_101, align 8, !tbaa !5
  store i32 %1339, i32* %1340, align 4, !tbaa !1
  store i32 0, i32* %5
  br label %1341

; <label>:1341                                    ; preds = %1314, %1239
  %1342 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1342) #1
  %1343 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1343) #1
  %1344 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1344) #1
  %1345 = bitcast i64** %l_345 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1345) #1
  %1346 = bitcast [8 x [2 x [6 x i32]]]* %l_344 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %1346) #1
  %1347 = bitcast i32* %l_339 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1347) #1
  %1348 = bitcast i8** %l_327 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1348) #1
  %1349 = bitcast i32* %l_300 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1349) #1
  %1350 = bitcast i64*** %l_269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1350) #1
  %1351 = bitcast i64** %l_270 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1351) #1
  %1352 = bitcast i16* %l_234 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1352) #1
  %1353 = bitcast [2 x [7 x [4 x i32]]]* %l_213 to i8*
  call void @llvm.lifetime.end(i64 224, i8* %1353) #1
  %1354 = bitcast i64* %l_173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1354) #1
  %cleanup.dest.20 = load i32, i32* %5
  switch i32 %cleanup.dest.20, label %1475 [
    i32 0, label %1355
    i32 5, label %46
  ]

; <label>:1355                                    ; preds = %1341
  br label %1414

; <label>:1356                                    ; preds = %136
  call void @llvm.lifetime.start(i64 1, i8* %l_352) #1
  store i8 -1, i8* %l_352, align 1, !tbaa !9
  %1357 = bitcast i32* %l_353 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1357) #1
  store i32 -6, i32* %l_353, align 4, !tbaa !1
  %1358 = bitcast i32* %l_354 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1358) #1
  store i32 -1761562072, i32* %l_354, align 4, !tbaa !1
  %1359 = bitcast i32* %l_358 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1359) #1
  store i32 -1, i32* %l_358, align 4, !tbaa !1
  store i64 0, i64* @g_45, align 8, !tbaa !7
  br label %1360

; <label>:1360                                    ; preds = %1407, %1356
  %1361 = load i64, i64* @g_45, align 8, !tbaa !7
  %1362 = icmp ule i64 %1361, 3
  br i1 %1362, label %1363, label %1410

; <label>:1363                                    ; preds = %1360
  %1364 = bitcast i32** %l_347 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1364) #1
  %1365 = getelementptr inbounds [2 x i32], [2 x i32]* %l_231, i32 0, i64 1
  store i32* %1365, i32** %l_347, align 8, !tbaa !5
  %1366 = bitcast i32** %l_348 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1366) #1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_217, i32 0, i64 2), i32** %l_348, align 8, !tbaa !5
  %1367 = bitcast i32** %l_349 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1367) #1
  store i32* %l_214, i32** %l_349, align 8, !tbaa !5
  %1368 = bitcast i32** %l_350 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1368) #1
  store i32* null, i32** %l_350, align 8, !tbaa !5
  %1369 = bitcast [2 x i32*]* %l_351 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1369) #1
  %1370 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1370) #1
  store i32 0, i32* %i21, align 4, !tbaa !1
  br label %1371

; <label>:1371                                    ; preds = %1378, %1363
  %1372 = load i32, i32* %i21, align 4, !tbaa !1
  %1373 = icmp slt i32 %1372, 2
  br i1 %1373, label %1374, label %1381

; <label>:1374                                    ; preds = %1371
  %1375 = load i32, i32* %i21, align 4, !tbaa !1
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_351, i32 0, i64 %1376
  store i32* %l_220, i32** %1377, align 8, !tbaa !5
  br label %1378

; <label>:1378                                    ; preds = %1374
  %1379 = load i32, i32* %i21, align 4, !tbaa !1
  %1380 = add nsw i32 %1379, 1
  store i32 %1380, i32* %i21, align 4, !tbaa !1
  br label %1371

; <label>:1381                                    ; preds = %1371
  %1382 = load i32*, i32** @g_101, align 8, !tbaa !5
  %1383 = load i32, i32* %1382, align 4, !tbaa !1
  %1384 = icmp ne i32 %1383, 0
  br i1 %1384, label %1385, label %1386

; <label>:1385                                    ; preds = %1381
  store i32 39, i32* %5
  br label %1399

; <label>:1386                                    ; preds = %1381
  %1387 = load i16, i16* getelementptr inbounds ([5 x i16], [5 x i16]* @g_355, i32 0, i64 1), align 2, !tbaa !10
  %1388 = add i16 %1387, 1
  store i16 %1388, i16* getelementptr inbounds ([5 x i16], [5 x i16]* @g_355, i32 0, i64 1), align 2, !tbaa !10
  store i32 3, i32* %l_220, align 4, !tbaa !1
  br label %1389

; <label>:1389                                    ; preds = %1395, %1386
  %1390 = load i32, i32* %l_220, align 4, !tbaa !1
  %1391 = icmp sge i32 %1390, 0
  br i1 %1391, label %1392, label %1398

; <label>:1392                                    ; preds = %1389
  %1393 = load i32, i32* %l_358, align 4, !tbaa !1
  %1394 = add i32 %1393, -1
  store i32 %1394, i32* %l_358, align 4, !tbaa !1
  br label %1395

; <label>:1395                                    ; preds = %1392
  %1396 = load i32, i32* %l_220, align 4, !tbaa !1
  %1397 = sub nsw i32 %1396, 1
  store i32 %1397, i32* %l_220, align 4, !tbaa !1
  br label %1389

; <label>:1398                                    ; preds = %1389
  store i32 0, i32* %5
  br label %1399

; <label>:1399                                    ; preds = %1398, %1385
  %1400 = bitcast i32* %i21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1400) #1
  %1401 = bitcast [2 x i32*]* %l_351 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1401) #1
  %1402 = bitcast i32** %l_350 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1402) #1
  %1403 = bitcast i32** %l_349 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1403) #1
  %1404 = bitcast i32** %l_348 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1404) #1
  %1405 = bitcast i32** %l_347 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1405) #1
  %cleanup.dest.22 = load i32, i32* %5
  switch i32 %cleanup.dest.22, label %1499 [
    i32 0, label %1406
    i32 39, label %1410
  ]

; <label>:1406                                    ; preds = %1399
  br label %1407

; <label>:1407                                    ; preds = %1406
  %1408 = load i64, i64* @g_45, align 8, !tbaa !7
  %1409 = add i64 %1408, 1
  store i64 %1409, i64* @g_45, align 8, !tbaa !7
  br label %1360

; <label>:1410                                    ; preds = %1399, %1360
  %1411 = bitcast i32* %l_358 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1411) #1
  %1412 = bitcast i32* %l_354 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1412) #1
  %1413 = bitcast i32* %l_353 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1413) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_352) #1
  br label %1414

; <label>:1414                                    ; preds = %1410, %1355
  %1415 = load i64, i64* @g_45, align 8, !tbaa !7
  %1416 = trunc i64 %1415 to i8
  %1417 = load i32, i32* @g_2, align 4, !tbaa !1
  %1418 = trunc i32 %1417 to i8
  %1419 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1416, i8 signext %1418)
  %1420 = sext i8 %1419 to i32
  %1421 = load i32*, i32** @g_101, align 8, !tbaa !5
  %1422 = load i32, i32* %1421, align 4, !tbaa !1
  %1423 = and i32 %1422, %1420
  store i32 %1423, i32* %1421, align 4, !tbaa !1
  store i8 0, i8* @g_334, align 1, !tbaa !9
  br label %1424

; <label>:1424                                    ; preds = %1468, %1414
  %1425 = load i8, i8* @g_334, align 1, !tbaa !9
  %1426 = zext i8 %1425 to i32
  %1427 = icmp sle i32 %1426, 2
  br i1 %1427, label %1428, label %1471

; <label>:1428                                    ; preds = %1424
  %1429 = bitcast [2 x i64**]* %l_367 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1429) #1
  %1430 = bitcast [4 x i64**]* %l_368 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1430) #1
  %1431 = getelementptr inbounds [4 x i64**], [4 x i64**]* %l_368, i64 0, i64 0
  %1432 = getelementptr inbounds [10 x i64*], [10 x i64*]* %l_365, i32 0, i64 0
  store i64** %1432, i64*** %1431, !tbaa !5
  %1433 = getelementptr inbounds i64**, i64*** %1431, i64 1
  %1434 = getelementptr inbounds [10 x i64*], [10 x i64*]* %l_365, i32 0, i64 0
  store i64** %1434, i64*** %1433, !tbaa !5
  %1435 = getelementptr inbounds i64**, i64*** %1433, i64 1
  %1436 = getelementptr inbounds [10 x i64*], [10 x i64*]* %l_365, i32 0, i64 0
  store i64** %1436, i64*** %1435, !tbaa !5
  %1437 = getelementptr inbounds i64**, i64*** %1435, i64 1
  %1438 = getelementptr inbounds [10 x i64*], [10 x i64*]* %l_365, i32 0, i64 0
  store i64** %1438, i64*** %1437, !tbaa !5
  %1439 = bitcast i32* %l_392 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1439) #1
  store i32 1463925963, i32* %l_392, align 4, !tbaa !1
  %1440 = bitcast i32* %l_428 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1440) #1
  store i32 0, i32* %l_428, align 4, !tbaa !1
  %1441 = bitcast i32*** %l_429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1441) #1
  store i32** %l_143, i32*** %l_429, align 8, !tbaa !5
  %1442 = bitcast i64* %l_456 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1442) #1
  store i64 -8595916946935404150, i64* %l_456, align 8, !tbaa !7
  %1443 = bitcast i32* %l_510 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1443) #1
  store i32 315805847, i32* %l_510, align 4, !tbaa !1
  %1444 = bitcast i32* %l_519 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1444) #1
  store i32 -1, i32* %l_519, align 4, !tbaa !1
  %1445 = bitcast i32* %l_555 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1445) #1
  store i32 0, i32* %l_555, align 4, !tbaa !1
  %1446 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1446) #1
  store i32 0, i32* %i23, align 4, !tbaa !1
  br label %1447

; <label>:1447                                    ; preds = %1454, %1428
  %1448 = load i32, i32* %i23, align 4, !tbaa !1
  %1449 = icmp slt i32 %1448, 2
  br i1 %1449, label %1450, label %1457

; <label>:1450                                    ; preds = %1447
  %1451 = load i32, i32* %i23, align 4, !tbaa !1
  %1452 = sext i32 %1451 to i64
  %1453 = getelementptr inbounds [2 x i64**], [2 x i64**]* %l_367, i32 0, i64 %1452
  store i64** null, i64*** %1453, align 8, !tbaa !5
  br label %1454

; <label>:1454                                    ; preds = %1450
  %1455 = load i32, i32* %i23, align 4, !tbaa !1
  %1456 = add nsw i32 %1455, 1
  store i32 %1456, i32* %i23, align 4, !tbaa !1
  br label %1447

; <label>:1457                                    ; preds = %1447
  %1458 = bitcast i32* %i23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1458) #1
  %1459 = bitcast i32* %l_555 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1459) #1
  %1460 = bitcast i32* %l_519 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1460) #1
  %1461 = bitcast i32* %l_510 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1461) #1
  %1462 = bitcast i64* %l_456 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1462) #1
  %1463 = bitcast i32*** %l_429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1463) #1
  %1464 = bitcast i32* %l_428 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1464) #1
  %1465 = bitcast i32* %l_392 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1465) #1
  %1466 = bitcast [4 x i64**]* %l_368 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1466) #1
  %1467 = bitcast [2 x i64**]* %l_367 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %1467) #1
  br label %1468

; <label>:1468                                    ; preds = %1457
  %1469 = load i8, i8* @g_334, align 1, !tbaa !9
  %1470 = add i8 %1469, 1
  store i8 %1470, i8* @g_334, align 1, !tbaa !9
  br label %1424

; <label>:1471                                    ; preds = %1424
  %1472 = load i32*, i32** %l_143, align 8, !tbaa !5
  %1473 = load i32, i32* %1472, align 4, !tbaa !1
  %1474 = trunc i32 %1473 to i8
  store i8 %1474, i8* %1
  store i32 1, i32* %5
  br label %1475

; <label>:1475                                    ; preds = %1471, %1341
  %1476 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1476) #1
  %1477 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1477) #1
  %1478 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1478) #1
  %1479 = bitcast i32* %l_565 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1479) #1
  %1480 = bitcast i32* %l_551 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1480) #1
  %1481 = bitcast i16* %l_433 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1481) #1
  %1482 = bitcast i32* %l_421 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1482) #1
  %1483 = bitcast i64**** %l_420 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1483) #1
  %1484 = bitcast [10 x i64*]* %l_365 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %1484) #1
  %1485 = bitcast [5 x [7 x [1 x i16]]]* %l_268 to i8*
  call void @llvm.lifetime.end(i64 70, i8* %1485) #1
  %1486 = bitcast i32* %l_235 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1486) #1
  %1487 = bitcast [2 x i32]* %l_231 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1487) #1
  %1488 = bitcast i32* %l_220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1488) #1
  %1489 = bitcast i32* %l_219 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1489) #1
  %1490 = bitcast i32* %l_216 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1490) #1
  %1491 = bitcast i32* %l_214 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1491) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_210) #1
  %1492 = bitcast i32** %l_143 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1492) #1
  %1493 = bitcast [9 x [1 x [7 x i16*]]]* %l_142 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %1493) #1
  %1494 = bitcast i16*** %l_140 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1494) #1
  %1495 = bitcast [8 x i16*]* %l_141 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %1495) #1
  %1496 = bitcast [7 x [6 x [5 x i8]]]* %l_131 to i8*
  call void @llvm.lifetime.end(i64 210, i8* %1496) #1
  %1497 = bitcast [6 x i16]* %l_126 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1497) #1
  %1498 = load i8, i8* %1
  ret i8 %1498

; <label>:1499                                    ; preds = %1399
  unreachable
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

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i64 @safe_unary_minus_func_uint64_t_u(i64 %ui) #0 {
  %1 = alloca i64, align 8
  store i64 %ui, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = sub i64 0, %2
  ret i64 %3
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
