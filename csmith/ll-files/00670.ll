; ModuleID = '00670.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 1476220004, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_3 = internal global i32 1545096272, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_3\00", align 1
@g_7 = internal global i32 697605628, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"g_7\00", align 1
@g_8 = internal global [2 x i32] [i32 -869926305, i32 -869926305], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"g_8[i]\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_9 = internal global i32 2024521990, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"g_9\00", align 1
@g_10 = internal global [1 x i32] [i32 1], align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"g_10[i]\00", align 1
@g_12 = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_12\00", align 1
@g_16 = internal global i8 7, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"g_16\00", align 1
@g_17 = internal global i16 12955, align 2
@.str.10 = private unnamed_addr constant [5 x i8] c"g_17\00", align 1
@g_20 = internal global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"g_20\00", align 1
@g_22 = internal global i8 -5, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"g_22\00", align 1
@g_23 = internal global [10 x [5 x [5 x i64]]] [[5 x [5 x i64]] [[5 x i64] [i64 -8, i64 0, i64 -5463672987759898981, i64 8002157872041612414, i64 8002157872041612414], [5 x i64] [i64 -8, i64 -9, i64 -8, i64 -3039199270570795537, i64 -8022327805907350352], [5 x i64] [i64 -4218816663845175327, i64 -8, i64 -1, i64 3625951987370320905, i64 1], [5 x i64] [i64 8002157872041612414, i64 -4, i64 -8022327805907350352, i64 6404350771423332566, i64 -8510220382439123342], [5 x i64] [i64 1138223517527385516, i64 -5463672987759898981, i64 -1, i64 1, i64 1]], [5 x [5 x i64]] [[5 x i64] [i64 -7394227052289610953, i64 -8022327805907350352, i64 -8, i64 0, i64 -5463672987759898981], [5 x i64] [i64 8690650768660993064, i64 1, i64 -5463672987759898981, i64 -7394227052289610953, i64 -5463672987759898981], [5 x i64] [i64 -3039199270570795537, i64 -3039199270570795537, i64 1138223517527385516, i64 -5870971524942371094, i64 1], [5 x i64] [i64 -1269670655596157913, i64 -5870971524942371094, i64 -3696057005410479479, i64 8002157872041612414, i64 -9], [5 x i64] [i64 1, i64 -3039199270570795537, i64 1, i64 -8, i64 -3696057005410479479]], [5 x [5 x i64]] [[5 x i64] [i64 1, i64 0, i64 -7394227052289610953, i64 -8022327805907350352, i64 -8], [5 x i64] [i64 -1269670655596157913, i64 1, i64 8002157872041612414, i64 4, i64 -5870971524942371094], [5 x i64] [i64 -7394227052289610953, i64 3625951987370320905, i64 4, i64 4, i64 3625951987370320905], [5 x i64] [i64 -9, i64 -8, i64 -3039199270570795537, i64 -8022327805907350352, i64 1], [5 x i64] [i64 1138223517527385516, i64 -927419863690286371, i64 -5463672987759898981, i64 -8, i64 4]], [5 x [5 x i64]] [[5 x i64] [i64 -8510220382439123342, i64 -7394227052289610953, i64 -1, i64 8002157872041612414, i64 1138223517527385516], [5 x i64] [i64 1138223517527385516, i64 6404350771423332566, i64 0, i64 0, i64 0], [5 x i64] [i64 -9, i64 1830354830169085173, i64 3625951987370320905, i64 0, i64 -8022327805907350352], [5 x i64] [i64 -7394227052289610953, i64 1, i64 3625951987370320905, i64 1, i64 -7394227052289610953], [5 x i64] [i64 -1269670655596157913, i64 -1, i64 0, i64 -3696057005410479479, i64 1]], [5 x [5 x i64]] [[5 x i64] [i64 1, i64 1, i64 -1, i64 7349530102100116370, i64 -4], [5 x i64] [i64 1, i64 1138223517527385516, i64 -5463672987759898981, i64 -1, i64 1], [5 x i64] [i64 -4218816663845175327, i64 7349530102100116370, i64 -3039199270570795537, i64 1, i64 -7394227052289610953], [5 x i64] [i64 1, i64 8002157872041612414, i64 4, i64 -5870971524942371094, i64 -8022327805907350352], [5 x i64] [i64 -5463672987759898981, i64 8002157872041612414, i64 8002157872041612414, i64 -5463672987759898981, i64 0]], [5 x [5 x i64]] [[5 x i64] [i64 0, i64 7349530102100116370, i64 -7394227052289610953, i64 -4218816663845175327, i64 1138223517527385516], [5 x i64] [i64 -4, i64 1138223517527385516, i64 1, i64 8690650768660993064, i64 4], [5 x i64] [i64 -5870971524942371094, i64 1, i64 -8022327805907350352, i64 -4218816663845175327, i64 1], [5 x i64] [i64 8002157872041612414, i64 -1, i64 -4, i64 -5463672987759898981, i64 3625951987370320905], [5 x i64] [i64 6404350771423332566, i64 1, i64 -927419863690286371, i64 -5870971524942371094, i64 -5870971524942371094]], [5 x [5 x i64]] [[5 x i64] [i64 6404350771423332566, i64 1830354830169085173, i64 6404350771423332566, i64 1, i64 -8], [5 x i64] [i64 8002157872041612414, i64 6404350771423332566, i64 8690650768660993064, i64 -1, i64 -3696057005410479479], [5 x i64] [i64 -5870971524942371094, i64 -7394227052289610953, i64 -8, i64 7349530102100116370, i64 -9], [5 x i64] [i64 -4, i64 -927419863690286371, i64 8690650768660993064, i64 -3696057005410479479, i64 -8510220382439123342], [5 x i64] [i64 0, i64 -8, i64 6404350771423332566, i64 1, i64 -927419863690286371]], [5 x [5 x i64]] [[5 x i64] [i64 -5463672987759898981, i64 3625951987370320905, i64 -927419863690286371, i64 0, i64 -927419863690286371], [5 x i64] [i64 1, i64 1, i64 -4, i64 0, i64 -8510220382439123342], [5 x i64] [i64 -4218816663845175327, i64 0, i64 -8022327805907350352, i64 8002157872041612414, i64 -9], [5 x i64] [i64 1, i64 -3039199270570795537, i64 1, i64 -8, i64 -3696057005410479479], [5 x i64] [i64 1, i64 0, i64 -7394227052289610953, i64 -8022327805907350352, i64 -8]], [5 x [5 x i64]] [[5 x i64] [i64 -1269670655596157913, i64 1, i64 8002157872041612414, i64 4, i64 -5870971524942371094], [5 x i64] [i64 -7394227052289610953, i64 3625951987370320905, i64 4, i64 4, i64 3625951987370320905], [5 x i64] [i64 -9, i64 -8, i64 -3039199270570795537, i64 -8022327805907350352, i64 1], [5 x i64] [i64 1138223517527385516, i64 -927419863690286371, i64 -5463672987759898981, i64 -8, i64 4], [5 x i64] [i64 -8510220382439123342, i64 -7394227052289610953, i64 -1, i64 8002157872041612414, i64 1138223517527385516]], [5 x [5 x i64]] [[5 x i64] [i64 1138223517527385516, i64 6404350771423332566, i64 0, i64 0, i64 0], [5 x i64] [i64 -9, i64 1830354830169085173, i64 3625951987370320905, i64 0, i64 -8], [5 x i64] [i64 0, i64 -8510220382439123342, i64 -1, i64 -8510220382439123342, i64 0], [5 x i64] [i64 -4218816663845175327, i64 8690650768660993064, i64 -1, i64 -8022327805907350352, i64 -3696057005410479479], [5 x i64] [i64 -8510220382439123342, i64 3625951987370320905, i64 0, i64 1138223517527385516, i64 -7394227052289610953]]], align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"g_23[i][j][k]\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_68 = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"g_68\00", align 1
@g_84 = internal global i32 1, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"g_84\00", align 1
@g_96 = internal global i8 -6, align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"g_96\00", align 1
@g_104 = internal global i64 773560419655779445, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"g_104\00", align 1
@g_147 = internal global i32 6, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"g_147\00", align 1
@g_154 = internal global i32 1822366728, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"g_154\00", align 1
@g_175 = internal global i16 0, align 2
@.str.21 = private unnamed_addr constant [6 x i8] c"g_175\00", align 1
@g_182 = internal constant [3 x i64] [i64 -1, i64 -1, i64 -1], align 16
@.str.22 = private unnamed_addr constant [9 x i8] c"g_182[i]\00", align 1
@g_287 = internal global i32 1, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_287\00", align 1
@g_289 = internal global i16 0, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_289\00", align 1
@g_291 = internal global i32 -1993741683, align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"g_291\00", align 1
@g_315 = internal global i16 -28249, align 2
@.str.26 = private unnamed_addr constant [6 x i8] c"g_315\00", align 1
@g_317 = internal global i16 -16070, align 2
@.str.27 = private unnamed_addr constant [6 x i8] c"g_317\00", align 1
@g_331 = internal global [6 x [10 x i8]] [[10 x i8] c"\01k\02\FE66\FE\02k\01", [10 x i8] c"6\FE\02k\016k\01k6", [10 x i8] c"\01\FE\00\FE\01\EF\FE\01\09\01", [10 x i8] c"\01k\02\FE66\FE\02k\01", [10 x i8] c"6\FE\02k\016k\01k6", [10 x i8] c"\01\FE\00\FE\01\EF\FE\01\09\01"], align 16
@.str.28 = private unnamed_addr constant [12 x i8] c"g_331[i][j]\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_362 = internal global i32 1357649361, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"g_362\00", align 1
@g_375 = internal global i32 -1475805343, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"g_375\00", align 1
@g_393 = internal global i32 8, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_393\00", align 1
@g_428 = internal global i8 -1, align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"g_428\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"g_456\00", align 1
@g_504 = internal global [7 x [7 x i32]] [[7 x i32] [i32 -10, i32 752752938, i32 -10, i32 4, i32 -9, i32 -9, i32 4], [7 x i32] [i32 -10, i32 752752938, i32 -10, i32 4, i32 -9, i32 -9, i32 4], [7 x i32] [i32 -10, i32 752752938, i32 -10, i32 4, i32 -9, i32 -9, i32 4], [7 x i32] [i32 -10, i32 752752938, i32 -10, i32 4, i32 -9, i32 -9, i32 4], [7 x i32] [i32 -10, i32 752752938, i32 -10, i32 4, i32 -9, i32 -9, i32 4], [7 x i32] [i32 -10, i32 752752938, i32 -10, i32 4, i32 -9, i32 -9, i32 4], [7 x i32] [i32 -10, i32 752752938, i32 -10, i32 4, i32 -9, i32 -9, i32 4]], align 16
@.str.35 = private unnamed_addr constant [12 x i8] c"g_504[i][j]\00", align 1
@g_585 = internal global i32 1272868956, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"g_585\00", align 1
@g_660 = internal global [10 x i8] c"\07\07\07\07\07\07\07\07\07\07", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_660[i]\00", align 1
@g_662 = internal global i16 7977, align 2
@.str.38 = private unnamed_addr constant [6 x i8] c"g_662\00", align 1
@g_746 = internal global i16 -3, align 2
@.str.39 = private unnamed_addr constant [6 x i8] c"g_746\00", align 1
@g_807 = internal global i8 0, align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"g_807\00", align 1
@g_921 = internal global i8 20, align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"g_921\00", align 1
@g_1029 = internal global i32 -1, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1029\00", align 1
@g_1159 = internal global i8 8, align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1159\00", align 1
@g_1164 = internal constant i64 -6, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1164\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1443\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"g_1526\00", align 1
@g_1714 = internal global i16 16122, align 2
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1714\00", align 1
@g_1864 = internal global i16 7, align 2
@.str.48 = private unnamed_addr constant [7 x i8] c"g_1864\00", align 1
@g_1878 = internal global [8 x i32] [i32 -1643651484, i32 -1, i32 -1643651484, i32 -1, i32 -1643651484, i32 -1, i32 -1643651484, i32 -1], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"g_1878[i]\00", align 1
@g_2072 = internal global i16 7, align 2
@.str.50 = private unnamed_addr constant [7 x i8] c"g_2072\00", align 1
@g_2158 = internal global i64 1, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"g_2158\00", align 1
@g_2176 = internal global i64 -9038387264722927189, align 8
@.str.52 = private unnamed_addr constant [7 x i8] c"g_2176\00", align 1
@g_2184 = internal global i32 -1, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"g_2184\00", align 1
@g_2574 = internal global i64 -1, align 8
@.str.54 = private unnamed_addr constant [7 x i8] c"g_2574\00", align 1
@g_2576 = internal global i64 -1, align 8
@.str.55 = private unnamed_addr constant [7 x i8] c"g_2576\00", align 1
@g_2717 = internal global i16 7, align 2
@.str.56 = private unnamed_addr constant [7 x i8] c"g_2717\00", align 1
@g_2742 = internal global [2 x [7 x i64]] [[7 x i64] [i64 -8682434019279441697, i64 -8682434019279441697, i64 -8682434019279441697, i64 -8682434019279441697, i64 -8682434019279441697, i64 -8682434019279441697, i64 -8682434019279441697], [7 x i64] [i64 7277392053780375913, i64 -1, i64 7277392053780375913, i64 -1, i64 7277392053780375913, i64 -1, i64 7277392053780375913]], align 16
@.str.57 = private unnamed_addr constant [13 x i8] c"g_2742[i][j]\00", align 1
@g_2743 = internal global i32 -5, align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"g_2743\00", align 1
@g_3047 = internal global [7 x i16] [i16 26351, i16 26351, i16 26351, i16 26351, i16 26351, i16 26351, i16 26351], align 2
@.str.59 = private unnamed_addr constant [10 x i8] c"g_3047[i]\00", align 1
@g_3237 = internal global i64 9, align 8
@.str.60 = private unnamed_addr constant [7 x i8] c"g_3237\00", align 1
@g_3377 = internal global i32 0, align 4
@.str.61 = private unnamed_addr constant [7 x i8] c"g_3377\00", align 1
@g_3420 = internal global i16 1, align 2
@.str.62 = private unnamed_addr constant [7 x i8] c"g_3420\00", align 1
@g_3485 = internal global i8 30, align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"g_3485\00", align 1
@g_3535 = internal global i8 89, align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"g_3535\00", align 1
@g_3656 = internal global [6 x [1 x i16]] [[1 x i16] [i16 -7783], [1 x i16] [i16 -3], [1 x i16] [i16 -7783], [1 x i16] [i16 -7783], [1 x i16] [i16 -3], [1 x i16] [i16 -7783]], align 2
@.str.65 = private unnamed_addr constant [13 x i8] c"g_3656[i][j]\00", align 1
@g_3679 = internal global [4 x i32] [i32 103537952, i32 103537952, i32 103537952, i32 103537952], align 16
@.str.66 = private unnamed_addr constant [10 x i8] c"g_3679[i]\00", align 1
@g_3717 = internal global i16 1030, align 2
@.str.67 = private unnamed_addr constant [7 x i8] c"g_3717\00", align 1
@g_3793 = internal global i8 0, align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"g_3793\00", align 1
@g_3795 = internal global i32 2059774760, align 4
@.str.69 = private unnamed_addr constant [7 x i8] c"g_3795\00", align 1
@g_3796 = internal global i16 6, align 2
@.str.70 = private unnamed_addr constant [7 x i8] c"g_3796\00", align 1
@g_3811 = internal global [8 x i32] [i32 0, i32 1257072646, i32 0, i32 0, i32 1257072646, i32 0, i32 0, i32 1257072646], align 16
@.str.71 = private unnamed_addr constant [10 x i8] c"g_3811[i]\00", align 1
@g_4017 = internal global i16 -1, align 2
@.str.72 = private unnamed_addr constant [7 x i8] c"g_4017\00", align 1
@g_4218 = internal global i32 -133431167, align 4
@.str.73 = private unnamed_addr constant [7 x i8] c"g_4218\00", align 1
@g_4410 = internal global i32 2110683473, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"g_4410\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"g_4439\00", align 1
@g_4556 = internal global [5 x i64] zeroinitializer, align 16
@.str.76 = private unnamed_addr constant [10 x i8] c"g_4556[i]\00", align 1
@g_4606 = internal global i8 -7, align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"g_4606\00", align 1
@g_4619 = internal global i16 3, align 2
@.str.78 = private unnamed_addr constant [7 x i8] c"g_4619\00", align 1
@g_4814 = internal global i8 1, align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"g_4814\00", align 1
@g_4881 = internal global i16 -11631, align 2
@.str.80 = private unnamed_addr constant [7 x i8] c"g_4881\00", align 1
@g_4891 = internal global i64 -6668304071780289806, align 8
@.str.81 = private unnamed_addr constant [7 x i8] c"g_4891\00", align 1
@g_5172 = internal global i16 -9295, align 2
@.str.82 = private unnamed_addr constant [7 x i8] c"g_5172\00", align 1
@g_5251 = internal global i32 -4, align 4
@.str.83 = private unnamed_addr constant [7 x i8] c"g_5251\00", align 1
@g_5546 = internal global i64 -2031909372461676149, align 8
@.str.84 = private unnamed_addr constant [7 x i8] c"g_5546\00", align 1
@g_5551 = internal global [3 x [10 x i16]] [[10 x i16] [i16 17295, i16 -7, i16 17295, i16 -29593, i16 -29593, i16 17295, i16 -7, i16 17295, i16 -29593, i16 -29593], [10 x i16] [i16 17295, i16 -7, i16 17295, i16 -29593, i16 -29593, i16 17295, i16 -7, i16 17295, i16 -29593, i16 -29593], [10 x i16] [i16 17295, i16 -7, i16 17295, i16 -29593, i16 -29593, i16 17295, i16 -7, i16 17295, i16 -29593, i16 -29593]], align 16
@.str.85 = private unnamed_addr constant [13 x i8] c"g_5551[i][j]\00", align 1
@g_5641 = internal global [7 x [3 x [2 x i32]]] [[3 x [2 x i32]] [[2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857]], [3 x [2 x i32]] [[2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857]], [3 x [2 x i32]] [[2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857]], [3 x [2 x i32]] [[2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857]], [3 x [2 x i32]] [[2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857]], [3 x [2 x i32]] [[2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857]], [3 x [2 x i32]] [[2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857], [2 x i32] [i32 856718857, i32 856718857]]], align 16
@.str.86 = private unnamed_addr constant [16 x i8] c"g_5641[i][j][k]\00", align 1
@g_5865 = internal global i16 -1, align 2
@.str.87 = private unnamed_addr constant [7 x i8] c"g_5865\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_3606 = internal global i8** null, align 8
@g_3995 = internal global i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_10, i32 0, i32 0), align 8
@g_1737 = internal global i64** @g_1738, align 8
@g_5436 = internal global [8 x i8****] [i8**** null, i8**** @g_5437, i8**** @g_5437, i8**** null, i8**** @g_5437, i8**** @g_5437, i8**** null, i8**** @g_5437], align 16
@func_1.l_5658 = private unnamed_addr constant [8 x i8] c"\F9\FD\FD\F9\FD\FD\F9\FD", align 1
@g_402 = internal global [3 x [1 x [2 x i64**]]] [[1 x [2 x i64**]] [[2 x i64**] [i64** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [8 x i64*]]* @g_403 to i8*), i64 264) to i64**), i64** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [8 x i64*]]* @g_403 to i8*), i64 264) to i64**)]], [1 x [2 x i64**]] [[2 x i64**] [i64** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [8 x i64*]]* @g_403 to i8*), i64 264) to i64**), i64** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [8 x i64*]]* @g_403 to i8*), i64 264) to i64**)]], [1 x [2 x i64**]] [[2 x i64**] [i64** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [8 x i64*]]* @g_403 to i8*), i64 264) to i64**), i64** bitcast (i8* getelementptr (i8, i8* bitcast ([7 x [8 x i64*]]* @g_403 to i8*), i64 264) to i64**)]]], align 16
@g_1841 = internal global i32** null, align 8
@func_1.l_6 = private unnamed_addr constant [8 x i8] c"\01\01\01\01\01\01\01\01", align 1
@func_1.l_5391 = private unnamed_addr constant [8 x [4 x i32]] [[4 x i32] [i32 -263338816, i32 -171444387, i32 -171444387, i32 -263338816], [4 x i32] [i32 2, i32 -171444387, i32 -42474195, i32 -171444387], [4 x i32] [i32 -171444387, i32 5, i32 -42474195, i32 -42474195], [4 x i32] [i32 2, i32 -171444387, i32 -263338816, i32 5], [4 x i32] [i32 -42474195, i32 2, i32 -42474195, i32 -263338816], [4 x i32] [i32 -42474195, i32 -263338816, i32 -263338816, i32 -42474195], [4 x i32] [i32 -171444387, i32 -263338816, i32 5, i32 -263338816], [4 x i32] [i32 -263338816, i32 2, i32 5, i32 5]], align 16
@func_1.l_5399 = private unnamed_addr constant [5 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4], align 2
@g_1338 = internal global i32* @g_291, align 8
@func_1.l_13 = private unnamed_addr constant [5 x [7 x [7 x i16]]] [[7 x [7 x i16]] [[7 x i16] [i16 -1, i16 -27155, i16 -4, i16 -3432, i16 -8300, i16 5, i16 5], [7 x i16] [i16 -3580, i16 8, i16 -5, i16 8, i16 -3580, i16 -14674, i16 -28849], [7 x i16] [i16 -3, i16 4, i16 -27155, i16 -3432, i16 1, i16 -3432, i16 -27155], [7 x i16] [i16 -28849, i16 -28849, i16 1, i16 -5, i16 24300, i16 -3199, i16 7988], [7 x i16] [i16 -3, i16 -3432, i16 0, i16 0, i16 -3432, i16 -3, i16 1], [7 x i16] [i16 -3580, i16 1, i16 8, i16 -14665, i16 24300, i16 24300, i16 -14665], [7 x i16] [i16 -1, i16 15529, i16 -1, i16 5, i16 1, i16 -4, i16 -3]], [7 x [7 x i16]] [[7 x i16] [i16 8, i16 1, i16 -3580, i16 -3199, i16 -3580, i16 1, i16 8], [7 x i16] [i16 0, i16 -3432, i16 -3, i16 1, i16 -8300, i16 -4, i16 -8300], [7 x i16] [i16 1, i16 -28849, i16 -28849, i16 1, i16 -5, i16 24300, i16 -3199], [7 x i16] [i16 -27155, i16 4, i16 -3, i16 -1, i16 -1, i16 -3, i16 4], [7 x i16] [i16 -5, i16 8, i16 -3580, i16 -14674, i16 -28849, i16 -3199, i16 -3199], [7 x i16] [i16 -4, i16 -27155, i16 -1, i16 -27155, i16 -4, i16 -3432, i16 -8300], [7 x i16] [i16 7988, i16 24300, i16 8, i16 -14674, i16 -14665, i16 -14674, i16 8]], [7 x [7 x i16]] [[7 x i16] [i16 -8300, i16 -8300, i16 0, i16 -1, i16 4, i16 5, i16 -3], [7 x i16] [i16 7988, i16 -14674, i16 1, i16 1, i16 -14674, i16 7988, i16 -14665], [7 x i16] [i16 -4, i16 0, i16 -27155, i16 1, i16 4, i16 4, i16 1], [7 x i16] [i16 -5, i16 -23320, i16 -5, i16 -3199, i16 -14665, i16 -3580, i16 7988], [7 x i16] [i16 -27155, i16 0, i16 -4, i16 5, i16 -4, i16 0, i16 -27155], [7 x i16] [i16 1, i16 -14674, i16 7988, i16 -14665, i16 -28849, i16 -3580, i16 -28849], [7 x i16] [i16 0, i16 -8300, i16 -8300, i16 0, i16 -1, i16 4, i16 5]], [7 x [7 x i16]] [[7 x i16] [i16 8, i16 24300, i16 7988, i16 -5, i16 -5, i16 7988, i16 24300], [7 x i16] [i16 -1, i16 -27155, i16 -4, i16 -3432, i16 -8300, i16 5, i16 5], [7 x i16] [i16 7988, i16 -23320, i16 -14674, i16 -23320, i16 7988, i16 1, i16 -3199], [7 x i16] [i16 -1, i16 -4, i16 15529, i16 0, i16 4, i16 0, i16 15529], [7 x i16] [i16 -3199, i16 -3199, i16 -28849, i16 -14674, i16 -3580, i16 8, i16 -5], [7 x i16] [i16 -1, i16 0, i16 -8300, i16 -8300, i16 0, i16 -1, i16 4], [7 x i16] [i16 7988, i16 -28849, i16 -23320, i16 24300, i16 -3580, i16 -3580, i16 24300]], [7 x [7 x i16]] [[7 x i16] [i16 -3432, i16 1, i16 -3432, i16 -27155, i16 4, i16 -3, i16 -1], [7 x i16] [i16 -23320, i16 -28849, i16 7988, i16 8, i16 7988, i16 -28849, i16 -23320], [7 x i16] [i16 -8300, i16 0, i16 -1, i16 4, i16 5, i16 -3, i16 5], [7 x i16] [i16 -28849, i16 -3199, i16 -3199, i16 -28849, i16 -14674, i16 -3580, i16 8], [7 x i16] [i16 15529, i16 -4, i16 -1, i16 -3432, i16 -3432, i16 -1, i16 -4], [7 x i16] [i16 -14674, i16 -23320, i16 7988, i16 1, i16 -3199, i16 8, i16 8], [7 x i16] [i16 -3, i16 15529, i16 -3432, i16 15529, i16 -3, i16 0, i16 5]]], align 16
@func_1.l_5406 = private unnamed_addr constant [8 x i8***] [i8*** @g_3606, i8*** @g_3606, i8*** @g_3606, i8*** @g_3606, i8*** @g_3606, i8*** @g_3606, i8*** @g_3606, i8*** @g_3606], align 16
@func_1.l_11 = private unnamed_addr constant [8 x i32*] [i32* @g_12, i32* @g_12, i32* @g_12, i32* @g_12, i32* @g_12, i32* @g_12, i32* @g_12, i32* @g_12], align 16
@g_722 = internal global i32*** @g_723, align 8
@g_2103 = internal global i32***** @g_2101, align 8
@g_2345 = internal global i8*** @g_2346, align 8
@g_1775 = internal global i8*** null, align 8
@g_284 = internal global i32** @g_83, align 8
@g_3185 = internal global i16**** @g_1764, align 8
@g_3133 = internal global i64**** @g_3134, align 8
@g_5527 = internal global [8 x [8 x i64***]] [[8 x i64***] [i64*** null, i64*** null, i64*** @g_1737, i64*** null, i64*** null, i64*** @g_1737, i64*** null, i64*** null], [8 x i64***] [i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null], [8 x i64***] [i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null, i64*** @g_1737], [8 x i64***] [i64*** null, i64*** null, i64*** @g_1737, i64*** null, i64*** null, i64*** @g_1737, i64*** null, i64*** null], [8 x i64***] [i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null], [8 x i64***] [i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null, i64*** @g_1737], [8 x i64***] [i64*** null, i64*** null, i64*** @g_1737, i64*** null, i64*** null, i64*** @g_1737, i64*** null, i64*** null], [8 x i64***] [i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null, i64*** @g_1737, i64*** @g_1737, i64*** null]], align 16
@g_1169 = internal global i32** @g_83, align 8
@func_1.l_5538 = private unnamed_addr constant [6 x [9 x i8]] [[9 x i8] c"\FF\02\FF\FF\02\FF\02\FF\FF", [9 x i8] c"\C6\C6=\F6=\C6\C6=\F6", [9 x i8] c"R\02R\FF\FFR\02R\FF", [9 x i8] c"\01==\01\0F\01==\01", [9 x i8] c"d\FF\FF\FFdd\FF\FF\FF", [9 x i8] c"=\0F\F6\F6\0F=\0F\F6\F6"], align 16
@g_2346 = internal global i8** @g_875, align 8
@g_5435 = internal global i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i32 0), align 8
@g_875 = internal global i8* @g_96, align 8
@g_2634 = internal global i8* getelementptr (i8, i8* getelementptr inbounds ([6 x [10 x i8]], [6 x [10 x i8]]* @g_331, i32 0, i32 0, i32 0), i64 10), align 8
@g_824 = internal global i64**** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i64***]* @g_401 to i8*), i64 8) to i64****), align 8
@g_745 = internal global i16* @g_746, align 8
@func_1.l_5559 = private unnamed_addr constant [7 x i32] [i32 1465292123, i32 -1737152742, i32 1465292123, i32 1465292123, i32 -1737152742, i32 1465292123, i32 1465292123], align 16
@g_198 = internal global i32** @g_83, align 8
@g_403 = internal global [7 x [8 x i64*]] [[8 x i64*] [i64* @g_20, i64* @g_20, i64* @g_20, i64* @g_20, i64* @g_104, i64* @g_104, i64* @g_20, i64* @g_20], [8 x i64*] [i64* null, i64* null, i64* null, i64* @g_104, i64* @g_20, i64* null, i64* @g_20, i64* @g_104], [8 x i64*] [i64* @g_20, i64* @g_104, i64* @g_20, i64* @g_104, i64* @g_104, i64* @g_20, i64* @g_20, i64* @g_104], [8 x i64*] [i64* @g_104, i64* @g_20, i64* @g_20, i64* @g_104, i64* @g_104, i64* @g_20, i64* @g_104, i64* @g_20], [8 x i64*] [i64* @g_104, i64* @g_20, i64* null, i64* @g_20, i64* @g_104, i64* null, i64* null, i64* null], [8 x i64*] [i64* @g_20, i64* @g_20, i64* @g_104, i64* @g_104, i64* @g_20, i64* @g_20, i64* @g_20, i64* @g_20], [8 x i64*] [i64* null, i64* @g_20, i64* @g_104, i64* null, i64* @g_104, i64* @g_20, i64* null, i64* @g_20]], align 16
@g_83 = internal global i32* @g_84, align 8
@g_2145 = internal global i32**** @g_722, align 8
@g_4023 = internal global i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [3 x i16***]]* @g_4024 to i8*), i64 128) to i16****), align 8
@g_4688 = internal global i32**** @g_4689, align 8
@g_3134 = internal global i64*** @g_1737, align 8
@g_4437 = internal global i64** @g_4438, align 8
@g_454 = internal global i32** @g_455, align 8
@g_4689 = internal global i32*** @g_454, align 8
@g_874 = internal global i8** @g_875, align 8
@g_1544 = internal global i8* @g_22, align 8
@g_1607 = internal global i16***** @g_1608, align 8
@g_5244 = internal global i32** @g_3995, align 8
@func_1.l_5677 = private unnamed_addr constant [1 x [9 x i16*]] [[9 x i16*] [i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 4) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 12) to i16*), i16* bitcast (i8* getelementptr (i8, i8* bitcast ([7 x i16]* @g_3047 to i8*), i64 4) to i16*)]], align 16
@func_1.l_5699 = private unnamed_addr constant [7 x [5 x i32]] [[5 x i32] [i32 0, i32 -7, i32 1, i32 -4, i32 -4], [5 x i32] [i32 1364851586, i32 -7, i32 1364851586, i32 -1, i32 -1], [5 x i32] [i32 -1615928614, i32 511065120, i32 -4, i32 511065120, i32 -1615928614], [5 x i32] [i32 1364851586, i32 -1536162378, i32 -7, i32 570279058, i32 -7], [5 x i32] [i32 0, i32 0, i32 -4, i32 -1615928614, i32 -628160289], [5 x i32] [i32 -1536162378, i32 1364851586, i32 1364851586, i32 -1536162378, i32 -7], [5 x i32] [i32 511065120, i32 -1615928614, i32 1, i32 1, i32 -1615928614]], align 16
@func_1.l_5721 = private unnamed_addr constant [7 x [5 x i32]] [[5 x i32] [i32 -1996364392, i32 1, i32 1, i32 -487014901, i32 -487014901], [5 x i32] [i32 1, i32 -1996364392, i32 1, i32 1, i32 -487014901], [5 x i32] [i32 -1, i32 -1811199945, i32 -487014901, i32 -1811199945, i32 -1], [5 x i32] [i32 1, i32 -1811199945, i32 -1996364392, i32 -1, i32 -1996364392], [5 x i32] [i32 -1996364392, i32 -1996364392, i32 -487014901, i32 -1, i32 192867125], [5 x i32] [i32 -1811199945, i32 1, i32 1, i32 -1811199945, i32 -1996364392], [5 x i32] [i32 -1811199945, i32 -1, i32 1, i32 1, i32 -1]], align 16
@func_1.l_5693 = private unnamed_addr constant [8 x i32] [i32 502367766, i32 -7, i32 -7, i32 502367766, i32 -7, i32 -7, i32 502367766, i32 -7], align 16
@func_1.l_5723 = private unnamed_addr constant [7 x [5 x [7 x i32]]] [[5 x [7 x i32]] [[7 x i32] [i32 -262592911, i32 -262592911, i32 0, i32 -425681551, i32 -1008842735, i32 -8, i32 -1951934670], [7 x i32] [i32 -425681551, i32 1, i32 -4, i32 -1, i32 1, i32 -4, i32 -262592911], [7 x i32] [i32 -4, i32 -1645391989, i32 1, i32 -1529230010, i32 -1008842735, i32 0, i32 0], [7 x i32] [i32 -1052854972, i32 -1951934670, i32 1368044324, i32 -262592911, i32 -770599159, i32 -1, i32 -1052854972], [7 x i32] [i32 -425681551, i32 0, i32 1421820451, i32 -1925580550, i32 1, i32 3, i32 -1052854972]], [5 x [7 x i32]] [[7 x i32] [i32 1, i32 -1052854972, i32 1, i32 1, i32 -1052854972, i32 1, i32 0], [7 x i32] [i32 -1951934670, i32 -1, i32 -1510504756, i32 -425681551, i32 -6, i32 -581695749, i32 -262592911], [7 x i32] [i32 -1925580550, i32 0, i32 780469044, i32 -6, i32 -1529230010, i32 3, i32 -1951934670], [7 x i32] [i32 1, i32 -1, i32 1, i32 0, i32 -1925580550, i32 2, i32 -1529230010], [7 x i32] [i32 -1655043142, i32 -1052854972, i32 -498930990, i32 -1655043142, i32 -6, i32 840238138, i32 -5]], [5 x [7 x i32]] [[7 x i32] [i32 -5, i32 0, i32 0, i32 -1655043142, i32 -4, i32 -4, i32 -1655043142], [7 x i32] [i32 -1529230010, i32 -1951934670, i32 -1529230010, i32 0, i32 -262592911, i32 1, i32 1], [7 x i32] [i32 -1951934670, i32 -1645391989, i32 0, i32 -6, i32 -770599159, i32 0, i32 -1925580550], [7 x i32] [i32 -262592911, i32 1, i32 0, i32 -425681551, i32 1421820451, i32 1, i32 -1951934670], [7 x i32] [i32 840238138, i32 0, i32 -1424792901, i32 -498930990, i32 -4, i32 -1424792901, i32 0]], [5 x [7 x i32]] [[7 x i32] [i32 8, i32 1421820451, i32 -6, i32 1, i32 780469044, i32 -1645391989, i32 0], [7 x i32] [i32 8, i32 46710491, i32 -355777192, i32 0, i32 -355777192, i32 46710491, i32 8], [7 x i32] [i32 840238138, i32 3, i32 1368044324, i32 -8, i32 0, i32 -1510504756, i32 -1424792901], [7 x i32] [i32 0, i32 8, i32 -1052854972, i32 -4, i32 8, i32 -6, i32 0], [7 x i32] [i32 0, i32 -498930990, i32 1368044324, i32 0, i32 -1, i32 0, i32 0]], [5 x [7 x i32]] [[7 x i32] [i32 -8, i32 2, i32 -355777192, i32 -1, i32 1, i32 -1510504756, i32 46710491], [7 x i32] [i32 -1529230010, i32 -4, i32 -6, i32 3, i32 1, i32 -425681551, i32 1], [7 x i32] [i32 1, i32 -1424792901, i32 -1424792901, i32 1, i32 -1, i32 3, i32 -1529230010], [7 x i32] [i32 0, i32 3, i32 -1, i32 -581695749, i32 8, i32 -1424792901, i32 -581695749], [7 x i32] [i32 1, i32 0, i32 -1, i32 3, i32 0, i32 -1052854972, i32 -1529230010]], [5 x [7 x i32]] [[7 x i32] [i32 0, i32 -1510504756, i32 -8, i32 2, i32 -355777192, i32 -1, i32 1], [7 x i32] [i32 0, i32 0, i32 -1, i32 840238138, i32 780469044, i32 -498930990, i32 46710491], [7 x i32] [i32 0, i32 0, i32 -1655043142, i32 -4, i32 -4, i32 -1655043142, i32 0], [7 x i32] [i32 8, i32 -1510504756, i32 0, i32 1, i32 1368044324, i32 3, i32 0], [7 x i32] [i32 -1424792901, i32 0, i32 -355777192, i32 0, i32 1, i32 46710491, i32 -1424792901]], [5 x [7 x i32]] [[7 x i32] [i32 0, i32 3, i32 -770599159, i32 1, i32 0, i32 -1008842735, i32 8], [7 x i32] [i32 0, i32 -1424792901, i32 -498930990, i32 -4, i32 -1424792901, i32 0, i32 0], [7 x i32] [i32 46710491, i32 -4, i32 1368044324, i32 840238138, i32 2, i32 0, i32 0], [7 x i32] [i32 1, i32 2, i32 -5, i32 2, i32 1, i32 -1008842735, i32 0], [7 x i32] [i32 -1529230010, i32 -498930990, i32 0, i32 3, i32 -8, i32 46710491, i32 1]]], align 16
@func_1.l_5730 = private unnamed_addr constant [6 x [9 x i8**]] [[9 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_1544, i8** @g_1544, i8** @g_2634], [9 x i8**] [i8** @g_1544, i8** @g_2634, i8** null, i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_1544, i8** @g_2634], [9 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** null, i8** null, i8** @g_2634, i8** @g_1544, i8** @g_2634], [9 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** null, i8** null, i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_1544], [9 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** null, i8** @g_1544, i8** @g_2634], [9 x i8**] [i8** @g_1544, i8** @g_1544, i8** @g_1544, i8** @g_1544, i8** null, i8** @g_2634, i8** null, i8** @g_1544, i8** @g_1544]], align 16
@func_1.l_5720 = private unnamed_addr constant [10 x [6 x [2 x i16]]] [[6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]], [6 x [2 x i16]] [[2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139], [2 x i16] [i16 -8, i16 -11139]]], align 16
@func_1.l_5735 = internal constant [3 x [1 x i8*****]] [[1 x i8*****] [i8***** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8****]* @g_5436 to i8*), i64 56) to i8*****)], [1 x i8*****] [i8***** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8****]* @g_5436 to i8*), i64 56) to i8*****)], [1 x i8*****] [i8***** bitcast (i8* getelementptr (i8, i8* bitcast ([8 x i8****]* @g_5436 to i8*), i64 56) to i8*****)]], align 16
@func_1.l_5729 = private unnamed_addr constant [5 x [8 x [4 x i8**]]] [[8 x [4 x i8**]] [[4 x i8**] [i8** @g_1544, i8** @g_1544, i8** @g_2634, i8** @g_1544], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_1544], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_1544], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_1544, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_1544], [4 x i8**] [i8** @g_1544, i8** @g_1544, i8** @g_2634, i8** @g_1544]], [8 x [4 x i8**]] [[4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_1544], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_1544], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_1544, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_1544], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_2634]], [8 x [4 x i8**]] [[4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_1544, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_1544, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_1544, i8** @g_2634]], [8 x [4 x i8**]] [[4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_1544, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_1544, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_2634]], [8 x [4 x i8**]] [[4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_1544, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_2634, i8** @g_1544, i8** @g_1544, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_2634, i8** @g_2634], [4 x i8**] [i8** @g_1544, i8** @g_2634, i8** @g_1544, i8** @g_2634]]], align 16
@g_1163 = internal global i64* @g_1164, align 8
@g_5292 = internal global i32** @g_3995, align 8
@g_153 = internal global i32* @g_154, align 8
@func_1.l_5773 = private unnamed_addr constant [6 x [5 x [5 x i32]]] [[5 x [5 x i32]] [[5 x i32] [i32 1052114316, i32 482964395, i32 536371362, i32 1, i32 6], [5 x i32] [i32 -1361872870, i32 32034999, i32 1319089862, i32 975542158, i32 -1124283542], [5 x i32] [i32 -7, i32 8, i32 8, i32 -7, i32 -835770378], [5 x i32] [i32 1, i32 0, i32 -129991616, i32 -1, i32 1], [5 x i32] [i32 -8, i32 8, i32 -1, i32 564465429, i32 -1]], [5 x [5 x i32]] [[5 x i32] [i32 975542158, i32 -10, i32 -1124283542, i32 -1, i32 6], [5 x i32] [i32 8, i32 756490080, i32 -8, i32 -7, i32 -1], [5 x i32] [i32 -7, i32 6, i32 -357221462, i32 975542158, i32 975542158], [5 x i32] [i32 538092424, i32 263919268, i32 538092424, i32 1, i32 -3980417], [5 x i32] [i32 32034999, i32 -7, i32 1, i32 0, i32 5]], [5 x [5 x i32]] [[5 x i32] [i32 -7, i32 6, i32 -3980417, i32 482964395, i32 262906012], [5 x i32] [i32 8025819, i32 -357221462, i32 1, i32 5, i32 -1271033984], [5 x i32] [i32 0, i32 -3980417, i32 538092424, i32 -1, i32 -911873479], [5 x i32] [i32 1095336259, i32 -686088857, i32 -357221462, i32 1, i32 -357221462], [5 x i32] [i32 1, i32 1, i32 -8, i32 -1, i32 1402675618]], [5 x [5 x i32]] [[5 x i32] [i32 -1, i32 -1, i32 -1124283542, i32 32034999, i32 -1], [5 x i32] [i32 -680871692, i32 536371362, i32 -1, i32 -3980417, i32 -828841862], [5 x i32] [i32 6, i32 -1, i32 -129991616, i32 0, i32 -7], [5 x i32] [i32 1052114316, i32 -828841862, i32 -7, i32 -1603013595, i32 -1], [5 x i32] [i32 1, i32 0, i32 914036201, i32 914036201, i32 0]], [5 x [5 x i32]] [[5 x i32] [i32 263919268, i32 538092424, i32 1, i32 -3980417, i32 1402675618], [5 x i32] [i32 8025819, i32 54910632, i32 -357221462, i32 -7, i32 914036201], [5 x i32] [i32 262906012, i32 0, i32 -835770378, i32 -7, i32 -8], [5 x i32] [i32 8025819, i32 0, i32 1, i32 -10, i32 6], [5 x i32] [i32 263919268, i32 -1, i32 756490080, i32 -5, i32 -3980417]], [5 x [5 x i32]] [[5 x i32] [i32 1, i32 -1271033984, i32 0, i32 -1271033984, i32 1], [5 x i32] [i32 1052114316, i32 564465429, i32 -5, i32 962617209, i32 -828841862], [5 x i32] [i32 -1271033984, i32 -686088857, i32 -1, i32 1, i32 -129991616], [5 x i32] [i32 -1, i32 -8, i32 -911873479, i32 564465429, i32 -828841862], [5 x i32] [i32 32034999, i32 1, i32 -1361872870, i32 5, i32 1]]], align 16
@g_590 = internal global [5 x i32*] [i32* @g_84, i32* @g_84, i32* @g_84, i32* @g_84, i32* @g_84], align 16
@g_657 = internal constant i32** @g_83, align 8
@g_3184 = internal global i16***** @g_3185, align 8
@g_1738 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x [5 x [5 x i64]]]* @g_23 to i8*), i64 1648) to i64*), align 8
@g_823 = internal global i64***** @g_824, align 8
@g_693 = internal global i32** @g_83, align 8
@g_1764 = internal global i16*** @g_1274, align 8
@g_1774 = internal global i8**** @g_1775, align 8
@g_1671 = internal global i32** @g_1672, align 8
@g_1670 = internal global i32*** @g_1671, align 8
@g_557 = internal global i32* @g_68, align 8
@g_181 = internal global i64* bitcast (i8* getelementptr (i8, i8* bitcast ([3 x i64]* @g_182 to i8*), i64 16) to i64*), align 8
@g_5437 = internal global i8*** @g_3606, align 8
@g_723 = internal global i32** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x [2 x [7 x i32*]]]* @g_724 to i8*), i64 120) to i32**), align 8
@g_724 = internal global [2 x [2 x [7 x i32*]]] [[2 x [7 x i32*]] [[7 x i32*] [i32* @g_393, i32* null, i32* @g_393, i32* @g_393, i32* @g_393, i32* @g_393, i32* null], [7 x i32*] [i32* @g_393, i32* @g_393, i32* null, i32* @g_393, i32* @g_393, i32* null, i32* null]], [2 x [7 x i32*]] [[7 x i32*] [i32* null, i32* @g_393, i32* @g_393, i32* @g_393, i32* null, i32* @g_393, i32* @g_393], [7 x i32*] [i32* @g_393, i32* null, i32* @g_393, i32* @g_393, i32* @g_393, i32* @g_393, i32* @g_393]]], align 16
@g_2101 = internal global i32**** @g_722, align 8
@g_401 = internal global [2 x i64***] [i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [1 x [2 x i64**]]]* @g_402 to i8*), i64 16) to i64***), i64*** bitcast (i8* getelementptr (i8, i8* bitcast ([3 x [1 x [2 x i64**]]]* @g_402 to i8*), i64 16) to i64***)], align 16
@g_4024 = internal global [10 x [3 x i16***]] [[3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274], [3 x i16***] [i16*** @g_1274, i16*** @g_1274, i16*** @g_1274]], align 16
@g_1274 = internal global i16** @g_745, align 8
@g_4438 = internal global i64* @g_4439, align 8
@g_4439 = internal constant i64 7927623523168399653, align 8
@g_455 = internal global i32* @g_456, align 8
@g_456 = internal constant i32 -909989313, align 4
@g_1608 = internal global i16**** bitcast (i8* getelementptr (i8, i8* bitcast ([9 x i16***]* @g_1609 to i8*), i64 64) to i16****), align 8
@g_1609 = internal global [9 x i16***] [i16*** @g_1610, i16*** @g_1610, i16*** @g_1610, i16*** @g_1610, i16*** @g_1610, i16*** @g_1610, i16*** @g_1610, i16*** @g_1610, i16*** @g_1610], align 16
@g_1610 = internal global i16** null, align 8
@func_62.l_500 = private unnamed_addr constant [7 x [1 x [7 x i32]]] [[1 x [7 x i32]] [[7 x i32] [i32 -1, i32 -1, i32 -1861540248, i32 -1861540248, i32 -1, i32 -1, i32 -1]], [1 x [7 x i32]] [[7 x i32] [i32 1, i32 4, i32 0, i32 0, i32 4, i32 1, i32 -1945322156]], [1 x [7 x i32]] [[7 x i32] [i32 -1, i32 -1, i32 -1861540248, i32 -1861540248, i32 -1, i32 -1, i32 -1]], [1 x [7 x i32]] [[7 x i32] [i32 1, i32 4, i32 0, i32 0, i32 4, i32 1, i32 -1945322156]], [1 x [7 x i32]] [[7 x i32] [i32 -1, i32 -1, i32 -1861540248, i32 -1861540248, i32 -1, i32 -1, i32 -1]], [1 x [7 x i32]] [[7 x i32] [i32 1, i32 4, i32 0, i32 0, i32 4, i32 1, i32 -1945322156]], [1 x [7 x i32]] [[7 x i32] [i32 -1, i32 -1, i32 -1861540248, i32 -1861540248, i32 -1, i32 -1, i32 -1]]], align 16
@func_62.l_648 = private unnamed_addr constant [3 x [4 x [10 x i32]]] [[4 x [10 x i32]] [[10 x i32] [i32 -1, i32 -10, i32 0, i32 -10, i32 -1, i32 -9, i32 1, i32 -1, i32 -1, i32 1], [10 x i32] [i32 -239638105, i32 -9, i32 -4, i32 -4, i32 -9, i32 -239638105, i32 0, i32 1, i32 -1, i32 1], [10 x i32] [i32 -10, i32 -4, i32 -1, i32 -1, i32 -1, i32 -4, i32 -10, i32 0, i32 7, i32 7], [10 x i32] [i32 -10, i32 7, i32 -239638105, i32 0, i32 0, i32 -239638105, i32 7, i32 -10, i32 -9, i32 0]], [4 x [10 x i32]] [[10 x i32] [i32 -239638105, i32 7, i32 -10, i32 -9, i32 0, i32 -9, i32 -10, i32 7, i32 -239638105, i32 0], [10 x i32] [i32 -1, i32 -4, i32 -10, i32 0, i32 7, i32 7, i32 0, i32 -10, i32 -4, i32 -1], [10 x i32] [i32 -4, i32 -9, i32 -239638105, i32 0, i32 1, i32 -1, i32 1, i32 0, i32 -239638105, i32 -9], [10 x i32] [i32 0, i32 -10, i32 -1, i32 -9, i32 1, i32 -1, i32 -1, i32 1, i32 -9, i32 -1]], [4 x [10 x i32]] [[10 x i32] [i32 1, i32 1, i32 -4, i32 0, i32 7, i32 -1, i32 -239638105, i32 -1, i32 7, i32 0], [10 x i32] [i32 0, i32 -1028578815, i32 0, i32 -1, i32 0, i32 -1, i32 -239638105, i32 -239638105, i32 -1, i32 0], [10 x i32] [i32 -4, i32 1, i32 1, i32 -4, i32 0, i32 7, i32 -1, i32 -239638105, i32 -1, i32 7], [10 x i32] [i32 -1, i32 -10, i32 0, i32 -10, i32 -1, i32 -9, i32 1, i32 -1, i32 -1, i32 1]]], align 16
@g_728 = internal global i32*** @g_729, align 8
@func_62.l_733 = private unnamed_addr constant [8 x [6 x i16*]] [[6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* null, i16* @g_289, i16* null], [6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* @g_289, i16* @g_289, i16* @g_289], [6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* @g_289, i16* @g_289, i16* @g_289], [6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* @g_289, i16* @g_289, i16* @g_289], [6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* @g_289, i16* @g_289, i16* @g_289], [6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* @g_289, i16* @g_289, i16* @g_289], [6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* @g_289, i16* @g_289, i16* @g_289], [6 x i16*] [i16* @g_289, i16* null, i16* @g_289, i16* @g_289, i16* @g_289, i16* @g_289]], align 16
@func_62.l_750 = private unnamed_addr constant [5 x i16] [i16 -1792, i16 -1792, i16 -1792, i16 -1792, i16 -1792], align 2
@func_62.l_768 = private unnamed_addr constant [3 x [3 x i64*]] [[3 x i64*] zeroinitializer, [3 x i64*] [i64* @g_20, i64* @g_104, i64* @g_20], [3 x i64*] zeroinitializer], align 16
@g_372 = internal global i16* null, align 8
@func_62.l_457 = private unnamed_addr constant [8 x [9 x i16**]] [[9 x i16**] [i16** null, i16** @g_372, i16** @g_372, i16** null, i16** @g_372, i16** @g_372, i16** @g_372, i16** null, i16** @g_372], [9 x i16**] [i16** @g_372, i16** @g_372, i16** null, i16** @g_372, i16** @g_372, i16** null, i16** @g_372, i16** null, i16** @g_372], [9 x i16**] [i16** @g_372, i16** @g_372, i16** @g_372, i16** @g_372, i16** @g_372, i16** @g_372, i16** null, i16** null, i16** @g_372], [9 x i16**] [i16** null, i16** @g_372, i16** @g_372, i16** null, i16** @g_372, i16** @g_372, i16** @g_372, i16** null, i16** @g_372], [9 x i16**] [i16** @g_372, i16** @g_372, i16** null, i16** @g_372, i16** null, i16** @g_372, i16** null, i16** @g_372, i16** null], [9 x i16**] [i16** null, i16** @g_372, i16** @g_372, i16** null, i16** null, i16** null, i16** @g_372, i16** @g_372, i16** @g_372], [9 x i16**] [i16** @g_372, i16** @g_372, i16** @g_372, i16** @g_372, i16** null, i16** null, i16** @g_372, i16** @g_372, i16** @g_372], [9 x i16**] [i16** @g_372, i16** @g_372, i16** null, i16** @g_372, i16** null, i16** @g_372, i16** null, i16** @g_372, i16** null]], align 16
@func_62.l_519 = private unnamed_addr constant [9 x i32] [i32 1895233004, i32 1220626618, i32 1220626618, i32 1895233004, i32 1220626618, i32 1220626618, i32 1895233004, i32 1220626618, i32 1220626618], align 16
@g_744 = internal global [5 x i16**] [i16** @g_745, i16** @g_745, i16** @g_745, i16** @g_745, i16** @g_745], align 16
@func_62.l_772 = private unnamed_addr constant [2 x [10 x [6 x i32]]] [[10 x [6 x i32]] [[6 x i32] [i32 1, i32 -1345877603, i32 1, i32 232271220, i32 -51035551, i32 0], [6 x i32] [i32 3, i32 9, i32 -5, i32 -9, i32 1, i32 1], [6 x i32] [i32 3, i32 651004199, i32 -9, i32 232271220, i32 -5, i32 5], [6 x i32] [i32 1, i32 -51035551, i32 4, i32 -7, i32 4, i32 -51035551], [6 x i32] [i32 9, i32 115233985, i32 0, i32 1, i32 13335698, i32 9], [6 x i32] [i32 0, i32 232271220, i32 -1167372205, i32 -5, i32 -51035551, i32 7], [6 x i32] [i32 1, i32 232271220, i32 -1345877603, i32 -9, i32 13335698, i32 -9], [6 x i32] [i32 5, i32 115233985, i32 -9, i32 4, i32 4, i32 -9], [6 x i32] [i32 -51035551, i32 -51035551, i32 9, i32 0, i32 -5, i32 -2078608198], [6 x i32] [i32 9, i32 651004199, i32 5, i32 -1167372205, i32 1, i32 9]], [10 x [6 x i32]] [[6 x i32] [i32 7, i32 9, i32 5, i32 -1345877603, i32 -51035551, i32 -2078608198], [6 x i32] [i32 -9, i32 -1345877603, i32 9, i32 -9, i32 -845828668, i32 -9], [6 x i32] [i32 -9, i32 -845828668, i32 -9, i32 9, i32 -1345877603, i32 -9], [6 x i32] [i32 -2078608198, i32 -51035551, i32 -1345877603, i32 5, i32 9, i32 7], [6 x i32] [i32 9, i32 1, i32 -1167372205, i32 5, i32 651004199, i32 9], [6 x i32] [i32 -2078608198, i32 -5, i32 0, i32 9, i32 -51035551, i32 -51035551], [6 x i32] [i32 -9, i32 4, i32 4, i32 -9, i32 115233985, i32 5], [6 x i32] [i32 -9, i32 13335698, i32 -9, i32 -1345877603, i32 232271220, i32 1], [6 x i32] [i32 7, i32 -51035551, i32 -5, i32 -1167372205, i32 232271220, i32 0], [6 x i32] [i32 9, i32 13335698, i32 1, i32 0, i32 115233985, i32 9]]], align 16
@g_400 = internal global i64**** bitcast (i8* getelementptr (i8, i8* bitcast ([2 x i64***]* @g_401 to i8*), i64 8) to i64****), align 8
@g_729 = internal global i32** @g_730, align 8
@g_730 = internal global i32* @g_393, align 8
@g_1672 = internal global i32* @g_362, align 8
@.str.88 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %91 = load volatile i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i32, i32* @g_3, align 4, !tbaa !1
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load volatile i32, i32* @g_7, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %116, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %119

; <label>:103                                     ; preds = %100
  %104 = load i32, i32* %i, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* @g_8, i32 0, i64 %105
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
  %120 = load volatile i32, i32* @g_9, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:123                                     ; preds = %139, %119
  %124 = load i32, i32* %i, align 4, !tbaa !1
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %126, label %142

; <label>:126                                     ; preds = %123
  %127 = load i32, i32* %i, align 4, !tbaa !1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [1 x i32], [1 x i32]* @g_10, i32 0, i64 %128
  %130 = load i32, i32* %129, align 4, !tbaa !1
  %131 = sext i32 %130 to i64
  %132 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 %132)
  %133 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

; <label>:135                                     ; preds = %126
  %136 = load i32, i32* %i, align 4, !tbaa !1
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %136)
  br label %138

; <label>:138                                     ; preds = %135, %126
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %i, align 4, !tbaa !1
  br label %123

; <label>:142                                     ; preds = %123
  %143 = load i32, i32* @g_12, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %145)
  %146 = load i8, i8* @g_16, align 1, !tbaa !9
  %147 = sext i8 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 %148)
  %149 = load i16, i16* @g_17, align 2, !tbaa !10
  %150 = sext i16 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %151)
  %152 = load i64, i64* @g_20, align 8, !tbaa !7
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %153)
  %154 = load i8, i8* @g_22, align 1, !tbaa !9
  %155 = sext i8 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %156)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %157

; <label>:157                                     ; preds = %196, %142
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %159 = icmp slt i32 %158, 10
  br i1 %159, label %160, label %199

; <label>:160                                     ; preds = %157
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %192, %160
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 5
  br i1 %163, label %164, label %195

; <label>:164                                     ; preds = %161
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %165

; <label>:165                                     ; preds = %188, %164
  %166 = load i32, i32* %k, align 4, !tbaa !1
  %167 = icmp slt i32 %166, 5
  br i1 %167, label %168, label %191

; <label>:168                                     ; preds = %165
  %169 = load i32, i32* %k, align 4, !tbaa !1
  %170 = sext i32 %169 to i64
  %171 = load i32, i32* %j, align 4, !tbaa !1
  %172 = sext i32 %171 to i64
  %173 = load i32, i32* %i, align 4, !tbaa !1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [10 x [5 x [5 x i64]]], [10 x [5 x [5 x i64]]]* @g_23, i32 0, i64 %174
  %176 = getelementptr inbounds [5 x [5 x i64]], [5 x [5 x i64]]* %175, i32 0, i64 %172
  %177 = getelementptr inbounds [5 x i64], [5 x i64]* %176, i32 0, i64 %170
  %178 = load i64, i64* %177, align 8, !tbaa !7
  %179 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 %179)
  %180 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

; <label>:182                                     ; preds = %168
  %183 = load i32, i32* %i, align 4, !tbaa !1
  %184 = load i32, i32* %j, align 4, !tbaa !1
  %185 = load i32, i32* %k, align 4, !tbaa !1
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %183, i32 %184, i32 %185)
  br label %187

; <label>:187                                     ; preds = %182, %168
  br label %188

; <label>:188                                     ; preds = %187
  %189 = load i32, i32* %k, align 4, !tbaa !1
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %k, align 4, !tbaa !1
  br label %165

; <label>:191                                     ; preds = %165
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load i32, i32* %j, align 4, !tbaa !1
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %j, align 4, !tbaa !1
  br label %161

; <label>:195                                     ; preds = %161
  br label %196

; <label>:196                                     ; preds = %195
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %i, align 4, !tbaa !1
  br label %157

; <label>:199                                     ; preds = %157
  %200 = load i32, i32* @g_68, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %202)
  %203 = load i32, i32* @g_84, align 4, !tbaa !1
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %205)
  %206 = load i8, i8* @g_96, align 1, !tbaa !9
  %207 = zext i8 %206 to i64
  %208 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %208)
  %209 = load i64, i64* @g_104, align 8, !tbaa !7
  %210 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %210)
  %211 = load i32, i32* @g_147, align 4, !tbaa !1
  %212 = zext i32 %211 to i64
  %213 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %213)
  %214 = load i32, i32* @g_154, align 4, !tbaa !1
  %215 = sext i32 %214 to i64
  %216 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %216)
  %217 = load i16, i16* @g_175, align 2, !tbaa !10
  %218 = zext i16 %217 to i64
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %219)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %220

; <label>:220                                     ; preds = %235, %199
  %221 = load i32, i32* %i, align 4, !tbaa !1
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %223, label %238

; <label>:223                                     ; preds = %220
  %224 = load i32, i32* %i, align 4, !tbaa !1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [3 x i64], [3 x i64]* @g_182, i32 0, i64 %225
  %227 = load i64, i64* %226, align 8, !tbaa !7
  %228 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %227, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %228)
  %229 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

; <label>:231                                     ; preds = %223
  %232 = load i32, i32* %i, align 4, !tbaa !1
  %233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %232)
  br label %234

; <label>:234                                     ; preds = %231, %223
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load i32, i32* %i, align 4, !tbaa !1
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %i, align 4, !tbaa !1
  br label %220

; <label>:238                                     ; preds = %220
  %239 = load volatile i32, i32* @g_287, align 4, !tbaa !1
  %240 = sext i32 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %241)
  %242 = load i16, i16* @g_289, align 2, !tbaa !10
  %243 = sext i16 %242 to i64
  %244 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %243, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %244)
  %245 = load i32, i32* @g_291, align 4, !tbaa !1
  %246 = zext i32 %245 to i64
  %247 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %247)
  %248 = load i16, i16* @g_315, align 2, !tbaa !10
  %249 = zext i16 %248 to i64
  %250 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %250)
  %251 = load i16, i16* @g_317, align 2, !tbaa !10
  %252 = zext i16 %251 to i64
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %253)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %254

; <label>:254                                     ; preds = %282, %238
  %255 = load i32, i32* %i, align 4, !tbaa !1
  %256 = icmp slt i32 %255, 6
  br i1 %256, label %257, label %285

; <label>:257                                     ; preds = %254
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %258

; <label>:258                                     ; preds = %278, %257
  %259 = load i32, i32* %j, align 4, !tbaa !1
  %260 = icmp slt i32 %259, 10
  br i1 %260, label %261, label %281

; <label>:261                                     ; preds = %258
  %262 = load i32, i32* %j, align 4, !tbaa !1
  %263 = sext i32 %262 to i64
  %264 = load i32, i32* %i, align 4, !tbaa !1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [6 x [10 x i8]], [6 x [10 x i8]]* @g_331, i32 0, i64 %265
  %267 = getelementptr inbounds [10 x i8], [10 x i8]* %266, i32 0, i64 %263
  %268 = load i8, i8* %267, align 1, !tbaa !9
  %269 = sext i8 %268 to i64
  %270 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 %270)
  %271 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

; <label>:273                                     ; preds = %261
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = load i32, i32* %j, align 4, !tbaa !1
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 %274, i32 %275)
  br label %277

; <label>:277                                     ; preds = %273, %261
  br label %278

; <label>:278                                     ; preds = %277
  %279 = load i32, i32* %j, align 4, !tbaa !1
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %j, align 4, !tbaa !1
  br label %258

; <label>:281                                     ; preds = %258
  br label %282

; <label>:282                                     ; preds = %281
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %i, align 4, !tbaa !1
  br label %254

; <label>:285                                     ; preds = %254
  %286 = load volatile i32, i32* @g_362, align 4, !tbaa !1
  %287 = zext i32 %286 to i64
  %288 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 %288)
  %289 = load i32, i32* @g_375, align 4, !tbaa !1
  %290 = sext i32 %289 to i64
  %291 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %291)
  %292 = load i32, i32* @g_393, align 4, !tbaa !1
  %293 = sext i32 %292 to i64
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %293, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %294)
  %295 = load i8, i8* @g_428, align 1, !tbaa !9
  %296 = zext i8 %295 to i64
  %297 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 %297)
  %298 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -909989313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 %298)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %299

; <label>:299                                     ; preds = %327, %285
  %300 = load i32, i32* %i, align 4, !tbaa !1
  %301 = icmp slt i32 %300, 7
  br i1 %301, label %302, label %330

; <label>:302                                     ; preds = %299
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %303

; <label>:303                                     ; preds = %323, %302
  %304 = load i32, i32* %j, align 4, !tbaa !1
  %305 = icmp slt i32 %304, 7
  br i1 %305, label %306, label %326

; <label>:306                                     ; preds = %303
  %307 = load i32, i32* %j, align 4, !tbaa !1
  %308 = sext i32 %307 to i64
  %309 = load i32, i32* %i, align 4, !tbaa !1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [7 x [7 x i32]], [7 x [7 x i32]]* @g_504, i32 0, i64 %310
  %312 = getelementptr inbounds [7 x i32], [7 x i32]* %311, i32 0, i64 %308
  %313 = load volatile i32, i32* %312, align 4, !tbaa !1
  %314 = sext i32 %313 to i64
  %315 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %314, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %315)
  %316 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

; <label>:318                                     ; preds = %306
  %319 = load i32, i32* %i, align 4, !tbaa !1
  %320 = load i32, i32* %j, align 4, !tbaa !1
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 %319, i32 %320)
  br label %322

; <label>:322                                     ; preds = %318, %306
  br label %323

; <label>:323                                     ; preds = %322
  %324 = load i32, i32* %j, align 4, !tbaa !1
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %j, align 4, !tbaa !1
  br label %303

; <label>:326                                     ; preds = %303
  br label %327

; <label>:327                                     ; preds = %326
  %328 = load i32, i32* %i, align 4, !tbaa !1
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %i, align 4, !tbaa !1
  br label %299

; <label>:330                                     ; preds = %299
  %331 = load i32, i32* @g_585, align 4, !tbaa !1
  %332 = zext i32 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %333)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %334

; <label>:334                                     ; preds = %350, %330
  %335 = load i32, i32* %i, align 4, !tbaa !1
  %336 = icmp slt i32 %335, 10
  br i1 %336, label %337, label %353

; <label>:337                                     ; preds = %334
  %338 = load i32, i32* %i, align 4, !tbaa !1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [10 x i8], [10 x i8]* @g_660, i32 0, i64 %339
  %341 = load volatile i8, i8* %340, align 1, !tbaa !9
  %342 = sext i8 %341 to i64
  %343 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %343)
  %344 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

; <label>:346                                     ; preds = %337
  %347 = load i32, i32* %i, align 4, !tbaa !1
  %348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %347)
  br label %349

; <label>:349                                     ; preds = %346, %337
  br label %350

; <label>:350                                     ; preds = %349
  %351 = load i32, i32* %i, align 4, !tbaa !1
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %i, align 4, !tbaa !1
  br label %334

; <label>:353                                     ; preds = %334
  %354 = load volatile i16, i16* @g_662, align 2, !tbaa !10
  %355 = zext i16 %354 to i64
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %355, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 %356)
  %357 = load i16, i16* @g_746, align 2, !tbaa !10
  %358 = sext i16 %357 to i64
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %359)
  %360 = load i8, i8* @g_807, align 1, !tbaa !9
  %361 = sext i8 %360 to i64
  %362 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 %362)
  %363 = load i8, i8* @g_921, align 1, !tbaa !9
  %364 = sext i8 %363 to i64
  %365 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 %365)
  %366 = load i32, i32* @g_1029, align 4, !tbaa !1
  %367 = zext i32 %366 to i64
  %368 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %368)
  %369 = load volatile i8, i8* @g_1159, align 1, !tbaa !9
  %370 = sext i8 %369 to i64
  %371 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %370, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %371)
  %372 = load volatile i64, i64* @g_1164, align 8, !tbaa !7
  %373 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %372, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %373)
  %374 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 3302091108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %374)
  %375 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %375)
  %376 = load i16, i16* @g_1714, align 2, !tbaa !10
  %377 = zext i16 %376 to i64
  %378 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %377, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i32 %378)
  %379 = load i16, i16* @g_1864, align 2, !tbaa !10
  %380 = zext i16 %379 to i64
  %381 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %380, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %381)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:382                                     ; preds = %398, %353
  %383 = load i32, i32* %i, align 4, !tbaa !1
  %384 = icmp slt i32 %383, 8
  br i1 %384, label %385, label %401

; <label>:385                                     ; preds = %382
  %386 = load i32, i32* %i, align 4, !tbaa !1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [8 x i32], [8 x i32]* @g_1878, i32 0, i64 %387
  %389 = load i32, i32* %388, align 4, !tbaa !1
  %390 = sext i32 %389 to i64
  %391 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %390, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 %391)
  %392 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %397

; <label>:394                                     ; preds = %385
  %395 = load i32, i32* %i, align 4, !tbaa !1
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %395)
  br label %397

; <label>:397                                     ; preds = %394, %385
  br label %398

; <label>:398                                     ; preds = %397
  %399 = load i32, i32* %i, align 4, !tbaa !1
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %i, align 4, !tbaa !1
  br label %382

; <label>:401                                     ; preds = %382
  %402 = load volatile i16, i16* @g_2072, align 2, !tbaa !10
  %403 = zext i16 %402 to i64
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %403, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 %404)
  %405 = load i64, i64* @g_2158, align 8, !tbaa !7
  %406 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %405, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %406)
  %407 = load i64, i64* @g_2176, align 8, !tbaa !7
  %408 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %407, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %408)
  %409 = load i32, i32* @g_2184, align 4, !tbaa !1
  %410 = sext i32 %409 to i64
  %411 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %410, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 %411)
  %412 = load i64, i64* @g_2574, align 8, !tbaa !7
  %413 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %412, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 %413)
  %414 = load volatile i64, i64* @g_2576, align 8, !tbaa !7
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 %415)
  %416 = load i16, i16* @g_2717, align 2, !tbaa !10
  %417 = zext i16 %416 to i64
  %418 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 %418)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %419

; <label>:419                                     ; preds = %446, %401
  %420 = load i32, i32* %i, align 4, !tbaa !1
  %421 = icmp slt i32 %420, 2
  br i1 %421, label %422, label %449

; <label>:422                                     ; preds = %419
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %423

; <label>:423                                     ; preds = %442, %422
  %424 = load i32, i32* %j, align 4, !tbaa !1
  %425 = icmp slt i32 %424, 7
  br i1 %425, label %426, label %445

; <label>:426                                     ; preds = %423
  %427 = load i32, i32* %j, align 4, !tbaa !1
  %428 = sext i32 %427 to i64
  %429 = load i32, i32* %i, align 4, !tbaa !1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [2 x [7 x i64]], [2 x [7 x i64]]* @g_2742, i32 0, i64 %430
  %432 = getelementptr inbounds [7 x i64], [7 x i64]* %431, i32 0, i64 %428
  %433 = load i64, i64* %432, align 8, !tbaa !7
  %434 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %433, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i32 %434)
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %441

; <label>:437                                     ; preds = %426
  %438 = load i32, i32* %i, align 4, !tbaa !1
  %439 = load i32, i32* %j, align 4, !tbaa !1
  %440 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 %438, i32 %439)
  br label %441

; <label>:441                                     ; preds = %437, %426
  br label %442

; <label>:442                                     ; preds = %441
  %443 = load i32, i32* %j, align 4, !tbaa !1
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %j, align 4, !tbaa !1
  br label %423

; <label>:445                                     ; preds = %423
  br label %446

; <label>:446                                     ; preds = %445
  %447 = load i32, i32* %i, align 4, !tbaa !1
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %i, align 4, !tbaa !1
  br label %419

; <label>:449                                     ; preds = %419
  %450 = load volatile i32, i32* @g_2743, align 4, !tbaa !1
  %451 = zext i32 %450 to i64
  %452 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %451, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i32 %452)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %453

; <label>:453                                     ; preds = %469, %449
  %454 = load i32, i32* %i, align 4, !tbaa !1
  %455 = icmp slt i32 %454, 7
  br i1 %455, label %456, label %472

; <label>:456                                     ; preds = %453
  %457 = load i32, i32* %i, align 4, !tbaa !1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [7 x i16], [7 x i16]* @g_3047, i32 0, i64 %458
  %460 = load i16, i16* %459, align 2, !tbaa !10
  %461 = sext i16 %460 to i64
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %461, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 %462)
  %463 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %468

; <label>:465                                     ; preds = %456
  %466 = load i32, i32* %i, align 4, !tbaa !1
  %467 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %466)
  br label %468

; <label>:468                                     ; preds = %465, %456
  br label %469

; <label>:469                                     ; preds = %468
  %470 = load i32, i32* %i, align 4, !tbaa !1
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %i, align 4, !tbaa !1
  br label %453

; <label>:472                                     ; preds = %453
  %473 = load i64, i64* @g_3237, align 8, !tbaa !7
  %474 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %473, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 %474)
  %475 = load i32, i32* @g_3377, align 4, !tbaa !1
  %476 = zext i32 %475 to i64
  %477 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %476, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 %477)
  %478 = load i16, i16* @g_3420, align 2, !tbaa !10
  %479 = sext i16 %478 to i64
  %480 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %479, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 %480)
  %481 = load volatile i8, i8* @g_3485, align 1, !tbaa !9
  %482 = sext i8 %481 to i64
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %482, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 %483)
  %484 = load i8, i8* @g_3535, align 1, !tbaa !9
  %485 = sext i8 %484 to i64
  %486 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %485, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 %486)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %487

; <label>:487                                     ; preds = %515, %472
  %488 = load i32, i32* %i, align 4, !tbaa !1
  %489 = icmp slt i32 %488, 6
  br i1 %489, label %490, label %518

; <label>:490                                     ; preds = %487
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %491

; <label>:491                                     ; preds = %511, %490
  %492 = load i32, i32* %j, align 4, !tbaa !1
  %493 = icmp slt i32 %492, 1
  br i1 %493, label %494, label %514

; <label>:494                                     ; preds = %491
  %495 = load i32, i32* %j, align 4, !tbaa !1
  %496 = sext i32 %495 to i64
  %497 = load i32, i32* %i, align 4, !tbaa !1
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [6 x [1 x i16]], [6 x [1 x i16]]* @g_3656, i32 0, i64 %498
  %500 = getelementptr inbounds [1 x i16], [1 x i16]* %499, i32 0, i64 %496
  %501 = load volatile i16, i16* %500, align 2, !tbaa !10
  %502 = zext i16 %501 to i64
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %502, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i32 %503)
  %504 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %510

; <label>:506                                     ; preds = %494
  %507 = load i32, i32* %i, align 4, !tbaa !1
  %508 = load i32, i32* %j, align 4, !tbaa !1
  %509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 %507, i32 %508)
  br label %510

; <label>:510                                     ; preds = %506, %494
  br label %511

; <label>:511                                     ; preds = %510
  %512 = load i32, i32* %j, align 4, !tbaa !1
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %j, align 4, !tbaa !1
  br label %491

; <label>:514                                     ; preds = %491
  br label %515

; <label>:515                                     ; preds = %514
  %516 = load i32, i32* %i, align 4, !tbaa !1
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %i, align 4, !tbaa !1
  br label %487

; <label>:518                                     ; preds = %487
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %519

; <label>:519                                     ; preds = %535, %518
  %520 = load i32, i32* %i, align 4, !tbaa !1
  %521 = icmp slt i32 %520, 4
  br i1 %521, label %522, label %538

; <label>:522                                     ; preds = %519
  %523 = load i32, i32* %i, align 4, !tbaa !1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [4 x i32], [4 x i32]* @g_3679, i32 0, i64 %524
  %526 = load i32, i32* %525, align 4, !tbaa !1
  %527 = sext i32 %526 to i64
  %528 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %527, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %528)
  %529 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %534

; <label>:531                                     ; preds = %522
  %532 = load i32, i32* %i, align 4, !tbaa !1
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %532)
  br label %534

; <label>:534                                     ; preds = %531, %522
  br label %535

; <label>:535                                     ; preds = %534
  %536 = load i32, i32* %i, align 4, !tbaa !1
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %i, align 4, !tbaa !1
  br label %519

; <label>:538                                     ; preds = %519
  %539 = load i16, i16* @g_3717, align 2, !tbaa !10
  %540 = sext i16 %539 to i64
  %541 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %540, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 %541)
  %542 = load volatile i8, i8* @g_3793, align 1, !tbaa !9
  %543 = sext i8 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 %544)
  %545 = load i32, i32* @g_3795, align 4, !tbaa !1
  %546 = sext i32 %545 to i64
  %547 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %546, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %547)
  %548 = load volatile i16, i16* @g_3796, align 2, !tbaa !10
  %549 = sext i16 %548 to i64
  %550 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %549, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 %550)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %551

; <label>:551                                     ; preds = %567, %538
  %552 = load i32, i32* %i, align 4, !tbaa !1
  %553 = icmp slt i32 %552, 8
  br i1 %553, label %554, label %570

; <label>:554                                     ; preds = %551
  %555 = load i32, i32* %i, align 4, !tbaa !1
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [8 x i32], [8 x i32]* @g_3811, i32 0, i64 %556
  %558 = load volatile i32, i32* %557, align 4, !tbaa !1
  %559 = sext i32 %558 to i64
  %560 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %559, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 %560)
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %566

; <label>:563                                     ; preds = %554
  %564 = load i32, i32* %i, align 4, !tbaa !1
  %565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %564)
  br label %566

; <label>:566                                     ; preds = %563, %554
  br label %567

; <label>:567                                     ; preds = %566
  %568 = load i32, i32* %i, align 4, !tbaa !1
  %569 = add nsw i32 %568, 1
  store i32 %569, i32* %i, align 4, !tbaa !1
  br label %551

; <label>:570                                     ; preds = %551
  %571 = load i16, i16* @g_4017, align 2, !tbaa !10
  %572 = zext i16 %571 to i64
  %573 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %572, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %573)
  %574 = load i32, i32* @g_4218, align 4, !tbaa !1
  %575 = sext i32 %574 to i64
  %576 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %575, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %576)
  %577 = load i32, i32* @g_4410, align 4, !tbaa !1
  %578 = sext i32 %577 to i64
  %579 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %578, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %579)
  %580 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 7927623523168399653, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 %580)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %581

; <label>:581                                     ; preds = %596, %570
  %582 = load i32, i32* %i, align 4, !tbaa !1
  %583 = icmp slt i32 %582, 5
  br i1 %583, label %584, label %599

; <label>:584                                     ; preds = %581
  %585 = load i32, i32* %i, align 4, !tbaa !1
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [5 x i64], [5 x i64]* @g_4556, i32 0, i64 %586
  %588 = load i64, i64* %587, align 8, !tbaa !7
  %589 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %588, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %589)
  %590 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %595

; <label>:592                                     ; preds = %584
  %593 = load i32, i32* %i, align 4, !tbaa !1
  %594 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %593)
  br label %595

; <label>:595                                     ; preds = %592, %584
  br label %596

; <label>:596                                     ; preds = %595
  %597 = load i32, i32* %i, align 4, !tbaa !1
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %i, align 4, !tbaa !1
  br label %581

; <label>:599                                     ; preds = %581
  %600 = load i8, i8* @g_4606, align 1, !tbaa !9
  %601 = sext i8 %600 to i64
  %602 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %601, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 %602)
  %603 = load volatile i16, i16* @g_4619, align 2, !tbaa !10
  %604 = sext i16 %603 to i64
  %605 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %604, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %605)
  %606 = load i8, i8* @g_4814, align 1, !tbaa !9
  %607 = sext i8 %606 to i64
  %608 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %607, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i32 %608)
  %609 = load volatile i16, i16* @g_4881, align 2, !tbaa !10
  %610 = sext i16 %609 to i64
  %611 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %610, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i32 %611)
  %612 = load volatile i64, i64* @g_4891, align 8, !tbaa !7
  %613 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %612, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i32 %613)
  %614 = load i16, i16* @g_5172, align 2, !tbaa !10
  %615 = sext i16 %614 to i64
  %616 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %615, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i32 %616)
  %617 = load i32, i32* @g_5251, align 4, !tbaa !1
  %618 = zext i32 %617 to i64
  %619 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %618, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %619)
  %620 = load i64, i64* @g_5546, align 8, !tbaa !7
  %621 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %620, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i32 %621)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %622

; <label>:622                                     ; preds = %650, %599
  %623 = load i32, i32* %i, align 4, !tbaa !1
  %624 = icmp slt i32 %623, 3
  br i1 %624, label %625, label %653

; <label>:625                                     ; preds = %622
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %626

; <label>:626                                     ; preds = %646, %625
  %627 = load i32, i32* %j, align 4, !tbaa !1
  %628 = icmp slt i32 %627, 10
  br i1 %628, label %629, label %649

; <label>:629                                     ; preds = %626
  %630 = load i32, i32* %j, align 4, !tbaa !1
  %631 = sext i32 %630 to i64
  %632 = load i32, i32* %i, align 4, !tbaa !1
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds [3 x [10 x i16]], [3 x [10 x i16]]* @g_5551, i32 0, i64 %633
  %635 = getelementptr inbounds [10 x i16], [10 x i16]* %634, i32 0, i64 %631
  %636 = load i16, i16* %635, align 2, !tbaa !10
  %637 = sext i16 %636 to i64
  %638 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %637, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i32 0, i32 0), i32 %638)
  %639 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %645

; <label>:641                                     ; preds = %629
  %642 = load i32, i32* %i, align 4, !tbaa !1
  %643 = load i32, i32* %j, align 4, !tbaa !1
  %644 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 %642, i32 %643)
  br label %645

; <label>:645                                     ; preds = %641, %629
  br label %646

; <label>:646                                     ; preds = %645
  %647 = load i32, i32* %j, align 4, !tbaa !1
  %648 = add nsw i32 %647, 1
  store i32 %648, i32* %j, align 4, !tbaa !1
  br label %626

; <label>:649                                     ; preds = %626
  br label %650

; <label>:650                                     ; preds = %649
  %651 = load i32, i32* %i, align 4, !tbaa !1
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %i, align 4, !tbaa !1
  br label %622

; <label>:653                                     ; preds = %622
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %654

; <label>:654                                     ; preds = %694, %653
  %655 = load i32, i32* %i, align 4, !tbaa !1
  %656 = icmp slt i32 %655, 7
  br i1 %656, label %657, label %697

; <label>:657                                     ; preds = %654
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %658

; <label>:658                                     ; preds = %690, %657
  %659 = load i32, i32* %j, align 4, !tbaa !1
  %660 = icmp slt i32 %659, 3
  br i1 %660, label %661, label %693

; <label>:661                                     ; preds = %658
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %662

; <label>:662                                     ; preds = %686, %661
  %663 = load i32, i32* %k, align 4, !tbaa !1
  %664 = icmp slt i32 %663, 2
  br i1 %664, label %665, label %689

; <label>:665                                     ; preds = %662
  %666 = load i32, i32* %k, align 4, !tbaa !1
  %667 = sext i32 %666 to i64
  %668 = load i32, i32* %j, align 4, !tbaa !1
  %669 = sext i32 %668 to i64
  %670 = load i32, i32* %i, align 4, !tbaa !1
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [7 x [3 x [2 x i32]]], [7 x [3 x [2 x i32]]]* @g_5641, i32 0, i64 %671
  %673 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %672, i32 0, i64 %669
  %674 = getelementptr inbounds [2 x i32], [2 x i32]* %673, i32 0, i64 %667
  %675 = load volatile i32, i32* %674, align 4, !tbaa !1
  %676 = zext i32 %675 to i64
  %677 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %676, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0), i32 %677)
  %678 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %685

; <label>:680                                     ; preds = %665
  %681 = load i32, i32* %i, align 4, !tbaa !1
  %682 = load i32, i32* %j, align 4, !tbaa !1
  %683 = load i32, i32* %k, align 4, !tbaa !1
  %684 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), i32 %681, i32 %682, i32 %683)
  br label %685

; <label>:685                                     ; preds = %680, %665
  br label %686

; <label>:686                                     ; preds = %685
  %687 = load i32, i32* %k, align 4, !tbaa !1
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %k, align 4, !tbaa !1
  br label %662

; <label>:689                                     ; preds = %662
  br label %690

; <label>:690                                     ; preds = %689
  %691 = load i32, i32* %j, align 4, !tbaa !1
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %j, align 4, !tbaa !1
  br label %658

; <label>:693                                     ; preds = %658
  br label %694

; <label>:694                                     ; preds = %693
  %695 = load i32, i32* %i, align 4, !tbaa !1
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %i, align 4, !tbaa !1
  br label %654

; <label>:697                                     ; preds = %654
  %698 = load i16, i16* @g_5865, align 2, !tbaa !10
  %699 = zext i16 %698 to i64
  %700 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %699, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.87, i32 0, i32 0), i32 %700)
  %701 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %702 = zext i32 %701 to i64
  %703 = xor i64 %702, 4294967295
  %704 = trunc i64 %703 to i32
  %705 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %704, i32 %705)
  %706 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %706) #1
  %707 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %707) #1
  %708 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %708) #1
  %709 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %709) #1
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
  %l_41 = alloca i16, align 2
  %l_61 = alloca i32*, align 8
  %l_2867 = alloca i8, align 1
  %l_2869 = alloca i32*, align 8
  %l_5386 = alloca i32, align 4
  %l_5388 = alloca i32, align 4
  %l_5389 = alloca i32, align 4
  %l_5410 = alloca i8***, align 8
  %l_5409 = alloca i8****, align 8
  %l_5443 = alloca i32, align 4
  %l_5460 = alloca i64, align 8
  %l_5468 = alloca i64, align 8
  %l_5504 = alloca i64, align 8
  %l_5509 = alloca i32**, align 8
  %l_5510 = alloca [5 x i64***], align 16
  %l_5521 = alloca [2 x i32***], align 16
  %l_5525 = alloca i64***, align 8
  %l_5569 = alloca i32, align 4
  %l_5581 = alloca [5 x [3 x [6 x i8*****]]], align 16
  %l_5596 = alloca i32, align 4
  %l_5629 = alloca i32, align 4
  %l_5634 = alloca i32***, align 8
  %l_5633 = alloca i32****, align 8
  %l_5632 = alloca [9 x [4 x i32*****]], align 16
  %l_5658 = alloca [8 x i8], align 1
  %l_5671 = alloca i8, align 1
  %l_5765 = alloca i32, align 4
  %l_5769 = alloca i16, align 2
  %l_5811 = alloca i32, align 4
  %l_5864 = alloca i16, align 2
  %l_5904 = alloca i8*, align 8
  %l_5907 = alloca i64, align 8
  %l_5908 = alloca i16, align 2
  %l_5911 = alloca i8*****, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_6 = alloca [8 x i8], align 1
  %l_14 = alloca i32, align 4
  %l_2868 = alloca i32*, align 8
  %l_5382 = alloca i64, align 8
  %l_5391 = alloca [8 x [4 x i32]], align 16
  %l_5392 = alloca i64, align 8
  %l_5399 = alloca [5 x i16], align 2
  %l_5403 = alloca i16****, align 8
  %l_5411 = alloca i32**, align 8
  %l_5433 = alloca i32**, align 8
  %l_5432 = alloca i32***, align 8
  %l_5431 = alloca i32****, align 8
  %l_5438 = alloca i32, align 4
  %l_5439 = alloca i32, align 4
  %l_5475 = alloca [8 x i8], align 1
  %l_5490 = alloca i32*, align 8
  %l_5489 = alloca i32**, align 8
  %l_5506 = alloca [5 x i32], align 16
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %l_13 = alloca [5 x [7 x [7 x i16]]], align 16
  %l_15 = alloca i32, align 4
  %l_18 = alloca i32, align 4
  %l_21 = alloca i32, align 4
  %l_54 = alloca i32, align 4
  %l_5395 = alloca i32, align 4
  %l_5397 = alloca i32, align 4
  %l_5402 = alloca i8, align 1
  %l_5406 = alloca [8 x i8***], align 16
  %l_5405 = alloca i8****, align 8
  %l_5488 = alloca i32**, align 8
  %l_5505 = alloca i32*, align 8
  %i3 = alloca i32, align 4
  %j4 = alloca i32, align 4
  %k5 = alloca i32, align 4
  %l_11 = alloca [8 x i32*], align 16
  %l_19 = alloca i32, align 4
  %l_60 = alloca i16*, align 8
  %l_5503 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %2 = alloca i32
  %l_5516 = alloca i64, align 8
  %l_5519 = alloca [1 x i32****], align 8
  %l_5520 = alloca i32*****, align 8
  %l_5524 = alloca i16, align 2
  %l_5541 = alloca i32, align 4
  %l_5594 = alloca i32, align 4
  %l_5595 = alloca i8, align 1
  %l_5656 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %l_5526 = alloca [3 x i64****], align 16
  %l_5549 = alloca i32, align 4
  %l_5571 = alloca i16, align 2
  %l_5572 = alloca i32, align 4
  %l_5597 = alloca i32, align 4
  %l_5618 = alloca i64, align 8
  %l_5619 = alloca [4 x [5 x i32*]], align 16
  %l_5657 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %l_5538 = alloca [6 x [9 x i8]], align 16
  %l_5545 = alloca i64*, align 8
  %l_5544 = alloca [7 x i64**], align 16
  %l_5543 = alloca i64***, align 8
  %l_5550 = alloca i32, align 4
  %l_5558 = alloca i32, align 4
  %l_5570 = alloca i8***, align 8
  %l_5616 = alloca i32**, align 8
  %l_5640 = alloca i32, align 4
  %i10 = alloca i32, align 4
  %j11 = alloca i32, align 4
  %l_5559 = alloca [7 x i32], align 16
  %l_5573 = alloca i8***, align 8
  %l_5576 = alloca i32, align 4
  %l_5614 = alloca i32***, align 8
  %l_5613 = alloca i32****, align 8
  %l_5622 = alloca i64, align 8
  %i12 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %j15 = alloca i32, align 4
  %l_5615 = alloca i64, align 8
  %l_5617 = alloca i8, align 1
  %l_5635 = alloca i32*, align 8
  %l_5636 = alloca i32*, align 8
  %i16 = alloca i32, align 4
  %l_5637 = alloca i32*, align 8
  %l_5649 = alloca i32*, align 8
  %l_5648 = alloca i32**, align 8
  %l_5651 = alloca i32*, align 8
  %l_5650 = alloca i32**, align 8
  %i17 = alloca i32, align 4
  %j18 = alloca i32, align 4
  %l_5670 = alloca i16, align 2
  %l_5673 = alloca [9 x i32*], align 16
  %l_5676 = alloca i32, align 4
  %l_5677 = alloca [1 x [9 x i16*]], align 16
  %l_5678 = alloca i32, align 4
  %l_5679 = alloca i32, align 4
  %l_5688 = alloca i8, align 1
  %l_5691 = alloca i32, align 4
  %l_5694 = alloca i32, align 4
  %l_5695 = alloca i32, align 4
  %l_5696 = alloca i32, align 4
  %l_5697 = alloca i32, align 4
  %l_5698 = alloca i32, align 4
  %l_5699 = alloca [7 x [5 x i32]], align 16
  %l_5718 = alloca i8*, align 8
  %l_5721 = alloca [7 x [5 x i32]], align 16
  %l_5774 = alloca i16, align 2
  %l_5778 = alloca i32, align 4
  %l_5802 = alloca i64****, align 8
  %l_5841 = alloca i64, align 8
  %l_5850 = alloca i64***, align 8
  %i24 = alloca i32, align 4
  %j25 = alloca i32, align 4
  %l_5687 = alloca i32**, align 8
  %l_5686 = alloca i32***, align 8
  %l_5685 = alloca i32****, align 8
  %l_5689 = alloca i32, align 4
  %l_5690 = alloca [3 x i32], align 4
  %l_5724 = alloca i64, align 8
  %i26 = alloca i32, align 4
  %l_5692 = alloca i32, align 4
  %l_5693 = alloca [8 x i32], align 16
  %l_5700 = alloca i8, align 1
  %i27 = alloca i32, align 4
  %l_5723 = alloca [7 x [5 x [7 x i32]]], align 16
  %l_5730 = alloca [6 x [9 x i8**]], align 16
  %l_5762 = alloca i32, align 4
  %i28 = alloca i32, align 4
  %j29 = alloca i32, align 4
  %k30 = alloca i32, align 4
  %l_5720 = alloca [10 x [6 x [2 x i16]]], align 16
  %l_5722 = alloca i32, align 4
  %l_5746 = alloca i32, align 4
  %l_5766 = alloca i16, align 2
  %l_5767 = alloca i32, align 4
  %l_5768 = alloca i32, align 4
  %i31 = alloca i32, align 4
  %j32 = alloca i32, align 4
  %k33 = alloca i32, align 4
  %l_5715 = alloca i16, align 2
  %l_5719 = alloca i32, align 4
  %l_5729 = alloca [5 x [8 x [4 x i8**]]], align 16
  %l_5738 = alloca i16*, align 8
  %l_5749 = alloca i32, align 4
  %l_5750 = alloca i16, align 2
  %i34 = alloca i32, align 4
  %j35 = alloca i32, align 4
  %k36 = alloca i32, align 4
  %l_5772 = alloca i64, align 8
  %l_5773 = alloca [6 x [5 x [5 x i32]]], align 16
  %i40 = alloca i32, align 4
  %j41 = alloca i32, align 4
  %k42 = alloca i32, align 4
  %l_5777 = alloca i32, align 4
  %i43 = alloca i32, align 4
  %l_5781 = alloca i32**, align 8
  %i44 = alloca i32, align 4
  %l_5803 = alloca i16, align 2
  %l_5804 = alloca i32, align 4
  %l_5805 = alloca i32, align 4
  %l_5806 = alloca i32, align 4
  %l_5807 = alloca i32, align 4
  %l_5808 = alloca i32, align 4
  %l_5809 = alloca i32, align 4
  %l_5810 = alloca [7 x i32], align 16
  %l_5851 = alloca i64***, align 8
  %l_5863 = alloca [3 x i16*], align 16
  %l_5884 = alloca i64, align 8
  %l_5886 = alloca i64****, align 8
  %l_5885 = alloca i64*****, align 8
  %l_5895 = alloca i8, align 1
  %i46 = alloca i32, align 4
  %l_5818 = alloca i32, align 4
  %l_5848 = alloca i32, align 4
  %i47 = alloca i32, align 4
  %l_5849 = alloca [8 x [6 x i64****]], align 16
  %l_5852 = alloca i32, align 4
  %i48 = alloca i32, align 4
  %j49 = alloca i32, align 4
  %l_5901 = alloca i64, align 8
  %3 = bitcast i16* %l_41 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  store i16 267, i16* %l_41, align 2, !tbaa !10
  %4 = bitcast i32** %l_61 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i32* @g_12, i32** %l_61, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_2867) #1
  store i8 42, i8* %l_2867, align 1, !tbaa !9
  %5 = bitcast i32** %l_2869 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_8, i32 0, i64 0), i32** %l_2869, align 8, !tbaa !5
  %6 = bitcast i32* %l_5386 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 1, i32* %l_5386, align 4, !tbaa !1
  %7 = bitcast i32* %l_5388 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -733796405, i32* %l_5388, align 4, !tbaa !1
  %8 = bitcast i32* %l_5389 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 3, i32* %l_5389, align 4, !tbaa !1
  %9 = bitcast i8**** %l_5410 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i8*** @g_3606, i8**** %l_5410, align 8, !tbaa !5
  %10 = bitcast i8***** %l_5409 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8**** %l_5410, i8***** %l_5409, align 8, !tbaa !5
  %11 = bitcast i32* %l_5443 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 -1, i32* %l_5443, align 4, !tbaa !1
  %12 = bitcast i64* %l_5460 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 -1, i64* %l_5460, align 8, !tbaa !7
  %13 = bitcast i64* %l_5468 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64 0, i64* %l_5468, align 8, !tbaa !7
  %14 = bitcast i64* %l_5504 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i64 -1, i64* %l_5504, align 8, !tbaa !7
  %15 = bitcast i32*** %l_5509 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i32** @g_3995, i32*** %l_5509, align 8, !tbaa !5
  %16 = bitcast [5 x i64***]* %l_5510 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %16) #1
  %17 = bitcast [2 x i32***]* %l_5521 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast i64**** %l_5525 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64*** @g_1737, i64**** %l_5525, align 8, !tbaa !5
  %19 = bitcast i32* %l_5569 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 -10, i32* %l_5569, align 4, !tbaa !1
  %20 = bitcast [5 x [3 x [6 x i8*****]]]* %l_5581 to i8*
  call void @llvm.lifetime.start(i64 720, i8* %20) #1
  %21 = getelementptr inbounds [5 x [3 x [6 x i8*****]]], [5 x [3 x [6 x i8*****]]]* %l_5581, i64 0, i64 0
  %22 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %21, i64 0, i64 0
  %23 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %22, i64 0, i64 0
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %23, !tbaa !5
  %24 = getelementptr inbounds i8*****, i8****** %23, i64 1
  store i8***** null, i8****** %24, !tbaa !5
  %25 = getelementptr inbounds i8*****, i8****** %24, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %25, !tbaa !5
  %26 = getelementptr inbounds i8*****, i8****** %25, i64 1
  store i8***** null, i8****** %26, !tbaa !5
  %27 = getelementptr inbounds i8*****, i8****** %26, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 4), i8****** %27, !tbaa !5
  %28 = getelementptr inbounds i8*****, i8****** %27, i64 1
  store i8***** %l_5409, i8****** %28, !tbaa !5
  %29 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %22, i64 1
  %30 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %29, i64 0, i64 0
  store i8***** %l_5409, i8****** %30, !tbaa !5
  %31 = getelementptr inbounds i8*****, i8****** %30, i64 1
  store i8***** %l_5409, i8****** %31, !tbaa !5
  %32 = getelementptr inbounds i8*****, i8****** %31, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 6), i8****** %32, !tbaa !5
  %33 = getelementptr inbounds i8*****, i8****** %32, i64 1
  store i8***** %l_5409, i8****** %33, !tbaa !5
  %34 = getelementptr inbounds i8*****, i8****** %33, i64 1
  store i8***** %l_5409, i8****** %34, !tbaa !5
  %35 = getelementptr inbounds i8*****, i8****** %34, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %35, !tbaa !5
  %36 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %29, i64 1
  %37 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %36, i64 0, i64 0
  store i8***** null, i8****** %37, !tbaa !5
  %38 = getelementptr inbounds i8*****, i8****** %37, i64 1
  store i8***** %l_5409, i8****** %38, !tbaa !5
  %39 = getelementptr inbounds i8*****, i8****** %38, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %39, !tbaa !5
  %40 = getelementptr inbounds i8*****, i8****** %39, i64 1
  store i8***** %l_5409, i8****** %40, !tbaa !5
  %41 = getelementptr inbounds i8*****, i8****** %40, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 4), i8****** %41, !tbaa !5
  %42 = getelementptr inbounds i8*****, i8****** %41, i64 1
  store i8***** %l_5409, i8****** %42, !tbaa !5
  %43 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %21, i64 1
  %44 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %43, i64 0, i64 0
  %45 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %44, i64 0, i64 0
  store i8***** null, i8****** %45, !tbaa !5
  %46 = getelementptr inbounds i8*****, i8****** %45, i64 1
  store i8***** null, i8****** %46, !tbaa !5
  %47 = getelementptr inbounds i8*****, i8****** %46, i64 1
  store i8***** null, i8****** %47, !tbaa !5
  %48 = getelementptr inbounds i8*****, i8****** %47, i64 1
  store i8***** %l_5409, i8****** %48, !tbaa !5
  %49 = getelementptr inbounds i8*****, i8****** %48, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %49, !tbaa !5
  %50 = getelementptr inbounds i8*****, i8****** %49, i64 1
  store i8***** %l_5409, i8****** %50, !tbaa !5
  %51 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %44, i64 1
  %52 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %51, i64 0, i64 0
  store i8***** %l_5409, i8****** %52, !tbaa !5
  %53 = getelementptr inbounds i8*****, i8****** %52, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %53, !tbaa !5
  %54 = getelementptr inbounds i8*****, i8****** %53, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %54, !tbaa !5
  %55 = getelementptr inbounds i8*****, i8****** %54, i64 1
  store i8***** null, i8****** %55, !tbaa !5
  %56 = getelementptr inbounds i8*****, i8****** %55, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %56, !tbaa !5
  %57 = getelementptr inbounds i8*****, i8****** %56, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %57, !tbaa !5
  %58 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %51, i64 1
  %59 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %58, i64 0, i64 0
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %59, !tbaa !5
  %60 = getelementptr inbounds i8*****, i8****** %59, i64 1
  store i8***** null, i8****** %60, !tbaa !5
  %61 = getelementptr inbounds i8*****, i8****** %60, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 6), i8****** %61, !tbaa !5
  %62 = getelementptr inbounds i8*****, i8****** %61, i64 1
  store i8***** null, i8****** %62, !tbaa !5
  %63 = getelementptr inbounds i8*****, i8****** %62, i64 1
  store i8***** null, i8****** %63, !tbaa !5
  %64 = getelementptr inbounds i8*****, i8****** %63, i64 1
  store i8***** %l_5409, i8****** %64, !tbaa !5
  %65 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %43, i64 1
  %66 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %65, i64 0, i64 0
  %67 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %66, i64 0, i64 0
  store i8***** %l_5409, i8****** %67, !tbaa !5
  %68 = getelementptr inbounds i8*****, i8****** %67, i64 1
  store i8***** %l_5409, i8****** %68, !tbaa !5
  %69 = getelementptr inbounds i8*****, i8****** %68, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %69, !tbaa !5
  %70 = getelementptr inbounds i8*****, i8****** %69, i64 1
  store i8***** %l_5409, i8****** %70, !tbaa !5
  %71 = getelementptr inbounds i8*****, i8****** %70, i64 1
  store i8***** %l_5409, i8****** %71, !tbaa !5
  %72 = getelementptr inbounds i8*****, i8****** %71, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %72, !tbaa !5
  %73 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %66, i64 1
  %74 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %73, i64 0, i64 0
  store i8***** null, i8****** %74, !tbaa !5
  %75 = getelementptr inbounds i8*****, i8****** %74, i64 1
  store i8***** %l_5409, i8****** %75, !tbaa !5
  %76 = getelementptr inbounds i8*****, i8****** %75, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %76, !tbaa !5
  %77 = getelementptr inbounds i8*****, i8****** %76, i64 1
  store i8***** %l_5409, i8****** %77, !tbaa !5
  %78 = getelementptr inbounds i8*****, i8****** %77, i64 1
  store i8***** null, i8****** %78, !tbaa !5
  %79 = getelementptr inbounds i8*****, i8****** %78, i64 1
  store i8***** %l_5409, i8****** %79, !tbaa !5
  %80 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %73, i64 1
  %81 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %80, i64 0, i64 0
  store i8***** null, i8****** %81, !tbaa !5
  %82 = getelementptr inbounds i8*****, i8****** %81, i64 1
  store i8***** null, i8****** %82, !tbaa !5
  %83 = getelementptr inbounds i8*****, i8****** %82, i64 1
  store i8***** null, i8****** %83, !tbaa !5
  %84 = getelementptr inbounds i8*****, i8****** %83, i64 1
  store i8***** %l_5409, i8****** %84, !tbaa !5
  %85 = getelementptr inbounds i8*****, i8****** %84, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %85, !tbaa !5
  %86 = getelementptr inbounds i8*****, i8****** %85, i64 1
  store i8***** %l_5409, i8****** %86, !tbaa !5
  %87 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %65, i64 1
  %88 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %87, i64 0, i64 0
  %89 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %88, i64 0, i64 0
  store i8***** %l_5409, i8****** %89, !tbaa !5
  %90 = getelementptr inbounds i8*****, i8****** %89, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %90, !tbaa !5
  %91 = getelementptr inbounds i8*****, i8****** %90, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %91, !tbaa !5
  %92 = getelementptr inbounds i8*****, i8****** %91, i64 1
  store i8***** null, i8****** %92, !tbaa !5
  %93 = getelementptr inbounds i8*****, i8****** %92, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %93, !tbaa !5
  %94 = getelementptr inbounds i8*****, i8****** %93, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %94, !tbaa !5
  %95 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %88, i64 1
  %96 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %95, i64 0, i64 0
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %96, !tbaa !5
  %97 = getelementptr inbounds i8*****, i8****** %96, i64 1
  store i8***** null, i8****** %97, !tbaa !5
  %98 = getelementptr inbounds i8*****, i8****** %97, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %98, !tbaa !5
  %99 = getelementptr inbounds i8*****, i8****** %98, i64 1
  store i8***** null, i8****** %99, !tbaa !5
  %100 = getelementptr inbounds i8*****, i8****** %99, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 4), i8****** %100, !tbaa !5
  %101 = getelementptr inbounds i8*****, i8****** %100, i64 1
  store i8***** %l_5409, i8****** %101, !tbaa !5
  %102 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %95, i64 1
  %103 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %102, i64 0, i64 0
  store i8***** %l_5409, i8****** %103, !tbaa !5
  %104 = getelementptr inbounds i8*****, i8****** %103, i64 1
  store i8***** %l_5409, i8****** %104, !tbaa !5
  %105 = getelementptr inbounds i8*****, i8****** %104, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 6), i8****** %105, !tbaa !5
  %106 = getelementptr inbounds i8*****, i8****** %105, i64 1
  store i8***** %l_5409, i8****** %106, !tbaa !5
  %107 = getelementptr inbounds i8*****, i8****** %106, i64 1
  store i8***** %l_5409, i8****** %107, !tbaa !5
  %108 = getelementptr inbounds i8*****, i8****** %107, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %108, !tbaa !5
  %109 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %87, i64 1
  %110 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %109, i64 0, i64 0
  %111 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %110, i64 0, i64 0
  store i8***** null, i8****** %111, !tbaa !5
  %112 = getelementptr inbounds i8*****, i8****** %111, i64 1
  store i8***** %l_5409, i8****** %112, !tbaa !5
  %113 = getelementptr inbounds i8*****, i8****** %112, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %113, !tbaa !5
  %114 = getelementptr inbounds i8*****, i8****** %113, i64 1
  store i8***** %l_5409, i8****** %114, !tbaa !5
  %115 = getelementptr inbounds i8*****, i8****** %114, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 4), i8****** %115, !tbaa !5
  %116 = getelementptr inbounds i8*****, i8****** %115, i64 1
  store i8***** %l_5409, i8****** %116, !tbaa !5
  %117 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %110, i64 1
  %118 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %117, i64 0, i64 0
  store i8***** null, i8****** %118, !tbaa !5
  %119 = getelementptr inbounds i8*****, i8****** %118, i64 1
  store i8***** null, i8****** %119, !tbaa !5
  %120 = getelementptr inbounds i8*****, i8****** %119, i64 1
  store i8***** null, i8****** %120, !tbaa !5
  %121 = getelementptr inbounds i8*****, i8****** %120, i64 1
  store i8***** %l_5409, i8****** %121, !tbaa !5
  %122 = getelementptr inbounds i8*****, i8****** %121, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %122, !tbaa !5
  %123 = getelementptr inbounds i8*****, i8****** %122, i64 1
  store i8***** %l_5409, i8****** %123, !tbaa !5
  %124 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %117, i64 1
  %125 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %124, i64 0, i64 0
  store i8***** %l_5409, i8****** %125, !tbaa !5
  %126 = getelementptr inbounds i8*****, i8****** %125, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %126, !tbaa !5
  %127 = getelementptr inbounds i8*****, i8****** %126, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %127, !tbaa !5
  %128 = getelementptr inbounds i8*****, i8****** %127, i64 1
  store i8***** null, i8****** %128, !tbaa !5
  %129 = getelementptr inbounds i8*****, i8****** %128, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 0), i8****** %129, !tbaa !5
  %130 = getelementptr inbounds i8*****, i8****** %129, i64 1
  store i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 1), i8****** %130, !tbaa !5
  %131 = bitcast i32* %l_5596 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  store i32 -1914855986, i32* %l_5596, align 4, !tbaa !1
  %132 = bitcast i32* %l_5629 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  store i32 9, i32* %l_5629, align 4, !tbaa !1
  %133 = bitcast i32**** %l_5634 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  store i32*** %l_5509, i32**** %l_5634, align 8, !tbaa !5
  %134 = bitcast i32***** %l_5633 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  store i32**** %l_5634, i32***** %l_5633, align 8, !tbaa !5
  %135 = bitcast [9 x [4 x i32*****]]* %l_5632 to i8*
  call void @llvm.lifetime.start(i64 288, i8* %135) #1
  %136 = getelementptr inbounds [9 x [4 x i32*****]], [9 x [4 x i32*****]]* %l_5632, i64 0, i64 0
  %137 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %136, i64 0, i64 0
  store i32***** null, i32****** %137, !tbaa !5
  %138 = getelementptr inbounds i32*****, i32****** %137, i64 1
  store i32***** %l_5633, i32****** %138, !tbaa !5
  %139 = getelementptr inbounds i32*****, i32****** %138, i64 1
  store i32***** %l_5633, i32****** %139, !tbaa !5
  %140 = getelementptr inbounds i32*****, i32****** %139, i64 1
  store i32***** %l_5633, i32****** %140, !tbaa !5
  %141 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %136, i64 1
  %142 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %141, i64 0, i64 0
  store i32***** %l_5633, i32****** %142, !tbaa !5
  %143 = getelementptr inbounds i32*****, i32****** %142, i64 1
  store i32***** null, i32****** %143, !tbaa !5
  %144 = getelementptr inbounds i32*****, i32****** %143, i64 1
  store i32***** %l_5633, i32****** %144, !tbaa !5
  %145 = getelementptr inbounds i32*****, i32****** %144, i64 1
  store i32***** %l_5633, i32****** %145, !tbaa !5
  %146 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %141, i64 1
  %147 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %146, i64 0, i64 0
  store i32***** %l_5633, i32****** %147, !tbaa !5
  %148 = getelementptr inbounds i32*****, i32****** %147, i64 1
  store i32***** null, i32****** %148, !tbaa !5
  %149 = getelementptr inbounds i32*****, i32****** %148, i64 1
  store i32***** %l_5633, i32****** %149, !tbaa !5
  %150 = getelementptr inbounds i32*****, i32****** %149, i64 1
  store i32***** null, i32****** %150, !tbaa !5
  %151 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %146, i64 1
  %152 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %151, i64 0, i64 0
  store i32***** %l_5633, i32****** %152, !tbaa !5
  %153 = getelementptr inbounds i32*****, i32****** %152, i64 1
  store i32***** %l_5633, i32****** %153, !tbaa !5
  %154 = getelementptr inbounds i32*****, i32****** %153, i64 1
  store i32***** %l_5633, i32****** %154, !tbaa !5
  %155 = getelementptr inbounds i32*****, i32****** %154, i64 1
  store i32***** %l_5633, i32****** %155, !tbaa !5
  %156 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %151, i64 1
  %157 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %156, i64 0, i64 0
  store i32***** %l_5633, i32****** %157, !tbaa !5
  %158 = getelementptr inbounds i32*****, i32****** %157, i64 1
  store i32***** null, i32****** %158, !tbaa !5
  %159 = getelementptr inbounds i32*****, i32****** %158, i64 1
  store i32***** %l_5633, i32****** %159, !tbaa !5
  %160 = getelementptr inbounds i32*****, i32****** %159, i64 1
  store i32***** %l_5633, i32****** %160, !tbaa !5
  %161 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %156, i64 1
  %162 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %161, i64 0, i64 0
  store i32***** null, i32****** %162, !tbaa !5
  %163 = getelementptr inbounds i32*****, i32****** %162, i64 1
  store i32***** null, i32****** %163, !tbaa !5
  %164 = getelementptr inbounds i32*****, i32****** %163, i64 1
  store i32***** %l_5633, i32****** %164, !tbaa !5
  %165 = getelementptr inbounds i32*****, i32****** %164, i64 1
  store i32***** %l_5633, i32****** %165, !tbaa !5
  %166 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %161, i64 1
  %167 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %166, i64 0, i64 0
  store i32***** null, i32****** %167, !tbaa !5
  %168 = getelementptr inbounds i32*****, i32****** %167, i64 1
  store i32***** %l_5633, i32****** %168, !tbaa !5
  %169 = getelementptr inbounds i32*****, i32****** %168, i64 1
  store i32***** %l_5633, i32****** %169, !tbaa !5
  %170 = getelementptr inbounds i32*****, i32****** %169, i64 1
  store i32***** %l_5633, i32****** %170, !tbaa !5
  %171 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %166, i64 1
  %172 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %171, i64 0, i64 0
  store i32***** %l_5633, i32****** %172, !tbaa !5
  %173 = getelementptr inbounds i32*****, i32****** %172, i64 1
  store i32***** null, i32****** %173, !tbaa !5
  %174 = getelementptr inbounds i32*****, i32****** %173, i64 1
  store i32***** %l_5633, i32****** %174, !tbaa !5
  %175 = getelementptr inbounds i32*****, i32****** %174, i64 1
  store i32***** %l_5633, i32****** %175, !tbaa !5
  %176 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %171, i64 1
  %177 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %176, i64 0, i64 0
  store i32***** %l_5633, i32****** %177, !tbaa !5
  %178 = getelementptr inbounds i32*****, i32****** %177, i64 1
  store i32***** null, i32****** %178, !tbaa !5
  %179 = getelementptr inbounds i32*****, i32****** %178, i64 1
  store i32***** %l_5633, i32****** %179, !tbaa !5
  %180 = getelementptr inbounds i32*****, i32****** %179, i64 1
  store i32***** %l_5633, i32****** %180, !tbaa !5
  %181 = bitcast [8 x i8]* %l_5658 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = bitcast [8 x i8]* %l_5658 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @func_1.l_5658, i32 0, i32 0), i64 8, i32 1, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_5671) #1
  store i8 -7, i8* %l_5671, align 1, !tbaa !9
  %183 = bitcast i32* %l_5765 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  store i32 -141663439, i32* %l_5765, align 4, !tbaa !1
  %184 = bitcast i16* %l_5769 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %184) #1
  store i16 -9222, i16* %l_5769, align 2, !tbaa !10
  %185 = bitcast i32* %l_5811 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #1
  store i32 -8, i32* %l_5811, align 4, !tbaa !1
  %186 = bitcast i16* %l_5864 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %186) #1
  store i16 21889, i16* %l_5864, align 2, !tbaa !10
  %187 = bitcast i8** %l_5904 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  store i8* @g_428, i8** %l_5904, align 8, !tbaa !5
  %188 = bitcast i64* %l_5907 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %188) #1
  store i64 5674227620368453133, i64* %l_5907, align 8, !tbaa !7
  %189 = bitcast i16* %l_5908 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %189) #1
  store i16 -1, i16* %l_5908, align 2, !tbaa !10
  %190 = bitcast i8****** %l_5911 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %190) #1
  store i8***** null, i8****** %l_5911, align 8, !tbaa !5
  %191 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  %192 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %192) #1
  %193 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:194                                     ; preds = %201, %0
  %195 = load i32, i32* %i, align 4, !tbaa !1
  %196 = icmp slt i32 %195, 5
  br i1 %196, label %197, label %204

; <label>:197                                     ; preds = %194
  %198 = load i32, i32* %i, align 4, !tbaa !1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [5 x i64***], [5 x i64***]* %l_5510, i32 0, i64 %199
  store i64*** getelementptr inbounds ([3 x [1 x [2 x i64**]]], [3 x [1 x [2 x i64**]]]* @g_402, i32 0, i64 1, i64 0, i64 0), i64**** %200, align 8, !tbaa !5
  br label %201

; <label>:201                                     ; preds = %197
  %202 = load i32, i32* %i, align 4, !tbaa !1
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %i, align 4, !tbaa !1
  br label %194

; <label>:204                                     ; preds = %194
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:205                                     ; preds = %212, %204
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = icmp slt i32 %206, 2
  br i1 %207, label %208, label %215

; <label>:208                                     ; preds = %205
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [2 x i32***], [2 x i32***]* %l_5521, i32 0, i64 %210
  store i32*** @g_1841, i32**** %211, align 8, !tbaa !5
  br label %212

; <label>:212                                     ; preds = %208
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %i, align 4, !tbaa !1
  br label %205

; <label>:215                                     ; preds = %205
  br label %216

; <label>:216                                     ; preds = %1076, %215
  store i32 -17, i32* @g_3, align 4, !tbaa !1
  br label %217

; <label>:217                                     ; preds = %346, %216
  %218 = load i32, i32* @g_3, align 4, !tbaa !1
  %219 = icmp slt i32 %218, -26
  br i1 %219, label %220, label %349

; <label>:220                                     ; preds = %217
  %221 = bitcast [8 x i8]* %l_6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %221) #1
  %222 = bitcast [8 x i8]* %l_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @func_1.l_6, i32 0, i32 0), i64 8, i32 1, i1 false)
  %223 = bitcast i32* %l_14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223) #1
  store i32 -333768981, i32* %l_14, align 4, !tbaa !1
  %224 = bitcast i32** %l_2868 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %224) #1
  store i32* null, i32** %l_2868, align 8, !tbaa !5
  %225 = bitcast i64* %l_5382 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %225) #1
  store i64 -2348120804143165979, i64* %l_5382, align 8, !tbaa !7
  %226 = bitcast [8 x [4 x i32]]* %l_5391 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %226) #1
  %227 = bitcast [8 x [4 x i32]]* %l_5391 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %227, i8* bitcast ([8 x [4 x i32]]* @func_1.l_5391 to i8*), i64 128, i32 16, i1 false)
  %228 = bitcast i64* %l_5392 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #1
  store i64 8, i64* %l_5392, align 8, !tbaa !7
  %229 = bitcast [5 x i16]* %l_5399 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %229) #1
  %230 = bitcast [5 x i16]* %l_5399 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %230, i8* bitcast ([5 x i16]* @func_1.l_5399 to i8*), i64 10, i32 2, i1 false)
  %231 = bitcast i16***** %l_5403 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %231) #1
  store i16**** null, i16***** %l_5403, align 8, !tbaa !5
  %232 = bitcast i32*** %l_5411 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %232) #1
  store i32** @g_1338, i32*** %l_5411, align 8, !tbaa !5
  %233 = bitcast i32*** %l_5433 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #1
  store i32** @g_1338, i32*** %l_5433, align 8, !tbaa !5
  %234 = bitcast i32**** %l_5432 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %234) #1
  store i32*** %l_5433, i32**** %l_5432, align 8, !tbaa !5
  %235 = bitcast i32***** %l_5431 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %235) #1
  store i32**** %l_5432, i32***** %l_5431, align 8, !tbaa !5
  %236 = bitcast i32* %l_5438 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  store i32 1, i32* %l_5438, align 4, !tbaa !1
  %237 = bitcast i32* %l_5439 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %237) #1
  store i32 -1339450209, i32* %l_5439, align 4, !tbaa !1
  %238 = bitcast [8 x i8]* %l_5475 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %238) #1
  %239 = bitcast i32** %l_5490 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  store i32* @g_291, i32** %l_5490, align 8, !tbaa !5
  %240 = bitcast i32*** %l_5489 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %240) #1
  store i32** %l_5490, i32*** %l_5489, align 8, !tbaa !5
  %241 = bitcast [5 x i32]* %l_5506 to i8*
  call void @llvm.lifetime.start(i64 20, i8* %241) #1
  %242 = bitcast [5 x i32]* %l_5506 to i8*
  call void @llvm.memset.p0i8.i64(i8* %242, i8 0, i64 20, i32 16, i1 false)
  %243 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %243) #1
  %244 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %244) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %245

; <label>:245                                     ; preds = %252, %220
  %246 = load i32, i32* %i1, align 4, !tbaa !1
  %247 = icmp slt i32 %246, 8
  br i1 %247, label %248, label %255

; <label>:248                                     ; preds = %245
  %249 = load i32, i32* %i1, align 4, !tbaa !1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [8 x i8], [8 x i8]* %l_5475, i32 0, i64 %250
  store i8 -5, i8* %251, align 1, !tbaa !9
  br label %252

; <label>:252                                     ; preds = %248
  %253 = load i32, i32* %i1, align 4, !tbaa !1
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %i1, align 4, !tbaa !1
  br label %245

; <label>:255                                     ; preds = %245
  store i32 1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_8, i32 0, i64 1), align 4, !tbaa !1
  br label %256

; <label>:256                                     ; preds = %320, %255
  %257 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_8, i32 0, i64 1), align 4, !tbaa !1
  %258 = icmp sle i32 %257, 7
  br i1 %258, label %259, label %323

; <label>:259                                     ; preds = %256
  %260 = bitcast [5 x [7 x [7 x i16]]]* %l_13 to i8*
  call void @llvm.lifetime.start(i64 490, i8* %260) #1
  %261 = bitcast [5 x [7 x [7 x i16]]]* %l_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %261, i8* bitcast ([5 x [7 x [7 x i16]]]* @func_1.l_13 to i8*), i64 490, i32 16, i1 false)
  %262 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #1
  store i32 -327274101, i32* %l_15, align 4, !tbaa !1
  %263 = bitcast i32* %l_18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %263) #1
  store i32 480754753, i32* %l_18, align 4, !tbaa !1
  %264 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %264) #1
  store i32 257896424, i32* %l_21, align 4, !tbaa !1
  %265 = bitcast i32* %l_54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %265) #1
  store i32 -953974578, i32* %l_54, align 4, !tbaa !1
  %266 = bitcast i32* %l_5395 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %266) #1
  store i32 714650233, i32* %l_5395, align 4, !tbaa !1
  %267 = bitcast i32* %l_5397 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %267) #1
  store i32 -1, i32* %l_5397, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_5402) #1
  store i8 -106, i8* %l_5402, align 1, !tbaa !9
  %268 = bitcast [8 x i8***]* %l_5406 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %268) #1
  %269 = bitcast [8 x i8***]* %l_5406 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %269, i8* bitcast ([8 x i8***]* @func_1.l_5406 to i8*), i64 64, i32 16, i1 false)
  %270 = bitcast i8***** %l_5405 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %270) #1
  %271 = getelementptr inbounds [8 x i8***], [8 x i8***]* %l_5406, i32 0, i64 7
  store i8**** %271, i8***** %l_5405, align 8, !tbaa !5
  %272 = bitcast i32*** %l_5488 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %272) #1
  store i32** @g_1338, i32*** %l_5488, align 8, !tbaa !5
  %273 = bitcast i32** %l_5505 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %273) #1
  store i32* %l_18, i32** %l_5505, align 8, !tbaa !5
  %274 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #1
  %275 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %275) #1
  %276 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %276) #1
  store i32 0, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_10, i32 0, i64 0), align 4, !tbaa !1
  br label %277

; <label>:277                                     ; preds = %297, %259
  %278 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_10, i32 0, i64 0), align 4, !tbaa !1
  %279 = icmp sle i32 %278, 7
  br i1 %279, label %280, label %300

; <label>:280                                     ; preds = %277
  %281 = bitcast [8 x i32*]* %l_11 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %281) #1
  %282 = bitcast [8 x i32*]* %l_11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %282, i8* bitcast ([8 x i32*]* @func_1.l_11 to i8*), i64 64, i32 16, i1 false)
  %283 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %283) #1
  store i32 -445210998, i32* %l_19, align 4, !tbaa !1
  %284 = bitcast i16** %l_60 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %284) #1
  %285 = getelementptr inbounds [5 x [7 x [7 x i16]]], [5 x [7 x [7 x i16]]]* %l_13, i32 0, i64 2
  %286 = getelementptr inbounds [7 x [7 x i16]], [7 x [7 x i16]]* %285, i32 0, i64 3
  %287 = getelementptr inbounds [7 x i16], [7 x i16]* %286, i32 0, i64 5
  store i16* %287, i16** %l_60, align 8, !tbaa !5
  %288 = bitcast i32* %l_5503 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %288) #1
  store i32 -5, i32* %l_5503, align 4, !tbaa !1
  %289 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %289) #1
  %290 = load i64, i64* getelementptr inbounds ([10 x [5 x [5 x i64]]], [10 x [5 x [5 x i64]]]* @g_23, i32 0, i64 8, i64 1, i64 1), align 8, !tbaa !7
  %291 = add i64 %290, 1
  store i64 %291, i64* getelementptr inbounds ([10 x [5 x [5 x i64]]], [10 x [5 x [5 x i64]]]* @g_23, i32 0, i64 8, i64 1, i64 1), align 8, !tbaa !7
  %292 = bitcast i32* %i6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %l_5503 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i16** %l_60 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i32* %l_19 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast [8 x i32*]* %l_11 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %296) #1
  br label %297

; <label>:297                                     ; preds = %280
  %298 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_10, i32 0, i64 0), align 4, !tbaa !1
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_10, i32 0, i64 0), align 4, !tbaa !1
  br label %277

; <label>:300                                     ; preds = %277
  %301 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_8, i32 0, i64 1), align 4, !tbaa !1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [8 x i8], [8 x i8]* %l_6, i32 0, i64 %302
  %304 = load i8, i8* %303, align 1, !tbaa !9
  %305 = zext i8 %304 to i32
  store i32 %305, i32* %1
  store i32 1, i32* %2
  %306 = bitcast i32* %k5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %j4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %i3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32** %l_5505 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #1
  %310 = bitcast i32*** %l_5488 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #1
  %311 = bitcast i8***** %l_5405 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast [8 x i8***]* %l_5406 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %312) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5402) #1
  %313 = bitcast i32* %l_5397 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %l_5395 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %l_54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %l_21 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %l_18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %l_15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast [5 x [7 x [7 x i16]]]* %l_13 to i8*
  call void @llvm.lifetime.end(i64 490, i8* %319) #1
  br label %324
                                                  ; No predecessors!
  %321 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_8, i32 0, i64 1), align 4, !tbaa !1
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @g_8, i32 0, i64 1), align 4, !tbaa !1
  br label %256

; <label>:323                                     ; preds = %256
  store i32 0, i32* %2
  br label %324

; <label>:324                                     ; preds = %323, %300
  %325 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
  %326 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast [5 x i32]* %l_5506 to i8*
  call void @llvm.lifetime.end(i64 20, i8* %327) #1
  %328 = bitcast i32*** %l_5489 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = bitcast i32** %l_5490 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329) #1
  %330 = bitcast [8 x i8]* %l_5475 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i32* %l_5439 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #1
  %332 = bitcast i32* %l_5438 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %332) #1
  %333 = bitcast i32***** %l_5431 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i32**** %l_5432 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %335 = bitcast i32*** %l_5433 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  %336 = bitcast i32*** %l_5411 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #1
  %337 = bitcast i16***** %l_5403 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %337) #1
  %338 = bitcast [5 x i16]* %l_5399 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %338) #1
  %339 = bitcast i64* %l_5392 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %339) #1
  %340 = bitcast [8 x [4 x i32]]* %l_5391 to i8*
  call void @llvm.lifetime.end(i64 128, i8* %340) #1
  %341 = bitcast i64* %l_5382 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #1
  %342 = bitcast i32** %l_2868 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #1
  %343 = bitcast i32* %l_14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast [8 x i8]* %l_6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #1
  %cleanup.dest = load i32, i32* %2
  switch i32 %cleanup.dest, label %2411 [
    i32 0, label %345
  ]

; <label>:345                                     ; preds = %324
  br label %346

; <label>:346                                     ; preds = %345
  %347 = load i32, i32* @g_3, align 4, !tbaa !1
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* @g_3, align 4, !tbaa !1
  br label %217

; <label>:349                                     ; preds = %217
  store i32** %l_2869, i32*** %l_5509, align 8, !tbaa !5
  %350 = getelementptr inbounds [5 x i64***], [5 x i64***]* %l_5510, i32 0, i64 2
  %351 = load i64***, i64**** %350, align 8, !tbaa !5
  %352 = icmp ne i64*** null, %351
  %353 = zext i1 %352 to i32
  %354 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %355 = load i32, i32* %354, align 4, !tbaa !1
  %356 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %357 = load i32, i32* %356, align 4, !tbaa !1
  %358 = load i32*, i32** %l_61, align 8, !tbaa !5
  %359 = load i32, i32* %358, align 4, !tbaa !1
  %360 = icmp ne i32 %359, 0
  %361 = xor i1 %360, true
  %362 = zext i1 %361 to i32
  %363 = sext i32 %362 to i64
  %364 = icmp sgt i64 37117, %363
  %365 = zext i1 %364 to i32
  %366 = icmp eq i32 %357, %365
  %367 = zext i1 %366 to i32
  %368 = icmp sgt i32 %355, %367
  %369 = zext i1 %368 to i32
  %370 = icmp ne i32** %l_2869, %l_61
  br i1 %370, label %371, label %1086

; <label>:371                                     ; preds = %349
  %372 = bitcast i64* %l_5516 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %372) #1
  store i64 1, i64* %l_5516, align 8, !tbaa !7
  %373 = bitcast [1 x i32****]* %l_5519 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %373) #1
  %374 = bitcast i32****** %l_5520 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %374) #1
  %375 = getelementptr inbounds [1 x i32****], [1 x i32****]* %l_5519, i32 0, i64 0
  store i32***** %375, i32****** %l_5520, align 8, !tbaa !5
  %376 = bitcast i16* %l_5524 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %376) #1
  store i16 -19256, i16* %l_5524, align 2, !tbaa !10
  %377 = bitcast i32* %l_5541 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %377) #1
  store i32 -2, i32* %l_5541, align 4, !tbaa !1
  %378 = bitcast i32* %l_5594 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %378) #1
  store i32 1679153318, i32* %l_5594, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_5595) #1
  store i8 1, i8* %l_5595, align 1, !tbaa !9
  %379 = bitcast i32* %l_5656 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %379) #1
  store i32 -2061032632, i32* %l_5656, align 4, !tbaa !1
  %380 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %380) #1
  store i32 0, i32* %i7, align 4, !tbaa !1
  br label %381

; <label>:381                                     ; preds = %388, %371
  %382 = load i32, i32* %i7, align 4, !tbaa !1
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %384, label %391

; <label>:384                                     ; preds = %381
  %385 = load i32, i32* %i7, align 4, !tbaa !1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [1 x i32****], [1 x i32****]* %l_5519, i32 0, i64 %386
  store i32**** @g_722, i32***** %387, align 8, !tbaa !5
  br label %388

; <label>:388                                     ; preds = %384
  %389 = load i32, i32* %i7, align 4, !tbaa !1
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %i7, align 4, !tbaa !1
  br label %381

; <label>:391                                     ; preds = %381
  %392 = load i64, i64* %l_5516, align 8, !tbaa !7
  %393 = load i32**, i32*** %l_5509, align 8, !tbaa !5
  %394 = load i32*, i32** %393, align 8, !tbaa !5
  %395 = load i32, i32* %394, align 4, !tbaa !1
  %396 = sext i32 %395 to i64
  %397 = icmp sgt i64 %392, %396
  %398 = zext i1 %397 to i32
  %399 = load i32*****, i32****** @g_2103, align 8, !tbaa !5
  %400 = load i32****, i32***** %399, align 8, !tbaa !5
  %401 = getelementptr inbounds [1 x i32****], [1 x i32****]* %l_5519, i32 0, i64 0
  %402 = load i32****, i32***** %401, align 8, !tbaa !5
  %403 = load i32*****, i32****** %l_5520, align 8, !tbaa !5
  store i32**** %402, i32***** %403, align 8, !tbaa !5
  %404 = icmp eq i32**** %400, %402
  %405 = zext i1 %404 to i32
  %406 = getelementptr inbounds [2 x i32***], [2 x i32***]* %l_5521, i32 0, i64 0
  %407 = load i32***, i32**** %406, align 8, !tbaa !5
  %408 = getelementptr inbounds [2 x i32***], [2 x i32***]* %l_5521, i32 0, i64 1
  %409 = load i32***, i32**** %408, align 8, !tbaa !5
  %410 = icmp eq i32*** %407, %409
  %411 = zext i1 %410 to i32
  %412 = trunc i32 %411 to i16
  %413 = load volatile i16, i16* @g_4881, align 2, !tbaa !10
  %414 = load i64, i64* %l_5516, align 8, !tbaa !7
  %415 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %416 = load i32, i32* %415, align 4, !tbaa !1
  %417 = sext i32 %416 to i64
  %418 = call i64 @safe_mod_func_uint64_t_u_u(i64 1, i64 %417)
  %419 = load i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @g_1878, i32 0, i64 5), align 4, !tbaa !1
  %420 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %412, i16 signext 0)
  %421 = sext i16 %420 to i32
  %422 = or i32 %398, %421
  %423 = trunc i32 %422 to i8
  %424 = load i64, i64* %l_5516, align 8, !tbaa !7
  %425 = trunc i64 %424 to i8
  %426 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %423, i8 zeroext %425)
  %427 = zext i8 %426 to i32
  %428 = load i32**, i32*** @g_284, align 8, !tbaa !5
  %429 = load i32*, i32** %428, align 8, !tbaa !5
  %430 = load i32, i32* %429, align 4, !tbaa !1
  %431 = xor i32 %430, %427
  store i32 %431, i32* %429, align 4, !tbaa !1
  %432 = load i16, i16* %l_5524, align 2, !tbaa !10
  %433 = sext i16 %432 to i32
  %434 = xor i32 %433, %431
  %435 = trunc i32 %434 to i16
  store i16 %435, i16* %l_5524, align 2, !tbaa !10
  %436 = load i16, i16* %l_5524, align 2, !tbaa !10
  %437 = icmp ne i16 %436, 0
  br i1 %437, label %438, label %1070

; <label>:438                                     ; preds = %391
  %439 = bitcast [3 x i64****]* %l_5526 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %439) #1
  %440 = bitcast i32* %l_5549 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %440) #1
  store i32 -1, i32* %l_5549, align 4, !tbaa !1
  %441 = bitcast i16* %l_5571 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %441) #1
  store i16 0, i16* %l_5571, align 2, !tbaa !10
  %442 = bitcast i32* %l_5572 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %442) #1
  store i32 1, i32* %l_5572, align 4, !tbaa !1
  %443 = bitcast i32* %l_5597 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %443) #1
  store i32 953064307, i32* %l_5597, align 4, !tbaa !1
  %444 = bitcast i64* %l_5618 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %444) #1
  store i64 4, i64* %l_5618, align 8, !tbaa !7
  %445 = bitcast [4 x [5 x i32*]]* %l_5619 to i8*
  call void @llvm.lifetime.start(i64 160, i8* %445) #1
  %446 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_5619, i64 0, i64 0
  %447 = getelementptr inbounds [5 x i32*], [5 x i32*]* %446, i64 0, i64 0
  store i32* %l_5389, i32** %447, !tbaa !5
  %448 = getelementptr inbounds i32*, i32** %447, i64 1
  store i32* @g_375, i32** %448, !tbaa !5
  %449 = getelementptr inbounds i32*, i32** %448, i64 1
  store i32* %l_5389, i32** %449, !tbaa !5
  %450 = getelementptr inbounds i32*, i32** %449, i64 1
  store i32* %l_5389, i32** %450, !tbaa !5
  %451 = getelementptr inbounds i32*, i32** %450, i64 1
  store i32* @g_375, i32** %451, !tbaa !5
  %452 = getelementptr inbounds [5 x i32*], [5 x i32*]* %446, i64 1
  %453 = getelementptr inbounds [5 x i32*], [5 x i32*]* %452, i64 0, i64 0
  store i32* @g_375, i32** %453, !tbaa !5
  %454 = getelementptr inbounds i32*, i32** %453, i64 1
  store i32* %l_5389, i32** %454, !tbaa !5
  %455 = getelementptr inbounds i32*, i32** %454, i64 1
  store i32* %l_5389, i32** %455, !tbaa !5
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  store i32* @g_375, i32** %456, !tbaa !5
  %457 = getelementptr inbounds i32*, i32** %456, i64 1
  store i32* %l_5389, i32** %457, !tbaa !5
  %458 = getelementptr inbounds [5 x i32*], [5 x i32*]* %452, i64 1
  %459 = getelementptr inbounds [5 x i32*], [5 x i32*]* %458, i64 0, i64 0
  store i32* @g_375, i32** %459, !tbaa !5
  %460 = getelementptr inbounds i32*, i32** %459, i64 1
  store i32* @g_375, i32** %460, !tbaa !5
  %461 = getelementptr inbounds i32*, i32** %460, i64 1
  store i32* @g_3795, i32** %461, !tbaa !5
  %462 = getelementptr inbounds i32*, i32** %461, i64 1
  store i32* @g_375, i32** %462, !tbaa !5
  %463 = getelementptr inbounds i32*, i32** %462, i64 1
  store i32* @g_375, i32** %463, !tbaa !5
  %464 = getelementptr inbounds [5 x i32*], [5 x i32*]* %458, i64 1
  %465 = getelementptr inbounds [5 x i32*], [5 x i32*]* %464, i64 0, i64 0
  store i32* %l_5389, i32** %465, !tbaa !5
  %466 = getelementptr inbounds i32*, i32** %465, i64 1
  store i32* @g_375, i32** %466, !tbaa !5
  %467 = getelementptr inbounds i32*, i32** %466, i64 1
  store i32* %l_5389, i32** %467, !tbaa !5
  %468 = getelementptr inbounds i32*, i32** %467, i64 1
  store i32* %l_5389, i32** %468, !tbaa !5
  %469 = getelementptr inbounds i32*, i32** %468, i64 1
  store i32* @g_375, i32** %469, !tbaa !5
  %470 = bitcast i32* %l_5657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %470) #1
  store i32 515229734, i32* %l_5657, align 4, !tbaa !1
  %471 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %471) #1
  %472 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %472) #1
  store i32 0, i32* %i8, align 4, !tbaa !1
  br label %473

; <label>:473                                     ; preds = %480, %438
  %474 = load i32, i32* %i8, align 4, !tbaa !1
  %475 = icmp slt i32 %474, 3
  br i1 %475, label %476, label %483

; <label>:476                                     ; preds = %473
  %477 = load i32, i32* %i8, align 4, !tbaa !1
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [3 x i64****], [3 x i64****]* %l_5526, i32 0, i64 %478
  store i64**** %l_5525, i64***** %479, align 8, !tbaa !5
  br label %480

; <label>:480                                     ; preds = %476
  %481 = load i32, i32* %i8, align 4, !tbaa !1
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %i8, align 4, !tbaa !1
  br label %473

; <label>:483                                     ; preds = %473
  %484 = load i16****, i16***** @g_3185, align 8, !tbaa !5
  %485 = load i16***, i16**** %484, align 8, !tbaa !5
  store i16** null, i16*** %485, align 8, !tbaa !5
  br label %486

; <label>:486                                     ; preds = %1039, %483
  %487 = load i32*, i32** %l_61, align 8, !tbaa !5
  %488 = load i32, i32* %487, align 4, !tbaa !1
  %489 = load volatile i64****, i64***** @g_3133, align 8, !tbaa !5
  %490 = load i64***, i64**** %489, align 8, !tbaa !5
  %491 = load i64***, i64**** %l_5525, align 8, !tbaa !5
  store i64*** %491, i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 2), align 8, !tbaa !5
  %492 = icmp ne i64*** %490, %491
  %493 = zext i1 %492 to i32
  %494 = load i32**, i32*** @g_1169, align 8, !tbaa !5
  %495 = load i32*, i32** %494, align 8, !tbaa !5
  store i32 %493, i32* %495, align 4, !tbaa !1
  store i8 -22, i8* @g_4814, align 1, !tbaa !9
  br label %496

; <label>:496                                     ; preds = %1051, %486
  %497 = load i8, i8* @g_4814, align 1, !tbaa !9
  %498 = sext i8 %497 to i32
  %499 = icmp slt i32 %498, -15
  br i1 %499, label %500, label %1054

; <label>:500                                     ; preds = %496
  %501 = bitcast [6 x [9 x i8]]* %l_5538 to i8*
  call void @llvm.lifetime.start(i64 54, i8* %501) #1
  %502 = bitcast [6 x [9 x i8]]* %l_5538 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %502, i8* getelementptr inbounds ([6 x [9 x i8]], [6 x [9 x i8]]* @func_1.l_5538, i32 0, i32 0, i32 0), i64 54, i32 16, i1 false)
  %503 = bitcast i64** %l_5545 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %503) #1
  store i64* @g_5546, i64** %l_5545, align 8, !tbaa !5
  %504 = bitcast [7 x i64**]* %l_5544 to i8*
  call void @llvm.lifetime.start(i64 56, i8* %504) #1
  %505 = getelementptr inbounds [7 x i64**], [7 x i64**]* %l_5544, i64 0, i64 0
  store i64** %l_5545, i64*** %505, !tbaa !5
  %506 = getelementptr inbounds i64**, i64*** %505, i64 1
  store i64** %l_5545, i64*** %506, !tbaa !5
  %507 = getelementptr inbounds i64**, i64*** %506, i64 1
  store i64** %l_5545, i64*** %507, !tbaa !5
  %508 = getelementptr inbounds i64**, i64*** %507, i64 1
  store i64** %l_5545, i64*** %508, !tbaa !5
  %509 = getelementptr inbounds i64**, i64*** %508, i64 1
  store i64** %l_5545, i64*** %509, !tbaa !5
  %510 = getelementptr inbounds i64**, i64*** %509, i64 1
  store i64** %l_5545, i64*** %510, !tbaa !5
  %511 = getelementptr inbounds i64**, i64*** %510, i64 1
  store i64** %l_5545, i64*** %511, !tbaa !5
  %512 = bitcast i64**** %l_5543 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %512) #1
  %513 = getelementptr inbounds [7 x i64**], [7 x i64**]* %l_5544, i32 0, i64 5
  store i64*** %513, i64**** %l_5543, align 8, !tbaa !5
  %514 = bitcast i32* %l_5550 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %514) #1
  store i32 9, i32* %l_5550, align 4, !tbaa !1
  %515 = bitcast i32* %l_5558 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %515) #1
  store i32 1467971855, i32* %l_5558, align 4, !tbaa !1
  %516 = bitcast i8**** %l_5570 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %516) #1
  store i8*** @g_3606, i8**** %l_5570, align 8, !tbaa !5
  %517 = bitcast i32*** %l_5616 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %517) #1
  store i32** %l_2869, i32*** %l_5616, align 8, !tbaa !5
  %518 = bitcast i32* %l_5640 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %518) #1
  store i32 0, i32* %l_5640, align 4, !tbaa !1
  %519 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %519) #1
  %520 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %520) #1
  %521 = load i8**, i8*** @g_2346, align 8, !tbaa !5
  %522 = load i8*, i8** %521, align 8, !tbaa !5
  %523 = load i8, i8* %522, align 1, !tbaa !9
  %524 = getelementptr inbounds [6 x [9 x i8]], [6 x [9 x i8]]* %l_5538, i32 0, i64 2
  %525 = getelementptr inbounds [9 x i8], [9 x i8]* %524, i32 0, i64 5
  %526 = load i8, i8* %525, align 1, !tbaa !9
  %527 = zext i8 %526 to i64
  %528 = load i32, i32* %l_5541, align 4, !tbaa !1
  %529 = load i64***, i64**** %l_5543, align 8, !tbaa !5
  store i64** null, i64*** %529, align 8, !tbaa !5
  %530 = load volatile i64****, i64***** @g_3133, align 8, !tbaa !5
  %531 = load i64***, i64**** %530, align 8, !tbaa !5
  %532 = load i64**, i64*** %531, align 8, !tbaa !5
  %533 = icmp ne i64** null, %532
  %534 = zext i1 %533 to i32
  %535 = icmp ne i32 %528, %534
  %536 = zext i1 %535 to i32
  %537 = sext i32 %536 to i64
  %538 = icmp sgt i64 %537, 17061
  %539 = zext i1 %538 to i32
  %540 = sext i32 %539 to i64
  %541 = load i8*****, i8****** @g_5435, align 8, !tbaa !5
  %542 = load i8****, i8***** %541, align 8, !tbaa !5
  %543 = getelementptr inbounds [6 x [9 x i8]], [6 x [9 x i8]]* %l_5538, i32 0, i64 2
  %544 = getelementptr inbounds [9 x i8], [9 x i8]* %543, i32 0, i64 5
  %545 = load i8, i8* %544, align 1, !tbaa !9
  %546 = icmp eq i8**** %542, null
  %547 = zext i1 %546 to i32
  %548 = load i32, i32* %l_5550, align 4, !tbaa !1
  %549 = icmp ule i32 -1, %548
  %550 = zext i1 %549 to i32
  %551 = trunc i32 %550 to i16
  %552 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %551, i16 zeroext -25566)
  %553 = zext i16 %552 to i64
  %554 = call i64 @safe_add_func_uint64_t_u_u(i64 %540, i64 %553)
  %555 = load i32, i32* %l_5550, align 4, !tbaa !1
  %556 = zext i32 %555 to i64
  %557 = and i64 %554, %556
  %558 = or i64 %527, %557
  %559 = load i64, i64* %l_5516, align 8, !tbaa !7
  %560 = xor i64 %558, %559
  %561 = trunc i64 %560 to i8
  %562 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %523, i8 zeroext %561)
  %563 = zext i8 %562 to i32
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %568, label %565

; <label>:565                                     ; preds = %500
  %566 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_3679, i32 0, i64 2), align 4, !tbaa !1
  %567 = icmp ne i32 %566, 0
  br label %568

; <label>:568                                     ; preds = %565, %500
  %569 = phi i1 [ true, %500 ], [ %567, %565 ]
  %570 = zext i1 %569 to i32
  %571 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %572 = load i32, i32* %571, align 4, !tbaa !1
  %573 = icmp slt i32 %570, %572
  %574 = zext i1 %573 to i32
  %575 = load i8*, i8** @g_875, align 8, !tbaa !5
  %576 = load i8, i8* %575, align 1, !tbaa !9
  %577 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %576, i8 zeroext -1)
  %578 = load i8*, i8** @g_2634, align 8, !tbaa !5
  store i8 0, i8* %578, align 1, !tbaa !9
  %579 = load i16, i16* getelementptr inbounds ([3 x [10 x i16]], [3 x [10 x i16]]* @g_5551, i32 0, i64 2, i64 0), align 2, !tbaa !10
  %580 = trunc i16 %579 to i8
  %581 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext 0, i8 signext %580)
  %582 = sext i8 %581 to i32
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %585

; <label>:584                                     ; preds = %568
  br label %585

; <label>:585                                     ; preds = %584, %568
  %586 = phi i1 [ false, %568 ], [ true, %584 ]
  %587 = zext i1 %586 to i32
  %588 = load i8*, i8** @g_875, align 8, !tbaa !5
  %589 = load i8, i8* %588, align 1, !tbaa !9
  %590 = zext i8 %589 to i32
  %591 = icmp sge i32 %587, %590
  %592 = zext i1 %591 to i32
  %593 = load i64****, i64***** @g_824, align 8, !tbaa !5
  %594 = load i64***, i64**** %593, align 8, !tbaa !5
  %595 = bitcast i64*** %594 to i8*
  %596 = icmp eq i8* null, %595
  %597 = zext i1 %596 to i32
  %598 = trunc i32 %597 to i16
  %599 = load i16*, i16** @g_745, align 8, !tbaa !5
  store i16 %598, i16* %599, align 2, !tbaa !10
  %600 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %598, i16 signext -1651)
  %601 = sext i16 %600 to i32
  %602 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %603 = load i32, i32* %602, align 4, !tbaa !1
  %604 = icmp ne i32 %601, %603
  %605 = zext i1 %604 to i32
  %606 = load i32**, i32*** @g_1169, align 8, !tbaa !5
  %607 = load i32*, i32** %606, align 8, !tbaa !5
  store i32 %605, i32* %607, align 4, !tbaa !1
  store i32 0, i32* %l_5550, align 4, !tbaa !1
  br label %608

; <label>:608                                     ; preds = %1003, %585
  %609 = load i32, i32* %l_5550, align 4, !tbaa !1
  %610 = icmp ule i32 %609, 3
  br i1 %610, label %611, label %1006

; <label>:611                                     ; preds = %608
  %612 = bitcast [7 x i32]* %l_5559 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %612) #1
  %613 = bitcast [7 x i32]* %l_5559 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %613, i8* bitcast ([7 x i32]* @func_1.l_5559 to i8*), i64 28, i32 16, i1 false)
  %614 = bitcast i8**** %l_5573 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %614) #1
  store i8*** @g_3606, i8**** %l_5573, align 8, !tbaa !5
  %615 = bitcast i32* %l_5576 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %615) #1
  store i32 -4, i32* %l_5576, align 4, !tbaa !1
  %616 = bitcast i32**** %l_5614 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %616) #1
  store i32*** null, i32**** %l_5614, align 8, !tbaa !5
  %617 = bitcast i32***** %l_5613 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %617) #1
  store i32**** %l_5614, i32***** %l_5613, align 8, !tbaa !5
  %618 = bitcast i64* %l_5622 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %618) #1
  store i64 1, i64* %l_5622, align 8, !tbaa !7
  %619 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %619) #1
  store i16 0, i16* @g_1714, align 2, !tbaa !10
  br label %620

; <label>:620                                     ; preds = %630, %611
  %621 = load i16, i16* @g_1714, align 2, !tbaa !10
  %622 = zext i16 %621 to i32
  %623 = icmp sle i32 %622, 3
  br i1 %623, label %624, label %635

; <label>:624                                     ; preds = %620
  %625 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %625) #1
  %626 = load volatile i32**, i32*** @g_198, align 8, !tbaa !5
  %627 = load i32*, i32** %626, align 8, !tbaa !5
  %628 = load i32**, i32*** @g_1169, align 8, !tbaa !5
  store i32* %627, i32** %628, align 8, !tbaa !5
  %629 = bitcast i32* %i13 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %629) #1
  br label %630

; <label>:630                                     ; preds = %624
  %631 = load i16, i16* @g_1714, align 2, !tbaa !10
  %632 = zext i16 %631 to i32
  %633 = add nsw i32 %632, 1
  %634 = trunc i32 %633 to i16
  store i16 %634, i16* @g_1714, align 2, !tbaa !10
  br label %620

; <label>:635                                     ; preds = %620
  store volatile i8 0, i8* @g_1159, align 1, !tbaa !9
  br label %636

; <label>:636                                     ; preds = %658, %635
  %637 = load volatile i8, i8* @g_1159, align 1, !tbaa !9
  %638 = sext i8 %637 to i32
  %639 = icmp slt i32 %638, 7
  br i1 %639, label %640, label %663

; <label>:640                                     ; preds = %636
  store i16 0, i16* @g_2717, align 2, !tbaa !10
  br label %641

; <label>:641                                     ; preds = %652, %640
  %642 = load i16, i16* @g_2717, align 2, !tbaa !10
  %643 = zext i16 %642 to i32
  %644 = icmp slt i32 %643, 8
  br i1 %644, label %645, label %657

; <label>:645                                     ; preds = %641
  %646 = load i16, i16* @g_2717, align 2, !tbaa !10
  %647 = zext i16 %646 to i64
  %648 = load volatile i8, i8* @g_1159, align 1, !tbaa !9
  %649 = sext i8 %648 to i64
  %650 = getelementptr inbounds [7 x [8 x i64*]], [7 x [8 x i64*]]* @g_403, i32 0, i64 %649
  %651 = getelementptr inbounds [8 x i64*], [8 x i64*]* %650, i32 0, i64 %647
  store i64* getelementptr inbounds ([2 x [7 x i64]], [2 x [7 x i64]]* @g_2742, i32 0, i64 0, i64 1), i64** %651, align 8, !tbaa !5
  br label %652

; <label>:652                                     ; preds = %645
  %653 = load i16, i16* @g_2717, align 2, !tbaa !10
  %654 = zext i16 %653 to i32
  %655 = add nsw i32 %654, 1
  %656 = trunc i32 %655 to i16
  store i16 %656, i16* @g_2717, align 2, !tbaa !10
  br label %641

; <label>:657                                     ; preds = %641
  br label %658

; <label>:658                                     ; preds = %657
  %659 = load volatile i8, i8* @g_1159, align 1, !tbaa !9
  %660 = sext i8 %659 to i32
  %661 = add nsw i32 %660, 1
  %662 = trunc i32 %661 to i8
  store volatile i8 %662, i8* @g_1159, align 1, !tbaa !9
  br label %636

; <label>:663                                     ; preds = %636
  store i32 0, i32* %l_5443, align 4, !tbaa !1
  br label %664

; <label>:664                                     ; preds = %734, %663
  %665 = load i32, i32* %l_5443, align 4, !tbaa !1
  %666 = icmp ule i32 %665, 2
  br i1 %666, label %667, label %737

; <label>:667                                     ; preds = %664
  %668 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %668) #1
  %669 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %669) #1
  %670 = load i32, i32* %l_5550, align 4, !tbaa !1
  %671 = add i32 %670, 4
  %672 = zext i32 %671 to i64
  %673 = load i32, i32* %l_5443, align 4, !tbaa !1
  %674 = zext i32 %673 to i64
  %675 = getelementptr inbounds [3 x [10 x i16]], [3 x [10 x i16]]* @g_5551, i32 0, i64 %674
  %676 = getelementptr inbounds [10 x i16], [10 x i16]* %675, i32 0, i64 %672
  %677 = load i16, i16* %676, align 2, !tbaa !10
  %678 = sext i16 %677 to i64
  %679 = icmp ugt i64 %678, 65535
  br i1 %679, label %680, label %681

; <label>:680                                     ; preds = %667
  br label %681

; <label>:681                                     ; preds = %680, %667
  %682 = phi i1 [ false, %667 ], [ false, %680 ]
  %683 = zext i1 %682 to i32
  %684 = sext i32 %683 to i64
  %685 = load i32*, i32** %l_61, align 8, !tbaa !5
  %686 = load i32, i32* %685, align 4, !tbaa !1
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %692, label %688

; <label>:688                                     ; preds = %681
  %689 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %690 = load i32, i32* %689, align 4, !tbaa !1
  %691 = icmp ne i32 %690, 0
  br label %692

; <label>:692                                     ; preds = %688, %681
  %693 = phi i1 [ true, %681 ], [ %691, %688 ]
  %694 = zext i1 %693 to i32
  %695 = sext i32 %694 to i64
  %696 = load i64**, i64*** @g_1737, align 8, !tbaa !5
  %697 = load i64*, i64** %696, align 8, !tbaa !5
  %698 = load i64, i64* %697, align 8, !tbaa !7
  %699 = and i64 %698, %695
  store i64 %699, i64* %697, align 8, !tbaa !7
  %700 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext -6, i32 6)
  %701 = sext i8 %700 to i32
  store i32 %701, i32* %l_5569, align 4, !tbaa !1
  %702 = zext i32 %701 to i64
  %703 = call i64 @safe_add_func_uint64_t_u_u(i64 %699, i64 %702)
  %704 = load i8***, i8**** %l_5570, align 8, !tbaa !5
  %705 = load i8****, i8***** %l_5409, align 8, !tbaa !5
  store i8*** %704, i8**** %705, align 8, !tbaa !5
  %706 = load i16, i16* %l_5571, align 2, !tbaa !10
  %707 = sext i16 %706 to i32
  store i32 %707, i32* %l_5572, align 4, !tbaa !1
  %708 = load i8***, i8**** %l_5573, align 8, !tbaa !5
  %709 = icmp eq i8*** %704, %708
  %710 = zext i1 %709 to i32
  %711 = sext i32 %710 to i64
  %712 = load i64*, i64** %l_5545, align 8, !tbaa !5
  store i64 %711, i64* %712, align 8, !tbaa !7
  %713 = icmp uge i64 %711, -6344309007938167708
  %714 = zext i1 %713 to i32
  %715 = sext i32 %714 to i64
  %716 = xor i64 %703, %715
  %717 = call i64 @safe_div_func_uint64_t_u_u(i64 %684, i64 %716)
  %718 = load i32*, i32** @g_83, align 8, !tbaa !5
  %719 = load i32, i32* %718, align 4, !tbaa !1
  %720 = sext i32 %719 to i64
  %721 = or i64 %720, %717
  %722 = trunc i64 %721 to i32
  store i32 %722, i32* %718, align 4, !tbaa !1
  %723 = load i32, i32* %l_5550, align 4, !tbaa !1
  %724 = add i32 %723, 4
  %725 = zext i32 %724 to i64
  %726 = load i32, i32* %l_5443, align 4, !tbaa !1
  %727 = zext i32 %726 to i64
  %728 = getelementptr inbounds [3 x [10 x i16]], [3 x [10 x i16]]* @g_5551, i32 0, i64 %727
  %729 = getelementptr inbounds [10 x i16], [10 x i16]* %728, i32 0, i64 %725
  %730 = load i16, i16* %729, align 2, !tbaa !10
  %731 = sext i16 %730 to i32
  store i32 %731, i32* %1
  store i32 1, i32* %2
  %732 = bitcast i32* %j15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %732) #1
  %733 = bitcast i32* %i14 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %733) #1
  br label %994
                                                  ; No predecessors!
  %735 = load i32, i32* %l_5443, align 4, !tbaa !1
  %736 = add i32 %735, 1
  store i32 %736, i32* %l_5443, align 4, !tbaa !1
  br label %664

; <label>:737                                     ; preds = %664
  %738 = load i32, i32* %l_5550, align 4, !tbaa !1
  store i32 %738, i32* %l_5576, align 4, !tbaa !1
  %739 = load i16, i16* %l_5571, align 2, !tbaa !10
  %740 = sext i16 %739 to i32
  %741 = getelementptr inbounds [5 x [3 x [6 x i8*****]]], [5 x [3 x [6 x i8*****]]]* %l_5581, i32 0, i64 4
  %742 = getelementptr inbounds [3 x [6 x i8*****]], [3 x [6 x i8*****]]* %741, i32 0, i64 2
  %743 = getelementptr inbounds [6 x i8*****], [6 x i8*****]* %742, i32 0, i64 2
  %744 = load i8*****, i8****** %743, align 8, !tbaa !5
  %745 = icmp ne i8***** %744, null
  %746 = zext i1 %745 to i32
  %747 = sext i32 %746 to i64
  %748 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext 7, i32 6)
  %749 = zext i8 %748 to i32
  %750 = load i32, i32* %l_5594, align 4, !tbaa !1
  %751 = load i8**, i8*** @g_2346, align 8, !tbaa !5
  %752 = load i8*, i8** %751, align 8, !tbaa !5
  %753 = load i8, i8* %752, align 1, !tbaa !9
  %754 = zext i8 %753 to i64
  %755 = icmp ule i64 246, %754
  %756 = zext i1 %755 to i32
  %757 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext 0, i16 signext -1)
  %758 = sext i16 %757 to i32
  %759 = load i32, i32* %l_5550, align 4, !tbaa !1
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds [4 x i32], [4 x i32]* @g_3679, i32 0, i64 %760
  store i32 %758, i32* %761, align 4, !tbaa !1
  %762 = load i8, i8* %l_5595, align 1, !tbaa !9
  %763 = zext i8 %762 to i64
  %764 = icmp ult i64 %763, 3
  %765 = zext i1 %764 to i32
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds [6 x [9 x i8]], [6 x [9 x i8]]* %l_5538, i32 0, i64 2
  %768 = getelementptr inbounds [9 x i8], [9 x i8]* %767, i32 0, i64 5
  %769 = load i8, i8* %768, align 1, !tbaa !9
  %770 = zext i8 %769 to i64
  %771 = call i64 @safe_mod_func_int64_t_s_s(i64 %766, i64 %770)
  %772 = icmp ne i64 %771, 0
  br i1 %772, label %773, label %774

; <label>:773                                     ; preds = %737
  br label %774

; <label>:774                                     ; preds = %773, %737
  %775 = phi i1 [ false, %737 ], [ true, %773 ]
  %776 = zext i1 %775 to i32
  %777 = xor i32 %749, %776
  %778 = trunc i32 %777 to i16
  %779 = call signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %778, i32 1)
  %780 = sext i16 %779 to i64
  %781 = icmp ult i64 %780, 1
  %782 = zext i1 %781 to i32
  %783 = sext i32 %782 to i64
  %784 = icmp sge i64 %783, 1
  %785 = zext i1 %784 to i32
  %786 = load i32*, i32** @g_83, align 8, !tbaa !5
  %787 = load i32, i32* %786, align 4, !tbaa !1
  %788 = icmp sgt i32 %785, %787
  %789 = zext i1 %788 to i32
  %790 = trunc i32 %789 to i16
  %791 = load i8, i8* %l_5595, align 1, !tbaa !9
  %792 = zext i8 %791 to i16
  %793 = call zeroext i16 @safe_mod_func_uint16_t_u_u(i16 zeroext %790, i16 zeroext %792)
  %794 = zext i16 %793 to i64
  %795 = icmp slt i64 %794, 0
  %796 = zext i1 %795 to i32
  %797 = sext i32 %796 to i64
  %798 = load i32, i32* %l_5597, align 4, !tbaa !1
  %799 = zext i32 %798 to i64
  %800 = call i64 @safe_sub_func_int64_t_s_s(i64 %797, i64 %799)
  %801 = icmp eq i64 %747, %800
  %802 = zext i1 %801 to i32
  %803 = call i32 @safe_div_func_int32_t_s_s(i32 %802, i32 -1)
  %804 = trunc i32 %803 to i16
  %805 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %804, i16 signext -9)
  %806 = sext i16 %805 to i32
  %807 = icmp sge i32 %740, %806
  %808 = zext i1 %807 to i32
  %809 = or i32 0, %808
  %810 = load i32, i32* %l_5572, align 4, !tbaa !1
  %811 = icmp slt i32 %809, %810
  %812 = zext i1 %811 to i32
  %813 = trunc i32 %812 to i8
  %814 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %813, i32 4)
  %815 = load i8, i8* %l_5595, align 1, !tbaa !9
  %816 = icmp ne i8 %815, 0
  br i1 %816, label %817, label %915

; <label>:817                                     ; preds = %774
  %818 = bitcast i64* %l_5615 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %818) #1
  store i64 -9, i64* %l_5615, align 8, !tbaa !7
  call void @llvm.lifetime.start(i64 1, i8* %l_5617) #1
  store i8 -1, i8* %l_5617, align 1, !tbaa !9
  %819 = bitcast i32** %l_5635 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %819) #1
  store i32* null, i32** %l_5635, align 8, !tbaa !5
  %820 = bitcast i32** %l_5636 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %820) #1
  store i32* %l_5443, i32** %l_5636, align 8, !tbaa !5
  %821 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %821) #1
  %822 = getelementptr inbounds [4 x [5 x i32*]], [4 x [5 x i32*]]* %l_5619, i32 0, i64 0
  %823 = getelementptr inbounds [5 x i32*], [5 x i32*]* %822, i32 0, i64 4
  %824 = load i32*, i32** %823, align 8, !tbaa !5
  %825 = load i32****, i32***** @g_4688, align 8, !tbaa !5
  %826 = load i32***, i32**** %825, align 8, !tbaa !5
  %827 = load i32**, i32*** %826, align 8, !tbaa !5
  store i32* %824, i32** %827, align 8, !tbaa !5
  %828 = load i32*, i32** %l_61, align 8, !tbaa !5
  %829 = load i32, i32* %828, align 4, !tbaa !1
  %830 = load i64, i64* %l_5622, align 8, !tbaa !7
  %831 = trunc i64 %830 to i8
  %832 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %831, i8 zeroext -29)
  %833 = zext i8 %832 to i32
  %834 = icmp ne i32 %829, %833
  %835 = zext i1 %834 to i32
  %836 = load i32*, i32** @g_3995, align 8, !tbaa !5
  store i32 %835, i32* %836, align 4, !tbaa !1
  %837 = load i32*, i32** %l_61, align 8, !tbaa !5
  %838 = load i32, i32* %837, align 4, !tbaa !1
  %839 = trunc i32 %838 to i8
  %840 = load i32, i32* %l_5629, align 4, !tbaa !1
  %841 = trunc i32 %840 to i8
  %842 = load i32*, i32** %l_61, align 8, !tbaa !5
  %843 = load i32, i32* %842, align 4, !tbaa !1
  %844 = load i32, i32* %l_5550, align 4, !tbaa !1
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds [4 x i32], [4 x i32]* @g_3679, i32 0, i64 %845
  %847 = load i32, i32* %846, align 4, !tbaa !1
  %848 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %849 = load i32, i32* %848, align 4, !tbaa !1
  %850 = icmp sge i32 %847, %849
  %851 = zext i1 %850 to i32
  %852 = getelementptr inbounds [9 x [4 x i32*****]], [9 x [4 x i32*****]]* %l_5632, i32 0, i64 0
  %853 = getelementptr inbounds [4 x i32*****], [4 x i32*****]* %852, i32 0, i64 3
  %854 = load i32*****, i32****** %853, align 8, !tbaa !5
  %855 = icmp eq i32***** null, %854
  %856 = zext i1 %855 to i32
  %857 = getelementptr inbounds [7 x i32], [7 x i32]* %l_5559, i32 0, i64 4
  %858 = load i32, i32* %857, align 4, !tbaa !1
  %859 = and i32 %856, %858
  %860 = load i32*, i32** %l_5636, align 8, !tbaa !5
  %861 = load i32, i32* %860, align 4, !tbaa !1
  %862 = and i32 %861, %859
  store i32 %862, i32* %860, align 4, !tbaa !1
  store i32 %862, i32* @g_147, align 4, !tbaa !1
  %863 = call i32 @safe_mod_func_uint32_t_u_u(i32 %843, i32 %862)
  %864 = load i32, i32* %l_5576, align 4, !tbaa !1
  %865 = sext i32 %864 to i64
  %866 = icmp ule i64 -3901047420828897874, %865
  %867 = zext i1 %866 to i32
  %868 = getelementptr inbounds [7 x i32], [7 x i32]* %l_5559, i32 0, i64 6
  %869 = load i32, i32* %868, align 4, !tbaa !1
  %870 = load i16*, i16** @g_745, align 8, !tbaa !5
  %871 = load i16, i16* %870, align 2, !tbaa !10
  %872 = sext i16 %871 to i32
  %873 = and i32 %872, %869
  %874 = trunc i32 %873 to i16
  store i16 %874, i16* %870, align 2, !tbaa !10
  %875 = sext i16 %874 to i32
  %876 = icmp eq i32 1, %875
  %877 = zext i1 %876 to i32
  %878 = load i8, i8* @g_921, align 1, !tbaa !9
  %879 = sext i8 %878 to i32
  %880 = xor i32 %877, %879
  %881 = sext i32 %880 to i64
  %882 = icmp uge i64 %881, 254
  %883 = zext i1 %882 to i32
  %884 = trunc i32 %883 to i8
  %885 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %841, i8 signext %884)
  %886 = load i8*, i8** @g_875, align 8, !tbaa !5
  %887 = load i8, i8* %886, align 1, !tbaa !9
  %888 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %885, i8 zeroext %887)
  %889 = zext i8 %888 to i64
  %890 = load i64***, i64**** @g_3134, align 8, !tbaa !5
  %891 = load i64**, i64*** %890, align 8, !tbaa !5
  %892 = load i64*, i64** %891, align 8, !tbaa !5
  store i64 %889, i64* %892, align 8, !tbaa !7
  %893 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %894 = load i32*, i32** %893, align 8, !tbaa !5
  %895 = load i32, i32* %894, align 4, !tbaa !1
  %896 = sext i32 %895 to i64
  %897 = and i64 65529, %896
  %898 = trunc i64 %897 to i8
  %899 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %839, i8 zeroext %898)
  %900 = load i64**, i64*** @g_4437, align 8, !tbaa !5
  %901 = load i64*, i64** %900, align 8, !tbaa !5
  %902 = load i64, i64* %901, align 8, !tbaa !7
  %903 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %904 = load i32*, i32** %903, align 8, !tbaa !5
  %905 = load i32, i32* %904, align 4, !tbaa !1
  %906 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %907 = load i32*, i32** %906, align 8, !tbaa !5
  %908 = load i32, i32* %907, align 4, !tbaa !1
  %909 = and i32 %905, %908
  %910 = load i32**, i32*** @g_454, align 8, !tbaa !5
  store i32* %l_5572, i32** %910, align 8, !tbaa !5
  %911 = bitcast i32* %i16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %911) #1
  %912 = bitcast i32** %l_5636 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %912) #1
  %913 = bitcast i32** %l_5635 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %913) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5617) #1
  %914 = bitcast i64* %l_5615 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %914) #1
  br label %936

; <label>:915                                     ; preds = %774
  %916 = bitcast i32** %l_5637 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %916) #1
  store i32* @g_3, i32** %l_5637, align 8, !tbaa !5
  %917 = load i32*, i32** %l_5637, align 8, !tbaa !5
  %918 = load i32***, i32**** @g_4689, align 8, !tbaa !5
  %919 = load i32**, i32*** %918, align 8, !tbaa !5
  store i32* %917, i32** %919, align 8, !tbaa !5
  %920 = load i32*, i32** %l_2869, align 8, !tbaa !5
  store i32 1, i32* %920, align 4, !tbaa !1
  %921 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %922 = load i32*, i32** %921, align 8, !tbaa !5
  %923 = load i32, i32* %922, align 4, !tbaa !1
  %924 = sext i32 %923 to i64
  %925 = icmp sle i64 %924, 2
  %926 = zext i1 %925 to i32
  %927 = trunc i32 %926 to i8
  %928 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %927, i32 4)
  %929 = load i32**, i32*** @g_454, align 8, !tbaa !5
  %930 = load i32*, i32** %929, align 8, !tbaa !5
  %931 = load i32***, i32**** @g_4689, align 8, !tbaa !5
  %932 = load i32**, i32*** %931, align 8, !tbaa !5
  store i32* %930, i32** %932, align 8, !tbaa !5
  %933 = load volatile i32, i32* getelementptr inbounds ([7 x [3 x [2 x i32]]], [7 x [3 x [2 x i32]]]* @g_5641, i32 0, i64 1, i64 0, i64 1), align 4, !tbaa !1
  %934 = add i32 %933, 1
  store volatile i32 %934, i32* getelementptr inbounds ([7 x [3 x [2 x i32]]], [7 x [3 x [2 x i32]]]* @g_5641, i32 0, i64 1, i64 0, i64 1), align 4, !tbaa !1
  %935 = bitcast i32** %l_5637 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %935) #1
  br label %936

; <label>:936                                     ; preds = %915, %817
  store i32 0, i32* @g_393, align 4, !tbaa !1
  br label %937

; <label>:937                                     ; preds = %990, %936
  %938 = load i32, i32* @g_393, align 4, !tbaa !1
  %939 = icmp sle i32 %938, 2
  br i1 %939, label %940, label %993

; <label>:940                                     ; preds = %937
  %941 = bitcast i32** %l_5649 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %941) #1
  store i32* %l_5629, i32** %l_5649, align 8, !tbaa !5
  %942 = bitcast i32*** %l_5648 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %942) #1
  store i32** %l_5649, i32*** %l_5648, align 8, !tbaa !5
  %943 = bitcast i32** %l_5651 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %943) #1
  store i32* @g_1029, i32** %l_5651, align 8, !tbaa !5
  %944 = bitcast i32*** %l_5650 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %944) #1
  store i32** %l_5651, i32*** %l_5650, align 8, !tbaa !5
  %945 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %945) #1
  %946 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %946) #1
  %947 = load i16, i16* @g_1714, align 2, !tbaa !10
  %948 = icmp ne i16 %947, 0
  br i1 %948, label %949, label %950

; <label>:949                                     ; preds = %940
  store i32 27, i32* %2
  br label %982

; <label>:950                                     ; preds = %940
  %951 = load i32, i32* @g_393, align 4, !tbaa !1
  %952 = add nsw i32 %951, 2
  %953 = sext i32 %952 to i64
  %954 = load i32, i32* @g_393, align 4, !tbaa !1
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds [3 x [10 x i16]], [3 x [10 x i16]]* @g_5551, i32 0, i64 %955
  %957 = getelementptr inbounds [10 x i16], [10 x i16]* %956, i32 0, i64 %953
  %958 = load i16, i16* %957, align 2, !tbaa !10
  %959 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %960 = load i32*, i32** %959, align 8, !tbaa !5
  %961 = load i32, i32* %960, align 4, !tbaa !1
  %962 = load i8**, i8*** @g_874, align 8, !tbaa !5
  %963 = load i8*, i8** %962, align 8, !tbaa !5
  %964 = load i8, i8* %963, align 1, !tbaa !9
  %965 = zext i8 %964 to i32
  %966 = icmp sge i32 %961, %965
  %967 = zext i1 %966 to i32
  %968 = trunc i32 %967 to i16
  %969 = call zeroext i16 @safe_unary_minus_func_uint16_t_u(i16 zeroext %968)
  %970 = trunc i16 %969 to i8
  %971 = load i8*, i8** @g_1544, align 8, !tbaa !5
  store i8 %970, i8* %971, align 1, !tbaa !9
  %972 = load i32**, i32*** %l_5648, align 8, !tbaa !5
  store i32* @g_147, i32** %972, align 8, !tbaa !5
  %973 = load i32**, i32*** %l_5650, align 8, !tbaa !5
  store i32* @g_585, i32** %973, align 8, !tbaa !5
  %974 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext 0, i32 7)
  %975 = sext i8 %974 to i32
  %976 = load i32**, i32*** @g_284, align 8, !tbaa !5
  %977 = load i32*, i32** %976, align 8, !tbaa !5
  store i32 %975, i32* %977, align 4, !tbaa !1
  %978 = load i32****, i32***** %l_5633, align 8, !tbaa !5
  %979 = load i32***, i32**** %978, align 8, !tbaa !5
  %980 = load i32**, i32*** %979, align 8, !tbaa !5
  %981 = load i32*, i32** %980, align 8, !tbaa !5
  store i32 %975, i32* %981, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %982

; <label>:982                                     ; preds = %950, %949
  %983 = bitcast i32* %j18 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %983) #1
  %984 = bitcast i32* %i17 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %984) #1
  %985 = bitcast i32*** %l_5650 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %985) #1
  %986 = bitcast i32** %l_5651 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %986) #1
  %987 = bitcast i32*** %l_5648 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %987) #1
  %988 = bitcast i32** %l_5649 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %988) #1
  %cleanup.dest.19 = load i32, i32* %2
  switch i32 %cleanup.dest.19, label %994 [
    i32 0, label %989
  ]

; <label>:989                                     ; preds = %982
  br label %990

; <label>:990                                     ; preds = %989
  %991 = load i32, i32* @g_393, align 4, !tbaa !1
  %992 = add nsw i32 %991, 1
  store i32 %992, i32* @g_393, align 4, !tbaa !1
  br label %937

; <label>:993                                     ; preds = %937
  store i32 0, i32* %2
  br label %994

; <label>:994                                     ; preds = %993, %982, %692
  %995 = bitcast i32* %i12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %995) #1
  %996 = bitcast i64* %l_5622 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %996) #1
  %997 = bitcast i32***** %l_5613 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %997) #1
  %998 = bitcast i32**** %l_5614 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %998) #1
  %999 = bitcast i32* %l_5576 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %999) #1
  %1000 = bitcast i8**** %l_5573 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1000) #1
  %1001 = bitcast [7 x i32]* %l_5559 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %1001) #1
  %cleanup.dest.20 = load i32, i32* %2
  switch i32 %cleanup.dest.20, label %1039 [
    i32 0, label %1002
  ]

; <label>:1002                                    ; preds = %994
  br label %1003

; <label>:1003                                    ; preds = %1002
  %1004 = load i32, i32* %l_5550, align 4, !tbaa !1
  %1005 = add i32 %1004, 1
  store i32 %1005, i32* %l_5550, align 4, !tbaa !1
  br label %608

; <label>:1006                                    ; preds = %608
  %1007 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %1008 = load i32*, i32** %1007, align 8, !tbaa !5
  %1009 = load i32, i32* %1008, align 4, !tbaa !1
  %1010 = load i32***, i32**** %l_5634, align 8, !tbaa !5
  %1011 = load i32**, i32*** %1010, align 8, !tbaa !5
  %1012 = load i32*, i32** %1011, align 8, !tbaa !5
  %1013 = load i32, i32* %1012, align 4, !tbaa !1
  %1014 = load i32, i32* %l_5541, align 4, !tbaa !1
  %1015 = trunc i32 %1014 to i16
  %1016 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %1017 = load i32, i32* %1016, align 4, !tbaa !1
  %1018 = load volatile i16*****, i16****** @g_1607, align 8, !tbaa !5
  %1019 = load i16****, i16***** %1018, align 8, !tbaa !5
  %1020 = load volatile i16***, i16**** %1019, align 8, !tbaa !5
  %1021 = icmp ne i16*** null, %1020
  %1022 = zext i1 %1021 to i32
  %1023 = and i32 %1017, %1022
  %1024 = trunc i32 %1023 to i16
  %1025 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1015, i16 zeroext %1024)
  %1026 = zext i16 %1025 to i32
  %1027 = load i64, i64* getelementptr inbounds ([2 x [7 x i64]], [2 x [7 x i64]]* @g_2742, i32 0, i64 0, i64 1), align 8, !tbaa !7
  %1028 = trunc i64 %1027 to i32
  %1029 = call i32 @safe_div_func_uint32_t_u_u(i32 %1026, i32 %1028)
  %1030 = icmp ugt i32 %1009, %1029
  %1031 = zext i1 %1030 to i32
  %1032 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %1033 = load i32*, i32** %1032, align 8, !tbaa !5
  store i32 %1031, i32* %1033, align 4, !tbaa !1
  %1034 = load volatile i32**, i32*** @g_5244, align 8, !tbaa !5
  %1035 = load i32*, i32** %1034, align 8, !tbaa !5
  store i32 %1031, i32* %1035, align 4, !tbaa !1
  %1036 = load i32**, i32*** %l_5616, align 8, !tbaa !5
  %1037 = load i32*, i32** %1036, align 8, !tbaa !5
  %1038 = load i32, i32* %1037, align 4, !tbaa !1
  store i32 %1038, i32* %1
  store i32 1, i32* %2
  br label %1039

; <label>:1039                                    ; preds = %1006, %994
  %1040 = bitcast i32* %j11 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1040) #1
  %1041 = bitcast i32* %i10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1041) #1
  %1042 = bitcast i32* %l_5640 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1042) #1
  %1043 = bitcast i32*** %l_5616 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1043) #1
  %1044 = bitcast i8**** %l_5570 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1044) #1
  %1045 = bitcast i32* %l_5558 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1045) #1
  %1046 = bitcast i32* %l_5550 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1046) #1
  %1047 = bitcast i64**** %l_5543 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1047) #1
  %1048 = bitcast [7 x i64**]* %l_5544 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %1048) #1
  %1049 = bitcast i64** %l_5545 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1049) #1
  %1050 = bitcast [6 x [9 x i8]]* %l_5538 to i8*
  call void @llvm.lifetime.end(i64 54, i8* %1050) #1
  %cleanup.dest.21 = load i32, i32* %2
  switch i32 %cleanup.dest.21, label %1058 [
    i32 27, label %486
  ]
                                                  ; No predecessors!
  %1052 = load i8, i8* @g_4814, align 1, !tbaa !9
  %1053 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1052, i8 zeroext 5)
  store i8 %1053, i8* @g_4814, align 1, !tbaa !9
  br label %496

; <label>:1054                                    ; preds = %496
  %1055 = getelementptr inbounds [8 x i8], [8 x i8]* %l_5658, i32 0, i64 5
  %1056 = load i8, i8* %1055, align 1, !tbaa !9
  %1057 = add i8 %1056, 1
  store i8 %1057, i8* %1055, align 1, !tbaa !9
  store i32 0, i32* %2
  br label %1058

; <label>:1058                                    ; preds = %1054, %1039
  %1059 = bitcast i32* %j9 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1059) #1
  %1060 = bitcast i32* %i8 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1060) #1
  %1061 = bitcast i32* %l_5657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1061) #1
  %1062 = bitcast [4 x [5 x i32*]]* %l_5619 to i8*
  call void @llvm.lifetime.end(i64 160, i8* %1062) #1
  %1063 = bitcast i64* %l_5618 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1063) #1
  %1064 = bitcast i32* %l_5597 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1064) #1
  %1065 = bitcast i32* %l_5572 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1065) #1
  %1066 = bitcast i16* %l_5571 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1066) #1
  %1067 = bitcast i32* %l_5549 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1067) #1
  %1068 = bitcast [3 x i64****]* %l_5526 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %1068) #1
  %cleanup.dest.22 = load i32, i32* %2
  switch i32 %cleanup.dest.22, label %1076 [
    i32 0, label %1069
  ]

; <label>:1069                                    ; preds = %1058
  br label %1075

; <label>:1070                                    ; preds = %391
  %1071 = load i32, i32* @g_12, align 4, !tbaa !1
  %1072 = icmp ne i32 %1071, 0
  br i1 %1072, label %1073, label %1074

; <label>:1073                                    ; preds = %1070
  store i32 8, i32* %2
  br label %1076

; <label>:1074                                    ; preds = %1070
  br label %1075

; <label>:1075                                    ; preds = %1074, %1069
  store i32 0, i32* %2
  br label %1076

; <label>:1076                                    ; preds = %1075, %1073, %1058
  %1077 = bitcast i32* %i7 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1077) #1
  %1078 = bitcast i32* %l_5656 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1078) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5595) #1
  %1079 = bitcast i32* %l_5594 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  %1080 = bitcast i32* %l_5541 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1080) #1
  %1081 = bitcast i16* %l_5524 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1081) #1
  %1082 = bitcast i32****** %l_5520 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1082) #1
  %1083 = bitcast [1 x i32****]* %l_5519 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1083) #1
  %1084 = bitcast i64* %l_5516 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1084) #1
  %cleanup.dest.23 = load i32, i32* %2
  switch i32 %cleanup.dest.23, label %2411 [
    i32 0, label %1085
    i32 8, label %216
  ]

; <label>:1085                                    ; preds = %1076
  br label %2351

; <label>:1086                                    ; preds = %349
  %1087 = bitcast i16* %l_5670 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1087) #1
  store i16 1, i16* %l_5670, align 2, !tbaa !10
  %1088 = bitcast [9 x i32*]* %l_5673 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1088) #1
  %1089 = getelementptr inbounds [9 x i32*], [9 x i32*]* %l_5673, i64 0, i64 0
  store i32* @g_147, i32** %1089, !tbaa !5
  %1090 = getelementptr inbounds i32*, i32** %1089, i64 1
  store i32* @g_147, i32** %1090, !tbaa !5
  %1091 = getelementptr inbounds i32*, i32** %1090, i64 1
  store i32* %l_5629, i32** %1091, !tbaa !5
  %1092 = getelementptr inbounds i32*, i32** %1091, i64 1
  store i32* @g_147, i32** %1092, !tbaa !5
  %1093 = getelementptr inbounds i32*, i32** %1092, i64 1
  store i32* @g_147, i32** %1093, !tbaa !5
  %1094 = getelementptr inbounds i32*, i32** %1093, i64 1
  store i32* @g_147, i32** %1094, !tbaa !5
  %1095 = getelementptr inbounds i32*, i32** %1094, i64 1
  store i32* @g_147, i32** %1095, !tbaa !5
  %1096 = getelementptr inbounds i32*, i32** %1095, i64 1
  store i32* @g_147, i32** %1096, !tbaa !5
  %1097 = getelementptr inbounds i32*, i32** %1096, i64 1
  store i32* @g_147, i32** %1097, !tbaa !5
  %1098 = bitcast i32* %l_5676 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1098) #1
  store i32 2, i32* %l_5676, align 4, !tbaa !1
  %1099 = bitcast [1 x [9 x i16*]]* %l_5677 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1099) #1
  %1100 = bitcast [1 x [9 x i16*]]* %l_5677 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1100, i8* bitcast ([1 x [9 x i16*]]* @func_1.l_5677 to i8*), i64 72, i32 16, i1 false)
  %1101 = bitcast i32* %l_5678 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1101) #1
  store i32 -1, i32* %l_5678, align 4, !tbaa !1
  %1102 = bitcast i32* %l_5679 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1102) #1
  store i32 1208669667, i32* %l_5679, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_5688) #1
  store i8 0, i8* %l_5688, align 1, !tbaa !9
  %1103 = bitcast i32* %l_5691 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1103) #1
  store i32 -9, i32* %l_5691, align 4, !tbaa !1
  %1104 = bitcast i32* %l_5694 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1104) #1
  store i32 -955435080, i32* %l_5694, align 4, !tbaa !1
  %1105 = bitcast i32* %l_5695 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1105) #1
  store i32 1, i32* %l_5695, align 4, !tbaa !1
  %1106 = bitcast i32* %l_5696 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1106) #1
  store i32 -7, i32* %l_5696, align 4, !tbaa !1
  %1107 = bitcast i32* %l_5697 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1107) #1
  store i32 8, i32* %l_5697, align 4, !tbaa !1
  %1108 = bitcast i32* %l_5698 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1108) #1
  store i32 -1, i32* %l_5698, align 4, !tbaa !1
  %1109 = bitcast [7 x [5 x i32]]* %l_5699 to i8*
  call void @llvm.lifetime.start(i64 140, i8* %1109) #1
  %1110 = bitcast [7 x [5 x i32]]* %l_5699 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1110, i8* bitcast ([7 x [5 x i32]]* @func_1.l_5699 to i8*), i64 140, i32 16, i1 false)
  %1111 = bitcast i8** %l_5718 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1111) #1
  %1112 = getelementptr inbounds [8 x i8], [8 x i8]* %l_5658, i32 0, i64 3
  store i8* %1112, i8** %l_5718, align 8, !tbaa !5
  %1113 = bitcast [7 x [5 x i32]]* %l_5721 to i8*
  call void @llvm.lifetime.start(i64 140, i8* %1113) #1
  %1114 = bitcast [7 x [5 x i32]]* %l_5721 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1114, i8* bitcast ([7 x [5 x i32]]* @func_1.l_5721 to i8*), i64 140, i32 16, i1 false)
  %1115 = bitcast i16* %l_5774 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1115) #1
  store i16 1, i16* %l_5774, align 2, !tbaa !10
  %1116 = bitcast i32* %l_5778 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1116) #1
  store i32 -9, i32* %l_5778, align 4, !tbaa !1
  %1117 = bitcast i64***** %l_5802 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1117) #1
  %1118 = getelementptr inbounds [5 x i64***], [5 x i64***]* %l_5510, i32 0, i64 1
  store i64**** %1118, i64***** %l_5802, align 8, !tbaa !5
  %1119 = bitcast i64* %l_5841 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1119) #1
  store i64 -2051762241751083046, i64* %l_5841, align 8, !tbaa !7
  %1120 = bitcast i64**** %l_5850 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1120) #1
  store i64*** @g_1737, i64**** %l_5850, align 8, !tbaa !5
  %1121 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1121) #1
  %1122 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1122) #1
  %1123 = load i8*, i8** @g_875, align 8, !tbaa !5
  %1124 = load i8, i8* %1123, align 1, !tbaa !9
  %1125 = add i8 %1124, -1
  store i8 %1125, i8* %1123, align 1, !tbaa !9
  %1126 = zext i8 %1124 to i32
  %1127 = load i32**, i32*** %l_5509, align 8, !tbaa !5
  %1128 = load i32*, i32** %1127, align 8, !tbaa !5
  %1129 = load i32, i32* %1128, align 4, !tbaa !1
  %1130 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1131 = sext i16 %1130 to i32
  %1132 = load i8, i8* %l_5671, align 1, !tbaa !9
  %1133 = sext i8 %1132 to i32
  %1134 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1135 = sext i16 %1134 to i32
  %1136 = and i32 %1133, %1135
  %1137 = trunc i32 %1136 to i16
  %1138 = load i16****, i16***** @g_3185, align 8, !tbaa !5
  %1139 = load i16***, i16**** %1138, align 8, !tbaa !5
  %1140 = load i16**, i16*** %1139, align 8, !tbaa !5
  %1141 = load i16*, i16** %1140, align 8, !tbaa !5
  store i16 %1137, i16* %1141, align 2, !tbaa !10
  %1142 = sext i16 %1137 to i32
  %1143 = icmp slt i32 %1131, %1142
  %1144 = zext i1 %1143 to i32
  %1145 = xor i32 %1129, %1144
  %1146 = trunc i32 %1145 to i8
  %1147 = load i8*, i8** @g_2634, align 8, !tbaa !5
  store i8 %1146, i8* %1147, align 1, !tbaa !9
  %1148 = load i32****, i32***** %l_5633, align 8, !tbaa !5
  %1149 = load i32***, i32**** %1148, align 8, !tbaa !5
  %1150 = load i32**, i32*** %1149, align 8, !tbaa !5
  %1151 = load i32*, i32** %1150, align 8, !tbaa !5
  %1152 = load i32, i32* %1151, align 4, !tbaa !1
  %1153 = icmp ne i32 %1152, 0
  br i1 %1153, label %1154, label %1185

; <label>:1154                                    ; preds = %1086
  %1155 = load i32, i32* @g_1029, align 4, !tbaa !1
  %1156 = add i32 %1155, 1
  store i32 %1156, i32* @g_1029, align 4, !tbaa !1
  %1157 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %1156)
  %1158 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1159 = sext i16 %1158 to i32
  %1160 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1161 = sext i16 %1160 to i32
  %1162 = or i32 %1159, %1161
  %1163 = load i32***, i32**** %l_5634, align 8, !tbaa !5
  %1164 = load i32**, i32*** %1163, align 8, !tbaa !5
  %1165 = load i32*, i32** %1164, align 8, !tbaa !5
  %1166 = load i32, i32* %1165, align 4, !tbaa !1
  %1167 = icmp sgt i32 %1162, %1166
  %1168 = zext i1 %1167 to i32
  %1169 = sext i32 %1168 to i64
  %1170 = icmp eq i64 154196475, %1169
  %1171 = zext i1 %1170 to i32
  %1172 = icmp uge i32 %1157, %1171
  %1173 = zext i1 %1172 to i32
  %1174 = load i32**, i32*** %l_5509, align 8, !tbaa !5
  %1175 = load i32*, i32** %1174, align 8, !tbaa !5
  %1176 = load i32, i32* %1175, align 4, !tbaa !1
  %1177 = load volatile i32, i32* getelementptr inbounds ([7 x [3 x [2 x i32]]], [7 x [3 x [2 x i32]]]* @g_5641, i32 0, i64 1, i64 0, i64 1), align 4, !tbaa !1
  %1178 = or i32 %1176, %1177
  store i32 %1178, i32* %l_5676, align 4, !tbaa !1
  %1179 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1180 = sext i16 %1179 to i32
  %1181 = icmp sle i32 %1178, %1180
  %1182 = zext i1 %1181 to i32
  %1183 = sext i32 %1182 to i64
  %1184 = icmp ne i64 %1183, 509466945
  br label %1185

; <label>:1185                                    ; preds = %1154, %1086
  %1186 = phi i1 [ false, %1086 ], [ %1184, %1154 ]
  %1187 = zext i1 %1186 to i32
  %1188 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1189 = sext i16 %1188 to i32
  %1190 = xor i32 %1187, %1189
  %1191 = sext i32 %1190 to i64
  %1192 = icmp slt i64 %1191, 3004163670
  %1193 = zext i1 %1192 to i32
  store i32 %1193, i32* @g_147, align 4, !tbaa !1
  %1194 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1195 = sext i16 %1194 to i32
  %1196 = and i32 %1193, %1195
  %1197 = trunc i32 %1196 to i8
  %1198 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %1146, i8 signext %1197)
  %1199 = sext i8 %1198 to i32
  %1200 = load i32, i32* %l_5678, align 4, !tbaa !1
  %1201 = and i32 %1200, %1199
  store i32 %1201, i32* %l_5678, align 4, !tbaa !1
  %1202 = load i32, i32* %l_5679, align 4, !tbaa !1
  %1203 = and i32 %1202, %1201
  store i32 %1203, i32* %l_5679, align 4, !tbaa !1
  %1204 = trunc i32 %1203 to i16
  %1205 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1206 = sext i16 %1205 to i32
  %1207 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1204, i32 %1206)
  %1208 = sext i16 %1207 to i32
  %1209 = icmp slt i32 %1126, %1208
  %1210 = zext i1 %1209 to i32
  %1211 = sext i32 %1210 to i64
  %1212 = icmp eq i64 %1211, 1637910625
  %1213 = zext i1 %1212 to i32
  %1214 = sext i32 %1213 to i64
  %1215 = load i64***, i64**** %l_5525, align 8, !tbaa !5
  %1216 = load i64**, i64*** %1215, align 8, !tbaa !5
  %1217 = load i64*, i64** %1216, align 8, !tbaa !5
  %1218 = load i64, i64* %1217, align 8, !tbaa !7
  %1219 = xor i64 %1218, %1214
  store i64 %1219, i64* %1217, align 8, !tbaa !7
  %1220 = call i64 @safe_mod_func_int64_t_s_s(i64 1, i64 %1219)
  %1221 = trunc i64 %1220 to i32
  %1222 = load i32*, i32** @g_3995, align 8, !tbaa !5
  store i32 %1221, i32* %1222, align 4, !tbaa !1
  store i16 0, i16* @g_1714, align 2, !tbaa !10
  br label %1223

; <label>:1223                                    ; preds = %1642, %1185
  %1224 = load i16, i16* @g_1714, align 2, !tbaa !10
  %1225 = zext i16 %1224 to i32
  %1226 = icmp sle i32 %1225, 16
  br i1 %1226, label %1227, label %1645

; <label>:1227                                    ; preds = %1223
  %1228 = bitcast i32*** %l_5687 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1228) #1
  store i32** @g_1338, i32*** %l_5687, align 8, !tbaa !5
  %1229 = bitcast i32**** %l_5686 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1229) #1
  store i32*** %l_5687, i32**** %l_5686, align 8, !tbaa !5
  %1230 = bitcast i32***** %l_5685 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1230) #1
  store i32**** %l_5686, i32***** %l_5685, align 8, !tbaa !5
  %1231 = bitcast i32* %l_5689 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1231) #1
  store i32 3, i32* %l_5689, align 4, !tbaa !1
  %1232 = bitcast [3 x i32]* %l_5690 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %1232) #1
  %1233 = bitcast i64* %l_5724 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1233) #1
  store i64 -1, i64* %l_5724, align 8, !tbaa !7
  %1234 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1234) #1
  store i32 0, i32* %i26, align 4, !tbaa !1
  br label %1235

; <label>:1235                                    ; preds = %1242, %1227
  %1236 = load i32, i32* %i26, align 4, !tbaa !1
  %1237 = icmp slt i32 %1236, 3
  br i1 %1237, label %1238, label %1245

; <label>:1238                                    ; preds = %1235
  %1239 = load i32, i32* %i26, align 4, !tbaa !1
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds [3 x i32], [3 x i32]* %l_5690, i32 0, i64 %1240
  store i32 162862002, i32* %1241, align 4, !tbaa !1
  br label %1242

; <label>:1242                                    ; preds = %1238
  %1243 = load i32, i32* %i26, align 4, !tbaa !1
  %1244 = add nsw i32 %1243, 1
  store i32 %1244, i32* %i26, align 4, !tbaa !1
  br label %1235

; <label>:1245                                    ; preds = %1235
  %1246 = load i32, i32* %l_5676, align 4, !tbaa !1
  %1247 = icmp ne i32 %1246, 0
  br i1 %1247, label %1257, label %1248

; <label>:1248                                    ; preds = %1245
  %1249 = load i32****, i32***** %l_5685, align 8, !tbaa !5
  %1250 = icmp ne i32**** null, %1249
  %1251 = zext i1 %1250 to i32
  %1252 = sext i32 %1251 to i64
  %1253 = load i32, i32* %l_5679, align 4, !tbaa !1
  %1254 = sext i32 %1253 to i64
  %1255 = call i64 @safe_mod_func_uint64_t_u_u(i64 %1252, i64 %1254)
  %1256 = icmp ne i64 %1255, 0
  br label %1257

; <label>:1257                                    ; preds = %1248, %1245
  %1258 = phi i1 [ true, %1245 ], [ %1256, %1248 ]
  %1259 = zext i1 %1258 to i32
  %1260 = sext i32 %1259 to i64
  %1261 = icmp sge i64 %1260, 141
  br i1 %1261, label %1262, label %1272

; <label>:1262                                    ; preds = %1257
  %1263 = bitcast i32* %l_5692 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1263) #1
  store i32 -1, i32* %l_5692, align 4, !tbaa !1
  %1264 = bitcast [8 x i32]* %l_5693 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1264) #1
  %1265 = bitcast [8 x i32]* %l_5693 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1265, i8* bitcast ([8 x i32]* @func_1.l_5693 to i8*), i64 32, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_5700) #1
  store i8 7, i8* %l_5700, align 1, !tbaa !9
  %1266 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1266) #1
  %1267 = load i8, i8* %l_5700, align 1, !tbaa !9
  %1268 = add i8 %1267, -1
  store i8 %1268, i8* %l_5700, align 1, !tbaa !9
  %1269 = bitcast i32* %i27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1269) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5700) #1
  %1270 = bitcast [8 x i32]* %l_5693 to i8*
  call void @llvm.lifetime.end(i64 32, i8* %1270) #1
  %1271 = bitcast i32* %l_5692 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1271) #1
  br label %1632

; <label>:1272                                    ; preds = %1257
  %1273 = bitcast [7 x [5 x [7 x i32]]]* %l_5723 to i8*
  call void @llvm.lifetime.start(i64 980, i8* %1273) #1
  %1274 = bitcast [7 x [5 x [7 x i32]]]* %l_5723 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1274, i8* bitcast ([7 x [5 x [7 x i32]]]* @func_1.l_5723 to i8*), i64 980, i32 16, i1 false)
  %1275 = bitcast [6 x [9 x i8**]]* %l_5730 to i8*
  call void @llvm.lifetime.start(i64 432, i8* %1275) #1
  %1276 = bitcast [6 x [9 x i8**]]* %l_5730 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1276, i8* bitcast ([6 x [9 x i8**]]* @func_1.l_5730 to i8*), i64 432, i32 16, i1 false)
  %1277 = bitcast i32* %l_5762 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1277) #1
  store i32 1400079164, i32* %l_5762, align 4, !tbaa !1
  %1278 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1278) #1
  %1279 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1279) #1
  %1280 = bitcast i32* %k30 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1280) #1
  store i16 -17, i16* @g_315, align 2, !tbaa !10
  br label %1281

; <label>:1281                                    ; preds = %1613, %1272
  %1282 = load i16, i16* @g_315, align 2, !tbaa !10
  %1283 = zext i16 %1282 to i32
  %1284 = icmp sge i32 %1283, 6
  br i1 %1284, label %1285, label %1616

; <label>:1285                                    ; preds = %1281
  %1286 = bitcast [10 x [6 x [2 x i16]]]* %l_5720 to i8*
  call void @llvm.lifetime.start(i64 240, i8* %1286) #1
  %1287 = bitcast [10 x [6 x [2 x i16]]]* %l_5720 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1287, i8* bitcast ([10 x [6 x [2 x i16]]]* @func_1.l_5720 to i8*), i64 240, i32 16, i1 false)
  %1288 = bitcast i32* %l_5722 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1288) #1
  store i32 1968220782, i32* %l_5722, align 4, !tbaa !1
  %1289 = bitcast i32* %l_5746 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1289) #1
  store i32 -722360153, i32* %l_5746, align 4, !tbaa !1
  %1290 = bitcast i16* %l_5766 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1290) #1
  store i16 -9, i16* %l_5766, align 2, !tbaa !10
  %1291 = bitcast i32* %l_5767 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1291) #1
  store i32 4, i32* %l_5767, align 4, !tbaa !1
  %1292 = bitcast i32* %l_5768 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1292) #1
  store i32 1, i32* %l_5768, align 4, !tbaa !1
  %1293 = bitcast i32* %i31 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1293) #1
  %1294 = bitcast i32* %j32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1294) #1
  %1295 = bitcast i32* %k33 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1295) #1
  store i32 0, i32* %l_5695, align 4, !tbaa !1
  br label %1296

; <label>:1296                                    ; preds = %1534, %1285
  %1297 = load i32, i32* %l_5695, align 4, !tbaa !1
  %1298 = icmp ne i32 %1297, 7
  br i1 %1298, label %1299, label %1539

; <label>:1299                                    ; preds = %1296
  %1300 = bitcast i16* %l_5715 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1300) #1
  store i16 27565, i16* %l_5715, align 2, !tbaa !10
  %1301 = bitcast i32* %l_5719 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1301) #1
  store i32 4, i32* %l_5719, align 4, !tbaa !1
  %1302 = bitcast [5 x [8 x [4 x i8**]]]* %l_5729 to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %1302) #1
  %1303 = bitcast [5 x [8 x [4 x i8**]]]* %l_5729 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1303, i8* bitcast ([5 x [8 x [4 x i8**]]]* @func_1.l_5729 to i8*), i64 1280, i32 16, i1 false)
  %1304 = bitcast i16** %l_5738 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1304) #1
  store i16* @g_317, i16** %l_5738, align 8, !tbaa !5
  %1305 = bitcast i32* %l_5749 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1305) #1
  store i32 -1, i32* %l_5749, align 4, !tbaa !1
  %1306 = bitcast i16* %l_5750 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1306) #1
  store i16 -28763, i16* %l_5750, align 2, !tbaa !10
  %1307 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1307) #1
  %1308 = bitcast i32* %j35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1308) #1
  %1309 = bitcast i32* %k36 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1309) #1
  %1310 = load i8**, i8*** @g_2346, align 8, !tbaa !5
  %1311 = load i8*, i8** %1310, align 8, !tbaa !5
  %1312 = load i8, i8* %1311, align 1, !tbaa !9
  %1313 = add i8 %1312, 1
  store i8 %1313, i8* %1311, align 1, !tbaa !9
  %1314 = zext i8 %1313 to i32
  %1315 = load i8*, i8** %l_5718, align 8, !tbaa !5
  %1316 = icmp eq i8* null, %1315
  %1317 = zext i1 %1316 to i32
  %1318 = load i32, i32* %l_5719, align 4, !tbaa !1
  %1319 = and i32 %1318, %1317
  store i32 %1319, i32* %l_5719, align 4, !tbaa !1
  %1320 = getelementptr inbounds [10 x [6 x [2 x i16]]], [10 x [6 x [2 x i16]]]* %l_5720, i32 0, i64 8
  %1321 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* %1320, i32 0, i64 0
  %1322 = getelementptr inbounds [2 x i16], [2 x i16]* %1321, i32 0, i64 1
  %1323 = load i16, i16* %1322, align 2, !tbaa !10
  %1324 = sext i16 %1323 to i32
  %1325 = icmp eq i32 %1319, %1324
  %1326 = zext i1 %1325 to i32
  %1327 = sext i32 %1326 to i64
  %1328 = load i64*, i64** @g_1163, align 8, !tbaa !5
  %1329 = load volatile i64, i64* %1328, align 8, !tbaa !7
  %1330 = call i64 @safe_mod_func_int64_t_s_s(i64 %1327, i64 %1329)
  %1331 = load i16****, i16***** @g_3185, align 8, !tbaa !5
  %1332 = load i16***, i16**** %1331, align 8, !tbaa !5
  %1333 = load i16**, i16*** %1332, align 8, !tbaa !5
  %1334 = load i16*, i16** %1333, align 8, !tbaa !5
  %1335 = load i16, i16* %1334, align 2, !tbaa !10
  %1336 = sext i16 %1335 to i32
  %1337 = icmp ne i32 27565, %1336
  %1338 = zext i1 %1337 to i32
  %1339 = trunc i32 %1338 to i16
  %1340 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1339, i32 27565)
  %1341 = sext i16 %1340 to i64
  %1342 = icmp sgt i64 809335474, %1341
  %1343 = zext i1 %1342 to i32
  %1344 = trunc i32 %1343 to i16
  %1345 = load i16*, i16** @g_745, align 8, !tbaa !5
  store i16 %1344, i16* %1345, align 2, !tbaa !10
  %1346 = sext i16 %1344 to i32
  %1347 = icmp ne i32 %1346, 0
  br i1 %1347, label %1355, label %1348

; <label>:1348                                    ; preds = %1299
  %1349 = getelementptr inbounds [7 x [5 x i32]], [7 x [5 x i32]]* %l_5721, i32 0, i64 0
  %1350 = getelementptr inbounds [5 x i32], [5 x i32]* %1349, i32 0, i64 0
  %1351 = load i32, i32* %1350, align 4, !tbaa !1
  %1352 = load i32, i32* %l_5722, align 4, !tbaa !1
  %1353 = or i32 %1352, %1351
  store i32 %1353, i32* %l_5722, align 4, !tbaa !1
  %1354 = icmp ne i32 %1353, 0
  br label %1355

; <label>:1355                                    ; preds = %1348, %1299
  %1356 = phi i1 [ true, %1299 ], [ %1354, %1348 ]
  %1357 = zext i1 %1356 to i32
  %1358 = getelementptr inbounds [10 x [6 x [2 x i16]]], [10 x [6 x [2 x i16]]]* %l_5720, i32 0, i64 0
  %1359 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* %1358, i32 0, i64 2
  %1360 = getelementptr inbounds [2 x i16], [2 x i16]* %1359, i32 0, i64 1
  %1361 = load i16, i16* %1360, align 2, !tbaa !10
  %1362 = sext i16 %1361 to i32
  %1363 = icmp sgt i32 %1357, %1362
  %1364 = zext i1 %1363 to i32
  %1365 = trunc i32 %1364 to i16
  %1366 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %1365, i32 27565)
  %1367 = sext i16 %1366 to i32
  %1368 = icmp sle i32 %1367, 27565
  %1369 = zext i1 %1368 to i32
  %1370 = or i32 %1314, %1369
  %1371 = trunc i32 %1370 to i16
  %1372 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1371, i16 zeroext -1)
  %1373 = zext i16 %1372 to i32
  %1374 = getelementptr inbounds [7 x [5 x [7 x i32]]], [7 x [5 x [7 x i32]]]* %l_5723, i32 0, i64 2
  %1375 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %1374, i32 0, i64 4
  %1376 = getelementptr inbounds [7 x i32], [7 x i32]* %1375, i32 0, i64 1
  %1377 = load i32, i32* %1376, align 4, !tbaa !1
  %1378 = icmp sge i32 %1373, %1377
  %1379 = zext i1 %1378 to i32
  %1380 = sext i32 %1379 to i64
  %1381 = load i64, i64* %l_5724, align 8, !tbaa !7
  %1382 = icmp ult i64 %1380, %1381
  %1383 = zext i1 %1382 to i32
  %1384 = load i16, i16* %l_5670, align 2, !tbaa !10
  %1385 = sext i16 %1384 to i32
  %1386 = load i32*, i32** @g_83, align 8, !tbaa !5
  store i32 %1385, i32* %1386, align 4, !tbaa !1
  %1387 = load i32****, i32***** @g_4688, align 8, !tbaa !5
  %1388 = load i32***, i32**** %1387, align 8, !tbaa !5
  %1389 = load i32**, i32*** %1388, align 8, !tbaa !5
  %1390 = load i32*, i32** %1389, align 8, !tbaa !5
  %1391 = load i32, i32* %1390, align 4, !tbaa !1
  %1392 = icmp ne i32 %1391, 0
  br i1 %1392, label %1393, label %1394

; <label>:1393                                    ; preds = %1355
  store i32 60, i32* %2
  br label %1523

; <label>:1394                                    ; preds = %1355
  %1395 = load i64**, i64*** @g_4437, align 8, !tbaa !5
  %1396 = load i64*, i64** %1395, align 8, !tbaa !5
  %1397 = load i64, i64* %1396, align 8, !tbaa !7
  %1398 = getelementptr inbounds [5 x [8 x [4 x i8**]]], [5 x [8 x [4 x i8**]]]* %l_5729, i32 0, i64 0
  %1399 = getelementptr inbounds [8 x [4 x i8**]], [8 x [4 x i8**]]* %1398, i32 0, i64 5
  %1400 = getelementptr inbounds [4 x i8**], [4 x i8**]* %1399, i32 0, i64 1
  %1401 = load i8**, i8*** %1400, align 8, !tbaa !5
  %1402 = getelementptr inbounds [6 x [9 x i8**]], [6 x [9 x i8**]]* %l_5730, i32 0, i64 2
  %1403 = getelementptr inbounds [9 x i8**], [9 x i8**]* %1402, i32 0, i64 2
  %1404 = load i8**, i8*** %1403, align 8, !tbaa !5
  %1405 = load i8****, i8***** %l_5409, align 8, !tbaa !5
  %1406 = load i8***, i8**** %1405, align 8, !tbaa !5
  store i8** %1404, i8*** %1406, align 8, !tbaa !5
  %1407 = icmp eq i8** %1401, %1404
  br i1 %1407, label %1408, label %1435

; <label>:1408                                    ; preds = %1394
  %1409 = load i8*****, i8****** getelementptr inbounds ([3 x [1 x i8*****]], [3 x [1 x i8*****]]* @func_1.l_5735, i32 0, i64 1, i64 0), align 8, !tbaa !5
  %1410 = icmp ne i8***** getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 3), %1409
  %1411 = zext i1 %1410 to i32
  %1412 = trunc i32 %1411 to i8
  %1413 = load i8*, i8** @g_875, align 8, !tbaa !5
  %1414 = load i8, i8* %1413, align 1, !tbaa !9
  %1415 = add i8 %1414, -1
  store i8 %1415, i8* %1413, align 1, !tbaa !9
  %1416 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %1412, i8 zeroext %1414)
  %1417 = zext i8 %1416 to i32
  %1418 = icmp ne i32 %1417, 0
  br i1 %1418, label %1426, label %1419

; <label>:1419                                    ; preds = %1408
  %1420 = getelementptr inbounds [10 x [6 x [2 x i16]]], [10 x [6 x [2 x i16]]]* %l_5720, i32 0, i64 3
  %1421 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* %1420, i32 0, i64 5
  %1422 = getelementptr inbounds [2 x i16], [2 x i16]* %1421, i32 0, i64 1
  %1423 = load i16, i16* %1422, align 2, !tbaa !10
  %1424 = sext i16 %1423 to i32
  %1425 = icmp ne i32 %1424, 0
  br label %1426

; <label>:1426                                    ; preds = %1419, %1408
  %1427 = phi i1 [ true, %1408 ], [ %1425, %1419 ]
  %1428 = zext i1 %1427 to i32
  %1429 = trunc i32 %1428 to i8
  %1430 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %1429, i32 0)
  %1431 = zext i8 %1430 to i32
  %1432 = getelementptr inbounds [3 x i32], [3 x i32]* %l_5690, i32 0, i64 2
  %1433 = load i32, i32* %1432, align 4, !tbaa !1
  %1434 = icmp sge i32 %1431, %1433
  br label %1435

; <label>:1435                                    ; preds = %1426, %1394
  %1436 = phi i1 [ false, %1394 ], [ %1434, %1426 ]
  %1437 = zext i1 %1436 to i32
  %1438 = load volatile i32, i32* getelementptr inbounds ([7 x [3 x [2 x i32]]], [7 x [3 x [2 x i32]]]* @g_5641, i32 0, i64 1, i64 0, i64 1), align 4, !tbaa !1
  %1439 = icmp ult i32 %1437, %1438
  %1440 = zext i1 %1439 to i32
  %1441 = sext i32 %1440 to i64
  %1442 = icmp ugt i64 %1397, %1441
  %1443 = zext i1 %1442 to i32
  %1444 = trunc i32 %1443 to i8
  %1445 = call zeroext i8 @safe_rshift_func_uint8_t_u_s(i8 zeroext %1444, i32 4)
  %1446 = zext i8 %1445 to i32
  %1447 = load i32*, i32** %l_2869, align 8, !tbaa !5
  %1448 = load i32, i32* %1447, align 4, !tbaa !1
  %1449 = or i32 %1448, %1446
  store i32 %1449, i32* %1447, align 4, !tbaa !1
  %1450 = load i16*, i16** %l_5738, align 8, !tbaa !5
  store i16 2, i16* %1450, align 2, !tbaa !10
  %1451 = load i32***, i32**** %l_5634, align 8, !tbaa !5
  %1452 = load i32**, i32*** %1451, align 8, !tbaa !5
  %1453 = load i32*, i32** %1452, align 8, !tbaa !5
  %1454 = load i32, i32* %1453, align 4, !tbaa !1
  %1455 = sext i32 %1454 to i64
  %1456 = icmp ule i64 %1455, 4294967292
  %1457 = zext i1 %1456 to i32
  %1458 = trunc i32 %1457 to i16
  %1459 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %1458, i32 7)
  %1460 = load i32, i32* %l_5722, align 4, !tbaa !1
  %1461 = sext i32 %1460 to i64
  %1462 = icmp sle i64 %1461, -1
  %1463 = zext i1 %1462 to i32
  %1464 = sext i32 %1463 to i64
  %1465 = icmp ne i64 %1464, 0
  %1466 = zext i1 %1465 to i32
  %1467 = trunc i32 %1466 to i16
  %1468 = getelementptr inbounds [7 x [5 x [7 x i32]]], [7 x [5 x [7 x i32]]]* %l_5723, i32 0, i64 1
  %1469 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %1468, i32 0, i64 2
  %1470 = getelementptr inbounds [7 x i32], [7 x i32]* %1469, i32 0, i64 0
  %1471 = load i32, i32* %1470, align 4, !tbaa !1
  %1472 = load i32, i32* %l_5746, align 4, !tbaa !1
  %1473 = trunc i32 %1472 to i8
  %1474 = load i8*, i8** @g_1544, align 8, !tbaa !5
  store i8 %1473, i8* %1474, align 1, !tbaa !9
  %1475 = sext i8 %1473 to i32
  %1476 = icmp ne i32 %1471, %1475
  br i1 %1476, label %1489, label %1477

; <label>:1477                                    ; preds = %1435
  %1478 = load i32, i32* %l_5749, align 4, !tbaa !1
  %1479 = load i16****, i16***** @g_4023, align 8, !tbaa !5
  %1480 = load i16***, i16**** %1479, align 8, !tbaa !5
  %1481 = load i16**, i16*** %1480, align 8, !tbaa !5
  %1482 = load i16*, i16** %1481, align 8, !tbaa !5
  %1483 = load i16, i16* %1482, align 2, !tbaa !10
  %1484 = sext i16 %1483 to i32
  %1485 = xor i32 %1478, %1484
  %1486 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext 0, i32 11)
  %1487 = zext i16 %1486 to i32
  %1488 = icmp ne i32 %1487, 0
  br label %1489

; <label>:1489                                    ; preds = %1477, %1435
  %1490 = phi i1 [ true, %1435 ], [ %1488, %1477 ]
  %1491 = zext i1 %1490 to i32
  %1492 = getelementptr inbounds [7 x [5 x [7 x i32]]], [7 x [5 x [7 x i32]]]* %l_5723, i32 0, i64 1
  %1493 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %1492, i32 0, i64 2
  %1494 = getelementptr inbounds [7 x i32], [7 x i32]* %1493, i32 0, i64 0
  %1495 = load i32, i32* %1494, align 4, !tbaa !1
  %1496 = icmp sgt i32 %1491, %1495
  %1497 = zext i1 %1496 to i32
  %1498 = trunc i32 %1497 to i16
  %1499 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1467, i16 zeroext %1498)
  %1500 = trunc i16 %1499 to i8
  %1501 = call signext i8 @safe_unary_minus_func_int8_t_s(i8 signext %1500)
  %1502 = sext i8 %1501 to i16
  %1503 = load i32, i32* %l_5689, align 4, !tbaa !1
  %1504 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %1502, i32 %1503)
  %1505 = sext i16 %1504 to i32
  %1506 = load i16, i16* %l_5750, align 2, !tbaa !10
  %1507 = sext i16 %1506 to i32
  %1508 = icmp sgt i32 %1505, %1507
  %1509 = zext i1 %1508 to i32
  %1510 = getelementptr inbounds [10 x [6 x [2 x i16]]], [10 x [6 x [2 x i16]]]* %l_5720, i32 0, i64 9
  %1511 = getelementptr inbounds [6 x [2 x i16]], [6 x [2 x i16]]* %1510, i32 0, i64 0
  %1512 = getelementptr inbounds [2 x i16], [2 x i16]* %1511, i32 0, i64 0
  %1513 = load i16, i16* %1512, align 2, !tbaa !10
  %1514 = sext i16 %1513 to i32
  %1515 = and i32 2, %1514
  %1516 = sext i32 %1515 to i64
  %1517 = load i64, i64* getelementptr inbounds ([10 x [5 x [5 x i64]]], [10 x [5 x [5 x i64]]]* @g_23, i32 0, i64 8, i64 1, i64 1), align 8, !tbaa !7
  %1518 = icmp ugt i64 %1516, %1517
  %1519 = zext i1 %1518 to i32
  %1520 = load i32*, i32** @g_83, align 8, !tbaa !5
  %1521 = load i32, i32* %1520, align 4, !tbaa !1
  %1522 = xor i32 %1521, %1519
  store i32 %1522, i32* %1520, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %1523

; <label>:1523                                    ; preds = %1489, %1393
  %1524 = bitcast i32* %k36 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1524) #1
  %1525 = bitcast i32* %j35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1525) #1
  %1526 = bitcast i32* %i34 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1526) #1
  %1527 = bitcast i16* %l_5750 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1527) #1
  %1528 = bitcast i32* %l_5749 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1528) #1
  %1529 = bitcast i16** %l_5738 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1529) #1
  %1530 = bitcast [5 x [8 x [4 x i8**]]]* %l_5729 to i8*
  call void @llvm.lifetime.end(i64 1280, i8* %1530) #1
  %1531 = bitcast i32* %l_5719 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1531) #1
  %1532 = bitcast i16* %l_5715 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1532) #1
  %cleanup.dest.37 = load i32, i32* %2
  switch i32 %cleanup.dest.37, label %2448 [
    i32 0, label %1533
    i32 60, label %1534
  ]

; <label>:1533                                    ; preds = %1523
  br label %1534

; <label>:1534                                    ; preds = %1533, %1523
  %1535 = load i32, i32* %l_5695, align 4, !tbaa !1
  %1536 = sext i32 %1535 to i64
  %1537 = call i64 @safe_add_func_uint64_t_u_u(i64 %1536, i64 7)
  %1538 = trunc i64 %1537 to i32
  store i32 %1538, i32* %l_5695, align 4, !tbaa !1
  br label %1296

; <label>:1539                                    ; preds = %1296
  store i32 -6, i32* @g_393, align 4, !tbaa !1
  br label %1540

; <label>:1540                                    ; preds = %1596, %1539
  %1541 = load i32, i32* @g_393, align 4, !tbaa !1
  %1542 = icmp sgt i32 %1541, 12
  br i1 %1542, label %1543, label %1601

; <label>:1543                                    ; preds = %1540
  %1544 = load i32, i32* %l_5746, align 4, !tbaa !1
  %1545 = load i32*, i32** %l_61, align 8, !tbaa !5
  %1546 = load i32, i32* %1545, align 4, !tbaa !1
  %1547 = trunc i32 %1546 to i16
  %1548 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1547, i32 10)
  %1549 = zext i16 %1548 to i32
  %1550 = getelementptr inbounds [7 x [5 x [7 x i32]]], [7 x [5 x [7 x i32]]]* %l_5723, i32 0, i64 2
  %1551 = getelementptr inbounds [5 x [7 x i32]], [5 x [7 x i32]]* %1550, i32 0, i64 4
  %1552 = getelementptr inbounds [7 x i32], [7 x i32]* %1551, i32 0, i64 1
  %1553 = load i32, i32* %1552, align 4, !tbaa !1
  %1554 = xor i32 %1553, %1549
  store i32 %1554, i32* %1552, align 4, !tbaa !1
  %1555 = trunc i32 %1554 to i8
  %1556 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1555, i8 zeroext 1)
  %1557 = icmp ne i8 %1556, 0
  %1558 = xor i1 %1557, true
  %1559 = zext i1 %1558 to i32
  %1560 = sext i32 %1559 to i64
  %1561 = call i32 @safe_unary_minus_func_int32_t_s(i32 8)
  %1562 = getelementptr inbounds [7 x [5 x i32]], [7 x [5 x i32]]* %l_5699, i32 0, i64 1
  %1563 = getelementptr inbounds [5 x i32], [5 x i32]* %1562, i32 0, i64 2
  %1564 = load i32, i32* %1563, align 4, !tbaa !1
  %1565 = or i32 %1564, %1561
  store i32 %1565, i32* %1563, align 4, !tbaa !1
  %1566 = icmp ne i32 %1565, 0
  br i1 %1566, label %1571, label %1567

; <label>:1567                                    ; preds = %1543
  %1568 = load volatile i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_660, i32 0, i64 1), align 1, !tbaa !9
  %1569 = sext i8 %1568 to i32
  %1570 = icmp ne i32 %1569, 0
  br label %1571

; <label>:1571                                    ; preds = %1567, %1543
  %1572 = phi i1 [ true, %1543 ], [ %1570, %1567 ]
  %1573 = zext i1 %1572 to i32
  %1574 = sext i32 %1573 to i64
  %1575 = call i64 @safe_add_func_int64_t_s_s(i64 %1560, i64 %1574)
  %1576 = trunc i64 %1575 to i32
  store i32 %1576, i32* %l_5762, align 4, !tbaa !1
  %1577 = load i32**, i32*** %l_5509, align 8, !tbaa !5
  %1578 = load i32*, i32** %1577, align 8, !tbaa !5
  %1579 = load i32, i32* %1578, align 4, !tbaa !1
  %1580 = icmp ne i32 %1579, 0
  br i1 %1580, label %1581, label %1582

; <label>:1581                                    ; preds = %1571
  br label %1601

; <label>:1582                                    ; preds = %1571
  %1583 = load volatile i32**, i32*** @g_5292, align 8, !tbaa !5
  %1584 = load i32*, i32** %1583, align 8, !tbaa !5
  %1585 = load i32, i32* %1584, align 4, !tbaa !1
  %1586 = icmp ne i32 %1585, 0
  br i1 %1586, label %1587, label %1588

; <label>:1587                                    ; preds = %1582
  br label %1601

; <label>:1588                                    ; preds = %1582
  %1589 = load i32, i32* %l_5722, align 4, !tbaa !1
  %1590 = trunc i32 %1589 to i16
  %1591 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1590, i32 11)
  %1592 = zext i16 %1591 to i32
  %1593 = load i32**, i32*** %l_5509, align 8, !tbaa !5
  %1594 = load i32*, i32** %1593, align 8, !tbaa !5
  store i32 %1592, i32* %1594, align 4, !tbaa !1
  %1595 = load i32*, i32** @g_3995, align 8, !tbaa !5
  store i32 %1592, i32* %1595, align 4, !tbaa !1
  br label %1596

; <label>:1596                                    ; preds = %1588
  %1597 = load i32, i32* @g_393, align 4, !tbaa !1
  %1598 = trunc i32 %1597 to i8
  %1599 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %1598, i8 zeroext 4)
  %1600 = zext i8 %1599 to i32
  store i32 %1600, i32* @g_393, align 4, !tbaa !1
  br label %1540

; <label>:1601                                    ; preds = %1587, %1581, %1540
  %1602 = load i16, i16* %l_5769, align 2, !tbaa !10
  %1603 = add i16 %1602, 1
  store i16 %1603, i16* %l_5769, align 2, !tbaa !10
  %1604 = bitcast i32* %k33 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1604) #1
  %1605 = bitcast i32* %j32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1605) #1
  %1606 = bitcast i32* %i31 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1606) #1
  %1607 = bitcast i32* %l_5768 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1607) #1
  %1608 = bitcast i32* %l_5767 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1608) #1
  %1609 = bitcast i16* %l_5766 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %1609) #1
  %1610 = bitcast i32* %l_5746 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1610) #1
  %1611 = bitcast i32* %l_5722 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1611) #1
  %1612 = bitcast [10 x [6 x [2 x i16]]]* %l_5720 to i8*
  call void @llvm.lifetime.end(i64 240, i8* %1612) #1
  br label %1613

; <label>:1613                                    ; preds = %1601
  %1614 = load i16, i16* @g_315, align 2, !tbaa !10
  %1615 = add i16 %1614, 1
  store i16 %1615, i16* @g_315, align 2, !tbaa !10
  br label %1281

; <label>:1616                                    ; preds = %1281
  %1617 = load volatile i32*, i32** @g_153, align 8, !tbaa !5
  %1618 = load i32, i32* %1617, align 4, !tbaa !1
  %1619 = icmp ne i32 %1618, 0
  br i1 %1619, label %1620, label %1621

; <label>:1620                                    ; preds = %1616
  store i32 51, i32* %2
  br label %1624

; <label>:1621                                    ; preds = %1616
  %1622 = load i32**, i32*** @g_1169, align 8, !tbaa !5
  %1623 = load i32*, i32** %1622, align 8, !tbaa !5
  store i32 5, i32* %1623, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %1624

; <label>:1624                                    ; preds = %1621, %1620
  %1625 = bitcast i32* %k30 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1625) #1
  %1626 = bitcast i32* %j29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1626) #1
  %1627 = bitcast i32* %i28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1627) #1
  %1628 = bitcast i32* %l_5762 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1628) #1
  %1629 = bitcast [6 x [9 x i8**]]* %l_5730 to i8*
  call void @llvm.lifetime.end(i64 432, i8* %1629) #1
  %1630 = bitcast [7 x [5 x [7 x i32]]]* %l_5723 to i8*
  call void @llvm.lifetime.end(i64 980, i8* %1630) #1
  %cleanup.dest.38 = load i32, i32* %2
  switch i32 %cleanup.dest.38, label %1633 [
    i32 0, label %1631
  ]

; <label>:1631                                    ; preds = %1624
  br label %1632

; <label>:1632                                    ; preds = %1631, %1262
  store i32 0, i32* %2
  br label %1633

; <label>:1633                                    ; preds = %1632, %1624
  %1634 = bitcast i32* %i26 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1634) #1
  %1635 = bitcast i64* %l_5724 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1635) #1
  %1636 = bitcast [3 x i32]* %l_5690 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %1636) #1
  %1637 = bitcast i32* %l_5689 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1637) #1
  %1638 = bitcast i32***** %l_5685 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1638) #1
  %1639 = bitcast i32**** %l_5686 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1639) #1
  %1640 = bitcast i32*** %l_5687 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1640) #1
  %cleanup.dest.39 = load i32, i32* %2
  switch i32 %cleanup.dest.39, label %2448 [
    i32 0, label %1641
    i32 51, label %1642
  ]

; <label>:1641                                    ; preds = %1633
  br label %1642

; <label>:1642                                    ; preds = %1641, %1633
  %1643 = load i16, i16* @g_1714, align 2, !tbaa !10
  %1644 = add i16 %1643, 1
  store i16 %1644, i16* @g_1714, align 2, !tbaa !10
  br label %1223

; <label>:1645                                    ; preds = %1223
  %1646 = load i32****, i32***** %l_5633, align 8, !tbaa !5
  %1647 = load i32***, i32**** %1646, align 8, !tbaa !5
  %1648 = load i32**, i32*** %1647, align 8, !tbaa !5
  %1649 = load i32*, i32** %1648, align 8, !tbaa !5
  %1650 = load i32, i32* %1649, align 4, !tbaa !1
  %1651 = icmp ne i32 %1650, 0
  br i1 %1651, label %1652, label %1796

; <label>:1652                                    ; preds = %1645
  %1653 = bitcast i64* %l_5772 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1653) #1
  store i64 0, i64* %l_5772, align 8, !tbaa !7
  %1654 = bitcast [6 x [5 x [5 x i32]]]* %l_5773 to i8*
  call void @llvm.lifetime.start(i64 600, i8* %1654) #1
  %1655 = bitcast [6 x [5 x [5 x i32]]]* %l_5773 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1655, i8* bitcast ([6 x [5 x [5 x i32]]]* @func_1.l_5773 to i8*), i64 600, i32 16, i1 false)
  %1656 = bitcast i32* %i40 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1656) #1
  %1657 = bitcast i32* %j41 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1657) #1
  %1658 = bitcast i32* %k42 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1658) #1
  %1659 = load i32**, i32*** @g_1169, align 8, !tbaa !5
  %1660 = load i32*, i32** %1659, align 8, !tbaa !5
  store i32 313888260, i32* %1660, align 4, !tbaa !1
  %1661 = load i16, i16* %l_5774, align 2, !tbaa !10
  %1662 = add i16 %1661, -1
  store i16 %1662, i16* %l_5774, align 2, !tbaa !10
  store i32 4, i32* %l_5694, align 4, !tbaa !1
  br label %1663

; <label>:1663                                    ; preds = %1784, %1652
  %1664 = load i32, i32* %l_5694, align 4, !tbaa !1
  %1665 = icmp sge i32 %1664, 0
  br i1 %1665, label %1666, label %1787

; <label>:1666                                    ; preds = %1663
  %1667 = bitcast i32* %l_5777 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1667) #1
  store i32 -66063458, i32* %l_5777, align 4, !tbaa !1
  %1668 = bitcast i32* %i43 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1668) #1
  %1669 = load i32, i32* %l_5778, align 4, !tbaa !1
  %1670 = add i32 %1669, 1
  store i32 %1670, i32* %l_5778, align 4, !tbaa !1
  store i8 1, i8* @g_4606, align 1, !tbaa !9
  br label %1671

; <label>:1671                                    ; preds = %1688, %1666
  %1672 = load i8, i8* @g_4606, align 1, !tbaa !9
  %1673 = sext i8 %1672 to i32
  %1674 = icmp sge i32 %1673, 0
  br i1 %1674, label %1675, label %1693

; <label>:1675                                    ; preds = %1671
  %1676 = bitcast i32*** %l_5781 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1676) #1
  %1677 = load i32, i32* %l_5694, align 4, !tbaa !1
  %1678 = sext i32 %1677 to i64
  %1679 = getelementptr inbounds [5 x i32*], [5 x i32*]* @g_590, i32 0, i64 %1678
  store i32** %1679, i32*** %l_5781, align 8, !tbaa !5
  %1680 = bitcast i32* %i44 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1680) #1
  %1681 = load i32, i32* %l_5694, align 4, !tbaa !1
  %1682 = sext i32 %1681 to i64
  %1683 = getelementptr inbounds [5 x i32*], [5 x i32*]* @g_590, i32 0, i64 %1682
  %1684 = load volatile i32*, i32** %1683, align 8, !tbaa !5
  %1685 = load i32**, i32*** %l_5781, align 8, !tbaa !5
  store volatile i32* %1684, i32** %1685, align 8, !tbaa !5
  %1686 = bitcast i32* %i44 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1686) #1
  %1687 = bitcast i32*** %l_5781 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1687) #1
  br label %1688

; <label>:1688                                    ; preds = %1675
  %1689 = load i8, i8* @g_4606, align 1, !tbaa !9
  %1690 = sext i8 %1689 to i32
  %1691 = sub nsw i32 %1690, 1
  %1692 = trunc i32 %1691 to i8
  store i8 %1692, i8* @g_4606, align 1, !tbaa !9
  br label %1671

; <label>:1693                                    ; preds = %1671
  %1694 = load volatile i32**, i32*** @g_657, align 8, !tbaa !5
  %1695 = load i32*, i32** %1694, align 8, !tbaa !5
  %1696 = load i32, i32* %1695, align 4, !tbaa !1
  %1697 = icmp ne i32 %1696, 0
  br i1 %1697, label %1698, label %1699

; <label>:1698                                    ; preds = %1693
  store i32 64, i32* %2
  br label %1780

; <label>:1699                                    ; preds = %1693
  %1700 = load i16*****, i16****** @g_3184, align 8, !tbaa !5
  %1701 = load i16****, i16***** %1700, align 8, !tbaa !5
  %1702 = load i16***, i16**** %1701, align 8, !tbaa !5
  %1703 = load i16**, i16*** %1702, align 8, !tbaa !5
  %1704 = load i16*, i16** %1703, align 8, !tbaa !5
  %1705 = load i16, i16* %1704, align 2, !tbaa !10
  %1706 = sext i16 %1705 to i64
  %1707 = getelementptr inbounds [6 x [5 x [5 x i32]]], [6 x [5 x [5 x i32]]]* %l_5773, i32 0, i64 1
  %1708 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %1707, i32 0, i64 1
  %1709 = getelementptr inbounds [5 x i32], [5 x i32]* %1708, i32 0, i64 0
  %1710 = load i32, i32* %1709, align 4, !tbaa !1
  %1711 = getelementptr inbounds [6 x [5 x [5 x i32]]], [6 x [5 x [5 x i32]]]* %l_5773, i32 0, i64 1
  %1712 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %1711, i32 0, i64 4
  %1713 = getelementptr inbounds [5 x i32], [5 x i32]* %1712, i32 0, i64 0
  store i32 %1710, i32* %1713, align 4, !tbaa !1
  %1714 = load i64*, i64** @g_1738, align 8, !tbaa !5
  store i64 1, i64* %1714, align 8, !tbaa !7
  %1715 = load i8*, i8** @g_2634, align 8, !tbaa !5
  %1716 = load i8, i8* %1715, align 1, !tbaa !9
  %1717 = sext i8 %1716 to i32
  %1718 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext 43, i32 %1717)
  %1719 = sext i8 %1718 to i32
  %1720 = icmp sle i32 %1710, %1719
  br i1 %1720, label %1721, label %1724

; <label>:1721                                    ; preds = %1699
  %1722 = load i64, i64* %l_5772, align 8, !tbaa !7
  %1723 = icmp ne i64 %1722, 0
  br label %1724

; <label>:1724                                    ; preds = %1721, %1699
  %1725 = phi i1 [ false, %1699 ], [ %1723, %1721 ]
  %1726 = zext i1 %1725 to i32
  %1727 = trunc i32 %1726 to i8
  %1728 = load volatile i8***, i8**** @g_2345, align 8, !tbaa !5
  %1729 = load i8**, i8*** %1728, align 8, !tbaa !5
  %1730 = load i8*, i8** %1729, align 8, !tbaa !5
  %1731 = load i8, i8* %1730, align 1, !tbaa !9
  %1732 = call signext i8 @safe_mod_func_int8_t_s_s(i8 signext %1727, i8 signext %1731)
  %1733 = load i8**, i8*** @g_874, align 8, !tbaa !5
  %1734 = load i8*, i8** %1733, align 8, !tbaa !5
  %1735 = load i8, i8* %1734, align 1, !tbaa !9
  %1736 = call zeroext i8 @safe_div_func_uint8_t_u_u(i8 zeroext %1732, i8 zeroext %1735)
  %1737 = zext i8 %1736 to i32
  %1738 = load i16, i16* @g_5172, align 2, !tbaa !10
  %1739 = sext i16 %1738 to i32
  %1740 = or i32 %1737, %1739
  %1741 = load i8**, i8*** @g_2346, align 8, !tbaa !5
  %1742 = load i8*, i8** %1741, align 8, !tbaa !5
  %1743 = load i8, i8* %1742, align 1, !tbaa !9
  %1744 = zext i8 %1743 to i32
  %1745 = icmp sge i32 %1740, %1744
  %1746 = zext i1 %1745 to i32
  %1747 = sext i32 %1746 to i64
  %1748 = icmp sgt i64 37, %1747
  br i1 %1748, label %1749, label %1750

; <label>:1749                                    ; preds = %1724
  br label %1750

; <label>:1750                                    ; preds = %1749, %1724
  %1751 = phi i1 [ false, %1724 ], [ true, %1749 ]
  %1752 = zext i1 %1751 to i32
  %1753 = sext i32 %1752 to i64
  %1754 = icmp eq i64 %1753, 0
  %1755 = zext i1 %1754 to i32
  %1756 = load i32, i32* %l_5777, align 4, !tbaa !1
  %1757 = and i32 %1755, %1756
  %1758 = sext i32 %1757 to i64
  %1759 = load i64, i64* %l_5772, align 8, !tbaa !7
  %1760 = call i64 @safe_div_func_int64_t_s_s(i64 %1758, i64 %1759)
  %1761 = load i64, i64* %l_5772, align 8, !tbaa !7
  %1762 = icmp slt i64 %1760, %1761
  %1763 = zext i1 %1762 to i32
  %1764 = call i32 @safe_div_func_int32_t_s_s(i32 -1379845275, i32 -793547154)
  %1765 = trunc i32 %1764 to i8
  %1766 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %1765, i32 2)
  %1767 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext 1, i32 6)
  %1768 = sext i8 %1767 to i64
  %1769 = call i64 @safe_sub_func_uint64_t_u_u(i64 0, i64 %1768)
  %1770 = xor i64 1, %1769
  %1771 = xor i64 %1706, %1770
  %1772 = icmp ne i64 %1771, 0
  br i1 %1772, label %1773, label %1777

; <label>:1773                                    ; preds = %1750
  %1774 = load i16, i16* %l_5774, align 2, !tbaa !10
  %1775 = zext i16 %1774 to i32
  %1776 = icmp ne i32 %1775, 0
  br label %1777

; <label>:1777                                    ; preds = %1773, %1750
  %1778 = phi i1 [ false, %1750 ], [ %1776, %1773 ]
  %1779 = zext i1 %1778 to i32
  store i32 %1779, i32* %l_5691, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %1780

; <label>:1780                                    ; preds = %1777, %1698
  %1781 = bitcast i32* %i43 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1781) #1
  %1782 = bitcast i32* %l_5777 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1782) #1
  %cleanup.dest.45 = load i32, i32* %2
  switch i32 %cleanup.dest.45, label %2448 [
    i32 0, label %1783
    i32 64, label %1787
  ]

; <label>:1783                                    ; preds = %1780
  br label %1784

; <label>:1784                                    ; preds = %1783
  %1785 = load i32, i32* %l_5694, align 4, !tbaa !1
  %1786 = sub nsw i32 %1785, 1
  store i32 %1786, i32* %l_5694, align 4, !tbaa !1
  br label %1663

; <label>:1787                                    ; preds = %1780, %1663
  %1788 = load i64*****, i64****** @g_823, align 8, !tbaa !5
  %1789 = load i64****, i64***** %1788, align 8, !tbaa !5
  %1790 = load i64*****, i64****** @g_823, align 8, !tbaa !5
  store i64**** %1789, i64***** %1790, align 8, !tbaa !5
  store i64**** %1789, i64***** %l_5802, align 8, !tbaa !5
  %1791 = bitcast i32* %k42 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1791) #1
  %1792 = bitcast i32* %j41 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1792) #1
  %1793 = bitcast i32* %i40 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1793) #1
  %1794 = bitcast [6 x [5 x [5 x i32]]]* %l_5773 to i8*
  call void @llvm.lifetime.end(i64 600, i8* %1794) #1
  %1795 = bitcast i64* %l_5772 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1795) #1
  br label %2326

; <label>:1796                                    ; preds = %1645
  %1797 = bitcast i16* %l_5803 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1797) #1
  store i16 -1, i16* %l_5803, align 2, !tbaa !10
  %1798 = bitcast i32* %l_5804 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1798) #1
  store i32 -2, i32* %l_5804, align 4, !tbaa !1
  %1799 = bitcast i32* %l_5805 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1799) #1
  store i32 1681630710, i32* %l_5805, align 4, !tbaa !1
  %1800 = bitcast i32* %l_5806 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1800) #1
  store i32 -1, i32* %l_5806, align 4, !tbaa !1
  %1801 = bitcast i32* %l_5807 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1801) #1
  store i32 7, i32* %l_5807, align 4, !tbaa !1
  %1802 = bitcast i32* %l_5808 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1802) #1
  store i32 1, i32* %l_5808, align 4, !tbaa !1
  %1803 = bitcast i32* %l_5809 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1803) #1
  store i32 1131190252, i32* %l_5809, align 4, !tbaa !1
  %1804 = bitcast [7 x i32]* %l_5810 to i8*
  call void @llvm.lifetime.start(i64 28, i8* %1804) #1
  %1805 = bitcast i64**** %l_5851 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1805) #1
  store i64*** null, i64**** %l_5851, align 8, !tbaa !5
  %1806 = bitcast [3 x i16*]* %l_5863 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1806) #1
  %1807 = bitcast i64* %l_5884 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1807) #1
  store i64 7464324029900726473, i64* %l_5884, align 8, !tbaa !7
  %1808 = bitcast i64***** %l_5886 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1808) #1
  store i64**** %l_5850, i64***** %l_5886, align 8, !tbaa !5
  %1809 = bitcast i64****** %l_5885 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1809) #1
  store i64***** %l_5886, i64****** %l_5885, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_5895) #1
  store i8 82, i8* %l_5895, align 1, !tbaa !9
  %1810 = bitcast i32* %i46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1810) #1
  store i32 0, i32* %i46, align 4, !tbaa !1
  br label %1811

; <label>:1811                                    ; preds = %1818, %1796
  %1812 = load i32, i32* %i46, align 4, !tbaa !1
  %1813 = icmp slt i32 %1812, 7
  br i1 %1813, label %1814, label %1821

; <label>:1814                                    ; preds = %1811
  %1815 = load i32, i32* %i46, align 4, !tbaa !1
  %1816 = sext i32 %1815 to i64
  %1817 = getelementptr inbounds [7 x i32], [7 x i32]* %l_5810, i32 0, i64 %1816
  store i32 152582503, i32* %1817, align 4, !tbaa !1
  br label %1818

; <label>:1818                                    ; preds = %1814
  %1819 = load i32, i32* %i46, align 4, !tbaa !1
  %1820 = add nsw i32 %1819, 1
  store i32 %1820, i32* %i46, align 4, !tbaa !1
  br label %1811

; <label>:1821                                    ; preds = %1811
  store i32 0, i32* %i46, align 4, !tbaa !1
  br label %1822

; <label>:1822                                    ; preds = %1829, %1821
  %1823 = load i32, i32* %i46, align 4, !tbaa !1
  %1824 = icmp slt i32 %1823, 3
  br i1 %1824, label %1825, label %1832

; <label>:1825                                    ; preds = %1822
  %1826 = load i32, i32* %i46, align 4, !tbaa !1
  %1827 = sext i32 %1826 to i64
  %1828 = getelementptr inbounds [3 x i16*], [3 x i16*]* %l_5863, i32 0, i64 %1827
  store i16* null, i16** %1828, align 8, !tbaa !5
  br label %1829

; <label>:1829                                    ; preds = %1825
  %1830 = load i32, i32* %i46, align 4, !tbaa !1
  %1831 = add nsw i32 %1830, 1
  store i32 %1831, i32* %i46, align 4, !tbaa !1
  br label %1822

; <label>:1832                                    ; preds = %1822
  %1833 = load i32, i32* %l_5811, align 4, !tbaa !1
  %1834 = add i32 %1833, 1
  store i32 %1834, i32* %l_5811, align 4, !tbaa !1
  store i16 8, i16* @g_5172, align 2, !tbaa !10
  br label %1835

; <label>:1835                                    ; preds = %2108, %1832
  %1836 = load i16, i16* @g_5172, align 2, !tbaa !10
  %1837 = sext i16 %1836 to i32
  %1838 = icmp sge i32 %1837, 0
  br i1 %1838, label %1839, label %2113

; <label>:1839                                    ; preds = %1835
  %1840 = bitcast i32* %l_5818 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1840) #1
  store i32 0, i32* %l_5818, align 4, !tbaa !1
  %1841 = bitcast i32* %l_5848 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1841) #1
  store i32 1460307016, i32* %l_5848, align 4, !tbaa !1
  %1842 = bitcast i32* %i47 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1842) #1
  %1843 = load volatile i32**, i32*** @g_693, align 8, !tbaa !5
  %1844 = load i32*, i32** %1843, align 8, !tbaa !5
  %1845 = load i32, i32* %l_5696, align 4, !tbaa !1
  %1846 = load i8, i8* %l_5688, align 1, !tbaa !9
  %1847 = sext i8 %1846 to i32
  %1848 = load i8*, i8** @g_1544, align 8, !tbaa !5
  %1849 = load i8, i8* %1848, align 1, !tbaa !9
  %1850 = sext i8 %1849 to i32
  %1851 = xor i32 %1850, %1847
  %1852 = trunc i32 %1851 to i8
  store i8 %1852, i8* %1848, align 1, !tbaa !9
  %1853 = sext i8 %1852 to i32
  %1854 = load i8*, i8** @g_2634, align 8, !tbaa !5
  %1855 = load i8, i8* %1854, align 1, !tbaa !9
  %1856 = sext i8 %1855 to i32
  %1857 = and i32 %1856, %1853
  %1858 = trunc i32 %1857 to i8
  store i8 %1858, i8* %1854, align 1, !tbaa !9
  %1859 = sext i8 %1858 to i32
  %1860 = load i8*, i8** @g_875, align 8, !tbaa !5
  %1861 = load i8, i8* %1860, align 1, !tbaa !9
  %1862 = zext i8 %1861 to i64
  %1863 = icmp eq i64 1, %1862
  %1864 = zext i1 %1863 to i32
  %1865 = icmp sge i32 %1859, %1864
  %1866 = zext i1 %1865 to i32
  %1867 = icmp sle i32 %1845, %1866
  %1868 = zext i1 %1867 to i32
  %1869 = trunc i32 %1868 to i16
  %1870 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1871 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1872 = trunc i32 %1871 to i16
  %1873 = load i16*, i16** @g_745, align 8, !tbaa !5
  %1874 = load i16, i16* %1873, align 2, !tbaa !10
  %1875 = sext i16 %1874 to i32
  %1876 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1872, i32 %1875)
  %1877 = zext i16 %1876 to i32
  %1878 = icmp sgt i32 %1870, %1877
  %1879 = zext i1 %1878 to i32
  %1880 = trunc i32 %1879 to i16
  %1881 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %1880, i32 1)
  %1882 = zext i16 %1881 to i64
  %1883 = xor i64 %1882, 156
  %1884 = trunc i64 %1883 to i16
  %1885 = call signext i16 @safe_div_func_int16_t_s_s(i16 signext 1, i16 signext %1884)
  %1886 = sext i16 %1885 to i32
  %1887 = load i16****, i16***** @g_3185, align 8, !tbaa !5
  %1888 = load i16***, i16**** %1887, align 8, !tbaa !5
  %1889 = load i16**, i16*** %1888, align 8, !tbaa !5
  %1890 = load i16*, i16** %1889, align 8, !tbaa !5
  %1891 = load i16, i16* %1890, align 2, !tbaa !10
  %1892 = call i32* @func_62(i32* %1844, i16 zeroext %1869, i32 %1886, i16 signext %1891)
  %1893 = load i32**, i32*** %l_5509, align 8, !tbaa !5
  store i32* %1892, i32** %1893, align 8, !tbaa !5
  %1894 = load i32, i32* %l_5804, align 4, !tbaa !1
  %1895 = icmp ne i32 %1894, 0
  br i1 %1895, label %1896, label %1897

; <label>:1896                                    ; preds = %1839
  store i32 78, i32* %2
  br label %2103

; <label>:1897                                    ; preds = %1839
  %1898 = load i32, i32* %l_5696, align 4, !tbaa !1
  %1899 = trunc i32 %1898 to i16
  %1900 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1901 = trunc i32 %1900 to i16
  %1902 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %1901, i32 10)
  %1903 = zext i16 %1902 to i32
  %1904 = load i8*, i8** @g_2634, align 8, !tbaa !5
  %1905 = load i8, i8* %1904, align 1, !tbaa !9
  %1906 = sext i8 %1905 to i32
  %1907 = icmp eq i32 %1903, %1906
  %1908 = zext i1 %1907 to i32
  %1909 = call zeroext i16 @safe_lshift_func_uint16_t_u_s(i16 zeroext %1899, i32 %1908)
  %1910 = trunc i16 %1909 to i8
  %1911 = call signext i8 @safe_rshift_func_int8_t_s_u(i8 signext %1910, i32 6)
  %1912 = sext i8 %1911 to i16
  %1913 = load i16, i16* %l_5774, align 2, !tbaa !10
  %1914 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1912, i16 zeroext %1913)
  %1915 = trunc i16 %1914 to i8
  %1916 = load i64, i64* getelementptr inbounds ([2 x [7 x i64]], [2 x [7 x i64]]* @g_2742, i32 0, i64 0, i64 1), align 8, !tbaa !7
  %1917 = load i64, i64* %l_5841, align 8, !tbaa !7
  %1918 = load i32, i32* %l_5694, align 4, !tbaa !1
  %1919 = sext i32 %1918 to i64
  %1920 = icmp eq i64 %1917, %1919
  %1921 = zext i1 %1920 to i32
  %1922 = trunc i32 %1921 to i16
  %1923 = load volatile i8***, i8**** @g_2345, align 8, !tbaa !5
  %1924 = load i8**, i8*** %1923, align 8, !tbaa !5
  %1925 = load i8*, i8** %1924, align 8, !tbaa !5
  %1926 = load i8, i8* %1925, align 1, !tbaa !9
  store i32 0, i32* %l_5848, align 4, !tbaa !1
  %1927 = getelementptr inbounds [7 x [5 x i32]], [7 x [5 x i32]]* %l_5721, i32 0, i64 4
  %1928 = getelementptr inbounds [5 x i32], [5 x i32]* %1927, i32 0, i64 4
  %1929 = load i32, i32* %1928, align 4, !tbaa !1
  %1930 = icmp sgt i32 0, %1929
  %1931 = zext i1 %1930 to i32
  %1932 = sext i32 %1931 to i64
  %1933 = or i64 -1545294137777715909, %1932
  %1934 = call i64 @safe_mod_func_int64_t_s_s(i64 %1933, i64 -8824954500628630051)
  %1935 = trunc i64 %1934 to i16
  %1936 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %1935, i16 zeroext 12157)
  %1937 = trunc i16 %1936 to i8
  %1938 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1939 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %1937, i32 %1938)
  %1940 = sext i8 %1939 to i16
  %1941 = call zeroext i16 @safe_add_func_uint16_t_u_u(i16 zeroext %1922, i16 zeroext %1940)
  %1942 = zext i16 %1941 to i32
  %1943 = load i32, i32* %l_5808, align 4, !tbaa !1
  %1944 = call i32 @safe_add_func_uint32_t_u_u(i32 %1942, i32 %1943)
  %1945 = trunc i32 %1944 to i16
  %1946 = load i32, i32* %l_5808, align 4, !tbaa !1
  %1947 = trunc i32 %1946 to i16
  %1948 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %1945, i16 zeroext %1947)
  %1949 = zext i16 %1948 to i32
  %1950 = load i16***, i16**** @g_1764, align 8, !tbaa !5
  %1951 = load i16**, i16*** %1950, align 8, !tbaa !5
  %1952 = load i16*, i16** %1951, align 8, !tbaa !5
  %1953 = load i16, i16* %1952, align 2, !tbaa !10
  %1954 = sext i16 %1953 to i32
  %1955 = icmp ne i32 %1949, %1954
  %1956 = zext i1 %1955 to i32
  %1957 = sext i32 %1956 to i64
  %1958 = icmp sgt i64 %1957, 1397948216737498468
  %1959 = zext i1 %1958 to i32
  %1960 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1961 = call i32 @safe_div_func_uint32_t_u_u(i32 %1959, i32 %1960)
  %1962 = icmp ne i32 %1961, 0
  br i1 %1962, label %1966, label %1963

; <label>:1963                                    ; preds = %1897
  %1964 = load i64, i64* %l_5841, align 8, !tbaa !7
  %1965 = icmp ne i64 %1964, 0
  br label %1966

; <label>:1966                                    ; preds = %1963, %1897
  %1967 = phi i1 [ true, %1897 ], [ %1965, %1963 ]
  %1968 = zext i1 %1967 to i32
  %1969 = trunc i32 %1968 to i8
  %1970 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %1915, i8 signext %1969)
  %1971 = sext i8 %1970 to i32
  %1972 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1973 = and i32 %1971, %1972
  %1974 = load i32, i32* @g_147, align 4, !tbaa !1
  %1975 = xor i32 %1974, %1973
  store i32 %1975, i32* @g_147, align 4, !tbaa !1
  %1976 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1977 = icmp ne i32 %1975, %1976
  %1978 = zext i1 %1977 to i32
  %1979 = load i32, i32* %l_5808, align 4, !tbaa !1
  %1980 = trunc i32 %1979 to i8
  %1981 = load i8**, i8*** @g_874, align 8, !tbaa !5
  %1982 = load i8*, i8** %1981, align 8, !tbaa !5
  store i8 %1980, i8* %1982, align 1, !tbaa !9
  %1983 = zext i8 %1980 to i32
  %1984 = getelementptr inbounds [7 x i32], [7 x i32]* %l_5810, i32 0, i64 6
  %1985 = load i32, i32* %1984, align 4, !tbaa !1
  %1986 = icmp slt i32 %1983, %1985
  %1987 = zext i1 %1986 to i32
  %1988 = sext i32 %1987 to i64
  %1989 = icmp ne i64 %1988, -8494057525973852101
  %1990 = zext i1 %1989 to i32
  %1991 = load i32*, i32** @g_83, align 8, !tbaa !5
  store i32 %1990, i32* %1991, align 4, !tbaa !1
  %1992 = load i32*, i32** @g_3995, align 8, !tbaa !5
  store i32 %1990, i32* %1992, align 4, !tbaa !1
  %1993 = sext i32 %1990 to i64
  %1994 = load i64, i64* getelementptr inbounds ([10 x [5 x [5 x i64]]], [10 x [5 x [5 x i64]]]* @g_23, i32 0, i64 1, i64 0, i64 2), align 8, !tbaa !7
  %1995 = icmp ugt i64 %1993, %1994
  %1996 = zext i1 %1995 to i32
  %1997 = load i32, i32* %l_5818, align 4, !tbaa !1
  %1998 = icmp eq i32 %1996, %1997
  %1999 = zext i1 %1998 to i32
  %2000 = load i16****, i16***** @g_4023, align 8, !tbaa !5
  %2001 = load i16***, i16**** %2000, align 8, !tbaa !5
  %2002 = load i16**, i16*** %2001, align 8, !tbaa !5
  %2003 = load i16*, i16** %2002, align 8, !tbaa !5
  %2004 = load i16, i16* %2003, align 2, !tbaa !10
  %2005 = sext i16 %2004 to i32
  %2006 = or i32 %1999, %2005
  %2007 = icmp ne i32 %2006, 0
  br i1 %2007, label %2008, label %2098

; <label>:2008                                    ; preds = %1966
  %2009 = bitcast [8 x [6 x i64****]]* %l_5849 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %2009) #1
  %2010 = getelementptr inbounds [8 x [6 x i64****]], [8 x [6 x i64****]]* %l_5849, i64 0, i64 0
  %2011 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2010, i64 0, i64 0
  store i64**** null, i64***** %2011, !tbaa !5
  %2012 = getelementptr inbounds i64****, i64***** %2011, i64 1
  store i64**** null, i64***** %2012, !tbaa !5
  %2013 = getelementptr inbounds i64****, i64***** %2012, i64 1
  store i64**** %l_5525, i64***** %2013, !tbaa !5
  %2014 = getelementptr inbounds i64****, i64***** %2013, i64 1
  store i64**** @g_3134, i64***** %2014, !tbaa !5
  %2015 = getelementptr inbounds i64****, i64***** %2014, i64 1
  store i64**** @g_3134, i64***** %2015, !tbaa !5
  %2016 = getelementptr inbounds i64****, i64***** %2015, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 3, i64 2), i64***** %2016, !tbaa !5
  %2017 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2010, i64 1
  %2018 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2017, i64 0, i64 0
  store i64**** @g_3134, i64***** %2018, !tbaa !5
  %2019 = getelementptr inbounds i64****, i64***** %2018, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 7, i64 2), i64***** %2019, !tbaa !5
  %2020 = getelementptr inbounds i64****, i64***** %2019, i64 1
  store i64**** null, i64***** %2020, !tbaa !5
  %2021 = getelementptr inbounds i64****, i64***** %2020, i64 1
  store i64**** @g_3134, i64***** %2021, !tbaa !5
  %2022 = getelementptr inbounds i64****, i64***** %2021, i64 1
  store i64**** @g_3134, i64***** %2022, !tbaa !5
  %2023 = getelementptr inbounds i64****, i64***** %2022, i64 1
  store i64**** @g_3134, i64***** %2023, !tbaa !5
  %2024 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2017, i64 1
  %2025 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2024, i64 0, i64 0
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 2), i64***** %2025, !tbaa !5
  %2026 = getelementptr inbounds i64****, i64***** %2025, i64 1
  store i64**** @g_3134, i64***** %2026, !tbaa !5
  %2027 = getelementptr inbounds i64****, i64***** %2026, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 2), i64***** %2027, !tbaa !5
  %2028 = getelementptr inbounds i64****, i64***** %2027, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 4), i64***** %2028, !tbaa !5
  %2029 = getelementptr inbounds i64****, i64***** %2028, i64 1
  store i64**** %l_5525, i64***** %2029, !tbaa !5
  %2030 = getelementptr inbounds i64****, i64***** %2029, i64 1
  store i64**** @g_3134, i64***** %2030, !tbaa !5
  %2031 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2024, i64 1
  %2032 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2031, i64 0, i64 0
  store i64**** @g_3134, i64***** %2032, !tbaa !5
  %2033 = getelementptr inbounds i64****, i64***** %2032, i64 1
  store i64**** %l_5525, i64***** %2033, !tbaa !5
  %2034 = getelementptr inbounds i64****, i64***** %2033, i64 1
  store i64**** null, i64***** %2034, !tbaa !5
  %2035 = getelementptr inbounds i64****, i64***** %2034, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 2), i64***** %2035, !tbaa !5
  %2036 = getelementptr inbounds i64****, i64***** %2035, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 0, i64 5), i64***** %2036, !tbaa !5
  %2037 = getelementptr inbounds i64****, i64***** %2036, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 7, i64 2), i64***** %2037, !tbaa !5
  %2038 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2031, i64 1
  %2039 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2038, i64 0, i64 0
  store i64**** %l_5525, i64***** %2039, !tbaa !5
  %2040 = getelementptr inbounds i64****, i64***** %2039, i64 1
  store i64**** %l_5525, i64***** %2040, !tbaa !5
  %2041 = getelementptr inbounds i64****, i64***** %2040, i64 1
  store i64**** @g_3134, i64***** %2041, !tbaa !5
  %2042 = getelementptr inbounds i64****, i64***** %2041, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 2), i64***** %2042, !tbaa !5
  %2043 = getelementptr inbounds i64****, i64***** %2042, i64 1
  store i64**** %l_5525, i64***** %2043, !tbaa !5
  %2044 = getelementptr inbounds i64****, i64***** %2043, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 4), i64***** %2044, !tbaa !5
  %2045 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2038, i64 1
  %2046 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2045, i64 0, i64 0
  store i64**** @g_3134, i64***** %2046, !tbaa !5
  %2047 = getelementptr inbounds i64****, i64***** %2046, i64 1
  store i64**** null, i64***** %2047, !tbaa !5
  %2048 = getelementptr inbounds i64****, i64***** %2047, i64 1
  store i64**** @g_3134, i64***** %2048, !tbaa !5
  %2049 = getelementptr inbounds i64****, i64***** %2048, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 4), i64***** %2049, !tbaa !5
  %2050 = getelementptr inbounds i64****, i64***** %2049, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 4), i64***** %2050, !tbaa !5
  %2051 = getelementptr inbounds i64****, i64***** %2050, i64 1
  store i64**** @g_3134, i64***** %2051, !tbaa !5
  %2052 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2045, i64 1
  %2053 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2052, i64 0, i64 0
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 2), i64***** %2053, !tbaa !5
  %2054 = getelementptr inbounds i64****, i64***** %2053, i64 1
  store i64**** getelementptr inbounds ([8 x [8 x i64***]], [8 x [8 x i64***]]* @g_5527, i32 0, i64 2, i64 2), i64***** %2054, !tbaa !5
  %2055 = getelementptr inbounds i64****, i64***** %2054, i64 1
  store i64**** null, i64***** %2055, !tbaa !5
  %2056 = getelementptr inbounds i64****, i64***** %2055, i64 1
  store i64**** @g_3134, i64***** %2056, !tbaa !5
  %2057 = getelementptr inbounds i64****, i64***** %2056, i64 1
  store i64**** null, i64***** %2057, !tbaa !5
  %2058 = getelementptr inbounds i64****, i64***** %2057, i64 1
  store i64**** %l_5525, i64***** %2058, !tbaa !5
  %2059 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2052, i64 1
  %2060 = getelementptr inbounds [6 x i64****], [6 x i64****]* %2059, i64 0, i64 0
  store i64**** @g_3134, i64***** %2060, !tbaa !5
  %2061 = getelementptr inbounds i64****, i64***** %2060, i64 1
  store i64**** null, i64***** %2061, !tbaa !5
  %2062 = getelementptr inbounds i64****, i64***** %2061, i64 1
  store i64**** null, i64***** %2062, !tbaa !5
  %2063 = getelementptr inbounds i64****, i64***** %2062, i64 1
  store i64**** @g_3134, i64***** %2063, !tbaa !5
  %2064 = getelementptr inbounds i64****, i64***** %2063, i64 1
  store i64**** @g_3134, i64***** %2064, !tbaa !5
  %2065 = getelementptr inbounds i64****, i64***** %2064, i64 1
  store i64**** null, i64***** %2065, !tbaa !5
  %2066 = bitcast i32* %l_5852 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2066) #1
  store i32 -1725356726, i32* %l_5852, align 4, !tbaa !1
  %2067 = bitcast i32* %i48 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2067) #1
  %2068 = bitcast i32* %j49 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2068) #1
  %2069 = load i8****, i8***** @g_1774, align 8, !tbaa !5
  %2070 = load i8***, i8**** %2069, align 8, !tbaa !5
  %2071 = load i8****, i8***** @g_1774, align 8, !tbaa !5
  store i8*** %2070, i8**** %2071, align 8, !tbaa !5
  %2072 = load i32****, i32***** @g_4688, align 8, !tbaa !5
  %2073 = load i32***, i32**** %2072, align 8, !tbaa !5
  %2074 = load i32**, i32*** %2073, align 8, !tbaa !5
  %2075 = load i32*, i32** %2074, align 8, !tbaa !5
  %2076 = load i32, i32* %2075, align 4, !tbaa !1
  %2077 = load i32**, i32*** @g_284, align 8, !tbaa !5
  %2078 = load i32*, i32** %2077, align 8, !tbaa !5
  %2079 = load i32, i32* %2078, align 4, !tbaa !1
  %2080 = xor i32 %2079, %2076
  store i32 %2080, i32* %2078, align 4, !tbaa !1
  %2081 = load volatile i64****, i64***** @g_3133, align 8, !tbaa !5
  %2082 = load i64***, i64**** %2081, align 8, !tbaa !5
  store i64*** %2082, i64**** %l_5850, align 8, !tbaa !5
  %2083 = load i64***, i64**** %l_5851, align 8, !tbaa !5
  %2084 = icmp ne i64*** %2082, %2083
  %2085 = zext i1 %2084 to i32
  %2086 = load i32**, i32*** @g_1169, align 8, !tbaa !5
  %2087 = load i32*, i32** %2086, align 8, !tbaa !5
  store i32 %2085, i32* %2087, align 4, !tbaa !1
  %2088 = load i32, i32* %l_5852, align 4, !tbaa !1
  %2089 = icmp ne i32 %2085, %2088
  %2090 = zext i1 %2089 to i32
  %2091 = load i32*, i32** @g_3995, align 8, !tbaa !5
  %2092 = load i32, i32* %2091, align 4, !tbaa !1
  %2093 = or i32 %2092, %2090
  store i32 %2093, i32* %2091, align 4, !tbaa !1
  %2094 = bitcast i32* %j49 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2094) #1
  %2095 = bitcast i32* %i48 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2095) #1
  %2096 = bitcast i32* %l_5852 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2096) #1
  %2097 = bitcast [8 x [6 x i64****]]* %l_5849 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %2097) #1
  br label %2102

; <label>:2098                                    ; preds = %1966
  %2099 = load i32**, i32*** @g_1671, align 8, !tbaa !5
  %2100 = load volatile i32*, i32** %2099, align 8, !tbaa !5
  %2101 = load volatile i32, i32* %2100, align 4, !tbaa !1
  store i32 %2101, i32* %1
  store i32 1, i32* %2
  br label %2103

; <label>:2102                                    ; preds = %2008
  store i32 0, i32* %2
  br label %2103

; <label>:2103                                    ; preds = %2102, %2098, %1896
  %2104 = bitcast i32* %i47 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2104) #1
  %2105 = bitcast i32* %l_5848 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2105) #1
  %2106 = bitcast i32* %l_5818 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2106) #1
  %cleanup.dest.50 = load i32, i32* %2
  switch i32 %cleanup.dest.50, label %2310 [
    i32 0, label %2107
    i32 78, label %2108
  ]

; <label>:2107                                    ; preds = %2103
  br label %2108

; <label>:2108                                    ; preds = %2107, %2103
  %2109 = load i16, i16* @g_5172, align 2, !tbaa !10
  %2110 = sext i16 %2109 to i32
  %2111 = sub nsw i32 %2110, 1
  %2112 = trunc i32 %2111 to i16
  store i16 %2112, i16* @g_5172, align 2, !tbaa !10
  br label %1835

; <label>:2113                                    ; preds = %1835
  %2114 = load i16****, i16***** @g_4023, align 8, !tbaa !5
  %2115 = load i16***, i16**** %2114, align 8, !tbaa !5
  %2116 = load i16**, i16*** %2115, align 8, !tbaa !5
  %2117 = load i16*, i16** %2116, align 8, !tbaa !5
  %2118 = load i16, i16* %2117, align 2, !tbaa !10
  %2119 = sext i16 %2118 to i32
  %2120 = load i32, i32* %l_5678, align 4, !tbaa !1
  %2121 = sext i32 %2120 to i64
  %2122 = call i64 @safe_div_func_int64_t_s_s(i64 -2300387383462052800, i64 %2121)
  %2123 = load i32, i32* %l_5778, align 4, !tbaa !1
  %2124 = load i16, i16* @g_5865, align 2, !tbaa !10
  %2125 = add i16 %2124, -1
  store i16 %2125, i16* @g_5865, align 2, !tbaa !10
  %2126 = load i32, i32* %l_5806, align 4, !tbaa !1
  %2127 = trunc i32 %2126 to i8
  %2128 = call signext i8 @safe_lshift_func_int8_t_s_u(i8 signext %2127, i32 7)
  %2129 = sext i8 %2128 to i16
  %2130 = call signext i16 @safe_lshift_func_int16_t_s_s(i16 signext %2129, i32 9)
  %2131 = sext i16 %2130 to i32
  %2132 = icmp ne i64**** %l_5525, %l_5850
  %2133 = zext i1 %2132 to i32
  %2134 = icmp ne i32 %2131, %2133
  %2135 = zext i1 %2134 to i32
  %2136 = trunc i32 %2135 to i8
  %2137 = call signext i8 @safe_rshift_func_int8_t_s_s(i8 signext %2136, i32 0)
  %2138 = load i8, i8* %l_5688, align 1, !tbaa !9
  %2139 = call zeroext i8 @safe_sub_func_uint8_t_u_u(i8 zeroext %2137, i8 zeroext %2138)
  %2140 = zext i8 %2139 to i32
  %2141 = icmp ne i32 %2140, 0
  br i1 %2141, label %2159, label %2142

; <label>:2142                                    ; preds = %2113
  %2143 = load i64, i64* %l_5841, align 8, !tbaa !7
  %2144 = and i64 1, %2143
  %2145 = load i8, i8* %l_5688, align 1, !tbaa !9
  %2146 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext 1, i8 signext %2145)
  %2147 = sext i8 %2146 to i32
  store i32 %2147, i32* %l_5694, align 4, !tbaa !1
  %2148 = trunc i32 %2147 to i8
  %2149 = load i8*, i8** @g_1544, align 8, !tbaa !5
  store i8 %2148, i8* %2149, align 1, !tbaa !9
  %2150 = load volatile i8***, i8**** @g_2345, align 8, !tbaa !5
  %2151 = load i8**, i8*** %2150, align 8, !tbaa !5
  %2152 = load i8*, i8** %2151, align 8, !tbaa !5
  %2153 = load i8, i8* %2152, align 1, !tbaa !9
  %2154 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %2148, i8 signext %2153)
  %2155 = call zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %2154, i32 3)
  %2156 = zext i8 %2155 to i32
  %2157 = call i32 @safe_unary_minus_func_int32_t_s(i32 %2156)
  %2158 = icmp ne i32 %2157, 0
  br label %2159

; <label>:2159                                    ; preds = %2142, %2113
  %2160 = phi i1 [ true, %2113 ], [ %2158, %2142 ]
  %2161 = zext i1 %2160 to i32
  %2162 = sext i32 %2161 to i64
  %2163 = icmp sge i64 %2162, 6056
  %2164 = zext i1 %2163 to i32
  %2165 = icmp ne i32 %2123, %2164
  %2166 = zext i1 %2165 to i32
  %2167 = load i32, i32* %l_5691, align 4, !tbaa !1
  %2168 = trunc i32 %2167 to i8
  %2169 = load i8*, i8** @g_875, align 8, !tbaa !5
  %2170 = load i8, i8* %2169, align 1, !tbaa !9
  %2171 = zext i8 %2170 to i32
  %2172 = call zeroext i8 @safe_rshift_func_uint8_t_u_u(i8 zeroext %2168, i32 %2171)
  %2173 = zext i8 %2172 to i32
  store i32 %2173, i32* %l_5809, align 4, !tbaa !1
  %2174 = trunc i32 %2173 to i16
  %2175 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %2174, i32 13)
  %2176 = zext i16 %2175 to i64
  %2177 = icmp sge i64 %2122, %2176
  %2178 = zext i1 %2177 to i32
  %2179 = load i32*, i32** @g_3995, align 8, !tbaa !5
  %2180 = load i32, i32* %2179, align 4, !tbaa !1
  %2181 = or i32 %2180, %2178
  store i32 %2181, i32* %2179, align 4, !tbaa !1
  %2182 = load i32**, i32*** @g_284, align 8, !tbaa !5
  %2183 = load i32*, i32** %2182, align 8, !tbaa !5
  store i32 %2181, i32* %2183, align 4, !tbaa !1
  %2184 = sext i32 %2181 to i64
  %2185 = load i64, i64* %l_5884, align 8, !tbaa !7
  %2186 = icmp sgt i64 %2184, %2185
  %2187 = zext i1 %2186 to i32
  %2188 = xor i32 %2119, %2187
  %2189 = trunc i32 %2188 to i8
  %2190 = load i8**, i8*** @g_874, align 8, !tbaa !5
  %2191 = load i8*, i8** %2190, align 8, !tbaa !5
  %2192 = load i8, i8* %2191, align 1, !tbaa !9
  %2193 = zext i8 %2192 to i32
  %2194 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %2189, i32 %2193)
  %2195 = zext i8 %2194 to i32
  store i32 %2195, i32* %l_5806, align 4, !tbaa !1
  %2196 = call i32 @safe_mod_func_int32_t_s_s(i32 %2195, i32 1630598017)
  %2197 = getelementptr inbounds [7 x [5 x i32]], [7 x [5 x i32]]* %l_5699, i32 0, i64 0
  %2198 = getelementptr inbounds [5 x i32], [5 x i32]* %2197, i32 0, i64 3
  %2199 = load i32, i32* %2198, align 4, !tbaa !1
  %2200 = xor i32 %2196, %2199
  %2201 = icmp ne i32 %2200, 0
  br i1 %2201, label %2202, label %2209

; <label>:2202                                    ; preds = %2159
  %2203 = load volatile i8***, i8**** @g_2345, align 8, !tbaa !5
  %2204 = load i8**, i8*** %2203, align 8, !tbaa !5
  %2205 = load i8*, i8** %2204, align 8, !tbaa !5
  %2206 = load i8, i8* %2205, align 1, !tbaa !9
  %2207 = zext i8 %2206 to i32
  %2208 = icmp ne i32 %2207, 0
  br label %2209

; <label>:2209                                    ; preds = %2202, %2159
  %2210 = phi i1 [ false, %2159 ], [ %2208, %2202 ]
  %2211 = zext i1 %2210 to i32
  %2212 = getelementptr inbounds [7 x i32], [7 x i32]* %l_5810, i32 0, i64 6
  store i32 %2211, i32* %2212, align 4, !tbaa !1
  %2213 = load i64*****, i64****** %l_5885, align 8, !tbaa !5
  %2214 = icmp eq i64***** %2213, null
  %2215 = zext i1 %2214 to i32
  %2216 = load i32, i32* %l_5808, align 4, !tbaa !1
  %2217 = and i32 %2216, %2215
  store i32 %2217, i32* %l_5808, align 4, !tbaa !1
  %2218 = load i32, i32* %l_5678, align 4, !tbaa !1
  %2219 = xor i32 %2218, %2217
  store i32 %2219, i32* %l_5678, align 4, !tbaa !1
  %2220 = icmp ne i32 %2219, 0
  br i1 %2220, label %2221, label %2277

; <label>:2221                                    ; preds = %2209
  %2222 = load i64**, i64*** @g_4437, align 8, !tbaa !5
  %2223 = load i64*, i64** %2222, align 8, !tbaa !5
  %2224 = load i64, i64* %2223, align 8, !tbaa !7
  %2225 = load i32, i32* %l_5806, align 4, !tbaa !1
  %2226 = sext i32 %2225 to i64
  %2227 = call i64 @safe_div_func_uint64_t_u_u(i64 %2224, i64 %2226)
  %2228 = trunc i64 %2227 to i8
  %2229 = load i8*, i8** @g_2634, align 8, !tbaa !5
  store i8 %2228, i8* %2229, align 1, !tbaa !9
  %2230 = sext i8 %2228 to i32
  %2231 = icmp ne i32 %2230, 0
  br i1 %2231, label %2232, label %2250

; <label>:2232                                    ; preds = %2221
  %2233 = load i8, i8* %l_5895, align 1, !tbaa !9
  %2234 = sext i8 %2233 to i32
  %2235 = icmp ne i32 %2234, 0
  br i1 %2235, label %2243, label %2236

; <label>:2236                                    ; preds = %2232
  %2237 = load i32, i32* %l_5695, align 4, !tbaa !1
  %2238 = trunc i32 %2237 to i16
  %2239 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %2238, i32 4)
  %2240 = zext i16 %2239 to i32
  %2241 = call i32 @safe_unary_minus_func_uint32_t_u(i32 %2240)
  %2242 = icmp ne i32 %2241, 0
  br label %2243

; <label>:2243                                    ; preds = %2236, %2232
  %2244 = phi i1 [ true, %2232 ], [ %2242, %2236 ]
  %2245 = zext i1 %2244 to i32
  %2246 = load i32, i32* %l_5694, align 4, !tbaa !1
  %2247 = and i32 %2245, %2246
  %2248 = icmp ne i32 %2247, 0
  %2249 = xor i1 %2248, true
  br label %2250

; <label>:2250                                    ; preds = %2243, %2221
  %2251 = phi i1 [ false, %2221 ], [ %2249, %2243 ]
  %2252 = zext i1 %2251 to i32
  %2253 = getelementptr inbounds [7 x [5 x i32]], [7 x [5 x i32]]* %l_5721, i32 0, i64 0
  %2254 = getelementptr inbounds [5 x i32], [5 x i32]* %2253, i32 0, i64 0
  %2255 = load i32, i32* %2254, align 4, !tbaa !1
  %2256 = xor i32 %2252, %2255
  %2257 = trunc i32 %2256 to i8
  %2258 = load i32*, i32** %l_61, align 8, !tbaa !5
  %2259 = load i32, i32* %2258, align 4, !tbaa !1
  %2260 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext %2257, i32 %2259)
  %2261 = sext i8 %2260 to i32
  %2262 = icmp ne i32 %2261, 0
  br i1 %2262, label %2263, label %2264

; <label>:2263                                    ; preds = %2250
  br label %2264

; <label>:2264                                    ; preds = %2263, %2250
  %2265 = phi i1 [ false, %2250 ], [ true, %2263 ]
  %2266 = zext i1 %2265 to i32
  %2267 = sext i32 %2266 to i64
  %2268 = icmp sle i64 -1, %2267
  %2269 = zext i1 %2268 to i32
  %2270 = sext i32 %2269 to i64
  %2271 = icmp ule i64 7, %2270
  br i1 %2271, label %2272, label %2277

; <label>:2272                                    ; preds = %2264
  %2273 = load volatile i32***, i32**** @g_1670, align 8, !tbaa !5
  %2274 = load i32**, i32*** %2273, align 8, !tbaa !5
  %2275 = load volatile i32*, i32** %2274, align 8, !tbaa !5
  %2276 = load volatile i32, i32* %2275, align 4, !tbaa !1
  store i32 %2276, i32* %1
  store i32 1, i32* %2
  br label %2310

; <label>:2277                                    ; preds = %2264, %2209
  store i64 0, i64* @g_3237, align 8, !tbaa !7
  br label %2278

; <label>:2278                                    ; preds = %2305, %2277
  %2279 = load i64, i64* @g_3237, align 8, !tbaa !7
  %2280 = icmp eq i64 %2279, -18
  br i1 %2280, label %2281, label %2308

; <label>:2281                                    ; preds = %2278
  %2282 = bitcast i64* %l_5901 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2282) #1
  store i64 1, i64* %l_5901, align 8, !tbaa !7
  store i32 1, i32* %l_5679, align 4, !tbaa !1
  br label %2283

; <label>:2283                                    ; preds = %2289, %2281
  %2284 = load i32, i32* %l_5679, align 4, !tbaa !1
  %2285 = icmp sge i32 %2284, 0
  br i1 %2285, label %2286, label %2292

; <label>:2286                                    ; preds = %2283
  %2287 = load i64, i64* %l_5901, align 8, !tbaa !7
  %2288 = trunc i64 %2287 to i32
  store i32 %2288, i32* %1
  store i32 1, i32* %2
  br label %2302
                                                  ; No predecessors!
  %2290 = load i32, i32* %l_5679, align 4, !tbaa !1
  %2291 = sub nsw i32 %2290, 1
  store i32 %2291, i32* %l_5679, align 4, !tbaa !1
  br label %2283

; <label>:2292                                    ; preds = %2283
  %2293 = load volatile i32*, i32** @g_557, align 8, !tbaa !5
  %2294 = load i32, i32* %2293, align 4, !tbaa !1
  %2295 = load i32**, i32*** @g_284, align 8, !tbaa !5
  %2296 = load i32*, i32** %2295, align 8, !tbaa !5
  %2297 = load i32, i32* %2296, align 4, !tbaa !1
  %2298 = xor i32 %2297, %2294
  store i32 %2298, i32* %2296, align 4, !tbaa !1
  %2299 = load i32*, i32** @g_3995, align 8, !tbaa !5
  %2300 = load i32, i32* %2299, align 4, !tbaa !1
  %2301 = or i32 %2300, %2298
  store i32 %2301, i32* %2299, align 4, !tbaa !1
  store i32 0, i32* %2
  br label %2302

; <label>:2302                                    ; preds = %2292, %2286
  %2303 = bitcast i64* %l_5901 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2303) #1
  %cleanup.dest.51 = load i32, i32* %2
  switch i32 %cleanup.dest.51, label %2310 [
    i32 0, label %2304
  ]

; <label>:2304                                    ; preds = %2302
  br label %2305

; <label>:2305                                    ; preds = %2304
  %2306 = load i64, i64* @g_3237, align 8, !tbaa !7
  %2307 = call i64 @safe_sub_func_int64_t_s_s(i64 %2306, i64 3)
  store i64 %2307, i64* @g_3237, align 8, !tbaa !7
  br label %2278

; <label>:2308                                    ; preds = %2278
  br label %2309

; <label>:2309                                    ; preds = %2308
  store i32 0, i32* %2
  br label %2310

; <label>:2310                                    ; preds = %2309, %2302, %2272, %2103
  %2311 = bitcast i32* %i46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2311) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5895) #1
  %2312 = bitcast i64****** %l_5885 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2312) #1
  %2313 = bitcast i64***** %l_5886 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2313) #1
  %2314 = bitcast i64* %l_5884 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2314) #1
  %2315 = bitcast [3 x i16*]* %l_5863 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %2315) #1
  %2316 = bitcast i64**** %l_5851 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2316) #1
  %2317 = bitcast [7 x i32]* %l_5810 to i8*
  call void @llvm.lifetime.end(i64 28, i8* %2317) #1
  %2318 = bitcast i32* %l_5809 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2318) #1
  %2319 = bitcast i32* %l_5808 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2319) #1
  %2320 = bitcast i32* %l_5807 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2320) #1
  %2321 = bitcast i32* %l_5806 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2321) #1
  %2322 = bitcast i32* %l_5805 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2322) #1
  %2323 = bitcast i32* %l_5804 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2323) #1
  %2324 = bitcast i16* %l_5803 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2324) #1
  %cleanup.dest.52 = load i32, i32* %2
  switch i32 %cleanup.dest.52, label %2327 [
    i32 0, label %2325
  ]

; <label>:2325                                    ; preds = %2310
  br label %2326

; <label>:2326                                    ; preds = %2325, %1787
  store i32 0, i32* %2
  br label %2327

; <label>:2327                                    ; preds = %2326, %2310
  %2328 = bitcast i32* %j25 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2328) #1
  %2329 = bitcast i32* %i24 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2329) #1
  %2330 = bitcast i64**** %l_5850 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2330) #1
  %2331 = bitcast i64* %l_5841 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2331) #1
  %2332 = bitcast i64***** %l_5802 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2332) #1
  %2333 = bitcast i32* %l_5778 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2333) #1
  %2334 = bitcast i16* %l_5774 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2334) #1
  %2335 = bitcast [7 x [5 x i32]]* %l_5721 to i8*
  call void @llvm.lifetime.end(i64 140, i8* %2335) #1
  %2336 = bitcast i8** %l_5718 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2336) #1
  %2337 = bitcast [7 x [5 x i32]]* %l_5699 to i8*
  call void @llvm.lifetime.end(i64 140, i8* %2337) #1
  %2338 = bitcast i32* %l_5698 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2338) #1
  %2339 = bitcast i32* %l_5697 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2339) #1
  %2340 = bitcast i32* %l_5696 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2340) #1
  %2341 = bitcast i32* %l_5695 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2341) #1
  %2342 = bitcast i32* %l_5694 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2342) #1
  %2343 = bitcast i32* %l_5691 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2343) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5688) #1
  %2344 = bitcast i32* %l_5679 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2344) #1
  %2345 = bitcast i32* %l_5678 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2345) #1
  %2346 = bitcast [1 x [9 x i16*]]* %l_5677 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2346) #1
  %2347 = bitcast i32* %l_5676 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2347) #1
  %2348 = bitcast [9 x i32*]* %l_5673 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %2348) #1
  %2349 = bitcast i16* %l_5670 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2349) #1
  %cleanup.dest.53 = load i32, i32* %2
  switch i32 %cleanup.dest.53, label %2411 [
    i32 0, label %2350
  ]

; <label>:2350                                    ; preds = %2327
  br label %2351

; <label>:2351                                    ; preds = %2350, %1085
  %2352 = load volatile i8***, i8**** @g_2345, align 8, !tbaa !5
  %2353 = load i8**, i8*** %2352, align 8, !tbaa !5
  %2354 = load i8*, i8** %2353, align 8, !tbaa !5
  %2355 = load i8, i8* %2354, align 1, !tbaa !9
  %2356 = zext i8 %2355 to i32
  %2357 = load i8*, i8** %l_5904, align 8, !tbaa !5
  %2358 = load i8, i8* %2357, align 1, !tbaa !9
  %2359 = zext i8 %2358 to i32
  %2360 = xor i32 %2359, %2356
  %2361 = trunc i32 %2360 to i8
  store i8 %2361, i8* %2357, align 1, !tbaa !9
  %2362 = zext i8 %2361 to i32
  %2363 = load i8**, i8*** @g_874, align 8, !tbaa !5
  %2364 = load i8*, i8** %2363, align 8, !tbaa !5
  %2365 = load i8, i8* %2364, align 1, !tbaa !9
  %2366 = zext i8 %2365 to i64
  %2367 = icmp ugt i64 %2366, 1
  %2368 = zext i1 %2367 to i32
  %2369 = icmp slt i32 %2362, %2368
  %2370 = zext i1 %2369 to i32
  %2371 = load i64, i64* %l_5907, align 8, !tbaa !7
  %2372 = load i16*, i16** @g_745, align 8, !tbaa !5
  %2373 = load i16, i16* %2372, align 2, !tbaa !10
  %2374 = load i16, i16* %l_5908, align 2, !tbaa !10
  %2375 = sext i16 %2374 to i64
  %2376 = call i64 @safe_add_func_int64_t_s_s(i64 %2371, i64 %2375)
  %2377 = load i8*, i8** @g_2634, align 8, !tbaa !5
  %2378 = load i8, i8* %2377, align 1, !tbaa !9
  %2379 = sext i8 %2378 to i64
  %2380 = icmp sge i64 %2376, %2379
  %2381 = zext i1 %2380 to i32
  %2382 = icmp slt i32 %2370, %2381
  %2383 = zext i1 %2382 to i32
  %2384 = sext i32 %2383 to i64
  %2385 = load i8*****, i8****** %l_5911, align 8, !tbaa !5
  %2386 = load i16, i16* @g_746, align 2, !tbaa !10
  %2387 = sext i16 %2386 to i64
  %2388 = icmp eq i64 %2387, -5
  %2389 = zext i1 %2388 to i32
  %2390 = icmp eq i8***** %2385, getelementptr inbounds ([8 x i8****], [8 x i8****]* @g_5436, i32 0, i64 5)
  %2391 = zext i1 %2390 to i32
  %2392 = load i32*, i32** %l_61, align 8, !tbaa !5
  %2393 = load i32, i32* %2392, align 4, !tbaa !1
  %2394 = icmp sge i32 %2391, %2393
  %2395 = zext i1 %2394 to i32
  %2396 = sext i32 %2395 to i64
  %2397 = load i64*, i64** @g_181, align 8, !tbaa !5
  %2398 = load i64, i64* %2397, align 8, !tbaa !7
  %2399 = call i64 @safe_mod_func_int64_t_s_s(i64 %2396, i64 %2398)
  %2400 = and i64 %2399, 4294967295
  %2401 = icmp uge i64 %2384, %2400
  %2402 = zext i1 %2401 to i32
  %2403 = trunc i32 %2402 to i16
  %2404 = call zeroext i16 @safe_div_func_uint16_t_u_u(i16 zeroext %2403, i16 zeroext -5)
  %2405 = zext i16 %2404 to i32
  %2406 = load i32*, i32** @g_83, align 8, !tbaa !5
  %2407 = load i32, i32* %2406, align 4, !tbaa !1
  %2408 = xor i32 %2407, %2405
  store i32 %2408, i32* %2406, align 4, !tbaa !1
  %2409 = load i32*, i32** %l_61, align 8, !tbaa !5
  %2410 = load i32, i32* %2409, align 4, !tbaa !1
  store i32 %2410, i32* %1
  store i32 1, i32* %2
  br label %2411

; <label>:2411                                    ; preds = %2351, %2327, %1076, %324
  %2412 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2412) #1
  %2413 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2413) #1
  %2414 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2414) #1
  %2415 = bitcast i8****** %l_5911 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2415) #1
  %2416 = bitcast i16* %l_5908 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2416) #1
  %2417 = bitcast i64* %l_5907 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2417) #1
  %2418 = bitcast i8** %l_5904 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2418) #1
  %2419 = bitcast i16* %l_5864 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2419) #1
  %2420 = bitcast i32* %l_5811 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2420) #1
  %2421 = bitcast i16* %l_5769 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2421) #1
  %2422 = bitcast i32* %l_5765 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2422) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_5671) #1
  %2423 = bitcast [8 x i8]* %l_5658 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2423) #1
  %2424 = bitcast [9 x [4 x i32*****]]* %l_5632 to i8*
  call void @llvm.lifetime.end(i64 288, i8* %2424) #1
  %2425 = bitcast i32***** %l_5633 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2425) #1
  %2426 = bitcast i32**** %l_5634 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2426) #1
  %2427 = bitcast i32* %l_5629 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2427) #1
  %2428 = bitcast i32* %l_5596 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2428) #1
  %2429 = bitcast [5 x [3 x [6 x i8*****]]]* %l_5581 to i8*
  call void @llvm.lifetime.end(i64 720, i8* %2429) #1
  %2430 = bitcast i32* %l_5569 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2430) #1
  %2431 = bitcast i64**** %l_5525 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2431) #1
  %2432 = bitcast [2 x i32***]* %l_5521 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %2432) #1
  %2433 = bitcast [5 x i64***]* %l_5510 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %2433) #1
  %2434 = bitcast i32*** %l_5509 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2434) #1
  %2435 = bitcast i64* %l_5504 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2435) #1
  %2436 = bitcast i64* %l_5468 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2436) #1
  %2437 = bitcast i64* %l_5460 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2437) #1
  %2438 = bitcast i32* %l_5443 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2438) #1
  %2439 = bitcast i8***** %l_5409 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2439) #1
  %2440 = bitcast i8**** %l_5410 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2440) #1
  %2441 = bitcast i32* %l_5389 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2441) #1
  %2442 = bitcast i32* %l_5388 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2442) #1
  %2443 = bitcast i32* %l_5386 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2443) #1
  %2444 = bitcast i32** %l_2869 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2444) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_2867) #1
  %2445 = bitcast i32** %l_61 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2445) #1
  %2446 = bitcast i16* %l_41 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %2446) #1
  %2447 = load i32, i32* %1
  ret i32 %2447

; <label>:2448                                    ; preds = %1780, %1633, %1523
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

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
define internal i32 @safe_unary_minus_func_uint32_t_u(i32 %ui) #0 {
  %1 = alloca i32, align 4
  store i32 %ui, i32* %1, align 4, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !1
  %3 = sub i32 0, %2
  ret i32 %3
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
define internal i32* @func_62(i32* %p_63, i16 zeroext %p_64, i32 %p_65, i16 signext %p_66) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %l_385 = alloca i64, align 8
  %l_432 = alloca i64**, align 8
  %l_474 = alloca i32**, align 8
  %l_494 = alloca i32, align 4
  %l_495 = alloca i32, align 4
  %l_496 = alloca i32, align 4
  %l_498 = alloca i32, align 4
  %l_500 = alloca [7 x [1 x [7 x i32]]], align 16
  %l_594 = alloca i32, align 4
  %l_633 = alloca i32, align 4
  %l_635 = alloca i64, align 8
  %l_648 = alloca [3 x [4 x [10 x i32]]], align 16
  %l_689 = alloca i32*****, align 8
  %l_709 = alloca i32*, align 8
  %l_708 = alloca i32**, align 8
  %l_725 = alloca i32****, align 8
  %l_727 = alloca i32***, align 8
  %l_726 = alloca i32****, align 8
  %l_731 = alloca i32****, align 8
  %l_732 = alloca i16*, align 8
  %l_733 = alloca [8 x [6 x i16*]], align 16
  %l_747 = alloca i32*, align 8
  %l_748 = alloca i8*, align 8
  %l_749 = alloca i16*, align 8
  %l_750 = alloca [5 x i16], align 2
  %l_768 = alloca [3 x [3 x i64*]], align 16
  %l_774 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_378 = alloca i16, align 2
  %l_392 = alloca i64*, align 8
  %l_394 = alloca i16*, align 8
  %l_395 = alloca i8*, align 8
  %l_396 = alloca i8*, align 8
  %l_419 = alloca i32*, align 8
  %l_418 = alloca [4 x [8 x [3 x i32**]]], align 16
  %l_417 = alloca i32***, align 8
  %l_423 = alloca i32, align 4
  %l_433 = alloca i32, align 4
  %l_435 = alloca i64, align 8
  %l_457 = alloca [8 x [9 x i16**]], align 16
  %l_514 = alloca i32, align 4
  %l_515 = alloca i32, align 4
  %l_517 = alloca i32, align 4
  %l_518 = alloca i32, align 4
  %l_519 = alloca [9 x i32], align 16
  %l_521 = alloca i8, align 1
  %l_612 = alloca i32, align 4
  %l_641 = alloca i64, align 8
  %l_694 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %l_757 = alloca i8, align 1
  %l_758 = alloca i32*, align 8
  %l_766 = alloca i64*, align 8
  %l_765 = alloca i64**, align 8
  %l_767 = alloca i64*, align 8
  %l_771 = alloca i32, align 4
  %l_772 = alloca [2 x [10 x [6 x i32]]], align 16
  %l_773 = alloca i32*, align 8
  %i4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %k6 = alloca i32, align 4
  %6 = alloca i32
  store i32* %p_63, i32** %2, align 8, !tbaa !5
  store i16 %p_64, i16* %3, align 2, !tbaa !10
  store i32 %p_65, i32* %4, align 4, !tbaa !1
  store i16 %p_66, i16* %5, align 2, !tbaa !10
  %7 = bitcast i64* %l_385 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i64 -6060266138609186154, i64* %l_385, align 8, !tbaa !7
  %8 = bitcast i64*** %l_432 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i64** getelementptr inbounds ([7 x [8 x i64*]], [7 x [8 x i64*]]* @g_403, i32 0, i64 5, i64 7), i64*** %l_432, align 8, !tbaa !5
  %9 = bitcast i32*** %l_474 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i32** @g_83, i32*** %l_474, align 8, !tbaa !5
  %10 = bitcast i32* %l_494 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 -10, i32* %l_494, align 4, !tbaa !1
  %11 = bitcast i32* %l_495 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 7, i32* %l_495, align 4, !tbaa !1
  %12 = bitcast i32* %l_496 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 -10, i32* %l_496, align 4, !tbaa !1
  %13 = bitcast i32* %l_498 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 44334027, i32* %l_498, align 4, !tbaa !1
  %14 = bitcast [7 x [1 x [7 x i32]]]* %l_500 to i8*
  call void @llvm.lifetime.start(i64 196, i8* %14) #1
  %15 = bitcast [7 x [1 x [7 x i32]]]* %l_500 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast ([7 x [1 x [7 x i32]]]* @func_62.l_500 to i8*), i64 196, i32 16, i1 false)
  %16 = bitcast i32* %l_594 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %l_594, align 4, !tbaa !1
  %17 = bitcast i32* %l_633 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %l_633, align 4, !tbaa !1
  %18 = bitcast i64* %l_635 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i64 -2321322656723220076, i64* %l_635, align 8, !tbaa !7
  %19 = bitcast [3 x [4 x [10 x i32]]]* %l_648 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %19) #1
  %20 = bitcast [3 x [4 x [10 x i32]]]* %l_648 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* bitcast ([3 x [4 x [10 x i32]]]* @func_62.l_648 to i8*), i64 480, i32 16, i1 false)
  %21 = bitcast i32****** %l_689 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  store i32***** null, i32****** %l_689, align 8, !tbaa !5
  %22 = bitcast i32** %l_709 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = getelementptr inbounds [3 x [4 x [10 x i32]]], [3 x [4 x [10 x i32]]]* %l_648, i32 0, i64 2
  %24 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* %23, i32 0, i64 1
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i32 0, i64 1
  store i32* %25, i32** %l_709, align 8, !tbaa !5
  %26 = bitcast i32*** %l_708 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i32** %l_709, i32*** %l_708, align 8, !tbaa !5
  %27 = bitcast i32***** %l_725 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  store i32**** @g_722, i32***** %l_725, align 8, !tbaa !5
  %28 = bitcast i32**** %l_727 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i32*** null, i32**** %l_727, align 8, !tbaa !5
  %29 = bitcast i32***** %l_726 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i32**** %l_727, i32***** %l_726, align 8, !tbaa !5
  %30 = bitcast i32***** %l_731 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  store i32**** @g_728, i32***** %l_731, align 8, !tbaa !5
  %31 = bitcast i16** %l_732 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  store i16* @g_17, i16** %l_732, align 8, !tbaa !5
  %32 = bitcast [8 x [6 x i16*]]* %l_733 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %32) #1
  %33 = bitcast [8 x [6 x i16*]]* %l_733 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* bitcast ([8 x [6 x i16*]]* @func_62.l_733 to i8*), i64 384, i32 16, i1 false)
  %34 = bitcast i32** %l_747 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = getelementptr inbounds [3 x [4 x [10 x i32]]], [3 x [4 x [10 x i32]]]* %l_648, i32 0, i64 1
  %36 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* %35, i32 0, i64 1
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %36, i32 0, i64 0
  store i32* %37, i32** %l_747, align 8, !tbaa !5
  %38 = bitcast i8** %l_748 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  store i8* getelementptr inbounds ([6 x [10 x i8]], [6 x [10 x i8]]* @g_331, i32 0, i64 0, i64 5), i8** %l_748, align 8, !tbaa !5
  %39 = bitcast i16** %l_749 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  store i16* null, i16** %l_749, align 8, !tbaa !5
  %40 = bitcast [5 x i16]* %l_750 to i8*
  call void @llvm.lifetime.start(i64 10, i8* %40) #1
  %41 = bitcast [5 x i16]* %l_750 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* bitcast ([5 x i16]* @func_62.l_750 to i8*), i64 10, i32 2, i1 false)
  %42 = bitcast [3 x [3 x i64*]]* %l_768 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %42) #1
  %43 = bitcast [3 x [3 x i64*]]* %l_768 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([3 x [3 x i64*]]* @func_62.l_768 to i8*), i64 72, i32 16, i1 false)
  %44 = bitcast i32** %l_774 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i32* null, i32** %l_774, align 8, !tbaa !5
  %45 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 5, i32* @g_375, align 4, !tbaa !1
  br label %48

; <label>:48                                      ; preds = %236, %0
  %49 = load i32, i32* @g_375, align 4, !tbaa !1
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %239

; <label>:51                                      ; preds = %48
  %52 = bitcast i16* %l_378 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %52) #1
  store i16 -5972, i16* %l_378, align 2, !tbaa !10
  %53 = bitcast i64** %l_392 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  store i64* getelementptr inbounds ([10 x [5 x [5 x i64]]], [10 x [5 x [5 x i64]]]* @g_23, i32 0, i64 4, i64 1, i64 4), i64** %l_392, align 8, !tbaa !5
  %54 = bitcast i16** %l_394 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i16* @g_17, i16** %l_394, align 8, !tbaa !5
  %55 = bitcast i8** %l_395 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  store i8* null, i8** %l_395, align 8, !tbaa !5
  %56 = bitcast i8** %l_396 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  store i8* @g_96, i8** %l_396, align 8, !tbaa !5
  %57 = bitcast i32** %l_419 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  store i32* @g_375, i32** %l_419, align 8, !tbaa !5
  %58 = bitcast [4 x [8 x [3 x i32**]]]* %l_418 to i8*
  call void @llvm.lifetime.start(i64 768, i8* %58) #1
  %59 = getelementptr inbounds [4 x [8 x [3 x i32**]]], [4 x [8 x [3 x i32**]]]* %l_418, i64 0, i64 0
  %60 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %59, i64 0, i64 0
  %61 = getelementptr inbounds [3 x i32**], [3 x i32**]* %60, i64 0, i64 0
  store i32** null, i32*** %61, !tbaa !5
  %62 = getelementptr inbounds i32**, i32*** %61, i64 1
  store i32** %l_419, i32*** %62, !tbaa !5
  %63 = getelementptr inbounds i32**, i32*** %62, i64 1
  store i32** null, i32*** %63, !tbaa !5
  %64 = getelementptr inbounds [3 x i32**], [3 x i32**]* %60, i64 1
  %65 = bitcast [3 x i32**]* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 24, i32 8, i1 false)
  %66 = getelementptr inbounds [3 x i32**], [3 x i32**]* %64, i64 0, i64 0
  %67 = getelementptr inbounds i32**, i32*** %66, i64 1
  %68 = getelementptr inbounds i32**, i32*** %67, i64 1
  %69 = getelementptr inbounds [3 x i32**], [3 x i32**]* %64, i64 1
  %70 = getelementptr inbounds [3 x i32**], [3 x i32**]* %69, i64 0, i64 0
  store i32** %l_419, i32*** %70, !tbaa !5
  %71 = getelementptr inbounds i32**, i32*** %70, i64 1
  store i32** %l_419, i32*** %71, !tbaa !5
  %72 = getelementptr inbounds i32**, i32*** %71, i64 1
  store i32** %l_419, i32*** %72, !tbaa !5
  %73 = getelementptr inbounds [3 x i32**], [3 x i32**]* %69, i64 1
  %74 = getelementptr inbounds [3 x i32**], [3 x i32**]* %73, i64 0, i64 0
  store i32** %l_419, i32*** %74, !tbaa !5
  %75 = getelementptr inbounds i32**, i32*** %74, i64 1
  store i32** %l_419, i32*** %75, !tbaa !5
  %76 = getelementptr inbounds i32**, i32*** %75, i64 1
  store i32** %l_419, i32*** %76, !tbaa !5
  %77 = getelementptr inbounds [3 x i32**], [3 x i32**]* %73, i64 1
  %78 = getelementptr inbounds [3 x i32**], [3 x i32**]* %77, i64 0, i64 0
  store i32** %l_419, i32*** %78, !tbaa !5
  %79 = getelementptr inbounds i32**, i32*** %78, i64 1
  store i32** null, i32*** %79, !tbaa !5
  %80 = getelementptr inbounds i32**, i32*** %79, i64 1
  store i32** %l_419, i32*** %80, !tbaa !5
  %81 = getelementptr inbounds [3 x i32**], [3 x i32**]* %77, i64 1
  %82 = getelementptr inbounds [3 x i32**], [3 x i32**]* %81, i64 0, i64 0
  store i32** %l_419, i32*** %82, !tbaa !5
  %83 = getelementptr inbounds i32**, i32*** %82, i64 1
  store i32** %l_419, i32*** %83, !tbaa !5
  %84 = getelementptr inbounds i32**, i32*** %83, i64 1
  store i32** null, i32*** %84, !tbaa !5
  %85 = getelementptr inbounds [3 x i32**], [3 x i32**]* %81, i64 1
  %86 = getelementptr inbounds [3 x i32**], [3 x i32**]* %85, i64 0, i64 0
  store i32** %l_419, i32*** %86, !tbaa !5
  %87 = getelementptr inbounds i32**, i32*** %86, i64 1
  store i32** %l_419, i32*** %87, !tbaa !5
  %88 = getelementptr inbounds i32**, i32*** %87, i64 1
  store i32** %l_419, i32*** %88, !tbaa !5
  %89 = getelementptr inbounds [3 x i32**], [3 x i32**]* %85, i64 1
  %90 = getelementptr inbounds [3 x i32**], [3 x i32**]* %89, i64 0, i64 0
  store i32** null, i32*** %90, !tbaa !5
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  store i32** %l_419, i32*** %91, !tbaa !5
  %92 = getelementptr inbounds i32**, i32*** %91, i64 1
  store i32** null, i32*** %92, !tbaa !5
  %93 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %59, i64 1
  %94 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %93, i64 0, i64 0
  %95 = getelementptr inbounds [3 x i32**], [3 x i32**]* %94, i64 0, i64 0
  store i32** %l_419, i32*** %95, !tbaa !5
  %96 = getelementptr inbounds i32**, i32*** %95, i64 1
  store i32** null, i32*** %96, !tbaa !5
  %97 = getelementptr inbounds i32**, i32*** %96, i64 1
  store i32** %l_419, i32*** %97, !tbaa !5
  %98 = getelementptr inbounds [3 x i32**], [3 x i32**]* %94, i64 1
  %99 = getelementptr inbounds [3 x i32**], [3 x i32**]* %98, i64 0, i64 0
  store i32** null, i32*** %99, !tbaa !5
  %100 = getelementptr inbounds i32**, i32*** %99, i64 1
  store i32** null, i32*** %100, !tbaa !5
  %101 = getelementptr inbounds i32**, i32*** %100, i64 1
  store i32** %l_419, i32*** %101, !tbaa !5
  %102 = getelementptr inbounds [3 x i32**], [3 x i32**]* %98, i64 1
  %103 = getelementptr inbounds [3 x i32**], [3 x i32**]* %102, i64 0, i64 0
  store i32** null, i32*** %103, !tbaa !5
  %104 = getelementptr inbounds i32**, i32*** %103, i64 1
  store i32** %l_419, i32*** %104, !tbaa !5
  %105 = getelementptr inbounds i32**, i32*** %104, i64 1
  store i32** %l_419, i32*** %105, !tbaa !5
  %106 = getelementptr inbounds [3 x i32**], [3 x i32**]* %102, i64 1
  %107 = getelementptr inbounds [3 x i32**], [3 x i32**]* %106, i64 0, i64 0
  store i32** %l_419, i32*** %107, !tbaa !5
  %108 = getelementptr inbounds i32**, i32*** %107, i64 1
  store i32** %l_419, i32*** %108, !tbaa !5
  %109 = getelementptr inbounds i32**, i32*** %108, i64 1
  store i32** null, i32*** %109, !tbaa !5
  %110 = getelementptr inbounds [3 x i32**], [3 x i32**]* %106, i64 1
  %111 = getelementptr inbounds [3 x i32**], [3 x i32**]* %110, i64 0, i64 0
  store i32** %l_419, i32*** %111, !tbaa !5
  %112 = getelementptr inbounds i32**, i32*** %111, i64 1
  store i32** %l_419, i32*** %112, !tbaa !5
  %113 = getelementptr inbounds i32**, i32*** %112, i64 1
  store i32** null, i32*** %113, !tbaa !5
  %114 = getelementptr inbounds [3 x i32**], [3 x i32**]* %110, i64 1
  %115 = getelementptr inbounds [3 x i32**], [3 x i32**]* %114, i64 0, i64 0
  store i32** null, i32*** %115, !tbaa !5
  %116 = getelementptr inbounds i32**, i32*** %115, i64 1
  store i32** null, i32*** %116, !tbaa !5
  %117 = getelementptr inbounds i32**, i32*** %116, i64 1
  store i32** %l_419, i32*** %117, !tbaa !5
  %118 = getelementptr inbounds [3 x i32**], [3 x i32**]* %114, i64 1
  %119 = getelementptr inbounds [3 x i32**], [3 x i32**]* %118, i64 0, i64 0
  store i32** null, i32*** %119, !tbaa !5
  %120 = getelementptr inbounds i32**, i32*** %119, i64 1
  store i32** %l_419, i32*** %120, !tbaa !5
  %121 = getelementptr inbounds i32**, i32*** %120, i64 1
  store i32** %l_419, i32*** %121, !tbaa !5
  %122 = getelementptr inbounds [3 x i32**], [3 x i32**]* %118, i64 1
  %123 = getelementptr inbounds [3 x i32**], [3 x i32**]* %122, i64 0, i64 0
  store i32** %l_419, i32*** %123, !tbaa !5
  %124 = getelementptr inbounds i32**, i32*** %123, i64 1
  store i32** null, i32*** %124, !tbaa !5
  %125 = getelementptr inbounds i32**, i32*** %124, i64 1
  store i32** %l_419, i32*** %125, !tbaa !5
  %126 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %93, i64 1
  %127 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %126, i64 0, i64 0
  %128 = getelementptr inbounds [3 x i32**], [3 x i32**]* %127, i64 0, i64 0
  store i32** %l_419, i32*** %128, !tbaa !5
  %129 = getelementptr inbounds i32**, i32*** %128, i64 1
  store i32** %l_419, i32*** %129, !tbaa !5
  %130 = getelementptr inbounds i32**, i32*** %129, i64 1
  store i32** null, i32*** %130, !tbaa !5
  %131 = getelementptr inbounds [3 x i32**], [3 x i32**]* %127, i64 1
  %132 = getelementptr inbounds [3 x i32**], [3 x i32**]* %131, i64 0, i64 0
  store i32** null, i32*** %132, !tbaa !5
  %133 = getelementptr inbounds i32**, i32*** %132, i64 1
  store i32** %l_419, i32*** %133, !tbaa !5
  %134 = getelementptr inbounds i32**, i32*** %133, i64 1
  store i32** %l_419, i32*** %134, !tbaa !5
  %135 = getelementptr inbounds [3 x i32**], [3 x i32**]* %131, i64 1
  %136 = getelementptr inbounds [3 x i32**], [3 x i32**]* %135, i64 0, i64 0
  store i32** %l_419, i32*** %136, !tbaa !5
  %137 = getelementptr inbounds i32**, i32*** %136, i64 1
  store i32** %l_419, i32*** %137, !tbaa !5
  %138 = getelementptr inbounds i32**, i32*** %137, i64 1
  store i32** %l_419, i32*** %138, !tbaa !5
  %139 = getelementptr inbounds [3 x i32**], [3 x i32**]* %135, i64 1
  %140 = getelementptr inbounds [3 x i32**], [3 x i32**]* %139, i64 0, i64 0
  store i32** %l_419, i32*** %140, !tbaa !5
  %141 = getelementptr inbounds i32**, i32*** %140, i64 1
  store i32** null, i32*** %141, !tbaa !5
  %142 = getelementptr inbounds i32**, i32*** %141, i64 1
  store i32** null, i32*** %142, !tbaa !5
  %143 = getelementptr inbounds [3 x i32**], [3 x i32**]* %139, i64 1
  %144 = getelementptr inbounds [3 x i32**], [3 x i32**]* %143, i64 0, i64 0
  store i32** %l_419, i32*** %144, !tbaa !5
  %145 = getelementptr inbounds i32**, i32*** %144, i64 1
  store i32** null, i32*** %145, !tbaa !5
  %146 = getelementptr inbounds i32**, i32*** %145, i64 1
  store i32** %l_419, i32*** %146, !tbaa !5
  %147 = getelementptr inbounds [3 x i32**], [3 x i32**]* %143, i64 1
  %148 = getelementptr inbounds [3 x i32**], [3 x i32**]* %147, i64 0, i64 0
  store i32** %l_419, i32*** %148, !tbaa !5
  %149 = getelementptr inbounds i32**, i32*** %148, i64 1
  store i32** %l_419, i32*** %149, !tbaa !5
  %150 = getelementptr inbounds i32**, i32*** %149, i64 1
  store i32** null, i32*** %150, !tbaa !5
  %151 = getelementptr inbounds [3 x i32**], [3 x i32**]* %147, i64 1
  %152 = getelementptr inbounds [3 x i32**], [3 x i32**]* %151, i64 0, i64 0
  store i32** null, i32*** %152, !tbaa !5
  %153 = getelementptr inbounds i32**, i32*** %152, i64 1
  store i32** %l_419, i32*** %153, !tbaa !5
  %154 = getelementptr inbounds i32**, i32*** %153, i64 1
  store i32** %l_419, i32*** %154, !tbaa !5
  %155 = getelementptr inbounds [3 x i32**], [3 x i32**]* %151, i64 1
  %156 = getelementptr inbounds [3 x i32**], [3 x i32**]* %155, i64 0, i64 0
  store i32** %l_419, i32*** %156, !tbaa !5
  %157 = getelementptr inbounds i32**, i32*** %156, i64 1
  store i32** %l_419, i32*** %157, !tbaa !5
  %158 = getelementptr inbounds i32**, i32*** %157, i64 1
  store i32** %l_419, i32*** %158, !tbaa !5
  %159 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %126, i64 1
  %160 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %159, i64 0, i64 0
  %161 = getelementptr inbounds [3 x i32**], [3 x i32**]* %160, i64 0, i64 0
  store i32** %l_419, i32*** %161, !tbaa !5
  %162 = getelementptr inbounds i32**, i32*** %161, i64 1
  store i32** null, i32*** %162, !tbaa !5
  %163 = getelementptr inbounds i32**, i32*** %162, i64 1
  store i32** %l_419, i32*** %163, !tbaa !5
  %164 = getelementptr inbounds [3 x i32**], [3 x i32**]* %160, i64 1
  %165 = getelementptr inbounds [3 x i32**], [3 x i32**]* %164, i64 0, i64 0
  store i32** %l_419, i32*** %165, !tbaa !5
  %166 = getelementptr inbounds i32**, i32*** %165, i64 1
  store i32** %l_419, i32*** %166, !tbaa !5
  %167 = getelementptr inbounds i32**, i32*** %166, i64 1
  store i32** %l_419, i32*** %167, !tbaa !5
  %168 = getelementptr inbounds [3 x i32**], [3 x i32**]* %164, i64 1
  %169 = getelementptr inbounds [3 x i32**], [3 x i32**]* %168, i64 0, i64 0
  store i32** %l_419, i32*** %169, !tbaa !5
  %170 = getelementptr inbounds i32**, i32*** %169, i64 1
  store i32** %l_419, i32*** %170, !tbaa !5
  %171 = getelementptr inbounds i32**, i32*** %170, i64 1
  store i32** %l_419, i32*** %171, !tbaa !5
  %172 = getelementptr inbounds [3 x i32**], [3 x i32**]* %168, i64 1
  %173 = getelementptr inbounds [3 x i32**], [3 x i32**]* %172, i64 0, i64 0
  store i32** null, i32*** %173, !tbaa !5
  %174 = getelementptr inbounds i32**, i32*** %173, i64 1
  store i32** null, i32*** %174, !tbaa !5
  %175 = getelementptr inbounds i32**, i32*** %174, i64 1
  store i32** %l_419, i32*** %175, !tbaa !5
  %176 = getelementptr inbounds [3 x i32**], [3 x i32**]* %172, i64 1
  %177 = getelementptr inbounds [3 x i32**], [3 x i32**]* %176, i64 0, i64 0
  store i32** %l_419, i32*** %177, !tbaa !5
  %178 = getelementptr inbounds i32**, i32*** %177, i64 1
  store i32** %l_419, i32*** %178, !tbaa !5
  %179 = getelementptr inbounds i32**, i32*** %178, i64 1
  store i32** %l_419, i32*** %179, !tbaa !5
  %180 = getelementptr inbounds [3 x i32**], [3 x i32**]* %176, i64 1
  %181 = getelementptr inbounds [3 x i32**], [3 x i32**]* %180, i64 0, i64 0
  store i32** %l_419, i32*** %181, !tbaa !5
  %182 = getelementptr inbounds i32**, i32*** %181, i64 1
  store i32** null, i32*** %182, !tbaa !5
  %183 = getelementptr inbounds i32**, i32*** %182, i64 1
  store i32** %l_419, i32*** %183, !tbaa !5
  %184 = getelementptr inbounds [3 x i32**], [3 x i32**]* %180, i64 1
  %185 = getelementptr inbounds [3 x i32**], [3 x i32**]* %184, i64 0, i64 0
  store i32** null, i32*** %185, !tbaa !5
  %186 = getelementptr inbounds i32**, i32*** %185, i64 1
  store i32** %l_419, i32*** %186, !tbaa !5
  %187 = getelementptr inbounds i32**, i32*** %186, i64 1
  store i32** %l_419, i32*** %187, !tbaa !5
  %188 = getelementptr inbounds [3 x i32**], [3 x i32**]* %184, i64 1
  %189 = getelementptr inbounds [3 x i32**], [3 x i32**]* %188, i64 0, i64 0
  store i32** null, i32*** %189, !tbaa !5
  %190 = getelementptr inbounds i32**, i32*** %189, i64 1
  store i32** %l_419, i32*** %190, !tbaa !5
  %191 = getelementptr inbounds i32**, i32*** %190, i64 1
  store i32** %l_419, i32*** %191, !tbaa !5
  %192 = bitcast i32**** %l_417 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %192) #1
  %193 = getelementptr inbounds [4 x [8 x [3 x i32**]]], [4 x [8 x [3 x i32**]]]* %l_418, i32 0, i64 1
  %194 = getelementptr inbounds [8 x [3 x i32**]], [8 x [3 x i32**]]* %193, i32 0, i64 5
  %195 = getelementptr inbounds [3 x i32**], [3 x i32**]* %194, i32 0, i64 1
  store i32*** %195, i32**** %l_417, align 8, !tbaa !5
  %196 = bitcast i32* %l_423 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #1
  store i32 -1, i32* %l_423, align 4, !tbaa !1
  %197 = bitcast i32* %l_433 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #1
  store i32 200088088, i32* %l_433, align 4, !tbaa !1
  %198 = bitcast i64* %l_435 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %198) #1
  store i64 -5505868689306275758, i64* %l_435, align 8, !tbaa !7
  %199 = bitcast [8 x [9 x i16**]]* %l_457 to i8*
  call void @llvm.lifetime.start(i64 576, i8* %199) #1
  %200 = bitcast [8 x [9 x i16**]]* %l_457 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %200, i8* bitcast ([8 x [9 x i16**]]* @func_62.l_457 to i8*), i64 576, i32 16, i1 false)
  %201 = bitcast i32* %l_514 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #1
  store i32 5, i32* %l_514, align 4, !tbaa !1
  %202 = bitcast i32* %l_515 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %202) #1
  store i32 -6, i32* %l_515, align 4, !tbaa !1
  %203 = bitcast i32* %l_517 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %203) #1
  store i32 -784552904, i32* %l_517, align 4, !tbaa !1
  %204 = bitcast i32* %l_518 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  store i32 -1241693656, i32* %l_518, align 4, !tbaa !1
  %205 = bitcast [9 x i32]* %l_519 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %205) #1
  %206 = bitcast [9 x i32]* %l_519 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %206, i8* bitcast ([9 x i32]* @func_62.l_519 to i8*), i64 36, i32 16, i1 false)
  call void @llvm.lifetime.start(i64 1, i8* %l_521) #1
  store i8 88, i8* %l_521, align 1, !tbaa !9
  %207 = bitcast i32* %l_612 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207) #1
  store i32 -1421323612, i32* %l_612, align 4, !tbaa !1
  %208 = bitcast i64* %l_641 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %208) #1
  store i64 6172270997907632695, i64* %l_641, align 8, !tbaa !7
  %209 = bitcast i32* %l_694 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  store i32 -662460459, i32* %l_694, align 4, !tbaa !1
  %210 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  %211 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %j2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %l_694 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i64* %l_641 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i32* %l_612 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_521) #1
  %219 = bitcast [9 x i32]* %l_519 to i8*
  call void @llvm.lifetime.end(i64 36, i8* %219) #1
  %220 = bitcast i32* %l_518 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %l_517 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %l_515 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %l_514 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast [8 x [9 x i16**]]* %l_457 to i8*
  call void @llvm.lifetime.end(i64 576, i8* %224) #1
  %225 = bitcast i64* %l_435 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i32* %l_433 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %l_423 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32**** %l_417 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = bitcast [4 x [8 x [3 x i32**]]]* %l_418 to i8*
  call void @llvm.lifetime.end(i64 768, i8* %229) #1
  %230 = bitcast i32** %l_419 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i8** %l_396 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast i8** %l_395 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #1
  %233 = bitcast i16** %l_394 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #1
  %234 = bitcast i64** %l_392 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i16* %l_378 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %235) #1
  br label %236

; <label>:236                                     ; preds = %51
  %237 = load i32, i32* @g_375, align 4, !tbaa !1
  %238 = sub nsw i32 %237, 1
  store i32 %238, i32* @g_375, align 4, !tbaa !1
  br label %48

; <label>:239                                     ; preds = %48
  %240 = load i32, i32* @g_84, align 4, !tbaa !1
  %241 = load i32**, i32*** %l_708, align 8, !tbaa !5
  store i32* null, i32** %241, align 8, !tbaa !5
  %242 = load volatile i32, i32* @g_362, align 4, !tbaa !1
  %243 = load i32, i32* @g_375, align 4, !tbaa !1
  %244 = load i16, i16* %5, align 2, !tbaa !10
  %245 = sext i16 %244 to i32
  %246 = load i32***, i32**** @g_722, align 8, !tbaa !5
  %247 = load i32****, i32***** %l_725, align 8, !tbaa !5
  store i32*** %246, i32**** %247, align 8, !tbaa !5
  %248 = load i32****, i32***** %l_726, align 8, !tbaa !5
  store i32*** %246, i32**** %248, align 8, !tbaa !5
  %249 = load i32***, i32**** @g_728, align 8, !tbaa !5
  %250 = load i32****, i32***** %l_731, align 8, !tbaa !5
  store i32*** %249, i32**** %250, align 8, !tbaa !5
  %251 = icmp ne i32*** %246, %249
  %252 = zext i1 %251 to i32
  %253 = sext i32 %252 to i64
  %254 = icmp slt i64 %253, 388
  %255 = zext i1 %254 to i32
  %256 = trunc i32 %255 to i16
  %257 = call zeroext i16 @safe_lshift_func_uint16_t_u_u(i16 zeroext %256, i32 13)
  %258 = zext i16 %257 to i32
  %259 = icmp ne i32 %245, %258
  %260 = zext i1 %259 to i32
  %261 = trunc i32 %260 to i16
  %262 = load i16*, i16** %l_732, align 8, !tbaa !5
  store i16 %261, i16* %262, align 2, !tbaa !10
  store i16 %261, i16* @g_289, align 2, !tbaa !10
  %263 = sext i16 %261 to i32
  %264 = icmp slt i32 %243, %263
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = load volatile i16**, i16*** getelementptr inbounds ([5 x i16**], [5 x i16**]* @g_744, i32 0, i64 3), align 8, !tbaa !5
  %268 = icmp ne i16** null, %267
  %269 = zext i1 %268 to i32
  %270 = trunc i32 %269 to i16
  %271 = call signext i16 @safe_rshift_func_int16_t_s_u(i16 signext %270, i32 1)
  %272 = sext i16 %271 to i64
  %273 = icmp ne i64 %272, 39465
  %274 = zext i1 %273 to i32
  %275 = xor i32 %274, -1
  %276 = icmp ne i32 %275, 0
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  %279 = sext i32 %278 to i64
  %280 = icmp uge i64 %279, -8652002603687572065
  %281 = zext i1 %280 to i32
  %282 = trunc i32 %281 to i16
  %283 = call signext i16 @safe_add_func_int16_t_s_s(i16 signext %282, i16 signext 27456)
  %284 = sext i16 %283 to i32
  %285 = load i32*, i32** %l_747, align 8, !tbaa !5
  store i32 %284, i32* %285, align 4, !tbaa !1
  %286 = load i8*, i8** %l_748, align 8, !tbaa !5
  store i8 -7, i8* %286, align 1, !tbaa !9
  %287 = call signext i8 @safe_lshift_func_int8_t_s_s(i8 signext -7, i32 1)
  %288 = sext i8 %287 to i32
  %289 = load i16, i16* @g_317, align 2, !tbaa !10
  %290 = zext i16 %289 to i32
  %291 = icmp ne i32 %288, %290
  %292 = zext i1 %291 to i32
  %293 = trunc i32 %292 to i8
  %294 = load i16, i16* %5, align 2, !tbaa !10
  %295 = trunc i16 %294 to i8
  %296 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %293, i8 zeroext %295)
  %297 = zext i8 %296 to i64
  %298 = call i64 @safe_mod_func_uint64_t_u_u(i64 %266, i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %305, label %300

; <label>:300                                     ; preds = %239
  %301 = load i16*, i16** @g_745, align 8, !tbaa !5
  %302 = load i16, i16* %301, align 2, !tbaa !10
  %303 = sext i16 %302 to i32
  %304 = icmp ne i32 %303, 0
  br label %305

; <label>:305                                     ; preds = %300, %239
  %306 = phi i1 [ true, %239 ], [ %304, %300 ]
  %307 = zext i1 %306 to i32
  %308 = trunc i32 %307 to i8
  %309 = load i32, i32* %4, align 4, !tbaa !1
  %310 = trunc i32 %309 to i8
  %311 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %308, i8 signext %310)
  %312 = sext i8 %311 to i64
  %313 = icmp sle i64 %312, 94
  %314 = zext i1 %313 to i32
  %315 = getelementptr inbounds [5 x i16], [5 x i16]* %l_750, i32 0, i64 3
  %316 = load i16, i16* %315, align 2, !tbaa !10
  %317 = zext i16 %316 to i32
  %318 = or i32 %317, %314
  %319 = trunc i32 %318 to i16
  store i16 %319, i16* %315, align 2, !tbaa !10
  %320 = call zeroext i16 @safe_rshift_func_uint16_t_u_u(i16 zeroext %319, i32 2)
  %321 = trunc i16 %320 to i8
  %322 = load i16, i16* %3, align 2, !tbaa !10
  %323 = trunc i16 %322 to i8
  %324 = call signext i8 @safe_div_func_int8_t_s_s(i8 signext %321, i8 signext %323)
  %325 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %324, i32 0)
  %326 = load i16, i16* %3, align 2, !tbaa !10
  %327 = zext i16 %326 to i32
  %328 = xor i32 1, %327
  %329 = load i32, i32* %4, align 4, !tbaa !1
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %399

; <label>:331                                     ; preds = %305
  call void @llvm.lifetime.start(i64 1, i8* %l_757) #1
  store i8 -1, i8* %l_757, align 1, !tbaa !9
  %332 = bitcast i32** %l_758 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %332) #1
  store i32* @g_291, i32** %l_758, align 8, !tbaa !5
  %333 = bitcast i64** %l_766 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %333) #1
  store i64* @g_104, i64** %l_766, align 8, !tbaa !5
  %334 = bitcast i64*** %l_765 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %334) #1
  store i64** %l_766, i64*** %l_765, align 8, !tbaa !5
  %335 = bitcast i64** %l_767 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %335) #1
  store i64* @g_104, i64** %l_767, align 8, !tbaa !5
  %336 = bitcast i32* %l_771 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %336) #1
  store i32 1479880599, i32* %l_771, align 4, !tbaa !1
  %337 = bitcast [2 x [10 x [6 x i32]]]* %l_772 to i8*
  call void @llvm.lifetime.start(i64 480, i8* %337) #1
  %338 = bitcast [2 x [10 x [6 x i32]]]* %l_772 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %338, i8* bitcast ([2 x [10 x [6 x i32]]]* @func_62.l_772 to i8*), i64 480, i32 16, i1 false)
  %339 = bitcast i32** %l_773 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %339) #1
  store i32* null, i32** %l_773, align 8, !tbaa !5
  %340 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %340) #1
  %341 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %341) #1
  %342 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %342) #1
  %343 = load i8, i8* %l_757, align 1, !tbaa !9
  %344 = zext i8 %343 to i16
  %345 = call zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext 14968, i16 zeroext %344)
  %346 = trunc i16 %345 to i8
  %347 = load i32, i32* @g_147, align 4, !tbaa !1
  %348 = load i32*, i32** %l_758, align 8, !tbaa !5
  store i32 %347, i32* %348, align 4, !tbaa !1
  %349 = load volatile i64****, i64***** @g_400, align 8, !tbaa !5
  %350 = load i64***, i64**** %349, align 8, !tbaa !5
  %351 = load i64**, i64*** %350, align 8, !tbaa !5
  %352 = load i64*, i64** %351, align 8, !tbaa !5
  %353 = icmp ne i64* %352, null
  %354 = zext i1 %353 to i32
  %355 = trunc i32 %354 to i8
  %356 = call signext i8 @safe_mul_func_int8_t_s_s(i8 signext %346, i8 signext %355)
  %357 = load i64**, i64*** %l_432, align 8, !tbaa !5
  %358 = load i64*, i64** %357, align 8, !tbaa !5
  %359 = load i64**, i64*** %l_765, align 8, !tbaa !5
  store i64* %358, i64** %359, align 8, !tbaa !5
  %360 = load i64*, i64** %l_767, align 8, !tbaa !5
  %361 = getelementptr inbounds [3 x [3 x i64*]], [3 x [3 x i64*]]* %l_768, i32 0, i64 2
  %362 = getelementptr inbounds [3 x i64*], [3 x i64*]* %361, i32 0, i64 1
  store i64* %360, i64** %362, align 8, !tbaa !5
  %363 = icmp ne i64* %358, %360
  %364 = zext i1 %363 to i32
  %365 = load i32, i32* %4, align 4, !tbaa !1
  %366 = load i32, i32* %l_771, align 4, !tbaa !1
  %367 = icmp eq i32 %365, %366
  %368 = zext i1 %367 to i32
  %369 = trunc i32 %368 to i16
  %370 = call zeroext i16 @safe_mul_func_uint16_t_u_u(i16 zeroext %369, i16 zeroext -29288)
  %371 = zext i16 %370 to i32
  %372 = call i32 @safe_div_func_uint32_t_u_u(i32 %364, i32 %371)
  %373 = zext i32 %372 to i64
  %374 = load i16, i16* %3, align 2, !tbaa !10
  %375 = zext i16 %374 to i64
  %376 = call i64 @safe_mod_func_uint64_t_u_u(i64 %373, i64 %375)
  %377 = trunc i64 %376 to i16
  %378 = call zeroext i16 @safe_rshift_func_uint16_t_u_s(i16 zeroext %377, i32 0)
  %379 = trunc i16 %378 to i8
  %380 = call zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %356, i8 zeroext %379)
  %381 = zext i8 %380 to i32
  %382 = getelementptr inbounds [2 x [10 x [6 x i32]]], [2 x [10 x [6 x i32]]]* %l_772, i32 0, i64 0
  %383 = getelementptr inbounds [10 x [6 x i32]], [10 x [6 x i32]]* %382, i32 0, i64 1
  %384 = getelementptr inbounds [6 x i32], [6 x i32]* %383, i32 0, i64 1
  %385 = load i32, i32* %384, align 4, !tbaa !1
  %386 = or i32 %385, %381
  store i32 %386, i32* %384, align 4, !tbaa !1
  %387 = load volatile i32**, i32*** @g_198, align 8, !tbaa !5
  %388 = load i32*, i32** %387, align 8, !tbaa !5
  store i32* %388, i32** %l_773, align 8, !tbaa !5
  %389 = bitcast i32* %k6 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %389) #1
  %390 = bitcast i32* %j5 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %390) #1
  %391 = bitcast i32* %i4 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #1
  %392 = bitcast i32** %l_773 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %392) #1
  %393 = bitcast [2 x [10 x [6 x i32]]]* %l_772 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %393) #1
  %394 = bitcast i32* %l_771 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i64** %l_767 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #1
  %396 = bitcast i64*** %l_765 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %396) #1
  %397 = bitcast i64** %l_766 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %397) #1
  %398 = bitcast i32** %l_758 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %398) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_757) #1
  br label %401

; <label>:399                                     ; preds = %305
  %400 = load i32*, i32** %l_774, align 8, !tbaa !5
  store i32* %400, i32** %1
  store i32 1, i32* %6
  br label %404

; <label>:401                                     ; preds = %331
  %402 = load i32**, i32*** %l_474, align 8, !tbaa !5
  %403 = load i32*, i32** %402, align 8, !tbaa !5
  store i32* %403, i32** %1
  store i32 1, i32* %6
  br label %404

; <label>:404                                     ; preds = %401, %399
  %405 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #1
  %406 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %408 = bitcast i32** %l_774 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #1
  %409 = bitcast [3 x [3 x i64*]]* %l_768 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %409) #1
  %410 = bitcast [5 x i16]* %l_750 to i8*
  call void @llvm.lifetime.end(i64 10, i8* %410) #1
  %411 = bitcast i16** %l_749 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast i8** %l_748 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %412) #1
  %413 = bitcast i32** %l_747 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %413) #1
  %414 = bitcast [8 x [6 x i16*]]* %l_733 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %414) #1
  %415 = bitcast i16** %l_732 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %415) #1
  %416 = bitcast i32***** %l_731 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %416) #1
  %417 = bitcast i32***** %l_726 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %417) #1
  %418 = bitcast i32**** %l_727 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %418) #1
  %419 = bitcast i32***** %l_725 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %419) #1
  %420 = bitcast i32*** %l_708 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %420) #1
  %421 = bitcast i32** %l_709 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %421) #1
  %422 = bitcast i32****** %l_689 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %422) #1
  %423 = bitcast [3 x [4 x [10 x i32]]]* %l_648 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %423) #1
  %424 = bitcast i64* %l_635 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %424) #1
  %425 = bitcast i32* %l_633 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %425) #1
  %426 = bitcast i32* %l_594 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #1
  %427 = bitcast [7 x [1 x [7 x i32]]]* %l_500 to i8*
  call void @llvm.lifetime.end(i64 196, i8* %427) #1
  %428 = bitcast i32* %l_498 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #1
  %429 = bitcast i32* %l_496 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %429) #1
  %430 = bitcast i32* %l_495 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast i32* %l_494 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #1
  %432 = bitcast i32*** %l_474 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %432) #1
  %433 = bitcast i64*** %l_432 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %433) #1
  %434 = bitcast i64* %l_385 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %434) #1
  %435 = load i32*, i32** %1
  ret i32* %435
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
