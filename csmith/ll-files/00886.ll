; ModuleID = '00886.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -3, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_33 = internal global i32 1719947761, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_33\00", align 1
@g_72 = internal global i16 -1, align 2
@.str.3 = private unnamed_addr constant [5 x i8] c"g_72\00", align 1
@g_77 = internal global i16 1, align 2
@.str.4 = private unnamed_addr constant [5 x i8] c"g_77\00", align 1
@g_84 = internal global i8 -7, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"g_84\00", align 1
@g_86 = internal global i16 -1, align 2
@.str.6 = private unnamed_addr constant [5 x i8] c"g_86\00", align 1
@g_102 = internal global i32 -977412196, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"g_102\00", align 1
@g_108 = internal global [8 x [1 x i8]] [[1 x i8] c"\FF", [1 x i8] c"\FF", [1 x i8] c"\FF", [1 x i8] c"\FF", [1 x i8] c"\FF", [1 x i8] c"\FF", [1 x i8] c"\FF", [1 x i8] c"\FF"], align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"g_108[i][j]\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_112 = internal global i64 -2383317500688430879, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"g_112\00", align 1
@g_114 = internal global i32 -1, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_114\00", align 1
@g_116 = internal global i32 -4, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_116\00", align 1
@g_132 = internal global i8 5, align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_138 = internal global i16 -1, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_138\00", align 1
@g_140 = internal global i32 -1, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"g_140\00", align 1
@g_142 = internal global i8 0, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_142\00", align 1
@g_155 = internal global i8 -10, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_155\00", align 1
@g_166 = internal global i16 0, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_167 = internal global i16 5243, align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"g_167\00", align 1
@g_179 = internal global i8 -118, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_219 = internal global i16 -6, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_219\00", align 1
@g_221 = internal global i16 1, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_221\00", align 1
@g_223 = internal global i16 -5, align 2
@.str.23 = private unnamed_addr constant [6 x i8] c"g_223\00", align 1
@g_229 = internal global i8 76, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"g_229\00", align 1
@g_230 = internal global i8 1, align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_230\00", align 1
@g_233 = internal global [9 x i32] [i32 -557353876, i32 -557353876, i32 -557353876, i32 -557353876, i32 -557353876, i32 -557353876, i32 -557353876, i32 -557353876, i32 -557353876], align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"g_233[i]\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_347 = internal global i8 1, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_347\00", align 1
@g_371 = internal global i64 5024290439619631871, align 8
@.str.29 = private unnamed_addr constant [6 x i8] c"g_371\00", align 1
@g_431 = internal global i32 8, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_431\00", align 1
@g_438 = internal global i8 83, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_438\00", align 1
@g_455 = internal constant [8 x [9 x i32]] [[9 x i32] [i32 0, i32 -631205079, i32 -1803387472, i32 0, i32 0, i32 -1803387472, i32 -631205079, i32 0, i32 -141190028], [9 x i32] [i32 808234679, i32 2, i32 -450847103, i32 808234679, i32 616478796, i32 2044738226, i32 2, i32 2, i32 2044738226], [9 x i32] [i32 1434497426, i32 0, i32 -702915618, i32 0, i32 1434497426, i32 1401264602, i32 0, i32 -6, i32 -141190028], [9 x i32] [i32 2, i32 616478796, i32 -92818920, i32 5, i32 616478796, i32 -450847103, i32 616478796, i32 5, i32 -92818920], [9 x i32] [i32 1434497426, i32 1434497426, i32 -141190028, i32 -6, i32 0, i32 1401264602, i32 1434497426, i32 0, i32 -702915618], [9 x i32] [i32 808234679, i32 616478796, i32 2044738226, i32 2, i32 2, i32 2044738226, i32 616478796, i32 808234679, i32 -450847103], [9 x i32] [i32 0, i32 0, i32 -141190028, i32 0, i32 -631205079, i32 -1803387472, i32 0, i32 0, i32 -1803387472], [9 x i32] [i32 355962535, i32 2, i32 -92818920, i32 2, i32 355962535, i32 0, i32 2, i32 5, i32 -450847103]], align 16
@.str.32 = private unnamed_addr constant [12 x i8] c"g_455[i][j]\00", align 1
@g_463 = internal global [10 x [5 x [4 x i32]]] [[5 x [4 x i32]] [[4 x i32] [i32 0, i32 -402355526, i32 -1, i32 -1], [4 x i32] [i32 915988760, i32 915988760, i32 0, i32 -1], [4 x i32] [i32 0, i32 -402355526, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 915988760, i32 0, i32 -1, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 -402355526, i32 -1, i32 -1], [4 x i32] [i32 915988760, i32 915988760, i32 0, i32 -1], [4 x i32] [i32 0, i32 -402355526, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 915988760, i32 0, i32 -1, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 -402355526, i32 -1, i32 -1], [4 x i32] [i32 915988760, i32 915988760, i32 0, i32 -1], [4 x i32] [i32 0, i32 -402355526, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 915988760, i32 0, i32 -1, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 -402355526, i32 -1, i32 -1], [4 x i32] [i32 915988760, i32 915988760, i32 0, i32 -1], [4 x i32] [i32 0, i32 -402355526, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i32] [i32 915988760, i32 0, i32 -1, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 -402355526, i32 -1, i32 -1], [4 x i32] [i32 915988760, i32 915988760, i32 0, i32 -1], [4 x i32] [i32 0, i32 -402355526, i32 0, i32 0], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1], [4 x i32] [i32 0, i32 0, i32 -402355526, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 915988760, i32 -402355526, i32 -402355526], [4 x i32] [i32 0, i32 0, i32 0, i32 -402355526], [4 x i32] [i32 -1, i32 915988760, i32 -1, i32 0], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1], [4 x i32] [i32 0, i32 0, i32 -402355526, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 915988760, i32 -402355526, i32 -402355526], [4 x i32] [i32 0, i32 0, i32 0, i32 -402355526], [4 x i32] [i32 -1, i32 915988760, i32 -1, i32 0], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1], [4 x i32] [i32 0, i32 0, i32 -402355526, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 915988760, i32 -402355526, i32 -402355526], [4 x i32] [i32 0, i32 0, i32 0, i32 -402355526], [4 x i32] [i32 -1, i32 915988760, i32 -1, i32 0], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1], [4 x i32] [i32 0, i32 0, i32 -402355526, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 915988760, i32 -402355526, i32 -402355526], [4 x i32] [i32 0, i32 0, i32 0, i32 -402355526], [4 x i32] [i32 -1, i32 915988760, i32 -1, i32 0], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1], [4 x i32] [i32 0, i32 0, i32 -402355526, i32 0]], [5 x [4 x i32]] [[4 x i32] [i32 0, i32 915988760, i32 -402355526, i32 -402355526], [4 x i32] [i32 0, i32 0, i32 0, i32 -402355526], [4 x i32] [i32 -1, i32 915988760, i32 -1, i32 0], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1], [4 x i32] [i32 0, i32 0, i32 -402355526, i32 0]]], align 16
@.str.33 = private unnamed_addr constant [15 x i8] c"g_463[i][j][k]\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_493 = internal global i32 -3, align 4
@.str.35 = private unnamed_addr constant [6 x i8] c"g_493\00", align 1
@g_526 = internal global i32 1974612620, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_526\00", align 1
@g_612 = internal global i32 -419730492, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_612\00", align 1
@g_618 = internal global i8 -77, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"g_618\00", align 1
@g_646 = internal constant [8 x i64] [i64 6866567727357626550, i64 6866567727357626550, i64 6866567727357626550, i64 6866567727357626550, i64 6866567727357626550, i64 6866567727357626550, i64 6866567727357626550, i64 6866567727357626550], align 16
@.str.39 = private unnamed_addr constant [9 x i8] c"g_646[i]\00", align 1
@g_790 = internal global i64 -4177352017361011933, align 8
@.str.40 = private unnamed_addr constant [6 x i8] c"g_790\00", align 1
@g_791 = internal global i32 1116887599, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"g_791\00", align 1
@g_847 = internal global i32 -1676749488, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"g_847\00", align 1
@g_912 = internal global i16 19307, align 2
@.str.43 = private unnamed_addr constant [6 x i8] c"g_912\00", align 1
@g_913 = internal global i16 1, align 2
@.str.44 = private unnamed_addr constant [6 x i8] c"g_913\00", align 1
@g_914 = internal global [2 x i16] [i16 -19805, i16 -19805], align 2
@.str.45 = private unnamed_addr constant [9 x i8] c"g_914[i]\00", align 1
@g_915 = internal global i16 2793, align 2
@.str.46 = private unnamed_addr constant [6 x i8] c"g_915\00", align 1
@g_916 = internal global i16 -24295, align 2
@.str.47 = private unnamed_addr constant [6 x i8] c"g_916\00", align 1
@g_948 = internal global i32 0, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"g_948\00", align 1
@g_965 = internal global i64 -6, align 8
@.str.49 = private unnamed_addr constant [6 x i8] c"g_965\00", align 1
@g_1013 = internal global i64 -5450688561656869722, align 8
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1013\00", align 1
@g_1018 = internal global i16 5, align 2
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1018\00", align 1
@g_1019 = internal global i32 -1239564996, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"g_1019\00", align 1
@g_1141 = internal global i32 -170242383, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1141\00", align 1
@g_1170 = internal global [7 x [6 x i64]] [[6 x i64] [i64 6835777711093627637, i64 -8, i64 6835777711093627637, i64 -3, i64 -3, i64 6835777711093627637], [6 x i64] [i64 -932384572232064121, i64 -932384572232064121, i64 -3, i64 0, i64 -3, i64 -932384572232064121], [6 x i64] [i64 -3, i64 -8, i64 0, i64 0, i64 -8, i64 -3], [6 x i64] [i64 -932384572232064121, i64 -3, i64 0, i64 -3, i64 -932384572232064121, i64 -932384572232064121], [6 x i64] [i64 6835777711093627637, i64 -3, i64 -3, i64 6835777711093627637, i64 -8, i64 6835777711093627637], [6 x i64] [i64 6835777711093627637, i64 -8, i64 6835777711093627637, i64 -3, i64 -3, i64 6835777711093627637], [6 x i64] [i64 -932384572232064121, i64 -932384572232064121, i64 -3, i64 0, i64 -3, i64 -932384572232064121]], align 16
@.str.54 = private unnamed_addr constant [13 x i8] c"g_1170[i][j]\00", align 1
@g_1210 = internal global i16 4, align 2
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1210\00", align 1
@g_1214 = internal global i32 -5, align 4
@.str.56 = private unnamed_addr constant [7 x i8] c"g_1214\00", align 1
@g_1220 = internal global i16 -1, align 2
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1220\00", align 1
@g_1281 = internal global i32 -1341094555, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1281\00", align 1
@g_1308 = internal global [5 x [2 x i8]] [[2 x i8] c"\9C\9C", [2 x i8] c"\9C\9C", [2 x i8] c"\9C\9C", [2 x i8] c"\9C\9C", [2 x i8] c"\9C\9C"], align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"g_1308[i][j]\00", align 1
@g_1342 = internal global i16 -24739, align 2
@.str.60 = private unnamed_addr constant [7 x i8] c"g_1342\00", align 1
@g_1448 = internal global i8 -1, align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"g_1448\00", align 1
@g_1455 = internal global [2 x i16] [i16 -2, i16 -2], align 2
@.str.62 = private unnamed_addr constant [10 x i8] c"g_1455[i]\00", align 1
@g_1458 = internal global i64 1, align 8
@.str.63 = private unnamed_addr constant [7 x i8] c"g_1458\00", align 1
@g_1459 = internal global i32 268048988, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"g_1459\00", align 1
@g_1460 = internal global i8 9, align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"g_1460\00", align 1
@g_1695 = internal global i32 -3, align 4
@.str.66 = private unnamed_addr constant [7 x i8] c"g_1695\00", align 1
@g_1708 = internal global i32 -1, align 4
@.str.67 = private unnamed_addr constant [7 x i8] c"g_1708\00", align 1
@g_1713 = internal global i32 2, align 4
@.str.68 = private unnamed_addr constant [7 x i8] c"g_1713\00", align 1
@g_1798 = internal global [1 x [4 x [9 x i64]]] [[4 x [9 x i64]] [[9 x i64] [i64 6529344366009634540, i64 -7437026015076866620, i64 -7437026015076866620, i64 6529344366009634540, i64 1, i64 -1, i64 1, i64 6529344366009634540, i64 -7437026015076866620], [9 x i64] [i64 1, i64 1, i64 3141337690568855795, i64 -1, i64 6, i64 -1, i64 3141337690568855795, i64 1, i64 1], [9 x i64] [i64 -7437026015076866620, i64 6529344366009634540, i64 1, i64 -1, i64 1, i64 6529344366009634540, i64 -7437026015076866620, i64 -7437026015076866620, i64 6529344366009634540], [9 x i64] [i64 -1, i64 6529344366009634540, i64 3141337690568855795, i64 6529344366009634540, i64 -1, i64 8396559611935583614, i64 8396559611935583614, i64 -1, i64 6529344366009634540]]], align 16
@.str.69 = private unnamed_addr constant [16 x i8] c"g_1798[i][j][k]\00", align 1
@g_1799 = internal global i32 -7, align 4
@.str.70 = private unnamed_addr constant [7 x i8] c"g_1799\00", align 1
@g_1800 = internal global i32 0, align 4
@.str.71 = private unnamed_addr constant [7 x i8] c"g_1800\00", align 1
@g_1833 = internal global i8 -24, align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"g_1833\00", align 1
@g_1838 = internal global i32 72640077, align 4
@.str.73 = private unnamed_addr constant [7 x i8] c"g_1838\00", align 1
@g_1845 = internal global i64 7, align 8
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1845\00", align 1
@g_1865 = internal global i32 -4, align 4
@.str.75 = private unnamed_addr constant [7 x i8] c"g_1865\00", align 1
@g_1928 = internal global i64 4038519317638457925, align 8
@.str.76 = private unnamed_addr constant [7 x i8] c"g_1928\00", align 1
@g_1959 = internal global i8 -109, align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"g_1959\00", align 1
@g_1979 = internal global i8 -8, align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"g_1979\00", align 1
@g_1993 = internal global i16 0, align 2
@.str.79 = private unnamed_addr constant [7 x i8] c"g_1993\00", align 1
@g_1994 = internal global i32 0, align 4
@.str.80 = private unnamed_addr constant [7 x i8] c"g_1994\00", align 1
@g_2042 = internal global i16 0, align 2
@.str.81 = private unnamed_addr constant [7 x i8] c"g_2042\00", align 1
@g_2072 = internal global i16 0, align 2
@.str.82 = private unnamed_addr constant [7 x i8] c"g_2072\00", align 1
@g_2084 = internal global [1 x i16] [i16 -23199], align 2
@.str.83 = private unnamed_addr constant [10 x i8] c"g_2084[i]\00", align 1
@g_2142 = internal global i8 0, align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"g_2142\00", align 1
@g_2144 = internal global i8 0, align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"g_2144\00", align 1
@g_2294 = internal global i32 -245422783, align 4
@.str.86 = private unnamed_addr constant [7 x i8] c"g_2294\00", align 1
@g_2295 = internal global i32 0, align 4
@.str.87 = private unnamed_addr constant [7 x i8] c"g_2295\00", align 1
@g_2409 = internal global i16 -1, align 2
@.str.88 = private unnamed_addr constant [7 x i8] c"g_2409\00", align 1
@g_2431 = internal global i32 -2, align 4
@.str.89 = private unnamed_addr constant [7 x i8] c"g_2431\00", align 1
@g_2580 = internal global [1 x i32] [i32 -1], align 4
@.str.90 = private unnamed_addr constant [10 x i8] c"g_2580[i]\00", align 1
@g_2786 = internal global i16 7214, align 2
@.str.91 = private unnamed_addr constant [7 x i8] c"g_2786\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"g_3007\00", align 1
@g_3059 = internal global [3 x i16] [i16 -1, i16 -1, i16 -1], align 2
@.str.93 = private unnamed_addr constant [10 x i8] c"g_3059[i]\00", align 1
@g_3182 = internal global i16 -14868, align 2
@.str.94 = private unnamed_addr constant [7 x i8] c"g_3182\00", align 1
@g_3210 = internal global i8 -111, align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"g_3210\00", align 1
@g_3314 = internal global i8 -1, align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"g_3314\00", align 1
@g_3317 = internal global i64 -2728040911492298888, align 8
@.str.97 = private unnamed_addr constant [7 x i8] c"g_3317\00", align 1
@g_3329 = internal global [5 x i64] [i64 6479183028243515999, i64 6479183028243515999, i64 6479183028243515999, i64 6479183028243515999, i64 6479183028243515999], align 16
@.str.98 = private unnamed_addr constant [10 x i8] c"g_3329[i]\00", align 1
@g_3535 = internal global i32 -1627773594, align 4
@.str.99 = private unnamed_addr constant [7 x i8] c"g_3535\00", align 1
@g_3583 = internal global [1 x [1 x [3 x i8]]] [[1 x [3 x i8]] [[3 x i8] c"\01\01\01"]], align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"g_3583[i][j][k]\00", align 1
@g_3626 = internal global i8 2, align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"g_3626\00", align 1
@g_3656 = internal global i32 343250306, align 4
@.str.102 = private unnamed_addr constant [7 x i8] c"g_3656\00", align 1
@g_3665 = internal global i64 -4, align 8
@.str.103 = private unnamed_addr constant [7 x i8] c"g_3665\00", align 1
@g_3720 = internal global i32 323318509, align 4
@.str.104 = private unnamed_addr constant [7 x i8] c"g_3720\00", align 1
@g_3754 = internal global i16 -16035, align 2
@.str.105 = private unnamed_addr constant [7 x i8] c"g_3754\00", align 1
@g_3865 = internal global i8 -35, align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"g_3865\00", align 1
@g_3898 = internal global i32 -1, align 4
@.str.107 = private unnamed_addr constant [7 x i8] c"g_3898\00", align 1
@g_3935 = internal global i16 1, align 2
@.str.108 = private unnamed_addr constant [7 x i8] c"g_3935\00", align 1
@g_4014 = internal global i32 655191202, align 4
@.str.109 = private unnamed_addr constant [7 x i8] c"g_4014\00", align 1
@g_4016 = internal global [4 x [4 x i8]] [[4 x i8] c"\AE\02\02\AE", [4 x i8] c"Z\02E\02", [4 x i8] c"\02(EE", [4 x i8] c"ZZ\02E"], align 16
@.str.110 = private unnamed_addr constant [13 x i8] c"g_4016[i][j]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1348 = internal global i32* @g_1214, align 8
@func_1.l_3434 = private unnamed_addr constant [4 x i32**] [i32** @g_1348, i32** @g_1348, i32** @g_1348, i32** @g_1348], align 16
@func_1.l_3462 = private unnamed_addr constant [6 x [9 x [4 x i16]]] [[9 x [4 x i16]] [[4 x i16] [i16 1, i16 -1986, i16 -10814, i16 1], [4 x i16] [i16 -1008, i16 -1986, i16 -19518, i16 -1986], [4 x i16] [i16 -1986, i16 3, i16 -16091, i16 0], [4 x i16] [i16 0, i16 -1008, i16 -10814, i16 -16091], [4 x i16] [i16 0, i16 -10, i16 25189, i16 -1986], [4 x i16] [i16 0, i16 -10814, i16 -10814, i16 0], [4 x i16] [i16 0, i16 -1986, i16 -16091, i16 -10814], [4 x i16] [i16 -1986, i16 -10, i16 -19518, i16 0], [4 x i16] [i16 -1008, i16 0, i16 -10814, i16 0]], [9 x [4 x i16]] [[4 x i16] [i16 1, i16 -10, i16 1, i16 -10814], [4 x i16] [i16 0, i16 -1986, i16 -1, i16 0], [4 x i16] [i16 -1008, i16 -10814, i16 -16091, i16 -1986], [4 x i16] [i16 -10814, i16 -10, i16 -16091, i16 -16091], [4 x i16] [i16 -1008, i16 -1008, i16 -1, i16 0], [4 x i16] [i16 0, i16 3, i16 1, i16 -1986], [4 x i16] [i16 1, i16 -1986, i16 -10814, i16 1], [4 x i16] [i16 -1008, i16 -1986, i16 -19518, i16 -1986], [4 x i16] [i16 -1986, i16 3, i16 -16091, i16 0]], [9 x [4 x i16]] [[4 x i16] [i16 0, i16 -1008, i16 -10814, i16 -16091], [4 x i16] [i16 0, i16 -10, i16 25189, i16 -1986], [4 x i16] [i16 0, i16 -10814, i16 -10814, i16 0], [4 x i16] [i16 0, i16 -1986, i16 -16091, i16 -10814], [4 x i16] [i16 -1986, i16 -10, i16 -19518, i16 0], [4 x i16] [i16 -1008, i16 0, i16 -10814, i16 0], [4 x i16] [i16 1, i16 -10, i16 -19518, i16 25189], [4 x i16] [i16 -16091, i16 1, i16 0, i16 -16091], [4 x i16] [i16 -10814, i16 25189, i16 -9, i16 1]], [9 x [4 x i16]] [[4 x i16] [i16 25189, i16 0, i16 -9, i16 -9], [4 x i16] [i16 -10814, i16 -10814, i16 0, i16 3], [4 x i16] [i16 -16091, i16 27909, i16 -19518, i16 1], [4 x i16] [i16 -19518, i16 1, i16 25189, i16 -19518], [4 x i16] [i16 -10814, i16 1, i16 -10, i16 1], [4 x i16] [i16 1, i16 27909, i16 -9, i16 3], [4 x i16] [i16 -1, i16 -10814, i16 25189, i16 -9], [4 x i16] [i16 -16091, i16 0, i16 0, i16 1], [4 x i16] [i16 -16091, i16 25189, i16 25189, i16 -16091]], [9 x [4 x i16]] [[4 x i16] [i16 -1, i16 1, i16 -9, i16 25189], [4 x i16] [i16 1, i16 0, i16 -10, i16 3], [4 x i16] [i16 -10814, i16 -1, i16 25189, i16 3], [4 x i16] [i16 -19518, i16 0, i16 -19518, i16 25189], [4 x i16] [i16 -16091, i16 1, i16 0, i16 -16091], [4 x i16] [i16 -10814, i16 25189, i16 -9, i16 1], [4 x i16] [i16 25189, i16 0, i16 -9, i16 -9], [4 x i16] [i16 -10814, i16 -10814, i16 0, i16 3], [4 x i16] [i16 -16091, i16 27909, i16 -19518, i16 1]], [9 x [4 x i16]] [[4 x i16] [i16 -19518, i16 1, i16 25189, i16 -19518], [4 x i16] [i16 -10814, i16 1, i16 -10, i16 1], [4 x i16] [i16 1, i16 27909, i16 -9, i16 3], [4 x i16] [i16 -1, i16 -10814, i16 25189, i16 -9], [4 x i16] [i16 -16091, i16 0, i16 0, i16 1], [4 x i16] [i16 -16091, i16 25189, i16 25189, i16 -16091], [4 x i16] [i16 -1, i16 1, i16 -9, i16 25189], [4 x i16] [i16 1, i16 0, i16 -10, i16 3], [4 x i16] [i16 -10814, i16 -1, i16 25189, i16 3]]], align 16
@func_1.l_3497 = private unnamed_addr constant [5 x [7 x [2 x i32]]] [[7 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 -1, i32 2], [2 x i32] [i32 2, i32 -1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 -1, i32 1]], [7 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 -1, i32 2], [2 x i32] [i32 2, i32 -1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 -1, i32 1]], [7 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 -1, i32 2], [2 x i32] [i32 2, i32 -1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 -1, i32 1]], [7 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 -1, i32 2], [2 x i32] [i32 2, i32 -1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 -1, i32 1]], [7 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 -1, i32 2], [2 x i32] [i32 2, i32 -1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 -1, i32 1]]], align 16
@g_353 = internal global i16* @g_86, align 8
@func_1.l_3638 = private unnamed_addr constant [4 x [9 x i64*]] [[9 x i64*] [i64* @g_965, i64* @g_965, i64* null, i64* @g_3317, i64* @g_3317, i64* @g_965, i64* @g_3317, i64* @g_3317, i64* @g_965], [9 x i64*] [i64* @g_3317, i64* @g_3317, i64* @g_965, i64* @g_3317, i64* @g_3317, i64* @g_965, i64* @g_3317, i64* @g_3317, i64* @g_965], [9 x i64*] [i64* @g_3317, i64* @g_3317, i64* @g_965, i64* @g_3317, i64* @g_3317, i64* @g_965, i64* @g_3317, i64* @g_3317, i64* @g_965], [9 x i64*] [i64* @g_3317, i64* @g_3317, i64* @g_965, i64* @g_3317, i64* @g_3317, i64* @g_965, i64* @g_3317, i64* @g_3317, i64* @g_965]], align 16
@func_1.l_4015 = private unnamed_addr constant [10 x [8 x [3 x i32]]] [[8 x [3 x i32]] [[3 x i32] [i32 1, i32 -2058080627, i32 7], [3 x i32] [i32 -2045033205, i32 1112392183, i32 -1], [3 x i32] [i32 485423745, i32 1, i32 -1], [3 x i32] [i32 -158761852, i32 -555800068, i32 7], [3 x i32] [i32 -1298435812, i32 -6, i32 -1974827411], [3 x i32] [i32 0, i32 -1287557401, i32 6], [3 x i32] [i32 1, i32 1, i32 7], [3 x i32] [i32 1, i32 -483535638, i32 6]], [8 x [3 x i32]] [[3 x i32] [i32 -1540742409, i32 1589982274, i32 -1974827411], [3 x i32] [i32 2, i32 -1, i32 7], [3 x i32] [i32 1589982274, i32 485423745, i32 -1], [3 x i32] [i32 1112392183, i32 1, i32 -1], [3 x i32] [i32 -555800068, i32 -158761852, i32 7], [3 x i32] [i32 -1991555751, i32 0, i32 -1974827411], [3 x i32] [i32 -483535638, i32 -1991555751, i32 6], [3 x i32] [i32 -1, i32 -9, i32 7]], [8 x [3 x i32]] [[3 x i32] [i32 -1, i32 0, i32 6], [3 x i32] [i32 0, i32 -2045033205, i32 -1974827411], [3 x i32] [i32 -9, i32 1, i32 7], [3 x i32] [i32 -1565464682, i32 -761901546, i32 -1], [3 x i32] [i32 -761901546, i32 -1, i32 -1], [3 x i32] [i32 1, i32 1, i32 7], [3 x i32] [i32 -1287557401, i32 -1540742409, i32 -1974827411], [3 x i32] [i32 1, i32 -1298435812, i32 6]], [8 x [3 x i32]] [[3 x i32] [i32 -2058080627, i32 2, i32 7], [3 x i32] [i32 1, i32 1, i32 6], [3 x i32] [i32 -6, i32 -1565464682, i32 -1974827411], [3 x i32] [i32 1, i32 -2058080627, i32 7], [3 x i32] [i32 -2045033205, i32 1112392183, i32 -1], [3 x i32] [i32 485423745, i32 1, i32 -1], [3 x i32] [i32 -158761852, i32 -555800068, i32 7], [3 x i32] [i32 -1298435812, i32 -6, i32 -1974827411]], [8 x [3 x i32]] [[3 x i32] [i32 0, i32 -1287557401, i32 6], [3 x i32] [i32 1, i32 1, i32 7], [3 x i32] [i32 1, i32 -483535638, i32 6], [3 x i32] [i32 -1540742409, i32 1589982274, i32 -1974827411], [3 x i32] [i32 2, i32 -1, i32 7], [3 x i32] [i32 1589982274, i32 485423745, i32 -1], [3 x i32] [i32 1112392183, i32 1, i32 -1], [3 x i32] [i32 -555800068, i32 -158761852, i32 7]], [8 x [3 x i32]] [[3 x i32] [i32 -1991555751, i32 0, i32 -1974827411], [3 x i32] [i32 -483535638, i32 -1991555751, i32 6], [3 x i32] [i32 -1, i32 -9, i32 7], [3 x i32] [i32 -1, i32 0, i32 6], [3 x i32] [i32 0, i32 -2045033205, i32 -1974827411], [3 x i32] [i32 -9, i32 1, i32 7], [3 x i32] [i32 -1565464682, i32 -761901546, i32 -1], [3 x i32] [i32 -761901546, i32 -1, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 7], [3 x i32] [i32 -1287557401, i32 -1540742409, i32 -1974827411], [3 x i32] [i32 1, i32 -1298435812, i32 6], [3 x i32] [i32 -2058080627, i32 2, i32 7], [3 x i32] [i32 1, i32 1, i32 -2058080627], [3 x i32] [i32 0, i32 1, i32 -1], [3 x i32] [i32 -172958545, i32 0, i32 -9], [3 x i32] [i32 0, i32 -436660200, i32 1]], [8 x [3 x i32]] [[3 x i32] [i32 -10, i32 -10, i32 1], [3 x i32] [i32 2, i32 -1, i32 -9], [3 x i32] [i32 7, i32 0, i32 -1], [3 x i32] [i32 0, i32 1489092289, i32 -2058080627], [3 x i32] [i32 -1, i32 -172958545, i32 -9], [3 x i32] [i32 -10, i32 -1229015429, i32 -2058080627], [3 x i32] [i32 -1, i32 0, i32 -1], [3 x i32] [i32 1440872388, i32 -6, i32 -9]], [8 x [3 x i32]] [[3 x i32] [i32 0, i32 -10, i32 1], [3 x i32] [i32 -436660200, i32 -764354884, i32 1], [3 x i32] [i32 -1, i32 2, i32 -9], [3 x i32] [i32 -9, i32 -1426683035, i32 -1], [3 x i32] [i32 -1229015429, i32 -9, i32 -2058080627], [3 x i32] [i32 -6, i32 -8, i32 -9], [3 x i32] [i32 -1887074616, i32 0, i32 -2058080627], [3 x i32] [i32 -1426683035, i32 0, i32 -1]], [8 x [3 x i32]] [[3 x i32] [i32 -8, i32 -1, i32 -9], [3 x i32] [i32 1, i32 558037236, i32 1], [3 x i32] [i32 558037236, i32 -1887074616, i32 1], [3 x i32] [i32 149403093, i32 149403093, i32 -9], [3 x i32] [i32 1489092289, i32 -1, i32 -1], [3 x i32] [i32 -239911863, i32 7, i32 -2058080627], [3 x i32] [i32 0, i32 1440872388, i32 -9], [3 x i32] [i32 -764354884, i32 -239911863, i32 -2058080627]]], align 16
@g_3 = internal constant i32* @g_2, align 8
@.str.111 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_33, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i16, i16* @g_72, align 2, !tbaa !10
  %98 = sext i16 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  %100 = load i16, i16* @g_77, align 2, !tbaa !10
  %101 = zext i16 %100 to i64
  %102 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 %102)
  %103 = load i8, i8* @g_84, align 1, !tbaa !9
  %104 = sext i8 %103 to i64
  %105 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %105)
  %106 = load i16, i16* @g_86, align 2, !tbaa !10
  %107 = zext i16 %106 to i64
  %108 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %108)
  %109 = load i32, i32* @g_102, align 4, !tbaa !1
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %111)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:112                                     ; preds = %140, %89
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %143

