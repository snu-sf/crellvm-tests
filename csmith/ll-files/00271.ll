; ModuleID = '00271.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_6 = internal global [4 x i8] c"\FF\FF\FF\FF", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"g_6[i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_17 = internal global [6 x [1 x i32]] [[1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 -10], [1 x i32] [i32 1], [1 x i32] [i32 1], [1 x i32] [i32 -10]], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"g_17[i][j]\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_67 = internal global [7 x [1 x i16]] [[1 x i16] [i16 3369], [1 x i16] [i16 3369], [1 x i16] [i16 3369], [1 x i16] [i16 3369], [1 x i16] [i16 3369], [1 x i16] [i16 3369], [1 x i16] [i16 3369]], align 2
@.str.5 = private unnamed_addr constant [11 x i8] c"g_67[i][j]\00", align 1
@g_70 = internal global [6 x [5 x [5 x i64]]] [[5 x [5 x i64]] [[5 x i64] [i64 -2572261015398813691, i64 -10, i64 -10, i64 -2572261015398813691, i64 -4], [5 x i64] [i64 1, i64 -2572261015398813691, i64 -1, i64 1, i64 1], [5 x i64] [i64 1709817169732190408, i64 -2572261015398813691, i64 1709817169732190408, i64 -4, i64 -2572261015398813691], [5 x i64] [i64 1, i64 -10, i64 -4, i64 1, i64 -4], [5 x i64] [i64 1, i64 1, i64 -1, i64 -2572261015398813691, i64 1]], [5 x [5 x i64]] [[5 x i64] [i64 1709817169732190408, i64 1, i64 -4, i64 -4, i64 1], [5 x i64] [i64 1, i64 -10, i64 1709817169732190408, i64 1, i64 -4], [5 x i64] [i64 -2572261015398813691, i64 1, i64 -1, i64 1, i64 -2572261015398813691], [5 x i64] [i64 1709817169732190408, i64 1, i64 -10, i64 -4, i64 1], [5 x i64] [i64 -2572261015398813691, i64 -10, i64 -10, i64 -2572261015398813691, i64 -4]], [5 x [5 x i64]] [[5 x i64] [i64 1, i64 -2572261015398813691, i64 -1, i64 1, i64 1], [5 x i64] [i64 1709817169732190408, i64 -2572261015398813691, i64 1709817169732190408, i64 -4, i64 -2572261015398813691], [5 x i64] [i64 1, i64 -10, i64 -4, i64 1, i64 -4], [5 x i64] [i64 1, i64 1, i64 -1, i64 -2572261015398813691, i64 1], [5 x i64] [i64 1709817169732190408, i64 1, i64 -4, i64 -4, i64 1]], [5 x [5 x i64]] [[5 x i64] [i64 1, i64 -10, i64 1709817169732190408, i64 1, i64 -4], [5 x i64] [i64 -2572261015398813691, i64 1, i64 -1, i64 1, i64 -2572261015398813691], [5 x i64] [i64 1709817169732190408, i64 1, i64 -10, i64 -4, i64 1], [5 x i64] [i64 -2572261015398813691, i64 -10, i64 -10, i64 -2572261015398813691, i64 -4], [5 x i64] [i64 1, i64 -2572261015398813691, i64 -1, i64 1, i64 1]], [5 x [5 x i64]] [[5 x i64] [i64 1709817169732190408, i64 -2572261015398813691, i64 1709817169732190408, i64 -4, i64 -2572261015398813691], [5 x i64] [i64 1, i64 -10, i64 -4, i64 1, i64 -4], [5 x i64] [i64 1, i64 1, i64 -1, i64 -2572261015398813691, i64 1], [5 x i64] [i64 1709817169732190408, i64 1, i64 -4, i64 -4, i64 1], [5 x i64] [i64 1, i64 -10, i64 1709817169732190408, i64 1, i64 -4]], [5 x [5 x i64]] [[5 x i64] [i64 -2572261015398813691, i64 1, i64 -1, i64 1, i64 -2572261015398813691], [5 x i64] [i64 1709817169732190408, i64 1, i64 -10, i64 -4, i64 1], [5 x i64] [i64 -2572261015398813691, i64 -10, i64 -10, i64 -2572261015398813691, i64 -4], [5 x i64] [i64 1, i64 -2572261015398813691, i64 -1, i64 1, i64 1], [5 x i64] [i64 1709817169732190408, i64 -2572261015398813691, i64 1709817169732190408, i64 -4, i64 -2572261015398813691]]], align 16
@.str.6 = private unnamed_addr constant [14 x i8] c"g_70[i][j][k]\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_75 = internal global i32 784500612, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_76 = internal global i32 -441742347, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"g_76\00", align 1
@g_81 = internal global i8 4, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"g_81\00", align 1
@g_99 = internal global [4 x i8] c"\08\08\08\08", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"g_99[i]\00", align 1
@g_132 = internal global i64 7868423577049689327, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"g_132\00", align 1
@g_144 = internal global i64 -8586432959767023258, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"g_144\00", align 1
@g_149 = internal global i16 5685, align 2
@.str.14 = private unnamed_addr constant [6 x i8] c"g_149\00", align 1
@g_152 = internal global i16 -27291, align 2
@.str.15 = private unnamed_addr constant [6 x i8] c"g_152\00", align 1
@g_156 = internal global i32 -2, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"g_156\00", align 1
@g_205 = internal global i8 0, align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"g_205\00", align 1
@g_317 = internal global i16 1, align 2
@.str.18 = private unnamed_addr constant [6 x i8] c"g_317\00", align 1
@g_345 = internal global i32 -1740420611, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_345\00", align 1
@g_365 = internal global i16 27413, align 2
@.str.20 = private unnamed_addr constant [6 x i8] c"g_365\00", align 1
@g_379 = internal global [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"g_379[i]\00", align 1
@g_382 = internal global i64 -832602336769112984, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"g_382\00", align 1
@g_564 = internal global [5 x [10 x [5 x i64]]] [[10 x [5 x i64]] [[5 x i64] [i64 -2623666774524513994, i64 7523531031413080197, i64 7091142318780105480, i64 -1920144751013446329, i64 -6542158994948152848], [5 x i64] [i64 2, i64 -1726433359563023107, i64 -1975413228215826953, i64 5703119576117361384, i64 -6247244339632618871], [5 x i64] [i64 -4, i64 4, i64 0, i64 -1920144751013446329, i64 -6825750053209732766], [5 x i64] [i64 8694632052445592611, i64 -6825750053209732766, i64 7, i64 3135785477836294158, i64 -7], [5 x i64] [i64 -6247244339632618871, i64 8694632052445592611, i64 6, i64 1, i64 7523531031413080197], [5 x i64] [i64 -3366976315828270203, i64 -8561986645713319828, i64 -7, i64 7628133288758069216, i64 -1], [5 x i64] [i64 -2, i64 7091142318780105480, i64 2, i64 4, i64 -1], [5 x i64] [i64 1, i64 -8337640619620286208, i64 2127526672457536774, i64 -7, i64 7523531031413080197], [5 x i64] [i64 -5605902176136467389, i64 -7, i64 -1726433359563023107, i64 -1726433359563023107, i64 -7], [5 x i64] [i64 -8337640619620286208, i64 -8142602807461263709, i64 -2, i64 1, i64 -6825750053209732766]], [10 x [5 x i64]] [[5 x i64] [i64 -1726433359563023107, i64 -5605902176136467389, i64 -8337640619620286208, i64 -2777021041512539054, i64 -6247244339632618871], [5 x i64] [i64 -1920144751013446329, i64 5703119576117361384, i64 -8540032931059117305, i64 7, i64 -6542158994948152848], [5 x i64] [i64 -1726433359563023107, i64 -3328006155143488144, i64 7628133288758069216, i64 2127526672457536774, i64 4], [5 x i64] [i64 -8337640619620286208, i64 -8540032931059117305, i64 -1920144751013446329, i64 -6247244339632618871, i64 -3328006155143488144], [5 x i64] [i64 -5605902176136467389, i64 3133542767853648598, i64 -4, i64 -2623666774524513994, i64 -7064826225977919753], [5 x i64] [i64 1, i64 2127526672457536774, i64 0, i64 -7064826225977919753, i64 -2], [5 x i64] [i64 -2, i64 2127526672457536774, i64 9, i64 -3366976315828270203, i64 -4], [5 x i64] [i64 -3366976315828270203, i64 3133542767853648598, i64 -7064826225977919753, i64 4, i64 4], [5 x i64] [i64 -6247244339632618871, i64 -8540032931059117305, i64 -6247244339632618871, i64 2, i64 -2365574487346440689], [5 x i64] [i64 8694632052445592611, i64 -3328006155143488144, i64 5703119576117361384, i64 -6825750053209732766, i64 0]], [10 x [5 x i64]] [[5 x i64] [i64 -4, i64 5703119576117361384, i64 -4, i64 7523531031413080197, i64 -8337640619620286208], [5 x i64] [i64 2, i64 -5605902176136467389, i64 5703119576117361384, i64 0, i64 -4], [5 x i64] [i64 -2623666774524513994, i64 -8142602807461263709, i64 -6247244339632618871, i64 8694632052445592611, i64 -3328006155143488144], [5 x i64] [i64 7091142318780105480, i64 -7064826225977919753, i64 2127526672457536774, i64 -8540032931059117305, i64 -2], [5 x i64] [i64 -1920144751013446329, i64 0, i64 -2777021041512539054, i64 -1975413228215826953, i64 9], [5 x i64] [i64 -2623666774524513994, i64 -6825750053209732766, i64 -8561986645713319828, i64 -1975413228215826953, i64 7], [5 x i64] [i64 -5605902176136467389, i64 9, i64 2, i64 -8540032931059117305, i64 -4], [5 x i64] [i64 0, i64 -3366976315828270203, i64 6, i64 -3366976315828270203, i64 0], [5 x i64] [i64 2127526672457536774, i64 0, i64 -4, i64 -8561986645713319828, i64 -6328486595756867374], [5 x i64] [i64 9, i64 2272955070515313010, i64 -8337640619620286208, i64 3135785477836294158, i64 -3366976315828270203]], [10 x [5 x i64]] [[5 x i64] [i64 -8337640619620286208, i64 4, i64 0, i64 0, i64 -6328486595756867374], [5 x i64] [i64 4, i64 3135785477836294158, i64 -2365574487346440689, i64 -2, i64 0], [5 x i64] [i64 -6328486595756867374, i64 -7, i64 4, i64 2272955070515313010, i64 -4], [5 x i64] [i64 -2777021041512539054, i64 7091142318780105480, i64 -4, i64 1, i64 7], [5 x i64] [i64 7523531031413080197, i64 8351088863822844125, i64 -2, i64 2127526672457536774, i64 9], [5 x i64] [i64 7523531031413080197, i64 -6247244339632618871, i64 -7064826225977919753, i64 5703119576117361384, i64 -2], [5 x i64] [i64 -2777021041512539054, i64 -8561986645713319828, i64 -3328006155143488144, i64 -8142602807461263709, i64 -3328006155143488144], [5 x i64] [i64 -6328486595756867374, i64 -6328486595756867374, i64 4, i64 -4, i64 2], [5 x i64] [i64 4, i64 -4, i64 -6542158994948152848, i64 4, i64 0], [5 x i64] [i64 -8337640619620286208, i64 -2777021041512539054, i64 -6247244339632618871, i64 7, i64 -8561986645713319828]], [10 x [5 x i64]] [[5 x i64] [i64 9, i64 -4, i64 -6825750053209732766, i64 -7, i64 1], [5 x i64] [i64 2127526672457536774, i64 -6328486595756867374, i64 -7, i64 4, i64 2272955070515313010], [5 x i64] [i64 0, i64 -8561986645713319828, i64 7523531031413080197, i64 -7064826225977919753, i64 8694632052445592611], [5 x i64] [i64 -5605902176136467389, i64 -6247244339632618871, i64 -1, i64 4, i64 -2365574487346440689], [5 x i64] [i64 -2623666774524513994, i64 8351088863822844125, i64 -1, i64 -4, i64 2127526672457536774], [5 x i64] [i64 -1920144751013446329, i64 7091142318780105480, i64 7523531031413080197, i64 -2623666774524513994, i64 1], [5 x i64] [i64 7091142318780105480, i64 -7, i64 -7, i64 7091142318780105480, i64 4], [5 x i64] [i64 5703119576117361384, i64 3135785477836294158, i64 -6825750053209732766, i64 6, i64 7523531031413080197], [5 x i64] [i64 -2, i64 4, i64 -6247244339632618871, i64 0, i64 -8142602807461263709], [5 x i64] [i64 2, i64 2272955070515313010, i64 -6542158994948152848, i64 6, i64 0]]], align 16
@.str.23 = private unnamed_addr constant [15 x i8] c"g_564[i][j][k]\00", align 1
@g_660 = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"g_660\00", align 1
@g_807 = internal global i32 1162240437, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_807\00", align 1
@g_891 = internal global i16 1, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_891\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_949\00", align 1
@g_1078 = internal global i16 26947, align 2
@.str.28 = private unnamed_addr constant [7 x i8] c"g_1078\00", align 1
@g_1089 = internal global [6 x [2 x [6 x i32]]] [[2 x [6 x i32]] [[6 x i32] [i32 -1408822084, i32 -1114586072, i32 254896866, i32 254896866, i32 -1114586072, i32 -1408822084], [6 x i32] [i32 254896866, i32 -1114586072, i32 -1408822084, i32 -2, i32 -1497656199, i32 125746236]], [2 x [6 x i32]] [[6 x i32] [i32 125746236, i32 7, i32 -1, i32 7, i32 125746236, i32 -1114586072], [6 x i32] [i32 125746236, i32 254896866, i32 7, i32 -2, i32 -1, i32 -1]], [2 x [6 x i32]] [[6 x i32] [i32 254896866, i32 -1497656199, i32 -1497656199, i32 254896866, i32 -1, i32 -1], [6 x i32] [i32 -1408822084, i32 -1, i32 7, i32 -1114586072, i32 -2, i32 -1114586072]], [2 x [6 x i32]] [[6 x i32] [i32 -1, i32 1174305198, i32 -1, i32 1672591929, i32 -2, i32 125746236], [6 x i32] [i32 7, i32 -1, i32 -1408822084, i32 -1114586072, i32 -1114586072, i32 -1]], [2 x [6 x i32]] [[6 x i32] [i32 1672591929, i32 1672591929, i32 -1497656199, i32 -1114586072, i32 125746236, i32 7], [6 x i32] [i32 1174305198, i32 -1497656199, i32 -1408822084, i32 7, i32 -1408822084, i32 -1497656199]], [2 x [6 x i32]] [[6 x i32] [i32 -1114586072, i32 1174305198, i32 -1408822084, i32 254896866, i32 1672591929, i32 7], [6 x i32] [i32 -1, i32 254896866, i32 -1497656199, i32 -1497656199, i32 254896866, i32 -1]]], align 16
@.str.29 = private unnamed_addr constant [16 x i8] c"g_1089[i][j][k]\00", align 1
@g_1090 = internal global i32 -6, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1090\00", align 1
@g_1091 = internal global i32 790255482, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1091\00", align 1
@g_1092 = internal global i32 -1, align 4
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1092\00", align 1
@g_1093 = internal global i32 -6, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1093\00", align 1
@g_1094 = internal global i32 -2, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1094\00", align 1
@g_1095 = internal global [1 x [6 x i32]] zeroinitializer, align 16
@.str.35 = private unnamed_addr constant [13 x i8] c"g_1095[i][j]\00", align 1
@g_1096 = internal global i32 2060705311, align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"g_1096\00", align 1
@g_1097 = internal global i32 3, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"g_1097\00", align 1
@g_1098 = internal global i32 -1277759320, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_1098\00", align 1
@g_1323 = internal global [1 x [6 x i64]] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [13 x i8] c"g_1323[i][j]\00", align 1
@g_1370 = internal global i32 -361532429, align 4
@.str.40 = private unnamed_addr constant [7 x i8] c"g_1370\00", align 1
@g_1404 = internal global [10 x i32] [i32 107616465, i32 107616465, i32 11254104, i32 107616465, i32 107616465, i32 11254104, i32 107616465, i32 107616465, i32 11254104, i32 107616465], align 16
@.str.41 = private unnamed_addr constant [10 x i8] c"g_1404[i]\00", align 1
@g_1469 = internal global i32 -1651683302, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1469\00", align 1
@g_1508 = internal global i32 -5, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1508\00", align 1
@g_1553 = internal global [6 x [9 x [3 x i16]]] [[9 x [3 x i16]] [[3 x i16] [i16 -15492, i16 1, i16 -10095], [3 x i16] [i16 -4, i16 0, i16 -4193], [3 x i16] [i16 1, i16 1, i16 31289], [3 x i16] [i16 -4, i16 1, i16 -2540], [3 x i16] [i16 -15492, i16 -3, i16 -12662], [3 x i16] [i16 -29697, i16 0, i16 -26809], [3 x i16] [i16 13569, i16 13569, i16 1], [3 x i16] [i16 -11585, i16 28820, i16 -4], [3 x i16] [i16 31289, i16 -10095, i16 23643]], [9 x [3 x i16]] [[3 x i16] [i16 -26809, i16 -4193, i16 -1], [3 x i16] [i16 -3, i16 31289, i16 23643], [3 x i16] [i16 324, i16 -2540, i16 -4], [3 x i16] [i16 6704, i16 -12662, i16 1], [3 x i16] [i16 19281, i16 -26809, i16 -26809], [3 x i16] [i16 2, i16 1, i16 -12662], [3 x i16] [i16 -1, i16 -4, i16 -2540], [3 x i16] [i16 -12662, i16 23643, i16 31289], [3 x i16] [i16 28820, i16 -1, i16 -4193]], [9 x [3 x i16]] [[3 x i16] [i16 -1, i16 23643, i16 -10095], [3 x i16] [i16 0, i16 -4, i16 28820], [3 x i16] [i16 1, i16 1, i16 13569], [3 x i16] [i16 0, i16 -26809, i16 0], [3 x i16] [i16 28477, i16 -12662, i16 -3], [3 x i16] [i16 21706, i16 -2540, i16 1], [3 x i16] [i16 0, i16 31289, i16 1], [3 x i16] [i16 -2540, i16 -4193, i16 0], [3 x i16] [i16 0, i16 -10095, i16 1]], [9 x [3 x i16]] [[3 x i16] [i16 21706, i16 28820, i16 324], [3 x i16] [i16 28477, i16 13569, i16 -1], [3 x i16] [i16 0, i16 0, i16 3], [3 x i16] [i16 1, i16 -3, i16 11698], [3 x i16] [i16 0, i16 1, i16 -1], [3 x i16] [i16 -1, i16 1, i16 8], [3 x i16] [i16 28820, i16 0, i16 -1], [3 x i16] [i16 -12662, i16 1, i16 11698], [3 x i16] [i16 -1, i16 324, i16 3]], [9 x [3 x i16]] [[3 x i16] [i16 2, i16 -1, i16 24858], [3 x i16] [i16 24182, i16 -1, i16 -26809], [3 x i16] [i16 -10095, i16 1, i16 11698], [3 x i16] [i16 -26809, i16 -11585, i16 21706], [3 x i16] [i16 28477, i16 0, i16 1], [3 x i16] [i16 0, i16 -11585, i16 0], [3 x i16] [i16 -15492, i16 1, i16 28477], [3 x i16] [i16 0, i16 -1, i16 4], [3 x i16] [i16 5, i16 24858, i16 5]], [9 x [3 x i16]] [[3 x i16] [i16 -2540, i16 -26809, i16 -29697], [3 x i16] [i16 -3, i16 11698, i16 31289], [3 x i16] [i16 -4, i16 21706, i16 3], [3 x i16] [i16 11698, i16 1, i16 -15492], [3 x i16] [i16 -4, i16 0, i16 -4], [3 x i16] [i16 -3, i16 28477, i16 -1], [3 x i16] [i16 -2540, i16 4, i16 0], [3 x i16] [i16 5, i16 5, i16 8], [3 x i16] [i16 0, i16 -29697, i16 -4193]]], align 16
@.str.44 = private unnamed_addr constant [16 x i8] c"g_1553[i][j][k]\00", align 1
@g_1576 = internal global i32 -790170137, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1576\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1600\00", align 1
@g_1602 = internal global i16 -8, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1602\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@func_1.l_1158 = private unnamed_addr constant [3 x [7 x [3 x i64*]]] [[7 x [3 x i64*]] [[3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer], [7 x [3 x i64*]] [[3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132]], [7 x [3 x i64*]] [[3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132], [3 x i64*] zeroinitializer]], align 16
@g_160 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 20) to i32*), align 8
@g_613 = internal global i16**** @g_391, align 8
@g_1295 = internal global i16**** @g_333, align 8
@g_1356 = internal global [10 x [10 x i64*]] [[10 x i64*] [i64* @g_144, i64* @g_144, i64* @g_132, i64* null, i64* @g_144, i64* @g_132, i64* @g_132, i64* @g_144, i64* null, i64* @g_132], [10 x i64*] [i64* @g_144, i64* @g_144, i64* @g_132, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_132, i64* @g_144, i64* null, i64* null], [10 x i64*] [i64* @g_144, i64* @g_132, i64* @g_144, i64* null, i64* null, i64* @g_144, i64* @g_132, i64* @g_144, i64* @g_144, i64* @g_144], [10 x i64*] [i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_132, i64* null, i64* @g_144, i64* @g_132, i64* @g_132, i64* @g_144, i64* null], [10 x i64*] [i64* null, i64* @g_144, i64* @g_144, i64* null, i64* @g_144, i64* @g_132, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_132], [10 x i64*] [i64* null, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144, i64* null], [10 x i64*] [i64* @g_144, i64* @g_132, i64* @g_132, i64* null, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_144], [10 x i64*] [i64* @g_144, i64* @g_144, i64* @g_132, i64* @g_132, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_132, i64* @g_144, i64* null], [10 x i64*] [i64* @g_144, i64* @g_144, i64* @g_132, i64* null, i64* @g_144, i64* @g_132, i64* @g_132, i64* @g_144, i64* null, i64* @g_132], [10 x i64*] [i64* @g_144, i64* @g_144, i64* @g_132, i64* @g_144, i64* @g_144, i64* @g_144, i64* @g_132, i64* @g_144, i64* null, i64* null]], align 16
@func_1.l_1147 = private unnamed_addr constant [8 x i32] [i32 500949969, i32 500949969, i32 500949969, i32 500949969, i32 500949969, i32 500949969, i32 500949969, i32 500949969], align 16
@g_788 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), align 8
@func_1.l_1169 = private unnamed_addr constant [4 x [10 x [2 x i64*]]] [[10 x [2 x i64*]] [[2 x i64*] [i64* @g_144, i64* @g_132], [2 x i64*] [i64* null, i64* @g_132], [2 x i64*] [i64* null, i64* @g_132], [2 x i64*] [i64* @g_144, i64* @g_132], [2 x i64*] [i64* @g_144, i64* @g_144], [2 x i64*] [i64* null, i64* @g_144], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132]], [10 x [2 x i64*]] [[2 x i64*] [i64* @g_132, i64* @g_144], [2 x i64*] [i64* null, i64* @g_144], [2 x i64*] [i64* @g_144, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_144], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_144], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_144, i64* @g_144], [2 x i64*] [i64* null, i64* @g_144], [2 x i64*] [i64* @g_132, i64* @g_132]], [10 x [2 x i64*]] [[2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_144], [2 x i64*] [i64* null, i64* @g_144], [2 x i64*] [i64* @g_144, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_144], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_144], [2 x i64*] [i64* @g_132, i64* @g_132]], [10 x [2 x i64*]] [[2 x i64*] [i64* @g_144, i64* @g_144], [2 x i64*] [i64* null, i64* @g_144], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_144], [2 x i64*] [i64* null, i64* @g_144], [2 x i64*] [i64* @g_144, i64* @g_132], [2 x i64*] [i64* @g_132, i64* @g_144]]], align 16
@g_390 = internal global i16**** @g_391, align 8
@g_381 = internal global i64* @g_382, align 8
@g_743 = internal global i16**** @g_744, align 8
@g_333 = internal global i16*** @g_334, align 8
@g_1160 = internal global i32** @g_788, align 8
@g_900 = internal global i32** @g_788, align 8
@g_148 = internal global i16* @g_149, align 8
@g_159 = internal global i32** @g_160, align 8
@func_1.l_1239 = private unnamed_addr constant [7 x [5 x i32*]] [[5 x i32*] [i32* null, i32* @g_156, i32* null, i32* null, i32* null], [5 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* @g_156, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*)], [5 x i32*] [i32* null, i32* @g_156, i32* null, i32* null, i32* null], [5 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* @g_156, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*)], [5 x i32*] [i32* null, i32* @g_156, i32* null, i32* null, i32* null], [5 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* @g_156, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 16) to i32*)], [5 x i32*] [i32* null, i32* @g_156, i32* null, i32* null, i32* null]], align 16
@func_1.l_1240 = private unnamed_addr constant [3 x [7 x [9 x i16*]]] [[7 x [9 x i16*]] [[9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* null, i16* @g_152, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* null], [9 x i16*] [i16* null, i16* @g_152, i16* null, i16* @g_152, i16* null, i16* @g_152, i16* null, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* @g_152, i16* null, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* null, i16* @g_152, i16* @g_152, i16* null, i16* @g_152, i16* @g_152, i16* null, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* null, i16* @g_152, i16* @g_152, i16* @g_152]], [7 x [9 x i16*]] [[9 x i16*] [i16* null, i16* @g_152, i16* @g_152, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* @g_152, i16* null], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* null, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152]], [7 x [9 x i16*]] [[9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* null, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* null], [9 x i16*] [i16* null, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* null, i16* @g_152, i16* null, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* null, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152], [9 x i16*] [i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152, i16* null, i16* @g_152, i16* @g_152, i16* @g_152, i16* @g_152]]], align 16
@func_1.l_1342 = private unnamed_addr constant [7 x i64*] [i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132, i64* @g_132], align 16
@func_1.l_1564 = private unnamed_addr constant [6 x [3 x i16*****]] [[3 x i16*****] [i16***** @g_613, i16***** @g_613, i16***** @g_613], [3 x i16*****] [i16***** @g_613, i16***** @g_613, i16***** @g_613], [3 x i16*****] [i16***** @g_613, i16***** @g_613, i16***** @g_613], [3 x i16*****] [i16***** @g_613, i16***** @g_613, i16***** @g_613], [3 x i16*****] [i16***** @g_613, i16***** @g_613, i16***** @g_613], [3 x i16*****] [i16***** @g_613, i16***** @g_613, i16***** @g_613]], align 16
@g_391 = internal global i16*** @g_209, align 8
@g_209 = internal global i16** null, align 8
@func_10.l_38 = private unnamed_addr constant [10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x [1 x i32]]* @g_17 to i8*), i64 8) to i32*)], align 16
@func_10.l_960 = private unnamed_addr constant [7 x [4 x [3 x i32]]] [[4 x [3 x i32]] [[3 x i32] [i32 1, i32 -1, i32 2], [3 x i32] [i32 -1600177037, i32 -1, i32 2], [3 x i32] [i32 2, i32 -1173037071, i32 1244963364], [3 x i32] [i32 -1600177037, i32 -1173037071, i32 -1600177037]], [4 x [3 x i32]] [[3 x i32] [i32 1, i32 -1, i32 1244963364], [3 x i32] [i32 1, i32 -1, i32 2], [3 x i32] [i32 -1600177037, i32 -1, i32 2], [3 x i32] [i32 2, i32 -1173037071, i32 1244963364]], [4 x [3 x i32]] [[3 x i32] [i32 -1600177037, i32 -1173037071, i32 -1600177037], [3 x i32] [i32 1, i32 -1, i32 1244963364], [3 x i32] [i32 1, i32 -1, i32 2], [3 x i32] [i32 -1600177037, i32 -1, i32 2]], [4 x [3 x i32]] [[3 x i32] [i32 2, i32 -1173037071, i32 1244963364], [3 x i32] [i32 -1600177037, i32 -1173037071, i32 -1600177037], [3 x i32] [i32 1, i32 -1, i32 1244963364], [3 x i32] [i32 1, i32 -1, i32 2]], [4 x [3 x i32]] [[3 x i32] [i32 -1600177037, i32 -1, i32 2], [3 x i32] [i32 2, i32 -1173037071, i32 1244963364], [3 x i32] [i32 -1600177037, i32 -1173037071, i32 -1600177037], [3 x i32] [i32 1, i32 -1, i32 1244963364]], [4 x [3 x i32]] [[3 x i32] [i32 1, i32 -1, i32 2], [3 x i32] [i32 -1600177037, i32 -1, i32 2], [3 x i32] [i32 2, i32 -1173037071, i32 1244963364], [3 x i32] [i32 -1600177037, i32 -1173037071, i32 -1600177037]], [4 x [3 x i32]] [[3 x i32] [i32 1, i32 -1, i32 1244963364], [3 x i32] [i32 1, i32 -1, i32 2], [3 x i32] [i32 -1600177037, i32 -1, i32 2], [3 x i32] [i32 2, i32 -1173037071, i32 1244963364]]], align 16
@func_10.l_1048 = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@g_744 = internal global i16*** @g_334, align 8
@g_334 = internal global i16** @g_285, align 8
@g_285 = internal global i16* null, align 8
@.str.48 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %91

