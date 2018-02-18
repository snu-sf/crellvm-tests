; ModuleID = '00535.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U0 = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_8 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_64 = internal global [3 x i32] [i32 683688136, i32 683688136, i32 683688136], align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"g_64[i]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_67 = internal global i32 385897859, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"g_67\00", align 1
@g_68 = internal global i32 -5, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"g_68\00", align 1
@g_71 = internal global i32 3, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"g_71\00", align 1
@g_76 = internal global i32 -1, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"g_76\00", align 1
@g_112 = internal global i8 -7, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"g_112\00", align 1
@g_124 = internal global i16 5, align 2
@.str.10 = private unnamed_addr constant [6 x i8] c"g_124\00", align 1
@g_142 = internal global i16 17434, align 2
@.str.11 = private unnamed_addr constant [6 x i8] c"g_142\00", align 1
@g_155 = internal global i32 -1377492755, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"g_155\00", align 1
@g_173 = internal global i16 -8, align 2
@.str.13 = private unnamed_addr constant [6 x i8] c"g_173\00", align 1
@g_205 = internal global %union.U0 { i64 1311559028261425602 }, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"g_205.f0\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"g_205.f1\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"g_205.f2\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"g_205.f3\00", align 1
@g_213 = internal global i32 -1075897080, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"g_213\00", align 1
@g_218 = internal global [8 x [1 x %union.U0]] [[1 x %union.U0] [%union.U0 { i64 -1 }], [1 x %union.U0] [%union.U0 { i64 9 }], [1 x %union.U0] [%union.U0 { i64 -1 }], [1 x %union.U0] [%union.U0 { i64 9 }], [1 x %union.U0] [%union.U0 { i64 -1 }], [1 x %union.U0] [%union.U0 { i64 9 }], [1 x %union.U0] [%union.U0 { i64 -1 }], [1 x %union.U0] [%union.U0 { i64 9 }]], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"g_218[i][j].f0\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"g_218[i][j].f1\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"g_218[i][j].f2\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"g_218[i][j].f3\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_219 = internal global %union.U0 { i64 -1 }, align 8
@.str.24 = private unnamed_addr constant [9 x i8] c"g_219.f0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"g_219.f1\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"g_219.f2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"g_219.f3\00", align 1
@g_221 = internal global i8 26, align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_221\00", align 1
@g_251 = internal global i32 -5, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"g_251\00", align 1
@g_269 = internal global %union.U0 { i64 -6 }, align 8
@.str.30 = private unnamed_addr constant [9 x i8] c"g_269.f0\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"g_269.f1\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"g_269.f2\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"g_269.f3\00", align 1
@g_331 = internal global %union.U0 { i64 5632639138763808485 }, align 8
@.str.34 = private unnamed_addr constant [9 x i8] c"g_331.f0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"g_331.f1\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"g_331.f2\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"g_331.f3\00", align 1
@g_387 = internal global %union.U0 { i64 -1445037725105854746 }, align 8
@.str.38 = private unnamed_addr constant [9 x i8] c"g_387.f0\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"g_387.f1\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"g_387.f2\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"g_387.f3\00", align 1
@g_395 = internal global [3 x %union.U0] zeroinitializer, align 16
@.str.42 = private unnamed_addr constant [12 x i8] c"g_395[i].f0\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"g_395[i].f1\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"g_395[i].f2\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"g_395[i].f3\00", align 1
@g_467 = internal global i64 -2586101466265713026, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"g_467\00", align 1
@g_495 = internal global i64 -1, align 8
@.str.47 = private unnamed_addr constant [6 x i8] c"g_495\00", align 1
@g_558 = internal global i64 1043789999889549493, align 8
@.str.48 = private unnamed_addr constant [6 x i8] c"g_558\00", align 1
@g_611 = internal global i16 -5635, align 2
@.str.49 = private unnamed_addr constant [6 x i8] c"g_611\00", align 1
@g_649 = internal global %union.U0 { i64 -1741010690188685493 }, align 8
@.str.50 = private unnamed_addr constant [9 x i8] c"g_649.f0\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"g_649.f1\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"g_649.f2\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"g_649.f3\00", align 1
@g_650 = internal global i8 -56, align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"g_650\00", align 1
@g_663 = internal global i64 5907506844355740056, align 8
@.str.55 = private unnamed_addr constant [6 x i8] c"g_663\00", align 1
@g_719 = internal global i32 2111738649, align 4
@.str.56 = private unnamed_addr constant [6 x i8] c"g_719\00", align 1
@g_866 = internal constant %union.U0 { i64 1 }, align 8
@.str.57 = private unnamed_addr constant [9 x i8] c"g_866.f0\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"g_866.f1\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"g_866.f2\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"g_866.f3\00", align 1
@g_914 = internal constant %union.U0 { i64 8696806190286518955 }, align 8
@.str.61 = private unnamed_addr constant [9 x i8] c"g_914.f0\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"g_914.f1\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"g_914.f2\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"g_914.f3\00", align 1
@g_966 = internal global %union.U0 { i64 -4269919679301102266 }, align 8
@.str.65 = private unnamed_addr constant [9 x i8] c"g_966.f0\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"g_966.f1\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"g_966.f2\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"g_966.f3\00", align 1
@g_1026 = internal global i8 -5, align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"g_1026\00", align 1
@g_1094 = internal global [2 x [4 x [6 x i32]]] [[4 x [6 x i32]] [[6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0]], [4 x [6 x i32]] [[6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0], [6 x i32] [i32 1, i32 1, i32 0, i32 1, i32 1, i32 0]]], align 16
@.str.70 = private unnamed_addr constant [16 x i8] c"g_1094[i][j][k]\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_1131 = internal global i32 -635078570, align 4
@.str.72 = private unnamed_addr constant [7 x i8] c"g_1131\00", align 1
@g_1186 = internal global i64 1, align 8
@.str.73 = private unnamed_addr constant [7 x i8] c"g_1186\00", align 1
@g_1238 = internal global i32 1382270960, align 4
@.str.74 = private unnamed_addr constant [7 x i8] c"g_1238\00", align 1
@g_1367 = internal constant %union.U0 { i64 -6893819869262268036 }, align 8
@.str.75 = private unnamed_addr constant [10 x i8] c"g_1367.f0\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"g_1367.f1\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"g_1367.f2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"g_1367.f3\00", align 1
@g_1442 = internal global %union.U0 { i64 -1 }, align 8
@.str.79 = private unnamed_addr constant [10 x i8] c"g_1442.f0\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"g_1442.f1\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"g_1442.f2\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"g_1442.f3\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"g_1461\00", align 1
@g_1470 = internal constant %union.U0 zeroinitializer, align 8
@.str.84 = private unnamed_addr constant [10 x i8] c"g_1470.f0\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"g_1470.f1\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"g_1470.f2\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"g_1470.f3\00", align 1
@g_1472 = internal global %union.U0 { i64 -9 }, align 8
@.str.88 = private unnamed_addr constant [10 x i8] c"g_1472.f0\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"g_1472.f1\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"g_1472.f2\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"g_1472.f3\00", align 1
@g_1539 = internal global [5 x [5 x i32]] [[5 x i32] [i32 1050409833, i32 -9, i32 -9, i32 1050409833, i32 -9], [5 x i32] [i32 1, i32 1, i32 -1, i32 1, i32 1], [5 x i32] [i32 -9, i32 1050409833, i32 -9, i32 -9, i32 1050409833], [5 x i32] [i32 1, i32 -1, i32 -1, i32 1, i32 -1], [5 x i32] [i32 1050409833, i32 1050409833, i32 0, i32 1050409833, i32 1050409833]], align 16
@.str.92 = private unnamed_addr constant [13 x i8] c"g_1539[i][j]\00", align 1
@g_1622 = internal global %union.U0 { i64 9 }, align 8
@.str.93 = private unnamed_addr constant [10 x i8] c"g_1622.f0\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"g_1622.f1\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"g_1622.f2\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"g_1622.f3\00", align 1
@g_1630 = internal global i32 -1, align 4
@.str.97 = private unnamed_addr constant [7 x i8] c"g_1630\00", align 1
@g_1640 = internal global %union.U0 { i64 -3 }, align 8
@.str.98 = private unnamed_addr constant [10 x i8] c"g_1640.f0\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"g_1640.f1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"g_1640.f2\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"g_1640.f3\00", align 1
@g_1696 = internal global %union.U0 { i64 1 }, align 8
@.str.102 = private unnamed_addr constant [10 x i8] c"g_1696.f0\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"g_1696.f1\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"g_1696.f2\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"g_1696.f3\00", align 1
@g_1744 = internal global i16 0, align 2
@.str.106 = private unnamed_addr constant [7 x i8] c"g_1744\00", align 1
@g_1840 = internal global i16 -3, align 2
@.str.107 = private unnamed_addr constant [7 x i8] c"g_1840\00", align 1
@g_1894 = internal global i8 0, align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"g_1894\00", align 1
@g_1965 = internal global i32 3, align 4
@.str.109 = private unnamed_addr constant [7 x i8] c"g_1965\00", align 1
@g_1971 = internal global i16 -3, align 2
@.str.110 = private unnamed_addr constant [7 x i8] c"g_1971\00", align 1
@g_2059 = internal global [10 x i32] [i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5], align 16
@.str.111 = private unnamed_addr constant [10 x i8] c"g_2059[i]\00", align 1
@g_2105 = internal global %union.U0 { i64 -10 }, align 8
@.str.112 = private unnamed_addr constant [10 x i8] c"g_2105.f0\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"g_2105.f1\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"g_2105.f2\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"g_2105.f3\00", align 1
@g_2118 = internal global i16 -8, align 2
@.str.116 = private unnamed_addr constant [7 x i8] c"g_2118\00", align 1
@g_2186 = internal global %union.U0 { i64 -1013923522185544147 }, align 8
@.str.117 = private unnamed_addr constant [10 x i8] c"g_2186.f0\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"g_2186.f1\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"g_2186.f2\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"g_2186.f3\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"g_2216\00", align 1
@g_2263 = internal constant %union.U0 { i64 -3048323211780210495 }, align 8
@.str.122 = private unnamed_addr constant [10 x i8] c"g_2263.f0\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"g_2263.f1\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"g_2263.f2\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"g_2263.f3\00", align 1
@g_2277 = internal global %union.U0 { i64 -6 }, align 8
@.str.126 = private unnamed_addr constant [10 x i8] c"g_2277.f0\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"g_2277.f1\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"g_2277.f2\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"g_2277.f3\00", align 1
@g_2294 = internal global [8 x %union.U0] [%union.U0 { i64 -395146021599248921 }, %union.U0 { i64 -395146021599248921 }, %union.U0 { i64 702367892735013620 }, %union.U0 { i64 -395146021599248921 }, %union.U0 { i64 -395146021599248921 }, %union.U0 { i64 702367892735013620 }, %union.U0 { i64 -395146021599248921 }, %union.U0 { i64 -395146021599248921 }], align 16
@.str.130 = private unnamed_addr constant [13 x i8] c"g_2294[i].f0\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"g_2294[i].f1\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"g_2294[i].f2\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"g_2294[i].f3\00", align 1
@g_2321 = internal global %union.U0 { i64 288210269325417797 }, align 8
@.str.134 = private unnamed_addr constant [10 x i8] c"g_2321.f0\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"g_2321.f1\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"g_2321.f2\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"g_2321.f3\00", align 1
@g_2444 = internal global [10 x i8] c"\01\00\01\00\01\00\01\00\01\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"g_2444[i]\00", align 1
@g_2494 = internal global %union.U0 { i64 -1 }, align 8
@.str.139 = private unnamed_addr constant [10 x i8] c"g_2494.f0\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"g_2494.f1\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"g_2494.f2\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"g_2494.f3\00", align 1
@g_2559 = internal global %union.U0 { i64 5573028156624804000 }, align 8
@.str.143 = private unnamed_addr constant [10 x i8] c"g_2559.f0\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"g_2559.f1\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"g_2559.f2\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"g_2559.f3\00", align 1
@g_2602 = internal global i64 -6, align 8
@.str.147 = private unnamed_addr constant [7 x i8] c"g_2602\00", align 1
@g_2700 = internal global i16 -23047, align 2
@.str.148 = private unnamed_addr constant [7 x i8] c"g_2700\00", align 1
@g_2822 = internal global %union.U0 { i64 -3604511921494575827 }, align 8
@.str.149 = private unnamed_addr constant [10 x i8] c"g_2822.f0\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"g_2822.f1\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"g_2822.f2\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"g_2822.f3\00", align 1
@g_2835 = internal global %union.U0 { i64 1 }, align 8
@.str.153 = private unnamed_addr constant [10 x i8] c"g_2835.f0\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"g_2835.f1\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"g_2835.f2\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"g_2835.f3\00", align 1
@g_3020 = internal global [5 x [7 x i8]] [[7 x i8] c"\01\A8\01\A8\01\A8\01", [7 x i8] c"11ll11l", [7 x i8] c"M\A8M\A8M\A8M", [7 x i8] c"1ll11ll", [7 x i8] c"\01\A8\01\A8\01\A8\01"], align 16
@.str.157 = private unnamed_addr constant [13 x i8] c"g_3020[i][j]\00", align 1
@g_3047 = internal global i64 6861858352218752507, align 8
@.str.158 = private unnamed_addr constant [7 x i8] c"g_3047\00", align 1
@g_3067 = internal global [10 x [10 x [1 x i32]]] [[10 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 1], [1 x i32] [i32 -1356655546], [1 x i32] [i32 1188124855], [1 x i32] [i32 -1772533439], [1 x i32] zeroinitializer, [1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1980431445], [1 x i32] [i32 -611816948]], [10 x [1 x i32]] [[1 x i32] [i32 -7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1356655546], [1 x i32] [i32 896911665], [1 x i32] [i32 -1356655546], [1 x i32] zeroinitializer, [1 x i32] [i32 -7], [1 x i32] [i32 -611816948], [1 x i32] [i32 -1980431445], [1 x i32] zeroinitializer], [10 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1772533439], [1 x i32] [i32 1188124855], [1 x i32] [i32 -1356655546], [1 x i32] [i32 1], [1 x i32] [i32 7], [1 x i32] [i32 -611816948], [1 x i32] [i32 -1811600235], [1 x i32] [i32 -611816948]], [10 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 1], [1 x i32] [i32 -1356655546], [1 x i32] [i32 1188124855], [1 x i32] [i32 -1772533439], [1 x i32] zeroinitializer, [1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1980431445], [1 x i32] [i32 -611816948]], [10 x [1 x i32]] [[1 x i32] [i32 -7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1356655546], [1 x i32] [i32 896911665], [1 x i32] [i32 -1356655546], [1 x i32] zeroinitializer, [1 x i32] [i32 -7], [1 x i32] [i32 -611816948], [1 x i32] [i32 -1980431445], [1 x i32] zeroinitializer], [10 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1772533439], [1 x i32] [i32 1188124855], [1 x i32] [i32 -1356655546], [1 x i32] [i32 1], [1 x i32] [i32 7], [1 x i32] [i32 -611816948], [1 x i32] [i32 -1811600235], [1 x i32] [i32 -611816948]], [10 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 1], [1 x i32] [i32 -1356655546], [1 x i32] [i32 1188124855], [1 x i32] [i32 -1772533439], [1 x i32] zeroinitializer, [1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1980431445], [1 x i32] [i32 -611816948]], [10 x [1 x i32]] [[1 x i32] [i32 -7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1356655546], [1 x i32] [i32 896911665], [1 x i32] [i32 -1356655546], [1 x i32] zeroinitializer, [1 x i32] [i32 -7], [1 x i32] [i32 -611816948], [1 x i32] [i32 -1980431445], [1 x i32] zeroinitializer], [10 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1772533439], [1 x i32] [i32 1188124855], [1 x i32] [i32 -1356655546], [1 x i32] [i32 1], [1 x i32] [i32 7], [1 x i32] [i32 -611816948], [1 x i32] [i32 -1811600235], [1 x i32] [i32 -611816948]], [10 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] [i32 1], [1 x i32] [i32 -1356655546], [1 x i32] [i32 1188124855], [1 x i32] [i32 -1772533439], [1 x i32] zeroinitializer, [1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] [i32 -1980431445], [1 x i32] [i32 -611816948]]], align 16
@.str.159 = private unnamed_addr constant [16 x i8] c"g_3067[i][j][k]\00", align 1
@g_3083 = internal global i16 21629, align 2
@.str.160 = private unnamed_addr constant [7 x i8] c"g_3083\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_2677 = internal global i8* getelementptr inbounds ([10 x i8], [10 x i8]* @g_2444, i32 0, i64 6), align 8
@func_1.l_3043 = private unnamed_addr constant [6 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 2
@g_380 = internal global [4 x [9 x [6 x i32**]]] [[9 x [6 x i32**]] [[6 x i32**] [i32** @g_381, i32** null, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** null, i32** null, i32** @g_381, i32** null, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** null, i32** @g_381], [6 x i32**] [i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381, i32** null]], [9 x [6 x i32**]] [[6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** null, i32** @g_381]], [9 x [6 x i32**]] [[6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** null, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381]], [9 x [6 x i32**]] [[6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** null, i32** @g_381, i32** null, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** @g_381, i32** @g_381, i32** @g_381], [6 x i32**] [i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** @g_381, i32** null], [6 x i32**] [i32** @g_381, i32** @g_381, i32** null, i32** null, i32** @g_381, i32** @g_381]]], align 16
@g_2672 = internal global i64** @g_2673, align 8
@g_381 = internal global i32* @g_8, align 8
@g_2673 = internal global i64* @g_467, align 8
@.str.161 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

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
  %94 = load i32, i32* @g_8, align 4, !tbaa !1
  %95 = zext i32 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:97                                      ; preds = %113, %89
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %116

; <label>:100                                     ; preds = %97
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* @g_64, i32 0, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !1
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 %106)
  %107 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