; <label>:115                                     ; preds = %112
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %116

; <label>:116                                     ; preds = %136, %115
  %117 = load i32, i32* %j, align 4, !tbaa !1
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %139

; <label>:119                                     ; preds = %116
  %120 = load i32, i32* %j, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %i, align 4, !tbaa !1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x [1 x i8]], [8 x [1 x i8]]* @g_108, i32 0, i64 %123
  %125 = getelementptr inbounds [1 x i8], [1 x i8]* %124, i32 0, i64 %121
  %126 = load i8, i8* %125, align 1, !tbaa !9
  %127 = sext i8 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %128)
  %129 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

; <label>:131                                     ; preds = %119
  %132 = load i32, i32* %i, align 4, !tbaa !1
  %133 = load i32, i32* %j, align 4, !tbaa !1
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %132, i32 %133)
  br label %135

; <label>:135                                     ; preds = %131, %119
  br label %136

; <label>:136                                     ; preds = %135
  %137 = load i32, i32* %j, align 4, !tbaa !1
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %j, align 4, !tbaa !1
  br label %116

; <label>:139                                     ; preds = %116
  br label %140

; <label>:140                                     ; preds = %139
  %141 = load i32, i32* %i, align 4, !tbaa !1
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %i, align 4, !tbaa !1
  br label %112