; <label>:91                                      ; preds = %107, %89
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %110

; <label>:94                                      ; preds = %91
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* @g_6, i32 0, i64 %96
  %98 = load i8, i8* %97, align 1, !tbaa !9
  %99 = sext i8 %98 to i64
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

; <label>:111                                     ; preds = %139, %110
  %112 = load i32, i32* %i, align 4, !tbaa !1
  %113 = icmp slt i32 %112, 6
  br i1 %113, label %114, label %142

; <label>:114                                     ; preds = %111
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:115                                     ; preds = %135, %114
  %116 = load i32, i32* %j, align 4, !tbaa !1
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %138

; <label>:118                                     ; preds = %115
  %119 = load i32, i32* %j, align 4, !tbaa !1
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* @g_17, i32 0, i64 %122
  %124 = getelementptr inbounds [1 x i32], [1 x i32]* %123, i32 0, i64 %120
  %125 = load i32, i32* %124, align 4, !tbaa !1
  %126 = sext i32 %125 to i64
  %127 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %127)
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

; <label>:130                                     ; preds = %118
  %131 = load i32, i32* %i, align 4, !tbaa !1
  %132 = load i32, i32* %j, align 4, !tbaa !1
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %131, i32 %132)
  br label %134

; <label>:134                                     ; preds = %130, %118
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %j, align 4, !tbaa !1
  br label %115

; <label>:138                                     ; preds = %115
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %i, align 4, !tbaa !1
  br label %111

; <label>:142                                     ; preds = %111
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %143

; <label>:143                                     ; preds = %171, %142
  %144 = load i32, i32* %i, align 4, !tbaa !1
  %145 = icmp slt i32 %144, 7
  br i1 %145, label %146, label %174

; <label>:146                                     ; preds = %143
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %147

; <label>:147                                     ; preds = %167, %146
  %148 = load i32, i32* %j, align 4, !tbaa !1
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %170

; <label>:150                                     ; preds = %147
  %151 = load i32, i32* %j, align 4, !tbaa !1
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [7 x [1 x i16]], [7 x [1 x i16]]* @g_67, i32 0, i64 %154
  %156 = getelementptr inbounds [1 x i16], [1 x i16]* %155, i32 0, i64 %152
  %157 = load i16, i16* %156, align 2, !tbaa !10
  %158 = zext i16 %157 to i64
  %159 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %158, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 %159)
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

; <label>:162                                     ; preds = %150
  %163 = load i32, i32* %i, align 4, !tbaa !1
  %164 = load i32, i32* %j, align 4, !tbaa !1
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %163, i32 %164)
  br label %166

; <label>:166                                     ; preds = %162, %150
  br label %167

; <label>:167                                     ; preds = %166
  %168 = load i32, i32* %j, align 4, !tbaa !1
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %j, align 4, !tbaa !1
  br label %147

; <label>:170                                     ; preds = %147
  br label %171

; <label>:171                                     ; preds = %170
  %172 = load i32, i32* %i, align 4, !tbaa !1
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %i, align 4, !tbaa !1
  br label %143

; <label>:174                                     ; preds = %143
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:175                                     ; preds = %214, %174
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = icmp slt i32 %176, 6
  br i1 %177, label %178, label %217

; <label>:178                                     ; preds = %175
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %179

; <label>:179                                     ; preds = %210, %178
  %180 = load i32, i32* %j, align 4, !tbaa !1
  %181 = icmp slt i32 %180, 5
  br i1 %181, label %182, label %213

; <label>:182                                     ; preds = %179
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %183

; <label>:183                                     ; preds = %206, %182
  %184 = load i32, i32* %k, align 4, !tbaa !1
  %185 = icmp slt i32 %184, 5
  br i1 %185, label %186, label %209

; <label>:186                                     ; preds = %183
  %187 = load i32, i32* %k, align 4, !tbaa !1
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* %j, align 4, !tbaa !1
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %i, align 4, !tbaa !1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 %192
  %194 = getelementptr inbounds [5 x [5 x i64]], [5 x [5 x i64]]* %193, i32 0, i64 %190
  %195 = getelementptr inbounds [5 x i64], [5 x i64]* %194, i32 0, i64 %188
  %196 = load i64, i64* %195, align 8, !tbaa !7
  %197 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %197)
  %198 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