; <label>:109                                     ; preds = %100
  %110 = load i32, i32* %i, align 4, !tbaa !1
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %110)
  br label %112

; <label>:112                                     ; preds = %109, %100
  br label %113

; <label>:113                                     ; preds = %112
  %114 = load i32, i32* %i, align 4, !tbaa !1
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %i, align 4, !tbaa !1
  br label %97

; <label>:116                                     ; preds = %97
  %117 = load volatile i32, i32* @g_67, align 4, !tbaa !1
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %119)
  %120 = load i32, i32* @g_68, align 4, !tbaa !1
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 %122)
  %123 = load i32, i32* @g_71, align 4, !tbaa !1
  %124 = sext i32 %123 to i64
  %125 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %125)
  %126 = load i32, i32* @g_76, align 4, !tbaa !1
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 %128)
  %129 = load i8, i8* @g_112, align 1, !tbaa !9
  %130 = zext i8 %129 to i64
  %131 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %131)
  %132 = load i16, i16* @g_124, align 2, !tbaa !10
  %133 = zext i16 %132 to i64
  %134 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %134)
  %135 = load i16, i16* @g_142, align 2, !tbaa !10
  %136 = zext i16 %135 to i64
  %137 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %137)
  %138 = load i32, i32* @g_155, align 4, !tbaa !1
  %139 = zext i32 %138 to i64
  %140 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 %140)
  %141 = load i16, i16* @g_173, align 2, !tbaa !10
  %142 = sext i16 %141 to i64
  %143 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %143)
  %144 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_205, i32 0, i32 0), align 8, !tbaa !7
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %145)
  %146 = load volatile i16, i16* bitcast (%union.U0* @g_205 to i16*), align 2, !tbaa !10
  %147 = zext i16 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* bitcast (%union.U0* @g_205 to i32*), align 4, !tbaa !1
  %150 = zext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %151)
  %152 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_205, i32 0, i32 0), align 8, !tbaa !7
  %153 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %153)
  %154 = load i32, i32* @g_213, align 4, !tbaa !1
  %155 = zext i32 %154 to i64
  %156 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 %156)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %157