; <label>:143                                     ; preds = %112
  %144 = load i64, i64* @g_112, align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* @g_114, align 4, !tbaa !1
  %147 = zext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_116, align 4, !tbaa !1
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %151)
  %152 = load i8, i8* @g_132, align 1, !tbaa !9
  %153 = zext i8 %152 to i64
  %154 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %154)
  %155 = load i16, i16* @g_138, align 2, !tbaa !10
  %156 = sext i16 %155 to i64
  %157 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %157)
  %158 = load i32, i32* @g_140, align 4, !tbaa !1
  %159 = zext i32 %158 to i64
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %160)
  %161 = load i8, i8* @g_142, align 1, !tbaa !9
  %162 = zext i8 %161 to i64
  %163 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %163)
  %164 = load i8, i8* @g_155, align 1, !tbaa !9
  %165 = sext i8 %164 to i64
  %166 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %166)
  %167 = load i16, i16* @g_166, align 2, !tbaa !10
  %168 = sext i16 %167 to i64
  %169 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %169)
  %170 = load i16, i16* @g_167, align 2, !tbaa !10
  %171 = zext i16 %170 to i64
  %172 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %172)
  %173 = load i8, i8* @g_179, align 1, !tbaa !9
  %174 = zext i8 %173 to i64
  %175 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %175)
  %176 = load volatile i16, i16* @g_219, align 2, !tbaa !10
  %177 = sext i16 %176 to i64
  %178 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %178)
  %179 = load volatile i16, i16* @g_221, align 2, !tbaa !10
  %180 = sext i16 %179 to i64
  %181 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %181)
  %182 = load volatile i16, i16* @g_223, align 2, !tbaa !10
  %183 = sext i16 %182 to i64
  %184 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %184)
  %185 = load i8, i8* @g_229, align 1, !tbaa !9
  %186 = sext i8 %185 to i64
  %187 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %187)
  %188 = load i8, i8* @g_230, align 1, !tbaa !9
  %189 = zext i8 %188 to i64
  %190 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %190)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %191

