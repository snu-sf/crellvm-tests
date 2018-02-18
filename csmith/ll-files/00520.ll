; ModuleID = '00520.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global [8 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"g_2[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_3 = internal global [10 x [5 x [1 x i32]]] [[5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] [i32 -2], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] [i32 -2], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] [i32 -2], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] [i32 -2], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] [i32 -2], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] [i32 -2], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] [i32 -2], [1 x i32] [i32 -1]], [5 x [1 x i32]] [[1 x i32] [i32 -1], [1 x i32] [i32 -2], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 -1565532133]], [5 x [1 x i32]] [[1 x i32] [i32 -1565532133], [1 x i32] zeroinitializer, [1 x i32] [i32 -1], [1 x i32] zeroinitializer, [1 x i32] [i32 -1565532133]], [5 x [1 x i32]] [[1 x i32] [i32 -1565532133], [1 x i32] zeroinitializer, [1 x i32] [i32 -1], [1 x i32] zeroinitializer, [1 x i32] [i32 -1565532133]]], align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"g_3[i][j][k]\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_27 = internal global [7 x [6 x i16]] [[6 x i16] [i16 3, i16 3, i16 26014, i16 18125, i16 10038, i16 2], [6 x i16] [i16 -10, i16 3, i16 -316, i16 30705, i16 -30982, i16 26014], [6 x i16] [i16 8140, i16 -10, i16 -316, i16 8140, i16 3, i16 2], [6 x i16] [i16 18125, i16 8140, i16 26014, i16 8140, i16 18125, i16 0], [6 x i16] [i16 8140, i16 18125, i16 0, i16 30705, i16 18125, i16 -1], [6 x i16] [i16 -10, i16 8140, i16 2, i16 18125, i16 3, i16 -1], [6 x i16] [i16 3, i16 -10, i16 0, i16 -30982, i16 -30982, i16 0]], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"g_27[i][j]\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_31 = internal global i64 -7, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"g_31\00", align 1
@g_36 = internal global i8 0, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"g_36\00", align 1
@g_58 = internal global [5 x i32] [i32 964183845, i32 964183845, i32 964183845, i32 964183845, i32 964183845], align 16
@.str.9 = private unnamed_addr constant [8 x i8] c"g_58[i]\00", align 1
@g_62 = internal global i32 -5, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_62\00", align 1
@g_66 = internal global [9 x [10 x i16]] [[10 x i16] [i16 -1, i16 6, i16 1, i16 -1, i16 187, i16 -1710, i16 -1710, i16 187, i16 -1, i16 1], [10 x i16] [i16 187, i16 187, i16 0, i16 -1, i16 0, i16 -1710, i16 -12397, i16 -1710, i16 0, i16 -1], [10 x i16] [i16 -1, i16 9, i16 -1, i16 -1710, i16 1, i16 1, i16 -12397, i16 -12397, i16 1, i16 1], [10 x i16] [i16 0, i16 187, i16 187, i16 0, i16 -1, i16 0, i16 -1710, i16 -12397, i16 -1710, i16 0], [10 x i16] [i16 1, i16 6, i16 -1, i16 6, i16 1, i16 -1, i16 187, i16 -1710, i16 -1710, i16 187], [10 x i16] [i16 -12397, i16 -1, i16 0, i16 0, i16 -1, i16 -12397, i16 1, i16 187, i16 1, i16 187], [10 x i16] [i16 6, i16 0, i16 1, i16 -1710, i16 1, i16 0, i16 6, i16 1, i16 0, i16 0], [10 x i16] [i16 6, i16 0, i16 -12397, i16 -1, i16 -1, i16 -12397, i16 0, i16 6, i16 -1, i16 1], [10 x i16] [i16 -12397, i16 0, i16 6, i16 -1, i16 1, i16 -1, i16 6, i16 0, i16 -12397, i16 -1]], align 16
@.str.11 = private unnamed_addr constant [11 x i8] c"g_66[i][j]\00", align 1
@g_69 = internal global i32 7, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"g_69\00", align 1
@g_80 = internal global i8 8, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@g_104 = internal global i16 1, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_119 = internal global i32 9, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_119\00", align 1
@g_135 = internal global [2 x [9 x i8]] [[9 x i8] c"\1A\05\1A\05\1A\05\1A\05\1A", [9 x i8] c"\00\08\08\00\00\08\08\00\00"], align 16
@.str.16 = private unnamed_addr constant [12 x i8] c"g_135[i][j]\00", align 1
@g_145 = internal global i8 9, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_145\00", align 1
@g_146 = internal global i8 1, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"g_146\00", align 1
@g_151 = internal global [8 x i32] [i32 4, i32 595261044, i32 4, i32 4, i32 595261044, i32 4, i32 4, i32 595261044], align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"g_151[i]\00", align 1
@g_194 = internal global i8 52, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_194\00", align 1
@g_227 = internal global i8 -71, align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"g_227\00", align 1
@g_264 = internal global [9 x i16] [i16 -22237, i16 -5, i16 -5, i16 -22237, i16 -5, i16 -5, i16 -22237, i16 -5, i16 -5], align 16
@.str.22 = private unnamed_addr constant [9 x i8] c"g_264[i]\00", align 1
@g_317 = internal global i64 -3300836700651299638, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"g_317\00", align 1
@g_333 = internal global i32 4, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_333\00", align 1
@g_402 = internal global i64 -9, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_402\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_429\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_431\00", align 1
@g_481 = internal global [5 x [6 x i64]] [[6 x i64] [i64 -5, i64 -5, i64 -1962167559659839697, i64 6, i64 -5, i64 0], [6 x i64] [i64 0, i64 0, i64 3017860219182899966, i64 7, i64 -10, i64 -10], [6 x i64] [i64 -1962167559659839697, i64 0, i64 0, i64 -1962167559659839697, i64 809806446922485612, i64 1733707709059331087], [6 x i64] [i64 -1962167559659839697, i64 809806446922485612, i64 1733707709059331087, i64 7, i64 0, i64 1733707709059331087], [6 x i64] [i64 0, i64 -10, i64 0, i64 -5, i64 0, i64 -10]], align 16
@.str.28 = private unnamed_addr constant [12 x i8] c"g_481[i][j]\00", align 1
@g_685 = internal global i32 677660127, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_685\00", align 1
@g_708 = internal global i64 1, align 8
@.str.30 = private unnamed_addr constant [6 x i8] c"g_708\00", align 1
@g_770 = internal global i32 -638166079, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_770\00", align 1
@g_930 = internal global i8 -128, align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"g_930\00", align 1
@g_980 = internal global i32 -1, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"g_980\00", align 1
@g_1036 = internal global [5 x [10 x [5 x i16]]] [[10 x [5 x i16]] [[5 x i16] [i16 -12981, i16 4, i16 -12981, i16 22063, i16 -28665], [5 x i16] [i16 -28665, i16 -14740, i16 -8, i16 -1, i16 4], [5 x i16] [i16 -11455, i16 1, i16 17500, i16 -12981, i16 3], [5 x i16] [i16 -10, i16 -2, i16 -8, i16 4, i16 -14291], [5 x i16] [i16 1, i16 9, i16 -12981, i16 13197, i16 -10074], [5 x i16] [i16 13593, i16 -8, i16 0, i16 11707, i16 -17221], [5 x i16] [i16 9, i16 -28665, i16 -2, i16 11707, i16 -8], [5 x i16] [i16 -1, i16 13197, i16 -7, i16 13197, i16 -1], [5 x i16] [i16 17500, i16 -1, i16 90, i16 4, i16 0], [5 x i16] [i16 -14685, i16 0, i16 -1, i16 -12981, i16 1]], [10 x [5 x i16]] [[5 x i16] [i16 -30967, i16 -8, i16 -14685, i16 -1, i16 0], [5 x i16] [i16 -4, i16 -12981, i16 -14291, i16 22063, i16 -1], [5 x i16] [i16 0, i16 18800, i16 9, i16 19340, i16 -8], [5 x i16] [i16 -14291, i16 1, i16 0, i16 -5996, i16 -17221], [5 x i16] [i16 -14291, i16 -2, i16 -10074, i16 -14685, i16 -10074], [5 x i16] [i16 0, i16 0, i16 1, i16 1, i16 -14291], [5 x i16] [i16 -4, i16 -10, i16 -5996, i16 -11455, i16 3], [5 x i16] [i16 -30967, i16 13593, i16 28442, i16 -4, i16 4], [5 x i16] [i16 -14685, i16 -10, i16 19340, i16 17500, i16 -28665], [5 x i16] [i16 17500, i16 0, i16 18800, i16 9, i16 19340]], [10 x [5 x i16]] [[5 x i16] [i16 -1, i16 -2, i16 -11455, i16 -8, i16 0], [5 x i16] [i16 9, i16 1, i16 -11455, i16 0, i16 -12981], [5 x i16] [i16 13593, i16 18800, i16 18800, i16 13593, i16 11707], [5 x i16] [i16 1, i16 -12981, i16 19340, i16 -14740, i16 -30967], [5 x i16] [i16 -10, i16 -8, i16 28442, i16 -8, i16 -5996], [5 x i16] [i16 -11455, i16 0, i16 -5996, i16 -14740, i16 13593], [5 x i16] [i16 -28665, i16 -1, i16 1, i16 13593, i16 -8], [5 x i16] [i16 -12981, i16 13197, i16 -10074, i16 0, i16 90], [5 x i16] [i16 0, i16 -28665, i16 0, i16 -8, i16 90], [5 x i16] [i16 -7, i16 -8, i16 9, i16 9, i16 -8]], [10 x [5 x i16]] [[5 x i16] [i16 3, i16 9, i16 -14291, i16 17500, i16 13593], [5 x i16] [i16 -8, i16 -2, i16 -14685, i16 -4, i16 -14685], [5 x i16] [i16 0, i16 -17221, i16 -11455, i16 -14291, i16 4], [5 x i16] [i16 -10074, i16 0, i16 -28665, i16 -17221, i16 1], [5 x i16] [i16 90, i16 -2, i16 -12981, i16 -10, i16 3], [5 x i16] [i16 -12981, i16 -1, i16 0, i16 -14685, i16 19340], [5 x i16] [i16 -5996, i16 -1, i16 -7, i16 -4, i16 -4], [5 x i16] [i16 3, i16 -2, i16 3, i16 -8, i16 13197], [5 x i16] [i16 13197, i16 0, i16 -8, i16 -11455, i16 -2], [5 x i16] [i16 -14291, i16 -17221, i16 -2, i16 3, i16 90]], [10 x [5 x i16]] [[5 x i16] [i16 22063, i16 0, i16 -8, i16 -2, i16 1], [5 x i16] [i16 -14740, i16 13593, i16 3, i16 0, i16 -1], [5 x i16] [i16 1, i16 -8, i16 -7, i16 1, i16 28442], [5 x i16] [i16 13593, i16 13197, i16 0, i16 1, i16 -10074], [5 x i16] [i16 -11455, i16 0, i16 -12981, i16 0, i16 -11455], [5 x i16] [i16 -2, i16 -11455, i16 -28665, i16 -2, i16 -7], [5 x i16] [i16 -10, i16 -5996, i16 -11455, i16 3, i16 -17221], [5 x i16] [i16 4, i16 -10074, i16 -10, i16 -11455, i16 -7], [5 x i16] [i16 11707, i16 3, i16 1, i16 -8, i16 -11455], [5 x i16] [i16 -7, i16 0, i16 13593, i16 -4, i16 -10074]]], align 16
@.str.34 = private unnamed_addr constant [16 x i8] c"g_1036[i][j][k]\00", align 1
@g_1102 = internal global i8 0, align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"g_1102\00", align 1
@g_1193 = internal global i8 -4, align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1193\00", align 1
@g_1220 = internal global i32 1, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1220\00", align 1
@g_1271 = internal global i64 -2545538111893592931, align 8
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1271\00", align 1
@g_1272 = internal global i32 -707578373, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"g_1272\00", align 1
@g_1273 = internal global i16 0, align 2
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1273\00", align 1
@g_1525 = internal global i32 -32088599, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1525\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1669\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1671\00", align 1
@g_1739 = internal global i8 1, align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1739\00", align 1
@g_2184 = internal global i32 -1, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2184\00", align 1
@g_2196 = internal global i32 -1935408561, align 4
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2196\00", align 1
@g_2435 = internal global i32 -1852982559, align 4
@.str.47 = private unnamed_addr constant [7 x i8] c"g_2435\00", align 1
@g_2466 = internal global [5 x [7 x [7 x i8]]] [[7 x [7 x i8]] [[7 x i8] c"\FA\00\EE\01\01\F8\FA", [7 x i8] c"\00\F7\00\A0{\FF\F5", [7 x i8] c"\00=\01\04\03\FF\04", [7 x i8] c"\FF\03\00\04\00\03\FE", [7 x i8] c"\FF\EE\04=\FF\04\00", [7 x i8] c"\FFg\E8\E8g\FF\00", [7 x i8] c"\01\AE\8F\01}\FF\FF"], [7 x [7 x i8]] [[7 x i8] c"\01\FF\07\FE\FF\FF\FC", [7 x i8] c"\04\AE\04\1D\01\FF\F9", [7 x i8] c"\1Eg\001\FC\18\00", [7 x i8] c"\01\EE\01$\F8\04\98", [7 x i8] c"\D3\036\F7\A0\01\FF", [7 x i8] c"\09=\E1}}\E1=", [7 x i8] c"\00\F7\ED\1E\EF41"], [7 x [7 x i8]] [[7 x i8] c"\F8\FF\F9\01\8F\01\FF", [7 x i8] c"\1E\F5\00\1E\00\C5\01", [7 x i8] c"\AE\FF\F8}\FF\85$", [7 x i8] c"6\FF{\F71\006", [7 x i8] c"\01\09C$\AEv\8F", [7 x i8] c"\03\FF\011\D3\D31", [7 x i8] c"\FF\04\FF\1D\FF\00\00"], [7 x [7 x i8]] [[7 x i8] c"\FF\A0\C5\FE\F5\9F\03", [7 x i8] c"\00l\F8\01l\00\98", [7 x i8] c"\EF1\01\E8o\D3\FF", [7 x i8] c"%\00\1A=$v\00", [7 x i8] c"1{\ED\04\E8\00\FC", [7 x i8] c"}\01\1D\04\00\85\85", [7 x i8] c"\03\A0\FB\A0\03\C5\1E"], [7 x [7 x i8]] [[7 x i8] c"\03\04\01}\FA\00\EE", [7 x i8] c"?\FF\00\1B\E8\00\03", [7 x i8] c"\1D}=\FF\FF\01\01", [7 x i8] c"\00\18\01\F7V\1B\07", [7 x i8] c"\FF\F9\1A\FF\04\01\F3", [7 x i8] c"6\07\FF\E84\03{", [7 x i8] c"C\F6\01}\01\F6C"]], align 16
@.str.48 = private unnamed_addr constant [16 x i8] c"g_2466[i][j][k]\00", align 1
@g_2478 = internal global i64 -7, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"g_2478\00", align 1
@g_2703 = internal global i32 -1965904747, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2703\00", align 1
@g_2771 = internal global i8 -1, align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2771\00", align 1
@g_2791 = internal global i32 0, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2791\00", align 1
@g_2850 = internal global i16 -25026, align 2
@.str.53 = private unnamed_addr constant [7 x i8] c"g_2850\00", align 1
@g_2909 = internal global i8 -1, align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"g_2909\00", align 1
@g_2968 = internal global i32 -6, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"g_2968\00", align 1
@g_3133 = internal global i8 49, align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"g_3133\00", align 1
@g_3137 = internal global i32 2104819166, align 4
@.str.57 = private unnamed_addr constant [7 x i8] c"g_3137\00", align 1
@g_3250 = internal global i16 -3538, align 2
@.str.58 = private unnamed_addr constant [7 x i8] c"g_3250\00", align 1
@g_3316 = internal global i32 6, align 4
@.str.59 = private unnamed_addr constant [7 x i8] c"g_3316\00", align 1
@g_3353 = internal global i32 2, align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"g_3353\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"g_3360\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_3397 = private unnamed_addr constant [7 x i32] [i32 -144959463, i32 1, i32 1, i32 -144959463, i32 1, i32 1, i32 -144959463], align 16
@g_1670 = internal global i32* @g_1671, align 8
@g_1636 = internal global i64*** @g_1637, align 8
@g_3364 = internal global i16***** @g_3365, align 8
@g_539 = internal global i32* @g_62, align 8
@g_2545 = internal global i8*** @g_632, align 8
@g_926 = internal global i32** @g_927, align 8
@g_1107 = internal global i64* @g_402, align 8
@g_637 = internal global i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [6 x i16]]* @g_27 to i8*), i64 74) to i16*), align 8
@g_3368 = internal global i16* @g_2850, align 8
@g_428 = internal global i8* @g_429, align 8
@g_814 = internal global i32*** @g_815, align 8
@g_1633 = internal global i64* @g_317, align 8
@func_11.l_3123 = private unnamed_addr constant [6 x i32**] [i32** @g_539, i32** @g_539, i32** @g_539, i32** @g_539, i32** @g_539, i32** @g_539], align 16
@g_567 = internal global i32*** @g_568, align 8
@g_633 = internal global i8* @g_36, align 8
@func_11.l_3246 = private unnamed_addr constant [4 x i32] [i32 -1097103462, i32 -1097103462, i32 -1097103462, i32 -1097103462], align 16
@g_3360 = internal constant i32 -740679383, align 4
@g_1474 = internal global i16* @g_104, align 8
@g_132 = internal global i8* null, align 8
@g_632 = internal global i8** @g_633, align 8
@g_2263 = internal global i32* null, align 8
@func_11.l_3093 = private unnamed_addr constant [7 x i16*] [i16* @g_1273, i16* @g_1273, i16* @g_1273, i16* @g_1273, i16* @g_1273, i16* @g_1273, i16* @g_1273], align 16
@func_11.l_3158 = private unnamed_addr constant [10 x i16] [i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7, i16 -7], align 16
@func_11.l_3127 = private unnamed_addr constant [6 x i8*] [i8* @g_145, i8* @g_145, i8* @g_145, i8* @g_145, i8* @g_145, i8* @g_145], align 16
@func_11.l_3172 = private unnamed_addr constant [10 x i32****] [i32**** @g_567, i32**** @g_567, i32**** @g_567, i32**** @g_567, i32**** @g_567, i32**** @g_567, i32**** @g_567, i32**** @g_567, i32**** @g_567, i32**** @g_567], align 16
@g_1697 = internal global i8** @g_132, align 8
@g_3070 = internal global i8*** @g_1697, align 8
@g_1696 = internal global [10 x [2 x i8***]] [[2 x i8***] [i8*** null, i8*** @g_1697], [2 x i8***] zeroinitializer, [2 x i8***] [i8*** @g_1697, i8*** null], [2 x i8***] [i8*** null, i8*** @g_1697], [2 x i8***] zeroinitializer, [2 x i8***] [i8*** @g_1697, i8*** null], [2 x i8***] [i8*** null, i8*** @g_1697], [2 x i8***] zeroinitializer, [2 x i8***] [i8*** @g_1697, i8*** null], [2 x i8***] [i8*** null, i8*** @g_1697]], align 16
@g_2506 = internal global i16*** @g_1053, align 8
@g_430 = internal global i8* @g_431, align 8
@g_508 = internal global i32* @g_69, align 8
@g_3361 = internal global [9 x [4 x [7 x i32*]]] [[4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_1525, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 12) to i32*)], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* @g_69, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 32) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 24) to i32*), i32* @g_3360], [7 x i32*] [i32* @g_1525, i32* null, i32* @g_1525, i32* @g_2791, i32* @g_3360, i32* @g_1525, i32* @g_2791], [7 x i32*] [i32* @g_1525, i32* @g_1220, i32* @g_3360, i32* @g_3360, i32* @g_1220, i32* @g_1525, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0)]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 32) to i32*), i32* @g_2791, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_1525, i32* @g_2791, i32* @g_69], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_1220, i32* @g_3360, i32* @g_1220, i32* @g_2791, i32* @g_3360, i32* @g_3360], [7 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 32) to i32*), i32* @g_1525, i32* @g_69, i32* null, i32* @g_1220, i32* @g_1220], [7 x i32*] [i32* @g_2791, i32* @g_1220, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_1220, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* @g_1220]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_2791, i32* null, i32* null, i32* @g_2791, i32* @g_1220, i32* null, i32* @g_3360], [7 x i32*] [i32* @g_69, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* @g_3360, i32* @g_1525, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 12) to i32*), i32* null], [7 x i32*] [i32* @g_2791, i32* @g_1220, i32* null, i32* @g_1525, i32* @g_1220, i32* @g_1525, i32* @g_1220], [7 x i32*] [i32* @g_1220, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 12) to i32*), i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_2791]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_1525, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 12) to i32*), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* null, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* null], [7 x i32*] [i32* @g_2791, i32* @g_3360, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_1525, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_3360], [7 x i32*] [i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_3360, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* @g_69, i32* @g_1220], [7 x i32*] [i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* null, i32* @g_3360, i32* @g_1220, i32* @g_1220, i32* @g_1525]], [4 x [7 x i32*]] [[7 x i32*] [i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 4) to i32*), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 20) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 20) to i32*), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 4) to i32*)], [7 x i32*] [i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_1525, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_1525, i32* @g_69, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 20) to i32*)], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* null, i32* @g_1525], [7 x i32*] [i32* null, i32* @g_1220, i32* @g_2791, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_69, i32* @g_69, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 32) to i32*)]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_2791, i32* @g_1525, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 20) to i32*), i32* @g_1525, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_1220], [7 x i32*] [i32* @g_3360, i32* null, i32* @g_1525, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*)], [7 x i32*] [i32* @g_69, i32* @g_1220, i32* @g_69, i32* null, i32* @g_1220, i32* @g_1525, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*)], [7 x i32*] [i32* null, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_2791, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* @g_3360, i32* @g_1525, i32* @g_1525]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_69, i32* null, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_69, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 20) to i32*), i32* null], [7 x i32*] [i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* null, i32* @g_1525, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0)], [7 x i32*] [i32* @g_1525, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 24) to i32*), i32* @g_1525, i32* @g_1525, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* null], [7 x i32*] [i32* @g_69, i32* @g_3360, i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 8) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*)]], [4 x [7 x i32*]] [[7 x i32*] [i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_2791, i32* null, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* null], [7 x i32*] [i32* @g_69, i32* @g_69, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 24) to i32*), i32* @g_1525, i32* null, i32* null, i32* @g_1525], [7 x i32*] [i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_3360, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_3360, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* @g_1525], [7 x i32*] [i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 12) to i32*), i32* @g_2791, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 60) to i32*), i32* @g_2791, i32* @g_1220]], [4 x [7 x i32*]] [[7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 60) to i32*), i32* @g_69, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* @g_69], [7 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 8) to i32*), i32* null, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 20) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*)], [7 x i32*] [i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i32 0), i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* null, i32* @g_3360, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), i32* @g_69], [7 x i32*] [i32* @g_1220, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 92) to i32*), i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i32]* @g_151 to i8*), i64 16) to i32*), i32* null, i32* null]]], align 16
@g_815 = internal constant i32** @g_816, align 8
@g_568 = internal global i32** null, align 8
@g_1053 = internal global i16** null, align 8
@g_431 = internal constant i8 37, align 1
@g_816 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [1 x i32]]]* @g_3 to i8*), i64 40) to i32*), align 8
@g_1291 = internal global i32**** @g_567, align 8
@func_37.l_3038 = private unnamed_addr constant [8 x i16****] [i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506], align 16
@func_37.l_3044 = private unnamed_addr constant [6 x i32*] [i32* @g_2196, i32* @g_119, i32* @g_2196, i32* @g_2196, i32* @g_119, i32* @g_2196], align 16
@func_37.l_2793 = private unnamed_addr constant [7 x i32] [i32 1640791050, i32 1703104427, i32 1640791050, i32 1640791050, i32 1703104427, i32 1640791050, i32 1640791050], align 16
@g_1637 = internal global i64** @g_1638, align 8
@g_3042 = internal global [10 x i16****] [i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506, i16**** @g_2506], align 16
@g_1106 = internal global i64** @g_1107, align 8
@g_1638 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([5 x [6 x i64]]* @g_481 to i8*), i64 104) to i64*), align 8
@g_1671 = internal constant i32 -1074955197, align 4
@g_3365 = internal global i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [10 x i16***]]* @g_3366 to i8*), i64 128) to i16****), align 8
@g_3366 = internal global [2 x [10 x i16***]] [[10 x i16***] [i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367], [10 x i16***] [i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367, i16*** @g_3367]], align 16
@g_3367 = internal global i16** @g_3368, align 8
@g_927 = internal global i32* @g_333, align 8
@g_429 = internal constant i8 1, align 1
@.str.62 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
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
  %90 = call i64 @func_1()
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* @g_2, i32 0, i64 %96
  %98 = load volatile i32, i32* %97, align 4, !tbaa !1
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