; <label>:157                                     ; preds = %214, %116
  %158 = load i32, i32* %i, align 4, !tbaa !1
  %159 = icmp slt i32 %158, 8
  br i1 %159, label %160, label %217

; <label>:160                                     ; preds = %157
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %161

; <label>:161                                     ; preds = %210, %160
  %162 = load i32, i32* %j, align 4, !tbaa !1
  %163 = icmp slt i32 %162, 1
  br i1 %163, label %164, label %213

; <label>:164                                     ; preds = %161
  %165 = load i32, i32* %j, align 4, !tbaa !1
  %166 = sext i32 %165 to i64
  %167 = load i32, i32* %i, align 4, !tbaa !1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x [1 x %union.U0]], [8 x [1 x %union.U0]]* @g_218, i32 0, i64 %168
  %170 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* %169, i32 0, i64 %166
  %171 = bitcast %union.U0* %170 to i64*
  %172 = load volatile i64, i64* %171, align 8, !tbaa !7
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %173)
  %174 = load i32, i32* %j, align 4, !tbaa !1
  %175 = sext i32 %174 to i64
  %176 = load i32, i32* %i, align 4, !tbaa !1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x [1 x %union.U0]], [8 x [1 x %union.U0]]* @g_218, i32 0, i64 %177
  %179 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* %178, i32 0, i64 %175
  %180 = bitcast %union.U0* %179 to i16*
  %181 = load volatile i16, i16* %180, align 2, !tbaa !10
  %182 = zext i16 %181 to i64
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 %183)
  %184 = load i32, i32* %j, align 4, !tbaa !1
  %185 = sext i32 %184 to i64
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [8 x [1 x %union.U0]], [8 x [1 x %union.U0]]* @g_218, i32 0, i64 %187
  %189 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* %188, i32 0, i64 %185
  %190 = bitcast %union.U0* %189 to i32*
  %191 = load volatile i32, i32* %190, align 4, !tbaa !1
  %192 = zext i32 %191 to i64
  %193 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 %193)
  %194 = load i32, i32* %j, align 4, !tbaa !1
  %195 = sext i32 %194 to i64
  %196 = load i32, i32* %i, align 4, !tbaa !1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [8 x [1 x %union.U0]], [8 x [1 x %union.U0]]* @g_218, i32 0, i64 %197
  %199 = getelementptr inbounds [1 x %union.U0], [1 x %union.U0]* %198, i32 0, i64 %195
  %200 = bitcast %union.U0* %199 to i64*
  %201 = load volatile i64, i64* %200, align 8, !tbaa !7
  %202 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %201, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 %202)
  %203 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

; <label>:205                                     ; preds = %164
  %206 = load i32, i32* %i, align 4, !tbaa !1
  %207 = load i32, i32* %j, align 4, !tbaa !1
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 %206, i32 %207)
  br label %209

; <label>:209                                     ; preds = %205, %164
  br label %210

; <label>:210                                     ; preds = %209
  %211 = load i32, i32* %j, align 4, !tbaa !1
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %j, align 4, !tbaa !1
  br label %161

; <label>:213                                     ; preds = %161
  br label %214

; <label>:214                                     ; preds = %213
  %215 = load i32, i32* %i, align 4, !tbaa !1
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %i, align 4, !tbaa !1
  br label %157

; <label>:217                                     ; preds = %157
  %218 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_219, i32 0, i32 0), align 8, !tbaa !7
  %219 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %219)
  %220 = load volatile i16, i16* bitcast (%union.U0* @g_219 to i16*), align 2, !tbaa !10
  %221 = zext i16 %220 to i64
  %222 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 %222)
  %223 = load i32, i32* bitcast (%union.U0* @g_219 to i32*), align 4, !tbaa !1
  %224 = zext i32 %223 to i64
  %225 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %225)
  %226 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_219, i32 0, i32 0), align 8, !tbaa !7
  %227 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %227)
  %228 = load i8, i8* @g_221, align 1, !tbaa !9
  %229 = sext i8 %228 to i64
  %230 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 %230)
  %231 = load volatile i32, i32* @g_251, align 4, !tbaa !1
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %233)
  %234 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_269, i32 0, i32 0), align 8, !tbaa !7
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 %235)
  %236 = load volatile i16, i16* bitcast (%union.U0* @g_269 to i16*), align 2, !tbaa !10
  %237 = zext i16 %236 to i64
  %238 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %238)
  %239 = load volatile i32, i32* bitcast (%union.U0* @g_269 to i32*), align 4, !tbaa !1
  %240 = zext i32 %239 to i64
  %241 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %240, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 %241)
  %242 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_269, i32 0, i32 0), align 8, !tbaa !7
  %243 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %242, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %243)
  %244 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_331, i32 0, i32 0), align 8, !tbaa !7
  %245 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %245)
  %246 = load volatile i16, i16* bitcast (%union.U0* @g_331 to i16*), align 2, !tbaa !10
  %247 = zext i16 %246 to i64
  %248 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i32 %248)
  %249 = load i32, i32* bitcast (%union.U0* @g_331 to i32*), align 4, !tbaa !1
  %250 = zext i32 %249 to i64
  %251 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 %251)
  %252 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_331, i32 0, i32 0), align 8, !tbaa !7
  %253 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i32 %253)
  %254 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_387, i32 0, i32 0), align 8, !tbaa !7
  %255 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %254, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i32 %255)
  %256 = load volatile i16, i16* bitcast (%union.U0* @g_387 to i16*), align 2, !tbaa !10
  %257 = zext i16 %256 to i64
  %258 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 %258)
  %259 = load i32, i32* bitcast (%union.U0* @g_387 to i32*), align 4, !tbaa !1
  %260 = zext i32 %259 to i64
  %261 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i32 %261)
  %262 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_387, i32 0, i32 0), align 8, !tbaa !7
  %263 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %262, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %263)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:264                                     ; preds = %300, %217
  %265 = load i32, i32* %i, align 4, !tbaa !1
  %266 = icmp slt i32 %265, 3
  br i1 %266, label %267, label %303