; <label>:200                                     ; preds = %186
  %201 = load i32, i32* %i, align 4, !tbaa !1
  %202 = load i32, i32* %j, align 4, !tbaa !1
  %203 = load i32, i32* %k, align 4, !tbaa !1
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %201, i32 %202, i32 %203)
  br label %205

; <label>:205                                     ; preds = %200, %186
  br label %206

; <label>:206                                     ; preds = %205
  %207 = load i32, i32* %k, align 4, !tbaa !1
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %k, align 4, !tbaa !1
  br label %183

; <label>:209                                     ; preds = %183
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %j, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %j, align 4, !tbaa !1
  br label %179

; <label>:213                                     ; preds = %179
  br label %214

; <label>:214                                     ; preds = %213
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %i, align 4, !tbaa !1
  br label %175

; <label>:217                                     ; preds = %175
  %218 = load volatile i32, i32* @g_75, align 4, !tbaa !1
  %219 = sext i32 %218 to i64
  %220 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %220)
  %221 = load i32, i32* @g_76, align 4, !tbaa !1
  %222 = sext i32 %221 to i64
  %223 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %222, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %223)
  %224 = load i8, i8* @g_81, align 1, !tbaa !9
  %225 = sext i8 %224 to i64
  %226 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %226)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %227

; <label>:227                                     ; preds = %243, %217
  %228 = load i32, i32* %i, align 4, !tbaa !1
  %229 = icmp slt i32 %228, 4
  br i1 %229, label %230, label %246

; <label>:230                                     ; preds = %227
  %231 = load i32, i32* %i, align 4, !tbaa !1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x i8], [4 x i8]* @g_99, i32 0, i64 %232
  %234 = load i8, i8* %233, align 1, !tbaa !9
  %235 = zext i8 %234 to i64
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %236)
  %237 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

; <label>:239                                     ; preds = %230
  %240 = load i32, i32* %i, align 4, !tbaa !1
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %240)
  br label %242

; <label>:242                                     ; preds = %239, %230
  br label %243

; <label>:243                                     ; preds = %242
  %244 = load i32, i32* %i, align 4, !tbaa !1
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %i, align 4, !tbaa !1
  br label %227

; <label>:246                                     ; preds = %227
  %247 = load i64, i64* @g_132, align 8, !tbaa !7
  %248 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %248)
  %249 = load i64, i64* @g_144, align 8, !tbaa !7
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %250)
  %251 = load i16, i16* @g_149, align 2, !tbaa !10
  %252 = zext i16 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 %253)
  %254 = load i16, i16* @g_152, align 2, !tbaa !10
  %255 = sext i16 %254 to i64
  %256 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %256)
  %257 = load i32, i32* @g_156, align 4, !tbaa !1
  %258 = sext i32 %257 to i64
  %259 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %259)
  %260 = load i8, i8* @g_205, align 1, !tbaa !9
  %261 = zext i8 %260 to i64
  %262 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 %262)
  %263 = load volatile i16, i16* @g_317, align 2, !tbaa !10
  %264 = sext i16 %263 to i64
  %265 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %265)
  %266 = load i32, i32* @g_345, align 4, !tbaa !1
  %267 = sext i32 %266 to i64
  %268 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %267, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %268)
  %269 = load i16, i16* @g_365, align 2, !tbaa !10
  %270 = zext i16 %269 to i64
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %270, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %271)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %272

; <label>:272                                     ; preds = %288, %246
  %273 = load i32, i32* %i, align 4, !tbaa !1
  %274 = icmp slt i32 %273, 3
  br i1 %274, label %275, label %291

; <label>:275                                     ; preds = %272
  %276 = load i32, i32* %i, align 4, !tbaa !1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* @g_379, i32 0, i64 %277
  %279 = load i32, i32* %278, align 4, !tbaa !1
  %280 = zext i32 %279 to i64
  %281 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %281)
  %282 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

; <label>:284                                     ; preds = %275
  %285 = load i32, i32* %i, align 4, !tbaa !1
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %285)
  br label %287

; <label>:287                                     ; preds = %284, %275
  br label %288

; <label>:288                                     ; preds = %287
  %289 = load i32, i32* %i, align 4, !tbaa !1
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %i, align 4, !tbaa !1
  br label %272

; <label>:291                                     ; preds = %272
  %292 = load volatile i64, i64* @g_382, align 8, !tbaa !7
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %293)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:294                                     ; preds = %333, %291
  %295 = load i32, i32* %i, align 4, !tbaa !1
  %296 = icmp slt i32 %295, 5
  br i1 %296, label %297, label %336

; <label>:297                                     ; preds = %294
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %298

; <label>:298                                     ; preds = %329, %297
  %299 = load i32, i32* %j, align 4, !tbaa !1
  %300 = icmp slt i32 %299, 10
  br i1 %300, label %301, label %332

; <label>:301                                     ; preds = %298
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %302

; <label>:302                                     ; preds = %325, %301
  %303 = load i32, i32* %k, align 4, !tbaa !1
  %304 = icmp slt i32 %303, 5
  br i1 %304, label %305, label %328

; <label>:305                                     ; preds = %302
  %306 = load i32, i32* %k, align 4, !tbaa !1
  %307 = sext i32 %306 to i64
  %308 = load i32, i32* %j, align 4, !tbaa !1
  %309 = sext i32 %308 to i64
  %310 = load i32, i32* %i, align 4, !tbaa !1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [5 x [10 x [5 x i64]]], [5 x [10 x [5 x i64]]]* @g_564, i32 0, i64 %311
  %313 = getelementptr inbounds [10 x [5 x i64]], [10 x [5 x i64]]* %312, i32 0, i64 %309
  %314 = getelementptr inbounds [5 x i64], [5 x i64]* %313, i32 0, i64 %307
  %315 = load volatile i64, i64* %314, align 8, !tbaa !7
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %315, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i32 %316)
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

; <label>:319                                     ; preds = %305
  %320 = load i32, i32* %i, align 4, !tbaa !1
  %321 = load i32, i32* %j, align 4, !tbaa !1
  %322 = load i32, i32* %k, align 4, !tbaa !1
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %320, i32 %321, i32 %322)
  br label %324

; <label>:324                                     ; preds = %319, %305
  br label %325

; <label>:325                                     ; preds = %324
  %326 = load i32, i32* %k, align 4, !tbaa !1
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %k, align 4, !tbaa !1
  br label %302

; <label>:328                                     ; preds = %302
  br label %329

; <label>:329                                     ; preds = %328
  %330 = load i32, i32* %j, align 4, !tbaa !1
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %j, align 4, !tbaa !1
  br label %298

; <label>:332                                     ; preds = %298
  br label %333

; <label>:333                                     ; preds = %332
  %334 = load i32, i32* %i, align 4, !tbaa !1
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %i, align 4, !tbaa !1
  br label %294

; <label>:336                                     ; preds = %294
  %337 = load volatile i32, i32* @g_660, align 4, !tbaa !1
  %338 = zext i32 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %339)
  %340 = load volatile i32, i32* @g_807, align 4, !tbaa !1
  %341 = zext i32 %340 to i64
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %342)
  %343 = load i16, i16* @g_891, align 2, !tbaa !10
  %344 = zext i16 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %346)
  %347 = load i16, i16* @g_1078, align 2, !tbaa !10
  %348 = zext i16 %347 to i64
  %349 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %348, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 %349)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %350

; <label>:350                                     ; preds = %390, %336
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = icmp slt i32 %351, 6
  br i1 %352, label %353, label %393

; <label>:353                                     ; preds = %350
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %354

; <label>:354                                     ; preds = %386, %353
  %355 = load i32, i32* %j, align 4, !tbaa !1
  %356 = icmp slt i32 %355, 2
  br i1 %356, label %357, label %389

; <label>:357                                     ; preds = %354
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %358

; <label>:358                                     ; preds = %382, %357
  %359 = load i32, i32* %k, align 4, !tbaa !1
  %360 = icmp slt i32 %359, 6
  br i1 %360, label %361, label %385

; <label>:361                                     ; preds = %358
  %362 = load i32, i32* %k, align 4, !tbaa !1
  %363 = sext i32 %362 to i64
  %364 = load i32, i32* %j, align 4, !tbaa !1
  %365 = sext i32 %364 to i64
  %366 = load i32, i32* %i, align 4, !tbaa !1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [6 x [2 x [6 x i32]]], [6 x [2 x [6 x i32]]]* @g_1089, i32 0, i64 %367
  %369 = getelementptr inbounds [2 x [6 x i32]], [2 x [6 x i32]]* %368, i32 0, i64 %365
  %370 = getelementptr inbounds [6 x i32], [6 x i32]* %369, i32 0, i64 %363
  %371 = load volatile i32, i32* %370, align 4, !tbaa !1
  %372 = sext i32 %371 to i64
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %373)
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %381

; <label>:376                                     ; preds = %361
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = load i32, i32* %j, align 4, !tbaa !1
  %379 = load i32, i32* %k, align 4, !tbaa !1
  %380 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %377, i32 %378, i32 %379)
  br label %381

; <label>:381                                     ; preds = %376, %361
  br label %382

; <label>:382                                     ; preds = %381
  %383 = load i32, i32* %k, align 4, !tbaa !1
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %k, align 4, !tbaa !1
  br label %358

; <label>:385                                     ; preds = %358
  br label %386

; <label>:386                                     ; preds = %385
  %387 = load i32, i32* %j, align 4, !tbaa !1
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %j, align 4, !tbaa !1
  br label %354

; <label>:389                                     ; preds = %354
  br label %390

; <label>:390                                     ; preds = %389
  %391 = load i32, i32* %i, align 4, !tbaa !1
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %i, align 4, !tbaa !1
  br label %350

; <label>:393                                     ; preds = %350
  %394 = load volatile i32, i32* @g_1090, align 4, !tbaa !1
  %395 = sext i32 %394 to i64
  %396 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %395, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %396)
  %397 = load volatile i32, i32* @g_1091, align 4, !tbaa !1
  %398 = sext i32 %397 to i64
  %399 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %398, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %399)
  %400 = load volatile i32, i32* @g_1092, align 4, !tbaa !1
  %401 = sext i32 %400 to i64
  %402 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %401, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %402)
  %403 = load volatile i32, i32* @g_1093, align 4, !tbaa !1
  %404 = sext i32 %403 to i64
  %405 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %405)
  %406 = load volatile i32, i32* @g_1094, align 4, !tbaa !1
  %407 = sext i32 %406 to i64
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %408)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %409

; <label>:409                                     ; preds = %437, %393
  %410 = load i32, i32* %i, align 4, !tbaa !1
  %411 = icmp slt i32 %410, 1
  br i1 %411, label %412, label %440

; <label>:412                                     ; preds = %409
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %413

; <label>:413                                     ; preds = %433, %412
  %414 = load i32, i32* %j, align 4, !tbaa !1
  %415 = icmp slt i32 %414, 6
  br i1 %415, label %416, label %436

; <label>:416                                     ; preds = %413
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = sext i32 %417 to i64
  %419 = load i32, i32* %i, align 4, !tbaa !1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [1 x [6 x i32]], [1 x [6 x i32]]* @g_1095, i32 0, i64 %420
  %422 = getelementptr inbounds [6 x i32], [6 x i32]* %421, i32 0, i64 %418
  %423 = load volatile i32, i32* %422, align 4, !tbaa !1
  %424 = sext i32 %423 to i64
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 %425)
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %432

; <label>:428                                     ; preds = %416
  %429 = load i32, i32* %i, align 4, !tbaa !1
  %430 = load i32, i32* %j, align 4, !tbaa !1
  %431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %429, i32 %430)
  br label %432

; <label>:432                                     ; preds = %428, %416
  br label %433

; <label>:433                                     ; preds = %432
  %434 = load i32, i32* %j, align 4, !tbaa !1
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %j, align 4, !tbaa !1
  br label %413

; <label>:436                                     ; preds = %413
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %i, align 4, !tbaa !1
  br label %409

; <label>:440                                     ; preds = %409
  %441 = load volatile i32, i32* @g_1096, align 4, !tbaa !1
  %442 = sext i32 %441 to i64
  %443 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %442, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %443)
  %444 = load volatile i32, i32* @g_1097, align 4, !tbaa !1
  %445 = sext i32 %444 to i64
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %446)
  %447 = load volatile i32, i32* @g_1098, align 4, !tbaa !1
  %448 = sext i32 %447 to i64
  %449 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %449)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %450

; <label>:450                                     ; preds = %477, %440
  %451 = load i32, i32* %i, align 4, !tbaa !1
  %452 = icmp slt i32 %451, 1
  br i1 %452, label %453, label %480

; <label>:453                                     ; preds = %450
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %454

; <label>:454                                     ; preds = %473, %453
  %455 = load i32, i32* %j, align 4, !tbaa !1
  %456 = icmp slt i32 %455, 6
  br i1 %456, label %457, label %476

; <label>:457                                     ; preds = %454
  %458 = load i32, i32* %j, align 4, !tbaa !1
  %459 = sext i32 %458 to i64
  %460 = load i32, i32* %i, align 4, !tbaa !1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [1 x [6 x i64]], [1 x [6 x i64]]* @g_1323, i32 0, i64 %461
  %463 = getelementptr inbounds [6 x i64], [6 x i64]* %462, i32 0, i64 %459
  %464 = load i64, i64* %463, align 8, !tbaa !7
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %464, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i32 %465)
  %466 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %472

; <label>:468                                     ; preds = %457
  %469 = load i32, i32* %i, align 4, !tbaa !1
  %470 = load i32, i32* %j, align 4, !tbaa !1
  %471 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 %469, i32 %470)
  br label %472

; <label>:472                                     ; preds = %468, %457
  br label %473

; <label>:473                                     ; preds = %472
  %474 = load i32, i32* %j, align 4, !tbaa !1
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %j, align 4, !tbaa !1
  br label %454

; <label>:476                                     ; preds = %454
  br label %477

; <label>:477                                     ; preds = %476
  %478 = load i32, i32* %i, align 4, !tbaa !1
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %i, align 4, !tbaa !1
  br label %450

; <label>:480                                     ; preds = %450
  %481 = load volatile i32, i32* @g_1370, align 4, !tbaa !1
  %482 = zext i32 %481 to i64
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %483)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:484                                     ; preds = %500, %480
  %485 = load i32, i32* %i, align 4, !tbaa !1
  %486 = icmp slt i32 %485, 10
  br i1 %486, label %487, label %503

; <label>:487                                     ; preds = %484
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [10 x i32], [10 x i32]* @g_1404, i32 0, i64 %489
  %491 = load i32, i32* %490, align 4, !tbaa !1
  %492 = zext i32 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %499

; <label>:496                                     ; preds = %487
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %497)
  br label %499

; <label>:499                                     ; preds = %496, %487
  br label %500

; <label>:500                                     ; preds = %499
  %501 = load i32, i32* %i, align 4, !tbaa !1
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %i, align 4, !tbaa !1
  br label %484

; <label>:503                                     ; preds = %484
  %504 = load volatile i32, i32* @g_1469, align 4, !tbaa !1
  %505 = zext i32 %504 to i64
  %506 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %505, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %506)
  %507 = load volatile i32, i32* @g_1508, align 4, !tbaa !1
  %508 = zext i32 %507 to i64
  %509 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %508, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %509)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %510

; <label>:510                                     ; preds = %550, %503
  %511 = load i32, i32* %i, align 4, !tbaa !1
  %512 = icmp slt i32 %511, 6
  br i1 %512, label %513, label %553

; <label>:513                                     ; preds = %510
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %514

; <label>:514                                     ; preds = %546, %513
  %515 = load i32, i32* %j, align 4, !tbaa !1
  %516 = icmp slt i32 %515, 9
  br i1 %516, label %517, label %549

; <label>:517                                     ; preds = %514
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %518

; <label>:518                                     ; preds = %542, %517
  %519 = load i32, i32* %k, align 4, !tbaa !1
  %520 = icmp slt i32 %519, 3
  br i1 %520, label %521, label %545

; <label>:521                                     ; preds = %518
  %522 = load i32, i32* %k, align 4, !tbaa !1
  %523 = sext i32 %522 to i64
  %524 = load i32, i32* %j, align 4, !tbaa !1
  %525 = sext i32 %524 to i64
  %526 = load i32, i32* %i, align 4, !tbaa !1
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [6 x [9 x [3 x i16]]], [6 x [9 x [3 x i16]]]* @g_1553, i32 0, i64 %527
  %529 = getelementptr inbounds [9 x [3 x i16]], [9 x [3 x i16]]* %528, i32 0, i64 %525
  %530 = getelementptr inbounds [3 x i16], [3 x i16]* %529, i32 0, i64 %523
  %531 = load volatile i16, i16* %530, align 2, !tbaa !10
  %532 = zext i16 %531 to i64
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %532, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0), i32 %533)
  %534 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %541