; <label>:111                                     ; preds = %151, %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 10
  br i1 %113, label %114, label %154

; <label>:114                                     ; preds = %111
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %147, %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %150

; <label>:118                                     ; preds = %115
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %119

; <label>:119                                     ; preds = %143, %118
  %120 = load i32, i32* %k, align 4, !tbaa !1
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %146

; <label>:122                                     ; preds = %119
  %123 = load i32, i32* %k, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %j, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 %128
  %130 = getelementptr inbounds [5 x [1 x i32]], [5 x [1 x i32]]* %129, i32 0, i64 %126
  %131 = getelementptr inbounds [1 x i32], [1 x i32]* %130, i32 0, i64 %124
  %132 = load i32, i32* %131, align 4, !tbaa !1
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %134)
  %135 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

; <label>:137                                     ; preds = %122
  %138 = load i32, i32* %i, align 4, !tbaa !1
  %139 = load i32, i32* %j, align 4, !tbaa !1
  %140 = load i32, i32* %k, align 4, !tbaa !1
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %138, i32 %139, i32 %140)
  br label %142

; <label>:142                                     ; preds = %137, %122
  br label %143

; <label>:143                                     ; preds = %142
  %144 = load i32, i32* %k, align 4, !tbaa !1
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %k, align 4, !tbaa !1
  br label %119

; <label>:146                                     ; preds = %119
  br label %147

; <label>:147                                     ; preds = %146
  %148 = load i32, i32* %j, align 4, !tbaa !1
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:150                                     ; preds = %115
  br label %151

; <label>:151                                     ; preds = %150
  %152 = load i32, i32* %i, align 4, !tbaa !1
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:154                                     ; preds = %111
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:155                                     ; preds = %183, %154
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = icmp slt i32 %156, 7
  br i1 %157, label %158, label %186

; <label>:158                                     ; preds = %155
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %159

; <label>:159                                     ; preds = %179, %158
  %160 = load i32, i32* %j, align 4, !tbaa !1
  %161 = icmp slt i32 %160, 6
  br i1 %161, label %162, label %182

; <label>:162                                     ; preds = %159
  %163 = load i32, i32* %j, align 4, !tbaa !1
  %164 = sext i32 %163 to i64
  %165 = load i32, i32* %i, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [7 x [6 x i16]], [7 x [6 x i16]]* @g_27, i32 0, i64 %166
  %168 = getelementptr inbounds [6 x i16], [6 x i16]* %167, i32 0, i64 %164
  %169 = load i16, i16* %168, align 2, !tbaa !10
  %170 = zext i16 %169 to i64
  %171 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %171)
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

; <label>:174                                     ; preds = %162
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = load i32, i32* %j, align 4, !tbaa !1
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %175, i32 %176)
  br label %178

; <label>:178                                     ; preds = %174, %162
  br label %179

; <label>:179                                     ; preds = %178
  %180 = load i32, i32* %j, align 4, !tbaa !1
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %j, align 4, !tbaa !1
  br label %159

; <label>:182                                     ; preds = %159
  br label %183

; <label>:183                                     ; preds = %182
  %184 = load i32, i32* %i, align 4, !tbaa !1
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %i, align 4, !tbaa !1
  br label %155

; <label>:186                                     ; preds = %155
  %187 = load i64, i64* @g_31, align 8, !tbaa !7
  %188 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %188)
  %189 = load i8, i8* @g_36, align 1, !tbaa !9
  %190 = zext i8 %189 to i64
  %191 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %191)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %192

; <label>:192                                     ; preds = %208, %186
  %193 = load i32, i32* %i, align 4, !tbaa !1
  %194 = icmp slt i32 %193, 5
  br i1 %194, label %195, label %211

; <label>:195                                     ; preds = %192
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [5 x i32], [5 x i32]* @g_58, i32 0, i64 %197
  %199 = load volatile i32, i32* %198, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %201)
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

; <label>:204                                     ; preds = %195
  %205 = load i32, i32* %i, align 4, !tbaa !1
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %205)
  br label %207

; <label>:207                                     ; preds = %204, %195
  br label %208

; <label>:208                                     ; preds = %207
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %i, align 4, !tbaa !1
  br label %192

; <label>:211                                     ; preds = %192
  %212 = load i32, i32* @g_62, align 4, !tbaa !1
  %213 = zext i32 %212 to i64
  %214 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %214)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %215

; <label>:215                                     ; preds = %243, %211
  %216 = load i32, i32* %i, align 4, !tbaa !1
  %217 = icmp slt i32 %216, 9
  br i1 %217, label %218, label %246

; <label>:218                                     ; preds = %215
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %219

; <label>:219                                     ; preds = %239, %218
  %220 = load i32, i32* %j, align 4, !tbaa !1
  %221 = icmp slt i32 %220, 10
  br i1 %221, label %222, label %242

; <label>:222                                     ; preds = %219
  %223 = load i32, i32* %j, align 4, !tbaa !1
  %224 = sext i32 %223 to i64
  %225 = load i32, i32* %i, align 4, !tbaa !1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [9 x [10 x i16]], [9 x [10 x i16]]* @g_66, i32 0, i64 %226
  %228 = getelementptr inbounds [10 x i16], [10 x i16]* %227, i32 0, i64 %224
  %229 = load i16, i16* %228, align 2, !tbaa !10
  %230 = zext i16 %229 to i64
  %231 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %230, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %231)
  %232 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

; <label>:234                                     ; preds = %222
  %235 = load i32, i32* %i, align 4, !tbaa !1
  %236 = load i32, i32* %j, align 4, !tbaa !1
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %235, i32 %236)
  br label %238

; <label>:238                                     ; preds = %234, %222
  br label %239

; <label>:239                                     ; preds = %238
  %240 = load i32, i32* %j, align 4, !tbaa !1
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %j, align 4, !tbaa !1
  br label %219

; <label>:242                                     ; preds = %219
  br label %243

; <label>:243                                     ; preds = %242
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %i, align 4, !tbaa !1
  br label %215

; <label>:246                                     ; preds = %215
  %247 = load i32, i32* @g_69, align 4, !tbaa !1
  %248 = sext i32 %247 to i64
  %249 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %249)
  %250 = load i8, i8* @g_80, align 1, !tbaa !9
  %251 = sext i8 %250 to i64
  %252 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 %252)
  %253 = load i16, i16* @g_104, align 2, !tbaa !10
  %254 = sext i16 %253 to i64
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %255)
  %256 = load i32, i32* @g_119, align 4, !tbaa !1
  %257 = zext i32 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %258)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %259

; <label>:259                                     ; preds = %287, %246
  %260 = load i32, i32* %i, align 4, !tbaa !1
  %261 = icmp slt i32 %260, 2
  br i1 %261, label %262, label %290

; <label>:262                                     ; preds = %259
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %263

; <label>:263                                     ; preds = %283, %262
  %264 = load i32, i32* %j, align 4, !tbaa !1
  %265 = icmp slt i32 %264, 9
  br i1 %265, label %266, label %286

; <label>:266                                     ; preds = %263
  %267 = load i32, i32* %j, align 4, !tbaa !1
  %268 = sext i32 %267 to i64
  %269 = load i32, i32* %i, align 4, !tbaa !1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [2 x [9 x i8]], [2 x [9 x i8]]* @g_135, i32 0, i64 %270
  %272 = getelementptr inbounds [9 x i8], [9 x i8]* %271, i32 0, i64 %268
  %273 = load i8, i8* %272, align 1, !tbaa !9
  %274 = sext i8 %273 to i64
  %275 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %274, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %275)
  %276 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

; <label>:278                                     ; preds = %266
  %279 = load i32, i32* %i, align 4, !tbaa !1
  %280 = load i32, i32* %j, align 4, !tbaa !1
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %279, i32 %280)
  br label %282

; <label>:282                                     ; preds = %278, %266
  br label %283

; <label>:283                                     ; preds = %282
  %284 = load i32, i32* %j, align 4, !tbaa !1
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %j, align 4, !tbaa !1
  br label %263

; <label>:286                                     ; preds = %263
  br label %287

; <label>:287                                     ; preds = %286
  %288 = load i32, i32* %i, align 4, !tbaa !1
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %i, align 4, !tbaa !1
  br label %259

; <label>:290                                     ; preds = %259
  %291 = load i8, i8* @g_145, align 1, !tbaa !9
  %292 = sext i8 %291 to i64
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %293)
  %294 = load i8, i8* @g_146, align 1, !tbaa !9
  %295 = zext i8 %294 to i64
  %296 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %296)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %297

; <label>:297                                     ; preds = %313, %290
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = icmp slt i32 %298, 8
  br i1 %299, label %300, label %316

; <label>:300                                     ; preds = %297
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [8 x i32], [8 x i32]* @g_151, i32 0, i64 %302
  %304 = load i32, i32* %303, align 4, !tbaa !1
  %305 = sext i32 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %306)
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

; <label>:309                                     ; preds = %300
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %310)
  br label %312

; <label>:312                                     ; preds = %309, %300
  br label %313

; <label>:313                                     ; preds = %312
  %314 = load i32, i32* %i, align 4, !tbaa !1
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %i, align 4, !tbaa !1
  br label %297

; <label>:316                                     ; preds = %297
  %317 = load i8, i8* @g_194, align 1, !tbaa !9
  %318 = zext i8 %317 to i64
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %318, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %319)
  %320 = load i8, i8* @g_227, align 1, !tbaa !9
  %321 = zext i8 %320 to i64
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %322)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %323

; <label>:323                                     ; preds = %339, %316
  %324 = load i32, i32* %i, align 4, !tbaa !1
  %325 = icmp slt i32 %324, 9
  br i1 %325, label %326, label %342

; <label>:326                                     ; preds = %323
  %327 = load i32, i32* %i, align 4, !tbaa !1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [9 x i16], [9 x i16]* @g_264, i32 0, i64 %328
  %330 = load i16, i16* %329, align 2, !tbaa !10
  %331 = sext i16 %330 to i64
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %332)
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