; <label>:191                                     ; preds = %207, %143
  %192 = load i32, i32* %i, align 4, !tbaa !1
  %193 = icmp slt i32 %192, 9
  br i1 %193, label %194, label %210

; <label>:194                                     ; preds = %191
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [9 x i32], [9 x i32]* @g_233, i32 0, i64 %196
  %198 = load i32, i32* %197, align 4, !tbaa !1
  %199 = zext i32 %198 to i64
  %200 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %200)
  %201 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

; <label>:203                                     ; preds = %194
  %204 = load i32, i32* %i, align 4, !tbaa !1
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %204)
  br label %206

; <label>:206                                     ; preds = %203, %194
  br label %207

; <label>:207                                     ; preds = %206
  %208 = load i32, i32* %i, align 4, !tbaa !1
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %i, align 4, !tbaa !1
  br label %191

; <label>:210                                     ; preds = %191
  %211 = load i8, i8* @g_347, align 1, !tbaa !9
  %212 = zext i8 %211 to i64
  %213 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %213)
  %214 = load i64, i64* @g_371, align 8, !tbaa !7
  %215 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %215)
  %216 = load i32, i32* @g_431, align 4, !tbaa !1
  %217 = zext i32 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %218)
  %219 = load i8, i8* @g_438, align 1, !tbaa !9
  %220 = sext i8 %219 to i64
  %221 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %220, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %221)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %222