; <label>:267                                     ; preds = %264
  %268 = load i32, i32* %i, align 4, !tbaa !1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_395, i32 0, i64 %269
  %271 = bitcast %union.U0* %270 to i64*
  %272 = load volatile i64, i64* %271, align 8, !tbaa !7
  %273 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %272, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 %273)
  %274 = load i32, i32* %i, align 4, !tbaa !1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_395, i32 0, i64 %275
  %277 = bitcast %union.U0* %276 to i16*
  %278 = load volatile i16, i16* %277, align 2, !tbaa !10
  %279 = zext i16 %278 to i64
  %280 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i32 %280)
  %281 = load i32, i32* %i, align 4, !tbaa !1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_395, i32 0, i64 %282
  %284 = bitcast %union.U0* %283 to i32*
  %285 = load volatile i32, i32* %284, align 4, !tbaa !1
  %286 = zext i32 %285 to i64
  %287 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %286, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i32 %287)
  %288 = load i32, i32* %i, align 4, !tbaa !1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [3 x %union.U0], [3 x %union.U0]* @g_395, i32 0, i64 %289
  %291 = bitcast %union.U0* %290 to i64*
  %292 = load volatile i64, i64* %291, align 8, !tbaa !7
  %293 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 %293)
  %294 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

; <label>:296                                     ; preds = %267
  %297 = load i32, i32* %i, align 4, !tbaa !1
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %297)
  br label %299

; <label>:299                                     ; preds = %296, %267
  br label %300

; <label>:300                                     ; preds = %299
  %301 = load i32, i32* %i, align 4, !tbaa !1
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %i, align 4, !tbaa !1
  br label %264

; <label>:303                                     ; preds = %264
  %304 = load i64, i64* @g_467, align 8, !tbaa !7
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %304, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 %305)
  %306 = load i64, i64* @g_495, align 8, !tbaa !7
  %307 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 %307)
  %308 = load volatile i64, i64* @g_558, align 8, !tbaa !7
  %309 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 %309)
  %310 = load i16, i16* @g_611, align 2, !tbaa !10
  %311 = sext i16 %310 to i64
  %312 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 %312)
  %313 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_649, i32 0, i32 0), align 8, !tbaa !7
  %314 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %313, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %314)
  %315 = load volatile i16, i16* bitcast (%union.U0* @g_649 to i16*), align 2, !tbaa !10
  %316 = zext i16 %315 to i64
  %317 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %317)
  %318 = load i32, i32* bitcast (%union.U0* @g_649 to i32*), align 4, !tbaa !1
  %319 = zext i32 %318 to i64
  %320 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i32 %320)
  %321 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_649, i32 0, i32 0), align 8, !tbaa !7
  %322 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 %322)
  %323 = load i8, i8* @g_650, align 1, !tbaa !9
  %324 = sext i8 %323 to i64
  %325 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 %325)
  %326 = load i64, i64* @g_663, align 8, !tbaa !7
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 %327)
  %328 = load volatile i32, i32* @g_719, align 4, !tbaa !1
  %329 = sext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 %330)
  %331 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_866, i32 0, i32 0), align 8, !tbaa !7
  %332 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %331, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 %332)
  %333 = load volatile i16, i16* bitcast (%union.U0* @g_866 to i16*), align 2, !tbaa !10
  %334 = zext i16 %333 to i64
  %335 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %334, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i32 %335)
  %336 = load i32, i32* bitcast (%union.U0* @g_866 to i32*), align 4, !tbaa !1
  %337 = zext i32 %336 to i64
  %338 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %337, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 %338)
  %339 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_866, i32 0, i32 0), align 8, !tbaa !7
  %340 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %339, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i32 %340)
  %341 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_914, i32 0, i32 0), align 8, !tbaa !7
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %341, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i32 %342)
  %343 = load volatile i16, i16* bitcast (%union.U0* @g_914 to i16*), align 2, !tbaa !10
  %344 = zext i16 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* bitcast (%union.U0* @g_914 to i32*), align 4, !tbaa !1
  %347 = zext i32 %346 to i64
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %347, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 %348)
  %349 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_914, i32 0, i32 0), align 8, !tbaa !7
  %350 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %349, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 %350)
  %351 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_966, i32 0, i32 0), align 8, !tbaa !7
  %352 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %352)
  %353 = load volatile i16, i16* bitcast (%union.U0* @g_966 to i16*), align 2, !tbaa !10
  %354 = zext i16 %353 to i64
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %354, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i32 %355)
  %356 = load volatile i32, i32* bitcast (%union.U0* @g_966 to i32*), align 4, !tbaa !1
  %357 = zext i32 %356 to i64
  %358 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %357, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i32 %358)
  %359 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_966, i32 0, i32 0), align 8, !tbaa !7
  %360 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %359, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 %360)
  %361 = load i8, i8* @g_1026, align 1, !tbaa !9
  %362 = zext i8 %361 to i64
  %363 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 %363)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %364

; <label>:364                                     ; preds = %404, %303
  %365 = load i32, i32* %i, align 4, !tbaa !1
  %366 = icmp slt i32 %365, 2
  br i1 %366, label %367, label %407

; <label>:367                                     ; preds = %364
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %368

; <label>:368                                     ; preds = %400, %367
  %369 = load i32, i32* %j, align 4, !tbaa !1
  %370 = icmp slt i32 %369, 4
  br i1 %370, label %371, label %403

; <label>:371                                     ; preds = %368
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %372

; <label>:372                                     ; preds = %396, %371
  %373 = load i32, i32* %k, align 4, !tbaa !1
  %374 = icmp slt i32 %373, 6
  br i1 %374, label %375, label %399

; <label>:375                                     ; preds = %372
  %376 = load i32, i32* %k, align 4, !tbaa !1
  %377 = sext i32 %376 to i64
  %378 = load i32, i32* %j, align 4, !tbaa !1
  %379 = sext i32 %378 to i64
  %380 = load i32, i32* %i, align 4, !tbaa !1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [2 x [4 x [6 x i32]]], [2 x [4 x [6 x i32]]]* @g_1094, i32 0, i64 %381
  %383 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* %382, i32 0, i64 %379
  %384 = getelementptr inbounds [6 x i32], [6 x i32]* %383, i32 0, i64 %377
  %385 = load i32, i32* %384, align 4, !tbaa !1
  %386 = sext i32 %385 to i64
  %387 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %386, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), i32 %387)
  %388 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %395

; <label>:390                                     ; preds = %375
  %391 = load i32, i32* %i, align 4, !tbaa !1
  %392 = load i32, i32* %j, align 4, !tbaa !1
  %393 = load i32, i32* %k, align 4, !tbaa !1
  %394 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0), i32 %391, i32 %392, i32 %393)
  br label %395

; <label>:395                                     ; preds = %390, %375
  br label %396

; <label>:396                                     ; preds = %395
  %397 = load i32, i32* %k, align 4, !tbaa !1
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %k, align 4, !tbaa !1
  br label %372

; <label>:399                                     ; preds = %372
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load i32, i32* %j, align 4, !tbaa !1
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %j, align 4, !tbaa !1
  br label %368

; <label>:403                                     ; preds = %368
  br label %404

; <label>:404                                     ; preds = %403
  %405 = load i32, i32* %i, align 4, !tbaa !1
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %i, align 4, !tbaa !1
  br label %364