; <label>:335                                     ; preds = %326
  %336 = load i32, i32* %i, align 4, !tbaa !1
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %336)
  br label %338

; <label>:338                                     ; preds = %335, %326
  br label %339

; <label>:339                                     ; preds = %338
  %340 = load i32, i32* %i, align 4, !tbaa !1
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %i, align 4, !tbaa !1
  br label %323

; <label>:342                                     ; preds = %323
  %343 = load i64, i64* @g_317, align 8, !tbaa !7
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %343, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %344)
  %345 = load i32, i32* @g_333, align 4, !tbaa !1
  %346 = sext i32 %345 to i64
  %347 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %346, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %347)
  %348 = load i64, i64* @g_402, align 8, !tbaa !7
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %349)
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %350)
  %351 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %351)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %352

; <label>:352                                     ; preds = %379, %342
  %353 = load i32, i32* %i, align 4, !tbaa !1
  %354 = icmp slt i32 %353, 5
  br i1 %354, label %355, label %382

; <label>:355                                     ; preds = %352
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %356

; <label>:356                                     ; preds = %375, %355
  %357 = load i32, i32* %j, align 4, !tbaa !1
  %358 = icmp slt i32 %357, 6
  br i1 %358, label %359, label %378

; <label>:359                                     ; preds = %356
  %360 = load i32, i32* %j, align 4, !tbaa !1
  %361 = sext i32 %360 to i64
  %362 = load i32, i32* %i, align 4, !tbaa !1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [5 x [6 x i64]], [5 x [6 x i64]]* @g_481, i32 0, i64 %363
  %365 = getelementptr inbounds [6 x i64], [6 x i64]* %364, i32 0, i64 %361
  %366 = load i64, i64* %365, align 8, !tbaa !7
  %367 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %366, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 %367)
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %374

; <label>:370                                     ; preds = %359
  %371 = load i32, i32* %i, align 4, !tbaa !1
  %372 = load i32, i32* %j, align 4, !tbaa !1
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %371, i32 %372)
  br label %374

; <label>:374                                     ; preds = %370, %359
  br label %375

; <label>:375                                     ; preds = %374
  %376 = load i32, i32* %j, align 4, !tbaa !1
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %j, align 4, !tbaa !1
  br label %356

; <label>:378                                     ; preds = %356
  br label %379

; <label>:379                                     ; preds = %378
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %i, align 4, !tbaa !1
  br label %352

; <label>:382                                     ; preds = %352
  %383 = load i32, i32* @g_685, align 4, !tbaa !1
  %384 = zext i32 %383 to i64
  %385 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %385)
  %386 = load i64, i64* @g_708, align 8, !tbaa !7
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %387)
  %388 = load i32, i32* @g_770, align 4, !tbaa !1
  %389 = zext i32 %388 to i64
  %390 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %390)
  %391 = load i8, i8* @g_930, align 1, !tbaa !9
  %392 = sext i8 %391 to i64
  %393 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %392, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %393)
  %394 = load i32, i32* @g_980, align 4, !tbaa !1
  %395 = zext i32 %394 to i64
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %396)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %397

; <label>:397                                     ; preds = %437, %382
  %398 = load i32, i32* %i, align 4, !tbaa !1
  %399 = icmp slt i32 %398, 5
  br i1 %399, label %400, label %440

; <label>:400                                     ; preds = %397
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %401

; <label>:401                                     ; preds = %433, %400
  %402 = load i32, i32* %j, align 4, !tbaa !1
  %403 = icmp slt i32 %402, 10
  br i1 %403, label %404, label %436

; <label>:404                                     ; preds = %401
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %405

; <label>:405                                     ; preds = %429, %404
  %406 = load i32, i32* %k, align 4, !tbaa !1
  %407 = icmp slt i32 %406, 5
  br i1 %407, label %408, label %432

; <label>:408                                     ; preds = %405
  %409 = load i32, i32* %k, align 4, !tbaa !1
  %410 = sext i32 %409 to i64
  %411 = load i32, i32* %j, align 4, !tbaa !1
  %412 = sext i32 %411 to i64
  %413 = load i32, i32* %i, align 4, !tbaa !1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [5 x [10 x [5 x i16]]], [5 x [10 x [5 x i16]]]* @g_1036, i32 0, i64 %414
  %416 = getelementptr inbounds [10 x [5 x i16]], [10 x [5 x i16]]* %415, i32 0, i64 %412
  %417 = getelementptr inbounds [5 x i16], [5 x i16]* %416, i32 0, i64 %410
  %418 = load i16, i16* %417, align 2, !tbaa !10
  %419 = zext i16 %418 to i64
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %419, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 %420)
  %421 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %428

; <label>:423                                     ; preds = %408
  %424 = load i32, i32* %i, align 4, !tbaa !1
  %425 = load i32, i32* %j, align 4, !tbaa !1
  %426 = load i32, i32* %k, align 4, !tbaa !1
  %427 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %424, i32 %425, i32 %426)
  br label %428

; <label>:428                                     ; preds = %423, %408
  br label %429

; <label>:429                                     ; preds = %428
  %430 = load i32, i32* %k, align 4, !tbaa !1
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %k, align 4, !tbaa !1
  br label %405

; <label>:432                                     ; preds = %405
  br label %433

; <label>:433                                     ; preds = %432
  %434 = load i32, i32* %j, align 4, !tbaa !1
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %j, align 4, !tbaa !1
  br label %401

; <label>:436                                     ; preds = %401
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %i, align 4, !tbaa !1
  br label %397

; <label>:440                                     ; preds = %397
  %441 = load i8, i8* @g_1102, align 1, !tbaa !9
  %442 = sext i8 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %443)
  %444 = load i8, i8* @g_1193, align 1, !tbaa !9
  %445 = sext i8 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %446)
  %447 = load i32, i32* @g_1220, align 4, !tbaa !1
  %448 = sext i32 %447 to i64
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %449)
  %450 = load i64, i64* @g_1271, align 8, !tbaa !7
  %451 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %451)
  %452 = load i32, i32* @g_1272, align 4, !tbaa !1
  %453 = sext i32 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 %454)
  %455 = load i16, i16* @g_1273, align 2, !tbaa !10
  %456 = sext i16 %455 to i64
  %457 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %456, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %457)
  %458 = load i32, i32* @g_1525, align 4, !tbaa !1
  %459 = sext i32 %458 to i64
  %460 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %459, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %460)
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %461)
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 3220012099, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %462)
  %463 = load i8, i8* @g_1739, align 1, !tbaa !9
  %464 = zext i8 %463 to i64
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %464, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %465)
  %466 = load i32, i32* @g_2184, align 4, !tbaa !1
  %467 = zext i32 %466 to i64
  %468 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %467, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %468)
  %469 = load i32, i32* @g_2196, align 4, !tbaa !1
  %470 = zext i32 %469 to i64
  %471 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %470, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %471)
  %472 = load volatile i32, i32* @g_2435, align 4, !tbaa !1
  %473 = zext i32 %472 to i64
  %474 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %473, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %474)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %475

; <label>:475                                     ; preds = %515, %440
  %476 = load i32, i32* %i, align 4, !tbaa !1
  %477 = icmp slt i32 %476, 5
  br i1 %477, label %478, label %518

; <label>:478                                     ; preds = %475
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %479

; <label>:479                                     ; preds = %511, %478
  %480 = load i32, i32* %j, align 4, !tbaa !1
  %481 = icmp slt i32 %480, 7
  br i1 %481, label %482, label %514

; <label>:482                                     ; preds = %479
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %483

; <label>:483                                     ; preds = %507, %482
  %484 = load i32, i32* %k, align 4, !tbaa !1
  %485 = icmp slt i32 %484, 7
  br i1 %485, label %486, label %510

; <label>:486                                     ; preds = %483
  %487 = load i32, i32* %k, align 4, !tbaa !1
  %488 = sext i32 %487 to i64
  %489 = load i32, i32* %j, align 4, !tbaa !1
  %490 = sext i32 %489 to i64
  %491 = load i32, i32* %i, align 4, !tbaa !1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [5 x [7 x [7 x i8]]], [5 x [7 x [7 x i8]]]* @g_2466, i32 0, i64 %492
  %494 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %493, i32 0, i64 %490
  %495 = getelementptr inbounds [7 x i8], [7 x i8]* %494, i32 0, i64 %488
  %496 = load volatile i8, i8* %495, align 1, !tbaa !9
  %497 = zext i8 %496 to i64
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %497, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i32 %498)
  %499 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %506

; <label>:501                                     ; preds = %486
  %502 = load i32, i32* %i, align 4, !tbaa !1
  %503 = load i32, i32* %j, align 4, !tbaa !1
  %504 = load i32, i32* %k, align 4, !tbaa !1
  %505 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %502, i32 %503, i32 %504)
  br label %506

; <label>:506                                     ; preds = %501, %486
  br label %507

; <label>:507                                     ; preds = %506
  %508 = load i32, i32* %k, align 4, !tbaa !1
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %k, align 4, !tbaa !1
  br label %483

; <label>:510                                     ; preds = %483
  br label %511

; <label>:511                                     ; preds = %510
  %512 = load i32, i32* %j, align 4, !tbaa !1
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %j, align 4, !tbaa !1
  br label %479

; <label>:514                                     ; preds = %479
  br label %515

; <label>:515                                     ; preds = %514
  %516 = load i32, i32* %i, align 4, !tbaa !1
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %i, align 4, !tbaa !1
  br label %475

; <label>:518                                     ; preds = %475
  %519 = load i64, i64* @g_2478, align 8, !tbaa !7
  %520 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %519, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 %520)
  %521 = load i32, i32* @g_2703, align 4, !tbaa !1
  %522 = sext i32 %521 to i64
  %523 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %522, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %523)
  %524 = load volatile i8, i8* @g_2771, align 1, !tbaa !9
  %525 = sext i8 %524 to i64
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %525, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %526)
  %527 = load i32, i32* @g_2791, align 4, !tbaa !1
  %528 = sext i32 %527 to i64
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %528, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %529)
  %530 = load volatile i16, i16* @g_2850, align 2, !tbaa !10
  %531 = sext i16 %530 to i64
  %532 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %531, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %532)
  %533 = load i8, i8* @g_2909, align 1, !tbaa !9
  %534 = sext i8 %533 to i64
  %535 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %534, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %535)
  %536 = load volatile i32, i32* @g_2968, align 4, !tbaa !1
  %537 = zext i32 %536 to i64
  %538 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %537, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %538)
  %539 = load i8, i8* @g_3133, align 1, !tbaa !9
  %540 = sext i8 %539 to i64
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %541)
  %542 = load i32, i32* @g_3137, align 4, !tbaa !1
  %543 = zext i32 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %544)
  %545 = load i16, i16* @g_3250, align 2, !tbaa !10
  %546 = sext i16 %545 to i64
  %547 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %546, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %547)
  %548 = load volatile i32, i32* @g_3316, align 4, !tbaa !1
  %549 = zext i32 %548 to i64
  %550 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %549, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %550)
  %551 = load i32, i32* @g_3353, align 4, !tbaa !1
  %552 = sext i32 %551 to i64
  %553 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %552, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %553)
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -740679383, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %554)
  %555 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %556 = zext i32 %555 to i64
  %557 = xor i64 %556, 4294967295
  %558 = trunc i64 %557 to i32
  %559 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %558, i32 %559)
  %560 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %560) #1
  %561 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %561) #1
  %562 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %562) #1
  %563 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %563) #1
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
  %1 = alloca i64, align 8
  %l_7 = alloca i16, align 2
  %l_3382 = alloca i16, align 2
  %l_3389 = alloca i32, align 4
  %l_3396 = alloca i16, align 2
  %l_3397 = alloca [7 x i32], align 16
  %l_3409 = alloca i8, align 1
  %i = alloca i32, align 4
  %l_6 = alloca i32, align 4
  %l_23 = alloca i8, align 1
  %l_3399 = alloca i32*, align 8
  %l_3400 = alloca i32*, align 8
  %l_3401 = alloca i32*, align 8
  %l_3402 = alloca i32*, align 8
  %l_3403 = alloca i32*, align 8
  %l_3404 = alloca i32*, align 8
  %l_3405 = alloca i32*, align 8
  %l_3406 = alloca i32*, align 8
  %l_3407 = alloca i32*, align 8
  %l_3408 = alloca [5 x [9 x [1 x i32*]]], align 16
  %l_3413 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %2 = alloca i32
  %l_8 = alloca [9 x i32], align 16
  %l_26 = alloca i16*, align 8
  %l_30 = alloca i64*, align 8
  %l_34 = alloca i8*, align 8
  %l_35 = alloca i8*, align 8
  %l_3051 = alloca i8, align 1
  %l_3052 = alloca i16, align 2
  %l_3386 = alloca i32, align 4
  %l_3398 = alloca i32*, align 8
  %i2 = alloca i32, align 4
  %3 = bitcast i16* %l_7 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  store i16 13528, i16* %l_7, align 2, !tbaa !10
  %4 = bitcast i16* %l_3382 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #1
  store i16 -31545, i16* %l_3382, align 2, !tbaa !10
  %5 = bitcast i32* %l_3389 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 668130855, i32* %l_3389, align 4, !tbaa !1
  %6 = bitcast i16* %l_3396 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  store i16 25979, i16* %l_3396, align 2, !tbaa !10
  %7 = bitcast [7 x i32]* %l_3397 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %7) #1
  %8 = bitcast [7 x i32]* %l_3397 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([7 x i32]* @func_1.l_3397 to i8*), i64 28, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_3409) #1
  store i8 -9, i8* %l_3409, align 1, !tbaa !9
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %439, %0
  %11 = load i32, i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), align 4, !tbaa !1
  %12 = icmp sgt i32 %11, -29
  br i1 %12, label %13, label %442