; <label>:222                                     ; preds = %250, %210
  %223 = load i32, i32* %i, align 4, !tbaa !1
  %224 = icmp slt i32 %223, 8
  br i1 %224, label %225, label %253

; <label>:225                                     ; preds = %222
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %226

; <label>:226                                     ; preds = %246, %225
  %227 = load i32, i32* %j, align 4, !tbaa !1
  %228 = icmp slt i32 %227, 9
  br i1 %228, label %229, label %249

; <label>:229                                     ; preds = %226
  %230 = load i32, i32* %j, align 4, !tbaa !1
  %231 = sext i32 %230 to i64
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x [9 x i32]], [8 x [9 x i32]]* @g_455, i32 0, i64 %233
  %235 = getelementptr inbounds [9 x i32], [9 x i32]* %234, i32 0, i64 %231
  %236 = load i32, i32* %235, align 4, !tbaa !1
  %237 = zext i32 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %238)
  %239 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

; <label>:241                                     ; preds = %229
  %242 = load i32, i32* %i, align 4, !tbaa !1
  %243 = load i32, i32* %j, align 4, !tbaa !1
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %242, i32 %243)
  br label %245

; <label>:245                                     ; preds = %241, %229
  br label %246

; <label>:246                                     ; preds = %245
  %247 = load i32, i32* %j, align 4, !tbaa !1
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %j, align 4, !tbaa !1
  br label %226

; <label>:249                                     ; preds = %226
  br label %250

; <label>:250                                     ; preds = %249
  %251 = load i32, i32* %i, align 4, !tbaa !1
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %i, align 4, !tbaa !1
  br label %222

; <label>:253                                     ; preds = %222
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %254

; <label>:254                                     ; preds = %294, %253
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = icmp slt i32 %255, 10
  br i1 %256, label %257, label %297

; <label>:257                                     ; preds = %254
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %258

; <label>:258                                     ; preds = %290, %257
  %259 = load i32, i32* %j, align 4, !tbaa !1
  %260 = icmp slt i32 %259, 5
  br i1 %260, label %261, label %293

; <label>:261                                     ; preds = %258
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %262

; <label>:262                                     ; preds = %286, %261
  %263 = load i32, i32* %k, align 4, !tbaa !1
  %264 = icmp slt i32 %263, 4
  br i1 %264, label %265, label %289

; <label>:265                                     ; preds = %262
  %266 = load i32, i32* %k, align 4, !tbaa !1
  %267 = sext i32 %266 to i64
  %268 = load i32, i32* %j, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [10 x [5 x [4 x i32]]], [10 x [5 x [4 x i32]]]* @g_463, i32 0, i64 %271
  %273 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* %272, i32 0, i64 %269
  %274 = getelementptr inbounds [4 x i32], [4 x i32]* %273, i32 0, i64 %267
  %275 = load i32, i32* %274, align 4, !tbaa !1
  %276 = zext i32 %275 to i64
  %277 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %276, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 %277)
  %278 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

; <label>:280                                     ; preds = %265
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = load i32, i32* %j, align 4, !tbaa !1
  %283 = load i32, i32* %k, align 4, !tbaa !1
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i32 %281, i32 %282, i32 %283)
  br label %285

; <label>:285                                     ; preds = %280, %265
  br label %286

; <label>:286                                     ; preds = %285
  %287 = load i32, i32* %k, align 4, !tbaa !1
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %k, align 4, !tbaa !1
  br label %262

; <label>:289                                     ; preds = %262
  br label %290

; <label>:290                                     ; preds = %289
  %291 = load i32, i32* %j, align 4, !tbaa !1
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %j, align 4, !tbaa !1
  br label %258

; <label>:293                                     ; preds = %258
  br label %294

; <label>:294                                     ; preds = %293
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %i, align 4, !tbaa !1
  br label %254

; <label>:297                                     ; preds = %254
  %298 = load i32, i32* @g_493, align 4, !tbaa !1
  %299 = zext i32 %298 to i64
  %300 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 %300)
  %301 = load i32, i32* @g_526, align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %303)
  %304 = load i32, i32* @g_612, align 4, !tbaa !1
  %305 = zext i32 %304 to i64
  %306 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %306)
  %307 = load i8, i8* @g_618, align 1, !tbaa !9
  %308 = zext i8 %307 to i64
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %309)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %310

; <label>:310                                     ; preds = %325, %297
  %311 = load i32, i32* %i, align 4, !tbaa !1
  %312 = icmp slt i32 %311, 8
  br i1 %312, label %313, label %328

; <label>:313                                     ; preds = %310
  %314 = load i32, i32* %i, align 4, !tbaa !1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [8 x i64], [8 x i64]* @g_646, i32 0, i64 %315
  %317 = load i64, i64* %316, align 8, !tbaa !7
  %318 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %317, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %318)
  %319 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

; <label>:321                                     ; preds = %313
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %322)
  br label %324

; <label>:324                                     ; preds = %321, %313
  br label %325

; <label>:325                                     ; preds = %324
  %326 = load i32, i32* %i, align 4, !tbaa !1
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %i, align 4, !tbaa !1
  br label %310

; <label>:328                                     ; preds = %310
  %329 = load i64, i64* @g_790, align 8, !tbaa !7
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* @g_791, align 4, !tbaa !1
  %332 = zext i32 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %333)
  %334 = load i32, i32* @g_847, align 4, !tbaa !1
  %335 = zext i32 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 %336)
  %337 = load volatile i16, i16* @g_912, align 2, !tbaa !10
  %338 = zext i16 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 %339)
  %340 = load volatile i16, i16* @g_913, align 2, !tbaa !10
  %341 = zext i16 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %342)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:343                                     ; preds = %359, %328
  %344 = load i32, i32* %i, align 4, !tbaa !1
  %345 = icmp slt i32 %344, 2
  br i1 %345, label %346, label %362

; <label>:346                                     ; preds = %343
  %347 = load i32, i32* %i, align 4, !tbaa !1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [2 x i16], [2 x i16]* @g_914, i32 0, i64 %348
  %350 = load volatile i16, i16* %349, align 2, !tbaa !10
  %351 = zext i16 %350 to i64
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i32 %352)
  %353 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

; <label>:355                                     ; preds = %346
  %356 = load i32, i32* %i, align 4, !tbaa !1
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %356)
  br label %358

; <label>:358                                     ; preds = %355, %346
  br label %359

; <label>:359                                     ; preds = %358
  %360 = load i32, i32* %i, align 4, !tbaa !1
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %i, align 4, !tbaa !1
  br label %343

; <label>:362                                     ; preds = %343
  %363 = load volatile i16, i16* @g_915, align 2, !tbaa !10
  %364 = zext i16 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %365)
  %366 = load volatile i16, i16* @g_916, align 2, !tbaa !10
  %367 = zext i16 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %368)
  %369 = load i32, i32* @g_948, align 4, !tbaa !1
  %370 = zext i32 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %371)
  %372 = load i64, i64* @g_965, align 8, !tbaa !7
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %373)
  %374 = load i64, i64* @g_1013, align 8, !tbaa !7
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %375)
  %376 = load i16, i16* @g_1018, align 2, !tbaa !10
  %377 = sext i16 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %378)
  %379 = load i32, i32* @g_1019, align 4, !tbaa !1
  %380 = sext i32 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %381)
  %382 = load i32, i32* @g_1141, align 4, !tbaa !1
  %383 = zext i32 %382 to i64
  %384 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %383, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %384)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %385

; <label>:385                                     ; preds = %412, %362
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = icmp slt i32 %386, 7
  br i1 %387, label %388, label %415

; <label>:388                                     ; preds = %385
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %389

; <label>:389                                     ; preds = %408, %388
  %390 = load i32, i32* %j, align 4, !tbaa !1
  %391 = icmp slt i32 %390, 6
  br i1 %391, label %392, label %411