; <label>:407                                     ; preds = %364
  %408 = load i32, i32* @g_1131, align 4, !tbaa !1
  %409 = zext i32 %408 to i64
  %410 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %409, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 %410)
  %411 = load i64, i64* @g_1186, align 8, !tbaa !7
  %412 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %411, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 %412)
  %413 = load i32, i32* @g_1238, align 4, !tbaa !1
  %414 = sext i32 %413 to i64
  %415 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %414, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 %415)
  %416 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1367, i32 0, i32 0), align 8, !tbaa !7
  %417 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %416, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), i32 %417)
  %418 = load volatile i16, i16* bitcast (%union.U0* @g_1367 to i16*), align 2, !tbaa !10
  %419 = zext i16 %418 to i64
  %420 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %419, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i32 %420)
  %421 = load i32, i32* bitcast (%union.U0* @g_1367 to i32*), align 4, !tbaa !1
  %422 = zext i32 %421 to i64
  %423 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %422, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %423)
  %424 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1367, i32 0, i32 0), align 8, !tbaa !7
  %425 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %424, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), i32 %425)
  %426 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1442, i32 0, i32 0), align 8, !tbaa !7
  %427 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %426, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 %427)
  %428 = load volatile i16, i16* bitcast (%union.U0* @g_1442 to i16*), align 2, !tbaa !10
  %429 = zext i16 %428 to i64
  %430 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %429, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i32 0, i32 0), i32 %430)
  %431 = load i32, i32* bitcast (%union.U0* @g_1442 to i32*), align 4, !tbaa !1
  %432 = zext i32 %431 to i64
  %433 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %432, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0), i32 %433)
  %434 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1442, i32 0, i32 0), align 8, !tbaa !7
  %435 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %434, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 %435)
  %436 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 65530, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i32 %436)
  %437 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1470, i32 0, i32 0), align 8, !tbaa !7
  %438 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %437, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 %438)
  %439 = load volatile i16, i16* bitcast (%union.U0* @g_1470 to i16*), align 2, !tbaa !10
  %440 = zext i16 %439 to i64
  %441 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %440, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 %441)
  %442 = load i32, i32* bitcast (%union.U0* @g_1470 to i32*), align 4, !tbaa !1
  %443 = zext i32 %442 to i64
  %444 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %443, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 %444)
  %445 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1470, i32 0, i32 0), align 8, !tbaa !7
  %446 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %445, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 %446)
  %447 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1472, i32 0, i32 0), align 8, !tbaa !7
  %448 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %447, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i32 %448)
  %449 = load volatile i16, i16* bitcast (%union.U0* @g_1472 to i16*), align 2, !tbaa !10
  %450 = zext i16 %449 to i64
  %451 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %450, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0), i32 %451)
  %452 = load i32, i32* bitcast (%union.U0* @g_1472 to i32*), align 4, !tbaa !1
  %453 = zext i32 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 %454)
  %455 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1472, i32 0, i32 0), align 8, !tbaa !7
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %455, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0), i32 %456)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %457

; <label>:457                                     ; preds = %485, %407
  %458 = load i32, i32* %i, align 4, !tbaa !1
  %459 = icmp slt i32 %458, 5
  br i1 %459, label %460, label %488

; <label>:460                                     ; preds = %457
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %461

; <label>:461                                     ; preds = %481, %460
  %462 = load i32, i32* %j, align 4, !tbaa !1
  %463 = icmp slt i32 %462, 5
  br i1 %463, label %464, label %484

; <label>:464                                     ; preds = %461
  %465 = load i32, i32* %j, align 4, !tbaa !1
  %466 = sext i32 %465 to i64
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* @g_1539, i32 0, i64 %468
  %470 = getelementptr inbounds [5 x i32], [5 x i32]* %469, i32 0, i64 %466
  %471 = load i32, i32* %470, align 4, !tbaa !1
  %472 = sext i32 %471 to i64
  %473 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %472, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 %473)
  %474 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %480

; <label>:476                                     ; preds = %464
  %477 = load i32, i32* %i, align 4, !tbaa !1
  %478 = load i32, i32* %j, align 4, !tbaa !1
  %479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 %477, i32 %478)
  br label %480

; <label>:480                                     ; preds = %476, %464
  br label %481

; <label>:481                                     ; preds = %480
  %482 = load i32, i32* %j, align 4, !tbaa !1
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %j, align 4, !tbaa !1
  br label %461

; <label>:484                                     ; preds = %461
  br label %485

; <label>:485                                     ; preds = %484
  %486 = load i32, i32* %i, align 4, !tbaa !1
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %i, align 4, !tbaa !1
  br label %457

; <label>:488                                     ; preds = %457
  %489 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1622, i32 0, i32 0), align 8, !tbaa !7
  %490 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %489, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 %490)
  %491 = load volatile i16, i16* bitcast (%union.U0* @g_1622 to i16*), align 2, !tbaa !10
  %492 = zext i16 %491 to i64
  %493 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %492, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i32 %493)
  %494 = load i32, i32* bitcast (%union.U0* @g_1622 to i32*), align 4, !tbaa !1
  %495 = zext i32 %494 to i64
  %496 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %495, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), i32 %496)
  %497 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1622, i32 0, i32 0), align 8, !tbaa !7
  %498 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %497, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i32 %498)
  %499 = load volatile i32, i32* @g_1630, align 4, !tbaa !1
  %500 = zext i32 %499 to i64
  %501 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %500, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0), i32 %501)
  %502 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1640, i32 0, i32 0), align 8, !tbaa !7
  %503 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %502, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i32 %503)
  %504 = load volatile i16, i16* bitcast (%union.U0* @g_1640 to i16*), align 2, !tbaa !10
  %505 = zext i16 %504 to i64
  %506 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %505, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0), i32 %506)
  %507 = load i32, i32* bitcast (%union.U0* @g_1640 to i32*), align 4, !tbaa !1
  %508 = zext i32 %507 to i64
  %509 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %508, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), i32 %509)
  %510 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1640, i32 0, i32 0), align 8, !tbaa !7
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %510, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i32 %511)
  %512 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1696, i32 0, i32 0), align 8, !tbaa !7
  %513 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 %513)
  %514 = load volatile i16, i16* bitcast (%union.U0* @g_1696 to i16*), align 2, !tbaa !10
  %515 = zext i16 %514 to i64
  %516 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %515, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0), i32 %516)
  %517 = load i32, i32* bitcast (%union.U0* @g_1696 to i32*), align 4, !tbaa !1
  %518 = zext i32 %517 to i64
  %519 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %518, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 %519)
  %520 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_1696, i32 0, i32 0), align 8, !tbaa !7
  %521 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %520, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 %521)
  %522 = load volatile i16, i16* @g_1744, align 2, !tbaa !10
  %523 = sext i16 %522 to i64
  %524 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %523, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i32 %524)
  %525 = load i16, i16* @g_1840, align 2, !tbaa !10
  %526 = sext i16 %525 to i64
  %527 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %526, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i32 0, i32 0), i32 %527)
  %528 = load i8, i8* @g_1894, align 1, !tbaa !9
  %529 = zext i8 %528 to i64
  %530 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %529, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i32 %530)
  %531 = load i32, i32* @g_1965, align 4, !tbaa !1
  %532 = zext i32 %531 to i64
  %533 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %532, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i32 0, i32 0), i32 %533)
  %534 = load i16, i16* @g_1971, align 2, !tbaa !10
  %535 = zext i16 %534 to i64
  %536 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %535, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i32 %536)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %537

; <label>:537                                     ; preds = %553, %488
  %538 = load i32, i32* %i, align 4, !tbaa !1
  %539 = icmp slt i32 %538, 10
  br i1 %539, label %540, label %556

; <label>:540                                     ; preds = %537
  %541 = load i32, i32* %i, align 4, !tbaa !1
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [10 x i32], [10 x i32]* @g_2059, i32 0, i64 %542
  %544 = load i32, i32* %543, align 4, !tbaa !1
  %545 = zext i32 %544 to i64
  %546 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %545, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i32 %546)
  %547 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %552

; <label>:549                                     ; preds = %540
  %550 = load i32, i32* %i, align 4, !tbaa !1
  %551 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %550)
  br label %552

; <label>:552                                     ; preds = %549, %540
  br label %553

; <label>:553                                     ; preds = %552
  %554 = load i32, i32* %i, align 4, !tbaa !1
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %i, align 4, !tbaa !1
  br label %537