; <label>:536                                     ; preds = %521
  %537 = load i32, i32* %i, align 4, !tbaa !1
  %538 = load i32, i32* %j, align 4, !tbaa !1
  %539 = load i32, i32* %k, align 4, !tbaa !1
  %540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %537, i32 %538, i32 %539)
  br label %541

; <label>:541                                     ; preds = %536, %521
  br label %542

; <label>:542                                     ; preds = %541
  %543 = load i32, i32* %k, align 4, !tbaa !1
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %k, align 4, !tbaa !1
  br label %518

; <label>:545                                     ; preds = %518
  br label %546

; <label>:546                                     ; preds = %545
  %547 = load i32, i32* %j, align 4, !tbaa !1
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %j, align 4, !tbaa !1
  br label %514

; <label>:549                                     ; preds = %514
  br label %550

; <label>:550                                     ; preds = %549
  %551 = load i32, i32* %i, align 4, !tbaa !1
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %i, align 4, !tbaa !1
  br label %510

; <label>:553                                     ; preds = %510
  %554 = load i32, i32* @g_1576, align 4, !tbaa !1
  %555 = sext i32 %554 to i64
  %556 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %555, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %556)
  %557 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -6451304955154913260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %557)
  %558 = load i16, i16* @g_1602, align 2, !tbaa !10
  %559 = sext i16 %558 to i64
  %560 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %559, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %560)
  %561 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %562 = zext i32 %561 to i64
  %563 = xor i64 %562, 4294967295
  %564 = trunc i64 %563 to i32
  %565 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %564, i32 %565)
  %566 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %566) #1
  %567 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %567) #1
  %568 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %568) #1
  %569 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %569) #1
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
  %l_4 = alloca i32, align 4
  %l_1142 = alloca i32, align 4
  %l_1143 = alloca i8, align 1
  %l_1144 = alloca i8, align 1
  %l_1148 = alloca i32, align 4
  %l_1158 = alloca [3 x [7 x [3 x i64*]]], align 16
  %l_1157 = alloca i64**, align 8
  %l_1192 = alloca i32, align 4
  %l_1211 = alloca i32, align 4
  %l_1212 = alloca i32**, align 8
  %l_1238 = alloca i16*, align 8
  %l_1248 = alloca i16**, align 8
  %l_1247 = alloca i16***, align 8
  %l_1246 = alloca i16****, align 8
  %l_1245 = alloca i16*****, align 8
  %l_1256 = alloca i64, align 8
  %l_1267 = alloca i16*****, align 8
  %l_1268 = alloca i16*****, align 8
  %l_1273 = alloca i64, align 8
  %l_1296 = alloca i16*****, align 8
  %l_1297 = alloca i32*, align 8
  %l_1304 = alloca [10 x i32*], align 16
  %l_1358 = alloca i64**, align 8
  %l_1420 = alloca i8, align 1
  %l_1428 = alloca i16, align 2
  %l_1445 = alloca i64, align 8
  %l_1559 = alloca i8***, align 8
  %l_1562 = alloca i16**, align 8
  %l_1580 = alloca i32, align 4
  %l_1583 = alloca i8, align 1
  %l_1601 = alloca i16, align 2
  %l_1639 = alloca i32, align 4
  %l_1641 = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_1145 = alloca i32*, align 8
  %l_1146 = alloca i32*, align 8
  %l_1147 = alloca [8 x i32], align 16
  %i1 = alloca i32, align 4
  %l_1151 = alloca i32*, align 8
  %l_1156 = alloca i32, align 4
  %l_1159 = alloca i8*, align 8
  %l_1169 = alloca [4 x [10 x [2 x i64*]]], align 16
  %l_1174 = alloca i16, align 2
  %l_1175 = alloca i8*, align 8
  %l_1176 = alloca i8*, align 8
  %i2 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %k4 = alloca i32, align 4
  %l_1177 = alloca i64, align 8
  %l_1178 = alloca i64, align 8
  %l_1189 = alloca i32*, align 8
  %l_1190 = alloca i32*, align 8
  %l_1191 = alloca [2 x i32*], align 16
  %l_1193 = alloca [10 x i64], align 16
  %l_1210 = alloca i64*, align 8
  %i5 = alloca i32, align 4
  %l_1233 = alloca i32***, align 8
  %l_1239 = alloca [7 x [5 x i32*]], align 16
  %l_1240 = alloca [3 x [7 x [9 x i16*]]], align 16
  %l_1253 = alloca i8, align 1
  %l_1257 = alloca i16, align 2
  %l_1258 = alloca i8, align 1
  %l_1320 = alloca [6 x [3 x [10 x i64*]]], align 16
  %l_1319 = alloca [1 x [1 x [10 x i64**]]], align 16
  %l_1328 = alloca i16****, align 8
  %l_1342 = alloca [7 x i64*], align 16
  %l_1360 = alloca i32, align 4
  %l_1446 = alloca i8, align 1
  %l_1484 = alloca i16, align 2
  %l_1543 = alloca i8, align 1
  %l_1564 = alloca [6 x [3 x i16*****]], align 16
  %l_1592 = alloca [1 x i64**], align 8
  %l_1591 = alloca i64***, align 8
  %l_1590 = alloca [1 x [4 x [8 x i64****]]], align 16
  %l_1589 = alloca [10 x i64*****], align 16
  %l_1594 = alloca i64****, align 8
  %l_1593 = alloca [1 x i64*****], align 8
  %i6 = alloca i32, align 4
  %j7 = alloca i32, align 4
  %k8 = alloca i32, align 4
  %1 = bitcast i32* %l_4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -816528442, i32* %l_4, align 4, !tbaa !1
  %2 = bitcast i32* %l_1142 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 2090802998, i32* %l_1142, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1143) #1
  store i8 -102, i8* %l_1143, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %l_1144) #1
  store i8 2, i8* %l_1144, align 1, !tbaa !9
  %3 = bitcast i32* %l_1148 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1848156778, i32* %l_1148, align 4, !tbaa !1
  %4 = bitcast [3 x [7 x [3 x i64*]]]* %l_1158 to i8*
  call void @llvm.lifetime.start(i64 504, i8* %4) #1
  %5 = bitcast [3 x [7 x [3 x i64*]]]* %l_1158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([3 x [7 x [3 x i64*]]]* @func_1.l_1158 to i8*), i64 504, i32 16, i1 false)
  %6 = bitcast i64*** %l_1157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = getelementptr inbounds [3 x [7 x [3 x i64*]]], [3 x [7 x [3 x i64*]]]* %l_1158, i32 0, i64 2
  %8 = getelementptr inbounds [7 x [3 x i64*]], [7 x [3 x i64*]]* %7, i32 0, i64 1
  %9 = getelementptr inbounds [3 x i64*], [3 x i64*]* %8, i32 0, i64 1
  store i64** %9, i64*** %l_1157, align 8, !tbaa !5
  %10 = bitcast i32* %l_1192 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 6, i32* %l_1192, align 4, !tbaa !1
  %11 = bitcast i32* %l_1211 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -6, i32* %l_1211, align 4, !tbaa !1
  %12 = bitcast i32*** %l_1212 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i32** @g_160, i32*** %l_1212, align 8, !tbaa !5
  %13 = bitcast i16** %l_1238 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i16* @g_152, i16** %l_1238, align 8, !tbaa !5
  %14 = bitcast i16*** %l_1248 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i16** null, i16*** %l_1248, align 8, !tbaa !5
  %15 = bitcast i16**** %l_1247 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i16*** %l_1248, i16**** %l_1247, align 8, !tbaa !5
  %16 = bitcast i16***** %l_1246 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  store i16**** %l_1247, i16***** %l_1246, align 8, !tbaa !5
  %17 = bitcast i16****** %l_1245 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i16***** %l_1246, i16****** %l_1245, align 8, !tbaa !5
  %18 = bitcast i64* %l_1256 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64 5871939092796620581, i64* %l_1256, align 8, !tbaa !7
  %19 = bitcast i16****** %l_1267 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i16***** null, i16****** %l_1267, align 8, !tbaa !5
  %20 = bitcast i16****** %l_1268 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i16***** @g_613, i16****** %l_1268, align 8, !tbaa !5
  %21 = bitcast i64* %l_1273 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i64 2730545559712751874, i64* %l_1273, align 8, !tbaa !7
  %22 = bitcast i16****** %l_1296 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i16***** @g_1295, i16****** %l_1296, align 8, !tbaa !5
  %23 = bitcast i32** %l_1297 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  store i32* getelementptr inbounds ([6 x [1 x i32]], [6 x [1 x i32]]* @g_17, i32 0, i64 2, i64 0), i32** %l_1297, align 8, !tbaa !5
  %24 = bitcast [10 x i32*]* %l_1304 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %24) #1
  %25 = bitcast [10 x i32*]* %l_1304 to i8*
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 80, i32 16, i1 false)
  %26 = bitcast i64*** %l_1358 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i64** getelementptr inbounds ([10 x [10 x i64*]], [10 x [10 x i64*]]* @g_1356, i32 0, i64 0, i64 1), i64*** %l_1358, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_1420) #1
  store i8 -17, i8* %l_1420, align 1, !tbaa !9
  %27 = bitcast i16* %l_1428 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %27) #1
  store i16 -18445, i16* %l_1428, align 2, !tbaa !10
  %28 = bitcast i64* %l_1445 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i64 4927444506949778294, i64* %l_1445, align 8, !tbaa !7
  %29 = bitcast i8**** %l_1559 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i8*** null, i8**** %l_1559, align 8, !tbaa !5
  %30 = bitcast i16*** %l_1562 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i16** null, i16*** %l_1562, align 8, !tbaa !5
  %31 = bitcast i32* %l_1580 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 -1093537916, i32* %l_1580, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1583) #1
  store i8 -41, i8* %l_1583, align 1, !tbaa !9
  %32 = bitcast i16* %l_1601 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %32) #1
  store i16 -14672, i16* %l_1601, align 2, !tbaa !10
  %33 = bitcast i32* %l_1639 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 -1266460625, i32* %l_1639, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1641) #1
  store i8 4, i8* %l_1641, align 1, !tbaa !9
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %l_4, align 4, !tbaa !1
  %38 = trunc i32 %37 to i16
  %39 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_6, i32 0, i64 3), align 1, !tbaa !9
  %40 = sext i8 %39 to i64
  %41 = call i64 @safe_unary_minus_func_uint64_t_u(i64 %40)
  %42 = trunc i64 %41 to i16
  %43 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %38, i16 signext %42)
  %44 = sext i16 %43 to i32
  %45 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_6, i32 0, i64 3), align 1, !tbaa !9
  %46 = sext i8 %45 to i64
  %47 = load i32, i32* %l_4, align 4, !tbaa !1
  %48 = trunc i32 %47 to i8
  %49 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_6, i32 0, i64 3), align 1, !tbaa !9
  %50 = sext i8 %49 to i16
  %51 = call i32 @func_10(i64 %46, i8 zeroext %48, i16 zeroext %50)
  %52 = sext i32 %51 to i64
  %53 = xor i64 %52, 1758977338
  %54 = load i8, i8* @g_205, align 1, !tbaa !9
  %55 = zext i8 %54 to i64
  %56 = or i64 %55, %53
  %57 = trunc i64 %56 to i8
  store i8 %57, i8* @g_205, align 1, !tbaa !9
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* %l_4, align 4, !tbaa !1
  %60 = load i32, i32* %l_4, align 4, !tbaa !1
  %61 = call i32 @safe_add_func_int32_t_s_s(i32 %59, i32 %60)
  br i1 true, label %63, label %62

; <label>:62                                      ; preds = %0
  br label %63

; <label>:63                                      ; preds = %62, %0
  %64 = phi i1 [ true, %0 ], [ true, %62 ]
  %65 = zext i1 %64 to i32
  %66 = trunc i32 %65 to i16
  %67 = load i32, i32* %l_1142, align 4, !tbaa !1
  %68 = trunc i32 %67 to i16
  %69 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %66, i16 zeroext %68)
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %58, %70
  %72 = zext i1 %71 to i32
  %73 = load i8, i8* %l_1143, align 1, !tbaa !9
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %80, label %76

; <label>:76                                      ; preds = %63
  %77 = load i8, i8* %l_1144, align 1, !tbaa !9
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br label %80

; <label>:80                                      ; preds = %76, %63
  %81 = phi i1 [ false, %63 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @safe_sub_func_int32_t_s_s(i32 %82, i32 1)
  %84 = icmp slt i32 %44, %83
  %85 = zext i1 %84 to i32
  %86 = load i32*, i32** @g_160, align 8, !tbaa !5
  store i32 %85, i32* %86, align 4, !tbaa !1
  br i1 %84, label %87, label %101

; <label>:87                                      ; preds = %80
  %88 = bitcast i32** %l_1145 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  store i32* null, i32** %l_1145, align 8, !tbaa !5
  %89 = bitcast i32** %l_1146 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  store i32* null, i32** %l_1146, align 8, !tbaa !5
  %90 = bitcast [8 x i32]* %l_1147 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %90) #1
  %91 = bitcast [8 x i32]* %l_1147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* bitcast ([8 x i32]* @func_1.l_1147 to i8*), i64 32, i32 16, i1 false)
  %92 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = load i32*, i32** @g_788, align 8, !tbaa !5
  store i32 -3, i32* %93, align 4, !tbaa !1
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %l_1147, i32 0, i64 5
  store i32 -3, i32* %94, align 4, !tbaa !1
  %95 = load i32, i32* %l_1148, align 4, !tbaa !1
  %96 = or i32 %95, -3
  store i32 %96, i32* %l_1148, align 4, !tbaa !1
  %97 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast [8 x i32]* %l_1147 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %98) #1
  %99 = bitcast i32** %l_1146 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32** %l_1145 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  br label %360

; <label>:101                                     ; preds = %80
  %102 = bitcast i32** %l_1151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %102) #1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_379, i32 0, i64 2), i32** %l_1151, align 8, !tbaa !5
  %103 = bitcast i32* %l_1156 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  store i32 -1, i32* %l_1156, align 4, !tbaa !1
  %104 = bitcast i8** %l_1159 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  store i8* %l_1144, i8** %l_1159, align 8, !tbaa !5
  %105 = bitcast [4 x [10 x [2 x i64*]]]* %l_1169 to i8*
  call void @llvm.lifetime.start(i64 640, i8* %105) #1
  %106 = bitcast [4 x [10 x [2 x i64*]]]* %l_1169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* bitcast ([4 x [10 x [2 x i64*]]]* @func_1.l_1169 to i8*), i64 640, i32 16, i1 false)
  %107 = bitcast i16* %l_1174 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %107) #1
  store i16 9, i16* %l_1174, align 2, !tbaa !10
  %108 = bitcast i8** %l_1175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  store i8* null, i8** %l_1175, align 8, !tbaa !5
  %109 = bitcast i8** %l_1176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %109) #1
  store i8* @g_205, i8** %l_1176, align 8, !tbaa !5
  %110 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #1
  %113 = load i32*, i32** %l_1151, align 8, !tbaa !5
  store i32 -2, i32* %113, align 4, !tbaa !1
  %114 = load i32, i32* %l_1156, align 4, !tbaa !1
  %115 = trunc i32 %114 to i16
  %116 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %115, i32 10)
  %117 = zext i16 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

; <label>:119                                     ; preds = %101
  %120 = load i64**, i64*** %l_1157, align 8, !tbaa !5
  %121 = icmp eq i64** %120, @g_381
  %122 = zext i1 %121 to i32
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %l_1159, align 8, !tbaa !5
  store i8 %123, i8* %124, align 1, !tbaa !9
  %125 = sext i8 %123 to i32
  %126 = icmp ne i32 %125, 0
  br label %127