; <label>:392                                     ; preds = %389
  %393 = load i32, i32* %j, align 4, !tbaa !1
  %394 = sext i32 %393 to i64
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [7 x [6 x i64]], [7 x [6 x i64]]* @g_1170, i32 0, i64 %396
  %398 = getelementptr inbounds [6 x i64], [6 x i64]* %397, i32 0, i64 %394
  %399 = load i64, i64* %398, align 8, !tbaa !7
  %400 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %399, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i32 %400)
  %401 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %407

; <label>:403                                     ; preds = %392
  %404 = load i32, i32* %i, align 4, !tbaa !1
  %405 = load i32, i32* %j, align 4, !tbaa !1
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %404, i32 %405)
  br label %407

; <label>:407                                     ; preds = %403, %392
  br label %408

; <label>:408                                     ; preds = %407
  %409 = load i32, i32* %j, align 4, !tbaa !1
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %j, align 4, !tbaa !1
  br label %389

; <label>:411                                     ; preds = %389
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i32, i32* %i, align 4, !tbaa !1
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %i, align 4, !tbaa !1
  br label %385

; <label>:415                                     ; preds = %385
  %416 = load i16, i16* @g_1210, align 2, !tbaa !10
  %417 = zext i16 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %418)
  %419 = load i32, i32* @g_1214, align 4, !tbaa !1
  %420 = zext i32 %419 to i64
  %421 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %420, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %421)
  %422 = load i16, i16* @g_1220, align 2, !tbaa !10
  %423 = zext i16 %422 to i64
  %424 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %423, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 %424)
  %425 = load i32, i32* @g_1281, align 4, !tbaa !1
  %426 = zext i32 %425 to i64
  %427 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %426, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %427)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %428

; <label>:428                                     ; preds = %456, %415
  %429 = load i32, i32* %i, align 4, !tbaa !1
  %430 = icmp slt i32 %429, 5
  br i1 %430, label %431, label %459

; <label>:431                                     ; preds = %428
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %432

; <label>:432                                     ; preds = %452, %431
  %433 = load i32, i32* %j, align 4, !tbaa !1
  %434 = icmp slt i32 %433, 2
  br i1 %434, label %435, label %455

; <label>:435                                     ; preds = %432
  %436 = load i32, i32* %j, align 4, !tbaa !1
  %437 = sext i32 %436 to i64
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [5 x [2 x i8]], [5 x [2 x i8]]* @g_1308, i32 0, i64 %439
  %441 = getelementptr inbounds [2 x i8], [2 x i8]* %440, i32 0, i64 %437
  %442 = load i8, i8* %441, align 1, !tbaa !9
  %443 = zext i8 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i32 %444)
  %445 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

; <label>:447                                     ; preds = %435
  %448 = load i32, i32* %i, align 4, !tbaa !1
  %449 = load i32, i32* %j, align 4, !tbaa !1
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %448, i32 %449)
  br label %451

; <label>:451                                     ; preds = %447, %435
  br label %452

; <label>:452                                     ; preds = %451
  %453 = load i32, i32* %j, align 4, !tbaa !1
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %j, align 4, !tbaa !1
  br label %432

; <label>:455                                     ; preds = %432
  br label %456

; <label>:456                                     ; preds = %455
  %457 = load i32, i32* %i, align 4, !tbaa !1
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %i, align 4, !tbaa !1
  br label %428

; <label>:459                                     ; preds = %428
  %460 = load i16, i16* @g_1342, align 2, !tbaa !10
  %461 = sext i16 %460 to i64
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %461, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %462)
  %463 = load i8, i8* @g_1448, align 1, !tbaa !9
  %464 = zext i8 %463 to i64
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %464, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %465)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %466

; <label>:466                                     ; preds = %482, %459
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = icmp slt i32 %467, 2
  br i1 %468, label %469, label %485

; <label>:469                                     ; preds = %466
  %470 = load i32, i32* %i, align 4, !tbaa !1
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [2 x i16], [2 x i16]* @g_1455, i32 0, i64 %471
  %473 = load i16, i16* %472, align 2, !tbaa !10
  %474 = zext i16 %473 to i64
  %475 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %474, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 %475)
  %476 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

; <label>:478                                     ; preds = %469
  %479 = load i32, i32* %i, align 4, !tbaa !1
  %480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %479)
  br label %481

; <label>:481                                     ; preds = %478, %469
  br label %482

; <label>:482                                     ; preds = %481
  %483 = load i32, i32* %i, align 4, !tbaa !1
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %i, align 4, !tbaa !1
  br label %466

; <label>:485                                     ; preds = %466
  %486 = load i64, i64* @g_1458, align 8, !tbaa !7
  %487 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %486, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %487)
  %488 = load i32, i32* @g_1459, align 4, !tbaa !1
  %489 = sext i32 %488 to i64
  %490 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %489, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %490)
  %491 = load i8, i8* @g_1460, align 1, !tbaa !9
  %492 = zext i8 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* @g_1695, align 4, !tbaa !1
  %495 = zext i32 %494 to i64
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %495, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %496)
  %497 = load i32, i32* @g_1708, align 4, !tbaa !1
  %498 = zext i32 %497 to i64
  %499 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %498, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %499)
  %500 = load i32, i32* @g_1713, align 4, !tbaa !1
  %501 = zext i32 %500 to i64
  %502 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %501, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %502)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:503                                     ; preds = %542, %485
  %504 = load i32, i32* %i, align 4, !tbaa !1
  %505 = icmp slt i32 %504, 1
  br i1 %505, label %506, label %545

; <label>:506                                     ; preds = %503
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %507

; <label>:507                                     ; preds = %538, %506
  %508 = load i32, i32* %j, align 4, !tbaa !1
  %509 = icmp slt i32 %508, 4
  br i1 %509, label %510, label %541

; <label>:510                                     ; preds = %507
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %511

; <label>:511                                     ; preds = %534, %510
  %512 = load i32, i32* %k, align 4, !tbaa !1
  %513 = icmp slt i32 %512, 9
  br i1 %513, label %514, label %537

; <label>:514                                     ; preds = %511
  %515 = load i32, i32* %k, align 4, !tbaa !1
  %516 = sext i32 %515 to i64
  %517 = load i32, i32* %j, align 4, !tbaa !1
  %518 = sext i32 %517 to i64
  %519 = load i32, i32* %i, align 4, !tbaa !1
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [1 x [4 x [9 x i64]]], [1 x [4 x [9 x i64]]]* @g_1798, i32 0, i64 %520
  %522 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %521, i32 0, i64 %518
  %523 = getelementptr inbounds [9 x i64], [9 x i64]* %522, i32 0, i64 %516
  %524 = load i64, i64* %523, align 8, !tbaa !7
  %525 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %524, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i32 %525)
  %526 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %533

; <label>:528                                     ; preds = %514
  %529 = load i32, i32* %i, align 4, !tbaa !1
  %530 = load i32, i32* %j, align 4, !tbaa !1
  %531 = load i32, i32* %k, align 4, !tbaa !1
  %532 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i32 %529, i32 %530, i32 %531)
  br label %533

; <label>:533                                     ; preds = %528, %514
  br label %534

; <label>:534                                     ; preds = %533
  %535 = load i32, i32* %k, align 4, !tbaa !1
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %k, align 4, !tbaa !1
  br label %511

; <label>:537                                     ; preds = %511
  br label %538

; <label>:538                                     ; preds = %537
  %539 = load i32, i32* %j, align 4, !tbaa !1
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %j, align 4, !tbaa !1
  br label %507

; <label>:541                                     ; preds = %507
  br label %542

; <label>:542                                     ; preds = %541
  %543 = load i32, i32* %i, align 4, !tbaa !1
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %i, align 4, !tbaa !1
  br label %503

; <label>:545                                     ; preds = %503
  %546 = load i32, i32* @g_1799, align 4, !tbaa !1
  %547 = sext i32 %546 to i64
  %548 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %547, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %548)
  %549 = load i32, i32* @g_1800, align 4, !tbaa !1
  %550 = zext i32 %549 to i64
  %551 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %550, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i32 %551)
  %552 = load i8, i8* @g_1833, align 1, !tbaa !9
  %553 = zext i8 %552 to i64
  %554 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %553, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %554)
  %555 = load i32, i32* @g_1838, align 4, !tbaa !1
  %556 = zext i32 %555 to i64
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %556, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %557)
  %558 = load i64, i64* @g_1845, align 8, !tbaa !7
  %559 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %558, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %559)
  %560 = load i32, i32* @g_1865, align 4, !tbaa !1
  %561 = zext i32 %560 to i64
  %562 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %561, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 %562)
  %563 = load volatile i64, i64* @g_1928, align 8, !tbaa !7
  %564 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %563, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 %564)
  %565 = load i8, i8* @g_1959, align 1, !tbaa !9
  %566 = zext i8 %565 to i64
  %567 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 %567)
  %568 = load i8, i8* @g_1979, align 1, !tbaa !9
  %569 = sext i8 %568 to i64
  %570 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %569, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %570)
  %571 = load i16, i16* @g_1993, align 2, !tbaa !10
  %572 = sext i16 %571 to i64
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %573)
  %574 = load i32, i32* @g_1994, align 4, !tbaa !1
  %575 = zext i32 %574 to i64
  %576 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %575, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %576)
  %577 = load i16, i16* @g_2042, align 2, !tbaa !10
  %578 = zext i16 %577 to i64
  %579 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %578, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %579)
  %580 = load i16, i16* @g_2072, align 2, !tbaa !10
  %581 = zext i16 %580 to i64
  %582 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %581, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %582)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %583