; <label>:556                                     ; preds = %537
  %557 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2105, i32 0, i32 0), align 8, !tbaa !7
  %558 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %557, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i32 %558)
  %559 = load volatile i16, i16* bitcast (%union.U0* @g_2105 to i16*), align 2, !tbaa !10
  %560 = zext i16 %559 to i64
  %561 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %560, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0), i32 %561)
  %562 = load i32, i32* bitcast (%union.U0* @g_2105 to i32*), align 4, !tbaa !1
  %563 = zext i32 %562 to i64
  %564 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %563, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i32 0, i32 0), i32 %564)
  %565 = load i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2105, i32 0, i32 0), align 8, !tbaa !7
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %565, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0), i32 %566)
  %567 = load i16, i16* @g_2118, align 2, !tbaa !10
  %568 = sext i16 %567 to i64
  %569 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %568, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0), i32 %569)
  %570 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2186, i32 0, i32 0), align 8, !tbaa !7
  %571 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %570, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i32 0, i32 0), i32 %571)
  %572 = load volatile i16, i16* bitcast (%union.U0* @g_2186 to i16*), align 2, !tbaa !10
  %573 = zext i16 %572 to i64
  %574 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %573, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i32 0, i32 0), i32 %574)
  %575 = load volatile i32, i32* bitcast (%union.U0* @g_2186 to i32*), align 4, !tbaa !1
  %576 = zext i32 %575 to i64
  %577 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %576, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0), i32 %577)
  %578 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2186, i32 0, i32 0), align 8, !tbaa !7
  %579 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %578, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i32 %579)
  %580 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), i32 %580)
  %581 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2263, i32 0, i32 0), align 8, !tbaa !7
  %582 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %581, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i32 %582)
  %583 = load volatile i16, i16* bitcast (%union.U0* @g_2263 to i16*), align 2, !tbaa !10
  %584 = zext i16 %583 to i64
  %585 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %584, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 %585)
  %586 = load volatile i32, i32* bitcast (%union.U0* @g_2263 to i32*), align 4, !tbaa !1
  %587 = zext i32 %586 to i64
  %588 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %587, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i32 %588)
  %589 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2263, i32 0, i32 0), align 8, !tbaa !7
  %590 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %589, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i32 %590)
  %591 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2277, i32 0, i32 0), align 8, !tbaa !7
  %592 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %591, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i32 %592)
  %593 = load volatile i16, i16* bitcast (%union.U0* @g_2277 to i16*), align 2, !tbaa !10
  %594 = zext i16 %593 to i64
  %595 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %594, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0), i32 %595)
  %596 = load volatile i32, i32* bitcast (%union.U0* @g_2277 to i32*), align 4, !tbaa !1
  %597 = zext i32 %596 to i64
  %598 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %597, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i32 %598)
  %599 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2277, i32 0, i32 0), align 8, !tbaa !7
  %600 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %599, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i32 %600)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %601

; <label>:601                                     ; preds = %637, %556
  %602 = load i32, i32* %i, align 4, !tbaa !1
  %603 = icmp slt i32 %602, 8
  br i1 %603, label %604, label %640

; <label>:604                                     ; preds = %601
  %605 = load i32, i32* %i, align 4, !tbaa !1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2294, i32 0, i64 %606
  %608 = bitcast %union.U0* %607 to i64*
  %609 = load volatile i64, i64* %608, align 8, !tbaa !7
  %610 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %609, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 %610)
  %611 = load i32, i32* %i, align 4, !tbaa !1
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2294, i32 0, i64 %612
  %614 = bitcast %union.U0* %613 to i16*
  %615 = load volatile i16, i16* %614, align 2, !tbaa !10
  %616 = zext i16 %615 to i64
  %617 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %616, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.131, i32 0, i32 0), i32 %617)
  %618 = load i32, i32* %i, align 4, !tbaa !1
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2294, i32 0, i64 %619
  %621 = bitcast %union.U0* %620 to i32*
  %622 = load volatile i32, i32* %621, align 4, !tbaa !1
  %623 = zext i32 %622 to i64
  %624 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %623, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.132, i32 0, i32 0), i32 %624)
  %625 = load i32, i32* %i, align 4, !tbaa !1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [8 x %union.U0], [8 x %union.U0]* @g_2294, i32 0, i64 %626
  %628 = bitcast %union.U0* %627 to i64*
  %629 = load volatile i64, i64* %628, align 8, !tbaa !7
  %630 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %629, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i32 %630)
  %631 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %636

; <label>:633                                     ; preds = %604
  %634 = load i32, i32* %i, align 4, !tbaa !1
  %635 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %634)
  br label %636

; <label>:636                                     ; preds = %633, %604
  br label %637

; <label>:637                                     ; preds = %636
  %638 = load i32, i32* %i, align 4, !tbaa !1
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %i, align 4, !tbaa !1
  br label %601

; <label>:640                                     ; preds = %601
  %641 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2321, i32 0, i32 0), align 8, !tbaa !7
  %642 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %641, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32 %642)
  %643 = load volatile i16, i16* bitcast (%union.U0* @g_2321 to i16*), align 2, !tbaa !10
  %644 = zext i16 %643 to i64
  %645 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %644, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0), i32 %645)
  %646 = load volatile i32, i32* bitcast (%union.U0* @g_2321 to i32*), align 4, !tbaa !1
  %647 = zext i32 %646 to i64
  %648 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %647, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i32 %648)
  %649 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2321, i32 0, i32 0), align 8, !tbaa !7
  %650 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %649, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.137, i32 0, i32 0), i32 %650)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %651

; <label>:651                                     ; preds = %667, %640
  %652 = load i32, i32* %i, align 4, !tbaa !1
  %653 = icmp slt i32 %652, 10
  br i1 %653, label %654, label %670

; <label>:654                                     ; preds = %651
  %655 = load i32, i32* %i, align 4, !tbaa !1
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [10 x i8], [10 x i8]* @g_2444, i32 0, i64 %656
  %658 = load i8, i8* %657, align 1, !tbaa !9
  %659 = zext i8 %658 to i64
  %660 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %659, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.138, i32 0, i32 0), i32 %660)
  %661 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %666

; <label>:663                                     ; preds = %654
  %664 = load i32, i32* %i, align 4, !tbaa !1
  %665 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 %664)
  br label %666

; <label>:666                                     ; preds = %663, %654
  br label %667

; <label>:667                                     ; preds = %666
  %668 = load i32, i32* %i, align 4, !tbaa !1
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %i, align 4, !tbaa !1
  br label %651

; <label>:670                                     ; preds = %651
  %671 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2494, i32 0, i32 0), align 8, !tbaa !7
  %672 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %671, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0), i32 %672)
  %673 = load volatile i16, i16* bitcast (%union.U0* @g_2494 to i16*), align 2, !tbaa !10
  %674 = zext i16 %673 to i64
  %675 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %674, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.140, i32 0, i32 0), i32 %675)
  %676 = load volatile i32, i32* bitcast (%union.U0* @g_2494 to i32*), align 4, !tbaa !1
  %677 = zext i32 %676 to i64
  %678 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %677, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i32 %678)
  %679 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2494, i32 0, i32 0), align 8, !tbaa !7
  %680 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %679, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i32 %680)
  %681 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2559, i32 0, i32 0), align 8, !tbaa !7
  %682 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %681, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.143, i32 0, i32 0), i32 %682)
  %683 = load volatile i16, i16* bitcast (%union.U0* @g_2559 to i16*), align 2, !tbaa !10
  %684 = zext i16 %683 to i64
  %685 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %684, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.144, i32 0, i32 0), i32 %685)
  %686 = load volatile i32, i32* bitcast (%union.U0* @g_2559 to i32*), align 4, !tbaa !1
  %687 = zext i32 %686 to i64
  %688 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %687, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i32 0, i32 0), i32 %688)
  %689 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2559, i32 0, i32 0), align 8, !tbaa !7
  %690 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %689, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.146, i32 0, i32 0), i32 %690)
  %691 = load volatile i64, i64* @g_2602, align 8, !tbaa !7
  %692 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %691, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i32 %692)
  %693 = load volatile i16, i16* @g_2700, align 2, !tbaa !10
  %694 = sext i16 %693 to i64
  %695 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %694, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0), i32 %695)
  %696 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2822, i32 0, i32 0), align 8, !tbaa !7
  %697 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %696, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i32 0, i32 0), i32 %697)
  %698 = load volatile i16, i16* bitcast (%union.U0* @g_2822 to i16*), align 2, !tbaa !10
  %699 = zext i16 %698 to i64
  %700 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %699, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i32 0, i32 0), i32 %700)
  %701 = load volatile i32, i32* bitcast (%union.U0* @g_2822 to i32*), align 4, !tbaa !1
  %702 = zext i32 %701 to i64
  %703 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %702, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i32 %703)
  %704 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2822, i32 0, i32 0), align 8, !tbaa !7
  %705 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %704, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i32 0, i32 0), i32 %705)
  %706 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2835, i32 0, i32 0), align 8, !tbaa !7
  %707 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %706, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i32 0, i32 0), i32 %707)
  %708 = load volatile i16, i16* bitcast (%union.U0* @g_2835 to i16*), align 2, !tbaa !10
  %709 = zext i16 %708 to i64
  %710 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %709, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i32 %710)
  %711 = load volatile i32, i32* bitcast (%union.U0* @g_2835 to i32*), align 4, !tbaa !1
  %712 = zext i32 %711 to i64
  %713 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %712, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.155, i32 0, i32 0), i32 %713)
  %714 = load volatile i64, i64* getelementptr inbounds (%union.U0, %union.U0* @g_2835, i32 0, i32 0), align 8, !tbaa !7
  %715 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %714, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.156, i32 0, i32 0), i32 %715)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %716