; <label>:127                                     ; preds = %119, %101
  %128 = phi i1 [ true, %101 ], [ %126, %119 ]
  %129 = zext i1 %128 to i32
  %130 = xor i32 1, %129
  %131 = load volatile i16****, i16***** @g_743, align 8, !tbaa !5
  %132 = load i16***, i16**** %131, align 8, !tbaa !5
  %133 = load i16**, i16*** %132, align 8, !tbaa !5
  %134 = load i16*, i16** %133, align 8, !tbaa !5
  %135 = load i16***, i16**** @g_333, align 8, !tbaa !5
  %136 = load i16**, i16*** %135, align 8, !tbaa !5
  %137 = load i16*, i16** %136, align 8, !tbaa !5
  %138 = icmp eq i16* %134, %137
  %139 = zext i1 %138 to i32
  %140 = and i32 %139, 1
  %141 = trunc i32 %140 to i16
  %142 = load i8, i8* %l_1143, align 1, !tbaa !9
  %143 = sext i8 %142 to i16
  %144 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %141, i16 signext %143)
  %145 = sext i16 %144 to i32
  %146 = call i32 @safe_add_func_uint32_t_u_u(i32 -2, i32 %145)
  %147 = zext i32 %146 to i64
  %148 = load i32, i32* %l_4, align 4, !tbaa !1
  %149 = trunc i32 %148 to i8
  %150 = load i32, i32* %l_1156, align 4, !tbaa !1
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* %l_1156, align 4, !tbaa !1
  %153 = trunc i32 %152 to i16
  %154 = call i32* @func_56(i64 %147, i32* %l_1148, i8 zeroext %149, i64 %151, i16 zeroext %153)
  %155 = load i32, i32* %l_1156, align 4, !tbaa !1
  %156 = trunc i32 %155 to i8
  %157 = load i32*, i32** @g_788, align 8, !tbaa !5
  %158 = load i32, i32* %157, align 4, !tbaa !1
  %159 = call i32* @func_39(i32* %154, i8 zeroext %156, i32 %158, i64 1, i32* @g_156)
  %160 = load volatile i32**, i32*** @g_1160, align 8, !tbaa !5
  store i32* %159, i32** %160, align 8, !tbaa !5
  %161 = load i32, i32* %l_1156, align 4, !tbaa !1
  %162 = trunc i32 %161 to i16
  %163 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %162, i32 3)
  %164 = sext i16 %163 to i32
  %165 = load i32, i32* %l_1156, align 4, !tbaa !1
  %166 = trunc i32 %165 to i16
  store i16 %166, i16* %l_1174, align 2, !tbaa !10
  %167 = load i16, i16* @g_891, align 2, !tbaa !10
  %168 = zext i16 %167 to i32
  store i32 %168, i32* %l_1148, align 4, !tbaa !1
  %169 = icmp sgt i32 %164, %168
  br i1 %169, label %170, label %174

; <label>:170                                     ; preds = %127
  %171 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @g_99, i32 0, i64 1), align 1, !tbaa !9
  %172 = zext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br label %174

; <label>:174                                     ; preds = %170, %127
  %175 = phi i1 [ false, %127 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = and i64 %177, -4570983425573985487
  %179 = icmp ult i64 %178, 1
  %180 = zext i1 %179 to i32
  %181 = load i8*, i8** %l_1176, align 8, !tbaa !5
  %182 = load i8, i8* %181, align 1, !tbaa !9
  %183 = zext i8 %182 to i32
  %184 = xor i32 %183, %180
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %181, align 1, !tbaa !9
  %186 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %185, i32 3)
  %187 = zext i8 %186 to i64
  %188 = icmp ne i64 %187, 3544555808
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %l_4, align 4, !tbaa !1
  %191 = icmp ne i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = icmp sgt i32 1, %192
  %194 = zext i1 %193 to i32
  %195 = sext i32 %194 to i64
  %196 = and i64 -163696699836284735, %195
  %197 = trunc i64 %196 to i32
  %198 = load i16, i16* @g_891, align 2, !tbaa !10
  %199 = zext i16 %198 to i32
  %200 = call i32 @safe_div_func_uint32_t_u_u(i32 %197, i32 %199)
  %201 = load i8, i8* %l_1144, align 1, !tbaa !9
  %202 = sext i8 %201 to i32
  %203 = call i32 @safe_div_func_int32_t_s_s(i32 %200, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

; <label>:205                                     ; preds = %174
  %206 = bitcast i64* %l_1177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  store i64 -10, i64* %l_1177, align 8, !tbaa !7
  %207 = load i64, i64* %l_1177, align 8, !tbaa !7
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %l_1156, align 4, !tbaa !1
  %209 = bitcast i64* %l_1177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  br label %349

; <label>:210                                     ; preds = %174
  %211 = bitcast i64* %l_1178 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %211) #1
  store i64 1, i64* %l_1178, align 8, !tbaa !7
  %212 = bitcast i32** %l_1189 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %212) #1
  store i32* %l_1156, i32** %l_1189, align 8, !tbaa !5
  %213 = bitcast i32** %l_1190 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %213) #1
  store i32* %l_1156, i32** %l_1190, align 8, !tbaa !5
  %214 = bitcast [2 x i32*]* %l_1191 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %214) #1
  %215 = bitcast [10 x i64]* %l_1193 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %215) #1
  %216 = bitcast [10 x i64]* %l_1193 to i8*
  call void @llvm.memset.p0i8.i64(i8* %216, i8 0, i64 80, i32 16, i1 false)
  %217 = bitcast i8* %216 to [10 x i64]*
  %218 = getelementptr [10 x i64], [10 x i64]* %217, i32 0, i32 0
  store i64 8995685425207049249, i64* %218
  %219 = getelementptr [10 x i64], [10 x i64]* %217, i32 0, i32 1
  store i64 -7748406569495616009, i64* %219
  %220 = getelementptr [10 x i64], [10 x i64]* %217, i32 0, i32 2
  store i64 8995685425207049249, i64* %220
  %221 = getelementptr [10 x i64], [10 x i64]* %217, i32 0, i32 5
  store i64 8995685425207049249, i64* %221
  %222 = getelementptr [10 x i64], [10 x i64]* %217, i32 0, i32 6
  store i64 -7748406569495616009, i64* %222
  %223 = getelementptr [10 x i64], [10 x i64]* %217, i32 0, i32 7
  store i64 8995685425207049249, i64* %223
  %224 = bitcast i64** %l_1210 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %224) #1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %l_1210, align 8, !tbaa !5
  %225 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225) #1
  store i32 0, i32* %i5, align 4, !tbaa !1
  br label %226

; <label>:226                                     ; preds = %233, %210
  %227 = load i32, i32* %i5, align 4, !tbaa !1
  %228 = icmp slt i32 %227, 2
  br i1 %228, label %229, label %236

; <label>:229                                     ; preds = %226
  %230 = load i32, i32* %i5, align 4, !tbaa !1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_1191, i32 0, i64 %231
  store i32* %l_1156, i32** %232, align 8, !tbaa !5
  br label %233

; <label>:233                                     ; preds = %229
  %234 = load i32, i32* %i5, align 4, !tbaa !1
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %i5, align 4, !tbaa !1
  br label %226

; <label>:236                                     ; preds = %226
  %237 = load i64, i64* %l_1178, align 8, !tbaa !7
  %238 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_379, i32 0, i64 2), align 4, !tbaa !1
  %239 = trunc i32 %238 to i8
  %240 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %239, i32 6)
  %241 = load volatile i32, i32* @g_1096, align 4, !tbaa !1
  %242 = sext i32 %241 to i64
  %243 = load i8*, i8** %l_1176, align 8, !tbaa !5
  store i8 76, i8* %243, align 1, !tbaa !9
  %244 = load i16, i16* %l_1174, align 2, !tbaa !10
  %245 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext 6, i16 signext %244)
  %246 = sext i16 %245 to i64
  %247 = load i8, i8* @g_81, align 1, !tbaa !9
  %248 = sext i8 %247 to i64
  %249 = call i64 @safe_div_func_uint64_t_u_u(i64 %246, i64 %248)
  %250 = icmp eq i64 %242, %249
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %240, i8 zeroext -37)
  %254 = zext i8 %253 to i64
  %255 = icmp eq i64 883226522901807383, %254
  %256 = zext i1 %255 to i32
  %257 = xor i32 %256, -1
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %258, 198
  %260 = zext i1 %259 to i32
  %261 = sext i32 %260 to i64
  %262 = icmp sle i64 %261, 46
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %l_1156, align 4, !tbaa !1
  %264 = sext i32 %263 to i64
  %265 = icmp sle i64 %264, 0
  %266 = zext i1 %265 to i32
  %267 = sext i32 %266 to i64
  %268 = icmp ne i64 %237, %267
  %269 = zext i1 %268 to i32
  %270 = load i32*, i32** @g_160, align 8, !tbaa !5
  store i32 %269, i32* %270, align 4, !tbaa !1
  %271 = load i32*, i32** @g_788, align 8, !tbaa !5
  %272 = load i32, i32* %271, align 4, !tbaa !1
  %273 = xor i32 %272, %269
  store i32 %273, i32* %271, align 4, !tbaa !1
  %274 = getelementptr inbounds [10 x i64], [10 x i64]* %l_1193, i32 0, i64 8
  %275 = load i64, i64* %274, align 8, !tbaa !7
  %276 = add i64 %275, -1
  store i64 %276, i64* %274, align 8, !tbaa !7
  %277 = load volatile i32, i32* @g_1090, align 4, !tbaa !1
  %278 = sext i32 %277 to i64
  %279 = and i64 32, %278
  %280 = icmp eq i64 %279, 1
  %281 = zext i1 %280 to i32
  %282 = load i8, i8* %l_1144, align 1, !tbaa !9
  %283 = sext i8 %282 to i32
  %284 = load i32, i32* %l_4, align 4, !tbaa !1
  %285 = zext i32 %284 to i64
  %286 = load i64*, i64** %l_1210, align 8, !tbaa !5
  store i64 0, i64* %286, align 8, !tbaa !7
  %287 = call i64 @safe_sub_func_int64_t_s_s(i64 %285, i64 0)
  %288 = icmp ult i64 %287, 0
  %289 = zext i1 %288 to i32
  %290 = load i32*, i32** @g_160, align 8, !tbaa !5
  store i32 %289, i32* %290, align 4, !tbaa !1
  %291 = load i32, i32* %l_1156, align 4, !tbaa !1
  %292 = xor i32 %289, %291
  %293 = sext i32 %292 to i64
  %294 = icmp eq i64 28, %293
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_379, i32 0, i64 2), align 4, !tbaa !1
  %297 = icmp ult i32 %295, %296
  %298 = zext i1 %297 to i32
  %299 = trunc i32 %298 to i8
  %300 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %299, i32 3)
  %301 = sext i8 %300 to i32
  %302 = load volatile i32**, i32*** @g_900, align 8, !tbaa !5
  %303 = load i32*, i32** %302, align 8, !tbaa !5
  %304 = load i32, i32* %303, align 4, !tbaa !1
  %305 = xor i32 %304, %301
  store i32 %305, i32* %303, align 4, !tbaa !1
  %306 = load i32*, i32** %l_1189, align 8, !tbaa !5
  store i32 %305, i32* %306, align 4, !tbaa !1
  %307 = load i16, i16* %l_1174, align 2, !tbaa !10
  %308 = sext i16 %307 to i32
  %309 = icmp sge i32 %305, %308
  %310 = zext i1 %309 to i32
  %311 = sext i32 %310 to i64
  %312 = xor i64 %311, 4294967289
  %313 = trunc i64 %312 to i16
  %314 = load i32, i32* %l_4, align 4, !tbaa !1
  %315 = trunc i32 %314 to i16
  %316 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %313, i16 zeroext %315)
  %317 = zext i16 %316 to i64
  %318 = icmp eq i64 27162, %317
  %319 = zext i1 %318 to i32
  %320 = trunc i32 %319 to i16
  %321 = load i16, i16* %l_1174, align 2, !tbaa !10
  %322 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext %320, i16 signext %321)
  %323 = trunc i16 %322 to i8
  %324 = load i32, i32* @g_156, align 4, !tbaa !1
  %325 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %323, i32 %324)
  %326 = sext i8 %325 to i32
  %327 = icmp sle i32 %283, %326
  %328 = zext i1 %327 to i32
  %329 = load i32, i32* %l_1148, align 4, !tbaa !1
  %330 = load i32, i32* %l_1148, align 4, !tbaa !1
  %331 = xor i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = or i64 0, %332
  %334 = trunc i64 %333 to i32
  %335 = load i32, i32* %l_1148, align 4, !tbaa !1
  %336 = call i32 @safe_sub_func_int32_t_s_s(i32 %334, i32 %335)
  %337 = trunc i32 %336 to i16
  %338 = load i16*, i16** @g_148, align 8, !tbaa !5
  %339 = load i16, i16* %338, align 2, !tbaa !10
  %340 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %337, i16 zeroext %339)
  %341 = zext i16 %340 to i32
  store i32 %341, i32* %l_1211, align 4, !tbaa !1
  %342 = bitcast i32* %i5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #1
  %343 = bitcast i64** %l_1210 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %343) #1
  %344 = bitcast [10 x i64]* %l_1193 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %344) #1
  %345 = bitcast [2 x i32*]* %l_1191 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %345) #1
  %346 = bitcast i32** %l_1190 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  %347 = bitcast i32** %l_1189 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = bitcast i64* %l_1178 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  br label %349

; <label>:349                                     ; preds = %236, %205
  %350 = bitcast i32* %k4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %350) #1
  %351 = bitcast i32* %j3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %351) #1
  %352 = bitcast i32* %i2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %352) #1
  %353 = bitcast i8** %l_1176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %353) #1
  %354 = bitcast i8** %l_1175 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %354) #1
  %355 = bitcast i16* %l_1174 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %355) #1
  %356 = bitcast [4 x [10 x [2 x i64*]]]* %l_1169 to i8*
  call void @llvm.lifetime.end(i64 640, i8* %356) #1
  %357 = bitcast i8** %l_1159 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %357) #1
  %358 = bitcast i32* %l_1156 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %358) #1
  %359 = bitcast i32** %l_1151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %359) #1
  br label %360

; <label>:360                                     ; preds = %349, %87
  %361 = load volatile i32**, i32*** @g_159, align 8, !tbaa !5
  %362 = load i32*, i32** %361, align 8, !tbaa !5
  %363 = load i32**, i32*** %l_1212, align 8, !tbaa !5
  store i32* %362, i32** %363, align 8, !tbaa !5
  store i32 0, i32* @g_345, align 4, !tbaa !1
  br label %364

; <label>:364                                     ; preds = %768, %360
  %365 = load i32, i32* @g_345, align 4, !tbaa !1
  %366 = icmp sge i32 %365, 9
  br i1 %366, label %367, label %773