; <label>:13                                      ; preds = %10
  %14 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 -1123853225, i32* %l_6, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_23) #1
  store i8 0, i8* %l_23, align 1, !tbaa !9
  %15 = bitcast i32** %l_3399 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 5), i32** %l_3399, align 8, !tbaa !5
  %16 = bitcast i32** %l_3400 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32* %l_3389, i32** %l_3400, align 8, !tbaa !5
  %17 = bitcast i32** %l_3401 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i32* %l_3389, i32** %l_3401, align 8, !tbaa !5
  %18 = bitcast i32** %l_3402 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %19, i32** %l_3402, align 8, !tbaa !5
  %20 = bitcast i32** %l_3403 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32* null, i32** %l_3403, align 8, !tbaa !5
  %21 = bitcast i32** %l_3404 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32* @g_2791, i32** %l_3404, align 8, !tbaa !5
  %22 = bitcast i32** %l_3405 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i32* null, i32** %l_3405, align 8, !tbaa !5
  %23 = bitcast i32** %l_3406 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* @g_2791, i32** %l_3406, align 8, !tbaa !5
  %24 = bitcast i32** %l_3407 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32* %l_6, i32** %l_3407, align 8, !tbaa !5
  %25 = bitcast [5 x [9 x [1 x i32*]]]* %l_3408 to i8*
  call void @llvm.lifetime.start(i64 360, i8* %25) #1
  %26 = getelementptr inbounds [5 x [9 x [1 x i32*]]], [5 x [9 x [1 x i32*]]]* %l_3408, i64 0, i64 0
  %27 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %26, i64 0, i64 0
  %28 = getelementptr inbounds [1 x i32*], [1 x i32*]* %27, i64 0, i64 0
  store i32* %l_6, i32** %28, !tbaa !5
  %29 = getelementptr inbounds [1 x i32*], [1 x i32*]* %27, i64 1
  %30 = getelementptr inbounds [1 x i32*], [1 x i32*]* %29, i64 0, i64 0
  store i32* null, i32** %30, !tbaa !5
  %31 = getelementptr inbounds [1 x i32*], [1 x i32*]* %29, i64 1
  %32 = getelementptr inbounds [1 x i32*], [1 x i32*]* %31, i64 0, i64 0
  store i32* null, i32** %32, !tbaa !5
  %33 = getelementptr inbounds [1 x i32*], [1 x i32*]* %31, i64 1
  %34 = getelementptr inbounds [1 x i32*], [1 x i32*]* %33, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 1), i32** %34, !tbaa !5
  %35 = getelementptr inbounds [1 x i32*], [1 x i32*]* %33, i64 1
  %36 = getelementptr inbounds [1 x i32*], [1 x i32*]* %35, i64 0, i64 0
  %37 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %37, i32** %36, !tbaa !5
  %38 = getelementptr inbounds [1 x i32*], [1 x i32*]* %35, i64 1
  %39 = getelementptr inbounds [1 x i32*], [1 x i32*]* %38, i64 0, i64 0
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %40, i32** %39, !tbaa !5
  %41 = getelementptr inbounds [1 x i32*], [1 x i32*]* %38, i64 1
  %42 = getelementptr inbounds [1 x i32*], [1 x i32*]* %41, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 1), i32** %42, !tbaa !5
  %43 = getelementptr inbounds [1 x i32*], [1 x i32*]* %41, i64 1
  %44 = getelementptr inbounds [1 x i32*], [1 x i32*]* %43, i64 0, i64 0
  store i32* null, i32** %44, !tbaa !5
  %45 = getelementptr inbounds [1 x i32*], [1 x i32*]* %43, i64 1
  %46 = getelementptr inbounds [1 x i32*], [1 x i32*]* %45, i64 0, i64 0
  store i32* null, i32** %46, !tbaa !5
  %47 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %26, i64 1
  %48 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %47, i64 0, i64 0
  %49 = getelementptr inbounds [1 x i32*], [1 x i32*]* %48, i64 0, i64 0
  store i32* %l_6, i32** %49, !tbaa !5
  %50 = getelementptr inbounds [1 x i32*], [1 x i32*]* %48, i64 1
  %51 = getelementptr inbounds [1 x i32*], [1 x i32*]* %50, i64 0, i64 0
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %52, i32** %51, !tbaa !5
  %53 = getelementptr inbounds [1 x i32*], [1 x i32*]* %50, i64 1
  %54 = getelementptr inbounds [1 x i32*], [1 x i32*]* %53, i64 0, i64 0
  store i32* null, i32** %54, !tbaa !5
  %55 = getelementptr inbounds [1 x i32*], [1 x i32*]* %53, i64 1
  %56 = getelementptr inbounds [1 x i32*], [1 x i32*]* %55, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %56, !tbaa !5
  %57 = getelementptr inbounds [1 x i32*], [1 x i32*]* %55, i64 1
  %58 = getelementptr inbounds [1 x i32*], [1 x i32*]* %57, i64 0, i64 0
  store i32* null, i32** %58, !tbaa !5
  %59 = getelementptr inbounds [1 x i32*], [1 x i32*]* %57, i64 1
  %60 = getelementptr inbounds [1 x i32*], [1 x i32*]* %59, i64 0, i64 0
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %61, i32** %60, !tbaa !5
  %62 = getelementptr inbounds [1 x i32*], [1 x i32*]* %59, i64 1
  %63 = getelementptr inbounds [1 x i32*], [1 x i32*]* %62, i64 0, i64 0
  store i32* %l_6, i32** %63, !tbaa !5
  %64 = getelementptr inbounds [1 x i32*], [1 x i32*]* %62, i64 1
  %65 = getelementptr inbounds [1 x i32*], [1 x i32*]* %64, i64 0, i64 0
  store i32* null, i32** %65, !tbaa !5
  %66 = getelementptr inbounds [1 x i32*], [1 x i32*]* %64, i64 1
  %67 = getelementptr inbounds [1 x i32*], [1 x i32*]* %66, i64 0, i64 0
  store i32* null, i32** %67, !tbaa !5
  %68 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %47, i64 1
  %69 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %68, i64 0, i64 0
  %70 = getelementptr inbounds [1 x i32*], [1 x i32*]* %69, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 1), i32** %70, !tbaa !5
  %71 = getelementptr inbounds [1 x i32*], [1 x i32*]* %69, i64 1
  %72 = getelementptr inbounds [1 x i32*], [1 x i32*]* %71, i64 0, i64 0
  %73 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %73, i32** %72, !tbaa !5
  %74 = getelementptr inbounds [1 x i32*], [1 x i32*]* %71, i64 1
  %75 = getelementptr inbounds [1 x i32*], [1 x i32*]* %74, i64 0, i64 0
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %76, i32** %75, !tbaa !5
  %77 = getelementptr inbounds [1 x i32*], [1 x i32*]* %74, i64 1
  %78 = getelementptr inbounds [1 x i32*], [1 x i32*]* %77, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 1), i32** %78, !tbaa !5
  %79 = getelementptr inbounds [1 x i32*], [1 x i32*]* %77, i64 1
  %80 = getelementptr inbounds [1 x i32*], [1 x i32*]* %79, i64 0, i64 0
  store i32* null, i32** %80, !tbaa !5
  %81 = getelementptr inbounds [1 x i32*], [1 x i32*]* %79, i64 1
  %82 = getelementptr inbounds [1 x i32*], [1 x i32*]* %81, i64 0, i64 0
  store i32* null, i32** %82, !tbaa !5
  %83 = getelementptr inbounds [1 x i32*], [1 x i32*]* %81, i64 1
  %84 = getelementptr inbounds [1 x i32*], [1 x i32*]* %83, i64 0, i64 0
  store i32* %l_6, i32** %84, !tbaa !5
  %85 = getelementptr inbounds [1 x i32*], [1 x i32*]* %83, i64 1
  %86 = getelementptr inbounds [1 x i32*], [1 x i32*]* %85, i64 0, i64 0
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %87, i32** %86, !tbaa !5
  %88 = getelementptr inbounds [1 x i32*], [1 x i32*]* %85, i64 1
  %89 = getelementptr inbounds [1 x i32*], [1 x i32*]* %88, i64 0, i64 0
  store i32* null, i32** %89, !tbaa !5
  %90 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %68, i64 1
  %91 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %90, i64 0, i64 0
  %92 = getelementptr inbounds [1 x i32*], [1 x i32*]* %91, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %92, !tbaa !5
  %93 = getelementptr inbounds [1 x i32*], [1 x i32*]* %91, i64 1
  %94 = getelementptr inbounds [1 x i32*], [1 x i32*]* %93, i64 0, i64 0
  store i32* null, i32** %94, !tbaa !5
  %95 = getelementptr inbounds [1 x i32*], [1 x i32*]* %93, i64 1
  %96 = getelementptr inbounds [1 x i32*], [1 x i32*]* %95, i64 0, i64 0
  %97 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %97, i32** %96, !tbaa !5
  %98 = getelementptr inbounds [1 x i32*], [1 x i32*]* %95, i64 1
  %99 = getelementptr inbounds [1 x i32*], [1 x i32*]* %98, i64 0, i64 0
  store i32* %l_6, i32** %99, !tbaa !5
  %100 = getelementptr inbounds [1 x i32*], [1 x i32*]* %98, i64 1
  %101 = getelementptr inbounds [1 x i32*], [1 x i32*]* %100, i64 0, i64 0
  store i32* null, i32** %101, !tbaa !5
  %102 = getelementptr inbounds [1 x i32*], [1 x i32*]* %100, i64 1
  %103 = getelementptr inbounds [1 x i32*], [1 x i32*]* %102, i64 0, i64 0
  store i32* null, i32** %103, !tbaa !5
  %104 = getelementptr inbounds [1 x i32*], [1 x i32*]* %102, i64 1
  %105 = getelementptr inbounds [1 x i32*], [1 x i32*]* %104, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 1), i32** %105, !tbaa !5
  %106 = getelementptr inbounds [1 x i32*], [1 x i32*]* %104, i64 1
  %107 = getelementptr inbounds [1 x i32*], [1 x i32*]* %106, i64 0, i64 0
  %108 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %108, i32** %107, !tbaa !5
  %109 = getelementptr inbounds [1 x i32*], [1 x i32*]* %106, i64 1
  %110 = getelementptr inbounds [1 x i32*], [1 x i32*]* %109, i64 0, i64 0
  %111 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %111, i32** %110, !tbaa !5
  %112 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %90, i64 1
  %113 = getelementptr inbounds [9 x [1 x i32*]], [9 x [1 x i32*]]* %112, i64 0, i64 0
  %114 = getelementptr inbounds [1 x i32*], [1 x i32*]* %113, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 1), i32** %114, !tbaa !5
  %115 = getelementptr inbounds [1 x i32*], [1 x i32*]* %113, i64 1
  %116 = getelementptr inbounds [1 x i32*], [1 x i32*]* %115, i64 0, i64 0
  store i32* null, i32** %116, !tbaa !5
  %117 = getelementptr inbounds [1 x i32*], [1 x i32*]* %115, i64 1
  %118 = getelementptr inbounds [1 x i32*], [1 x i32*]* %117, i64 0, i64 0
  store i32* null, i32** %118, !tbaa !5
  %119 = getelementptr inbounds [1 x i32*], [1 x i32*]* %117, i64 1
  %120 = getelementptr inbounds [1 x i32*], [1 x i32*]* %119, i64 0, i64 0
  store i32* %l_6, i32** %120, !tbaa !5
  %121 = getelementptr inbounds [1 x i32*], [1 x i32*]* %119, i64 1
  %122 = getelementptr inbounds [1 x i32*], [1 x i32*]* %121, i64 0, i64 0
  %123 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %123, i32** %122, !tbaa !5
  %124 = getelementptr inbounds [1 x i32*], [1 x i32*]* %121, i64 1
  %125 = getelementptr inbounds [1 x i32*], [1 x i32*]* %124, i64 0, i64 0
  store i32* null, i32** %125, !tbaa !5
  %126 = getelementptr inbounds [1 x i32*], [1 x i32*]* %124, i64 1
  %127 = getelementptr inbounds [1 x i32*], [1 x i32*]* %126, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %127, !tbaa !5
  %128 = getelementptr inbounds [1 x i32*], [1 x i32*]* %126, i64 1
  %129 = getelementptr inbounds [1 x i32*], [1 x i32*]* %128, i64 0, i64 0
  store i32* null, i32** %129, !tbaa !5
  %130 = getelementptr inbounds [1 x i32*], [1 x i32*]* %128, i64 1
  %131 = getelementptr inbounds [1 x i32*], [1 x i32*]* %130, i64 0, i64 0
  %132 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32* %132, i32** %131, !tbaa !5
  %133 = bitcast i32* %l_3413 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  store i32 -1630520399, i32* %l_3413, align 4, !tbaa !1
  %134 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  %135 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load i32, i32* %l_6, align 4, !tbaa !1
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

; <label>:139                                     ; preds = %13
  %140 = load i16, i16* %l_7, align 2, !tbaa !10
  %141 = sext i16 %140 to i64
  store i64 %141, i64* %1
  store i32 1, i32* %2
  br label %422

; <label>:142                                     ; preds = %13
  %143 = bitcast [9 x i32]* %l_8 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %143) #1
  %144 = bitcast i16** %l_26 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #1
  store i16* getelementptr inbounds ([7 x [6 x i16]], [7 x [6 x i16]]* @g_27, i32 0, i64 6, i64 1), i16** %l_26, align 8, !tbaa !5
  %145 = bitcast i64** %l_30 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #1
  store i64* @g_31, i64** %l_30, align 8, !tbaa !5
  %146 = bitcast i8** %l_34 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %146) #1
  store i8* null, i8** %l_34, align 8, !tbaa !5
  %147 = bitcast i8** %l_35 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  store i8* @g_36, i8** %l_35, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3051) #1
  store i8 -61, i8* %l_3051, align 1, !tbaa !9
  %148 = bitcast i16* %l_3052 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %148) #1
  store i16 -1, i16* %l_3052, align 2, !tbaa !10
  %149 = bitcast i32* %l_3386 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #1
  store i32 -1990456129, i32* %l_3386, align 4, !tbaa !1
  %150 = bitcast i32** %l_3398 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #1
  store i32* @g_1220, i32** %l_3398, align 8, !tbaa !5
  %151 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %159, %142
  %153 = load i32, i32* %i2, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 9
  br i1 %154, label %155, label %162

; <label>:155                                     ; preds = %152
  %156 = load i32, i32* %i2, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* %l_8, i32 0, i64 %157
  store i32 2135235922, i32* %158, align 4, !tbaa !1
  br label %159

; <label>:159                                     ; preds = %155
  %160 = load i32, i32* %i2, align 4, !tbaa !1
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %i2, align 4, !tbaa !1
  br label %152

; <label>:162                                     ; preds = %152
  %163 = getelementptr inbounds [9 x i32], [9 x i32]* %l_8, i32 0, i64 8
  %164 = load i32, i32* %163, align 4, !tbaa !1
  %165 = sext i32 %164 to i64
  %166 = icmp sgt i64 60837, %165
  %167 = zext i1 %166 to i32
  %168 = sext i32 %167 to i64
  %169 = icmp sgt i64 203, %168
  %170 = zext i1 %169 to i32
  %171 = load i8, i8* %l_23, align 1, !tbaa !9
  %172 = zext i8 %171 to i16
  %173 = load i32, i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), align 4, !tbaa !1
  %174 = trunc i32 %173 to i8
  %175 = load i16*, i16** %l_26, align 8, !tbaa !5
  %176 = load i16, i16* %175, align 2, !tbaa !10
  %177 = add i16 %176, 1
  store i16 %177, i16* %175, align 2, !tbaa !10
  %178 = load i32, i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), align 4, !tbaa !1
  %179 = trunc i32 %178 to i16
  %180 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %176, i16 zeroext %179)
  %181 = zext i16 %180 to i64
  %182 = load i64*, i64** %l_30, align 8, !tbaa !5
  %183 = load i64, i64* %182, align 8, !tbaa !7
  %184 = and i64 %183, %181
  store i64 %184, i64* %182, align 8, !tbaa !7
  %185 = load i8*, i8** %l_35, align 8, !tbaa !5
  store i8 -69, i8* %185, align 1, !tbaa !9
  %186 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext -69, i32 3)
  %187 = load i8, i8* %l_23, align 1, !tbaa !9
  %188 = zext i8 %187 to i64
  %189 = icmp eq i64 78, %188
  %190 = zext i1 %189 to i32
  %191 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_2, i32 0, i64 7), align 4, !tbaa !1
  %192 = and i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = icmp sge i64 %184, %193
  %195 = zext i1 %194 to i32
  %196 = trunc i32 %195 to i8
  %197 = load i32, i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 0, i64 1, i64 0), align 4, !tbaa !1
  %198 = getelementptr inbounds [9 x i32], [9 x i32]* %l_8, i32 0, i64 7
  %199 = load i32, i32* %198, align 4, !tbaa !1
  %200 = sext i32 %199 to i64
  %201 = call zeroext i8 @func_17(i16 zeroext %172, i8 signext %174, i8 zeroext %196, i32 %197, i64 %200)
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* %l_3051, align 1, !tbaa !9
  %204 = sext i8 %203 to i32
  %205 = xor i32 %202, %204
  %206 = load i32, i32* %l_6, align 4, !tbaa !1
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds [9 x i32], [9 x i32]* %l_8, i32 0, i64 1
  %209 = load i32, i32* %208, align 4, !tbaa !1
  %210 = trunc i32 %209 to i16
  %211 = load i32*, i32** @g_1670, align 8, !tbaa !5
  %212 = load i32, i32* %211, align 4, !tbaa !1
  %213 = load i16, i16* %l_3052, align 2, !tbaa !10
  %214 = trunc i16 %213 to i8
  %215 = call zeroext i16 @func_11(i32 %205, i8 zeroext %207, i16 zeroext %210, i32 %212, i8 zeroext %214)
  %216 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext 22247, i16 signext %215)
  %217 = sext i16 %216 to i64
  %218 = load i64***, i64**** @g_1636, align 8, !tbaa !5
  %219 = load volatile i64**, i64*** %218, align 8, !tbaa !5
  %220 = load i64*, i64** %219, align 8, !tbaa !5
  %221 = load i64, i64* %220, align 8, !tbaa !7
  %222 = icmp ne i64 %217, %221
  %223 = zext i1 %222 to i32
  %224 = or i32 %170, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %239

; <label>:226                                     ; preds = %162
  store i8 0, i8* %l_3051, align 1, !tbaa !9
  br label %227

; <label>:227                                     ; preds = %233, %226
  %228 = load i8, i8* %l_3051, align 1, !tbaa !9
  %229 = sext i8 %228 to i32
  %230 = icmp sle i32 %229, 19
  br i1 %230, label %231, label %238

; <label>:231                                     ; preds = %227
  %232 = load i16*****, i16****** @g_3364, align 8, !tbaa !5
  store i16***** %232, i16****** @g_3364, align 8, !tbaa !5
  br label %233

; <label>:233                                     ; preds = %231
  %234 = load i8, i8* %l_3051, align 1, !tbaa !9
  %235 = sext i8 %234 to i64
  %236 = call i64 @safe_add_func_uint64_t_u_u(i64 %235, i64 6)
  %237 = trunc i64 %236 to i8
  store i8 %237, i8* %l_3051, align 1, !tbaa !9
  br label %227

; <label>:238                                     ; preds = %227
  br label %244

; <label>:239                                     ; preds = %162
  %240 = load i16, i16* %l_3052, align 2, !tbaa !10
  %241 = icmp ne i16 %240, 0
  br i1 %241, label %242, label %243

; <label>:242                                     ; preds = %239
  store i32 2, i32* %2
  br label %403

; <label>:243                                     ; preds = %239
  br label %244

; <label>:244                                     ; preds = %243, %238
  %245 = load i32*, i32** @g_539, align 8, !tbaa !5
  %246 = load i32, i32* %245, align 4, !tbaa !1
  %247 = add i32 %246, -1
  store i32 %247, i32* %245, align 4, !tbaa !1
  %248 = load i32*, i32** @g_1670, align 8, !tbaa !5
  %249 = load i32, i32* %248, align 4, !tbaa !1
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %325