; <label>:716                                     ; preds = %744, %670
  %717 = load i32, i32* %i, align 4, !tbaa !1
  %718 = icmp slt i32 %717, 5
  br i1 %718, label %719, label %747

; <label>:719                                     ; preds = %716
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %720

; <label>:720                                     ; preds = %740, %719
  %721 = load i32, i32* %j, align 4, !tbaa !1
  %722 = icmp slt i32 %721, 7
  br i1 %722, label %723, label %743

; <label>:723                                     ; preds = %720
  %724 = load i32, i32* %j, align 4, !tbaa !1
  %725 = sext i32 %724 to i64
  %726 = load i32, i32* %i, align 4, !tbaa !1
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds [5 x [7 x i8]], [5 x [7 x i8]]* @g_3020, i32 0, i64 %727
  %729 = getelementptr inbounds [7 x i8], [7 x i8]* %728, i32 0, i64 %725
  %730 = load i8, i8* %729, align 1, !tbaa !9
  %731 = sext i8 %730 to i64
  %732 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %731, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.157, i32 0, i32 0), i32 %732)
  %733 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %739

; <label>:735                                     ; preds = %723
  %736 = load i32, i32* %i, align 4, !tbaa !1
  %737 = load i32, i32* %j, align 4, !tbaa !1
  %738 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 %736, i32 %737)
  br label %739

; <label>:739                                     ; preds = %735, %723
  br label %740

; <label>:740                                     ; preds = %739
  %741 = load i32, i32* %j, align 4, !tbaa !1
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %j, align 4, !tbaa !1
  br label %720

; <label>:743                                     ; preds = %720
  br label %744

; <label>:744                                     ; preds = %743
  %745 = load i32, i32* %i, align 4, !tbaa !1
  %746 = add nsw i32 %745, 1
  store i32 %746, i32* %i, align 4, !tbaa !1
  br label %716

; <label>:747                                     ; preds = %716
  %748 = load i64, i64* @g_3047, align 8, !tbaa !7
  %749 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %748, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i32 0, i32 0), i32 %749)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %750

; <label>:750                                     ; preds = %790, %747
  %751 = load i32, i32* %i, align 4, !tbaa !1
  %752 = icmp slt i32 %751, 10
  br i1 %752, label %753, label %793

; <label>:753                                     ; preds = %750
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %754

; <label>:754                                     ; preds = %786, %753
  %755 = load i32, i32* %j, align 4, !tbaa !1
  %756 = icmp slt i32 %755, 10
  br i1 %756, label %757, label %789

; <label>:757                                     ; preds = %754
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %758

; <label>:758                                     ; preds = %782, %757
  %759 = load i32, i32* %k, align 4, !tbaa !1
  %760 = icmp slt i32 %759, 1
  br i1 %760, label %761, label %785

; <label>:761                                     ; preds = %758
  %762 = load i32, i32* %k, align 4, !tbaa !1
  %763 = sext i32 %762 to i64
  %764 = load i32, i32* %j, align 4, !tbaa !1
  %765 = sext i32 %764 to i64
  %766 = load i32, i32* %i, align 4, !tbaa !1
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [10 x [10 x [1 x i32]]], [10 x [10 x [1 x i32]]]* @g_3067, i32 0, i64 %767
  %769 = getelementptr inbounds [10 x [1 x i32]], [10 x [1 x i32]]* %768, i32 0, i64 %765
  %770 = getelementptr inbounds [1 x i32], [1 x i32]* %769, i32 0, i64 %763
  %771 = load i32, i32* %770, align 4, !tbaa !1
  %772 = sext i32 %771 to i64
  %773 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %772, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i32 0, i32 0), i32 %773)
  %774 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %781

; <label>:776                                     ; preds = %761
  %777 = load i32, i32* %i, align 4, !tbaa !1
  %778 = load i32, i32* %j, align 4, !tbaa !1
  %779 = load i32, i32* %k, align 4, !tbaa !1
  %780 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0), i32 %777, i32 %778, i32 %779)
  br label %781

; <label>:781                                     ; preds = %776, %761
  br label %782

; <label>:782                                     ; preds = %781
  %783 = load i32, i32* %k, align 4, !tbaa !1
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %k, align 4, !tbaa !1
  br label %758

; <label>:785                                     ; preds = %758
  br label %786

; <label>:786                                     ; preds = %785
  %787 = load i32, i32* %j, align 4, !tbaa !1
  %788 = add nsw i32 %787, 1
  store i32 %788, i32* %j, align 4, !tbaa !1
  br label %754

; <label>:789                                     ; preds = %754
  br label %790

; <label>:790                                     ; preds = %789
  %791 = load i32, i32* %i, align 4, !tbaa !1
  %792 = add nsw i32 %791, 1
  store i32 %792, i32* %i, align 4, !tbaa !1
  br label %750

; <label>:793                                     ; preds = %750
  %794 = load volatile i16, i16* @g_3083, align 2, !tbaa !10
  %795 = sext i16 %794 to i64
  %796 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %795, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i32 0, i32 0), i32 %796)
  %797 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %798 = zext i32 %797 to i64
  %799 = xor i64 %798, 4294967295
  %800 = trunc i64 %799 to i32
  %801 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %800, i32 %801)
  %802 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %802) #1
  %803 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %803) #1
  %804 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %804) #1
  %805 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %805) #1
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
  %l_12 = alloca i32, align 4
  %l_19 = alloca i32*, align 8
  %l_3001 = alloca i16**, align 8
  %l_3002 = alloca i32, align 4
  %l_3010 = alloca i8**, align 8
  %l_3009 = alloca i8***, align 8
  %l_3008 = alloca i8****, align 8
  %l_3007 = alloca i8*****, align 8
  %l_3040 = alloca i8, align 1
  %l_3043 = alloca [6 x i16], align 2
  %i = alloca i32, align 4
  %l_7 = alloca [2 x i32*], align 16
  %l_9 = alloca i64, align 8
  %l_3003 = alloca i32***, align 8
  %l_3011 = alloca i8*****, align 8
  %l_3025 = alloca i32****, align 8
  %l_3039 = alloca i32, align 4
  %l_3055 = alloca i64***, align 8
  %l_3069 = alloca i32, align 4
  %l_3087 = alloca [8 x [6 x i32*]], align 16
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1, i32* %l_12, align 4, !tbaa !1
  %2 = bitcast i32** %l_19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32* @g_8, i32** %l_19, align 8, !tbaa !5
  %3 = bitcast i16*** %l_3001 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i16** null, i16*** %l_3001, align 8, !tbaa !5
  %4 = bitcast i32* %l_3002 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -56810816, i32* %l_3002, align 4, !tbaa !1
  %5 = bitcast i8*** %l_3010 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i8** @g_2677, i8*** %l_3010, align 8, !tbaa !5
  %6 = bitcast i8**** %l_3009 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i8*** %l_3010, i8**** %l_3009, align 8, !tbaa !5
  %7 = bitcast i8***** %l_3008 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  store i8**** %l_3009, i8***** %l_3008, align 8, !tbaa !5
  %8 = bitcast i8****** %l_3007 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8***** %l_3008, i8****** %l_3007, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3040) #1
  store i8 1, i8* %l_3040, align 1, !tbaa !9
  %9 = bitcast [6 x i16]* %l_3043 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  %10 = bitcast [6 x i16]* %l_3043 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([6 x i16]* @func_1.l_3043 to i8*), i64 12, i32 2, i1 false)
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* @g_2, align 4, !tbaa !1
  br label %12