; <label>:583                                     ; preds = %599, %545
  %584 = load i32, i32* %i, align 4, !tbaa !1
  %585 = icmp slt i32 %584, 1
  br i1 %585, label %586, label %602

; <label>:586                                     ; preds = %583
  %587 = load i32, i32* %i, align 4, !tbaa !1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [1 x i16], [1 x i16]* @g_2084, i32 0, i64 %588
  %590 = load i16, i16* %589, align 2, !tbaa !10
  %591 = zext i16 %590 to i64
  %592 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %591, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i32 %592)
  %593 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %598

; <label>:595                                     ; preds = %586
  %596 = load i32, i32* %i, align 4, !tbaa !1
  %597 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %596)
  br label %598

; <label>:598                                     ; preds = %595, %586
  br label %599

; <label>:599                                     ; preds = %598
  %600 = load i32, i32* %i, align 4, !tbaa !1
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %i, align 4, !tbaa !1
  br label %583

; <label>:602                                     ; preds = %583
  %603 = load i8, i8* @g_2142, align 1, !tbaa !9
  %604 = sext i8 %603 to i64
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %604, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 %605)
  %606 = load i8, i8* @g_2144, align 1, !tbaa !9
  %607 = zext i8 %606 to i64
  %608 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %607, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 %608)
  %609 = load i32, i32* @g_2294, align 4, !tbaa !1
  %610 = zext i32 %609 to i64
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %610, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i32 %611)
  %612 = load i32, i32* @g_2295, align 4, !tbaa !1
  %613 = sext i32 %612 to i64
  %614 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %613, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %614)
  %615 = load i16, i16* @g_2409, align 2, !tbaa !10
  %616 = zext i16 %615 to i64
  %617 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %616, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 %617)
  %618 = load i32, i32* @g_2431, align 4, !tbaa !1
  %619 = sext i32 %618 to i64
  %620 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %619, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i32 %620)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %621

; <label>:621                                     ; preds = %637, %602
  %622 = load i32, i32* %i, align 4, !tbaa !1
  %623 = icmp slt i32 %622, 1
  br i1 %623, label %624, label %640

; <label>:624                                     ; preds = %621
  %625 = load i32, i32* %i, align 4, !tbaa !1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [1 x i32], [1 x i32]* @g_2580, i32 0, i64 %626
  %628 = load i32, i32* %627, align 4, !tbaa !1
  %629 = sext i32 %628 to i64
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %629, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 %630)
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %636

; <label>:633                                     ; preds = %624
  %634 = load i32, i32* %i, align 4, !tbaa !1
  %635 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %634)
  br label %636

; <label>:636                                     ; preds = %633, %624
  br label %637

; <label>:637                                     ; preds = %636
  %638 = load i32, i32* %i, align 4, !tbaa !1
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %i, align 4, !tbaa !1
  br label %621

; <label>:640                                     ; preds = %621
  %641 = load i16, i16* @g_2786, align 2, !tbaa !10
  %642 = sext i16 %641 to i64
  %643 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %642, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i32 %643)
  %644 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -8006, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 %644)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %645

; <label>:645                                     ; preds = %661, %640
  %646 = load i32, i32* %i, align 4, !tbaa !1
  %647 = icmp slt i32 %646, 3
  br i1 %647, label %648, label %664

; <label>:648                                     ; preds = %645
  %649 = load i32, i32* %i, align 4, !tbaa !1
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [3 x i16], [3 x i16]* @g_3059, i32 0, i64 %650
  %652 = load i16, i16* %651, align 2, !tbaa !10
  %653 = zext i16 %652 to i64
  %654 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %653, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %654)
  %655 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %660

; <label>:657                                     ; preds = %648
  %658 = load i32, i32* %i, align 4, !tbaa !1
  %659 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %658)
  br label %660

; <label>:660                                     ; preds = %657, %648
  br label %661

; <label>:661                                     ; preds = %660
  %662 = load i32, i32* %i, align 4, !tbaa !1
  %663 = add nsw i32 %662, 1
  store i32 %663, i32* %i, align 4, !tbaa !1
  br label %645

; <label>:664                                     ; preds = %645
  %665 = load i16, i16* @g_3182, align 2, !tbaa !10
  %666 = zext i16 %665 to i64
  %667 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %666, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i32 %667)
  %668 = load i8, i8* @g_3210, align 1, !tbaa !9
  %669 = sext i8 %668 to i64
  %670 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %669, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 %670)
  %671 = load i8, i8* @g_3314, align 1, !tbaa !9
  %672 = zext i8 %671 to i64
  %673 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %672, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 %673)
  %674 = load i64, i64* @g_3317, align 8, !tbaa !7
  %675 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %674, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i32 %675)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %676

; <label>:676                                     ; preds = %691, %664
  %677 = load i32, i32* %i, align 4, !tbaa !1
  %678 = icmp slt i32 %677, 5
  br i1 %678, label %679, label %694

; <label>:679                                     ; preds = %676
  %680 = load i32, i32* %i, align 4, !tbaa !1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [5 x i64], [5 x i64]* @g_3329, i32 0, i64 %681
  %683 = load i64, i64* %682, align 8, !tbaa !7
  %684 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %683, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i32 %684)
  %685 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %690

; <label>:687                                     ; preds = %679
  %688 = load i32, i32* %i, align 4, !tbaa !1
  %689 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 %688)
  br label %690

; <label>:690                                     ; preds = %687, %679
  br label %691

; <label>:691                                     ; preds = %690
  %692 = load i32, i32* %i, align 4, !tbaa !1
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %i, align 4, !tbaa !1
  br label %676

; <label>:694                                     ; preds = %676
  %695 = load i32, i32* @g_3535, align 4, !tbaa !1
  %696 = zext i32 %695 to i64
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %696, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 %697)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %698

; <label>:698                                     ; preds = %738, %694
  %699 = load i32, i32* %i, align 4, !tbaa !1
  %700 = icmp slt i32 %699, 1
  br i1 %700, label %701, label %741

; <label>:701                                     ; preds = %698
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %702

; <label>:702                                     ; preds = %734, %701
  %703 = load i32, i32* %j, align 4, !tbaa !1
  %704 = icmp slt i32 %703, 1
  br i1 %704, label %705, label %737

; <label>:705                                     ; preds = %702
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %706

; <label>:706                                     ; preds = %730, %705
  %707 = load i32, i32* %k, align 4, !tbaa !1
  %708 = icmp slt i32 %707, 3
  br i1 %708, label %709, label %733

; <label>:709                                     ; preds = %706
  %710 = load i32, i32* %k, align 4, !tbaa !1
  %711 = sext i32 %710 to i64
  %712 = load i32, i32* %j, align 4, !tbaa !1
  %713 = sext i32 %712 to i64
  %714 = load i32, i32* %i, align 4, !tbaa !1
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [1 x [1 x [3 x i8]]], [1 x [1 x [3 x i8]]]* @g_3583, i32 0, i64 %715
  %717 = getelementptr inbounds [1 x [3 x i8]], [1 x [3 x i8]]* %716, i32 0, i64 %713
  %718 = getelementptr inbounds [3 x i8], [3 x i8]* %717, i32 0, i64 %711
  %719 = load volatile i8, i8* %718, align 1, !tbaa !9
  %720 = zext i8 %719 to i64
  %721 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %720, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0), i32 %721)
  %722 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %729

; <label>:724                                     ; preds = %709
  %725 = load i32, i32* %i, align 4, !tbaa !1
  %726 = load i32, i32* %j, align 4, !tbaa !1
  %727 = load i32, i32* %k, align 4, !tbaa !1
  %728 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), i32 %725, i32 %726, i32 %727)
  br label %729

; <label>:729                                     ; preds = %724, %709
  br label %730

; <label>:730                                     ; preds = %729
  %731 = load i32, i32* %k, align 4, !tbaa !1
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %k, align 4, !tbaa !1
  br label %706

; <label>:733                                     ; preds = %706
  br label %734

; <label>:734                                     ; preds = %733
  %735 = load i32, i32* %j, align 4, !tbaa !1
  %736 = add nsw i32 %735, 1
  store i32 %736, i32* %j, align 4, !tbaa !1
  br label %702

; <label>:737                                     ; preds = %702
  br label %738

; <label>:738                                     ; preds = %737
  %739 = load i32, i32* %i, align 4, !tbaa !1
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %i, align 4, !tbaa !1
  br label %698