; <label>:251                                     ; preds = %244
  %252 = getelementptr inbounds [9 x i32], [9 x i32]* %l_8, i32 0, i64 8
  %253 = load i32, i32* %252, align 4, !tbaa !1
  %254 = load i8***, i8**** @g_2545, align 8, !tbaa !5
  %255 = load i8**, i8*** %254, align 8, !tbaa !5
  %256 = load i8*, i8** %255, align 8, !tbaa !5
  %257 = load i8, i8* %256, align 1, !tbaa !9
  %258 = zext i8 %257 to i64
  %259 = xor i64 2755659012, %258
  %260 = icmp ne i64 %259, 0
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  %263 = load i16, i16* %l_3382, align 2, !tbaa !10
  %264 = load i16, i16* %l_3052, align 2, !tbaa !10
  %265 = sext i16 %264 to i32
  %266 = load i32**, i32*** @g_926, align 8, !tbaa !5
  %267 = load i32*, i32** %266, align 8, !tbaa !5
  %268 = load i32, i32* %267, align 4, !tbaa !1
  %269 = load i8, i8* %l_23, align 1, !tbaa !9
  %270 = zext i8 %269 to i32
  %271 = and i32 %265, %270
  %272 = load i32, i32* %l_3386, align 4, !tbaa !1
  %273 = icmp eq i32 %271, %272
  %274 = zext i1 %273 to i32
  %275 = sext i32 %274 to i64
  %276 = load i64***, i64**** @g_1636, align 8, !tbaa !5
  %277 = load volatile i64**, i64*** %276, align 8, !tbaa !5
  %278 = load i64*, i64** %277, align 8, !tbaa !5
  %279 = load i64, i64* %278, align 8, !tbaa !7
  %280 = xor i64 %279, %275
  store i64 %280, i64* %278, align 8, !tbaa !7
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %286

; <label>:282                                     ; preds = %251
  %283 = load volatile i64*, i64** @g_1107, align 8, !tbaa !5
  %284 = load i64, i64* %283, align 8, !tbaa !7
  %285 = icmp ne i64 %284, 0
  br label %286

; <label>:286                                     ; preds = %282, %251
  %287 = phi i1 [ false, %251 ], [ %285, %282 ]
  %288 = zext i1 %287 to i32
  %289 = trunc i32 %288 to i8
  %290 = load i16, i16* %l_3052, align 2, !tbaa !10
  %291 = trunc i16 %290 to i8
  %292 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %289, i8 signext %291)
  %293 = load i16*, i16** @g_637, align 8, !tbaa !5
  %294 = load i16, i16* %293, align 2, !tbaa !10
  %295 = zext i16 %294 to i32
  %296 = load i8, i8* %l_23, align 1, !tbaa !9
  %297 = zext i8 %296 to i32
  %298 = xor i32 %295, %297
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i32
  %302 = load i16*, i16** @g_3368, align 8, !tbaa !5
  %303 = load volatile i16, i16* %302, align 2, !tbaa !10
  %304 = load i8, i8* %l_23, align 1, !tbaa !9
  %305 = zext i8 %304 to i32
  %306 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %263, i32 %305)
  %307 = zext i16 %306 to i32
  %308 = or i32 %262, %307
  %309 = load i8, i8* %l_3051, align 1, !tbaa !9
  %310 = sext i8 %309 to i32
  %311 = icmp eq i32 %308, %310
  %312 = zext i1 %311 to i32
  %313 = load i32, i32* %l_3386, align 4, !tbaa !1
  %314 = trunc i32 %313 to i16
  %315 = load i32, i32* %l_6, align 4, !tbaa !1
  %316 = trunc i32 %315 to i16
  %317 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %314, i16 signext %316)
  %318 = sext i16 %317 to i32
  %319 = icmp ne i32 %253, %318
  %320 = zext i1 %319 to i32
  %321 = trunc i32 %320 to i16
  %322 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %321, i16 signext 23247)
  %323 = sext i16 %322 to i32
  %324 = icmp ne i32 %323, 0
  br label %325

; <label>:325                                     ; preds = %286, %244
  %326 = phi i1 [ false, %244 ], [ %324, %286 ]
  %327 = zext i1 %326 to i32
  %328 = trunc i32 %327 to i16
  %329 = load i16, i16* %l_3052, align 2, !tbaa !10
  %330 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %328, i16 zeroext %329)
  %331 = zext i16 %330 to i32
  %332 = call i32 @safe_div_func_uint32_t_u_u(i32 %246, i32 %331)
  store i32 %332, i32* %l_6, align 4, !tbaa !1
  %333 = load i16, i16* %l_3052, align 2, !tbaa !10
  %334 = trunc i16 %333 to i8
  %335 = load i8*, i8** @g_428, align 8, !tbaa !5
  %336 = load i8, i8* %335, align 1, !tbaa !9
  %337 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %334, i8 signext %336)
  %338 = sext i8 %337 to i32
  store i32 %338, i32* %l_3389, align 4, !tbaa !1
  %339 = load i16, i16* %l_7, align 2, !tbaa !10
  %340 = sext i16 %339 to i32
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %390

; <label>:342                                     ; preds = %325
  %343 = load i16, i16* %l_3052, align 2, !tbaa !10
  %344 = sext i16 %343 to i32
  %345 = load i16, i16* %l_3382, align 2, !tbaa !10
  %346 = zext i16 %345 to i32
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %378

; <label>:348                                     ; preds = %342
  %349 = getelementptr inbounds [9 x i32], [9 x i32]* %l_8, i32 0, i64 5
  %350 = load i32, i32* %349, align 4, !tbaa !1
  %351 = trunc i32 %350 to i8
  %352 = load i16, i16* %l_3396, align 2, !tbaa !10
  %353 = trunc i16 %352 to i8
  %354 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %351, i8 zeroext %353)
  %355 = zext i8 %354 to i32
  %356 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 4
  store i32 %355, i32* %356, align 4, !tbaa !1
  %357 = icmp ne i32 %355, 0
  br i1 %357, label %359, label %358

; <label>:358                                     ; preds = %348
  br label %359

; <label>:359                                     ; preds = %358, %348
  %360 = phi i1 [ true, %348 ], [ true, %358 ]
  %361 = zext i1 %360 to i32
  %362 = sext i32 %361 to i64
  %363 = load i8***, i8**** @g_2545, align 8, !tbaa !5
  %364 = load i8**, i8*** %363, align 8, !tbaa !5
  %365 = load i8*, i8** %364, align 8, !tbaa !5
  store i8 4, i8* %365, align 1, !tbaa !9
  %366 = xor i64 %362, 42
  %367 = load i32, i32* %l_6, align 4, !tbaa !1
  %368 = sext i32 %367 to i64
  %369 = icmp sge i64 %366, %368
  %370 = zext i1 %369 to i32
  %371 = load i32*, i32** @g_539, align 8, !tbaa !5
  %372 = load i32, i32* %371, align 4, !tbaa !1
  %373 = call i32 @safe_add_func_uint32_t_u_u(i32 %370, i32 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

; <label>:375                                     ; preds = %359
  br label %376

; <label>:376                                     ; preds = %375, %359
  %377 = phi i1 [ false, %359 ], [ true, %375 ]
  br label %378

; <label>:378                                     ; preds = %376, %342
  %379 = phi i1 [ false, %342 ], [ %377, %376 ]
  %380 = zext i1 %379 to i32
  %381 = load i8, i8* %l_3051, align 1, !tbaa !9
  %382 = sext i8 %381 to i32
  %383 = xor i32 %380, %382
  %384 = getelementptr inbounds [9 x i32], [9 x i32]* %l_8, i32 0, i64 8
  %385 = load i32, i32* %384, align 4, !tbaa !1
  %386 = icmp eq i32 %383, %385
  %387 = zext i1 %386 to i32
  %388 = load i32*, i32** @g_539, align 8, !tbaa !5
  store i32 %387, i32* %388, align 4, !tbaa !1
  %389 = icmp ne i32 %344, %387
  br label %390

; <label>:390                                     ; preds = %378, %325
  %391 = phi i1 [ false, %325 ], [ %389, %378 ]
  %392 = zext i1 %391 to i32
  %393 = load i8, i8* %l_23, align 1, !tbaa !9
  %394 = zext i8 %393 to i32
  %395 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext 0, i32 %394)
  %396 = zext i16 %395 to i32
  %397 = icmp sle i32 %338, %396
  %398 = zext i1 %397 to i32
  %399 = sext i32 %398 to i64
  %400 = icmp uge i64 %399, 249
  %401 = zext i1 %400 to i32
  %402 = load i32*, i32** %l_3398, align 8, !tbaa !5
  store i32 %401, i32* %402, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %403

; <label>:403                                     ; preds = %390, %242
  %404 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #1
  %405 = bitcast i32** %l_3398 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #1
  %406 = bitcast i32* %l_3386 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i16* %l_3052 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %407) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3051) #1
  %408 = bitcast i8** %l_35 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #1
  %409 = bitcast i8** %l_34 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %409) #1
  %410 = bitcast i64** %l_30 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %410) #1
  %411 = bitcast i16** %l_26 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast [9 x i32]* %l_8 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %412) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %422 [
    i32 0, label %413
  ]

; <label>:413                                     ; preds = %403
  br label %414

; <label>:414                                     ; preds = %413
  %415 = load i8, i8* %l_3409, align 1, !tbaa !9
  %416 = add i8 %415, -1
  store i8 %416, i8* %l_3409, align 1, !tbaa !9
  %417 = getelementptr inbounds [7 x i32], [7 x i32]* %l_3397, i32 0, i64 1
  %418 = load i32***, i32**** @g_814, align 8, !tbaa !5
  %419 = load i32**, i32*** %418, align 8, !tbaa !5
  store i32* %417, i32** %419, align 8, !tbaa !5
  %420 = load i32, i32* %l_3413, align 4, !tbaa !1
  %421 = add i32 %420, 1
  store i32 %421, i32* %l_3413, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %422

; <label>:422                                     ; preds = %414, %403, %139
  %423 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #1
  %424 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %424) #1
  %425 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #1
  %426 = bitcast i32* %l_3413 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #1
  %427 = bitcast [5 x [9 x [1 x i32*]]]* %l_3408 to i8*
  call void @llvm.lifetime.end(i64 360, i8* %427) #1
  %428 = bitcast i32** %l_3407 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %428) #1
  %429 = bitcast i32** %l_3406 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %429) #1
  %430 = bitcast i32** %l_3405 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %430) #1
  %431 = bitcast i32** %l_3404 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %431) #1
  %432 = bitcast i32** %l_3403 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #1
  %433 = bitcast i32** %l_3402 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #1
  %434 = bitcast i32** %l_3401 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %434) #1
  %435 = bitcast i32** %l_3400 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %435) #1
  %436 = bitcast i32** %l_3399 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %436) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_23) #1
  %437 = bitcast i32* %l_6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %cleanup.dest.3 = load i32, i32* %2
  switch i32 %cleanup.dest.3, label %445 [
    i32 0, label %438
    i32 2, label %442
  ]

; <label>:438                                     ; preds = %422
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load i32, i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), align 4, !tbaa !1
  %441 = add nsw i32 %440, -1
  store i32 %441, i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), align 4, !tbaa !1
  br label %10

; <label>:442                                     ; preds = %422, %10
  %443 = load i64*, i64** @g_1633, align 8, !tbaa !5
  %444 = load i64, i64* %443, align 8, !tbaa !7
  store i64 %444, i64* %1
  store i32 1, i32* %2
  br label %445

; <label>:445                                     ; preds = %442, %422
  %446 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %446) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3409) #1
  %447 = bitcast [7 x i32]* %l_3397 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %447) #1
  %448 = bitcast i16* %l_3396 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %448) #1
  %449 = bitcast i32* %l_3389 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %449) #1
  %450 = bitcast i16* %l_3382 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %450) #1
  %451 = bitcast i16* %l_7 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %451) #1
  %452 = load i64, i64* %1
  ret i64 %452
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
define internal zeroext i16 @func_11(i32 %p_12, i8 zeroext %p_13, i16 zeroext %p_14, i32 %p_15, i8 zeroext %p_16) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %l_3055 = alloca i16, align 2
  %l_3058 = alloca i64, align 8
  %l_3061 = alloca i64*, align 8
  %l_3062 = alloca i32, align 4
  %l_3108 = alloca i32, align 4
  %l_3123 = alloca [6 x i32**], align 16
  %l_3135 = alloca i32, align 4
  %l_3136 = alloca i32, align 4
  %l_3171 = alloca i32****, align 8
  %l_3199 = alloca i8**, align 8
  %l_3217 = alloca i32, align 4
  %l_3234 = alloca i32, align 4
  %l_3246 = alloca [4 x i32], align 16
  %l_3306 = alloca i32, align 4
  %l_3354 = alloca i32, align 4
  %l_3359 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_3069 = alloca i8**, align 8
  %l_3095 = alloca [5 x i8], align 1
  %l_3126 = alloca i64*, align 8
  %l_3130 = alloca i32, align 4
  %l_3131 = alloca [8 x i32], align 16
  %l_3205 = alloca i8***, align 8
  %l_3248 = alloca i16, align 2
  %l_3262 = alloca i32**, align 8
  %l_3278 = alloca i32*, align 8
  %l_3333 = alloca i32***, align 8
  %i1 = alloca i32, align 4
  %l_3076 = alloca i8, align 1
  %l_3093 = alloca [7 x i16*], align 16
  %l_3109 = alloca i32, align 4
  %l_3120 = alloca i32**, align 8
  %l_3134 = alloca i32, align 4
  %l_3158 = alloca [10 x i16], align 16
  %l_3177 = alloca i32*, align 8
  %l_3213 = alloca i32, align 4
  %l_3241 = alloca i64, align 8
  %l_3247 = alloca [5 x i32], align 16
  %l_3277 = alloca i32*, align 8
  %l_3318 = alloca i16, align 2
  %l_3351 = alloca i16, align 2
  %i2 = alloca i32, align 4
  %l_3090 = alloca i16, align 2
  %l_3122 = alloca i32**, align 8
  %l_3121 = alloca [4 x [3 x [3 x i32***]]], align 16
  %l_3127 = alloca [6 x i8*], align 16
  %l_3128 = alloca i32, align 4
  %l_3132 = alloca i32, align 4
  %l_3172 = alloca [10 x i32****], align 16
  %l_3208 = alloca i32***, align 8
  %l_3207 = alloca [9 x i32****], align 16
  %l_3206 = alloca i32*****, align 8
  %i3 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_3073 = alloca i8, align 1
  %l_3083 = alloca [1 x i16], align 2
  %l_3094 = alloca i8***, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %6 = alloca i32
  %l_3358 = alloca [9 x i32**], align 16
  %i6 = alloca i32, align 4
  store i32 %p_12, i32* %1, align 4, !tbaa !1
  store i8 %p_13, i8* %2, align 1, !tbaa !9
  store i16 %p_14, i16* %3, align 2, !tbaa !10
  store i32 %p_15, i32* %4, align 4, !tbaa !1
  store i8 %p_16, i8* %5, align 1, !tbaa !9
  %7 = bitcast i16* %l_3055 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  store i16 777, i16* %l_3055, align 2, !tbaa !10
  %8 = bitcast i64* %l_3058 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64 6, i64* %l_3058, align 8, !tbaa !7
  %9 = bitcast i64** %l_3061 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64* null, i64** %l_3061, align 8, !tbaa !5
  %10 = bitcast i32* %l_3062 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %l_3062, align 4, !tbaa !1
  %11 = bitcast i32* %l_3108 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1, i32* %l_3108, align 4, !tbaa !1
  %12 = bitcast [6 x i32**]* %l_3123 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %12) #1
  %13 = bitcast [6 x i32**]* %l_3123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast ([6 x i32**]* @func_11.l_3123 to i8*), i64 48, i32 16, i1 false)
  %14 = bitcast i32* %l_3135 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 146573638, i32* %l_3135, align 4, !tbaa !1
  %15 = bitcast i32* %l_3136 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 -1, i32* %l_3136, align 4, !tbaa !1
  %16 = bitcast i32***** %l_3171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i32**** @g_567, i32***** %l_3171, align 8, !tbaa !5
  %17 = bitcast i8*** %l_3199 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i8** @g_633, i8*** %l_3199, align 8, !tbaa !5
  %18 = bitcast i32* %l_3217 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 -3, i32* %l_3217, align 4, !tbaa !1
  %19 = bitcast i32* %l_3234 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %l_3234, align 4, !tbaa !1
  %20 = bitcast [4 x i32]* %l_3246 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast [4 x i32]* %l_3246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([4 x i32]* @func_11.l_3246 to i8*), i64 16, i32 16, i1 false)
  %22 = bitcast i32* %l_3306 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %l_3306, align 4, !tbaa !1
  %23 = bitcast i32* %l_3354 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 1, i32* %l_3354, align 4, !tbaa !1
  %24 = bitcast i32** %l_3359 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32* @g_3360, i32** %l_3359, align 8, !tbaa !5
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i16, i16* %l_3055, align 2, !tbaa !10
  %27 = load i16*, i16** @g_1474, align 8, !tbaa !5
  store i16 1, i16* %27, align 2, !tbaa !10
  %28 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %26, i32 1)
  %29 = sext i16 %28 to i32
  %30 = load i64, i64* %l_3058, align 8, !tbaa !7
  %31 = load i64, i64* %l_3058, align 8, !tbaa !7
  %32 = trunc i64 %31 to i8
  %33 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext 0, i8 zeroext %32)
  %34 = zext i8 %33 to i32
  %35 = load i64*, i64** %l_3061, align 8, !tbaa !5
  %36 = load i64*, i64** %l_3061, align 8, !tbaa !5
  %37 = icmp eq i64* %35, %36
  %38 = zext i1 %37 to i32
  %39 = trunc i32 %38 to i16
  %40 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %39, i16 zeroext -12213)
  %41 = zext i16 %40 to i32
  %42 = icmp sle i32 %34, %41
  br i1 %42, label %46, label %43

; <label>:43                                      ; preds = %0
  %44 = load i64, i64* %l_3058, align 8, !tbaa !7
  %45 = icmp ne i64 %44, 0
  br label %46