; <label>:367                                     ; preds = %364
  %368 = bitcast i32**** %l_1233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %368) #1
  store i32*** null, i32**** %l_1233, align 8, !tbaa !5
  %369 = bitcast [7 x [5 x i32*]]* %l_1239 to i8*
  call void @llvm.lifetime.start(i64 280, i8* %369) #1
  %370 = bitcast [7 x [5 x i32*]]* %l_1239 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %370, i8* bitcast ([7 x [5 x i32*]]* @func_1.l_1239 to i8*), i64 280, i32 16, i1 false)
  %371 = bitcast [3 x [7 x [9 x i16*]]]* %l_1240 to i8*
  call void @llvm.lifetime.start(i64 1512, i8* %371) #1
  %372 = bitcast [3 x [7 x [9 x i16*]]]* %l_1240 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %372, i8* bitcast ([3 x [7 x [9 x i16*]]]* @func_1.l_1240 to i8*), i64 1512, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_1253) #1
  store i8 -33, i8* %l_1253, align 1, !tbaa !9
  %373 = bitcast i16* %l_1257 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %373) #1
  store i16 0, i16* %l_1257, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1258) #1
  store i8 -1, i8* %l_1258, align 1, !tbaa !9
  %374 = bitcast [6 x [3 x [10 x i64*]]]* %l_1320 to i8*
  call void @llvm.lifetime.start(i64 1440, i8* %374) #1
  %375 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i64 0, i64 0
  %376 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %375, i64 0, i64 0
  %377 = getelementptr inbounds [10 x i64*], [10 x i64*]* %376, i64 0, i64 0
  store i64* null, i64** %377, !tbaa !5
  %378 = getelementptr inbounds i64*, i64** %377, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %378, !tbaa !5
  %379 = getelementptr inbounds i64*, i64** %378, i64 1
  store i64* null, i64** %379, !tbaa !5
  %380 = getelementptr inbounds i64*, i64** %379, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %380, !tbaa !5
  %381 = getelementptr inbounds i64*, i64** %380, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %381, !tbaa !5
  %382 = getelementptr inbounds i64*, i64** %381, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %382, !tbaa !5
  %383 = getelementptr inbounds i64*, i64** %382, i64 1
  store i64* null, i64** %383, !tbaa !5
  %384 = getelementptr inbounds i64*, i64** %383, i64 1
  store i64* %l_1256, i64** %384, !tbaa !5
  %385 = getelementptr inbounds i64*, i64** %384, i64 1
  store i64* null, i64** %385, !tbaa !5
  %386 = getelementptr inbounds i64*, i64** %385, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %386, !tbaa !5
  %387 = getelementptr inbounds [10 x i64*], [10 x i64*]* %376, i64 1
  %388 = getelementptr inbounds [10 x i64*], [10 x i64*]* %387, i64 0, i64 0
  store i64* null, i64** %388, !tbaa !5
  %389 = getelementptr inbounds i64*, i64** %388, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %389, !tbaa !5
  %390 = getelementptr inbounds i64*, i64** %389, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 3), i64** %390, !tbaa !5
  %391 = getelementptr inbounds i64*, i64** %390, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %391, !tbaa !5
  %392 = getelementptr inbounds i64*, i64** %391, i64 1
  store i64* null, i64** %392, !tbaa !5
  %393 = getelementptr inbounds i64*, i64** %392, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %393, !tbaa !5
  %394 = getelementptr inbounds i64*, i64** %393, i64 1
  store i64* %l_1256, i64** %394, !tbaa !5
  %395 = getelementptr inbounds i64*, i64** %394, i64 1
  store i64* null, i64** %395, !tbaa !5
  %396 = getelementptr inbounds i64*, i64** %395, i64 1
  store i64* null, i64** %396, !tbaa !5
  %397 = getelementptr inbounds i64*, i64** %396, i64 1
  store i64* %l_1256, i64** %397, !tbaa !5
  %398 = getelementptr inbounds [10 x i64*], [10 x i64*]* %387, i64 1
  %399 = getelementptr inbounds [10 x i64*], [10 x i64*]* %398, i64 0, i64 0
  store i64* null, i64** %399, !tbaa !5
  %400 = getelementptr inbounds i64*, i64** %399, i64 1
  store i64* %l_1256, i64** %400, !tbaa !5
  %401 = getelementptr inbounds i64*, i64** %400, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %401, !tbaa !5
  %402 = getelementptr inbounds i64*, i64** %401, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %402, !tbaa !5
  %403 = getelementptr inbounds i64*, i64** %402, i64 1
  store i64* null, i64** %403, !tbaa !5
  %404 = getelementptr inbounds i64*, i64** %403, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %404, !tbaa !5
  %405 = getelementptr inbounds i64*, i64** %404, i64 1
  store i64* null, i64** %405, !tbaa !5
  %406 = getelementptr inbounds i64*, i64** %405, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %406, !tbaa !5
  %407 = getelementptr inbounds i64*, i64** %406, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %407, !tbaa !5
  %408 = getelementptr inbounds i64*, i64** %407, i64 1
  store i64* %l_1256, i64** %408, !tbaa !5
  %409 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %375, i64 1
  %410 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %409, i64 0, i64 0
  %411 = getelementptr inbounds [10 x i64*], [10 x i64*]* %410, i64 0, i64 0
  store i64* %l_1256, i64** %411, !tbaa !5
  %412 = getelementptr inbounds i64*, i64** %411, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %412, !tbaa !5
  %413 = getelementptr inbounds i64*, i64** %412, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %413, !tbaa !5
  %414 = getelementptr inbounds i64*, i64** %413, i64 1
  store i64* null, i64** %414, !tbaa !5
  %415 = getelementptr inbounds i64*, i64** %414, i64 1
  store i64* null, i64** %415, !tbaa !5
  %416 = getelementptr inbounds i64*, i64** %415, i64 1
  store i64* %l_1256, i64** %416, !tbaa !5
  %417 = getelementptr inbounds i64*, i64** %416, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %417, !tbaa !5
  %418 = getelementptr inbounds i64*, i64** %417, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %418, !tbaa !5
  %419 = getelementptr inbounds i64*, i64** %418, i64 1
  store i64* %l_1256, i64** %419, !tbaa !5
  %420 = getelementptr inbounds i64*, i64** %419, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %420, !tbaa !5
  %421 = getelementptr inbounds [10 x i64*], [10 x i64*]* %410, i64 1
  %422 = getelementptr inbounds [10 x i64*], [10 x i64*]* %421, i64 0, i64 0
  store i64* null, i64** %422, !tbaa !5
  %423 = getelementptr inbounds i64*, i64** %422, i64 1
  store i64* %l_1256, i64** %423, !tbaa !5
  %424 = getelementptr inbounds i64*, i64** %423, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %424, !tbaa !5
  %425 = getelementptr inbounds i64*, i64** %424, i64 1
  store i64* null, i64** %425, !tbaa !5
  %426 = getelementptr inbounds i64*, i64** %425, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %426, !tbaa !5
  %427 = getelementptr inbounds i64*, i64** %426, i64 1
  store i64* %l_1256, i64** %427, !tbaa !5
  %428 = getelementptr inbounds i64*, i64** %427, i64 1
  store i64* null, i64** %428, !tbaa !5
  %429 = getelementptr inbounds i64*, i64** %428, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %429, !tbaa !5
  %430 = getelementptr inbounds i64*, i64** %429, i64 1
  store i64* null, i64** %430, !tbaa !5
  %431 = getelementptr inbounds i64*, i64** %430, i64 1
  store i64* %l_1256, i64** %431, !tbaa !5
  %432 = getelementptr inbounds [10 x i64*], [10 x i64*]* %421, i64 1
  %433 = getelementptr inbounds [10 x i64*], [10 x i64*]* %432, i64 0, i64 0
  store i64* %l_1256, i64** %433, !tbaa !5
  %434 = getelementptr inbounds i64*, i64** %433, i64 1
  store i64* null, i64** %434, !tbaa !5
  %435 = getelementptr inbounds i64*, i64** %434, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 3), i64** %435, !tbaa !5
  %436 = getelementptr inbounds i64*, i64** %435, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %436, !tbaa !5
  %437 = getelementptr inbounds i64*, i64** %436, i64 1
  store i64* %l_1256, i64** %437, !tbaa !5
  %438 = getelementptr inbounds i64*, i64** %437, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %438, !tbaa !5
  %439 = getelementptr inbounds i64*, i64** %438, i64 1
  store i64* %l_1256, i64** %439, !tbaa !5
  %440 = getelementptr inbounds i64*, i64** %439, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %440, !tbaa !5
  %441 = getelementptr inbounds i64*, i64** %440, i64 1
  store i64* %l_1256, i64** %441, !tbaa !5
  %442 = getelementptr inbounds i64*, i64** %441, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %442, !tbaa !5
  %443 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %409, i64 1
  %444 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %443, i64 0, i64 0
  %445 = getelementptr inbounds [10 x i64*], [10 x i64*]* %444, i64 0, i64 0
  store i64* null, i64** %445, !tbaa !5
  %446 = getelementptr inbounds i64*, i64** %445, i64 1
  store i64* null, i64** %446, !tbaa !5
  %447 = getelementptr inbounds i64*, i64** %446, i64 1
  store i64* null, i64** %447, !tbaa !5
  %448 = getelementptr inbounds i64*, i64** %447, i64 1
  store i64* %l_1256, i64** %448, !tbaa !5
  %449 = getelementptr inbounds i64*, i64** %448, i64 1
  store i64* null, i64** %449, !tbaa !5
  %450 = getelementptr inbounds i64*, i64** %449, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %450, !tbaa !5
  %451 = getelementptr inbounds i64*, i64** %450, i64 1
  store i64* null, i64** %451, !tbaa !5
  %452 = getelementptr inbounds i64*, i64** %451, i64 1
  store i64* %l_1256, i64** %452, !tbaa !5
  %453 = getelementptr inbounds i64*, i64** %452, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %453, !tbaa !5
  %454 = getelementptr inbounds i64*, i64** %453, i64 1
  store i64* null, i64** %454, !tbaa !5
  %455 = getelementptr inbounds [10 x i64*], [10 x i64*]* %444, i64 1
  %456 = getelementptr inbounds [10 x i64*], [10 x i64*]* %455, i64 0, i64 0
  store i64* null, i64** %456, !tbaa !5
  %457 = getelementptr inbounds i64*, i64** %456, i64 1
  store i64* %l_1256, i64** %457, !tbaa !5
  %458 = getelementptr inbounds i64*, i64** %457, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %458, !tbaa !5
  %459 = getelementptr inbounds i64*, i64** %458, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %459, !tbaa !5
  %460 = getelementptr inbounds i64*, i64** %459, i64 1
  store i64* %l_1256, i64** %460, !tbaa !5
  %461 = getelementptr inbounds i64*, i64** %460, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %461, !tbaa !5
  %462 = getelementptr inbounds i64*, i64** %461, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %462, !tbaa !5
  %463 = getelementptr inbounds i64*, i64** %462, i64 1
  store i64* %l_1256, i64** %463, !tbaa !5
  %464 = getelementptr inbounds i64*, i64** %463, i64 1
  store i64* null, i64** %464, !tbaa !5
  %465 = getelementptr inbounds i64*, i64** %464, i64 1
  store i64* null, i64** %465, !tbaa !5
  %466 = getelementptr inbounds [10 x i64*], [10 x i64*]* %455, i64 1
  %467 = getelementptr inbounds [10 x i64*], [10 x i64*]* %466, i64 0, i64 0
  store i64* null, i64** %467, !tbaa !5
  %468 = getelementptr inbounds i64*, i64** %467, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %468, !tbaa !5
  %469 = getelementptr inbounds i64*, i64** %468, i64 1
  store i64* null, i64** %469, !tbaa !5
  %470 = getelementptr inbounds i64*, i64** %469, i64 1
  store i64* %l_1256, i64** %470, !tbaa !5
  %471 = getelementptr inbounds i64*, i64** %470, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %471, !tbaa !5
  %472 = getelementptr inbounds i64*, i64** %471, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %472, !tbaa !5
  %473 = getelementptr inbounds i64*, i64** %472, i64 1
  store i64* null, i64** %473, !tbaa !5
  %474 = getelementptr inbounds i64*, i64** %473, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %474, !tbaa !5
  %475 = getelementptr inbounds i64*, i64** %474, i64 1
  store i64* null, i64** %475, !tbaa !5
  %476 = getelementptr inbounds i64*, i64** %475, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %476, !tbaa !5
  %477 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %443, i64 1
  %478 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %477, i64 0, i64 0
  %479 = getelementptr inbounds [10 x i64*], [10 x i64*]* %478, i64 0, i64 0
  store i64* null, i64** %479, !tbaa !5
  %480 = getelementptr inbounds i64*, i64** %479, i64 1
  store i64* %l_1256, i64** %480, !tbaa !5
  %481 = getelementptr inbounds i64*, i64** %480, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 3), i64** %481, !tbaa !5
  %482 = getelementptr inbounds i64*, i64** %481, i64 1
  store i64* %l_1256, i64** %482, !tbaa !5
  %483 = getelementptr inbounds i64*, i64** %482, i64 1
  store i64* null, i64** %483, !tbaa !5
  %484 = getelementptr inbounds i64*, i64** %483, i64 1
  store i64* null, i64** %484, !tbaa !5
  %485 = getelementptr inbounds i64*, i64** %484, i64 1
  store i64* %l_1256, i64** %485, !tbaa !5
  %486 = getelementptr inbounds i64*, i64** %485, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %486, !tbaa !5
  %487 = getelementptr inbounds i64*, i64** %486, i64 1
  store i64* null, i64** %487, !tbaa !5
  %488 = getelementptr inbounds i64*, i64** %487, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %488, !tbaa !5
  %489 = getelementptr inbounds [10 x i64*], [10 x i64*]* %478, i64 1
  %490 = getelementptr inbounds [10 x i64*], [10 x i64*]* %489, i64 0, i64 0
  store i64* null, i64** %490, !tbaa !5
  %491 = getelementptr inbounds i64*, i64** %490, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %491, !tbaa !5
  %492 = getelementptr inbounds i64*, i64** %491, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %492, !tbaa !5
  %493 = getelementptr inbounds i64*, i64** %492, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %493, !tbaa !5
  %494 = getelementptr inbounds i64*, i64** %493, i64 1
  store i64* null, i64** %494, !tbaa !5
  %495 = getelementptr inbounds i64*, i64** %494, i64 1
  store i64* %l_1256, i64** %495, !tbaa !5
  %496 = getelementptr inbounds i64*, i64** %495, i64 1
  store i64* null, i64** %496, !tbaa !5
  %497 = getelementptr inbounds i64*, i64** %496, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %497, !tbaa !5
  %498 = getelementptr inbounds i64*, i64** %497, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %498, !tbaa !5
  %499 = getelementptr inbounds i64*, i64** %498, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %499, !tbaa !5
  %500 = getelementptr inbounds [10 x i64*], [10 x i64*]* %489, i64 1
  %501 = getelementptr inbounds [10 x i64*], [10 x i64*]* %500, i64 0, i64 0
  store i64* %l_1256, i64** %501, !tbaa !5
  %502 = getelementptr inbounds i64*, i64** %501, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %502, !tbaa !5
  %503 = getelementptr inbounds i64*, i64** %502, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %503, !tbaa !5
  %504 = getelementptr inbounds i64*, i64** %503, i64 1
  store i64* %l_1256, i64** %504, !tbaa !5
  %505 = getelementptr inbounds i64*, i64** %504, i64 1
  store i64* null, i64** %505, !tbaa !5
  %506 = getelementptr inbounds i64*, i64** %505, i64 1
  store i64* null, i64** %506, !tbaa !5
  %507 = getelementptr inbounds i64*, i64** %506, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %507, !tbaa !5
  %508 = getelementptr inbounds i64*, i64** %507, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %508, !tbaa !5
  %509 = getelementptr inbounds i64*, i64** %508, i64 1
  store i64* %l_1256, i64** %509, !tbaa !5
  %510 = getelementptr inbounds i64*, i64** %509, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %510, !tbaa !5
  %511 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %477, i64 1
  %512 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %511, i64 0, i64 0
  %513 = getelementptr inbounds [10 x i64*], [10 x i64*]* %512, i64 0, i64 0
  store i64* null, i64** %513, !tbaa !5
  %514 = getelementptr inbounds i64*, i64** %513, i64 1
  store i64* null, i64** %514, !tbaa !5
  %515 = getelementptr inbounds i64*, i64** %514, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %515, !tbaa !5
  %516 = getelementptr inbounds i64*, i64** %515, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %516, !tbaa !5
  %517 = getelementptr inbounds i64*, i64** %516, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %517, !tbaa !5
  %518 = getelementptr inbounds i64*, i64** %517, i64 1
  store i64* null, i64** %518, !tbaa !5
  %519 = getelementptr inbounds i64*, i64** %518, i64 1
  store i64* null, i64** %519, !tbaa !5
  %520 = getelementptr inbounds i64*, i64** %519, i64 1
  store i64* null, i64** %520, !tbaa !5
  %521 = getelementptr inbounds i64*, i64** %520, i64 1
  store i64* null, i64** %521, !tbaa !5
  %522 = getelementptr inbounds i64*, i64** %521, i64 1
  store i64* null, i64** %522, !tbaa !5
  %523 = getelementptr inbounds [10 x i64*], [10 x i64*]* %512, i64 1
  %524 = getelementptr inbounds [10 x i64*], [10 x i64*]* %523, i64 0, i64 0
  store i64* %l_1256, i64** %524, !tbaa !5
  %525 = getelementptr inbounds i64*, i64** %524, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %525, !tbaa !5
  %526 = getelementptr inbounds i64*, i64** %525, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 3), i64** %526, !tbaa !5
  %527 = getelementptr inbounds i64*, i64** %526, i64 1
  store i64* null, i64** %527, !tbaa !5
  %528 = getelementptr inbounds i64*, i64** %527, i64 1
  store i64* %l_1256, i64** %528, !tbaa !5
  %529 = getelementptr inbounds i64*, i64** %528, i64 1
  store i64* %l_1256, i64** %529, !tbaa !5
  %530 = getelementptr inbounds i64*, i64** %529, i64 1
  store i64* %l_1256, i64** %530, !tbaa !5
  %531 = getelementptr inbounds i64*, i64** %530, i64 1
  store i64* %l_1256, i64** %531, !tbaa !5
  %532 = getelementptr inbounds i64*, i64** %531, i64 1
  store i64* %l_1256, i64** %532, !tbaa !5
  %533 = getelementptr inbounds i64*, i64** %532, i64 1
  store i64* null, i64** %533, !tbaa !5
  %534 = getelementptr inbounds [10 x i64*], [10 x i64*]* %523, i64 1
  %535 = getelementptr inbounds [10 x i64*], [10 x i64*]* %534, i64 0, i64 0
  store i64* null, i64** %535, !tbaa !5
  %536 = getelementptr inbounds i64*, i64** %535, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %536, !tbaa !5
  %537 = getelementptr inbounds i64*, i64** %536, i64 1
  store i64* null, i64** %537, !tbaa !5
  %538 = getelementptr inbounds i64*, i64** %537, i64 1
  store i64* null, i64** %538, !tbaa !5
  %539 = getelementptr inbounds i64*, i64** %538, i64 1
  store i64* null, i64** %539, !tbaa !5
  %540 = getelementptr inbounds i64*, i64** %539, i64 1
  store i64* null, i64** %540, !tbaa !5
  %541 = getelementptr inbounds i64*, i64** %540, i64 1
  store i64* null, i64** %541, !tbaa !5
  %542 = getelementptr inbounds i64*, i64** %541, i64 1
  store i64* null, i64** %542, !tbaa !5
  %543 = getelementptr inbounds i64*, i64** %542, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %543, !tbaa !5
  %544 = getelementptr inbounds i64*, i64** %543, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %544, !tbaa !5
  %545 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %511, i64 1
  %546 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %545, i64 0, i64 0
  %547 = getelementptr inbounds [10 x i64*], [10 x i64*]* %546, i64 0, i64 0
  store i64* null, i64** %547, !tbaa !5
  %548 = getelementptr inbounds i64*, i64** %547, i64 1
  store i64* null, i64** %548, !tbaa !5
  %549 = getelementptr inbounds i64*, i64** %548, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %549, !tbaa !5
  %550 = getelementptr inbounds i64*, i64** %549, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %550, !tbaa !5
  %551 = getelementptr inbounds i64*, i64** %550, i64 1
  store i64* %l_1256, i64** %551, !tbaa !5
  %552 = getelementptr inbounds i64*, i64** %551, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %552, !tbaa !5
  %553 = getelementptr inbounds i64*, i64** %552, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %553, !tbaa !5
  %554 = getelementptr inbounds i64*, i64** %553, i64 1
  store i64* null, i64** %554, !tbaa !5
  %555 = getelementptr inbounds i64*, i64** %554, i64 1
  store i64* null, i64** %555, !tbaa !5
  %556 = getelementptr inbounds i64*, i64** %555, i64 1
  store i64* %l_1256, i64** %556, !tbaa !5
  %557 = getelementptr inbounds [10 x i64*], [10 x i64*]* %546, i64 1
  %558 = getelementptr inbounds [10 x i64*], [10 x i64*]* %557, i64 0, i64 0
  store i64* null, i64** %558, !tbaa !5
  %559 = getelementptr inbounds i64*, i64** %558, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %559, !tbaa !5
  %560 = getelementptr inbounds i64*, i64** %559, i64 1
  store i64* null, i64** %560, !tbaa !5
  %561 = getelementptr inbounds i64*, i64** %560, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %561, !tbaa !5
  %562 = getelementptr inbounds i64*, i64** %561, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 2, i64 0, i64 0), i64** %562, !tbaa !5
  %563 = getelementptr inbounds i64*, i64** %562, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %563, !tbaa !5
  %564 = getelementptr inbounds i64*, i64** %563, i64 1
  store i64* null, i64** %564, !tbaa !5
  %565 = getelementptr inbounds i64*, i64** %564, i64 1
  store i64* %l_1256, i64** %565, !tbaa !5
  %566 = getelementptr inbounds i64*, i64** %565, i64 1
  store i64* null, i64** %566, !tbaa !5
  %567 = getelementptr inbounds i64*, i64** %566, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 4), i64** %567, !tbaa !5
  %568 = getelementptr inbounds [10 x i64*], [10 x i64*]* %557, i64 1
  %569 = getelementptr inbounds [10 x i64*], [10 x i64*]* %568, i64 0, i64 0
  store i64* null, i64** %569, !tbaa !5
  %570 = getelementptr inbounds i64*, i64** %569, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %570, !tbaa !5
  %571 = getelementptr inbounds i64*, i64** %570, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 1, i64 3), i64** %571, !tbaa !5
  %572 = getelementptr inbounds i64*, i64** %571, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 5, i64 4, i64 2), i64** %572, !tbaa !5
  %573 = getelementptr inbounds i64*, i64** %572, i64 1
  store i64* null, i64** %573, !tbaa !5
  %574 = getelementptr inbounds i64*, i64** %573, i64 1
  store i64* getelementptr inbounds ([6 x [5 x [5 x i64]]], [6 x [5 x [5 x i64]]]* @g_70, i32 0, i64 1, i64 1, i64 0), i64** %574, !tbaa !5
  %575 = getelementptr inbounds i64*, i64** %574, i64 1
  store i64* %l_1256, i64** %575, !tbaa !5
  %576 = getelementptr inbounds i64*, i64** %575, i64 1
  store i64* null, i64** %576, !tbaa !5
  %577 = getelementptr inbounds i64*, i64** %576, i64 1
  store i64* null, i64** %577, !tbaa !5
  %578 = getelementptr inbounds i64*, i64** %577, i64 1
  store i64* %l_1256, i64** %578, !tbaa !5
  %579 = bitcast [1 x [1 x [10 x i64**]]]* %l_1319 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %579) #1
  %580 = getelementptr inbounds [1 x [1 x [10 x i64**]]], [1 x [1 x [10 x i64**]]]* %l_1319, i64 0, i64 0
  %581 = getelementptr inbounds [1 x [10 x i64**]], [1 x [10 x i64**]]* %580, i64 0, i64 0
  %582 = getelementptr inbounds [10 x i64**], [10 x i64**]* %581, i64 0, i64 0
  %583 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 1
  %584 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %583, i32 0, i64 0
  %585 = getelementptr inbounds [10 x i64*], [10 x i64*]* %584, i32 0, i64 4
  store i64** %585, i64*** %582, !tbaa !5
  %586 = getelementptr inbounds i64**, i64*** %582, i64 1
  %587 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 0
  %588 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %587, i32 0, i64 0
  %589 = getelementptr inbounds [10 x i64*], [10 x i64*]* %588, i32 0, i64 5
  store i64** %589, i64*** %586, !tbaa !5
  %590 = getelementptr inbounds i64**, i64*** %586, i64 1
  %591 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 1
  %592 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %591, i32 0, i64 0
  %593 = getelementptr inbounds [10 x i64*], [10 x i64*]* %592, i32 0, i64 4
  store i64** %593, i64*** %590, !tbaa !5
  %594 = getelementptr inbounds i64**, i64*** %590, i64 1
  %595 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 0
  %596 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %595, i32 0, i64 0
  %597 = getelementptr inbounds [10 x i64*], [10 x i64*]* %596, i32 0, i64 5
  store i64** %597, i64*** %594, !tbaa !5
  %598 = getelementptr inbounds i64**, i64*** %594, i64 1
  %599 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 1
  %600 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %599, i32 0, i64 0
  %601 = getelementptr inbounds [10 x i64*], [10 x i64*]* %600, i32 0, i64 4
  store i64** %601, i64*** %598, !tbaa !5
  %602 = getelementptr inbounds i64**, i64*** %598, i64 1
  %603 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 0
  %604 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %603, i32 0, i64 0
  %605 = getelementptr inbounds [10 x i64*], [10 x i64*]* %604, i32 0, i64 5
  store i64** %605, i64*** %602, !tbaa !5
  %606 = getelementptr inbounds i64**, i64*** %602, i64 1
  %607 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 1
  %608 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %607, i32 0, i64 0
  %609 = getelementptr inbounds [10 x i64*], [10 x i64*]* %608, i32 0, i64 4
  store i64** %609, i64*** %606, !tbaa !5
  %610 = getelementptr inbounds i64**, i64*** %606, i64 1
  %611 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 0
  %612 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %611, i32 0, i64 0
  %613 = getelementptr inbounds [10 x i64*], [10 x i64*]* %612, i32 0, i64 5
  store i64** %613, i64*** %610, !tbaa !5
  %614 = getelementptr inbounds i64**, i64*** %610, i64 1
  %615 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 1
  %616 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %615, i32 0, i64 0
  %617 = getelementptr inbounds [10 x i64*], [10 x i64*]* %616, i32 0, i64 4
  store i64** %617, i64*** %614, !tbaa !5
  %618 = getelementptr inbounds i64**, i64*** %614, i64 1
  %619 = getelementptr inbounds [6 x [3 x [10 x i64*]]], [6 x [3 x [10 x i64*]]]* %l_1320, i32 0, i64 0
  %620 = getelementptr inbounds [3 x [10 x i64*]], [3 x [10 x i64*]]* %619, i32 0, i64 0
  %621 = getelementptr inbounds [10 x i64*], [10 x i64*]* %620, i32 0, i64 5
  store i64** %621, i64*** %618, !tbaa !5
  %622 = bitcast i16***** %l_1328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %622) #1
  store i16**** @g_333, i16***** %l_1328, align 8, !tbaa !5
  %623 = bitcast [7 x i64*]* %l_1342 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %623) #1
  %624 = bitcast [7 x i64*]* %l_1342 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %624, i8* bitcast ([7 x i64*]* @func_1.l_1342 to i8*), i64 56, i32 16, i1 false)
  %625 = bitcast i32* %l_1360 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %625) #1
  store i32 -1, i32* %l_1360, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_1446) #1
  store i8 -7, i8* %l_1446, align 1, !tbaa !9
  %626 = bitcast i16* %l_1484 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %626) #1
  store i16 0, i16* %l_1484, align 2, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %l_1543) #1
  store i8 -66, i8* %l_1543, align 1, !tbaa !9
  %627 = bitcast [6 x [3 x i16*****]]* %l_1564 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %627) #1
  %628 = bitcast [6 x [3 x i16*****]]* %l_1564 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %628, i8* bitcast ([6 x [3 x i16*****]]* @func_1.l_1564 to i8*), i64 144, i32 16, i1 false)
  %629 = bitcast [1 x i64**]* %l_1592 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %629) #1
  %630 = bitcast i64**** %l_1591 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %630) #1
  %631 = getelementptr inbounds [1 x i64**], [1 x i64**]* %l_1592, i32 0, i64 0
  store i64*** %631, i64**** %l_1591, align 8, !tbaa !5
  %632 = bitcast [1 x [4 x [8 x i64****]]]* %l_1590 to i8*
  call void @llvm.lifetime.start(i64 256, i8* %632) #1
  %633 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i64 0, i64 0
  %634 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %633, i64 0, i64 0
  %635 = getelementptr inbounds [8 x i64****], [8 x i64****]* %634, i64 0, i64 0
  store i64**** null, i64***** %635, !tbaa !5
  %636 = getelementptr inbounds i64****, i64***** %635, i64 1
  store i64**** %l_1591, i64***** %636, !tbaa !5
  %637 = getelementptr inbounds i64****, i64***** %636, i64 1
  store i64**** %l_1591, i64***** %637, !tbaa !5
  %638 = getelementptr inbounds i64****, i64***** %637, i64 1
  store i64**** null, i64***** %638, !tbaa !5
  %639 = getelementptr inbounds i64****, i64***** %638, i64 1
  store i64**** null, i64***** %639, !tbaa !5
  %640 = getelementptr inbounds i64****, i64***** %639, i64 1
  store i64**** %l_1591, i64***** %640, !tbaa !5
  %641 = getelementptr inbounds i64****, i64***** %640, i64 1
  store i64**** %l_1591, i64***** %641, !tbaa !5
  %642 = getelementptr inbounds i64****, i64***** %641, i64 1
  store i64**** null, i64***** %642, !tbaa !5
  %643 = getelementptr inbounds [8 x i64****], [8 x i64****]* %634, i64 1
  %644 = getelementptr inbounds [8 x i64****], [8 x i64****]* %643, i64 0, i64 0
  store i64**** null, i64***** %644, !tbaa !5
  %645 = getelementptr inbounds i64****, i64***** %644, i64 1
  store i64**** %l_1591, i64***** %645, !tbaa !5
  %646 = getelementptr inbounds i64****, i64***** %645, i64 1
  store i64**** %l_1591, i64***** %646, !tbaa !5
  %647 = getelementptr inbounds i64****, i64***** %646, i64 1
  store i64**** null, i64***** %647, !tbaa !5
  %648 = getelementptr inbounds i64****, i64***** %647, i64 1
  store i64**** null, i64***** %648, !tbaa !5
  %649 = getelementptr inbounds i64****, i64***** %648, i64 1
  store i64**** %l_1591, i64***** %649, !tbaa !5
  %650 = getelementptr inbounds i64****, i64***** %649, i64 1
  store i64**** %l_1591, i64***** %650, !tbaa !5
  %651 = getelementptr inbounds i64****, i64***** %650, i64 1
  store i64**** null, i64***** %651, !tbaa !5
  %652 = getelementptr inbounds [8 x i64****], [8 x i64****]* %643, i64 1
  %653 = getelementptr inbounds [8 x i64****], [8 x i64****]* %652, i64 0, i64 0
  store i64**** null, i64***** %653, !tbaa !5
  %654 = getelementptr inbounds i64****, i64***** %653, i64 1
  store i64**** %l_1591, i64***** %654, !tbaa !5
  %655 = getelementptr inbounds i64****, i64***** %654, i64 1
  store i64**** %l_1591, i64***** %655, !tbaa !5
  %656 = getelementptr inbounds i64****, i64***** %655, i64 1
  store i64**** null, i64***** %656, !tbaa !5
  %657 = getelementptr inbounds i64****, i64***** %656, i64 1
  store i64**** null, i64***** %657, !tbaa !5
  %658 = getelementptr inbounds i64****, i64***** %657, i64 1
  store i64**** %l_1591, i64***** %658, !tbaa !5
  %659 = getelementptr inbounds i64****, i64***** %658, i64 1
  store i64**** %l_1591, i64***** %659, !tbaa !5
  %660 = getelementptr inbounds i64****, i64***** %659, i64 1
  store i64**** null, i64***** %660, !tbaa !5
  %661 = getelementptr inbounds [8 x i64****], [8 x i64****]* %652, i64 1
  %662 = getelementptr inbounds [8 x i64****], [8 x i64****]* %661, i64 0, i64 0
  store i64**** null, i64***** %662, !tbaa !5
  %663 = getelementptr inbounds i64****, i64***** %662, i64 1
  store i64**** %l_1591, i64***** %663, !tbaa !5
  %664 = getelementptr inbounds i64****, i64***** %663, i64 1
  store i64**** %l_1591, i64***** %664, !tbaa !5
  %665 = getelementptr inbounds i64****, i64***** %664, i64 1
  store i64**** null, i64***** %665, !tbaa !5
  %666 = getelementptr inbounds i64****, i64***** %665, i64 1
  store i64**** null, i64***** %666, !tbaa !5
  %667 = getelementptr inbounds i64****, i64***** %666, i64 1
  store i64**** %l_1591, i64***** %667, !tbaa !5
  %668 = getelementptr inbounds i64****, i64***** %667, i64 1
  store i64**** %l_1591, i64***** %668, !tbaa !5
  %669 = getelementptr inbounds i64****, i64***** %668, i64 1
  store i64**** null, i64***** %669, !tbaa !5
  %670 = bitcast [10 x i64*****]* %l_1589 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %670) #1
  %671 = getelementptr inbounds [10 x i64*****], [10 x i64*****]* %l_1589, i64 0, i64 0
  %672 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %673 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %672, i32 0, i64 1
  %674 = getelementptr inbounds [8 x i64****], [8 x i64****]* %673, i32 0, i64 7
  store i64***** %674, i64****** %671, !tbaa !5
  %675 = getelementptr inbounds i64*****, i64****** %671, i64 1
  %676 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %677 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %676, i32 0, i64 1
  %678 = getelementptr inbounds [8 x i64****], [8 x i64****]* %677, i32 0, i64 7
  store i64***** %678, i64****** %675, !tbaa !5
  %679 = getelementptr inbounds i64*****, i64****** %675, i64 1
  %680 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %681 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %680, i32 0, i64 1
  %682 = getelementptr inbounds [8 x i64****], [8 x i64****]* %681, i32 0, i64 7
  store i64***** %682, i64****** %679, !tbaa !5
  %683 = getelementptr inbounds i64*****, i64****** %679, i64 1
  %684 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %685 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %684, i32 0, i64 1
  %686 = getelementptr inbounds [8 x i64****], [8 x i64****]* %685, i32 0, i64 7
  store i64***** %686, i64****** %683, !tbaa !5
  %687 = getelementptr inbounds i64*****, i64****** %683, i64 1
  %688 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %689 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %688, i32 0, i64 1
  %690 = getelementptr inbounds [8 x i64****], [8 x i64****]* %689, i32 0, i64 7
  store i64***** %690, i64****** %687, !tbaa !5
  %691 = getelementptr inbounds i64*****, i64****** %687, i64 1
  %692 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %693 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %692, i32 0, i64 1
  %694 = getelementptr inbounds [8 x i64****], [8 x i64****]* %693, i32 0, i64 7
  store i64***** %694, i64****** %691, !tbaa !5
  %695 = getelementptr inbounds i64*****, i64****** %691, i64 1
  %696 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %697 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %696, i32 0, i64 1
  %698 = getelementptr inbounds [8 x i64****], [8 x i64****]* %697, i32 0, i64 7
  store i64***** %698, i64****** %695, !tbaa !5
  %699 = getelementptr inbounds i64*****, i64****** %695, i64 1
  %700 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %701 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %700, i32 0, i64 1
  %702 = getelementptr inbounds [8 x i64****], [8 x i64****]* %701, i32 0, i64 7
  store i64***** %702, i64****** %699, !tbaa !5
  %703 = getelementptr inbounds i64*****, i64****** %699, i64 1
  %704 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %705 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %704, i32 0, i64 1
  %706 = getelementptr inbounds [8 x i64****], [8 x i64****]* %705, i32 0, i64 7
  store i64***** %706, i64****** %703, !tbaa !5
  %707 = getelementptr inbounds i64*****, i64****** %703, i64 1
  %708 = getelementptr inbounds [1 x [4 x [8 x i64****]]], [1 x [4 x [8 x i64****]]]* %l_1590, i32 0, i64 0
  %709 = getelementptr inbounds [4 x [8 x i64****]], [4 x [8 x i64****]]* %708, i32 0, i64 1
  %710 = getelementptr inbounds [8 x i64****], [8 x i64****]* %709, i32 0, i64 7
  store i64***** %710, i64****** %707, !tbaa !5
  %711 = bitcast i64***** %l_1594 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %711) #1
  store i64**** null, i64***** %l_1594, align 8, !tbaa !5
  %712 = bitcast [1 x i64*****]* %l_1593 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %712) #1
  %713 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %713) #1
  %714 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %714) #1
  %715 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %715) #1
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %716