; <label>:12                                      ; preds = %105, %0
  %13 = load i32, i32* @g_2, align 4, !tbaa !1
  %14 = icmp sge i32 %13, -10
  br i1 %14, label %15, label %108

; <label>:15                                      ; preds = %12
  %16 = bitcast [2 x i32*]* %l_7 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = bitcast i64* %l_9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  store i64 3, i64* %l_9, align 8, !tbaa !7
  %18 = bitcast i32**** %l_3003 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32*** getelementptr inbounds ([4 x [9 x [6 x i32**]]], [4 x [9 x [6 x i32**]]]* @g_380, i32 0, i64 3, i64 5, i64 1), i32**** %l_3003, align 8, !tbaa !5
  %19 = bitcast i8****** %l_3011 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  store i8***** %l_3008, i8****** %l_3011, align 8, !tbaa !5
  %20 = bitcast i32***** %l_3025 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i32**** null, i32***** %l_3025, align 8, !tbaa !5
  %21 = bitcast i32* %l_3039 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 1487156050, i32* %l_3039, align 4, !tbaa !1
  %22 = bitcast i64**** %l_3055 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  store i64*** @g_2672, i64**** %l_3055, align 8, !tbaa !5
  %23 = bitcast i32* %l_3069 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 914867631, i32* %l_3069, align 4, !tbaa !1
  %24 = bitcast [8 x [6 x i32*]]* %l_3087 to i8*
  call void @llvm.lifetime.start(i64 384, i8* %24) #1
  %25 = getelementptr inbounds [8 x [6 x i32*]], [8 x [6 x i32*]]* %l_3087, i64 0, i64 0
  %26 = getelementptr inbounds [6 x i32*], [6 x i32*]* %25, i64 0, i64 0
  store i32* %l_3069, i32** %26, !tbaa !5
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  store i32* %l_3069, i32** %27, !tbaa !5
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  store i32* null, i32** %28, !tbaa !5
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %29, !tbaa !5
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  store i32* null, i32** %30, !tbaa !5
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %31, !tbaa !5
  %32 = getelementptr inbounds [6 x i32*], [6 x i32*]* %25, i64 1
  %33 = getelementptr inbounds [6 x i32*], [6 x i32*]* %32, i64 0, i64 0
  store i32* null, i32** %33, !tbaa !5
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  store i32* %l_3069, i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* null, i32** %35, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32* %l_3069, i32** %36, !tbaa !5
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* null, i32** %37, !tbaa !5
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  store i32* null, i32** %38, !tbaa !5
  %39 = getelementptr inbounds [6 x i32*], [6 x i32*]* %32, i64 1
  %40 = getelementptr inbounds [6 x i32*], [6 x i32*]* %39, i64 0, i64 0
  store i32* null, i32** %40, !tbaa !5
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* null, i32** %41, !tbaa !5
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  store i32* null, i32** %42, !tbaa !5
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  store i32* null, i32** %43, !tbaa !5
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  store i32* %l_3069, i32** %44, !tbaa !5
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %45, !tbaa !5
  %46 = getelementptr inbounds [6 x i32*], [6 x i32*]* %39, i64 1
  %47 = getelementptr inbounds [6 x i32*], [6 x i32*]* %46, i64 0, i64 0
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %47, !tbaa !5
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  store i32* null, i32** %48, !tbaa !5
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  store i32* null, i32** %49, !tbaa !5
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  store i32* null, i32** %50, !tbaa !5
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %51, !tbaa !5
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* %l_3069, i32** %52, !tbaa !5
  %53 = getelementptr inbounds [6 x i32*], [6 x i32*]* %46, i64 1
  %54 = getelementptr inbounds [6 x i32*], [6 x i32*]* %53, i64 0, i64 0
  store i32* null, i32** %54, !tbaa !5
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %55, !tbaa !5
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* %l_3069, i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* %l_3069, i32** %57, !tbaa !5
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %58, !tbaa !5
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  store i32* null, i32** %59, !tbaa !5
  %60 = getelementptr inbounds [6 x i32*], [6 x i32*]* %53, i64 1
  %61 = getelementptr inbounds [6 x i32*], [6 x i32*]* %60, i64 0, i64 0
  store i32* null, i32** %61, !tbaa !5
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  store i32* null, i32** %62, !tbaa !5
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  store i32* %l_3069, i32** %63, !tbaa !5
  %64 = getelementptr inbounds i32*, i32** %63, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %64, !tbaa !5
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  store i32* %l_3069, i32** %65, !tbaa !5
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  store i32* null, i32** %66, !tbaa !5
  %67 = getelementptr inbounds [6 x i32*], [6 x i32*]* %60, i64 1
  %68 = getelementptr inbounds [6 x i32*], [6 x i32*]* %67, i64 0, i64 0
  store i32* %l_3069, i32** %68, !tbaa !5
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  store i32* null, i32** %69, !tbaa !5
  %70 = getelementptr inbounds i32*, i32** %69, i64 1
  store i32* %l_3069, i32** %70, !tbaa !5
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  store i32* null, i32** %71, !tbaa !5
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  store i32* null, i32** %72, !tbaa !5
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  store i32* %l_3069, i32** %73, !tbaa !5
  %74 = getelementptr inbounds [6 x i32*], [6 x i32*]* %67, i64 1
  %75 = getelementptr inbounds [6 x i32*], [6 x i32*]* %74, i64 0, i64 0
  store i32* %l_3069, i32** %75, !tbaa !5
  %76 = getelementptr inbounds i32*, i32** %75, i64 1
  store i32* %l_3069, i32** %76, !tbaa !5
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  store i32* null, i32** %77, !tbaa !5
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %78, !tbaa !5
  %79 = getelementptr inbounds i32*, i32** %78, i64 1
  store i32* null, i32** %79, !tbaa !5
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_64, i32 0, i64 0), i32** %80, !tbaa !5
  %81 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  store i32 0, i32* %i1, align 4, !tbaa !1
  br label %83

; <label>:83                                      ; preds = %90, %15
  %84 = load i32, i32* %i1, align 4, !tbaa !1
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %93

; <label>:86                                      ; preds = %83
  %87 = load i32, i32* %i1, align 4, !tbaa !1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %l_7, i32 0, i64 %88
  store i32* @g_8, i32** %89, align 8, !tbaa !5
  br label %90

; <label>:90                                      ; preds = %86
  %91 = load i32, i32* %i1, align 4, !tbaa !1
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %i1, align 4, !tbaa !1
  br label %83

; <label>:93                                      ; preds = %83
  %94 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast [8 x [6 x i32*]]* %l_3087 to i8*
  call void @llvm.lifetime.end(i64 384, i8* %96) #1
  %97 = bitcast i32* %l_3069 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i64**** %l_3055 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %l_3039 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32***** %l_3025 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i8****** %l_3011 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32**** %l_3003 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i64* %l_9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast [2 x i32*]* %l_7 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %104) #1
  br label %105

; <label>:105                                     ; preds = %93
  %106 = load i32, i32* @g_2, align 4, !tbaa !1
  %107 = call i32 @safe_sub_func_uint32_t_u_u(i32 %106, i32 8)
  store i32 %107, i32* @g_2, align 4, !tbaa !1
  br label %12

; <label>:108                                     ; preds = %12
  %109 = getelementptr inbounds [6 x i16], [6 x i16]* %l_3043, i32 0, i64 1
  %110 = load i16, i16* %109, align 2, !tbaa !10
  %111 = sext i16 %110 to i32
  %112 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast [6 x i16]* %l_3043 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %113) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3040) #1
  %114 = bitcast i8****** %l_3007 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i8***** %l_3008 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = bitcast i8**** %l_3009 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i8*** %l_3010 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast i32* %l_3002 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i16*** %l_3001 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i32** %l_19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %l_12 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  ret i32 %111
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
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.161, i32 0, i32 0), i8* %8, i64 %11)
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.162, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