; <label>:46                                      ; preds = %43, %0
  %47 = phi i1 [ true, %0 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = load i8*, i8** @g_428, align 8, !tbaa !5
  %50 = load i8, i8* %49, align 1, !tbaa !9
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = xor i32 %29, %53
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 2179531803557058638
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %l_3062, align 4, !tbaa !1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %447

; <label>:59                                      ; preds = %46
  %60 = bitcast i8*** %l_3069 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  store i8** @g_132, i8*** %l_3069, align 8, !tbaa !5
  %61 = bitcast [5 x i8]* %l_3095 to i8*
  call void @llvm.lifetime.start(i64 5, i8* %61) #1
  %62 = bitcast i64** %l_3126 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  store i64* @g_402, i64** %l_3126, align 8, !tbaa !5
  %63 = bitcast i32* %l_3130 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  store i32 -545831254, i32* %l_3130, align 4, !tbaa !1
  %64 = bitcast [8 x i32]* %l_3131 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %64) #1
  %65 = bitcast i8**** %l_3205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  store i8*** @g_632, i8**** %l_3205, align 8, !tbaa !5
  %66 = bitcast i16* %l_3248 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %66) #1
  store i16 5, i16* %l_3248, align 2, !tbaa !10
  %67 = bitcast i32*** %l_3262 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  store i32** @g_2263, i32*** %l_3262, align 8, !tbaa !5
  %68 = bitcast i32** %l_3278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  store i32* @g_2791, i32** %l_3278, align 8, !tbaa !5
  %69 = bitcast i32**** %l_3333 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  store i32*** null, i32**** %l_3333, align 8, !tbaa !5
  %70 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %71

; <label>:71                                      ; preds = %78, %59
  %72 = load i32, i32* %i1, align 4, !tbaa !1
  %73 = icmp slt i32 %72, 5
  br i1 %73, label %74, label %81

; <label>:74                                      ; preds = %71
  %75 = load i32, i32* %i1, align 4, !tbaa !1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %l_3095, i32 0, i64 %76
  store i8 -2, i8* %77, align 1, !tbaa !9
  br label %78

; <label>:78                                      ; preds = %74
  %79 = load i32, i32* %i1, align 4, !tbaa !1
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %i1, align 4, !tbaa !1
  br label %71

; <label>:81                                      ; preds = %71
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %82

; <label>:82                                      ; preds = %89, %81
  %83 = load i32, i32* %i1, align 4, !tbaa !1
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %92

; <label>:85                                      ; preds = %82
  %86 = load i32, i32* %i1, align 4, !tbaa !1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %l_3131, i32 0, i64 %87
  store i32 -322033361, i32* %88, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %85
  %90 = load i32, i32* %i1, align 4, !tbaa !1
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %i1, align 4, !tbaa !1
  br label %82

; <label>:92                                      ; preds = %82
  store i8 0, i8* %2, align 1, !tbaa !9
  br label %93

; <label>:93                                      ; preds = %432, %92
  %94 = load i8, i8* %2, align 1, !tbaa !9
  %95 = zext i8 %94 to i32
  %96 = icmp sgt i32 %95, 3
  br i1 %96, label %97, label %435

; <label>:97                                      ; preds = %93
  call void @llvm.lifetime.start(i64 1, i8* %l_3076) #1
  store i8 -51, i8* %l_3076, align 1, !tbaa !9
  %98 = bitcast [7 x i16*]* %l_3093 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %98) #1
  %99 = bitcast [7 x i16*]* %l_3093 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* bitcast ([7 x i16*]* @func_11.l_3093 to i8*), i64 56, i32 16, i1 false)
  %100 = bitcast i32* %l_3109 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %100) #1
  store i32 768848258, i32* %l_3109, align 4, !tbaa !1
  %101 = bitcast i32*** %l_3120 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  store i32** @g_539, i32*** %l_3120, align 8, !tbaa !5
  %102 = bitcast i32* %l_3134 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  store i32 110524903, i32* %l_3134, align 4, !tbaa !1
  %103 = bitcast [10 x i16]* %l_3158 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %103) #1
  %104 = bitcast [10 x i16]* %l_3158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* bitcast ([10 x i16]* @func_11.l_3158 to i8*), i64 20, i32 16, i1 false)
  %105 = bitcast i32** %l_3177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  store i32* %l_3134, i32** %l_3177, align 8, !tbaa !5
  %106 = bitcast i32* %l_3213 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  store i32 1757065397, i32* %l_3213, align 4, !tbaa !1
  %107 = bitcast i64* %l_3241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  store i64 -2021819921947026335, i64* %l_3241, align 8, !tbaa !7
  %108 = bitcast [5 x i32]* %l_3247 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %108) #1
  %109 = bitcast i32** %l_3277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  store i32* %l_3130, i32** %l_3277, align 8, !tbaa !5
  %110 = bitcast i16* %l_3318 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %110) #1
  store i16 20196, i16* %l_3318, align 2, !tbaa !10
  %111 = bitcast i16* %l_3351 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %111) #1
  store i16 9, i16* %l_3351, align 2, !tbaa !10
  %112 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  store i32 0, i32* %i2, align 4, !tbaa !1
  br label %113

; <label>:113                                     ; preds = %120, %97
  %114 = load i32, i32* %i2, align 4, !tbaa !1
  %115 = icmp slt i32 %114, 5
  br i1 %115, label %116, label %123

; <label>:116                                     ; preds = %113
  %117 = load i32, i32* %i2, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [5 x i32], [5 x i32]* %l_3247, i32 0, i64 %118
  store i32 55268572, i32* %119, align 4, !tbaa !1
  br label %120

; <label>:120                                     ; preds = %116
  %121 = load i32, i32* %i2, align 4, !tbaa !1
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %i2, align 4, !tbaa !1
  br label %113

; <label>:123                                     ; preds = %113
  store i8 -7, i8* @g_1193, align 1, !tbaa !9
  br label %124

; <label>:124                                     ; preds = %415, %123
  %125 = load i8, i8* @g_1193, align 1, !tbaa !9
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, -18
  br i1 %127, label %128, label %418

; <label>:128                                     ; preds = %124
  %129 = bitcast i16* %l_3090 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %129) #1
  store i16 -2, i16* %l_3090, align 2, !tbaa !10
  %130 = bitcast i32*** %l_3122 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  store i32** @g_539, i32*** %l_3122, align 8, !tbaa !5
  %131 = bitcast [4 x [3 x [3 x i32***]]]* %l_3121 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %131) #1
  %132 = getelementptr inbounds [4 x [3 x [3 x i32***]]], [4 x [3 x [3 x i32***]]]* %l_3121, i64 0, i64 0
  %133 = getelementptr inbounds [3 x [3 x i32***]], [3 x [3 x i32***]]* %132, i64 0, i64 0
  %134 = getelementptr inbounds [3 x i32***], [3 x i32***]* %133, i64 0, i64 0
  store i32*** %l_3122, i32**** %134, !tbaa !5
  %135 = getelementptr inbounds i32***, i32**** %134, i64 1
  store i32*** %l_3122, i32**** %135, !tbaa !5
  %136 = getelementptr inbounds i32***, i32**** %135, i64 1
  store i32*** %l_3122, i32**** %136, !tbaa !5
  %137 = getelementptr inbounds [3 x i32***], [3 x i32***]* %133, i64 1
  %138 = getelementptr inbounds [3 x i32***], [3 x i32***]* %137, i64 0, i64 0
  store i32*** null, i32**** %138, !tbaa !5
  %139 = getelementptr inbounds i32***, i32**** %138, i64 1
  store i32*** %l_3122, i32**** %139, !tbaa !5
  %140 = getelementptr inbounds i32***, i32**** %139, i64 1
  store i32*** null, i32**** %140, !tbaa !5
  %141 = getelementptr inbounds [3 x i32***], [3 x i32***]* %137, i64 1
  %142 = getelementptr inbounds [3 x i32***], [3 x i32***]* %141, i64 0, i64 0
  store i32*** %l_3122, i32**** %142, !tbaa !5
  %143 = getelementptr inbounds i32***, i32**** %142, i64 1
  store i32*** %l_3122, i32**** %143, !tbaa !5
  %144 = getelementptr inbounds i32***, i32**** %143, i64 1
  store i32*** %l_3122, i32**** %144, !tbaa !5
  %145 = getelementptr inbounds [3 x [3 x i32***]], [3 x [3 x i32***]]* %132, i64 1
  %146 = getelementptr inbounds [3 x [3 x i32***]], [3 x [3 x i32***]]* %145, i64 0, i64 0
  %147 = getelementptr inbounds [3 x i32***], [3 x i32***]* %146, i64 0, i64 0
  store i32*** %l_3122, i32**** %147, !tbaa !5
  %148 = getelementptr inbounds i32***, i32**** %147, i64 1
  store i32*** %l_3122, i32**** %148, !tbaa !5
  %149 = getelementptr inbounds i32***, i32**** %148, i64 1
  store i32*** %l_3122, i32**** %149, !tbaa !5
  %150 = getelementptr inbounds [3 x i32***], [3 x i32***]* %146, i64 1
  %151 = getelementptr inbounds [3 x i32***], [3 x i32***]* %150, i64 0, i64 0
  store i32*** %l_3122, i32**** %151, !tbaa !5
  %152 = getelementptr inbounds i32***, i32**** %151, i64 1
  store i32*** %l_3122, i32**** %152, !tbaa !5
  %153 = getelementptr inbounds i32***, i32**** %152, i64 1
  store i32*** %l_3122, i32**** %153, !tbaa !5
  %154 = getelementptr inbounds [3 x i32***], [3 x i32***]* %150, i64 1
  %155 = getelementptr inbounds [3 x i32***], [3 x i32***]* %154, i64 0, i64 0
  store i32*** null, i32**** %155, !tbaa !5
  %156 = getelementptr inbounds i32***, i32**** %155, i64 1
  store i32*** %l_3122, i32**** %156, !tbaa !5
  %157 = getelementptr inbounds i32***, i32**** %156, i64 1
  store i32*** null, i32**** %157, !tbaa !5
  %158 = getelementptr inbounds [3 x [3 x i32***]], [3 x [3 x i32***]]* %145, i64 1
  %159 = getelementptr inbounds [3 x [3 x i32***]], [3 x [3 x i32***]]* %158, i64 0, i64 0
  %160 = getelementptr inbounds [3 x i32***], [3 x i32***]* %159, i64 0, i64 0
  store i32*** %l_3122, i32**** %160, !tbaa !5
  %161 = getelementptr inbounds i32***, i32**** %160, i64 1
  store i32*** %l_3122, i32**** %161, !tbaa !5
  %162 = getelementptr inbounds i32***, i32**** %161, i64 1
  store i32*** %l_3122, i32**** %162, !tbaa !5
  %163 = getelementptr inbounds [3 x i32***], [3 x i32***]* %159, i64 1
  %164 = getelementptr inbounds [3 x i32***], [3 x i32***]* %163, i64 0, i64 0
  store i32*** %l_3122, i32**** %164, !tbaa !5
  %165 = getelementptr inbounds i32***, i32**** %164, i64 1
  store i32*** %l_3122, i32**** %165, !tbaa !5
  %166 = getelementptr inbounds i32***, i32**** %165, i64 1
  store i32*** %l_3122, i32**** %166, !tbaa !5
  %167 = getelementptr inbounds [3 x i32***], [3 x i32***]* %163, i64 1
  %168 = getelementptr inbounds [3 x i32***], [3 x i32***]* %167, i64 0, i64 0
  store i32*** %l_3122, i32**** %168, !tbaa !5
  %169 = getelementptr inbounds i32***, i32**** %168, i64 1
  store i32*** %l_3122, i32**** %169, !tbaa !5
  %170 = getelementptr inbounds i32***, i32**** %169, i64 1
  store i32*** %l_3122, i32**** %170, !tbaa !5
  %171 = getelementptr inbounds [3 x [3 x i32***]], [3 x [3 x i32***]]* %158, i64 1
  %172 = getelementptr inbounds [3 x [3 x i32***]], [3 x [3 x i32***]]* %171, i64 0, i64 0
  %173 = getelementptr inbounds [3 x i32***], [3 x i32***]* %172, i64 0, i64 0
  store i32*** null, i32**** %173, !tbaa !5
  %174 = getelementptr inbounds i32***, i32**** %173, i64 1
  store i32*** %l_3122, i32**** %174, !tbaa !5
  %175 = getelementptr inbounds i32***, i32**** %174, i64 1
  store i32*** null, i32**** %175, !tbaa !5
  %176 = getelementptr inbounds [3 x i32***], [3 x i32***]* %172, i64 1
  %177 = getelementptr inbounds [3 x i32***], [3 x i32***]* %176, i64 0, i64 0
  store i32*** %l_3122, i32**** %177, !tbaa !5
  %178 = getelementptr inbounds i32***, i32**** %177, i64 1
  store i32*** %l_3122, i32**** %178, !tbaa !5
  %179 = getelementptr inbounds i32***, i32**** %178, i64 1
  store i32*** %l_3122, i32**** %179, !tbaa !5
  %180 = getelementptr inbounds [3 x i32***], [3 x i32***]* %176, i64 1
  %181 = getelementptr inbounds [3 x i32***], [3 x i32***]* %180, i64 0, i64 0
  store i32*** %l_3122, i32**** %181, !tbaa !5
  %182 = getelementptr inbounds i32***, i32**** %181, i64 1
  store i32*** %l_3122, i32**** %182, !tbaa !5
  %183 = getelementptr inbounds i32***, i32**** %182, i64 1
  store i32*** %l_3122, i32**** %183, !tbaa !5
  %184 = bitcast [6 x i8*]* %l_3127 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %184) #1
  %185 = bitcast [6 x i8*]* %l_3127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %185, i8* bitcast ([6 x i8*]* @func_11.l_3127 to i8*), i64 48, i32 16, i1 false)
  %186 = bitcast i32* %l_3128 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  store i32 -1761680359, i32* %l_3128, align 4, !tbaa !1
  %187 = bitcast i32* %l_3132 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  store i32 1, i32* %l_3132, align 4, !tbaa !1
  %188 = bitcast [10 x i32****]* %l_3172 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %188) #1
  %189 = bitcast [10 x i32****]* %l_3172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %189, i8* bitcast ([10 x i32****]* @func_11.l_3172 to i8*), i64 80, i32 16, i1 false)
  %190 = bitcast i32**** %l_3208 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %190) #1
  store i32*** @g_926, i32**** %l_3208, align 8, !tbaa !5
  %191 = bitcast [9 x i32****]* %l_3207 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %191) #1
  %192 = bitcast i32****** %l_3206 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %192) #1
  %193 = getelementptr inbounds [9 x i32****], [9 x i32****]* %l_3207, i32 0, i64 4
  store i32***** %193, i32****** %l_3206, align 8, !tbaa !5
  %194 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %194) #1
  %195 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %196 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #1
  store i32 0, i32* %i3, align 4, !tbaa !1
  br label %197

; <label>:197                                     ; preds = %204, %128
  %198 = load i32, i32* %i3, align 4, !tbaa !1
  %199 = icmp slt i32 %198, 9
  br i1 %199, label %200, label %207

; <label>:200                                     ; preds = %197
  %201 = load i32, i32* %i3, align 4, !tbaa !1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [9 x i32****], [9 x i32****]* %l_3207, i32 0, i64 %202
  store i32**** %l_3208, i32***** %203, align 8, !tbaa !5
  br label %204

; <label>:204                                     ; preds = %200
  %205 = load i32, i32* %i3, align 4, !tbaa !1
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %i3, align 4, !tbaa !1
  br label %197

; <label>:207                                     ; preds = %197
  store i32 0, i32* @g_62, align 4, !tbaa !1
  br label %208

; <label>:208                                     ; preds = %396, %207
  %209 = load i32, i32* @g_62, align 4, !tbaa !1
  %210 = icmp ugt i32 %209, 34
  br i1 %210, label %211, label %401

; <label>:211                                     ; preds = %208
  call void @llvm.lifetime.start(i64 1, i8* %l_3073) #1
  store i8 10, i8* %l_3073, align 1, !tbaa !9
  store i32 1, i32* @g_2184, align 4, !tbaa !1
  br label %212

; <label>:212                                     ; preds = %386, %211
  %213 = load i32, i32* @g_2184, align 4, !tbaa !1
  %214 = icmp ule i32 %213, 4
  br i1 %214, label %215, label %389

; <label>:215                                     ; preds = %212
  %216 = bitcast [1 x i16]* %l_3083 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %216) #1
  %217 = bitcast i8**** %l_3094 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %217) #1
  store i8*** @g_1697, i8**** %l_3094, align 8, !tbaa !5
  %218 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  %219 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  store i32 0, i32* %i4, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %227, %215
  %221 = load i32, i32* %i4, align 4, !tbaa !1
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %223, label %230

; <label>:223                                     ; preds = %220
  %224 = load i32, i32* %i4, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [1 x i16], [1 x i16]* %l_3083, i32 0, i64 %225
  store i16 -32242, i16* %226, align 2, !tbaa !10
  br label %227

; <label>:227                                     ; preds = %223
  %228 = load i32, i32* %i4, align 4, !tbaa !1
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %i4, align 4, !tbaa !1
  br label %220

; <label>:230                                     ; preds = %220
  %231 = load i8**, i8*** %l_3069, align 8, !tbaa !5
  %232 = load volatile i8***, i8**** @g_3070, align 8, !tbaa !5
  store i8** %231, i8*** %232, align 8, !tbaa !5
  %233 = load i8, i8* %l_3073, align 1, !tbaa !9
  %234 = sext i8 %233 to i16
  %235 = call signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %234, i32 10)
  %236 = sext i16 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %311, label %238