; <label>:716                                     ; preds = %726, %367
  %717 = load i32, i32* %i6, align 4, !tbaa !1
  %718 = icmp slt i32 %717, 1
  br i1 %718, label %719, label %729

; <label>:719                                     ; preds = %716
  %720 = getelementptr inbounds [3 x [7 x [3 x i64*]]], [3 x [7 x [3 x i64*]]]* %l_1158, i32 0, i64 1
  %721 = getelementptr inbounds [7 x [3 x i64*]], [7 x [3 x i64*]]* %720, i32 0, i64 2
  %722 = getelementptr inbounds [3 x i64*], [3 x i64*]* %721, i32 0, i64 1
  %723 = load i32, i32* %i6, align 4, !tbaa !1
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds [1 x i64**], [1 x i64**]* %l_1592, i32 0, i64 %724
  store i64** %722, i64*** %725, align 8, !tbaa !5
  br label %726

; <label>:726                                     ; preds = %719
  %727 = load i32, i32* %i6, align 4, !tbaa !1
  %728 = add nsw i32 %727, 1
  store i32 %728, i32* %i6, align 4, !tbaa !1
  br label %716

; <label>:729                                     ; preds = %716
  store i32 0, i32* %i6, align 4, !tbaa !1
  br label %730

; <label>:730                                     ; preds = %737, %729
  %731 = load i32, i32* %i6, align 4, !tbaa !1
  %732 = icmp slt i32 %731, 1
  br i1 %732, label %733, label %740