; <label>:741                                     ; preds = %698
  %742 = load i8, i8* @g_3626, align 1, !tbaa !9
  %743 = sext i8 %742 to i64
  %744 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %743, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i32 %744)
  %745 = load i32, i32* @g_3656, align 4, !tbaa !1
  %746 = sext i32 %745 to i64
  %747 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %746, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i32 %747)
  %748 = load i64, i64* @g_3665, align 8, !tbaa !7
  %749 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %748, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i32 %749)
  %750 = load i32, i32* @g_3720, align 4, !tbaa !1
  %751 = zext i32 %750 to i64
  %752 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %751, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i32 %752)
  %753 = load i16, i16* @g_3754, align 2, !tbaa !10
  %754 = sext i16 %753 to i64
  %755 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %754, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i32 %755)
  %756 = load i8, i8* @g_3865, align 1, !tbaa !9
  %757 = zext i8 %756 to i64
  %758 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %757, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i32 %758)
  %759 = load i32, i32* @g_3898, align 4, !tbaa !1
  %760 = sext i32 %759 to i64
  %761 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %760, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i32 %761)
  %762 = load i16, i16* @g_3935, align 2, !tbaa !10
  %763 = sext i16 %762 to i64
  %764 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %763, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i32 %764)
  %765 = load i32, i32* @g_4014, align 4, !tbaa !1
  %766 = sext i32 %765 to i64
  %767 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %766, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i32 %767)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %768

; <label>:768                                     ; preds = %796, %741
  %769 = load i32, i32* %i, align 4, !tbaa !1
  %770 = icmp slt i32 %769, 4
  br i1 %770, label %771, label %799

; <label>:771                                     ; preds = %768
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %772

; <label>:772                                     ; preds = %792, %771
  %773 = load i32, i32* %j, align 4, !tbaa !1
  %774 = icmp slt i32 %773, 4
  br i1 %774, label %775, label %795

; <label>:775                                     ; preds = %772
  %776 = load i32, i32* %j, align 4, !tbaa !1
  %777 = sext i32 %776 to i64
  %778 = load i32, i32* %i, align 4, !tbaa !1
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [4 x [4 x i8]], [4 x [4 x i8]]* @g_4016, i32 0, i64 %779
  %781 = getelementptr inbounds [4 x i8], [4 x i8]* %780, i32 0, i64 %777
  %782 = load i8, i8* %781, align 1, !tbaa !9
  %783 = zext i8 %782 to i64
  %784 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %783, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 %784)
  %785 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %786 = icmp ne i32 %785, 0
  br i1 %786, label %787, label %791

; <label>:787                                     ; preds = %775
  %788 = load i32, i32* %i, align 4, !tbaa !1
  %789 = load i32, i32* %j, align 4, !tbaa !1
  %790 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 %788, i32 %789)
  br label %791

; <label>:791                                     ; preds = %787, %775
  br label %792

; <label>:792                                     ; preds = %791
  %793 = load i32, i32* %j, align 4, !tbaa !1
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %j, align 4, !tbaa !1
  br label %772

; <label>:795                                     ; preds = %772
  br label %796

; <label>:796                                     ; preds = %795
  %797 = load i32, i32* %i, align 4, !tbaa !1
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %i, align 4, !tbaa !1
  br label %768

; <label>:799                                     ; preds = %768
  %800 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %801 = zext i32 %800 to i64
  %802 = xor i64 %801, 4294967295
  %803 = trunc i64 %802 to i32
  %804 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %803, i32 %804)
  %805 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %805) #1
  %806 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %806) #1
  %807 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %807) #1
  %808 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %808) #1
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
  %l_3418 = alloca i32, align 4
  %l_3427 = alloca i32, align 4
  %l_3428 = alloca i8, align 1
  %l_3429 = alloca i8*, align 8
  %l_3434 = alloca [4 x i32**], align 16
  %l_3452 = alloca i64, align 8
  %l_3462 = alloca [6 x [9 x [4 x i16]]], align 16
  %l_3497 = alloca [5 x [7 x [2 x i32]]], align 16
  %l_3522 = alloca i32, align 4
  %l_3549 = alloca i16**, align 8
  %l_3625 = alloca [5 x i32], align 16
  %l_3636 = alloca i64, align 8
  %l_3638 = alloca [4 x [9 x i64*]], align 16
  %l_3734 = alloca i8, align 1
  %l_3815 = alloca i32, align 4
  %l_3842 = alloca i64, align 8
  %l_3843 = alloca i64, align 8
  %l_3968 = alloca i32, align 4
  %l_4015 = alloca [10 x [8 x [3 x i32]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32* %l_3418 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -910435105, i32* %l_3418, align 4, !tbaa !1
  %2 = bitcast i32* %l_3427 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %l_3427, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3428) #1
  store i8 -122, i8* %l_3428, align 1, !tbaa !9
  %3 = bitcast i8** %l_3429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* @g_1460, i8** %l_3429, align 8, !tbaa !5
  %4 = bitcast [4 x i32**]* %l_3434 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast [4 x i32**]* %l_3434 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([4 x i32**]* @func_1.l_3434 to i8*), i64 32, i32 16, i1 false)
  %6 = bitcast i64* %l_3452 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 1, i64* %l_3452, align 8, !tbaa !7
  %7 = bitcast [6 x [9 x [4 x i16]]]* %l_3462 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %7) #1
  %8 = bitcast [6 x [9 x [4 x i16]]]* %l_3462 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([6 x [9 x [4 x i16]]]* @func_1.l_3462 to i8*), i64 432, i32 16, i1 false)
  %9 = bitcast [5 x [7 x [2 x i32]]]* %l_3497 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %9) #1
  %10 = bitcast [5 x [7 x [2 x i32]]]* %l_3497 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([5 x [7 x [2 x i32]]]* @func_1.l_3497 to i8*), i64 280, i32 16, i1 false)
  %11 = bitcast i32* %l_3522 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -5, i32* %l_3522, align 4, !tbaa !1
  %12 = bitcast i16*** %l_3549 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i16** @g_353, i16*** %l_3549, align 8, !tbaa !5
  %13 = bitcast [5 x i32]* %l_3625 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %13) #1
  %14 = bitcast i64* %l_3636 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 -1910200753643514994, i64* %l_3636, align 8, !tbaa !7
  %15 = bitcast [4 x [9 x i64*]]* %l_3638 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %15) #1
  %16 = bitcast [4 x [9 x i64*]]* %l_3638 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast ([4 x [9 x i64*]]* @func_1.l_3638 to i8*), i64 288, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_3734) #1
  store i8 -112, i8* %l_3734, align 1, !tbaa !9
  %17 = bitcast i32* %l_3815 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 1345283896, i32* %l_3815, align 4, !tbaa !1
  %18 = bitcast i64* %l_3842 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64 -1, i64* %l_3842, align 8, !tbaa !7
  %19 = bitcast i64* %l_3843 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 -2726614994090751763, i64* %l_3843, align 8, !tbaa !7
  %20 = bitcast i32* %l_3968 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 200386751, i32* %l_3968, align 4, !tbaa !1
  %21 = bitcast [10 x [8 x [3 x i32]]]* %l_4015 to i8*
  call void @llvm.lifetime.start(i64 960, i8* %21) #1
  %22 = bitcast [10 x [8 x [3 x i32]]]* %l_4015 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* bitcast ([10 x [8 x [3 x i32]]]* @func_1.l_4015 to i8*), i64 960, i32 16, i1 false)
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
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %26
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %l_3625, i32 0, i64 %31
  store i32 5, i32* %32, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %29
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %26

; <label>:36                                      ; preds = %26
  %37 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %38 = load volatile i32*, i32** @g_3, align 8, !tbaa !5
  store volatile i32 %37, i32* %38, align 4, !tbaa !1
  %39 = load i32, i32* %l_3418, align 4, !tbaa !1
  %40 = trunc i32 %39 to i16
  %41 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast [10 x [8 x [3 x i32]]]* %l_4015 to i8*
  call void @llvm.lifetime.end(i64 960, i8* %44) #1
  %45 = bitcast i32* %l_3968 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i64* %l_3843 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i64* %l_3842 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %l_3815 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3734) #1
  %49 = bitcast [4 x [9 x i64*]]* %l_3638 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %49) #1
  %50 = bitcast i64* %l_3636 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast [5 x i32]* %l_3625 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %51) #1
  %52 = bitcast i16*** %l_3549 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i32* %l_3522 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast [5 x [7 x [2 x i32]]]* %l_3497 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %54) #1
  %55 = bitcast [6 x [9 x [4 x i16]]]* %l_3462 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %55) #1
  %56 = bitcast i64* %l_3452 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast [4 x i32**]* %l_3434 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %57) #1
  %58 = bitcast i8** %l_3429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3428) #1
  %59 = bitcast i32* %l_3427 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %l_3418 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  ret i16 %40
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.111, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.112, i32 0, i32 0), i32 %3)
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