; <label>:238                                     ; preds = %230
  %239 = load i8*, i8** @g_633, align 8, !tbaa !5
  %240 = load i8, i8* %239, align 1, !tbaa !9
  %241 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %240, i8 zeroext -51)
  %242 = load i64, i64* %l_3058, align 8, !tbaa !7
  %243 = getelementptr inbounds [1 x i16], [1 x i16]* %l_3083, i32 0, i64 0
  %244 = load i16, i16* %243, align 2, !tbaa !10
  %245 = sext i16 %244 to i64
  store i8*** @g_1697, i8**** getelementptr inbounds ([10 x [2 x i8***]], [10 x [2 x i8***]]* @g_1696, i32 0, i64 5, i64 1), align 8, !tbaa !5
  %246 = load i32, i32* %4, align 4, !tbaa !1
  %247 = trunc i32 %246 to i16
  %248 = load i16*, i16** @g_637, align 8, !tbaa !5
  store i16 %247, i16* %248, align 2, !tbaa !10
  %249 = zext i16 %247 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

; <label>:251                                     ; preds = %238
  %252 = load i16, i16* %l_3090, align 2, !tbaa !10
  %253 = zext i16 %252 to i64
  %254 = load i8, i8* %5, align 1, !tbaa !9
  %255 = zext i8 %254 to i16
  %256 = load i64, i64* %l_3058, align 8, !tbaa !7
  %257 = trunc i64 %256 to i16
  %258 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %255, i16 zeroext %257)
  %259 = zext i16 %258 to i64
  %260 = call i64 @safe_div_func_uint64_t_u_u(i64 %253, i64 %259)
  %261 = and i64 %260, 10
  %262 = icmp ne i64 %261, 0
  br label %263

; <label>:263                                     ; preds = %251, %238
  %264 = phi i1 [ false, %238 ], [ %262, %251 ]
  %265 = zext i1 %264 to i32
  %266 = call i32 @safe_div_func_uint32_t_u_u(i32 %265, i32 205)
  %267 = icmp ult i32 %266, 205
  %268 = zext i1 %267 to i32
  %269 = getelementptr inbounds [7 x i16*], [7 x i16*]* %l_3093, i32 0, i64 2
  %270 = load i16*, i16** %269, align 8, !tbaa !5
  %271 = bitcast i16* %270 to i8*
  %272 = icmp ne i8* null, %271
  %273 = zext i1 %272 to i32
  %274 = load i8***, i8**** %l_3094, align 8, !tbaa !5
  %275 = icmp eq i8*** @g_1697, %274
  %276 = zext i1 %275 to i32
  %277 = sext i32 %276 to i64
  %278 = load i32, i32* %1, align 4, !tbaa !1
  %279 = zext i32 %278 to i64
  %280 = call i64 @safe_sub_func_int64_t_s_s(i64 %277, i64 %279)
  %281 = load i32, i32* %1, align 4, !tbaa !1
  %282 = zext i32 %281 to i64
  %283 = xor i64 %280, %282
  %284 = icmp sle i64 %245, %283
  %285 = zext i1 %284 to i32
  %286 = trunc i32 %285 to i16
  %287 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %286, i16 zeroext 0)
  %288 = zext i16 %287 to i32
  %289 = sext i32 %288 to i64
  %290 = and i64 %289, 7
  %291 = trunc i64 %290 to i16
  %292 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %291, i16 zeroext -10432)
  %293 = zext i16 %292 to i32
  %294 = xor i32 %293, -1
  %295 = load i32, i32* %l_3062, align 4, !tbaa !1
  %296 = sext i32 %295 to i64
  %297 = or i64 %296, 65528
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %l_3062, align 4, !tbaa !1
  %299 = sext i32 %298 to i64
  %300 = icmp eq i64 %242, %299
  %301 = zext i1 %300 to i32
  %302 = load i8, i8* %2, align 1, !tbaa !9
  %303 = zext i8 %302 to i32
  %304 = icmp sle i32 %301, %303
  br i1 %304, label %305, label %306

; <label>:305                                     ; preds = %263
  br i1 false, label %311, label %306

; <label>:306                                     ; preds = %305, %263
  %307 = getelementptr inbounds [5 x i8], [5 x i8]* %l_3095, i32 0, i64 0
  %308 = load i8, i8* %307, align 1, !tbaa !9
  %309 = zext i8 %308 to i32
  %310 = icmp ne i32 %309, 0
  br label %311

; <label>:311                                     ; preds = %306, %305, %230
  %312 = phi i1 [ true, %305 ], [ true, %230 ], [ %310, %306 ]
  %313 = zext i1 %312 to i32
  br i1 true, label %314, label %315

; <label>:314                                     ; preds = %311
  br label %315

; <label>:315                                     ; preds = %314, %311
  %316 = phi i1 [ false, %311 ], [ true, %314 ]
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* @g_2184, align 4, !tbaa !1
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [5 x i32], [5 x i32]* @g_58, i32 0, i64 %319
  %321 = load volatile i32, i32* %320, align 4, !tbaa !1
  %322 = and i32 %321, %317
  store volatile i32 %322, i32* %320, align 4, !tbaa !1
  %323 = load i16***, i16**** @g_2506, align 8, !tbaa !5
  store i16** null, i16*** %323, align 8, !tbaa !5
  %324 = icmp ne i16* null, %3
  %325 = zext i1 %324 to i32
  %326 = load i8*, i8** @g_430, align 8, !tbaa !5
  %327 = load i8, i8* %326, align 1, !tbaa !9
  %328 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %327, i32 3)
  %329 = zext i8 %328 to i16
  %330 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %329, i16 zeroext -10)
  %331 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %330, i32 7)
  %332 = sext i16 %331 to i32
  %333 = load i32*, i32** @g_539, align 8, !tbaa !5
  %334 = load i32, i32* %333, align 4, !tbaa !1
  %335 = load i32, i32* %1, align 4, !tbaa !1
  %336 = load i64, i64* %l_3058, align 8, !tbaa !7
  %337 = trunc i64 %336 to i8
  %338 = load i32, i32* %1, align 4, !tbaa !1
  %339 = trunc i32 %338 to i16
  %340 = load i16*, i16** @g_1474, align 8, !tbaa !5
  store i16 %339, i16* %340, align 2, !tbaa !10
  %341 = sext i16 %339 to i64
  %342 = load i64, i64* %l_3058, align 8, !tbaa !7
  %343 = icmp ult i64 %341, %342
  %344 = zext i1 %343 to i32
  %345 = load i32, i32* %l_3108, align 4, !tbaa !1
  %346 = xor i32 %344, %345
  %347 = trunc i32 %346 to i8
  %348 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %337, i8 signext %347)
  %349 = sext i8 %348 to i32
  %350 = load i32, i32* %1, align 4, !tbaa !1
  %351 = or i32 %349, %350
  %352 = zext i32 %351 to i64
  %353 = and i64 5, %352
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %356

; <label>:355                                     ; preds = %315
  br label %356

; <label>:356                                     ; preds = %355, %315
  %357 = phi i1 [ false, %315 ], [ true, %355 ]
  %358 = zext i1 %357 to i32
  %359 = icmp eq i32 %334, %358
  %360 = zext i1 %359 to i32
  %361 = icmp slt i32 %332, %360
  %362 = zext i1 %361 to i32
  %363 = load i16, i16* %l_3090, align 2, !tbaa !10
  %364 = zext i16 %363 to i32
  %365 = icmp sle i32 %362, %364
  %366 = zext i1 %365 to i32
  %367 = load i8*, i8** @g_633, align 8, !tbaa !5
  %368 = load i8, i8* %367, align 1, !tbaa !9
  %369 = zext i8 %368 to i32
  %370 = and i32 %366, %369
  %371 = load i8, i8* %5, align 1, !tbaa !9
  %372 = load i16, i16* %3, align 2, !tbaa !10
  %373 = zext i16 %372 to i32
  %374 = icmp ne i32 %325, %373
  %375 = zext i1 %374 to i32
  %376 = trunc i32 %375 to i8
  %377 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %376, i8 signext -35)
  %378 = sext i8 %377 to i16
  %379 = load i16, i16* %l_3090, align 2, !tbaa !10
  %380 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %378, i16 signext %379)
  %381 = sext i16 %380 to i32
  store i32 %381, i32* %l_3109, align 4, !tbaa !1
  %382 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #1
  %383 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #1
  %384 = bitcast i8**** %l_3094 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %384) #1
  %385 = bitcast [1 x i16]* %l_3083 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %385) #1
  br label %386

; <label>:386                                     ; preds = %356
  %387 = load i32, i32* @g_2184, align 4, !tbaa !1
  %388 = add i32 %387, 1
  store i32 %388, i32* @g_2184, align 4, !tbaa !1
  br label %212

; <label>:389                                     ; preds = %212
  %390 = load i8, i8* %l_3073, align 1, !tbaa !9
  %391 = icmp ne i8 %390, 0
  br i1 %391, label %392, label %393

; <label>:392                                     ; preds = %389
  store i32 20, i32* %6
  br label %394

; <label>:393                                     ; preds = %389
  store i32 0, i32* %6
  br label %394

; <label>:394                                     ; preds = %393, %392
  call void @llvm.lifetime.end(i64 1, i8* %l_3073) #1
  %cleanup.dest = load i32, i32* %6
  switch i32 %cleanup.dest, label %485 [
    i32 0, label %395
    i32 20, label %401
  ]

; <label>:395                                     ; preds = %394
  br label %396

; <label>:396                                     ; preds = %395
  %397 = load i32, i32* @g_62, align 4, !tbaa !1
  %398 = trunc i32 %397 to i8
  %399 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %398, i8 zeroext 8)
  %400 = zext i8 %399 to i32
  store i32 %400, i32* @g_62, align 4, !tbaa !1
  br label %208

; <label>:401                                     ; preds = %394, %208
  %402 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %403 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #1
  %405 = bitcast i32****** %l_3206 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %405) #1
  %406 = bitcast [9 x i32****]* %l_3207 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %406) #1
  %407 = bitcast i32**** %l_3208 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %407) #1
  %408 = bitcast [10 x i32****]* %l_3172 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %408) #1
  %409 = bitcast i32* %l_3132 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %410 = bitcast i32* %l_3128 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %410) #1
  %411 = bitcast [6 x i8*]* %l_3127 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %411) #1
  %412 = bitcast [4 x [3 x [3 x i32***]]]* %l_3121 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %412) #1
  %413 = bitcast i32*** %l_3122 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %413) #1
  %414 = bitcast i16* %l_3090 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %414) #1
  br label %415

; <label>:415                                     ; preds = %401
  %416 = load i8, i8* @g_1193, align 1, !tbaa !9
  %417 = add i8 %416, -1
  store i8 %417, i8* @g_1193, align 1, !tbaa !9
  br label %124

; <label>:418                                     ; preds = %124
  %419 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #1
  %420 = bitcast i16* %l_3351 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %420) #1
  %421 = bitcast i16* %l_3318 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %421) #1
  %422 = bitcast i32** %l_3277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #1
  %423 = bitcast [5 x i32]* %l_3247 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %423) #1
  %424 = bitcast i64* %l_3241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #1
  %425 = bitcast i32* %l_3213 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #1
  %426 = bitcast i32** %l_3177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #1
  %427 = bitcast [10 x i16]* %l_3158 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %427) #1
  %428 = bitcast i32* %l_3134 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #1
  %429 = bitcast i32*** %l_3120 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %429) #1
  %430 = bitcast i32* %l_3109 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast [7 x i16*]* %l_3093 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %431) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3076) #1
  br label %432

; <label>:432                                     ; preds = %418
  %433 = load i8, i8* %2, align 1, !tbaa !9
  %434 = add i8 %433, 1
  store i8 %434, i8* %2, align 1, !tbaa !9
  br label %93

; <label>:435                                     ; preds = %93
  %436 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #1
  %437 = bitcast i32**** %l_3333 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %437) #1
  %438 = bitcast i32** %l_3278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %438) #1
  %439 = bitcast i32*** %l_3262 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %439) #1
  %440 = bitcast i16* %l_3248 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %440) #1
  %441 = bitcast i8**** %l_3205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %441) #1
  %442 = bitcast [8 x i32]* %l_3131 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %442) #1
  %443 = bitcast i32* %l_3130 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %443) #1
  %444 = bitcast i64** %l_3126 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = bitcast [5 x i8]* %l_3095 to i8*
  call void @llvm.lifetime.end(i64 5, i8* %445) #1
  %446 = bitcast i8*** %l_3069 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %446) #1
  br label %463

; <label>:447                                     ; preds = %46
  %448 = bitcast [9 x i32**]* %l_3358 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %448) #1
  %449 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %449) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %450

; <label>:450                                     ; preds = %457, %447
  %451 = load i32, i32* %i6, align 4, !tbaa !1
  %452 = icmp slt i32 %451, 9
  br i1 %452, label %453, label %460

; <label>:453                                     ; preds = %450
  %454 = load i32, i32* %i6, align 4, !tbaa !1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [9 x i32**], [9 x i32**]* %l_3358, i32 0, i64 %455
  store i32** @g_508, i32*** %456, align 8, !tbaa !5
  br label %457

; <label>:457                                     ; preds = %453
  %458 = load i32, i32* %i6, align 4, !tbaa !1
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %i6, align 4, !tbaa !1
  br label %450

; <label>:460                                     ; preds = %450
  store i32* %l_3135, i32** @g_508, align 8, !tbaa !5
  store i32* %l_3135, i32** %l_3359, align 8, !tbaa !5
  store i32* %l_3135, i32** getelementptr inbounds ([9 x [4 x [7 x i32*]]], [9 x [4 x [7 x i32*]]]* @g_3361, i32 0, i64 7, i64 0, i64 1), align 8, !tbaa !5
  %461 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %461) #1
  %462 = bitcast [9 x i32**]* %l_3358 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %462) #1
  br label %463

; <label>:463                                     ; preds = %460, %435
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %l_3246, i32 0, i64 2
  %465 = load i32**, i32*** @g_815, align 8, !tbaa !5
  store i32* %464, i32** %465, align 8, !tbaa !5
  %466 = load i8, i8* %5, align 1, !tbaa !9
  %467 = zext i8 %466 to i16
  store i32 1, i32* %6
  %468 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32** %l_3359 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %469) #1
  %470 = bitcast i32* %l_3354 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #1
  %471 = bitcast i32* %l_3306 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast [4 x i32]* %l_3246 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %472) #1
  %473 = bitcast i32* %l_3234 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i32* %l_3217 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i8*** %l_3199 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %475) #1
  %476 = bitcast i32***** %l_3171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %476) #1
  %477 = bitcast i32* %l_3136 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %477) #1
  %478 = bitcast i32* %l_3135 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #1
  %479 = bitcast [6 x i32**]* %l_3123 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %479) #1
  %480 = bitcast i32* %l_3108 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %l_3062 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
  %482 = bitcast i64** %l_3061 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %482) #1
  %483 = bitcast i64* %l_3058 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %483) #1
  %484 = bitcast i16* %l_3055 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %484) #1
  ret i16 %467