; <label>:733                                     ; preds = %730
  %734 = load i32, i32* %i6, align 4, !tbaa !1
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [1 x i64*****], [1 x i64*****]* %l_1593, i32 0, i64 %735
  store i64***** %l_1594, i64****** %736, align 8, !tbaa !5
  br label %737

; <label>:737                                     ; preds = %733
  %738 = load i32, i32* %i6, align 4, !tbaa !1
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %i6, align 4, !tbaa !1
  br label %730

; <label>:740                                     ; preds = %730
  %741 = load i32**, i32*** %l_1212, align 8, !tbaa !5
  %742 = load i32*, i32** %741, align 8, !tbaa !5
  %743 = load i32, i32* %742, align 4, !tbaa !1
  %744 = trunc i32 %743 to i16
  %745 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %744, i16 signext 26146)
  %746 = sext i16 %745 to i32
  %747 = load i32*, i32** @g_160, align 8, !tbaa !5
  store i32 %746, i32* %747, align 4, !tbaa !1
  %748 = bitcast i32* %k8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %748) #1
  %749 = bitcast i32* %j7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %749) #1
  %750 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %750) #1
  %751 = bitcast [1 x i64*****]* %l_1593 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %751) #1
  %752 = bitcast i64***** %l_1594 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %752) #1
  %753 = bitcast [10 x i64*****]* %l_1589 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %753) #1
  %754 = bitcast [1 x [4 x [8 x i64****]]]* %l_1590 to i8*
  call void @llvm.lifetime.end(i64 256, i8* %754) #1
  %755 = bitcast i64**** %l_1591 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %755) #1
  %756 = bitcast [1 x i64**]* %l_1592 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %756) #1
  %757 = bitcast [6 x [3 x i16*****]]* %l_1564 to i8*
  call void @llvm.lifetime.end(i64 144, i8* %757) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1543) #1
  %758 = bitcast i16* %l_1484 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %758) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1446) #1
  %759 = bitcast i32* %l_1360 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %759) #1
  %760 = bitcast [7 x i64*]* %l_1342 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %760) #1
  %761 = bitcast i16***** %l_1328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %761) #1
  %762 = bitcast [1 x [1 x [10 x i64**]]]* %l_1319 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %762) #1
  %763 = bitcast [6 x [3 x [10 x i64*]]]* %l_1320 to i8*
  call void @llvm.lifetime.end(i64 1440, i8* %763) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1258) #1
  %764 = bitcast i16* %l_1257 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %764) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1253) #1
  %765 = bitcast [3 x [7 x [9 x i16*]]]* %l_1240 to i8*
  call void @llvm.lifetime.end(i64 1512, i8* %765) #1
  %766 = bitcast [7 x [5 x i32*]]* %l_1239 to i8*
  call void @llvm.lifetime.end(i64 280, i8* %766) #1
  %767 = bitcast i32**** %l_1233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %767) #1
  br label %768

; <label>:768                                     ; preds = %740
  %769 = load i32, i32* @g_345, align 4, !tbaa !1
  %770 = sext i32 %769 to i64
  %771 = call i64 @safe_add_func_uint64_t_u_u(i64 %770, i64 2)
  %772 = trunc i64 %771 to i32
  store i32 %772, i32* @g_345, align 4, !tbaa !1
  br label %364

; <label>:773                                     ; preds = %364
  %774 = load volatile i32, i32* getelementptr inbounds ([6 x [2 x [6 x i32]]], [6 x [2 x [6 x i32]]]* @g_1089, i32 0, i64 5, i64 1, i64 2), align 4, !tbaa !1
  %775 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %775) #1
  %776 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %776) #1
  %777 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %777) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1641) #1
  %778 = bitcast i32* %l_1639 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %778) #1
  %779 = bitcast i16* %l_1601 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %779) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1583) #1
  %780 = bitcast i32* %l_1580 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %780) #1
  %781 = bitcast i16*** %l_1562 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %781) #1
  %782 = bitcast i8**** %l_1559 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %782) #1
  %783 = bitcast i64* %l_1445 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %783) #1
  %784 = bitcast i16* %l_1428 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %784) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1420) #1
  %785 = bitcast i64*** %l_1358 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %785) #1
  %786 = bitcast [10 x i32*]* %l_1304 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %786) #1
  %787 = bitcast i32** %l_1297 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %787) #1
  %788 = bitcast i16****** %l_1296 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %788) #1
  %789 = bitcast i64* %l_1273 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %789) #1
  %790 = bitcast i16****** %l_1268 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %790) #1
  %791 = bitcast i16****** %l_1267 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %791) #1
  %792 = bitcast i64* %l_1256 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %792) #1
  %793 = bitcast i16****** %l_1245 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %793) #1
  %794 = bitcast i16***** %l_1246 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %794) #1
  %795 = bitcast i16**** %l_1247 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %795) #1
  %796 = bitcast i16*** %l_1248 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %796) #1
  %797 = bitcast i16** %l_1238 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %797) #1
  %798 = bitcast i32*** %l_1212 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %798) #1
  %799 = bitcast i32* %l_1211 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %799) #1
  %800 = bitcast i32* %l_1192 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %800) #1
  %801 = bitcast i64*** %l_1157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %801) #1
  %802 = bitcast [3 x [7 x [3 x i64*]]]* %l_1158 to i8*
  call void @llvm.lifetime.end(i64 504, i8* %802) #1
  %803 = bitcast i32* %l_1148 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %803) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1144) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_1143) #1
  %804 = bitcast i32* %l_1142 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %804) #1
  %805 = bitcast i32* %l_4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %805) #1
  ret i32 %774
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i32 @func_10(i64 %p_11, i8 zeroext %p_12, i16 zeroext %p_13) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %l_38 = alloca [10 x i32*], align 16
  %l_53 = alloca i32*, align 8
  %l_952 = alloca i32, align 4
  %l_960 = alloca [7 x [4 x [3 x i32]]], align 16
  %l_1047 = alloca i32, align 4
  %l_1137 = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_18 = alloca i64, align 8
  %l_270 = alloca i32*, align 8
  %l_983 = alloca i32, align 4
  %l_989 = alloca i32, align 4
  %l_1048 = alloca [4 x i32], align 16
  %l_1054 = alloca i32, align 4
  %l_1056 = alloca i32, align 4
  %l_1057 = alloca i32, align 4
  %l_1059 = alloca i32, align 4
  %l_1061 = alloca i32, align 4
  %l_1111 = alloca i64*, align 8
  %l_1110 = alloca i64**, align 8
  %i1 = alloca i32, align 4
  %l_33 = alloca i32*, align 8
  %l_978 = alloca i32, align 4
  %l_980 = alloca i32, align 4
  %l_981 = alloca i32, align 4
  %l_985 = alloca i32, align 4
  %l_987 = alloca i32, align 4
  store i64 %p_11, i64* %1, align 8, !tbaa !7
  store i8 %p_12, i8* %2, align 1, !tbaa !9
  store i16 %p_13, i16* %3, align 2, !tbaa !10
  %4 = bitcast [10 x i32*]* %l_38 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %4) #1
  %5 = bitcast [10 x i32*]* %l_38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([10 x i32*]* @func_10.l_38 to i8*), i64 80, i32 16, i1 false)
  %6 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i32* getelementptr inbounds ([6 x [1 x i32]], [6 x [1 x i32]]* @g_17, i32 0, i64 2, i64 0), i32** %l_53, align 8, !tbaa !5
  %7 = bitcast i32* %l_952 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 383376616, i32* %l_952, align 4, !tbaa !1
  %8 = bitcast [7 x [4 x [3 x i32]]]* %l_960 to i8*
  call void @llvm.lifetime.start(i64 336, i8* %8) #1
  %9 = bitcast [7 x [4 x [3 x i32]]]* %l_960 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* bitcast ([7 x [4 x [3 x i32]]]* @func_10.l_960 to i8*), i64 336, i32 16, i1 false)
  %10 = bitcast i32* %l_1047 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -2045454050, i32* %l_1047, align 4, !tbaa !1
  %11 = bitcast i16* %l_1137 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %11) #1
  store i16 -31012, i16* %l_1137, align 2, !tbaa !10
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i64 -10, i64* %1, align 8, !tbaa !7
  br label %15

; <label>:15                                      ; preds = %71, %0
  %16 = load i64, i64* %1, align 8, !tbaa !7
  %17 = icmp ult i64 %16, 38
  br i1 %17, label %18, label %74

; <label>:18                                      ; preds = %15
  %19 = bitcast i64* %l_18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i64 7, i64* %l_18, align 8, !tbaa !7
  %20 = bitcast i32** %l_270 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32* @g_156, i32** %l_270, align 8, !tbaa !5
  %21 = bitcast i32* %l_983 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 -293946968, i32* %l_983, align 4, !tbaa !1
  %22 = bitcast i32* %l_989 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 1536247042, i32* %l_989, align 4, !tbaa !1
  %23 = bitcast [4 x i32]* %l_1048 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = bitcast [4 x i32]* %l_1048 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast ([4 x i32]* @func_10.l_1048 to i8*), i64 16, i32 16, i1 false)
  %25 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  store i32 -5, i32* %l_1054, align 4, !tbaa !1
  %26 = bitcast i32* %l_1056 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 -1, i32* %l_1056, align 4, !tbaa !1
  %27 = bitcast i32* %l_1057 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 957283001, i32* %l_1057, align 4, !tbaa !1
  %28 = bitcast i32* %l_1059 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 3, i32* %l_1059, align 4, !tbaa !1
  %29 = bitcast i32* %l_1061 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 -1611124481, i32* %l_1061, align 4, !tbaa !1
  %30 = bitcast i64** %l_1111 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i64* @g_132, i64** %l_1111, align 8, !tbaa !5
  %31 = bitcast i64*** %l_1110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i64** %l_1111, i64*** %l_1110, align 8, !tbaa !5
  %32 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i16, i16* %3, align 2, !tbaa !10
  %34 = zext i16 %33 to i64
  %35 = load i64, i64* %l_18, align 8, !tbaa !7
  %36 = and i64 %35, %34
  store i64 %36, i64* %l_18, align 8, !tbaa !7
  store i8 0, i8* %2, align 1, !tbaa !9
  br label %37

; <label>:37                                      ; preds = %54, %18
  %38 = load i8, i8* %2, align 1, !tbaa !9
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 56
  br i1 %40, label %41, label %57

; <label>:41                                      ; preds = %37
  %42 = bitcast i32** %l_33 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i32* null, i32** %l_33, align 8, !tbaa !5
  %43 = bitcast i32* %l_978 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  store i32 2044490139, i32* %l_978, align 4, !tbaa !1
  %44 = bitcast i32* %l_980 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  store i32 1, i32* %l_980, align 4, !tbaa !1
  %45 = bitcast i32* %l_981 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  store i32 2130250816, i32* %l_981, align 4, !tbaa !1
  %46 = bitcast i32* %l_985 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 -1038714427, i32* %l_985, align 4, !tbaa !1
  %47 = bitcast i32* %l_987 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 0, i32* %l_987, align 4, !tbaa !1
  %48 = bitcast i32* %l_987 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %l_985 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %l_981 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %l_980 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %l_978 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32** %l_33 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  br label %54

; <label>:54                                      ; preds = %41
  %55 = load i8, i8* %2, align 1, !tbaa !9
  %56 = add i8 %55, 1
  store i8 %56, i8* %2, align 1, !tbaa !9
  br label %37

; <label>:57                                      ; preds = %37
  %58 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i64*** %l_1110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i64** %l_1111 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  %61 = bitcast i32* %l_1061 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %l_1059 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32* %l_1057 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %l_1056 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %l_1054 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast [4 x i32]* %l_1048 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %66) #1
  %67 = bitcast i32* %l_989 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %l_983 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32** %l_270 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i64* %l_18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  br label %71

; <label>:71                                      ; preds = %57
  %72 = load i64, i64* %1, align 8, !tbaa !7
  %73 = add i64 %72, 1
  store i64 %73, i64* %1, align 8, !tbaa !7
  br label %15

; <label>:74                                      ; preds = %15
  %75 = load i32*, i32** %l_53, align 8, !tbaa !5
  %76 = load i32, i32* %75, align 4, !tbaa !1
  %77 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i16* %l_1137 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %80) #1
  %81 = bitcast i32* %l_1047 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast [7 x [4 x [3 x i32]]]* %l_960 to i8*
  call void @llvm.lifetime.end(i64 336, i8* %82) #1
  %83 = bitcast i32* %l_952 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32** %l_53 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast [10 x i32*]* %l_38 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %85) #1
  ret i32 %76
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
define internal i32* @func_39(i32* %p_40, i8 zeroext %p_41, i32 %p_42, i64 %p_43, i32* %p_44) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %l_371 = alloca [1 x i32*], align 8
  %i = alloca i32, align 4
  store i32* %p_40, i32** %1, align 8, !tbaa !5
  store i8 %p_41, i8* %2, align 1, !tbaa !9
  store i32 %p_42, i32* %3, align 4, !tbaa !1
  store i64 %p_43, i64* %4, align 8, !tbaa !7
  store i32* %p_44, i32** %5, align 8, !tbaa !5
  %6 = bitcast [1 x i32*]* %l_371 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %8

; <label>:8                                       ; preds = %15, %0
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %18

; <label>:11                                      ; preds = %8
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_371, i32 0, i64 %13
  store i32* @g_76, i32** %14, align 8, !tbaa !5
  br label %15

; <label>:15                                      ; preds = %11
  %16 = load i32, i32* %i, align 4, !tbaa !1
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %i, align 4, !tbaa !1
  br label %8

; <label>:18                                      ; preds = %8
  %19 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_371, i32 0, i64 0
  %20 = load i32*, i32** %19, align 8, !tbaa !5
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast [1 x i32*]* %l_371 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32* %20
}

; Function Attrs: nounwind uwtable
define internal i32* @func_56(i64 %p_57, i32* %p_58, i8 zeroext %p_59, i64 %p_60, i16 zeroext %p_61) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  store i64 %p_57, i64* %1, align 8, !tbaa !7
  store i32* %p_58, i32** %2, align 8, !tbaa !5
  store i8 %p_59, i8* %3, align 1, !tbaa !9
  store i64 %p_60, i64* %4, align 8, !tbaa !7
  store i16 %p_61, i16* %5, align 2, !tbaa !10
  %6 = load i32*, i32** %2, align 8, !tbaa !5
  ret i32* %6
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