; <label>:485                                     ; preds = %394
  unreachable
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @func_17(i16 zeroext %p_18, i8 signext %p_19, i8 zeroext %p_20, i32 %p_21, i64 %p_22) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %l_39 = alloca i32, align 4
  %l_3049 = alloca [6 x [8 x i32*]], align 16
  %l_3050 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16 %p_18, i16* %1, align 2, !tbaa !10
  store i8 %p_19, i8* %2, align 1, !tbaa !9
  store i8 %p_20, i8* %3, align 1, !tbaa !9
  store i32 %p_21, i32* %4, align 4, !tbaa !1
  store i64 %p_22, i64* %5, align 8, !tbaa !7
  %6 = bitcast i32* %l_39 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 260208823, i32* %l_39, align 4, !tbaa !1
  %7 = bitcast [6 x [8 x i32*]]* %l_3049 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %7) #1
  %8 = getelementptr inbounds [6 x [8 x i32*]], [6 x [8 x i32*]]* %l_3049, i64 0, i64 0
  %9 = getelementptr inbounds [8 x i32*], [8 x i32*]* %8, i64 0, i64 0
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %9, !tbaa !5
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %10, !tbaa !5
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  store i32* %l_39, i32** %11, !tbaa !5
  %12 = getelementptr inbounds i32*, i32** %11, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %12, !tbaa !5
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %13, !tbaa !5
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  store i32* %l_39, i32** %14, !tbaa !5
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %15, !tbaa !5
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %16, !tbaa !5
  %17 = getelementptr inbounds [8 x i32*], [8 x i32*]* %8, i64 1
  %18 = getelementptr inbounds [8 x i32*], [8 x i32*]* %17, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %18, !tbaa !5
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %19, !tbaa !5
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %20, !tbaa !5
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %21, !tbaa !5
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %22, !tbaa !5
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %23, !tbaa !5
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %24, !tbaa !5
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %25, !tbaa !5
  %26 = getelementptr inbounds [8 x i32*], [8 x i32*]* %17, i64 1
  %27 = getelementptr inbounds [8 x i32*], [8 x i32*]* %26, i64 0, i64 0
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %27, !tbaa !5
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %29, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %30, !tbaa !5
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %31, !tbaa !5
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %32, !tbaa !5
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %33, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %34, !tbaa !5
  %35 = getelementptr inbounds [8 x i32*], [8 x i32*]* %26, i64 1
  %36 = getelementptr inbounds [8 x i32*], [8 x i32*]* %35, i64 0, i64 0
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %36, !tbaa !5
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %37, !tbaa !5
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* %l_39, i32** %38, !tbaa !5
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %39, !tbaa !5
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %40, !tbaa !5
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* %l_39, i32** %41, !tbaa !5
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %42, !tbaa !5
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %43, !tbaa !5
  %44 = getelementptr inbounds [8 x i32*], [8 x i32*]* %35, i64 1
  %45 = getelementptr inbounds [8 x i32*], [8 x i32*]* %44, i64 0, i64 0
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %45, !tbaa !5
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %46, !tbaa !5
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %47, !tbaa !5
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %48, !tbaa !5
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %49, !tbaa !5
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %50, !tbaa !5
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %51, !tbaa !5
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %52, !tbaa !5
  %53 = getelementptr inbounds [8 x i32*], [8 x i32*]* %44, i64 1
  %54 = getelementptr inbounds [8 x i32*], [8 x i32*]* %53, i64 0, i64 0
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %54, !tbaa !5
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %55, !tbaa !5
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %57, !tbaa !5
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %58, !tbaa !5
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %59, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* getelementptr inbounds ([10 x [5 x [1 x i32]]], [10 x [5 x [1 x i32]]]* @g_3, i32 0, i64 2, i64 0, i64 0), i32** %60, !tbaa !5
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_151, i32 0, i64 0), i32** %61, !tbaa !5
  %62 = bitcast i32* %l_3050 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  store i32 -10, i32* %l_3050, align 4, !tbaa !1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load i32, i32* %l_39, align 4, !tbaa !1
  %66 = call i32 @func_37(i32 %65)
  %67 = load i32, i32* %l_3050, align 4, !tbaa !1
  %68 = and i32 %67, %66
  store i32 %68, i32* %l_3050, align 4, !tbaa !1
  %69 = load i8, i8* %2, align 1, !tbaa !9
  %70 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %l_3050 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast [6 x [8 x i32*]]* %l_3049 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %73) #1
  %74 = bitcast i32* %l_39 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  ret i8 %69
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
define internal i32 @func_37(i32 %p_38) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %l_2185 = alloca i32*, align 8
  %l_2502 = alloca i32***, align 8
  %l_2501 = alloca i32****, align 8
  %l_2564 = alloca i16*, align 8
  %l_2579 = alloca i32, align 4
  %l_2582 = alloca i32, align 4
  %l_2589 = alloca i8***, align 8
  %l_2657 = alloca i32, align 4
  %l_2707 = alloca i32****, align 8
  %l_2712 = alloca i64*, align 8
  %l_2738 = alloca i32, align 4
  %l_2790 = alloca i32, align 4
  %l_2794 = alloca i32, align 4
  %l_2795 = alloca i32, align 4
  %l_2811 = alloca i32, align 4
  %l_2867 = alloca i32**, align 8
  %l_2903 = alloca i32**, align 8
  %l_2915 = alloca i8*, align 8
  %l_2927 = alloca i32, align 4
  %l_3033 = alloca i16, align 2
  %l_3037 = alloca i32*****, align 8
  %l_3038 = alloca [8 x i16****], align 16
  %l_3039 = alloca i16****, align 8
  %l_3040 = alloca i16*****, align 8
  %l_3041 = alloca [1 x i16*****], align 8
  %l_3043 = alloca i32*****, align 8
  %l_3044 = alloca [6 x i32*], align 16
  %l_3045 = alloca i32*, align 8
  %i = alloca i32, align 4
  %l_47 = alloca i8*, align 8
  %l_2192 = alloca i32, align 4
  %l_2193 = alloca i8, align 1
  %l_2499 = alloca i32****, align 8
  %l_2500 = alloca i32*****, align 8
  %l_2504 = alloca i16***, align 8
  %l_2526 = alloca i64, align 8
  %l_2581 = alloca i32, align 4
  %l_2583 = alloca i32, align 4
  %l_2792 = alloca i32, align 4
  %l_2793 = alloca [7 x i32], align 16
  %l_2836 = alloca i8, align 1
  %l_2924 = alloca i32**, align 8
  %i1 = alloca i32, align 4
  %l_3048 = alloca i8, align 1
  %3 = alloca i32
  store i32 %p_38, i32* %2, align 4, !tbaa !1
  %4 = bitcast i32** %l_2185 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_1525, i32** %l_2185, align 8, !tbaa !5
  %5 = bitcast i32**** %l_2502 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32*** @g_926, i32**** %l_2502, align 8, !tbaa !5
  %6 = bitcast i32***** %l_2501 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32**** %l_2502, i32***** %l_2501, align 8, !tbaa !5
  %7 = bitcast i16** %l_2564 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i16* getelementptr inbounds ([5 x [10 x [5 x i16]]], [5 x [10 x [5 x i16]]]* @g_1036, i32 0, i64 4, i64 6, i64 1), i16** %l_2564, align 8, !tbaa !5
  %8 = bitcast i32* %l_2579 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 774874548, i32* %l_2579, align 4, !tbaa !1
  %9 = bitcast i32* %l_2582 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -9, i32* %l_2582, align 4, !tbaa !1
  %10 = bitcast i8**** %l_2589 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8*** null, i8**** %l_2589, align 8, !tbaa !5
  %11 = bitcast i32* %l_2657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %l_2657, align 4, !tbaa !1
  %12 = bitcast i32***** %l_2707 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32**** null, i32***** %l_2707, align 8, !tbaa !5
  %13 = bitcast i64** %l_2712 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64* @g_31, i64** %l_2712, align 8, !tbaa !5
  %14 = bitcast i32* %l_2738 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %l_2738, align 4, !tbaa !1
  %15 = bitcast i32* %l_2790 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 1, i32* %l_2790, align 4, !tbaa !1
  %16 = bitcast i32* %l_2794 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 4, i32* %l_2794, align 4, !tbaa !1
  %17 = bitcast i32* %l_2795 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 -1652376755, i32* %l_2795, align 4, !tbaa !1
  %18 = bitcast i32* %l_2811 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 2, i32* %l_2811, align 4, !tbaa !1
  %19 = bitcast i32*** %l_2867 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i32** null, i32*** %l_2867, align 8, !tbaa !5
  %20 = bitcast i32*** %l_2903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32** null, i32*** %l_2903, align 8, !tbaa !5
  %21 = bitcast i8** %l_2915 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i8* null, i8** %l_2915, align 8, !tbaa !5
  %22 = bitcast i32* %l_2927 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1929148644, i32* %l_2927, align 4, !tbaa !1
  %23 = bitcast i16* %l_3033 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %23) #1
  store i16 -9171, i16* %l_3033, align 2, !tbaa !10
  %24 = bitcast i32****** %l_3037 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  store i32***** @g_1291, i32****** %l_3037, align 8, !tbaa !5
  %25 = bitcast [8 x i16****]* %l_3038 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %25) #1
  %26 = bitcast [8 x i16****]* %l_3038 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* bitcast ([8 x i16****]* @func_37.l_3038 to i8*), i64 64, i32 16, i1 false)
  %27 = bitcast i16***** %l_3039 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i16**** @g_2506, i16***** %l_3039, align 8, !tbaa !5
  %28 = bitcast i16****** %l_3040 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i16***** null, i16****** %l_3040, align 8, !tbaa !5
  %29 = bitcast [1 x i16*****]* %l_3041 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast i32****** %l_3043 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32***** @g_1291, i32****** %l_3043, align 8, !tbaa !5
  %31 = bitcast [6 x i32*]* %l_3044 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %31) #1
  %32 = bitcast [6 x i32*]* %l_3044 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* bitcast ([6 x i32*]* @func_37.l_3044 to i8*), i64 48, i32 16, i1 false)
  %33 = bitcast i32** %l_3045 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  store i32* %l_2811, i32** %l_3045, align 8, !tbaa !5
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %35

; <label>:35                                      ; preds = %42, %0
  %36 = load i32, i32* %i, align 4, !tbaa !1
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %45

; <label>:38                                      ; preds = %35
  %39 = load i32, i32* %i, align 4, !tbaa !1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1 x i16*****], [1 x i16*****]* %l_3041, i32 0, i64 %40
  store i16***** %l_3039, i16****** %41, align 8, !tbaa !5
  br label %42

; <label>:42                                      ; preds = %38
  %43 = load i32, i32* %i, align 4, !tbaa !1
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4, !tbaa !1
  br label %35

; <label>:45                                      ; preds = %35
  store i64 -2, i64* @g_31, align 8, !tbaa !7
  br label %46

; <label>:46                                      ; preds = %75, %45
  %47 = load i64, i64* @g_31, align 8, !tbaa !7
  %48 = icmp sgt i64 %47, 26
  br i1 %48, label %49, label %80

; <label>:49                                      ; preds = %46
  %50 = bitcast i8** %l_47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store i8* @g_36, i8** %l_47, align 8, !tbaa !5
  %51 = bitcast i32* %l_2192 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 212493824, i32* %l_2192, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_2193) #1
  store i8 -57, i8* %l_2193, align 1, !tbaa !9
  %52 = bitcast i32***** %l_2499 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  store i32**** null, i32***** %l_2499, align 8, !tbaa !5
  %53 = bitcast i32****** %l_2500 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i32***** %l_2499, i32****** %l_2500, align 8, !tbaa !5
  %54 = bitcast i16**** %l_2504 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i16*** @g_1053, i16**** %l_2504, align 8, !tbaa !5
  %55 = bitcast i64* %l_2526 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i64 -1, i64* %l_2526, align 8, !tbaa !7
  %56 = bitcast i32* %l_2581 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  store i32 -4, i32* %l_2581, align 4, !tbaa !1
  %57 = bitcast i32* %l_2583 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  store i32 0, i32* %l_2583, align 4, !tbaa !1
  %58 = bitcast i32* %l_2792 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  store i32 -1226972540, i32* %l_2792, align 4, !tbaa !1
  %59 = bitcast [7 x i32]* %l_2793 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %59) #1
  %60 = bitcast [7 x i32]* %l_2793 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* bitcast ([7 x i32]* @func_37.l_2793 to i8*), i64 28, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_2836) #1
  store i8 -5, i8* %l_2836, align 1, !tbaa !9
  %61 = bitcast i32*** %l_2924 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  store i32** null, i32*** %l_2924, align 8, !tbaa !5
  %62 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32*** %l_2924 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2836) #1
  %65 = bitcast [7 x i32]* %l_2793 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %65) #1
  %66 = bitcast i32* %l_2792 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %l_2583 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %l_2581 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i64* %l_2526 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i16**** %l_2504 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32****** %l_2500 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32***** %l_2499 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2193) #1
  %73 = bitcast i32* %l_2192 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %l_47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  br label %75

; <label>:75                                      ; preds = %49
  %76 = load i64, i64* @g_31, align 8, !tbaa !7
  %77 = trunc i64 %76 to i16
  %78 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %77, i16 zeroext 1)
  %79 = zext i16 %78 to i64
  store i64 %79, i64* @g_31, align 8, !tbaa !7
  br label %46

; <label>:80                                      ; preds = %46
  %81 = load i64***, i64**** @g_1636, align 8, !tbaa !5
  %82 = load volatile i64**, i64*** %81, align 8, !tbaa !5
  %83 = load i64*, i64** %82, align 8, !tbaa !5
  %84 = load i64, i64* %83, align 8, !tbaa !7
  %85 = load i64**, i64*** @g_1637, align 8, !tbaa !5
  %86 = load i64*, i64** %85, align 8, !tbaa !5
  %87 = load i64, i64* %86, align 8, !tbaa !7
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %l_2185, align 8, !tbaa !5
  store i32 %88, i32* %89, align 4, !tbaa !1
  %90 = sext i32 %88 to i64
  %91 = icmp slt i64 %84, %90
  %92 = zext i1 %91 to i32
  %93 = trunc i32 %92 to i16
  %94 = load i16, i16* %l_3033, align 2, !tbaa !10
  %95 = load i32, i32* %2, align 4, !tbaa !1
  %96 = load i32, i32* %2, align 4, !tbaa !1
  %97 = load i32*****, i32****** %l_3037, align 8, !tbaa !5
  %98 = getelementptr inbounds [8 x i16****], [8 x i16****]* %l_3038, i32 0, i64 6
  %99 = load i16****, i16***** %98, align 8, !tbaa !5
  %100 = load i16****, i16***** %l_3039, align 8, !tbaa !5
  store i16**** %100, i16***** getelementptr inbounds ([10 x i16****], [10 x i16****]* @g_3042, i32 0, i64 3), align 8, !tbaa !5
  %101 = icmp eq i16**** %99, %100
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** @g_1633, align 8, !tbaa !5
  store i64 %103, i64* %104, align 8, !tbaa !7
  %105 = load i64**, i64*** @g_1106, align 8, !tbaa !5
  %106 = load volatile i64*, i64** %105, align 8, !tbaa !5
  store i64 %103, i64* %106, align 8, !tbaa !7
  %107 = load i32*****, i32****** %l_3037, align 8, !tbaa !5
  store i32***** %107, i32****** %l_3043, align 8, !tbaa !5
  %108 = icmp eq i32***** %97, %107
  br i1 %108, label %110, label %109

; <label>:109                                     ; preds = %80
  br label %110

; <label>:110                                     ; preds = %109, %80
  %111 = phi i1 [ true, %80 ], [ true, %109 ]
  %112 = zext i1 %111 to i32
  %113 = icmp ult i32 %96, %112
  br i1 %113, label %117, label %114

; <label>:114                                     ; preds = %110
  %115 = load i32, i32* %2, align 4, !tbaa !1
  %116 = icmp ne i32 %115, 0
  br label %117

; <label>:117                                     ; preds = %114, %110
  %118 = phi i1 [ true, %110 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = icmp ugt i32 %95, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %2, align 4, !tbaa !1
  %123 = icmp ugt i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = trunc i32 %124 to i16
  %126 = load i32, i32* %2, align 4, !tbaa !1
  %127 = trunc i32 %126 to i16
  %128 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %125, i16 zeroext %127)
  %129 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %94, i16 zeroext %128)
  %130 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %93, i16 zeroext %129)
  %131 = zext i16 %130 to i32
  %132 = load i32, i32* @g_119, align 4, !tbaa !1
  %133 = xor i32 %132, %131
  store i32 %133, i32* @g_119, align 4, !tbaa !1
  %134 = load i32, i32* %2, align 4, !tbaa !1
  %135 = zext i32 %134 to i64
  %136 = and i64 %135, 3390337739128991822
  %137 = xor i64 %136, -1
  %138 = and i64 %137, -1529486532228367350
  %139 = trunc i64 %138 to i16
  %140 = call signext i16 @safe_mod_func_int16_t_s_s(i16 signext %139, i16 signext 27882)
  %141 = sext i16 %140 to i32
  %142 = xor i32 %141, -1
  %143 = load i32*, i32** %l_3045, align 8, !tbaa !5
  store i32 %142, i32* %143, align 4, !tbaa !1
  store i32 29, i32* %l_2579, align 4, !tbaa !1
  br label %144

; <label>:144                                     ; preds = %150, %117
  %145 = load i32, i32* %l_2579, align 4, !tbaa !1
  %146 = icmp sge i32 %145, 26
  br i1 %146, label %147, label %155

; <label>:147                                     ; preds = %144
  call void @llvm.lifetime.start(i64 1, i8* %l_3048) #1
  store i8 -7, i8* %l_3048, align 1, !tbaa !9
  %148 = load i8, i8* %l_3048, align 1, !tbaa !9
  %149 = zext i8 %148 to i32
  store i32 %149, i32* %1
  store i32 1, i32* %3
  call void @llvm.lifetime.end(i64 1, i8* %l_3048) #1
  br label %160
                                                  ; No predecessors!
  %151 = load i32, i32* %l_2579, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = call i64 @safe_sub_func_int64_t_s_s(i64 %152, i64 6)
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %l_2579, align 4, !tbaa !1
  br label %144

; <label>:155                                     ; preds = %144
  %156 = load i32***, i32**** @g_814, align 8, !tbaa !5
  %157 = load i32**, i32*** %156, align 8, !tbaa !5
  %158 = load i32*, i32** %157, align 8, !tbaa !5
  %159 = load i32, i32* %158, align 4, !tbaa !1
  store i32 %159, i32* %1
  store i32 1, i32* %3
  br label %160

; <label>:160                                     ; preds = %155, %147
  %161 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32** %l_3045 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast [6 x i32*]* %l_3044 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %163) #1
  %164 = bitcast i32****** %l_3043 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast [1 x i16*****]* %l_3041 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast i16****** %l_3040 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i16***** %l_3039 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast [8 x i16****]* %l_3038 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %168) #1
  %169 = bitcast i32****** %l_3037 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i16* %l_3033 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %170) #1
  %171 = bitcast i32* %l_2927 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i8** %l_2915 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i32*** %l_2903 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32*** %l_2867 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #1
  %175 = bitcast i32* %l_2811 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %l_2795 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %l_2794 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %l_2790 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %l_2738 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i64** %l_2712 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #1
  %181 = bitcast i32***** %l_2707 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #1
  %182 = bitcast i32* %l_2657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i8**** %l_2589 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = bitcast i32* %l_2582 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %l_2579 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i16** %l_2564 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast i32***** %l_2501 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i32**** %l_2502 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast i32** %l_2185 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = load i32, i32* %1
  ret i32 %190
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
